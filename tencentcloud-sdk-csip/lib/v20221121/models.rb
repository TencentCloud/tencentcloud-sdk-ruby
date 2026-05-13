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
  module Csip
    module V20221121
      # Ai Agent 资产信息列表项
      class AIAgentAsset < TencentCloud::Common::AbstractModel
        # @param ID: <p>ID 标识</p>
        # @type ID: String
        # @param AgentName: <p>agent 名称</p>
        # @type AgentName: String
        # @param AgentModel: <p>agent 使用模型名称</p>
        # @type AgentModel: Array
        # @param InstanceID: <p>实例 ID</p>
        # @type InstanceID: String
        # @param InstanceName: <p>实例名称</p>
        # @type InstanceName: String
        # @param MetadataRiskList: <p>metadata 风险列表。有如下枚举值: 1. AK_TMP  2. USER_DATA</p>
        # @type MetadataRiskList: Array
        # @param IdentityTimeFirst: <p>首次检出时间</p>
        # @type IdentityTimeFirst: String
        # @param IdentityTimeLast: <p>最近检出时间</p>
        # @type IdentityTimeLast: String
        # @param IdentityMethod: <p>检出方式。有如下枚举值 1. FINGER 资产指纹方式检出 2. NETWORK 网络访问方式检出</p>
        # @type IdentityMethod: String
        # @param ExposureStatus: <p>暴露状态。有如下枚举值。1. EXPOSED；2.UNEXPOSED；</p><ol start="3"><li>UNKNOWN;</li></ol>
        # @type ExposureStatus: String
        # @param MetadataRiskURL: <p>metadata 有风险时对应路径</p>
        # @type MetadataRiskURL: String
        # @param SkillState: <p>无</p>
        # @type SkillState: :class:`Tencentcloud::Csip.v20221121.models.SkillState`

        attr_accessor :ID, :AgentName, :AgentModel, :InstanceID, :InstanceName, :MetadataRiskList, :IdentityTimeFirst, :IdentityTimeLast, :IdentityMethod, :ExposureStatus, :MetadataRiskURL, :SkillState

        def initialize(id=nil, agentname=nil, agentmodel=nil, instanceid=nil, instancename=nil, metadatarisklist=nil, identitytimefirst=nil, identitytimelast=nil, identitymethod=nil, exposurestatus=nil, metadatariskurl=nil, skillstate=nil)
          @ID = id
          @AgentName = agentname
          @AgentModel = agentmodel
          @InstanceID = instanceid
          @InstanceName = instancename
          @MetadataRiskList = metadatarisklist
          @IdentityTimeFirst = identitytimefirst
          @IdentityTimeLast = identitytimelast
          @IdentityMethod = identitymethod
          @ExposureStatus = exposurestatus
          @MetadataRiskURL = metadatariskurl
          @SkillState = skillstate
        end

        def deserialize(params)
          @ID = params['ID']
          @AgentName = params['AgentName']
          @AgentModel = params['AgentModel']
          @InstanceID = params['InstanceID']
          @InstanceName = params['InstanceName']
          @MetadataRiskList = params['MetadataRiskList']
          @IdentityTimeFirst = params['IdentityTimeFirst']
          @IdentityTimeLast = params['IdentityTimeLast']
          @IdentityMethod = params['IdentityMethod']
          @ExposureStatus = params['ExposureStatus']
          @MetadataRiskURL = params['MetadataRiskURL']
          unless params['SkillState'].nil?
            @SkillState = SkillState.new
            @SkillState.deserialize(params['SkillState'])
          end
        end
      end

      # AK简要信息
      class AKInfo < TencentCloud::Common::AbstractModel
        # @param ID: ak对应id
        # @type ID: Integer
        # @param Name: ak具体值 临时密钥时返回临时密钥
        # @type Name: String
        # @param User: 所属账号
        # @type User: String
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :ID, :Name, :User, :Remark

        def initialize(id=nil, name=nil, user=nil, remark=nil)
          @ID = id
          @Name = name
          @User = user
          @Remark = remark
        end

        def deserialize(params)
          @ID = params['ID']
          @Name = params['Name']
          @User = params['User']
          @Remark = params['Remark']
        end
      end

      # 常规密钥凭据（出参专用），用于查询详情接口的响应。Value字段返回打码后的值，不暴露明文
      class AccessCredentialOutput < TencentCloud::Common::AbstractModel
        # @param Key: 凭据键名（原文），如SecretId、SecretKey、Token等
        # @type Key: String
        # @param Value: 凭据键值（打码后）
        # 补充说明：保留前3后4位，中间用***替代；长度不足7位时全部替换为***
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

      # 访问密钥告警记录
      class AccessKeyAlarm < TencentCloud::Common::AbstractModel
        # @param Name: 告警名称
        # @type Name: String
        # @param Level: 告警等级
        # 0-无效 1-提示 2-低危 3-中危 4-高危 5-严重
        # @type Level: Integer
        # @param ID: 告警记录ID
        # @type ID: Integer
        # @param AlarmRuleID: 告警规则ID
        # @type AlarmRuleID: Integer
        # @param AlarmType: 告警类型
        # 0 异常调用
        # 1 泄漏监测
        # @type AlarmType: Integer
        # @param AccessKey: 访问密钥
        # @type AccessKey: String
        # @param AccessKeyID: 访问密钥ID
        # @type AccessKeyID: Integer
        # @param AccessKeyRemark: 访问密钥备注
        # @type AccessKeyRemark: String
        # @param LastAlarmTime: 最后告警时间
        # @type LastAlarmTime: String
        # @param Status: 告警状态
        # 0-未处理 1-已处理 2-已忽略
        # @type Status: Integer
        # @param Date: 聚合日期
        # @type Date: String
        # @param Tag: 告警标签
        # @type Tag: Array
        # @param Uin: 所属主账号Uin
        # @type Uin: String
        # @param Nickname: 所属主账号昵称
        # @type Nickname: String
        # @param SubUin: 所属子账号Uin
        # @type SubUin: String
        # @param SubNickname: 所属子账号昵称
        # @type SubNickname: String
        # @param Type: 账号类型
        # 0 主账号AK 1 子账号AK 2 临时密钥
        # @type Type: Integer
        # @param AppID: 所属appid
        # @type AppID: Integer
        # @param LeakEvidence: 泄漏证据
        # @type LeakEvidence: Array
        # @param IsSupportEditWhiteAccount: 是否支持编辑信任账号
        # @type IsSupportEditWhiteAccount: Boolean
        # @param Evidence: 告警证据
        # @type Evidence: String
        # @param RuleKey: 告警规则标识
        # @type RuleKey: String
        # @param CloudType: 云厂商类型 0:腾讯云 1:亚马逊云 2:微软云 3:谷歌云 4:阿里云 5:华为云
        # @type CloudType: Integer
        # @param AIStatus: 告警AI分析状态
        # -1 分析失败
        # 0 未分析
        # 1 分析中
        # 2 分析成功，真实告警
        # 3 分析成功，可疑告警
        # @type AIStatus: Integer
        # @param FirstAlarmTimestamp: 首次告警时间戳（秒级）
        # @type FirstAlarmTimestamp: Integer
        # @param LastAlarmTimestamp: 最后告警时间戳（秒级）
        # @type LastAlarmTimestamp: Integer

        attr_accessor :Name, :Level, :ID, :AlarmRuleID, :AlarmType, :AccessKey, :AccessKeyID, :AccessKeyRemark, :LastAlarmTime, :Status, :Date, :Tag, :Uin, :Nickname, :SubUin, :SubNickname, :Type, :AppID, :LeakEvidence, :IsSupportEditWhiteAccount, :Evidence, :RuleKey, :CloudType, :AIStatus, :FirstAlarmTimestamp, :LastAlarmTimestamp

        def initialize(name=nil, level=nil, id=nil, alarmruleid=nil, alarmtype=nil, accesskey=nil, accesskeyid=nil, accesskeyremark=nil, lastalarmtime=nil, status=nil, date=nil, tag=nil, uin=nil, nickname=nil, subuin=nil, subnickname=nil, type=nil, appid=nil, leakevidence=nil, issupporteditwhiteaccount=nil, evidence=nil, rulekey=nil, cloudtype=nil, aistatus=nil, firstalarmtimestamp=nil, lastalarmtimestamp=nil)
          @Name = name
          @Level = level
          @ID = id
          @AlarmRuleID = alarmruleid
          @AlarmType = alarmtype
          @AccessKey = accesskey
          @AccessKeyID = accesskeyid
          @AccessKeyRemark = accesskeyremark
          @LastAlarmTime = lastalarmtime
          @Status = status
          @Date = date
          @Tag = tag
          @Uin = uin
          @Nickname = nickname
          @SubUin = subuin
          @SubNickname = subnickname
          @Type = type
          @AppID = appid
          @LeakEvidence = leakevidence
          @IsSupportEditWhiteAccount = issupporteditwhiteaccount
          @Evidence = evidence
          @RuleKey = rulekey
          @CloudType = cloudtype
          @AIStatus = aistatus
          @FirstAlarmTimestamp = firstalarmtimestamp
          @LastAlarmTimestamp = lastalarmtimestamp
        end

        def deserialize(params)
          @Name = params['Name']
          @Level = params['Level']
          @ID = params['ID']
          @AlarmRuleID = params['AlarmRuleID']
          @AlarmType = params['AlarmType']
          @AccessKey = params['AccessKey']
          @AccessKeyID = params['AccessKeyID']
          @AccessKeyRemark = params['AccessKeyRemark']
          @LastAlarmTime = params['LastAlarmTime']
          @Status = params['Status']
          @Date = params['Date']
          @Tag = params['Tag']
          @Uin = params['Uin']
          @Nickname = params['Nickname']
          @SubUin = params['SubUin']
          @SubNickname = params['SubNickname']
          @Type = params['Type']
          @AppID = params['AppID']
          @LeakEvidence = params['LeakEvidence']
          @IsSupportEditWhiteAccount = params['IsSupportEditWhiteAccount']
          @Evidence = params['Evidence']
          @RuleKey = params['RuleKey']
          @CloudType = params['CloudType']
          @AIStatus = params['AIStatus']
          @FirstAlarmTimestamp = params['FirstAlarmTimestamp']
          @LastAlarmTimestamp = params['LastAlarmTimestamp']
        end
      end

      # 访问密钥告警数量
      class AccessKeyAlarmCount < TencentCloud::Common::AbstractModel
        # @param ID: 访问密钥的ID
        # @type ID: Integer
        # @param AccessKey: 访问密钥
        # @type AccessKey: String
        # @param AlarmCount: 告警数量
        # @type AlarmCount: Integer
        # @param AccessKeyStatus: 访问密钥状态 0 禁用 1 已启用 2 已删除
        # @type AccessKeyStatus: Integer
        # @param AccessKeyCreateTime: AK创建时间
        # @type AccessKeyCreateTime: String
        # @param LastAccessTime: AK最后使用时间，从未使用过则返回“-”
        # @type LastAccessTime: String

        attr_accessor :ID, :AccessKey, :AlarmCount, :AccessKeyStatus, :AccessKeyCreateTime, :LastAccessTime

        def initialize(id=nil, accesskey=nil, alarmcount=nil, accesskeystatus=nil, accesskeycreatetime=nil, lastaccesstime=nil)
          @ID = id
          @AccessKey = accesskey
          @AlarmCount = alarmcount
          @AccessKeyStatus = accesskeystatus
          @AccessKeyCreateTime = accesskeycreatetime
          @LastAccessTime = lastaccesstime
        end

        def deserialize(params)
          @ID = params['ID']
          @AccessKey = params['AccessKey']
          @AlarmCount = params['AlarmCount']
          @AccessKeyStatus = params['AccessKeyStatus']
          @AccessKeyCreateTime = params['AccessKeyCreateTime']
          @LastAccessTime = params['LastAccessTime']
        end
      end

      # 访问密钥资产告警信息
      class AccessKeyAlarmInfo < TencentCloud::Common::AbstractModel
        # @param Type: 告警类型/风险类型
        # 告警类型：
        # 0异常调用
        # 1泄漏检测
        # 2自定义

        # 风险类型：
        # 0：配置风险
        # 1: 自定义风险
        # @type Type: Integer
        # @param Count: 告警数量/风险数量
        # @type Count: Integer

        attr_accessor :Type, :Count

        def initialize(type=nil, count=nil)
          @Type = type
          @Count = count
        end

        def deserialize(params)
          @Type = params['Type']
          @Count = params['Count']
        end
      end

      # 访问密钥资产信息
      class AccessKeyAsset < TencentCloud::Common::AbstractModel
        # @param ID: AK 的id
        # @type ID: Integer
        # @param Name: AK名称
        # @type Name: String
        # @param Remark: 备注
        # @type Remark: String
        # @param AppID: 账号所属APPID
        # @type AppID: Integer
        # @param Uin: 所属主账号Uin
        # @type Uin: String
        # @param Nickname: 主账号昵称
        # @type Nickname: String
        # @param SubUin: 所属子账号Uin
        # @type SubUin: String
        # @param SubNickname: 所属子账号昵称
        # @type SubNickname: String
        # @param Type: 0 主账号AK
        # 1 子账号AK
        # 2 临时密钥
        # @type Type: Integer
        # @param Advice: 安全建议 枚举
        # 0 正常
        # 1 立即处理
        # 2 建议加固
        # @type Advice: Integer
        # @param AccessKeyAlarmList: 告警信息列表
        # @type AccessKeyAlarmList: Array
        # @param AccessKeyRiskList: 风险信息列表
        # @type AccessKeyRiskList: Array
        # @param IPCount: 源IP数量
        # @type IPCount: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param LastAccessTime: 最近访问时间
        # @type LastAccessTime: String
        # @param Status: AK状态
        # 0:禁用
        # 1:已启用
        # 2:已删除(已在cam侧删除，安全中心仍然存留之前的记录)
        # @type Status: Integer
        # @param CheckStatus: 0 表示已检测
        # 1 表示检测中
        # @type CheckStatus: Integer
        # @param CloudType: 云厂商类型 0:腾讯云 1:亚马逊云 2:微软云 3:谷歌云 4:阿里云 5:华为云
        # @type CloudType: Integer

        attr_accessor :ID, :Name, :Remark, :AppID, :Uin, :Nickname, :SubUin, :SubNickname, :Type, :Advice, :AccessKeyAlarmList, :AccessKeyRiskList, :IPCount, :CreateTime, :LastAccessTime, :Status, :CheckStatus, :CloudType

        def initialize(id=nil, name=nil, remark=nil, appid=nil, uin=nil, nickname=nil, subuin=nil, subnickname=nil, type=nil, advice=nil, accesskeyalarmlist=nil, accesskeyrisklist=nil, ipcount=nil, createtime=nil, lastaccesstime=nil, status=nil, checkstatus=nil, cloudtype=nil)
          @ID = id
          @Name = name
          @Remark = remark
          @AppID = appid
          @Uin = uin
          @Nickname = nickname
          @SubUin = subuin
          @SubNickname = subnickname
          @Type = type
          @Advice = advice
          @AccessKeyAlarmList = accesskeyalarmlist
          @AccessKeyRiskList = accesskeyrisklist
          @IPCount = ipcount
          @CreateTime = createtime
          @LastAccessTime = lastaccesstime
          @Status = status
          @CheckStatus = checkstatus
          @CloudType = cloudtype
        end

        def deserialize(params)
          @ID = params['ID']
          @Name = params['Name']
          @Remark = params['Remark']
          @AppID = params['AppID']
          @Uin = params['Uin']
          @Nickname = params['Nickname']
          @SubUin = params['SubUin']
          @SubNickname = params['SubNickname']
          @Type = params['Type']
          @Advice = params['Advice']
          unless params['AccessKeyAlarmList'].nil?
            @AccessKeyAlarmList = []
            params['AccessKeyAlarmList'].each do |i|
              accesskeyalarminfo_tmp = AccessKeyAlarmInfo.new
              accesskeyalarminfo_tmp.deserialize(i)
              @AccessKeyAlarmList << accesskeyalarminfo_tmp
            end
          end
          unless params['AccessKeyRiskList'].nil?
            @AccessKeyRiskList = []
            params['AccessKeyRiskList'].each do |i|
              accesskeyalarminfo_tmp = AccessKeyAlarmInfo.new
              accesskeyalarminfo_tmp.deserialize(i)
              @AccessKeyRiskList << accesskeyalarminfo_tmp
            end
          end
          @IPCount = params['IPCount']
          @CreateTime = params['CreateTime']
          @LastAccessTime = params['LastAccessTime']
          @Status = params['Status']
          @CheckStatus = params['CheckStatus']
          @CloudType = params['CloudType']
        end
      end

      # 访问密钥风险记录
      class AccessKeyRisk < TencentCloud::Common::AbstractModel
        # @param Name: 风险名称
        # @type Name: String
        # @param Level: 风险等级
        # 0-无效 1-提示 2-低危 3-中危 4-高危 5-严重
        # @type Level: Integer
        # @param ID: 风险记录ID
        # @type ID: Integer
        # @param RiskRuleID: 风险规则ID
        # @type RiskRuleID: Integer
        # @param RiskType: 风险类型
        # 0-配置风险
        # @type RiskType: Integer
        # @param AccessKey: 访问密钥
        # @type AccessKey: String
        # @param AccessKeyID: 访问密钥ID
        # @type AccessKeyID: Integer
        # @param AccessKeyRemark: 访问密钥备注
        # @type AccessKeyRemark: String
        # @param RiskTime: 风险检出时间
        # @type RiskTime: String
        # @param Status: 风险状态
        # 0-未处理 2-已忽略 3-已收敛
        # @type Status: Integer
        # @param Tag: 风险标签
        # @type Tag: Array
        # @param Evidence: 风险证据
        # @type Evidence: String
        # @param Description: 风险描述
        # @type Description: String
        # @param Uin: 所属主账号Uin
        # @type Uin: String
        # @param Nickname: 所属主账号昵称
        # @type Nickname: String
        # @param SubUin: 所属子账号Uin
        # @type SubUin: String
        # @param SubNickname: 所属子账号昵称
        # @type SubNickname: String
        # @param Type: 账号类型
        # 0 主账号AK 1子账号AK
        # 2 临时密钥
        # @type Type: Integer
        # @param CheckStatus: 检测状态
        # 0表示 已检测
        # 1表示 检测中
        # @type CheckStatus: Integer
        # @param AppID: 所属appid
        # @type AppID: Integer
        # @param QueryParam: 对应风险的查询参数
        # @type QueryParam: String
        # @param CloudType: 云类型 0-腾讯云 4-阿里云
        # @type CloudType: Integer
        # @param RelatedAK: 相关的AK列表，包含AK名和AK备注
        # @type RelatedAK: Array

        attr_accessor :Name, :Level, :ID, :RiskRuleID, :RiskType, :AccessKey, :AccessKeyID, :AccessKeyRemark, :RiskTime, :Status, :Tag, :Evidence, :Description, :Uin, :Nickname, :SubUin, :SubNickname, :Type, :CheckStatus, :AppID, :QueryParam, :CloudType, :RelatedAK

        def initialize(name=nil, level=nil, id=nil, riskruleid=nil, risktype=nil, accesskey=nil, accesskeyid=nil, accesskeyremark=nil, risktime=nil, status=nil, tag=nil, evidence=nil, description=nil, uin=nil, nickname=nil, subuin=nil, subnickname=nil, type=nil, checkstatus=nil, appid=nil, queryparam=nil, cloudtype=nil, relatedak=nil)
          @Name = name
          @Level = level
          @ID = id
          @RiskRuleID = riskruleid
          @RiskType = risktype
          @AccessKey = accesskey
          @AccessKeyID = accesskeyid
          @AccessKeyRemark = accesskeyremark
          @RiskTime = risktime
          @Status = status
          @Tag = tag
          @Evidence = evidence
          @Description = description
          @Uin = uin
          @Nickname = nickname
          @SubUin = subuin
          @SubNickname = subnickname
          @Type = type
          @CheckStatus = checkstatus
          @AppID = appid
          @QueryParam = queryparam
          @CloudType = cloudtype
          @RelatedAK = relatedak
        end

        def deserialize(params)
          @Name = params['Name']
          @Level = params['Level']
          @ID = params['ID']
          @RiskRuleID = params['RiskRuleID']
          @RiskType = params['RiskType']
          @AccessKey = params['AccessKey']
          @AccessKeyID = params['AccessKeyID']
          @AccessKeyRemark = params['AccessKeyRemark']
          @RiskTime = params['RiskTime']
          @Status = params['Status']
          @Tag = params['Tag']
          @Evidence = params['Evidence']
          @Description = params['Description']
          @Uin = params['Uin']
          @Nickname = params['Nickname']
          @SubUin = params['SubUin']
          @SubNickname = params['SubNickname']
          @Type = params['Type']
          @CheckStatus = params['CheckStatus']
          @AppID = params['AppID']
          @QueryParam = params['QueryParam']
          @CloudType = params['CloudType']
          unless params['RelatedAK'].nil?
            @RelatedAK = []
            params['RelatedAK'].each do |i|
              akinfo_tmp = AKInfo.new
              akinfo_tmp.deserialize(i)
              @RelatedAK << akinfo_tmp
            end
          end
        end
      end

      # 访问密钥账号信息
      class AccessKeyUser < TencentCloud::Common::AbstractModel
        # @param ID: 账号ID
        # @type ID: Integer
        # @param Name: 账号名称
        # @type Name: String
        # @param Type: 0 主账号 1子账号
        # @type Type: Integer
        # @param AccessType: 访问方式
        # 0 API
        # 1 控制台与API
        # @type AccessType: Integer
        # @param Advice: 安全建议 枚举 0 正常 1 立即处理 2 建议加固
        # @type Advice: Integer
        # @param AccessKeyAlarmList: 告警信息列表
        # @type AccessKeyAlarmList: Array
        # @param AccessKeyRiskList: 风险信息列表
        # @type AccessKeyRiskList: Array
        # @param AppID: 账号所属APPID
        # @type AppID: Integer
        # @param Nickname: 主账号昵称
        # @type Nickname: String
        # @param SubNickname: 子账号昵称
        # @type SubNickname: String
        # @param Uin: 账号所属主账号Uin
        # @type Uin: String
        # @param SubUin: 账号自身uin，主账号时与主账号uin一致
        # @type SubUin: String
        # @param LoginIP: 登录IP
        # @type LoginIP: String
        # @param LoginLocation: 登录地址
        # @type LoginLocation: String
        # @param LoginTime: 登录时间
        # @type LoginTime: String
        # @param ISP: 运营商名称
        # @type ISP: String
        # @param ActionFlag: 操作保护是否开启
        # 0 未开启
        # 1 已开启
        # @type ActionFlag: Integer
        # @param LoginFlag: 登录保护是否开启
        # 0 未开启
        # 1 已开启
        # @type LoginFlag: Integer
        # @param CheckStatus: 0 表示已检测 1 表示检测中
        # @type CheckStatus: Integer
        # @param CloudType: 云厂商类型 0:腾讯云 1:亚马逊云 2:微软云 3:谷歌云 4:阿里云 5:华为云
        # @type CloudType: Integer

        attr_accessor :ID, :Name, :Type, :AccessType, :Advice, :AccessKeyAlarmList, :AccessKeyRiskList, :AppID, :Nickname, :SubNickname, :Uin, :SubUin, :LoginIP, :LoginLocation, :LoginTime, :ISP, :ActionFlag, :LoginFlag, :CheckStatus, :CloudType

        def initialize(id=nil, name=nil, type=nil, accesstype=nil, advice=nil, accesskeyalarmlist=nil, accesskeyrisklist=nil, appid=nil, nickname=nil, subnickname=nil, uin=nil, subuin=nil, loginip=nil, loginlocation=nil, logintime=nil, isp=nil, actionflag=nil, loginflag=nil, checkstatus=nil, cloudtype=nil)
          @ID = id
          @Name = name
          @Type = type
          @AccessType = accesstype
          @Advice = advice
          @AccessKeyAlarmList = accesskeyalarmlist
          @AccessKeyRiskList = accesskeyrisklist
          @AppID = appid
          @Nickname = nickname
          @SubNickname = subnickname
          @Uin = uin
          @SubUin = subuin
          @LoginIP = loginip
          @LoginLocation = loginlocation
          @LoginTime = logintime
          @ISP = isp
          @ActionFlag = actionflag
          @LoginFlag = loginflag
          @CheckStatus = checkstatus
          @CloudType = cloudtype
        end

        def deserialize(params)
          @ID = params['ID']
          @Name = params['Name']
          @Type = params['Type']
          @AccessType = params['AccessType']
          @Advice = params['Advice']
          unless params['AccessKeyAlarmList'].nil?
            @AccessKeyAlarmList = []
            params['AccessKeyAlarmList'].each do |i|
              accesskeyalarminfo_tmp = AccessKeyAlarmInfo.new
              accesskeyalarminfo_tmp.deserialize(i)
              @AccessKeyAlarmList << accesskeyalarminfo_tmp
            end
          end
          unless params['AccessKeyRiskList'].nil?
            @AccessKeyRiskList = []
            params['AccessKeyRiskList'].each do |i|
              accesskeyalarminfo_tmp = AccessKeyAlarmInfo.new
              accesskeyalarminfo_tmp.deserialize(i)
              @AccessKeyRiskList << accesskeyalarminfo_tmp
            end
          end
          @AppID = params['AppID']
          @Nickname = params['Nickname']
          @SubNickname = params['SubNickname']
          @Uin = params['Uin']
          @SubUin = params['SubUin']
          @LoginIP = params['LoginIP']
          @LoginLocation = params['LoginLocation']
          @LoginTime = params['LoginTime']
          @ISP = params['ISP']
          @ActionFlag = params['ActionFlag']
          @LoginFlag = params['LoginFlag']
          @CheckStatus = params['CheckStatus']
          @CloudType = params['CloudType']
        end
      end

      # AddDspmAssetManager请求参数结构体
      class AddDspmAssetManagerRequest < TencentCloud::Common::AbstractModel
        # @param IdentifyIds: 管理员uin
        # @type IdentifyIds: Array
        # @param AssetId: 资产id
        # @type AssetId: Array

        attr_accessor :IdentifyIds, :AssetId

        def initialize(identifyids=nil, assetid=nil)
          @IdentifyIds = identifyids
          @AssetId = assetid
        end

        def deserialize(params)
          @IdentifyIds = params['IdentifyIds']
          @AssetId = params['AssetId']
        end
      end

      # AddDspmAssetManager返回参数结构体
      class AddDspmAssetManagerResponse < TencentCloud::Common::AbstractModel
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
        # @type RelateEvent: :class:`Tencentcloud::Csip.v20221121.models.RelatedEvent`
        # @param LeakContent: 泄漏内容
        # @type LeakContent: String
        # @param LeakAPI: 泄漏API
        # @type LeakAPI: String
        # @param SecretID: secretID
        # @type SecretID: String
        # @param Rule: 命中规则
        # @type Rule: String
        # @param RuleDesc: 规则描述
        # @type RuleDesc: String
        # @param ProtocolPort: 协议端口
        # @type ProtocolPort: String
        # @param AttackContent: 攻击内容
        # @type AttackContent: String
        # @param AttackIPProfile: 攻击IP画像
        # @type AttackIPProfile: String
        # @param AttackIPTags: 攻击IP标签
        # @type AttackIPTags: String
        # @param RequestMethod: 请求方式
        # @type RequestMethod: String
        # @param HttpLog: HTTP日志
        # @type HttpLog: String
        # @param AttackDomain: 被攻击域名
        # @type AttackDomain: String
        # @param FilePath: 文件路径
        # @type FilePath: String
        # @param UserAgent: user_agent
        # @type UserAgent: String
        # @param RequestHeaders: 请求头
        # @type RequestHeaders: String
        # @param LoginUserName: 登录用户名
        # @type LoginUserName: String
        # @param VulnerabilityName: 漏洞名称
        # @type VulnerabilityName: String
        # @param CVE: 公共漏洞和暴露
        # @type CVE: String
        # @param ServiceProcess: 服务进程
        # @type ServiceProcess: String
        # @param FileName: 文件名
        # @type FileName: String
        # @param FileSize: 文件大小
        # @type FileSize: String
        # @param FileMD5: 文件MD5
        # @type FileMD5: String
        # @param FileLastAccessTime: 文件最近访问时间
        # @type FileLastAccessTime: String
        # @param FileModifyTime: 文件修改时间
        # @type FileModifyTime: String
        # @param RecentAccessTime: 最近访问时间
        # @type RecentAccessTime: String
        # @param RecentModifyTime: 最近修改时间
        # @type RecentModifyTime: String
        # @param VirusName: 病毒名
        # @type VirusName: String
        # @param VirusFileTags: 病毒文件标签
        # @type VirusFileTags: String
        # @param BehavioralCharacteristics: 行为特征
        # @type BehavioralCharacteristics: String
        # @param ProcessNamePID: 进程名（PID）
        # @type ProcessNamePID: String
        # @param ProcessPath: 进程路径
        # @type ProcessPath: String
        # @param ProcessCommandLine: 进程命令行
        # @type ProcessCommandLine: String
        # @param ProcessPermissions: 进程权限
        # @type ProcessPermissions: String
        # @param ExecutedCommand: 执行命令
        # @type ExecutedCommand: String
        # @param AffectedFileName: 受影响文件名
        # @type AffectedFileName: String
        # @param DecoyPath: 诱饵路径
        # @type DecoyPath: String
        # @param MaliciousProcessFileSize: 恶意进程文件大小
        # @type MaliciousProcessFileSize: String
        # @param MaliciousProcessFileMD5: 恶意进程文件MD5
        # @type MaliciousProcessFileMD5: String
        # @param MaliciousProcessNamePID: 恶意进程名（PID）
        # @type MaliciousProcessNamePID: String
        # @param MaliciousProcessPath: 恶意进程路径
        # @type MaliciousProcessPath: String
        # @param MaliciousProcessStartTime: 恶意进程启动时间
        # @type MaliciousProcessStartTime: String
        # @param CommandContent: 命令内容
        # @type CommandContent: String
        # @param StartupUser: 启动用户
        # @type StartupUser: String
        # @param UserGroup: 用户所属组
        # @type UserGroup: String
        # @param NewPermissions: 新增权限
        # @type NewPermissions: String
        # @param ParentProcess: 父进程
        # @type ParentProcess: String
        # @param ClassName: 类名
        # @type ClassName: String
        # @param ClassLoader: 所属类加载器
        # @type ClassLoader: String
        # @param ClassFileSize: 类文件大小
        # @type ClassFileSize: String
        # @param ClassFileMD5: 类文件MD5
        # @type ClassFileMD5: String
        # @param ParentClassName: 父类名
        # @type ParentClassName: String
        # @param InheritedInterface: 继承接口
        # @type InheritedInterface: String
        # @param Comment: 注释
        # @type Comment: String
        # @param PayloadContent: 载荷内容
        # @type PayloadContent: String
        # @param CallbackAddressPortrait: 回连地址画像
        # @type CallbackAddressPortrait: String
        # @param CallbackAddressTag: 回连地址标签
        # @type CallbackAddressTag: String
        # @param ProcessMD5: 进程MD5
        # @type ProcessMD5: String
        # @param FilePermission: 文件权限
        # @type FilePermission: String
        # @param FromLogAnalysisData: 来源于日志分析的信息字段
        # @type FromLogAnalysisData: Array
        # @param HitProbe: 命中探针
        # @type HitProbe: String
        # @param HitHoneyPot: 命中蜜罐
        # @type HitHoneyPot: String
        # @param CommandList: 命令列表
        # @type CommandList: String
        # @param AttackEventDesc: 攻击事件描述
        # @type AttackEventDesc: String
        # @param ProcessInfo: 进程信息
        # @type ProcessInfo: String
        # @param UserNameAndPwd: 使用用户名&密码
        # @type UserNameAndPwd: String
        # @param StrategyID: 主机防护策略ID
        # @type StrategyID: String
        # @param StrategyName: 主机防护策略名称
        # @type StrategyName: String
        # @param HitStrategy: 主机防护命中策略，是策略ID和策略名称的组合
        # @type HitStrategy: String
        # @param ProcessName: 进程名
        # @type ProcessName: String
        # @param PID: PID
        # @type PID: String
        # @param PodName: 容器Pod名
        # @type PodName: String
        # @param PodID: 容器PodID
        # @type PodID: String
        # @param Response: Http响应
        # @type Response: String
        # @param SystemCall: 系统调用
        # @type SystemCall: String
        # @param Verb: 操作类型verb
        # @type Verb: String
        # @param LogID: 日志ID
        # @type LogID: String
        # @param Different: 变更内容
        # @type Different: String
        # @param EventType: 事件类型
        # @type EventType: String
        # @param Description: 事件描述
        # @type Description: String
        # @param TargetAddress: 目标地址(容器反弹shell)
        # @type TargetAddress: String
        # @param MaliciousRequestDomain: 恶意请求域名(容器恶意外联)
        # @type MaliciousRequestDomain: String
        # @param RuleType: 规则类型(容器K8sAPI异常请求)
        # @type RuleType: String
        # @param RequestURI: 请求资源(容器K8sAPI异常请求)
        # @type RequestURI: String
        # @param RequestUser: 发起请求用户(容器K8sAPI异常请求)
        # @type RequestUser: String
        # @param RequestObject: 请求对象(容器K8sAPI异常请求)
        # @type RequestObject: String
        # @param ResponseObject: 响应对象(容器K8sAPI异常请求)
        # @type ResponseObject: String
        # @param FileType: 文件类型(容器文件篡改)
        # @type FileType: String
        # @param TIType: 标签特征(容器恶意外联)
        # @type TIType: String
        # @param SourceIP: 来源IP(容器K8sAPI异常请求)
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
        # @type ID: String
        # @param Name: 告警名称
        # @type Name: String
        # @param Source: 告警来源
        # CFW:云防火墙
        # WAF:Web应用防火墙
        # CWP:主机安全
        # CSIP:云安全中心
        # @type Source: String
        # @param Level: 告警等级
        # 1:提示
        # 2:低危
        # 3:中危
        # 4:高危
        # 5:严重
        # @type Level: Integer
        # @param Attacker: 攻击者
        # @type Attacker: :class:`Tencentcloud::Csip.v20221121.models.RoleInfo`
        # @param Victim: 受害者
        # @type Victim: :class:`Tencentcloud::Csip.v20221121.models.RoleInfo`
        # @param EvidenceData: 证据数据(例如攻击内容等，base64编码)
        # @type EvidenceData: String
        # @param EvidenceLocation: 证据位置(例如协议端口)
        # @type EvidenceLocation: String
        # @param EvidencePath: 证据路径
        # @type EvidencePath: String
        # @param CreateTime: 首次告警时间
        # @type CreateTime: String
        # @param UpdateTime: 最近告警时间
        # @type UpdateTime: String
        # @param Count: 告警次数
        # @type Count: Integer
        # @param UrgentSuggestion: 紧急缓解建议
        # @type UrgentSuggestion: String
        # @param RemediationSuggestion: 根治建议
        # @type RemediationSuggestion: String
        # @param Status: 处理状态
        # 0：未处置，1：已忽略，2：已处置
        # @type Status: Integer
        # @param ProcessType: 告警处理类型
        # @type ProcessType: String
        # @param Type: 告警大类
        # @type Type: String
        # @param SubType: 告警小类
        # @type SubType: String
        # @param ExtraInfo: 下拉字段
        # @type ExtraInfo: :class:`Tencentcloud::Csip.v20221121.models.AlertExtraInfo`
        # @param Key: 聚合字段
        # @type Key: String
        # @param Date: 告警日期
        # @type Date: String
        # @param AppID: appid
        # @type AppID: String
        # @param NickName: 账户名称
        # @type NickName: String
        # @param Uin: 账户ID
        # @type Uin: String
        # @param Action: 行为
        # @type Action: Integer
        # @param RiskInvestigation: 风险排查
        # @type RiskInvestigation: String
        # @param RiskTreatment: 风险处置
        # @type RiskTreatment: String
        # @param LogType: 日志类型
        # @type LogType: String
        # @param LogSearch: 语句检索
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
        # @type VpcId: String
        # @param VpcName: vpc-name
        # @type VpcName: String
        # @param AssetName: 资产名
        # @type AssetName: String
        # @param Os: 操作系统
        # @type Os: String
        # @param PublicIp: 公网ip
        # @type PublicIp: String
        # @param PrivateIp: 内网ip
        # @type PrivateIp: String
        # @param Region: 地域
        # @type Region: String
        # @param AssetType: 资产类型
        # @type AssetType: String
        # @param AssetId: 资产id
        # @type AssetId: String
        # @param AccountNum: 账号数量
        # @type AccountNum: Integer
        # @param PortNum: 端口数量
        # @type PortNum: Integer
        # @param ProcessNum: 进程数量
        # @type ProcessNum: Integer
        # @param SoftApplicationNum: 软件应用数量
        # @type SoftApplicationNum: Integer
        # @param DatabaseNum: 数据库数量
        # @type DatabaseNum: Integer
        # @param WebApplicationNum: Web应用数量
        # @type WebApplicationNum: Integer
        # @param ServiceNum: 服务数量
        # @type ServiceNum: Integer
        # @param WebFrameworkNum: web框架数量
        # @type WebFrameworkNum: Integer
        # @param WebSiteNum: Web站点数量
        # @type WebSiteNum: Integer
        # @param JarPackageNum: Jar包数量
        # @type JarPackageNum: Integer
        # @param StartServiceNum: 启动服务数量
        # @type StartServiceNum: Integer
        # @param ScheduledTaskNum: 计划任务数量
        # @type ScheduledTaskNum: Integer
        # @param EnvironmentVariableNum: 环境变量数量
        # @type EnvironmentVariableNum: Integer
        # @param KernelModuleNum: 内核模块数量
        # @type KernelModuleNum: Integer
        # @param SystemInstallationPackageNum: 系统安装包数量
        # @type SystemInstallationPackageNum: Integer
        # @param SurplusProtectDay: 剩余防护时长
        # @type SurplusProtectDay: Integer
        # @param CWPStatus: 客户端是否安装  1 已安装 0 未安装
        # @type CWPStatus: Integer
        # @param Tag: 标签
        # @type Tag: Array
        # @param ProtectLevel: 防护等级
        # @type ProtectLevel: String
        # @param ProtectedDay: 防护时长
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

      # 集群列表

      # 集群防护状态，左边枚举,右边为显示
      # 集群防护状态
      # 0:未接入
      # 1:未防护
      # 2:部分防护
      # 3:防护中
      # 4:接入异常
      # 5:接入中
      # 6:卸载中
      # 7:卸载异常
      class AssetCluster < TencentCloud::Common::AbstractModel
        # @param AppId: 租户id
        # @type AppId: Integer
        # @param Uin: 租户uin
        # @type Uin: String
        # @param Nick: 租户昵称
        # @type Nick: String
        # @param Region: 地域
        # @type Region: String
        # @param AssetId: 集群id
        # @type AssetId: String
        # @param AssetName: 集群名称
        # @type AssetName: String
        # @param AssetType: 集群类型
        # @type AssetType: String
        # @param InstanceCreateTime: 集群创建时间
        # @type InstanceCreateTime: String
        # @param Status: 状态
        # @type Status: String
        # @param ProtectStatus: 集群防护状态，左边枚举,右边为显示
        # 集群防护状态
        # 0:未接入
        # 1:未防护
        # 2:部分防护
        # 3:防护中
        # 4:接入异常
        # 5:接入中
        # 6:卸载中
        # 7:卸载异常
        # @type ProtectStatus: Integer
        # @param ProtectInfo: 接入信息，不为空表示有接入异常信息
        # @type ProtectInfo: String
        # @param VpcId: 私有网络id
        # @type VpcId: String
        # @param VpcName: 私有网络名称
        # @type VpcName: String
        # @param KubernetesVersion: kubernetes版本
        # @type KubernetesVersion: String
        # @param Component: 运行时组件
        # @type Component: String
        # @param ComponentVersion: 运行时组件版本
        # @type ComponentVersion: String
        # @param ComponentStatus: 组件状态
        # @type ComponentStatus: String
        # @param CheckTime: 体检时间
        # @type CheckTime: String
        # @param MachineCount: 关联主机数
        # @type MachineCount: Integer
        # @param PodCount: 关联pod数
        # @type PodCount: Integer
        # @param ServiceCount: 关联service数
        # @type ServiceCount: Integer
        # @param VulRisk: 漏洞风险
        # @type VulRisk: Integer
        # @param CFGRisk: 配置风险
        # @type CFGRisk: Integer
        # @param CheckCount: 体检数
        # @type CheckCount: Integer
        # @param IsCore: 是否核心：1:核心，2:非核心
        # @type IsCore: Integer
        # @param IsNewAsset: 是否新资产 1新
        # @type IsNewAsset: Integer
        # @param CloudType: 云资产类型：0：腾讯云，1：aws，2：azure
        # @type CloudType: Integer

        attr_accessor :AppId, :Uin, :Nick, :Region, :AssetId, :AssetName, :AssetType, :InstanceCreateTime, :Status, :ProtectStatus, :ProtectInfo, :VpcId, :VpcName, :KubernetesVersion, :Component, :ComponentVersion, :ComponentStatus, :CheckTime, :MachineCount, :PodCount, :ServiceCount, :VulRisk, :CFGRisk, :CheckCount, :IsCore, :IsNewAsset, :CloudType

        def initialize(appid=nil, uin=nil, nick=nil, region=nil, assetid=nil, assetname=nil, assettype=nil, instancecreatetime=nil, status=nil, protectstatus=nil, protectinfo=nil, vpcid=nil, vpcname=nil, kubernetesversion=nil, component=nil, componentversion=nil, componentstatus=nil, checktime=nil, machinecount=nil, podcount=nil, servicecount=nil, vulrisk=nil, cfgrisk=nil, checkcount=nil, iscore=nil, isnewasset=nil, cloudtype=nil)
          @AppId = appid
          @Uin = uin
          @Nick = nick
          @Region = region
          @AssetId = assetid
          @AssetName = assetname
          @AssetType = assettype
          @InstanceCreateTime = instancecreatetime
          @Status = status
          @ProtectStatus = protectstatus
          @ProtectInfo = protectinfo
          @VpcId = vpcid
          @VpcName = vpcname
          @KubernetesVersion = kubernetesversion
          @Component = component
          @ComponentVersion = componentversion
          @ComponentStatus = componentstatus
          @CheckTime = checktime
          @MachineCount = machinecount
          @PodCount = podcount
          @ServiceCount = servicecount
          @VulRisk = vulrisk
          @CFGRisk = cfgrisk
          @CheckCount = checkcount
          @IsCore = iscore
          @IsNewAsset = isnewasset
          @CloudType = cloudtype
        end

        def deserialize(params)
          @AppId = params['AppId']
          @Uin = params['Uin']
          @Nick = params['Nick']
          @Region = params['Region']
          @AssetId = params['AssetId']
          @AssetName = params['AssetName']
          @AssetType = params['AssetType']
          @InstanceCreateTime = params['InstanceCreateTime']
          @Status = params['Status']
          @ProtectStatus = params['ProtectStatus']
          @ProtectInfo = params['ProtectInfo']
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          @KubernetesVersion = params['KubernetesVersion']
          @Component = params['Component']
          @ComponentVersion = params['ComponentVersion']
          @ComponentStatus = params['ComponentStatus']
          @CheckTime = params['CheckTime']
          @MachineCount = params['MachineCount']
          @PodCount = params['PodCount']
          @ServiceCount = params['ServiceCount']
          @VulRisk = params['VulRisk']
          @CFGRisk = params['CFGRisk']
          @CheckCount = params['CheckCount']
          @IsCore = params['IsCore']
          @IsNewAsset = params['IsNewAsset']
          @CloudType = params['CloudType']
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
        # @type Text: String
        # @param Value: 资产类型
        # @type Value: String
        # @param InstanceTypeList: 资产类型和实例类型映射关系
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

      # 主机进程内容
      class AssetProcessItem < TencentCloud::Common::AbstractModel
        # @param CloudAccountID: 云账号ID
        # @type CloudAccountID: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param AppID: 租户ID
        # @type AppID: Integer
        # @param CloudAccountName: 云账号名称
        # @type CloudAccountName: String
        # @param InstanceID: 实例ID
        # @type InstanceID: String
        # @param PublicIp: 公网IP
        # @type PublicIp: String
        # @param PrivateIp: 内网IP
        # @type PrivateIp: String
        # @param ProcessID: 进程ID
        # @type ProcessID: String
        # @param ProcessName: 进程名称
        # @type ProcessName: String
        # @param CmdLine: 命令行
        # @type CmdLine: String
        # @param Port: 监听端口列表
        # @type Port: String

        attr_accessor :CloudAccountID, :InstanceName, :AppID, :CloudAccountName, :InstanceID, :PublicIp, :PrivateIp, :ProcessID, :ProcessName, :CmdLine, :Port

        def initialize(cloudaccountid=nil, instancename=nil, appid=nil, cloudaccountname=nil, instanceid=nil, publicip=nil, privateip=nil, processid=nil, processname=nil, cmdline=nil, port=nil)
          @CloudAccountID = cloudaccountid
          @InstanceName = instancename
          @AppID = appid
          @CloudAccountName = cloudaccountname
          @InstanceID = instanceid
          @PublicIp = publicip
          @PrivateIp = privateip
          @ProcessID = processid
          @ProcessName = processname
          @CmdLine = cmdline
          @Port = port
        end

        def deserialize(params)
          @CloudAccountID = params['CloudAccountID']
          @InstanceName = params['InstanceName']
          @AppID = params['AppID']
          @CloudAccountName = params['CloudAccountName']
          @InstanceID = params['InstanceID']
          @PublicIp = params['PublicIp']
          @PrivateIp = params['PrivateIp']
          @ProcessID = params['ProcessID']
          @ProcessName = params['ProcessName']
          @CmdLine = params['CmdLine']
          @Port = params['Port']
        end
      end

      # 资产视角风险信息
      class AssetRiskItem < TencentCloud::Common::AbstractModel
        # @param AppId: 租户ID
        # @type AppId: Integer
        # @param Provider: 云厂商
        # @type Provider: String
        # @param ProviderName: 云厂商名称
        # @type ProviderName: String
        # @param CloudAccountName: 云账号名称
        # @type CloudAccountName: String
        # @param CloudAccountId: 云账号ID
        # @type CloudAccountId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param CreateTime: 首次发现时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param RiskStatus: 风险状态
        # @type RiskStatus: Integer
        # @param RiskTitle: 风险名称
        # @type RiskTitle: String
        # @param CheckType: 检查类型
        # @type CheckType: String
        # @param Severity: 风险等级
        # @type Severity: String
        # @param RiskRuleId: 风险规则ID
        # @type RiskRuleId: String
        # @param Classify: 处置分类
        # @type Classify: String
        # @param StandardTerms: 等保合规
        # @type StandardTerms: Array
        # @param AssetType: 资产类型
        # @type AssetType: String

        attr_accessor :AppId, :Provider, :ProviderName, :CloudAccountName, :CloudAccountId, :InstanceName, :InstanceId, :CreateTime, :UpdateTime, :RiskStatus, :RiskTitle, :CheckType, :Severity, :RiskRuleId, :Classify, :StandardTerms, :AssetType

        def initialize(appid=nil, provider=nil, providername=nil, cloudaccountname=nil, cloudaccountid=nil, instancename=nil, instanceid=nil, createtime=nil, updatetime=nil, riskstatus=nil, risktitle=nil, checktype=nil, severity=nil, riskruleid=nil, classify=nil, standardterms=nil, assettype=nil)
          @AppId = appid
          @Provider = provider
          @ProviderName = providername
          @CloudAccountName = cloudaccountname
          @CloudAccountId = cloudaccountid
          @InstanceName = instancename
          @InstanceId = instanceid
          @CreateTime = createtime
          @UpdateTime = updatetime
          @RiskStatus = riskstatus
          @RiskTitle = risktitle
          @CheckType = checktype
          @Severity = severity
          @RiskRuleId = riskruleid
          @Classify = classify
          @StandardTerms = standardterms
          @AssetType = assettype
        end

        def deserialize(params)
          @AppId = params['AppId']
          @Provider = params['Provider']
          @ProviderName = params['ProviderName']
          @CloudAccountName = params['CloudAccountName']
          @CloudAccountId = params['CloudAccountId']
          @InstanceName = params['InstanceName']
          @InstanceId = params['InstanceId']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @RiskStatus = params['RiskStatus']
          @RiskTitle = params['RiskTitle']
          @CheckType = params['CheckType']
          @Severity = params['Severity']
          @RiskRuleId = params['RiskRuleId']
          @Classify = params['Classify']
          unless params['StandardTerms'].nil?
            @StandardTerms = []
            params['StandardTerms'].each do |i|
              standardterm_tmp = StandardTerm.new
              standardterm_tmp.deserialize(i)
              @StandardTerms << standardterm_tmp
            end
          end
          @AssetType = params['AssetType']
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
        # @param Status: 状态，0未处理、1已处置、2已忽略、3云防已防护
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
        # @param ServiceJudge: 服务判定,high_risk_service 高危服务 web_service web服务 other_service 其他服务
        # @type ServiceJudge: String
        # @param XspmStatus: 状态，0未处理、1已处置、2已忽略、3云防已防护、4无需处理
        # @type XspmStatus: Integer

        attr_accessor :Port, :AffectAsset, :Level, :InstanceType, :Protocol, :Component, :Service, :RecentTime, :FirstTime, :Suggestion, :Status, :Id, :Index, :InstanceId, :InstanceName, :AppId, :Nick, :Uin, :From, :ServiceJudge, :XspmStatus

        def initialize(port=nil, affectasset=nil, level=nil, instancetype=nil, protocol=nil, component=nil, service=nil, recenttime=nil, firsttime=nil, suggestion=nil, status=nil, id=nil, index=nil, instanceid=nil, instancename=nil, appid=nil, nick=nil, uin=nil, from=nil, servicejudge=nil, xspmstatus=nil)
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
          @ServiceJudge = servicejudge
          @XspmStatus = xspmstatus
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
          @ServiceJudge = params['ServiceJudge']
          @XspmStatus = params['XspmStatus']
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
        # @type Nick: String
        # @param Uin: 用户uin
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
        # @type EMGCVulType: Integer
        # @param CVSS: CVSS评分
        # @type CVSS: Float
        # @param Index: 前端索引id
        # @type Index: String
        # @param PCMGRId: pcmgrId
        # @type PCMGRId: String
        # @param LogId: 报告id
        # @type LogId: String
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param VulTag: 漏洞标签
        # @type VulTag: Array
        # @param DisclosureTime: 漏洞披露时间
        # @type DisclosureTime: String
        # @param AttackHeat: 攻击热度
        # @type AttackHeat: Integer
        # @param IsSuggest: 是否必修漏洞1是，0不是
        # @type IsSuggest: Integer
        # @param HandleTaskId: 处置任务ID
        # @type HandleTaskId: String
        # @param EngineSource: 引擎来源
        # @type EngineSource: String
        # @param VulRiskId: 新的漏洞风险id(同全网漏洞表的RiskId)
        # @type VulRiskId: String
        # @param TvdID: 新版漏洞id
        # @type TvdID: String
        # @param IsOneClick: 是否可以一键体检，1-可以，0-不可以
        # @type IsOneClick: Integer
        # @param IsPOC: 是否POC扫描，0-非POC，1-POC
        # @type IsPOC: Integer

        attr_accessor :AffectAsset, :Level, :InstanceType, :Component, :RecentTime, :FirstTime, :Status, :RiskId, :InstanceId, :InstanceName, :AppId, :Nick, :Uin, :VULType, :Port, :AppName, :AppVersion, :VULURL, :VULName, :CVE, :POCId, :From, :CWPVersion, :InstanceUUID, :Payload, :EMGCVulType, :CVSS, :Index, :PCMGRId, :LogId, :TaskId, :VulTag, :DisclosureTime, :AttackHeat, :IsSuggest, :HandleTaskId, :EngineSource, :VulRiskId, :TvdID, :IsOneClick, :IsPOC

        def initialize(affectasset=nil, level=nil, instancetype=nil, component=nil, recenttime=nil, firsttime=nil, status=nil, riskid=nil, instanceid=nil, instancename=nil, appid=nil, nick=nil, uin=nil, vultype=nil, port=nil, appname=nil, appversion=nil, vulurl=nil, vulname=nil, cve=nil, pocid=nil, from=nil, cwpversion=nil, instanceuuid=nil, payload=nil, emgcvultype=nil, cvss=nil, index=nil, pcmgrid=nil, logid=nil, taskid=nil, vultag=nil, disclosuretime=nil, attackheat=nil, issuggest=nil, handletaskid=nil, enginesource=nil, vulriskid=nil, tvdid=nil, isoneclick=nil, ispoc=nil)
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
          @IsPOC = ispoc
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
          @IsPOC = params['IsPOC']
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
        # @param Port: 端口
        # @type Port: Integer

        attr_accessor :AffectAsset, :Level, :InstanceType, :Component, :Service, :RecentTime, :FirstTime, :Status, :Id, :Index, :InstanceId, :InstanceName, :AppId, :Nick, :Uin, :PasswordType, :From, :VULType, :VULURL, :Fix, :Payload, :Port

        def initialize(affectasset=nil, level=nil, instancetype=nil, component=nil, service=nil, recenttime=nil, firsttime=nil, status=nil, id=nil, index=nil, instanceid=nil, instancename=nil, appid=nil, nick=nil, uin=nil, passwordtype=nil, from=nil, vultype=nil, vulurl=nil, fix=nil, payload=nil, port=nil)
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
          @Port = port
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
          @Port = params['Port']
        end
      end

      # 通用的下拉框列表
      class AttributeOptionSet < TencentCloud::Common::AbstractModel
        # @param Text: cvm实例类型
        # @type Text: String
        # @param Value: cvm实例名称
        # @type Value: String

        attr_accessor :Text, :Value

        def initialize(text=nil, value=nil)
          @Text = text
          @Value = value
        end

        def deserialize(params)
          @Text = params['Text']
          @Value = params['Value']
        end
      end

      # 审计日志列表信息
      class AuditLogInfo < TencentCloud::Common::AbstractModel
        # @param AiScore: ai分数
        # @type AiScore: Float
        # @param AppUser: 应用用户
        # @type AppUser: String
        # @param BackPacket: 备份数据包
        # @type BackPacket: String
        # @param ClientIp: 客户端 IP
        # @type ClientIp: String
        # @param ClientMac: 客户端 Mac
        # @type ClientMac: String
        # @param ClientName: 终端名称，取值Proxy时为casb代理流量，其它为Agent流量
        # @type ClientName: String
        # @param ClientUser: 客户端用户
        # @type ClientUser: String
        # @param ClientPort: 客户端端口
        # @type ClientPort: Integer
        # @param DangerLevel: 风险等级
        # @type DangerLevel: Integer
        # @param DbIp: 数据库 IP
        # @type DbIp: String
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param DbPort: 数据库端口
        # @type DbPort: Integer
        # @param DbUser: 数据库用户
        # @type DbUser: String
        # @param EffectRow: 影响行数
        # @type EffectRow: Integer
        # @param ExecTime: 执行时间
        # @type ExecTime: Integer
        # @param HitRule: 命中规则
        # @type HitRule: String
        # @param Id: 日志 ID
        # @type Id: Integer
        # @param InstanceId: 数据资产名称
        # @type InstanceId: Integer
        # @param InstanceName: 审计单元名
        # @type InstanceName: String
        # @param OpSql: 操作语句(sql 语句)
        # @type OpSql: String
        # @param OpTime: 操作时间(时间)
        # @type OpTime: Integer
        # @param RetMsg: 返回消息
        # @type RetMsg: String
        # @param RetNo: 返回码
        # @type RetNo: Integer
        # @param SessionId: 会话ID
        # @type SessionId: String
        # @param SqlType: 操作类型
        # @type SqlType: String
        # @param TableName: 表名
        # @type TableName: String
        # @param AssetName: 数据资产名称
        # @type AssetName: String
        # @param HitRules: 规则集合
        # @type HitRules: Array
        # @param SourceType: 流量来源
        # @type SourceType: String
        # @param ReqId: 单条审计日志id
        # @type ReqId: String
        # @param SqlMainType: SQL 主要类型，DML/DDL/DCL/TCL
        # @type SqlMainType: String
        # @param TableNames: 表名集合
        # @type TableNames: Array
        # @param FieldNames: 字段名集合
        # @type FieldNames: Array
        # @param FieldName: 字段名
        # @type FieldName: String
        # @param DbType: 数据库类型
        # @type DbType: String
        # @param ClientDriverName: 客户端工具
        # @type ClientDriverName: String
        # @param Location: 位置信息
        # @type Location: :class:`Tencentcloud::Csip.v20221121.models.Location`
        # @param FieldDetails: 字段信息（包含敏感信息）
        # @type FieldDetails: Array
        # @param AppId: 资产所属账号app id
        # @type AppId: Integer
        # @param NickName: 账号昵称
        # @type NickName: String
        # @param Uin: 资产所属账号uin
        # @type Uin: String

        attr_accessor :AiScore, :AppUser, :BackPacket, :ClientIp, :ClientMac, :ClientName, :ClientUser, :ClientPort, :DangerLevel, :DbIp, :DbName, :DbPort, :DbUser, :EffectRow, :ExecTime, :HitRule, :Id, :InstanceId, :InstanceName, :OpSql, :OpTime, :RetMsg, :RetNo, :SessionId, :SqlType, :TableName, :AssetName, :HitRules, :SourceType, :ReqId, :SqlMainType, :TableNames, :FieldNames, :FieldName, :DbType, :ClientDriverName, :Location, :FieldDetails, :AppId, :NickName, :Uin

        def initialize(aiscore=nil, appuser=nil, backpacket=nil, clientip=nil, clientmac=nil, clientname=nil, clientuser=nil, clientport=nil, dangerlevel=nil, dbip=nil, dbname=nil, dbport=nil, dbuser=nil, effectrow=nil, exectime=nil, hitrule=nil, id=nil, instanceid=nil, instancename=nil, opsql=nil, optime=nil, retmsg=nil, retno=nil, sessionid=nil, sqltype=nil, tablename=nil, assetname=nil, hitrules=nil, sourcetype=nil, reqid=nil, sqlmaintype=nil, tablenames=nil, fieldnames=nil, fieldname=nil, dbtype=nil, clientdrivername=nil, location=nil, fielddetails=nil, appid=nil, nickname=nil, uin=nil)
          @AiScore = aiscore
          @AppUser = appuser
          @BackPacket = backpacket
          @ClientIp = clientip
          @ClientMac = clientmac
          @ClientName = clientname
          @ClientUser = clientuser
          @ClientPort = clientport
          @DangerLevel = dangerlevel
          @DbIp = dbip
          @DbName = dbname
          @DbPort = dbport
          @DbUser = dbuser
          @EffectRow = effectrow
          @ExecTime = exectime
          @HitRule = hitrule
          @Id = id
          @InstanceId = instanceid
          @InstanceName = instancename
          @OpSql = opsql
          @OpTime = optime
          @RetMsg = retmsg
          @RetNo = retno
          @SessionId = sessionid
          @SqlType = sqltype
          @TableName = tablename
          @AssetName = assetname
          @HitRules = hitrules
          @SourceType = sourcetype
          @ReqId = reqid
          @SqlMainType = sqlmaintype
          @TableNames = tablenames
          @FieldNames = fieldnames
          @FieldName = fieldname
          @DbType = dbtype
          @ClientDriverName = clientdrivername
          @Location = location
          @FieldDetails = fielddetails
          @AppId = appid
          @NickName = nickname
          @Uin = uin
        end

        def deserialize(params)
          @AiScore = params['AiScore']
          @AppUser = params['AppUser']
          @BackPacket = params['BackPacket']
          @ClientIp = params['ClientIp']
          @ClientMac = params['ClientMac']
          @ClientName = params['ClientName']
          @ClientUser = params['ClientUser']
          @ClientPort = params['ClientPort']
          @DangerLevel = params['DangerLevel']
          @DbIp = params['DbIp']
          @DbName = params['DbName']
          @DbPort = params['DbPort']
          @DbUser = params['DbUser']
          @EffectRow = params['EffectRow']
          @ExecTime = params['ExecTime']
          @HitRule = params['HitRule']
          @Id = params['Id']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @OpSql = params['OpSql']
          @OpTime = params['OpTime']
          @RetMsg = params['RetMsg']
          @RetNo = params['RetNo']
          @SessionId = params['SessionId']
          @SqlType = params['SqlType']
          @TableName = params['TableName']
          @AssetName = params['AssetName']
          unless params['HitRules'].nil?
            @HitRules = []
            params['HitRules'].each do |i|
              hitrules_tmp = HitRules.new
              hitrules_tmp.deserialize(i)
              @HitRules << hitrules_tmp
            end
          end
          @SourceType = params['SourceType']
          @ReqId = params['ReqId']
          @SqlMainType = params['SqlMainType']
          @TableNames = params['TableNames']
          @FieldNames = params['FieldNames']
          @FieldName = params['FieldName']
          @DbType = params['DbType']
          @ClientDriverName = params['ClientDriverName']
          unless params['Location'].nil?
            @Location = Location.new
            @Location.deserialize(params['Location'])
          end
          unless params['FieldDetails'].nil?
            @FieldDetails = []
            params['FieldDetails'].each do |i|
              tablefield_tmp = TableField.new
              tablefield_tmp.deserialize(i)
              @FieldDetails << tablefield_tmp
            end
          end
          @AppId = params['AppId']
          @NickName = params['NickName']
          @Uin = params['Uin']
        end
      end

      # 日志备份
      class BackupLog < TencentCloud::Common::AbstractModel
        # @param Id: 索引
        # @type Id: Integer
        # @param IndexStartTime: 索引开始时间
        # @type IndexStartTime: Integer
        # @param IndexEndTime: 索引结束时间
        # @type IndexEndTime: Integer
        # @param BackupSize: 备份后压缩的大小，单位M
        # @type BackupSize: Integer
        # @param Status: 日志状态 0备份未完成， 1备份文件，2恢复中，3已恢复，4.已删除
        # @type Status: Integer
        # @param RestoreProcessRemindTime: 恢复剩余的分钟数，分钟，需要前端转换
        # @type RestoreProcessRemindTime: Integer
        # @param RestoreRemindTime: 恢复日志保留的时间
        # @type RestoreRemindTime: Integer
        # @param RestoreIndexSize: 恢复索引大小
        # @type RestoreIndexSize: Integer
        # @param RestoreEndTime: 恢复日志执行结束时间
        # @type RestoreEndTime: Integer
        # @param AppId: 备份所属的appId
        # @type AppId: Integer
        # @param AssetId: 备份所属的资产ID
        # @type AssetId: Integer
        # @param NickName: 账号昵称
        # @type NickName: String
        # @param Uin: 资产所属账号uin
        # @type Uin: String

        attr_accessor :Id, :IndexStartTime, :IndexEndTime, :BackupSize, :Status, :RestoreProcessRemindTime, :RestoreRemindTime, :RestoreIndexSize, :RestoreEndTime, :AppId, :AssetId, :NickName, :Uin

        def initialize(id=nil, indexstarttime=nil, indexendtime=nil, backupsize=nil, status=nil, restoreprocessremindtime=nil, restoreremindtime=nil, restoreindexsize=nil, restoreendtime=nil, appid=nil, assetid=nil, nickname=nil, uin=nil)
          @Id = id
          @IndexStartTime = indexstarttime
          @IndexEndTime = indexendtime
          @BackupSize = backupsize
          @Status = status
          @RestoreProcessRemindTime = restoreprocessremindtime
          @RestoreRemindTime = restoreremindtime
          @RestoreIndexSize = restoreindexsize
          @RestoreEndTime = restoreendtime
          @AppId = appid
          @AssetId = assetid
          @NickName = nickname
          @Uin = uin
        end

        def deserialize(params)
          @Id = params['Id']
          @IndexStartTime = params['IndexStartTime']
          @IndexEndTime = params['IndexEndTime']
          @BackupSize = params['BackupSize']
          @Status = params['Status']
          @RestoreProcessRemindTime = params['RestoreProcessRemindTime']
          @RestoreRemindTime = params['RestoreRemindTime']
          @RestoreIndexSize = params['RestoreIndexSize']
          @RestoreEndTime = params['RestoreEndTime']
          @AppId = params['AppId']
          @AssetId = params['AssetId']
          @NickName = params['NickName']
          @Uin = params['Uin']
        end
      end

      # 漏洞详细信息
      class BugInfoDetail < TencentCloud::Common::AbstractModel
        # @param Id: 漏洞编号
        # @type Id: Integer
        # @param PatchId: 漏洞对应pocId
        # @type PatchId: String
        # @param VULName: 漏洞名称
        # @type VULName: String
        # @param Level: 漏洞严重性：high,middle，low，info
        # @type Level: String
        # @param CVSSScore: cvss评分
        # @type CVSSScore: String
        # @param CVEId: cve编号
        # @type CVEId: String
        # @param Tag: 漏洞标签
        # @type Tag: String
        # @param VULCategory: 漏洞种类，1:web应用，2:系统组件漏洞，3:配置风险
        # @type VULCategory: Integer
        # @param ImpactOs: 漏洞影响系统
        # @type ImpactOs: String
        # @param ImpactCOMPENT: 漏洞影响组件
        # @type ImpactCOMPENT: String
        # @param ImpactVersion: 漏洞影响版本
        # @type ImpactVersion: String
        # @param Reference: 链接
        # @type Reference: String
        # @param VULDescribe: 漏洞描述
        # @type VULDescribe: String
        # @param Fix: 修复建议
        # @type Fix: String
        # @param ProSupport: 产品支持状态，实时返回
        # @type ProSupport: Integer
        # @param IsPublish: 是否公开，0为未发布，1为发布
        # @type IsPublish: Integer
        # @param ReleaseTime: 释放时间
        # @type ReleaseTime: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param SubCategory: 漏洞子类别
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

      # 配置视角的配置风险对象
      class CFGViewCFGRisk < TencentCloud::Common::AbstractModel
        # @param NoHandleCount: 影响资产
        # @type NoHandleCount: Integer
        # @param Level: 风险等级，low-低危，high-高危，middle-中危，info-提示，extreme-严重。
        # @type Level: String
        # @param RecentTime: 最近识别时间
        # @type RecentTime: String
        # @param FirstTime: 首次识别时间
        # @type FirstTime: String
        # @param AffectAssetCount: 状态，0未处理、1已处置、2已忽略
        # @type AffectAssetCount: Integer
        # @param Id: 资产唯一id
        # @type Id: String
        # @param From: 资产子类型
        # @type From: String
        # @param Index: 前端索引
        # @type Index: String
        # @param AppId: 用户appid
        # @type AppId: String
        # @param Nick: 用户昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nick: String
        # @param Uin: 用户uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param CFGName: 配置名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CFGName: String
        # @param CheckType: 检查类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckType: String
        # @param CFGSTD: -
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CFGSTD: String
        # @param CFGDescribe: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CFGDescribe: String
        # @param CFGFix: 修复建议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CFGFix: String
        # @param CFGHelpURL: 帮助文档
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CFGHelpURL: String

        attr_accessor :NoHandleCount, :Level, :RecentTime, :FirstTime, :AffectAssetCount, :Id, :From, :Index, :AppId, :Nick, :Uin, :CFGName, :CheckType, :CFGSTD, :CFGDescribe, :CFGFix, :CFGHelpURL

        def initialize(nohandlecount=nil, level=nil, recenttime=nil, firsttime=nil, affectassetcount=nil, id=nil, from=nil, index=nil, appid=nil, nick=nil, uin=nil, cfgname=nil, checktype=nil, cfgstd=nil, cfgdescribe=nil, cfgfix=nil, cfghelpurl=nil)
          @NoHandleCount = nohandlecount
          @Level = level
          @RecentTime = recenttime
          @FirstTime = firsttime
          @AffectAssetCount = affectassetcount
          @Id = id
          @From = from
          @Index = index
          @AppId = appid
          @Nick = nick
          @Uin = uin
          @CFGName = cfgname
          @CheckType = checktype
          @CFGSTD = cfgstd
          @CFGDescribe = cfgdescribe
          @CFGFix = cfgfix
          @CFGHelpURL = cfghelpurl
        end

        def deserialize(params)
          @NoHandleCount = params['NoHandleCount']
          @Level = params['Level']
          @RecentTime = params['RecentTime']
          @FirstTime = params['FirstTime']
          @AffectAssetCount = params['AffectAssetCount']
          @Id = params['Id']
          @From = params['From']
          @Index = params['Index']
          @AppId = params['AppId']
          @Nick = params['Nick']
          @Uin = params['Uin']
          @CFGName = params['CFGName']
          @CheckType = params['CheckType']
          @CFGSTD = params['CFGSTD']
          @CFGDescribe = params['CFGDescribe']
          @CFGFix = params['CFGFix']
          @CFGHelpURL = params['CFGHelpURL']
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
        # @type AssetId: String
        # @param AssetName: 资产名
        # @type AssetName: String
        # @param AssetType: 资产类型
        # @type AssetType: String
        # @param Region: 地域
        # @type Region: String
        # @param CWPStatus: 防护状态
        # @type CWPStatus: Integer
        # @param AssetCreateTime: 资产创建时间
        # @type AssetCreateTime: String
        # @param PublicIp: 公网IP
        # @type PublicIp: String
        # @param PrivateIp: 私网IP
        # @type PrivateIp: String
        # @param VpcId: vpc id
        # @type VpcId: String
        # @param VpcName: vpc 名
        # @type VpcName: String
        # @param AppId: appid信息
        # @type AppId: Integer
        # @param Uin: 用户uin
        # @type Uin: String
        # @param NickName: 昵称
        # @type NickName: String
        # @param AvailableArea: 可用区
        # @type AvailableArea: String
        # @param IsCore: 是否核心
        # @type IsCore: Integer
        # @param SubnetId: 子网id
        # @type SubnetId: String
        # @param SubnetName: 子网名
        # @type SubnetName: String
        # @param InstanceUuid: 主机安全Agent UUID
        # @type InstanceUuid: String
        # @param InstanceQUuid: 云主机 CVM UUID
        # @type InstanceQUuid: String
        # @param OsName: os名
        # @type OsName: String
        # @param PartitionCount: 分区
        # @type PartitionCount: Integer
        # @param CPUInfo: cpu信息
        # @type CPUInfo: String
        # @param CPUSize: cpu大小
        # @type CPUSize: Integer
        # @param CPULoad: cpu负载
        # @type CPULoad: String
        # @param MemorySize: 内存大小
        # @type MemorySize: String
        # @param MemoryLoad: 内存负载
        # @type MemoryLoad: String
        # @param DiskSize: 硬盘大小
        # @type DiskSize: String
        # @param DiskLoad: 硬盘负载
        # @type DiskLoad: String
        # @param AccountCount: 账号数
        # @type AccountCount: String
        # @param ProcessCount: 进程数
        # @type ProcessCount: String
        # @param AppCount: 软件应用
        # @type AppCount: String
        # @param PortCount: 监听端口
        # @type PortCount: Integer
        # @param Attack: 网络攻击
        # @type Attack: Integer
        # @param Access: 网络访问
        # @type Access: Integer
        # @param Intercept: 网络拦截
        # @type Intercept: Integer
        # @param InBandwidth: 入向峰值带宽
        # @type InBandwidth: String
        # @param OutBandwidth: 出向峰值带宽
        # @type OutBandwidth: String
        # @param InFlow: 入向累计流量
        # @type InFlow: String
        # @param OutFlow: 出向累计流量
        # @type OutFlow: String
        # @param LastScanTime: 最近扫描时间
        # @type LastScanTime: String
        # @param NetWorkOut: 恶意主动外联
        # @type NetWorkOut: Integer
        # @param PortRisk: 端口风险
        # @type PortRisk: Integer
        # @param VulnerabilityRisk: 漏洞风险
        # @type VulnerabilityRisk: Integer
        # @param ConfigurationRisk: 配置风险
        # @type ConfigurationRisk: Integer
        # @param ScanTask: 扫描任务数
        # @type ScanTask: Integer
        # @param Tag: 标签
        # @type Tag: Array
        # @param MemberId: memberId
        # @type MemberId: String
        # @param Os: os全称
        # @type Os: String
        # @param RiskExposure: 风险服务暴露
        # @type RiskExposure: Integer
        # @param BASAgentStatus: 模拟攻击工具状态。0代表未安装，1代表已安装，2代表已离线
        # @type BASAgentStatus: Integer
        # @param IsNewAsset: 1新资产；0 非新资产
        # @type IsNewAsset: Integer
        # @param CVMAgentStatus: 0 未安装  1安装 2:安装中
        # @type CVMAgentStatus: Integer
        # @param CVMStatus: 1:开启 0:未开启
        # @type CVMStatus: Integer
        # @param DefenseModel: 1:客户端已安装 0：未安装 2: Agentless
        # @type DefenseModel: Integer
        # @param TatStatus: 1:已安装 0:未安装
        # @type TatStatus: Integer
        # @param CpuTrend: cpu趋势图
        # @type CpuTrend: Array
        # @param MemoryTrend: 内存趋势图
        # @type MemoryTrend: Array
        # @param AgentStatus: 1:agent在线 0:agent离线 2:主机离线
        # @type AgentStatus: Integer
        # @param CloseDefenseCount: 本月防护关闭次数
        # @type CloseDefenseCount: Integer
        # @param InstanceState: 运行状态
        # @type InstanceState: String
        # @param SecurityGroupIds: 安全组数据
        # @type SecurityGroupIds: Array
        # @param AgentMemRss: 物理内存占用KB
        # @type AgentMemRss: Integer
        # @param AgentCpuPer: CPU使用率百分比
        # @type AgentCpuPer: Float
        # @param RealAppid: cvm真正所属的appid
        # @type RealAppid: Integer
        # @param CloudType: 云资产类型：0：腾讯云，1：aws，2：azure
        # @type CloudType: Integer
        # @param ProtectStatus: 主机防护状态枚举
        # 0：未安装
        # 1：基础版防护中
        # 2：普惠版防护中
        # 3：专业版防护中
        # 4：旗舰版防护中
        # 5：已离线
        # 6：已关机
        # @type ProtectStatus: Integer
        # @param OfflineTime: 最后离线时间
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

      # 调用记录详情
      class CallRecord < TencentCloud::Common::AbstractModel
        # @param CallID: 调用记录ID
        # @type CallID: String
        # @param AccessKey: 访问密钥
        # @type AccessKey: String
        # @param AccessKeyRemark: 访问密钥备注
        # @type AccessKeyRemark: String
        # @param AccessKeyID: 访问密钥ID
        # @type AccessKeyID: Integer
        # @param SourceIP: 调用源IP
        # @type SourceIP: String
        # @param SourceIPRemark: 调用源IP备注
        # @type SourceIPRemark: String
        # @param Region: 调用源IP地域
        # @type Region: String
        # @param IPType: IP类型 0:账号内（未备注） 1:账号外（未备注） 2:账号内 (已备注) 3:账号外 (已备注)
        # @type IPType: Integer
        # @param EventName: 调用接口名称
        # @type EventName: String
        # @param ProductName: 调用产品名称
        # @type ProductName: String
        # @param EventType: 调用类型
        # 0:控制台调用
        # 1:API
        # @type EventType: Integer
        # @param UserType: 用户类型CAMUser/root/AssumedRole
        # @type UserType: String
        # @param UserName: 用户/角色名称
        # @type UserName: String
        # @param PolicySet: 策略列表
        # @type PolicySet: Array
        # @param CallCount: 调用次数
        # @type CallCount: Integer
        # @param Code: 调用错误码
        # 0表示成功
        # @type Code: Integer
        # @param FirstCallTime: 首次调用时间
        # @type FirstCallTime: String
        # @param LastCallTime: 最后调用时间
        # @type LastCallTime: String
        # @param InstanceID: IP关联资产ID，如果为空字符串，表示没有关联
        # @type InstanceID: String
        # @param InstanceName: IP关联资产名称
        # @type InstanceName: String
        # @param Date: 聚合日期
        # @type Date: String
        # @param AppID: appid
        # @type AppID: Integer
        # @param ShowStatus: 展示状态
        # @type ShowStatus: Boolean
        # @param ISP: 运营商
        # @type ISP: String
        # @param VpcInfo: 账号外vpc信息列表
        # @type VpcInfo: Array
        # @param ReqClient: 调用请求客户端列表
        # @type ReqClient: Array

        attr_accessor :CallID, :AccessKey, :AccessKeyRemark, :AccessKeyID, :SourceIP, :SourceIPRemark, :Region, :IPType, :EventName, :ProductName, :EventType, :UserType, :UserName, :PolicySet, :CallCount, :Code, :FirstCallTime, :LastCallTime, :InstanceID, :InstanceName, :Date, :AppID, :ShowStatus, :ISP, :VpcInfo, :ReqClient

        def initialize(callid=nil, accesskey=nil, accesskeyremark=nil, accesskeyid=nil, sourceip=nil, sourceipremark=nil, region=nil, iptype=nil, eventname=nil, productname=nil, eventtype=nil, usertype=nil, username=nil, policyset=nil, callcount=nil, code=nil, firstcalltime=nil, lastcalltime=nil, instanceid=nil, instancename=nil, date=nil, appid=nil, showstatus=nil, isp=nil, vpcinfo=nil, reqclient=nil)
          @CallID = callid
          @AccessKey = accesskey
          @AccessKeyRemark = accesskeyremark
          @AccessKeyID = accesskeyid
          @SourceIP = sourceip
          @SourceIPRemark = sourceipremark
          @Region = region
          @IPType = iptype
          @EventName = eventname
          @ProductName = productname
          @EventType = eventtype
          @UserType = usertype
          @UserName = username
          @PolicySet = policyset
          @CallCount = callcount
          @Code = code
          @FirstCallTime = firstcalltime
          @LastCallTime = lastcalltime
          @InstanceID = instanceid
          @InstanceName = instancename
          @Date = date
          @AppID = appid
          @ShowStatus = showstatus
          @ISP = isp
          @VpcInfo = vpcinfo
          @ReqClient = reqclient
        end

        def deserialize(params)
          @CallID = params['CallID']
          @AccessKey = params['AccessKey']
          @AccessKeyRemark = params['AccessKeyRemark']
          @AccessKeyID = params['AccessKeyID']
          @SourceIP = params['SourceIP']
          @SourceIPRemark = params['SourceIPRemark']
          @Region = params['Region']
          @IPType = params['IPType']
          @EventName = params['EventName']
          @ProductName = params['ProductName']
          @EventType = params['EventType']
          @UserType = params['UserType']
          @UserName = params['UserName']
          @PolicySet = params['PolicySet']
          @CallCount = params['CallCount']
          @Code = params['Code']
          @FirstCallTime = params['FirstCallTime']
          @LastCallTime = params['LastCallTime']
          @InstanceID = params['InstanceID']
          @InstanceName = params['InstanceName']
          @Date = params['Date']
          @AppID = params['AppID']
          @ShowStatus = params['ShowStatus']
          @ISP = params['ISP']
          unless params['VpcInfo'].nil?
            @VpcInfo = []
            params['VpcInfo'].each do |i|
              sourceipvpcinfo_tmp = SourceIPVpcInfo.new
              sourceipvpcinfo_tmp.deserialize(i)
              @VpcInfo << sourceipvpcinfo_tmp
            end
          end
          @ReqClient = params['ReqClient']
        end
      end

      # 检查项视角风险
      class CheckViewRiskItem < TencentCloud::Common::AbstractModel
        # @param RiskRuleId: 检查项规则ID
        # @type RiskRuleId: String
        # @param RiskTitle: 风险名称
        # @type RiskTitle: String
        # @param CheckType: 检查类型
        # @type CheckType: String
        # @param Severity: 风险等级
        # @type Severity: String
        # @param RiskDesc: 存在1个风险项
        # @type RiskDesc: String
        # @param CreateTime: 首次发现时间
        # @type CreateTime: String
        # @param UpdateTime: 风险更新时间
        # @type UpdateTime: String
        # @param Provider: 云厂商
        # @type Provider: String
        # @param RiskStatus: 风险状态
        # @type RiskStatus: Integer
        # @param AssetCount: 受影响资产数量
        # @type AssetCount: Integer
        # @param RiskCount: 风险数量
        # @type RiskCount: Integer
        # @param AssetType: 资产类型
        # @type AssetType: String
        # @param EventType: 事件类型
        # @type EventType: String
        # @param Classify: 处置分类
        # @type Classify: String
        # @param StandardTerms: cspm规范条款
        # @type StandardTerms: Array

        attr_accessor :RiskRuleId, :RiskTitle, :CheckType, :Severity, :RiskDesc, :CreateTime, :UpdateTime, :Provider, :RiskStatus, :AssetCount, :RiskCount, :AssetType, :EventType, :Classify, :StandardTerms

        def initialize(riskruleid=nil, risktitle=nil, checktype=nil, severity=nil, riskdesc=nil, createtime=nil, updatetime=nil, provider=nil, riskstatus=nil, assetcount=nil, riskcount=nil, assettype=nil, eventtype=nil, classify=nil, standardterms=nil)
          @RiskRuleId = riskruleid
          @RiskTitle = risktitle
          @CheckType = checktype
          @Severity = severity
          @RiskDesc = riskdesc
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Provider = provider
          @RiskStatus = riskstatus
          @AssetCount = assetcount
          @RiskCount = riskcount
          @AssetType = assettype
          @EventType = eventtype
          @Classify = classify
          @StandardTerms = standardterms
        end

        def deserialize(params)
          @RiskRuleId = params['RiskRuleId']
          @RiskTitle = params['RiskTitle']
          @CheckType = params['CheckType']
          @Severity = params['Severity']
          @RiskDesc = params['RiskDesc']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Provider = params['Provider']
          @RiskStatus = params['RiskStatus']
          @AssetCount = params['AssetCount']
          @RiskCount = params['RiskCount']
          @AssetType = params['AssetType']
          @EventType = params['EventType']
          @Classify = params['Classify']
          unless params['StandardTerms'].nil?
            @StandardTerms = []
            params['StandardTerms'].each do |i|
              standardterm_tmp = StandardTerm.new
              standardterm_tmp.deserialize(i)
              @StandardTerms << standardterm_tmp
            end
          end
        end
      end

      # clb实例和监听器信息
      class ClbListenerListInfo < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器id
        # @type ListenerId: String
        # @param ListenerName: 监听器名称
        # @type ListenerName: String
        # @param LoadBalancerId: 负载均衡Id
        # @type LoadBalancerId: String
        # @param LoadBalancerName: 负载均衡名称
        # @type LoadBalancerName: String
        # @param Protocol: 协议
        # @type Protocol: String
        # @param Region: 地域
        # @type Region: String
        # @param Vip: 负载均衡ip
        # @type Vip: String
        # @param VPort: 端口
        # @type VPort: Integer
        # @param Zone: 区域
        # @type Zone: String
        # @param NumericalVpcId: 私有网络id
        # @type NumericalVpcId: Integer
        # @param LoadBalancerType: 负载均衡类型
        # @type LoadBalancerType: String
        # @param Domain: 监听器域名
        # @type Domain: String
        # @param LoadBalancerDomain: 负载均衡域名
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

      # 多云账户统计信息
      class CloudCountDesc < TencentCloud::Common::AbstractModel
        # @param CloudType: 0表示腾讯云
        # 1表示AWS
        # @type CloudType: Integer
        # @param CloudCount: 账户数量
        # @type CloudCount: Integer
        # @param CloudDesc: 该云账号类型描述
        # @type CloudDesc: String

        attr_accessor :CloudType, :CloudCount, :CloudDesc

        def initialize(cloudtype=nil, cloudcount=nil, clouddesc=nil)
          @CloudType = cloudtype
          @CloudCount = cloudcount
          @CloudDesc = clouddesc
        end

        def deserialize(params)
          @CloudType = params['CloudType']
          @CloudCount = params['CloudCount']
          @CloudDesc = params['CloudDesc']
        end
      end

      # CreateAccessKeyCheckTask请求参数结构体
      class CreateAccessKeyCheckTaskRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param RiskIDList: 风险列表
        # @type RiskIDList: Array
        # @param AccessKeyList: 访问密钥列表
        # @type AccessKeyList: Array
        # @param SubUinList: 账号uin列表
        # @type SubUinList: Array
        # @param RiskRuleIDList: 风险规则id列表
        # @type RiskRuleIDList: Array

        attr_accessor :MemberId, :RiskIDList, :AccessKeyList, :SubUinList, :RiskRuleIDList

        def initialize(memberid=nil, riskidlist=nil, accesskeylist=nil, subuinlist=nil, riskruleidlist=nil)
          @MemberId = memberid
          @RiskIDList = riskidlist
          @AccessKeyList = accesskeylist
          @SubUinList = subuinlist
          @RiskRuleIDList = riskruleidlist
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          @RiskIDList = params['RiskIDList']
          @AccessKeyList = params['AccessKeyList']
          @SubUinList = params['SubUinList']
          @RiskRuleIDList = params['RiskRuleIDList']
        end
      end

      # CreateAccessKeyCheckTask返回参数结构体
      class CreateAccessKeyCheckTaskResponse < TencentCloud::Common::AbstractModel
        # @param Code: 0表示成功 1表示失败
        # @type Code: Integer
        # @param Msg: 错误信息
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Code, :Msg, :RequestId

        def initialize(code=nil, msg=nil, requestid=nil)
          @Code = code
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Code = params['Code']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # CreateAccessKeySyncTask请求参数结构体
      class CreateAccessKeySyncTaskRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array

        attr_accessor :MemberId

        def initialize(memberid=nil)
          @MemberId = memberid
        end

        def deserialize(params)
          @MemberId = params['MemberId']
        end
      end

      # CreateAccessKeySyncTask返回参数结构体
      class CreateAccessKeySyncTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskID: 发起同步任务
        # @type TaskID: Integer
        # @param Code: 0成功 1失败
        # @type Code: Integer
        # @param Msg: 错误信息
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskID, :Code, :Msg, :RequestId

        def initialize(taskid=nil, code=nil, msg=nil, requestid=nil)
          @TaskID = taskid
          @Code = code
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskID = params['TaskID']
          @Code = params['Code']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
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

      # CreateDspmAccessExportJob请求参数结构体
      class CreateDspmAccessExportJobRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param View: 视图类型
        # @type View: String
        # @param Filter: 过滤器
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :MemberId, :View, :Filter

        def initialize(memberid=nil, view=nil, filter=nil)
          @MemberId = memberid
          @View = view
          @Filter = filter
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          @View = params['View']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # CreateDspmAccessExportJob返回参数结构体
      class CreateDspmAccessExportJobResponse < TencentCloud::Common::AbstractModel
        # @param JobID: 任务ID
        # @type JobID: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobID, :RequestId

        def initialize(jobid=nil, requestid=nil)
          @JobID = jobid
          @RequestId = requestid
        end

        def deserialize(params)
          @JobID = params['JobID']
          @RequestId = params['RequestId']
        end
      end

      # CreateDspmApplyOrder请求参数结构体
      class CreateDspmApplyOrderRequest < TencentCloud::Common::AbstractModel
        # @param AssetId: 资产id
        # @type AssetId: String
        # @param ApplyType: 申请类型。0-子账号授权 1-访客授权。
        # @type ApplyType: Integer
        # @param Privilege: 权限信息。
        # @type Privilege: :class:`Tencentcloud::Csip.v20221121.models.DspmDbAccountPrivilege`
        # @param Host: 主机地址。当前仅支持'%'。默认'%'。
        # @type Host: String
        # @param ValidatePeriod: 从审批完成后开始计算的访问权限失效时间，临时账号有效。单位毫秒。
        # @type ValidatePeriod: Integer
        # @param ApproverUin: 审批人列表。为空使用资产全部管理员。
        # @type ApproverUin: Array
        # @param Reason: 申请原因
        # @type Reason: String
        # @param ManagerType: 管理类型。0-普通成员 1-管理员
        # @type ManagerType: Integer
        # @param Subject: 被授权者。子账号授权时，传目标uin，为空时默认使用当前uin；访客授权时传访客身份id。
        # @type Subject: String

        attr_accessor :AssetId, :ApplyType, :Privilege, :Host, :ValidatePeriod, :ApproverUin, :Reason, :ManagerType, :Subject

        def initialize(assetid=nil, applytype=nil, privilege=nil, host=nil, validateperiod=nil, approveruin=nil, reason=nil, managertype=nil, subject=nil)
          @AssetId = assetid
          @ApplyType = applytype
          @Privilege = privilege
          @Host = host
          @ValidatePeriod = validateperiod
          @ApproverUin = approveruin
          @Reason = reason
          @ManagerType = managertype
          @Subject = subject
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @ApplyType = params['ApplyType']
          unless params['Privilege'].nil?
            @Privilege = DspmDbAccountPrivilege.new
            @Privilege.deserialize(params['Privilege'])
          end
          @Host = params['Host']
          @ValidatePeriod = params['ValidatePeriod']
          @ApproverUin = params['ApproverUin']
          @Reason = params['Reason']
          @ManagerType = params['ManagerType']
          @Subject = params['Subject']
        end
      end

      # CreateDspmApplyOrder返回参数结构体
      class CreateDspmApplyOrderResponse < TencentCloud::Common::AbstractModel
        # @param OrderId: 申请单id
        # @type OrderId: String
        # @param AutoApproval: 自动审批
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoApproval: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OrderId, :AutoApproval, :RequestId

        def initialize(orderid=nil, autoapproval=nil, requestid=nil)
          @OrderId = orderid
          @AutoApproval = autoapproval
          @RequestId = requestid
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @AutoApproval = params['AutoApproval']
          @RequestId = params['RequestId']
        end
      end

      # CreateDspmApproveHistoryExportJob请求参数结构体
      class CreateDspmApproveHistoryExportJobRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 过滤器
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :Filter

        def initialize(filter=nil)
          @Filter = filter
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # CreateDspmApproveHistoryExportJob返回参数结构体
      class CreateDspmApproveHistoryExportJobResponse < TencentCloud::Common::AbstractModel
        # @param JobID: 任务ID
        # @type JobID: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobID, :RequestId

        def initialize(jobid=nil, requestid=nil)
          @JobID = jobid
          @RequestId = requestid
        end

        def deserialize(params)
          @JobID = params['JobID']
          @RequestId = params['RequestId']
        end
      end

      # CreateDspmAssetAccessTopologyExportJob请求参数结构体
      class CreateDspmAssetAccessTopologyExportJobRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param View: 视图类型。ip或instance
        # @type View: String
        # @param Filter: 过滤器
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :MemberId, :View, :Filter

        def initialize(memberid=nil, view=nil, filter=nil)
          @MemberId = memberid
          @View = view
          @Filter = filter
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          @View = params['View']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # CreateDspmAssetAccessTopologyExportJob返回参数结构体
      class CreateDspmAssetAccessTopologyExportJobResponse < TencentCloud::Common::AbstractModel
        # @param JobID: 任务ID
        # @type JobID: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobID, :RequestId

        def initialize(jobid=nil, requestid=nil)
          @JobID = jobid
          @RequestId = requestid
        end

        def deserialize(params)
          @JobID = params['JobID']
          @RequestId = params['RequestId']
        end
      end

      # CreateDspmAssetsExportJob请求参数结构体
      class CreateDspmAssetsExportJobRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤器
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

      # CreateDspmAssetsExportJob返回参数结构体
      class CreateDspmAssetsExportJobResponse < TencentCloud::Common::AbstractModel
        # @param JobID: 任务ID
        # @type JobID: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobID, :RequestId

        def initialize(jobid=nil, requestid=nil)
          @JobID = jobid
          @RequestId = requestid
        end

        def deserialize(params)
          @JobID = params['JobID']
          @RequestId = params['RequestId']
        end
      end

      # CreateDspmExportTask请求参数结构体
      class CreateDspmExportTaskRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param DangerLevel: 风险等级(0-安全,1-低风险,2-中风险,3-高风险,-1-全部)
        # @type DangerLevel: Integer
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param DbPort: 数据库端口
        # @type DbPort: Integer
        # @param DbIp: 数据库 IP
        # @type DbIp: String
        # @param AssetsId: 资产 ID
        # @type AssetsId: Integer
        # @param SessionId: 会话 ID
        # @type SessionId: String
        # @param ClientSideIp: 客户端 IP
        # @type ClientSideIp: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param HitRule: 命中规则
        # @type HitRule: Integer
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param FuzzySearch: 模糊查询
        # @type FuzzySearch: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param ClientName: 客户端
        # @type ClientName: String
        # @param SourceTypes: 流量来源，取值 Agent/Proxy/空；传Agent会返回Agent的日志，传Proxy会返回Proxy日志，两都都传或不传则返回所有
        # @type SourceTypes: Array
        # @param TableName: 表名，长度限制64，多个表名查询的话可以用空格连接
        # @type TableName: String
        # @param FieldName: 字段名，长度限制64，多个字段名查询的话可以用空格连接
        # @type FieldName: String
        # @param SqlMainTypes: SQL 主要类型，DDL, DML, DCL, TCL
        # @type SqlMainTypes: Array
        # @param SqlType: 操作类型
        # @type SqlType: String
        # @param RowNumMin: 影响行数最小值
        # @type RowNumMin: Integer
        # @param RowNumMax: 影响行数最大值
        # @type RowNumMax: Integer
        # @param DbTypes: 数据库类型
        # @type DbTypes: Array
        # @param RetNo: 返回码
        # @type RetNo: Integer
        # @param ClientDriverName: 客户端工具
        # @type ClientDriverName: String
        # @param ClientPort: 客户端端口
        # @type ClientPort: Integer
        # @param LogId: 审计日志 ID
        # @type LogId: String
        # @param DangerLevels: 风险等级数组(0-安全,1-低风险,2-中风险,3-高风险), 如果要全部，则需要将所有的值都传入。如果为空，则会参考：DangerLevel 入参
        # @type DangerLevels: Array
        # @param SensitiveCategoryRule: 字段分类
        # @type SensitiveCategoryRule: String
        # @param SensitiveLevelRisk: 字段分级
        # @type SensitiveLevelRisk: String
        # @param TrxId: 事务Id
        # @type TrxId: Integer
        # @param ClientMac: clientMac
        # @type ClientMac: String

        attr_accessor :MemberId, :DangerLevel, :DbName, :DbPort, :DbIp, :AssetsId, :SessionId, :ClientSideIp, :EndTime, :HitRule, :StartTime, :FuzzySearch, :UserName, :ClientName, :SourceTypes, :TableName, :FieldName, :SqlMainTypes, :SqlType, :RowNumMin, :RowNumMax, :DbTypes, :RetNo, :ClientDriverName, :ClientPort, :LogId, :DangerLevels, :SensitiveCategoryRule, :SensitiveLevelRisk, :TrxId, :ClientMac

        def initialize(memberid=nil, dangerlevel=nil, dbname=nil, dbport=nil, dbip=nil, assetsid=nil, sessionid=nil, clientsideip=nil, endtime=nil, hitrule=nil, starttime=nil, fuzzysearch=nil, username=nil, clientname=nil, sourcetypes=nil, tablename=nil, fieldname=nil, sqlmaintypes=nil, sqltype=nil, rownummin=nil, rownummax=nil, dbtypes=nil, retno=nil, clientdrivername=nil, clientport=nil, logid=nil, dangerlevels=nil, sensitivecategoryrule=nil, sensitivelevelrisk=nil, trxid=nil, clientmac=nil)
          @MemberId = memberid
          @DangerLevel = dangerlevel
          @DbName = dbname
          @DbPort = dbport
          @DbIp = dbip
          @AssetsId = assetsid
          @SessionId = sessionid
          @ClientSideIp = clientsideip
          @EndTime = endtime
          @HitRule = hitrule
          @StartTime = starttime
          @FuzzySearch = fuzzysearch
          @UserName = username
          @ClientName = clientname
          @SourceTypes = sourcetypes
          @TableName = tablename
          @FieldName = fieldname
          @SqlMainTypes = sqlmaintypes
          @SqlType = sqltype
          @RowNumMin = rownummin
          @RowNumMax = rownummax
          @DbTypes = dbtypes
          @RetNo = retno
          @ClientDriverName = clientdrivername
          @ClientPort = clientport
          @LogId = logid
          @DangerLevels = dangerlevels
          @SensitiveCategoryRule = sensitivecategoryrule
          @SensitiveLevelRisk = sensitivelevelrisk
          @TrxId = trxid
          @ClientMac = clientmac
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          @DangerLevel = params['DangerLevel']
          @DbName = params['DbName']
          @DbPort = params['DbPort']
          @DbIp = params['DbIp']
          @AssetsId = params['AssetsId']
          @SessionId = params['SessionId']
          @ClientSideIp = params['ClientSideIp']
          @EndTime = params['EndTime']
          @HitRule = params['HitRule']
          @StartTime = params['StartTime']
          @FuzzySearch = params['FuzzySearch']
          @UserName = params['UserName']
          @ClientName = params['ClientName']
          @SourceTypes = params['SourceTypes']
          @TableName = params['TableName']
          @FieldName = params['FieldName']
          @SqlMainTypes = params['SqlMainTypes']
          @SqlType = params['SqlType']
          @RowNumMin = params['RowNumMin']
          @RowNumMax = params['RowNumMax']
          @DbTypes = params['DbTypes']
          @RetNo = params['RetNo']
          @ClientDriverName = params['ClientDriverName']
          @ClientPort = params['ClientPort']
          @LogId = params['LogId']
          @DangerLevels = params['DangerLevels']
          @SensitiveCategoryRule = params['SensitiveCategoryRule']
          @SensitiveLevelRisk = params['SensitiveLevelRisk']
          @TrxId = params['TrxId']
          @ClientMac = params['ClientMac']
        end
      end

      # CreateDspmExportTask返回参数结构体
      class CreateDspmExportTaskResponse < TencentCloud::Common::AbstractModel
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

      # CreateDspmIdentifyInfoListExportJob请求参数结构体
      class CreateDspmIdentifyInfoListExportJobRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤器
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

      # CreateDspmIdentifyInfoListExportJob返回参数结构体
      class CreateDspmIdentifyInfoListExportJobResponse < TencentCloud::Common::AbstractModel
        # @param JobID: 任务ID
        # @type JobID: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobID, :RequestId

        def initialize(jobid=nil, requestid=nil)
          @JobID = jobid
          @RequestId = requestid
        end

        def deserialize(params)
          @JobID = params['JobID']
          @RequestId = params['RequestId']
        end
      end

      # CreateDspmPersonalIdentify请求参数结构体
      class CreateDspmPersonalIdentifyRequest < TencentCloud::Common::AbstractModel
        # @param Phone: 手机号
        # @type Phone: String
        # @param Name: 姓名
        # @type Name: String
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :Phone, :Name, :Remark

        def initialize(phone=nil, name=nil, remark=nil)
          @Phone = phone
          @Name = name
          @Remark = remark
        end

        def deserialize(params)
          @Phone = params['Phone']
          @Name = params['Name']
          @Remark = params['Remark']
        end
      end

      # CreateDspmPersonalIdentify返回参数结构体
      class CreateDspmPersonalIdentifyResponse < TencentCloud::Common::AbstractModel
        # @param PersonId: 个人id
        # @type PersonId: String
        # @param IdentifyId: 身份id
        # @type IdentifyId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PersonId, :IdentifyId, :RequestId

        def initialize(personid=nil, identifyid=nil, requestid=nil)
          @PersonId = personid
          @IdentifyId = identifyid
          @RequestId = requestid
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @IdentifyId = params['IdentifyId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDspmRiskExportJob请求参数结构体
      class CreateDspmRiskExportJobRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤器
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

      # CreateDspmRiskExportJob返回参数结构体
      class CreateDspmRiskExportJobResponse < TencentCloud::Common::AbstractModel
        # @param JobID: 任务ID
        # @type JobID: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobID, :RequestId

        def initialize(jobid=nil, requestid=nil)
          @JobID = jobid
          @RequestId = requestid
        end

        def deserialize(params)
          @JobID = params['JobID']
          @RequestId = params['RequestId']
        end
      end

      # CreateDspmWhitelistStrategy请求参数结构体
      class CreateDspmWhitelistStrategyRequest < TencentCloud::Common::AbstractModel
        # @param StrategyType: 策略类型
        # @type StrategyType: String
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Name: 白名单
        # @type Name: String
        # @param Rule: 规则
        # @type Rule: String
        # @param AssetId: 资产id
        # @type AssetId: String
        # @param Account: 账号
        # @type Account: String
        # @param Host: 主机
        # @type Host: String
        # @param RiskId: 风险id
        # @type RiskId: String
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :StrategyType, :MemberId, :Name, :Rule, :AssetId, :Account, :Host, :RiskId, :Remark

        def initialize(strategytype=nil, memberid=nil, name=nil, rule=nil, assetid=nil, account=nil, host=nil, riskid=nil, remark=nil)
          @StrategyType = strategytype
          @MemberId = memberid
          @Name = name
          @Rule = rule
          @AssetId = assetid
          @Account = account
          @Host = host
          @RiskId = riskid
          @Remark = remark
        end

        def deserialize(params)
          @StrategyType = params['StrategyType']
          @MemberId = params['MemberId']
          @Name = params['Name']
          @Rule = params['Rule']
          @AssetId = params['AssetId']
          @Account = params['Account']
          @Host = params['Host']
          @RiskId = params['RiskId']
          @Remark = params['Remark']
        end
      end

      # CreateDspmWhitelistStrategy返回参数结构体
      class CreateDspmWhitelistStrategyResponse < TencentCloud::Common::AbstractModel
        # @param WhitelistStrategyId: 白名单id
        # @type WhitelistStrategyId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WhitelistStrategyId, :RequestId

        def initialize(whiteliststrategyid=nil, requestid=nil)
          @WhitelistStrategyId = whiteliststrategyid
          @RequestId = requestid
        end

        def deserialize(params)
          @WhitelistStrategyId = params['WhitelistStrategyId']
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

      # 生效机器范围，用于指定凭证在哪些机器上生效
      class CredentialEffectScope < TencentCloud::Common::AbstractModel
        # @param Exclude: 是否排除模式
        # 枚举值：
        # 0：包含模式（仅Instances中的机器生效），此时Instances必填
        # 1：排除模式（Instances中的机器不生效，其余机器生效），此时Instances可选（空列表表示全部机器生效）
        # @type Exclude: Integer
        # @param Instances: 机器实例ID列表。Exclude为0时必填，表示仅这些机器可访问凭证；Exclude为1时可选，表示这些机器不可访问凭证（空列表表示全部机器生效）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Instances: Array

        attr_accessor :Exclude, :Instances

        def initialize(exclude=nil, instances=nil)
          @Exclude = exclude
          @Instances = instances
        end

        def deserialize(params)
          @Exclude = params['Exclude']
          @Instances = params['Instances']
        end
      end

      # 风险中心风险概览统计数据
      class CsipRiskCenterStatistics < TencentCloud::Common::AbstractModel
        # @param PortTotal: 端口风险总数
        # @type PortTotal: Integer
        # @param PortHighLevel: 端口风险高危数量
        # @type PortHighLevel: Integer
        # @param WeakPasswordTotal: 	弱口令风险总数
        # @type WeakPasswordTotal: Integer
        # @param WeakPasswordHighLevel: 弱口令风险高危数量
        # @type WeakPasswordHighLevel: Integer
        # @param WebsiteTotal: 网站风险数量
        # @type WebsiteTotal: Integer
        # @param WebsiteHighLevel: 网站高危风险数量
        # @type WebsiteHighLevel: Integer
        # @param LastScanTime: 最新的扫描时间
        # @type LastScanTime: String
        # @param VULTotal: 漏洞风险数
        # @type VULTotal: Integer
        # @param VULHighLevel: 高危漏洞风险数
        # @type VULHighLevel: Integer
        # @param CFGTotal: 配置项风险数量
        # @type CFGTotal: Integer
        # @param CFGHighLevel: 高危配置项风险数量
        # @type CFGHighLevel: Integer
        # @param ServerTotal: 测绘服务风险数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServerTotal: Integer
        # @param ServerHighLevel: 测绘服务高危数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServerHighLevel: Integer
        # @param HostBaseLineRiskTotal: 主机基线风险数量
        # @type HostBaseLineRiskTotal: Integer
        # @param HostBaseLineRiskHighLevel: 主机基线高危风险数量
        # @type HostBaseLineRiskHighLevel: Integer
        # @param PodBaseLineRiskTotal: 容器基线风险数量
        # @type PodBaseLineRiskTotal: Integer
        # @param PodBaseLineRiskHighLevel: 容器基线高危风险数量
        # @type PodBaseLineRiskHighLevel: Integer

        attr_accessor :PortTotal, :PortHighLevel, :WeakPasswordTotal, :WeakPasswordHighLevel, :WebsiteTotal, :WebsiteHighLevel, :LastScanTime, :VULTotal, :VULHighLevel, :CFGTotal, :CFGHighLevel, :ServerTotal, :ServerHighLevel, :HostBaseLineRiskTotal, :HostBaseLineRiskHighLevel, :PodBaseLineRiskTotal, :PodBaseLineRiskHighLevel

        def initialize(porttotal=nil, porthighlevel=nil, weakpasswordtotal=nil, weakpasswordhighlevel=nil, websitetotal=nil, websitehighlevel=nil, lastscantime=nil, vultotal=nil, vulhighlevel=nil, cfgtotal=nil, cfghighlevel=nil, servertotal=nil, serverhighlevel=nil, hostbaselinerisktotal=nil, hostbaselineriskhighlevel=nil, podbaselinerisktotal=nil, podbaselineriskhighlevel=nil)
          @PortTotal = porttotal
          @PortHighLevel = porthighlevel
          @WeakPasswordTotal = weakpasswordtotal
          @WeakPasswordHighLevel = weakpasswordhighlevel
          @WebsiteTotal = websitetotal
          @WebsiteHighLevel = websitehighlevel
          @LastScanTime = lastscantime
          @VULTotal = vultotal
          @VULHighLevel = vulhighlevel
          @CFGTotal = cfgtotal
          @CFGHighLevel = cfghighlevel
          @ServerTotal = servertotal
          @ServerHighLevel = serverhighlevel
          @HostBaseLineRiskTotal = hostbaselinerisktotal
          @HostBaseLineRiskHighLevel = hostbaselineriskhighlevel
          @PodBaseLineRiskTotal = podbaselinerisktotal
          @PodBaseLineRiskHighLevel = podbaselineriskhighlevel
        end

        def deserialize(params)
          @PortTotal = params['PortTotal']
          @PortHighLevel = params['PortHighLevel']
          @WeakPasswordTotal = params['WeakPasswordTotal']
          @WeakPasswordHighLevel = params['WeakPasswordHighLevel']
          @WebsiteTotal = params['WebsiteTotal']
          @WebsiteHighLevel = params['WebsiteHighLevel']
          @LastScanTime = params['LastScanTime']
          @VULTotal = params['VULTotal']
          @VULHighLevel = params['VULHighLevel']
          @CFGTotal = params['CFGTotal']
          @CFGHighLevel = params['CFGHighLevel']
          @ServerTotal = params['ServerTotal']
          @ServerHighLevel = params['ServerHighLevel']
          @HostBaseLineRiskTotal = params['HostBaseLineRiskTotal']
          @HostBaseLineRiskHighLevel = params['HostBaseLineRiskHighLevel']
          @PodBaseLineRiskTotal = params['PodBaseLineRiskTotal']
          @PodBaseLineRiskHighLevel = params['PodBaseLineRiskHighLevel']
        end
      end

      # db资产输出字段
      class DBAssetVO < TencentCloud::Common::AbstractModel
        # @param AssetId: 资产id
        # @type AssetId: String
        # @param AssetName: 资产名
        # @type AssetName: String
        # @param AssetType: 资产类型
        # @type AssetType: String
        # @param VpcId: vpcid
        # @type VpcId: String
        # @param VpcName: vpc标签
        # @type VpcName: String
        # @param Region: 地域
        # @type Region: String
        # @param Domain: 域名
        # @type Domain: String
        # @param AssetCreateTime: 资产创建时间
        # @type AssetCreateTime: String
        # @param LastScanTime: 最近扫描时间
        # @type LastScanTime: String
        # @param ConfigurationRisk: 配置风险
        # @type ConfigurationRisk: Integer
        # @param Attack: 网络攻击
        # @type Attack: Integer
        # @param Access: 网络访问
        # @type Access: Integer
        # @param ScanTask: 扫描任务
        # @type ScanTask: Integer
        # @param AppId: 用户appid
        # @type AppId: Integer
        # @param Uin: 用户uin
        # @type Uin: String
        # @param NickName: 昵称别名
        # @type NickName: String
        # @param Port: 端口
        # @type Port: Integer
        # @param Tag: 标签
        # @type Tag: Array
        # @param PrivateIp: 内网ip
        # @type PrivateIp: String
        # @param PublicIp: 公网ip
        # @type PublicIp: String
        # @param Status: 状态
        # @type Status: Integer
        # @param IsCore: 是否核心
        # @type IsCore: Integer
        # @param IsNewAsset: 是否新资产: 1新
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
        # @param DataBug: 漏洞详情
        # @type DataBug: Array
        # @param DataAsset: 漏洞影响资产详情
        # @type DataAsset: Array
        # @param VSSScan: true支持扫描。false不支持扫描
        # @type VSSScan: Boolean
        # @param CWPScan: 0不支持，1支持
        # @type CWPScan: String
        # @param CFWPatch: 1支持虚拟补丁，0或空不支持
        # @type CFWPatch: String
        # @param WafPatch: 0不支持，1支持
        # @type WafPatch: Integer
        # @param CWPFix: 0不支持，1支持
        # @type CWPFix: Integer
        # @param DataSupport: 产品支持状态
        # @type DataSupport: Array
        # @param CveId: cveId
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
        # @type CFWStatus: Integer
        # @param AssetId: 资产id
        # @type AssetId: String
        # @param VpcName: vpc信息
        # @type VpcName: String
        # @param AssetType: 资产类型
        # @type AssetType: String
        # @param PublicIp: 公网ip
        # @type PublicIp: String
        # @param PrivateIp: 私网ip
        # @type PrivateIp: String
        # @param Region: 地域
        # @type Region: String
        # @param VpcId: vpc信息
        # @type VpcId: String
        # @param AssetName: 资产名
        # @type AssetName: String
        # @param CFWProtectLevel: 云防保护版本
        # @type CFWProtectLevel: Integer
        # @param Tag: tag信息
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

      # DeleteDspmApplyOrder请求参数结构体
      class DeleteDspmApplyOrderRequest < TencentCloud::Common::AbstractModel
        # @param OrderId: 申请单id
        # @type OrderId: Array

        attr_accessor :OrderId

        def initialize(orderid=nil)
          @OrderId = orderid
        end

        def deserialize(params)
          @OrderId = params['OrderId']
        end
      end

      # DeleteDspmApplyOrder返回参数结构体
      class DeleteDspmApplyOrderResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDspmAssetAccount请求参数结构体
      class DeleteDspmAssetAccountRequest < TencentCloud::Common::AbstractModel
        # @param AssetId: 实例id
        # @type AssetId: String
        # @param Account: 账号名
        # @type Account: String
        # @param Host: 主机地址
        # @type Host: String
        # @param RiskId: 风险id
        # @type RiskId: String

        attr_accessor :AssetId, :Account, :Host, :RiskId

        def initialize(assetid=nil, account=nil, host=nil, riskid=nil)
          @AssetId = assetid
          @Account = account
          @Host = host
          @RiskId = riskid
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @Account = params['Account']
          @Host = params['Host']
          @RiskId = params['RiskId']
        end
      end

      # DeleteDspmAssetAccount返回参数结构体
      class DeleteDspmAssetAccountResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDspmBackupLogList请求参数结构体
      class DeleteDspmBackupLogListRequest < TencentCloud::Common::AbstractModel
        # @param Id: 备份日志Id
        # @type Id: Integer
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array

        attr_accessor :Id, :MemberId

        def initialize(id=nil, memberid=nil)
          @Id = id
          @MemberId = memberid
        end

        def deserialize(params)
          @Id = params['Id']
          @MemberId = params['MemberId']
        end
      end

      # DeleteDspmBackupLogList返回参数结构体
      class DeleteDspmBackupLogListResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDspmExportTask请求参数结构体
      class DeleteDspmExportTaskRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param TaskIds: 要删除的导出任务ID
        # @type TaskIds: Array

        attr_accessor :MemberId, :TaskIds

        def initialize(memberid=nil, taskids=nil)
          @MemberId = memberid
          @TaskIds = taskids
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          @TaskIds = params['TaskIds']
        end
      end

      # DeleteDspmExportTask返回参数结构体
      class DeleteDspmExportTaskResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDspmPersonalIdentify请求参数结构体
      class DeleteDspmPersonalIdentifyRequest < TencentCloud::Common::AbstractModel
        # @param PersonId: 个人id
        # @type PersonId: String

        attr_accessor :PersonId

        def initialize(personid=nil)
          @PersonId = personid
        end

        def deserialize(params)
          @PersonId = params['PersonId']
        end
      end

      # DeleteDspmPersonalIdentify返回参数结构体
      class DeleteDspmPersonalIdentifyResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDspmRestoreLogList请求参数结构体
      class DeleteDspmRestoreLogListRequest < TencentCloud::Common::AbstractModel
        # @param Id: 日志Id
        # @type Id: Integer
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array

        attr_accessor :Id, :MemberId

        def initialize(id=nil, memberid=nil)
          @Id = id
          @MemberId = memberid
        end

        def deserialize(params)
          @Id = params['Id']
          @MemberId = params['MemberId']
        end
      end

      # DeleteDspmRestoreLogList返回参数结构体
      class DeleteDspmRestoreLogListResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDspmWhitelistStrategy请求参数结构体
      class DeleteDspmWhitelistStrategyRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param WhitelistStrategyId: 白名单id
        # @type WhitelistStrategyId: Array

        attr_accessor :MemberId, :WhitelistStrategyId

        def initialize(memberid=nil, whiteliststrategyid=nil)
          @MemberId = memberid
          @WhitelistStrategyId = whiteliststrategyid
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          @WhitelistStrategyId = params['WhitelistStrategyId']
        end
      end

      # DeleteDspmWhitelistStrategy返回参数结构体
      class DeleteDspmWhitelistStrategyResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRiskScanTask请求参数结构体
      class DeleteRiskScanTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskIdList: 任务id 和目标AppID列表
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

      # DescribeAIAgentAssetList请求参数结构体
      class DescribeAIAgentAssetListRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 筛选
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

      # DescribeAIAgentAssetList返回参数结构体
      class DescribeAIAgentAssetListResponse < TencentCloud::Common::AbstractModel
        # @param AssetList: 资产列表
        # @type AssetList: Array
        # @param TotalCount: 资产总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AssetList, :TotalCount, :RequestId

        def initialize(assetlist=nil, totalcount=nil, requestid=nil)
          @AssetList = assetlist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AssetList'].nil?
            @AssetList = []
            params['AssetList'].each do |i|
              aiagentasset_tmp = AIAgentAsset.new
              aiagentasset_tmp.deserialize(i)
              @AssetList << aiagentasset_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAKAnalysisDetail请求参数结构体
      class DescribeAKAnalysisDetailRequest < TencentCloud::Common::AbstractModel
        # @param ID: 告警记录ID
        # @type ID: Integer
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array

        attr_accessor :ID, :MemberId

        def initialize(id=nil, memberid=nil)
          @ID = id
          @MemberId = memberid
        end

        def deserialize(params)
          @ID = params['ID']
          @MemberId = params['MemberId']
        end
      end

      # DescribeAKAnalysisDetail返回参数结构体
      class DescribeAKAnalysisDetailResponse < TencentCloud::Common::AbstractModel
        # @param AIStatus: 告警AI分析状态 -1 分析失败 0 未分析 1 分析中 2 分析成功，真实告警 3 分析成功，可疑告警
        # @type AIStatus: Integer
        # @param AITaskID: AI分析任务ID
        # @type AITaskID: String
        # @param AIResult: 告警AI分析结果，base64格式，避免数据被拦截
        # @type AIResult: String
        # @param Feedback: 反馈建议
        # @type Feedback: String
        # @param FeedbackResult: 反馈状态  0表示没有反馈，1表示认可，2表示不认可
        # @type FeedbackResult: Integer
        # @param FailedReason: 失败原因
        # @type FailedReason: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AIStatus, :AITaskID, :AIResult, :Feedback, :FeedbackResult, :FailedReason, :RequestId

        def initialize(aistatus=nil, aitaskid=nil, airesult=nil, feedback=nil, feedbackresult=nil, failedreason=nil, requestid=nil)
          @AIStatus = aistatus
          @AITaskID = aitaskid
          @AIResult = airesult
          @Feedback = feedback
          @FeedbackResult = feedbackresult
          @FailedReason = failedreason
          @RequestId = requestid
        end

        def deserialize(params)
          @AIStatus = params['AIStatus']
          @AITaskID = params['AITaskID']
          @AIResult = params['AIResult']
          @Feedback = params['Feedback']
          @FeedbackResult = params['FeedbackResult']
          @FailedReason = params['FailedReason']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAbnormalCallRecord请求参数结构体
      class DescribeAbnormalCallRecordRequest < TencentCloud::Common::AbstractModel
        # @param AlarmRuleID: 告警规则ID
        # @type AlarmRuleID: Integer
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param AccessKey: 访问密钥
        # @type AccessKey: String
        # @param SourceIP: 调用源IP
        # @type SourceIP: String
        # @param Filter: 过滤器
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :AlarmRuleID, :MemberId, :AccessKey, :SourceIP, :Filter

        def initialize(alarmruleid=nil, memberid=nil, accesskey=nil, sourceip=nil, filter=nil)
          @AlarmRuleID = alarmruleid
          @MemberId = memberid
          @AccessKey = accesskey
          @SourceIP = sourceip
          @Filter = filter
        end

        def deserialize(params)
          @AlarmRuleID = params['AlarmRuleID']
          @MemberId = params['MemberId']
          @AccessKey = params['AccessKey']
          @SourceIP = params['SourceIP']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeAbnormalCallRecord返回参数结构体
      class DescribeAbnormalCallRecordResponse < TencentCloud::Common::AbstractModel
        # @param Data: 调用记录列表
        # @type Data: Array
        # @param Total: 调用记录总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Total, :RequestId

        def initialize(data=nil, total=nil, requestid=nil)
          @Data = data
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              callrecord_tmp = CallRecord.new
              callrecord_tmp.deserialize(i)
              @Data << callrecord_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAccessKeyAlarmDetail请求参数结构体
      class DescribeAccessKeyAlarmDetailRequest < TencentCloud::Common::AbstractModel
        # @param ID: 告警记录ID
        # @type ID: Integer
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array

        attr_accessor :ID, :MemberId

        def initialize(id=nil, memberid=nil)
          @ID = id
          @MemberId = memberid
        end

        def deserialize(params)
          @ID = params['ID']
          @MemberId = params['MemberId']
        end
      end

      # DescribeAccessKeyAlarmDetail返回参数结构体
      class DescribeAccessKeyAlarmDetailResponse < TencentCloud::Common::AbstractModel
        # @param AlarmInfo: 告警信息
        # @type AlarmInfo: :class:`Tencentcloud::Csip.v20221121.models.AccessKeyAlarm`
        # @param CamCount: 所属账号CAM策略数量
        # @type CamCount: Integer
        # @param RiskCount: AK风险数量
        # @type RiskCount: Integer
        # @param AlarmDesc: 告警策略描述
        # @type AlarmDesc: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AlarmInfo, :CamCount, :RiskCount, :AlarmDesc, :RequestId

        def initialize(alarminfo=nil, camcount=nil, riskcount=nil, alarmdesc=nil, requestid=nil)
          @AlarmInfo = alarminfo
          @CamCount = camcount
          @RiskCount = riskcount
          @AlarmDesc = alarmdesc
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AlarmInfo'].nil?
            @AlarmInfo = AccessKeyAlarm.new
            @AlarmInfo.deserialize(params['AlarmInfo'])
          end
          @CamCount = params['CamCount']
          @RiskCount = params['RiskCount']
          @AlarmDesc = params['AlarmDesc']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAccessKeyAlarm请求参数结构体
      class DescribeAccessKeyAlarmRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 过滤器
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param AccessKeyID: 访问密钥的ID
        # @type AccessKeyID: Integer
        # @param SourceIPID: 源IP的ID
        # @type SourceIPID: Integer
        # @param SubUin: 账号uin
        # @type SubUin: String

        attr_accessor :Filter, :MemberId, :AccessKeyID, :SourceIPID, :SubUin

        def initialize(filter=nil, memberid=nil, accesskeyid=nil, sourceipid=nil, subuin=nil)
          @Filter = filter
          @MemberId = memberid
          @AccessKeyID = accesskeyid
          @SourceIPID = sourceipid
          @SubUin = subuin
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          @MemberId = params['MemberId']
          @AccessKeyID = params['AccessKeyID']
          @SourceIPID = params['SourceIPID']
          @SubUin = params['SubUin']
        end
      end

      # DescribeAccessKeyAlarm返回参数结构体
      class DescribeAccessKeyAlarmResponse < TencentCloud::Common::AbstractModel
        # @param Data: 告警列表
        # @type Data: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Total, :RequestId

        def initialize(data=nil, total=nil, requestid=nil)
          @Data = data
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              accesskeyalarm_tmp = AccessKeyAlarm.new
              accesskeyalarm_tmp.deserialize(i)
              @Data << accesskeyalarm_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAccessKeyAsset请求参数结构体
      class DescribeAccessKeyAssetRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤器
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

      # DescribeAccessKeyAsset返回参数结构体
      class DescribeAccessKeyAssetResponse < TencentCloud::Common::AbstractModel
        # @param Data: 访问密钥资产列表
        # @type Data: Array
        # @param Total: 全部数量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Total, :RequestId

        def initialize(data=nil, total=nil, requestid=nil)
          @Data = data
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              accesskeyasset_tmp = AccessKeyAsset.new
              accesskeyasset_tmp.deserialize(i)
              @Data << accesskeyasset_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAccessKeyRiskDetail请求参数结构体
      class DescribeAccessKeyRiskDetailRequest < TencentCloud::Common::AbstractModel
        # @param ID: 风险记录ID
        # @type ID: Integer
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array

        attr_accessor :ID, :MemberId

        def initialize(id=nil, memberid=nil)
          @ID = id
          @MemberId = memberid
        end

        def deserialize(params)
          @ID = params['ID']
          @MemberId = params['MemberId']
        end
      end

      # DescribeAccessKeyRiskDetail返回参数结构体
      class DescribeAccessKeyRiskDetailResponse < TencentCloud::Common::AbstractModel
        # @param RiskInfo: 风险列表
        # @type RiskInfo: :class:`Tencentcloud::Csip.v20221121.models.AccessKeyRisk`
        # @param CamCount: CAM策略总数
        # @type CamCount: Integer
        # @param AlarmCount: 账号关联告警数量
        # @type AlarmCount: Integer
        # @param AccessType: 访问方式 0 API 1 控制台与API
        # @type AccessType: Integer
        # @param AccessKeyAlarmCount: 访问密钥告警数量列表
        # @type AccessKeyAlarmCount: Array
        # @param ActionFlag: 操作保护是否开启 0 未开启 1 已开启
        # @type ActionFlag: Integer
        # @param LoginFlag: 登录保护是否开启 0 未开启 1 已开启
        # @type LoginFlag: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RiskInfo, :CamCount, :AlarmCount, :AccessType, :AccessKeyAlarmCount, :ActionFlag, :LoginFlag, :RequestId

        def initialize(riskinfo=nil, camcount=nil, alarmcount=nil, accesstype=nil, accesskeyalarmcount=nil, actionflag=nil, loginflag=nil, requestid=nil)
          @RiskInfo = riskinfo
          @CamCount = camcount
          @AlarmCount = alarmcount
          @AccessType = accesstype
          @AccessKeyAlarmCount = accesskeyalarmcount
          @ActionFlag = actionflag
          @LoginFlag = loginflag
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RiskInfo'].nil?
            @RiskInfo = AccessKeyRisk.new
            @RiskInfo.deserialize(params['RiskInfo'])
          end
          @CamCount = params['CamCount']
          @AlarmCount = params['AlarmCount']
          @AccessType = params['AccessType']
          unless params['AccessKeyAlarmCount'].nil?
            @AccessKeyAlarmCount = []
            params['AccessKeyAlarmCount'].each do |i|
              accesskeyalarmcount_tmp = AccessKeyAlarmCount.new
              accesskeyalarmcount_tmp.deserialize(i)
              @AccessKeyAlarmCount << accesskeyalarmcount_tmp
            end
          end
          @ActionFlag = params['ActionFlag']
          @LoginFlag = params['LoginFlag']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAccessKeyRisk请求参数结构体
      class DescribeAccessKeyRiskRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 过滤器
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param AccessKeyID: 访问密钥的ID
        # @type AccessKeyID: Integer
        # @param SubUin: 账号uin
        # @type SubUin: String

        attr_accessor :Filter, :MemberId, :AccessKeyID, :SubUin

        def initialize(filter=nil, memberid=nil, accesskeyid=nil, subuin=nil)
          @Filter = filter
          @MemberId = memberid
          @AccessKeyID = accesskeyid
          @SubUin = subuin
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          @MemberId = params['MemberId']
          @AccessKeyID = params['AccessKeyID']
          @SubUin = params['SubUin']
        end
      end

      # DescribeAccessKeyRisk返回参数结构体
      class DescribeAccessKeyRiskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 风险列表
        # @type Data: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Total, :RequestId

        def initialize(data=nil, total=nil, requestid=nil)
          @Data = data
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              accesskeyrisk_tmp = AccessKeyRisk.new
              accesskeyrisk_tmp.deserialize(i)
              @Data << accesskeyrisk_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAccessKeyUserDetail请求参数结构体
      class DescribeAccessKeyUserDetailRequest < TencentCloud::Common::AbstractModel
        # @param SubUin: 账号自身uin
        # @type SubUin: String
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array

        attr_accessor :SubUin, :MemberId

        def initialize(subuin=nil, memberid=nil)
          @SubUin = subuin
          @MemberId = memberid
        end

        def deserialize(params)
          @SubUin = params['SubUin']
          @MemberId = params['MemberId']
        end
      end

      # DescribeAccessKeyUserDetail返回参数结构体
      class DescribeAccessKeyUserDetailResponse < TencentCloud::Common::AbstractModel
        # @param User: 账号详情信息
        # @type User: :class:`Tencentcloud::Csip.v20221121.models.AccessKeyUser`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :User, :RequestId

        def initialize(user=nil, requestid=nil)
          @User = user
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['User'].nil?
            @User = AccessKeyUser.new
            @User.deserialize(params['User'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAccessKeyUserList请求参数结构体
      class DescribeAccessKeyUserListRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤器
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

      # DescribeAccessKeyUserList返回参数结构体
      class DescribeAccessKeyUserListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 账号列表
        # @type Data: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Total, :RequestId

        def initialize(data=nil, total=nil, requestid=nil)
          @Data = data
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              accesskeyuser_tmp = AccessKeyUser.new
              accesskeyuser_tmp.deserialize(i)
              @Data << accesskeyuser_tmp
            end
          end
          @Total = params['Total']
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

      # DescribeAssetProcessList请求参数结构体
      class DescribeAssetProcessListRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filters: 过滤内容
        # @type Filters: Array
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Order: 排序类型
        # @type Order: String
        # @param By: 排序字段
        # @type By: String
        # @param Provider: 云厂商
        # @type Provider: String

        attr_accessor :MemberId, :Filters, :Limit, :Offset, :Order, :By, :Provider

        def initialize(memberid=nil, filters=nil, limit=nil, offset=nil, order=nil, by=nil, provider=nil)
          @MemberId = memberid
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @Order = order
          @By = by
          @Provider = provider
        end

        def deserialize(params)
          @MemberId = params['MemberId']
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
          @Order = params['Order']
          @By = params['By']
          @Provider = params['Provider']
        end
      end

      # DescribeAssetProcessList返回参数结构体
      class DescribeAssetProcessListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 进程数量
        # @type TotalCount: Integer
        # @param AssetProcessList: 进程列表
        # @type AssetProcessList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AssetProcessList, :RequestId

        def initialize(totalcount=nil, assetprocesslist=nil, requestid=nil)
          @TotalCount = totalcount
          @AssetProcessList = assetprocesslist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AssetProcessList'].nil?
            @AssetProcessList = []
            params['AssetProcessList'].each do |i|
              assetprocessitem_tmp = AssetProcessItem.new
              assetprocessitem_tmp.deserialize(i)
              @AssetProcessList << assetprocessitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetRiskList请求参数结构体
      class DescribeAssetRiskListRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filters: 过滤内容
        # @type Filters: Array
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Order: 排序类型
        # @type Order: String
        # @param By: 排序字段
        # @type By: String

        attr_accessor :MemberId, :Filters, :Limit, :Offset, :Order, :By

        def initialize(memberid=nil, filters=nil, limit=nil, offset=nil, order=nil, by=nil)
          @MemberId = memberid
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @Order = order
          @By = by
        end

        def deserialize(params)
          @MemberId = params['MemberId']
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
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeAssetRiskList返回参数结构体
      class DescribeAssetRiskListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 资产视角下风险数量
        # @type TotalCount: Integer
        # @param AssetRiskList: 资产视角下风险列表
        # @type AssetRiskList: Array
        # @param StandardNameList: 等保规范名称集合
        # @type StandardNameList: Array
        # @param AssetTypeList: 资产类型集合
        # @type AssetTypeList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AssetRiskList, :StandardNameList, :AssetTypeList, :RequestId

        def initialize(totalcount=nil, assetrisklist=nil, standardnamelist=nil, assettypelist=nil, requestid=nil)
          @TotalCount = totalcount
          @AssetRiskList = assetrisklist
          @StandardNameList = standardnamelist
          @AssetTypeList = assettypelist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AssetRiskList'].nil?
            @AssetRiskList = []
            params['AssetRiskList'].each do |i|
              assetriskitem_tmp = AssetRiskItem.new
              assetriskitem_tmp.deserialize(i)
              @AssetRiskList << assetriskitem_tmp
            end
          end
          unless params['StandardNameList'].nil?
            @StandardNameList = []
            params['StandardNameList'].each do |i|
              standarditem_tmp = StandardItem.new
              standarditem_tmp.deserialize(i)
              @StandardNameList << standarditem_tmp
            end
          end
          unless params['AssetTypeList'].nil?
            @AssetTypeList = []
            params['AssetTypeList'].each do |i|
              attributeoptionset_tmp = AttributeOptionSet.new
              attributeoptionset_tmp.deserialize(i)
              @AssetTypeList << attributeoptionset_tmp
            end
          end
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

      # DescribeAssumeRole请求参数结构体
      class DescribeAssumeRoleRequest < TencentCloud::Common::AbstractModel
        # @param RoleName: 角色名
        # @type RoleName: String

        attr_accessor :RoleName

        def initialize(rolename=nil)
          @RoleName = rolename
        end

        def deserialize(params)
          @RoleName = params['RoleName']
        end
      end

      # DescribeAssumeRole返回参数结构体
      class DescribeAssumeRoleResponse < TencentCloud::Common::AbstractModel
        # @param Bind: 是否绑定角色。0-未绑定 1-已绑定
        # @type Bind: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Bind, :RequestId

        def initialize(bind=nil, requestid=nil)
          @Bind = bind
          @RequestId = requestid
        end

        def deserialize(params)
          @Bind = params['Bind']
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

      # DescribeCSIPRiskStatistics请求参数结构体
      class DescribeCSIPRiskStatisticsRequest < TencentCloud::Common::AbstractModel
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

      # DescribeCSIPRiskStatistics返回参数结构体
      class DescribeCSIPRiskStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 资产概况数据
        # @type Data: :class:`Tencentcloud::Csip.v20221121.models.CsipRiskCenterStatistics`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CsipRiskCenterStatistics.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCVMAssetInfo请求参数结构体
      class DescribeCVMAssetInfoRequest < TencentCloud::Common::AbstractModel
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

      # DescribeCVMAssetInfo返回参数结构体
      class DescribeCVMAssetInfoResponse < TencentCloud::Common::AbstractModel
        # @param Data: 数据
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
        # @type Total: Integer
        # @param Data: 机器列表
        # @type Data: Array
        # @param RegionList: 地域列表
        # @type RegionList: Array
        # @param DefenseStatusList: 防护状态
        # @type DefenseStatusList: Array
        # @param VpcList: vpc枚举
        # @type VpcList: Array
        # @param AssetTypeList: 资产类型枚举
        # @type AssetTypeList: Array
        # @param SystemTypeList: 操作系统枚举
        # @type SystemTypeList: Array
        # @param IpTypeList: ip列表
        # @type IpTypeList: Array
        # @param AppIdList: appid列表
        # @type AppIdList: Array
        # @param ZoneList: 可用区列表
        # @type ZoneList: Array
        # @param OsList: os列表
        # @type OsList: Array
        # @param AssetMapInstanceTypeList: 资产类型和实例类型的对应关系
        # @type AssetMapInstanceTypeList: Array
        # @param PublicPrivateAttr: 公网内网枚举
        # @type PublicPrivateAttr: Array
        # @param ProtectStatusList: 主机防护状态
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

      # DescribeCallRecord请求参数结构体
      class DescribeCallRecordRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param AccessKeyID: 访问密钥的ID
        # @type AccessKeyID: Integer
        # @param SourceIPID: 调用源IP的ID
        # @type SourceIPID: Integer
        # @param AccUin: 访问账号uin
        # @type AccUin: String
        # @param AccessKey: 访问密钥，注意：不支持临时密钥的情况
        # @type AccessKey: String
        # @param Filter: 过滤器
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :MemberId, :AccessKeyID, :SourceIPID, :AccUin, :AccessKey, :Filter

        def initialize(memberid=nil, accesskeyid=nil, sourceipid=nil, accuin=nil, accesskey=nil, filter=nil)
          @MemberId = memberid
          @AccessKeyID = accesskeyid
          @SourceIPID = sourceipid
          @AccUin = accuin
          @AccessKey = accesskey
          @Filter = filter
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          @AccessKeyID = params['AccessKeyID']
          @SourceIPID = params['SourceIPID']
          @AccUin = params['AccUin']
          @AccessKey = params['AccessKey']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeCallRecord返回参数结构体
      class DescribeCallRecordResponse < TencentCloud::Common::AbstractModel
        # @param Data: 调用记录列表
        # @type Data: Array
        # @param Total: 调用记录总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Total, :RequestId

        def initialize(data=nil, total=nil, requestid=nil)
          @Data = data
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              callrecord_tmp = CallRecord.new
              callrecord_tmp.deserialize(i)
              @Data << callrecord_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCheckViewRisks请求参数结构体
      class DescribeCheckViewRisksRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filters: 过滤内容
        # @type Filters: Array
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Order: 排序类型
        # @type Order: String
        # @param By: 排序字段
        # @type By: String

        attr_accessor :MemberId, :Filters, :Limit, :Offset, :Order, :By

        def initialize(memberid=nil, filters=nil, limit=nil, offset=nil, order=nil, by=nil)
          @MemberId = memberid
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @Order = order
          @By = by
        end

        def deserialize(params)
          @MemberId = params['MemberId']
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
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeCheckViewRisks返回参数结构体
      class DescribeCheckViewRisksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 检查视角下风险数量
        # @type TotalCount: Integer
        # @param CheckViewRiskList: 检查视角下风险列表
        # @type CheckViewRiskList: Array
        # @param StandardNameList: 检查视角下cspm规范标签列表
        # @type StandardNameList: Array
        # @param AssetTypeList: 资产类型集合
        # @type AssetTypeList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :CheckViewRiskList, :StandardNameList, :AssetTypeList, :RequestId

        def initialize(totalcount=nil, checkviewrisklist=nil, standardnamelist=nil, assettypelist=nil, requestid=nil)
          @TotalCount = totalcount
          @CheckViewRiskList = checkviewrisklist
          @StandardNameList = standardnamelist
          @AssetTypeList = assettypelist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['CheckViewRiskList'].nil?
            @CheckViewRiskList = []
            params['CheckViewRiskList'].each do |i|
              checkviewriskitem_tmp = CheckViewRiskItem.new
              checkviewriskitem_tmp.deserialize(i)
              @CheckViewRiskList << checkviewriskitem_tmp
            end
          end
          unless params['StandardNameList'].nil?
            @StandardNameList = []
            params['StandardNameList'].each do |i|
              standarditem_tmp = StandardItem.new
              standarditem_tmp.deserialize(i)
              @StandardNameList << standarditem_tmp
            end
          end
          unless params['AssetTypeList'].nil?
            @AssetTypeList = []
            params['AssetTypeList'].each do |i|
              attributeoptionset_tmp = AttributeOptionSet.new
              attributeoptionset_tmp.deserialize(i)
              @AssetTypeList << attributeoptionset_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterAssets请求参数结构体
      class DescribeClusterAssetsRequest < TencentCloud::Common::AbstractModel
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

      # DescribeClusterAssets返回参数结构体
      class DescribeClusterAssetsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 列表
        # @type Data: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param ClusterTypeList: 集群类型枚举
        # @type ClusterTypeList: Array
        # @param ClusterStatusList: 集群状态枚举
        # @type ClusterStatusList: Array
        # @param ComponentStatusList: 组件状态枚举
        # @type ComponentStatusList: Array
        # @param VpcList: 私有网络枚举
        # @type VpcList: Array
        # @param RegionList: 地域枚举
        # @type RegionList: Array
        # @param AppIdList: 租户枚举
        # @type AppIdList: Array
        # @param ProtectStatusList: 集群防护状态枚举
        # @type ProtectStatusList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TotalCount, :ClusterTypeList, :ClusterStatusList, :ComponentStatusList, :VpcList, :RegionList, :AppIdList, :ProtectStatusList, :RequestId

        def initialize(data=nil, totalcount=nil, clustertypelist=nil, clusterstatuslist=nil, componentstatuslist=nil, vpclist=nil, regionlist=nil, appidlist=nil, protectstatuslist=nil, requestid=nil)
          @Data = data
          @TotalCount = totalcount
          @ClusterTypeList = clustertypelist
          @ClusterStatusList = clusterstatuslist
          @ComponentStatusList = componentstatuslist
          @VpcList = vpclist
          @RegionList = regionlist
          @AppIdList = appidlist
          @ProtectStatusList = protectstatuslist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              assetcluster_tmp = AssetCluster.new
              assetcluster_tmp.deserialize(i)
              @Data << assetcluster_tmp
            end
          end
          @TotalCount = params['TotalCount']
          unless params['ClusterTypeList'].nil?
            @ClusterTypeList = []
            params['ClusterTypeList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @ClusterTypeList << filterdataobject_tmp
            end
          end
          unless params['ClusterStatusList'].nil?
            @ClusterStatusList = []
            params['ClusterStatusList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @ClusterStatusList << filterdataobject_tmp
            end
          end
          unless params['ComponentStatusList'].nil?
            @ComponentStatusList = []
            params['ComponentStatusList'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @ComponentStatusList << filterdataobject_tmp
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

      # DescribeConfigCheckRules请求参数结构体
      class DescribeConfigCheckRulesRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filters: 过滤内容
        # @type Filters: Array
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Order: 排序类型
        # @type Order: String
        # @param By: 排序字段
        # @type By: String

        attr_accessor :MemberId, :Filters, :Limit, :Offset, :Order, :By

        def initialize(memberid=nil, filters=nil, limit=nil, offset=nil, order=nil, by=nil)
          @MemberId = memberid
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @Order = order
          @By = by
        end

        def deserialize(params)
          @MemberId = params['MemberId']
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
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeConfigCheckRules返回参数结构体
      class DescribeConfigCheckRulesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 风险规则数量
        # @type TotalCount: Integer
        # @param RuleList: 风险规则列表
        # @type RuleList: Array
        # @param ProviderList: 云厂商类型选项
        # @type ProviderList: Array
        # @param RiskLevelList: 风险等级类型选项
        # @type RiskLevelList: Array
        # @param DispositionTypeList: 处置分类选项
        # @type DispositionTypeList: Array
        # @param CheckTypeList: 检查类型选项
        # @type CheckTypeList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RuleList, :ProviderList, :RiskLevelList, :DispositionTypeList, :CheckTypeList, :RequestId

        def initialize(totalcount=nil, rulelist=nil, providerlist=nil, risklevellist=nil, dispositiontypelist=nil, checktypelist=nil, requestid=nil)
          @TotalCount = totalcount
          @RuleList = rulelist
          @ProviderList = providerlist
          @RiskLevelList = risklevellist
          @DispositionTypeList = dispositiontypelist
          @CheckTypeList = checktypelist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RuleList'].nil?
            @RuleList = []
            params['RuleList'].each do |i|
              riskruleinfo_tmp = RiskRuleInfo.new
              riskruleinfo_tmp.deserialize(i)
              @RuleList << riskruleinfo_tmp
            end
          end
          unless params['ProviderList'].nil?
            @ProviderList = []
            params['ProviderList'].each do |i|
              attributeoptionset_tmp = AttributeOptionSet.new
              attributeoptionset_tmp.deserialize(i)
              @ProviderList << attributeoptionset_tmp
            end
          end
          unless params['RiskLevelList'].nil?
            @RiskLevelList = []
            params['RiskLevelList'].each do |i|
              attributeoptionset_tmp = AttributeOptionSet.new
              attributeoptionset_tmp.deserialize(i)
              @RiskLevelList << attributeoptionset_tmp
            end
          end
          unless params['DispositionTypeList'].nil?
            @DispositionTypeList = []
            params['DispositionTypeList'].each do |i|
              attributeoptionset_tmp = AttributeOptionSet.new
              attributeoptionset_tmp.deserialize(i)
              @DispositionTypeList << attributeoptionset_tmp
            end
          end
          unless params['CheckTypeList'].nil?
            @CheckTypeList = []
            params['CheckTypeList'].each do |i|
              attributeoptionset_tmp = AttributeOptionSet.new
              attributeoptionset_tmp.deserialize(i)
              @CheckTypeList << attributeoptionset_tmp
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
        # @type Total: Integer
        # @param Data: 资产总数
        # @type Data: Array
        # @param RegionList: 地域枚举
        # @type RegionList: Array
        # @param AssetTypeList: 资产类型枚举
        # @type AssetTypeList: Array
        # @param VpcList: Vpc枚举
        # @type VpcList: Array
        # @param AppIdList: Appid枚举
        # @type AppIdList: Array
        # @param PublicPrivateAttr: 公网内网枚举
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
        # @type Total: Integer
        # @param Data: 域名列表
        # @type Data: Array
        # @param DefenseStatusList: 防护状态列表
        # @type DefenseStatusList: Array
        # @param AssetLocationList: 资产归属地列表
        # @type AssetLocationList: Array
        # @param SourceTypeList: 资产类型列表
        # @type SourceTypeList: Array
        # @param RegionList: 地域列表
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

      # DescribeDspmAccessRecord请求参数结构体
      class DescribeDspmAccessRecordRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param View: 视图类型。ip或instance
        # @type View: String
        # @param Filter: 过滤器
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :MemberId, :View, :Filter

        def initialize(memberid=nil, view=nil, filter=nil)
          @MemberId = memberid
          @View = view
          @Filter = filter
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          @View = params['View']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeDspmAccessRecord返回参数结构体
      class DescribeDspmAccessRecordResponse < TencentCloud::Common::AbstractModel
        # @param AccessSet: 访问记录
        # @type AccessSet: Array
        # @param TotalCount: 记录总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccessSet, :TotalCount, :RequestId

        def initialize(accessset=nil, totalcount=nil, requestid=nil)
          @AccessSet = accessset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AccessSet'].nil?
            @AccessSet = []
            params['AccessSet'].each do |i|
              dspmaccessrecord_tmp = DspmAccessRecord.new
              dspmaccessrecord_tmp.deserialize(i)
              @AccessSet << dspmaccessrecord_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmAccessTopologyAccounts请求参数结构体
      class DescribeDspmAccessTopologyAccountsRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤器。 支持的FilterName: Ip/AssetId
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

      # DescribeDspmAccessTopologyAccounts返回参数结构体
      class DescribeDspmAccessTopologyAccountsResponse < TencentCloud::Common::AbstractModel
        # @param Items: 资产账号列表
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :RequestId

        def initialize(items=nil, requestid=nil)
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @Items = params['Items']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmAccessTopologyAssets请求参数结构体
      class DescribeDspmAccessTopologyAssetsRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤器。 支持的FilterName:  Ip/Account
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

      # DescribeDspmAccessTopologyAssets返回参数结构体
      class DescribeDspmAccessTopologyAssetsResponse < TencentCloud::Common::AbstractModel
        # @param Items: 资产id列表
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :RequestId

        def initialize(items=nil, requestid=nil)
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @Items = params['Items']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmAccessTopologyIps请求参数结构体
      class DescribeDspmAccessTopologyIpsRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤器。 支持的FilterName: AssetId/Account
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

      # DescribeDspmAccessTopologyIps返回参数结构体
      class DescribeDspmAccessTopologyIpsResponse < TencentCloud::Common::AbstractModel
        # @param Items: ip列表
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :RequestId

        def initialize(items=nil, requestid=nil)
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @Items = params['Items']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmApplyHistory请求参数结构体
      class DescribeDspmApplyHistoryRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 筛选项
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :Filter

        def initialize(filter=nil)
          @Filter = filter
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeDspmApplyHistory返回参数结构体
      class DescribeDspmApplyHistoryResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 申请记录总数
        # @type TotalCount: Integer
        # @param ApplySet: 申请记录信息
        # @type ApplySet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ApplySet, :RequestId

        def initialize(totalcount=nil, applyset=nil, requestid=nil)
          @TotalCount = totalcount
          @ApplySet = applyset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ApplySet'].nil?
            @ApplySet = []
            params['ApplySet'].each do |i|
              dspmapplyorder_tmp = DspmApplyOrder.new
              dspmapplyorder_tmp.deserialize(i)
              @ApplySet << dspmapplyorder_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmApplyOrderList请求参数结构体
      class DescribeDspmApplyOrderListRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 过滤器
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :Filter

        def initialize(filter=nil)
          @Filter = filter
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeDspmApplyOrderList返回参数结构体
      class DescribeDspmApplyOrderListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 申请单总数
        # @type TotalCount: Integer
        # @param OrderSet: 申请单详情
        # @type OrderSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :OrderSet, :RequestId

        def initialize(totalcount=nil, orderset=nil, requestid=nil)
          @TotalCount = totalcount
          @OrderSet = orderset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['OrderSet'].nil?
            @OrderSet = []
            params['OrderSet'].each do |i|
              dspmapplyorder_tmp = DspmApplyOrder.new
              dspmapplyorder_tmp.deserialize(i)
              @OrderSet << dspmapplyorder_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmApproveHistory请求参数结构体
      class DescribeDspmApproveHistoryRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 筛选项
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :Filter

        def initialize(filter=nil)
          @Filter = filter
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeDspmApproveHistory返回参数结构体
      class DescribeDspmApproveHistoryResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 审批记录总数
        # @type TotalCount: Integer
        # @param ApproveSet: 审批记录信息
        # @type ApproveSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ApproveSet, :RequestId

        def initialize(totalcount=nil, approveset=nil, requestid=nil)
          @TotalCount = totalcount
          @ApproveSet = approveset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ApproveSet'].nil?
            @ApproveSet = []
            params['ApproveSet'].each do |i|
              dspmapplyorder_tmp = DspmApplyOrder.new
              dspmapplyorder_tmp.deserialize(i)
              @ApproveSet << dspmapplyorder_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmApproveOrderList请求参数结构体
      class DescribeDspmApproveOrderListRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 过滤器
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :Filter

        def initialize(filter=nil)
          @Filter = filter
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeDspmApproveOrderList返回参数结构体
      class DescribeDspmApproveOrderListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 审批单总数
        # @type TotalCount: Integer
        # @param OrderSet: 审批单详情
        # @type OrderSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :OrderSet, :RequestId

        def initialize(totalcount=nil, orderset=nil, requestid=nil)
          @TotalCount = totalcount
          @OrderSet = orderset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['OrderSet'].nil?
            @OrderSet = []
            params['OrderSet'].each do |i|
              dspmapproverorder_tmp = DspmApproverOrder.new
              dspmapproverorder_tmp.deserialize(i)
              @OrderSet << dspmapproverorder_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmAssetAccessTopology请求参数结构体
      class DescribeDspmAssetAccessTopologyRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param View: 视图类型。ip或instance
        # @type View: String
        # @param Filter: - 来源ip方式查看
        # View: "ip"

        # Filter:{
        # 	{
        # 		"Name":"Ip",
        # 		"Values":["172.1.1.1"]
        # 	},
        # 	{
        # 		"Name":"AssetId",
        # 		"Values":["cdb-1111|ap-guangzhou","cdb-2222|ap-guangzhou","cdb-3333|ap-guangzhou"]
        # 	},
        # 	{
        # 		"Name":"Account",
        # 		"Values":["root|%","test|%"]
        # 	}
        # }


        # - 实例方式查看
        # View: "instance"

        # Filter:{
        # 	{
        # 		"Name":"AssetId",
        # 		"Values":["cdb-1111|ap-guangzhou"]
        # 	},
        # 	{
        # 		"Name":"Ip",
        # 		"Values":["172.1.1.1","172.1.1.2","172.1.1.3"]
        # 	},
        # 	{
        # 		"Name":"Account",
        # 		"Values":["root|%","test|%"]
        # 	}
        # }
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :MemberId, :View, :Filter

        def initialize(memberid=nil, view=nil, filter=nil)
          @MemberId = memberid
          @View = view
          @Filter = filter
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          @View = params['View']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeDspmAssetAccessTopology返回参数结构体
      class DescribeDspmAssetAccessTopologyResponse < TencentCloud::Common::AbstractModel
        # @param ItemSet: 拓扑数据
        # @type ItemSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ItemSet, :RequestId

        def initialize(itemset=nil, requestid=nil)
          @ItemSet = itemset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ItemSet'].nil?
            @ItemSet = []
            params['ItemSet'].each do |i|
              dspmassetaccesstopologyitem_tmp = DspmAssetAccessTopologyItem.new
              dspmassetaccesstopologyitem_tmp.deserialize(i)
              @ItemSet << dspmassetaccesstopologyitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmAssetAccountIdentify请求参数结构体
      class DescribeDspmAssetAccountIdentifyRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param AssetId: 资产id
        # @type AssetId: String
        # @param Filter: 筛选项
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :MemberId, :AssetId, :Filter

        def initialize(memberid=nil, assetid=nil, filter=nil)
          @MemberId = memberid
          @AssetId = assetid
          @Filter = filter
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          @AssetId = params['AssetId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeDspmAssetAccountIdentify返回参数结构体
      class DescribeDspmAssetAccountIdentifyResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 资产账号身份总数
        # @type TotalCount: Integer
        # @param IdentifySet: 资产账号身份信息
        # @type IdentifySet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :IdentifySet, :RequestId

        def initialize(totalcount=nil, identifyset=nil, requestid=nil)
          @TotalCount = totalcount
          @IdentifySet = identifyset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['IdentifySet'].nil?
            @IdentifySet = []
            params['IdentifySet'].each do |i|
              dspmassetaccountidentify_tmp = DspmAssetAccountIdentify.new
              dspmassetaccountidentify_tmp.deserialize(i)
              @IdentifySet << dspmassetaccountidentify_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmAssetAccountPresetPrivileges请求参数结构体
      class DescribeDspmAssetAccountPresetPrivilegesRequest < TencentCloud::Common::AbstractModel
        # @param AssetId: 资产id
        # @type AssetId: String
        # @param Account: 账号
        # @type Account: String
        # @param Host: 地址
        # @type Host: String
        # @param Filter: 过滤器
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :AssetId, :Account, :Host, :Filter

        def initialize(assetid=nil, account=nil, host=nil, filter=nil)
          @AssetId = assetid
          @Account = account
          @Host = host
          @Filter = filter
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @Account = params['Account']
          @Host = params['Host']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeDspmAssetAccountPresetPrivileges返回参数结构体
      class DescribeDspmAssetAccountPresetPrivilegesResponse < TencentCloud::Common::AbstractModel
        # @param Privilege: 权限信息
        # @type Privilege: :class:`Tencentcloud::Csip.v20221121.models.DspmDbAccountPrivilege`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Privilege, :RequestId

        def initialize(privilege=nil, requestid=nil)
          @Privilege = privilege
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Privilege'].nil?
            @Privilege = DspmDbAccountPrivilege.new
            @Privilege.deserialize(params['Privilege'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmAssetAccountRecycledPrivileges请求参数结构体
      class DescribeDspmAssetAccountRecycledPrivilegesRequest < TencentCloud::Common::AbstractModel
        # @param RiskId: 风险id
        # @type RiskId: String

        attr_accessor :RiskId

        def initialize(riskid=nil)
          @RiskId = riskid
        end

        def deserialize(params)
          @RiskId = params['RiskId']
        end
      end

      # DescribeDspmAssetAccountRecycledPrivileges返回参数结构体
      class DescribeDspmAssetAccountRecycledPrivilegesResponse < TencentCloud::Common::AbstractModel
        # @param Privilege: 权限信息
        # @type Privilege: :class:`Tencentcloud::Csip.v20221121.models.DspmDbAccountPrivilege`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Privilege, :RequestId

        def initialize(privilege=nil, requestid=nil)
          @Privilege = privilege
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Privilege'].nil?
            @Privilege = DspmDbAccountPrivilege.new
            @Privilege.deserialize(params['Privilege'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmAssetAccounts请求参数结构体
      class DescribeDspmAssetAccountsRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param AssetId: 资产id
        # @type AssetId: String
        # @param Filter: 筛选项
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :MemberId, :AssetId, :Filter

        def initialize(memberid=nil, assetid=nil, filter=nil)
          @MemberId = memberid
          @AssetId = assetid
          @Filter = filter
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          @AssetId = params['AssetId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeDspmAssetAccounts返回参数结构体
      class DescribeDspmAssetAccountsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 资产账号总数
        # @type TotalCount: Integer
        # @param AccountSet: 账号信息
        # @type AccountSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AccountSet, :RequestId

        def initialize(totalcount=nil, accountset=nil, requestid=nil)
          @TotalCount = totalcount
          @AccountSet = accountset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AccountSet'].nil?
            @AccountSet = []
            params['AccountSet'].each do |i|
              dspmassetaccount_tmp = DspmAssetAccount.new
              dspmassetaccount_tmp.deserialize(i)
              @AccountSet << dspmassetaccount_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmAssetDatabaseList请求参数结构体
      class DescribeDspmAssetDatabaseListRequest < TencentCloud::Common::AbstractModel
        # @param AssetId: 资产实例id
        # @type AssetId: String
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 筛选项
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :AssetId, :MemberId, :Filter

        def initialize(assetid=nil, memberid=nil, filter=nil)
          @AssetId = assetid
          @MemberId = memberid
          @Filter = filter
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeDspmAssetDatabaseList返回参数结构体
      class DescribeDspmAssetDatabaseListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param DataSet: 结果集
        # @type DataSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DataSet, :RequestId

        def initialize(totalcount=nil, dataset=nil, requestid=nil)
          @TotalCount = totalcount
          @DataSet = dataset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DataSet'].nil?
            @DataSet = []
            params['DataSet'].each do |i|
              dspmassetdatabaseinfo_tmp = DspmAssetDatabaseInfo.new
              dspmassetdatabaseinfo_tmp.deserialize(i)
              @DataSet << dspmassetdatabaseinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmAssetDatabases请求参数结构体
      class DescribeDspmAssetDatabasesRequest < TencentCloud::Common::AbstractModel
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

      # DescribeDspmAssetDatabases返回参数结构体
      class DescribeDspmAssetDatabasesResponse < TencentCloud::Common::AbstractModel
        # @param Items: 数据库列表
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :RequestId

        def initialize(items=nil, requestid=nil)
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @Items = params['Items']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmAssetFieldList请求参数结构体
      class DescribeDspmAssetFieldListRequest < TencentCloud::Common::AbstractModel
        # @param AssetId: 资产实例id
        # @type AssetId: String
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param TableName: 表名
        # @type TableName: String
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 筛选项
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :AssetId, :DbName, :TableName, :MemberId, :Filter

        def initialize(assetid=nil, dbname=nil, tablename=nil, memberid=nil, filter=nil)
          @AssetId = assetid
          @DbName = dbname
          @TableName = tablename
          @MemberId = memberid
          @Filter = filter
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @DbName = params['DbName']
          @TableName = params['TableName']
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeDspmAssetFieldList返回参数结构体
      class DescribeDspmAssetFieldListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param DataSet: 结果集
        # @type DataSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DataSet, :RequestId

        def initialize(totalcount=nil, dataset=nil, requestid=nil)
          @TotalCount = totalcount
          @DataSet = dataset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DataSet'].nil?
            @DataSet = []
            params['DataSet'].each do |i|
              dspmassetfieldinfo_tmp = DspmAssetFieldInfo.new
              dspmassetfieldinfo_tmp.deserialize(i)
              @DataSet << dspmassetfieldinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmAssetIds请求参数结构体
      class DescribeDspmAssetIdsRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 筛选项
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

      # DescribeDspmAssetIds返回参数结构体
      class DescribeDspmAssetIdsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 数据库资产总数
        # @type TotalCount: Integer
        # @param AssetSet: 资产id信息
        # @type AssetSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AssetSet, :RequestId

        def initialize(totalcount=nil, assetset=nil, requestid=nil)
          @TotalCount = totalcount
          @AssetSet = assetset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AssetSet'].nil?
            @AssetSet = []
            params['AssetSet'].each do |i|
              dspmdbassetid_tmp = DspmDbAssetId.new
              dspmdbassetid_tmp.deserialize(i)
              @AssetSet << dspmdbassetid_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmAssetLoginCredential请求参数结构体
      class DescribeDspmAssetLoginCredentialRequest < TencentCloud::Common::AbstractModel
        # @param AssetId: 数据库资产id
        # @type AssetId: String
        # @param Host: 主机。默认'%'
        # @type Host: String
        # @param EncryptMethod: 加密算法
        # @type EncryptMethod: String

        attr_accessor :AssetId, :Host, :EncryptMethod

        def initialize(assetid=nil, host=nil, encryptmethod=nil)
          @AssetId = assetid
          @Host = host
          @EncryptMethod = encryptmethod
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @Host = params['Host']
          @EncryptMethod = params['EncryptMethod']
        end
      end

      # DescribeDspmAssetLoginCredential返回参数结构体
      class DescribeDspmAssetLoginCredentialResponse < TencentCloud::Common::AbstractModel
        # @param Account: 账号
        # @type Account: String
        # @param Password: 密码信息
        # @type Password: String
        # @param ValidateStart: 有效期开始时间
        # @type ValidateStart: String
        # @param ValidateEnd: 有效期结束时间
        # @type ValidateEnd: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Account, :Password, :ValidateStart, :ValidateEnd, :RequestId

        def initialize(account=nil, password=nil, validatestart=nil, validateend=nil, requestid=nil)
          @Account = account
          @Password = password
          @ValidateStart = validatestart
          @ValidateEnd = validateend
          @RequestId = requestid
        end

        def deserialize(params)
          @Account = params['Account']
          @Password = params['Password']
          @ValidateStart = params['ValidateStart']
          @ValidateEnd = params['ValidateEnd']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmAssetSecurityAnalyseStatus请求参数结构体
      class DescribeDspmAssetSecurityAnalyseStatusRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 筛选项
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

      # DescribeDspmAssetSecurityAnalyseStatus返回参数结构体
      class DescribeDspmAssetSecurityAnalyseStatusResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 数据库资产总数
        # @type TotalCount: Integer
        # @param AssetSet: 资产安全分析状态信息
        # @type AssetSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AssetSet, :RequestId

        def initialize(totalcount=nil, assetset=nil, requestid=nil)
          @TotalCount = totalcount
          @AssetSet = assetset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AssetSet'].nil?
            @AssetSet = []
            params['AssetSet'].each do |i|
              dspmassetsecurityanalysestatus_tmp = DspmAssetSecurityAnalyseStatus.new
              dspmassetsecurityanalysestatus_tmp.deserialize(i)
              @AssetSet << dspmassetsecurityanalysestatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmAssetSupportedPrivileges请求参数结构体
      class DescribeDspmAssetSupportedPrivilegesRequest < TencentCloud::Common::AbstractModel
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

      # DescribeDspmAssetSupportedPrivileges返回参数结构体
      class DescribeDspmAssetSupportedPrivilegesResponse < TencentCloud::Common::AbstractModel
        # @param GlobalSupportedPrivileges: 实例支持的全局权限。
        # @type GlobalSupportedPrivileges: Array
        # @param DatabaseSupportedPrivileges: 实例支持的数据库权限。
        # @type DatabaseSupportedPrivileges: Array
        # @param TableSupportedPrivileges: 实例支持的数据库表权限。
        # @type TableSupportedPrivileges: Array
        # @param ColumnSupportedPrivileges: 实例支持的数据库列权限。
        # @type ColumnSupportedPrivileges: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GlobalSupportedPrivileges, :DatabaseSupportedPrivileges, :TableSupportedPrivileges, :ColumnSupportedPrivileges, :RequestId

        def initialize(globalsupportedprivileges=nil, databasesupportedprivileges=nil, tablesupportedprivileges=nil, columnsupportedprivileges=nil, requestid=nil)
          @GlobalSupportedPrivileges = globalsupportedprivileges
          @DatabaseSupportedPrivileges = databasesupportedprivileges
          @TableSupportedPrivileges = tablesupportedprivileges
          @ColumnSupportedPrivileges = columnsupportedprivileges
          @RequestId = requestid
        end

        def deserialize(params)
          @GlobalSupportedPrivileges = params['GlobalSupportedPrivileges']
          @DatabaseSupportedPrivileges = params['DatabaseSupportedPrivileges']
          @TableSupportedPrivileges = params['TableSupportedPrivileges']
          @ColumnSupportedPrivileges = params['ColumnSupportedPrivileges']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmAssetTableList请求参数结构体
      class DescribeDspmAssetTableListRequest < TencentCloud::Common::AbstractModel
        # @param AssetId: 资产实例id
        # @type AssetId: String
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 筛选项
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :AssetId, :DbName, :MemberId, :Filter

        def initialize(assetid=nil, dbname=nil, memberid=nil, filter=nil)
          @AssetId = assetid
          @DbName = dbname
          @MemberId = memberid
          @Filter = filter
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @DbName = params['DbName']
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeDspmAssetTableList返回参数结构体
      class DescribeDspmAssetTableListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param DataSet: 结果集
        # @type DataSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DataSet, :RequestId

        def initialize(totalcount=nil, dataset=nil, requestid=nil)
          @TotalCount = totalcount
          @DataSet = dataset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DataSet'].nil?
            @DataSet = []
            params['DataSet'].each do |i|
              dspmassettableinfo_tmp = DspmAssetTableInfo.new
              dspmassettableinfo_tmp.deserialize(i)
              @DataSet << dspmassettableinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmAssets请求参数结构体
      class DescribeDspmAssetsRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 筛选项
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

      # DescribeDspmAssets返回参数结构体
      class DescribeDspmAssetsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 数据库资产总数
        # @type TotalCount: Integer
        # @param AssetSet: 资产信息
        # @type AssetSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AssetSet, :RequestId

        def initialize(totalcount=nil, assetset=nil, requestid=nil)
          @TotalCount = totalcount
          @AssetSet = assetset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AssetSet'].nil?
            @AssetSet = []
            params['AssetSet'].each do |i|
              dspmdbasset_tmp = DspmDbAsset.new
              dspmdbasset_tmp.deserialize(i)
              @AssetSet << dspmdbasset_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmBackupLogList请求参数结构体
      class DescribeDspmBackupLogListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: <p>限制数目</p>
        # @type Limit: Integer
        # @param Offset: <p>偏移量</p>
        # @type Offset: Integer
        # @param MemberId: <p>集团账号的成员id</p>
        # @type MemberId: Array
        # @param Sort: <p>排序方式(desc=倒叙,asc=升序)</p>
        # @type Sort: String
        # @param Field: <p>排序字段(支持&#39;StartTime&#39;)</p>
        # @type Field: String
        # @param StartTime: <p>开始时间</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间</p>
        # @type EndTime: Integer
        # @param Status: <p>备份日志状态0未完成的,1备份文件，2恢复中，3已恢复，4.已删除,全部查询-1</p>
        # @type Status: Integer
        # @param DbTypes: <p>数据库类型,如：cdb, mariadb</p>
        # @type DbTypes: Array

        attr_accessor :Limit, :Offset, :MemberId, :Sort, :Field, :StartTime, :EndTime, :Status, :DbTypes

        def initialize(limit=nil, offset=nil, memberid=nil, sort=nil, field=nil, starttime=nil, endtime=nil, status=nil, dbtypes=nil)
          @Limit = limit
          @Offset = offset
          @MemberId = memberid
          @Sort = sort
          @Field = field
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
          @DbTypes = dbtypes
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @MemberId = params['MemberId']
          @Sort = params['Sort']
          @Field = params['Field']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          @DbTypes = params['DbTypes']
        end
      end

      # DescribeDspmBackupLogList返回参数结构体
      class DescribeDspmBackupLogListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>总共多少条</p>
        # @type TotalCount: Integer
        # @param List: <p>备份日志列表</p>
        # @type List: Array
        # @param HasRestoringTask: <p>当前是否存在恢复中任务</p>
        # @type HasRestoringTask: Boolean
        # @param MaxRestoreSizeInGB: <p>最大恢复空间</p>
        # @type MaxRestoreSizeInGB: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :List, :HasRestoringTask, :MaxRestoreSizeInGB, :RequestId

        def initialize(totalcount=nil, list=nil, hasrestoringtask=nil, maxrestoresizeingb=nil, requestid=nil)
          @TotalCount = totalcount
          @List = list
          @HasRestoringTask = hasrestoringtask
          @MaxRestoreSizeInGB = maxrestoresizeingb
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              backuplog_tmp = BackupLog.new
              backuplog_tmp.deserialize(i)
              @List << backuplog_tmp
            end
          end
          @HasRestoringTask = params['HasRestoringTask']
          @MaxRestoreSizeInGB = params['MaxRestoreSizeInGB']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmBackupSetting请求参数结构体
      class DescribeDspmBackupSettingRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array

        attr_accessor :MemberId

        def initialize(memberid=nil)
          @MemberId = memberid
        end

        def deserialize(params)
          @MemberId = params['MemberId']
        end
      end

      # DescribeDspmBackupSetting返回参数结构体
      class DescribeDspmBackupSettingResponse < TencentCloud::Common::AbstractModel
        # @param BackupLogSaveTime: 备份日志保留时长
        # @type BackupLogSaveTime: Integer
        # @param RestoreLogSaveTime: 恢复日志保留时长
        # @type RestoreLogSaveTime: Integer
        # @param LogMaxSaveTime: 日志最大生命周期限制
        # @type LogMaxSaveTime: Integer
        # @param OnlineLogMaxSaveTime: 在线日志最大天数限制
        # @type OnlineLogMaxSaveTime: Integer
        # @param MaxOnlineLogCount: 最大在线日志条数，单位是：个
        # @type MaxOnlineLogCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BackupLogSaveTime, :RestoreLogSaveTime, :LogMaxSaveTime, :OnlineLogMaxSaveTime, :MaxOnlineLogCount, :RequestId

        def initialize(backuplogsavetime=nil, restorelogsavetime=nil, logmaxsavetime=nil, onlinelogmaxsavetime=nil, maxonlinelogcount=nil, requestid=nil)
          @BackupLogSaveTime = backuplogsavetime
          @RestoreLogSaveTime = restorelogsavetime
          @LogMaxSaveTime = logmaxsavetime
          @OnlineLogMaxSaveTime = onlinelogmaxsavetime
          @MaxOnlineLogCount = maxonlinelogcount
          @RequestId = requestid
        end

        def deserialize(params)
          @BackupLogSaveTime = params['BackupLogSaveTime']
          @RestoreLogSaveTime = params['RestoreLogSaveTime']
          @LogMaxSaveTime = params['LogMaxSaveTime']
          @OnlineLogMaxSaveTime = params['OnlineLogMaxSaveTime']
          @MaxOnlineLogCount = params['MaxOnlineLogCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmDictionaryList请求参数结构体
      class DescribeDspmDictionaryListRequest < TencentCloud::Common::AbstractModel
        # @param DictType: 字典类型（RootCategory：一级分类，IdentifyRule:敏感识别数据项）
        # @type DictType: String
        # @param Filters: 筛选条件
        # @type Filters: Array

        attr_accessor :DictType, :Filters

        def initialize(dicttype=nil, filters=nil)
          @DictType = dicttype
          @Filters = filters
        end

        def deserialize(params)
          @DictType = params['DictType']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              wherefilter_tmp = WhereFilter.new
              wherefilter_tmp.deserialize(i)
              @Filters << wherefilter_tmp
            end
          end
        end
      end

      # DescribeDspmDictionaryList返回参数结构体
      class DescribeDspmDictionaryListResponse < TencentCloud::Common::AbstractModel
        # @param DataSet: 结果集
        # @type DataSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataSet, :RequestId

        def initialize(dataset=nil, requestid=nil)
          @DataSet = dataset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataSet'].nil?
            @DataSet = []
            params['DataSet'].each do |i|
              dspmdictionary_tmp = DspmDictionary.new
              dspmdictionary_tmp.deserialize(i)
              @DataSet << dspmdictionary_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmExportTask请求参数结构体
      class DescribeDspmExportTaskRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param TaskStatus: 任务状态：0.未开始 1.执行中 2.执行成功 3.执行超时 4.执行失败
        # @type TaskStatus: Integer
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer

        attr_accessor :MemberId, :TaskStatus, :StartTime, :EndTime

        def initialize(memberid=nil, taskstatus=nil, starttime=nil, endtime=nil)
          @MemberId = memberid
          @TaskStatus = taskstatus
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          @TaskStatus = params['TaskStatus']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeDspmExportTask返回参数结构体
      class DescribeDspmExportTaskResponse < TencentCloud::Common::AbstractModel
        # @param List: 任务列表
        # @type List: Array
        # @param TotalCount: 任务总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              exporttask_tmp = ExportTask.new
              exporttask_tmp.deserialize(i)
              @List << exporttask_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmIdentifyIdList请求参数结构体
      class DescribeDspmIdentifyIdListRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 筛选项
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :Filter

        def initialize(filter=nil)
          @Filter = filter
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeDspmIdentifyIdList返回参数结构体
      class DescribeDspmIdentifyIdListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: id总数
        # @type TotalCount: Integer
        # @param IdSet: 身份id列表
        # @type IdSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :IdSet, :RequestId

        def initialize(totalcount=nil, idset=nil, requestid=nil)
          @TotalCount = totalcount
          @IdSet = idset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['IdSet'].nil?
            @IdSet = []
            params['IdSet'].each do |i|
              dspmidentifyiditem_tmp = DspmIdentifyIdItem.new
              dspmidentifyiditem_tmp.deserialize(i)
              @IdSet << dspmidentifyiditem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmIdentifyInfoList请求参数结构体
      class DescribeDspmIdentifyInfoListRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 筛选项
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

      # DescribeDspmIdentifyInfoList返回参数结构体
      class DescribeDspmIdentifyInfoListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 身份总数
        # @type TotalCount: Integer
        # @param InfoSet: 身份 信息
        # @type InfoSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InfoSet, :RequestId

        def initialize(totalcount=nil, infoset=nil, requestid=nil)
          @TotalCount = totalcount
          @InfoSet = infoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InfoSet'].nil?
            @InfoSet = []
            params['InfoSet'].each do |i|
              dspmidentifyinfoitem_tmp = DspmIdentifyInfoItem.new
              dspmidentifyinfoitem_tmp.deserialize(i)
              @InfoSet << dspmidentifyinfoitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmIdentifyInfo请求参数结构体
      class DescribeDspmIdentifyInfoRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array

        attr_accessor :MemberId

        def initialize(memberid=nil)
          @MemberId = memberid
        end

        def deserialize(params)
          @MemberId = params['MemberId']
        end
      end

      # DescribeDspmIdentifyInfo返回参数结构体
      class DescribeDspmIdentifyInfoResponse < TencentCloud::Common::AbstractModel
        # @param IdentifyId: 身份id
        # @type IdentifyId: String
        # @param IdentifyCount: 身份统计信息
        # @type IdentifyCount: Array
        # @param ApplyOrderCount: 申请单个数
        # @type ApplyOrderCount: Integer
        # @param ApproveOrderCount: 审批单个数
        # @type ApproveOrderCount: Integer
        # @param ApproveHistoryCount: 已审批个数
        # @type ApproveHistoryCount: Integer
        # @param AssetCount: 资产总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetCount: Integer
        # @param UinAccountCount: 云账号总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UinAccountCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IdentifyId, :IdentifyCount, :ApplyOrderCount, :ApproveOrderCount, :ApproveHistoryCount, :AssetCount, :UinAccountCount, :RequestId

        def initialize(identifyid=nil, identifycount=nil, applyordercount=nil, approveordercount=nil, approvehistorycount=nil, assetcount=nil, uinaccountcount=nil, requestid=nil)
          @IdentifyId = identifyid
          @IdentifyCount = identifycount
          @ApplyOrderCount = applyordercount
          @ApproveOrderCount = approveordercount
          @ApproveHistoryCount = approvehistorycount
          @AssetCount = assetcount
          @UinAccountCount = uinaccountcount
          @RequestId = requestid
        end

        def deserialize(params)
          @IdentifyId = params['IdentifyId']
          unless params['IdentifyCount'].nil?
            @IdentifyCount = []
            params['IdentifyCount'].each do |i|
              dspmidentifycount_tmp = DspmIdentifyCount.new
              dspmidentifycount_tmp.deserialize(i)
              @IdentifyCount << dspmidentifycount_tmp
            end
          end
          @ApplyOrderCount = params['ApplyOrderCount']
          @ApproveOrderCount = params['ApproveOrderCount']
          @ApproveHistoryCount = params['ApproveHistoryCount']
          @AssetCount = params['AssetCount']
          @UinAccountCount = params['UinAccountCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmLogList请求参数结构体
      class DescribeDspmLogListRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Limit: 限制数目
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Sort: 排序方式(desc=倒叙,asc=升序)
        # @type Sort: String
        # @param Field: 排序字段(opTime=时间,dangerLvl=风险等级)
        # @type Field: String
        # @param DangerLevel: 风险等级(0-安全,1-低风险,2-中风险,3-高风险,不传全部)
        # @type DangerLevel: String
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param DbPort: 数据库端口
        # @type DbPort: Integer
        # @param DbIp: 数据库 IP
        # @type DbIp: String
        # @param AssetsId: 资产 ID
        # @type AssetsId: Integer
        # @param SessionId: 会话 ID
        # @type SessionId: String
        # @param ClientSideIp: 客户端 IP
        # @type ClientSideIp: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param HitRule: 命中规则
        # @type HitRule: Integer
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param FuzzySearch: 模糊查询
        # @type FuzzySearch: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param RestoreLogId: 恢复日志id
        # @type RestoreLogId: Integer
        # @param ClientName: 客户端
        # @type ClientName: String
        # @param SourceTypes: 流量来源，取值 Agent/Proxy/空；传Agent会返回Agent的日志，传Proxy会返回Proxy日志，两者都传或不传则返回所有
        # @type SourceTypes: Array
        # @param TableName: 表名，长度限制64，多个表名查询的话可以用空格连接
        # @type TableName: String
        # @param FieldName: 字段名，长度限制64，多个字段名查询的话可以用空格连接
        # @type FieldName: String
        # @param SqlMainTypes: SQL 主要类型，DDL, DML, DCL, TCL
        # @type SqlMainTypes: Array
        # @param SqlType: 操作类型
        # @type SqlType: String
        # @param RowNumMin: 影响行数最小值
        # @type RowNumMin: Integer
        # @param RowNumMax: 影响行数最大值
        # @type RowNumMax: Integer
        # @param DbTypes: 数据库类型
        # @type DbTypes: Array
        # @param RetNo: 返回码
        # @type RetNo: Integer
        # @param ClientDriverName: 客户端工具
        # @type ClientDriverName: String
        # @param ClientPort: 客户端端口
        # @type ClientPort: Integer
        # @param LogId: 审计日志 ID
        # @type LogId: String
        # @param DangerLevels: 风险等级数组(0-安全,1-低风险,2-中风险,3-高风险)
        # @type DangerLevels: Array
        # @param SensitiveCategoryRule: 字段分类
        # @type SensitiveCategoryRule: String
        # @param SensitiveLevelRisk: 字段分级
        # @type SensitiveLevelRisk: String
        # @param ClientMac: 客户端MAC
        # @type ClientMac: String

        attr_accessor :MemberId, :Limit, :Offset, :Sort, :Field, :DangerLevel, :DbName, :DbPort, :DbIp, :AssetsId, :SessionId, :ClientSideIp, :EndTime, :HitRule, :StartTime, :FuzzySearch, :UserName, :RestoreLogId, :ClientName, :SourceTypes, :TableName, :FieldName, :SqlMainTypes, :SqlType, :RowNumMin, :RowNumMax, :DbTypes, :RetNo, :ClientDriverName, :ClientPort, :LogId, :DangerLevels, :SensitiveCategoryRule, :SensitiveLevelRisk, :ClientMac

        def initialize(memberid=nil, limit=nil, offset=nil, sort=nil, field=nil, dangerlevel=nil, dbname=nil, dbport=nil, dbip=nil, assetsid=nil, sessionid=nil, clientsideip=nil, endtime=nil, hitrule=nil, starttime=nil, fuzzysearch=nil, username=nil, restorelogid=nil, clientname=nil, sourcetypes=nil, tablename=nil, fieldname=nil, sqlmaintypes=nil, sqltype=nil, rownummin=nil, rownummax=nil, dbtypes=nil, retno=nil, clientdrivername=nil, clientport=nil, logid=nil, dangerlevels=nil, sensitivecategoryrule=nil, sensitivelevelrisk=nil, clientmac=nil)
          @MemberId = memberid
          @Limit = limit
          @Offset = offset
          @Sort = sort
          @Field = field
          @DangerLevel = dangerlevel
          @DbName = dbname
          @DbPort = dbport
          @DbIp = dbip
          @AssetsId = assetsid
          @SessionId = sessionid
          @ClientSideIp = clientsideip
          @EndTime = endtime
          @HitRule = hitrule
          @StartTime = starttime
          @FuzzySearch = fuzzysearch
          @UserName = username
          @RestoreLogId = restorelogid
          @ClientName = clientname
          @SourceTypes = sourcetypes
          @TableName = tablename
          @FieldName = fieldname
          @SqlMainTypes = sqlmaintypes
          @SqlType = sqltype
          @RowNumMin = rownummin
          @RowNumMax = rownummax
          @DbTypes = dbtypes
          @RetNo = retno
          @ClientDriverName = clientdrivername
          @ClientPort = clientport
          @LogId = logid
          @DangerLevels = dangerlevels
          @SensitiveCategoryRule = sensitivecategoryrule
          @SensitiveLevelRisk = sensitivelevelrisk
          @ClientMac = clientmac
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Sort = params['Sort']
          @Field = params['Field']
          @DangerLevel = params['DangerLevel']
          @DbName = params['DbName']
          @DbPort = params['DbPort']
          @DbIp = params['DbIp']
          @AssetsId = params['AssetsId']
          @SessionId = params['SessionId']
          @ClientSideIp = params['ClientSideIp']
          @EndTime = params['EndTime']
          @HitRule = params['HitRule']
          @StartTime = params['StartTime']
          @FuzzySearch = params['FuzzySearch']
          @UserName = params['UserName']
          @RestoreLogId = params['RestoreLogId']
          @ClientName = params['ClientName']
          @SourceTypes = params['SourceTypes']
          @TableName = params['TableName']
          @FieldName = params['FieldName']
          @SqlMainTypes = params['SqlMainTypes']
          @SqlType = params['SqlType']
          @RowNumMin = params['RowNumMin']
          @RowNumMax = params['RowNumMax']
          @DbTypes = params['DbTypes']
          @RetNo = params['RetNo']
          @ClientDriverName = params['ClientDriverName']
          @ClientPort = params['ClientPort']
          @LogId = params['LogId']
          @DangerLevels = params['DangerLevels']
          @SensitiveCategoryRule = params['SensitiveCategoryRule']
          @SensitiveLevelRisk = params['SensitiveLevelRisk']
          @ClientMac = params['ClientMac']
        end
      end

      # DescribeDspmLogList返回参数结构体
      class DescribeDspmLogListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数目
        # @type TotalCount: Integer
        # @param List: 日志信息列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              auditloginfo_tmp = AuditLogInfo.new
              auditloginfo_tmp.deserialize(i)
              @List << auditloginfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmPayInfo请求参数结构体
      class DescribeDspmPayInfoRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array

        attr_accessor :MemberId

        def initialize(memberid=nil)
          @MemberId = memberid
        end

        def deserialize(params)
          @MemberId = params['MemberId']
        end
      end

      # DescribeDspmPayInfo返回参数结构体
      class DescribeDspmPayInfoResponse < TencentCloud::Common::AbstractModel
        # @param AppID: APPID
        # @type AppID: Integer
        # @param OrderStatus: 订单状态 0未购买 1正常，2隔离，3销毁，6试用中，7到期
        # @type OrderStatus: Integer
        # @param AssetNum: 已购数据库实例数量
        # @type AssetNum: Integer
        # @param LogStorage: 已购审计日志量（TB）
        # @type LogStorage: Float
        # @param UsedAssetNum: 已使用数据库实例数量
        # @type UsedAssetNum: Integer
        # @param UsedLogStorage: 已使用审计日志量（TB）
        # @type UsedLogStorage: Float
        # @param SqlTotal: 已购sql存储总量（单位百万）
        # @type SqlTotal: Integer
        # @param SqlQps: 已购sql qps
        # @type SqlQps: Integer
        # @param PayMode: 支付模式，0-后付费 1-预付费
        # @type PayMode: Integer
        # @param IsSelfBuy: 是否单独购买，1-单独购买，2-被其它账号共享
        # @type IsSelfBuy: Integer
        # @param BeginTime: 订单开始时间
        # @type BeginTime: String
        # @param EndTime: 订单到期时间
        # @type EndTime: String
        # @param AutoRenew: 0-用户未设置,1-用户设置自动续费,2-用户设置不自动续费
        # @type AutoRenew: Integer
        # @param TimeSpan: 订单时长
        # @type TimeSpan: Integer
        # @param TimeUnit: 时长单位
        # @type TimeUnit: String
        # @param ResourceId: 资源id
        # @type ResourceId: String
        # @param BetaEndTime: 公测结束时间
        # @type BetaEndTime: String
        # @param TimeNow: 系统当前时间
        # @type TimeNow: String
        # @param IsShareToOther: 是否分享给其它账号，1-是，2-否
        # @type IsShareToOther: Integer
        # @param Uin: uin
        # @type Uin: String
        # @param NickName: 昵称
        # @type NickName: String
        # @param InquireData: 购买信息
        # @type InquireData: Array
        # @param Version: 版本(专业版：professional 试用版：trial)
        # @type Version: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppID, :OrderStatus, :AssetNum, :LogStorage, :UsedAssetNum, :UsedLogStorage, :SqlTotal, :SqlQps, :PayMode, :IsSelfBuy, :BeginTime, :EndTime, :AutoRenew, :TimeSpan, :TimeUnit, :ResourceId, :BetaEndTime, :TimeNow, :IsShareToOther, :Uin, :NickName, :InquireData, :Version, :RequestId

        def initialize(appid=nil, orderstatus=nil, assetnum=nil, logstorage=nil, usedassetnum=nil, usedlogstorage=nil, sqltotal=nil, sqlqps=nil, paymode=nil, isselfbuy=nil, begintime=nil, endtime=nil, autorenew=nil, timespan=nil, timeunit=nil, resourceid=nil, betaendtime=nil, timenow=nil, issharetoother=nil, uin=nil, nickname=nil, inquiredata=nil, version=nil, requestid=nil)
          @AppID = appid
          @OrderStatus = orderstatus
          @AssetNum = assetnum
          @LogStorage = logstorage
          @UsedAssetNum = usedassetnum
          @UsedLogStorage = usedlogstorage
          @SqlTotal = sqltotal
          @SqlQps = sqlqps
          @PayMode = paymode
          @IsSelfBuy = isselfbuy
          @BeginTime = begintime
          @EndTime = endtime
          @AutoRenew = autorenew
          @TimeSpan = timespan
          @TimeUnit = timeunit
          @ResourceId = resourceid
          @BetaEndTime = betaendtime
          @TimeNow = timenow
          @IsShareToOther = issharetoother
          @Uin = uin
          @NickName = nickname
          @InquireData = inquiredata
          @Version = version
          @RequestId = requestid
        end

        def deserialize(params)
          @AppID = params['AppID']
          @OrderStatus = params['OrderStatus']
          @AssetNum = params['AssetNum']
          @LogStorage = params['LogStorage']
          @UsedAssetNum = params['UsedAssetNum']
          @UsedLogStorage = params['UsedLogStorage']
          @SqlTotal = params['SqlTotal']
          @SqlQps = params['SqlQps']
          @PayMode = params['PayMode']
          @IsSelfBuy = params['IsSelfBuy']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @AutoRenew = params['AutoRenew']
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
          @ResourceId = params['ResourceId']
          @BetaEndTime = params['BetaEndTime']
          @TimeNow = params['TimeNow']
          @IsShareToOther = params['IsShareToOther']
          @Uin = params['Uin']
          @NickName = params['NickName']
          unless params['InquireData'].nil?
            @InquireData = []
            params['InquireData'].each do |i|
              inquireinfo_tmp = InquireInfo.new
              inquireinfo_tmp.deserialize(i)
              @InquireData << inquireinfo_tmp
            end
          end
          @Version = params['Version']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmPersonApplyHistory请求参数结构体
      class DescribeDspmPersonApplyHistoryRequest < TencentCloud::Common::AbstractModel
        # @param Subject: 对象
        # @type Subject: String
        # @param AssetId: 资产id
        # @type AssetId: String
        # @param Filter: 筛选项
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :Subject, :AssetId, :Filter

        def initialize(subject=nil, assetid=nil, filter=nil)
          @Subject = subject
          @AssetId = assetid
          @Filter = filter
        end

        def deserialize(params)
          @Subject = params['Subject']
          @AssetId = params['AssetId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeDspmPersonApplyHistory返回参数结构体
      class DescribeDspmPersonApplyHistoryResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 申请记录总数
        # @type TotalCount: Integer
        # @param ApplySet: 申请记录信息
        # @type ApplySet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ApplySet, :RequestId

        def initialize(totalcount=nil, applyset=nil, requestid=nil)
          @TotalCount = totalcount
          @ApplySet = applyset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ApplySet'].nil?
            @ApplySet = []
            params['ApplySet'].each do |i|
              dspmpersonapplyhistoryitem_tmp = DspmPersonApplyHistoryItem.new
              dspmpersonapplyhistoryitem_tmp.deserialize(i)
              @ApplySet << dspmpersonapplyhistoryitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmPersonalIdentifyList请求参数结构体
      class DescribeDspmPersonalIdentifyListRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 筛选项
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :Filter

        def initialize(filter=nil)
          @Filter = filter
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeDspmPersonalIdentifyList返回参数结构体
      class DescribeDspmPersonalIdentifyListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 身份总数
        # @type TotalCount: Integer
        # @param InfoSet: 个人身份信息
        # @type InfoSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InfoSet, :RequestId

        def initialize(totalcount=nil, infoset=nil, requestid=nil)
          @TotalCount = totalcount
          @InfoSet = infoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InfoSet'].nil?
            @InfoSet = []
            params['InfoSet'].each do |i|
              dspmpersonidentifyitem_tmp = DspmPersonIdentifyItem.new
              dspmpersonidentifyitem_tmp.deserialize(i)
              @InfoSet << dspmpersonidentifyitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmRiskDetail请求参数结构体
      class DescribeDspmRiskDetailRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤器
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param RiskId: 风险id
        # @type RiskId: String

        attr_accessor :MemberId, :Filter, :RiskId

        def initialize(memberid=nil, filter=nil, riskid=nil)
          @MemberId = memberid
          @Filter = filter
          @RiskId = riskid
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          @RiskId = params['RiskId']
        end
      end

      # DescribeDspmRiskDetail返回参数结构体
      class DescribeDspmRiskDetailResponse < TencentCloud::Common::AbstractModel
        # @param RiskLevel: 风险等级
        # @type RiskLevel: String
        # @param DetectTime: 风险检出时间
        # @type DetectTime: String
        # @param AssetId: 资产实例Id
        # @type AssetId: String
        # @param AssetName: 资产名
        # @type AssetName: String
        # @param AssetType: 资产类型
        # @type AssetType: String
        # @param Region: 地域
        # @type Region: String
        # @param PublicIp: 公网访问地址
        # @type PublicIp: String
        # @param PrivateIp: 内网访问地址
        # @type PrivateIp: String
        # @param Account: 账号
        # @type Account: String
        # @param Host: 主机地址
        # @type Host: String
        # @param IdentifyId: 身份id
        # @type IdentifyId: String
        # @param OwnerUin: 所属云账号uin用户
        # @type OwnerUin: :class:`Tencentcloud::Csip.v20221121.models.DspmUinUser`
        # @param Person: 所属个人用户信息
        # @type Person: :class:`Tencentcloud::Csip.v20221121.models.DspmPersonUser`
        # @param RiskName: 风险名称
        # @type RiskName: String
        # @param RiskNameEn: 风险英文名称
        # @type RiskNameEn: String
        # @param RiskData: 风险数据
        # @type RiskData: String
        # @param BaselineData: 基线数据
        # @type BaselineData: String
        # @param RiskId: 风险id
        # @type RiskId: String
        # @param StrategyType: 策略类型
        # @type StrategyType: String
        # @param StrategyCategory: 策略类别
        # @type StrategyCategory: String
        # @param AccountType: 账号类型
        # @type AccountType: Integer
        # @param Status: 风险状态
        # @type Status: Integer
        # @param IsAssetManager: 是否资产管理员
        # @type IsAssetManager: Integer
        # @param DataBeginTime: 数据起始时间
        # @type DataBeginTime: String
        # @param DataEndTime: 数据结束时间
        # @type DataEndTime: String
        # @param RiskType: 风险类型。risk-风险；alarm-告警。
        # @type RiskType: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RiskLevel, :DetectTime, :AssetId, :AssetName, :AssetType, :Region, :PublicIp, :PrivateIp, :Account, :Host, :IdentifyId, :OwnerUin, :Person, :RiskName, :RiskNameEn, :RiskData, :BaselineData, :RiskId, :StrategyType, :StrategyCategory, :AccountType, :Status, :IsAssetManager, :DataBeginTime, :DataEndTime, :RiskType, :RequestId

        def initialize(risklevel=nil, detecttime=nil, assetid=nil, assetname=nil, assettype=nil, region=nil, publicip=nil, privateip=nil, account=nil, host=nil, identifyid=nil, owneruin=nil, person=nil, riskname=nil, risknameen=nil, riskdata=nil, baselinedata=nil, riskid=nil, strategytype=nil, strategycategory=nil, accounttype=nil, status=nil, isassetmanager=nil, databegintime=nil, dataendtime=nil, risktype=nil, requestid=nil)
          @RiskLevel = risklevel
          @DetectTime = detecttime
          @AssetId = assetid
          @AssetName = assetname
          @AssetType = assettype
          @Region = region
          @PublicIp = publicip
          @PrivateIp = privateip
          @Account = account
          @Host = host
          @IdentifyId = identifyid
          @OwnerUin = owneruin
          @Person = person
          @RiskName = riskname
          @RiskNameEn = risknameen
          @RiskData = riskdata
          @BaselineData = baselinedata
          @RiskId = riskid
          @StrategyType = strategytype
          @StrategyCategory = strategycategory
          @AccountType = accounttype
          @Status = status
          @IsAssetManager = isassetmanager
          @DataBeginTime = databegintime
          @DataEndTime = dataendtime
          @RiskType = risktype
          @RequestId = requestid
        end

        def deserialize(params)
          @RiskLevel = params['RiskLevel']
          @DetectTime = params['DetectTime']
          @AssetId = params['AssetId']
          @AssetName = params['AssetName']
          @AssetType = params['AssetType']
          @Region = params['Region']
          @PublicIp = params['PublicIp']
          @PrivateIp = params['PrivateIp']
          @Account = params['Account']
          @Host = params['Host']
          @IdentifyId = params['IdentifyId']
          unless params['OwnerUin'].nil?
            @OwnerUin = DspmUinUser.new
            @OwnerUin.deserialize(params['OwnerUin'])
          end
          unless params['Person'].nil?
            @Person = DspmPersonUser.new
            @Person.deserialize(params['Person'])
          end
          @RiskName = params['RiskName']
          @RiskNameEn = params['RiskNameEn']
          @RiskData = params['RiskData']
          @BaselineData = params['BaselineData']
          @RiskId = params['RiskId']
          @StrategyType = params['StrategyType']
          @StrategyCategory = params['StrategyCategory']
          @AccountType = params['AccountType']
          @Status = params['Status']
          @IsAssetManager = params['IsAssetManager']
          @DataBeginTime = params['DataBeginTime']
          @DataEndTime = params['DataEndTime']
          @RiskType = params['RiskType']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmRisk请求参数结构体
      class DescribeDspmRiskRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤器
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

      # DescribeDspmRisk返回参数结构体
      class DescribeDspmRiskResponse < TencentCloud::Common::AbstractModel
        # @param RiskSet: 风险列表
        # @type RiskSet: Array
        # @param TotalCount: 风险总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RiskSet, :TotalCount, :RequestId

        def initialize(riskset=nil, totalcount=nil, requestid=nil)
          @RiskSet = riskset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RiskSet'].nil?
            @RiskSet = []
            params['RiskSet'].each do |i|
              dspmrisk_tmp = DspmRisk.new
              dspmrisk_tmp.deserialize(i)
              @RiskSet << dspmrisk_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmRiskStrategyGroup请求参数结构体
      class DescribeDspmRiskStrategyGroupRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤器
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

      # DescribeDspmRiskStrategyGroup返回参数结构体
      class DescribeDspmRiskStrategyGroupResponse < TencentCloud::Common::AbstractModel
        # @param StrategyGroupSet: 分组策略列表
        # @type StrategyGroupSet: Array
        # @param TotalCount: 分组策略总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StrategyGroupSet, :TotalCount, :RequestId

        def initialize(strategygroupset=nil, totalcount=nil, requestid=nil)
          @StrategyGroupSet = strategygroupset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['StrategyGroupSet'].nil?
            @StrategyGroupSet = []
            params['StrategyGroupSet'].each do |i|
              dspmriskstrategygroup_tmp = DspmRiskStrategyGroup.new
              dspmriskstrategygroup_tmp.deserialize(i)
              @StrategyGroupSet << dspmriskstrategygroup_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmRiskStrategy请求参数结构体
      class DescribeDspmRiskStrategyRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤器
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

      # DescribeDspmRiskStrategy返回参数结构体
      class DescribeDspmRiskStrategyResponse < TencentCloud::Common::AbstractModel
        # @param StrategySet: 策略列表
        # @type StrategySet: Array
        # @param TotalCount: 策略总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StrategySet, :TotalCount, :RequestId

        def initialize(strategyset=nil, totalcount=nil, requestid=nil)
          @StrategySet = strategyset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['StrategySet'].nil?
            @StrategySet = []
            params['StrategySet'].each do |i|
              dspmriskstrategy_tmp = DspmRiskStrategy.new
              dspmriskstrategy_tmp.deserialize(i)
              @StrategySet << dspmriskstrategy_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmRiskTendency请求参数结构体
      class DescribeDspmRiskTendencyRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param StartDate: 起始日期
        # @type StartDate: String
        # @param EndDate: 结束日期
        # @type EndDate: String

        attr_accessor :MemberId, :StartDate, :EndDate

        def initialize(memberid=nil, startdate=nil, enddate=nil)
          @MemberId = memberid
          @StartDate = startdate
          @EndDate = enddate
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
        end
      end

      # DescribeDspmRiskTendency返回参数结构体
      class DescribeDspmRiskTendencyResponse < TencentCloud::Common::AbstractModel
        # @param RiskTendencySet: 风险趋势
        # @type RiskTendencySet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RiskTendencySet, :RequestId

        def initialize(risktendencyset=nil, requestid=nil)
          @RiskTendencySet = risktendencyset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RiskTendencySet'].nil?
            @RiskTendencySet = []
            params['RiskTendencySet'].each do |i|
              dspmrisktendency_tmp = DspmRiskTendency.new
              dspmrisktendency_tmp.deserialize(i)
              @RiskTendencySet << dspmrisktendency_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmStatistics请求参数结构体
      class DescribeDspmStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array

        attr_accessor :MemberId

        def initialize(memberid=nil)
          @MemberId = memberid
        end

        def deserialize(params)
          @MemberId = params['MemberId']
        end
      end

      # DescribeDspmStatistics返回参数结构体
      class DescribeDspmStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param AssetCount: 资产统计信息
        # @type AssetCount: :class:`Tencentcloud::Csip.v20221121.models.DspmAssetCount`
        # @param IpCount: 访问Ip统计信息
        # @type IpCount: :class:`Tencentcloud::Csip.v20221121.models.DspmIpCount`
        # @param UserCount: 用户账号统计信息
        # @type UserCount: :class:`Tencentcloud::Csip.v20221121.models.DspmAccountCount`
        # @param RiskCount: 风险统计信息
        # @type RiskCount: :class:`Tencentcloud::Csip.v20221121.models.DspmRiskCount`
        # @param AnalyseAssetStatusCount: 资产安全分析统计信息
        # @type AnalyseAssetStatusCount: :class:`Tencentcloud::Csip.v20221121.models.DspmSecurityAnalyseStatusCount`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AssetCount, :IpCount, :UserCount, :RiskCount, :AnalyseAssetStatusCount, :RequestId

        def initialize(assetcount=nil, ipcount=nil, usercount=nil, riskcount=nil, analyseassetstatuscount=nil, requestid=nil)
          @AssetCount = assetcount
          @IpCount = ipcount
          @UserCount = usercount
          @RiskCount = riskcount
          @AnalyseAssetStatusCount = analyseassetstatuscount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AssetCount'].nil?
            @AssetCount = DspmAssetCount.new
            @AssetCount.deserialize(params['AssetCount'])
          end
          unless params['IpCount'].nil?
            @IpCount = DspmIpCount.new
            @IpCount.deserialize(params['IpCount'])
          end
          unless params['UserCount'].nil?
            @UserCount = DspmAccountCount.new
            @UserCount.deserialize(params['UserCount'])
          end
          unless params['RiskCount'].nil?
            @RiskCount = DspmRiskCount.new
            @RiskCount.deserialize(params['RiskCount'])
          end
          unless params['AnalyseAssetStatusCount'].nil?
            @AnalyseAssetStatusCount = DspmSecurityAnalyseStatusCount.new
            @AnalyseAssetStatusCount.deserialize(params['AnalyseAssetStatusCount'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmSupportedAssetType请求参数结构体
      class DescribeDspmSupportedAssetTypeRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: <p>集团账号的成员id</p>
        # @type MemberId: Array

        attr_accessor :MemberId

        def initialize(memberid=nil)
          @MemberId = memberid
        end

        def deserialize(params)
          @MemberId = params['MemberId']
        end
      end

      # DescribeDspmSupportedAssetType返回参数结构体
      class DescribeDspmSupportedAssetTypeResponse < TencentCloud::Common::AbstractModel
        # @param AssetTypeSet: <p>实例支持的全局权限。</p>
        # @type AssetTypeSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AssetTypeSet, :RequestId

        def initialize(assettypeset=nil, requestid=nil)
          @AssetTypeSet = assettypeset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AssetTypeSet'].nil?
            @AssetTypeSet = []
            params['AssetTypeSet'].each do |i|
              dspmsupportedassettype_tmp = DspmSupportedAssetType.new
              dspmsupportedassettype_tmp.deserialize(i)
              @AssetTypeSet << dspmsupportedassettype_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDspmSyncAssetsStatus请求参数结构体
      class DescribeDspmSyncAssetsStatusRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeDspmSyncAssetsStatus返回参数结构体
      class DescribeDspmSyncAssetsStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 资产同步任务状态。0-未执行。1-执行中
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

      # DescribeDspmSyncUsersStatus请求参数结构体
      class DescribeDspmSyncUsersStatusRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeDspmSyncUsersStatus返回参数结构体
      class DescribeDspmSyncUsersStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 用户同步任务状态。0-未执行。1-执行中
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

      # DescribeDspmWhitelistStrategy请求参数结构体
      class DescribeDspmWhitelistStrategyRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤器
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

      # DescribeDspmWhitelistStrategy返回参数结构体
      class DescribeDspmWhitelistStrategyResponse < TencentCloud::Common::AbstractModel
        # @param WhitelistSet: 白名单列表
        # @type WhitelistSet: Array
        # @param TotalCount: 白名单总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WhitelistSet, :TotalCount, :RequestId

        def initialize(whitelistset=nil, totalcount=nil, requestid=nil)
          @WhitelistSet = whitelistset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WhitelistSet'].nil?
            @WhitelistSet = []
            params['WhitelistSet'].each do |i|
              dspmwhiteliststrategy_tmp = DspmWhitelistStrategy.new
              dspmwhiteliststrategy_tmp.deserialize(i)
              @WhitelistSet << dspmwhiteliststrategy_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeExposeAssetCategory请求参数结构体
      class DescribeExposeAssetCategoryRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array

        attr_accessor :MemberId

        def initialize(memberid=nil)
          @MemberId = memberid
        end

        def deserialize(params)
          @MemberId = params['MemberId']
        end
      end

      # DescribeExposeAssetCategory返回参数结构体
      class DescribeExposeAssetCategoryResponse < TencentCloud::Common::AbstractModel
        # @param ExposeAssetTypeList: 云边界分析资产分类列表
        # @type ExposeAssetTypeList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ExposeAssetTypeList, :RequestId

        def initialize(exposeassettypelist=nil, requestid=nil)
          @ExposeAssetTypeList = exposeassettypelist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ExposeAssetTypeList'].nil?
            @ExposeAssetTypeList = []
            params['ExposeAssetTypeList'].each do |i|
              exposeassettypeitem_tmp = ExposeAssetTypeItem.new
              exposeassettypeitem_tmp.deserialize(i)
              @ExposeAssetTypeList << exposeassettypeitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeExposePath请求参数结构体
      class DescribeExposePathRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param AssetId: 资产ID
        # @type AssetId: String
        # @param Ip: 资产IP
        # @type Ip: String
        # @param Domain: 资产域名
        # @type Domain: String
        # @param Port: 端口或端口范围
        # @type Port: String

        attr_accessor :MemberId, :AssetId, :Ip, :Domain, :Port

        def initialize(memberid=nil, assetid=nil, ip=nil, domain=nil, port=nil)
          @MemberId = memberid
          @AssetId = assetid
          @Ip = ip
          @Domain = domain
          @Port = port
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          @AssetId = params['AssetId']
          @Ip = params['Ip']
          @Domain = params['Domain']
          @Port = params['Port']
        end
      end

      # DescribeExposePath返回参数结构体
      class DescribeExposePathResponse < TencentCloud::Common::AbstractModel
        # @param Content: 云边界分析路径节点内容
        # @type Content: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Content, :RequestId

        def initialize(content=nil, requestid=nil)
          @Content = content
          @RequestId = requestid
        end

        def deserialize(params)
          @Content = params['Content']
          @RequestId = params['RequestId']
        end
      end

      # DescribeExposures请求参数结构体
      class DescribeExposuresRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filters: 过滤内容
        # @type Filters: Array
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Order: 排序类型
        # @type Order: String
        # @param By: 排序字段
        # @type By: String

        attr_accessor :MemberId, :Filters, :Limit, :Offset, :Order, :By

        def initialize(memberid=nil, filters=nil, limit=nil, offset=nil, order=nil, by=nil)
          @MemberId = memberid
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @Order = order
          @By = by
        end

        def deserialize(params)
          @MemberId = params['MemberId']
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
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeExposures返回参数结构体
      class DescribeExposuresResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 云边界分析资产数量
        # @type TotalCount: Integer
        # @param ExposeList: 云边界分析资产列表
        # @type ExposeList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ExposeList, :RequestId

        def initialize(totalcount=nil, exposelist=nil, requestid=nil)
          @TotalCount = totalcount
          @ExposeList = exposelist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ExposeList'].nil?
            @ExposeList = []
            params['ExposeList'].each do |i|
              exposesitem_tmp = ExposesItem.new
              exposesitem_tmp.deserialize(i)
              @ExposeList << exposesitem_tmp
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

      # DescribeHighBaseLineRiskList请求参数结构体
      class DescribeHighBaseLineRiskListRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filters: 过滤内容
        # @type Filters: Array
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Order: 排序类型
        # @type Order: String
        # @param By: 排序字段
        # @type By: String
        # @param CloudAccountID: 云账号ID
        # @type CloudAccountID: String
        # @param Provider: 云厂商
        # @type Provider: String

        attr_accessor :MemberId, :Filters, :Limit, :Offset, :Order, :By, :CloudAccountID, :Provider

        def initialize(memberid=nil, filters=nil, limit=nil, offset=nil, order=nil, by=nil, cloudaccountid=nil, provider=nil)
          @MemberId = memberid
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @Order = order
          @By = by
          @CloudAccountID = cloudaccountid
          @Provider = provider
        end

        def deserialize(params)
          @MemberId = params['MemberId']
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
          @Order = params['Order']
          @By = params['By']
          @CloudAccountID = params['CloudAccountID']
          @Provider = params['Provider']
        end
      end

      # DescribeHighBaseLineRiskList返回参数结构体
      class DescribeHighBaseLineRiskListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 高危基线风险数量
        # @type TotalCount: Integer
        # @param HighBaseLineRiskList: 高危基线风险列表
        # @type HighBaseLineRiskList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :HighBaseLineRiskList, :RequestId

        def initialize(totalcount=nil, highbaselinerisklist=nil, requestid=nil)
          @TotalCount = totalcount
          @HighBaseLineRiskList = highbaselinerisklist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['HighBaseLineRiskList'].nil?
            @HighBaseLineRiskList = []
            params['HighBaseLineRiskList'].each do |i|
              highbaselineriskitem_tmp = HighBaseLineRiskItem.new
              highbaselineriskitem_tmp.deserialize(i)
              @HighBaseLineRiskList << highbaselineriskitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeKeySandboxCredentialList请求参数结构体
      class DescribeKeySandboxCredentialListRequest < TencentCloud::Common::AbstractModel
        # @param Filter: 过滤条件列表，支持的过滤条件如下：
        # CredentialName - 凭证名称（模糊匹配）
        # CredentialType - 凭证类型（精确匹配），取值：access、sts
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array

        attr_accessor :Filter, :MemberId

        def initialize(filter=nil, memberid=nil)
          @Filter = filter
          @MemberId = memberid
        end

        def deserialize(params)
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          @MemberId = params['MemberId']
        end
      end

      # DescribeKeySandboxCredentialList返回参数结构体
      class DescribeKeySandboxCredentialListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 凭证数据列表
        # @type Data: Array
        # @param TotalCount: 总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TotalCount, :RequestId

        def initialize(data=nil, totalcount=nil, requestid=nil)
          @Data = data
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              keysandboxcredential_tmp = KeySandboxCredential.new
              keysandboxcredential_tmp.deserialize(i)
              @Data << keysandboxcredential_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeKeySandboxCredential请求参数结构体
      class DescribeKeySandboxCredentialRequest < TencentCloud::Common::AbstractModel
        # @param CredentialId: 凭证ID
        # @type CredentialId: String
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array

        attr_accessor :CredentialId, :MemberId

        def initialize(credentialid=nil, memberid=nil)
          @CredentialId = credentialid
          @MemberId = memberid
        end

        def deserialize(params)
          @CredentialId = params['CredentialId']
          @MemberId = params['MemberId']
        end
      end

      # DescribeKeySandboxCredential返回参数结构体
      class DescribeKeySandboxCredentialResponse < TencentCloud::Common::AbstractModel
        # @param CredentialId: 凭证ID
        # @type CredentialId: String
        # @param CredentialName: 凭证名称
        # @type CredentialName: String
        # @param CredentialType: 凭证类型
        # 枚举值：
        # access：常规密钥
        # sts：STS临时密钥
        # @type CredentialType: String
        # @param CredentialEffectScope: 生效机器范围
        # @type CredentialEffectScope: :class:`Tencentcloud::Csip.v20221121.models.CredentialEffectScope`
        # @param Access: 常规密钥凭据数据（打码后），CredentialType为access时返回
        # 补充说明：Key为原文，Value为打码后的值（保留前3后4位，中间用***替代）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Access: Array
        # @param STS: STS凭据数据（打码后），CredentialType为sts时返回
        # 补充说明：System为原文，SecretID和SecretKey为打码后的值（保留前3后4位，中间用***替代）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type STS: :class:`Tencentcloud::Csip.v20221121.models.STSCredentialOutput`
        # @param CreateTime: 创建时间
        # 参数格式：YYYY-MM-DDTHH:mm:ssZ（ISO8601格式）
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 参数格式：YYYY-MM-DDTHH:mm:ssZ（ISO8601格式）
        # @type UpdateTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CredentialId, :CredentialName, :CredentialType, :CredentialEffectScope, :Access, :STS, :CreateTime, :UpdateTime, :RequestId

        def initialize(credentialid=nil, credentialname=nil, credentialtype=nil, credentialeffectscope=nil, access=nil, sts=nil, createtime=nil, updatetime=nil, requestid=nil)
          @CredentialId = credentialid
          @CredentialName = credentialname
          @CredentialType = credentialtype
          @CredentialEffectScope = credentialeffectscope
          @Access = access
          @STS = sts
          @CreateTime = createtime
          @UpdateTime = updatetime
          @RequestId = requestid
        end

        def deserialize(params)
          @CredentialId = params['CredentialId']
          @CredentialName = params['CredentialName']
          @CredentialType = params['CredentialType']
          unless params['CredentialEffectScope'].nil?
            @CredentialEffectScope = CredentialEffectScope.new
            @CredentialEffectScope.deserialize(params['CredentialEffectScope'])
          end
          unless params['Access'].nil?
            @Access = []
            params['Access'].each do |i|
              accesscredentialoutput_tmp = AccessCredentialOutput.new
              accesscredentialoutput_tmp.deserialize(i)
              @Access << accesscredentialoutput_tmp
            end
          end
          unless params['STS'].nil?
            @STS = STSCredentialOutput.new
            @STS.deserialize(params['STS'])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
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

      # DescribeOrganizationInfo请求参数结构体
      class DescribeOrganizationInfoRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array

        attr_accessor :MemberId

        def initialize(memberid=nil)
          @MemberId = memberid
        end

        def deserialize(params)
          @MemberId = params['MemberId']
        end
      end

      # DescribeOrganizationInfo返回参数结构体
      class DescribeOrganizationInfoResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param Data: 集团用户列表
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :RequestId

        def initialize(totalcount=nil, data=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              organizationinfo_tmp = OrganizationInfo.new
              organizationinfo_tmp.deserialize(i)
              @Data << organizationinfo_tmp
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

      # DescribeOtherCloudAssets请求参数结构体
      class DescribeOtherCloudAssetsRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: -
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

      # DescribeOtherCloudAssets返回参数结构体
      class DescribeOtherCloudAssetsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param Data: 资产总数
        # @type Data: Array
        # @param RegionList: 地域枚举
        # @type RegionList: Array
        # @param AssetTypeList: 资产类型枚举
        # @type AssetTypeList: Array
        # @param VpcList: Vpc枚举
        # @type VpcList: Array
        # @param AppIdList: Appid枚举
        # @type AppIdList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Data, :RegionList, :AssetTypeList, :VpcList, :AppIdList, :RequestId

        def initialize(total=nil, data=nil, regionlist=nil, assettypelist=nil, vpclist=nil, appidlist=nil, requestid=nil)
          @Total = total
          @Data = data
          @RegionList = regionlist
          @AssetTypeList = assettypelist
          @VpcList = vpclist
          @AppIdList = appidlist
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
        # @type Data: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param AssetLocationList: 资产归属地
        # @type AssetLocationList: Array
        # @param IpTypeList: ip列表枚举
        # @type IpTypeList: Array
        # @param RegionList: 地域列表枚举
        # @type RegionList: Array
        # @param DefenseStatusList: 防护枚举
        # @type DefenseStatusList: Array
        # @param AssetTypeList: 资产类型枚举
        # @type AssetTypeList: Array
        # @param AppIdList: AppId枚举
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

      # DescribeRepositoryImageAssets请求参数结构体
      class DescribeRepositoryImageAssetsRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: filter过滤条件
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

      # DescribeRepositoryImageAssets返回参数结构体
      class DescribeRepositoryImageAssetsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 仓库镜像列表
        # @type Data: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param RegionList: region列表
        # @type RegionList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Total, :RegionList, :RequestId

        def initialize(data=nil, total=nil, regionlist=nil, requestid=nil)
          @Data = data
          @Total = total
          @RegionList = regionlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              repositoryimagevo_tmp = RepositoryImageVO.new
              repositoryimagevo_tmp.deserialize(i)
              @Data << repositoryimagevo_tmp
            end
          end
          @Total = params['Total']
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

      # DescribeRiskCallRecord请求参数结构体
      class DescribeRiskCallRecordRequest < TencentCloud::Common::AbstractModel
        # @param RiskID: 风险记录ID
        # @type RiskID: Integer
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤器
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :RiskID, :MemberId, :Filter

        def initialize(riskid=nil, memberid=nil, filter=nil)
          @RiskID = riskid
          @MemberId = memberid
          @Filter = filter
        end

        def deserialize(params)
          @RiskID = params['RiskID']
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeRiskCallRecord返回参数结构体
      class DescribeRiskCallRecordResponse < TencentCloud::Common::AbstractModel
        # @param Data: 风险调用记录列表
        # @type Data: Array
        # @param Total: 调用记录总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Total, :RequestId

        def initialize(data=nil, total=nil, requestid=nil)
          @Data = data
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              riskcallrecord_tmp = RiskCallRecord.new
              riskcallrecord_tmp.deserialize(i)
              @Data << riskcallrecord_tmp
            end
          end
          @Total = params['Total']
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

      # DescribeRiskCenterCFGViewCFGRiskList请求参数结构体
      class DescribeRiskCenterCFGViewCFGRiskListRequest < TencentCloud::Common::AbstractModel
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

      # DescribeRiskCenterCFGViewCFGRiskList返回参数结构体
      class DescribeRiskCenterCFGViewCFGRiskListResponse < TencentCloud::Common::AbstractModel
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
              cfgviewcfgrisk_tmp = CFGViewCFGRisk.new
              cfgviewcfgrisk_tmp.deserialize(i)
              @Data << cfgviewcfgrisk_tmp
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

      # DescribeRiskDetailList请求参数结构体
      class DescribeRiskDetailListRequest < TencentCloud::Common::AbstractModel
        # @param RiskRuleId: 风险规则ID
        # @type RiskRuleId: String
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filters: 过滤内容
        # @type Filters: Array
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Order: 排序类型
        # @type Order: String
        # @param By: 排序字段
        # @type By: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String

        attr_accessor :RiskRuleId, :MemberId, :Filters, :Limit, :Offset, :Order, :By, :InstanceId

        def initialize(riskruleid=nil, memberid=nil, filters=nil, limit=nil, offset=nil, order=nil, by=nil, instanceid=nil)
          @RiskRuleId = riskruleid
          @MemberId = memberid
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @Order = order
          @By = by
          @InstanceId = instanceid
        end

        def deserialize(params)
          @RiskRuleId = params['RiskRuleId']
          @MemberId = params['MemberId']
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
          @Order = params['Order']
          @By = params['By']
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeRiskDetailList返回参数结构体
      class DescribeRiskDetailListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 资产视角下风险详情数量
        # @type TotalCount: Integer
        # @param AssetRiskDetailList: 资产视角下风险详情列表
        # @type AssetRiskDetailList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AssetRiskDetailList, :RequestId

        def initialize(totalcount=nil, assetriskdetaillist=nil, requestid=nil)
          @TotalCount = totalcount
          @AssetRiskDetailList = assetriskdetaillist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AssetRiskDetailList'].nil?
            @AssetRiskDetailList = []
            params['AssetRiskDetailList'].each do |i|
              riskdetailitem_tmp = RiskDetailItem.new
              riskdetailitem_tmp.deserialize(i)
              @AssetRiskDetailList << riskdetailitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRiskRuleDetail请求参数结构体
      class DescribeRiskRuleDetailRequest < TencentCloud::Common::AbstractModel
        # @param RiskRuleId: 风险规则ID
        # @type RiskRuleId: String

        attr_accessor :RiskRuleId

        def initialize(riskruleid=nil)
          @RiskRuleId = riskruleid
        end

        def deserialize(params)
          @RiskRuleId = params['RiskRuleId']
        end
      end

      # DescribeRiskRuleDetail返回参数结构体
      class DescribeRiskRuleDetailResponse < TencentCloud::Common::AbstractModel
        # @param RiskRuleId: 风险规则ID
        # @type RiskRuleId: String
        # @param Provider: 云厂商
        # @type Provider: String
        # @param RiskName: 风险名称
        # @type RiskName: String
        # @param RiskInfluence: 风险危害
        # @type RiskInfluence: String
        # @param RiskFixAdvice: 修复指引
        # @type RiskFixAdvice: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RiskRuleId, :Provider, :RiskName, :RiskInfluence, :RiskFixAdvice, :RequestId

        def initialize(riskruleid=nil, provider=nil, riskname=nil, riskinfluence=nil, riskfixadvice=nil, requestid=nil)
          @RiskRuleId = riskruleid
          @Provider = provider
          @RiskName = riskname
          @RiskInfluence = riskinfluence
          @RiskFixAdvice = riskfixadvice
          @RequestId = requestid
        end

        def deserialize(params)
          @RiskRuleId = params['RiskRuleId']
          @Provider = params['Provider']
          @RiskName = params['RiskName']
          @RiskInfluence = params['RiskInfluence']
          @RiskFixAdvice = params['RiskFixAdvice']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRiskRules请求参数结构体
      class DescribeRiskRulesRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filters: 过滤内容
        # @type Filters: Array
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Order: 排序类型
        # @type Order: String
        # @param By: 排序字段
        # @type By: String

        attr_accessor :MemberId, :Filters, :Limit, :Offset, :Order, :By

        def initialize(memberid=nil, filters=nil, limit=nil, offset=nil, order=nil, by=nil)
          @MemberId = memberid
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @Order = order
          @By = by
        end

        def deserialize(params)
          @MemberId = params['MemberId']
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
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeRiskRules返回参数结构体
      class DescribeRiskRulesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 风险规则数量
        # @type TotalCount: Integer
        # @param RiskRuleList: 风险规则列表
        # @type RiskRuleList: Array
        # @param InstanceTypeList: 实例类型选项
        # @type InstanceTypeList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RiskRuleList, :InstanceTypeList, :RequestId

        def initialize(totalcount=nil, riskrulelist=nil, instancetypelist=nil, requestid=nil)
          @TotalCount = totalcount
          @RiskRuleList = riskrulelist
          @InstanceTypeList = instancetypelist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RiskRuleList'].nil?
            @RiskRuleList = []
            params['RiskRuleList'].each do |i|
              riskruleitem_tmp = RiskRuleItem.new
              riskruleitem_tmp.deserialize(i)
              @RiskRuleList << riskruleitem_tmp
            end
          end
          unless params['InstanceTypeList'].nil?
            @InstanceTypeList = []
            params['InstanceTypeList'].each do |i|
              attributeoptionset_tmp = AttributeOptionSet.new
              attributeoptionset_tmp.deserialize(i)
              @InstanceTypeList << attributeoptionset_tmp
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

      # DescribeScanStatistic请求参数结构体
      class DescribeScanStatisticRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param TaskLogId: 体检任务id
        # @type TaskLogId: String

        attr_accessor :MemberId, :TaskLogId

        def initialize(memberid=nil, tasklogid=nil)
          @MemberId = memberid
          @TaskLogId = tasklogid
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          @TaskLogId = params['TaskLogId']
        end
      end

      # DescribeScanStatistic返回参数结构体
      class DescribeScanStatisticResponse < TencentCloud::Common::AbstractModel
        # @param PortServiceCount: 端口服务数量
        # @type PortServiceCount: Integer
        # @param WebAppCount: Web服务数量
        # @type WebAppCount: Integer
        # @param WeakPasswordCount: 弱口令风险数量
        # @type WeakPasswordCount: Integer
        # @param VulCount: 漏洞风险数量
        # @type VulCount: Integer
        # @param HighRiskPortServiceCount: 高危端口服务数量
        # @type HighRiskPortServiceCount: Integer
        # @param RiskWebAppCount: 风险Web服务数量
        # @type RiskWebAppCount: Integer
        # @param PortServiceIncrement: 端口服务近7天新增数量
        # @type PortServiceIncrement: Integer
        # @param WebAppIncrement: Web服务近7天新增数量
        # @type WebAppIncrement: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PortServiceCount, :WebAppCount, :WeakPasswordCount, :VulCount, :HighRiskPortServiceCount, :RiskWebAppCount, :PortServiceIncrement, :WebAppIncrement, :RequestId

        def initialize(portservicecount=nil, webappcount=nil, weakpasswordcount=nil, vulcount=nil, highriskportservicecount=nil, riskwebappcount=nil, portserviceincrement=nil, webappincrement=nil, requestid=nil)
          @PortServiceCount = portservicecount
          @WebAppCount = webappcount
          @WeakPasswordCount = weakpasswordcount
          @VulCount = vulcount
          @HighRiskPortServiceCount = highriskportservicecount
          @RiskWebAppCount = riskwebappcount
          @PortServiceIncrement = portserviceincrement
          @WebAppIncrement = webappincrement
          @RequestId = requestid
        end

        def deserialize(params)
          @PortServiceCount = params['PortServiceCount']
          @WebAppCount = params['WebAppCount']
          @WeakPasswordCount = params['WeakPasswordCount']
          @VulCount = params['VulCount']
          @HighRiskPortServiceCount = params['HighRiskPortServiceCount']
          @RiskWebAppCount = params['RiskWebAppCount']
          @PortServiceIncrement = params['PortServiceIncrement']
          @WebAppIncrement = params['WebAppIncrement']
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
        # @param Id: 1的时候返回应急漏洞，2的时候返回应急漏洞列表，3的时候搭配输入CVEId字段展示该漏洞数据
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

      # DescribeSourceIPAsset请求参数结构体
      class DescribeSourceIPAssetRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤器
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

      # DescribeSourceIPAsset返回参数结构体
      class DescribeSourceIPAssetResponse < TencentCloud::Common::AbstractModel
        # @param Data: 访问密钥资产列表
        # @type Data: Array
        # @param Total: 全部数量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Total, :RequestId

        def initialize(data=nil, total=nil, requestid=nil)
          @Data = data
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              sourceipasset_tmp = SourceIPAsset.new
              sourceipasset_tmp.deserialize(i)
              @Data << sourceipasset_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSubUserInfo请求参数结构体
      class DescribeSubUserInfoRequest < TencentCloud::Common::AbstractModel
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

      # DescribeSubUserInfo返回参数结构体
      class DescribeSubUserInfoResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param Data: 子用户列表
        # @type Data: Array
        # @param CloudTypeLst: 厂商枚举列表
        # @type CloudTypeLst: Array
        # @param OwnerAppIDLst: 所属主账号appid枚举
        # @type OwnerAppIDLst: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :CloudTypeLst, :OwnerAppIDLst, :RequestId

        def initialize(totalcount=nil, data=nil, cloudtypelst=nil, ownerappidlst=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @CloudTypeLst = cloudtypelst
          @OwnerAppIDLst = ownerappidlst
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              subuserinfo_tmp = SubUserInfo.new
              subuserinfo_tmp.deserialize(i)
              @Data << subuserinfo_tmp
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
          unless params['OwnerAppIDLst'].nil?
            @OwnerAppIDLst = []
            params['OwnerAppIDLst'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @OwnerAppIDLst << filterdataobject_tmp
            end
          end
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
        # @param StartTime: 起始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param QueryType: 1:攻击类型 2:攻击者
        # @type QueryType: Integer
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param OperatedMemberId: 被调用的集团账号的成员id
        # @type OperatedMemberId: Array
        # @param AssetName: 资产名称
        # @type AssetName: String
        # @param AssetType: 0: 默认全部 1:资产ID 2:域名
        # @type AssetType: Integer

        attr_accessor :StartTime, :EndTime, :QueryType, :MemberId, :OperatedMemberId, :AssetName, :AssetType

        def initialize(starttime=nil, endtime=nil, querytype=nil, memberid=nil, operatedmemberid=nil, assetname=nil, assettype=nil)
          @StartTime = starttime
          @EndTime = endtime
          @QueryType = querytype
          @MemberId = memberid
          @OperatedMemberId = operatedmemberid
          @AssetName = assetname
          @AssetType = assettype
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @QueryType = params['QueryType']
          @MemberId = params['MemberId']
          @OperatedMemberId = params['OperatedMemberId']
          @AssetName = params['AssetName']
          @AssetType = params['AssetType']
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

      # DescribeUebaRule请求参数结构体
      class DescribeUebaRuleRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤条件
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

      # DescribeUebaRule返回参数结构体
      class DescribeUebaRuleResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param Data: 策略列表
        # @type Data: Array
        # @param AlterType: 自定义策略对应的告警类别枚举
        # @type AlterType: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :AlterType, :RequestId

        def initialize(totalcount=nil, data=nil, altertype=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @AlterType = altertype
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              uebarule_tmp = UebaRule.new
              uebarule_tmp.deserialize(i)
              @Data << uebarule_tmp
            end
          end
          unless params['AlterType'].nil?
            @AlterType = []
            params['AlterType'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AlterType << filterdataobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserCallRecord请求参数结构体
      class DescribeUserCallRecordRequest < TencentCloud::Common::AbstractModel
        # @param SubUin: 账号uin
        # @type SubUin: String
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤器
        # @type Filter: :class:`Tencentcloud::Csip.v20221121.models.Filter`

        attr_accessor :SubUin, :MemberId, :Filter

        def initialize(subuin=nil, memberid=nil, filter=nil)
          @SubUin = subuin
          @MemberId = memberid
          @Filter = filter
        end

        def deserialize(params)
          @SubUin = params['SubUin']
          @MemberId = params['MemberId']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeUserCallRecord返回参数结构体
      class DescribeUserCallRecordResponse < TencentCloud::Common::AbstractModel
        # @param Data: 账号调用记录列表
        # @type Data: Array
        # @param Total: 调用记录总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Total, :RequestId

        def initialize(data=nil, total=nil, requestid=nil)
          @Data = data
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              usercallrecord_tmp = UserCallRecord.new
              usercallrecord_tmp.deserialize(i)
              @Data << usercallrecord_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserDspmInfoList请求参数结构体
      class DescribeUserDspmInfoListRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 过滤条件
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

      # DescribeUserDspmInfoList返回参数结构体
      class DescribeUserDspmInfoListResponse < TencentCloud::Common::AbstractModel
        # @param List: 账号dspm信息列表
        # @type List: Array
        # @param SelectedAssetNum: 已勾选数据库资产总数
        # @type SelectedAssetNum: Integer
        # @param Count: 账号总数
        # @type Count: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :SelectedAssetNum, :Count, :RequestId

        def initialize(list=nil, selectedassetnum=nil, count=nil, requestid=nil)
          @List = list
          @SelectedAssetNum = selectedassetnum
          @Count = count
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              userdspminfo_tmp = UserDspmInfo.new
              userdspminfo_tmp.deserialize(i)
              @List << userdspminfo_tmp
            end
          end
          @SelectedAssetNum = params['SelectedAssetNum']
          @Count = params['Count']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVULList请求参数结构体
      class DescribeVULListRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filter: 查询条件
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

      # DescribeVULList返回参数结构体
      class DescribeVULListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param Data: 漏洞列表
        # @type Data: Array
        # @param VULTypeLists: 漏洞类型列表
        # @type VULTypeLists: Array
        # @param RiskLevels: 风险等级列表
        # @type RiskLevels: Array
        # @param Tags: 标签
        # @type Tags: Array
        # @param ProductSupport: 产品支持情况
        # @type ProductSupport: Array
        # @param CheckStatus: 产品支持情况
        # @type CheckStatus: Array
        # @param AttackHeat: 攻击热度枚举
        # @type AttackHeat: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :VULTypeLists, :RiskLevels, :Tags, :ProductSupport, :CheckStatus, :AttackHeat, :RequestId

        def initialize(totalcount=nil, data=nil, vultypelists=nil, risklevels=nil, tags=nil, productsupport=nil, checkstatus=nil, attackheat=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @VULTypeLists = vultypelists
          @RiskLevels = risklevels
          @Tags = tags
          @ProductSupport = productsupport
          @CheckStatus = checkstatus
          @AttackHeat = attackheat
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              vulbaseinfo_tmp = VULBaseInfo.new
              vulbaseinfo_tmp.deserialize(i)
              @Data << vulbaseinfo_tmp
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
          unless params['RiskLevels'].nil?
            @RiskLevels = []
            params['RiskLevels'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @RiskLevels << filterdataobject_tmp
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
          unless params['ProductSupport'].nil?
            @ProductSupport = []
            params['ProductSupport'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @ProductSupport << filterdataobject_tmp
            end
          end
          unless params['CheckStatus'].nil?
            @CheckStatus = []
            params['CheckStatus'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @CheckStatus << filterdataobject_tmp
            end
          end
          unless params['AttackHeat'].nil?
            @AttackHeat = []
            params['AttackHeat'].each do |i|
              filterdataobject_tmp = FilterDataObject.new
              filterdataobject_tmp.deserialize(i)
              @AttackHeat << filterdataobject_tmp
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

      # DescribeVulRiskList请求参数结构体
      class DescribeVulRiskListRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Filters: 过滤内容
        # @type Filters: Array
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Order: 排序类型
        # @type Order: String
        # @param By: 排序字段
        # @type By: String
        # @param CloudAccountID: 云账号ID
        # @type CloudAccountID: String
        # @param Provider: 云厂商
        # @type Provider: String

        attr_accessor :MemberId, :Filters, :Limit, :Offset, :Order, :By, :CloudAccountID, :Provider

        def initialize(memberid=nil, filters=nil, limit=nil, offset=nil, order=nil, by=nil, cloudaccountid=nil, provider=nil)
          @MemberId = memberid
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @Order = order
          @By = by
          @CloudAccountID = cloudaccountid
          @Provider = provider
        end

        def deserialize(params)
          @MemberId = params['MemberId']
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
          @Order = params['Order']
          @By = params['By']
          @CloudAccountID = params['CloudAccountID']
          @Provider = params['Provider']
        end
      end

      # DescribeVulRiskList返回参数结构体
      class DescribeVulRiskListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 漏洞数量
        # @type TotalCount: Integer
        # @param VulRiskList: 漏洞列表
        # @type VulRiskList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :VulRiskList, :RequestId

        def initialize(totalcount=nil, vulrisklist=nil, requestid=nil)
          @TotalCount = totalcount
          @VulRiskList = vulrisklist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['VulRiskList'].nil?
            @VulRiskList = []
            params['VulRiskList'].each do |i|
              vulriskitem_tmp = VulRiskItem.new
              vulriskitem_tmp.deserialize(i)
              @VulRiskList << vulriskitem_tmp
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
        # @type Data: Array
        # @param LevelLists: 危险等级列表
        # @type LevelLists: Array
        # @param FromLists: 来源列表
        # @type FromLists: Array
        # @param VULTypeLists: 漏洞类型列表
        # @type VULTypeLists: Array
        # @param Tags: tag枚举
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
        # @type AssetId: Array
        # @param AssetName: 资产名
        # @type AssetName: Array
        # @param AssetType: 资产类型
        # @type AssetType: Array
        # @param Region: 地域
        # @type Region: Array
        # @param WAFStatus: Waf状态
        # @type WAFStatus: Integer
        # @param AssetCreateTime: 资产创建时间
        # @type AssetCreateTime: String
        # @param AppId: Appid
        # @type AppId: Integer
        # @param Uin: 账号id
        # @type Uin: String
        # @param NickName: 账号名称
        # @type NickName: String
        # @param IsCore: 是否核心
        # @type IsCore: Integer
        # @param IsCloud: 是否云上资产
        # @type IsCloud: Integer
        # @param Attack: 网络攻击
        # @type Attack: Integer
        # @param Access: 网络访问
        # @type Access: Integer
        # @param Intercept: 网络拦截
        # @type Intercept: Integer
        # @param InBandwidth: 入站峰值带宽
        # @type InBandwidth: String
        # @param OutBandwidth: 出站峰值带宽
        # @type OutBandwidth: String
        # @param InFlow: 入站累计流量
        # @type InFlow: String
        # @param OutFlow: 出站累计流量
        # @type OutFlow: String
        # @param LastScanTime: 最近扫描时间
        # @type LastScanTime: String
        # @param PortRisk: 端口风险
        # @type PortRisk: Integer
        # @param VulnerabilityRisk: 漏洞风险
        # @type VulnerabilityRisk: Integer
        # @param ConfigurationRisk: 配置风险
        # @type ConfigurationRisk: Integer
        # @param ScanTask: 扫描任务
        # @type ScanTask: Integer
        # @param SubDomain: 域名
        # @type SubDomain: String
        # @param SeverIp: 解析ip
        # @type SeverIp: Array
        # @param BotCount: bot攻击数量
        # @type BotCount: Integer
        # @param WeakPassword: 弱口令风险
        # @type WeakPassword: Integer
        # @param WebContentRisk: 内容风险
        # @type WebContentRisk: Integer
        # @param Tag: tag标签
        # @type Tag: Array
        # @param SourceType: 关联实例类型
        # @type SourceType: String
        # @param MemberId: memberId信息
        # @type MemberId: String
        # @param CCAttack: cc攻击
        # @type CCAttack: Integer
        # @param WebAttack: web攻击
        # @type WebAttack: Integer
        # @param ServiceRisk: 风险服务暴露数量
        # @type ServiceRisk: Integer
        # @param IsNewAsset: 是否新资产 1新
        # @type IsNewAsset: Integer
        # @param VerifyDomain: 待确认资产的随机三级域名
        # @type VerifyDomain: String
        # @param VerifyTXTRecord: 待确认资产的TXT记录内容
        # @type VerifyTXTRecord: String
        # @param VerifyStatus: 待确认资产的认证状态，0-待认证，1-认证成功，2-认证中，3-txt认证失败，4-人工认证失败
        # @type VerifyStatus: Integer
        # @param BotAccessCount: bot访问数量
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

      # DownloadDspmExportLog请求参数结构体
      class DownloadDspmExportLogRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param TaskId: 要下载的导出任务ID
        # @type TaskId: Integer

        attr_accessor :MemberId, :TaskId

        def initialize(memberid=nil, taskid=nil)
          @MemberId = memberid
          @TaskId = taskid
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          @TaskId = params['TaskId']
        end
      end

      # DownloadDspmExportLog返回参数结构体
      class DownloadDspmExportLogResponse < TencentCloud::Common::AbstractModel
        # @param Url: 下载URL
        # @type Url: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Url, :RequestId

        def initialize(url=nil, requestid=nil)
          @Url = url
          @RequestId = requestid
        end

        def deserialize(params)
          @Url = params['Url']
          @RequestId = params['RequestId']
        end
      end

      # Dspm访问记录
      class DspmAccessRecord < TencentCloud::Common::AbstractModel
        # @param Asset: 资产信息
        # @type Asset: :class:`Tencentcloud::Csip.v20221121.models.DspmDbAsset`
        # @param Accounts: 账号
        # @type Accounts: Array
        # @param SourceIpList: 来源ip信息
        # @type SourceIpList: Array
        # @param RecordTime: 记录时间
        # @type RecordTime: String
        # @param LoginSuccessCount: 登录成功次数
        # @type LoginSuccessCount: Integer
        # @param LoginFailedCount: 登录失败次数
        # @type LoginFailedCount: Integer

        attr_accessor :Asset, :Accounts, :SourceIpList, :RecordTime, :LoginSuccessCount, :LoginFailedCount

        def initialize(asset=nil, accounts=nil, sourceiplist=nil, recordtime=nil, loginsuccesscount=nil, loginfailedcount=nil)
          @Asset = asset
          @Accounts = accounts
          @SourceIpList = sourceiplist
          @RecordTime = recordtime
          @LoginSuccessCount = loginsuccesscount
          @LoginFailedCount = loginfailedcount
        end

        def deserialize(params)
          unless params['Asset'].nil?
            @Asset = DspmDbAsset.new
            @Asset.deserialize(params['Asset'])
          end
          unless params['Accounts'].nil?
            @Accounts = []
            params['Accounts'].each do |i|
              dspmassetaccount_tmp = DspmAssetAccount.new
              dspmassetaccount_tmp.deserialize(i)
              @Accounts << dspmassetaccount_tmp
            end
          end
          unless params['SourceIpList'].nil?
            @SourceIpList = []
            params['SourceIpList'].each do |i|
              dspmip_tmp = DspmIp.new
              dspmip_tmp.deserialize(i)
              @SourceIpList << dspmip_tmp
            end
          end
          @RecordTime = params['RecordTime']
          @LoginSuccessCount = params['LoginSuccessCount']
          @LoginFailedCount = params['LoginFailedCount']
        end
      end

      # Dspm访问管理记录Id
      class DspmAccessRecordId < TencentCloud::Common::AbstractModel
        # @param SourceIp: 来源ip
        # @type SourceIp: String
        # @param AssetId: 资产列表
        # @type AssetId: String
        # @param Region: 资产所在地域
        # @type Region: String
        # @param Account: 资产账号
        # @type Account: String
        # @param Host: 主机地址
        # @type Host: String
        # @param RecordTime: 记录时间
        # @type RecordTime: String

        attr_accessor :SourceIp, :AssetId, :Region, :Account, :Host, :RecordTime

        def initialize(sourceip=nil, assetid=nil, region=nil, account=nil, host=nil, recordtime=nil)
          @SourceIp = sourceip
          @AssetId = assetid
          @Region = region
          @Account = account
          @Host = host
          @RecordTime = recordtime
        end

        def deserialize(params)
          @SourceIp = params['SourceIp']
          @AssetId = params['AssetId']
          @Region = params['Region']
          @Account = params['Account']
          @Host = params['Host']
          @RecordTime = params['RecordTime']
        end
      end

      # Dspm 账号统计数
      class DspmAccountCount < TencentCloud::Common::AbstractModel
        # @param UinAccountCount: 云账号个数
        # @type UinAccountCount: Integer
        # @param PersonCount: 访客账号个数
        # @type PersonCount: Integer
        # @param UncontrolledAccountCount: 未管控账号个数
        # @type UncontrolledAccountCount: Integer
        # @param TotalAccountCount: 总账号个数
        # @type TotalAccountCount: Integer

        attr_accessor :UinAccountCount, :PersonCount, :UncontrolledAccountCount, :TotalAccountCount

        def initialize(uinaccountcount=nil, personcount=nil, uncontrolledaccountcount=nil, totalaccountcount=nil)
          @UinAccountCount = uinaccountcount
          @PersonCount = personcount
          @UncontrolledAccountCount = uncontrolledaccountcount
          @TotalAccountCount = totalaccountcount
        end

        def deserialize(params)
          @UinAccountCount = params['UinAccountCount']
          @PersonCount = params['PersonCount']
          @UncontrolledAccountCount = params['UncontrolledAccountCount']
          @TotalAccountCount = params['TotalAccountCount']
        end
      end

      # 申请单信息
      class DspmApplyOrder < TencentCloud::Common::AbstractModel
        # @param OrderId: 申请单id
        # @type OrderId: String
        # @param IdentifyId: 身份id。
        # @type IdentifyId: String
        # @param ApplicantUin: 申请人账号uin
        # @type ApplicantUin: :class:`Tencentcloud::Csip.v20221121.models.DspmUinUser`
        # @param AssetId: 资产id
        # @type AssetId: String
        # @param AssetName: 资产名
        # @type AssetName: String
        # @param Region: 资产所属地域
        # @type Region: String
        # @param ApplyType: 申请类型。0-关联身份 1-编辑身份 2-创建临时身份
        # @type ApplyType: Integer
        # @param Privilege: 申请权限。
        # @type Privilege: :class:`Tencentcloud::Csip.v20221121.models.DspmDbAccountPrivilege`
        # @param ValidatePeriod: 从审批完成后开始计算的访问权限失效时间，临时账号有效。单位毫秒。
        # @type ValidatePeriod: Integer
        # @param Reason: 申请原因。
        # @type Reason: String
        # @param ApproverSteps: 审批步骤
        # @type ApproverSteps: Array
        # @param ManagerType: 管理类型。0-普通成员 1-管理员
        # @type ManagerType: Integer
        # @param Person: 个人用户信息
        # @type Person: :class:`Tencentcloud::Csip.v20221121.models.DspmPersonUser`
        # @param SubjectUser: 云账号用户信息
        # @type SubjectUser: :class:`Tencentcloud::Csip.v20221121.models.DspmUinUser`
        # @param Status: 审批状态。 0-未审批 1-通过 2-拒绝
        # @type Status: Integer
        # @param CreateTime: 申请单创建时间。
        # @type CreateTime: String

        attr_accessor :OrderId, :IdentifyId, :ApplicantUin, :AssetId, :AssetName, :Region, :ApplyType, :Privilege, :ValidatePeriod, :Reason, :ApproverSteps, :ManagerType, :Person, :SubjectUser, :Status, :CreateTime

        def initialize(orderid=nil, identifyid=nil, applicantuin=nil, assetid=nil, assetname=nil, region=nil, applytype=nil, privilege=nil, validateperiod=nil, reason=nil, approversteps=nil, managertype=nil, person=nil, subjectuser=nil, status=nil, createtime=nil)
          @OrderId = orderid
          @IdentifyId = identifyid
          @ApplicantUin = applicantuin
          @AssetId = assetid
          @AssetName = assetname
          @Region = region
          @ApplyType = applytype
          @Privilege = privilege
          @ValidatePeriod = validateperiod
          @Reason = reason
          @ApproverSteps = approversteps
          @ManagerType = managertype
          @Person = person
          @SubjectUser = subjectuser
          @Status = status
          @CreateTime = createtime
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @IdentifyId = params['IdentifyId']
          unless params['ApplicantUin'].nil?
            @ApplicantUin = DspmUinUser.new
            @ApplicantUin.deserialize(params['ApplicantUin'])
          end
          @AssetId = params['AssetId']
          @AssetName = params['AssetName']
          @Region = params['Region']
          @ApplyType = params['ApplyType']
          unless params['Privilege'].nil?
            @Privilege = DspmDbAccountPrivilege.new
            @Privilege.deserialize(params['Privilege'])
          end
          @ValidatePeriod = params['ValidatePeriod']
          @Reason = params['Reason']
          unless params['ApproverSteps'].nil?
            @ApproverSteps = []
            params['ApproverSteps'].each do |i|
              dspmapproverstep_tmp = DspmApproverStep.new
              dspmapproverstep_tmp.deserialize(i)
              @ApproverSteps << dspmapproverstep_tmp
            end
          end
          @ManagerType = params['ManagerType']
          unless params['Person'].nil?
            @Person = DspmPersonUser.new
            @Person.deserialize(params['Person'])
          end
          unless params['SubjectUser'].nil?
            @SubjectUser = DspmUinUser.new
            @SubjectUser.deserialize(params['SubjectUser'])
          end
          @Status = params['Status']
          @CreateTime = params['CreateTime']
        end
      end

      # 审批单信息
      class DspmApproverOrder < TencentCloud::Common::AbstractModel
        # @param OrderId: 对应申请单id
        # @type OrderId: String
        # @param IdentifyId: 身份id。
        # @type IdentifyId: String
        # @param ApplicantUin: 申请人账号uin
        # @type ApplicantUin: :class:`Tencentcloud::Csip.v20221121.models.DspmUinUser`
        # @param AssetId: 资产id
        # @type AssetId: String
        # @param AssetName: 资产名
        # @type AssetName: String
        # @param ApplyType: 申请类型。0-关联身份 1-编辑身份 2-创建临时身份
        # @type ApplyType: Integer
        # @param Privilege: 申请权限
        # @type Privilege: :class:`Tencentcloud::Csip.v20221121.models.DspmDbAccountPrivilege`
        # @param ValidatePeriod: 从审批完成后开始计算的访问权限失效时间，临时账号有效。单位毫秒。
        # @type ValidatePeriod: Integer
        # @param Reason: 申请原因
        # @type Reason: String
        # @param ManagerType: 管理类型。0-普通成员 1-管理员
        # @type ManagerType: Integer
        # @param Person: 个人用户信息
        # @type Person: :class:`Tencentcloud::Csip.v20221121.models.DspmPersonUser`
        # @param SubjectUser: 云账号用户信息
        # @type SubjectUser: :class:`Tencentcloud::Csip.v20221121.models.DspmUinUser`
        # @param CreateTime: 对应申请单创建时间。
        # @type CreateTime: String

        attr_accessor :OrderId, :IdentifyId, :ApplicantUin, :AssetId, :AssetName, :ApplyType, :Privilege, :ValidatePeriod, :Reason, :ManagerType, :Person, :SubjectUser, :CreateTime

        def initialize(orderid=nil, identifyid=nil, applicantuin=nil, assetid=nil, assetname=nil, applytype=nil, privilege=nil, validateperiod=nil, reason=nil, managertype=nil, person=nil, subjectuser=nil, createtime=nil)
          @OrderId = orderid
          @IdentifyId = identifyid
          @ApplicantUin = applicantuin
          @AssetId = assetid
          @AssetName = assetname
          @ApplyType = applytype
          @Privilege = privilege
          @ValidatePeriod = validateperiod
          @Reason = reason
          @ManagerType = managertype
          @Person = person
          @SubjectUser = subjectuser
          @CreateTime = createtime
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @IdentifyId = params['IdentifyId']
          unless params['ApplicantUin'].nil?
            @ApplicantUin = DspmUinUser.new
            @ApplicantUin.deserialize(params['ApplicantUin'])
          end
          @AssetId = params['AssetId']
          @AssetName = params['AssetName']
          @ApplyType = params['ApplyType']
          unless params['Privilege'].nil?
            @Privilege = DspmDbAccountPrivilege.new
            @Privilege.deserialize(params['Privilege'])
          end
          @ValidatePeriod = params['ValidatePeriod']
          @Reason = params['Reason']
          @ManagerType = params['ManagerType']
          unless params['Person'].nil?
            @Person = DspmPersonUser.new
            @Person.deserialize(params['Person'])
          end
          unless params['SubjectUser'].nil?
            @SubjectUser = DspmUinUser.new
            @SubjectUser.deserialize(params['SubjectUser'])
          end
          @CreateTime = params['CreateTime']
        end
      end

      # 审批步骤
      class DspmApproverStep < TencentCloud::Common::AbstractModel
        # @param ApproverUinSet: 审批人列表
        # @type ApproverUinSet: Array
        # @param ApproverUin: 审批人
        # @type ApproverUin: String
        # @param Status: 审批状态  0-未审批 1-通过 2-拒绝
        # @type Status: Integer
        # @param Comment: 审批意见
        # @type Comment: String
        # @param ApproveTime: 审批时间。
        # @type ApproveTime: String

        attr_accessor :ApproverUinSet, :ApproverUin, :Status, :Comment, :ApproveTime

        def initialize(approveruinset=nil, approveruin=nil, status=nil, comment=nil, approvetime=nil)
          @ApproverUinSet = approveruinset
          @ApproverUin = approveruin
          @Status = status
          @Comment = comment
          @ApproveTime = approvetime
        end

        def deserialize(params)
          unless params['ApproverUinSet'].nil?
            @ApproverUinSet = []
            params['ApproverUinSet'].each do |i|
              dspmuinuser_tmp = DspmUinUser.new
              dspmuinuser_tmp.deserialize(i)
              @ApproverUinSet << dspmuinuser_tmp
            end
          end
          @ApproverUin = params['ApproverUin']
          @Status = params['Status']
          @Comment = params['Comment']
          @ApproveTime = params['ApproveTime']
        end
      end

      # Dspm地域信息
      class DspmArea < TencentCloud::Common::AbstractModel
        # @param Country: 国家
        # @type Country: String
        # @param Province: 省
        # @type Province: String
        # @param City: 市
        # @type City: String

        attr_accessor :Country, :Province, :City

        def initialize(country=nil, province=nil, city=nil)
          @Country = country
          @Province = province
          @City = city
        end

        def deserialize(params)
          @Country = params['Country']
          @Province = params['Province']
          @City = params['City']
        end
      end

      # Dspm资产访问拓扑
      class DspmAssetAccessTopologyItem < TencentCloud::Common::AbstractModel
        # @param AssetId: 资产id
        # @type AssetId: String
        # @param AssetType: 资产类型
        # @type AssetType: String
        # @param AssetName: 资产名
        # @type AssetName: String
        # @param AssetAccount: 资产账号
        # @type AssetAccount: String
        # @param Host: 主机地址
        # @type Host: String
        # @param AccountType: 账号类型
        # @type AccountType: Integer
        # @param AssetIp: 资产地址
        # @type AssetIp: String
        # @param SourceIp: 访问来源ip地址
        # @type SourceIp: String
        # @param SourceIpType: 访问来源ip类型
        # @type SourceIpType: String
        # @param AccessFrequency: 访问频率。次/天
        # @type AccessFrequency: :class:`Tencentcloud::Csip.v20221121.models.DspmFrequency`
        # @param ExecSQLFrequency: 执行SQL频率。条/小时。
        # @type ExecSQLFrequency: :class:`Tencentcloud::Csip.v20221121.models.DspmFrequency`
        # @param AccessBeginTime: 访问起始时间
        # @type AccessBeginTime: String
        # @param AccessEndTime: 访问结束时间
        # @type AccessEndTime: String
        # @param AccountRisk: 账号风险数
        # @type AccountRisk: Integer
        # @param AssetRisk: 资产风险数
        # @type AssetRisk: Integer
        # @param Region: 所属地域
        # @type Region: String
        # @param IdentifyType: 身份类型。非身份账号为null。0-未定义 2-长期身份 3-临时身份
        # @type IdentifyType: Integer
        # @param OwnerUin: 所属云账号uin用户。
        # @type OwnerUin: :class:`Tencentcloud::Csip.v20221121.models.DspmUinUser`
        # @param Person: 所属个人用户信息。
        # @type Person: :class:`Tencentcloud::Csip.v20221121.models.DspmPersonUser`
        # @param AccountAlarm: 账号告警数
        # @type AccountAlarm: Integer
        # @param AssetAlarm: 资产告警数
        # @type AssetAlarm: Integer

        attr_accessor :AssetId, :AssetType, :AssetName, :AssetAccount, :Host, :AccountType, :AssetIp, :SourceIp, :SourceIpType, :AccessFrequency, :ExecSQLFrequency, :AccessBeginTime, :AccessEndTime, :AccountRisk, :AssetRisk, :Region, :IdentifyType, :OwnerUin, :Person, :AccountAlarm, :AssetAlarm

        def initialize(assetid=nil, assettype=nil, assetname=nil, assetaccount=nil, host=nil, accounttype=nil, assetip=nil, sourceip=nil, sourceiptype=nil, accessfrequency=nil, execsqlfrequency=nil, accessbegintime=nil, accessendtime=nil, accountrisk=nil, assetrisk=nil, region=nil, identifytype=nil, owneruin=nil, person=nil, accountalarm=nil, assetalarm=nil)
          @AssetId = assetid
          @AssetType = assettype
          @AssetName = assetname
          @AssetAccount = assetaccount
          @Host = host
          @AccountType = accounttype
          @AssetIp = assetip
          @SourceIp = sourceip
          @SourceIpType = sourceiptype
          @AccessFrequency = accessfrequency
          @ExecSQLFrequency = execsqlfrequency
          @AccessBeginTime = accessbegintime
          @AccessEndTime = accessendtime
          @AccountRisk = accountrisk
          @AssetRisk = assetrisk
          @Region = region
          @IdentifyType = identifytype
          @OwnerUin = owneruin
          @Person = person
          @AccountAlarm = accountalarm
          @AssetAlarm = assetalarm
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @AssetType = params['AssetType']
          @AssetName = params['AssetName']
          @AssetAccount = params['AssetAccount']
          @Host = params['Host']
          @AccountType = params['AccountType']
          @AssetIp = params['AssetIp']
          @SourceIp = params['SourceIp']
          @SourceIpType = params['SourceIpType']
          unless params['AccessFrequency'].nil?
            @AccessFrequency = DspmFrequency.new
            @AccessFrequency.deserialize(params['AccessFrequency'])
          end
          unless params['ExecSQLFrequency'].nil?
            @ExecSQLFrequency = DspmFrequency.new
            @ExecSQLFrequency.deserialize(params['ExecSQLFrequency'])
          end
          @AccessBeginTime = params['AccessBeginTime']
          @AccessEndTime = params['AccessEndTime']
          @AccountRisk = params['AccountRisk']
          @AssetRisk = params['AssetRisk']
          @Region = params['Region']
          @IdentifyType = params['IdentifyType']
          unless params['OwnerUin'].nil?
            @OwnerUin = DspmUinUser.new
            @OwnerUin.deserialize(params['OwnerUin'])
          end
          unless params['Person'].nil?
            @Person = DspmPersonUser.new
            @Person.deserialize(params['Person'])
          end
          @AccountAlarm = params['AccountAlarm']
          @AssetAlarm = params['AssetAlarm']
        end
      end

      # 资产账号信息
      class DspmAssetAccount < TencentCloud::Common::AbstractModel
        # @param Account: 账号名
        # @type Account: String
        # @param Host: 主机地址
        # @type Host: String
        # @param AccountType: 账号类型。 0-未定义 1-服务账号 2-个人账号 3-临时账号
        # @type AccountType: Integer
        # @param Subject: 所属对象。uin或个人id
        # @type Subject: String
        # @param Privilege: 权限信息
        # @type Privilege: :class:`Tencentcloud::Csip.v20221121.models.DspmDbAccountPrivilege`
        # @param Status: 状态。 0-不活跃 1-活跃 2-已删除
        # @type Status: Integer
        # @param CreateTime: 账号创建时间。
        # @type CreateTime: String
        # @param ValidateFrom: 访问权限生效时间。
        # @type ValidateFrom: String
        # @param ValidateTo: 访问权限失效时间。
        # @type ValidateTo: String
        # @param Remark: 备注
        # @type Remark: String
        # @param AssetId: 资产id
        # @type AssetId: String
        # @param IsNewAccount: 是否新账号
        # @type IsNewAccount: Integer
        # @param IdentifyType: 身份类型。非身份账号为null。0-未定义 2-长期身份 3-临时身份
        # @type IdentifyType: Integer
        # @param OwnerUin: 所属云账号uin用户。
        # @type OwnerUin: :class:`Tencentcloud::Csip.v20221121.models.DspmUinUser`
        # @param Person: 所属个人用户信息。
        # @type Person: :class:`Tencentcloud::Csip.v20221121.models.DspmPersonUser`
        # @param RiskCount: 风险统计信息
        # @type RiskCount: :class:`Tencentcloud::Csip.v20221121.models.DspmRiskCount`
        # @param PresetPrivilege: 预设权限。
        # @type PresetPrivilege: :class:`Tencentcloud::Csip.v20221121.models.DspmDbAccountPrivilege`

        attr_accessor :Account, :Host, :AccountType, :Subject, :Privilege, :Status, :CreateTime, :ValidateFrom, :ValidateTo, :Remark, :AssetId, :IsNewAccount, :IdentifyType, :OwnerUin, :Person, :RiskCount, :PresetPrivilege

        def initialize(account=nil, host=nil, accounttype=nil, subject=nil, privilege=nil, status=nil, createtime=nil, validatefrom=nil, validateto=nil, remark=nil, assetid=nil, isnewaccount=nil, identifytype=nil, owneruin=nil, person=nil, riskcount=nil, presetprivilege=nil)
          @Account = account
          @Host = host
          @AccountType = accounttype
          @Subject = subject
          @Privilege = privilege
          @Status = status
          @CreateTime = createtime
          @ValidateFrom = validatefrom
          @ValidateTo = validateto
          @Remark = remark
          @AssetId = assetid
          @IsNewAccount = isnewaccount
          @IdentifyType = identifytype
          @OwnerUin = owneruin
          @Person = person
          @RiskCount = riskcount
          @PresetPrivilege = presetprivilege
        end

        def deserialize(params)
          @Account = params['Account']
          @Host = params['Host']
          @AccountType = params['AccountType']
          @Subject = params['Subject']
          unless params['Privilege'].nil?
            @Privilege = DspmDbAccountPrivilege.new
            @Privilege.deserialize(params['Privilege'])
          end
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @ValidateFrom = params['ValidateFrom']
          @ValidateTo = params['ValidateTo']
          @Remark = params['Remark']
          @AssetId = params['AssetId']
          @IsNewAccount = params['IsNewAccount']
          @IdentifyType = params['IdentifyType']
          unless params['OwnerUin'].nil?
            @OwnerUin = DspmUinUser.new
            @OwnerUin.deserialize(params['OwnerUin'])
          end
          unless params['Person'].nil?
            @Person = DspmPersonUser.new
            @Person.deserialize(params['Person'])
          end
          unless params['RiskCount'].nil?
            @RiskCount = DspmRiskCount.new
            @RiskCount.deserialize(params['RiskCount'])
          end
          unless params['PresetPrivilege'].nil?
            @PresetPrivilege = DspmDbAccountPrivilege.new
            @PresetPrivilege.deserialize(params['PresetPrivilege'])
          end
        end
      end

      # 资产账号身份信息
      class DspmAssetAccountIdentify < TencentCloud::Common::AbstractModel
        # @param AssetId: 资产id
        # @type AssetId: String
        # @param OwnerUin: 所属云账号uin用户。
        # @type OwnerUin: :class:`Tencentcloud::Csip.v20221121.models.DspmUinUser`
        # @param IsManager: 是否管理员
        # @type IsManager: Integer
        # @param Host: 主机地址
        # @type Host: String
        # @param AccountType: 账号类型。 0-未定义 1-服务账号 2-个人账号 3-临时账号
        # @type AccountType: Integer
        # @param Privilege: 权限信息
        # @type Privilege: :class:`Tencentcloud::Csip.v20221121.models.DspmDbAccountPrivilege`
        # @param Status: 活跃状态。 0-不活跃 1-活跃
        # @type Status: Integer
        # @param CreateTime: 账号创建时间。
        # @type CreateTime: String
        # @param ValidateFrom: 访问权限生效时间。
        # @type ValidateFrom: String
        # @param ValidateTo: 访问权限失效时间。
        # @type ValidateTo: String
        # @param Remark: 备注
        # @type Remark: String
        # @param PersonApplyCount: 访客权限申请次数
        # @type PersonApplyCount: Integer
        # @param AssetName: 资产名
        # @type AssetName: String
        # @param AssetType: 资产类型
        # @type AssetType: String
        # @param Region: 所属地域
        # @type Region: String
        # @param RiskCount: 风险统计信息
        # @type RiskCount: :class:`Tencentcloud::Csip.v20221121.models.DspmRiskCount`
        # @param IdentifyType: 身份类型。非身份账号为null。0-未定义 2-长期身份 3-临时身份
        # @type IdentifyType: Integer
        # @param Person: 所属个人用户信息。
        # @type Person: :class:`Tencentcloud::Csip.v20221121.models.DspmPersonUser`
        # @param CreatorUin: 创建者账号uin用户。
        # @type CreatorUin: :class:`Tencentcloud::Csip.v20221121.models.DspmUinUser`
        # @param PresetPrivilege: 预设权限。
        # @type PresetPrivilege: :class:`Tencentcloud::Csip.v20221121.models.DspmDbAccountPrivilege`
        # @param PrivateIp: 内网访问地址，如果有多个，使用';'分割
        # @type PrivateIp: String
        # @param IdentifyId: 身份id
        # @type IdentifyId: String
        # @param AppId: 资产所属账号app id
        # @type AppId: Integer
        # @param NickName: 账号昵称
        # @type NickName: String
        # @param Uin: 资产所属账号uin
        # @type Uin: String

        attr_accessor :AssetId, :OwnerUin, :IsManager, :Host, :AccountType, :Privilege, :Status, :CreateTime, :ValidateFrom, :ValidateTo, :Remark, :PersonApplyCount, :AssetName, :AssetType, :Region, :RiskCount, :IdentifyType, :Person, :CreatorUin, :PresetPrivilege, :PrivateIp, :IdentifyId, :AppId, :NickName, :Uin

        def initialize(assetid=nil, owneruin=nil, ismanager=nil, host=nil, accounttype=nil, privilege=nil, status=nil, createtime=nil, validatefrom=nil, validateto=nil, remark=nil, personapplycount=nil, assetname=nil, assettype=nil, region=nil, riskcount=nil, identifytype=nil, person=nil, creatoruin=nil, presetprivilege=nil, privateip=nil, identifyid=nil, appid=nil, nickname=nil, uin=nil)
          @AssetId = assetid
          @OwnerUin = owneruin
          @IsManager = ismanager
          @Host = host
          @AccountType = accounttype
          @Privilege = privilege
          @Status = status
          @CreateTime = createtime
          @ValidateFrom = validatefrom
          @ValidateTo = validateto
          @Remark = remark
          @PersonApplyCount = personapplycount
          @AssetName = assetname
          @AssetType = assettype
          @Region = region
          @RiskCount = riskcount
          @IdentifyType = identifytype
          @Person = person
          @CreatorUin = creatoruin
          @PresetPrivilege = presetprivilege
          @PrivateIp = privateip
          @IdentifyId = identifyid
          @AppId = appid
          @NickName = nickname
          @Uin = uin
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          unless params['OwnerUin'].nil?
            @OwnerUin = DspmUinUser.new
            @OwnerUin.deserialize(params['OwnerUin'])
          end
          @IsManager = params['IsManager']
          @Host = params['Host']
          @AccountType = params['AccountType']
          unless params['Privilege'].nil?
            @Privilege = DspmDbAccountPrivilege.new
            @Privilege.deserialize(params['Privilege'])
          end
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @ValidateFrom = params['ValidateFrom']
          @ValidateTo = params['ValidateTo']
          @Remark = params['Remark']
          @PersonApplyCount = params['PersonApplyCount']
          @AssetName = params['AssetName']
          @AssetType = params['AssetType']
          @Region = params['Region']
          unless params['RiskCount'].nil?
            @RiskCount = DspmRiskCount.new
            @RiskCount.deserialize(params['RiskCount'])
          end
          @IdentifyType = params['IdentifyType']
          unless params['Person'].nil?
            @Person = DspmPersonUser.new
            @Person.deserialize(params['Person'])
          end
          unless params['CreatorUin'].nil?
            @CreatorUin = DspmUinUser.new
            @CreatorUin.deserialize(params['CreatorUin'])
          end
          unless params['PresetPrivilege'].nil?
            @PresetPrivilege = DspmDbAccountPrivilege.new
            @PresetPrivilege.deserialize(params['PresetPrivilege'])
          end
          @PrivateIp = params['PrivateIp']
          @IdentifyId = params['IdentifyId']
          @AppId = params['AppId']
          @NickName = params['NickName']
          @Uin = params['Uin']
        end
      end

      # Dspm 资产统计数
      class DspmAssetCount < TencentCloud::Common::AbstractModel
        # @param AssetCount: 资产个数
        # @type AssetCount: Integer
        # @param DangerRiskCount: 资产有危险风险的个数
        # @type DangerRiskCount: Integer
        # @param LowRiskCount: 资产有低风险的个数
        # @type LowRiskCount: Integer
        # @param RiskAssetCount: 有待处理风险的实例数
        # @type RiskAssetCount: Integer
        # @param AlarmAssetCount: 有待处理告警的实例数
        # @type AlarmAssetCount: Integer

        attr_accessor :AssetCount, :DangerRiskCount, :LowRiskCount, :RiskAssetCount, :AlarmAssetCount

        def initialize(assetcount=nil, dangerriskcount=nil, lowriskcount=nil, riskassetcount=nil, alarmassetcount=nil)
          @AssetCount = assetcount
          @DangerRiskCount = dangerriskcount
          @LowRiskCount = lowriskcount
          @RiskAssetCount = riskassetcount
          @AlarmAssetCount = alarmassetcount
        end

        def deserialize(params)
          @AssetCount = params['AssetCount']
          @DangerRiskCount = params['DangerRiskCount']
          @LowRiskCount = params['LowRiskCount']
          @RiskAssetCount = params['RiskAssetCount']
          @AlarmAssetCount = params['AlarmAssetCount']
        end
      end

      # dspm资产数据识别详情
      class DspmAssetDataScanDetail < TencentCloud::Common::AbstractModel
        # @param Status: 识别任务状态 0:未识别 1:识别中 2:识别终止 3:识别成功 4:识别失败
        # @type Status: Integer
        # @param StatusInfo: 识别任务状态 0:未识别 1:识别中 2:识别终止 3:识别成功 4:识别失败
        # @type StatusInfo: String
        # @param Progress: 识别进度
        # @type Progress: Float
        # @param LatestScanTime: 最近扫描时间
        # @type LatestScanTime: String
        # @param ErrorInfo: 识别失败信息
        # @type ErrorInfo: String
        # @param DbCount: 数据库数量
        # @type DbCount: Integer
        # @param CategoryIds: 分类id集合
        # @type CategoryIds: Array
        # @param CategoryNames: 分类名称集合
        # @type CategoryNames: Array
        # @param TaskConfig: 扫描任务配置
        # @type TaskConfig: :class:`Tencentcloud::Csip.v20221121.models.DspmSensitiveScanTaskConfig`
        # @param CategoryDetails: 识别结果分类详情
        # @type CategoryDetails: Array

        attr_accessor :Status, :StatusInfo, :Progress, :LatestScanTime, :ErrorInfo, :DbCount, :CategoryIds, :CategoryNames, :TaskConfig, :CategoryDetails

        def initialize(status=nil, statusinfo=nil, progress=nil, latestscantime=nil, errorinfo=nil, dbcount=nil, categoryids=nil, categorynames=nil, taskconfig=nil, categorydetails=nil)
          @Status = status
          @StatusInfo = statusinfo
          @Progress = progress
          @LatestScanTime = latestscantime
          @ErrorInfo = errorinfo
          @DbCount = dbcount
          @CategoryIds = categoryids
          @CategoryNames = categorynames
          @TaskConfig = taskconfig
          @CategoryDetails = categorydetails
        end

        def deserialize(params)
          @Status = params['Status']
          @StatusInfo = params['StatusInfo']
          @Progress = params['Progress']
          @LatestScanTime = params['LatestScanTime']
          @ErrorInfo = params['ErrorInfo']
          @DbCount = params['DbCount']
          @CategoryIds = params['CategoryIds']
          @CategoryNames = params['CategoryNames']
          unless params['TaskConfig'].nil?
            @TaskConfig = DspmSensitiveScanTaskConfig.new
            @TaskConfig.deserialize(params['TaskConfig'])
          end
          unless params['CategoryDetails'].nil?
            @CategoryDetails = []
            params['CategoryDetails'].each do |i|
              dspmidentifycategorydetail_tmp = DspmIdentifyCategoryDetail.new
              dspmidentifycategorydetail_tmp.deserialize(i)
              @CategoryDetails << dspmidentifycategorydetail_tmp
            end
          end
        end
      end

      # dspm资产数据库信息
      class DspmAssetDatabaseInfo < TencentCloud::Common::AbstractModel
        # @param AssetId: 资产实例id
        # @type AssetId: String
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param TableCount: 总表数
        # @type TableCount: Integer
        # @param SensitiveTableCount: 敏感表数
        # @type SensitiveTableCount: Integer
        # @param RuleIds: 数据项id集合
        # @type RuleIds: Array
        # @param RuleNames: 数据项名称集合
        # @type RuleNames: Array
        # @param CategoryIds: 分类id集合
        # @type CategoryIds: Array
        # @param CategoryNames: 分类名称集合
        # @type CategoryNames: Array
        # @param CategoryDetails: 分类详情
        # @type CategoryDetails: Array

        attr_accessor :AssetId, :DbName, :TableCount, :SensitiveTableCount, :RuleIds, :RuleNames, :CategoryIds, :CategoryNames, :CategoryDetails

        def initialize(assetid=nil, dbname=nil, tablecount=nil, sensitivetablecount=nil, ruleids=nil, rulenames=nil, categoryids=nil, categorynames=nil, categorydetails=nil)
          @AssetId = assetid
          @DbName = dbname
          @TableCount = tablecount
          @SensitiveTableCount = sensitivetablecount
          @RuleIds = ruleids
          @RuleNames = rulenames
          @CategoryIds = categoryids
          @CategoryNames = categorynames
          @CategoryDetails = categorydetails
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @DbName = params['DbName']
          @TableCount = params['TableCount']
          @SensitiveTableCount = params['SensitiveTableCount']
          @RuleIds = params['RuleIds']
          @RuleNames = params['RuleNames']
          @CategoryIds = params['CategoryIds']
          @CategoryNames = params['CategoryNames']
          unless params['CategoryDetails'].nil?
            @CategoryDetails = []
            params['CategoryDetails'].each do |i|
              dspmidentifycategorydetail_tmp = DspmIdentifyCategoryDetail.new
              dspmidentifycategorydetail_tmp.deserialize(i)
              @CategoryDetails << dspmidentifycategorydetail_tmp
            end
          end
        end
      end

      # dspm资产字段信息
      class DspmAssetFieldInfo < TencentCloud::Common::AbstractModel
        # @param AssetId: 资产实例id
        # @type AssetId: String
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param SchemaName: schema名
        # @type SchemaName: String
        # @param TableName: 表名
        # @type TableName: String
        # @param FieldName: 字段名
        # @type FieldName: String
        # @param RuleIds: 数据项id集合
        # @type RuleIds: Array
        # @param RuleNames: 数据项名称集合
        # @type RuleNames: Array
        # @param CategoryIds: 分类id集合
        # @type CategoryIds: Array
        # @param CategoryNames: 分类名称集合
        # @type CategoryNames: Array

        attr_accessor :AssetId, :DbName, :SchemaName, :TableName, :FieldName, :RuleIds, :RuleNames, :CategoryIds, :CategoryNames

        def initialize(assetid=nil, dbname=nil, schemaname=nil, tablename=nil, fieldname=nil, ruleids=nil, rulenames=nil, categoryids=nil, categorynames=nil)
          @AssetId = assetid
          @DbName = dbname
          @SchemaName = schemaname
          @TableName = tablename
          @FieldName = fieldname
          @RuleIds = ruleids
          @RuleNames = rulenames
          @CategoryIds = categoryids
          @CategoryNames = categorynames
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @DbName = params['DbName']
          @SchemaName = params['SchemaName']
          @TableName = params['TableName']
          @FieldName = params['FieldName']
          @RuleIds = params['RuleIds']
          @RuleNames = params['RuleNames']
          @CategoryIds = params['CategoryIds']
          @CategoryNames = params['CategoryNames']
        end
      end

      # Dspm资产实例
      class DspmAssetInstance < TencentCloud::Common::AbstractModel
        # @param AssetId: 资产实例Id
        # @type AssetId: String
        # @param AssetType: 资产类型
        # @type AssetType: String
        # @param Region: 地域
        # @type Region: String
        # @param AppId: 资产所属账号app id
        # @type AppId: Integer

        attr_accessor :AssetId, :AssetType, :Region, :AppId

        def initialize(assetid=nil, assettype=nil, region=nil, appid=nil)
          @AssetId = assetid
          @AssetType = assettype
          @Region = region
          @AppId = appid
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @AssetType = params['AssetType']
          @Region = params['Region']
          @AppId = params['AppId']
        end
      end

      # Dspm资产安全分析状态
      class DspmAssetSecurityAnalyseStatus < TencentCloud::Common::AbstractModel
        # @param AppId: 资产所属账号app id
        # @type AppId: Integer
        # @param AssetId: 资产实例Id
        # @type AssetId: String
        # @param AssetType: 资产类型
        # @type AssetType: String
        # @param Region: 地域
        # @type Region: String
        # @param IdentifyScanSupported: 是否支持敏感数据识别。0 不支持；1 支持
        # @type IdentifyScanSupported: Integer
        # @param LogDeliverySupported: 是否支持日志投递。0-不支持 1-支持
        # @type LogDeliverySupported: Integer
        # @param SecurityAnalyseStatus: 安全分析状态（0-关闭 1-打开 2-开通中 3-关闭中）
        # @type SecurityAnalyseStatus: Integer
        # @param LogDeliveryStatus: 日志投递状态。
        # 0-投递关闭 1-投递打开 2-投递开通中 3-投递关闭中
        # @type LogDeliveryStatus: Integer
        # @param LogDeliveryDisableReason: 日志审计禁止开通的原因，可选值：VersionNotSupportLogSubscription, InstanceIsUpgrading,CdbRuleAuditEnabled
        # @type LogDeliveryDisableReason: String
        # @param TotalAuditLogs: 当前实例的总日志数
        # @type TotalAuditLogs: Integer
        # @param DataScanDetailRuleCount: 已识别敏感数据项个数
        # @type DataScanDetailRuleCount: Integer
        # @param OperationErrorMsg: 操作错误信息
        # @type OperationErrorMsg: String

        attr_accessor :AppId, :AssetId, :AssetType, :Region, :IdentifyScanSupported, :LogDeliverySupported, :SecurityAnalyseStatus, :LogDeliveryStatus, :LogDeliveryDisableReason, :TotalAuditLogs, :DataScanDetailRuleCount, :OperationErrorMsg

        def initialize(appid=nil, assetid=nil, assettype=nil, region=nil, identifyscansupported=nil, logdeliverysupported=nil, securityanalysestatus=nil, logdeliverystatus=nil, logdeliverydisablereason=nil, totalauditlogs=nil, datascandetailrulecount=nil, operationerrormsg=nil)
          @AppId = appid
          @AssetId = assetid
          @AssetType = assettype
          @Region = region
          @IdentifyScanSupported = identifyscansupported
          @LogDeliverySupported = logdeliverysupported
          @SecurityAnalyseStatus = securityanalysestatus
          @LogDeliveryStatus = logdeliverystatus
          @LogDeliveryDisableReason = logdeliverydisablereason
          @TotalAuditLogs = totalauditlogs
          @DataScanDetailRuleCount = datascandetailrulecount
          @OperationErrorMsg = operationerrormsg
        end

        def deserialize(params)
          @AppId = params['AppId']
          @AssetId = params['AssetId']
          @AssetType = params['AssetType']
          @Region = params['Region']
          @IdentifyScanSupported = params['IdentifyScanSupported']
          @LogDeliverySupported = params['LogDeliverySupported']
          @SecurityAnalyseStatus = params['SecurityAnalyseStatus']
          @LogDeliveryStatus = params['LogDeliveryStatus']
          @LogDeliveryDisableReason = params['LogDeliveryDisableReason']
          @TotalAuditLogs = params['TotalAuditLogs']
          @DataScanDetailRuleCount = params['DataScanDetailRuleCount']
          @OperationErrorMsg = params['OperationErrorMsg']
        end
      end

      # dspm资产表信息
      class DspmAssetTableInfo < TencentCloud::Common::AbstractModel
        # @param AssetId: 资产实例id
        # @type AssetId: String
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param SchemaName: schema名称
        # @type SchemaName: String
        # @param TableName: 表名
        # @type TableName: String
        # @param FieldCount: 字段数
        # @type FieldCount: Integer
        # @param SensitiveFieldCount: 敏感字段数
        # @type SensitiveFieldCount: Integer
        # @param RuleIds: 数据项id集合
        # @type RuleIds: Array
        # @param RuleNames: 数据项名称集合
        # @type RuleNames: Array
        # @param CategoryIds: 分类id集合
        # @type CategoryIds: Array
        # @param CategoryNames: 分类名称集合
        # @type CategoryNames: Array

        attr_accessor :AssetId, :DbName, :SchemaName, :TableName, :FieldCount, :SensitiveFieldCount, :RuleIds, :RuleNames, :CategoryIds, :CategoryNames

        def initialize(assetid=nil, dbname=nil, schemaname=nil, tablename=nil, fieldcount=nil, sensitivefieldcount=nil, ruleids=nil, rulenames=nil, categoryids=nil, categorynames=nil)
          @AssetId = assetid
          @DbName = dbname
          @SchemaName = schemaname
          @TableName = tablename
          @FieldCount = fieldcount
          @SensitiveFieldCount = sensitivefieldcount
          @RuleIds = ruleids
          @RuleNames = rulenames
          @CategoryIds = categoryids
          @CategoryNames = categorynames
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @DbName = params['DbName']
          @SchemaName = params['SchemaName']
          @TableName = params['TableName']
          @FieldCount = params['FieldCount']
          @SensitiveFieldCount = params['SensitiveFieldCount']
          @RuleIds = params['RuleIds']
          @RuleNames = params['RuleNames']
          @CategoryIds = params['CategoryIds']
          @CategoryNames = params['CategoryNames']
        end
      end

      # Dspm 资产按类型统计数
      class DspmAssetTypeCount < TencentCloud::Common::AbstractModel
        # @param AssetType: 资产类型
        # @type AssetType: String
        # @param OpenCount: 资产安全分析开启数
        # @type OpenCount: Integer
        # @param OpeningCount: 资产安全分析开启中数
        # @type OpeningCount: Integer
        # @param ClosingCount: 资产安全分析关闭中数
        # @type ClosingCount: Integer
        # @param CloseCount: 资产安全分析未开启数
        # @type CloseCount: Integer

        attr_accessor :AssetType, :OpenCount, :OpeningCount, :ClosingCount, :CloseCount

        def initialize(assettype=nil, opencount=nil, openingcount=nil, closingcount=nil, closecount=nil)
          @AssetType = assettype
          @OpenCount = opencount
          @OpeningCount = openingcount
          @ClosingCount = closingcount
          @CloseCount = closecount
        end

        def deserialize(params)
          @AssetType = params['AssetType']
          @OpenCount = params['OpenCount']
          @OpeningCount = params['OpeningCount']
          @ClosingCount = params['ClosingCount']
          @CloseCount = params['CloseCount']
        end
      end

      # 列权限信息
      class DspmColumnPrivilege < TencentCloud::Common::AbstractModel
        # @param Database: 数据库名
        # @type Database: String
        # @param Table: 数据库表名
        # @type Table: String
        # @param Column: 数据库列名
        # @type Column: String
        # @param Privileges: 权限信息
        # @type Privileges: Array

        attr_accessor :Database, :Table, :Column, :Privileges

        def initialize(database=nil, table=nil, column=nil, privileges=nil)
          @Database = database
          @Table = table
          @Column = column
          @Privileges = privileges
        end

        def deserialize(params)
          @Database = params['Database']
          @Table = params['Table']
          @Column = params['Column']
          @Privileges = params['Privileges']
        end
      end

      # 数据库权限
      class DspmDatabasePrivilege < TencentCloud::Common::AbstractModel
        # @param Privileges: 权限信息
        # @type Privileges: Array
        # @param Database: 数据库名
        # @type Database: String

        attr_accessor :Privileges, :Database

        def initialize(privileges=nil, database=nil)
          @Privileges = privileges
          @Database = database
        end

        def deserialize(params)
          @Privileges = params['Privileges']
          @Database = params['Database']
        end
      end

      # 数据库账号权限信息
      class DspmDbAccountPrivilege < TencentCloud::Common::AbstractModel
        # @param UseDefaultPrivilege: 使用默认权限。0-未使用；1-只读权限，即SELECT权限；2-全部权限，即global级别全部权限。
        # @type UseDefaultPrivilege: Integer
        # @param GlobalPrivileges: 全局权限数组。
        # @type GlobalPrivileges: Array
        # @param DatabasePrivilegesList: 数据库权限数组。
        # @type DatabasePrivilegesList: Array
        # @param TablePrivileges: 数据库中的表权限数组。
        # @type TablePrivileges: Array
        # @param ColumnPrivileges: 数据库表中的列权限数组。
        # @type ColumnPrivileges: Array

        attr_accessor :UseDefaultPrivilege, :GlobalPrivileges, :DatabasePrivilegesList, :TablePrivileges, :ColumnPrivileges

        def initialize(usedefaultprivilege=nil, globalprivileges=nil, databaseprivilegeslist=nil, tableprivileges=nil, columnprivileges=nil)
          @UseDefaultPrivilege = usedefaultprivilege
          @GlobalPrivileges = globalprivileges
          @DatabasePrivilegesList = databaseprivilegeslist
          @TablePrivileges = tableprivileges
          @ColumnPrivileges = columnprivileges
        end

        def deserialize(params)
          @UseDefaultPrivilege = params['UseDefaultPrivilege']
          @GlobalPrivileges = params['GlobalPrivileges']
          unless params['DatabasePrivilegesList'].nil?
            @DatabasePrivilegesList = []
            params['DatabasePrivilegesList'].each do |i|
              dspmdatabaseprivilege_tmp = DspmDatabasePrivilege.new
              dspmdatabaseprivilege_tmp.deserialize(i)
              @DatabasePrivilegesList << dspmdatabaseprivilege_tmp
            end
          end
          unless params['TablePrivileges'].nil?
            @TablePrivileges = []
            params['TablePrivileges'].each do |i|
              dspmtableprivilege_tmp = DspmTablePrivilege.new
              dspmtableprivilege_tmp.deserialize(i)
              @TablePrivileges << dspmtableprivilege_tmp
            end
          end
          unless params['ColumnPrivileges'].nil?
            @ColumnPrivileges = []
            params['ColumnPrivileges'].each do |i|
              dspmcolumnprivilege_tmp = DspmColumnPrivilege.new
              dspmcolumnprivilege_tmp.deserialize(i)
              @ColumnPrivileges << dspmcolumnprivilege_tmp
            end
          end
        end
      end

      # 数据库资产
      class DspmDbAsset < TencentCloud::Common::AbstractModel
        # @param AssetId: 资产实例Id
        # @type AssetId: String
        # @param AssetType: 资产类型
        # @type AssetType: String
        # @param Name:  资产名
        # @type Name: String
        # @param AccountCount: 账号数
        # @type AccountCount: Integer
        # @param PublicIp: 公网访问地址，如果有多个，使用';'分割
        # @type PublicIp: String
        # @param PrivateIp: 内网访问地址，如果有多个，使用';'分割
        # @type PrivateIp: String
        # @param WanDomain: 广域网域名地址，如果有多个，使用';'分割
        # @type WanDomain: String
        # @param Region: 地域
        # @type Region: String
        # @param VpcId: 资产所在vpc的vpcid
        # @type VpcId: String
        # @param VpcName: 资产所在vpc的vpc名
        # @type VpcName: String
        # @param SubnetId: 资产所在vpc子网的subnetid
        # @type SubnetId: String
        # @param SubnetName: 资产所在vpc子网名
        # @type SubnetName: String
        # @param Status: 实例状态
        # @type Status: Integer
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param Manager: 管理者信息。
        # @type Manager: Array
        # @param BindIdentify: 是否绑定身份。0-未绑定 1-已绑定
        # @type BindIdentify: Integer
        # @param IsManager: 是否管理员
        # @type IsManager: Integer
        # @param RiskCount: 风险统计信息
        # @type RiskCount: :class:`Tencentcloud::Csip.v20221121.models.DspmRiskCount`
        # @param SafetyAdvice: 安全建议。
        # Resolve 立即解决
        # Reinforcement 加固
        # None 暂无异常
        # @type SafetyAdvice: String
        # @param LogDeliveryStatus: 日志投递状态。
        # 0-投递关闭 1-投递打开 2-投递开通中 3-投递关闭中
        # @type LogDeliveryStatus: Integer
        # @param LogDeliverySupported: 是否支持日志投递。0-不支持 1-支持
        # @type LogDeliverySupported: Integer
        # @param DataScanInfo: 数据扫描信息
        # @type DataScanInfo: :class:`Tencentcloud::Csip.v20221121.models.DspmAssetDataScanDetail`
        # @param AppId: 资产所属账号app id
        # @type AppId: Integer
        # @param NickName: 账号昵称
        # @type NickName: String
        # @param Uin: 资产所属账号uin
        # @type Uin: String
        # @param SecurityAnalyseStatus: 安全分析状态（0-关闭 1-打开 2-开通中 3-关闭中）
        # @type SecurityAnalyseStatus: Integer
        # @param TotalAuditLogs: 当前实例的总日志数
        # @type TotalAuditLogs: Integer
        # @param LogDeliveryDisableReason: 日志审计禁止开通的原因，可选值：VersionNotSupportLogSubscription, InstanceIsUpgrading, CdbRuleAuditEnabled, AssetNotExists
        # @type LogDeliveryDisableReason: String
        # @param OldestOnlineLogTimestamp: 在线日志的起始时间戳，精确到秒
        # @type OldestOnlineLogTimestamp: Integer
        # @param NewestOnlineLogTimestamp: 在线日志的最新时间戳，精确到秒
        # @type NewestOnlineLogTimestamp: Integer
        # @param OperationErrorMsg: 操作错误信息
        # @type OperationErrorMsg: String
        # @param AccountOptSupported: 是否支持账号操作。0 不支持；1 支持
        # @type AccountOptSupported: Integer
        # @param InstanceType: 实例类型
        # @type InstanceType: Integer
        # @param IdentifyScanSupported: 是否支持敏感数据识别。0 不支持；1 支持
        # @type IdentifyScanSupported: Integer

        attr_accessor :AssetId, :AssetType, :Name, :AccountCount, :PublicIp, :PrivateIp, :WanDomain, :Region, :VpcId, :VpcName, :SubnetId, :SubnetName, :Status, :CreateTime, :Manager, :BindIdentify, :IsManager, :RiskCount, :SafetyAdvice, :LogDeliveryStatus, :LogDeliverySupported, :DataScanInfo, :AppId, :NickName, :Uin, :SecurityAnalyseStatus, :TotalAuditLogs, :LogDeliveryDisableReason, :OldestOnlineLogTimestamp, :NewestOnlineLogTimestamp, :OperationErrorMsg, :AccountOptSupported, :InstanceType, :IdentifyScanSupported

        def initialize(assetid=nil, assettype=nil, name=nil, accountcount=nil, publicip=nil, privateip=nil, wandomain=nil, region=nil, vpcid=nil, vpcname=nil, subnetid=nil, subnetname=nil, status=nil, createtime=nil, manager=nil, bindidentify=nil, ismanager=nil, riskcount=nil, safetyadvice=nil, logdeliverystatus=nil, logdeliverysupported=nil, datascaninfo=nil, appid=nil, nickname=nil, uin=nil, securityanalysestatus=nil, totalauditlogs=nil, logdeliverydisablereason=nil, oldestonlinelogtimestamp=nil, newestonlinelogtimestamp=nil, operationerrormsg=nil, accountoptsupported=nil, instancetype=nil, identifyscansupported=nil)
          @AssetId = assetid
          @AssetType = assettype
          @Name = name
          @AccountCount = accountcount
          @PublicIp = publicip
          @PrivateIp = privateip
          @WanDomain = wandomain
          @Region = region
          @VpcId = vpcid
          @VpcName = vpcname
          @SubnetId = subnetid
          @SubnetName = subnetname
          @Status = status
          @CreateTime = createtime
          @Manager = manager
          @BindIdentify = bindidentify
          @IsManager = ismanager
          @RiskCount = riskcount
          @SafetyAdvice = safetyadvice
          @LogDeliveryStatus = logdeliverystatus
          @LogDeliverySupported = logdeliverysupported
          @DataScanInfo = datascaninfo
          @AppId = appid
          @NickName = nickname
          @Uin = uin
          @SecurityAnalyseStatus = securityanalysestatus
          @TotalAuditLogs = totalauditlogs
          @LogDeliveryDisableReason = logdeliverydisablereason
          @OldestOnlineLogTimestamp = oldestonlinelogtimestamp
          @NewestOnlineLogTimestamp = newestonlinelogtimestamp
          @OperationErrorMsg = operationerrormsg
          @AccountOptSupported = accountoptsupported
          @InstanceType = instancetype
          @IdentifyScanSupported = identifyscansupported
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @AssetType = params['AssetType']
          @Name = params['Name']
          @AccountCount = params['AccountCount']
          @PublicIp = params['PublicIp']
          @PrivateIp = params['PrivateIp']
          @WanDomain = params['WanDomain']
          @Region = params['Region']
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          @SubnetId = params['SubnetId']
          @SubnetName = params['SubnetName']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          unless params['Manager'].nil?
            @Manager = []
            params['Manager'].each do |i|
              dspmuinuser_tmp = DspmUinUser.new
              dspmuinuser_tmp.deserialize(i)
              @Manager << dspmuinuser_tmp
            end
          end
          @BindIdentify = params['BindIdentify']
          @IsManager = params['IsManager']
          unless params['RiskCount'].nil?
            @RiskCount = DspmRiskCount.new
            @RiskCount.deserialize(params['RiskCount'])
          end
          @SafetyAdvice = params['SafetyAdvice']
          @LogDeliveryStatus = params['LogDeliveryStatus']
          @LogDeliverySupported = params['LogDeliverySupported']
          unless params['DataScanInfo'].nil?
            @DataScanInfo = DspmAssetDataScanDetail.new
            @DataScanInfo.deserialize(params['DataScanInfo'])
          end
          @AppId = params['AppId']
          @NickName = params['NickName']
          @Uin = params['Uin']
          @SecurityAnalyseStatus = params['SecurityAnalyseStatus']
          @TotalAuditLogs = params['TotalAuditLogs']
          @LogDeliveryDisableReason = params['LogDeliveryDisableReason']
          @OldestOnlineLogTimestamp = params['OldestOnlineLogTimestamp']
          @NewestOnlineLogTimestamp = params['NewestOnlineLogTimestamp']
          @OperationErrorMsg = params['OperationErrorMsg']
          @AccountOptSupported = params['AccountOptSupported']
          @InstanceType = params['InstanceType']
          @IdentifyScanSupported = params['IdentifyScanSupported']
        end
      end

      # 数据库资产Id信息
      class DspmDbAssetId < TencentCloud::Common::AbstractModel
        # @param AssetId: 资产实例Id
        # @type AssetId: String
        # @param AssetType: 资产类型
        # @type AssetType: String
        # @param Name:  资产名
        # @type Name: String
        # @param Id: 资产记录id
        # @type Id: Integer
        # @param AppId: 资产所属账号app id
        # @type AppId: Integer
        # @param NickName: 账号昵称
        # @type NickName: String
        # @param Uin: 资产所属账号uin
        # @type Uin: String

        attr_accessor :AssetId, :AssetType, :Name, :Id, :AppId, :NickName, :Uin

        def initialize(assetid=nil, assettype=nil, name=nil, id=nil, appid=nil, nickname=nil, uin=nil)
          @AssetId = assetid
          @AssetType = assettype
          @Name = name
          @Id = id
          @AppId = appid
          @NickName = nickname
          @Uin = uin
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @AssetType = params['AssetType']
          @Name = params['Name']
          @Id = params['Id']
          @AppId = params['AppId']
          @NickName = params['NickName']
          @Uin = params['Uin']
        end
      end

      # dspm字典信息
      class DspmDictionary < TencentCloud::Common::AbstractModel
        # @param DictId: 字典id
        # @type DictId: Integer
        # @param DictName: 字典名称
        # @type DictName: String

        attr_accessor :DictId, :DictName

        def initialize(dictid=nil, dictname=nil)
          @DictId = dictid
          @DictName = dictname
        end

        def deserialize(params)
          @DictId = params['DictId']
          @DictName = params['DictName']
        end
      end

      # Dspm频率
      class DspmFrequency < TencentCloud::Common::AbstractModel
        # @param Count: 数量。
        # @type Count: Integer
        # @param Unit: 单位。
        # @type Unit: String

        attr_accessor :Count, :Unit

        def initialize(count=nil, unit=nil)
          @Count = count
          @Unit = unit
        end

        def deserialize(params)
          @Count = params['Count']
          @Unit = params['Unit']
        end
      end

      # Dspm身份关联资产统计
      class DspmIdentifyAssetStatistic < TencentCloud::Common::AbstractModel
        # @param ManagerCount: 关联资产管理员数。
        # @type ManagerCount: Integer
        # @param MemberCount: 关联资产普通成员数。
        # @type MemberCount: Integer

        attr_accessor :ManagerCount, :MemberCount

        def initialize(managercount=nil, membercount=nil)
          @ManagerCount = managercount
          @MemberCount = membercount
        end

        def deserialize(params)
          @ManagerCount = params['ManagerCount']
          @MemberCount = params['MemberCount']
        end
      end

      # dspm数据识别结果分类详情
      class DspmIdentifyCategoryDetail < TencentCloud::Common::AbstractModel
        # @param CategoryId: 分类id
        # @type CategoryId: Integer
        # @param CategoryName: 分类名称
        # @type CategoryName: String
        # @param RuleSet: 数据项集合
        # @type RuleSet: Array

        attr_accessor :CategoryId, :CategoryName, :RuleSet

        def initialize(categoryid=nil, categoryname=nil, ruleset=nil)
          @CategoryId = categoryid
          @CategoryName = categoryname
          @RuleSet = ruleset
        end

        def deserialize(params)
          @CategoryId = params['CategoryId']
          @CategoryName = params['CategoryName']
          unless params['RuleSet'].nil?
            @RuleSet = []
            params['RuleSet'].each do |i|
              dspmidentifyruledetail_tmp = DspmIdentifyRuleDetail.new
              dspmidentifyruledetail_tmp.deserialize(i)
              @RuleSet << dspmidentifyruledetail_tmp
            end
          end
        end
      end

      # Dspm身份统计信息
      class DspmIdentifyCount < TencentCloud::Common::AbstractModel
        # @param IdentifyType: 身份类型。0-未定义 2-长期身份 3-临时身份
        # @type IdentifyType: Integer
        # @param Count: 个数。
        # @type Count: Integer

        attr_accessor :IdentifyType, :Count

        def initialize(identifytype=nil, count=nil)
          @IdentifyType = identifytype
          @Count = count
        end

        def deserialize(params)
          @IdentifyType = params['IdentifyType']
          @Count = params['Count']
        end
      end

      # Dspm身份id信息
      class DspmIdentifyIdItem < TencentCloud::Common::AbstractModel
        # @param IdentifyId: 身份id。
        # @type IdentifyId: String
        # @param Remark: 备注。
        # @type Remark: String
        # @param IdentifyType: 身份类型。0-未定义 2-长期身份 3-临时身份
        # @type IdentifyType: Integer
        # @param OwnerUin: 所属云账号uin用户。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: :class:`Tencentcloud::Csip.v20221121.models.DspmUinUser`
        # @param CreatorUin: 创建者账号uin用户。
        # @type CreatorUin: :class:`Tencentcloud::Csip.v20221121.models.DspmUinUser`
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param Status: 状态。0-不活跃 1-活跃
        # @type Status: Integer
        # @param Person: 所属个人用户信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Person: :class:`Tencentcloud::Csip.v20221121.models.DspmPersonUser`

        attr_accessor :IdentifyId, :Remark, :IdentifyType, :OwnerUin, :CreatorUin, :CreateTime, :Status, :Person

        def initialize(identifyid=nil, remark=nil, identifytype=nil, owneruin=nil, creatoruin=nil, createtime=nil, status=nil, person=nil)
          @IdentifyId = identifyid
          @Remark = remark
          @IdentifyType = identifytype
          @OwnerUin = owneruin
          @CreatorUin = creatoruin
          @CreateTime = createtime
          @Status = status
          @Person = person
        end

        def deserialize(params)
          @IdentifyId = params['IdentifyId']
          @Remark = params['Remark']
          @IdentifyType = params['IdentifyType']
          unless params['OwnerUin'].nil?
            @OwnerUin = DspmUinUser.new
            @OwnerUin.deserialize(params['OwnerUin'])
          end
          unless params['CreatorUin'].nil?
            @CreatorUin = DspmUinUser.new
            @CreatorUin.deserialize(params['CreatorUin'])
          end
          @CreateTime = params['CreateTime']
          @Status = params['Status']
          unless params['Person'].nil?
            @Person = DspmPersonUser.new
            @Person.deserialize(params['Person'])
          end
        end
      end

      # Dspm身份信息
      class DspmIdentifyInfoItem < TencentCloud::Common::AbstractModel
        # @param IdentifyId: 身份id。
        # @type IdentifyId: String
        # @param Remark: 备注。
        # @type Remark: String
        # @param IdentifyType: 身份类型。0-未定义 2-长期身份 3-临时身份
        # @type IdentifyType: Integer
        # @param OwnerUin: 所属云账号uin用户。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: :class:`Tencentcloud::Csip.v20221121.models.DspmUinUser`
        # @param CreatorUin: 创建者账号uin用户。
        # @type CreatorUin: :class:`Tencentcloud::Csip.v20221121.models.DspmUinUser`
        # @param AssetCount: 关联资产。
        # @type AssetCount: Integer
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param Status: 状态。0-不活跃 1-活跃
        # @type Status: Integer
        # @param Person: 所属个人用户信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Person: :class:`Tencentcloud::Csip.v20221121.models.DspmPersonUser`
        # @param AssetStatistic: 关联数据资产统计信息。
        # @type AssetStatistic: :class:`Tencentcloud::Csip.v20221121.models.DspmIdentifyAssetStatistic`
        # @param RiskCount: 风险统计信息
        # @type RiskCount: :class:`Tencentcloud::Csip.v20221121.models.DspmRiskCount`
        # @param SafetyAdvice: 安全建议。 Resolve 立即解决 Reinforcement 加固 None 暂无异常
        # @type SafetyAdvice: String
        # @param AppId: 资产所属账号app id
        # @type AppId: Integer
        # @param NickName: 账号昵称
        # @type NickName: String
        # @param Uin: 资产所属账号uin
        # @type Uin: String

        attr_accessor :IdentifyId, :Remark, :IdentifyType, :OwnerUin, :CreatorUin, :AssetCount, :CreateTime, :Status, :Person, :AssetStatistic, :RiskCount, :SafetyAdvice, :AppId, :NickName, :Uin

        def initialize(identifyid=nil, remark=nil, identifytype=nil, owneruin=nil, creatoruin=nil, assetcount=nil, createtime=nil, status=nil, person=nil, assetstatistic=nil, riskcount=nil, safetyadvice=nil, appid=nil, nickname=nil, uin=nil)
          @IdentifyId = identifyid
          @Remark = remark
          @IdentifyType = identifytype
          @OwnerUin = owneruin
          @CreatorUin = creatoruin
          @AssetCount = assetcount
          @CreateTime = createtime
          @Status = status
          @Person = person
          @AssetStatistic = assetstatistic
          @RiskCount = riskcount
          @SafetyAdvice = safetyadvice
          @AppId = appid
          @NickName = nickname
          @Uin = uin
        end

        def deserialize(params)
          @IdentifyId = params['IdentifyId']
          @Remark = params['Remark']
          @IdentifyType = params['IdentifyType']
          unless params['OwnerUin'].nil?
            @OwnerUin = DspmUinUser.new
            @OwnerUin.deserialize(params['OwnerUin'])
          end
          unless params['CreatorUin'].nil?
            @CreatorUin = DspmUinUser.new
            @CreatorUin.deserialize(params['CreatorUin'])
          end
          @AssetCount = params['AssetCount']
          @CreateTime = params['CreateTime']
          @Status = params['Status']
          unless params['Person'].nil?
            @Person = DspmPersonUser.new
            @Person.deserialize(params['Person'])
          end
          unless params['AssetStatistic'].nil?
            @AssetStatistic = DspmIdentifyAssetStatistic.new
            @AssetStatistic.deserialize(params['AssetStatistic'])
          end
          unless params['RiskCount'].nil?
            @RiskCount = DspmRiskCount.new
            @RiskCount.deserialize(params['RiskCount'])
          end
          @SafetyAdvice = params['SafetyAdvice']
          @AppId = params['AppId']
          @NickName = params['NickName']
          @Uin = params['Uin']
        end
      end

      # dspm数据项详情
      class DspmIdentifyRuleDetail < TencentCloud::Common::AbstractModel
        # @param RuleId: 数据项id
        # @type RuleId: Integer
        # @param RuleName: 数据项名称
        # @type RuleName: String
        # @param LevelId: 敏感级别id
        # @type LevelId: Integer
        # @param LevelName: 敏感级别名称
        # @type LevelName: String
        # @param LevelScore: 敏感程度
        # @type LevelScore: Integer

        attr_accessor :RuleId, :RuleName, :LevelId, :LevelName, :LevelScore

        def initialize(ruleid=nil, rulename=nil, levelid=nil, levelname=nil, levelscore=nil)
          @RuleId = ruleid
          @RuleName = rulename
          @LevelId = levelid
          @LevelName = levelname
          @LevelScore = levelscore
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @LevelId = params['LevelId']
          @LevelName = params['LevelName']
          @LevelScore = params['LevelScore']
        end
      end

      # Dspm Ip信息
      class DspmIp < TencentCloud::Common::AbstractModel
        # @param Ip: ip地址
        # @type Ip: String
        # @param IpType: ip类型。public-公网 private-内网
        # @type IpType: String
        # @param Remark: ip标记信息
        # @type Remark: String
        # @param IsRemarked: 是否已经标记信息
        # @type IsRemarked: Integer
        # @param ResourceInstanceId: ip归属实例id
        # @type ResourceInstanceId: String
        # @param ResourceType: ip所属产品
        # @type ResourceType: String
        # @param Area: ip所属地域
        # @type Area: :class:`Tencentcloud::Csip.v20221121.models.DspmArea`
        # @param IsNewIp: 是否新ip地址
        # @type IsNewIp: Integer

        attr_accessor :Ip, :IpType, :Remark, :IsRemarked, :ResourceInstanceId, :ResourceType, :Area, :IsNewIp

        def initialize(ip=nil, iptype=nil, remark=nil, isremarked=nil, resourceinstanceid=nil, resourcetype=nil, area=nil, isnewip=nil)
          @Ip = ip
          @IpType = iptype
          @Remark = remark
          @IsRemarked = isremarked
          @ResourceInstanceId = resourceinstanceid
          @ResourceType = resourcetype
          @Area = area
          @IsNewIp = isnewip
        end

        def deserialize(params)
          @Ip = params['Ip']
          @IpType = params['IpType']
          @Remark = params['Remark']
          @IsRemarked = params['IsRemarked']
          @ResourceInstanceId = params['ResourceInstanceId']
          @ResourceType = params['ResourceType']
          unless params['Area'].nil?
            @Area = DspmArea.new
            @Area.deserialize(params['Area'])
          end
          @IsNewIp = params['IsNewIp']
        end
      end

      # Dspm ip 统计数
      class DspmIpCount < TencentCloud::Common::AbstractModel
        # @param IpCount: 访问Ip个数
        # @type IpCount: Integer
        # @param UnmarkedPublicIpCount: 未打标公网Ip个数
        # @type UnmarkedPublicIpCount: Integer
        # @param PrivateIpCount: 内网Ip个数
        # @type PrivateIpCount: Integer

        attr_accessor :IpCount, :UnmarkedPublicIpCount, :PrivateIpCount

        def initialize(ipcount=nil, unmarkedpublicipcount=nil, privateipcount=nil)
          @IpCount = ipcount
          @UnmarkedPublicIpCount = unmarkedpublicipcount
          @PrivateIpCount = privateipcount
        end

        def deserialize(params)
          @IpCount = params['IpCount']
          @UnmarkedPublicIpCount = params['UnmarkedPublicIpCount']
          @PrivateIpCount = params['PrivateIpCount']
        end
      end

      # 访客申请记录
      class DspmPersonApplyHistoryItem < TencentCloud::Common::AbstractModel
        # @param AssetId: 资产id
        # @type AssetId: String
        # @param PersonName: 姓名
        # @type PersonName: String
        # @param Phone: 手机号
        # @type Phone: String
        # @param ValidateFrom: 访问权限生效时间。
        # @type ValidateFrom: String
        # @param ValidateTo: 访问权限失效时间。
        # @type ValidateTo: String
        # @param ValidatePeriod: 访问权限有效时间。单位毫秒。
        # @type ValidatePeriod: Integer
        # @param Privilege: 权限信息。
        # @type Privilege: :class:`Tencentcloud::Csip.v20221121.models.DspmDbAccountPrivilege`
        # @param ValidStatus: 是否有效。0-无效；1-有效。
        # @type ValidStatus: Integer

        attr_accessor :AssetId, :PersonName, :Phone, :ValidateFrom, :ValidateTo, :ValidatePeriod, :Privilege, :ValidStatus

        def initialize(assetid=nil, personname=nil, phone=nil, validatefrom=nil, validateto=nil, validateperiod=nil, privilege=nil, validstatus=nil)
          @AssetId = assetid
          @PersonName = personname
          @Phone = phone
          @ValidateFrom = validatefrom
          @ValidateTo = validateto
          @ValidatePeriod = validateperiod
          @Privilege = privilege
          @ValidStatus = validstatus
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @PersonName = params['PersonName']
          @Phone = params['Phone']
          @ValidateFrom = params['ValidateFrom']
          @ValidateTo = params['ValidateTo']
          @ValidatePeriod = params['ValidatePeriod']
          unless params['Privilege'].nil?
            @Privilege = DspmDbAccountPrivilege.new
            @Privilege.deserialize(params['Privilege'])
          end
          @ValidStatus = params['ValidStatus']
        end
      end

      # Dspm个人身份信息
      class DspmPersonIdentifyItem < TencentCloud::Common::AbstractModel
        # @param PersonId: 身份id。
        # @type PersonId: String
        # @param Name: 姓名。
        # @type Name: String
        # @param Phone: 手机号
        # @type Phone: String
        # @param Remark: 备注。
        # @type Remark: String
        # @param CreateTime: 创建时间。
        # @type CreateTime: String

        attr_accessor :PersonId, :Name, :Phone, :Remark, :CreateTime

        def initialize(personid=nil, name=nil, phone=nil, remark=nil, createtime=nil)
          @PersonId = personid
          @Name = name
          @Phone = phone
          @Remark = remark
          @CreateTime = createtime
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @Name = params['Name']
          @Phone = params['Phone']
          @Remark = params['Remark']
          @CreateTime = params['CreateTime']
        end
      end

      # 个人用户信息
      class DspmPersonUser < TencentCloud::Common::AbstractModel
        # @param PersonId: 个人id
        # @type PersonId: String
        # @param PersonName: 姓名
        # @type PersonName: String
        # @param Phone: 手机号
        # @type Phone: String

        attr_accessor :PersonId, :PersonName, :Phone

        def initialize(personid=nil, personname=nil, phone=nil)
          @PersonId = personid
          @PersonName = personname
          @Phone = phone
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @PersonName = params['PersonName']
          @Phone = params['Phone']
        end
      end

      # Dspm风险
      class DspmRisk < TencentCloud::Common::AbstractModel
        # @param RiskId: 风险id
        # @type RiskId: String
        # @param RiskName: 风险名称
        # @type RiskName: String
        # @param RiskNameEn: 风险英文名称
        # @type RiskNameEn: String
        # @param StrategyType: 策略类型
        # @type StrategyType: String
        # @param StrategyCategory: 策略类别
        # @type StrategyCategory: String
        # @param RiskLevel: 风险等级
        # @type RiskLevel: String
        # @param AssetId: 资产实例Id
        # @type AssetId: String
        # @param AssetType: 资产类型
        # @type AssetType: String
        # @param AssetName: 资产名
        # @type AssetName: String
        # @param AssetRegion: 地域
        # @type AssetRegion: String
        # @param Account: 资产账号
        # @type Account: String
        # @param Host: 主机地址
        # @type Host: String
        # @param AccountType: 账号类型
        # @type AccountType: Integer
        # @param DetectTime: 风险检出时间
        # @type DetectTime: String
        # @param Status: 处理状态 0-未处理 1-已处置 2-已忽略
        # @type Status: Integer
        # @param IdentifyId: 身份id
        # @type IdentifyId: String
        # @param OwnerUin: 所属云账号uin用户
        # @type OwnerUin: :class:`Tencentcloud::Csip.v20221121.models.DspmUinUser`
        # @param Person: 所属个人用户信息
        # @type Person: :class:`Tencentcloud::Csip.v20221121.models.DspmPersonUser`
        # @param RiskData: 风险数据。
        # @type RiskData: String
        # @param IsAssetManager: 是否资产管理员
        # @type IsAssetManager: Integer
        # @param DataBeginTime: 数据起始时间
        # @type DataBeginTime: String
        # @param DataEndTime: 数据结束时间
        # @type DataEndTime: String
        # @param RiskType: 风险类型。risk-风险；alarm-告警。
        # @type RiskType: String
        # @param AppId: 资产所属账号app id
        # @type AppId: Integer
        # @param NickName: 账号昵称
        # @type NickName: String
        # @param Uin: 资产所属账号uin
        # @type Uin: String

        attr_accessor :RiskId, :RiskName, :RiskNameEn, :StrategyType, :StrategyCategory, :RiskLevel, :AssetId, :AssetType, :AssetName, :AssetRegion, :Account, :Host, :AccountType, :DetectTime, :Status, :IdentifyId, :OwnerUin, :Person, :RiskData, :IsAssetManager, :DataBeginTime, :DataEndTime, :RiskType, :AppId, :NickName, :Uin

        def initialize(riskid=nil, riskname=nil, risknameen=nil, strategytype=nil, strategycategory=nil, risklevel=nil, assetid=nil, assettype=nil, assetname=nil, assetregion=nil, account=nil, host=nil, accounttype=nil, detecttime=nil, status=nil, identifyid=nil, owneruin=nil, person=nil, riskdata=nil, isassetmanager=nil, databegintime=nil, dataendtime=nil, risktype=nil, appid=nil, nickname=nil, uin=nil)
          @RiskId = riskid
          @RiskName = riskname
          @RiskNameEn = risknameen
          @StrategyType = strategytype
          @StrategyCategory = strategycategory
          @RiskLevel = risklevel
          @AssetId = assetid
          @AssetType = assettype
          @AssetName = assetname
          @AssetRegion = assetregion
          @Account = account
          @Host = host
          @AccountType = accounttype
          @DetectTime = detecttime
          @Status = status
          @IdentifyId = identifyid
          @OwnerUin = owneruin
          @Person = person
          @RiskData = riskdata
          @IsAssetManager = isassetmanager
          @DataBeginTime = databegintime
          @DataEndTime = dataendtime
          @RiskType = risktype
          @AppId = appid
          @NickName = nickname
          @Uin = uin
        end

        def deserialize(params)
          @RiskId = params['RiskId']
          @RiskName = params['RiskName']
          @RiskNameEn = params['RiskNameEn']
          @StrategyType = params['StrategyType']
          @StrategyCategory = params['StrategyCategory']
          @RiskLevel = params['RiskLevel']
          @AssetId = params['AssetId']
          @AssetType = params['AssetType']
          @AssetName = params['AssetName']
          @AssetRegion = params['AssetRegion']
          @Account = params['Account']
          @Host = params['Host']
          @AccountType = params['AccountType']
          @DetectTime = params['DetectTime']
          @Status = params['Status']
          @IdentifyId = params['IdentifyId']
          unless params['OwnerUin'].nil?
            @OwnerUin = DspmUinUser.new
            @OwnerUin.deserialize(params['OwnerUin'])
          end
          unless params['Person'].nil?
            @Person = DspmPersonUser.new
            @Person.deserialize(params['Person'])
          end
          @RiskData = params['RiskData']
          @IsAssetManager = params['IsAssetManager']
          @DataBeginTime = params['DataBeginTime']
          @DataEndTime = params['DataEndTime']
          @RiskType = params['RiskType']
          @AppId = params['AppId']
          @NickName = params['NickName']
          @Uin = params['Uin']
        end
      end

      # Dspm 风险统计数
      class DspmRiskCount < TencentCloud::Common::AbstractModel
        # @param UnprocessedRisk: 待处理风险个数
        # @type UnprocessedRisk: Integer
        # @param ConfigurationRisk: 配置风险个数
        # @type ConfigurationRisk: Integer
        # @param BaselineDeviation: 基线风险个数
        # @type BaselineDeviation: Integer
        # @param LeakDetection: 泄露风险个数
        # @type LeakDetection: Integer
        # @param SQLBehaviorAnomaly: SQL行为异常风险个数
        # @type SQLBehaviorAnomaly: Integer
        # @param PermissionAnomaly: 权限异常风险个数
        # @type PermissionAnomaly: Integer
        # @param LoginBehaviorAnomaly: 登录行为异常风险个数
        # @type LoginBehaviorAnomaly: Integer
        # @param AttackSurfaceRisk: 攻击面风险个数
        # @type AttackSurfaceRisk: Integer
        # @param AccountSensitiveOperation: 账号敏感操作个数
        # @type AccountSensitiveOperation: Integer
        # @param UnprocessedAlarm: 待处理告警个数
        # @type UnprocessedAlarm: Integer
        # @param NumOfNewAlarmEvent: 新增事件告警
        # @type NumOfNewAlarmEvent: Integer
        # @param NumOfNewConfigRisk: 新增配置风险
        # @type NumOfNewConfigRisk: Integer

        attr_accessor :UnprocessedRisk, :ConfigurationRisk, :BaselineDeviation, :LeakDetection, :SQLBehaviorAnomaly, :PermissionAnomaly, :LoginBehaviorAnomaly, :AttackSurfaceRisk, :AccountSensitiveOperation, :UnprocessedAlarm, :NumOfNewAlarmEvent, :NumOfNewConfigRisk
        extend Gem::Deprecate
        deprecate :ConfigurationRisk, :none, 2026, 5
        deprecate :ConfigurationRisk=, :none, 2026, 5
        deprecate :BaselineDeviation, :none, 2026, 5
        deprecate :BaselineDeviation=, :none, 2026, 5
        deprecate :LeakDetection, :none, 2026, 5
        deprecate :LeakDetection=, :none, 2026, 5

        def initialize(unprocessedrisk=nil, configurationrisk=nil, baselinedeviation=nil, leakdetection=nil, sqlbehavioranomaly=nil, permissionanomaly=nil, loginbehavioranomaly=nil, attacksurfacerisk=nil, accountsensitiveoperation=nil, unprocessedalarm=nil, numofnewalarmevent=nil, numofnewconfigrisk=nil)
          @UnprocessedRisk = unprocessedrisk
          @ConfigurationRisk = configurationrisk
          @BaselineDeviation = baselinedeviation
          @LeakDetection = leakdetection
          @SQLBehaviorAnomaly = sqlbehavioranomaly
          @PermissionAnomaly = permissionanomaly
          @LoginBehaviorAnomaly = loginbehavioranomaly
          @AttackSurfaceRisk = attacksurfacerisk
          @AccountSensitiveOperation = accountsensitiveoperation
          @UnprocessedAlarm = unprocessedalarm
          @NumOfNewAlarmEvent = numofnewalarmevent
          @NumOfNewConfigRisk = numofnewconfigrisk
        end

        def deserialize(params)
          @UnprocessedRisk = params['UnprocessedRisk']
          @ConfigurationRisk = params['ConfigurationRisk']
          @BaselineDeviation = params['BaselineDeviation']
          @LeakDetection = params['LeakDetection']
          @SQLBehaviorAnomaly = params['SQLBehaviorAnomaly']
          @PermissionAnomaly = params['PermissionAnomaly']
          @LoginBehaviorAnomaly = params['LoginBehaviorAnomaly']
          @AttackSurfaceRisk = params['AttackSurfaceRisk']
          @AccountSensitiveOperation = params['AccountSensitiveOperation']
          @UnprocessedAlarm = params['UnprocessedAlarm']
          @NumOfNewAlarmEvent = params['NumOfNewAlarmEvent']
          @NumOfNewConfigRisk = params['NumOfNewConfigRisk']
        end
      end

      # Dspm 风险策略
      class DspmRiskStrategy < TencentCloud::Common::AbstractModel
        # @param StrategyType: 策略类型
        # @type StrategyType: String
        # @param Name: 策略名
        # @type Name: String
        # @param StrategyCategory: 策略类型
        # @type StrategyCategory: String
        # @param IsEnabled: 是否启用。0-禁用 1-启用
        # @type IsEnabled: Integer
        # @param RiskLevel: 风险等级。
        # @type RiskLevel: String
        # @param Rule: 策略规则
        # @type Rule: String
        # @param Remark: 备注
        # @type Remark: String
        # @param Description: 策略内容
        # @type Description: String
        # @param HitCount: 命中次数
        # @type HitCount: Integer
        # @param RiskType: 风险类型。risk-风险；alarm-告警。
        # @type RiskType: String
        # @param AppId: 资产所属账号app id
        # @type AppId: Integer
        # @param NickName: 账号昵称
        # @type NickName: String
        # @param Uin: 资产所属账号uin
        # @type Uin: String
        # @param StrategyId: 策略id
        # @type StrategyId: Integer

        attr_accessor :StrategyType, :Name, :StrategyCategory, :IsEnabled, :RiskLevel, :Rule, :Remark, :Description, :HitCount, :RiskType, :AppId, :NickName, :Uin, :StrategyId

        def initialize(strategytype=nil, name=nil, strategycategory=nil, isenabled=nil, risklevel=nil, rule=nil, remark=nil, description=nil, hitcount=nil, risktype=nil, appid=nil, nickname=nil, uin=nil, strategyid=nil)
          @StrategyType = strategytype
          @Name = name
          @StrategyCategory = strategycategory
          @IsEnabled = isenabled
          @RiskLevel = risklevel
          @Rule = rule
          @Remark = remark
          @Description = description
          @HitCount = hitcount
          @RiskType = risktype
          @AppId = appid
          @NickName = nickname
          @Uin = uin
          @StrategyId = strategyid
        end

        def deserialize(params)
          @StrategyType = params['StrategyType']
          @Name = params['Name']
          @StrategyCategory = params['StrategyCategory']
          @IsEnabled = params['IsEnabled']
          @RiskLevel = params['RiskLevel']
          @Rule = params['Rule']
          @Remark = params['Remark']
          @Description = params['Description']
          @HitCount = params['HitCount']
          @RiskType = params['RiskType']
          @AppId = params['AppId']
          @NickName = params['NickName']
          @Uin = params['Uin']
          @StrategyId = params['StrategyId']
        end
      end

      # Dspm 风险分组策略
      class DspmRiskStrategyGroup < TencentCloud::Common::AbstractModel
        # @param StrategyType: 策略类型
        # @type StrategyType: String
        # @param Name: 策略名
        # @type Name: String
        # @param StrategyCategory: 策略类型
        # @type StrategyCategory: String
        # @param IsEnabled: 是否启用。0-禁用 1-启用
        # @type IsEnabled: Integer
        # @param HitCount: 命中次数
        # @type HitCount: Integer
        # @param RiskType: 风险类型。risk-风险；alarm-告警。
        # @type RiskType: String
        # @param StrategyList: 策略列表
        # @type StrategyList: Array

        attr_accessor :StrategyType, :Name, :StrategyCategory, :IsEnabled, :HitCount, :RiskType, :StrategyList

        def initialize(strategytype=nil, name=nil, strategycategory=nil, isenabled=nil, hitcount=nil, risktype=nil, strategylist=nil)
          @StrategyType = strategytype
          @Name = name
          @StrategyCategory = strategycategory
          @IsEnabled = isenabled
          @HitCount = hitcount
          @RiskType = risktype
          @StrategyList = strategylist
        end

        def deserialize(params)
          @StrategyType = params['StrategyType']
          @Name = params['Name']
          @StrategyCategory = params['StrategyCategory']
          @IsEnabled = params['IsEnabled']
          @HitCount = params['HitCount']
          @RiskType = params['RiskType']
          unless params['StrategyList'].nil?
            @StrategyList = []
            params['StrategyList'].each do |i|
              dspmriskstrategy_tmp = DspmRiskStrategy.new
              dspmriskstrategy_tmp.deserialize(i)
              @StrategyList << dspmriskstrategy_tmp
            end
          end
        end
      end

      # Dspm风险趋势
      class DspmRiskTendency < TencentCloud::Common::AbstractModel
        # @param Date: 日期
        # @type Date: String
        # @param UncontrolledAccount: 未管控账号个数
        # @type UncontrolledAccount: Integer
        # @param ConfigurationRisk: 配置风险个数
        # @type ConfigurationRisk: Integer
        # @param BaselineRisk: 基线风险个数
        # @type BaselineRisk: Integer
        # @param LeakDetectionRisk: 泄露风险个数
        # @type LeakDetectionRisk: Integer
        # @param SQLBehaviorAnomaly: SQL行为异常风险个数
        # @type SQLBehaviorAnomaly: Integer
        # @param PermissionAnomaly: 权限异常风险个数
        # @type PermissionAnomaly: Integer
        # @param LoginBehaviorAnomaly: 登录行为异常风险个数
        # @type LoginBehaviorAnomaly: Integer
        # @param AttackSurfaceRisk: 攻击面风险风险个数
        # @type AttackSurfaceRisk: Integer
        # @param AccountSensitiveOperation: 账号敏感操作个数
        # @type AccountSensitiveOperation: Integer

        attr_accessor :Date, :UncontrolledAccount, :ConfigurationRisk, :BaselineRisk, :LeakDetectionRisk, :SQLBehaviorAnomaly, :PermissionAnomaly, :LoginBehaviorAnomaly, :AttackSurfaceRisk, :AccountSensitiveOperation
        extend Gem::Deprecate
        deprecate :ConfigurationRisk, :none, 2026, 5
        deprecate :ConfigurationRisk=, :none, 2026, 5
        deprecate :BaselineRisk, :none, 2026, 5
        deprecate :BaselineRisk=, :none, 2026, 5
        deprecate :LeakDetectionRisk, :none, 2026, 5
        deprecate :LeakDetectionRisk=, :none, 2026, 5

        def initialize(date=nil, uncontrolledaccount=nil, configurationrisk=nil, baselinerisk=nil, leakdetectionrisk=nil, sqlbehavioranomaly=nil, permissionanomaly=nil, loginbehavioranomaly=nil, attacksurfacerisk=nil, accountsensitiveoperation=nil)
          @Date = date
          @UncontrolledAccount = uncontrolledaccount
          @ConfigurationRisk = configurationrisk
          @BaselineRisk = baselinerisk
          @LeakDetectionRisk = leakdetectionrisk
          @SQLBehaviorAnomaly = sqlbehavioranomaly
          @PermissionAnomaly = permissionanomaly
          @LoginBehaviorAnomaly = loginbehavioranomaly
          @AttackSurfaceRisk = attacksurfacerisk
          @AccountSensitiveOperation = accountsensitiveoperation
        end

        def deserialize(params)
          @Date = params['Date']
          @UncontrolledAccount = params['UncontrolledAccount']
          @ConfigurationRisk = params['ConfigurationRisk']
          @BaselineRisk = params['BaselineRisk']
          @LeakDetectionRisk = params['LeakDetectionRisk']
          @SQLBehaviorAnomaly = params['SQLBehaviorAnomaly']
          @PermissionAnomaly = params['PermissionAnomaly']
          @LoginBehaviorAnomaly = params['LoginBehaviorAnomaly']
          @AttackSurfaceRisk = params['AttackSurfaceRisk']
          @AccountSensitiveOperation = params['AccountSensitiveOperation']
        end
      end

      # 调度任务配置
      class DspmScheduleConfig < TencentCloud::Common::AbstractModel
        # @param ScheduleType: 调度类型: daily(按天), weekly(按周), monthly(按月)
        # @type ScheduleType: String
        # @param Day: 按天不传，按周调度配置（星期几 (1=周一, ..., 7=周日)），按月调度配置（每月第几天 (1-31)）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Day: Integer
        # @param Time: 调度时间配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Time: String
        # @param TimeZone: 时区,默认东八区（Asia/Shanghai）
        # @type TimeZone: String

        attr_accessor :ScheduleType, :Day, :Time, :TimeZone

        def initialize(scheduletype=nil, day=nil, time=nil, timezone=nil)
          @ScheduleType = scheduletype
          @Day = day
          @Time = time
          @TimeZone = timezone
        end

        def deserialize(params)
          @ScheduleType = params['ScheduleType']
          @Day = params['Day']
          @Time = params['Time']
          @TimeZone = params['TimeZone']
        end
      end

      # Dspm 资产安全分析状态统计数
      class DspmSecurityAnalyseStatusCount < TencentCloud::Common::AbstractModel
        # @param OpenCount: 资产安全分析开启数
        # @type OpenCount: Integer
        # @param OpeningCount: 资产安全分析开启中数
        # @type OpeningCount: Integer
        # @param ClosingCount: 资产安全分析关闭中数
        # @type ClosingCount: Integer
        # @param CloseCount: 资产安全分析未开启数
        # @type CloseCount: Integer
        # @param AssetTypeCountSet: 按照资产类型分组的资产安全分析状态统计数
        # @type AssetTypeCountSet: Array

        attr_accessor :OpenCount, :OpeningCount, :ClosingCount, :CloseCount, :AssetTypeCountSet

        def initialize(opencount=nil, openingcount=nil, closingcount=nil, closecount=nil, assettypecountset=nil)
          @OpenCount = opencount
          @OpeningCount = openingcount
          @ClosingCount = closingcount
          @CloseCount = closecount
          @AssetTypeCountSet = assettypecountset
        end

        def deserialize(params)
          @OpenCount = params['OpenCount']
          @OpeningCount = params['OpeningCount']
          @ClosingCount = params['ClosingCount']
          @CloseCount = params['CloseCount']
          unless params['AssetTypeCountSet'].nil?
            @AssetTypeCountSet = []
            params['AssetTypeCountSet'].each do |i|
              dspmassettypecount_tmp = DspmAssetTypeCount.new
              dspmassettypecount_tmp.deserialize(i)
              @AssetTypeCountSet << dspmassettypecount_tmp
            end
          end
        end
      end

      # dspm敏感数据扫描任务配置
      class DspmSensitiveScanTaskConfig < TencentCloud::Common::AbstractModel
        # @param IsScheduled: 是否定时任务
        # @type IsScheduled: Boolean
        # @param ScheduleConfig: 调度周期配置
        # @type ScheduleConfig: :class:`Tencentcloud::Csip.v20221121.models.DspmScheduleConfig`
        # @param IsRunAtOnce: 是否立即扫描
        # @type IsRunAtOnce: Boolean

        attr_accessor :IsScheduled, :ScheduleConfig, :IsRunAtOnce

        def initialize(isscheduled=nil, scheduleconfig=nil, isrunatonce=nil)
          @IsScheduled = isscheduled
          @ScheduleConfig = scheduleconfig
          @IsRunAtOnce = isrunatonce
        end

        def deserialize(params)
          @IsScheduled = params['IsScheduled']
          unless params['ScheduleConfig'].nil?
            @ScheduleConfig = DspmScheduleConfig.new
            @ScheduleConfig.deserialize(params['ScheduleConfig'])
          end
          @IsRunAtOnce = params['IsRunAtOnce']
        end
      end

      # dspm支持的产品信息
      class DspmSupportedAssetType < TencentCloud::Common::AbstractModel
        # @param Product: <p>产品名（用于查询）</p>
        # @type Product: String
        # @param Regions: <p>地域列表</p>
        # @type Regions: Array
        # @param ProductDisplayName: <p>产品名-用于展示</p>
        # @type ProductDisplayName: String
        # @param ProductGroup: <p>产品组名</p>
        # @type ProductGroup: String
        # @param AssetTotal: <p>给定资产类型的资产实例总数</p>
        # @type AssetTotal: Integer

        attr_accessor :Product, :Regions, :ProductDisplayName, :ProductGroup, :AssetTotal

        def initialize(product=nil, regions=nil, productdisplayname=nil, productgroup=nil, assettotal=nil)
          @Product = product
          @Regions = regions
          @ProductDisplayName = productdisplayname
          @ProductGroup = productgroup
          @AssetTotal = assettotal
        end

        def deserialize(params)
          @Product = params['Product']
          unless params['Regions'].nil?
            @Regions = []
            params['Regions'].each do |i|
              regionconfig_tmp = RegionConfig.new
              regionconfig_tmp.deserialize(i)
              @Regions << regionconfig_tmp
            end
          end
          @ProductDisplayName = params['ProductDisplayName']
          @ProductGroup = params['ProductGroup']
          @AssetTotal = params['AssetTotal']
        end
      end

      # 表权限
      class DspmTablePrivilege < TencentCloud::Common::AbstractModel
        # @param Database: 数据库名
        # @type Database: String
        # @param Table: 数据库表名
        # @type Table: String
        # @param Privileges: 权限信息
        # @type Privileges: Array

        attr_accessor :Database, :Table, :Privileges

        def initialize(database=nil, table=nil, privileges=nil)
          @Database = database
          @Table = table
          @Privileges = privileges
        end

        def deserialize(params)
          @Database = params['Database']
          @Table = params['Table']
          @Privileges = params['Privileges']
        end
      end

      # 云账号用户信息
      class DspmUinUser < TencentCloud::Common::AbstractModel
        # @param Uin: 账号uin
        # @type Uin: String
        # @param Name: 姓名
        # @type Name: String
        # @param UserType: 用户类型。1-主账号 2-子用户
        # @type UserType: Integer

        attr_accessor :Uin, :Name, :UserType

        def initialize(uin=nil, name=nil, usertype=nil)
          @Uin = uin
          @Name = name
          @UserType = usertype
        end

        def deserialize(params)
          @Uin = params['Uin']
          @Name = params['Name']
          @UserType = params['UserType']
        end
      end

      # Dspm 白名单策略
      class DspmWhitelistStrategy < TencentCloud::Common::AbstractModel
        # @param WhitelistStrategyId: 白名单策略id
        # @type WhitelistStrategyId: String
        # @param StrategyType: 策略类型
        # @type StrategyType: String
        # @param Name: 白名单策略名
        # @type Name: String
        # @param StrategyCategory: 策略类型
        # @type StrategyCategory: String
        # @param Rule: 策略规则
        # @type Rule: String
        # @param Remark: 备注
        # @type Remark: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String
        # @param AssetId: 资产id
        # @type AssetId: String
        # @param Account: 账号
        # @type Account: String
        # @param Host: 主机
        # @type Host: String
        # @param Description: 策略规则内容描述
        # @type Description: String
        # @param RiskType: 白名单类型。risk-风险白名单；alarm-告警白名单。
        # @type RiskType: String
        # @param AppId: 资产所属账号app id
        # @type AppId: Integer
        # @param NickName: 账号昵称
        # @type NickName: String
        # @param Uin: 资产所属账号uin
        # @type Uin: String

        attr_accessor :WhitelistStrategyId, :StrategyType, :Name, :StrategyCategory, :Rule, :Remark, :ModifyTime, :AssetId, :Account, :Host, :Description, :RiskType, :AppId, :NickName, :Uin

        def initialize(whiteliststrategyid=nil, strategytype=nil, name=nil, strategycategory=nil, rule=nil, remark=nil, modifytime=nil, assetid=nil, account=nil, host=nil, description=nil, risktype=nil, appid=nil, nickname=nil, uin=nil)
          @WhitelistStrategyId = whiteliststrategyid
          @StrategyType = strategytype
          @Name = name
          @StrategyCategory = strategycategory
          @Rule = rule
          @Remark = remark
          @ModifyTime = modifytime
          @AssetId = assetid
          @Account = account
          @Host = host
          @Description = description
          @RiskType = risktype
          @AppId = appid
          @NickName = nickname
          @Uin = uin
        end

        def deserialize(params)
          @WhitelistStrategyId = params['WhitelistStrategyId']
          @StrategyType = params['StrategyType']
          @Name = params['Name']
          @StrategyCategory = params['StrategyCategory']
          @Rule = params['Rule']
          @Remark = params['Remark']
          @ModifyTime = params['ModifyTime']
          @AssetId = params['AssetId']
          @Account = params['Account']
          @Host = params['Host']
          @Description = params['Description']
          @RiskType = params['RiskType']
          @AppId = params['AppId']
          @NickName = params['NickName']
          @Uin = params['Uin']
        end
      end

      # 统计条目
      class Element < TencentCloud::Common::AbstractModel
        # @param Key: 统计类型
        # @type Key: String
        # @param Value: 统计对象
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

      # 导出任务列表
      class ExportTask < TencentCloud::Common::AbstractModel
        # @param Id: 任务Id
        # @type Id: Integer
        # @param AppId: 用户AppId
        # @type AppId: Integer
        # @param Percentage: 进度百分比
        # @type Percentage: Integer
        # @param TaskStatus: 任务状态：0.未开始 1.执行中 2.执行成功 3.执行超时 4.执行失败
        # @type TaskStatus: Integer
        # @param CreateTime: 任务创建时间
        # @type CreateTime: Integer
        # @param ModifyTime: 任务更新时间
        # @type ModifyTime: Integer
        # @param FileName: 文件名
        # @type FileName: String
        # @param FileSize: 文件大小  字节
        # @type FileSize: Integer
        # @param RemainingTime: 剩余时间(单位：秒)
        # @type RemainingTime: Integer

        attr_accessor :Id, :AppId, :Percentage, :TaskStatus, :CreateTime, :ModifyTime, :FileName, :FileSize, :RemainingTime

        def initialize(id=nil, appid=nil, percentage=nil, taskstatus=nil, createtime=nil, modifytime=nil, filename=nil, filesize=nil, remainingtime=nil)
          @Id = id
          @AppId = appid
          @Percentage = percentage
          @TaskStatus = taskstatus
          @CreateTime = createtime
          @ModifyTime = modifytime
          @FileName = filename
          @FileSize = filesize
          @RemainingTime = remainingtime
        end

        def deserialize(params)
          @Id = params['Id']
          @AppId = params['AppId']
          @Percentage = params['Percentage']
          @TaskStatus = params['TaskStatus']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @FileName = params['FileName']
          @FileSize = params['FileSize']
          @RemainingTime = params['RemainingTime']
        end
      end

      # 暴露资产分类
      class ExposeAssetTypeItem < TencentCloud::Common::AbstractModel
        # @param Provider: 云厂商
        # @type Provider: String
        # @param ProviderName: 云厂商名称
        # @type ProviderName: String
        # @param AssetType: 资产类型
        # @type AssetType: String
        # @param AssetTypeName: 资产类型名称
        # @type AssetTypeName: String

        attr_accessor :Provider, :ProviderName, :AssetType, :AssetTypeName

        def initialize(provider=nil, providername=nil, assettype=nil, assettypename=nil)
          @Provider = provider
          @ProviderName = providername
          @AssetType = assettype
          @AssetTypeName = assettypename
        end

        def deserialize(params)
          @Provider = params['Provider']
          @ProviderName = params['ProviderName']
          @AssetType = params['AssetType']
          @AssetTypeName = params['AssetTypeName']
        end
      end

      # 暴露资产
      class ExposesItem < TencentCloud::Common::AbstractModel
        # @param Provider: 云厂商
        # @type Provider: String
        # @param CloudAccountName: 云账号名称
        # @type CloudAccountName: String
        # @param CloudAccountId: 云账号
        # @type CloudAccountId: String
        # @param Domain: 域名
        # @type Domain: String
        # @param Ip: IP
        # @type Ip: String
        # @param Port: 端口或者端口范围
        # @type Port: String
        # @param Status: 开放
        # @type Status: String
        # @param RiskType: 风险类型
        # @type RiskType: String
        # @param AclType: acl类型
        # @type AclType: String
        # @param AclList: acl列表
        # @type AclList: String
        # @param AssetId: 资产ID
        # @type AssetId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param AssetType: 资产类型
        # @type AssetType: String
        # @param PortServiceCount: 端口服务数量
        # @type PortServiceCount: Integer
        # @param HighRiskPortServiceCount: 高危端口数量
        # @type HighRiskPortServiceCount: Integer
        # @param WebAppCount: web应用数量
        # @type WebAppCount: Integer
        # @param RiskWebAppCount: 有风险web应用数量
        # @type RiskWebAppCount: Integer
        # @param WeakPasswordCount: 弱口令数量
        # @type WeakPasswordCount: Integer
        # @param VulCount: 漏洞数量
        # @type VulCount: Integer
        # @param CreateTime: 首次发现时间
        # @type CreateTime: String
        # @param UpdateTime: 最近更新时间
        # @type UpdateTime: String
        # @param AssetTypeName: 实例类型名称
        # @type AssetTypeName: String
        # @param DisplayStatus: 开放状态
        # @type DisplayStatus: String
        # @param DisplayRiskType: 端口状态
        # @type DisplayRiskType: String
        # @param ScanTaskStatus: 扫描任务状态
        # @type ScanTaskStatus: String
        # @param Uuid: uuid
        # @type Uuid: String
        # @param HasScan: 是否进行过安全体检
        # @type HasScan: String
        # @param AppId: 租户ID
        # @type AppId: Integer
        # @param AppIdStr: 租户ID字符串
        # @type AppIdStr: String
        # @param ExposureID: 记录ID
        # @type ExposureID: Integer
        # @param PortDetectCount: 端口开放数量
        # @type PortDetectCount: Integer
        # @param PortDetectResult: 端口开放结果
        # @type PortDetectResult: String
        # @param Tag: 标签
        # @type Tag: String
        # @param Comment: 备注
        # @type Comment: String
        # @param ToGovernedRiskCount: 待治理风险数量
        # @type ToGovernedRiskCount: Integer
        # @param ToGovernedRiskContent: 待治理风险内容
        # @type ToGovernedRiskContent: String

        attr_accessor :Provider, :CloudAccountName, :CloudAccountId, :Domain, :Ip, :Port, :Status, :RiskType, :AclType, :AclList, :AssetId, :InstanceName, :AssetType, :PortServiceCount, :HighRiskPortServiceCount, :WebAppCount, :RiskWebAppCount, :WeakPasswordCount, :VulCount, :CreateTime, :UpdateTime, :AssetTypeName, :DisplayStatus, :DisplayRiskType, :ScanTaskStatus, :Uuid, :HasScan, :AppId, :AppIdStr, :ExposureID, :PortDetectCount, :PortDetectResult, :Tag, :Comment, :ToGovernedRiskCount, :ToGovernedRiskContent

        def initialize(provider=nil, cloudaccountname=nil, cloudaccountid=nil, domain=nil, ip=nil, port=nil, status=nil, risktype=nil, acltype=nil, acllist=nil, assetid=nil, instancename=nil, assettype=nil, portservicecount=nil, highriskportservicecount=nil, webappcount=nil, riskwebappcount=nil, weakpasswordcount=nil, vulcount=nil, createtime=nil, updatetime=nil, assettypename=nil, displaystatus=nil, displayrisktype=nil, scantaskstatus=nil, uuid=nil, hasscan=nil, appid=nil, appidstr=nil, exposureid=nil, portdetectcount=nil, portdetectresult=nil, tag=nil, comment=nil, togovernedriskcount=nil, togovernedriskcontent=nil)
          @Provider = provider
          @CloudAccountName = cloudaccountname
          @CloudAccountId = cloudaccountid
          @Domain = domain
          @Ip = ip
          @Port = port
          @Status = status
          @RiskType = risktype
          @AclType = acltype
          @AclList = acllist
          @AssetId = assetid
          @InstanceName = instancename
          @AssetType = assettype
          @PortServiceCount = portservicecount
          @HighRiskPortServiceCount = highriskportservicecount
          @WebAppCount = webappcount
          @RiskWebAppCount = riskwebappcount
          @WeakPasswordCount = weakpasswordcount
          @VulCount = vulcount
          @CreateTime = createtime
          @UpdateTime = updatetime
          @AssetTypeName = assettypename
          @DisplayStatus = displaystatus
          @DisplayRiskType = displayrisktype
          @ScanTaskStatus = scantaskstatus
          @Uuid = uuid
          @HasScan = hasscan
          @AppId = appid
          @AppIdStr = appidstr
          @ExposureID = exposureid
          @PortDetectCount = portdetectcount
          @PortDetectResult = portdetectresult
          @Tag = tag
          @Comment = comment
          @ToGovernedRiskCount = togovernedriskcount
          @ToGovernedRiskContent = togovernedriskcontent
        end

        def deserialize(params)
          @Provider = params['Provider']
          @CloudAccountName = params['CloudAccountName']
          @CloudAccountId = params['CloudAccountId']
          @Domain = params['Domain']
          @Ip = params['Ip']
          @Port = params['Port']
          @Status = params['Status']
          @RiskType = params['RiskType']
          @AclType = params['AclType']
          @AclList = params['AclList']
          @AssetId = params['AssetId']
          @InstanceName = params['InstanceName']
          @AssetType = params['AssetType']
          @PortServiceCount = params['PortServiceCount']
          @HighRiskPortServiceCount = params['HighRiskPortServiceCount']
          @WebAppCount = params['WebAppCount']
          @RiskWebAppCount = params['RiskWebAppCount']
          @WeakPasswordCount = params['WeakPasswordCount']
          @VulCount = params['VulCount']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @AssetTypeName = params['AssetTypeName']
          @DisplayStatus = params['DisplayStatus']
          @DisplayRiskType = params['DisplayRiskType']
          @ScanTaskStatus = params['ScanTaskStatus']
          @Uuid = params['Uuid']
          @HasScan = params['HasScan']
          @AppId = params['AppId']
          @AppIdStr = params['AppIdStr']
          @ExposureID = params['ExposureID']
          @PortDetectCount = params['PortDetectCount']
          @PortDetectResult = params['PortDetectResult']
          @Tag = params['Tag']
          @Comment = params['Comment']
          @ToGovernedRiskCount = params['ToGovernedRiskCount']
          @ToGovernedRiskContent = params['ToGovernedRiskContent']
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

      # filter过滤条件
      class Filters < TencentCloud::Common::AbstractModel
        # @param Name: 实例ID
        # @type Name: String
        # @param Values: 实例ID内容
        # @type Values: Array
        # @param ExactMatch: 模糊匹配
        # @type ExactMatch: String

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
        # @type AddressIPV6: String
        # @param IsCore: 是否核心
        # @type IsCore: Integer
        # @param RiskExposure: 风险服务暴露
        # @type RiskExposure: Integer
        # @param IsNewAsset: 是否新资产 1新
        # @type IsNewAsset: Integer
        # @param Status: 网关状态
        # @type Status: String
        # @param EngineRegion: TSE的网关真实地域
        # @type EngineRegion: String
        # @param WeakPasswordRisk: 弱口令风险
        # @type WeakPasswordRisk: Integer

        attr_accessor :AppId, :Uin, :AssetId, :AssetName, :AssetType, :PrivateIp, :PublicIp, :Region, :VpcId, :VpcName, :Tag, :OutboundPeakBandwidth, :InboundPeakBandwidth, :OutboundCumulativeFlow, :InboundCumulativeFlow, :NetworkAttack, :ExposedPort, :ExposedVUL, :ConfigureRisk, :CreateTime, :ScanTask, :LastScanTime, :Nick, :AddressIPV6, :IsCore, :RiskExposure, :IsNewAsset, :Status, :EngineRegion, :WeakPasswordRisk

        def initialize(appid=nil, uin=nil, assetid=nil, assetname=nil, assettype=nil, privateip=nil, publicip=nil, region=nil, vpcid=nil, vpcname=nil, tag=nil, outboundpeakbandwidth=nil, inboundpeakbandwidth=nil, outboundcumulativeflow=nil, inboundcumulativeflow=nil, networkattack=nil, exposedport=nil, exposedvul=nil, configurerisk=nil, createtime=nil, scantask=nil, lastscantime=nil, nick=nil, addressipv6=nil, iscore=nil, riskexposure=nil, isnewasset=nil, status=nil, engineregion=nil, weakpasswordrisk=nil)
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
          @WeakPasswordRisk = weakpasswordrisk
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
          @WeakPasswordRisk = params['WeakPasswordRisk']
        end
      end

      # 高危基线风险内容
      class HighBaseLineRiskItem < TencentCloud::Common::AbstractModel
        # @param CloudAccountID: 云账号ID
        # @type CloudAccountID: String
        # @param AssetID: 实例ID
        # @type AssetID: String
        # @param InstanceStatus: 实例状态
        # @type InstanceStatus: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param RiskName: 风险名称
        # @type RiskName: String
        # @param RiskCategory: 风险分类
        # @type RiskCategory: String
        # @param RiskLevel: 风险等级
        # @type RiskLevel: String
        # @param RiskDesc: 风险描述
        # @type RiskDesc: String
        # @param RiskResult: 风险结果
        # @type RiskResult: String
        # @param FixAdvice: 修复建议
        # @type FixAdvice: String
        # @param RiskCategoryName: Linux漏洞
        # @type RiskCategoryName: String
        # @param RiskLevelName: 风险等级名称
        # @type RiskLevelName: String
        # @param InstanceStatusName: 实例状态
        # @type InstanceStatusName: String
        # @param CreateTime: 首次发现时间
        # @type CreateTime: String
        # @param UpdateTime: 最近发现时间
        # @type UpdateTime: String
        # @param AppID: 租户ID
        # @type AppID: Integer

        attr_accessor :CloudAccountID, :AssetID, :InstanceStatus, :InstanceName, :RiskName, :RiskCategory, :RiskLevel, :RiskDesc, :RiskResult, :FixAdvice, :RiskCategoryName, :RiskLevelName, :InstanceStatusName, :CreateTime, :UpdateTime, :AppID

        def initialize(cloudaccountid=nil, assetid=nil, instancestatus=nil, instancename=nil, riskname=nil, riskcategory=nil, risklevel=nil, riskdesc=nil, riskresult=nil, fixadvice=nil, riskcategoryname=nil, risklevelname=nil, instancestatusname=nil, createtime=nil, updatetime=nil, appid=nil)
          @CloudAccountID = cloudaccountid
          @AssetID = assetid
          @InstanceStatus = instancestatus
          @InstanceName = instancename
          @RiskName = riskname
          @RiskCategory = riskcategory
          @RiskLevel = risklevel
          @RiskDesc = riskdesc
          @RiskResult = riskresult
          @FixAdvice = fixadvice
          @RiskCategoryName = riskcategoryname
          @RiskLevelName = risklevelname
          @InstanceStatusName = instancestatusname
          @CreateTime = createtime
          @UpdateTime = updatetime
          @AppID = appid
        end

        def deserialize(params)
          @CloudAccountID = params['CloudAccountID']
          @AssetID = params['AssetID']
          @InstanceStatus = params['InstanceStatus']
          @InstanceName = params['InstanceName']
          @RiskName = params['RiskName']
          @RiskCategory = params['RiskCategory']
          @RiskLevel = params['RiskLevel']
          @RiskDesc = params['RiskDesc']
          @RiskResult = params['RiskResult']
          @FixAdvice = params['FixAdvice']
          @RiskCategoryName = params['RiskCategoryName']
          @RiskLevelName = params['RiskLevelName']
          @InstanceStatusName = params['InstanceStatusName']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @AppID = params['AppID']
        end
      end

      # 规则集合
      class HitRules < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则Id
        # @type RuleId: Integer
        # @param RuleName: 规则
        # @type RuleName: String

        attr_accessor :RuleId, :RuleName

        def initialize(ruleid=nil, rulename=nil)
          @RuleId = ruleid
          @RuleName = rulename
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
        end
      end

      # 计费项信息
      class InquireInfo < TencentCloud::Common::AbstractModel
        # @param Name: 计费项名称
        # @type Name: String
        # @param Value: 购买量
        # @type Value: Integer

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

      # ip列表
      class IpAssetListVO < TencentCloud::Common::AbstractModel
        # @param AssetId: 资产id
        # @type AssetId: String
        # @param AssetName: 资产name
        # @type AssetName: String
        # @param AssetType: 资产类型
        # @type AssetType: String
        # @param Region: 地域
        # @type Region: String
        # @param CFWStatus: 云防状态
        # @type CFWStatus: Integer
        # @param AssetCreateTime: 资产创建时间
        # @type AssetCreateTime: String
        # @param PublicIp: 公网IP
        # @type PublicIp: String
        # @param PublicIpType: 公网ip类型
        # @type PublicIpType: Integer
        # @param VpcId: vpc
        # @type VpcId: String
        # @param VpcName: vpc名
        # @type VpcName: String
        # @param AppId: appid
        # @type AppId: Integer
        # @param Uin: 用户uin
        # @type Uin: String
        # @param NickName: 名称
        # @type NickName: String
        # @param IsCore: 核心
        # @type IsCore: Integer
        # @param IsCloud: 云上
        # @type IsCloud: Integer
        # @param Attack: 网络攻击
        # @type Attack: Integer
        # @param Access: 网络访问
        # @type Access: Integer
        # @param Intercept: 网络拦截
        # @type Intercept: Integer
        # @param InBandwidth: 入向带宽
        # @type InBandwidth: String
        # @param OutBandwidth: 出向带宽
        # @type OutBandwidth: String
        # @param InFlow: 入向流量
        # @type InFlow: String
        # @param OutFlow: 出向流量
        # @type OutFlow: String
        # @param LastScanTime: 最近扫描时间
        # @type LastScanTime: String
        # @param PortRisk: 端口风险
        # @type PortRisk: Integer
        # @param VulnerabilityRisk: 漏洞风险
        # @type VulnerabilityRisk: Integer
        # @param ConfigurationRisk: 配置风险
        # @type ConfigurationRisk: Integer
        # @param ScanTask: 扫描任务
        # @type ScanTask: Integer
        # @param WeakPassword: 弱口令
        # @type WeakPassword: Integer
        # @param WebContentRisk: 内容风险
        # @type WebContentRisk: Integer
        # @param Tag: 标签
        # @type Tag: Array
        # @param AddressId: eip主键
        # @type AddressId: String
        # @param MemberId: MemberId信息
        # @type MemberId: String
        # @param RiskExposure: 风险服务暴露
        # @type RiskExposure: Integer
        # @param IsNewAsset: 是否新资产 1新
        # @type IsNewAsset: Integer
        # @param VerifyStatus: 资产认证状态，0-待认证，1-认证成功，2-认证中，3+-认证失败
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

      # 凭证数据结构，用于列表查询和详情查询的响应
      class KeySandboxCredential < TencentCloud::Common::AbstractModel
        # @param CredentialId: 凭证ID
        # @type CredentialId: String
        # @param CredentialName: 凭证名称
        # @type CredentialName: String
        # @param CredentialType: 凭证类型
        # 枚举值：
        # access：常规密钥（Key/Value键值对）
        # sts：STS临时密钥凭据
        # @type CredentialType: String
        # @param CredentialEffectScope: 生效机器范围
        # @type CredentialEffectScope: :class:`Tencentcloud::Csip.v20221121.models.CredentialEffectScope`
        # @param CreateTime: 创建时间
        # 参数格式：YYYY-MM-DDTHH:mm:ssZ（ISO8601格式）
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 参数格式：YYYY-MM-DDTHH:mm:ssZ（ISO8601格式）
        # @type UpdateTime: String

        attr_accessor :CredentialId, :CredentialName, :CredentialType, :CredentialEffectScope, :CreateTime, :UpdateTime

        def initialize(credentialid=nil, credentialname=nil, credentialtype=nil, credentialeffectscope=nil, createtime=nil, updatetime=nil)
          @CredentialId = credentialid
          @CredentialName = credentialname
          @CredentialType = credentialtype
          @CredentialEffectScope = credentialeffectscope
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @CredentialId = params['CredentialId']
          @CredentialName = params['CredentialName']
          @CredentialType = params['CredentialType']
          unless params['CredentialEffectScope'].nil?
            @CredentialEffectScope = CredentialEffectScope.new
            @CredentialEffectScope.deserialize(params['CredentialEffectScope'])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # KeyValue对
      class KeyValue < TencentCloud::Common::AbstractModel
        # @param Key: 字段
        # @type Key: String
        # @param Value: 值
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

      # 位置信息
      class Location < TencentCloud::Common::AbstractModel
        # @param Country: 国家
        # @type Country: String
        # @param Region: 地区
        # @type Region: String
        # @param City: 城市
        # @type City: String

        attr_accessor :Country, :Region, :City

        def initialize(country=nil, region=nil, city=nil)
          @Country = country
          @Region = region
          @City = city
        end

        def deserialize(params)
          @Country = params['Country']
          @Region = params['Region']
          @City = params['City']
        end
      end

      # ModifyDspmAccessRecord请求参数结构体
      class ModifyDspmAccessRecordRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Id: 来源ip
        # @type Id: Array
        # @param View: 视图。ip或instance
        # @type View: String
        # @param Noted: 阅读标记。 1-已阅
        # @type Noted: Integer

        attr_accessor :MemberId, :Id, :View, :Noted

        def initialize(memberid=nil, id=nil, view=nil, noted=nil)
          @MemberId = memberid
          @Id = id
          @View = view
          @Noted = noted
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          unless params['Id'].nil?
            @Id = []
            params['Id'].each do |i|
              dspmaccessrecordid_tmp = DspmAccessRecordId.new
              dspmaccessrecordid_tmp.deserialize(i)
              @Id << dspmaccessrecordid_tmp
            end
          end
          @View = params['View']
          @Noted = params['Noted']
        end
      end

      # ModifyDspmAccessRecord返回参数结构体
      class ModifyDspmAccessRecordResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDspmApproveStatus请求参数结构体
      class ModifyDspmApproveStatusRequest < TencentCloud::Common::AbstractModel
        # @param OrderId: 申请单id
        # @type OrderId: String
        # @param Status: 状态。1-通过 2-拒绝
        # @type Status: Integer
        # @param Comment: 审批信息
        # @type Comment: String

        attr_accessor :OrderId, :Status, :Comment

        def initialize(orderid=nil, status=nil, comment=nil)
          @OrderId = orderid
          @Status = status
          @Comment = comment
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @Status = params['Status']
          @Comment = params['Comment']
        end
      end

      # ModifyDspmApproveStatus返回参数结构体
      class ModifyDspmApproveStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDspmAssetAccountPrivileges请求参数结构体
      class ModifyDspmAssetAccountPrivilegesRequest < TencentCloud::Common::AbstractModel
        # @param AssetId: 实例id
        # @type AssetId: String
        # @param Account: 账号名
        # @type Account: String
        # @param Privilege: 权限信息
        # @type Privilege: :class:`Tencentcloud::Csip.v20221121.models.DspmDbAccountPrivilege`
        # @param Host: 主机地址
        # @type Host: String
        # @param RiskId: 风险id
        # @type RiskId: String

        attr_accessor :AssetId, :Account, :Privilege, :Host, :RiskId

        def initialize(assetid=nil, account=nil, privilege=nil, host=nil, riskid=nil)
          @AssetId = assetid
          @Account = account
          @Privilege = privilege
          @Host = host
          @RiskId = riskid
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @Account = params['Account']
          unless params['Privilege'].nil?
            @Privilege = DspmDbAccountPrivilege.new
            @Privilege.deserialize(params['Privilege'])
          end
          @Host = params['Host']
          @RiskId = params['RiskId']
        end
      end

      # ModifyDspmAssetAccountPrivileges返回参数结构体
      class ModifyDspmAssetAccountPrivilegesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDspmAssetAccount请求参数结构体
      class ModifyDspmAssetAccountRequest < TencentCloud::Common::AbstractModel
        # @param AssetId: 实例id
        # @type AssetId: String
        # @param Account: 账号名
        # @type Account: String
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Host: 主机地址
        # @type Host: String
        # @param AccountType: 账号类型
        # @type AccountType: Integer
        # @param Remark: 备注
        # @type Remark: String
        # @param RiskId: 风险id
        # @type RiskId: String

        attr_accessor :AssetId, :Account, :MemberId, :Host, :AccountType, :Remark, :RiskId

        def initialize(assetid=nil, account=nil, memberid=nil, host=nil, accounttype=nil, remark=nil, riskid=nil)
          @AssetId = assetid
          @Account = account
          @MemberId = memberid
          @Host = host
          @AccountType = accounttype
          @Remark = remark
          @RiskId = riskid
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @Account = params['Account']
          @MemberId = params['MemberId']
          @Host = params['Host']
          @AccountType = params['AccountType']
          @Remark = params['Remark']
          @RiskId = params['RiskId']
        end
      end

      # ModifyDspmAssetAccount返回参数结构体
      class ModifyDspmAssetAccountResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDspmAssetDataScanTask请求参数结构体
      class ModifyDspmAssetDataScanTaskRequest < TencentCloud::Common::AbstractModel
        # @param AssetIds: 实例id
        # @type AssetIds: Array
        # @param IsScheduled: 是否定时任务
        # @type IsScheduled: Boolean
        # @param IsAgreeAuth: 是否同意一键授权
        # @type IsAgreeAuth: Boolean
        # @param IsRunAtOnce: 是否立即执行
        # @type IsRunAtOnce: Boolean
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param ScheduleConfig: 调度周期配置
        # @type ScheduleConfig: :class:`Tencentcloud::Csip.v20221121.models.DspmScheduleConfig`

        attr_accessor :AssetIds, :IsScheduled, :IsAgreeAuth, :IsRunAtOnce, :MemberId, :ScheduleConfig

        def initialize(assetids=nil, isscheduled=nil, isagreeauth=nil, isrunatonce=nil, memberid=nil, scheduleconfig=nil)
          @AssetIds = assetids
          @IsScheduled = isscheduled
          @IsAgreeAuth = isagreeauth
          @IsRunAtOnce = isrunatonce
          @MemberId = memberid
          @ScheduleConfig = scheduleconfig
        end

        def deserialize(params)
          @AssetIds = params['AssetIds']
          @IsScheduled = params['IsScheduled']
          @IsAgreeAuth = params['IsAgreeAuth']
          @IsRunAtOnce = params['IsRunAtOnce']
          @MemberId = params['MemberId']
          unless params['ScheduleConfig'].nil?
            @ScheduleConfig = DspmScheduleConfig.new
            @ScheduleConfig.deserialize(params['ScheduleConfig'])
          end
        end
      end

      # ModifyDspmAssetDataScanTask返回参数结构体
      class ModifyDspmAssetDataScanTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskIdSet: 识别任务id集合
        # @type TaskIdSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskIdSet, :RequestId

        def initialize(taskidset=nil, requestid=nil)
          @TaskIdSet = taskidset
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskIdSet = params['TaskIdSet']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDspmAssetLogDeliverySwitch请求参数结构体
      class ModifyDspmAssetLogDeliverySwitchRequest < TencentCloud::Common::AbstractModel
        # @param AssetId: 实例id
        # @type AssetId: String
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Enable: 开关。1-打开 0-关闭
        # @type Enable: Integer

        attr_accessor :AssetId, :MemberId, :Enable

        def initialize(assetid=nil, memberid=nil, enable=nil)
          @AssetId = assetid
          @MemberId = memberid
          @Enable = enable
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @MemberId = params['MemberId']
          @Enable = params['Enable']
        end
      end

      # ModifyDspmAssetLogDeliverySwitch返回参数结构体
      class ModifyDspmAssetLogDeliverySwitchResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDspmAssetSecurityAnalysisSwitch请求参数结构体
      class ModifyDspmAssetSecurityAnalysisSwitchRequest < TencentCloud::Common::AbstractModel
        # @param Instances: 实例信息
        # @type Instances: Array
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Enable: 开关。1-打开 0-关闭
        # @type Enable: Integer

        attr_accessor :Instances, :MemberId, :Enable

        def initialize(instances=nil, memberid=nil, enable=nil)
          @Instances = instances
          @MemberId = memberid
          @Enable = enable
        end

        def deserialize(params)
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              dspmassetinstance_tmp = DspmAssetInstance.new
              dspmassetinstance_tmp.deserialize(i)
              @Instances << dspmassetinstance_tmp
            end
          end
          @MemberId = params['MemberId']
          @Enable = params['Enable']
        end
      end

      # ModifyDspmAssetSecurityAnalysisSwitch返回参数结构体
      class ModifyDspmAssetSecurityAnalysisSwitchResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDspmBackupSetting请求参数结构体
      class ModifyDspmBackupSettingRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param BackupLogSaveTime: 备份日志保留时长
        # @type BackupLogSaveTime: Integer
        # @param RestoreLogSaveTime: 恢复日志保留时长
        # @type RestoreLogSaveTime: Integer
        # @param LogMaxSaveTime: 日志最大生命周期限制
        # @type LogMaxSaveTime: Integer
        # @param OnlineLogMaxSaveTime: 在线日志最大天数限制
        # @type OnlineLogMaxSaveTime: Integer

        attr_accessor :MemberId, :BackupLogSaveTime, :RestoreLogSaveTime, :LogMaxSaveTime, :OnlineLogMaxSaveTime

        def initialize(memberid=nil, backuplogsavetime=nil, restorelogsavetime=nil, logmaxsavetime=nil, onlinelogmaxsavetime=nil)
          @MemberId = memberid
          @BackupLogSaveTime = backuplogsavetime
          @RestoreLogSaveTime = restorelogsavetime
          @LogMaxSaveTime = logmaxsavetime
          @OnlineLogMaxSaveTime = onlinelogmaxsavetime
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          @BackupLogSaveTime = params['BackupLogSaveTime']
          @RestoreLogSaveTime = params['RestoreLogSaveTime']
          @LogMaxSaveTime = params['LogMaxSaveTime']
          @OnlineLogMaxSaveTime = params['OnlineLogMaxSaveTime']
        end
      end

      # ModifyDspmBackupSetting返回参数结构体
      class ModifyDspmBackupSettingResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDspmIdentifyInfo请求参数结构体
      class ModifyDspmIdentifyInfoRequest < TencentCloud::Common::AbstractModel
        # @param Subject: 对象。uin或person id
        # @type Subject: String
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :Subject, :Remark

        def initialize(subject=nil, remark=nil)
          @Subject = subject
          @Remark = remark
        end

        def deserialize(params)
          @Subject = params['Subject']
          @Remark = params['Remark']
        end
      end

      # ModifyDspmIdentifyInfo返回参数结构体
      class ModifyDspmIdentifyInfoResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDspmIpInfo请求参数结构体
      class ModifyDspmIpInfoRequest < TencentCloud::Common::AbstractModel
        # @param Ip: ip地址
        # @type Ip: String
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :Ip, :MemberId, :Remark

        def initialize(ip=nil, memberid=nil, remark=nil)
          @Ip = ip
          @MemberId = memberid
          @Remark = remark
        end

        def deserialize(params)
          @Ip = params['Ip']
          @MemberId = params['MemberId']
          @Remark = params['Remark']
        end
      end

      # ModifyDspmIpInfo返回参数结构体
      class ModifyDspmIpInfoResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDspmPersonalIdentify请求参数结构体
      class ModifyDspmPersonalIdentifyRequest < TencentCloud::Common::AbstractModel
        # @param PersonId: 身份id
        # @type PersonId: String
        # @param Phone: 手机号
        # @type Phone: String
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :PersonId, :Phone, :Remark

        def initialize(personid=nil, phone=nil, remark=nil)
          @PersonId = personid
          @Phone = phone
          @Remark = remark
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @Phone = params['Phone']
          @Remark = params['Remark']
        end
      end

      # ModifyDspmPersonalIdentify返回参数结构体
      class ModifyDspmPersonalIdentifyResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDspmRestoreLogTask请求参数结构体
      class ModifyDspmRestoreLogTaskRequest < TencentCloud::Common::AbstractModel
        # @param Id: 备份日志Id
        # @type Id: Integer
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array

        attr_accessor :Id, :MemberId

        def initialize(id=nil, memberid=nil)
          @Id = id
          @MemberId = memberid
        end

        def deserialize(params)
          @Id = params['Id']
          @MemberId = params['MemberId']
        end
      end

      # ModifyDspmRestoreLogTask返回参数结构体
      class ModifyDspmRestoreLogTaskResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDspmRiskInfo请求参数结构体
      class ModifyDspmRiskInfoRequest < TencentCloud::Common::AbstractModel
        # @param RiskId: 风险id
        # @type RiskId: Array
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param Status: 风险状态 2-已忽略
        # @type Status: Integer

        attr_accessor :RiskId, :MemberId, :Status

        def initialize(riskid=nil, memberid=nil, status=nil)
          @RiskId = riskid
          @MemberId = memberid
          @Status = status
        end

        def deserialize(params)
          @RiskId = params['RiskId']
          @MemberId = params['MemberId']
          @Status = params['Status']
        end
      end

      # ModifyDspmRiskInfo返回参数结构体
      class ModifyDspmRiskInfoResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDspmRiskStrategy请求参数结构体
      class ModifyDspmRiskStrategyRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param StrategyType: 风险策略类型
        # @type StrategyType: String
        # @param IsEnabled: 是否启用
        # @type IsEnabled: Integer
        # @param Rule: 策略内容，如：{     ThresholdValue: "100" }
        # @type Rule: String
        # @param RiskLevel: 可选值：Info/Low/Medium/High
        # @type RiskLevel: String
        # @param StrategyId: 策略id
        # @type StrategyId: Array

        attr_accessor :MemberId, :StrategyType, :IsEnabled, :Rule, :RiskLevel, :StrategyId

        def initialize(memberid=nil, strategytype=nil, isenabled=nil, rule=nil, risklevel=nil, strategyid=nil)
          @MemberId = memberid
          @StrategyType = strategytype
          @IsEnabled = isenabled
          @Rule = rule
          @RiskLevel = risklevel
          @StrategyId = strategyid
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          @StrategyType = params['StrategyType']
          @IsEnabled = params['IsEnabled']
          @Rule = params['Rule']
          @RiskLevel = params['RiskLevel']
          @StrategyId = params['StrategyId']
        end
      end

      # ModifyDspmRiskStrategy返回参数结构体
      class ModifyDspmRiskStrategyResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDspmWhitelistStrategy请求参数结构体
      class ModifyDspmWhitelistStrategyRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param WhitelistStrategyId: 白名单id
        # @type WhitelistStrategyId: String
        # @param Name: 白名单名
        # @type Name: String
        # @param Rule: 规则
        # @type Rule: String
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :MemberId, :WhitelistStrategyId, :Name, :Rule, :Remark

        def initialize(memberid=nil, whiteliststrategyid=nil, name=nil, rule=nil, remark=nil)
          @MemberId = memberid
          @WhitelistStrategyId = whiteliststrategyid
          @Name = name
          @Rule = rule
          @Remark = remark
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          @WhitelistStrategyId = params['WhitelistStrategyId']
          @Name = params['Name']
          @Rule = params['Rule']
          @Remark = params['Remark']
        end
      end

      # ModifyDspmWhitelistStrategy返回参数结构体
      class ModifyDspmWhitelistStrategyResponse < TencentCloud::Common::AbstractModel
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

      # ModifyOrganizationAccountStatus请求参数结构体
      class ModifyOrganizationAccountStatusRequest < TencentCloud::Common::AbstractModel
        # @param Status: 修改集团账号状态，1 开启， 0关闭
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

      # ModifyUebaRuleSwitch请求参数结构体
      class ModifyUebaRuleSwitchRequest < TencentCloud::Common::AbstractModel
        # @param RuleID: 策略ID
        # @type RuleID: String
        # @param Status: 开关状态
        # @type Status: Boolean
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array

        attr_accessor :RuleID, :Status, :MemberId

        def initialize(ruleid=nil, status=nil, memberid=nil)
          @RuleID = ruleid
          @Status = status
          @MemberId = memberid
        end

        def deserialize(params)
          @RuleID = params['RuleID']
          @Status = params['Status']
          @MemberId = params['MemberId']
        end
      end

      # ModifyUebaRuleSwitch返回参数结构体
      class ModifyUebaRuleSwitchResponse < TencentCloud::Common::AbstractModel
        # @param Code: 0成功，1失败
        # @type Code: Integer
        # @param Msg: 返回信息
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Code, :Msg, :RequestId

        def initialize(code=nil, msg=nil, requestid=nil)
          @Code = code
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Code = params['Code']
          @Msg = params['Msg']
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
        # @type IsCore: Integer
        # @param IsNewAsset: 是否新资产 1新
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

      # 集团账号详情
      class OrganizationInfo < TencentCloud::Common::AbstractModel
        # @param NickName: 成员账号名称
        # @type NickName: String
        # @param NodeName: 部门节点名称，账号所属部门
        # @type NodeName: String
        # @param Role: Member/Admin/DelegatedAdmin/EntityAdmin; 成员/管理员/委派管理员/主体管理员
        # @type Role: String
        # @param MemberId: 成员账号id
        # @type MemberId: String
        # @param JoinType: 账号加入方式,create/invite
        # @type JoinType: String
        # @param GroupName: 集团名称
        # @type GroupName: String
        # @param AdminName: 管理员账号名称
        # @type AdminName: String
        # @param AdminUin: 管理员Uin
        # @type AdminUin: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param NodeCount: 部门数
        # @type NodeCount: Integer
        # @param MemberCount: 成员数
        # @type MemberCount: Integer
        # @param SubAccountCount: 子账号数
        # @type SubAccountCount: Integer
        # @param AbnormalSubUserCount: 异常子账号数量
        # @type AbnormalSubUserCount: Integer
        # @param GroupPermission: 集团关系策略权限
        # @type GroupPermission: Array
        # @param MemberPermission: 成员关系策略权限
        # @type MemberPermission: Array
        # @param GroupPayMode: 集团付费模式；0/自付费，1/代付费
        # @type GroupPayMode: Integer
        # @param MemberPayMode: 个人付费模式；0/自付费，1/代付费
        # @type MemberPayMode: Integer
        # @param CFWProtect: 空则未开启，否则不同字符串对应不同版本，common为通用，不区分版本
        # @type CFWProtect: String
        # @param WAFProtect: 空则未开启，否则不同字符串对应不同版本，common为通用，不区分版本
        # @type WAFProtect: String
        # @param CWPProtect: 空则未开启，否则不同字符串对应不同版本，common为通用，不区分版本
        # @type CWPProtect: String
        # @param Departments: 所有部门的集合数组
        # @type Departments: Array
        # @param MemberCreateTime: 成员创建时间
        # @type MemberCreateTime: String
        # @param CSIPProtect: Advanced/Enterprise/Ultimate
        # @type CSIPProtect: String
        # @param QuotaConsumer: 1表示配额消耗方
        # @type QuotaConsumer: Integer
        # @param EnableAdminCount: 管理员/委派管理员 已开启数量
        # @type EnableAdminCount: Integer
        # @param CloudCountDesc: 账户多云信息统计，数组形式，具体参考CloudCountDesc描述
        # @type CloudCountDesc: Array
        # @param AdminCount: 管理员/委派管理员 总数量
        # @type AdminCount: Integer

        attr_accessor :NickName, :NodeName, :Role, :MemberId, :JoinType, :GroupName, :AdminName, :AdminUin, :CreateTime, :NodeCount, :MemberCount, :SubAccountCount, :AbnormalSubUserCount, :GroupPermission, :MemberPermission, :GroupPayMode, :MemberPayMode, :CFWProtect, :WAFProtect, :CWPProtect, :Departments, :MemberCreateTime, :CSIPProtect, :QuotaConsumer, :EnableAdminCount, :CloudCountDesc, :AdminCount

        def initialize(nickname=nil, nodename=nil, role=nil, memberid=nil, jointype=nil, groupname=nil, adminname=nil, adminuin=nil, createtime=nil, nodecount=nil, membercount=nil, subaccountcount=nil, abnormalsubusercount=nil, grouppermission=nil, memberpermission=nil, grouppaymode=nil, memberpaymode=nil, cfwprotect=nil, wafprotect=nil, cwpprotect=nil, departments=nil, membercreatetime=nil, csipprotect=nil, quotaconsumer=nil, enableadmincount=nil, cloudcountdesc=nil, admincount=nil)
          @NickName = nickname
          @NodeName = nodename
          @Role = role
          @MemberId = memberid
          @JoinType = jointype
          @GroupName = groupname
          @AdminName = adminname
          @AdminUin = adminuin
          @CreateTime = createtime
          @NodeCount = nodecount
          @MemberCount = membercount
          @SubAccountCount = subaccountcount
          @AbnormalSubUserCount = abnormalsubusercount
          @GroupPermission = grouppermission
          @MemberPermission = memberpermission
          @GroupPayMode = grouppaymode
          @MemberPayMode = memberpaymode
          @CFWProtect = cfwprotect
          @WAFProtect = wafprotect
          @CWPProtect = cwpprotect
          @Departments = departments
          @MemberCreateTime = membercreatetime
          @CSIPProtect = csipprotect
          @QuotaConsumer = quotaconsumer
          @EnableAdminCount = enableadmincount
          @CloudCountDesc = cloudcountdesc
          @AdminCount = admincount
        end

        def deserialize(params)
          @NickName = params['NickName']
          @NodeName = params['NodeName']
          @Role = params['Role']
          @MemberId = params['MemberId']
          @JoinType = params['JoinType']
          @GroupName = params['GroupName']
          @AdminName = params['AdminName']
          @AdminUin = params['AdminUin']
          @CreateTime = params['CreateTime']
          @NodeCount = params['NodeCount']
          @MemberCount = params['MemberCount']
          @SubAccountCount = params['SubAccountCount']
          @AbnormalSubUserCount = params['AbnormalSubUserCount']
          @GroupPermission = params['GroupPermission']
          @MemberPermission = params['MemberPermission']
          @GroupPayMode = params['GroupPayMode']
          @MemberPayMode = params['MemberPayMode']
          @CFWProtect = params['CFWProtect']
          @WAFProtect = params['WAFProtect']
          @CWPProtect = params['CWPProtect']
          @Departments = params['Departments']
          @MemberCreateTime = params['MemberCreateTime']
          @CSIPProtect = params['CSIPProtect']
          @QuotaConsumer = params['QuotaConsumer']
          @EnableAdminCount = params['EnableAdminCount']
          unless params['CloudCountDesc'].nil?
            @CloudCountDesc = []
            params['CloudCountDesc'].each do |i|
              cloudcountdesc_tmp = CloudCountDesc.new
              cloudcountdesc_tmp.deserialize(i)
              @CloudCountDesc << cloudcountdesc_tmp
            end
          end
          @AdminCount = params['AdminCount']
        end
      end

      # 集团账号成员详情
      class OrganizationUserInfo < TencentCloud::Common::AbstractModel
        # @param Uin: 成员账号Uin
        # @type Uin: String
        # @param NickName: 成员账号名称
        # @type NickName: String
        # @param NodeName: 部门节点名称，账号所属部门
        # @type NodeName: String
        # @param AssetCount: 资产数量
        # @type AssetCount: Integer
        # @param RiskCount: 风险数量
        # @type RiskCount: Integer
        # @param AttackCount: 攻击数量
        # @type AttackCount: Integer
        # @param Role: Member/Admin/;成员或者管理员
        # @type Role: String
        # @param MemberId: 成员账号id
        # @type MemberId: String
        # @param AppId: 成员账号Appid
        # @type AppId: String
        # @param JoinType: 账号加入方式,create/invite
        # @type JoinType: String
        # @param CFWProtect: 空则未开启，否则不同字符串对应不同版本，common为通用，不区分版本
        # @type CFWProtect: String
        # @param WAFProtect: 空则未开启，否则不同字符串对应不同版本，common为通用，不区分版本
        # @type WAFProtect: String
        # @param CWPProtect: 空则未开启，否则不同字符串对应不同版本，common为通用，不区分版本
        # @type CWPProtect: String
        # @param Enable: 1启用，0未启用
        # @type Enable: Integer
        # @param CSIPProtect: "Free"       //免费版  "Advanced"   //高级版 "Enterprise" //企业版 "Ultimate"   //旗舰版
        # @type CSIPProtect: String
        # @param QuotaConsumer: 1为配额消耗者
        # @type QuotaConsumer: Integer
        # @param CloudType: 账户类型，0为腾讯云账户，1为AWS账户
        # @type CloudType: Integer
        # @param SyncFrequency: 0为缺省值，1为10分钟，2为1小时，3为24小时
        # @type SyncFrequency: Integer
        # @param IsExpired: 多云账户是否过期
        # @type IsExpired: Boolean
        # @param PermissionList: 多云账户 权限列表
        # @type PermissionList: Array
        # @param AuthType: 1
        # @type AuthType: Integer
        # @param TcMemberType: 0 腾讯云集团账户
        # 1 腾讯云接入账户
        # 2 非腾讯云
        # @type TcMemberType: Integer
        # @param SubUserCount: 子账号数量
        # @type SubUserCount: Integer
        # @param JoinTypeInfo: 加入方式详细信息
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
        # @type VSSScan: Boolean
        # @param CWPScan: 0不支持，1支持
        # @type CWPScan: String
        # @param CFWPatch: 1支持虚拟补丁，0或空不支持
        # @type CFWPatch: String
        # @param WafPatch: 0不支持，1支持
        # @type WafPatch: Integer
        # @param CWPFix: 0不支持，1支持
        # @type CWPFix: Integer
        # @param CveId: cveid
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

      # 地域配置
      class RegionConfig < TencentCloud::Common::AbstractModel
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param RegionName: 地域中文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionName: String
        # @param Foreign: 是否国外
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Foreign: Integer
        # @param Code: 地域码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: Integer
        # @param IsAutoDriveCloud: 是否自驾云
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAutoDriveCloud: Integer
        # @param IsSupportNat: 是否支持nat
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsSupportNat: Integer
        # @param RegionArea: 地区信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionArea: String
        # @param RegionNameEN: 地域英文
        # @type RegionNameEN: String

        attr_accessor :Region, :RegionName, :Foreign, :Code, :IsAutoDriveCloud, :IsSupportNat, :RegionArea, :RegionNameEN

        def initialize(region=nil, regionname=nil, foreign=nil, code=nil, isautodrivecloud=nil, issupportnat=nil, regionarea=nil, regionnameen=nil)
          @Region = region
          @RegionName = regionname
          @Foreign = foreign
          @Code = code
          @IsAutoDriveCloud = isautodrivecloud
          @IsSupportNat = issupportnat
          @RegionArea = regionarea
          @RegionNameEN = regionnameen
        end

        def deserialize(params)
          @Region = params['Region']
          @RegionName = params['RegionName']
          @Foreign = params['Foreign']
          @Code = params['Code']
          @IsAutoDriveCloud = params['IsAutoDriveCloud']
          @IsSupportNat = params['IsSupportNat']
          @RegionArea = params['RegionArea']
          @RegionNameEN = params['RegionNameEN']
        end
      end

      # 相关攻击事件结构
      class RelatedEvent < TencentCloud::Common::AbstractModel
        # @param EventID: 事件ID
        # @type EventID: String
        # @param Description: 事件描述
        # @type Description: String
        # @param RelatedCount: 与事件关联的告警数量
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

      # 仓库镜像列表
      class RepositoryImageVO < TencentCloud::Common::AbstractModel
        # @param AppId: 用户appid
        # @type AppId: Integer
        # @param Uin: 用户uin
        # @type Uin: String
        # @param NickName: 昵称
        # @type NickName: String
        # @param InstanceId: 镜像id
        # @type InstanceId: String
        # @param InstanceName: 镜像名称
        # @type InstanceName: String
        # @param InstanceCreateTime: 镜像创建时间
        # @type InstanceCreateTime: String
        # @param InstanceSize: 镜像大小带单位
        # @type InstanceSize: String
        # @param BuildCount: 构建次数
        # @type BuildCount: Integer
        # @param InstanceType: 镜像类型
        # @type InstanceType: String
        # @param AuthStatus: 授权状态
        # @type AuthStatus: Integer
        # @param InstanceVersion: 镜像版本
        # @type InstanceVersion: String
        # @param Region: 地域
        # @type Region: String
        # @param RepositoryUrl: 仓库地址
        # @type RepositoryUrl: String
        # @param RepositoryName: 仓库名称
        # @type RepositoryName: String
        # @param IsCore: 是否核心
        # @type IsCore: Integer
        # @param VulRisk: 漏洞风险
        # @type VulRisk: Integer
        # @param CheckCount: 检查任务
        # @type CheckCount: Integer
        # @param CheckTime: 体检时间
        # @type CheckTime: String
        # @param IsNewAsset: 是否新资产 1新
        # @type IsNewAsset: Integer

        attr_accessor :AppId, :Uin, :NickName, :InstanceId, :InstanceName, :InstanceCreateTime, :InstanceSize, :BuildCount, :InstanceType, :AuthStatus, :InstanceVersion, :Region, :RepositoryUrl, :RepositoryName, :IsCore, :VulRisk, :CheckCount, :CheckTime, :IsNewAsset

        def initialize(appid=nil, uin=nil, nickname=nil, instanceid=nil, instancename=nil, instancecreatetime=nil, instancesize=nil, buildcount=nil, instancetype=nil, authstatus=nil, instanceversion=nil, region=nil, repositoryurl=nil, repositoryname=nil, iscore=nil, vulrisk=nil, checkcount=nil, checktime=nil, isnewasset=nil)
          @AppId = appid
          @Uin = uin
          @NickName = nickname
          @InstanceId = instanceid
          @InstanceName = instancename
          @InstanceCreateTime = instancecreatetime
          @InstanceSize = instancesize
          @BuildCount = buildcount
          @InstanceType = instancetype
          @AuthStatus = authstatus
          @InstanceVersion = instanceversion
          @Region = region
          @RepositoryUrl = repositoryurl
          @RepositoryName = repositoryname
          @IsCore = iscore
          @VulRisk = vulrisk
          @CheckCount = checkcount
          @CheckTime = checktime
          @IsNewAsset = isnewasset
        end

        def deserialize(params)
          @AppId = params['AppId']
          @Uin = params['Uin']
          @NickName = params['NickName']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @InstanceCreateTime = params['InstanceCreateTime']
          @InstanceSize = params['InstanceSize']
          @BuildCount = params['BuildCount']
          @InstanceType = params['InstanceType']
          @AuthStatus = params['AuthStatus']
          @InstanceVersion = params['InstanceVersion']
          @Region = params['Region']
          @RepositoryUrl = params['RepositoryUrl']
          @RepositoryName = params['RepositoryName']
          @IsCore = params['IsCore']
          @VulRisk = params['VulRisk']
          @CheckCount = params['CheckCount']
          @CheckTime = params['CheckTime']
          @IsNewAsset = params['IsNewAsset']
        end
      end

      # ResetDspmAssetAccountPassword请求参数结构体
      class ResetDspmAssetAccountPasswordRequest < TencentCloud::Common::AbstractModel
        # @param AssetId: 实例id
        # @type AssetId: String
        # @param Account: 账号名
        # @type Account: String
        # @param Host: 主机地址
        # @type Host: String
        # @param RiskId: 风险id
        # @type RiskId: String

        attr_accessor :AssetId, :Account, :Host, :RiskId

        def initialize(assetid=nil, account=nil, host=nil, riskid=nil)
          @AssetId = assetid
          @Account = account
          @Host = host
          @RiskId = riskid
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @Account = params['Account']
          @Host = params['Host']
          @RiskId = params['RiskId']
        end
      end

      # ResetDspmAssetAccountPassword返回参数结构体
      class ResetDspmAssetAccountPasswordResponse < TencentCloud::Common::AbstractModel
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

      # RetryDspmExportLog请求参数结构体
      class RetryDspmExportLogRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param TaskId: 任务ID
        # @type TaskId: Integer

        attr_accessor :MemberId, :TaskId

        def initialize(memberid=nil, taskid=nil)
          @MemberId = memberid
          @TaskId = taskid
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          @TaskId = params['TaskId']
        end
      end

      # RetryDspmExportLog返回参数结构体
      class RetryDspmExportLogResponse < TencentCloud::Common::AbstractModel
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

      # RevertDspmAssetAccount请求参数结构体
      class RevertDspmAssetAccountRequest < TencentCloud::Common::AbstractModel
        # @param AssetId: 实例id
        # @type AssetId: String
        # @param Account: 账号名
        # @type Account: String
        # @param Host: 主机地址
        # @type Host: String
        # @param PrivilegeFlag: 是否回退权限
        # @type PrivilegeFlag: Integer
        # @param PasswordFlag: 是否回退密码
        # @type PasswordFlag: Integer
        # @param RiskId: 风险id
        # @type RiskId: String

        attr_accessor :AssetId, :Account, :Host, :PrivilegeFlag, :PasswordFlag, :RiskId

        def initialize(assetid=nil, account=nil, host=nil, privilegeflag=nil, passwordflag=nil, riskid=nil)
          @AssetId = assetid
          @Account = account
          @Host = host
          @PrivilegeFlag = privilegeflag
          @PasswordFlag = passwordflag
          @RiskId = riskid
        end

        def deserialize(params)
          @AssetId = params['AssetId']
          @Account = params['Account']
          @Host = params['Host']
          @PrivilegeFlag = params['PrivilegeFlag']
          @PasswordFlag = params['PasswordFlag']
          @RiskId = params['RiskId']
        end
      end

      # RevertDspmAssetAccount返回参数结构体
      class RevertDspmAssetAccountResponse < TencentCloud::Common::AbstractModel
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

      # 风险调用记录详情
      class RiskCallRecord < TencentCloud::Common::AbstractModel
        # @param EventName: 接口名称
        # @type EventName: String
        # @param EventDescCN: 接口中文描述
        # @type EventDescCN: String
        # @param EventDescEN: 接口英文描述
        # @type EventDescEN: String
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param ProductNameCN: 产品中文名称
        # @type ProductNameCN: String
        # @param CallCount: 调用次数
        # @type CallCount: Integer

        attr_accessor :EventName, :EventDescCN, :EventDescEN, :ProductName, :ProductNameCN, :CallCount

        def initialize(eventname=nil, eventdesccn=nil, eventdescen=nil, productname=nil, productnamecn=nil, callcount=nil)
          @EventName = eventname
          @EventDescCN = eventdesccn
          @EventDescEN = eventdescen
          @ProductName = productname
          @ProductNameCN = productnamecn
          @CallCount = callcount
        end

        def deserialize(params)
          @EventName = params['EventName']
          @EventDescCN = params['EventDescCN']
          @EventDescEN = params['EventDescEN']
          @ProductName = params['ProductName']
          @ProductNameCN = params['ProductNameCN']
          @CallCount = params['CallCount']
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

      # 风险详情
      class RiskDetailItem < TencentCloud::Common::AbstractModel
        # @param CreateTime: <p>首次发现时间</p>
        # @type CreateTime: String
        # @param UpdateTime: <p>更新时间</p>
        # @type UpdateTime: String
        # @param RiskStatus: <p>风险状态</p>
        # @type RiskStatus: Integer
        # @param RiskContent: <p>风险内容</p>
        # @type RiskContent: String
        # @param Provider: <p>云厂商</p>
        # @type Provider: String
        # @param ProviderName: <p>云厂商名称</p>
        # @type ProviderName: String
        # @param CloudAccountId: <p>云账号</p>
        # @type CloudAccountId: String
        # @param CloudAccountName: <p>云账号名称</p>
        # @type CloudAccountName: String
        # @param InstanceId: <p>实例ID</p>
        # @type InstanceId: String
        # @param InstanceName: <p>实例名称</p>
        # @type InstanceName: String
        # @param RiskId: <p>风险ID</p>
        # @type RiskId: Integer
        # @param RiskRuleId: <p>风险规则ID</p>
        # @type RiskRuleId: String
        # @param CheckStatus: <p>风险验证状态</p>
        # @type CheckStatus: String
        # @param AppID: <p>用户AppID</p>
        # @type AppID: Integer

        attr_accessor :CreateTime, :UpdateTime, :RiskStatus, :RiskContent, :Provider, :ProviderName, :CloudAccountId, :CloudAccountName, :InstanceId, :InstanceName, :RiskId, :RiskRuleId, :CheckStatus, :AppID

        def initialize(createtime=nil, updatetime=nil, riskstatus=nil, riskcontent=nil, provider=nil, providername=nil, cloudaccountid=nil, cloudaccountname=nil, instanceid=nil, instancename=nil, riskid=nil, riskruleid=nil, checkstatus=nil, appid=nil)
          @CreateTime = createtime
          @UpdateTime = updatetime
          @RiskStatus = riskstatus
          @RiskContent = riskcontent
          @Provider = provider
          @ProviderName = providername
          @CloudAccountId = cloudaccountid
          @CloudAccountName = cloudaccountname
          @InstanceId = instanceid
          @InstanceName = instancename
          @RiskId = riskid
          @RiskRuleId = riskruleid
          @CheckStatus = checkstatus
          @AppID = appid
        end

        def deserialize(params)
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @RiskStatus = params['RiskStatus']
          @RiskContent = params['RiskContent']
          @Provider = params['Provider']
          @ProviderName = params['ProviderName']
          @CloudAccountId = params['CloudAccountId']
          @CloudAccountName = params['CloudAccountName']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @RiskId = params['RiskId']
          @RiskRuleId = params['RiskRuleId']
          @CheckStatus = params['CheckStatus']
          @AppID = params['AppID']
        end
      end

      # 风险规则
      class RiskRuleInfo < TencentCloud::Common::AbstractModel
        # @param RuleID: 风险检查项ID
        # @type RuleID: String
        # @param Provider: 云厂商名称
        # @type Provider: String
        # @param InstanceType: 实例类型
        # @type InstanceType: String
        # @param RiskTitle: 风险名称
        # @type RiskTitle: String
        # @param CheckType: 检查类型
        # @type CheckType: String
        # @param RiskLevel: 风险等级
        # @type RiskLevel: String
        # @param RiskInfluence: 风险危害
        # @type RiskInfluence: String
        # @param RiskFixAdvance: 风险修复指引报告链接
        # @type RiskFixAdvance: String
        # @param DispositionType: 边界管控
        # @type DispositionType: String

        attr_accessor :RuleID, :Provider, :InstanceType, :RiskTitle, :CheckType, :RiskLevel, :RiskInfluence, :RiskFixAdvance, :DispositionType

        def initialize(ruleid=nil, provider=nil, instancetype=nil, risktitle=nil, checktype=nil, risklevel=nil, riskinfluence=nil, riskfixadvance=nil, dispositiontype=nil)
          @RuleID = ruleid
          @Provider = provider
          @InstanceType = instancetype
          @RiskTitle = risktitle
          @CheckType = checktype
          @RiskLevel = risklevel
          @RiskInfluence = riskinfluence
          @RiskFixAdvance = riskfixadvance
          @DispositionType = dispositiontype
        end

        def deserialize(params)
          @RuleID = params['RuleID']
          @Provider = params['Provider']
          @InstanceType = params['InstanceType']
          @RiskTitle = params['RiskTitle']
          @CheckType = params['CheckType']
          @RiskLevel = params['RiskLevel']
          @RiskInfluence = params['RiskInfluence']
          @RiskFixAdvance = params['RiskFixAdvance']
          @DispositionType = params['DispositionType']
        end
      end

      # 风险规则
      class RiskRuleItem < TencentCloud::Common::AbstractModel
        # @param ItemId: 风险检查项ID
        # @type ItemId: String
        # @param Provider: 云厂商名称
        # @type Provider: String
        # @param InstanceType: 实例类型
        # @type InstanceType: String
        # @param InstanceName: 实例类型名称
        # @type InstanceName: String
        # @param RiskTitle: 风险名称
        # @type RiskTitle: String
        # @param CheckType: 检查类型
        # @type CheckType: String
        # @param Severity: 风险等级
        # @type Severity: String
        # @param RiskInfluence: 风险危害
        # @type RiskInfluence: String

        attr_accessor :ItemId, :Provider, :InstanceType, :InstanceName, :RiskTitle, :CheckType, :Severity, :RiskInfluence

        def initialize(itemid=nil, provider=nil, instancetype=nil, instancename=nil, risktitle=nil, checktype=nil, severity=nil, riskinfluence=nil)
          @ItemId = itemid
          @Provider = provider
          @InstanceType = instancetype
          @InstanceName = instancename
          @RiskTitle = risktitle
          @CheckType = checktype
          @Severity = severity
          @RiskInfluence = riskinfluence
        end

        def deserialize(params)
          @ItemId = params['ItemId']
          @Provider = params['Provider']
          @InstanceType = params['InstanceType']
          @InstanceName = params['InstanceName']
          @RiskTitle = params['RiskTitle']
          @CheckType = params['CheckType']
          @Severity = params['Severity']
          @RiskInfluence = params['RiskInfluence']
        end
      end

      # 告警数据攻击者或受害者信息
      class RoleInfo < TencentCloud::Common::AbstractModel
        # @param IP: IP
        # @type IP: String
        # @param HostIP: HostIP
        # @type HostIP: String
        # @param OriginIP: 原始IP
        # @type OriginIP: String
        # @param Port: 端口
        # @type Port: Integer
        # @param InstanceID: 资产ID
        # @type InstanceID: String
        # @param City: 城市
        # @type City: String
        # @param Province: 省份
        # @type Province: String
        # @param Country: 国家
        # @type Country: String
        # @param Address: 地址
        # @type Address: String
        # @param Latitude: 纬度
        # @type Latitude: String
        # @param Longitude: 经度
        # @type Longitude: String
        # @param Info: 信息
        # @type Info: String
        # @param Domain: 域名
        # @type Domain: String
        # @param Name: 企业名称
        # @type Name: String
        # @param Account: 账号
        # @type Account: String
        # @param Family: 家族团伙
        # @type Family: String
        # @param VirusName: 病毒名
        # @type VirusName: String
        # @param MD5: MD5值
        # @type MD5: String
        # @param FileName: 恶意进程文件名
        # @type FileName: String
        # @param AssetType: 1:主机资产 2:域名资产 3:网络资产
        # @type AssetType: Integer
        # @param FromLogAnalysisData: 来源日志分析的信息字段
        # @type FromLogAnalysisData: Array
        # @param ContainerName: 容器名
        # @type ContainerName: String
        # @param ContainerID: 容器ID
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

      # STS临时密钥凭据（出参专用），用于查询详情接口的响应。SecretID和SecretKey字段返回打码后的值，System返回原文
      class STSCredentialOutput < TencentCloud::Common::AbstractModel
        # @param System: 凭据提供商标识（原文），如tencentCam、aws、aliyun等
        # @type System: String
        # @param SecretID: SecretID（打码后）
        # 补充说明：保留前3后4位，中间用***替代；长度不足7位时全部替换为***
        # @type SecretID: String
        # @param SecretKey: SecretKey（打码后）
        # 补充说明：保留前3后4位，中间用***替代；长度不足7位时全部替换为***
        # @type SecretKey: String

        attr_accessor :System, :SecretID, :SecretKey

        def initialize(system=nil, secretid=nil, secretkey=nil)
          @System = system
          @SecretID = secretid
          @SecretKey = secretkey
        end

        def deserialize(params)
          @System = params['System']
          @SecretID = params['SecretID']
          @SecretKey = params['SecretKey']
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
        # @type TaskName: String
        # @param StartTime: 任务开始时间
        # @type StartTime: String
        # @param EndTime: 任务结束时间
        # @type EndTime: String
        # @param ScanPlanContent: cron格式
        # @type ScanPlanContent: String
        # @param TaskType: 0-周期任务,1-立即扫描,2-定时扫描,3-自定义
        # @type TaskType: Integer
        # @param InsertTime: 创建时间
        # @type InsertTime: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param SelfDefiningAssets: 自定义指定扫描资产信息
        # @type SelfDefiningAssets: Array
        # @param PredictTime: 预估时间
        # @type PredictTime: Integer
        # @param PredictEndTime: 预估完成时间
        # @type PredictEndTime: String
        # @param ReportNumber: 报告数量
        # @type ReportNumber: Integer
        # @param AssetNumber: 资产数量
        # @type AssetNumber: Integer
        # @param ScanStatus: 扫描状态, 0-初始值，1-正在扫描，2-扫描完成，3-扫描出错，4-停止扫描
        # @type ScanStatus: Integer
        # @param Percent: 任务进度
        # @type Percent: Float
        # @param ScanItem: port/poc/weakpass/webcontent/configrisk
        # @type ScanItem: String
        # @param ScanAssetType: 0-全扫，1-指定资产扫，2-排除资产扫，3-自定义指定资产扫描
        # @type ScanAssetType: Integer
        # @param VSSTaskId: vss子任务id
        # @type VSSTaskId: String
        # @param CSPMTaskId: cspm子任务id
        # @type CSPMTaskId: String
        # @param CWPPOCId: 主机漏扫子任务id
        # @type CWPPOCId: String
        # @param CWPBlId: 主机基线子任务id
        # @type CWPBlId: String
        # @param VSSTaskProcess: vss子任务进度
        # @type VSSTaskProcess: Integer
        # @param CSPMTaskProcess: cspm子任务进度
        # @type CSPMTaskProcess: Integer
        # @param CWPPOCProcess: 主机漏扫子任务进度
        # @type CWPPOCProcess: Integer
        # @param CWPBlProcess: 主机基线子任务进度
        # @type CWPBlProcess: Integer
        # @param ErrorCode: 异常状态码
        # @type ErrorCode: Integer
        # @param ErrorInfo: 异常信息
        # @type ErrorInfo: String
        # @param StartDay: 周期任务开始的天数
        # @type StartDay: Integer
        # @param Frequency: 扫描频率,单位天,1-每天,7-每周,30-月,0-扫描一次
        # @type Frequency: Integer
        # @param CompleteNumber: 完成次数
        # @type CompleteNumber: Integer
        # @param CompleteAssetNumber: 已完成资产个数
        # @type CompleteAssetNumber: Integer
        # @param RiskCount: 风险数
        # @type RiskCount: Integer
        # @param Assets: 资产
        # @type Assets: Array
        # @param AppId: 用户Appid
        # @type AppId: String
        # @param UIN: 用户主账户ID
        # @type UIN: String
        # @param UserName: 用户名称
        # @type UserName: String
        # @param TaskMode: 体检模式，0-标准模式，1-快速模式，2-高级模式
        # @type TaskMode: Integer
        # @param ScanFrom: 扫描来源
        # @type ScanFrom: String
        # @param IsFree: 是否限免体检0不是，1是
        # @type IsFree: Integer
        # @param IsDelete: 是否可以删除，1-可以，0-不可以，对应多账户管理使用
        # @type IsDelete: Integer
        # @param SourceType: 任务源类型，0-默认，1-小助手，2-体检项
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

      # SendDspmAssetLoginSmsCode请求参数结构体
      class SendDspmAssetLoginSmsCodeRequest < TencentCloud::Common::AbstractModel
        # @param PersonId: 个人id
        # @type PersonId: String
        # @param AssetId: 数据库资产id
        # @type AssetId: String
        # @param Host: 主机。默认'%'
        # @type Host: String

        attr_accessor :PersonId, :AssetId, :Host

        def initialize(personid=nil, assetid=nil, host=nil)
          @PersonId = personid
          @AssetId = assetid
          @Host = host
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @AssetId = params['AssetId']
          @Host = params['Host']
        end
      end

      # SendDspmAssetLoginSmsCode返回参数结构体
      class SendDspmAssetLoginSmsCodeResponse < TencentCloud::Common::AbstractModel
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

      # 敏感分类分级描述
      class SensitiveDetail < TencentCloud::Common::AbstractModel
        # @param CategoryRule: 字段分类
        # @type CategoryRule: String
        # @param LevelRisk: 字段分级
        # @type LevelRisk: String
        # @param IsSensitive: 1:敏感信息字段
        # 0:非敏感字段
        # @type IsSensitive: Integer

        attr_accessor :CategoryRule, :LevelRisk, :IsSensitive

        def initialize(categoryrule=nil, levelrisk=nil, issensitive=nil)
          @CategoryRule = categoryrule
          @LevelRisk = levelrisk
          @IsSensitive = issensitive
        end

        def deserialize(params)
          @CategoryRule = params['CategoryRule']
          @LevelRisk = params['LevelRisk']
          @IsSensitive = params['IsSensitive']
        end
      end

      # 服务风险
      class ServerRisk < TencentCloud::Common::AbstractModel
        # @param ServiceTag: 测绘标签
        # @type ServiceTag: String
        # @param Port: 端口
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
        # @type RiskDetails: String
        # @param Suggestion: 处置建议
        # @type Suggestion: String
        # @param Status: 状态，0未处理、1已处置、2已忽略、3云防已防护
        # @type Status: Integer
        # @param Id: 资产唯一id
        # @type Id: String
        # @param AppId: 用户appid
        # @type AppId: String
        # @param Nick: 用户昵称
        # @type Nick: String
        # @param Uin: 用户uin
        # @type Uin: String
        # @param ServiceSnapshot: 服务快照
        # @type ServiceSnapshot: String
        # @param Url: 服务访问的url
        # @type Url: String
        # @param Index: 列表索引值
        # @type Index: String
        # @param RiskList: 风险列表
        # @type RiskList: Array
        # @param SuggestionList: 建议列表
        # @type SuggestionList: Array
        # @param StatusCode: HTTP响应状态码
        # @type StatusCode: String
        # @param NewLevel: 新风险等级,high_risk 高危 suspect 疑似 Normal 暂无风险
        # @type NewLevel: String
        # @param XspmStatus: 状态，0未处理、1已处置、2已忽略、3云防已防护、4无需处理
        # @type XspmStatus: Integer

        attr_accessor :ServiceTag, :Port, :AffectAsset, :InstanceId, :InstanceName, :InstanceType, :Level, :Protocol, :Component, :Service, :RecentTime, :FirstTime, :RiskDetails, :Suggestion, :Status, :Id, :AppId, :Nick, :Uin, :ServiceSnapshot, :Url, :Index, :RiskList, :SuggestionList, :StatusCode, :NewLevel, :XspmStatus

        def initialize(servicetag=nil, port=nil, affectasset=nil, instanceid=nil, instancename=nil, instancetype=nil, level=nil, protocol=nil, component=nil, service=nil, recenttime=nil, firsttime=nil, riskdetails=nil, suggestion=nil, status=nil, id=nil, appid=nil, nick=nil, uin=nil, servicesnapshot=nil, url=nil, index=nil, risklist=nil, suggestionlist=nil, statuscode=nil, newlevel=nil, xspmstatus=nil)
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
          @NewLevel = newlevel
          @XspmStatus = xspmstatus
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
          @NewLevel = params['NewLevel']
          @XspmStatus = params['XspmStatus']
        end
      end

      # 风险详情
      class ServerRiskSuggestion < TencentCloud::Common::AbstractModel
        # @param Title: 标题
        # @type Title: String
        # @param Body: 详情
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

      # SKILL安装状态信息
      class SkillState < TencentCloud::Common::AbstractModel
        # @param SkillInstallStatus: SKILL安装状态
        # 枚举值：
        # 0：未安装
        # 1：安装中
        # 2：已安装
        # 3：安装失败
        # 4：卸载中
        # 5：卸载失败
        # @type SkillInstallStatus: Integer
        # @param SkillInstallTime: SKILL安装/卸载操作时间
        # 参数格式：YYYY-MM-DDTHH:mm:ssZ（ISO8601格式）
        # @type SkillInstallTime: String
        # @param SkillInstallResult: SKILL安装/卸载结果描述信息
        # @type SkillInstallResult: String

        attr_accessor :SkillInstallStatus, :SkillInstallTime, :SkillInstallResult

        def initialize(skillinstallstatus=nil, skillinstalltime=nil, skillinstallresult=nil)
          @SkillInstallStatus = skillinstallstatus
          @SkillInstallTime = skillinstalltime
          @SkillInstallResult = skillinstallresult
        end

        def deserialize(params)
          @SkillInstallStatus = params['SkillInstallStatus']
          @SkillInstallTime = params['SkillInstallTime']
          @SkillInstallResult = params['SkillInstallResult']
        end
      end

      # 访问密钥资产信息（源IP角度）
      class SourceIPAsset < TencentCloud::Common::AbstractModel
        # @param ID: 源IP id
        # @type ID: Integer
        # @param SourceIP: 源IP
        # @type SourceIP: String
        # @param Remark: 备注
        # @type Remark: String
        # @param AppID: 账号所属APPID
        # @type AppID: Integer
        # @param Region: IP地域
        # @type Region: String
        # @param EventType: 调用方式
        # -1:未统计
        # 0:控制台调用
        # 1:API
        # @type EventType: Integer
        # @param IPType: IP类型
        # 0:账号内（未备注）
        # 1:账号外（未备注）
        # 2:账号内   (已备注)
        # 3:账号外   (已备注)
        # @type IPType: Integer
        # @param AccessKeyAlarmList: 告警信息列表
        # @type AccessKeyAlarmList: Array
        # @param AKInfo: ak信息列表
        # @type AKInfo: Array
        # @param ActionCount: 调用接口数量
        # @type ActionCount: Integer
        # @param LastAccessTime: 最近访问时间
        # @type LastAccessTime: String
        # @param InstanceID: IP关联实例ID，如果为空字符串，代表非账号内资产
        # @type InstanceID: String
        # @param InstanceName: IP关联实例名称
        # @type InstanceName: String
        # @param Uin: 账号所属Uin
        # @type Uin: String
        # @param Nickname: 昵称
        # @type Nickname: String
        # @param ShowStatus: 展示状态
        # @type ShowStatus: Boolean
        # @param ISP: 运营商字段
        # @type ISP: String
        # @param VpcInfo: 账号外vpc信息
        # @type VpcInfo: Array
        # @param CloudType: 云类型
        # 0为腾讯云
        # @type CloudType: Integer

        attr_accessor :ID, :SourceIP, :Remark, :AppID, :Region, :EventType, :IPType, :AccessKeyAlarmList, :AKInfo, :ActionCount, :LastAccessTime, :InstanceID, :InstanceName, :Uin, :Nickname, :ShowStatus, :ISP, :VpcInfo, :CloudType

        def initialize(id=nil, sourceip=nil, remark=nil, appid=nil, region=nil, eventtype=nil, iptype=nil, accesskeyalarmlist=nil, akinfo=nil, actioncount=nil, lastaccesstime=nil, instanceid=nil, instancename=nil, uin=nil, nickname=nil, showstatus=nil, isp=nil, vpcinfo=nil, cloudtype=nil)
          @ID = id
          @SourceIP = sourceip
          @Remark = remark
          @AppID = appid
          @Region = region
          @EventType = eventtype
          @IPType = iptype
          @AccessKeyAlarmList = accesskeyalarmlist
          @AKInfo = akinfo
          @ActionCount = actioncount
          @LastAccessTime = lastaccesstime
          @InstanceID = instanceid
          @InstanceName = instancename
          @Uin = uin
          @Nickname = nickname
          @ShowStatus = showstatus
          @ISP = isp
          @VpcInfo = vpcinfo
          @CloudType = cloudtype
        end

        def deserialize(params)
          @ID = params['ID']
          @SourceIP = params['SourceIP']
          @Remark = params['Remark']
          @AppID = params['AppID']
          @Region = params['Region']
          @EventType = params['EventType']
          @IPType = params['IPType']
          unless params['AccessKeyAlarmList'].nil?
            @AccessKeyAlarmList = []
            params['AccessKeyAlarmList'].each do |i|
              accesskeyalarminfo_tmp = AccessKeyAlarmInfo.new
              accesskeyalarminfo_tmp.deserialize(i)
              @AccessKeyAlarmList << accesskeyalarminfo_tmp
            end
          end
          unless params['AKInfo'].nil?
            @AKInfo = []
            params['AKInfo'].each do |i|
              akinfo_tmp = AKInfo.new
              akinfo_tmp.deserialize(i)
              @AKInfo << akinfo_tmp
            end
          end
          @ActionCount = params['ActionCount']
          @LastAccessTime = params['LastAccessTime']
          @InstanceID = params['InstanceID']
          @InstanceName = params['InstanceName']
          @Uin = params['Uin']
          @Nickname = params['Nickname']
          @ShowStatus = params['ShowStatus']
          @ISP = params['ISP']
          unless params['VpcInfo'].nil?
            @VpcInfo = []
            params['VpcInfo'].each do |i|
              sourceipvpcinfo_tmp = SourceIPVpcInfo.new
              sourceipvpcinfo_tmp.deserialize(i)
              @VpcInfo << sourceipvpcinfo_tmp
            end
          end
          @CloudType = params['CloudType']
        end
      end

      # 调用源IP 外部账号信息
      class SourceIPVpcInfo < TencentCloud::Common::AbstractModel
        # @param Name: 账号名称
        # @type Name: String
        # @param AppID: vpc所属appid
        # @type AppID: Integer
        # @param VpcID: vpc id
        # @type VpcID: String
        # @param VpcName: vpc 名称
        # @type VpcName: String

        attr_accessor :Name, :AppID, :VpcID, :VpcName

        def initialize(name=nil, appid=nil, vpcid=nil, vpcname=nil)
          @Name = name
          @AppID = appid
          @VpcID = vpcid
          @VpcName = vpcname
        end

        def deserialize(params)
          @Name = params['Name']
          @AppID = params['AppID']
          @VpcID = params['VpcID']
          @VpcName = params['VpcName']
        end
      end

      # CSPM规范
      class StandardItem < TencentCloud::Common::AbstractModel
        # @param ID: 规范ID
        # @type ID: Integer
        # @param Name: 规范名称
        # @type Name: String

        attr_accessor :ID, :Name

        def initialize(id=nil, name=nil)
          @ID = id
          @Name = name
        end

        def deserialize(params)
          @ID = params['ID']
          @Name = params['Name']
        end
      end

      # CSPM条款
      class StandardTerm < TencentCloud::Common::AbstractModel
        # @param Tag: 标签
        # @type Tag: String
        # @param Terms: 条款
        # @type Terms: Array

        attr_accessor :Tag, :Terms

        def initialize(tag=nil, terms=nil)
          @Tag = tag
          @Terms = terms
        end

        def deserialize(params)
          @Tag = params['Tag']
          @Terms = params['Terms']
        end
      end

      # 用户行为分析 统计条件
      class StatisticalFilter < TencentCloud::Common::AbstractModel
        # @param OperatorType: 0:不基于统计检测
        # 1:发生次数高于固定值
        # 2:发生次数高于周期平均值的百分之
        # 3:发生次数高于用户平均值的百分之
        # @type OperatorType: Integer
        # @param Value: 统计值
        # @type Value: Float

        attr_accessor :OperatorType, :Value

        def initialize(operatortype=nil, value=nil)
          @OperatorType = operatortype
          @Value = value
        end

        def deserialize(params)
          @OperatorType = params['OperatorType']
          @Value = params['Value']
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

      # 子账号详情
      class SubUserInfo < TencentCloud::Common::AbstractModel
        # @param ID: 主键ID，无业务意义仅作为唯一键
        # @type ID: Integer
        # @param AppID: 子账号Appid
        # @type AppID: String
        # @param Uin: 子账号UIn
        # @type Uin: String
        # @param NickName: 子账号名称
        # @type NickName: String
        # @param OwnerAppID: 主账号Appid
        # @type OwnerAppID: String
        # @param OwnerUin: 主账号Uin
        # @type OwnerUin: String
        # @param OwnerNickName: 主账号名称
        # @type OwnerNickName: String
        # @param OwnerMemberID: 所属主账号memberId信息
        # @type OwnerMemberID: String
        # @param CloudType: 账户类型，0为腾讯云账户，1为AWS账户
        # @type CloudType: Integer
        # @param ServiceCount: 可访问服务数量
        # @type ServiceCount: Integer
        # @param InterfaceCount: 可访问接口数量
        # @type InterfaceCount: Integer
        # @param AssetCount: 可访问资源数量
        # @type AssetCount: Integer
        # @param LogCount: 访问/行为日志数量
        # @type LogCount: Integer
        # @param ConfigRiskCount: 权限配置风险
        # @type ConfigRiskCount: Integer
        # @param ActionRiskCount: 危险行为告警
        # @type ActionRiskCount: Integer
        # @param IsAccessCloudAudit: 是否接入操作审计日志
        # @type IsAccessCloudAudit: Boolean
        # @param IsAccessCheck: 是否配置风险的安全体检
        # @type IsAccessCheck: Boolean
        # @param IsAccessUeba: 是否配置用户行为管理策略
        # @type IsAccessUeba: Boolean

        attr_accessor :ID, :AppID, :Uin, :NickName, :OwnerAppID, :OwnerUin, :OwnerNickName, :OwnerMemberID, :CloudType, :ServiceCount, :InterfaceCount, :AssetCount, :LogCount, :ConfigRiskCount, :ActionRiskCount, :IsAccessCloudAudit, :IsAccessCheck, :IsAccessUeba

        def initialize(id=nil, appid=nil, uin=nil, nickname=nil, ownerappid=nil, owneruin=nil, ownernickname=nil, ownermemberid=nil, cloudtype=nil, servicecount=nil, interfacecount=nil, assetcount=nil, logcount=nil, configriskcount=nil, actionriskcount=nil, isaccesscloudaudit=nil, isaccesscheck=nil, isaccessueba=nil)
          @ID = id
          @AppID = appid
          @Uin = uin
          @NickName = nickname
          @OwnerAppID = ownerappid
          @OwnerUin = owneruin
          @OwnerNickName = ownernickname
          @OwnerMemberID = ownermemberid
          @CloudType = cloudtype
          @ServiceCount = servicecount
          @InterfaceCount = interfacecount
          @AssetCount = assetcount
          @LogCount = logcount
          @ConfigRiskCount = configriskcount
          @ActionRiskCount = actionriskcount
          @IsAccessCloudAudit = isaccesscloudaudit
          @IsAccessCheck = isaccesscheck
          @IsAccessUeba = isaccessueba
        end

        def deserialize(params)
          @ID = params['ID']
          @AppID = params['AppID']
          @Uin = params['Uin']
          @NickName = params['NickName']
          @OwnerAppID = params['OwnerAppID']
          @OwnerUin = params['OwnerUin']
          @OwnerNickName = params['OwnerNickName']
          @OwnerMemberID = params['OwnerMemberID']
          @CloudType = params['CloudType']
          @ServiceCount = params['ServiceCount']
          @InterfaceCount = params['InterfaceCount']
          @AssetCount = params['AssetCount']
          @LogCount = params['LogCount']
          @ConfigRiskCount = params['ConfigRiskCount']
          @ActionRiskCount = params['ActionRiskCount']
          @IsAccessCloudAudit = params['IsAccessCloudAudit']
          @IsAccessCheck = params['IsAccessCheck']
          @IsAccessUeba = params['IsAccessUeba']
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
        # @type IsCore: Integer
        # @param IsNewAsset: 是否新资产 1新
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

      # SyncDspmAssets请求参数结构体
      class SyncDspmAssetsRequest < TencentCloud::Common::AbstractModel
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array

        attr_accessor :MemberId

        def initialize(memberid=nil)
          @MemberId = memberid
        end

        def deserialize(params)
          @MemberId = params['MemberId']
        end
      end

      # SyncDspmAssets返回参数结构体
      class SyncDspmAssetsResponse < TencentCloud::Common::AbstractModel
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

      # SyncDspmUsers请求参数结构体
      class SyncDspmUsersRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # SyncDspmUsers返回参数结构体
      class SyncDspmUsersResponse < TencentCloud::Common::AbstractModel
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

      # 数据库字段描述
      class TableField < TencentCloud::Common::AbstractModel
        # @param DB: 数据库名
        # @type DB: String
        # @param Schema: 数据库视图名
        # @type Schema: String
        # @param Table: 数据库表名
        # @type Table: String
        # @param Field: 数据库字段名
        # @type Field: String
        # @param Sensitive: 字段敏感信息
        # @type Sensitive: :class:`Tencentcloud::Csip.v20221121.models.SensitiveDetail`

        attr_accessor :DB, :Schema, :Table, :Field, :Sensitive

        def initialize(db=nil, schema=nil, table=nil, field=nil, sensitive=nil)
          @DB = db
          @Schema = schema
          @Table = table
          @Field = field
          @Sensitive = sensitive
        end

        def deserialize(params)
          @DB = params['DB']
          @Schema = params['Schema']
          @Table = params['Table']
          @Field = params['Field']
          unless params['Sensitive'].nil?
            @Sensitive = SensitiveDetail.new
            @Sensitive.deserialize(params['Sensitive'])
          end
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
        # @type Name: String
        # @param Count: 日志条数
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
        # @param TargetAppId: APP ID
        # @type TargetAppId: String

        attr_accessor :TaskId, :TargetAppId

        def initialize(taskid=nil, targetappid=nil)
          @TaskId = taskid
          @TargetAppId = targetappid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TargetAppId = params['TargetAppId']
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

      # 用户行为分析  自定义策略结构体
      class UebaCustomRule < TencentCloud::Common::AbstractModel
        # @param RuleName: 策略名称
        # @type RuleName: String
        # @param UserType: 1: 云账号
        # 2: 自定义用户
        # @type UserType: Integer
        # @param TimeInterval: 发生时间
        # 1：10分钟
        # 2：1小时
        # 3：一天
        # 4：一周
        # 5：一个月
        # @type TimeInterval: Integer
        # @param EventContent: 发生事件
        # @type EventContent: :class:`Tencentcloud::Csip.v20221121.models.UebaEventContent`
        # @param AlertName: 告警名称
        # @type AlertName: String
        # @param AlterLevel: 告警类型
        # 0:  提示
        # 1:  低危
        # 2:  中危
        # 3:  高危
        # 4:  严重
        # @type AlterLevel: Integer
        # @param Operator: 操作者
        # @type Operator: Array
        # @param OperateObject: 操作对象
        # @type OperateObject: Array
        # @param OperateMethod: 操作方式
        # @type OperateMethod: Array
        # @param LogType: 日志类型
        # @type LogType: String
        # @param LogTypeStr: 日志中文名
        # @type LogTypeStr: String

        attr_accessor :RuleName, :UserType, :TimeInterval, :EventContent, :AlertName, :AlterLevel, :Operator, :OperateObject, :OperateMethod, :LogType, :LogTypeStr

        def initialize(rulename=nil, usertype=nil, timeinterval=nil, eventcontent=nil, alertname=nil, alterlevel=nil, operator=nil, operateobject=nil, operatemethod=nil, logtype=nil, logtypestr=nil)
          @RuleName = rulename
          @UserType = usertype
          @TimeInterval = timeinterval
          @EventContent = eventcontent
          @AlertName = alertname
          @AlterLevel = alterlevel
          @Operator = operator
          @OperateObject = operateobject
          @OperateMethod = operatemethod
          @LogType = logtype
          @LogTypeStr = logtypestr
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          @UserType = params['UserType']
          @TimeInterval = params['TimeInterval']
          unless params['EventContent'].nil?
            @EventContent = UebaEventContent.new
            @EventContent.deserialize(params['EventContent'])
          end
          @AlertName = params['AlertName']
          @AlterLevel = params['AlterLevel']
          @Operator = params['Operator']
          @OperateObject = params['OperateObject']
          @OperateMethod = params['OperateMethod']
          @LogType = params['LogType']
          @LogTypeStr = params['LogTypeStr']
        end
      end

      # 用户行为分析 发生事件结构体
      class UebaEventContent < TencentCloud::Common::AbstractModel
        # @param EventType: 发生事件类型
        # 1:语句检索
        # 2:过滤检索
        # @type EventType: Integer
        # @param Content: 语句检索内容
        # @type Content: String
        # @param Filters: 检索条件
        # @type Filters: Array
        # @param StatisticalFilter: 统计条件
        # @type StatisticalFilter: :class:`Tencentcloud::Csip.v20221121.models.StatisticalFilter`

        attr_accessor :EventType, :Content, :Filters, :StatisticalFilter

        def initialize(eventtype=nil, content=nil, filters=nil, statisticalfilter=nil)
          @EventType = eventtype
          @Content = content
          @Filters = filters
          @StatisticalFilter = statisticalfilter
        end

        def deserialize(params)
          @EventType = params['EventType']
          @Content = params['Content']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              wherefilter_tmp = WhereFilter.new
              wherefilter_tmp.deserialize(i)
              @Filters << wherefilter_tmp
            end
          end
          unless params['StatisticalFilter'].nil?
            @StatisticalFilter = StatisticalFilter.new
            @StatisticalFilter.deserialize(params['StatisticalFilter'])
          end
        end
      end

      # 用户行为分析策略
      class UebaRule < TencentCloud::Common::AbstractModel
        # @param RuleID: 策略id
        # @type RuleID: String
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param RuleType: 策略类型
        # 0:系统策略
        # 1:自定义策略
        # @type RuleType: Integer
        # @param RuleLevel: 策略等级
        # 0:提示
        # 1:低危
        # 2:中危
        # 3:高危
        # 4:严重
        # @type RuleLevel: Integer
        # @param RuleContent: 策略内容
        # @type RuleContent: String
        # @param RuleStatus: 策略开关
        # @type RuleStatus: Boolean
        # @param HitCount: 命中次数
        # @type HitCount: Integer
        # @param AppID: 所属账号Appid
        # @type AppID: String
        # @param MemberID: 多账号，成员ID
        # @type MemberID: String
        # @param Uin: Uin
        # @type Uin: String
        # @param Nickname: 昵称
        # @type Nickname: String
        # @param CustomRuleDetail: 自定义规则具体内容
        # @type CustomRuleDetail: :class:`Tencentcloud::Csip.v20221121.models.UebaCustomRule`
        # @param CloudType: 云类型
        # 腾讯云：0
        # aws：1
        # @type CloudType: Integer

        attr_accessor :RuleID, :RuleName, :RuleType, :RuleLevel, :RuleContent, :RuleStatus, :HitCount, :AppID, :MemberID, :Uin, :Nickname, :CustomRuleDetail, :CloudType

        def initialize(ruleid=nil, rulename=nil, ruletype=nil, rulelevel=nil, rulecontent=nil, rulestatus=nil, hitcount=nil, appid=nil, memberid=nil, uin=nil, nickname=nil, customruledetail=nil, cloudtype=nil)
          @RuleID = ruleid
          @RuleName = rulename
          @RuleType = ruletype
          @RuleLevel = rulelevel
          @RuleContent = rulecontent
          @RuleStatus = rulestatus
          @HitCount = hitcount
          @AppID = appid
          @MemberID = memberid
          @Uin = uin
          @Nickname = nickname
          @CustomRuleDetail = customruledetail
          @CloudType = cloudtype
        end

        def deserialize(params)
          @RuleID = params['RuleID']
          @RuleName = params['RuleName']
          @RuleType = params['RuleType']
          @RuleLevel = params['RuleLevel']
          @RuleContent = params['RuleContent']
          @RuleStatus = params['RuleStatus']
          @HitCount = params['HitCount']
          @AppID = params['AppID']
          @MemberID = params['MemberID']
          @Uin = params['Uin']
          @Nickname = params['Nickname']
          unless params['CustomRuleDetail'].nil?
            @CustomRuleDetail = UebaCustomRule.new
            @CustomRuleDetail.deserialize(params['CustomRuleDetail'])
          end
          @CloudType = params['CloudType']
        end
      end

      # UpdateAccessKeyAlarmStatus请求参数结构体
      class UpdateAccessKeyAlarmStatusRequest < TencentCloud::Common::AbstractModel
        # @param Status: 状态  0:未处理 1:已处理 2:已忽略
        # @type Status: Integer
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param AlarmIDList: 告警ID列表
        # @type AlarmIDList: Array
        # @param RiskIDList: 风险ID列表
        # @type RiskIDList: Array

        attr_accessor :Status, :MemberId, :AlarmIDList, :RiskIDList

        def initialize(status=nil, memberid=nil, alarmidlist=nil, riskidlist=nil)
          @Status = status
          @MemberId = memberid
          @AlarmIDList = alarmidlist
          @RiskIDList = riskidlist
        end

        def deserialize(params)
          @Status = params['Status']
          @MemberId = params['MemberId']
          @AlarmIDList = params['AlarmIDList']
          @RiskIDList = params['RiskIDList']
        end
      end

      # UpdateAccessKeyAlarmStatus返回参数结构体
      class UpdateAccessKeyAlarmStatusResponse < TencentCloud::Common::AbstractModel
        # @param Code: 0成功，1失败
        # @type Code: Integer
        # @param Msg: 错误信息
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Code, :Msg, :RequestId

        def initialize(code=nil, msg=nil, requestid=nil)
          @Code = code
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Code = params['Code']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # UpdateAccessKeyRemark请求参数结构体
      class UpdateAccessKeyRemarkRequest < TencentCloud::Common::AbstractModel
        # @param Remark: 备注
        # @type Remark: String
        # @param MemberId: 集团账号的成员id
        # @type MemberId: Array
        # @param SourceIPList: 源IP 名称
        # @type SourceIPList: Array
        # @param AccessKeyList: ak名称
        # @type AccessKeyList: Array
        # @param SourceIPIDList: 源IP的ID
        # @type SourceIPIDList: Array
        # @param AccessKeyIDList: AK的ID
        # @type AccessKeyIDList: Array

        attr_accessor :Remark, :MemberId, :SourceIPList, :AccessKeyList, :SourceIPIDList, :AccessKeyIDList

        def initialize(remark=nil, memberid=nil, sourceiplist=nil, accesskeylist=nil, sourceipidlist=nil, accesskeyidlist=nil)
          @Remark = remark
          @MemberId = memberid
          @SourceIPList = sourceiplist
          @AccessKeyList = accesskeylist
          @SourceIPIDList = sourceipidlist
          @AccessKeyIDList = accesskeyidlist
        end

        def deserialize(params)
          @Remark = params['Remark']
          @MemberId = params['MemberId']
          @SourceIPList = params['SourceIPList']
          @AccessKeyList = params['AccessKeyList']
          @SourceIPIDList = params['SourceIPIDList']
          @AccessKeyIDList = params['AccessKeyIDList']
        end
      end

      # UpdateAccessKeyRemark返回参数结构体
      class UpdateAccessKeyRemarkResponse < TencentCloud::Common::AbstractModel
        # @param Code: 0:成功 1:失败
        # @type Code: Integer
        # @param Msg: 错误信息
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Code, :Msg, :RequestId

        def initialize(code=nil, msg=nil, requestid=nil)
          @Code = code
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Code = params['Code']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
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

      # 调用记录详情
      class UserCallRecord < TencentCloud::Common::AbstractModel
        # @param SourceIP: 调用源IP
        # @type SourceIP: String
        # @param EventType: 调用类型
        # 0:控制台调用
        # 1:API
        # @type EventType: Integer
        # @param CallCount: 调用次数
        # @type CallCount: Integer
        # @param Code: 调用错误码
        # 0表示成功
        # @type Code: Integer
        # @param FirstCallTime: 首次调用时间
        # @type FirstCallTime: String
        # @param LastCallTime: 最后调用时间
        # @type LastCallTime: String
        # @param SourceIPRemark: 调用源IP备注
        # @type SourceIPRemark: String
        # @param Region: 调用源IP地域
        # @type Region: String
        # @param UserName: 用户/角色名称
        # @type UserName: String
        # @param Date: 聚合日期
        # @type Date: String
        # @param AppID: appid
        # @type AppID: Integer
        # @param ISP: 运营商
        # @type ISP: String

        attr_accessor :SourceIP, :EventType, :CallCount, :Code, :FirstCallTime, :LastCallTime, :SourceIPRemark, :Region, :UserName, :Date, :AppID, :ISP

        def initialize(sourceip=nil, eventtype=nil, callcount=nil, code=nil, firstcalltime=nil, lastcalltime=nil, sourceipremark=nil, region=nil, username=nil, date=nil, appid=nil, isp=nil)
          @SourceIP = sourceip
          @EventType = eventtype
          @CallCount = callcount
          @Code = code
          @FirstCallTime = firstcalltime
          @LastCallTime = lastcalltime
          @SourceIPRemark = sourceipremark
          @Region = region
          @UserName = username
          @Date = date
          @AppID = appid
          @ISP = isp
        end

        def deserialize(params)
          @SourceIP = params['SourceIP']
          @EventType = params['EventType']
          @CallCount = params['CallCount']
          @Code = params['Code']
          @FirstCallTime = params['FirstCallTime']
          @LastCallTime = params['LastCallTime']
          @SourceIPRemark = params['SourceIPRemark']
          @Region = params['Region']
          @UserName = params['UserName']
          @Date = params['Date']
          @AppID = params['AppID']
          @ISP = params['ISP']
        end
      end

      # 账号dspm信息
      class UserDspmInfo < TencentCloud::Common::AbstractModel
        # @param AppID: APPID
        # @type AppID: Integer
        # @param Uin: UIN
        # @type Uin: String
        # @param NickName: 账号昵称
        # @type NickName: String
        # @param AssetNum: 账号下数据库资产数量
        # @type AssetNum: Integer
        # @param UsedAssetNum: 账号下开启安全分析数据库资产数量
        # @type UsedAssetNum: Integer
        # @param IsShared: 是否被共享，1-被共享，2-未被共享
        # @type IsShared: Integer
        # @param IsSelfBuy: 是否单独购买，1-单独购买，2-未单独购买
        # @type IsSelfBuy: Integer
        # @param ShareFromAppID: 配额来源账号
        # @type ShareFromAppID: Integer
        # @param CloudType: 云类型（0：腾讯云 1:亚马逊云 2:微软云 3:谷歌云 4:阿里云 5:华为云）
        # @type CloudType: Integer
        # @param IsIsolating: 账号是否隔离中
        # @type IsIsolating: Boolean
        # @param IsDataCleaning: 是否正在数据清理
        # @type IsDataCleaning: Boolean

        attr_accessor :AppID, :Uin, :NickName, :AssetNum, :UsedAssetNum, :IsShared, :IsSelfBuy, :ShareFromAppID, :CloudType, :IsIsolating, :IsDataCleaning

        def initialize(appid=nil, uin=nil, nickname=nil, assetnum=nil, usedassetnum=nil, isshared=nil, isselfbuy=nil, sharefromappid=nil, cloudtype=nil, isisolating=nil, isdatacleaning=nil)
          @AppID = appid
          @Uin = uin
          @NickName = nickname
          @AssetNum = assetnum
          @UsedAssetNum = usedassetnum
          @IsShared = isshared
          @IsSelfBuy = isselfbuy
          @ShareFromAppID = sharefromappid
          @CloudType = cloudtype
          @IsIsolating = isisolating
          @IsDataCleaning = isdatacleaning
        end

        def deserialize(params)
          @AppID = params['AppID']
          @Uin = params['Uin']
          @NickName = params['NickName']
          @AssetNum = params['AssetNum']
          @UsedAssetNum = params['UsedAssetNum']
          @IsShared = params['IsShared']
          @IsSelfBuy = params['IsSelfBuy']
          @ShareFromAppID = params['ShareFromAppID']
          @CloudType = params['CloudType']
          @IsIsolating = params['IsIsolating']
          @IsDataCleaning = params['IsDataCleaning']
        end
      end

      # 应急漏洞基本数据
      class VULBaseInfo < TencentCloud::Common::AbstractModel
        # @param Level: 风险等级
        # high 高危/ middle 中危 / low 低危 /info 提示
        # @type Level: String
        # @param Component: 组件
        # @type Component: String
        # @param PublishTime: 漏洞发布时间
        # @type PublishTime: String
        # @param LastScanTime: 最近扫描时间
        # @type LastScanTime: String
        # @param AffectAssetCount: 影响资产数量
        # @type AffectAssetCount: Integer
        # @param RiskId: 风险ID
        # @type RiskId: String
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nick: String
        # @param AppId: 用户appid
        # @type AppId: String
        # @param Uin: 用户uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param Fix: 修复建议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Fix: String
        # @param EMGCVulType: 应急漏洞类型，1-应急漏洞，0-非应急漏洞
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EMGCVulType: Integer
        # @param CVSS: CVSS评分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CVSS: Float
        # @param AttackHeat: 攻击热度
        # 0/1/2/3
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackHeat: Integer
        # @param ScanStatus: 检测状态 0 未扫描 1扫描中 2 扫描完成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanStatus: Integer
        # @param IsSuggest: 1/0是否必修
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsSuggest: Integer
        # @param VulTag: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulTag: Array
        # @param SupportProduct: 支持产品 逗号分隔  "cfw_waf_virtual", "cwp_detect", "cwp_defense", "cwp_fix"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportProduct: String
        # @param TaskId: 漏洞检测任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param Index: 主键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: String
        # @param PcmgrID: 漏洞id 旧版
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PcmgrID: String
        # @param TvdID: 漏洞id  新版
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TvdID: String

        attr_accessor :Level, :Component, :PublishTime, :LastScanTime, :AffectAssetCount, :RiskId, :VULType, :VULName, :CVE, :Describe, :Payload, :AppName, :References, :AppVersion, :VULURL, :Nick, :AppId, :Uin, :Fix, :EMGCVulType, :CVSS, :AttackHeat, :ScanStatus, :IsSuggest, :VulTag, :SupportProduct, :TaskId, :Index, :PcmgrID, :TvdID

        def initialize(level=nil, component=nil, publishtime=nil, lastscantime=nil, affectassetcount=nil, riskid=nil, vultype=nil, vulname=nil, cve=nil, describe=nil, payload=nil, appname=nil, references=nil, appversion=nil, vulurl=nil, nick=nil, appid=nil, uin=nil, fix=nil, emgcvultype=nil, cvss=nil, attackheat=nil, scanstatus=nil, issuggest=nil, vultag=nil, supportproduct=nil, taskid=nil, index=nil, pcmgrid=nil, tvdid=nil)
          @Level = level
          @Component = component
          @PublishTime = publishtime
          @LastScanTime = lastscantime
          @AffectAssetCount = affectassetcount
          @RiskId = riskid
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
          @CVSS = cvss
          @AttackHeat = attackheat
          @ScanStatus = scanstatus
          @IsSuggest = issuggest
          @VulTag = vultag
          @SupportProduct = supportproduct
          @TaskId = taskid
          @Index = index
          @PcmgrID = pcmgrid
          @TvdID = tvdid
        end

        def deserialize(params)
          @Level = params['Level']
          @Component = params['Component']
          @PublishTime = params['PublishTime']
          @LastScanTime = params['LastScanTime']
          @AffectAssetCount = params['AffectAssetCount']
          @RiskId = params['RiskId']
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
          @CVSS = params['CVSS']
          @AttackHeat = params['AttackHeat']
          @ScanStatus = params['ScanStatus']
          @IsSuggest = params['IsSuggest']
          @VulTag = params['VulTag']
          @SupportProduct = params['SupportProduct']
          @TaskId = params['TaskId']
          @Index = params['Index']
          @PcmgrID = params['PcmgrID']
          @TvdID = params['TvdID']
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
        # @type Fix: String
        # @param References: 技术参考/参考链接
        # @type References: String
        # @param Describe: 漏洞描述
        # @type Describe: String
        # @param ImpactComponent: 受影响组件
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
        # @type Nick: String
        # @param AppId: 用户appid
        # @type AppId: String
        # @param Uin: 用户uin
        # @type Uin: String
        # @param EMGCVulType: 应急漏洞类型，1-应急漏洞，0-非应急漏洞
        # @type EMGCVulType: Integer
        # @param CVSS: CVSS评分
        # @type CVSS: Float
        # @param PCMGRId: PCMGRId
        # @type PCMGRId: String
        # @param VulTag: 漏洞标签。搜索时应急 必修传参VulTag=SuggestRepair/EMGCVul
        # @type VulTag: Array
        # @param DisclosureTime: 漏洞披露时间
        # @type DisclosureTime: String
        # @param AttackHeat: 攻击热度
        # @type AttackHeat: Integer
        # @param IsSuggest: 是否必修漏洞，1-是，0-不是
        # @type IsSuggest: Integer
        # @param HandleTaskId: 处置任务id
        # @type HandleTaskId: String
        # @param EngineSource: 引擎来源
        # @type EngineSource: String
        # @param VulRiskId: 新的漏洞风险id
        # @type VulRiskId: String
        # @param TvdID: 新版漏洞id
        # @type TvdID: String
        # @param IsOneClick: 是否可以一键体检，1-可以，0-不可以
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

      # VerifyDspmAssetLoginCode请求参数结构体
      class VerifyDspmAssetLoginCodeRequest < TencentCloud::Common::AbstractModel
        # @param PersonId: 个人id
        # @type PersonId: String
        # @param AssetId: 数据库资产id
        # @type AssetId: String
        # @param Code: 验证码
        # @type Code: String
        # @param Host: 主机。默认'%'
        # @type Host: String

        attr_accessor :PersonId, :AssetId, :Code, :Host

        def initialize(personid=nil, assetid=nil, code=nil, host=nil)
          @PersonId = personid
          @AssetId = assetid
          @Code = code
          @Host = host
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @AssetId = params['AssetId']
          @Code = params['Code']
          @Host = params['Host']
        end
      end

      # VerifyDspmAssetLoginCode返回参数结构体
      class VerifyDspmAssetLoginCodeResponse < TencentCloud::Common::AbstractModel
        # @param Account: 账号
        # @type Account: String
        # @param Password: 密码信息
        # @type Password: String
        # @param ValidateStart: 有效期开始时间
        # @type ValidateStart: String
        # @param ValidateEnd: 有效期结束时间
        # @type ValidateEnd: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Account, :Password, :ValidateStart, :ValidateEnd, :RequestId

        def initialize(account=nil, password=nil, validatestart=nil, validateend=nil, requestid=nil)
          @Account = account
          @Password = password
          @ValidateStart = validatestart
          @ValidateEnd = validateend
          @RequestId = requestid
        end

        def deserialize(params)
          @Account = params['Account']
          @Password = params['Password']
          @ValidateStart = params['ValidateStart']
          @ValidateEnd = params['ValidateEnd']
          @RequestId = params['RequestId']
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
        # @type Tag: Array
        # @param DNS: dns域名
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
        # @type IsNewAsset: Integer
        # @param IsCore: 是否核心资产1是 2不是
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

      # 主机漏洞风险内容
      class VulRiskItem < TencentCloud::Common::AbstractModel
        # @param CloudAccountID: 云账号ID
        # @type CloudAccountID: String
        # @param AssetID: 实例ID
        # @type AssetID: String
        # @param InstanceStatus: 实例状态
        # @type InstanceStatus: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param VulName: 漏洞名称
        # @type VulName: String
        # @param VulCategory: 漏洞类型
        # @type VulCategory: String
        # @param VulLevel: 漏洞等级
        # @type VulLevel: String
        # @param CveID: CVE编号
        # @type CveID: String
        # @param Description: 漏洞描述
        # @type Description: String
        # @param ContainerID: 容器ID
        # @type ContainerID: String
        # @param Fix: 漏洞风险修复建议
        # @type Fix: String
        # @param VulCategoryName: Linux漏洞
        # @type VulCategoryName: String
        # @param VulLevelName: 漏洞等级名称
        # @type VulLevelName: String
        # @param InstanceStatusName: 实例状态中文信息
        # @type InstanceStatusName: String
        # @param AppID: 租户ID
        # @type AppID: Integer

        attr_accessor :CloudAccountID, :AssetID, :InstanceStatus, :InstanceName, :CreateTime, :UpdateTime, :VulName, :VulCategory, :VulLevel, :CveID, :Description, :ContainerID, :Fix, :VulCategoryName, :VulLevelName, :InstanceStatusName, :AppID

        def initialize(cloudaccountid=nil, assetid=nil, instancestatus=nil, instancename=nil, createtime=nil, updatetime=nil, vulname=nil, vulcategory=nil, vullevel=nil, cveid=nil, description=nil, containerid=nil, fix=nil, vulcategoryname=nil, vullevelname=nil, instancestatusname=nil, appid=nil)
          @CloudAccountID = cloudaccountid
          @AssetID = assetid
          @InstanceStatus = instancestatus
          @InstanceName = instancename
          @CreateTime = createtime
          @UpdateTime = updatetime
          @VulName = vulname
          @VulCategory = vulcategory
          @VulLevel = vullevel
          @CveID = cveid
          @Description = description
          @ContainerID = containerid
          @Fix = fix
          @VulCategoryName = vulcategoryname
          @VulLevelName = vullevelname
          @InstanceStatusName = instancestatusname
          @AppID = appid
        end

        def deserialize(params)
          @CloudAccountID = params['CloudAccountID']
          @AssetID = params['AssetID']
          @InstanceStatus = params['InstanceStatus']
          @InstanceName = params['InstanceName']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @VulName = params['VulName']
          @VulCategory = params['VulCategory']
          @VulLevel = params['VulLevel']
          @CveID = params['CveID']
          @Description = params['Description']
          @ContainerID = params['ContainerID']
          @Fix = params['Fix']
          @VulCategoryName = params['VulCategoryName']
          @VulLevelName = params['VulLevelName']
          @InstanceStatusName = params['InstanceStatusName']
          @AppID = params['AppID']
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
        # @type Name: String
        # @param Values: 过滤的值
        # @type Values: Array
        # @param OperatorType: 中台定义：
        # 1等于 2大于 3小于 4大于等于 5小于等于 6不等于 9模糊匹配 13非模糊匹配 14按位与
        # 精确匹配填 7 模糊匹配填9
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

