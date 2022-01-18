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
  module Cat
    module V20180409
      # 拨测分组
      class AgentGroup < TencentCloud::Common::AbstractModel
        # @param GroupId: 拨测分组ID
        # @type GroupId: Integer
        # @param GroupName: 拨测分组名称
        # @type GroupName: String
        # @param IsDefault: 是否默认拨测分组。1表示是，0表示否
        # @type IsDefault: Integer
        # @param TaskNum: 使用本拨测分组的任务数
        # @type TaskNum: Integer
        # @param GroupDetail: 拨测结点列表
        # @type GroupDetail: Array
        # @param MaxGroupNum: 最大拨测分组数
        # @type MaxGroupNum: Integer

        attr_accessor :GroupId, :GroupName, :IsDefault, :TaskNum, :GroupDetail, :MaxGroupNum
        
        def initialize(groupid=nil, groupname=nil, isdefault=nil, tasknum=nil, groupdetail=nil, maxgroupnum=nil)
          @GroupId = groupid
          @GroupName = groupname
          @IsDefault = isdefault
          @TaskNum = tasknum
          @GroupDetail = groupdetail
          @MaxGroupNum = maxgroupnum
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @IsDefault = params['IsDefault']
          @TaskNum = params['TaskNum']
          unless params['GroupDetail'].nil?
            @GroupDetail = []
            params['GroupDetail'].each do |i|
              catagent_tmp = CatAgent.new
              catagent_tmp.deserialize(i)
              @GroupDetail << catagent_tmp
            end
          end
          @MaxGroupNum = params['MaxGroupNum']
        end
      end

      # 拨测告警信息
      class AlarmInfo < TencentCloud::Common::AbstractModel
        # @param ObjName: 告警对象的名称
        # @type ObjName: String
        # @param FirstOccurTime: 告警发生的时间
        # @type FirstOccurTime: String
        # @param LastOccurTime: 告警结束的时间
        # @type LastOccurTime: String
        # @param Status: 告警状态。1 表示已恢复，0 表示未恢复，2表示数据不足
        # @type Status: Integer
        # @param Content: 告警的内容
        # @type Content: String
        # @param TaskId: 拨测任务ID
        # @type TaskId: Integer
        # @param MetricName: 特征项名字
        # @type MetricName: String
        # @param MetricValue: 特征项数值
        # @type MetricValue: String
        # @param ObjId: 告警对象的ID
        # @type ObjId: String

        attr_accessor :ObjName, :FirstOccurTime, :LastOccurTime, :Status, :Content, :TaskId, :MetricName, :MetricValue, :ObjId
        
        def initialize(objname=nil, firstoccurtime=nil, lastoccurtime=nil, status=nil, content=nil, taskid=nil, metricname=nil, metricvalue=nil, objid=nil)
          @ObjName = objname
          @FirstOccurTime = firstoccurtime
          @LastOccurTime = lastoccurtime
          @Status = status
          @Content = content
          @TaskId = taskid
          @MetricName = metricname
          @MetricValue = metricvalue
          @ObjId = objid
        end

        def deserialize(params)
          @ObjName = params['ObjName']
          @FirstOccurTime = params['FirstOccurTime']
          @LastOccurTime = params['LastOccurTime']
          @Status = params['Status']
          @Content = params['Content']
          @TaskId = params['TaskId']
          @MetricName = params['MetricName']
          @MetricValue = params['MetricValue']
          @ObjId = params['ObjId']
        end
      end

      # 告警主题
      class AlarmTopic < TencentCloud::Common::AbstractModel
        # @param TopicId: 主题的ID
        # @type TopicId: String
        # @param TopicName: 主题的名称
        # @type TopicName: String

        attr_accessor :TopicId, :TopicName
        
        def initialize(topicid=nil, topicname=nil)
          @TopicId = topicid
          @TopicName = topicname
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @TopicName = params['TopicName']
        end
      end

      # BindAlarmPolicy请求参数结构体
      class BindAlarmPolicyRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 拨测任务Id
        # @type TaskId: Integer
        # @param PolicyGroupId: 告警策略组Id
        # @type PolicyGroupId: Integer
        # @param IfBind: 是否绑定操作。非0 为绑定， 0 为 解绑。缺省表示 绑定。
        # @type IfBind: Integer
        # @param TopicId: 告警主题Id
        # @type TopicId: String

        attr_accessor :TaskId, :PolicyGroupId, :IfBind, :TopicId
        
        def initialize(taskid=nil, policygroupid=nil, ifbind=nil, topicid=nil)
          @TaskId = taskid
          @PolicyGroupId = policygroupid
          @IfBind = ifbind
          @TopicId = topicid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @PolicyGroupId = params['PolicyGroupId']
          @IfBind = params['IfBind']
          @TopicId = params['TopicId']
        end
      end

      # BindAlarmPolicy返回参数结构体
      class BindAlarmPolicyResponse < TencentCloud::Common::AbstractModel
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

      # 拨测Agent 所在省份、运营商
      class CatAgent < TencentCloud::Common::AbstractModel
        # @param Province: 拨测结点所在的省份（拼音缩写）
        # @type Province: String
        # @param Isp: 拨测结点所在的运营商（英文缩写）
        # @type Isp: String
        # @param ProvinceName: 拨测结点所在的省份（中文名称）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProvinceName: String
        # @param IspName: 拨测结点所在的运营商（中文名称）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IspName: String

        attr_accessor :Province, :Isp, :ProvinceName, :IspName
        
        def initialize(province=nil, isp=nil, provincename=nil, ispname=nil)
          @Province = province
          @Isp = isp
          @ProvinceName = provincename
          @IspName = ispname
        end

        def deserialize(params)
          @Province = params['Province']
          @Isp = params['Isp']
          @ProvinceName = params['ProvinceName']
          @IspName = params['IspName']
        end
      end

      # 拨测记录
      class CatLog < TencentCloud::Common::AbstractModel
        # @param Time: 拨测时间点
        # @type Time: String
        # @param CatTypeName: 拨测类型
        # @type CatTypeName: String
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param City: 拨测点所在城市
        # @type City: String
        # @param Isp: 拨测点所在运营商
        # @type Isp: String
        # @param ServerIp: 被拨测Server的IP
        # @type ServerIp: String
        # @param DomainName: 被拨测Server的域名
        # @type DomainName: String
        # @param TotalTime: 执行耗时，单位毫秒
        # @type TotalTime: Integer
        # @param ResultType: 成功失败(1 失败，0 成功）
        # @type ResultType: Integer
        # @param ResultCode: 失败错误码
        # @type ResultCode: Integer
        # @param ReqPkgSize: 请求包大小
        # @type ReqPkgSize: Integer
        # @param RspPkgSize: 回应包大小
        # @type RspPkgSize: Integer
        # @param ReqMsg: 拨测请求
        # @type ReqMsg: String
        # @param RespMsg: 拨测回应
        # @type RespMsg: String
        # @param ClientIp: 客户端IP
        # @type ClientIp: String
        # @param CityName: 拨测点所在城市名称
        # @type CityName: String
        # @param IspName: 拨测点所在运营商名称
        # @type IspName: String
        # @param ParseTime: 解析耗时，单位毫秒
        # @type ParseTime: Integer
        # @param ConnectTime: 连接耗时，单位毫秒
        # @type ConnectTime: Integer
        # @param SendTime: 数据发送耗时，单位毫秒
        # @type SendTime: Integer
        # @param WaitTime: 等待耗时，单位毫秒
        # @type WaitTime: Integer
        # @param ReceiveTime: 接收耗时，单位毫秒
        # @type ReceiveTime: Integer

        attr_accessor :Time, :CatTypeName, :TaskId, :City, :Isp, :ServerIp, :DomainName, :TotalTime, :ResultType, :ResultCode, :ReqPkgSize, :RspPkgSize, :ReqMsg, :RespMsg, :ClientIp, :CityName, :IspName, :ParseTime, :ConnectTime, :SendTime, :WaitTime, :ReceiveTime
        
        def initialize(time=nil, cattypename=nil, taskid=nil, city=nil, isp=nil, serverip=nil, domainname=nil, totaltime=nil, resulttype=nil, resultcode=nil, reqpkgsize=nil, rsppkgsize=nil, reqmsg=nil, respmsg=nil, clientip=nil, cityname=nil, ispname=nil, parsetime=nil, connecttime=nil, sendtime=nil, waittime=nil, receivetime=nil)
          @Time = time
          @CatTypeName = cattypename
          @TaskId = taskid
          @City = city
          @Isp = isp
          @ServerIp = serverip
          @DomainName = domainname
          @TotalTime = totaltime
          @ResultType = resulttype
          @ResultCode = resultcode
          @ReqPkgSize = reqpkgsize
          @RspPkgSize = rsppkgsize
          @ReqMsg = reqmsg
          @RespMsg = respmsg
          @ClientIp = clientip
          @CityName = cityname
          @IspName = ispname
          @ParseTime = parsetime
          @ConnectTime = connecttime
          @SendTime = sendtime
          @WaitTime = waittime
          @ReceiveTime = receivetime
        end

        def deserialize(params)
          @Time = params['Time']
          @CatTypeName = params['CatTypeName']
          @TaskId = params['TaskId']
          @City = params['City']
          @Isp = params['Isp']
          @ServerIp = params['ServerIp']
          @DomainName = params['DomainName']
          @TotalTime = params['TotalTime']
          @ResultType = params['ResultType']
          @ResultCode = params['ResultCode']
          @ReqPkgSize = params['ReqPkgSize']
          @RspPkgSize = params['RspPkgSize']
          @ReqMsg = params['ReqMsg']
          @RespMsg = params['RespMsg']
          @ClientIp = params['ClientIp']
          @CityName = params['CityName']
          @IspName = params['IspName']
          @ParseTime = params['ParseTime']
          @ConnectTime = params['ConnectTime']
          @SendTime = params['SendTime']
          @WaitTime = params['WaitTime']
          @ReceiveTime = params['ReceiveTime']
        end
      end

      # 拨测失败详情
      class CatReturnDetail < TencentCloud::Common::AbstractModel
        # @param IspName: 运营商名称
        # @type IspName: String
        # @param Province: 省份全拼
        # @type Province: String
        # @param ProvinceName: 省份中文名称
        # @type ProvinceName: String
        # @param MapKey: Map键值
        # @type MapKey: String
        # @param ServerIp: 拨测目标的IP
        # @type ServerIp: String
        # @param ResultCount: 拨测失败个数
        # @type ResultCount: Integer
        # @param ResultCode: 拨测失败返回码
        # @type ResultCode: Integer
        # @param ErrorReason: 拨测失败原因描述
        # @type ErrorReason: String

        attr_accessor :IspName, :Province, :ProvinceName, :MapKey, :ServerIp, :ResultCount, :ResultCode, :ErrorReason
        
        def initialize(ispname=nil, province=nil, provincename=nil, mapkey=nil, serverip=nil, resultcount=nil, resultcode=nil, errorreason=nil)
          @IspName = ispname
          @Province = province
          @ProvinceName = provincename
          @MapKey = mapkey
          @ServerIp = serverip
          @ResultCount = resultcount
          @ResultCode = resultcode
          @ErrorReason = errorreason
        end

        def deserialize(params)
          @IspName = params['IspName']
          @Province = params['Province']
          @ProvinceName = params['ProvinceName']
          @MapKey = params['MapKey']
          @ServerIp = params['ServerIp']
          @ResultCount = params['ResultCount']
          @ResultCode = params['ResultCode']
          @ErrorReason = params['ErrorReason']
        end
      end

      # 拨测失败返回情况汇总
      class CatReturnSummary < TencentCloud::Common::AbstractModel
        # @param ResultCount: 拨测失败个数
        # @type ResultCount: Integer
        # @param ResultCode: 拨测失败返回码
        # @type ResultCode: Integer
        # @param ErrorReason: 拨测失败原因描述
        # @type ErrorReason: String

        attr_accessor :ResultCount, :ResultCode, :ErrorReason
        
        def initialize(resultcount=nil, resultcode=nil, errorreason=nil)
          @ResultCount = resultcount
          @ResultCode = resultcode
          @ErrorReason = errorreason
        end

        def deserialize(params)
          @ResultCount = params['ResultCount']
          @ResultCode = params['ResultCode']
          @ErrorReason = params['ErrorReason']
        end
      end

      # 任务信息和告警策略组
      class CatTaskDetail < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param Period: 任务周期，单位为分钟。目前支持1，5，15，30几种取值
        # @type Period: Integer
        # @param CatTypeName: 拨测类型。http, https, ping, tcp 之一
        # @type CatTypeName: String
        # @param CgiUrl: 拨测任务的URL
        # @type CgiUrl: String
        # @param AgentGroupId: 拨测分组ID
        # @type AgentGroupId: Integer
        # @param PolicyGroupId: 告警策略组ID
        # @type PolicyGroupId: Integer
        # @param Status: 任务状态。1表示暂停，2表示运行中，0为初始态
        # @type Status: Integer
        # @param AddTime: 任务创建时间
        # @type AddTime: String
        # @param Type: 任务类型。0 站点监控，2 可用性监控
        # @type Type: Integer
        # @param TopicId: 绑定的统一告警主题ID
        # @type TopicId: String
        # @param AlarmStatus: 告警状态。0 未启用，1, 启用
        # @type AlarmStatus: Integer
        # @param Host: 指定的域名
        # @type Host: String
        # @param Port: 拨测目标的端口号
        # @type Port: Integer
        # @param CheckStr: 要在结果中进行匹配的字符串
        # @type CheckStr: String
        # @param CheckType: 1 表示通过检查结果是否包含CheckStr 进行校验
        # @type CheckType: Integer
        # @param UserAgent: 用户Agent信息
        # @type UserAgent: String
        # @param Cookie: 设置的Cookie信息
        # @type Cookie: String
        # @param PostData: POST 请求数据。空字符串表示非POST请求
        # @type PostData: String
        # @param SslVer: SSL协议版本
        # @type SslVer: String
        # @param IsHeader: 是否为Header请求。非0 Header 请求
        # @type IsHeader: Integer
        # @param DnsSvr: 目的DNS服务器
        # @type DnsSvr: String
        # @param DnsCheckIp: 需要检验是否在DNS IP列表的IP
        # @type DnsCheckIp: String
        # @param DnsQueryType: DNS查询类型
        # @type DnsQueryType: String
        # @param UserName: 登录服务器的账号
        # @type UserName: String
        # @param PassWord: 登录服务器的密码
        # @type PassWord: String
        # @param UseSecConn: 是否使用安全链接SSL， 0 不使用，1 使用
        # @type UseSecConn: Integer
        # @param NeedAuth: FTP登录验证方式  0 不验证  1 匿名登录  2 需要身份验证
        # @type NeedAuth: Integer
        # @param ReqDataType: 请求数据类型。0 表示请求为字符串类型。1表示为二进制类型
        # @type ReqDataType: Integer
        # @param ReqData: 发起TCP, UDP请求的协议请求数据
        # @type ReqData: String
        # @param RespDataType: 响应数据类型。0 表示响应为字符串类型。1表示为二进制类型
        # @type RespDataType: Integer
        # @param RespData: 预期的UDP请求的回应数据
        # @type RespData: String
        # @param RedirectFollowNum: 跟随跳转次数
        # @type RedirectFollowNum: Integer

        attr_accessor :TaskId, :TaskName, :Period, :CatTypeName, :CgiUrl, :AgentGroupId, :PolicyGroupId, :Status, :AddTime, :Type, :TopicId, :AlarmStatus, :Host, :Port, :CheckStr, :CheckType, :UserAgent, :Cookie, :PostData, :SslVer, :IsHeader, :DnsSvr, :DnsCheckIp, :DnsQueryType, :UserName, :PassWord, :UseSecConn, :NeedAuth, :ReqDataType, :ReqData, :RespDataType, :RespData, :RedirectFollowNum
        
        def initialize(taskid=nil, taskname=nil, period=nil, cattypename=nil, cgiurl=nil, agentgroupid=nil, policygroupid=nil, status=nil, addtime=nil, type=nil, topicid=nil, alarmstatus=nil, host=nil, port=nil, checkstr=nil, checktype=nil, useragent=nil, cookie=nil, postdata=nil, sslver=nil, isheader=nil, dnssvr=nil, dnscheckip=nil, dnsquerytype=nil, username=nil, password=nil, usesecconn=nil, needauth=nil, reqdatatype=nil, reqdata=nil, respdatatype=nil, respdata=nil, redirectfollownum=nil)
          @TaskId = taskid
          @TaskName = taskname
          @Period = period
          @CatTypeName = cattypename
          @CgiUrl = cgiurl
          @AgentGroupId = agentgroupid
          @PolicyGroupId = policygroupid
          @Status = status
          @AddTime = addtime
          @Type = type
          @TopicId = topicid
          @AlarmStatus = alarmstatus
          @Host = host
          @Port = port
          @CheckStr = checkstr
          @CheckType = checktype
          @UserAgent = useragent
          @Cookie = cookie
          @PostData = postdata
          @SslVer = sslver
          @IsHeader = isheader
          @DnsSvr = dnssvr
          @DnsCheckIp = dnscheckip
          @DnsQueryType = dnsquerytype
          @UserName = username
          @PassWord = password
          @UseSecConn = usesecconn
          @NeedAuth = needauth
          @ReqDataType = reqdatatype
          @ReqData = reqdata
          @RespDataType = respdatatype
          @RespData = respdata
          @RedirectFollowNum = redirectfollownum
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @Period = params['Period']
          @CatTypeName = params['CatTypeName']
          @CgiUrl = params['CgiUrl']
          @AgentGroupId = params['AgentGroupId']
          @PolicyGroupId = params['PolicyGroupId']
          @Status = params['Status']
          @AddTime = params['AddTime']
          @Type = params['Type']
          @TopicId = params['TopicId']
          @AlarmStatus = params['AlarmStatus']
          @Host = params['Host']
          @Port = params['Port']
          @CheckStr = params['CheckStr']
          @CheckType = params['CheckType']
          @UserAgent = params['UserAgent']
          @Cookie = params['Cookie']
          @PostData = params['PostData']
          @SslVer = params['SslVer']
          @IsHeader = params['IsHeader']
          @DnsSvr = params['DnsSvr']
          @DnsCheckIp = params['DnsCheckIp']
          @DnsQueryType = params['DnsQueryType']
          @UserName = params['UserName']
          @PassWord = params['PassWord']
          @UseSecConn = params['UseSecConn']
          @NeedAuth = params['NeedAuth']
          @ReqDataType = params['ReqDataType']
          @ReqData = params['ReqData']
          @RespDataType = params['RespDataType']
          @RespData = params['RespData']
          @RedirectFollowNum = params['RedirectFollowNum']
        end
      end

      # CreateAgentGroup请求参数结构体
      class CreateAgentGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupName: 拨测分组名称，不超过32个字符
        # @type GroupName: String
        # @param IsDefault: 是否为默认分组，取值可为 0 或 1。取 1 时表示设置为默认分组
        # @type IsDefault: Integer
        # @param Agents: Province, Isp 需要成对地进行选择。参数对的取值范围。参见：DescribeAgents 的返回结果。
        # @type Agents: Array

        attr_accessor :GroupName, :IsDefault, :Agents
        
        def initialize(groupname=nil, isdefault=nil, agents=nil)
          @GroupName = groupname
          @IsDefault = isdefault
          @Agents = agents
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @IsDefault = params['IsDefault']
          unless params['Agents'].nil?
            @Agents = []
            params['Agents'].each do |i|
              catagent_tmp = CatAgent.new
              catagent_tmp.deserialize(i)
              @Agents << catagent_tmp
            end
          end
        end
      end

      # CreateAgentGroup返回参数结构体
      class CreateAgentGroupResponse < TencentCloud::Common::AbstractModel
        # @param GroupId: 拨测分组Id
        # @type GroupId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupId, :RequestId
        
        def initialize(groupid=nil, requestid=nil)
          @GroupId = groupid
          @RequestId = requestid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateProbeTasks请求参数结构体
      class CreateProbeTasksRequest < TencentCloud::Common::AbstractModel
        # @param BatchTasks: 批量任务名-地址
        # @type BatchTasks: Array
        # @param TaskType: 任务类型
        # @type TaskType: Integer
        # @param Nodes: 拨测节点
        # @type Nodes: Array
        # @param Interval: 拨测间隔
        # @type Interval: Integer
        # @param Parameters: 拨测参数
        # @type Parameters: String
        # @param TaskCategory: 任务分类
        # <li>1 = PC</li>
        # <li> 2 = Mobile </li>
        # @type TaskCategory: Integer
        # @param Cron: 定时任务cron表达式
        # @type Cron: String
        # @param Tag: 资源标签值
        # @type Tag: Array

        attr_accessor :BatchTasks, :TaskType, :Nodes, :Interval, :Parameters, :TaskCategory, :Cron, :Tag
        
        def initialize(batchtasks=nil, tasktype=nil, nodes=nil, interval=nil, parameters=nil, taskcategory=nil, cron=nil, tag=nil)
          @BatchTasks = batchtasks
          @TaskType = tasktype
          @Nodes = nodes
          @Interval = interval
          @Parameters = parameters
          @TaskCategory = taskcategory
          @Cron = cron
          @Tag = tag
        end

        def deserialize(params)
          unless params['BatchTasks'].nil?
            @BatchTasks = []
            params['BatchTasks'].each do |i|
              probetaskbasicconfiguration_tmp = ProbeTaskBasicConfiguration.new
              probetaskbasicconfiguration_tmp.deserialize(i)
              @BatchTasks << probetaskbasicconfiguration_tmp
            end
          end
          @TaskType = params['TaskType']
          @Nodes = params['Nodes']
          @Interval = params['Interval']
          @Parameters = params['Parameters']
          @TaskCategory = params['TaskCategory']
          @Cron = params['Cron']
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

      # CreateProbeTasks返回参数结构体
      class CreateProbeTasksResponse < TencentCloud::Common::AbstractModel
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

      # CreateTaskEx请求参数结构体
      class CreateTaskExRequest < TencentCloud::Common::AbstractModel
        # @param CatTypeName: http, https, ping, tcp, ftp, smtp, udp, dns 之一
        # @type CatTypeName: String
        # @param Url: 拨测的URL， 例如：www.qq.com (URL域名解析需要能解析出具体的IP)
        # @type Url: String
        # @param Period: 拨测周期。取值可为1,5,15,30之一, 单位：分钟。精度不能低于用户等级规定的最小精度
        # @type Period: Integer
        # @param TaskName: 拨测任务名称不能超过32个字符。同一个用户创建的任务名不可重复
        # @type TaskName: String
        # @param AgentGroupId: 拨测分组ID，体现本拨测任务要采用哪些运营商作为拨测源。一般可直接填写本用户的默认拨测分组。参见：DescribeAgentGroups 接口，本参数使用返回结果里的GroupId的值。注意： Type为0时，AgentGroupId为必填
        # @type AgentGroupId: Integer
        # @param Host: 指定域名(如需要)
        # @type Host: String
        # @param IsHeader: 是否为Header请求（非0 发起Header 请求。为0，且PostData 非空，发起POST请求。为0，PostData 为空，发起GET请求）
        # @type IsHeader: Integer
        # @param SslVer: URL中含有"https"时有用。缺省为SSLv23。需要为 TLSv1_2, TLSv1_1, TLSv1, SSLv2, SSLv23, SSLv3 之一
        # @type SslVer: String
        # @param PostData: POST请求数据。空字符串表示非POST请求
        # @type PostData: String
        # @param UserAgent: 用户Agent信息
        # @type UserAgent: String
        # @param CheckStr: 要在结果中进行匹配的字符串
        # @type CheckStr: String
        # @param CheckType: 1 表示通过检查结果是否包含CheckStr 进行校验
        # @type CheckType: Integer
        # @param Cookie: 需要设置的Cookie信息
        # @type Cookie: String
        # @param TaskId: 任务ID，用于验证且修改任务时传入原任务ID
        # @type TaskId: Integer
        # @param UserName: 登录服务器的账号。如果为空字符串，表示不用校验用户密码。只做简单连接服务器的拨测
        # @type UserName: String
        # @param PassWord: 登录服务器的密码
        # @type PassWord: String
        # @param ReqDataType: 缺省为0。0 表示请求为字符串类型。1表示为二进制类型
        # @type ReqDataType: Integer
        # @param ReqData: 发起TCP, UDP请求的协议请求数据
        # @type ReqData: String
        # @param RespDataType: 缺省为0。0 表示响应为字符串类型。1表示为二进制类型
        # @type RespDataType: Integer
        # @param RespData: 预期的UDP请求的回应数据。字符串型，只需要返回的结果里包含本字符串算校验通过。二进制型，则需要严格等于才算通过
        # @type RespData: String
        # @param DnsSvr: 目的DNS服务器  可以为空字符串
        # @type DnsSvr: String
        # @param DnsCheckIp: 需要检验是否在DNS IP列表的IP。可以为空字符串，表示不校验
        # @type DnsCheckIp: String
        # @param DnsQueryType: 需要为下列值之一。缺省为A。A, MX, NS, CNAME, TXT, ANY
        # @type DnsQueryType: String
        # @param UseSecConn: 是否使用安全链接SSL， 0 不使用，1 使用
        # @type UseSecConn: Integer
        # @param NeedAuth: FTP登录验证方式， 0 不验证 ， 1 匿名登录， 2 需要身份验证
        # @type NeedAuth: Integer
        # @param Port: 拨测目标的端口号
        # @type Port: Integer
        # @param Type: Type=0 默认 （站点监控）Type=2 可用率监控
        # @type Type: Integer
        # @param IsVerify: IsVerify=0 非验证任务 IsVerify=1 验证任务，不传则默认为0
        # @type IsVerify: Integer
        # @param RedirectFollowNum: 跟随跳转次数，取值范围0-5，不传则表示不跟随
        # @type RedirectFollowNum: Integer

        attr_accessor :CatTypeName, :Url, :Period, :TaskName, :AgentGroupId, :Host, :IsHeader, :SslVer, :PostData, :UserAgent, :CheckStr, :CheckType, :Cookie, :TaskId, :UserName, :PassWord, :ReqDataType, :ReqData, :RespDataType, :RespData, :DnsSvr, :DnsCheckIp, :DnsQueryType, :UseSecConn, :NeedAuth, :Port, :Type, :IsVerify, :RedirectFollowNum
        
        def initialize(cattypename=nil, url=nil, period=nil, taskname=nil, agentgroupid=nil, host=nil, isheader=nil, sslver=nil, postdata=nil, useragent=nil, checkstr=nil, checktype=nil, cookie=nil, taskid=nil, username=nil, password=nil, reqdatatype=nil, reqdata=nil, respdatatype=nil, respdata=nil, dnssvr=nil, dnscheckip=nil, dnsquerytype=nil, usesecconn=nil, needauth=nil, port=nil, type=nil, isverify=nil, redirectfollownum=nil)
          @CatTypeName = cattypename
          @Url = url
          @Period = period
          @TaskName = taskname
          @AgentGroupId = agentgroupid
          @Host = host
          @IsHeader = isheader
          @SslVer = sslver
          @PostData = postdata
          @UserAgent = useragent
          @CheckStr = checkstr
          @CheckType = checktype
          @Cookie = cookie
          @TaskId = taskid
          @UserName = username
          @PassWord = password
          @ReqDataType = reqdatatype
          @ReqData = reqdata
          @RespDataType = respdatatype
          @RespData = respdata
          @DnsSvr = dnssvr
          @DnsCheckIp = dnscheckip
          @DnsQueryType = dnsquerytype
          @UseSecConn = usesecconn
          @NeedAuth = needauth
          @Port = port
          @Type = type
          @IsVerify = isverify
          @RedirectFollowNum = redirectfollownum
        end

        def deserialize(params)
          @CatTypeName = params['CatTypeName']
          @Url = params['Url']
          @Period = params['Period']
          @TaskName = params['TaskName']
          @AgentGroupId = params['AgentGroupId']
          @Host = params['Host']
          @IsHeader = params['IsHeader']
          @SslVer = params['SslVer']
          @PostData = params['PostData']
          @UserAgent = params['UserAgent']
          @CheckStr = params['CheckStr']
          @CheckType = params['CheckType']
          @Cookie = params['Cookie']
          @TaskId = params['TaskId']
          @UserName = params['UserName']
          @PassWord = params['PassWord']
          @ReqDataType = params['ReqDataType']
          @ReqData = params['ReqData']
          @RespDataType = params['RespDataType']
          @RespData = params['RespData']
          @DnsSvr = params['DnsSvr']
          @DnsCheckIp = params['DnsCheckIp']
          @DnsQueryType = params['DnsQueryType']
          @UseSecConn = params['UseSecConn']
          @NeedAuth = params['NeedAuth']
          @Port = params['Port']
          @Type = params['Type']
          @IsVerify = params['IsVerify']
          @RedirectFollowNum = params['RedirectFollowNum']
        end
      end

      # CreateTaskEx返回参数结构体
      class CreateTaskExResponse < TencentCloud::Common::AbstractModel
        # @param ResultId: 拨测结果查询ID。接下来可以使用查询拨测是否能够成功，验证能否通过。
        # @type ResultId: Integer
        # @param TaskId: 拨测任务ID。验证通过后，创建任务时使用，传递给CreateTask 接口。
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultId, :TaskId, :RequestId
        
        def initialize(resultid=nil, taskid=nil, requestid=nil)
          @ResultId = resultid
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultId = params['ResultId']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 时延等数据，数据点
      class DataPoint < TencentCloud::Common::AbstractModel
        # @param LogTime: 数据点的时间
        # @type LogTime: String
        # @param MetricValue: 数据值
        # @type MetricValue: Float

        attr_accessor :LogTime, :MetricValue
        
        def initialize(logtime=nil, metricvalue=nil)
          @LogTime = logtime
          @MetricValue = metricvalue
        end

        def deserialize(params)
          @LogTime = params['LogTime']
          @MetricValue = params['MetricValue']
        end
      end

      # 包含MetricName的DataPoint数据
      class DataPointMetric < TencentCloud::Common::AbstractModel
        # @param MetricName: 数据项
        # @type MetricName: String
        # @param Points: 数据点的时间和值
        # @type Points: Array

        attr_accessor :MetricName, :Points
        
        def initialize(metricname=nil, points=nil)
          @MetricName = metricname
          @Points = points
        end

        def deserialize(params)
          @MetricName = params['MetricName']
          unless params['Points'].nil?
            @Points = []
            params['Points'].each do |i|
              datapoint_tmp = DataPoint.new
              datapoint_tmp.deserialize(i)
              @Points << datapoint_tmp
            end
          end
        end
      end

      # DeleteAgentGroup请求参数结构体
      class DeleteAgentGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 拨测分组id
        # @type GroupId: Integer

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # DeleteAgentGroup返回参数结构体
      class DeleteAgentGroupResponse < TencentCloud::Common::AbstractModel
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

      # DeleteProbeTask请求参数结构体
      class DeleteProbeTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskIds: 任务 ID
        # @type TaskIds: Array

        attr_accessor :TaskIds
        
        def initialize(taskids=nil)
          @TaskIds = taskids
        end

        def deserialize(params)
          @TaskIds = params['TaskIds']
        end
      end

      # DeleteProbeTask返回参数结构体
      class DeleteProbeTaskResponse < TencentCloud::Common::AbstractModel
        # @param Total: 任务总量
        # @type Total: Integer
        # @param SuccessCount: 任务成功量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessCount: Integer
        # @param Results: 任务执行结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :SuccessCount, :Results, :RequestId
        
        def initialize(total=nil, successcount=nil, results=nil, requestid=nil)
          @Total = total
          @SuccessCount = successcount
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          @SuccessCount = params['SuccessCount']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              taskresult_tmp = TaskResult.new
              taskresult_tmp.deserialize(i)
              @Results << taskresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteTasks请求参数结构体
      class DeleteTasksRequest < TencentCloud::Common::AbstractModel
        # @param TaskIds: 拨测任务id
        # @type TaskIds: Array

        attr_accessor :TaskIds
        
        def initialize(taskids=nil)
          @TaskIds = taskids
        end

        def deserialize(params)
          @TaskIds = params['TaskIds']
        end
      end

      # DeleteTasks返回参数结构体
      class DeleteTasksResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAgentGroups请求参数结构体
      class DescribeAgentGroupsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAgentGroups返回参数结构体
      class DescribeAgentGroupsResponse < TencentCloud::Common::AbstractModel
        # @param SysDefaultGroup: 用户所属的系统默认拨测分组
        # @type SysDefaultGroup: :class:`Tencentcloud::Cat.v20180409.models.AgentGroup`
        # @param CustomGroups: 用户创建的拨测分组列表
        # @type CustomGroups: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SysDefaultGroup, :CustomGroups, :RequestId
        
        def initialize(sysdefaultgroup=nil, customgroups=nil, requestid=nil)
          @SysDefaultGroup = sysdefaultgroup
          @CustomGroups = customgroups
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SysDefaultGroup'].nil?
            @SysDefaultGroup = AgentGroup.new
            @SysDefaultGroup.deserialize(params['SysDefaultGroup'])
          end
          unless params['CustomGroups'].nil?
            @CustomGroups = []
            params['CustomGroups'].each do |i|
              agentgroup_tmp = AgentGroup.new
              agentgroup_tmp.deserialize(i)
              @CustomGroups << agentgroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAgents请求参数结构体
      class DescribeAgentsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAgents返回参数结构体
      class DescribeAgentsResponse < TencentCloud::Common::AbstractModel
        # @param Agents: 本用户可选的拨测点列表
        # @type Agents: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Agents, :RequestId
        
        def initialize(agents=nil, requestid=nil)
          @Agents = agents
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Agents'].nil?
            @Agents = []
            params['Agents'].each do |i|
              catagent_tmp = CatAgent.new
              catagent_tmp.deserialize(i)
              @Agents << catagent_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAlarmTopic请求参数结构体
      class DescribeAlarmTopicRequest < TencentCloud::Common::AbstractModel
        # @param NeedAdd: 如果不存在拨测相关的主题，是否自动创建一个。取值可为0, 1，默认为0
        # @type NeedAdd: Integer

        attr_accessor :NeedAdd
        
        def initialize(needadd=nil)
          @NeedAdd = needadd
        end

        def deserialize(params)
          @NeedAdd = params['NeedAdd']
        end
      end

      # DescribeAlarmTopic返回参数结构体
      class DescribeAlarmTopicResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 主题个数
        # @type TotalCount: Integer
        # @param Topics: 主题列表
        # @type Topics: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Topics, :RequestId
        
        def initialize(totalcount=nil, topics=nil, requestid=nil)
          @TotalCount = totalcount
          @Topics = topics
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Topics'].nil?
            @Topics = []
            params['Topics'].each do |i|
              alarmtopic_tmp = AlarmTopic.new
              alarmtopic_tmp.deserialize(i)
              @Topics << alarmtopic_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAlarmsByTask请求参数结构体
      class DescribeAlarmsByTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 拨测任务Id
        # @type TaskId: Integer
        # @param Offset: 从第Offset 条开始查询。缺省值为0
        # @type Offset: Integer
        # @param Limit: 本批次查询Limit 条记录。缺省值为20
        # @type Limit: Integer
        # @param Status: 0 全部, 1 已恢复, 2 未恢复  默认为0。其他值，视为0 查全部状态
        # @type Status: Integer
        # @param BeginTime: 格式如：2017-05-09 00:00:00  缺省为7天前0点
        # @type BeginTime: String
        # @param EndTime: 格式如：2017-05-10 00:00:00  缺省为明天0点
        # @type EndTime: String
        # @param SortBy: 排序字段，可为Time, ObjName, Duration, Status, Content 之一。缺省为Time
        # @type SortBy: String
        # @param SortType: 升序或降序。可为Desc, Asc之一。缺省为Desc
        # @type SortType: String
        # @param ObjName: 告警对象的名称
        # @type ObjName: String

        attr_accessor :TaskId, :Offset, :Limit, :Status, :BeginTime, :EndTime, :SortBy, :SortType, :ObjName
        
        def initialize(taskid=nil, offset=nil, limit=nil, status=nil, begintime=nil, endtime=nil, sortby=nil, sorttype=nil, objname=nil)
          @TaskId = taskid
          @Offset = offset
          @Limit = limit
          @Status = status
          @BeginTime = begintime
          @EndTime = endtime
          @SortBy = sortby
          @SortType = sorttype
          @ObjName = objname
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Status = params['Status']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @SortBy = params['SortBy']
          @SortType = params['SortType']
          @ObjName = params['ObjName']
        end
      end

      # DescribeAlarmsByTask返回参数结构体
      class DescribeAlarmsByTaskResponse < TencentCloud::Common::AbstractModel
        # @param AlarmInfos: 告警信息列表
        # @type AlarmInfos: Array
        # @param FaultRatio: 故障率
        # @type FaultRatio: Float
        # @param FaultTimeSpec: 故障总时长
        # @type FaultTimeSpec: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AlarmInfos, :FaultRatio, :FaultTimeSpec, :RequestId
        
        def initialize(alarminfos=nil, faultratio=nil, faulttimespec=nil, requestid=nil)
          @AlarmInfos = alarminfos
          @FaultRatio = faultratio
          @FaultTimeSpec = faulttimespec
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AlarmInfos'].nil?
            @AlarmInfos = []
            params['AlarmInfos'].each do |i|
              alarminfo_tmp = AlarmInfo.new
              alarminfo_tmp.deserialize(i)
              @AlarmInfos << alarminfo_tmp
            end
          end
          @FaultRatio = params['FaultRatio']
          @FaultTimeSpec = params['FaultTimeSpec']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAlarms请求参数结构体
      class DescribeAlarmsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 从第Offset 条开始查询。缺省值为0
        # @type Offset: Integer
        # @param Limit: 本批次查询Limit 条记录。缺省值为20
        # @type Limit: Integer
        # @param Status: 0 全部, 1 已恢复, 2 未恢复  默认为0。其他值，视为0 查全部状态。
        # @type Status: Integer
        # @param BeginTime: 格式如：2017-05-09 00:00:00  缺省为7天前0点
        # @type BeginTime: String
        # @param EndTime: 格式如：2017-05-10 00:00:00  缺省为明天0点
        # @type EndTime: String
        # @param ObjName: 告警任务名
        # @type ObjName: String
        # @param SortBy: 排序字段，可为Time, ObjName, Duration, Status, Content 之一。缺省为Time。
        # @type SortBy: String
        # @param SortType: 升序或降序。可为Desc, Asc之一。缺省为Desc。
        # @type SortType: String

        attr_accessor :Offset, :Limit, :Status, :BeginTime, :EndTime, :ObjName, :SortBy, :SortType
        
        def initialize(offset=nil, limit=nil, status=nil, begintime=nil, endtime=nil, objname=nil, sortby=nil, sorttype=nil)
          @Offset = offset
          @Limit = limit
          @Status = status
          @BeginTime = begintime
          @EndTime = endtime
          @ObjName = objname
          @SortBy = sortby
          @SortType = sorttype
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Status = params['Status']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @ObjName = params['ObjName']
          @SortBy = params['SortBy']
          @SortType = params['SortType']
        end
      end

      # DescribeAlarms返回参数结构体
      class DescribeAlarmsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 告警总条数
        # @type TotalCount: Integer
        # @param AlarmInfos: 本批告警信息列表
        # @type AlarmInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AlarmInfos, :RequestId
        
        def initialize(totalcount=nil, alarminfos=nil, requestid=nil)
          @TotalCount = totalcount
          @AlarmInfos = alarminfos
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AlarmInfos'].nil?
            @AlarmInfos = []
            params['AlarmInfos'].each do |i|
              alarminfo_tmp = AlarmInfo.new
              alarminfo_tmp.deserialize(i)
              @AlarmInfos << alarminfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCatLogs请求参数结构体
      class DescribeCatLogsRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 拨测任务Id
        # @type TaskId: Integer
        # @param Offset: 从第Offset 条开始查询。缺省值为0
        # @type Offset: Integer
        # @param Limit: 本批次查询Limit 条记录。缺省值为20
        # @type Limit: Integer
        # @param BeginTime: 格式如：2017-05-09 00:00:00  缺省为当天0点，最多拉取1天的数据
        # @type BeginTime: String
        # @param EndTime: 格式如：2017-05-10 00:00:00  缺省为当前时间
        # @type EndTime: String
        # @param SortType: 按时间升序或降序。默认降序。可选值： Desc, Asc
        # @type SortType: String

        attr_accessor :TaskId, :Offset, :Limit, :BeginTime, :EndTime, :SortType
        
        def initialize(taskid=nil, offset=nil, limit=nil, begintime=nil, endtime=nil, sorttype=nil)
          @TaskId = taskid
          @Offset = offset
          @Limit = limit
          @BeginTime = begintime
          @EndTime = endtime
          @SortType = sorttype
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @SortType = params['SortType']
        end
      end

      # DescribeCatLogs返回参数结构体
      class DescribeCatLogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的总记录数
        # @type TotalCount: Integer
        # @param CatLogs: 拨测记录列表
        # @type CatLogs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :CatLogs, :RequestId
        
        def initialize(totalcount=nil, catlogs=nil, requestid=nil)
          @TotalCount = totalcount
          @CatLogs = catlogs
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['CatLogs'].nil?
            @CatLogs = []
            params['CatLogs'].each do |i|
              catlog_tmp = CatLog.new
              catlog_tmp.deserialize(i)
              @CatLogs << catlog_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDetailedSingleProbeData请求参数结构体
      class DescribeDetailedSingleProbeDataRequest < TencentCloud::Common::AbstractModel
        # @param BeginTime: 开始时间戳（毫秒级）
        # @type BeginTime: Integer
        # @param EndTime: 结束时间戳（毫秒级）
        # @type EndTime: Integer
        # @param TaskType: 任务类型
        # @type TaskType: String
        # @param SortField: 待排序字段
        # @type SortField: String
        # @param Ascending: true表示升序
        # @type Ascending: Boolean
        # @param SelectedFields: 选中字段
        # @type SelectedFields: Array
        # @param Offset: 起始取数位置
        # @type Offset: Integer
        # @param Limit: 取数数量
        # @type Limit: Integer
        # @param TaskID: 任务ID
        # @type TaskID: Array
        # @param Operators: 拨测点运营商
        # @type Operators: Array
        # @param Districts: 拨测点地区
        # @type Districts: Array
        # @param ErrorTypes: 错误类型
        # @type ErrorTypes: Array
        # @param City: 城市
        # @type City: Array

        attr_accessor :BeginTime, :EndTime, :TaskType, :SortField, :Ascending, :SelectedFields, :Offset, :Limit, :TaskID, :Operators, :Districts, :ErrorTypes, :City
        
        def initialize(begintime=nil, endtime=nil, tasktype=nil, sortfield=nil, ascending=nil, selectedfields=nil, offset=nil, limit=nil, taskid=nil, operators=nil, districts=nil, errortypes=nil, city=nil)
          @BeginTime = begintime
          @EndTime = endtime
          @TaskType = tasktype
          @SortField = sortfield
          @Ascending = ascending
          @SelectedFields = selectedfields
          @Offset = offset
          @Limit = limit
          @TaskID = taskid
          @Operators = operators
          @Districts = districts
          @ErrorTypes = errortypes
          @City = city
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @TaskType = params['TaskType']
          @SortField = params['SortField']
          @Ascending = params['Ascending']
          @SelectedFields = params['SelectedFields']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @TaskID = params['TaskID']
          @Operators = params['Operators']
          @Districts = params['Districts']
          @ErrorTypes = params['ErrorTypes']
          @City = params['City']
        end
      end

      # DescribeDetailedSingleProbeData返回参数结构体
      class DescribeDetailedSingleProbeDataResponse < TencentCloud::Common::AbstractModel
        # @param DataSet: 单次详情数据
        # @type DataSet: Array
        # @param TotalNumber: 符合条件的数据总数
        # @type TotalNumber: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataSet, :TotalNumber, :RequestId
        
        def initialize(dataset=nil, totalnumber=nil, requestid=nil)
          @DataSet = dataset
          @TotalNumber = totalnumber
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataSet'].nil?
            @DataSet = []
            params['DataSet'].each do |i|
              detailedsingledatadefine_tmp = DetailedSingleDataDefine.new
              detailedsingledatadefine_tmp.deserialize(i)
              @DataSet << detailedsingledatadefine_tmp
            end
          end
          @TotalNumber = params['TotalNumber']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProbeNodes请求参数结构体
      class DescribeProbeNodesRequest < TencentCloud::Common::AbstractModel
        # @param NodeType: 节点类型
        # <li> 1 = IDC </li>
        # <li> 2 = LastMile </li>
        # <li> 3 = Mobile </li>
        # @type NodeType: Integer
        # @param Location: 节点区域
        # <li> 1 = 中国大陆 </li>
        # <li> 2 = 港澳台 </li>
        # <li> 3 = 海外 </li>
        # @type Location: Integer
        # @param IsIPv6: 是否IPv6
        # @type IsIPv6: Boolean
        # @param NodeName: 名字模糊搜索
        # @type NodeName: String
        # @param PayMode: 付费模式
        # <li>1 = 试用版本</li>
        # <li> 2 = 付费版本 </li>
        # @type PayMode: Integer

        attr_accessor :NodeType, :Location, :IsIPv6, :NodeName, :PayMode
        
        def initialize(nodetype=nil, location=nil, isipv6=nil, nodename=nil, paymode=nil)
          @NodeType = nodetype
          @Location = location
          @IsIPv6 = isipv6
          @NodeName = nodename
          @PayMode = paymode
        end

        def deserialize(params)
          @NodeType = params['NodeType']
          @Location = params['Location']
          @IsIPv6 = params['IsIPv6']
          @NodeName = params['NodeName']
          @PayMode = params['PayMode']
        end
      end

      # DescribeProbeNodes返回参数结构体
      class DescribeProbeNodesResponse < TencentCloud::Common::AbstractModel
        # @param NodeSet: 节点列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NodeSet, :RequestId
        
        def initialize(nodeset=nil, requestid=nil)
          @NodeSet = nodeset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NodeSet'].nil?
            @NodeSet = []
            params['NodeSet'].each do |i|
              nodedefine_tmp = NodeDefine.new
              nodedefine_tmp.deserialize(i)
              @NodeSet << nodedefine_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProbeTasks请求参数结构体
      class DescribeProbeTasksRequest < TencentCloud::Common::AbstractModel
        # @param TaskIDs: 任务 ID  列表
        # @type TaskIDs: Array
        # @param TaskName: 任务名
        # @type TaskName: String
        # @param TargetAddress: 拨测目标
        # @type TargetAddress: String
        # @param TaskStatus: 任务状态列表
        # @type TaskStatus: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100
        # @type Limit: Integer
        # @param PayMode: 付费模式
        # <li>1 = 试用版本</li>
        # <li> 2 = 付费版本 </li>
        # @type PayMode: Integer
        # @param OrderState: 订单状态
        # <li>1 = 正常</li>
        # <li> 2 = 欠费 </li>
        # @type OrderState: Integer
        # @param TaskType: 拨测类型
        # @type TaskType: Array
        # @param TaskCategory: 节点类型
        # @type TaskCategory: Array
        # @param OrderBy: 排序的列
        # @type OrderBy: String
        # @param Ascend: 是否正序
        # @type Ascend: Boolean
        # @param TagFilters: 资源标签值
        # @type TagFilters: Array

        attr_accessor :TaskIDs, :TaskName, :TargetAddress, :TaskStatus, :Offset, :Limit, :PayMode, :OrderState, :TaskType, :TaskCategory, :OrderBy, :Ascend, :TagFilters
        
        def initialize(taskids=nil, taskname=nil, targetaddress=nil, taskstatus=nil, offset=nil, limit=nil, paymode=nil, orderstate=nil, tasktype=nil, taskcategory=nil, orderby=nil, ascend=nil, tagfilters=nil)
          @TaskIDs = taskids
          @TaskName = taskname
          @TargetAddress = targetaddress
          @TaskStatus = taskstatus
          @Offset = offset
          @Limit = limit
          @PayMode = paymode
          @OrderState = orderstate
          @TaskType = tasktype
          @TaskCategory = taskcategory
          @OrderBy = orderby
          @Ascend = ascend
          @TagFilters = tagfilters
        end

        def deserialize(params)
          @TaskIDs = params['TaskIDs']
          @TaskName = params['TaskName']
          @TargetAddress = params['TargetAddress']
          @TaskStatus = params['TaskStatus']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @PayMode = params['PayMode']
          @OrderState = params['OrderState']
          @TaskType = params['TaskType']
          @TaskCategory = params['TaskCategory']
          @OrderBy = params['OrderBy']
          @Ascend = params['Ascend']
          unless params['TagFilters'].nil?
            @TagFilters = []
            params['TagFilters'].each do |i|
              keyvaluepair_tmp = KeyValuePair.new
              keyvaluepair_tmp.deserialize(i)
              @TagFilters << keyvaluepair_tmp
            end
          end
        end
      end

      # DescribeProbeTasks返回参数结构体
      class DescribeProbeTasksResponse < TencentCloud::Common::AbstractModel
        # @param TaskSet: 任务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskSet: Array
        # @param Total: 任务总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskSet, :Total, :RequestId
        
        def initialize(taskset=nil, total=nil, requestid=nil)
          @TaskSet = taskset
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskSet'].nil?
            @TaskSet = []
            params['TaskSet'].each do |i|
              probetask_tmp = ProbeTask.new
              probetask_tmp.deserialize(i)
              @TaskSet << probetask_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskDetail请求参数结构体
      class DescribeTaskDetailRequest < TencentCloud::Common::AbstractModel
        # @param TaskIds: 拨测任务id 数组
        # @type TaskIds: Array

        attr_accessor :TaskIds
        
        def initialize(taskids=nil)
          @TaskIds = taskids
        end

        def deserialize(params)
          @TaskIds = params['TaskIds']
        end
      end

      # DescribeTaskDetail返回参数结构体
      class DescribeTaskDetailResponse < TencentCloud::Common::AbstractModel
        # @param Tasks: 拨测任务列表
        # @type Tasks: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Tasks, :RequestId
        
        def initialize(tasks=nil, requestid=nil)
          @Tasks = tasks
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              cattaskdetail_tmp = CatTaskDetail.new
              cattaskdetail_tmp.deserialize(i)
              @Tasks << cattaskdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTasksByType请求参数结构体
      class DescribeTasksByTypeRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 从第Offset 条开始查询。缺省值为0
        # @type Offset: Integer
        # @param Limit: 本批次查询Limit 条记录。缺省值为20
        # @type Limit: Integer
        # @param Type: 拨测任务类型。0 站点监控，2 可用性监控。缺省值为2
        # @type Type: Integer

        attr_accessor :Offset, :Limit, :Type
        
        def initialize(offset=nil, limit=nil, type=nil)
          @Offset = offset
          @Limit = limit
          @Type = type
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Type = params['Type']
        end
      end

      # DescribeTasksByType返回参数结构体
      class DescribeTasksByTypeResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的总任务数
        # @type TotalCount: Integer
        # @param Tasks: 任务列表
        # @type Tasks: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Tasks, :RequestId
        
        def initialize(totalcount=nil, tasks=nil, requestid=nil)
          @TotalCount = totalcount
          @Tasks = tasks
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              taskalarm_tmp = TaskAlarm.new
              taskalarm_tmp.deserialize(i)
              @Tasks << taskalarm_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserLimit请求参数结构体
      class DescribeUserLimitRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeUserLimit返回参数结构体
      class DescribeUserLimitResponse < TencentCloud::Common::AbstractModel
        # @param MaxTaskNum: 用户可建立的最大任务数
        # @type MaxTaskNum: Integer
        # @param MaxAgentNum: 用户可用的最大拨测结点数
        # @type MaxAgentNum: Integer
        # @param MaxGroupNum: 用户可建立的最大拨测分组数
        # @type MaxGroupNum: Integer
        # @param MinPeriod: 用户可用的最小拨测间隔
        # @type MinPeriod: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MaxTaskNum, :MaxAgentNum, :MaxGroupNum, :MinPeriod, :RequestId
        
        def initialize(maxtasknum=nil, maxagentnum=nil, maxgroupnum=nil, minperiod=nil, requestid=nil)
          @MaxTaskNum = maxtasknum
          @MaxAgentNum = maxagentnum
          @MaxGroupNum = maxgroupnum
          @MinPeriod = minperiod
          @RequestId = requestid
        end

        def deserialize(params)
          @MaxTaskNum = params['MaxTaskNum']
          @MaxAgentNum = params['MaxAgentNum']
          @MaxGroupNum = params['MaxGroupNum']
          @MinPeriod = params['MinPeriod']
          @RequestId = params['RequestId']
        end
      end

      # 单条详细拨测数据
      class DetailedSingleDataDefine < TencentCloud::Common::AbstractModel
        # @param ProbeTime: 拨测时间戳
        # @type ProbeTime: Integer
        # @param Labels: 储存所有string类型字段
        # @type Labels: Array
        # @param Fields: 储存所有float类型字段
        # @type Fields: Array

        attr_accessor :ProbeTime, :Labels, :Fields
        
        def initialize(probetime=nil, labels=nil, fields=nil)
          @ProbeTime = probetime
          @Labels = labels
          @Fields = fields
        end

        def deserialize(params)
          @ProbeTime = params['ProbeTime']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              label_tmp = Label.new
              label_tmp.deserialize(i)
              @Labels << label_tmp
            end
          end
          unless params['Fields'].nil?
            @Fields = []
            params['Fields'].each do |i|
              field_tmp = Field.new
              field_tmp.deserialize(i)
              @Fields << field_tmp
            end
          end
        end
      end

      # 拨测点维度信息
      class DimensionsDetail < TencentCloud::Common::AbstractModel
        # @param Isp: 运营商列表
        # @type Isp: Array
        # @param Province: 省份列表
        # @type Province: Array

        attr_accessor :Isp, :Province
        
        def initialize(isp=nil, province=nil)
          @Isp = isp
          @Province = province
        end

        def deserialize(params)
          @Isp = params['Isp']
          @Province = params['Province']
        end
      end

      # 储存float类型字段
      class Field < TencentCloud::Common::AbstractModel
        # @param ID: 自定义字段编号
        # @type ID: Integer
        # @param Name: 自定义字段名称/说明
        # @type Name: String
        # @param Value: 字段值
        # @type Value: Float

        attr_accessor :ID, :Name, :Value
        
        def initialize(id=nil, name=nil, value=nil)
          @ID = id
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @ID = params['ID']
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # GetAvailRatioHistory请求参数结构体
      class GetAvailRatioHistoryRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 拨测任务Id
        # @type TaskId: Integer
        # @param TimeStamp: 具体时间点
        # @type TimeStamp: String

        attr_accessor :TaskId, :TimeStamp
        
        def initialize(taskid=nil, timestamp=nil)
          @TaskId = taskid
          @TimeStamp = timestamp
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TimeStamp = params['TimeStamp']
        end
      end

      # GetAvailRatioHistory返回参数结构体
      class GetAvailRatioHistoryResponse < TencentCloud::Common::AbstractModel
        # @param AvgAvailRatio: 整体平均可用率
        # @type AvgAvailRatio: Float
        # @param LowestAvailRatio: 各省份最低可用率
        # @type LowestAvailRatio: Float
        # @param LowestProvince: 可用率最低的省份
        # @type LowestProvince: String
        # @param LowestIsp: 可用率最低的运营商
        # @type LowestIsp: String
        # @param ProvinceData: 分省份的可用率数据
        # @type ProvinceData: Array
        # @param AvgTime: 国内平均耗时，单位毫秒
        # @type AvgTime: Float
        # @param AvgAvailRatio2: 国外平均可用率
        # @type AvgAvailRatio2: Float
        # @param AvgTime2: 国外平均耗时，单位毫秒
        # @type AvgTime2: Float
        # @param LowestAvailRatio2: 国外最低可用率
        # @type LowestAvailRatio2: Float
        # @param LowestProvince2: 国外可用率最低的区域
        # @type LowestProvince2: String
        # @param LowestIsp2: 国外可用率最低的运营商
        # @type LowestIsp2: String
        # @param ProvinceData2: 国外分区域的可用率数据
        # @type ProvinceData2: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AvgAvailRatio, :LowestAvailRatio, :LowestProvince, :LowestIsp, :ProvinceData, :AvgTime, :AvgAvailRatio2, :AvgTime2, :LowestAvailRatio2, :LowestProvince2, :LowestIsp2, :ProvinceData2, :RequestId
        
        def initialize(avgavailratio=nil, lowestavailratio=nil, lowestprovince=nil, lowestisp=nil, provincedata=nil, avgtime=nil, avgavailratio2=nil, avgtime2=nil, lowestavailratio2=nil, lowestprovince2=nil, lowestisp2=nil, provincedata2=nil, requestid=nil)
          @AvgAvailRatio = avgavailratio
          @LowestAvailRatio = lowestavailratio
          @LowestProvince = lowestprovince
          @LowestIsp = lowestisp
          @ProvinceData = provincedata
          @AvgTime = avgtime
          @AvgAvailRatio2 = avgavailratio2
          @AvgTime2 = avgtime2
          @LowestAvailRatio2 = lowestavailratio2
          @LowestProvince2 = lowestprovince2
          @LowestIsp2 = lowestisp2
          @ProvinceData2 = provincedata2
          @RequestId = requestid
        end

        def deserialize(params)
          @AvgAvailRatio = params['AvgAvailRatio']
          @LowestAvailRatio = params['LowestAvailRatio']
          @LowestProvince = params['LowestProvince']
          @LowestIsp = params['LowestIsp']
          unless params['ProvinceData'].nil?
            @ProvinceData = []
            params['ProvinceData'].each do |i|
              provincedetail_tmp = ProvinceDetail.new
              provincedetail_tmp.deserialize(i)
              @ProvinceData << provincedetail_tmp
            end
          end
          @AvgTime = params['AvgTime']
          @AvgAvailRatio2 = params['AvgAvailRatio2']
          @AvgTime2 = params['AvgTime2']
          @LowestAvailRatio2 = params['LowestAvailRatio2']
          @LowestProvince2 = params['LowestProvince2']
          @LowestIsp2 = params['LowestIsp2']
          unless params['ProvinceData2'].nil?
            @ProvinceData2 = []
            params['ProvinceData2'].each do |i|
              provincedetail_tmp = ProvinceDetail.new
              provincedetail_tmp.deserialize(i)
              @ProvinceData2 << provincedetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetDailyAvailRatio请求参数结构体
      class GetDailyAvailRatioRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 拨测任务Id
        # @type TaskId: Integer

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # GetDailyAvailRatio返回参数结构体
      class GetDailyAvailRatioResponse < TencentCloud::Common::AbstractModel
        # @param AvgAvailRatio: 整体平均可用率
        # @type AvgAvailRatio: Float
        # @param LowestAvailRatio: 各省份最低可用率
        # @type LowestAvailRatio: Float
        # @param LowestProvince: 可用率最低的省份
        # @type LowestProvince: String
        # @param ProvinceData: 分省份的可用率数据
        # @type ProvinceData: Array
        # @param AvgTime: 国内平均耗时，单位毫秒
        # @type AvgTime: Float
        # @param AvgAvailRatio2: 国外平均可用率
        # @type AvgAvailRatio2: Float
        # @param AvgTime2: 国外平均耗时，单位毫秒
        # @type AvgTime2: Float
        # @param LowestAvailRatio2: 国外最低可用率
        # @type LowestAvailRatio2: Float
        # @param LowestProvince2: 国外可用率最低的区域
        # @type LowestProvince2: String
        # @param ProvinceData2: 国外分区域的可用率数据
        # @type ProvinceData2: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AvgAvailRatio, :LowestAvailRatio, :LowestProvince, :ProvinceData, :AvgTime, :AvgAvailRatio2, :AvgTime2, :LowestAvailRatio2, :LowestProvince2, :ProvinceData2, :RequestId
        
        def initialize(avgavailratio=nil, lowestavailratio=nil, lowestprovince=nil, provincedata=nil, avgtime=nil, avgavailratio2=nil, avgtime2=nil, lowestavailratio2=nil, lowestprovince2=nil, provincedata2=nil, requestid=nil)
          @AvgAvailRatio = avgavailratio
          @LowestAvailRatio = lowestavailratio
          @LowestProvince = lowestprovince
          @ProvinceData = provincedata
          @AvgTime = avgtime
          @AvgAvailRatio2 = avgavailratio2
          @AvgTime2 = avgtime2
          @LowestAvailRatio2 = lowestavailratio2
          @LowestProvince2 = lowestprovince2
          @ProvinceData2 = provincedata2
          @RequestId = requestid
        end

        def deserialize(params)
          @AvgAvailRatio = params['AvgAvailRatio']
          @LowestAvailRatio = params['LowestAvailRatio']
          @LowestProvince = params['LowestProvince']
          unless params['ProvinceData'].nil?
            @ProvinceData = []
            params['ProvinceData'].each do |i|
              provincedetail_tmp = ProvinceDetail.new
              provincedetail_tmp.deserialize(i)
              @ProvinceData << provincedetail_tmp
            end
          end
          @AvgTime = params['AvgTime']
          @AvgAvailRatio2 = params['AvgAvailRatio2']
          @AvgTime2 = params['AvgTime2']
          @LowestAvailRatio2 = params['LowestAvailRatio2']
          @LowestProvince2 = params['LowestProvince2']
          unless params['ProvinceData2'].nil?
            @ProvinceData2 = []
            params['ProvinceData2'].each do |i|
              provincedetail_tmp = ProvinceDetail.new
              provincedetail_tmp.deserialize(i)
              @ProvinceData2 << provincedetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetRealAvailRatio请求参数结构体
      class GetRealAvailRatioRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 拨测任务Id
        # @type TaskId: Integer

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # GetRealAvailRatio返回参数结构体
      class GetRealAvailRatioResponse < TencentCloud::Common::AbstractModel
        # @param AvgAvailRatio: 国内平均可用率
        # @type AvgAvailRatio: Float
        # @param LowestAvailRatio: 各省份最低可用率
        # @type LowestAvailRatio: Float
        # @param LowestProvince: 可用率最低的省份
        # @type LowestProvince: String
        # @param LowestIsp: 可用率最低的运营商
        # @type LowestIsp: String
        # @param ProvinceData: 分省份的可用率数据
        # @type ProvinceData: Array
        # @param AvgTime: 国内平均耗时，单位毫秒
        # @type AvgTime: Float
        # @param AvgAvailRatio2: 国外平均可用率
        # @type AvgAvailRatio2: Float
        # @param AvgTime2: 国外平均耗时，单位毫秒
        # @type AvgTime2: Float
        # @param LowestAvailRatio2: 国外最低可用率
        # @type LowestAvailRatio2: Float
        # @param LowestProvince2: 国外可用率最低的区域
        # @type LowestProvince2: String
        # @param LowestIsp2: 国外可用率最低的运营商
        # @type LowestIsp2: String
        # @param ProvinceData2: 国外分区域的可用率数据
        # @type ProvinceData2: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AvgAvailRatio, :LowestAvailRatio, :LowestProvince, :LowestIsp, :ProvinceData, :AvgTime, :AvgAvailRatio2, :AvgTime2, :LowestAvailRatio2, :LowestProvince2, :LowestIsp2, :ProvinceData2, :RequestId
        
        def initialize(avgavailratio=nil, lowestavailratio=nil, lowestprovince=nil, lowestisp=nil, provincedata=nil, avgtime=nil, avgavailratio2=nil, avgtime2=nil, lowestavailratio2=nil, lowestprovince2=nil, lowestisp2=nil, provincedata2=nil, requestid=nil)
          @AvgAvailRatio = avgavailratio
          @LowestAvailRatio = lowestavailratio
          @LowestProvince = lowestprovince
          @LowestIsp = lowestisp
          @ProvinceData = provincedata
          @AvgTime = avgtime
          @AvgAvailRatio2 = avgavailratio2
          @AvgTime2 = avgtime2
          @LowestAvailRatio2 = lowestavailratio2
          @LowestProvince2 = lowestprovince2
          @LowestIsp2 = lowestisp2
          @ProvinceData2 = provincedata2
          @RequestId = requestid
        end

        def deserialize(params)
          @AvgAvailRatio = params['AvgAvailRatio']
          @LowestAvailRatio = params['LowestAvailRatio']
          @LowestProvince = params['LowestProvince']
          @LowestIsp = params['LowestIsp']
          unless params['ProvinceData'].nil?
            @ProvinceData = []
            params['ProvinceData'].each do |i|
              provincedetail_tmp = ProvinceDetail.new
              provincedetail_tmp.deserialize(i)
              @ProvinceData << provincedetail_tmp
            end
          end
          @AvgTime = params['AvgTime']
          @AvgAvailRatio2 = params['AvgAvailRatio2']
          @AvgTime2 = params['AvgTime2']
          @LowestAvailRatio2 = params['LowestAvailRatio2']
          @LowestProvince2 = params['LowestProvince2']
          @LowestIsp2 = params['LowestIsp2']
          unless params['ProvinceData2'].nil?
            @ProvinceData2 = []
            params['ProvinceData2'].each do |i|
              provincedetail_tmp = ProvinceDetail.new
              provincedetail_tmp.deserialize(i)
              @ProvinceData2 << provincedetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetRespTimeTrendEx请求参数结构体
      class GetRespTimeTrendExRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 验证成功的拨测任务id
        # @type TaskId: Integer
        # @param Date: 统计数据的发生日期。格式如：2017-05-09
        # @type Date: String
        # @param Period: 数据的采集周期，单位分钟。取值可为 1, 5, 15, 30
        # @type Period: Integer
        # @param Dimensions: 可为 Isp, Province
        # @type Dimensions: :class:`Tencentcloud::Cat.v20180409.models.DimensionsDetail`
        # @param MetricName: 可为  totalTime, parseTime, connectTime, sendTime, waitTime, receiveTime, availRatio。缺省值为 totalTime
        # @type MetricName: String

        attr_accessor :TaskId, :Date, :Period, :Dimensions, :MetricName
        
        def initialize(taskid=nil, date=nil, period=nil, dimensions=nil, metricname=nil)
          @TaskId = taskid
          @Date = date
          @Period = period
          @Dimensions = dimensions
          @MetricName = metricname
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Date = params['Date']
          @Period = params['Period']
          unless params['Dimensions'].nil?
            @Dimensions = DimensionsDetail.new
            @Dimensions.deserialize(params['Dimensions'])
          end
          @MetricName = params['MetricName']
        end
      end

      # GetRespTimeTrendEx返回参数结构体
      class GetRespTimeTrendExResponse < TencentCloud::Common::AbstractModel
        # @param DataPoints: 数据点集合，时延等走势数据
        # @type DataPoints: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataPoints, :RequestId
        
        def initialize(datapoints=nil, requestid=nil)
          @DataPoints = datapoints
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataPoints'].nil?
            @DataPoints = []
            params['DataPoints'].each do |i|
              datapointmetric_tmp = DataPointMetric.new
              datapointmetric_tmp.deserialize(i)
              @DataPoints << datapointmetric_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetResultSummary请求参数结构体
      class GetResultSummaryRequest < TencentCloud::Common::AbstractModel
        # @param TaskIds: 任务Id列表
        # @type TaskIds: Array

        attr_accessor :TaskIds
        
        def initialize(taskids=nil)
          @TaskIds = taskids
        end

        def deserialize(params)
          @TaskIds = params['TaskIds']
        end
      end

      # GetResultSummary返回参数结构体
      class GetResultSummaryResponse < TencentCloud::Common::AbstractModel
        # @param RealData: 实时统计数据
        # @type RealData: Array
        # @param DayData: 按天的统计数据
        # @type DayData: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RealData, :DayData, :RequestId
        
        def initialize(realdata=nil, daydata=nil, requestid=nil)
          @RealData = realdata
          @DayData = daydata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RealData'].nil?
            @RealData = []
            params['RealData'].each do |i|
              resultsummary_tmp = ResultSummary.new
              resultsummary_tmp.deserialize(i)
              @RealData << resultsummary_tmp
            end
          end
          unless params['DayData'].nil?
            @DayData = []
            params['DayData'].each do |i|
              resultsummary_tmp = ResultSummary.new
              resultsummary_tmp.deserialize(i)
              @DayData << resultsummary_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetReturnCodeHistory请求参数结构体
      class GetReturnCodeHistoryRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 正整数。验证成功的拨测任务id
        # @type TaskId: Integer
        # @param BeginTime: 开始时间点。格式如：2017-05-09 10:20:00。注意，BeginTime 和 EndTime 需要在同一天
        # @type BeginTime: String
        # @param EndTime: 结束时间点。格式如：2017-05-09 10:25:00。注意，BeginTime 和 EndTime 需要在同一天
        # @type EndTime: String
        # @param Province: 省份名称的全拼
        # @type Province: String

        attr_accessor :TaskId, :BeginTime, :EndTime, :Province
        
        def initialize(taskid=nil, begintime=nil, endtime=nil, province=nil)
          @TaskId = taskid
          @BeginTime = begintime
          @EndTime = endtime
          @Province = province
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @Province = params['Province']
        end
      end

      # GetReturnCodeHistory返回参数结构体
      class GetReturnCodeHistoryResponse < TencentCloud::Common::AbstractModel
        # @param Details: 拨测失败详情列表
        # @type Details: Array
        # @param Summary: 拨测失败汇总列表
        # @type Summary: Array
        # @param BeginTime: 开始时间
        # @type BeginTime: String
        # @param EndTime: 截至时间
        # @type EndTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Details, :Summary, :BeginTime, :EndTime, :RequestId
        
        def initialize(details=nil, summary=nil, begintime=nil, endtime=nil, requestid=nil)
          @Details = details
          @Summary = summary
          @BeginTime = begintime
          @EndTime = endtime
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              catreturndetail_tmp = CatReturnDetail.new
              catreturndetail_tmp.deserialize(i)
              @Details << catreturndetail_tmp
            end
          end
          unless params['Summary'].nil?
            @Summary = []
            params['Summary'].each do |i|
              catreturnsummary_tmp = CatReturnSummary.new
              catreturnsummary_tmp.deserialize(i)
              @Summary << catreturnsummary_tmp
            end
          end
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @RequestId = params['RequestId']
        end
      end

      # GetReturnCodeInfo请求参数结构体
      class GetReturnCodeInfoRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 正整数。验证成功的拨测任务id
        # @type TaskId: Integer
        # @param BeginTime: 开始时间点。格式如：2017-05-09 10:20:00，最多拉群两天的数据
        # @type BeginTime: String
        # @param EndTime: 结束时间点。格式如：2017-05-09 10:25:00，最多拉群两天的数据
        # @type EndTime: String
        # @param Province: 省份名称的全拼
        # @type Province: String

        attr_accessor :TaskId, :BeginTime, :EndTime, :Province
        
        def initialize(taskid=nil, begintime=nil, endtime=nil, province=nil)
          @TaskId = taskid
          @BeginTime = begintime
          @EndTime = endtime
          @Province = province
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @Province = params['Province']
        end
      end

      # GetReturnCodeInfo返回参数结构体
      class GetReturnCodeInfoResponse < TencentCloud::Common::AbstractModel
        # @param Details: 拨测失败详情列表
        # @type Details: Array
        # @param Summary: 拨测失败汇总列表
        # @type Summary: Array
        # @param BeginTime: 开始时间
        # @type BeginTime: String
        # @param EndTime: 截至时间
        # @type EndTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Details, :Summary, :BeginTime, :EndTime, :RequestId
        
        def initialize(details=nil, summary=nil, begintime=nil, endtime=nil, requestid=nil)
          @Details = details
          @Summary = summary
          @BeginTime = begintime
          @EndTime = endtime
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              catreturndetail_tmp = CatReturnDetail.new
              catreturndetail_tmp.deserialize(i)
              @Details << catreturndetail_tmp
            end
          end
          unless params['Summary'].nil?
            @Summary = []
            params['Summary'].each do |i|
              catreturnsummary_tmp = CatReturnSummary.new
              catreturnsummary_tmp.deserialize(i)
              @Summary << catreturnsummary_tmp
            end
          end
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @RequestId = params['RequestId']
        end
      end

      # GetTaskTotalNumber请求参数结构体
      class GetTaskTotalNumberRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # GetTaskTotalNumber返回参数结构体
      class GetTaskTotalNumberResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 拨测任务总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RequestId
        
        def initialize(totalcount=nil, requestid=nil)
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 运营商可用率
      class IspDetail < TencentCloud::Common::AbstractModel
        # @param IspName: 运营商名称
        # @type IspName: String
        # @param AvailRatio: 可用率
        # @type AvailRatio: Float
        # @param AvgTime: 平均耗时
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AvgTime: Float

        attr_accessor :IspName, :AvailRatio, :AvgTime
        
        def initialize(ispname=nil, availratio=nil, avgtime=nil)
          @IspName = ispname
          @AvailRatio = availratio
          @AvgTime = avgtime
        end

        def deserialize(params)
          @IspName = params['IspName']
          @AvailRatio = params['AvailRatio']
          @AvgTime = params['AvgTime']
        end
      end

      # 健值对
      class KeyValuePair < TencentCloud::Common::AbstractModel
        # @param Key: 健
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

      # 保存string类型字段
      class Label < TencentCloud::Common::AbstractModel
        # @param ID: 自定义字段编号
        # @type ID: Integer
        # @param Name: 自定义字段名称/说明
        # @type Name: String
        # @param Value: 字段值
        # @type Value: String

        attr_accessor :ID, :Name, :Value
        
        def initialize(id=nil, name=nil, value=nil)
          @ID = id
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @ID = params['ID']
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # ModifyAgentGroup请求参数结构体
      class ModifyAgentGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 拨测分组ID
        # @type GroupId: Integer
        # @param GroupName: 拨测分组名称
        # @type GroupName: String
        # @param IsDefault: 是否为默认分组。取值可为0，1。取 1 时表示设置为默认分组
        # @type IsDefault: Integer
        # @param Agents: Province, Isp 需要成对地进行选择。参数对的取值范围。参见：DescribeAgents 的返回结果。
        # @type Agents: Array

        attr_accessor :GroupId, :GroupName, :IsDefault, :Agents
        
        def initialize(groupid=nil, groupname=nil, isdefault=nil, agents=nil)
          @GroupId = groupid
          @GroupName = groupname
          @IsDefault = isdefault
          @Agents = agents
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @IsDefault = params['IsDefault']
          unless params['Agents'].nil?
            @Agents = []
            params['Agents'].each do |i|
              catagent_tmp = CatAgent.new
              catagent_tmp.deserialize(i)
              @Agents << catagent_tmp
            end
          end
        end
      end

      # ModifyAgentGroup返回参数结构体
      class ModifyAgentGroupResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTaskEx请求参数结构体
      class ModifyTaskExRequest < TencentCloud::Common::AbstractModel
        # @param CatTypeName: http, https, ping, tcp, ftp, smtp, udp, dns 之一
        # @type CatTypeName: String
        # @param Url: 拨测的URL，例如：www.qq.com (URL域名解析需要能解析出具体的IP)
        # @type Url: String
        # @param Period: 拨测周期。取值可为1,5,15,30之一, 单位：分钟。精度不能低于用户等级规定的最小精度
        # @type Period: Integer
        # @param TaskName: 拨测任务名称不能超过32个字符。同一个用户创建的任务名不可重复
        # @type TaskName: String
        # @param TaskId: 验证成功的拨测任务ID
        # @type TaskId: Integer
        # @param AgentGroupId: 拨测分组ID，体现本拨测任务要采用哪些运营商作为拨测源。一般可直接填写本用户的默认拨测分组。参见：DescribeAgentGroupList 接口，本参数使用返回结果里的GroupId的值。注意，Type为0时，AgentGroupId为必填
        # @type AgentGroupId: Integer
        # @param Host: 指定域名(如需要)
        # @type Host: String
        # @param Port: 拨测目标的端口号
        # @type Port: Integer
        # @param IsHeader: 是否为Header请求（非0 发起Header 请求。为0，且PostData非空，发起POST请求。为0，PostData为空，发起GET请求）
        # @type IsHeader: Integer
        # @param SslVer: URL中含有"https"时有用。缺省为SSLv23。需要为 TLSv1_2, TLSv1_1, TLSv1, SSLv2, SSLv23, SSLv3 之一
        # @type SslVer: String
        # @param PostData: POST 请求数据，空字符串表示非POST请求
        # @type PostData: String
        # @param UserAgent: 用户Agent信息
        # @type UserAgent: String
        # @param CheckStr: 要在结果中进行匹配的字符串
        # @type CheckStr: String
        # @param CheckType: 1 表示通过检查结果是否包含CheckStr 进行校验
        # @type CheckType: Integer
        # @param Cookie: 需要设置的Cookie信息
        # @type Cookie: String
        # @param UserName: 登录服务器的账号。如果为空字符串，表示不用校验用户密码。只做简单连接服务器的拨测
        # @type UserName: String
        # @param PassWord: 登录服务器的密码
        # @type PassWord: String
        # @param ReqDataType: 缺省为0，0 表示请求为字符串类型, 1表示为二进制类型
        # @type ReqDataType: Integer
        # @param ReqData: 发起TCP, UDP请求的协议请求数据
        # @type ReqData: String
        # @param RespDataType: 缺省为0。0 表示请求为字符串类型。1表示为二进制类型
        # @type RespDataType: String
        # @param RespData: 预期的UDP请求的回应数据。字符串型，只需要返回的结果里包含本字符串算校验通过。二进制型，则需要严格等于才算通过
        # @type RespData: String
        # @param DnsSvr: 目的DNS服务器，可以为空字符串
        # @type DnsSvr: String
        # @param DnsCheckIp: 需要检验是否在DNS IP列表的IP。可以为空字符串，表示不校验
        # @type DnsCheckIp: String
        # @param DnsQueryType: 需要为下列值之一。缺省为A。A, MX, NS, CNAME, TXT, ANY
        # @type DnsQueryType: String
        # @param UseSecConn: 是否使用安全链接SSL， 0 不使用，1 使用
        # @type UseSecConn: Integer
        # @param NeedAuth: FTP登录验证方式，  0 不验证  1 匿名登录  2 需要身份验证
        # @type NeedAuth: Integer
        # @param Type: Type=0 默认 （站点监控） Type=2 可用率监控
        # @type Type: Integer
        # @param RedirectFollowNum: 跟随跳转次数，取值范围0-5，不传则表示不跟随
        # @type RedirectFollowNum: Integer

        attr_accessor :CatTypeName, :Url, :Period, :TaskName, :TaskId, :AgentGroupId, :Host, :Port, :IsHeader, :SslVer, :PostData, :UserAgent, :CheckStr, :CheckType, :Cookie, :UserName, :PassWord, :ReqDataType, :ReqData, :RespDataType, :RespData, :DnsSvr, :DnsCheckIp, :DnsQueryType, :UseSecConn, :NeedAuth, :Type, :RedirectFollowNum
        
        def initialize(cattypename=nil, url=nil, period=nil, taskname=nil, taskid=nil, agentgroupid=nil, host=nil, port=nil, isheader=nil, sslver=nil, postdata=nil, useragent=nil, checkstr=nil, checktype=nil, cookie=nil, username=nil, password=nil, reqdatatype=nil, reqdata=nil, respdatatype=nil, respdata=nil, dnssvr=nil, dnscheckip=nil, dnsquerytype=nil, usesecconn=nil, needauth=nil, type=nil, redirectfollownum=nil)
          @CatTypeName = cattypename
          @Url = url
          @Period = period
          @TaskName = taskname
          @TaskId = taskid
          @AgentGroupId = agentgroupid
          @Host = host
          @Port = port
          @IsHeader = isheader
          @SslVer = sslver
          @PostData = postdata
          @UserAgent = useragent
          @CheckStr = checkstr
          @CheckType = checktype
          @Cookie = cookie
          @UserName = username
          @PassWord = password
          @ReqDataType = reqdatatype
          @ReqData = reqdata
          @RespDataType = respdatatype
          @RespData = respdata
          @DnsSvr = dnssvr
          @DnsCheckIp = dnscheckip
          @DnsQueryType = dnsquerytype
          @UseSecConn = usesecconn
          @NeedAuth = needauth
          @Type = type
          @RedirectFollowNum = redirectfollownum
        end

        def deserialize(params)
          @CatTypeName = params['CatTypeName']
          @Url = params['Url']
          @Period = params['Period']
          @TaskName = params['TaskName']
          @TaskId = params['TaskId']
          @AgentGroupId = params['AgentGroupId']
          @Host = params['Host']
          @Port = params['Port']
          @IsHeader = params['IsHeader']
          @SslVer = params['SslVer']
          @PostData = params['PostData']
          @UserAgent = params['UserAgent']
          @CheckStr = params['CheckStr']
          @CheckType = params['CheckType']
          @Cookie = params['Cookie']
          @UserName = params['UserName']
          @PassWord = params['PassWord']
          @ReqDataType = params['ReqDataType']
          @ReqData = params['ReqData']
          @RespDataType = params['RespDataType']
          @RespData = params['RespData']
          @DnsSvr = params['DnsSvr']
          @DnsCheckIp = params['DnsCheckIp']
          @DnsQueryType = params['DnsQueryType']
          @UseSecConn = params['UseSecConn']
          @NeedAuth = params['NeedAuth']
          @Type = params['Type']
          @RedirectFollowNum = params['RedirectFollowNum']
        end
      end

      # ModifyTaskEx返回参数结构体
      class ModifyTaskExResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 拨测任务ID。验证通过后，创建任务时使用，传递给CreateTask 接口。
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

      # 探测节点
      class NodeDefine < TencentCloud::Common::AbstractModel
        # @param Name: 节点名称
        # @type Name: String
        # @param Code: 节点代码
        # @type Code: String
        # @param Type: 节点类型
        # <li> 1 = IDC </li>
        # <li> 2 = LastMile </li>
        # <li> 3 = Mobile </li>
        # @type Type: Integer
        # @param NetService: 网络服务商
        # @type NetService: String
        # @param District: 区域
        # @type District: String
        # @param City: 城市
        # @type City: String
        # @param IPType: IP 类型
        # <li> 1 = IPv4 </li>
        # <li> 2 = IPv6 </li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IPType: Integer
        # @param Location: 区域
        # <li> 1 = 中国大陆 </li>
        # <li> 2 = 港澳台 </li>
        # <li> 3 = 国外 </li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Location: Integer

        attr_accessor :Name, :Code, :Type, :NetService, :District, :City, :IPType, :Location
        
        def initialize(name=nil, code=nil, type=nil, netservice=nil, district=nil, city=nil, iptype=nil, location=nil)
          @Name = name
          @Code = code
          @Type = type
          @NetService = netservice
          @District = district
          @City = city
          @IPType = iptype
          @Location = location
        end

        def deserialize(params)
          @Name = params['Name']
          @Code = params['Code']
          @Type = params['Type']
          @NetService = params['NetService']
          @District = params['District']
          @City = params['City']
          @IPType = params['IPType']
          @Location = params['Location']
        end
      end

      # PauseTask请求参数结构体
      class PauseTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 拨测任务id
        # @type TaskId: Integer

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # PauseTask返回参数结构体
      class PauseTaskResponse < TencentCloud::Common::AbstractModel
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

      # 拨测任务
      class ProbeTask < TencentCloud::Common::AbstractModel
        # @param Name: 任务名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param TaskId: 任务 ID
        # @type TaskId: String
        # @param TaskType: 任务类型
        # @type TaskType: Integer
        # @param Nodes: 拨测节点列表
        # @type Nodes: Array
        # @param Interval: 拨测间隔
        # @type Interval: Integer
        # @param Parameters: 拨测参数
        # @type Parameters: String
        # @param Status: 任务状态
        # @type Status: Integer
        # @param TargetAddress: 目标地址
        # @type TargetAddress: String
        # @param PayMode: 付费模式
        # <li>1 = 试用版本</li>
        # <li> 2 = 付费版本 </li>
        # @type PayMode: Integer
        # @param OrderState: 订单状态
        # <li>1 = 正常</li>
        # <li> 2 = 欠费 </li>
        # @type OrderState: Integer
        # @param TaskCategory: 任务分类
        # <li>1 = PC</li>
        # <li> 2 = Mobile </li>
        # @type TaskCategory: Integer
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param Cron: 定时任务cron表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cron: String
        # @param CronState: 定时任务启动状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CronState: Integer
        # @param TagInfoList: 任务当前绑定的标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagInfoList: Array

        attr_accessor :Name, :TaskId, :TaskType, :Nodes, :Interval, :Parameters, :Status, :TargetAddress, :PayMode, :OrderState, :TaskCategory, :CreatedAt, :Cron, :CronState, :TagInfoList
        
        def initialize(name=nil, taskid=nil, tasktype=nil, nodes=nil, interval=nil, parameters=nil, status=nil, targetaddress=nil, paymode=nil, orderstate=nil, taskcategory=nil, createdat=nil, cron=nil, cronstate=nil, taginfolist=nil)
          @Name = name
          @TaskId = taskid
          @TaskType = tasktype
          @Nodes = nodes
          @Interval = interval
          @Parameters = parameters
          @Status = status
          @TargetAddress = targetaddress
          @PayMode = paymode
          @OrderState = orderstate
          @TaskCategory = taskcategory
          @CreatedAt = createdat
          @Cron = cron
          @CronState = cronstate
          @TagInfoList = taginfolist
        end

        def deserialize(params)
          @Name = params['Name']
          @TaskId = params['TaskId']
          @TaskType = params['TaskType']
          @Nodes = params['Nodes']
          @Interval = params['Interval']
          @Parameters = params['Parameters']
          @Status = params['Status']
          @TargetAddress = params['TargetAddress']
          @PayMode = params['PayMode']
          @OrderState = params['OrderState']
          @TaskCategory = params['TaskCategory']
          @CreatedAt = params['CreatedAt']
          @Cron = params['Cron']
          @CronState = params['CronState']
          unless params['TagInfoList'].nil?
            @TagInfoList = []
            params['TagInfoList'].each do |i|
              keyvaluepair_tmp = KeyValuePair.new
              keyvaluepair_tmp.deserialize(i)
              @TagInfoList << keyvaluepair_tmp
            end
          end
        end
      end

      # type ProbeTaskBasicConfiguration struct {
      # 	TaskID        TaskID `json:"TaskId" gorm:"column:task_id"`
      # 	Name          string `json:"Name" binding:"required" gorm:"column:name"`
      # 	TargetAddress string `json:"TargetAddress" binding:"required" gorm:"column:target_address"`
      # }
      class ProbeTaskBasicConfiguration < TencentCloud::Common::AbstractModel
        # @param Name: 拨测任务名称
        # @type Name: String
        # @param TargetAddress: 拨测目标地址
        # @type TargetAddress: String

        attr_accessor :Name, :TargetAddress
        
        def initialize(name=nil, targetaddress=nil)
          @Name = name
          @TargetAddress = targetaddress
        end

        def deserialize(params)
          @Name = params['Name']
          @TargetAddress = params['TargetAddress']
        end
      end

      # 省份可用率
      class ProvinceDetail < TencentCloud::Common::AbstractModel
        # @param AvgAvailRatio: 可用率
        # @type AvgAvailRatio: Float
        # @param ProvinceName: 省份名称
        # @type ProvinceName: String
        # @param Mapkey: 省份英文名称
        # @type Mapkey: String
        # @param TimeStamp: 统计时间点
        # @type TimeStamp: String
        # @param IspDetail: 分运营商可用率
        # @type IspDetail: Array
        # @param AvgTime: 平均耗时，单位毫秒
        # @type AvgTime: Float
        # @param Province: 省份
        # @type Province: String

        attr_accessor :AvgAvailRatio, :ProvinceName, :Mapkey, :TimeStamp, :IspDetail, :AvgTime, :Province
        
        def initialize(avgavailratio=nil, provincename=nil, mapkey=nil, timestamp=nil, ispdetail=nil, avgtime=nil, province=nil)
          @AvgAvailRatio = avgavailratio
          @ProvinceName = provincename
          @Mapkey = mapkey
          @TimeStamp = timestamp
          @IspDetail = ispdetail
          @AvgTime = avgtime
          @Province = province
        end

        def deserialize(params)
          @AvgAvailRatio = params['AvgAvailRatio']
          @ProvinceName = params['ProvinceName']
          @Mapkey = params['Mapkey']
          @TimeStamp = params['TimeStamp']
          unless params['IspDetail'].nil?
            @IspDetail = []
            params['IspDetail'].each do |i|
              ispdetail_tmp = IspDetail.new
              ispdetail_tmp.deserialize(i)
              @IspDetail << ispdetail_tmp
            end
          end
          @AvgTime = params['AvgTime']
          @Province = params['Province']
        end
      end

      # 实时统计数据
      class ResultSummary < TencentCloud::Common::AbstractModel
        # @param LogTime: 统计时间
        # @type LogTime: String
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param AvailRatio: 实时可用率
        # @type AvailRatio: Float
        # @param ReponseTime: 实时响应时间
        # @type ReponseTime: Float

        attr_accessor :LogTime, :TaskId, :AvailRatio, :ReponseTime
        
        def initialize(logtime=nil, taskid=nil, availratio=nil, reponsetime=nil)
          @LogTime = logtime
          @TaskId = taskid
          @AvailRatio = availratio
          @ReponseTime = reponsetime
        end

        def deserialize(params)
          @LogTime = params['LogTime']
          @TaskId = params['TaskId']
          @AvailRatio = params['AvailRatio']
          @ReponseTime = params['ReponseTime']
        end
      end

      # ResumeProbeTask请求参数结构体
      class ResumeProbeTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskIds: 任务 ID
        # @type TaskIds: Array

        attr_accessor :TaskIds
        
        def initialize(taskids=nil)
          @TaskIds = taskids
        end

        def deserialize(params)
          @TaskIds = params['TaskIds']
        end
      end

      # ResumeProbeTask返回参数结构体
      class ResumeProbeTaskResponse < TencentCloud::Common::AbstractModel
        # @param Total: 任务总量
        # @type Total: Integer
        # @param SuccessCount: 任务成功量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessCount: Integer
        # @param Results: 任务执行详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :SuccessCount, :Results, :RequestId
        
        def initialize(total=nil, successcount=nil, results=nil, requestid=nil)
          @Total = total
          @SuccessCount = successcount
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          @SuccessCount = params['SuccessCount']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              taskresult_tmp = TaskResult.new
              taskresult_tmp.deserialize(i)
              @Results << taskresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # RunTask请求参数结构体
      class RunTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id
        # @type TaskId: Integer

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # RunTask返回参数结构体
      class RunTaskResponse < TencentCloud::Common::AbstractModel
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

      # SuspendProbeTask请求参数结构体
      class SuspendProbeTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskIds: 任务 ID
        # @type TaskIds: Array

        attr_accessor :TaskIds
        
        def initialize(taskids=nil)
          @TaskIds = taskids
        end

        def deserialize(params)
          @TaskIds = params['TaskIds']
        end
      end

      # SuspendProbeTask返回参数结构体
      class SuspendProbeTaskResponse < TencentCloud::Common::AbstractModel
        # @param Total: 任务总量
        # @type Total: Integer
        # @param SuccessCount: 任务成功量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessCount: Integer
        # @param Results: 任务执行结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :SuccessCount, :Results, :RequestId
        
        def initialize(total=nil, successcount=nil, results=nil, requestid=nil)
          @Total = total
          @SuccessCount = successcount
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          @SuccessCount = params['SuccessCount']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              taskresult_tmp = TaskResult.new
              taskresult_tmp.deserialize(i)
              @Results << taskresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 资源的标签，通过标签对资源进行划分用于支持细粒度的鉴权、分账等场景
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: key
        # @type TagKey: String
        # @param TagValue: value
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

      # 可用性监控任务状态及告警信息
      class TaskAlarm < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param Period: 任务周期，单位为分钟。目前支持1，5，15，30几种取值
        # @type Period: Integer
        # @param CatTypeName: 拨测类型。http, https, ping, tcp, udp, smtp, pop3, dns 之一
        # @type CatTypeName: String
        # @param Status: 任务状态。1表示暂停，2表示运行中，0为初始态
        # @type Status: Integer
        # @param CgiUrl: 拨测任务的URL
        # @type CgiUrl: String
        # @param AddTime: 任务创建时间
        # @type AddTime: String
        # @param AlarmStatus: 告警状态。1 故障，0 正常
        # @type AlarmStatus: Integer
        # @param StatusInfo: 告警状态描述，统计信息
        # @type StatusInfo: String
        # @param UpdateTime: 任务更新时间
        # @type UpdateTime: String

        attr_accessor :TaskId, :TaskName, :Period, :CatTypeName, :Status, :CgiUrl, :AddTime, :AlarmStatus, :StatusInfo, :UpdateTime
        
        def initialize(taskid=nil, taskname=nil, period=nil, cattypename=nil, status=nil, cgiurl=nil, addtime=nil, alarmstatus=nil, statusinfo=nil, updatetime=nil)
          @TaskId = taskid
          @TaskName = taskname
          @Period = period
          @CatTypeName = cattypename
          @Status = status
          @CgiUrl = cgiurl
          @AddTime = addtime
          @AlarmStatus = alarmstatus
          @StatusInfo = statusinfo
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @Period = params['Period']
          @CatTypeName = params['CatTypeName']
          @Status = params['Status']
          @CgiUrl = params['CgiUrl']
          @AddTime = params['AddTime']
          @AlarmStatus = params['AlarmStatus']
          @StatusInfo = params['StatusInfo']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 任务执行结果
      class TaskResult < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID
        # @type TaskId: String
        # @param Success: 是否成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Success: Boolean
        # @param ErrorMessage: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String

        attr_accessor :TaskId, :Success, :ErrorMessage
        
        def initialize(taskid=nil, success=nil, errormessage=nil)
          @TaskId = taskid
          @Success = success
          @ErrorMessage = errormessage
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Success = params['Success']
          @ErrorMessage = params['ErrorMessage']
        end
      end

      # UpdateProbeTaskConfigurationList请求参数结构体
      class UpdateProbeTaskConfigurationListRequest < TencentCloud::Common::AbstractModel
        # @param TaskIds: 任务 ID
        # @type TaskIds: Array
        # @param Nodes: 拨测节点
        # @type Nodes: Array
        # @param Interval: 拨测间隔
        # @type Interval: Integer
        # @param Parameters: 拨测参数
        # @type Parameters: String
        # @param Cron: 定时任务cron表达式
        # @type Cron: String

        attr_accessor :TaskIds, :Nodes, :Interval, :Parameters, :Cron
        
        def initialize(taskids=nil, nodes=nil, interval=nil, parameters=nil, cron=nil)
          @TaskIds = taskids
          @Nodes = nodes
          @Interval = interval
          @Parameters = parameters
          @Cron = cron
        end

        def deserialize(params)
          @TaskIds = params['TaskIds']
          @Nodes = params['Nodes']
          @Interval = params['Interval']
          @Parameters = params['Parameters']
          @Cron = params['Cron']
        end
      end

      # UpdateProbeTaskConfigurationList返回参数结构体
      class UpdateProbeTaskConfigurationListResponse < TencentCloud::Common::AbstractModel
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

      # VerifyResult请求参数结构体
      class VerifyResultRequest < TencentCloud::Common::AbstractModel
        # @param ResultId: 要查询的拨测任务的结果id
        # @type ResultId: Integer

        attr_accessor :ResultId
        
        def initialize(resultid=nil)
          @ResultId = resultid
        end

        def deserialize(params)
          @ResultId = params['ResultId']
        end
      end

      # VerifyResult返回参数结构体
      class VerifyResultResponse < TencentCloud::Common::AbstractModel
        # @param ErrorReason: 错误的原因
        # @type ErrorReason: String
        # @param ResultCode: 错误号
        # @type ResultCode: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorReason, :ResultCode, :RequestId
        
        def initialize(errorreason=nil, resultcode=nil, requestid=nil)
          @ErrorReason = errorreason
          @ResultCode = resultcode
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorReason = params['ErrorReason']
          @ResultCode = params['ResultCode']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

