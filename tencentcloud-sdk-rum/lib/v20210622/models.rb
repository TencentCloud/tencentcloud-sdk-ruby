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
  module Rum
    module V20210622
      # 单应用总览评分
      class AppOverviewScore < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param Platform: <p>端</p>
        # @type Platform: String
        # @param TotalScore: <p>加权总分，全部缺失时省略</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalScore: Float
        # @param Items: <p>计分项</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array

        attr_accessor :AppId, :Platform, :TotalScore, :Items

        def initialize(appid=nil, platform=nil, totalscore=nil, items=nil)
          @AppId = appid
          @Platform = platform
          @TotalScore = totalscore
          @Items = items
        end

        def deserialize(params)
          @AppId = params['AppId']
          @Platform = params['Platform']
          @TotalScore = params['TotalScore']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              overviewscoreitem_tmp = OverviewScoreItem.new
              overviewscoreitem_tmp.deserialize(i)
              @Items << overviewscoreitem_tmp
            end
          end
        end
      end

      # 应用
      class ApplicationItem < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param ProjectKey: <p>应用 Key</p>
        # @type ProjectKey: String
        # @param InstanceId: <p>业务系统 ID</p>
        # @type InstanceId: String
        # @param InstanceName: <p>业务系统名称</p>
        # @type InstanceName: String
        # @param Name: <p>应用名称</p>
        # @type Name: String
        # @param Type: <p>端类型</p>
        # @type Type: String
        # @param Desc: <p>描述</p>
        # @type Desc: String
        # @param ExcludeIgnoredErrors: <p>是否排除已忽略错误</p>
        # @type ExcludeIgnoredErrors: Boolean
        # @param Status: <p>状态：2 运行 / 6 停止 / 7 删除</p>
        # @type Status: Integer
        # @param CreatedAt: <p>创建时间</p>
        # @type CreatedAt: String
        # @param ApmInstanceIds: <p>该应用绑定的腾讯云 APM 实例 ID 列表。空数组表示未绑定。</p>
        # @type ApmInstanceIds: Array

        attr_accessor :AppId, :ProjectKey, :InstanceId, :InstanceName, :Name, :Type, :Desc, :ExcludeIgnoredErrors, :Status, :CreatedAt, :ApmInstanceIds

        def initialize(appid=nil, projectkey=nil, instanceid=nil, instancename=nil, name=nil, type=nil, desc=nil, excludeignorederrors=nil, status=nil, createdat=nil, apminstanceids=nil)
          @AppId = appid
          @ProjectKey = projectkey
          @InstanceId = instanceid
          @InstanceName = instancename
          @Name = name
          @Type = type
          @Desc = desc
          @ExcludeIgnoredErrors = excludeignorederrors
          @Status = status
          @CreatedAt = createdat
          @ApmInstanceIds = apminstanceids
        end

        def deserialize(params)
          @AppId = params['AppId']
          @ProjectKey = params['ProjectKey']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Name = params['Name']
          @Type = params['Type']
          @Desc = params['Desc']
          @ExcludeIgnoredErrors = params['ExcludeIgnoredErrors']
          @Status = params['Status']
          @CreatedAt = params['CreatedAt']
          @ApmInstanceIds = params['ApmInstanceIds']
        end
      end

      # 业务系统
      class BusinessSystemItem < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>业务系统 ID</p>
        # @type InstanceId: String
        # @param InstanceName: <p>名称</p>
        # @type InstanceName: String
        # @param InstanceDesc: <p>描述</p>
        # @type InstanceDesc: String
        # @param Status: <p>状态：2 运行 / 6 停止 / 7 删除</p>
        # @type Status: Integer
        # @param ChargeStatus: <p>状态： 2（隔离），1（使用中），3（已销毁）</p>
        # @type ChargeStatus: Integer
        # @param CreatedAt: <p>创建时间</p>
        # @type CreatedAt: String
        # @param UpdatedAt: <p>更新时间</p>
        # @type UpdatedAt: String

        attr_accessor :InstanceId, :InstanceName, :InstanceDesc, :Status, :ChargeStatus, :CreatedAt, :UpdatedAt

        def initialize(instanceid=nil, instancename=nil, instancedesc=nil, status=nil, chargestatus=nil, createdat=nil, updatedat=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @InstanceDesc = instancedesc
          @Status = status
          @ChargeStatus = chargestatus
          @CreatedAt = createdat
          @UpdatedAt = updatedat
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @InstanceDesc = params['InstanceDesc']
          @Status = params['Status']
          @ChargeStatus = params['ChargeStatus']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
        end
      end

      # BugLY比较结构体
      class CompareCondition < TencentCloud::Common::AbstractModel
        # @param AppVersion: App版本
        # @type AppVersion: String
        # @param Filters: 筛选条件
        # @type Filters: :class:`Tencentcloud::Rum.v20210622.models.Filters`
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer

        attr_accessor :AppVersion, :Filters, :StartTime, :EndTime

        def initialize(appversion=nil, filters=nil, starttime=nil, endtime=nil)
          @AppVersion = appversion
          @Filters = filters
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @AppVersion = params['AppVersion']
          unless params['Filters'].nil?
            @Filters = Filters.new
            @Filters.deserialize(params['Filters'])
          end
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # CreateFieldTransformRule请求参数结构体
      class CreateFieldTransformRuleRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: <p>项目id</p>
        # @type ProjectId: Integer
        # @param TargetField: <p>目标字段</p>
        # @type TargetField: String
        # @param MatchType: <p>匹配方式</p>
        # @type MatchType: String
        # @param MatchPattern: <p>匹配规则</p>
        # @type MatchPattern: String
        # @param TransformAction: <p>转换类型</p>
        # @type TransformAction: String
        # @param Name: <p>规则名</p>
        # @type Name: String
        # @param ReplaceValue: <p>替换值</p>
        # @type ReplaceValue: String
        # @param Priority: <p>优先级</p>
        # @type Priority: Integer
        # @param Enabled: <p>是否开启</p>
        # @type Enabled: Boolean

        attr_accessor :ProjectId, :TargetField, :MatchType, :MatchPattern, :TransformAction, :Name, :ReplaceValue, :Priority, :Enabled

        def initialize(projectid=nil, targetfield=nil, matchtype=nil, matchpattern=nil, transformaction=nil, name=nil, replacevalue=nil, priority=nil, enabled=nil)
          @ProjectId = projectid
          @TargetField = targetfield
          @MatchType = matchtype
          @MatchPattern = matchpattern
          @TransformAction = transformaction
          @Name = name
          @ReplaceValue = replacevalue
          @Priority = priority
          @Enabled = enabled
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @TargetField = params['TargetField']
          @MatchType = params['MatchType']
          @MatchPattern = params['MatchPattern']
          @TransformAction = params['TransformAction']
          @Name = params['Name']
          @ReplaceValue = params['ReplaceValue']
          @Priority = params['Priority']
          @Enabled = params['Enabled']
        end
      end

      # CreateFieldTransformRule返回参数结构体
      class CreateFieldTransformRuleResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>结果</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误消息</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # CreateReleaseFile请求参数结构体
      class CreateReleaseFileRequest < TencentCloud::Common::AbstractModel
        # @param ProjectID: 项目 id
        # @type ProjectID: Integer
        # @param Files: 文件信息列表
        # @type Files: Array

        attr_accessor :ProjectID, :Files

        def initialize(projectid=nil, files=nil)
          @ProjectID = projectid
          @Files = files
        end

        def deserialize(params)
          @ProjectID = params['ProjectID']
          unless params['Files'].nil?
            @Files = []
            params['Files'].each do |i|
              releasefile_tmp = ReleaseFile.new
              releasefile_tmp.deserialize(i)
              @Files << releasefile_tmp
            end
          end
        end
      end

      # CreateReleaseFile返回参数结构体
      class CreateReleaseFileResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 调用结果
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :RequestId

        def initialize(msg=nil, requestid=nil)
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # CreateStarProject请求参数结构体
      class CreateStarProjectRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 实例ID：taw-123
        # @type InstanceID: String
        # @param ID: 项目ID
        # @type ID: Integer

        attr_accessor :InstanceID, :ID

        def initialize(instanceid=nil, id=nil)
          @InstanceID = instanceid
          @ID = id
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @ID = params['ID']
        end
      end

      # CreateStarProject返回参数结构体
      class CreateStarProjectResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 接口返回信息
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :RequestId

        def initialize(msg=nil, requestid=nil)
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # CreateTDEMApplication请求参数结构体
      class CreateTDEMApplicationRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>业务系统 ID（必填）</p>
        # @type InstanceId: String
        # @param Name: <p>应用名称（必填）</p>
        # @type Name: String
        # @param Type: <p>应用类型。取值：web、wx-miniprogram、uniapp、ios、android、electron、rn（React Native）。</p>
        # @type Type: String
        # @param Desc: <p>应用描述（可选）</p>
        # @type Desc: String
        # @param ApmInstanceIds: <p>APM 实例 ID</p>
        # @type ApmInstanceIds: Array

        attr_accessor :InstanceId, :Name, :Type, :Desc, :ApmInstanceIds

        def initialize(instanceid=nil, name=nil, type=nil, desc=nil, apminstanceids=nil)
          @InstanceId = instanceid
          @Name = name
          @Type = type
          @Desc = desc
          @ApmInstanceIds = apminstanceids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @Type = params['Type']
          @Desc = params['Desc']
          @ApmInstanceIds = params['ApmInstanceIds']
        end
      end

      # CreateTDEMApplication返回参数结构体
      class CreateTDEMApplicationResponse < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param ProjectKey: <p>应用 Key</p>
        # @type ProjectKey: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppId, :ProjectKey, :RequestId

        def initialize(appid=nil, projectkey=nil, requestid=nil)
          @AppId = appid
          @ProjectKey = projectkey
          @RequestId = requestid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @ProjectKey = params['ProjectKey']
          @RequestId = params['RequestId']
        end
      end

      # CreateTDEMBusinessSystem请求参数结构体
      class CreateTDEMBusinessSystemRequest < TencentCloud::Common::AbstractModel
        # @param InstanceName: <p>业务系统名称（必填）</p>
        # @type InstanceName: String
        # @param InstanceDesc: <p>业务系统描述（可选）</p>
        # @type InstanceDesc: String
        # @param Tags: <p>标签列表</p>
        # @type Tags: Array

        attr_accessor :InstanceName, :InstanceDesc, :Tags

        def initialize(instancename=nil, instancedesc=nil, tags=nil)
          @InstanceName = instancename
          @InstanceDesc = instancedesc
          @Tags = tags
        end

        def deserialize(params)
          @InstanceName = params['InstanceName']
          @InstanceDesc = params['InstanceDesc']
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

      # CreateTDEMBusinessSystem返回参数结构体
      class CreateTDEMBusinessSystemResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>业务系统 ID</p>
        # @type InstanceId: String
        # @param Status: <p>业务系统状态</p><p>状态：2 运行 / 6 停止 / 7 删除</p>
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :Status, :RequestId

        def initialize(instanceid=nil, status=nil, requestid=nil)
          @InstanceId = instanceid
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # CreateTDEMDialTask请求参数结构体
      class CreateTDEMDialTaskRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param TaskName: <p>任务名称，最长 128 个字符</p>
        # @type TaskName: String
        # @param Type: <p>探测类型。取值说明：icmp、tcp。</p>
        # @type Type: String
        # @param ExecutionTime: <p>执行时机。取值说明：realtime、after_request、after_error、after_slow、after_dns_slow。tcp 不能使用 after_dns_slow。</p>
        # @type ExecutionTime: String
        # @param TimeoutMs: <p>单次探测超时，单位毫秒。范围 1000 到 20000。</p>
        # @type TimeoutMs: Integer
        # @param PeriodMs: <p>探测周期，单位毫秒，必须大于 0。</p>
        # @type PeriodMs: Integer
        # @param PackageCount: <p>发包次数。范围 3 到 40。</p>
        # @type PackageCount: Integer
        # @param Status: <p>任务状态。取值说明：active、paused。不传时默认为 active。</p>
        # @type Status: String
        # @param WatchDomain: <p>监听域名。ExecutionTime 不是 realtime 时必填。</p>
        # @type WatchDomain: String
        # @param DialDomain: <p>拨测目标。域名、IP 或 ldns。after_dns_slow 固定为 ldns，其它时机必填。</p>
        # @type DialDomain: String
        # @param Port: <p>TCP 端口，1 到 65535。Type 为 tcp 时必填。</p>
        # @type Port: Integer
        # @param FrequencyMs: <p>实时拨测间隔，单位毫秒。ExecutionTime 为 realtime 时必填。取值说明：60000、300000、600000、900000、1800000、3600000。</p>
        # @type FrequencyMs: Integer
        # @param PackageSize: <p>ICMP 包大小，单位字节。范围 32 到 1024。不传时默认 64。</p>
        # @type PackageSize: Integer
        # @param NeedMTR: <p>是否做路由追踪。取值说明：0 否，1 是。不传时为 0。</p>
        # @type NeedMTR: Integer
        # @param MTRTimeoutMs: <p>路由追踪超时，单位毫秒。NeedMTR 为 1 时必填。</p>
        # @type MTRTimeoutMs: Integer
        # @param MTRMaxHop: <p>路由追踪最大跳数。NeedMTR 为 1 时填写。</p>
        # @type MTRMaxHop: Integer
        # @param MTRPingCount: <p>每一跳发包次数。范围 3 到 40。</p>
        # @type MTRPingCount: Integer
        # @param SlowThresholdMs: <p>慢请求阈值，单位毫秒。after_slow、after_dns_slow 不传时默认 2000。</p>
        # @type SlowThresholdMs: Integer
        # @param ErrorType: <p>错误类型过滤。after_error 时使用。</p>
        # @type ErrorType: String
        # @param Regions: <p>允许启动的客户端地区，逗号分隔，名称必须与分析页客户端地区完全一致。不传或空字符串表示不限制。</p>
        # @type Regions: String
        # @param Operators: <p>允许启动的客户端运营商，逗号分隔，名称必须与分析页客户端运营商完全一致。不传或空字符串表示不限制。</p>
        # @type Operators: String
        # @param UserIds: <p>允许启动的用户 ID，逗号分隔。不传或空字符串表示不限制。</p>
        # @type UserIds: String
        # @param DeviceIds: <p>允许启动的设备 ID，逗号分隔。不传或空字符串表示不限制。</p>
        # @type DeviceIds: String

        attr_accessor :AppId, :TaskName, :Type, :ExecutionTime, :TimeoutMs, :PeriodMs, :PackageCount, :Status, :WatchDomain, :DialDomain, :Port, :FrequencyMs, :PackageSize, :NeedMTR, :MTRTimeoutMs, :MTRMaxHop, :MTRPingCount, :SlowThresholdMs, :ErrorType, :Regions, :Operators, :UserIds, :DeviceIds

        def initialize(appid=nil, taskname=nil, type=nil, executiontime=nil, timeoutms=nil, periodms=nil, packagecount=nil, status=nil, watchdomain=nil, dialdomain=nil, port=nil, frequencyms=nil, packagesize=nil, needmtr=nil, mtrtimeoutms=nil, mtrmaxhop=nil, mtrpingcount=nil, slowthresholdms=nil, errortype=nil, regions=nil, operators=nil, userids=nil, deviceids=nil)
          @AppId = appid
          @TaskName = taskname
          @Type = type
          @ExecutionTime = executiontime
          @TimeoutMs = timeoutms
          @PeriodMs = periodms
          @PackageCount = packagecount
          @Status = status
          @WatchDomain = watchdomain
          @DialDomain = dialdomain
          @Port = port
          @FrequencyMs = frequencyms
          @PackageSize = packagesize
          @NeedMTR = needmtr
          @MTRTimeoutMs = mtrtimeoutms
          @MTRMaxHop = mtrmaxhop
          @MTRPingCount = mtrpingcount
          @SlowThresholdMs = slowthresholdms
          @ErrorType = errortype
          @Regions = regions
          @Operators = operators
          @UserIds = userids
          @DeviceIds = deviceids
        end

        def deserialize(params)
          @AppId = params['AppId']
          @TaskName = params['TaskName']
          @Type = params['Type']
          @ExecutionTime = params['ExecutionTime']
          @TimeoutMs = params['TimeoutMs']
          @PeriodMs = params['PeriodMs']
          @PackageCount = params['PackageCount']
          @Status = params['Status']
          @WatchDomain = params['WatchDomain']
          @DialDomain = params['DialDomain']
          @Port = params['Port']
          @FrequencyMs = params['FrequencyMs']
          @PackageSize = params['PackageSize']
          @NeedMTR = params['NeedMTR']
          @MTRTimeoutMs = params['MTRTimeoutMs']
          @MTRMaxHop = params['MTRMaxHop']
          @MTRPingCount = params['MTRPingCount']
          @SlowThresholdMs = params['SlowThresholdMs']
          @ErrorType = params['ErrorType']
          @Regions = params['Regions']
          @Operators = params['Operators']
          @UserIds = params['UserIds']
          @DeviceIds = params['DeviceIds']
        end
      end

      # CreateTDEMDialTask返回参数结构体
      class CreateTDEMDialTaskResponse < TencentCloud::Common::AbstractModel
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

      # CreateTDEMFieldTransformRule请求参数结构体
      class CreateTDEMFieldTransformRuleRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID（必填）</p>
        # @type AppId: String
        # @param TargetField: <p>目标字段（必填）：page_url / normalized_page_url / page_title / referrer / resource_url / user_id / target_element / target_text</p>
        # @type TargetField: String
        # @param MatchType: <p>匹配方式（必填）：exact / prefix / contains / regex</p>
        # @type MatchType: String
        # @param MatchPattern: <p>匹配模式（必填）</p>
        # @type MatchPattern: String
        # @param TransformAction: <p>替换动作（必填）：replace / regex_replace / mask</p>
        # @type TransformAction: String
        # @param Name: <p>规则名称（可选）</p>
        # @type Name: String
        # @param ReplaceValue: <p>替换值（replace / regex_replace 使用）</p>
        # @type ReplaceValue: String
        # @param Priority: <p>优先级（可选）</p>
        # @type Priority: Integer
        # @param Enabled: <p>是否启用，默认 true</p>
        # @type Enabled: Boolean

        attr_accessor :AppId, :TargetField, :MatchType, :MatchPattern, :TransformAction, :Name, :ReplaceValue, :Priority, :Enabled

        def initialize(appid=nil, targetfield=nil, matchtype=nil, matchpattern=nil, transformaction=nil, name=nil, replacevalue=nil, priority=nil, enabled=nil)
          @AppId = appid
          @TargetField = targetfield
          @MatchType = matchtype
          @MatchPattern = matchpattern
          @TransformAction = transformaction
          @Name = name
          @ReplaceValue = replacevalue
          @Priority = priority
          @Enabled = enabled
        end

        def deserialize(params)
          @AppId = params['AppId']
          @TargetField = params['TargetField']
          @MatchType = params['MatchType']
          @MatchPattern = params['MatchPattern']
          @TransformAction = params['TransformAction']
          @Name = params['Name']
          @ReplaceValue = params['ReplaceValue']
          @Priority = params['Priority']
          @Enabled = params['Enabled']
        end
      end

      # CreateTDEMFieldTransformRule返回参数结构体
      class CreateTDEMFieldTransformRuleResponse < TencentCloud::Common::AbstractModel
        # @param Rule: <p>创建后的规则</p>
        # @type Rule: :class:`Tencentcloud::Rum.v20210622.models.FieldTransformRuleItem`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rule, :RequestId

        def initialize(rule=nil, requestid=nil)
          @Rule = rule
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Rule'].nil?
            @Rule = FieldTransformRuleItem.new
            @Rule.deserialize(params['Rule'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateTDEMFunnel请求参数结构体
      class CreateTDEMFunnelRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用id</p>
        # @type AppId: String
        # @param FunnelName: <p>漏斗名</p>
        # @type FunnelName: String
        # @param Steps: <p>漏斗步骤</p>
        # @type Steps: Array
        # @param Description: <p>描述</p>
        # @type Description: String
        # @param Status: <p>漏斗状态</p>
        # @type Status: String
        # @param Source: <p>漏斗来源</p>
        # @type Source: String

        attr_accessor :AppId, :FunnelName, :Steps, :Description, :Status, :Source

        def initialize(appid=nil, funnelname=nil, steps=nil, description=nil, status=nil, source=nil)
          @AppId = appid
          @FunnelName = funnelname
          @Steps = steps
          @Description = description
          @Status = status
          @Source = source
        end

        def deserialize(params)
          @AppId = params['AppId']
          @FunnelName = params['FunnelName']
          unless params['Steps'].nil?
            @Steps = []
            params['Steps'].each do |i|
              funnelstepinput_tmp = FunnelStepInput.new
              funnelstepinput_tmp.deserialize(i)
              @Steps << funnelstepinput_tmp
            end
          end
          @Description = params['Description']
          @Status = params['Status']
          @Source = params['Source']
        end
      end

      # CreateTDEMFunnel返回参数结构体
      class CreateTDEMFunnelResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>请求结果</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # CreateWhitelist请求参数结构体
      class CreateWhitelistRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 实例ID：taw-123
        # @type InstanceID: String
        # @param Remark: 备注（暂未作字节数限制）
        # @type Remark: String
        # @param WhitelistUin: uin：业务方标识
        # @type WhitelistUin: String
        # @param Aid: 业务方标识
        # @type Aid: String

        attr_accessor :InstanceID, :Remark, :WhitelistUin, :Aid

        def initialize(instanceid=nil, remark=nil, whitelistuin=nil, aid=nil)
          @InstanceID = instanceid
          @Remark = remark
          @WhitelistUin = whitelistuin
          @Aid = aid
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @Remark = params['Remark']
          @WhitelistUin = params['WhitelistUin']
          @Aid = params['Aid']
        end
      end

      # CreateWhitelist返回参数结构体
      class CreateWhitelistResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 消息
        # @type Msg: String
        # @param ID: 白名单ID
        # @type ID: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :ID, :RequestId

        def initialize(msg=nil, id=nil, requestid=nil)
          @Msg = msg
          @ID = id
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @ID = params['ID']
          @RequestId = params['RequestId']
        end
      end

      # DeleteFieldTransformRule请求参数结构体
      class DeleteFieldTransformRuleRequest < TencentCloud::Common::AbstractModel
        # @param Id: <p>规则id</p>
        # @type Id: Integer
        # @param ProjectId: <p>项目id</p>
        # @type ProjectId: Integer

        attr_accessor :Id, :ProjectId

        def initialize(id=nil, projectid=nil)
          @Id = id
          @ProjectId = projectid
        end

        def deserialize(params)
          @Id = params['Id']
          @ProjectId = params['ProjectId']
        end
      end

      # DeleteFieldTransformRule返回参数结构体
      class DeleteFieldTransformRuleResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>结果</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DeleteInstance请求参数结构体
      class DeleteInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 需要删除的实例id
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DeleteInstance返回参数结构体
      class DeleteInstanceResponse < TencentCloud::Common::AbstractModel
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

      # DeleteMiniProgramReplayPack请求参数结构体
      class DeleteMiniProgramReplayPackRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用id</p>
        # @type AppId: String
        # @param PackId: <p>回放包id（前缀mpr_）</p>
        # @type PackId: String

        attr_accessor :AppId, :PackId

        def initialize(appid=nil, packid=nil)
          @AppId = appid
          @PackId = packid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @PackId = params['PackId']
        end
      end

      # DeleteMiniProgramReplayPack返回参数结构体
      class DeleteMiniProgramReplayPackResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: <p>错误信息</p>
        # @type ErrorMsg: String
        # @param Result: <p>请求结果（JSON字符串，包含 AppId/PackId/Deleted）</p>
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :Result, :RequestId

        def initialize(errormsg=nil, result=nil, requestid=nil)
          @ErrorMsg = errormsg
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DeleteProject请求参数结构体
      class DeleteProjectRequest < TencentCloud::Common::AbstractModel
        # @param ID: 需要删除的项目 ID
        # @type ID: Integer

        attr_accessor :ID

        def initialize(id=nil)
          @ID = id
        end

        def deserialize(params)
          @ID = params['ID']
        end
      end

      # DeleteProject返回参数结构体
      class DeleteProjectResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 操作信息
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :RequestId

        def initialize(msg=nil, requestid=nil)
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DeleteReleaseFile请求参数结构体
      class DeleteReleaseFileRequest < TencentCloud::Common::AbstractModel
        # @param ID: 文件 id
        # @type ID: Integer

        attr_accessor :ID

        def initialize(id=nil)
          @ID = id
        end

        def deserialize(params)
          @ID = params['ID']
        end
      end

      # DeleteReleaseFile返回参数结构体
      class DeleteReleaseFileResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 接口请求返回字符串
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :RequestId

        def initialize(msg=nil, requestid=nil)
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DeleteStarProject请求参数结构体
      class DeleteStarProjectRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 实例ID：****-1792
        # @type InstanceID: String
        # @param ID: 项目ID
        # @type ID: Integer

        attr_accessor :InstanceID, :ID

        def initialize(instanceid=nil, id=nil)
          @InstanceID = instanceid
          @ID = id
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @ID = params['ID']
        end
      end

      # DeleteStarProject返回参数结构体
      class DeleteStarProjectResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 返回消息,请求成功才会返回，出现异常默认为null
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :RequestId

        def initialize(msg=nil, requestid=nil)
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DeleteSymbolArtifact请求参数结构体
      class DeleteSymbolArtifactRequest < TencentCloud::Common::AbstractModel
        # @param Kind: <p>制品类型。取值：js_sourcemap、ios_dsym、macos_dsym、windows_pdb、android_mapping、android_native、system_symbol。</p>
        # @type Kind: String
        # @param ArtifactId: <p>制品 ID。</p>
        # @type ArtifactId: String
        # @param AppId: <p>应用 ID。删除应用级制品时必填，须与制品所属应用一致。</p>
        # @type AppId: String
        # @param ProjectId: <p>兼容别名，未传 AppId 时使用。</p>
        # @type ProjectId: String
        # @param AppVersion: <p>兼容字段，请勿传入。</p>
        # @type AppVersion: String
        # @param Platform: <p>兼容字段，请勿传入。</p>
        # @type Platform: String
        # @param OS: <p>系统名称。system_symbol 场景可用于归属校验。</p>
        # @type OS: String
        # @param OSVersion: <p>系统版本。system_symbol 场景可用于归属校验。</p>
        # @type OSVersion: String

        attr_accessor :Kind, :ArtifactId, :AppId, :ProjectId, :AppVersion, :Platform, :OS, :OSVersion

        def initialize(kind=nil, artifactid=nil, appid=nil, projectid=nil, appversion=nil, platform=nil, os=nil, osversion=nil)
          @Kind = kind
          @ArtifactId = artifactid
          @AppId = appid
          @ProjectId = projectid
          @AppVersion = appversion
          @Platform = platform
          @OS = os
          @OSVersion = osversion
        end

        def deserialize(params)
          @Kind = params['Kind']
          @ArtifactId = params['ArtifactId']
          @AppId = params['AppId']
          @ProjectId = params['ProjectId']
          @AppVersion = params['AppVersion']
          @Platform = params['Platform']
          @OS = params['OS']
          @OSVersion = params['OSVersion']
        end
      end

      # DeleteSymbolArtifact返回参数结构体
      class DeleteSymbolArtifactResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>删除结果，JSON 格式字符串，包含 artifact_id、status 和 deleted_at。</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DeleteTDEMApplication请求参数结构体
      class DeleteTDEMApplicationRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID（必填）</p>
        # @type AppId: String

        attr_accessor :AppId

        def initialize(appid=nil)
          @AppId = appid
        end

        def deserialize(params)
          @AppId = params['AppId']
        end
      end

      # DeleteTDEMApplication返回参数结构体
      class DeleteTDEMApplicationResponse < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppId, :RequestId

        def initialize(appid=nil, requestid=nil)
          @AppId = appid
          @RequestId = requestid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteTDEMBusinessSystem请求参数结构体
      class DeleteTDEMBusinessSystemRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>业务系统 ID（必填）</p>
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DeleteTDEMBusinessSystem返回参数结构体
      class DeleteTDEMBusinessSystemResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>业务系统 ID</p>
        # @type InstanceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :RequestId

        def initialize(instanceid=nil, requestid=nil)
          @InstanceId = instanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteTDEMDialTask请求参数结构体
      class DeleteTDEMDialTaskRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param TaskId: <p>任务 ID</p>
        # @type TaskId: String

        attr_accessor :AppId, :TaskId

        def initialize(appid=nil, taskid=nil)
          @AppId = appid
          @TaskId = taskid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @TaskId = params['TaskId']
        end
      end

      # DeleteTDEMDialTask返回参数结构体
      class DeleteTDEMDialTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: <p>已删除的任务 ID</p>
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

      # DeleteTDEMFieldTransformRule请求参数结构体
      class DeleteTDEMFieldTransformRuleRequest < TencentCloud::Common::AbstractModel
        # @param Id: <p>规则 ID（必填）</p>
        # @type Id: Integer
        # @param AppId: <p>应用 ID（必填）</p>
        # @type AppId: String

        attr_accessor :Id, :AppId

        def initialize(id=nil, appid=nil)
          @Id = id
          @AppId = appid
        end

        def deserialize(params)
          @Id = params['Id']
          @AppId = params['AppId']
        end
      end

      # DeleteTDEMFieldTransformRule返回参数结构体
      class DeleteTDEMFieldTransformRuleResponse < TencentCloud::Common::AbstractModel
        # @param Id: <p>规则 ID</p>
        # @type Id: Integer
        # @param Deleted: <p>是否已删除</p>
        # @type Deleted: Boolean
        # @param Message: <p>提示信息</p>
        # @type Message: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :Deleted, :Message, :RequestId

        def initialize(id=nil, deleted=nil, message=nil, requestid=nil)
          @Id = id
          @Deleted = deleted
          @Message = message
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @Deleted = params['Deleted']
          @Message = params['Message']
          @RequestId = params['RequestId']
        end
      end

      # DeleteTDEMFunnel请求参数结构体
      class DeleteTDEMFunnelRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用id</p>
        # @type AppId: String
        # @param FunnelId: <p>漏斗id</p>
        # @type FunnelId: String

        attr_accessor :AppId, :FunnelId

        def initialize(appid=nil, funnelid=nil)
          @AppId = appid
          @FunnelId = funnelid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @FunnelId = params['FunnelId']
        end
      end

      # DeleteTDEMFunnel返回参数结构体
      class DeleteTDEMFunnelResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>请求结果</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DeleteWhitelist请求参数结构体
      class DeleteWhitelistRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 实例ID
        # @type InstanceID: String
        # @param ID: 名单ID
        # @type ID: String

        attr_accessor :InstanceID, :ID

        def initialize(instanceid=nil, id=nil)
          @InstanceID = instanceid
          @ID = id
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @ID = params['ID']
        end
      end

      # DeleteWhitelist返回参数结构体
      class DeleteWhitelistResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 消息success
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :RequestId

        def initialize(msg=nil, requestid=nil)
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAppDimensionMetrics请求参数结构体
      class DescribeAppDimensionMetricsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectID: app 项目ID
        # @type ProjectID: Integer
        # @param From: 查询的表名
        # @type From: String
        # @param Fields: 查询指标 fields
        # @type Fields: String
        # @param Filter: 查询的过滤条件
        # @type Filter: String
        # @param FilterSimple: 查询简单过滤条件
        # @type FilterSimple: String
        # @param GroupBy: group by 条件
        # @type GroupBy: Array
        # @param OrderBy: order by 条件
        # @type OrderBy: Array
        # @param Limit: limit 参数
        # @type Limit: Integer
        # @param Offset: offset 参数
        # @type Offset: Integer
        # @param BusinessContext: 业务上下文参数
        # @type BusinessContext: String

        attr_accessor :ProjectID, :From, :Fields, :Filter, :FilterSimple, :GroupBy, :OrderBy, :Limit, :Offset, :BusinessContext

        def initialize(projectid=nil, from=nil, fields=nil, filter=nil, filtersimple=nil, groupby=nil, orderby=nil, limit=nil, offset=nil, businesscontext=nil)
          @ProjectID = projectid
          @From = from
          @Fields = fields
          @Filter = filter
          @FilterSimple = filtersimple
          @GroupBy = groupby
          @OrderBy = orderby
          @Limit = limit
          @Offset = offset
          @BusinessContext = businesscontext
        end

        def deserialize(params)
          @ProjectID = params['ProjectID']
          @From = params['From']
          @Fields = params['Fields']
          @Filter = params['Filter']
          @FilterSimple = params['FilterSimple']
          @GroupBy = params['GroupBy']
          @OrderBy = params['OrderBy']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @BusinessContext = params['BusinessContext']
        end
      end

      # DescribeAppDimensionMetrics返回参数结构体
      class DescribeAppDimensionMetricsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 查询数据返回
        # @type Data: String
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

      # DescribeAppMetricsData请求参数结构体
      class DescribeAppMetricsDataRequest < TencentCloud::Common::AbstractModel
        # @param ProjectID: app 项目ID
        # @type ProjectID: Integer
        # @param From: 查询的表名
        # @type From: String
        # @param Fields: 查询指标 field
        # @type Fields: String
        # @param Filter: 查询的过滤条件
        # @type Filter: String
        # @param FilterSimple: 查询简单过滤条件
        # @type FilterSimple: String
        # @param GroupBy: group by 条件
        # @type GroupBy: Array
        # @param OrderBy: order by 条件
        # @type OrderBy: Array
        # @param Limit: limit 参数
        # @type Limit: Integer
        # @param Offset: offset 参数
        # @type Offset: Integer
        # @param GroupByModifier: group by 参数
        # @type GroupByModifier: String

        attr_accessor :ProjectID, :From, :Fields, :Filter, :FilterSimple, :GroupBy, :OrderBy, :Limit, :Offset, :GroupByModifier

        def initialize(projectid=nil, from=nil, fields=nil, filter=nil, filtersimple=nil, groupby=nil, orderby=nil, limit=nil, offset=nil, groupbymodifier=nil)
          @ProjectID = projectid
          @From = from
          @Fields = fields
          @Filter = filter
          @FilterSimple = filtersimple
          @GroupBy = groupby
          @OrderBy = orderby
          @Limit = limit
          @Offset = offset
          @GroupByModifier = groupbymodifier
        end

        def deserialize(params)
          @ProjectID = params['ProjectID']
          @From = params['From']
          @Fields = params['Fields']
          @Filter = params['Filter']
          @FilterSimple = params['FilterSimple']
          @GroupBy = params['GroupBy']
          @OrderBy = params['OrderBy']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @GroupByModifier = params['GroupByModifier']
        end
      end

      # DescribeAppMetricsData返回参数结构体
      class DescribeAppMetricsDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: 查询数据返回
        # @type Data: String
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

      # DescribeAppSingleCaseDetailList请求参数结构体
      class DescribeAppSingleCaseDetailListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectID: app 项目ID
        # @type ProjectID: Integer
        # @param From: 查询的表名
        # @type From: String
        # @param Fields: 查询指标 field
        # @type Fields: String
        # @param Filter: 查询的过滤条件
        # @type Filter: String
        # @param FilterSimple: 查询简单过滤条件
        # @type FilterSimple: String
        # @param GroupBy: group by 条件
        # @type GroupBy: Array
        # @param OrderBy: order by 条件
        # @type OrderBy: Array
        # @param Limit: limit 参数
        # @type Limit: Integer
        # @param Offset: offset 参数
        # @type Offset: Integer

        attr_accessor :ProjectID, :From, :Fields, :Filter, :FilterSimple, :GroupBy, :OrderBy, :Limit, :Offset

        def initialize(projectid=nil, from=nil, fields=nil, filter=nil, filtersimple=nil, groupby=nil, orderby=nil, limit=nil, offset=nil)
          @ProjectID = projectid
          @From = from
          @Fields = fields
          @Filter = filter
          @FilterSimple = filtersimple
          @GroupBy = groupby
          @OrderBy = orderby
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ProjectID = params['ProjectID']
          @From = params['From']
          @Fields = params['Fields']
          @Filter = params['Filter']
          @FilterSimple = params['FilterSimple']
          @GroupBy = params['GroupBy']
          @OrderBy = params['OrderBy']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeAppSingleCaseDetailList返回参数结构体
      class DescribeAppSingleCaseDetailListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 查询数据返回
        # @type Data: String
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

      # DescribeAppSingleCaseList请求参数结构体
      class DescribeAppSingleCaseListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectID: app 项目 ID
        # @type ProjectID: Integer
        # @param From: 查询的表名
        # @type From: String
        # @param Fields: 查询指标 field
        # @type Fields: String
        # @param Filter: 查询的过滤条件
        # @type Filter: String
        # @param FilterSimple: 查询简单过滤条件
        # @type FilterSimple: String
        # @param GroupBy: group by 条件
        # @type GroupBy: Array
        # @param OrderBy: order by 条件
        # @type OrderBy: Array
        # @param Limit: limit 参数
        # @type Limit: Integer
        # @param Offset: offset 参数
        # @type Offset: Integer

        attr_accessor :ProjectID, :From, :Fields, :Filter, :FilterSimple, :GroupBy, :OrderBy, :Limit, :Offset

        def initialize(projectid=nil, from=nil, fields=nil, filter=nil, filtersimple=nil, groupby=nil, orderby=nil, limit=nil, offset=nil)
          @ProjectID = projectid
          @From = from
          @Fields = fields
          @Filter = filter
          @FilterSimple = filtersimple
          @GroupBy = groupby
          @OrderBy = orderby
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ProjectID = params['ProjectID']
          @From = params['From']
          @Fields = params['Fields']
          @Filter = params['Filter']
          @FilterSimple = params['FilterSimple']
          @GroupBy = params['GroupBy']
          @OrderBy = params['OrderBy']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeAppSingleCaseList返回参数结构体
      class DescribeAppSingleCaseListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 查询数据返回
        # @type Data: String
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

      # DescribeApplicationExitReportDetail请求参数结构体
      class DescribeApplicationExitReportDetailRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: <p>产品Id</p>
        # @type ProductId: String
        # @param ParamToken: <p>提供给前端使用，当填写本字段时，会覆盖 formlist 的值</p>
        # @type ParamToken: String
        # @param ClientIdentify: <p>问题Id</p>
        # @type ClientIdentify: String
        # @param StartEventTime: <p>开始时间</p>
        # @type StartEventTime: Integer
        # @param EndEventTime: <p>结束时间</p>
        # @type EndEventTime: Integer
        # @param ExtraData: <p>拓展数据</p>
        # @type ExtraData: String
        # @param RequestHeader: <p>请求头</p>
        # @type RequestHeader: String

        attr_accessor :ProductId, :ParamToken, :ClientIdentify, :StartEventTime, :EndEventTime, :ExtraData, :RequestHeader

        def initialize(productid=nil, paramtoken=nil, clientidentify=nil, starteventtime=nil, endeventtime=nil, extradata=nil, requestheader=nil)
          @ProductId = productid
          @ParamToken = paramtoken
          @ClientIdentify = clientidentify
          @StartEventTime = starteventtime
          @EndEventTime = endeventtime
          @ExtraData = extradata
          @RequestHeader = requestheader
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ParamToken = params['ParamToken']
          @ClientIdentify = params['ClientIdentify']
          @StartEventTime = params['StartEventTime']
          @EndEventTime = params['EndEventTime']
          @ExtraData = params['ExtraData']
          @RequestHeader = params['RequestHeader']
        end
      end

      # DescribeApplicationExitReportDetail返回参数结构体
      class DescribeApplicationExitReportDetailResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回值</p>
        # @type Data: String
        # @param Code: <p>状态码</p>
        # @type Code: Integer
        # @param Message: <p>消息</p>
        # @type Message: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Code, :Message, :RequestId

        def initialize(data=nil, code=nil, message=nil, requestid=nil)
          @Data = data
          @Code = code
          @Message = message
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @Code = params['Code']
          @Message = params['Message']
          @RequestId = params['RequestId']
        end
      end

      # DescribeApplicationExitReportList请求参数结构体
      class DescribeApplicationExitReportListRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: <p>产品Id</p>
        # @type ProductId: String
        # @param ParamToken: <p>提供给前端使用，当填写本字段时，会覆盖 formlist 的值</p>
        # @type ParamToken: String
        # @param FormListString: <p>接口调试专用，当 token 为空时，以这里的 value 作为筛选表单信息</p>
        # @type FormListString: String
        # @param PageNumber: <p>当前页码</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页展示最大数量</p>
        # @type PageSize: Integer
        # @param SortField: <p>排序字段</p>
        # @type SortField: String
        # @param SortType: <p>排序类型</p>
        # @type SortType: String
        # @param ExtraData: <p>拓展数据</p>
        # @type ExtraData: String
        # @param RequestHeader: <p>请求头</p>
        # @type RequestHeader: String

        attr_accessor :ProductId, :ParamToken, :FormListString, :PageNumber, :PageSize, :SortField, :SortType, :ExtraData, :RequestHeader

        def initialize(productid=nil, paramtoken=nil, formliststring=nil, pagenumber=nil, pagesize=nil, sortfield=nil, sorttype=nil, extradata=nil, requestheader=nil)
          @ProductId = productid
          @ParamToken = paramtoken
          @FormListString = formliststring
          @PageNumber = pagenumber
          @PageSize = pagesize
          @SortField = sortfield
          @SortType = sorttype
          @ExtraData = extradata
          @RequestHeader = requestheader
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ParamToken = params['ParamToken']
          @FormListString = params['FormListString']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @SortField = params['SortField']
          @SortType = params['SortType']
          @ExtraData = params['ExtraData']
          @RequestHeader = params['RequestHeader']
        end
      end

      # DescribeApplicationExitReportList返回参数结构体
      class DescribeApplicationExitReportListResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回值</p>
        # @type Data: String
        # @param Code: <p>状态码</p>
        # @type Code: Integer
        # @param Message: <p>消息</p>
        # @type Message: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Code, :Message, :RequestId

        def initialize(data=nil, code=nil, message=nil, requestid=nil)
          @Data = data
          @Code = code
          @Message = message
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @Code = params['Code']
          @Message = params['Message']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataBridgeUrlV2请求参数结构体
      class DescribeDataBridgeUrlV2Request < TencentCloud::Common::AbstractModel
        # @param ID: 项目ID
        # @type ID: Integer
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param Type: pagepv：性能视图，allcount：性能视图，falls：页面加载瀑布图，samp：首屏时间，day：14天数据，nettype：网络/平台视图，performance：页面性能TOP视图，version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：ISP视图/地区视图/浏览器视图等
        # @type Type: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param Area: 地区
        # @type Area: String
        # @param NetType: 网络类型
        # @type NetType: String
        # @param Platform: 平台
        # @type Platform: String
        # @param Device: 机型
        # @type Device: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param IsAbroad: 是否海外
        # @type IsAbroad: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param From: 来源页面
        # @type From: String
        # @param CostType: 耗时计算方式
        # @type CostType: String
        # @param Env: 环境变量
        # @type Env: String
        # @param Name: url名称
        # @type Name: String
        # @param Status: http状态码
        # @type Status: String
        # @param Ret: retcode
        # @type Ret: String
        # @param NetStatus: 网络状态
        # @type NetStatus: String
        # @param ExtFourth: 自定义4
        # @type ExtFourth: String
        # @param ExtFifth: 自定义5
        # @type ExtFifth: String
        # @param ExtSixth: 自定义6
        # @type ExtSixth: String
        # @param ExtSeventh: 自定义7
        # @type ExtSeventh: String
        # @param ExtEighth: 自定义8
        # @type ExtEighth: String
        # @param ExtNinth: 自定义9
        # @type ExtNinth: String
        # @param ExtTenth: 自定义10
        # @type ExtTenth: String
        # @param Granularity: 时间段
        # @type Granularity: String

        attr_accessor :ID, :StartTime, :EndTime, :Type, :Level, :Isp, :Area, :NetType, :Platform, :Device, :VersionNum, :ExtFirst, :ExtSecond, :ExtThird, :IsAbroad, :Browser, :Os, :Engine, :Brand, :From, :CostType, :Env, :Name, :Status, :Ret, :NetStatus, :ExtFourth, :ExtFifth, :ExtSixth, :ExtSeventh, :ExtEighth, :ExtNinth, :ExtTenth, :Granularity

        def initialize(id=nil, starttime=nil, endtime=nil, type=nil, level=nil, isp=nil, area=nil, nettype=nil, platform=nil, device=nil, versionnum=nil, extfirst=nil, extsecond=nil, extthird=nil, isabroad=nil, browser=nil, os=nil, engine=nil, brand=nil, from=nil, costtype=nil, env=nil, name=nil, status=nil, ret=nil, netstatus=nil, extfourth=nil, extfifth=nil, extsixth=nil, extseventh=nil, exteighth=nil, extninth=nil, exttenth=nil, granularity=nil)
          @ID = id
          @StartTime = starttime
          @EndTime = endtime
          @Type = type
          @Level = level
          @Isp = isp
          @Area = area
          @NetType = nettype
          @Platform = platform
          @Device = device
          @VersionNum = versionnum
          @ExtFirst = extfirst
          @ExtSecond = extsecond
          @ExtThird = extthird
          @IsAbroad = isabroad
          @Browser = browser
          @Os = os
          @Engine = engine
          @Brand = brand
          @From = from
          @CostType = costtype
          @Env = env
          @Name = name
          @Status = status
          @Ret = ret
          @NetStatus = netstatus
          @ExtFourth = extfourth
          @ExtFifth = extfifth
          @ExtSixth = extsixth
          @ExtSeventh = extseventh
          @ExtEighth = exteighth
          @ExtNinth = extninth
          @ExtTenth = exttenth
          @Granularity = granularity
        end

        def deserialize(params)
          @ID = params['ID']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Type = params['Type']
          @Level = params['Level']
          @Isp = params['Isp']
          @Area = params['Area']
          @NetType = params['NetType']
          @Platform = params['Platform']
          @Device = params['Device']
          @VersionNum = params['VersionNum']
          @ExtFirst = params['ExtFirst']
          @ExtSecond = params['ExtSecond']
          @ExtThird = params['ExtThird']
          @IsAbroad = params['IsAbroad']
          @Browser = params['Browser']
          @Os = params['Os']
          @Engine = params['Engine']
          @Brand = params['Brand']
          @From = params['From']
          @CostType = params['CostType']
          @Env = params['Env']
          @Name = params['Name']
          @Status = params['Status']
          @Ret = params['Ret']
          @NetStatus = params['NetStatus']
          @ExtFourth = params['ExtFourth']
          @ExtFifth = params['ExtFifth']
          @ExtSixth = params['ExtSixth']
          @ExtSeventh = params['ExtSeventh']
          @ExtEighth = params['ExtEighth']
          @ExtNinth = params['ExtNinth']
          @ExtTenth = params['ExtTenth']
          @Granularity = params['Granularity']
        end
      end

      # DescribeDataBridgeUrlV2返回参数结构体
      class DescribeDataBridgeUrlV2Response < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataCustomUrl请求参数结构体
      class DescribeDataCustomUrlRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: top：资源top视图，allcount：性能视图，day：14天数据，condition：条件列表，pagepv：性能视图，area：请求速度分布，nettype/version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：网络平台视图/Version视图/设备视图/ISP视图/地区视图/浏览器视图/ext1视图等等
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型（1,2,3,4,5,100），1表示WIFI, 2表示2G, 3表示3G, 4表示4G, 5表示5G, 6表示6G, 100表示未知。
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 显示是否海外,1表示海外，0表示非海外；默认值为空，查询所有。
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param CostType: 耗时口径："50"/"75"/"90"/"95"/"99"/"99.5" 分别表示 TP50/TP75/TP90/TP95/TP99/TP99.5（使用 percentile2 计算分位数）；"avg" 表示均值（使用 avg 计算）。
        # @type CostType: String
        # @param Url: 自定义测速的key的值
        # @type Url: String
        # @param Env: 环境
        # @type Env: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :CostType, :Url, :Env

        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, costtype=nil, url=nil, env=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @CostType = costtype
          @Url = url
          @Env = env
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @CostType = params['CostType']
          @Url = params['Url']
          @Env = params['Env']
        end
      end

      # DescribeDataCustomUrl返回参数结构体
      class DescribeDataCustomUrlResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataCustomUrlV2请求参数结构体
      class DescribeDataCustomUrlV2Request < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: top：资源top视图，allcount：性能视图，day：14天数据，condition：条件列表，pagepv：性能视图，area：请求速度分布，nettype/version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：网络平台视图/Version视图/设备视图/ISP视图/地区视图/浏览器视图/ext1视图等
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型（1,2,3,4,5,100），1表示WIFI, 2表示2G, 3表示3G, 4表示4G, 5表示5G, 6表示6G, 100表示未知。
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 显示是否海外,1表示海外，0表示非海外；默认值为空，查询所有。
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param CostType: 耗时计算方式
        # @type CostType: String
        # @param Url: 自定义测速的key的值
        # @type Url: String
        # @param Env: 环境
        # @type Env: String
        # @param ExtFourth: 自定义4
        # @type ExtFourth: String
        # @param ExtFifth: 自定义5
        # @type ExtFifth: String
        # @param ExtSixth: 自定义6
        # @type ExtSixth: String
        # @param ExtSeventh: 自定义7
        # @type ExtSeventh: String
        # @param ExtEighth: 自定义8
        # @type ExtEighth: String
        # @param ExtNinth: 自定义9
        # @type ExtNinth: String
        # @param ExtTenth: 自定义10
        # @type ExtTenth: String
        # @param Granularity: 时间段
        # @type Granularity: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :CostType, :Url, :Env, :ExtFourth, :ExtFifth, :ExtSixth, :ExtSeventh, :ExtEighth, :ExtNinth, :ExtTenth, :Granularity

        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, costtype=nil, url=nil, env=nil, extfourth=nil, extfifth=nil, extsixth=nil, extseventh=nil, exteighth=nil, extninth=nil, exttenth=nil, granularity=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @CostType = costtype
          @Url = url
          @Env = env
          @ExtFourth = extfourth
          @ExtFifth = extfifth
          @ExtSixth = extsixth
          @ExtSeventh = extseventh
          @ExtEighth = exteighth
          @ExtNinth = extninth
          @ExtTenth = exttenth
          @Granularity = granularity
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @CostType = params['CostType']
          @Url = params['Url']
          @Env = params['Env']
          @ExtFourth = params['ExtFourth']
          @ExtFifth = params['ExtFifth']
          @ExtSixth = params['ExtSixth']
          @ExtSeventh = params['ExtSeventh']
          @ExtEighth = params['ExtEighth']
          @ExtNinth = params['ExtNinth']
          @ExtTenth = params['ExtTenth']
          @Granularity = params['Granularity']
        end
      end

      # DescribeDataCustomUrlV2返回参数结构体
      class DescribeDataCustomUrlV2Response < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataEventUrl请求参数结构体
      class DescribeDataEventUrlRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: allcount：性能视图，day：14天数据，condition：条件列表，ckuv：获取uv趋势，ckpv：获取pv趋势，nettype/version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：网络平台视图/Version视图/设备视图/ISP视图/地区视图/浏览器视图/ext1视图等等
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: netType | 网络类型(tag 值):用于过滤/聚合字段 netType；枚举值：1(WiFi)、2(2G)、3(3G)、4(4G)、5(5G)、6(6G)、100(未知网络)。也可通过 Type=condition（show tag values）查询当前数据集中的实际可选值。
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 显示是否海外,1表示海外，0表示非海外；默认值为空，查询所有。
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param Name: 筛选条件
        # @type Name: String
        # @param Env: 环境
        # @type Env: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :Name, :Env

        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, name=nil, env=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @Name = name
          @Env = env
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @Name = params['Name']
          @Env = params['Env']
        end
      end

      # DescribeDataEventUrl返回参数结构体
      class DescribeDataEventUrlResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataEventUrlV2请求参数结构体
      class DescribeDataEventUrlV2Request < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: allcount：性能视图，day：14天数据，condition：条件列表，ckuv：获取uv趋势，ckpv：获取pv趋势，nettype/version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：网络平台视图/Version视图/设备视图/ISP视图/地区视图/浏览器视图/ext1视图等
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 显示是否海外,1表示海外，0表示非海外；默认值为空，查询所有。
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param Name: 筛选条件
        # @type Name: String
        # @param Env: 环境
        # @type Env: String
        # @param ExtFourth: 自定义4
        # @type ExtFourth: String
        # @param ExtFifth: 自定义5
        # @type ExtFifth: String
        # @param ExtSixth: 自定义6
        # @type ExtSixth: String
        # @param ExtSeventh: 自定义7
        # @type ExtSeventh: String
        # @param ExtEighth: 自定义8
        # @type ExtEighth: String
        # @param ExtNinth: 自定义9
        # @type ExtNinth: String
        # @param ExtTenth: 自定义10
        # @type ExtTenth: String
        # @param Granularity: 时间段
        # @type Granularity: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :Name, :Env, :ExtFourth, :ExtFifth, :ExtSixth, :ExtSeventh, :ExtEighth, :ExtNinth, :ExtTenth, :Granularity

        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, name=nil, env=nil, extfourth=nil, extfifth=nil, extsixth=nil, extseventh=nil, exteighth=nil, extninth=nil, exttenth=nil, granularity=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @Name = name
          @Env = env
          @ExtFourth = extfourth
          @ExtFifth = extfifth
          @ExtSixth = extsixth
          @ExtSeventh = extseventh
          @ExtEighth = exteighth
          @ExtNinth = extninth
          @ExtTenth = exttenth
          @Granularity = granularity
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @Name = params['Name']
          @Env = params['Env']
          @ExtFourth = params['ExtFourth']
          @ExtFifth = params['ExtFifth']
          @ExtSixth = params['ExtSixth']
          @ExtSeventh = params['ExtSeventh']
          @ExtEighth = params['ExtEighth']
          @ExtNinth = params['ExtNinth']
          @ExtTenth = params['ExtTenth']
          @Granularity = params['Granularity']
        end
      end

      # DescribeDataEventUrlV2返回参数结构体
      class DescribeDataEventUrlV2Response < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataFetchProject请求参数结构体
      class DescribeDataFetchProjectRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间，示例值：1625454840
        # @type StartTime: Integer
        # @param Type: allcount：性能视图，day：14天数据，condition：条件列表，area：请求速度分布，nettype/version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：网络平台视图/Version视图/设备视图/ISP视图/地区视图/浏览器视图/ext1视图等等
        # @type Type: String
        # @param EndTime: 结束时间，示例值：1625454840
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级（1表示白名单日志，2表示一般日志，4表示错误日志，8表示Promise 错误，16表示Ajax 请求异常，32表示JS 加载异常，64表示图片加载异常，128表示css 加载异常，256表示console.error，512表示音视频资源异常，1024表示retcode 异常，2048表示aegis report，4096表示PV日志，8192表示自定义事件，16384表示小程序 页面不存在，32768表示websocket错误，65536表示js bridge错误）
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型（1,2,3,4,5,100），1表示WIFI, 2表示2G, 3表示3G, 4表示4G, 5表示5G, 6表示6G, 100表示未知。
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 是否海外,1表示海外，0表示非海外；默认值为空，查询所有。
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param CostType: 耗时口径："50"/"75"/"90"/"95"/"99"/"99.5" 分别表示 TP50/TP75/TP90/TP95/TP99/TP99.5（percentile2）；"avg" 表示均值（avg）。
        # @type CostType: String
        # @param Url: 来源
        # @type Url: String
        # @param Env: 环境
        # @type Env: String
        # @param Status: HTTP 状态码（tag 值）：用于过滤字段 status；取值一般为 200/301/404/500 等，也可配合 4xx/5xx 统计逻辑使用
        # @type Status: String
        # @param Ret: retcode
        # @type Ret: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :CostType, :Url, :Env, :Status, :Ret

        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, costtype=nil, url=nil, env=nil, status=nil, ret=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @CostType = costtype
          @Url = url
          @Env = env
          @Status = status
          @Ret = ret
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @CostType = params['CostType']
          @Url = params['Url']
          @Env = params['Env']
          @Status = params['Status']
          @Ret = params['Ret']
        end
      end

      # DescribeDataFetchProject返回参数结构体
      class DescribeDataFetchProjectResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataFetchUrlInfo请求参数结构体
      class DescribeDataFetchUrlInfoRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: Type	是	String	无枚举值。此接口不使用 Type 做分支判断，SQL 固定 group by "url"，Type 字段传任何值不影响查询。
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型(tag 值):用于过滤/聚合字段 netType；枚举值：1(WiFi)、2(2G)、3(3G)、4(4G)、5(5G)、6(6G)、100(未知网络)。
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 显示是否海外,1表示海外，0表示非海外；默认值为空，查询所有。
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param CostType: 耗时口径："50"/"75"/"90"/"95"/"99"/"99.5" 分别表示 TP50/TP75/TP90/TP95/TP99/TP99.5（percentile2）；"avg" 表示均值（avg）。
        # @type CostType: String
        # @param Url: 来源
        # @type Url: String
        # @param Env: 环境
        # @type Env: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :CostType, :Url, :Env

        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, costtype=nil, url=nil, env=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @CostType = costtype
          @Url = url
          @Env = env
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @CostType = params['CostType']
          @Url = params['Url']
          @Env = params['Env']
        end
      end

      # DescribeDataFetchUrlInfo返回参数结构体
      class DescribeDataFetchUrlInfoResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataFetchUrl请求参数结构体
      class DescribeDataFetchUrlRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: allcount：性能视图，pagepv：pv视图，day：14天数据，count40x：40X视图，count50x：50X视图，count5xand4x：40∑50视图，top：资源top视图，nettype/version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：网络平台视图/Version视图/设备视图/ISP视图/地区视图/浏览器视图/ext1视图等等
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型(tag 值):用于过滤/聚合字段 netType；枚举值：1(WiFi)、2(2G)、3(3G)、4(4G)、5(5G)、6(6G)、100(未知网络)。
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 显示是否海外,1表示海外，0表示非海外；默认值为空，查询所有。
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param CostType: 耗时口径："50"/"75"/"90"/"95"/"99"/"99.5" 分别表示 TP50/TP75/TP90/TP95/TP99/TP99.5（percentile2）；"avg" 表示均值（avg）。
        # @type CostType: String
        # @param Url: 来源
        # @type Url: String
        # @param Env: 环境
        # @type Env: String
        # @param Status: HTTP 状态码（tag 值）：用于过滤字段 status；支持 4xx（status =~ /4[0-9]{2}/）和 5xx（status =~ /5[0-9]{2}/）等错误码统计。
        # @type Status: String
        # @param Ret: retcode
        # @type Ret: String
        # @param NetStatus: 网络状态(tag 值):用于过滤/聚合字段 netStatus；枚举值：0(正常)、1(弱网)、2(断网)、3(其他)。
        # @type NetStatus: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :CostType, :Url, :Env, :Status, :Ret, :NetStatus

        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, costtype=nil, url=nil, env=nil, status=nil, ret=nil, netstatus=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @CostType = costtype
          @Url = url
          @Env = env
          @Status = status
          @Ret = ret
          @NetStatus = netstatus
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @CostType = params['CostType']
          @Url = params['Url']
          @Env = params['Env']
          @Status = params['Status']
          @Ret = params['Ret']
          @NetStatus = params['NetStatus']
        end
      end

      # DescribeDataFetchUrl返回参数结构体
      class DescribeDataFetchUrlResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataFetchUrlV2请求参数结构体
      class DescribeDataFetchUrlV2Request < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: allcount：性能视图，pagepv：pv视图，day：14天数据，count40x：40X视图，count50x：50X视图，count5xand4x：40∑50视图，top：资源top视图，nettype/version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：网络平台视图/Version视图/设备视图/ISP视图/地区视图/浏览器视图/ext1视图等
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 显示是否海外,1表示海外，0表示非海外；默认值为空，查询所有。
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param CostType: 耗时计算方式
        # @type CostType: String
        # @param Url: 来源
        # @type Url: String
        # @param Env: 环境
        # @type Env: String
        # @param Status: httpcode响应码
        # @type Status: String
        # @param Ret: retcode
        # @type Ret: String
        # @param NetStatus: 网络状态
        # @type NetStatus: String
        # @param ExtFourth: 自定义4
        # @type ExtFourth: String
        # @param ExtFifth: 自定义5
        # @type ExtFifth: String
        # @param ExtSixth: 自定义6
        # @type ExtSixth: String
        # @param ExtSeventh: 自定义7
        # @type ExtSeventh: String
        # @param ExtEighth: 自定义8
        # @type ExtEighth: String
        # @param ExtNinth: 自定义9
        # @type ExtNinth: String
        # @param ExtTenth: 自定义10
        # @type ExtTenth: String
        # @param Granularity: 时间段
        # @type Granularity: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :CostType, :Url, :Env, :Status, :Ret, :NetStatus, :ExtFourth, :ExtFifth, :ExtSixth, :ExtSeventh, :ExtEighth, :ExtNinth, :ExtTenth, :Granularity

        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, costtype=nil, url=nil, env=nil, status=nil, ret=nil, netstatus=nil, extfourth=nil, extfifth=nil, extsixth=nil, extseventh=nil, exteighth=nil, extninth=nil, exttenth=nil, granularity=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @CostType = costtype
          @Url = url
          @Env = env
          @Status = status
          @Ret = ret
          @NetStatus = netstatus
          @ExtFourth = extfourth
          @ExtFifth = extfifth
          @ExtSixth = extsixth
          @ExtSeventh = extseventh
          @ExtEighth = exteighth
          @ExtNinth = extninth
          @ExtTenth = exttenth
          @Granularity = granularity
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @CostType = params['CostType']
          @Url = params['Url']
          @Env = params['Env']
          @Status = params['Status']
          @Ret = params['Ret']
          @NetStatus = params['NetStatus']
          @ExtFourth = params['ExtFourth']
          @ExtFifth = params['ExtFifth']
          @ExtSixth = params['ExtSixth']
          @ExtSeventh = params['ExtSeventh']
          @ExtEighth = params['ExtEighth']
          @ExtNinth = params['ExtNinth']
          @ExtTenth = params['ExtTenth']
          @Granularity = params['Granularity']
        end
      end

      # DescribeDataFetchUrlV2返回参数结构体
      class DescribeDataFetchUrlV2Response < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataLogUrlInfo请求参数结构体
      class DescribeDataLogUrlInfoRequest < TencentCloud::Common::AbstractModel
        # @param ID: 项目ID
        # @type ID: Integer
        # @param StartTime: 时间戳
        # @type StartTime: Integer
        # @param EndTime: 时间戳
        # @type EndTime: Integer

        attr_accessor :ID, :StartTime, :EndTime

        def initialize(id=nil, starttime=nil, endtime=nil)
          @ID = id
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @ID = params['ID']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeDataLogUrlInfo返回参数结构体
      class DescribeDataLogUrlInfoResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回字符串
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataLogUrlStatistics请求参数结构体
      class DescribeDataLogUrlStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: analysis：异常分析，compare：异常列表对比，allcount：性能视图，condition：条件列表，nettype/version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：网络平台视图/Version视图/设备视图/ISP视图/地区视图/浏览器视图/ext1视图等等
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型(tag 值):用于过滤/聚合字段 netType；枚举值：1(WiFi)、2(2G)、3(3G)、4(4G)、5(5G)、6(6G)、100(未知网络)。
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 显示是否海外,1表示海外，0表示非海外；默认值为空，查询所有。
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param Env: 环境区分
        # @type Env: String
        # @param ErrorMsg: js异常信息
        # @type ErrorMsg: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :Env, :ErrorMsg

        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, env=nil, errormsg=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @Env = env
          @ErrorMsg = errormsg
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @Env = params['Env']
          @ErrorMsg = params['ErrorMsg']
        end
      end

      # DescribeDataLogUrlStatistics返回参数结构体
      class DescribeDataLogUrlStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataLogUrlStatisticsV2请求参数结构体
      class DescribeDataLogUrlStatisticsV2Request < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: analysis：异常分析，compare：异常列表对比，allcount：性能视图，condition：条件列表，nettype/version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：网络平台视图/Version视图/设备视图/ISP视图/地区视图/浏览器视图/ext1视图等
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 显示是否海外,1表示海外，0表示非海外；默认值为空，查询所有。
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param Env: 环境区分
        # @type Env: String
        # @param ErrorMsg: js异常信息
        # @type ErrorMsg: String
        # @param ExtFourth: 自定义4
        # @type ExtFourth: String
        # @param ExtFifth: 自定义5
        # @type ExtFifth: String
        # @param ExtSixth: 自定义6
        # @type ExtSixth: String
        # @param ExtSeventh: 自定义7
        # @type ExtSeventh: String
        # @param ExtEighth: 自定义8
        # @type ExtEighth: String
        # @param ExtNinth: 自定义9
        # @type ExtNinth: String
        # @param ExtTenth: 自定义10
        # @type ExtTenth: String
        # @param Granularity: 时间段
        # @type Granularity: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :Env, :ErrorMsg, :ExtFourth, :ExtFifth, :ExtSixth, :ExtSeventh, :ExtEighth, :ExtNinth, :ExtTenth, :Granularity

        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, env=nil, errormsg=nil, extfourth=nil, extfifth=nil, extsixth=nil, extseventh=nil, exteighth=nil, extninth=nil, exttenth=nil, granularity=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @Env = env
          @ErrorMsg = errormsg
          @ExtFourth = extfourth
          @ExtFifth = extfifth
          @ExtSixth = extsixth
          @ExtSeventh = extseventh
          @ExtEighth = exteighth
          @ExtNinth = extninth
          @ExtTenth = exttenth
          @Granularity = granularity
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @Env = params['Env']
          @ErrorMsg = params['ErrorMsg']
          @ExtFourth = params['ExtFourth']
          @ExtFifth = params['ExtFifth']
          @ExtSixth = params['ExtSixth']
          @ExtSeventh = params['ExtSeventh']
          @ExtEighth = params['ExtEighth']
          @ExtNinth = params['ExtNinth']
          @ExtTenth = params['ExtTenth']
          @Granularity = params['Granularity']
        end
      end

      # DescribeDataLogUrlStatisticsV2返回参数结构体
      class DescribeDataLogUrlStatisticsV2Response < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataPerformancePage请求参数结构体
      class DescribeDataPerformancePageRequest < TencentCloud::Common::AbstractModel
        # @param ID: 项目ID
        # @type ID: Integer
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param Type: pagepv：pv视图，allcount：性能视图，falls：页面加载瀑布图，samp：首屏时间，day：14天数据，nettype：网络/平台视图，performance：页面性能TOP视图，version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：ISP视图/地区视图/浏览器视图等
        # @type Type: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param Area: 地区
        # @type Area: String
        # @param NetType: 网络类型(tag 值):用于过滤/聚合字段 netType；枚举值：1(WiFi)、2(2G)、3(3G)、4(4G)、5(5G)、6(6G)、100(未知网络)。
        # @type NetType: String
        # @param Platform: 平台
        # @type Platform: String
        # @param Device: 机型
        # @type Device: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param IsAbroad: 显示是否海外,1表示海外，0表示非海外；默认值为空，查询所有。
        # @type IsAbroad: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param From: 来源页面
        # @type From: String
        # @param CostType: 耗时口径："50"/"75"/"90"/"95"/"99"/"99.5" 分别表示 TP50/TP75/TP90/TP95/TP99/TP99.5（percentile2）；"avg" 表示均值（avg）。
        # @type CostType: String
        # @param Env: 环境变量
        # @type Env: String
        # @param NetStatus: 网络状态(tag 值):用于过滤/聚合字段 netStatus；枚举值：0(正常)、1(弱网)、2(断网)、3(其他)。
        # @type NetStatus: String
        # @param WebVitals: 是否返回webvitals数据
        # @type WebVitals: Boolean

        attr_accessor :ID, :StartTime, :EndTime, :Type, :Level, :Isp, :Area, :NetType, :Platform, :Device, :VersionNum, :ExtFirst, :ExtSecond, :ExtThird, :IsAbroad, :Browser, :Os, :Engine, :Brand, :From, :CostType, :Env, :NetStatus, :WebVitals

        def initialize(id=nil, starttime=nil, endtime=nil, type=nil, level=nil, isp=nil, area=nil, nettype=nil, platform=nil, device=nil, versionnum=nil, extfirst=nil, extsecond=nil, extthird=nil, isabroad=nil, browser=nil, os=nil, engine=nil, brand=nil, from=nil, costtype=nil, env=nil, netstatus=nil, webvitals=nil)
          @ID = id
          @StartTime = starttime
          @EndTime = endtime
          @Type = type
          @Level = level
          @Isp = isp
          @Area = area
          @NetType = nettype
          @Platform = platform
          @Device = device
          @VersionNum = versionnum
          @ExtFirst = extfirst
          @ExtSecond = extsecond
          @ExtThird = extthird
          @IsAbroad = isabroad
          @Browser = browser
          @Os = os
          @Engine = engine
          @Brand = brand
          @From = from
          @CostType = costtype
          @Env = env
          @NetStatus = netstatus
          @WebVitals = webvitals
        end

        def deserialize(params)
          @ID = params['ID']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Type = params['Type']
          @Level = params['Level']
          @Isp = params['Isp']
          @Area = params['Area']
          @NetType = params['NetType']
          @Platform = params['Platform']
          @Device = params['Device']
          @VersionNum = params['VersionNum']
          @ExtFirst = params['ExtFirst']
          @ExtSecond = params['ExtSecond']
          @ExtThird = params['ExtThird']
          @IsAbroad = params['IsAbroad']
          @Browser = params['Browser']
          @Os = params['Os']
          @Engine = params['Engine']
          @Brand = params['Brand']
          @From = params['From']
          @CostType = params['CostType']
          @Env = params['Env']
          @NetStatus = params['NetStatus']
          @WebVitals = params['WebVitals']
        end
      end

      # DescribeDataPerformancePage返回参数结构体
      class DescribeDataPerformancePageResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataPerformancePageV2请求参数结构体
      class DescribeDataPerformancePageV2Request < TencentCloud::Common::AbstractModel
        # @param ID: 项目ID
        # @type ID: Integer
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param Type: pagepv：pv视图，allcount：性能视图，falls：页面加载瀑布图，samp：首屏时间，day：14天数据，nettype：网络/平台视图，performance：页面性能TOP视图，version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：ISP视图/地区视图/浏览器视图等
        # @type Type: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param Area: 地区
        # @type Area: String
        # @param NetType: 网络类型
        # @type NetType: String
        # @param Platform: 平台
        # @type Platform: String
        # @param Device: 机型
        # @type Device: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param IsAbroad: 显示是否海外,1表示海外，0表示非海外；默认值为空，查询所有。
        # @type IsAbroad: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param From: 来源页面
        # @type From: String
        # @param CostType: 耗时计算方式
        # @type CostType: String
        # @param Env: 环境变量
        # @type Env: String
        # @param NetStatus: 网络状态
        # @type NetStatus: String
        # @param WebVitals: 是否返回webvitals数据
        # @type WebVitals: Boolean
        # @param ExtFourth: 自定义4
        # @type ExtFourth: String
        # @param ExtFifth: 自定义5
        # @type ExtFifth: String
        # @param ExtSixth: 自定义6
        # @type ExtSixth: String
        # @param ExtSeventh: 自定义7
        # @type ExtSeventh: String
        # @param ExtEighth: 自定义8
        # @type ExtEighth: String
        # @param ExtNinth: 自定义9
        # @type ExtNinth: String
        # @param ExtTenth: 自定义10
        # @type ExtTenth: String
        # @param Granularity: 时间段
        # @type Granularity: String

        attr_accessor :ID, :StartTime, :EndTime, :Type, :Level, :Isp, :Area, :NetType, :Platform, :Device, :VersionNum, :ExtFirst, :ExtSecond, :ExtThird, :IsAbroad, :Browser, :Os, :Engine, :Brand, :From, :CostType, :Env, :NetStatus, :WebVitals, :ExtFourth, :ExtFifth, :ExtSixth, :ExtSeventh, :ExtEighth, :ExtNinth, :ExtTenth, :Granularity

        def initialize(id=nil, starttime=nil, endtime=nil, type=nil, level=nil, isp=nil, area=nil, nettype=nil, platform=nil, device=nil, versionnum=nil, extfirst=nil, extsecond=nil, extthird=nil, isabroad=nil, browser=nil, os=nil, engine=nil, brand=nil, from=nil, costtype=nil, env=nil, netstatus=nil, webvitals=nil, extfourth=nil, extfifth=nil, extsixth=nil, extseventh=nil, exteighth=nil, extninth=nil, exttenth=nil, granularity=nil)
          @ID = id
          @StartTime = starttime
          @EndTime = endtime
          @Type = type
          @Level = level
          @Isp = isp
          @Area = area
          @NetType = nettype
          @Platform = platform
          @Device = device
          @VersionNum = versionnum
          @ExtFirst = extfirst
          @ExtSecond = extsecond
          @ExtThird = extthird
          @IsAbroad = isabroad
          @Browser = browser
          @Os = os
          @Engine = engine
          @Brand = brand
          @From = from
          @CostType = costtype
          @Env = env
          @NetStatus = netstatus
          @WebVitals = webvitals
          @ExtFourth = extfourth
          @ExtFifth = extfifth
          @ExtSixth = extsixth
          @ExtSeventh = extseventh
          @ExtEighth = exteighth
          @ExtNinth = extninth
          @ExtTenth = exttenth
          @Granularity = granularity
        end

        def deserialize(params)
          @ID = params['ID']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Type = params['Type']
          @Level = params['Level']
          @Isp = params['Isp']
          @Area = params['Area']
          @NetType = params['NetType']
          @Platform = params['Platform']
          @Device = params['Device']
          @VersionNum = params['VersionNum']
          @ExtFirst = params['ExtFirst']
          @ExtSecond = params['ExtSecond']
          @ExtThird = params['ExtThird']
          @IsAbroad = params['IsAbroad']
          @Browser = params['Browser']
          @Os = params['Os']
          @Engine = params['Engine']
          @Brand = params['Brand']
          @From = params['From']
          @CostType = params['CostType']
          @Env = params['Env']
          @NetStatus = params['NetStatus']
          @WebVitals = params['WebVitals']
          @ExtFourth = params['ExtFourth']
          @ExtFifth = params['ExtFifth']
          @ExtSixth = params['ExtSixth']
          @ExtSeventh = params['ExtSeventh']
          @ExtEighth = params['ExtEighth']
          @ExtNinth = params['ExtNinth']
          @ExtTenth = params['ExtTenth']
          @Granularity = params['Granularity']
        end
      end

      # DescribeDataPerformancePageV2返回参数结构体
      class DescribeDataPerformancePageV2Response < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataPvUrlInfo请求参数结构体
      class DescribeDataPvUrlInfoRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: 查询类型（string）：当前后端实现固定按 from 聚合统计，未使用该字段（保留字段，传值不会影响结果）。
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型(tag 值):用于过滤/聚合字段 netType；枚举值：1(WiFi)、2(2G)、3(3G)、4(4G)、5(5G)、6(6G)、100(未知网络)。
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 显示是否海外,1表示海外，0表示非海外；默认值为空，查询所有。
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param Env: 环境
        # @type Env: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :Env

        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, env=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @Env = env
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @Env = params['Env']
        end
      end

      # DescribeDataPvUrlInfo返回参数结构体
      class DescribeDataPvUrlInfoResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataPvUrlStatistics请求参数结构体
      class DescribeDataPvUrlStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: allcount：性能视图，day：14天数据，vp：性能，ckuv：uv，ckpv：pv，condition：条件列表，nettype/version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：网络平台视图/Version视图/设备视图/ISP视图/地区视图/浏览器视图/ext1视图等
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型(tag 值):用于过滤/聚合字段 netType；枚举值：1(WiFi)、2(2G)、3(3G)、4(4G)、5(5G)、6(6G)、100(未知网络)。
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 显示是否海外,1表示海外，0表示非海外；默认值为空，查询所有。
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param Env: 环境
        # @type Env: String
        # @param GroupByType: group by 参数值枚举1:1m  2:5m  3:30m  4:1h
        #  5:1d
        # @type GroupByType: Integer
        # @param IsNewData: 1: 查询智研
        # 0: 走旧逻辑，已下线，勿使用
        # @type IsNewData: Integer

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :Env, :GroupByType, :IsNewData

        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, env=nil, groupbytype=nil, isnewdata=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @Env = env
          @GroupByType = groupbytype
          @IsNewData = isnewdata
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @Env = params['Env']
          @GroupByType = params['GroupByType']
          @IsNewData = params['IsNewData']
        end
      end

      # DescribeDataPvUrlStatistics返回参数结构体
      class DescribeDataPvUrlStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataPvUrlStatisticsV2请求参数结构体
      class DescribeDataPvUrlStatisticsV2Request < TencentCloud::Common::AbstractModel
        # @param StartTime: <p>开始时间</p>
        # @type StartTime: Integer
        # @param Type: <p>allcount：性能视图，day：14天数据，vp：性能，ckuv：uv，ckpv：pv，condition：条件列表，nettype/version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：网络平台视图/Version视图/设备视图/ISP视图/地区视图/浏览器视图/ext1视图等</p>
        # @type Type: String
        # @param EndTime: <p>结束时间</p>
        # @type EndTime: Integer
        # @param ID: <p>项目ID</p>
        # @type ID: Integer
        # @param ExtSecond: <p>自定义2</p>
        # @type ExtSecond: String
        # @param Engine: <p>浏览器引擎</p>
        # @type Engine: String
        # @param Isp: <p>运营商</p>
        # @type Isp: String
        # @param From: <p>来源页面， 可多选，用 “,” 隔开的 String</p>
        # @type From: String
        # @param Level: <p>日志等级</p>
        # @type Level: String
        # @param Brand: <p>品牌</p>
        # @type Brand: String
        # @param Area: <p>地区</p>
        # @type Area: String
        # @param VersionNum: <p>版本</p>
        # @type VersionNum: String
        # @param Platform: <p>平台</p>
        # @type Platform: String
        # @param ExtThird: <p>自定义3</p>
        # @type ExtThird: String
        # @param ExtFirst: <p>自定义1</p>
        # @type ExtFirst: String
        # @param NetType: <p>网络类型（1,2,3,4,5,100），1表示WIFI, 2表示2G, 3表示3G, 4表示4G, 5表示5G, 6表示6G, 100表示未知</p>
        # @type NetType: String
        # @param Device: <p>机型</p>
        # @type Device: String
        # @param IsAbroad: <p>显示是否海外,1表示海外，0表示非海外；默认值为空，查询所有。</p>
        # @type IsAbroad: String
        # @param Os: <p>操作系统</p>
        # @type Os: String
        # @param Browser: <p>浏览器</p>
        # @type Browser: String
        # @param Env: <p>环境</p>
        # @type Env: String
        # @param GroupByType: <p>group by 参数值枚举1:1m  2:5m  3:30m  4:1h<br> 5:1d</p>
        # @type GroupByType: Integer
        # @param IsNewData: <p>1: 查询智研<br>0: 走旧逻辑，已下线，勿使用</p>
        # @type IsNewData: Integer
        # @param ExtFourth: <p>自定义4</p>
        # @type ExtFourth: String
        # @param ExtFifth: <p>自定义5</p>
        # @type ExtFifth: String
        # @param ExtSixth: <p>自定义6</p>
        # @type ExtSixth: String
        # @param ExtSeventh: <p>自定义7</p>
        # @type ExtSeventh: String
        # @param ExtEighth: <p>自定义8</p>
        # @type ExtEighth: String
        # @param ExtNinth: <p>自定义9</p>
        # @type ExtNinth: String
        # @param ExtTenth: <p>自定义10</p>
        # @type ExtTenth: String
        # @param Granularity: <p>时间段</p>
        # @type Granularity: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :Env, :GroupByType, :IsNewData, :ExtFourth, :ExtFifth, :ExtSixth, :ExtSeventh, :ExtEighth, :ExtNinth, :ExtTenth, :Granularity

        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, env=nil, groupbytype=nil, isnewdata=nil, extfourth=nil, extfifth=nil, extsixth=nil, extseventh=nil, exteighth=nil, extninth=nil, exttenth=nil, granularity=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @Env = env
          @GroupByType = groupbytype
          @IsNewData = isnewdata
          @ExtFourth = extfourth
          @ExtFifth = extfifth
          @ExtSixth = extsixth
          @ExtSeventh = extseventh
          @ExtEighth = exteighth
          @ExtNinth = extninth
          @ExtTenth = exttenth
          @Granularity = granularity
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @Env = params['Env']
          @GroupByType = params['GroupByType']
          @IsNewData = params['IsNewData']
          @ExtFourth = params['ExtFourth']
          @ExtFifth = params['ExtFifth']
          @ExtSixth = params['ExtSixth']
          @ExtSeventh = params['ExtSeventh']
          @ExtEighth = params['ExtEighth']
          @ExtNinth = params['ExtNinth']
          @ExtTenth = params['ExtTenth']
          @Granularity = params['Granularity']
        end
      end

      # DescribeDataPvUrlStatisticsV2返回参数结构体
      class DescribeDataPvUrlStatisticsV2Response < TencentCloud::Common::AbstractModel
        # @param Result: <p>返回值</p>
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataReportCount请求参数结构体
      class DescribeDataReportCountRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ReportType: 上报类型（custom，event，log，miniProgramData，performance，pv，speed，webvitals）
        # @type ReportType: String
        # @param InstanceID: 实例ID
        # @type InstanceID: String

        attr_accessor :StartTime, :EndTime, :ID, :ReportType, :InstanceID

        def initialize(starttime=nil, endtime=nil, id=nil, reporttype=nil, instanceid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @ID = id
          @ReportType = reporttype
          @InstanceID = instanceid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ReportType = params['ReportType']
          @InstanceID = params['InstanceID']
        end
      end

      # DescribeDataReportCount返回参数结构体
      class DescribeDataReportCountResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataReportCountV2请求参数结构体
      class DescribeDataReportCountV2Request < TencentCloud::Common::AbstractModel
        # @param StartTime: <p>开始时间</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间</p>
        # @type EndTime: Integer
        # @param ID: <p>项目ID</p>
        # @type ID: Integer
        # @param ReportType: <p>上报类型（custom，event，log，miniProgramData，performance，pv，speed，webvitals）</p>
        # @type ReportType: String
        # @param InstanceID: <p>实例ID</p>
        # @type InstanceID: String

        attr_accessor :StartTime, :EndTime, :ID, :ReportType, :InstanceID

        def initialize(starttime=nil, endtime=nil, id=nil, reporttype=nil, instanceid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @ID = id
          @ReportType = reporttype
          @InstanceID = instanceid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ReportType = params['ReportType']
          @InstanceID = params['InstanceID']
        end
      end

      # DescribeDataReportCountV2返回参数结构体
      class DescribeDataReportCountV2Response < TencentCloud::Common::AbstractModel
        # @param Result: <p>返回值</p>
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeData请求参数结构体
      class DescribeDataRequest < TencentCloud::Common::AbstractModel
        # @param Query: 查询字符串
        # @type Query: String
        # @param ID: 项目ID
        # @type ID: Integer

        attr_accessor :Query, :ID

        def initialize(query=nil, id=nil)
          @Query = query
          @ID = id
        end

        def deserialize(params)
          @Query = params['Query']
          @ID = params['ID']
        end
      end

      # DescribeData返回参数结构体
      class DescribeDataResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回字符串
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataSetUrlStatistics请求参数结构体
      class DescribeDataSetUrlStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: allcount：性能视图，data：小程序，component：小程序相关，day：14天数据，nettype：网络/平台视图，performance：页面性能TOP视图，version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：ISP视图/地区视图/浏览器视图等
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型(tag 值):用于过滤/聚合字段 netType；枚举值：1(WiFi)、2(2G)、3(3G)、4(4G)、5(5G)、6(6G)、100(未知网络)。
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 显示是否海外,1表示海外，0表示非海外；默认值为空，查询所有。
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param CostType: 耗时/数据量口径："50"/"75"/"90"/"95"/"99"/"99.5" 分别表示 TP50/TP75/TP90/TP95/TP99/TP99.5（percentile2）；"avg" 表示均值（avg）。
        # @type CostType: String
        # @param Env: 环境
        # @type Env: String
        # @param PackageType: 小程序包类型（tag 值）：用于过滤字段 type（请求参数名为 PackageType）；取值由上报数据决定，可通过 Type=condition（show tag values）获取可选值集合。
        # @type PackageType: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :CostType, :Env, :PackageType

        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, costtype=nil, env=nil, packagetype=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @CostType = costtype
          @Env = env
          @PackageType = packagetype
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @CostType = params['CostType']
          @Env = params['Env']
          @PackageType = params['PackageType']
        end
      end

      # DescribeDataSetUrlStatistics返回参数结构体
      class DescribeDataSetUrlStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataSetUrlStatisticsV2请求参数结构体
      class DescribeDataSetUrlStatisticsV2Request < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: allcount：性能视图，data：小程序，component：小程序相关，day：14天数据，nettype：网络/平台视图，performance：页面性能TOP视图，version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：ISP视图/地区视图/浏览器视图等
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 显示是否海外,1表示海外，0表示非海外；默认值为空，查询所有。
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param CostType: 耗时计算
        # @type CostType: String
        # @param Env: 环境
        # @type Env: String
        # @param PackageType: 获取package
        # @type PackageType: String
        # @param ExtFourth: 自定义4
        # @type ExtFourth: String
        # @param ExtFifth: 自定义5
        # @type ExtFifth: String
        # @param ExtSixth: 自定义6
        # @type ExtSixth: String
        # @param ExtSeventh: 自定义7
        # @type ExtSeventh: String
        # @param ExtEighth: 自定义8
        # @type ExtEighth: String
        # @param ExtNinth: 自定义9
        # @type ExtNinth: String
        # @param ExtTenth: 自定义10
        # @type ExtTenth: String
        # @param Granularity: 时间段
        # @type Granularity: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :CostType, :Env, :PackageType, :ExtFourth, :ExtFifth, :ExtSixth, :ExtSeventh, :ExtEighth, :ExtNinth, :ExtTenth, :Granularity

        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, costtype=nil, env=nil, packagetype=nil, extfourth=nil, extfifth=nil, extsixth=nil, extseventh=nil, exteighth=nil, extninth=nil, exttenth=nil, granularity=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @CostType = costtype
          @Env = env
          @PackageType = packagetype
          @ExtFourth = extfourth
          @ExtFifth = extfifth
          @ExtSixth = extsixth
          @ExtSeventh = extseventh
          @ExtEighth = exteighth
          @ExtNinth = extninth
          @ExtTenth = exttenth
          @Granularity = granularity
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @CostType = params['CostType']
          @Env = params['Env']
          @PackageType = params['PackageType']
          @ExtFourth = params['ExtFourth']
          @ExtFifth = params['ExtFifth']
          @ExtSixth = params['ExtSixth']
          @ExtSeventh = params['ExtSeventh']
          @ExtEighth = params['ExtEighth']
          @ExtNinth = params['ExtNinth']
          @ExtTenth = params['ExtTenth']
          @Granularity = params['Granularity']
        end
      end

      # DescribeDataSetUrlStatisticsV2返回参数结构体
      class DescribeDataSetUrlStatisticsV2Response < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataStaticProject请求参数结构体
      class DescribeDataStaticProjectRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: allcount：性能视图，day：14天数据，condition：条件列表，area：请求速度分布，nettype/version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：网络平台视图/Version视图/设备视图/ISP视图/地区视图/浏览器视图/ext1视图等等
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级（1表示白名单日志，2表示一般日志，4表示错误日志，8表示Promise 错误，16表示Ajax 请求异常，32表示JS 加载异常，64表示图片加载异常，128表示css 加载异常，256表示console.error，512表示音视频资源异常，1024表示retcode 异常，2048表示aegis report，4096表示PV日志，8192表示自定义事件，16384表示小程序 页面不存在，32768表示websocket错误，65536表示js bridge错误）
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型（1,2,3,4,5,100），1表示WIFI, 2表示2G, 3表示3G, 4表示4G, 5表示5G, 6表示6G, 100表示未知。
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 显示是否海外,1表示海外，0表示非海外；默认值为空，查询所有。
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param CostType: 耗时口径："50"/"75"/"90"/"95"/"99"/"99.5" 分别表示 TP50/TP75/TP90/TP95/TP99/TP99.5（percentile2）；"avg" 表示均值（avg）。
        # @type CostType: String
        # @param Url: 来源
        # @type Url: Array
        # @param Env: 环境
        # @type Env: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :CostType, :Url, :Env

        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, costtype=nil, url=nil, env=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @CostType = costtype
          @Url = url
          @Env = env
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @CostType = params['CostType']
          @Url = params['Url']
          @Env = params['Env']
        end
      end

      # DescribeDataStaticProject返回参数结构体
      class DescribeDataStaticProjectResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataStaticProjectV2请求参数结构体
      class DescribeDataStaticProjectV2Request < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: allcount：性能视图，day：14天数据，condition：条件列表，area：请求速度分布，nettype/version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：网络平台视图/Version视图/设备视图/ISP视图/地区视图/浏览器视图/ext1视图等
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级（1表示白名单日志，2表示一般日志，4表示错误日志，8表示Promise 错误，16表示Ajax 请求异常，32表示JS 加载异常，64表示图片加载异常，128表示css 加载异常，256表示console.error，512表示音视频资源异常，1024表示retcode 异常，2048表示aegis report，4096表示PV日志，8192表示自定义事件，16384表示小程序 页面不存在，32768表示websocket错误，65536表示js bridge错误）
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型（1,2,3,4,5,100），1表示WIFI, 2表示2G, 3表示3G, 4表示4G, 5表示5G, 6表示6G, 100表示未知。
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 显示是否海外,1表示海外，0表示非海外；默认值为空，查询所有。
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param CostType: 耗时计算
        # @type CostType: String
        # @param Url: 来源
        # @type Url: Array
        # @param Env: 环境
        # @type Env: String
        # @param ExtFourth: 自定义4
        # @type ExtFourth: String
        # @param ExtFifth: 自定义5
        # @type ExtFifth: String
        # @param ExtSixth: 自定义6
        # @type ExtSixth: String
        # @param ExtSeventh: 自定义7
        # @type ExtSeventh: String
        # @param ExtEighth: 自定义8
        # @type ExtEighth: String
        # @param ExtNinth: 自定义9
        # @type ExtNinth: String
        # @param ExtTenth: 自定义10
        # @type ExtTenth: String
        # @param Granularity: 时间段
        # @type Granularity: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :CostType, :Url, :Env, :ExtFourth, :ExtFifth, :ExtSixth, :ExtSeventh, :ExtEighth, :ExtNinth, :ExtTenth, :Granularity

        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, costtype=nil, url=nil, env=nil, extfourth=nil, extfifth=nil, extsixth=nil, extseventh=nil, exteighth=nil, extninth=nil, exttenth=nil, granularity=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @CostType = costtype
          @Url = url
          @Env = env
          @ExtFourth = extfourth
          @ExtFifth = extfifth
          @ExtSixth = extsixth
          @ExtSeventh = extseventh
          @ExtEighth = exteighth
          @ExtNinth = extninth
          @ExtTenth = exttenth
          @Granularity = granularity
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @CostType = params['CostType']
          @Url = params['Url']
          @Env = params['Env']
          @ExtFourth = params['ExtFourth']
          @ExtFifth = params['ExtFifth']
          @ExtSixth = params['ExtSixth']
          @ExtSeventh = params['ExtSeventh']
          @ExtEighth = params['ExtEighth']
          @ExtNinth = params['ExtNinth']
          @ExtTenth = params['ExtTenth']
          @Granularity = params['Granularity']
        end
      end

      # DescribeDataStaticProjectV2返回参数结构体
      class DescribeDataStaticProjectV2Response < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataStaticResource请求参数结构体
      class DescribeDataStaticResourceRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: top：资源top视图，count40x：40X视图，nettype/version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：网络平台视图/Version视图/设备视图/ISP视图/地区视图/浏览器视图//ext1视图等等
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型(tag 值):用于过滤/聚合字段 netType；枚举值：1(WiFi)、2(2G)、3(3G)、4(4G)、5(5G)、6(6G)、100(未知网络)。
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 显示是否海外,1表示海外，0表示非海外；默认值为空，查询所有。
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param CostType: 耗时口径："50"/"75"/"90"/"95"/"99"/"99.5" 分别表示 TP50/TP75/TP90/TP95/TP99/TP99.5（percentile2）；"avg" 表示均值（avg）。
        # @type CostType: String
        # @param Url: 来源
        # @type Url: String
        # @param Env: 环境
        # @type Env: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :CostType, :Url, :Env

        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, costtype=nil, url=nil, env=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @CostType = costtype
          @Url = url
          @Env = env
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @CostType = params['CostType']
          @Url = params['Url']
          @Env = params['Env']
        end
      end

      # DescribeDataStaticResource返回参数结构体
      class DescribeDataStaticResourceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataStaticResourceV2请求参数结构体
      class DescribeDataStaticResourceV2Request < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: top：资源top视图，count40x：40X视图，nettype/version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：网络平台视图/Version视图/设备视图/ISP视图/地区视图/浏览器视图//ext1视图等
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 显示是否海外,1表示海外，0表示非海外；默认值为空，查询所有。
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param CostType: 耗时计算方式
        # @type CostType: String
        # @param Url: 来源
        # @type Url: String
        # @param Env: 环境
        # @type Env: String
        # @param ExtFourth: 自定义4
        # @type ExtFourth: String
        # @param ExtFifth: 自定义5
        # @type ExtFifth: String
        # @param ExtSixth: 自定义6
        # @type ExtSixth: String
        # @param ExtSeventh: 自定义7
        # @type ExtSeventh: String
        # @param ExtEighth: 自定义8
        # @type ExtEighth: String
        # @param ExtNinth: 自定义9
        # @type ExtNinth: String
        # @param ExtTenth: 自定义10
        # @type ExtTenth: String
        # @param Granularity: 时间段
        # @type Granularity: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :CostType, :Url, :Env, :ExtFourth, :ExtFifth, :ExtSixth, :ExtSeventh, :ExtEighth, :ExtNinth, :ExtTenth, :Granularity

        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, costtype=nil, url=nil, env=nil, extfourth=nil, extfifth=nil, extsixth=nil, extseventh=nil, exteighth=nil, extninth=nil, exttenth=nil, granularity=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @CostType = costtype
          @Url = url
          @Env = env
          @ExtFourth = extfourth
          @ExtFifth = extfifth
          @ExtSixth = extsixth
          @ExtSeventh = extseventh
          @ExtEighth = exteighth
          @ExtNinth = extninth
          @ExtTenth = exttenth
          @Granularity = granularity
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @CostType = params['CostType']
          @Url = params['Url']
          @Env = params['Env']
          @ExtFourth = params['ExtFourth']
          @ExtFifth = params['ExtFifth']
          @ExtSixth = params['ExtSixth']
          @ExtSeventh = params['ExtSeventh']
          @ExtEighth = params['ExtEighth']
          @ExtNinth = params['ExtNinth']
          @ExtTenth = params['ExtTenth']
          @Granularity = params['Granularity']
        end
      end

      # DescribeDataStaticResourceV2返回参数结构体
      class DescribeDataStaticResourceV2Response < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataStaticUrl请求参数结构体
      class DescribeDataStaticUrlRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: pagepv：性能视图，nettype/version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：网络平台视图/Version视图/设备视图/ISP视图/地区视图/浏览器视图//ext1视图等等
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型(tag 值):用于过滤/聚合字段 netType；枚举值：1(WiFi)、2(2G)、3(3G)、4(4G)、5(5G)、6(6G)、100(未知网络)。
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 显示是否海外,1表示海外，0表示非海外；默认值为空，查询所有。
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param CostType: 耗时口径："50"/"75"/"90"/"95"/"99"/"99.5" 分别表示 TP50/TP75/TP90/TP95/TP99/TP99.5（percentile2）；"avg" 表示均值（avg）。
        # @type CostType: String
        # @param Url: 来源
        # @type Url: String
        # @param Env: 环境
        # @type Env: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :CostType, :Url, :Env

        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, costtype=nil, url=nil, env=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @CostType = costtype
          @Url = url
          @Env = env
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @CostType = params['CostType']
          @Url = params['Url']
          @Env = params['Env']
        end
      end

      # DescribeDataStaticUrl返回参数结构体
      class DescribeDataStaticUrlResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataStaticUrlV2请求参数结构体
      class DescribeDataStaticUrlV2Request < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: pagepv：性能视图，nettype/version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：网络平台视图/Version视图/设备视图/ISP视图/地区视图/浏览器视图//ext1视图等
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 显示是否海外,1表示海外，0表示非海外；默认值为空，查询所有。
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param CostType: 耗时计算方式
        # @type CostType: String
        # @param Url: 来源
        # @type Url: String
        # @param Env: 环境
        # @type Env: String
        # @param ExtFourth: 自定义4
        # @type ExtFourth: String
        # @param ExtFifth: 自定义5
        # @type ExtFifth: String
        # @param ExtSixth: 自定义6
        # @type ExtSixth: String
        # @param ExtSeventh: 自定义7
        # @type ExtSeventh: String
        # @param ExtEighth: 自定义8
        # @type ExtEighth: String
        # @param ExtNinth: 自定义9
        # @type ExtNinth: String
        # @param ExtTenth: 自定义10
        # @type ExtTenth: String
        # @param Granularity: 时间段
        # @type Granularity: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :CostType, :Url, :Env, :ExtFourth, :ExtFifth, :ExtSixth, :ExtSeventh, :ExtEighth, :ExtNinth, :ExtTenth, :Granularity

        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, costtype=nil, url=nil, env=nil, extfourth=nil, extfifth=nil, extsixth=nil, extseventh=nil, exteighth=nil, extninth=nil, exttenth=nil, granularity=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @CostType = costtype
          @Url = url
          @Env = env
          @ExtFourth = extfourth
          @ExtFifth = extfifth
          @ExtSixth = extsixth
          @ExtSeventh = extseventh
          @ExtEighth = exteighth
          @ExtNinth = extninth
          @ExtTenth = exttenth
          @Granularity = granularity
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @CostType = params['CostType']
          @Url = params['Url']
          @Env = params['Env']
          @ExtFourth = params['ExtFourth']
          @ExtFifth = params['ExtFifth']
          @ExtSixth = params['ExtSixth']
          @ExtSeventh = params['ExtSeventh']
          @ExtEighth = params['ExtEighth']
          @ExtNinth = params['ExtNinth']
          @ExtTenth = params['ExtTenth']
          @Granularity = params['Granularity']
        end
      end

      # DescribeDataStaticUrlV2返回参数结构体
      class DescribeDataStaticUrlV2Response < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataWebVitalsPage请求参数结构体
      class DescribeDataWebVitalsPageRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 查询维度：from=按页面来源(from)聚合输出；其他值/空值=输出整体汇总。
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Type: 按页面来源分组（group by from），返回每个页面的 LCP/FID/CLS/FCP
        # @type Type: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型(tag 值):用于过滤/聚合字段 netType；枚举值：1(WiFi)、2(2G)、3(3G)、4(4G)、5(5G)、6(6G)、100(未知网络)。
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 显示是否海外,1表示海外，0表示非海外；默认值为空，查询所有。
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param CostType: Web Vitals 口径："50"/"75"/"90"/"95"/"99"/"99.5" 分别表示 TP50/TP75/TP90/TP95/TP99/TP99.5（percentile2）；"avg" 表示均值（avg）。
        # @type CostType: String
        # @param Env: 环境
        # @type Env: String

        attr_accessor :StartTime, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Type, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :CostType, :Env

        def initialize(starttime=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, type=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, costtype=nil, env=nil)
          @StartTime = starttime
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Type = type
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @CostType = costtype
          @Env = env
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Type = params['Type']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @CostType = params['CostType']
          @Env = params['Env']
        end
      end

      # DescribeDataWebVitalsPage返回参数结构体
      class DescribeDataWebVitalsPageResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataWebVitalsPageV2请求参数结构体
      class DescribeDataWebVitalsPageV2Request < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Type: 类型暂无
        # @type Type: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 显示是否海外,1表示海外，0表示非海外；默认值为空，查询所有。
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param CostType: 耗时计算
        # @type CostType: String
        # @param Env: 环境
        # @type Env: String
        # @param Granularity: 时间段
        # @type Granularity: String

        attr_accessor :StartTime, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Type, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :CostType, :Env, :Granularity

        def initialize(starttime=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, type=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, costtype=nil, env=nil, granularity=nil)
          @StartTime = starttime
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Type = type
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @CostType = costtype
          @Env = env
          @Granularity = granularity
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Type = params['Type']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @CostType = params['CostType']
          @Env = params['Env']
          @Granularity = params['Granularity']
        end
      end

      # DescribeDataWebVitalsPageV2返回参数结构体
      class DescribeDataWebVitalsPageV2Response < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeError请求参数结构体
      class DescribeErrorRequest < TencentCloud::Common::AbstractModel
        # @param Date: 日期
        # @type Date: String
        # @param ID: 项目ID
        # @type ID: Integer

        attr_accessor :Date, :ID

        def initialize(date=nil, id=nil)
          @Date = date
          @ID = id
        end

        def deserialize(params)
          @Date = params['Date']
          @ID = params['ID']
        end
      end

      # DescribeError返回参数结构体
      class DescribeErrorResponse < TencentCloud::Common::AbstractModel
        # @param Content: 内容
        # @type Content: String
        # @param ID: 项目ID
        # @type ID: Integer
        # @param CreateTime: 时间
        # @type CreateTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Content, :ID, :CreateTime, :RequestId

        def initialize(content=nil, id=nil, createtime=nil, requestid=nil)
          @Content = content
          @ID = id
          @CreateTime = createtime
          @RequestId = requestid
        end

        def deserialize(params)
          @Content = params['Content']
          @ID = params['ID']
          @CreateTime = params['CreateTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeExceptionDetail请求参数结构体
      class DescribeExceptionDetailRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: <p>产品Id</p>
        # @type ProductId: String
        # @param ClientIdentify: <p>消息唯一标识</p>
        # @type ClientIdentify: String
        # @param ClusterStackType: <p>集群堆栈类型</p>
        # @type ClusterStackType: Integer
        # @param Feature: <p>特征</p>
        # @type Feature: String
        # @param IssueType: <p>问题类型</p>
        # @type IssueType: Integer
        # @param StartEventTime: <p>事件开始时间</p>
        # @type StartEventTime: Integer
        # @param EndEventTime: <p>事件结束时间</p>
        # @type EndEventTime: Integer
        # @param ExtraData: <p>拓展数据</p>
        # @type ExtraData: String
        # @param RequestHeader: <p>请求头</p>
        # @type RequestHeader: String

        attr_accessor :ProductId, :ClientIdentify, :ClusterStackType, :Feature, :IssueType, :StartEventTime, :EndEventTime, :ExtraData, :RequestHeader

        def initialize(productid=nil, clientidentify=nil, clusterstacktype=nil, feature=nil, issuetype=nil, starteventtime=nil, endeventtime=nil, extradata=nil, requestheader=nil)
          @ProductId = productid
          @ClientIdentify = clientidentify
          @ClusterStackType = clusterstacktype
          @Feature = feature
          @IssueType = issuetype
          @StartEventTime = starteventtime
          @EndEventTime = endeventtime
          @ExtraData = extradata
          @RequestHeader = requestheader
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ClientIdentify = params['ClientIdentify']
          @ClusterStackType = params['ClusterStackType']
          @Feature = params['Feature']
          @IssueType = params['IssueType']
          @StartEventTime = params['StartEventTime']
          @EndEventTime = params['EndEventTime']
          @ExtraData = params['ExtraData']
          @RequestHeader = params['RequestHeader']
        end
      end

      # DescribeExceptionDetail返回参数结构体
      class DescribeExceptionDetailResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回值</p>
        # @type Data: String
        # @param Code: <p>状态码</p>
        # @type Code: Integer
        # @param Message: <p>消息</p>
        # @type Message: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Code, :Message, :RequestId

        def initialize(data=nil, code=nil, message=nil, requestid=nil)
          @Data = data
          @Code = code
          @Message = message
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @Code = params['Code']
          @Message = params['Message']
          @RequestId = params['RequestId']
        end
      end

      # DescribeExceptionReportList请求参数结构体
      class DescribeExceptionReportListRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: <p>产品Id</p>
        # @type ProductId: String
        # @param FormListString: <p>接口调试专用，当 token 为空时，以这里的 value 作为筛选表单信息</p>
        # @type FormListString: String
        # @param ParamToken: <p>提供给前端使用，当填写本字段时，会覆盖 form_list 的值</p>
        # @type ParamToken: String
        # @param IssueType: <p>问题类型</p>
        # @type IssueType: Integer
        # @param SortField: <p>排序字段</p>
        # @type SortField: String
        # @param SortType: <p>排序方式</p>
        # @type SortType: String
        # @param Feature: <p>特征</p>
        # @type Feature: String
        # @param PageSize: <p>每页数目</p>
        # @type PageSize: Integer
        # @param PageNumber: <p>页码</p>
        # @type PageNumber: Integer
        # @param ExtraData: <p>拓展字段</p>
        # @type ExtraData: String
        # @param RequestHeader: <p>请求头</p>
        # @type RequestHeader: String

        attr_accessor :ProductId, :FormListString, :ParamToken, :IssueType, :SortField, :SortType, :Feature, :PageSize, :PageNumber, :ExtraData, :RequestHeader

        def initialize(productid=nil, formliststring=nil, paramtoken=nil, issuetype=nil, sortfield=nil, sorttype=nil, feature=nil, pagesize=nil, pagenumber=nil, extradata=nil, requestheader=nil)
          @ProductId = productid
          @FormListString = formliststring
          @ParamToken = paramtoken
          @IssueType = issuetype
          @SortField = sortfield
          @SortType = sorttype
          @Feature = feature
          @PageSize = pagesize
          @PageNumber = pagenumber
          @ExtraData = extradata
          @RequestHeader = requestheader
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @FormListString = params['FormListString']
          @ParamToken = params['ParamToken']
          @IssueType = params['IssueType']
          @SortField = params['SortField']
          @SortType = params['SortType']
          @Feature = params['Feature']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @ExtraData = params['ExtraData']
          @RequestHeader = params['RequestHeader']
        end
      end

      # DescribeExceptionReportList返回参数结构体
      class DescribeExceptionReportListResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回值</p>
        # @type Data: String
        # @param Code: <p>状态码</p>
        # @type Code: Integer
        # @param Message: <p>消息</p>
        # @type Message: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Code, :Message, :RequestId

        def initialize(data=nil, code=nil, message=nil, requestid=nil)
          @Data = data
          @Code = code
          @Message = message
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @Code = params['Code']
          @Message = params['Message']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFOOMMallocProblemDetail请求参数结构体
      class DescribeFOOMMallocProblemDetailRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: <p>产品Id</p>
        # @type ProductId: String
        # @param ClientIdentify: <p>消息唯一标识</p>
        # @type ClientIdentify: String
        # @param Feature: <p>特征</p>
        # @type Feature: String
        # @param StartEventTime: <p>事件开始时间</p>
        # @type StartEventTime: Integer
        # @param EndEventTime: <p>事件结束时间</p>
        # @type EndEventTime: Integer
        # @param ExtraData: <p>拓展数据</p>
        # @type ExtraData: String
        # @param RequestHeader: <p>请求头</p>
        # @type RequestHeader: String

        attr_accessor :ProductId, :ClientIdentify, :Feature, :StartEventTime, :EndEventTime, :ExtraData, :RequestHeader

        def initialize(productid=nil, clientidentify=nil, feature=nil, starteventtime=nil, endeventtime=nil, extradata=nil, requestheader=nil)
          @ProductId = productid
          @ClientIdentify = clientidentify
          @Feature = feature
          @StartEventTime = starteventtime
          @EndEventTime = endeventtime
          @ExtraData = extradata
          @RequestHeader = requestheader
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ClientIdentify = params['ClientIdentify']
          @Feature = params['Feature']
          @StartEventTime = params['StartEventTime']
          @EndEventTime = params['EndEventTime']
          @ExtraData = params['ExtraData']
          @RequestHeader = params['RequestHeader']
        end
      end

      # DescribeFOOMMallocProblemDetail返回参数结构体
      class DescribeFOOMMallocProblemDetailResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回值</p>
        # @type Data: String
        # @param Code: <p>状态码</p>
        # @type Code: Integer
        # @param Message: <p>消息</p>
        # @type Message: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Code, :Message, :RequestId

        def initialize(data=nil, code=nil, message=nil, requestid=nil)
          @Data = data
          @Code = code
          @Message = message
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @Code = params['Code']
          @Message = params['Message']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFOOMMallocProblemList请求参数结构体
      class DescribeFOOMMallocProblemListRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: <p>产品Id</p>
        # @type ProductId: String
        # @param ParamToken: <p>提供给前端使用，当填写本字段时，会覆盖 formlist 的值</p>
        # @type ParamToken: String
        # @param FormListString: <p>接口调试专用，当 token 为空时，以这里的 value 作为筛选表单信息</p>
        # @type FormListString: String
        # @param PageNumber: <p>当前页码</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页展示最大数量</p>
        # @type PageSize: Integer
        # @param SortField: <p>排序字段</p>
        # @type SortField: String
        # @param SortType: <p>排序类型</p>
        # @type SortType: String
        # @param ExtraData: <p>拓展数据</p>
        # @type ExtraData: String
        # @param RequestHeader: <p>请求头</p>
        # @type RequestHeader: String

        attr_accessor :ProductId, :ParamToken, :FormListString, :PageNumber, :PageSize, :SortField, :SortType, :ExtraData, :RequestHeader

        def initialize(productid=nil, paramtoken=nil, formliststring=nil, pagenumber=nil, pagesize=nil, sortfield=nil, sorttype=nil, extradata=nil, requestheader=nil)
          @ProductId = productid
          @ParamToken = paramtoken
          @FormListString = formliststring
          @PageNumber = pagenumber
          @PageSize = pagesize
          @SortField = sortfield
          @SortType = sorttype
          @ExtraData = extradata
          @RequestHeader = requestheader
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ParamToken = params['ParamToken']
          @FormListString = params['FormListString']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @SortField = params['SortField']
          @SortType = params['SortType']
          @ExtraData = params['ExtraData']
          @RequestHeader = params['RequestHeader']
        end
      end

      # DescribeFOOMMallocProblemList返回参数结构体
      class DescribeFOOMMallocProblemListResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回值</p>
        # @type Data: String
        # @param Message: <p>消息</p>
        # @type Message: String
        # @param Code: <p>状态码</p>
        # @type Code: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Message, :Code, :RequestId

        def initialize(data=nil, message=nil, code=nil, requestid=nil)
          @Data = data
          @Message = message
          @Code = code
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @Message = params['Message']
          @Code = params['Code']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFOOMMallocReportList请求参数结构体
      class DescribeFOOMMallocReportListRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: <p>产品Id</p>
        # @type ProductId: String
        # @param FormListString: <p>接口调试专用，当 token 为空时，以这里的 value 作为筛选表单信息</p>
        # @type FormListString: String
        # @param ParamToken: <p>提供给前端使用，当填写本字段时，会覆盖 formlist 的值</p>
        # @type ParamToken: String
        # @param Feature: <p>特征</p>
        # @type Feature: String
        # @param PageNumber: <p>当前页码</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页展示最大数量</p>
        # @type PageSize: Integer
        # @param SortField: <p>排序字段</p>
        # @type SortField: String
        # @param SortType: <p>排序类型</p>
        # @type SortType: String
        # @param ExtraData: <p>拓展数据</p>
        # @type ExtraData: String
        # @param RequestHeader: <p>请求头</p>
        # @type RequestHeader: String

        attr_accessor :ProductId, :FormListString, :ParamToken, :Feature, :PageNumber, :PageSize, :SortField, :SortType, :ExtraData, :RequestHeader

        def initialize(productid=nil, formliststring=nil, paramtoken=nil, feature=nil, pagenumber=nil, pagesize=nil, sortfield=nil, sorttype=nil, extradata=nil, requestheader=nil)
          @ProductId = productid
          @FormListString = formliststring
          @ParamToken = paramtoken
          @Feature = feature
          @PageNumber = pagenumber
          @PageSize = pagesize
          @SortField = sortfield
          @SortType = sorttype
          @ExtraData = extradata
          @RequestHeader = requestheader
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @FormListString = params['FormListString']
          @ParamToken = params['ParamToken']
          @Feature = params['Feature']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @SortField = params['SortField']
          @SortType = params['SortType']
          @ExtraData = params['ExtraData']
          @RequestHeader = params['RequestHeader']
        end
      end

      # DescribeFOOMMallocReportList返回参数结构体
      class DescribeFOOMMallocReportListResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回值</p>
        # @type Data: String
        # @param Message: <p>消息</p>
        # @type Message: String
        # @param Code: <p>状态码</p>
        # @type Code: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Message, :Code, :RequestId

        def initialize(data=nil, message=nil, code=nil, requestid=nil)
          @Data = data
          @Message = message
          @Code = code
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @Message = params['Message']
          @Code = params['Code']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFOOMProblemDetail请求参数结构体
      class DescribeFOOMProblemDetailRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: <p>产品Id</p>
        # @type ProductId: String
        # @param ClientIdentify: <p>消息唯一标识</p>
        # @type ClientIdentify: String
        # @param Feature: <p>特征</p>
        # @type Feature: String
        # @param StartEventTime: <p>事件开始时间</p>
        # @type StartEventTime: Integer
        # @param EndEventTime: <p>事件结束时间</p>
        # @type EndEventTime: Integer
        # @param ExtraData: <p>拓展数据</p>
        # @type ExtraData: String
        # @param RequestHeader: <p>请求头</p>
        # @type RequestHeader: String

        attr_accessor :ProductId, :ClientIdentify, :Feature, :StartEventTime, :EndEventTime, :ExtraData, :RequestHeader

        def initialize(productid=nil, clientidentify=nil, feature=nil, starteventtime=nil, endeventtime=nil, extradata=nil, requestheader=nil)
          @ProductId = productid
          @ClientIdentify = clientidentify
          @Feature = feature
          @StartEventTime = starteventtime
          @EndEventTime = endeventtime
          @ExtraData = extradata
          @RequestHeader = requestheader
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ClientIdentify = params['ClientIdentify']
          @Feature = params['Feature']
          @StartEventTime = params['StartEventTime']
          @EndEventTime = params['EndEventTime']
          @ExtraData = params['ExtraData']
          @RequestHeader = params['RequestHeader']
        end
      end

      # DescribeFOOMProblemDetail返回参数结构体
      class DescribeFOOMProblemDetailResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回值</p>
        # @type Data: String
        # @param Code: <p>状态码</p>
        # @type Code: Integer
        # @param Message: <p>消息</p>
        # @type Message: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Code, :Message, :RequestId

        def initialize(data=nil, code=nil, message=nil, requestid=nil)
          @Data = data
          @Code = code
          @Message = message
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @Code = params['Code']
          @Message = params['Message']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFOOMProblemList请求参数结构体
      class DescribeFOOMProblemListRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: <p>产品Id</p>
        # @type ProductId: String
        # @param ParamToken: <p>提供给前端使用，当填写本字段时，会覆盖 formlist 的值</p>
        # @type ParamToken: String
        # @param FormListString: <p>接口调试专用，当 token 为空时，以这里的 value 作为筛选表单信息</p>
        # @type FormListString: String
        # @param PageNumber: <p>当前页码</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页展示最大数量</p>
        # @type PageSize: Integer
        # @param SortField: <p>排序字段</p>
        # @type SortField: String
        # @param SortType: <p>排序类型</p>
        # @type SortType: String
        # @param ExtraData: <p>拓展数据</p>
        # @type ExtraData: String
        # @param RequestHeader: <p>请求头</p>
        # @type RequestHeader: String

        attr_accessor :ProductId, :ParamToken, :FormListString, :PageNumber, :PageSize, :SortField, :SortType, :ExtraData, :RequestHeader

        def initialize(productid=nil, paramtoken=nil, formliststring=nil, pagenumber=nil, pagesize=nil, sortfield=nil, sorttype=nil, extradata=nil, requestheader=nil)
          @ProductId = productid
          @ParamToken = paramtoken
          @FormListString = formliststring
          @PageNumber = pagenumber
          @PageSize = pagesize
          @SortField = sortfield
          @SortType = sorttype
          @ExtraData = extradata
          @RequestHeader = requestheader
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ParamToken = params['ParamToken']
          @FormListString = params['FormListString']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @SortField = params['SortField']
          @SortType = params['SortType']
          @ExtraData = params['ExtraData']
          @RequestHeader = params['RequestHeader']
        end
      end

      # DescribeFOOMProblemList返回参数结构体
      class DescribeFOOMProblemListResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回值</p>
        # @type Data: String
        # @param Message: <p>消息</p>
        # @type Message: String
        # @param Code: <p>状态码</p>
        # @type Code: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Message, :Code, :RequestId

        def initialize(data=nil, message=nil, code=nil, requestid=nil)
          @Data = data
          @Message = message
          @Code = code
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @Message = params['Message']
          @Code = params['Code']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFOOMReportList请求参数结构体
      class DescribeFOOMReportListRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: <p>产品Id</p>
        # @type ProductId: String
        # @param FormListString: <p>接口调试专用，当 token 为空时，以这里的 value 作为筛选表单信息</p>
        # @type FormListString: String
        # @param ParamToken: <p>提供给前端使用，当填写本字段时，会覆盖 formlist 的值</p>
        # @type ParamToken: String
        # @param Feature: <p>特征</p>
        # @type Feature: String
        # @param PageNumber: <p>当前页码</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页展示最大数量</p>
        # @type PageSize: Integer
        # @param SortField: <p>排序字段</p>
        # @type SortField: String
        # @param SortType: <p>排序类型</p>
        # @type SortType: String
        # @param ExtraData: <p>拓展数据</p>
        # @type ExtraData: String
        # @param RequestHeader: <p>请求头</p>
        # @type RequestHeader: String

        attr_accessor :ProductId, :FormListString, :ParamToken, :Feature, :PageNumber, :PageSize, :SortField, :SortType, :ExtraData, :RequestHeader

        def initialize(productid=nil, formliststring=nil, paramtoken=nil, feature=nil, pagenumber=nil, pagesize=nil, sortfield=nil, sorttype=nil, extradata=nil, requestheader=nil)
          @ProductId = productid
          @FormListString = formliststring
          @ParamToken = paramtoken
          @Feature = feature
          @PageNumber = pagenumber
          @PageSize = pagesize
          @SortField = sortfield
          @SortType = sorttype
          @ExtraData = extradata
          @RequestHeader = requestheader
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @FormListString = params['FormListString']
          @ParamToken = params['ParamToken']
          @Feature = params['Feature']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @SortField = params['SortField']
          @SortType = params['SortType']
          @ExtraData = params['ExtraData']
          @RequestHeader = params['RequestHeader']
        end
      end

      # DescribeFOOMReportList返回参数结构体
      class DescribeFOOMReportListResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回值</p>
        # @type Data: String
        # @param Message: <p>消息</p>
        # @type Message: String
        # @param Code: <p>状态码</p>
        # @type Code: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Message, :Code, :RequestId

        def initialize(data=nil, message=nil, code=nil, requestid=nil)
          @Data = data
          @Message = message
          @Code = code
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @Message = params['Message']
          @Code = params['Code']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFieldTransformRules请求参数结构体
      class DescribeFieldTransformRulesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: <p>项目id</p>
        # @type ProjectId: Integer
        # @param Offset: <p>偏移</p>
        # @type Offset: Integer
        # @param Limit: <p>限制</p>
        # @type Limit: Integer

        attr_accessor :ProjectId, :Offset, :Limit

        def initialize(projectid=nil, offset=nil, limit=nil)
          @ProjectId = projectid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeFieldTransformRules返回参数结构体
      class DescribeFieldTransformRulesResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>结果</p>
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFieldValues请求参数结构体
      class DescribeFieldValuesRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用id</p>
        # @type AppId: String
        # @param StartTime: <p>开始时间</p><p>单位：毫秒</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间</p><p>单位：毫秒</p>
        # @type EndTime: Integer
        # @param FieldName: <p>字段名</p>
        # @type FieldName: String
        # @param Limit: <p>数量限制</p>
        # @type Limit: Integer
        # @param Filters: <p>过滤条件</p>
        # @type Filters: String
        # @param Category: <p>事件分类</p>
        # @type Category: String
        # @param Prefix: <p>可选。按前缀过滤字段去重结果。查询 user_id 或 device_id 且开启 StrictPiiPrefix 时必填，去除首尾空格后长度须不少于 2。</p>
        # @type Prefix: String
        # @param StrictPiiPrefix: <p>用于采样配置，是否对 user_id、device_id 强制前缀匹配。为 true 时必须同时传入合法 Prefix，否则返回 InvalidParameter，且不会返回无前缀的全量去重列表。为 false 或不传时，按字段返回热门去重值，行为与历史接口一致。</p><p>默认值：false</p>
        # @type StrictPiiPrefix: Boolean
        # @param Scope: <p>查询口径。可选。只允许空或 event。Issue 标签分布传 event。为 event 时不能同时传 HasError、MinDuration、MaxDuration，也不能把 Category 设为 session。</p>
        # @type Scope: String
        # @param HasError: <p>是否只看有错误的会话。可选。不传表示不过滤。Scope 为 event 时不能传。</p>
        # @type HasError: Boolean
        # @param MinDuration: <p>会话最短时长，单位毫秒。可选。0 或不传表示不限制。Scope 为 event 时不能传。</p>
        # @type MinDuration: Integer
        # @param MaxDuration: <p>会话最长时长，单位毫秒。可选。0 或不传表示不限制。Scope 为 event 时不能传。</p>
        # @type MaxDuration: Integer

        attr_accessor :AppId, :StartTime, :EndTime, :FieldName, :Limit, :Filters, :Category, :Prefix, :StrictPiiPrefix, :Scope, :HasError, :MinDuration, :MaxDuration

        def initialize(appid=nil, starttime=nil, endtime=nil, fieldname=nil, limit=nil, filters=nil, category=nil, prefix=nil, strictpiiprefix=nil, scope=nil, haserror=nil, minduration=nil, maxduration=nil)
          @AppId = appid
          @StartTime = starttime
          @EndTime = endtime
          @FieldName = fieldname
          @Limit = limit
          @Filters = filters
          @Category = category
          @Prefix = prefix
          @StrictPiiPrefix = strictpiiprefix
          @Scope = scope
          @HasError = haserror
          @MinDuration = minduration
          @MaxDuration = maxduration
        end

        def deserialize(params)
          @AppId = params['AppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @FieldName = params['FieldName']
          @Limit = params['Limit']
          @Filters = params['Filters']
          @Category = params['Category']
          @Prefix = params['Prefix']
          @StrictPiiPrefix = params['StrictPiiPrefix']
          @Scope = params['Scope']
          @HasError = params['HasError']
          @MinDuration = params['MinDuration']
          @MaxDuration = params['MaxDuration']
        end
      end

      # DescribeFieldValues返回参数结构体
      class DescribeFieldValuesResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>返回结果</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFileCertificate请求参数结构体
      class DescribeFileCertificateRequest < TencentCloud::Common::AbstractModel
        # @param Timeout: 超时时间，不填默认是 5 分钟
        # @type Timeout: Integer
        # @param FileType: bucket类型，不填默认1:web，2:app
        # @type FileType: Integer
        # @param ID: ProjectID
        # @type ID: Integer
        # @param RegionID: reigon对应的id
        # @type RegionID: Integer

        attr_accessor :Timeout, :FileType, :ID, :RegionID

        def initialize(timeout=nil, filetype=nil, id=nil, regionid=nil)
          @Timeout = timeout
          @FileType = filetype
          @ID = id
          @RegionID = regionid
        end

        def deserialize(params)
          @Timeout = params['Timeout']
          @FileType = params['FileType']
          @ID = params['ID']
          @RegionID = params['RegionID']
        end
      end

      # DescribeFileCertificate返回参数结构体
      class DescribeFileCertificateResponse < TencentCloud::Common::AbstractModel
        # @param SecretKey: 临时密钥key
        # @type SecretKey: String
        # @param SecretID: 临时密钥 id
        # @type SecretID: String
        # @param SessionToken: 临时密钥临时 token
        # @type SessionToken: String
        # @param StartTime: 开始时间戳
        # @type StartTime: Integer
        # @param ExpiredTime: 过期时间戳
        # @type ExpiredTime: Integer
        # @param BucketAddress: 桶地址
        # @type BucketAddress: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecretKey, :SecretID, :SessionToken, :StartTime, :ExpiredTime, :BucketAddress, :RequestId

        def initialize(secretkey=nil, secretid=nil, sessiontoken=nil, starttime=nil, expiredtime=nil, bucketaddress=nil, requestid=nil)
          @SecretKey = secretkey
          @SecretID = secretid
          @SessionToken = sessiontoken
          @StartTime = starttime
          @ExpiredTime = expiredtime
          @BucketAddress = bucketaddress
          @RequestId = requestid
        end

        def deserialize(params)
          @SecretKey = params['SecretKey']
          @SecretID = params['SecretID']
          @SessionToken = params['SessionToken']
          @StartTime = params['StartTime']
          @ExpiredTime = params['ExpiredTime']
          @BucketAddress = params['BucketAddress']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIssueAffectedUsers请求参数结构体
      class DescribeIssueAffectedUsersRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID（string，必填）。空 → InvalidParameter</p>
        # @type AppId: String
        # @param IssueId: <p>问题 ID（string，必填）。空 → InvalidParameter</p>
        # @type IssueId: String
        # @param Page: <p>页码（整数，选填）。&lt; 1 钳制为 1；缺省 1</p>
        # @type Page: Integer
        # @param PageSize: <p>每页条数（整数，选填）。&lt; 1 或 &gt; 1000 回落默认 20；导出场景按 1000 一批拉全量</p>
        # @type PageSize: Integer
        # @param AppVersion: <p>应用版本（string，选填）。按 app_version 精确匹配；空表示不限版本</p>
        # @type AppVersion: String
        # @param StartTime: <p>起始毫秒时间戳（整数，选填）。&lt;= 0 表示该侧不限</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束毫秒时间戳（整数，选填）。&lt;= 0 表示该侧不限；与 StartTime 同时给出且 StartTime &gt; EndTime → InvalidParameter</p>
        # @type EndTime: Integer
        # @param Keyword: <p>身份值关键字（string，选填）。不区分大小写的子串匹配，命中 if(user_id='', session_id, user_id)；空表示不限</p>
        # @type Keyword: String
        # @param OrderKey: <p>排序字段（string，选填）。可选 last_seen / first_seen / event_count；缺省 last_seen；其它值 → InvalidParameter</p>
        # @type OrderKey: String
        # @param OrderBy: <p>排序方向（string，选填）。可选 asc / desc；缺省 desc；其它值 → InvalidParameter</p>
        # @type OrderBy: String

        attr_accessor :AppId, :IssueId, :Page, :PageSize, :AppVersion, :StartTime, :EndTime, :Keyword, :OrderKey, :OrderBy

        def initialize(appid=nil, issueid=nil, page=nil, pagesize=nil, appversion=nil, starttime=nil, endtime=nil, keyword=nil, orderkey=nil, orderby=nil)
          @AppId = appid
          @IssueId = issueid
          @Page = page
          @PageSize = pagesize
          @AppVersion = appversion
          @StartTime = starttime
          @EndTime = endtime
          @Keyword = keyword
          @OrderKey = orderkey
          @OrderBy = orderby
        end

        def deserialize(params)
          @AppId = params['AppId']
          @IssueId = params['IssueId']
          @Page = params['Page']
          @PageSize = params['PageSize']
          @AppVersion = params['AppVersion']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Keyword = params['Keyword']
          @OrderKey = params['OrderKey']
          @OrderBy = params['OrderBy']
        end
      end

      # DescribeIssueAffectedUsers返回参数结构体
      class DescribeIssueAffectedUsersResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>业务数据 JSON 字符串，反序列化后：{Users,Total,Page,PageSize}。 Users[] 含 UserId（身份值）、HasUin（是否来自 user_id）、EventCount、FirstSeen / LastSeen（毫秒时间戳）。</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息（成功时为空）</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIssueBreadcrumbs请求参数结构体
      class DescribeIssueBreadcrumbsRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param IssueId: <p>Issue ID</p>
        # @type IssueId: String
        # @param EventId: <p>事件 ID；为空时默认回退到最新事件</p>
        # @type EventId: String
        # @param Before: <p>向前回溯秒数，默认 60，最大 300</p>
        # @type Before: Integer
        # @param Limit: <p>返回条数上限，默认 50，最大 100</p>
        # @type Limit: Integer

        attr_accessor :AppId, :IssueId, :EventId, :Before, :Limit

        def initialize(appid=nil, issueid=nil, eventid=nil, before=nil, limit=nil)
          @AppId = appid
          @IssueId = issueid
          @EventId = eventid
          @Before = before
          @Limit = limit
        end

        def deserialize(params)
          @AppId = params['AppId']
          @IssueId = params['IssueId']
          @EventId = params['EventId']
          @Before = params['Before']
          @Limit = params['Limit']
        end
      end

      # DescribeIssueBreadcrumbs返回参数结构体
      class DescribeIssueBreadcrumbsResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>业务结果 JSON 字符串；前端会再做一次 JSON 解析。Result 内业务 JSON 为 Data，内容是 session_id + items</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息；正常返回时为空</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIssueCrashLogDownloadURL请求参数结构体
      class DescribeIssueCrashLogDownloadURLRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用ID</p>
        # @type AppId: String
        # @param IssueId: <p>Issue ID</p>
        # @type IssueId: String
        # @param EventId: <p>Issue 事件ID</p>
        # @type EventId: String

        attr_accessor :AppId, :IssueId, :EventId

        def initialize(appid=nil, issueid=nil, eventid=nil)
          @AppId = appid
          @IssueId = issueid
          @EventId = eventid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @IssueId = params['IssueId']
          @EventId = params['EventId']
        end
      end

      # DescribeIssueCrashLogDownloadURL返回参数结构体
      class DescribeIssueCrashLogDownloadURLResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>请求结果</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误时返回的错误信息</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIssueDetail请求参数结构体
      class DescribeIssueDetailRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param IssueId: <p>Issue ID</p>
        # @type IssueId: String
        # @param StartTime: <p>开始时间，Unix 毫秒时间戳。可选。与 EndTime 必须成对传入；都不传时按全保留期统计。</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间，Unix 毫秒时间戳。可选。与 StartTime 必须成对传入。</p>
        # @type EndTime: Integer
        # @param Env: <p>环境。可选。为空表示全部环境。</p>
        # @type Env: String
        # @param Filters: <p>筛选条件 JSON 字符串，格式为 [{Key,Op,Values}]。可选。不传表示不附加这组筛选。</p>
        # @type Filters: String

        attr_accessor :AppId, :IssueId, :StartTime, :EndTime, :Env, :Filters

        def initialize(appid=nil, issueid=nil, starttime=nil, endtime=nil, env=nil, filters=nil)
          @AppId = appid
          @IssueId = issueid
          @StartTime = starttime
          @EndTime = endtime
          @Env = env
          @Filters = filters
        end

        def deserialize(params)
          @AppId = params['AppId']
          @IssueId = params['IssueId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Env = params['Env']
          @Filters = params['Filters']
        end
      end

      # DescribeIssueDetail返回参数结构体
      class DescribeIssueDetailResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>业务结果 JSON 字符串；前端会再做一次 JSON 解析。Result 内业务 JSON 为 Data，内容是单个 Issue 详情</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息；正常返回时为空</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIssueEventDetail请求参数结构体
      class DescribeIssueEventDetailRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param IssueId: <p>Issue ID</p>
        # @type IssueId: String
        # @param EventId: <p>事件 ID</p>
        # @type EventId: String

        attr_accessor :AppId, :IssueId, :EventId

        def initialize(appid=nil, issueid=nil, eventid=nil)
          @AppId = appid
          @IssueId = issueid
          @EventId = eventid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @IssueId = params['IssueId']
          @EventId = params['EventId']
        end
      end

      # DescribeIssueEventDetail返回参数结构体
      class DescribeIssueEventDetailResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>业务结果 JSON 字符串；前端会再做一次 JSON 解析。Result 内业务 JSON 为 Data，内容是单个事件详情</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息；正常返回时为空</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIssueEvents请求参数结构体
      class DescribeIssueEventsRequest < TencentCloud::Common::AbstractModel
        # @param AppId: 应用 ID
        # @type AppId: String
        # @param IssueId: Issue ID
        # @type IssueId: String
        # @param StartTime: 开始时间，Unix 毫秒时间戳
        # @type StartTime: Integer
        # @param EndTime: 结束时间，Unix 毫秒时间戳
        # @type EndTime: Integer
        # @param Keyword: 事件关键字过滤
        # @type Keyword: String
        # @param Filters: 扩展过滤器 JSON 字符串；白名单字段包括 app_version、country、province、city、device_type、browser、os、isp、referrer、user_type、platform、normalized_page_url、event_type、issue_id、environment、process_type
        # @type Filters: String
        # @param Page: 页码，默认 1
        # @type Page: Integer
        # @param PageSize: 分页大小，默认 20，范围 1~100
        # @type PageSize: Integer
        # @param SortOrder: 排序方向，可选值：asc、desc
        # @type SortOrder: String

        attr_accessor :AppId, :IssueId, :StartTime, :EndTime, :Keyword, :Filters, :Page, :PageSize, :SortOrder

        def initialize(appid=nil, issueid=nil, starttime=nil, endtime=nil, keyword=nil, filters=nil, page=nil, pagesize=nil, sortorder=nil)
          @AppId = appid
          @IssueId = issueid
          @StartTime = starttime
          @EndTime = endtime
          @Keyword = keyword
          @Filters = filters
          @Page = page
          @PageSize = pagesize
          @SortOrder = sortorder
        end

        def deserialize(params)
          @AppId = params['AppId']
          @IssueId = params['IssueId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Keyword = params['Keyword']
          @Filters = params['Filters']
          @Page = params['Page']
          @PageSize = params['PageSize']
          @SortOrder = params['SortOrder']
        end
      end

      # DescribeIssueEvents返回参数结构体
      class DescribeIssueEventsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 业务结果 JSON 字符串；前端会再做一次 JSON 解析。Result 内业务 JSON 为 Data，内容是 total + items
        # @type Result: String
        # @param ErrorMsg: 错误信息；正常返回时为空
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIssueTrend请求参数结构体
      class DescribeIssueTrendRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param IssueId: <p>Issue ID</p>
        # @type IssueId: String
        # @param StartTime: <p>开始时间，Unix 毫秒时间戳</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间，Unix 毫秒时间戳</p>
        # @type EndTime: Integer
        # @param Bucket: <p>趋势分桶，可选值：auto、1m、10m、1h、1d</p>
        # @type Bucket: String
        # @param Env: <p>环境。可选。为空表示全部环境。</p>
        # @type Env: String
        # @param Keyword: <p>关键字。可选。不传表示不过滤。</p>
        # @type Keyword: String
        # @param Filters: <p>筛选条件 JSON 字符串，格式为 [{Key,Op,Values}]。可选。不传表示不附加这组筛选。</p>
        # @type Filters: String

        attr_accessor :AppId, :IssueId, :StartTime, :EndTime, :Bucket, :Env, :Keyword, :Filters

        def initialize(appid=nil, issueid=nil, starttime=nil, endtime=nil, bucket=nil, env=nil, keyword=nil, filters=nil)
          @AppId = appid
          @IssueId = issueid
          @StartTime = starttime
          @EndTime = endtime
          @Bucket = bucket
          @Env = env
          @Keyword = keyword
          @Filters = filters
        end

        def deserialize(params)
          @AppId = params['AppId']
          @IssueId = params['IssueId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Bucket = params['Bucket']
          @Env = params['Env']
          @Keyword = params['Keyword']
          @Filters = params['Filters']
        end
      end

      # DescribeIssueTrend返回参数结构体
      class DescribeIssueTrendResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>业务结果 JSON 字符串；前端会再做一次 JSON 解析。Result 内业务 JSON 为 Data，内容是 bucket + points</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息；正常返回时为空</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIssuesDistribution请求参数结构体
      class DescribeIssuesDistributionRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: <p>产品Id</p>
        # @type ProductId: String
        # @param FormListString: <p>接口调试专用，当 token 为空时，以这里的 value 作为筛选表单信息</p>
        # @type FormListString: String
        # @param DimType: <p>分布维度是自定义维度时，填‘user_custom’</p>
        # @type DimType: String
        # @param Dimension: <p>维度，e.g. os_version, app_version, model等</p>
        # @type Dimension: String
        # @param Intervals: <p>数字类型字段的区间范围</p>
        # @type Intervals: Array
        # @param ParamToken: <p>提供给前端使用，当填写本字段时，会覆盖 form_list 的值</p>
        # @type ParamToken: String
        # @param IssueId: <p>问题Id</p>
        # @type IssueId: String
        # @param IssueType: <p>问题类型</p>
        # @type IssueType: Integer
        # @param ParamLimit: <p>限制返回的个数，默认返回所有值</p>
        # @type ParamLimit: Integer
        # @param MapKey: <p>键</p>
        # @type MapKey: String
        # @param MapName: <p>名称</p>
        # @type MapName: String
        # @param MetricType: <p>指标类型</p>
        # @type MetricType: Integer
        # @param PageSize: <p>每页数目</p>
        # @type PageSize: Integer
        # @param PageNumber: <p>页码</p>
        # @type PageNumber: Integer
        # @param UserCustomKey: <p>用户自定义维度key</p>
        # @type UserCustomKey: String
        # @param ExtraData: <p>拓展字段</p>
        # @type ExtraData: String
        # @param RequestHeader: <p>请求头</p>
        # @type RequestHeader: String

        attr_accessor :ProductId, :FormListString, :DimType, :Dimension, :Intervals, :ParamToken, :IssueId, :IssueType, :ParamLimit, :MapKey, :MapName, :MetricType, :PageSize, :PageNumber, :UserCustomKey, :ExtraData, :RequestHeader

        def initialize(productid=nil, formliststring=nil, dimtype=nil, dimension=nil, intervals=nil, paramtoken=nil, issueid=nil, issuetype=nil, paramlimit=nil, mapkey=nil, mapname=nil, metrictype=nil, pagesize=nil, pagenumber=nil, usercustomkey=nil, extradata=nil, requestheader=nil)
          @ProductId = productid
          @FormListString = formliststring
          @DimType = dimtype
          @Dimension = dimension
          @Intervals = intervals
          @ParamToken = paramtoken
          @IssueId = issueid
          @IssueType = issuetype
          @ParamLimit = paramlimit
          @MapKey = mapkey
          @MapName = mapname
          @MetricType = metrictype
          @PageSize = pagesize
          @PageNumber = pagenumber
          @UserCustomKey = usercustomkey
          @ExtraData = extradata
          @RequestHeader = requestheader
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @FormListString = params['FormListString']
          @DimType = params['DimType']
          @Dimension = params['Dimension']
          @Intervals = params['Intervals']
          @ParamToken = params['ParamToken']
          @IssueId = params['IssueId']
          @IssueType = params['IssueType']
          @ParamLimit = params['ParamLimit']
          @MapKey = params['MapKey']
          @MapName = params['MapName']
          @MetricType = params['MetricType']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @UserCustomKey = params['UserCustomKey']
          @ExtraData = params['ExtraData']
          @RequestHeader = params['RequestHeader']
        end
      end

      # DescribeIssuesDistribution返回参数结构体
      class DescribeIssuesDistributionResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回值</p>
        # @type Data: String
        # @param Code: <p>状态码</p>
        # @type Code: Integer
        # @param Message: <p>消息</p>
        # @type Message: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Code, :Message, :RequestId

        def initialize(data=nil, code=nil, message=nil, requestid=nil)
          @Data = data
          @Code = code
          @Message = message
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @Code = params['Code']
          @Message = params['Message']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIssuesList请求参数结构体
      class DescribeIssuesListRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: <p>产品Id</p>
        # @type ProductId: String
        # @param FormList: <p>接口调试专用，当 token 为空时，以这里的 value 作为筛选表单信息</p>
        # @type FormList: String
        # @param FormListA: <p>接口调试专用，对比模式下条件A，当 token 为空时，以这里的 value 作为筛选表单信息</p>
        # @type FormListA: String
        # @param FormListB: <p>接口调试专用，对比模式下条件B，当 token 为空时，以这里的 value 作为筛选表单信息</p>
        # @type FormListB: String
        # @param ParamToken: <p>提供给前端使用，当填写本字段时，会覆盖 form_list 的值</p>
        # @type ParamToken: String
        # @param IssueType: <p>问题类型</p>
        # @type IssueType: Integer
        # @param SortField: <p>排序字段</p>
        # @type SortField: String
        # @param SortType: <p>排序方式</p>
        # @type SortType: String
        # @param PageSize: <p>每页数目</p>
        # @type PageSize: Integer
        # @param PageNumber: <p>页码</p>
        # @type PageNumber: Integer
        # @param SortABRatio: <p>问题对比列表模式下，用于标识是按照sort_field字段的A值排序还是B值还是ratio值</p>
        # @type SortABRatio: String
        # @param Compare: <p>模式：false:问题列表模式，true:对比列表模式</p>
        # @type Compare: Boolean
        # @param CompareStatus: <p>对比状态 0:所有 1:新增 2：遗留 3:已解决</p>
        # @type CompareStatus: Integer
        # @param ExtraData: <p>拓展字段</p>
        # @type ExtraData: String
        # @param RequestHeader: <p>请求头</p>
        # @type RequestHeader: String

        attr_accessor :ProductId, :FormList, :FormListA, :FormListB, :ParamToken, :IssueType, :SortField, :SortType, :PageSize, :PageNumber, :SortABRatio, :Compare, :CompareStatus, :ExtraData, :RequestHeader

        def initialize(productid=nil, formlist=nil, formlista=nil, formlistb=nil, paramtoken=nil, issuetype=nil, sortfield=nil, sorttype=nil, pagesize=nil, pagenumber=nil, sortabratio=nil, compare=nil, comparestatus=nil, extradata=nil, requestheader=nil)
          @ProductId = productid
          @FormList = formlist
          @FormListA = formlista
          @FormListB = formlistb
          @ParamToken = paramtoken
          @IssueType = issuetype
          @SortField = sortfield
          @SortType = sorttype
          @PageSize = pagesize
          @PageNumber = pagenumber
          @SortABRatio = sortabratio
          @Compare = compare
          @CompareStatus = comparestatus
          @ExtraData = extradata
          @RequestHeader = requestheader
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @FormList = params['FormList']
          @FormListA = params['FormListA']
          @FormListB = params['FormListB']
          @ParamToken = params['ParamToken']
          @IssueType = params['IssueType']
          @SortField = params['SortField']
          @SortType = params['SortType']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @SortABRatio = params['SortABRatio']
          @Compare = params['Compare']
          @CompareStatus = params['CompareStatus']
          @ExtraData = params['ExtraData']
          @RequestHeader = params['RequestHeader']
        end
      end

      # DescribeIssuesList返回参数结构体
      class DescribeIssuesListResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回值</p>
        # @type Data: String
        # @param Code: <p>状态码</p>
        # @type Code: Integer
        # @param Message: <p>消息</p>
        # @type Message: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Code, :Message, :RequestId

        def initialize(data=nil, code=nil, message=nil, requestid=nil)
          @Data = data
          @Code = code
          @Message = message
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @Code = params['Code']
          @Message = params['Message']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIssues请求参数结构体
      class DescribeIssuesRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param StartTime: <p>开始时间，Unix 毫秒时间戳</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间，Unix 毫秒时间戳</p>
        # @type EndTime: Integer
        # @param Env: <p>环境过滤，如 prod、test</p>
        # @type Env: String
        # @param IssueTypes: <p>Issue 类型过滤，可选值：native_crash、js_error、event_loop_block</p>
        # @type IssueTypes: Array
        # @param Statuses: <p>状态过滤，可选值：Unresolved、Resolved、Ignored、Regressed</p>
        # @type Statuses: Array
        # @param Keyword: <p>Issue 标题或错误关键字模糊搜索</p>
        # @type Keyword: String
        # @param Filters: <p>扩展过滤器 JSON 字符串；白名单字段包括 app_version、country、province、city、device_type、browser、os、isp、referrer、user_type、platform、normalized_page_url、event_type、issue_id、environment、process_type</p>
        # @type Filters: String
        # @param SortBy: <p>排序字段，可选值：last_seen、first_seen、event_count、affected_users</p>
        # @type SortBy: String
        # @param SortOrder: <p>排序方向，可选值：asc、desc</p>
        # @type SortOrder: String
        # @param Page: <p>页码，默认 1</p>
        # @type Page: Integer
        # @param PageSize: <p>分页大小，默认 20，范围 1~100</p>
        # @type PageSize: Integer

        attr_accessor :AppId, :StartTime, :EndTime, :Env, :IssueTypes, :Statuses, :Keyword, :Filters, :SortBy, :SortOrder, :Page, :PageSize

        def initialize(appid=nil, starttime=nil, endtime=nil, env=nil, issuetypes=nil, statuses=nil, keyword=nil, filters=nil, sortby=nil, sortorder=nil, page=nil, pagesize=nil)
          @AppId = appid
          @StartTime = starttime
          @EndTime = endtime
          @Env = env
          @IssueTypes = issuetypes
          @Statuses = statuses
          @Keyword = keyword
          @Filters = filters
          @SortBy = sortby
          @SortOrder = sortorder
          @Page = page
          @PageSize = pagesize
        end

        def deserialize(params)
          @AppId = params['AppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Env = params['Env']
          @IssueTypes = params['IssueTypes']
          @Statuses = params['Statuses']
          @Keyword = params['Keyword']
          @Filters = params['Filters']
          @SortBy = params['SortBy']
          @SortOrder = params['SortOrder']
          @Page = params['Page']
          @PageSize = params['PageSize']
        end
      end

      # DescribeIssues返回参数结构体
      class DescribeIssuesResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>业务结果 JSON 字符串；前端会再做一次 JSON 解析。Result 内业务 JSON 为 Total + Items</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息；正常返回时为空</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIssuesStatisticsTrend请求参数结构体
      class DescribeIssuesStatisticsTrendRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param ParamToken: 提供给前端使用，当填写本字段时，会覆盖 form_list 的值
        # @type ParamToken: String
        # @param FormList: 接口调试专用，当 token 为空时，以这里的 value 作为筛选表单信息
        # @type FormList: String
        # @param IssueId: 问题Id
        # @type IssueId: String
        # @param IssueType: 问题类型
        # @type IssueType: Integer
        # @param TimeWindow: 时间窗口
        # @type TimeWindow: Integer
        # @param TotalSize: 累计值
        # @type TotalSize: Boolean
        # @param Stat: 无
        # @type Stat: Integer
        # @param MetricType: 指标类型
        # @type MetricType: Integer
        # @param ExtraData: 拓展字段
        # @type ExtraData: String
        # @param RequestHeader: 请求头
        # @type RequestHeader: String
        # @param TrendStat: 无
        # @type TrendStat: Integer

        attr_accessor :ProductId, :ParamToken, :FormList, :IssueId, :IssueType, :TimeWindow, :TotalSize, :Stat, :MetricType, :ExtraData, :RequestHeader, :TrendStat

        def initialize(productid=nil, paramtoken=nil, formlist=nil, issueid=nil, issuetype=nil, timewindow=nil, totalsize=nil, stat=nil, metrictype=nil, extradata=nil, requestheader=nil, trendstat=nil)
          @ProductId = productid
          @ParamToken = paramtoken
          @FormList = formlist
          @IssueId = issueid
          @IssueType = issuetype
          @TimeWindow = timewindow
          @TotalSize = totalsize
          @Stat = stat
          @MetricType = metrictype
          @ExtraData = extradata
          @RequestHeader = requestheader
          @TrendStat = trendstat
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ParamToken = params['ParamToken']
          @FormList = params['FormList']
          @IssueId = params['IssueId']
          @IssueType = params['IssueType']
          @TimeWindow = params['TimeWindow']
          @TotalSize = params['TotalSize']
          @Stat = params['Stat']
          @MetricType = params['MetricType']
          @ExtraData = params['ExtraData']
          @RequestHeader = params['RequestHeader']
          @TrendStat = params['TrendStat']
        end
      end

      # DescribeIssuesStatisticsTrend返回参数结构体
      class DescribeIssuesStatisticsTrendResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回值
        # @type Data: String
        # @param Code: 状态码
        # @type Code: Integer
        # @param Message: 消息
        # @type Message: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Code, :Message, :RequestId

        def initialize(data=nil, code=nil, message=nil, requestid=nil)
          @Data = data
          @Code = code
          @Message = message
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @Code = params['Code']
          @Message = params['Message']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLagANRProblemAccountDetail请求参数结构体
      class DescribeLagANRProblemAccountDetailRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: <p>产品Id</p>
        # @type ProductId: String
        # @param ClientIdentify: <p>消息唯一标识</p>
        # @type ClientIdentify: String
        # @param Feature: <p>特征</p>
        # @type Feature: String
        # @param StartEventTime: <p>事件开始时间</p>
        # @type StartEventTime: Integer
        # @param EndEventTime: <p>事件结束时间</p>
        # @type EndEventTime: Integer
        # @param ExtraData: <p>拓展数据</p>
        # @type ExtraData: String
        # @param RequestHeader: <p>请求头</p>
        # @type RequestHeader: String

        attr_accessor :ProductId, :ClientIdentify, :Feature, :StartEventTime, :EndEventTime, :ExtraData, :RequestHeader

        def initialize(productid=nil, clientidentify=nil, feature=nil, starteventtime=nil, endeventtime=nil, extradata=nil, requestheader=nil)
          @ProductId = productid
          @ClientIdentify = clientidentify
          @Feature = feature
          @StartEventTime = starteventtime
          @EndEventTime = endeventtime
          @ExtraData = extradata
          @RequestHeader = requestheader
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ClientIdentify = params['ClientIdentify']
          @Feature = params['Feature']
          @StartEventTime = params['StartEventTime']
          @EndEventTime = params['EndEventTime']
          @ExtraData = params['ExtraData']
          @RequestHeader = params['RequestHeader']
        end
      end

      # DescribeLagANRProblemAccountDetail返回参数结构体
      class DescribeLagANRProblemAccountDetailResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回值</p>
        # @type Data: String
        # @param Code: <p>状态码</p>
        # @type Code: Integer
        # @param Message: <p>消息</p>
        # @type Message: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Code, :Message, :RequestId

        def initialize(data=nil, code=nil, message=nil, requestid=nil)
          @Data = data
          @Code = code
          @Message = message
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @Code = params['Code']
          @Message = params['Message']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLagANRProblemFeatureAccounts请求参数结构体
      class DescribeLagANRProblemFeatureAccountsRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: <p>产品Id</p>
        # @type ProductId: String
        # @param FormListString: <p>接口调试专用，当 token 为空时，以这里的 value 作为筛选表单信息</p>
        # @type FormListString: String
        # @param ParamToken: <p>提供给前端使用，当填写本字段时，会覆盖 formlist 的值</p>
        # @type ParamToken: String
        # @param Feature: <p>问题特征</p>
        # @type Feature: String
        # @param SortField: <p>排序字段</p>
        # @type SortField: String
        # @param SortType: <p>排序类型</p>
        # @type SortType: String
        # @param PageNumber: <p>当前页码</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页展示最大数量</p>
        # @type PageSize: Integer
        # @param ExtraData: <p>拓展数据</p>
        # @type ExtraData: String
        # @param RequestHeader: <p>请求头</p>
        # @type RequestHeader: String

        attr_accessor :ProductId, :FormListString, :ParamToken, :Feature, :SortField, :SortType, :PageNumber, :PageSize, :ExtraData, :RequestHeader

        def initialize(productid=nil, formliststring=nil, paramtoken=nil, feature=nil, sortfield=nil, sorttype=nil, pagenumber=nil, pagesize=nil, extradata=nil, requestheader=nil)
          @ProductId = productid
          @FormListString = formliststring
          @ParamToken = paramtoken
          @Feature = feature
          @SortField = sortfield
          @SortType = sorttype
          @PageNumber = pagenumber
          @PageSize = pagesize
          @ExtraData = extradata
          @RequestHeader = requestheader
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @FormListString = params['FormListString']
          @ParamToken = params['ParamToken']
          @Feature = params['Feature']
          @SortField = params['SortField']
          @SortType = params['SortType']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @ExtraData = params['ExtraData']
          @RequestHeader = params['RequestHeader']
        end
      end

      # DescribeLagANRProblemFeatureAccounts返回参数结构体
      class DescribeLagANRProblemFeatureAccountsResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回值</p>
        # @type Data: String
        # @param Message: <p>消息</p>
        # @type Message: String
        # @param Code: <p>状态码</p>
        # @type Code: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Message, :Code, :RequestId

        def initialize(data=nil, message=nil, code=nil, requestid=nil)
          @Data = data
          @Message = message
          @Code = code
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @Message = params['Message']
          @Code = params['Code']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLagANRProblemList请求参数结构体
      class DescribeLagANRProblemListRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: <p>产品Id</p>
        # @type ProductId: String
        # @param ParamToken: <p>提供给前端使用，当填写本字段时，会覆盖 formlist 的值</p>
        # @type ParamToken: String
        # @param FormListString: <p>接口调试专用，当 token 为空时，以这里的 value 作为筛选表单信息</p>
        # @type FormListString: String
        # @param PageNumber: <p>当前页码</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页展示最大数量</p>
        # @type PageSize: Integer
        # @param SortField: <p>排序字段</p>
        # @type SortField: String
        # @param SortType: <p>排序类型</p>
        # @type SortType: String
        # @param ExtraData: <p>拓展数据</p>
        # @type ExtraData: String
        # @param RequestHeader: <p>请求头</p>
        # @type RequestHeader: String

        attr_accessor :ProductId, :ParamToken, :FormListString, :PageNumber, :PageSize, :SortField, :SortType, :ExtraData, :RequestHeader

        def initialize(productid=nil, paramtoken=nil, formliststring=nil, pagenumber=nil, pagesize=nil, sortfield=nil, sorttype=nil, extradata=nil, requestheader=nil)
          @ProductId = productid
          @ParamToken = paramtoken
          @FormListString = formliststring
          @PageNumber = pagenumber
          @PageSize = pagesize
          @SortField = sortfield
          @SortType = sorttype
          @ExtraData = extradata
          @RequestHeader = requestheader
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ParamToken = params['ParamToken']
          @FormListString = params['FormListString']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @SortField = params['SortField']
          @SortType = params['SortType']
          @ExtraData = params['ExtraData']
          @RequestHeader = params['RequestHeader']
        end
      end

      # DescribeLagANRProblemList返回参数结构体
      class DescribeLagANRProblemListResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回值</p>
        # @type Data: String
        # @param Message: <p>消息</p>
        # @type Message: String
        # @param Code: <p>状态码</p>
        # @type Code: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Message, :Code, :RequestId

        def initialize(data=nil, message=nil, code=nil, requestid=nil)
          @Data = data
          @Message = message
          @Code = code
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @Message = params['Message']
          @Code = params['Code']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMiniProgramReplayPack请求参数结构体
      class DescribeMiniProgramReplayPackRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用id</p>
        # @type AppId: String
        # @param BundleHash: <p>回放包hash（sha256前16位hex）</p>
        # @type BundleHash: String

        attr_accessor :AppId, :BundleHash

        def initialize(appid=nil, bundlehash=nil)
          @AppId = appid
          @BundleHash = bundlehash
        end

        def deserialize(params)
          @AppId = params['AppId']
          @BundleHash = params['BundleHash']
        end
      end

      # DescribeMiniProgramReplayPack返回参数结构体
      class DescribeMiniProgramReplayPackResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: <p>错误信息</p>
        # @type ErrorMsg: String
        # @param Result: <p>请求结果（JSON字符串，包含 PackId/AppId/BundleHash/Status/PageCount/ComponentCount/Pack）</p>
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :Result, :RequestId

        def initialize(errormsg=nil, result=nil, requestid=nil)
          @ErrorMsg = errormsg
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMiniProgramReplayPacks请求参数结构体
      class DescribeMiniProgramReplayPacksRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用id</p>
        # @type AppId: String
        # @param Status: <p>状态过滤（compiling/ready/failed，可选）</p>
        # @type Status: String
        # @param Limit: <p>返回条数（默认20，最大100）</p>
        # @type Limit: Integer
        # @param Cursor: <p>分页游标（可选）</p>
        # @type Cursor: String

        attr_accessor :AppId, :Status, :Limit, :Cursor

        def initialize(appid=nil, status=nil, limit=nil, cursor=nil)
          @AppId = appid
          @Status = status
          @Limit = limit
          @Cursor = cursor
        end

        def deserialize(params)
          @AppId = params['AppId']
          @Status = params['Status']
          @Limit = params['Limit']
          @Cursor = params['Cursor']
        end
      end

      # DescribeMiniProgramReplayPacks返回参数结构体
      class DescribeMiniProgramReplayPacksResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: <p>错误信息</p>
        # @type ErrorMsg: String
        # @param Result: <p>请求结果（JSON字符串，包含 Items/NextCursor）</p>
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :Result, :RequestId

        def initialize(errormsg=nil, result=nil, requestid=nil)
          @ErrorMsg = errormsg
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribePerformanceMetrics请求参数结构体
      class DescribePerformanceMetricsRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用id</p>
        # @type AppId: String
        # @param StartTime: <p>开始时间</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间</p>
        # @type EndTime: Integer
        # @param Platform: <p>平台</p>
        # @type Platform: String
        # @param Filters: <p>过滤条件</p>
        # @type Filters: String
        # @param Quantile: <p>分位值</p>
        # @type Quantile: Float
        # @param JourneyFilters: <p>旅程筛选条件 JSON 字符串，格式与 Filters 相同：[{Key,Op,Values}]。可选。不传表示不过滤。</p>
        # @type JourneyFilters: String
        # @param HasStruggle: <p>是否只看包含挣扎的会话。可选。不传表示不过滤。</p>
        # @type HasStruggle: Boolean
        # @param StartPage: <p>旅程起点页面。可选。不传表示不过滤。</p>
        # @type StartPage: String
        # @param EndPage: <p>旅程终点页面。可选。不传表示不过滤。</p>
        # @type EndPage: String

        attr_accessor :AppId, :StartTime, :EndTime, :Platform, :Filters, :Quantile, :JourneyFilters, :HasStruggle, :StartPage, :EndPage

        def initialize(appid=nil, starttime=nil, endtime=nil, platform=nil, filters=nil, quantile=nil, journeyfilters=nil, hasstruggle=nil, startpage=nil, endpage=nil)
          @AppId = appid
          @StartTime = starttime
          @EndTime = endtime
          @Platform = platform
          @Filters = filters
          @Quantile = quantile
          @JourneyFilters = journeyfilters
          @HasStruggle = hasstruggle
          @StartPage = startpage
          @EndPage = endpage
        end

        def deserialize(params)
          @AppId = params['AppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Platform = params['Platform']
          @Filters = params['Filters']
          @Quantile = params['Quantile']
          @JourneyFilters = params['JourneyFilters']
          @HasStruggle = params['HasStruggle']
          @StartPage = params['StartPage']
          @EndPage = params['EndPage']
        end
      end

      # DescribePerformanceMetrics返回参数结构体
      class DescribePerformanceMetricsResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>请求结果</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProjectLimits请求参数结构体
      class DescribeProjectLimitsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectID: 项目ID
        # @type ProjectID: Integer

        attr_accessor :ProjectID

        def initialize(projectid=nil)
          @ProjectID = projectid
        end

        def deserialize(params)
          @ProjectID = params['ProjectID']
        end
      end

      # DescribeProjectLimits返回参数结构体
      class DescribeProjectLimitsResponse < TencentCloud::Common::AbstractModel
        # @param ProjectLimitSet: 上报率数组列表
        # @type ProjectLimitSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProjectLimitSet, :RequestId

        def initialize(projectlimitset=nil, requestid=nil)
          @ProjectLimitSet = projectlimitset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ProjectLimitSet'].nil?
            @ProjectLimitSet = []
            params['ProjectLimitSet'].each do |i|
              projectlimit_tmp = ProjectLimit.new
              projectlimit_tmp.deserialize(i)
              @ProjectLimitSet << projectlimit_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProjects请求参数结构体
      class DescribeProjectsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页每页数目，整型
        # @type Limit: Integer
        # @param Offset: 分页页码，整型
        # @type Offset: Integer
        # @param Filters: 过滤参数；demo模式传{"Name": "IsDemo", "Values":["1"]}
        # @type Filters: Array
        # @param IsDemo: 该参数已废弃，demo模式请在Filters内注明
        # @type IsDemo: Integer

        attr_accessor :Limit, :Offset, :Filters, :IsDemo
        extend Gem::Deprecate
        deprecate :IsDemo, :none, 2026, 10
        deprecate :IsDemo=, :none, 2026, 10

        def initialize(limit=nil, offset=nil, filters=nil, isdemo=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @IsDemo = isdemo
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
          @IsDemo = params['IsDemo']
        end
      end

      # DescribeProjects返回参数结构体
      class DescribeProjectsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 列表总数
        # @type TotalCount: Integer
        # @param ProjectSet: 项目列表
        # @type ProjectSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ProjectSet, :RequestId

        def initialize(totalcount=nil, projectset=nil, requestid=nil)
          @TotalCount = totalcount
          @ProjectSet = projectset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ProjectSet'].nil?
            @ProjectSet = []
            params['ProjectSet'].each do |i|
              rumproject_tmp = RumProject.new
              rumproject_tmp.deserialize(i)
              @ProjectSet << rumproject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePvList请求参数结构体
      class DescribePvListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: ID
        # @type ProjectId: Integer
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param Dimension: 对PV指标的查询维度。获取day：d，   获取min则不填。
        # @type Dimension: String

        attr_accessor :ProjectId, :EndTime, :StartTime, :Dimension

        def initialize(projectid=nil, endtime=nil, starttime=nil, dimension=nil)
          @ProjectId = projectid
          @EndTime = endtime
          @StartTime = starttime
          @Dimension = dimension
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @EndTime = params['EndTime']
          @StartTime = params['StartTime']
          @Dimension = params['Dimension']
        end
      end

      # DescribePvList返回参数结构体
      class DescribePvListResponse < TencentCloud::Common::AbstractModel
        # @param ProjectPvSet: pv列表
        # @type ProjectPvSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProjectPvSet, :RequestId

        def initialize(projectpvset=nil, requestid=nil)
          @ProjectPvSet = projectpvset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ProjectPvSet'].nil?
            @ProjectPvSet = []
            params['ProjectPvSet'].each do |i|
              rumpvinfo_tmp = RumPvInfo.new
              rumpvinfo_tmp.deserialize(i)
              @ProjectPvSet << rumpvinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeReleaseFileSign请求参数结构体
      class DescribeReleaseFileSignRequest < TencentCloud::Common::AbstractModel
        # @param Timeout: 超时时间，不填默认是 5 分钟
        # @type Timeout: Integer
        # @param FileType: bucket类型，不填默认1:web，2:app
        # @type FileType: Integer
        # @param Site: 获取临时签名的bucket是境内还是境外（1表示境外，其它表示境内）
        # @type Site: Integer
        # @param ID: ProjectID
        # @type ID: Integer

        attr_accessor :Timeout, :FileType, :Site, :ID

        def initialize(timeout=nil, filetype=nil, site=nil, id=nil)
          @Timeout = timeout
          @FileType = filetype
          @Site = site
          @ID = id
        end

        def deserialize(params)
          @Timeout = params['Timeout']
          @FileType = params['FileType']
          @Site = params['Site']
          @ID = params['ID']
        end
      end

      # DescribeReleaseFileSign返回参数结构体
      class DescribeReleaseFileSignResponse < TencentCloud::Common::AbstractModel
        # @param SecretKey: 临时密钥key
        # @type SecretKey: String
        # @param SecretID: 临时密钥 id
        # @type SecretID: String
        # @param SessionToken: 临时密钥临时 token
        # @type SessionToken: String
        # @param StartTime: 开始时间戳
        # @type StartTime: Integer
        # @param ExpiredTime: 过期时间戳
        # @type ExpiredTime: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecretKey, :SecretID, :SessionToken, :StartTime, :ExpiredTime, :RequestId

        def initialize(secretkey=nil, secretid=nil, sessiontoken=nil, starttime=nil, expiredtime=nil, requestid=nil)
          @SecretKey = secretkey
          @SecretID = secretid
          @SessionToken = sessiontoken
          @StartTime = starttime
          @ExpiredTime = expiredtime
          @RequestId = requestid
        end

        def deserialize(params)
          @SecretKey = params['SecretKey']
          @SecretID = params['SecretID']
          @SessionToken = params['SessionToken']
          @StartTime = params['StartTime']
          @ExpiredTime = params['ExpiredTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeReleaseFiles请求参数结构体
      class DescribeReleaseFilesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectID: <p>项目 id</p>
        # @type ProjectID: Integer
        # @param FileVersion: <p>文件版本</p>
        # @type FileVersion: String
        # @param FileName: <p>查询过滤条件（根据sourcemap的文件名模糊匹配）</p>
        # @type FileName: String
        # @param IgnoreDefaultTimeRange: <p>false/不传=保留「最近 3 个月」约束（旧行为）；true=绕过时间窗口</p>
        # @type IgnoreDefaultTimeRange: Boolean

        attr_accessor :ProjectID, :FileVersion, :FileName, :IgnoreDefaultTimeRange

        def initialize(projectid=nil, fileversion=nil, filename=nil, ignoredefaulttimerange=nil)
          @ProjectID = projectid
          @FileVersion = fileversion
          @FileName = filename
          @IgnoreDefaultTimeRange = ignoredefaulttimerange
        end

        def deserialize(params)
          @ProjectID = params['ProjectID']
          @FileVersion = params['FileVersion']
          @FileName = params['FileName']
          @IgnoreDefaultTimeRange = params['IgnoreDefaultTimeRange']
        end
      end

      # DescribeReleaseFiles返回参数结构体
      class DescribeReleaseFilesResponse < TencentCloud::Common::AbstractModel
        # @param Files: <p>文件信息列表</p>
        # @type Files: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Files, :RequestId

        def initialize(files=nil, requestid=nil)
          @Files = files
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Files'].nil?
            @Files = []
            params['Files'].each do |i|
              releasefile_tmp = ReleaseFile.new
              releasefile_tmp.deserialize(i)
              @Files << releasefile_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeReplayData请求参数结构体
      class DescribeReplayDataRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用id</p>
        # @type AppId: String
        # @param ReplayId: <p>回放id</p>
        # @type ReplayId: String
        # @param SessionId: <p>session id</p>
        # @type SessionId: String
        # @param SegmentId: <p>segment id</p>
        # @type SegmentId: Integer
        # @param MaxDecodedBytes: <p>单个录制分片解压后的最大允许字节数</p><p>取值范围：[1, 8388608]</p><p>单位：字节（Byte）</p>
        # @type MaxDecodedBytes: Integer

        attr_accessor :AppId, :ReplayId, :SessionId, :SegmentId, :MaxDecodedBytes

        def initialize(appid=nil, replayid=nil, sessionid=nil, segmentid=nil, maxdecodedbytes=nil)
          @AppId = appid
          @ReplayId = replayid
          @SessionId = sessionid
          @SegmentId = segmentid
          @MaxDecodedBytes = maxdecodedbytes
        end

        def deserialize(params)
          @AppId = params['AppId']
          @ReplayId = params['ReplayId']
          @SessionId = params['SessionId']
          @SegmentId = params['SegmentId']
          @MaxDecodedBytes = params['MaxDecodedBytes']
        end
      end

      # DescribeReplayData返回参数结构体
      class DescribeReplayDataResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>返回结果</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeReplayDetails请求参数结构体
      class DescribeReplayDetailsRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用id</p>
        # @type AppId: String
        # @param SessionId: <p>会话id</p>
        # @type SessionId: String
        # @param ReplayId: <p>回放id</p>
        # @type ReplayId: String
        # @param Categories: <p>事件类别， 默认为all</p>
        # @type Categories: String
        # @param Limit: <p>每页返回数量</p>
        # @type Limit: Integer
        # @param Cursor: <p>游标分页，传上一次返回的 NextCursor 值。首次请求不传</p>
        # @type Cursor: Integer
        # @param StartOffsetMs: <p>起始偏移（毫秒），相对于录屏开始时间。用于只查某个时间段的事件</p>
        # @type StartOffsetMs: Integer
        # @param EndOffsetMs: <p>结束偏移（毫秒），必须 ≥ StartOffsetMs</p>
        # @type EndOffsetMs: Integer

        attr_accessor :AppId, :SessionId, :ReplayId, :Categories, :Limit, :Cursor, :StartOffsetMs, :EndOffsetMs

        def initialize(appid=nil, sessionid=nil, replayid=nil, categories=nil, limit=nil, cursor=nil, startoffsetms=nil, endoffsetms=nil)
          @AppId = appid
          @SessionId = sessionid
          @ReplayId = replayid
          @Categories = categories
          @Limit = limit
          @Cursor = cursor
          @StartOffsetMs = startoffsetms
          @EndOffsetMs = endoffsetms
        end

        def deserialize(params)
          @AppId = params['AppId']
          @SessionId = params['SessionId']
          @ReplayId = params['ReplayId']
          @Categories = params['Categories']
          @Limit = params['Limit']
          @Cursor = params['Cursor']
          @StartOffsetMs = params['StartOffsetMs']
          @EndOffsetMs = params['EndOffsetMs']
        end
      end

      # DescribeReplayDetails返回参数结构体
      class DescribeReplayDetailsResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>返回结果</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeReplayMeta请求参数结构体
      class DescribeReplayMetaRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用id</p>
        # @type AppId: String
        # @param ReplayId: <p>回放id</p>
        # @type ReplayId: String
        # @param SessionId: <p>会话id</p>
        # @type SessionId: String
        # @param IndexOnly: <p>是否仅查询指定录制分片的轻量索引。默认false。为true时必须通过IndexSegmentIds指定1～16个分片ID，返回IndexEntries，不返回录制正文。</p>
        # @type IndexOnly: Boolean
        # @param IndexSegmentIds: <p>待查询索引的录制分片ID列表。仅在IndexOnly为true时使用，包含1～16个非负且不重复的分片ID。ProbeMissingIndex为true时仅允许指定一个分片ID。</p>
        # @type IndexSegmentIds: Array
        # @param ProbeMissingIndex: <p>是否在录制分片缺少索引时进行受限兼容探测。默认false。为true时必须同时设置IndexOnly为true，且IndexSegmentIds仅包含一个分片ID。</p>
        # @type ProbeMissingIndex: Boolean

        attr_accessor :AppId, :ReplayId, :SessionId, :IndexOnly, :IndexSegmentIds, :ProbeMissingIndex

        def initialize(appid=nil, replayid=nil, sessionid=nil, indexonly=nil, indexsegmentids=nil, probemissingindex=nil)
          @AppId = appid
          @ReplayId = replayid
          @SessionId = sessionid
          @IndexOnly = indexonly
          @IndexSegmentIds = indexsegmentids
          @ProbeMissingIndex = probemissingindex
        end

        def deserialize(params)
          @AppId = params['AppId']
          @ReplayId = params['ReplayId']
          @SessionId = params['SessionId']
          @IndexOnly = params['IndexOnly']
          @IndexSegmentIds = params['IndexSegmentIds']
          @ProbeMissingIndex = params['ProbeMissingIndex']
        end
      end

      # DescribeReplayMeta返回参数结构体
      class DescribeReplayMetaResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>返回结果</p>
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRumGroupLog请求参数结构体
      class DescribeRumGroupLogRequest < TencentCloud::Common::AbstractModel
        # @param OrderBy: <p>排序方式  desc  asc（必填）</p>
        # @type OrderBy: String
        # @param StartTime: <p>开始时间（必填）</p>
        # @type StartTime: String
        # @param Limit: <p>单次查询返回的原始日志条数，最大值为100（必填）</p>
        # @type Limit: Integer
        # @param Page: <p>页数，第几页（注意：该字段已废弃！）</p>
        # @type Page: Integer
        # @param Query: <p>查询语句，参考控制台请求参数，语句长度最大为4096（必填）</p>
        # @type Query: String
        # @param EndTime: <p>结束时间（必填）</p>
        # @type EndTime: String
        # @param ID: <p>项目ID（必填）</p>
        # @type ID: Integer
        # @param GroupField: <p>聚合字段</p>
        # @type GroupField: String

        attr_accessor :OrderBy, :StartTime, :Limit, :Page, :Query, :EndTime, :ID, :GroupField

        def initialize(orderby=nil, starttime=nil, limit=nil, page=nil, query=nil, endtime=nil, id=nil, groupfield=nil)
          @OrderBy = orderby
          @StartTime = starttime
          @Limit = limit
          @Page = page
          @Query = query
          @EndTime = endtime
          @ID = id
          @GroupField = groupfield
        end

        def deserialize(params)
          @OrderBy = params['OrderBy']
          @StartTime = params['StartTime']
          @Limit = params['Limit']
          @Page = params['Page']
          @Query = params['Query']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @GroupField = params['GroupField']
        end
      end

      # DescribeRumGroupLog返回参数结构体
      class DescribeRumGroupLogResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>返回字符串</p>
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRumGroupLogV2请求参数结构体
      class DescribeRumGroupLogV2Request < TencentCloud::Common::AbstractModel
        # @param OrderBy: <p>排序方式 desc asc（必填）</p>
        # @type OrderBy: String
        # @param StartTime: <p>查询日志开始时间（必填）</p>
        # @type StartTime: Integer
        # @param Limit: <p>单次查询返回的原始日志条数，最大值为100（必填）</p>
        # @type Limit: Integer
        # @param Filter: <p>过滤条件，其中key与运算符(Operator)对应可选字段枚举值与示例查看文档：<a href="https://cloud.tencent.com/document/product/248/87223">日志查询相关</a></p>
        # @type Filter: String
        # @param EndTime: <p>查询日志结束时间（必填）</p>
        # @type EndTime: Integer
        # @param ID: <p>项目ID（必填）</p>
        # @type ID: Integer
        # @param Label: <p>聚合字段</p>
        # @type Label: String
        # @param Last: <p>页数，第几页（注意：该字段已废弃！）</p>
        # @type Last: Integer

        attr_accessor :OrderBy, :StartTime, :Limit, :Filter, :EndTime, :ID, :Label, :Last

        def initialize(orderby=nil, starttime=nil, limit=nil, filter=nil, endtime=nil, id=nil, label=nil, last=nil)
          @OrderBy = orderby
          @StartTime = starttime
          @Limit = limit
          @Filter = filter
          @EndTime = endtime
          @ID = id
          @Label = label
          @Last = last
        end

        def deserialize(params)
          @OrderBy = params['OrderBy']
          @StartTime = params['StartTime']
          @Limit = params['Limit']
          @Filter = params['Filter']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @Label = params['Label']
          @Last = params['Last']
        end
      end

      # DescribeRumGroupLogV2返回参数结构体
      class DescribeRumGroupLogV2Response < TencentCloud::Common::AbstractModel
        # @param Result: <p>日志聚合结果</p>
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRumLogDetailsV2请求参数结构体
      class DescribeRumLogDetailsV2Request < TencentCloud::Common::AbstractModel
        # @param OrderBy: <p>排序方式 desc asc</p>
        # @type OrderBy: String
        # @param StartTime: <p>查询日志开始时间（必填）格式为时间戳 毫秒</p>
        # @type StartTime: Integer
        # @param Limit: <p>单次查询返回的原始日志条数，最大值为100（必填）</p>
        # @type Limit: Integer
        # @param Filter: <p>过滤条件，其中key与运算符(Operator)对应可选字段枚举值与示例查看文档：<a href="https://cloud.tencent.com/document/product/248/87223">日志查询相关</a></p>
        # @type Filter: String
        # @param EndTime: <p>查询日志结束时间（必填）格式为时间戳 毫秒</p>
        # @type EndTime: Integer
        # @param ID: <p>项目ID（必填）</p>
        # @type ID: Integer
        # @param LastTime: <p>上次查询的最后一个日志的时间戳</p>
        # @type LastTime: Integer
        # @param LastRowId: <p>上次查询的最后一个日志的rowId</p>
        # @type LastRowId: Integer

        attr_accessor :OrderBy, :StartTime, :Limit, :Filter, :EndTime, :ID, :LastTime, :LastRowId

        def initialize(orderby=nil, starttime=nil, limit=nil, filter=nil, endtime=nil, id=nil, lasttime=nil, lastrowid=nil)
          @OrderBy = orderby
          @StartTime = starttime
          @Limit = limit
          @Filter = filter
          @EndTime = endtime
          @ID = id
          @LastTime = lasttime
          @LastRowId = lastrowid
        end

        def deserialize(params)
          @OrderBy = params['OrderBy']
          @StartTime = params['StartTime']
          @Limit = params['Limit']
          @Filter = params['Filter']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @LastTime = params['LastTime']
          @LastRowId = params['LastRowId']
        end
      end

      # DescribeRumLogDetailsV2返回参数结构体
      class DescribeRumLogDetailsV2Response < TencentCloud::Common::AbstractModel
        # @param Result: <p>日志明细</p>
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRumLogExport请求参数结构体
      class DescribeRumLogExportRequest < TencentCloud::Common::AbstractModel
        # @param Name: 导出标识name
        # @type Name: String
        # @param StartTime: 开始时间（必填）
        # @type StartTime: String
        # @param Query: 查询语句，参考控制台请求参数，语句长度最大为4096（必填）
        # @type Query: String
        # @param EndTime: 结束时间（必填）
        # @type EndTime: String
        # @param ID: 项目ID（必填）
        # @type ID: Integer
        # @param Fields: field条件
        # @type Fields: Array

        attr_accessor :Name, :StartTime, :Query, :EndTime, :ID, :Fields

        def initialize(name=nil, starttime=nil, query=nil, endtime=nil, id=nil, fields=nil)
          @Name = name
          @StartTime = starttime
          @Query = query
          @EndTime = endtime
          @ID = id
          @Fields = fields
        end

        def deserialize(params)
          @Name = params['Name']
          @StartTime = params['StartTime']
          @Query = params['Query']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @Fields = params['Fields']
        end
      end

      # DescribeRumLogExport返回参数结构体
      class DescribeRumLogExportResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回字符串
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRumLogExportV2请求参数结构体
      class DescribeRumLogExportV2Request < TencentCloud::Common::AbstractModel
        # @param Name: <p>Name（string，必填）：导出任务名称标识，需要在使用API创建导出任务时填写。此字段为后续能力扩展预留，不在查询结果中返回。</p>
        # @type Name: String
        # @param StartTime: <p>查询日志开始时间(必填)</p>
        # @type StartTime: Integer
        # @param Filter: <p>过滤条件，其中key与运算符(Operator)对应可选字段枚举值与示例查看文档：<a href="https://cloud.tencent.com/document/product/248/87223">日志查询相关</a></p>
        # @type Filter: String
        # @param EndTime: <p>查询日志结束时间(必填)</p>
        # @type EndTime: Integer
        # @param ID: <p>项目ID</p>
        # @type ID: Integer
        # @param Fields: <p>注意：这个字段必选，不能为空！选择要导出哪些字段的参数，对应日志的列，可查看文档：<a href="https://cloud.tencent.com/document/product/248/87223">日志查询相关</a></p><p>枚举值：</p><ul><li>level： 日志类型</li><li>url： URL</li><li>ip： 用户终端IP</li><li>version： 版本</li></ul>
        # @type Fields: Array

        attr_accessor :Name, :StartTime, :Filter, :EndTime, :ID, :Fields

        def initialize(name=nil, starttime=nil, filter=nil, endtime=nil, id=nil, fields=nil)
          @Name = name
          @StartTime = starttime
          @Filter = filter
          @EndTime = endtime
          @ID = id
          @Fields = fields
        end

        def deserialize(params)
          @Name = params['Name']
          @StartTime = params['StartTime']
          @Filter = params['Filter']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @Fields = params['Fields']
        end
      end

      # DescribeRumLogExportV2返回参数结构体
      class DescribeRumLogExportV2Response < TencentCloud::Common::AbstractModel
        # @param Result: <p>日志导出任务TaskId</p>
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRumLogExports请求参数结构体
      class DescribeRumLogExportsRequest < TencentCloud::Common::AbstractModel
        # @param PageSize: 页面大小
        # @type PageSize: Integer
        # @param PageNum: 页数，第几页
        # @type PageNum: Integer
        # @param ID: 项目ID（必填）
        # @type ID: Integer

        attr_accessor :PageSize, :PageNum, :ID

        def initialize(pagesize=nil, pagenum=nil, id=nil)
          @PageSize = pagesize
          @PageNum = pagenum
          @ID = id
        end

        def deserialize(params)
          @PageSize = params['PageSize']
          @PageNum = params['PageNum']
          @ID = params['ID']
        end
      end

      # DescribeRumLogExports返回参数结构体
      class DescribeRumLogExportsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回字符串
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRumLogExportsV2请求参数结构体
      class DescribeRumLogExportsV2Request < TencentCloud::Common::AbstractModel
        # @param PageSize: <p>每页返回任务数</p>
        # @type PageSize: Integer
        # @param PageNum: <p>当前页码</p>
        # @type PageNum: Integer
        # @param ID: <p>项目ID</p>
        # @type ID: Integer

        attr_accessor :PageSize, :PageNum, :ID

        def initialize(pagesize=nil, pagenum=nil, id=nil)
          @PageSize = pagesize
          @PageNum = pagenum
          @ID = id
        end

        def deserialize(params)
          @PageSize = params['PageSize']
          @PageNum = params['PageNum']
          @ID = params['ID']
        end
      end

      # DescribeRumLogExportsV2返回参数结构体
      class DescribeRumLogExportsV2Response < TencentCloud::Common::AbstractModel
        # @param Result: <p>日志导出列表</p>
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRumLogList请求参数结构体
      class DescribeRumLogListRequest < TencentCloud::Common::AbstractModel
        # @param OrderBy: 排序方式  desc  asc（必填）
        # @type OrderBy: String
        # @param StartTime: 开始时间（必填）格式为时间戳 毫秒
        # @type StartTime: String
        # @param Limit: 单次查询返回的原始日志条数，最大值为100（必填）
        # @type Limit: Integer
        # @param Page: 页数，第几页
        # @type Page: Integer
        # @param Query: 查询语句，参考控制台请求参数，语句长度最大为4096（必填）
        # @type Query: String
        # @param EndTime: 结束时间（必填）格式为时间戳 毫秒
        # @type EndTime: String
        # @param ID: 项目ID（必填）
        # @type ID: Integer

        attr_accessor :OrderBy, :StartTime, :Limit, :Page, :Query, :EndTime, :ID

        def initialize(orderby=nil, starttime=nil, limit=nil, page=nil, query=nil, endtime=nil, id=nil)
          @OrderBy = orderby
          @StartTime = starttime
          @Limit = limit
          @Page = page
          @Query = query
          @EndTime = endtime
          @ID = id
        end

        def deserialize(params)
          @OrderBy = params['OrderBy']
          @StartTime = params['StartTime']
          @Limit = params['Limit']
          @Page = params['Page']
          @Query = params['Query']
          @EndTime = params['EndTime']
          @ID = params['ID']
        end
      end

      # DescribeRumLogList返回参数结构体
      class DescribeRumLogListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回字符串
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRumLogTotalV2请求参数结构体
      class DescribeRumLogTotalV2Request < TencentCloud::Common::AbstractModel
        # @param OrderBy: <p>排序方式 desc asc</p>
        # @type OrderBy: String
        # @param StartTime: <p>查询日志开始时间（必填）格式为时间戳 毫秒</p>
        # @type StartTime: Integer
        # @param Limit: <p>单次查询返回的原始日志条数，最大值为100（必填）</p>
        # @type Limit: Integer
        # @param Filter: <p>过滤条件，其中key与运算符(Operator)对应可选字段枚举值与示例查看文档：<a href="https://cloud.tencent.com/document/product/248/87223">日志查询相关</a></p>
        # @type Filter: String
        # @param EndTime: <p>查询日志结束时间（必填）格式为时间戳 毫秒</p>
        # @type EndTime: Integer
        # @param ID: <p>项目ID（必填）</p>
        # @type ID: Integer
        # @param LastTime: <p>上次查询的最后一个日志的时间戳</p>
        # @type LastTime: Integer
        # @param LastRowId: <p>上次查询的最后一个日志的rowId</p>
        # @type LastRowId: Integer

        attr_accessor :OrderBy, :StartTime, :Limit, :Filter, :EndTime, :ID, :LastTime, :LastRowId

        def initialize(orderby=nil, starttime=nil, limit=nil, filter=nil, endtime=nil, id=nil, lasttime=nil, lastrowid=nil)
          @OrderBy = orderby
          @StartTime = starttime
          @Limit = limit
          @Filter = filter
          @EndTime = endtime
          @ID = id
          @LastTime = lasttime
          @LastRowId = lastrowid
        end

        def deserialize(params)
          @OrderBy = params['OrderBy']
          @StartTime = params['StartTime']
          @Limit = params['Limit']
          @Filter = params['Filter']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @LastTime = params['LastTime']
          @LastRowId = params['LastRowId']
        end
      end

      # DescribeRumLogTotalV2返回参数结构体
      class DescribeRumLogTotalV2Response < TencentCloud::Common::AbstractModel
        # @param Result: <p>日志总量</p>
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRumStatsLogList请求参数结构体
      class DescribeRumStatsLogListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间（必填）
        # @type StartTime: String
        # @param Limit: 单次查询返回的原始日志条数，最大值为100（必填）
        # @type Limit: Integer
        # @param Query: 查询语句，参考控制台请求参数，语句长度最大为4096（必填）
        # @type Query: String
        # @param EndTime: 结束时间（必填）
        # @type EndTime: String
        # @param ID: 项目ID（必填）
        # @type ID: Integer

        attr_accessor :StartTime, :Limit, :Query, :EndTime, :ID

        def initialize(starttime=nil, limit=nil, query=nil, endtime=nil, id=nil)
          @StartTime = starttime
          @Limit = limit
          @Query = query
          @EndTime = endtime
          @ID = id
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Limit = params['Limit']
          @Query = params['Query']
          @EndTime = params['EndTime']
          @ID = params['ID']
        end
      end

      # DescribeRumStatsLogList返回参数结构体
      class DescribeRumStatsLogListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回字符串
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRumStatsLogListV2请求参数结构体
      class DescribeRumStatsLogListV2Request < TencentCloud::Common::AbstractModel
        # @param StartTime: <p>查询日志开始时间（必填）</p>
        # @type StartTime: Integer
        # @param Limit: <p>单次查询返回的原始日志条数，最大值为100（必填）</p>
        # @type Limit: Integer
        # @param Filter: <p>过滤条件，其中key与运算符(Operator)对应可选字段枚举值与示例查看文档：<a href="https://cloud.tencent.com/document/product/248/87223">日志查询相关</a></p>
        # @type Filter: String
        # @param EndTime: <p>查询日志结束时间（必填）</p>
        # @type EndTime: Integer
        # @param ID: <p>项目ID（必填）</p>
        # @type ID: Integer

        attr_accessor :StartTime, :Limit, :Filter, :EndTime, :ID

        def initialize(starttime=nil, limit=nil, filter=nil, endtime=nil, id=nil)
          @StartTime = starttime
          @Limit = limit
          @Filter = filter
          @EndTime = endtime
          @ID = id
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Limit = params['Limit']
          @Filter = params['Filter']
          @EndTime = params['EndTime']
          @ID = params['ID']
        end
      end

      # DescribeRumStatsLogListV2返回参数结构体
      class DescribeRumStatsLogListV2Response < TencentCloud::Common::AbstractModel
        # @param Result: <p>日志时间分布</p>
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSampleRate请求参数结构体
      class DescribeSampleRateRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: <p>项目id</p>
        # @type ProjectId: Integer

        attr_accessor :ProjectId

        def initialize(projectid=nil)
          @ProjectId = projectid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeSampleRate返回参数结构体
      class DescribeSampleRateResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>结果</p>
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeScores请求参数结构体
      class DescribeScoresRequest < TencentCloud::Common::AbstractModel
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param ID: 项目ID
        # @type ID: Integer
        # @param IsDemo: 该参数已废弃
        # @type IsDemo: Integer
        # @param IDList: 项目 ID 列表
        # @type IDList: Array

        attr_accessor :EndTime, :StartTime, :ID, :IsDemo, :IDList
        extend Gem::Deprecate
        deprecate :IsDemo, :none, 2026, 10
        deprecate :IsDemo=, :none, 2026, 10

        def initialize(endtime=nil, starttime=nil, id=nil, isdemo=nil, idlist=nil)
          @EndTime = endtime
          @StartTime = starttime
          @ID = id
          @IsDemo = isdemo
          @IDList = idlist
        end

        def deserialize(params)
          @EndTime = params['EndTime']
          @StartTime = params['StartTime']
          @ID = params['ID']
          @IsDemo = params['IsDemo']
          @IDList = params['IDList']
        end
      end

      # DescribeScores返回参数结构体
      class DescribeScoresResponse < TencentCloud::Common::AbstractModel
        # @param ScoreSet: 数组
        # @type ScoreSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ScoreSet, :RequestId

        def initialize(scoreset=nil, requestid=nil)
          @ScoreSet = scoreset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ScoreSet'].nil?
            @ScoreSet = []
            params['ScoreSet'].each do |i|
              scoreinfo_tmp = ScoreInfo.new
              scoreinfo_tmp.deserialize(i)
              @ScoreSet << scoreinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeScoresV2请求参数结构体
      class DescribeScoresV2Request < TencentCloud::Common::AbstractModel
        # @param StartTime: <p>开始时间</p>
        # @type StartTime: String
        # @param EndTime: <p>结束时间</p>
        # @type EndTime: String
        # @param IDList: <p>项目 ID 列表</p>
        # @type IDList: Array
        # @param Type: <p>查询粒度，hour 或 day</p>
        # @type Type: String
        # @param Env: <p>环境</p>
        # @type Env: String

        attr_accessor :StartTime, :EndTime, :IDList, :Type, :Env

        def initialize(starttime=nil, endtime=nil, idlist=nil, type=nil, env=nil)
          @StartTime = starttime
          @EndTime = endtime
          @IDList = idlist
          @Type = type
          @Env = env
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @IDList = params['IDList']
          @Type = params['Type']
          @Env = params['Env']
        end
      end

      # DescribeScoresV2返回参数结构体
      class DescribeScoresV2Response < TencentCloud::Common::AbstractModel
        # @param ScoreSet: <p>项目得分数组</p>
        # @type ScoreSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ScoreSet, :RequestId

        def initialize(scoreset=nil, requestid=nil)
          @ScoreSet = scoreset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ScoreSet'].nil?
            @ScoreSet = []
            params['ScoreSet'].each do |i|
              scoreinfov2_tmp = ScoreInfoV2.new
              scoreinfov2_tmp.deserialize(i)
              @ScoreSet << scoreinfov2_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSessionList请求参数结构体
      class DescribeSessionListRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用id</p>
        # @type AppId: String
        # @param StartTime: <p>开始时间</p><p>单位：毫秒</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间</p><p>单位：毫秒</p>
        # @type EndTime: Integer
        # @param SessionType: <p>session类型</p><p>枚举值：</p><ul><li>all： 所有</li><li>error： 错</li><li>slow： 慢</li></ul>
        # @type SessionType: String
        # @param Page: <p>页面号</p><p>默认值：1</p>
        # @type Page: Integer
        # @param PageSize: <p>每一页的数量</p>
        # @type PageSize: Integer
        # @param SortBy: <p>排序字段</p>
        # @type SortBy: String
        # @param SortOrder: <p>排序方式，ASC或DESC</p>
        # @type SortOrder: String
        # @param UserId: <p>用户id</p>
        # @type UserId: String
        # @param SessionId: <p>session id</p>
        # @type SessionId: String
        # @param DeviceTypes: <p>设备类型</p>
        # @type DeviceTypes: Array
        # @param Browsers: <p>浏览器</p>
        # @type Browsers: Array
        # @param OSList: <p>操作系统</p>
        # @type OSList: Array
        # @param Platforms: <p>平台</p>
        # @type Platforms: Array
        # @param AppVersions: <p>应用版本</p>
        # @type AppVersions: Array
        # @param Countries: <p>国家</p>
        # @type Countries: Array
        # @param HasStruggle: <p>是否有挣扎事件</p>
        # @type HasStruggle: Boolean
        # @param StruggleRanks: <p>挣扎等级</p>
        # @type StruggleRanks: Array
        # @param StruggleTypes: <p>挣扎事件类型</p>
        # @type StruggleTypes: Array
        # @param HasError: <p>是否有错误</p>
        # @type HasError: Boolean
        # @param VisitedPage: <p>访问页面</p>
        # @type VisitedPage: String
        # @param ContainsEvent: <p>包含事件</p>
        # @type ContainsEvent: String
        # @param MinDuration: <p>最小持续时间</p>
        # @type MinDuration: Integer
        # @param MaxDuration: <p>最大持续时间</p>
        # @type MaxDuration: Integer
        # @param PerfFilter: <p>性能过滤</p>
        # @type PerfFilter: String
        # @param Regions: <p>地区</p>
        # @type Regions: Array
        # @param Environments: <p>环境</p>
        # @type Environments: Array
        # @param Filters: <p>筛选</p>
        # @type Filters: String
        # @param StartPage: <p>旅程起点页面。可选。不传表示不过滤。</p>
        # @type StartPage: String
        # @param EndPage: <p>旅程终点页面。可选。不传表示不过滤。</p>
        # @type EndPage: String
        # @param JourneyFilters: <p>旅程筛选条件 JSON 字符串，格式与 Filters 相同：[{Key,Op,Values}]。可选。不传表示不过滤。</p>
        # @type JourneyFilters: String

        attr_accessor :AppId, :StartTime, :EndTime, :SessionType, :Page, :PageSize, :SortBy, :SortOrder, :UserId, :SessionId, :DeviceTypes, :Browsers, :OSList, :Platforms, :AppVersions, :Countries, :HasStruggle, :StruggleRanks, :StruggleTypes, :HasError, :VisitedPage, :ContainsEvent, :MinDuration, :MaxDuration, :PerfFilter, :Regions, :Environments, :Filters, :StartPage, :EndPage, :JourneyFilters

        def initialize(appid=nil, starttime=nil, endtime=nil, sessiontype=nil, page=nil, pagesize=nil, sortby=nil, sortorder=nil, userid=nil, sessionid=nil, devicetypes=nil, browsers=nil, oslist=nil, platforms=nil, appversions=nil, countries=nil, hasstruggle=nil, struggleranks=nil, struggletypes=nil, haserror=nil, visitedpage=nil, containsevent=nil, minduration=nil, maxduration=nil, perffilter=nil, regions=nil, environments=nil, filters=nil, startpage=nil, endpage=nil, journeyfilters=nil)
          @AppId = appid
          @StartTime = starttime
          @EndTime = endtime
          @SessionType = sessiontype
          @Page = page
          @PageSize = pagesize
          @SortBy = sortby
          @SortOrder = sortorder
          @UserId = userid
          @SessionId = sessionid
          @DeviceTypes = devicetypes
          @Browsers = browsers
          @OSList = oslist
          @Platforms = platforms
          @AppVersions = appversions
          @Countries = countries
          @HasStruggle = hasstruggle
          @StruggleRanks = struggleranks
          @StruggleTypes = struggletypes
          @HasError = haserror
          @VisitedPage = visitedpage
          @ContainsEvent = containsevent
          @MinDuration = minduration
          @MaxDuration = maxduration
          @PerfFilter = perffilter
          @Regions = regions
          @Environments = environments
          @Filters = filters
          @StartPage = startpage
          @EndPage = endpage
          @JourneyFilters = journeyfilters
        end

        def deserialize(params)
          @AppId = params['AppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SessionType = params['SessionType']
          @Page = params['Page']
          @PageSize = params['PageSize']
          @SortBy = params['SortBy']
          @SortOrder = params['SortOrder']
          @UserId = params['UserId']
          @SessionId = params['SessionId']
          @DeviceTypes = params['DeviceTypes']
          @Browsers = params['Browsers']
          @OSList = params['OSList']
          @Platforms = params['Platforms']
          @AppVersions = params['AppVersions']
          @Countries = params['Countries']
          @HasStruggle = params['HasStruggle']
          @StruggleRanks = params['StruggleRanks']
          @StruggleTypes = params['StruggleTypes']
          @HasError = params['HasError']
          @VisitedPage = params['VisitedPage']
          @ContainsEvent = params['ContainsEvent']
          @MinDuration = params['MinDuration']
          @MaxDuration = params['MaxDuration']
          @PerfFilter = params['PerfFilter']
          @Regions = params['Regions']
          @Environments = params['Environments']
          @Filters = params['Filters']
          @StartPage = params['StartPage']
          @EndPage = params['EndPage']
          @JourneyFilters = params['JourneyFilters']
        end
      end

      # DescribeSessionList返回参数结构体
      class DescribeSessionListResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>返回结果</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeStruggleDistribution请求参数结构体
      class DescribeStruggleDistributionRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用id</p>
        # @type AppId: String
        # @param StartTime: <p>开始时间戳</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间戳</p>
        # @type EndTime: Integer
        # @param Platform: <p>平台</p>
        # @type Platform: String
        # @param Filters: <p>过滤条件</p>
        # @type Filters: String
        # @param JourneyFilters: <p>旅程筛选条件 JSON 字符串，格式与 Filters 相同：[{Key,Op,Values}]。可选。不传表示不过滤。</p>
        # @type JourneyFilters: String
        # @param HasStruggle: <p>是否只看包含挣扎的会话。可选。不传表示不过滤。</p>
        # @type HasStruggle: Boolean
        # @param StartPage: <p>旅程起点页面。可选。不传表示不过滤。</p>
        # @type StartPage: String
        # @param EndPage: <p>旅程终点页面。可选。不传表示不过滤。</p>
        # @type EndPage: String

        attr_accessor :AppId, :StartTime, :EndTime, :Platform, :Filters, :JourneyFilters, :HasStruggle, :StartPage, :EndPage

        def initialize(appid=nil, starttime=nil, endtime=nil, platform=nil, filters=nil, journeyfilters=nil, hasstruggle=nil, startpage=nil, endpage=nil)
          @AppId = appid
          @StartTime = starttime
          @EndTime = endtime
          @Platform = platform
          @Filters = filters
          @JourneyFilters = journeyfilters
          @HasStruggle = hasstruggle
          @StartPage = startpage
          @EndPage = endpage
        end

        def deserialize(params)
          @AppId = params['AppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Platform = params['Platform']
          @Filters = params['Filters']
          @JourneyFilters = params['JourneyFilters']
          @HasStruggle = params['HasStruggle']
          @StartPage = params['StartPage']
          @EndPage = params['EndPage']
        end
      end

      # DescribeStruggleDistribution返回参数结构体
      class DescribeStruggleDistributionResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>请求结果</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSymbolArtifactUploadCredential请求参数结构体
      class DescribeSymbolArtifactUploadCredentialRequest < TencentCloud::Common::AbstractModel
        # @param Kind: <p>制品类型。取值：js_sourcemap、ios_dsym、macos_dsym、windows_pdb、android_mapping、android_native、system_symbol。</p>
        # @type Kind: String
        # @param FileName: <p>上传文件名。</p>
        # @type FileName: String
        # @param AppId: <p>应用 ID。应用级制品必填；system_symbol 不传。</p>
        # @type AppId: String
        # @param ProjectId: <p>兼容别名，未传 AppId 时使用。</p>
        # @type ProjectId: String
        # @param Release: <p>保留字段，请勿传入。</p>
        # @type Release: String
        # @param Dist: <p>保留字段，请勿传入。</p>
        # @type Dist: String
        # @param MinifiedUrl: <p>保留字段，请勿传入。</p>
        # @type MinifiedUrl: String
        # @param FileType: <p>保留字段，请勿传入。</p>
        # @type FileType: String
        # @param DebugId: <p>保留字段，请勿传入。</p>
        # @type DebugId: String
        # @param BuildId: <p>保留字段，请勿传入。</p>
        # @type BuildId: String
        # @param AppVersion: <p>保留字段，请勿传入。</p>
        # @type AppVersion: String
        # @param Platform: <p>保留字段，请勿传入。</p>
        # @type Platform: String
        # @param OS: <p>系统名称。</p>
        # @type OS: String
        # @param OSVersion: <p>系统版本。</p>
        # @type OSVersion: String
        # @param StorePath: <p>保留字段，请勿传入。</p>
        # @type StorePath: String
        # @param ContentType: <p>文件内容类型，如 application/json。</p>
        # @type ContentType: String

        attr_accessor :Kind, :FileName, :AppId, :ProjectId, :Release, :Dist, :MinifiedUrl, :FileType, :DebugId, :BuildId, :AppVersion, :Platform, :OS, :OSVersion, :StorePath, :ContentType

        def initialize(kind=nil, filename=nil, appid=nil, projectid=nil, release=nil, dist=nil, minifiedurl=nil, filetype=nil, debugid=nil, buildid=nil, appversion=nil, platform=nil, os=nil, osversion=nil, storepath=nil, contenttype=nil)
          @Kind = kind
          @FileName = filename
          @AppId = appid
          @ProjectId = projectid
          @Release = release
          @Dist = dist
          @MinifiedUrl = minifiedurl
          @FileType = filetype
          @DebugId = debugid
          @BuildId = buildid
          @AppVersion = appversion
          @Platform = platform
          @OS = os
          @OSVersion = osversion
          @StorePath = storepath
          @ContentType = contenttype
        end

        def deserialize(params)
          @Kind = params['Kind']
          @FileName = params['FileName']
          @AppId = params['AppId']
          @ProjectId = params['ProjectId']
          @Release = params['Release']
          @Dist = params['Dist']
          @MinifiedUrl = params['MinifiedUrl']
          @FileType = params['FileType']
          @DebugId = params['DebugId']
          @BuildId = params['BuildId']
          @AppVersion = params['AppVersion']
          @Platform = params['Platform']
          @OS = params['OS']
          @OSVersion = params['OSVersion']
          @StorePath = params['StorePath']
          @ContentType = params['ContentType']
        end
      end

      # DescribeSymbolArtifactUploadCredential返回参数结构体
      class DescribeSymbolArtifactUploadCredentialResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>上传临时凭证，JSON 格式字符串。</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSymbolArtifacts请求参数结构体
      class DescribeSymbolArtifactsRequest < TencentCloud::Common::AbstractModel
        # @param Kind: <p>制品类型。取值：js_sourcemap、ios_dsym、macos_dsym、windows_pdb、android_mapping、android_native、system_symbol。native_symbol 仅查询历史数据。</p>
        # @type Kind: String
        # @param AppId: <p>应用 ID。js_sourcemap 必填，其他应用级制品用于过滤。</p>
        # @type AppId: String
        # @param ProjectId: <p>兼容别名，未传 AppId 时使用。</p>
        # @type ProjectId: String
        # @param Release: <p>JS 应用版本过滤条件。</p>
        # @type Release: String
        # @param Dist: <p>JS 制品的历史 Dist 过滤条件。</p>
        # @type Dist: String
        # @param FileType: <p>JS 制品文件类型过滤条件。</p>
        # @type FileType: String
        # @param AppVersion: <p>应用版本过滤条件。</p>
        # @type AppVersion: String
        # @param Platform: <p>历史 native_symbol 的平台过滤条件。</p>
        # @type Platform: String
        # @param OS: <p>系统名称。system_symbol 场景过滤条件。</p>
        # @type OS: String
        # @param OSVersion: <p>系统版本。system_symbol 场景过滤条件。</p>
        # @type OSVersion: String
        # @param Status: <p>状态过滤。可按 active、superseded、deleted、invalid 过滤。</p>
        # @type Status: String
        # @param Limit: <p>分页大小。默认 50。</p>
        # @type Limit: Integer
        # @param Cursor: <p>分页游标。</p>
        # @type Cursor: String

        attr_accessor :Kind, :AppId, :ProjectId, :Release, :Dist, :FileType, :AppVersion, :Platform, :OS, :OSVersion, :Status, :Limit, :Cursor

        def initialize(kind=nil, appid=nil, projectid=nil, release=nil, dist=nil, filetype=nil, appversion=nil, platform=nil, os=nil, osversion=nil, status=nil, limit=nil, cursor=nil)
          @Kind = kind
          @AppId = appid
          @ProjectId = projectid
          @Release = release
          @Dist = dist
          @FileType = filetype
          @AppVersion = appversion
          @Platform = platform
          @OS = os
          @OSVersion = osversion
          @Status = status
          @Limit = limit
          @Cursor = cursor
        end

        def deserialize(params)
          @Kind = params['Kind']
          @AppId = params['AppId']
          @ProjectId = params['ProjectId']
          @Release = params['Release']
          @Dist = params['Dist']
          @FileType = params['FileType']
          @AppVersion = params['AppVersion']
          @Platform = params['Platform']
          @OS = params['OS']
          @OSVersion = params['OSVersion']
          @Status = params['Status']
          @Limit = params['Limit']
          @Cursor = params['Cursor']
        end
      end

      # DescribeSymbolArtifacts返回参数结构体
      class DescribeSymbolArtifactsResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>制品列表，JSON 格式字符串，包含 artifacts、next_cursor 和 total。</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMApplications请求参数结构体
      class DescribeTDEMApplicationsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: <p>分页偏移，默认 0</p>
        # @type Offset: Integer
        # @param Limit: <p>每页数量，默认 20，上限 100</p>
        # @type Limit: Integer
        # @param InstanceId: <p>业务系统 ID（可选，缺省返回名下全部应用）</p>
        # @type InstanceId: String
        # @param DemoMode: <p>演示模式开关</p>
        # @type DemoMode: Boolean

        attr_accessor :Offset, :Limit, :InstanceId, :DemoMode

        def initialize(offset=nil, limit=nil, instanceid=nil, demomode=nil)
          @Offset = offset
          @Limit = limit
          @InstanceId = instanceid
          @DemoMode = demomode
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @InstanceId = params['InstanceId']
          @DemoMode = params['DemoMode']
        end
      end

      # DescribeTDEMApplications返回参数结构体
      class DescribeTDEMApplicationsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>总数</p>
        # @type TotalCount: Integer
        # @param ApplicationSet: <p>应用列表</p>
        # @type ApplicationSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ApplicationSet, :RequestId

        def initialize(totalcount=nil, applicationset=nil, requestid=nil)
          @TotalCount = totalcount
          @ApplicationSet = applicationset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ApplicationSet'].nil?
            @ApplicationSet = []
            params['ApplicationSet'].each do |i|
              applicationitem_tmp = ApplicationItem.new
              applicationitem_tmp.deserialize(i)
              @ApplicationSet << applicationitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMBusinessSystems请求参数结构体
      class DescribeTDEMBusinessSystemsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: <p>分页偏移，默认 0</p>
        # @type Offset: Integer
        # @param Limit: <p>每页数量，默认 20，上限 100</p>
        # @type Limit: Integer
        # @param DemoMode: <p>演示模式开关</p>
        # @type DemoMode: Boolean

        attr_accessor :Offset, :Limit, :DemoMode

        def initialize(offset=nil, limit=nil, demomode=nil)
          @Offset = offset
          @Limit = limit
          @DemoMode = demomode
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @DemoMode = params['DemoMode']
        end
      end

      # DescribeTDEMBusinessSystems返回参数结构体
      class DescribeTDEMBusinessSystemsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>总数</p>
        # @type TotalCount: Integer
        # @param BusinessSystemSet: <p>业务系统列表</p>
        # @type BusinessSystemSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BusinessSystemSet, :RequestId

        def initialize(totalcount=nil, businesssystemset=nil, requestid=nil)
          @TotalCount = totalcount
          @BusinessSystemSet = businesssystemset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BusinessSystemSet'].nil?
            @BusinessSystemSet = []
            params['BusinessSystemSet'].each do |i|
              businesssystemitem_tmp = BusinessSystemItem.new
              businesssystemitem_tmp.deserialize(i)
              @BusinessSystemSet << businesssystemitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMDialDimensions请求参数结构体
      class DescribeTDEMDialDimensionsRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param StartTime: <p>开始时间，毫秒时间戳</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间，毫秒时间戳，必须大于 StartTime</p>
        # @type EndTime: Integer
        # @param Dimension: <p>维度。取值说明：platform、app_version、device、net_type、operator、region、country、target_ip。</p>
        # @type Dimension: String
        # @param TaskId: <p>任务 ID。不传表示不过滤。</p>
        # @type TaskId: String
        # @param Platform: <p>客户端平台。不传表示不过滤。</p>
        # @type Platform: String
        # @param AppVersion: <p>应用版本。不传表示不过滤。</p>
        # @type AppVersion: String
        # @param Device: <p>设备机型，对应 device_type。不传表示不过滤。</p>
        # @type Device: String
        # @param NetType: <p>网络类型，对应 network_type。不传表示不过滤。</p>
        # @type NetType: String
        # @param Operator: <p>客户端运营商，对应 isp。不传表示不过滤。不是目标 IP 运营商。</p>
        # @type Operator: String
        # @param ClientRegion: <p>客户端地区，对应 province。云 API 公共参数已占用 Region，筛选入参名为 ClientRegion。不传表示不过滤。不是目标 IP 地区。</p>
        # @type ClientRegion: String
        # @param TargetIp: <p>目标 IP。不传表示不过滤。</p>
        # @type TargetIp: String
        # @param Environment: <p>环境。可选。不传表示不过滤。</p>
        # @type Environment: String

        attr_accessor :AppId, :StartTime, :EndTime, :Dimension, :TaskId, :Platform, :AppVersion, :Device, :NetType, :Operator, :ClientRegion, :TargetIp, :Environment

        def initialize(appid=nil, starttime=nil, endtime=nil, dimension=nil, taskid=nil, platform=nil, appversion=nil, device=nil, nettype=nil, operator=nil, clientregion=nil, targetip=nil, environment=nil)
          @AppId = appid
          @StartTime = starttime
          @EndTime = endtime
          @Dimension = dimension
          @TaskId = taskid
          @Platform = platform
          @AppVersion = appversion
          @Device = device
          @NetType = nettype
          @Operator = operator
          @ClientRegion = clientregion
          @TargetIp = targetip
          @Environment = environment
        end

        def deserialize(params)
          @AppId = params['AppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Dimension = params['Dimension']
          @TaskId = params['TaskId']
          @Platform = params['Platform']
          @AppVersion = params['AppVersion']
          @Device = params['Device']
          @NetType = params['NetType']
          @Operator = params['Operator']
          @ClientRegion = params['ClientRegion']
          @TargetIp = params['TargetIp']
          @Environment = params['Environment']
        end
      end

      # DescribeTDEMDialDimensions返回参数结构体
      class DescribeTDEMDialDimensionsResponse < TencentCloud::Common::AbstractModel
        # @param Dimension: <p>本次查询的维度</p>
        # @type Dimension: String
        # @param Items: <p>维度统计项</p>
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Dimension, :Items, :RequestId

        def initialize(dimension=nil, items=nil, requestid=nil)
          @Dimension = dimension
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @Dimension = params['Dimension']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              dialdimensionitem_tmp = DialDimensionItem.new
              dialdimensionitem_tmp.deserialize(i)
              @Items << dialdimensionitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMDialExecutionDetail请求参数结构体
      class DescribeTDEMDialExecutionDetailRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param StartTime: <p>开始时间，毫秒时间戳</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间，毫秒时间戳，必须大于 StartTime</p>
        # @type EndTime: Integer
        # @param TaskId: <p>任务 ID。不传表示不过滤。</p>
        # @type TaskId: String
        # @param TaskSessionId: <p>拨测批次 ID</p>
        # @type TaskSessionId: String
        # @param Platform: <p>客户端平台。不传表示不过滤。</p>
        # @type Platform: String
        # @param AppVersion: <p>应用版本。不传表示不过滤。</p>
        # @type AppVersion: String
        # @param Device: <p>设备机型，对应 device_type。不传表示不过滤。</p>
        # @type Device: String
        # @param NetType: <p>网络类型，对应 network_type。不传表示不过滤。</p>
        # @type NetType: String
        # @param Operator: <p>客户端运营商，对应 isp。不传表示不过滤。不是目标 IP 运营商。</p>
        # @type Operator: String
        # @param ClientRegion: <p>客户端地区，对应 province。云 API 公共参数已占用 Region，筛选入参名为 ClientRegion。不传表示不过滤。不是目标 IP 地区。</p>
        # @type ClientRegion: String
        # @param TargetIp: <p>目标 IP。不传表示不过滤。</p>
        # @type TargetIp: String
        # @param Environment: <p>环境。可选。不传表示不过滤。</p>
        # @type Environment: String

        attr_accessor :AppId, :StartTime, :EndTime, :TaskId, :TaskSessionId, :Platform, :AppVersion, :Device, :NetType, :Operator, :ClientRegion, :TargetIp, :Environment

        def initialize(appid=nil, starttime=nil, endtime=nil, taskid=nil, tasksessionid=nil, platform=nil, appversion=nil, device=nil, nettype=nil, operator=nil, clientregion=nil, targetip=nil, environment=nil)
          @AppId = appid
          @StartTime = starttime
          @EndTime = endtime
          @TaskId = taskid
          @TaskSessionId = tasksessionid
          @Platform = platform
          @AppVersion = appversion
          @Device = device
          @NetType = nettype
          @Operator = operator
          @ClientRegion = clientregion
          @TargetIp = targetip
          @Environment = environment
        end

        def deserialize(params)
          @AppId = params['AppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @TaskId = params['TaskId']
          @TaskSessionId = params['TaskSessionId']
          @Platform = params['Platform']
          @AppVersion = params['AppVersion']
          @Device = params['Device']
          @NetType = params['NetType']
          @Operator = params['Operator']
          @ClientRegion = params['ClientRegion']
          @TargetIp = params['TargetIp']
          @Environment = params['Environment']
        end
      end

      # DescribeTDEMDialExecutionDetail返回参数结构体
      class DescribeTDEMDialExecutionDetailResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: <p>任务 ID</p>
        # @type TaskId: String
        # @param TaskName: <p>任务名称</p>
        # @type TaskName: String
        # @param TaskSessionId: <p>拨测批次 ID</p>
        # @type TaskSessionId: String
        # @param StartTime: <p>批次开始时间，毫秒时间戳</p>
        # @type StartTime: Integer
        # @param SessionId: <p>所属用户会话 ID</p>
        # @type SessionId: String
        # @param Success: <p>本批次是否全部探测成功</p>
        # @type Success: Boolean
        # @param AvgDuration: <p>平均时延，单位毫秒</p>
        # @type AvgDuration: Float
        # @param Platform: <p>客户端平台</p>
        # @type Platform: String
        # @param AppVersion: <p>应用版本</p>
        # @type AppVersion: String
        # @param Device: <p>设备机型</p>
        # @type Device: String
        # @param NetType: <p>网络类型</p>
        # @type NetType: String
        # @param Operator: <p>客户端运营商</p>
        # @type Operator: String
        # @param Region: <p>客户端地区</p>
        # @type Region: String
        # @param TargetIps: <p>本批次目标 IP</p>
        # @type TargetIps: Array
        # @param Probes: <p>每个目标的探测结果</p>
        # @type Probes: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :TaskName, :TaskSessionId, :StartTime, :SessionId, :Success, :AvgDuration, :Platform, :AppVersion, :Device, :NetType, :Operator, :Region, :TargetIps, :Probes, :RequestId

        def initialize(taskid=nil, taskname=nil, tasksessionid=nil, starttime=nil, sessionid=nil, success=nil, avgduration=nil, platform=nil, appversion=nil, device=nil, nettype=nil, operator=nil, region=nil, targetips=nil, probes=nil, requestid=nil)
          @TaskId = taskid
          @TaskName = taskname
          @TaskSessionId = tasksessionid
          @StartTime = starttime
          @SessionId = sessionid
          @Success = success
          @AvgDuration = avgduration
          @Platform = platform
          @AppVersion = appversion
          @Device = device
          @NetType = nettype
          @Operator = operator
          @Region = region
          @TargetIps = targetips
          @Probes = probes
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @TaskSessionId = params['TaskSessionId']
          @StartTime = params['StartTime']
          @SessionId = params['SessionId']
          @Success = params['Success']
          @AvgDuration = params['AvgDuration']
          @Platform = params['Platform']
          @AppVersion = params['AppVersion']
          @Device = params['Device']
          @NetType = params['NetType']
          @Operator = params['Operator']
          @Region = params['Region']
          @TargetIps = params['TargetIps']
          unless params['Probes'].nil?
            @Probes = []
            params['Probes'].each do |i|
              dialprobe_tmp = DialProbe.new
              dialprobe_tmp.deserialize(i)
              @Probes << dialprobe_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMDialExecutionList请求参数结构体
      class DescribeTDEMDialExecutionListRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param StartTime: <p>开始时间，毫秒时间戳</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间，毫秒时间戳，必须大于 StartTime</p>
        # @type EndTime: Integer
        # @param TaskId: <p>任务 ID。不传表示不过滤。</p>
        # @type TaskId: String
        # @param Platform: <p>客户端平台。不传表示不过滤。</p>
        # @type Platform: String
        # @param AppVersion: <p>应用版本。不传表示不过滤。</p>
        # @type AppVersion: String
        # @param Device: <p>设备机型，对应 device_type。不传表示不过滤。</p>
        # @type Device: String
        # @param NetType: <p>网络类型，对应 network_type。不传表示不过滤。</p>
        # @type NetType: String
        # @param Operator: <p>客户端运营商，对应 isp。不传表示不过滤。不是目标 IP 运营商。</p>
        # @type Operator: String
        # @param ClientRegion: <p>客户端地区，对应 province。云 API 公共参数已占用 Region，筛选入参名为 ClientRegion。不传表示不过滤。不是目标 IP 地区。</p>
        # @type ClientRegion: String
        # @param TargetIp: <p>目标 IP。不传表示不过滤。</p>
        # @type TargetIp: String
        # @param Limit: <p>返回条数。范围 1 到 100，不传时为 20。</p>
        # @type Limit: Integer
        # @param Offset: <p>偏移量。不传时为 0。</p>
        # @type Offset: Integer
        # @param Success: <p>是否只看成功或失败批次。不传表示不过滤。</p>
        # @type Success: Boolean
        # @param Environment: <p>环境。可选。不传表示不过滤。</p>
        # @type Environment: String

        attr_accessor :AppId, :StartTime, :EndTime, :TaskId, :Platform, :AppVersion, :Device, :NetType, :Operator, :ClientRegion, :TargetIp, :Limit, :Offset, :Success, :Environment

        def initialize(appid=nil, starttime=nil, endtime=nil, taskid=nil, platform=nil, appversion=nil, device=nil, nettype=nil, operator=nil, clientregion=nil, targetip=nil, limit=nil, offset=nil, success=nil, environment=nil)
          @AppId = appid
          @StartTime = starttime
          @EndTime = endtime
          @TaskId = taskid
          @Platform = platform
          @AppVersion = appversion
          @Device = device
          @NetType = nettype
          @Operator = operator
          @ClientRegion = clientregion
          @TargetIp = targetip
          @Limit = limit
          @Offset = offset
          @Success = success
          @Environment = environment
        end

        def deserialize(params)
          @AppId = params['AppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @TaskId = params['TaskId']
          @Platform = params['Platform']
          @AppVersion = params['AppVersion']
          @Device = params['Device']
          @NetType = params['NetType']
          @Operator = params['Operator']
          @ClientRegion = params['ClientRegion']
          @TargetIp = params['TargetIp']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Success = params['Success']
          @Environment = params['Environment']
        end
      end

      # DescribeTDEMDialExecutionList返回参数结构体
      class DescribeTDEMDialExecutionListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>满足条件的批次数</p>
        # @type TotalCount: Integer
        # @param ExecutionSet: <p>执行批次列表</p>
        # @type ExecutionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ExecutionSet, :RequestId

        def initialize(totalcount=nil, executionset=nil, requestid=nil)
          @TotalCount = totalcount
          @ExecutionSet = executionset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ExecutionSet'].nil?
            @ExecutionSet = []
            params['ExecutionSet'].each do |i|
              dialexecution_tmp = DialExecution.new
              dialexecution_tmp.deserialize(i)
              @ExecutionSet << dialexecution_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMDialOverview请求参数结构体
      class DescribeTDEMDialOverviewRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param StartTime: <p>开始时间，毫秒时间戳</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间，毫秒时间戳，必须大于 StartTime</p>
        # @type EndTime: Integer
        # @param TaskId: <p>任务 ID。不传表示不过滤。</p>
        # @type TaskId: String
        # @param Platform: <p>客户端平台。不传表示不过滤。</p>
        # @type Platform: String
        # @param AppVersion: <p>应用版本。不传表示不过滤。</p>
        # @type AppVersion: String
        # @param Device: <p>设备机型，对应 device_type。不传表示不过滤。</p>
        # @type Device: String
        # @param NetType: <p>网络类型，对应 network_type。不传表示不过滤。</p>
        # @type NetType: String
        # @param Operator: <p>客户端运营商，对应 isp。不传表示不过滤。不是目标 IP 运营商。</p>
        # @type Operator: String
        # @param ClientRegion: <p>客户端地区，对应 province。云 API 公共参数已占用 Region，筛选入参名为 ClientRegion。不传表示不过滤。不是目标 IP 地区。</p>
        # @type ClientRegion: String
        # @param TargetIp: <p>目标 IP。不传表示不过滤。</p>
        # @type TargetIp: String
        # @param Environment: <p>环境。可选。不传表示不过滤。</p>
        # @type Environment: String

        attr_accessor :AppId, :StartTime, :EndTime, :TaskId, :Platform, :AppVersion, :Device, :NetType, :Operator, :ClientRegion, :TargetIp, :Environment

        def initialize(appid=nil, starttime=nil, endtime=nil, taskid=nil, platform=nil, appversion=nil, device=nil, nettype=nil, operator=nil, clientregion=nil, targetip=nil, environment=nil)
          @AppId = appid
          @StartTime = starttime
          @EndTime = endtime
          @TaskId = taskid
          @Platform = platform
          @AppVersion = appversion
          @Device = device
          @NetType = nettype
          @Operator = operator
          @ClientRegion = clientregion
          @TargetIp = targetip
          @Environment = environment
        end

        def deserialize(params)
          @AppId = params['AppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @TaskId = params['TaskId']
          @Platform = params['Platform']
          @AppVersion = params['AppVersion']
          @Device = params['Device']
          @NetType = params['NetType']
          @Operator = params['Operator']
          @ClientRegion = params['ClientRegion']
          @TargetIp = params['TargetIp']
          @Environment = params['Environment']
        end
      end

      # DescribeTDEMDialOverview返回参数结构体
      class DescribeTDEMDialOverviewResponse < TencentCloud::Common::AbstractModel
        # @param TaskCount: <p>任务数</p>
        # @type TaskCount: Integer
        # @param ExecutionCount: <p>执行批次数</p>
        # @type ExecutionCount: Integer
        # @param SuccessCount: <p>成功批次数</p>
        # @type SuccessCount: Integer
        # @param FailCount: <p>失败批次数</p>
        # @type FailCount: Integer
        # @param AvgDuration: <p>平均时延，单位毫秒</p>
        # @type AvgDuration: Float
        # @param AvgLoss: <p>平均丢包率，0 到 100</p>
        # @type AvgLoss: Float
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskCount, :ExecutionCount, :SuccessCount, :FailCount, :AvgDuration, :AvgLoss, :RequestId

        def initialize(taskcount=nil, executioncount=nil, successcount=nil, failcount=nil, avgduration=nil, avgloss=nil, requestid=nil)
          @TaskCount = taskcount
          @ExecutionCount = executioncount
          @SuccessCount = successcount
          @FailCount = failcount
          @AvgDuration = avgduration
          @AvgLoss = avgloss
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskCount = params['TaskCount']
          @ExecutionCount = params['ExecutionCount']
          @SuccessCount = params['SuccessCount']
          @FailCount = params['FailCount']
          @AvgDuration = params['AvgDuration']
          @AvgLoss = params['AvgLoss']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMDialTasks请求参数结构体
      class DescribeTDEMDialTasksRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String

        attr_accessor :AppId

        def initialize(appid=nil)
          @AppId = appid
        end

        def deserialize(params)
          @AppId = params['AppId']
        end
      end

      # DescribeTDEMDialTasks返回参数结构体
      class DescribeTDEMDialTasksResponse < TencentCloud::Common::AbstractModel
        # @param TaskSet: <p>拨测任务列表</p>
        # @type TaskSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskSet, :RequestId

        def initialize(taskset=nil, requestid=nil)
          @TaskSet = taskset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskSet'].nil?
            @TaskSet = []
            params['TaskSet'].each do |i|
              dialtask_tmp = DialTask.new
              dialtask_tmp.deserialize(i)
              @TaskSet << dialtask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMDialTrend请求参数结构体
      class DescribeTDEMDialTrendRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param StartTime: <p>开始时间，毫秒时间戳</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间，毫秒时间戳，必须大于 StartTime</p>
        # @type EndTime: Integer
        # @param TaskId: <p>任务 ID。不传表示不过滤。</p>
        # @type TaskId: String
        # @param Platform: <p>客户端平台。不传表示不过滤。</p>
        # @type Platform: String
        # @param AppVersion: <p>应用版本。不传表示不过滤。</p>
        # @type AppVersion: String
        # @param Device: <p>设备机型，对应 device_type。不传表示不过滤。</p>
        # @type Device: String
        # @param NetType: <p>网络类型，对应 network_type。不传表示不过滤。</p>
        # @type NetType: String
        # @param Operator: <p>客户端运营商，对应 isp。不传表示不过滤。不是目标 IP 运营商。</p>
        # @type Operator: String
        # @param ClientRegion: <p>客户端地区，对应 province。云 API 公共参数已占用 Region，筛选入参名为 ClientRegion。不传表示不过滤。不是目标 IP 地区。</p>
        # @type ClientRegion: String
        # @param TargetIp: <p>目标 IP。不传表示不过滤。</p>
        # @type TargetIp: String
        # @param Granularity: <p>时间粒度。取值说明：hour、day。不传时为 hour。</p>
        # @type Granularity: String
        # @param Environment: <p>环境。可选。不传表示不过滤。</p>
        # @type Environment: String

        attr_accessor :AppId, :StartTime, :EndTime, :TaskId, :Platform, :AppVersion, :Device, :NetType, :Operator, :ClientRegion, :TargetIp, :Granularity, :Environment

        def initialize(appid=nil, starttime=nil, endtime=nil, taskid=nil, platform=nil, appversion=nil, device=nil, nettype=nil, operator=nil, clientregion=nil, targetip=nil, granularity=nil, environment=nil)
          @AppId = appid
          @StartTime = starttime
          @EndTime = endtime
          @TaskId = taskid
          @Platform = platform
          @AppVersion = appversion
          @Device = device
          @NetType = nettype
          @Operator = operator
          @ClientRegion = clientregion
          @TargetIp = targetip
          @Granularity = granularity
          @Environment = environment
        end

        def deserialize(params)
          @AppId = params['AppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @TaskId = params['TaskId']
          @Platform = params['Platform']
          @AppVersion = params['AppVersion']
          @Device = params['Device']
          @NetType = params['NetType']
          @Operator = params['Operator']
          @ClientRegion = params['ClientRegion']
          @TargetIp = params['TargetIp']
          @Granularity = params['Granularity']
          @Environment = params['Environment']
        end
      end

      # DescribeTDEMDialTrend返回参数结构体
      class DescribeTDEMDialTrendResponse < TencentCloud::Common::AbstractModel
        # @param Points: <p>趋势点</p>
        # @type Points: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Points, :RequestId

        def initialize(points=nil, requestid=nil)
          @Points = points
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Points'].nil?
            @Points = []
            params['Points'].each do |i|
              dialtrendpoint_tmp = DialTrendPoint.new
              dialtrendpoint_tmp.deserialize(i)
              @Points << dialtrendpoint_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMEventDetail请求参数结构体
      class DescribeTDEMEventDetailRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID（必填）</p>
        # @type AppId: String
        # @param EventId: <p>事件 ID（必填）</p>
        # @type EventId: String
        # @param Date: <p>分区日期 YYYY-MM-DD（推荐）</p>
        # @type Date: String

        attr_accessor :AppId, :EventId, :Date

        def initialize(appid=nil, eventid=nil, date=nil)
          @AppId = appid
          @EventId = eventid
          @Date = date
        end

        def deserialize(params)
          @AppId = params['AppId']
          @EventId = params['EventId']
          @Date = params['Date']
        end
      end

      # DescribeTDEMEventDetail返回参数结构体
      class DescribeTDEMEventDetailResponse < TencentCloud::Common::AbstractModel
        # @param Event: <p>事件主表视图</p>
        # @type Event: :class:`Tencentcloud::Rum.v20210622.models.EventView`
        # @param Symbolicated: <p>符号化结果，未翻译时可省略</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Symbolicated: :class:`Tencentcloud::Rum.v20210622.models.SymbolicatedView`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Event, :Symbolicated, :RequestId

        def initialize(event=nil, symbolicated=nil, requestid=nil)
          @Event = event
          @Symbolicated = symbolicated
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Event'].nil?
            @Event = EventView.new
            @Event.deserialize(params['Event'])
          end
          unless params['Symbolicated'].nil?
            @Symbolicated = SymbolicatedView.new
            @Symbolicated.deserialize(params['Symbolicated'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMEventRank请求参数结构体
      class DescribeTDEMEventRankRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID（必填）</p>
        # @type AppId: String
        # @param StartTime: <p>开始时间 Unix 毫秒（必填）</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间 Unix 毫秒（必填）</p>
        # @type EndTime: Integer
        # @param Kind: <p>排行类型：error/api/resource/api_page/resource_page/api_status/api_status_top/resource_status/tag；exception_dimension 为异常维度同源统计，使用 ExceptionDistribution 返回结果。</p>
        # @type Kind: String
        # @param EventTypes: <p>旧 Kind 保持既有错误类型过滤规则；Kind=exception_dimension 标签模式必填，允许 js_error、promise_error、api_error、resource_error、blank_screen、log、native_crash、crash、no_response、lag_detected、app_launch。合法重复值去重，未知值拒绝；普通维度模式不传。</p>
        # @type EventTypes: Array
        # @param TagKey: <p>旧 Kind=tag 保持既有标签查询；Kind=exception_dimension 标签模式必填，与 GroupBy 二选一。使用既有标签名规范，长度 1–64，允许字母数字及 _-.；标签值保留原始内容。</p>
        # @type TagKey: String
        # @param Limit: <p>返回条数，上限100。旧 Kind 缺省50；Kind=exception_dimension 缺省100，显式值为1–100，限制完整归一化维度行数，不裁剪分类向量。</p>
        # @type Limit: Integer
        # @param Granularity: <p>旧 Kind 可选粒度5m/1h/1d；Kind=exception_dimension 不支持，传非空值返回 InvalidParameter。</p>
        # @type Granularity: String
        # @param Filters: <p>筛选条件 JSON 字符串，走 events 表白名单</p>
        # @type Filters: String
        # @param CostType: <p>旧 Kind 耗时口径 avg/p50/p75/p95/p99；Kind=exception_dimension 不支持，传非空值返回 InvalidParameter。</p>
        # @type CostType: String
        # @param GroupBy: <p>异常分布的聚合维度，仅 Kind=exception_dimension 的普通维度模式使用且必填。标签模式只传 TagKey，不传 GroupBy。</p><p>枚举值：</p><ul><li>device_type： 设备型号</li><li>os： 操作系统</li><li>browser： 浏览器</li><li>app_version： 应用版本</li><li>province： 省份</li><li>platform： 平台</li><li>network_type： 网络类型</li></ul>
        # @type GroupBy: String
        # @param ProjectType: <p>仅 Kind=exception_dimension 普通维度模式必填。允许 web、android、ios，须与应用平台及 CategoryKeys 目录一致。标签模式不传。</p>
        # @type ProjectType: String
        # @param CategoryKeys: <p>仅 Kind=exception_dimension 普通维度模式必填，为页面实际有效的异常目录 key 非空去重集合。仅接受对应 ProjectType 的固定目录，包含项须同时选择父项；未知、重复、空目录及互斥参数组合返回 InvalidParameter。标签模式不传。</p>
        # @type CategoryKeys: Array

        attr_accessor :AppId, :StartTime, :EndTime, :Kind, :EventTypes, :TagKey, :Limit, :Granularity, :Filters, :CostType, :GroupBy, :ProjectType, :CategoryKeys

        def initialize(appid=nil, starttime=nil, endtime=nil, kind=nil, eventtypes=nil, tagkey=nil, limit=nil, granularity=nil, filters=nil, costtype=nil, groupby=nil, projecttype=nil, categorykeys=nil)
          @AppId = appid
          @StartTime = starttime
          @EndTime = endtime
          @Kind = kind
          @EventTypes = eventtypes
          @TagKey = tagkey
          @Limit = limit
          @Granularity = granularity
          @Filters = filters
          @CostType = costtype
          @GroupBy = groupby
          @ProjectType = projecttype
          @CategoryKeys = categorykeys
        end

        def deserialize(params)
          @AppId = params['AppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Kind = params['Kind']
          @EventTypes = params['EventTypes']
          @TagKey = params['TagKey']
          @Limit = params['Limit']
          @Granularity = params['Granularity']
          @Filters = params['Filters']
          @CostType = params['CostType']
          @GroupBy = params['GroupBy']
          @ProjectType = params['ProjectType']
          @CategoryKeys = params['CategoryKeys']
        end
      end

      # DescribeTDEMEventRank返回参数结构体
      class DescribeTDEMEventRankResponse < TencentCloud::Common::AbstractModel
        # @param Items: <p>排行行</p>
        # @type Items: Array
        # @param ExceptionDistribution: <p>仅 Kind=exception_dimension 返回。Rows 为完整维度行及固定分类向量；空数据返回 Rows=[]。父行 TotalCount 等于 IncludedInTotal=true 的主项 Count 之和，包含项仅展示且不重复计总。所有计数为0至9007199254740991的整数。旧 Kind 继续使用 Items。</p>
        # @type ExceptionDistribution: :class:`Tencentcloud::Rum.v20210622.models.ExceptionDistribution`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :ExceptionDistribution, :RequestId

        def initialize(items=nil, exceptiondistribution=nil, requestid=nil)
          @Items = items
          @ExceptionDistribution = exceptiondistribution
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              eventrankitem_tmp = EventRankItem.new
              eventrankitem_tmp.deserialize(i)
              @Items << eventrankitem_tmp
            end
          end
          unless params['ExceptionDistribution'].nil?
            @ExceptionDistribution = ExceptionDistribution.new
            @ExceptionDistribution.deserialize(params['ExceptionDistribution'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMEventSearch请求参数结构体
      class DescribeTDEMEventSearchRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID（必填）</p>
        # @type AppId: String
        # @param StartTime: <p>开始时间 Unix 毫秒（必填）</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间 Unix 毫秒（必填）</p>
        # @type EndTime: Integer
        # @param Category: <p>事件分类（必填，禁止 session）</p>
        # @type Category: String
        # @param Filters: <p>筛选条件 JSON 字符串：[{Key,Op,Values}]，须在探索白名单</p>
        # @type Filters: String
        # @param SortBy: <p>排序字段：timestamp（默认）/ duration</p>
        # @type SortBy: String
        # @param SortOrder: <p>排序方向：asc / desc，默认 desc</p>
        # @type SortOrder: String
        # @param Page: <p>页码，&gt;=1，默认 1</p>
        # @type Page: Integer
        # @param PageSize: <p>每页条数，1-100，默认 20</p>
        # @type PageSize: Integer
        # @param HasError: <p>是否只看有错误的会话。可选。不传表示不过滤。Category 为 session 的汇总查询会使用该条件。</p>
        # @type HasError: Boolean
        # @param MinDuration: <p>会话最短时长，单位毫秒。可选。0 或不传表示不限制。Category 为 session 的汇总查询会使用该条件。</p>
        # @type MinDuration: Integer
        # @param MaxDuration: <p>会话最长时长，单位毫秒。可选。0 或不传表示不限制。Category 为 session 的汇总查询会使用该条件。</p>
        # @type MaxDuration: Integer

        attr_accessor :AppId, :StartTime, :EndTime, :Category, :Filters, :SortBy, :SortOrder, :Page, :PageSize, :HasError, :MinDuration, :MaxDuration

        def initialize(appid=nil, starttime=nil, endtime=nil, category=nil, filters=nil, sortby=nil, sortorder=nil, page=nil, pagesize=nil, haserror=nil, minduration=nil, maxduration=nil)
          @AppId = appid
          @StartTime = starttime
          @EndTime = endtime
          @Category = category
          @Filters = filters
          @SortBy = sortby
          @SortOrder = sortorder
          @Page = page
          @PageSize = pagesize
          @HasError = haserror
          @MinDuration = minduration
          @MaxDuration = maxduration
        end

        def deserialize(params)
          @AppId = params['AppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Category = params['Category']
          @Filters = params['Filters']
          @SortBy = params['SortBy']
          @SortOrder = params['SortOrder']
          @Page = params['Page']
          @PageSize = params['PageSize']
          @HasError = params['HasError']
          @MinDuration = params['MinDuration']
          @MaxDuration = params['MaxDuration']
        end
      end

      # DescribeTDEMEventSearch返回参数结构体
      class DescribeTDEMEventSearchResponse < TencentCloud::Common::AbstractModel
        # @param Events: <p>事件列表</p>
        # @type Events: Array
        # @param Total: <p>总条数</p>
        # @type Total: Integer
        # @param Page: <p>页码</p>
        # @type Page: Integer
        # @param PageSize: <p>每页条数</p>
        # @type PageSize: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Events, :Total, :Page, :PageSize, :RequestId

        def initialize(events=nil, total=nil, page=nil, pagesize=nil, requestid=nil)
          @Events = events
          @Total = total
          @Page = page
          @PageSize = pagesize
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Events'].nil?
            @Events = []
            params['Events'].each do |i|
              explorationeventitem_tmp = ExplorationEventItem.new
              explorationeventitem_tmp.deserialize(i)
              @Events << explorationeventitem_tmp
            end
          end
          @Total = params['Total']
          @Page = params['Page']
          @PageSize = params['PageSize']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMEventSearchSummary请求参数结构体
      class DescribeTDEMEventSearchSummaryRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID（必填）</p>
        # @type AppId: String
        # @param StartTime: <p>开始时间 Unix 毫秒（必填）</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间 Unix 毫秒（必填）</p>
        # @type EndTime: Integer
        # @param Category: <p>事件分类（必填，可含 session）</p>
        # @type Category: String
        # @param Filters: <p>筛选条件 JSON 字符串：[{Key,Op,Values}]</p>
        # @type Filters: String
        # @param IntervalSec: <p>分桶秒数，正整数；缺省由服务端按窗口选取</p>
        # @type IntervalSec: Integer
        # @param HasError: <p>是否只看有错误的会话。可选。不传表示不过滤。Category 为 session 的汇总查询会使用该条件。</p>
        # @type HasError: Boolean
        # @param MinDuration: <p>会话最短时长，单位毫秒。可选。0 或不传表示不限制。Category 为 session 的汇总查询会使用该条件。</p>
        # @type MinDuration: Integer
        # @param MaxDuration: <p>会话最长时长，单位毫秒。可选。0 或不传表示不限制。Category 为 session 的汇总查询会使用该条件。</p>
        # @type MaxDuration: Integer

        attr_accessor :AppId, :StartTime, :EndTime, :Category, :Filters, :IntervalSec, :HasError, :MinDuration, :MaxDuration

        def initialize(appid=nil, starttime=nil, endtime=nil, category=nil, filters=nil, intervalsec=nil, haserror=nil, minduration=nil, maxduration=nil)
          @AppId = appid
          @StartTime = starttime
          @EndTime = endtime
          @Category = category
          @Filters = filters
          @IntervalSec = intervalsec
          @HasError = haserror
          @MinDuration = minduration
          @MaxDuration = maxduration
        end

        def deserialize(params)
          @AppId = params['AppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Category = params['Category']
          @Filters = params['Filters']
          @IntervalSec = params['IntervalSec']
          @HasError = params['HasError']
          @MinDuration = params['MinDuration']
          @MaxDuration = params['MaxDuration']
        end
      end

      # DescribeTDEMEventSearchSummary返回参数结构体
      class DescribeTDEMEventSearchSummaryResponse < TencentCloud::Common::AbstractModel
        # @param CategoryCounts: <p>各分类窗口计数，Key 为分类 id</p>
        # @type CategoryCounts: Array
        # @param Total: <p>当前分类窗口条数</p>
        # @type Total: Integer
        # @param Visitors: <p>访问用户（设备）</p>
        # @type Visitors: Integer
        # @param Users: <p>业务用户</p>
        # @type Users: Integer
        # @param IntervalSec: <p>实际分桶秒数</p>
        # @type IntervalSec: Integer
        # @param Series: <p>分桶趋势</p>
        # @type Series: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CategoryCounts, :Total, :Visitors, :Users, :IntervalSec, :Series, :RequestId

        def initialize(categorycounts=nil, total=nil, visitors=nil, users=nil, intervalsec=nil, series=nil, requestid=nil)
          @CategoryCounts = categorycounts
          @Total = total
          @Visitors = visitors
          @Users = users
          @IntervalSec = intervalsec
          @Series = series
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CategoryCounts'].nil?
            @CategoryCounts = []
            params['CategoryCounts'].each do |i|
              intkeyvalue_tmp = IntKeyValue.new
              intkeyvalue_tmp.deserialize(i)
              @CategoryCounts << intkeyvalue_tmp
            end
          end
          @Total = params['Total']
          @Visitors = params['Visitors']
          @Users = params['Users']
          @IntervalSec = params['IntervalSec']
          unless params['Series'].nil?
            @Series = []
            params['Series'].each do |i|
              eventsearchseriespoint_tmp = EventSearchSeriesPoint.new
              eventsearchseriespoint_tmp.deserialize(i)
              @Series << eventsearchseriespoint_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMFieldTransformRules请求参数结构体
      class DescribeTDEMFieldTransformRulesRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID（必填）</p>
        # @type AppId: String
        # @param Offset: <p>分页偏移，默认 0</p>
        # @type Offset: Integer
        # @param Limit: <p>每页数量</p>
        # @type Limit: Integer

        attr_accessor :AppId, :Offset, :Limit

        def initialize(appid=nil, offset=nil, limit=nil)
          @AppId = appid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @AppId = params['AppId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeTDEMFieldTransformRules返回参数结构体
      class DescribeTDEMFieldTransformRulesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>总数</p>
        # @type TotalCount: Integer
        # @param FieldTransformRuleSet: <p>规则列表</p>
        # @type FieldTransformRuleSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :FieldTransformRuleSet, :RequestId

        def initialize(totalcount=nil, fieldtransformruleset=nil, requestid=nil)
          @TotalCount = totalcount
          @FieldTransformRuleSet = fieldtransformruleset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['FieldTransformRuleSet'].nil?
            @FieldTransformRuleSet = []
            params['FieldTransformRuleSet'].each do |i|
              fieldtransformruleitem_tmp = FieldTransformRuleItem.new
              fieldtransformruleitem_tmp.deserialize(i)
              @FieldTransformRuleSet << fieldtransformruleitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMFunnelDetail请求参数结构体
      class DescribeTDEMFunnelDetailRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用id</p>
        # @type AppId: String
        # @param FunnelId: <p>漏斗id</p>
        # @type FunnelId: String

        attr_accessor :AppId, :FunnelId

        def initialize(appid=nil, funnelid=nil)
          @AppId = appid
          @FunnelId = funnelid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @FunnelId = params['FunnelId']
        end
      end

      # DescribeTDEMFunnelDetail返回参数结构体
      class DescribeTDEMFunnelDetailResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>请求结果</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMFunnelDimensions请求参数结构体
      class DescribeTDEMFunnelDimensionsRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用id</p>
        # @type AppId: String
        # @param FunnelId: <p>漏斗id</p>
        # @type FunnelId: String
        # @param StartTime: <p>开始时间</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间</p>
        # @type EndTime: Integer
        # @param Dimension: <p>维度</p>
        # @type Dimension: String
        # @param Platform: <p>平台</p>
        # @type Platform: String
        # @param DeviceType: <p>设备类型</p>
        # @type DeviceType: String
        # @param Browser: <p>浏览器</p>
        # @type Browser: String
        # @param OS: <p>操作系统</p>
        # @type OS: String
        # @param Country: <p>国家</p>
        # @type Country: String
        # @param Referrer: <p>页面来源</p>
        # @type Referrer: String
        # @param AppVersion: <p>应用版本</p>
        # @type AppVersion: String
        # @param Environment: <p>环境</p>
        # @type Environment: String

        attr_accessor :AppId, :FunnelId, :StartTime, :EndTime, :Dimension, :Platform, :DeviceType, :Browser, :OS, :Country, :Referrer, :AppVersion, :Environment

        def initialize(appid=nil, funnelid=nil, starttime=nil, endtime=nil, dimension=nil, platform=nil, devicetype=nil, browser=nil, os=nil, country=nil, referrer=nil, appversion=nil, environment=nil)
          @AppId = appid
          @FunnelId = funnelid
          @StartTime = starttime
          @EndTime = endtime
          @Dimension = dimension
          @Platform = platform
          @DeviceType = devicetype
          @Browser = browser
          @OS = os
          @Country = country
          @Referrer = referrer
          @AppVersion = appversion
          @Environment = environment
        end

        def deserialize(params)
          @AppId = params['AppId']
          @FunnelId = params['FunnelId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Dimension = params['Dimension']
          @Platform = params['Platform']
          @DeviceType = params['DeviceType']
          @Browser = params['Browser']
          @OS = params['OS']
          @Country = params['Country']
          @Referrer = params['Referrer']
          @AppVersion = params['AppVersion']
          @Environment = params['Environment']
        end
      end

      # DescribeTDEMFunnelDimensions返回参数结构体
      class DescribeTDEMFunnelDimensionsResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>结果</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMFunnelList请求参数结构体
      class DescribeTDEMFunnelListRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用id</p>
        # @type AppId: String
        # @param Keyword: <p>关键字，用于过滤漏斗名</p>
        # @type Keyword: String
        # @param Status: <p>漏斗状态</p>
        # @type Status: String
        # @param Page: <p>页面号</p>
        # @type Page: Integer
        # @param PageSize: <p>页面数量</p>
        # @type PageSize: Integer

        attr_accessor :AppId, :Keyword, :Status, :Page, :PageSize

        def initialize(appid=nil, keyword=nil, status=nil, page=nil, pagesize=nil)
          @AppId = appid
          @Keyword = keyword
          @Status = status
          @Page = page
          @PageSize = pagesize
        end

        def deserialize(params)
          @AppId = params['AppId']
          @Keyword = params['Keyword']
          @Status = params['Status']
          @Page = params['Page']
          @PageSize = params['PageSize']
        end
      end

      # DescribeTDEMFunnelList返回参数结构体
      class DescribeTDEMFunnelListResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>结果</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMFunnelReport请求参数结构体
      class DescribeTDEMFunnelReportRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用id</p>
        # @type AppId: String
        # @param FunnelId: <p>漏斗id</p>
        # @type FunnelId: String
        # @param StartTime: <p>开始时间</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间</p>
        # @type EndTime: Integer
        # @param Platform: <p>平台</p>
        # @type Platform: String
        # @param DeviceType: <p>设备类型</p>
        # @type DeviceType: String
        # @param Browser: <p>浏览器</p>
        # @type Browser: String
        # @param OS: <p>操作系统</p>
        # @type OS: String
        # @param Country: <p>国家</p>
        # @type Country: String
        # @param Referrer: <p>页面来源</p>
        # @type Referrer: String
        # @param AppVersion: <p>应用版本</p>
        # @type AppVersion: String
        # @param Environment: <p>环境选择</p>
        # @type Environment: String

        attr_accessor :AppId, :FunnelId, :StartTime, :EndTime, :Platform, :DeviceType, :Browser, :OS, :Country, :Referrer, :AppVersion, :Environment

        def initialize(appid=nil, funnelid=nil, starttime=nil, endtime=nil, platform=nil, devicetype=nil, browser=nil, os=nil, country=nil, referrer=nil, appversion=nil, environment=nil)
          @AppId = appid
          @FunnelId = funnelid
          @StartTime = starttime
          @EndTime = endtime
          @Platform = platform
          @DeviceType = devicetype
          @Browser = browser
          @OS = os
          @Country = country
          @Referrer = referrer
          @AppVersion = appversion
          @Environment = environment
        end

        def deserialize(params)
          @AppId = params['AppId']
          @FunnelId = params['FunnelId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Platform = params['Platform']
          @DeviceType = params['DeviceType']
          @Browser = params['Browser']
          @OS = params['OS']
          @Country = params['Country']
          @Referrer = params['Referrer']
          @AppVersion = params['AppVersion']
          @Environment = params['Environment']
        end
      end

      # DescribeTDEMFunnelReport返回参数结构体
      class DescribeTDEMFunnelReportResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>结果</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMFunnelStepSessionList请求参数结构体
      class DescribeTDEMFunnelStepSessionListRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用id</p>
        # @type AppId: String
        # @param FunnelId: <p>漏斗id</p>
        # @type FunnelId: String
        # @param StartTime: <p>开始时间</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间</p>
        # @type EndTime: Integer
        # @param StepIndex: <p>步骤索引</p>
        # @type StepIndex: Integer
        # @param Steps: <p>漏斗步骤</p>
        # @type Steps: String
        # @param DrillType: <p>下钻类型</p>
        # @type DrillType: String
        # @param Page: <p>页面号</p>
        # @type Page: Integer
        # @param PageSize: <p>每页大小</p>
        # @type PageSize: Integer
        # @param Platform: <p>平台</p>
        # @type Platform: String
        # @param AppVersion: <p>应用版本</p>
        # @type AppVersion: String
        # @param DeviceType: <p>设备类型</p>
        # @type DeviceType: String
        # @param Browser: <p>浏览器</p>
        # @type Browser: String
        # @param OS: <p>操作系统</p>
        # @type OS: String
        # @param Country: <p>国家</p>
        # @type Country: String
        # @param Referrer: <p>页面来源</p>
        # @type Referrer: String
        # @param Environment: <p>环境</p>
        # @type Environment: String

        attr_accessor :AppId, :FunnelId, :StartTime, :EndTime, :StepIndex, :Steps, :DrillType, :Page, :PageSize, :Platform, :AppVersion, :DeviceType, :Browser, :OS, :Country, :Referrer, :Environment

        def initialize(appid=nil, funnelid=nil, starttime=nil, endtime=nil, stepindex=nil, steps=nil, drilltype=nil, page=nil, pagesize=nil, platform=nil, appversion=nil, devicetype=nil, browser=nil, os=nil, country=nil, referrer=nil, environment=nil)
          @AppId = appid
          @FunnelId = funnelid
          @StartTime = starttime
          @EndTime = endtime
          @StepIndex = stepindex
          @Steps = steps
          @DrillType = drilltype
          @Page = page
          @PageSize = pagesize
          @Platform = platform
          @AppVersion = appversion
          @DeviceType = devicetype
          @Browser = browser
          @OS = os
          @Country = country
          @Referrer = referrer
          @Environment = environment
        end

        def deserialize(params)
          @AppId = params['AppId']
          @FunnelId = params['FunnelId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @StepIndex = params['StepIndex']
          @Steps = params['Steps']
          @DrillType = params['DrillType']
          @Page = params['Page']
          @PageSize = params['PageSize']
          @Platform = params['Platform']
          @AppVersion = params['AppVersion']
          @DeviceType = params['DeviceType']
          @Browser = params['Browser']
          @OS = params['OS']
          @Country = params['Country']
          @Referrer = params['Referrer']
          @Environment = params['Environment']
        end
      end

      # DescribeTDEMFunnelStepSessionList返回参数结构体
      class DescribeTDEMFunnelStepSessionListResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>请求结果</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMFunnelTrend请求参数结构体
      class DescribeTDEMFunnelTrendRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用id</p>
        # @type AppId: String
        # @param FunnelId: <p>漏斗id</p>
        # @type FunnelId: String
        # @param StartTime: <p>开始时间</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间</p>
        # @type EndTime: Integer
        # @param Interval: <p>间隔</p>
        # @type Interval: String
        # @param Platform: <p>平台</p>
        # @type Platform: String
        # @param AppVersion: <p>应用版本</p>
        # @type AppVersion: String
        # @param DeviceType: <p>设备类型</p>
        # @type DeviceType: String
        # @param Browser: <p>浏览器</p>
        # @type Browser: String
        # @param OS: <p>操作系统</p>
        # @type OS: String
        # @param Country: <p>国家</p>
        # @type Country: String
        # @param Referrer: <p>页面来源</p>
        # @type Referrer: String
        # @param Environment: <p>环境</p>
        # @type Environment: String

        attr_accessor :AppId, :FunnelId, :StartTime, :EndTime, :Interval, :Platform, :AppVersion, :DeviceType, :Browser, :OS, :Country, :Referrer, :Environment

        def initialize(appid=nil, funnelid=nil, starttime=nil, endtime=nil, interval=nil, platform=nil, appversion=nil, devicetype=nil, browser=nil, os=nil, country=nil, referrer=nil, environment=nil)
          @AppId = appid
          @FunnelId = funnelid
          @StartTime = starttime
          @EndTime = endtime
          @Interval = interval
          @Platform = platform
          @AppVersion = appversion
          @DeviceType = devicetype
          @Browser = browser
          @OS = os
          @Country = country
          @Referrer = referrer
          @Environment = environment
        end

        def deserialize(params)
          @AppId = params['AppId']
          @FunnelId = params['FunnelId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Interval = params['Interval']
          @Platform = params['Platform']
          @AppVersion = params['AppVersion']
          @DeviceType = params['DeviceType']
          @Browser = params['Browser']
          @OS = params['OS']
          @Country = params['Country']
          @Referrer = params['Referrer']
          @Environment = params['Environment']
        end
      end

      # DescribeTDEMFunnelTrend返回参数结构体
      class DescribeTDEMFunnelTrendResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>结果</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMMetricDistribution请求参数结构体
      class DescribeTDEMMetricDistributionRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID（必填）</p>
        # @type AppId: String
        # @param StartTime: <p>开始时间 Unix 毫秒（必填）</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间 Unix 毫秒（必填）</p>
        # @type EndTime: Integer
        # @param EventType: <p>顶层事件类型；单查必填，批量用 Queries 时可不填</p>
        # @type EventType: String
        # @param SubType: <p>子类型；未知返回 0</p>
        # @type SubType: String
        # @param Filters: <p>筛选条件 JSON 字符串：[{Key,Op,Values}]，走分析立方白名单</p>
        # @type Filters: String
        # @param Metrics: <p>指标名列表，如 count / rate；单查必填</p>
        # @type Metrics: Array
        # @param MeasurementKey: <p>分位/均值必填，如 lcp / duration</p>
        # @type MeasurementKey: String
        # @param GroupBy: <p>单维度（Distribution 用）</p>
        # @type GroupBy: String
        # @param Limit: <p>返回条数，Top 默认 10 上限 100</p>
        # @type Limit: Integer
        # @param Queries: <p>批量查询，上限 32</p>
        # @type Queries: Array

        attr_accessor :AppId, :StartTime, :EndTime, :EventType, :SubType, :Filters, :Metrics, :MeasurementKey, :GroupBy, :Limit, :Queries

        def initialize(appid=nil, starttime=nil, endtime=nil, eventtype=nil, subtype=nil, filters=nil, metrics=nil, measurementkey=nil, groupby=nil, limit=nil, queries=nil)
          @AppId = appid
          @StartTime = starttime
          @EndTime = endtime
          @EventType = eventtype
          @SubType = subtype
          @Filters = filters
          @Metrics = metrics
          @MeasurementKey = measurementkey
          @GroupBy = groupby
          @Limit = limit
          @Queries = queries
        end

        def deserialize(params)
          @AppId = params['AppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @EventType = params['EventType']
          @SubType = params['SubType']
          @Filters = params['Filters']
          @Metrics = params['Metrics']
          @MeasurementKey = params['MeasurementKey']
          @GroupBy = params['GroupBy']
          @Limit = params['Limit']
          unless params['Queries'].nil?
            @Queries = []
            params['Queries'].each do |i|
              metricqueryitem_tmp = MetricQueryItem.new
              metricqueryitem_tmp.deserialize(i)
              @Queries << metricqueryitem_tmp
            end
          end
        end
      end

      # DescribeTDEMMetricDistribution返回参数结构体
      class DescribeTDEMMetricDistributionResponse < TencentCloud::Common::AbstractModel
        # @param Items: <p>单查分布桶</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param Total: <p>单查合计，批量为空时省略</p>
        # @type Total: Integer
        # @param Results: <p>批量结果，Queries 非空时返回</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :Total, :Results, :RequestId

        def initialize(items=nil, total=nil, results=nil, requestid=nil)
          @Items = items
          @Total = total
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              metricdistributionitem_tmp = MetricDistributionItem.new
              metricdistributionitem_tmp.deserialize(i)
              @Items << metricdistributionitem_tmp
            end
          end
          @Total = params['Total']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              metricdistributionbatchitem_tmp = MetricDistributionBatchItem.new
              metricdistributionbatchitem_tmp.deserialize(i)
              @Results << metricdistributionbatchitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMMetricSummary请求参数结构体
      class DescribeTDEMMetricSummaryRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID（必填）</p>
        # @type AppId: String
        # @param StartTime: <p>开始时间 Unix 毫秒（必填）</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间 Unix 毫秒（必填）</p>
        # @type EndTime: Integer
        # @param EventType: <p>顶层事件类型；单查必填，批量用 Queries 时可不填</p>
        # @type EventType: String
        # @param SubType: <p>子类型；未知返回 0</p>
        # @type SubType: String
        # @param Filters: <p>筛选条件 JSON 字符串：[{Key,Op,Values}]，走分析立方白名单</p>
        # @type Filters: String
        # @param Metrics: <p>指标名列表，如 count / rate；单查必填</p>
        # @type Metrics: Array
        # @param MeasurementKey: <p>分位/均值必填，如 lcp / duration</p>
        # @type MeasurementKey: String
        # @param Queries: <p>批量查询，上限 32</p>
        # @type Queries: Array

        attr_accessor :AppId, :StartTime, :EndTime, :EventType, :SubType, :Filters, :Metrics, :MeasurementKey, :Queries

        def initialize(appid=nil, starttime=nil, endtime=nil, eventtype=nil, subtype=nil, filters=nil, metrics=nil, measurementkey=nil, queries=nil)
          @AppId = appid
          @StartTime = starttime
          @EndTime = endtime
          @EventType = eventtype
          @SubType = subtype
          @Filters = filters
          @Metrics = metrics
          @MeasurementKey = measurementkey
          @Queries = queries
        end

        def deserialize(params)
          @AppId = params['AppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @EventType = params['EventType']
          @SubType = params['SubType']
          @Filters = params['Filters']
          @Metrics = params['Metrics']
          @MeasurementKey = params['MeasurementKey']
          unless params['Queries'].nil?
            @Queries = []
            params['Queries'].each do |i|
              metricqueryitem_tmp = MetricQueryItem.new
              metricqueryitem_tmp.deserialize(i)
              @Queries << metricqueryitem_tmp
            end
          end
        end
      end

      # DescribeTDEMMetricSummary返回参数结构体
      class DescribeTDEMMetricSummaryResponse < TencentCloud::Common::AbstractModel
        # @param Metrics: <p>单查指标。缺测指标不出现，禁止 null</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metrics: Array
        # @param Results: <p>批量结果，Queries 非空时返回</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Metrics, :Results, :RequestId

        def initialize(metrics=nil, results=nil, requestid=nil)
          @Metrics = metrics
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Metrics'].nil?
            @Metrics = []
            params['Metrics'].each do |i|
              floatnamevalue_tmp = FloatNameValue.new
              floatnamevalue_tmp.deserialize(i)
              @Metrics << floatnamevalue_tmp
            end
          end
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              metricsummarybatchitem_tmp = MetricSummaryBatchItem.new
              metricsummarybatchitem_tmp.deserialize(i)
              @Results << metricsummarybatchitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMMetricTrend请求参数结构体
      class DescribeTDEMMetricTrendRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID（必填）</p>
        # @type AppId: String
        # @param StartTime: <p>开始时间 Unix 毫秒（必填）</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间 Unix 毫秒（必填）</p>
        # @type EndTime: Integer
        # @param Granularity: <p>粒度：5m（默认）/ 1h / 1d；跨度大时服务端可加粗</p>
        # @type Granularity: String
        # @param EventType: <p>顶层事件类型；单查必填，批量用 Queries 时可不填</p>
        # @type EventType: String
        # @param SubType: <p>子类型；未知返回 0</p>
        # @type SubType: String
        # @param Filters: <p>筛选条件 JSON 字符串：[{Key,Op,Values}]，走分析立方白名单</p>
        # @type Filters: String
        # @param Metrics: <p>指标名列表，如 count / rate；单查必填</p>
        # @type Metrics: Array
        # @param MeasurementKey: <p>分位/均值必填，如 lcp / duration</p>
        # @type MeasurementKey: String
        # @param Queries: <p>批量查询，上限 32</p>
        # @type Queries: Array
        # @param CompareStartTime: <p>对比窗开始 Unix 毫秒（仅 Trend 批量，须与 CompareEndTime 成对）</p>
        # @type CompareStartTime: Integer
        # @param CompareEndTime: <p>对比窗结束 Unix 毫秒（仅 Trend 批量）</p>
        # @type CompareEndTime: Integer

        attr_accessor :AppId, :StartTime, :EndTime, :Granularity, :EventType, :SubType, :Filters, :Metrics, :MeasurementKey, :Queries, :CompareStartTime, :CompareEndTime

        def initialize(appid=nil, starttime=nil, endtime=nil, granularity=nil, eventtype=nil, subtype=nil, filters=nil, metrics=nil, measurementkey=nil, queries=nil, comparestarttime=nil, compareendtime=nil)
          @AppId = appid
          @StartTime = starttime
          @EndTime = endtime
          @Granularity = granularity
          @EventType = eventtype
          @SubType = subtype
          @Filters = filters
          @Metrics = metrics
          @MeasurementKey = measurementkey
          @Queries = queries
          @CompareStartTime = comparestarttime
          @CompareEndTime = compareendtime
        end

        def deserialize(params)
          @AppId = params['AppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Granularity = params['Granularity']
          @EventType = params['EventType']
          @SubType = params['SubType']
          @Filters = params['Filters']
          @Metrics = params['Metrics']
          @MeasurementKey = params['MeasurementKey']
          unless params['Queries'].nil?
            @Queries = []
            params['Queries'].each do |i|
              metricqueryitem_tmp = MetricQueryItem.new
              metricqueryitem_tmp.deserialize(i)
              @Queries << metricqueryitem_tmp
            end
          end
          @CompareStartTime = params['CompareStartTime']
          @CompareEndTime = params['CompareEndTime']
        end
      end

      # DescribeTDEMMetricTrend返回参数结构体
      class DescribeTDEMMetricTrendResponse < TencentCloud::Common::AbstractModel
        # @param Granularity: <p>实际生效粒度</p>
        # @type Granularity: String
        # @param Series: <p>单查时序</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Series: Array
        # @param Results: <p>批量结果，Queries 非空时返回</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Granularity, :Series, :Results, :RequestId

        def initialize(granularity=nil, series=nil, results=nil, requestid=nil)
          @Granularity = granularity
          @Series = series
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          @Granularity = params['Granularity']
          unless params['Series'].nil?
            @Series = []
            params['Series'].each do |i|
              metrictrendpoint_tmp = MetricTrendPoint.new
              metrictrendpoint_tmp.deserialize(i)
              @Series << metrictrendpoint_tmp
            end
          end
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              metrictrendbatchitem_tmp = MetricTrendBatchItem.new
              metrictrendbatchitem_tmp.deserialize(i)
              @Results << metrictrendbatchitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMOverviewScores请求参数结构体
      class DescribeTDEMOverviewScoresRequest < TencentCloud::Common::AbstractModel
        # @param AppIds: <p>应用 ID 列表，1-200（必填）</p>
        # @type AppIds: Array
        # @param StartTime: <p>开始时间 Unix 毫秒（必填）</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间 Unix 毫秒（必填）</p>
        # @type EndTime: Integer
        # @param Filters: <p>筛选条件 JSON 字符串，格式为 [{Key,Op,Values}]。可选。总览总分按环境筛选时传入。</p>
        # @type Filters: String

        attr_accessor :AppIds, :StartTime, :EndTime, :Filters

        def initialize(appids=nil, starttime=nil, endtime=nil, filters=nil)
          @AppIds = appids
          @StartTime = starttime
          @EndTime = endtime
          @Filters = filters
        end

        def deserialize(params)
          @AppIds = params['AppIds']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Filters = params['Filters']
        end
      end

      # DescribeTDEMOverviewScores返回参数结构体
      class DescribeTDEMOverviewScoresResponse < TencentCloud::Common::AbstractModel
        # @param Scores: <p>各应用评分</p>
        # @type Scores: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Scores, :RequestId

        def initialize(scores=nil, requestid=nil)
          @Scores = scores
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Scores'].nil?
            @Scores = []
            params['Scores'].each do |i|
              appoverviewscore_tmp = AppOverviewScore.new
              appoverviewscore_tmp.deserialize(i)
              @Scores << appoverviewscore_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMRelatedEvents请求参数结构体
      class DescribeTDEMRelatedEventsRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID（必填）</p>
        # @type AppId: String
        # @param StartTime: <p>开始时间 Unix 毫秒（必填，用于分区裁剪）</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间 Unix 毫秒（必填）</p>
        # @type EndTime: Integer
        # @param Mode: <p>模式：timeline / page / breadcrumb（必填）</p>
        # @type Mode: String
        # @param SessionId: <p>会话 ID（必填）</p>
        # @type SessionId: String
        # @param PageUrl: <p>页面 URL（Mode=page 必填）</p>
        # @type PageUrl: String
        # @param AnchorTimestamp: <p>锚点 Unix 毫秒（Mode=page/breadcrumb 使用）</p>
        # @type AnchorTimestamp: Integer
        # @param Offset: <p>偏移，&gt;=0，默认 0</p>
        # @type Offset: Integer
        # @param Limit: <p>条数，1-200，默认 200</p>
        # @type Limit: Integer
        # @param Category: <p>事件分类（可选）</p>
        # @type Category: String
        # @param Keyword: <p>关键字（可选）</p>
        # @type Keyword: String
        # @param ViewId: <p>视图 ID</p>
        # @type ViewId: String

        attr_accessor :AppId, :StartTime, :EndTime, :Mode, :SessionId, :PageUrl, :AnchorTimestamp, :Offset, :Limit, :Category, :Keyword, :ViewId

        def initialize(appid=nil, starttime=nil, endtime=nil, mode=nil, sessionid=nil, pageurl=nil, anchortimestamp=nil, offset=nil, limit=nil, category=nil, keyword=nil, viewid=nil)
          @AppId = appid
          @StartTime = starttime
          @EndTime = endtime
          @Mode = mode
          @SessionId = sessionid
          @PageUrl = pageurl
          @AnchorTimestamp = anchortimestamp
          @Offset = offset
          @Limit = limit
          @Category = category
          @Keyword = keyword
          @ViewId = viewid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Mode = params['Mode']
          @SessionId = params['SessionId']
          @PageUrl = params['PageUrl']
          @AnchorTimestamp = params['AnchorTimestamp']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Category = params['Category']
          @Keyword = params['Keyword']
          @ViewId = params['ViewId']
        end
      end

      # DescribeTDEMRelatedEvents返回参数结构体
      class DescribeTDEMRelatedEventsResponse < TencentCloud::Common::AbstractModel
        # @param Events: <p>关联事件，schema 与 Search 列表项相同</p>
        # @type Events: Array
        # @param Offset: <p>偏移</p>
        # @type Offset: Integer
        # @param Limit: <p>条数</p>
        # @type Limit: Integer
        # @param HasMore: <p>是否还有下一页</p>
        # @type HasMore: Boolean
        # @param CategoryCounts: <p>各分类计数，Key 为分类 id</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CategoryCounts: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Events, :Offset, :Limit, :HasMore, :CategoryCounts, :RequestId

        def initialize(events=nil, offset=nil, limit=nil, hasmore=nil, categorycounts=nil, requestid=nil)
          @Events = events
          @Offset = offset
          @Limit = limit
          @HasMore = hasmore
          @CategoryCounts = categorycounts
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Events'].nil?
            @Events = []
            params['Events'].each do |i|
              explorationeventitem_tmp = ExplorationEventItem.new
              explorationeventitem_tmp.deserialize(i)
              @Events << explorationeventitem_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @HasMore = params['HasMore']
          unless params['CategoryCounts'].nil?
            @CategoryCounts = []
            params['CategoryCounts'].each do |i|
              intkeyvalue_tmp = IntKeyValue.new
              intkeyvalue_tmp.deserialize(i)
              @CategoryCounts << intkeyvalue_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMSSEDimensions请求参数结构体
      class DescribeTDEMSSEDimensionsRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID。这里是业务应用标识，不是腾讯云账号 AppId。</p>
        # @type AppId: String
        # @param StartTime: <p>开始时间，Unix 毫秒。</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间，Unix 毫秒。须通过现有时间范围校验。</p>
        # @type EndTime: Integer
        # @param Metric: <p>指标。取值说明：token_throughput（token 吞吐率，token/秒）、first_message_delay（首次消息时延，毫秒）、error_rate（错误率，已乘 100 的百分比）、stall_rate（卡死率，已乘 100 的百分比）、fluency（流畅度，已乘 100 的百分比）。</p>
        # @type Metric: String
        # @param Dimension: <p>多维分析维度。取值说明：region、app_version、platform、os、network_type、server_ip、isp、model_version。region 由 country 与 province 拼接，不属于趋势维度。</p>
        # @type Dimension: String
        # @param Filters: <p>筛选条件 JSON 字符串，格式为 [{Key,Op,Values}]。Op 只允许 in。Key 只允许 model_version、app_version、platform、os、region、is_error、is_stall、network_type、server_ip、isp、user_id。is_error 与 is_stall 的值只允许 true 或 false。</p>
        # @type Filters: String

        attr_accessor :AppId, :StartTime, :EndTime, :Metric, :Dimension, :Filters

        def initialize(appid=nil, starttime=nil, endtime=nil, metric=nil, dimension=nil, filters=nil)
          @AppId = appid
          @StartTime = starttime
          @EndTime = endtime
          @Metric = metric
          @Dimension = dimension
          @Filters = filters
        end

        def deserialize(params)
          @AppId = params['AppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Metric = params['Metric']
          @Dimension = params['Dimension']
          @Filters = params['Filters']
        end
      end

      # DescribeTDEMSSEDimensions返回参数结构体
      class DescribeTDEMSSEDimensionsResponse < TencentCloud::Common::AbstractModel
        # @param Rows: <p>按当前指标值降序的维度行，最多 200 行。没有对话时为空数组。</p>
        # @type Rows: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rows, :RequestId

        def initialize(rows=nil, requestid=nil)
          @Rows = rows
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Rows'].nil?
            @Rows = []
            params['Rows'].each do |i|
              tdemssedimensionrow_tmp = TDEMSSEDimensionRow.new
              tdemssedimensionrow_tmp.deserialize(i)
              @Rows << tdemssedimensionrow_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMSSEDistribution请求参数结构体
      class DescribeTDEMSSEDistributionRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID。这里是业务应用标识，不是腾讯云账号 AppId。</p>
        # @type AppId: String
        # @param StartTime: <p>开始时间，Unix 毫秒。</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间，Unix 毫秒。须通过现有时间范围校验。</p>
        # @type EndTime: Integer
        # @param Metric: <p>指标。只允许 token_throughput、first_message_delay、fluency。error_rate 与 stall_rate 返回 InvalidParameter。</p>
        # @type Metric: String
        # @param Filters: <p>筛选条件 JSON 字符串，格式为 [{Key,Op,Values}]。Op 只允许 in。Key 只允许 model_version、app_version、platform、os、region、is_error、is_stall、network_type、server_ip、isp、user_id。is_error 与 is_stall 的值只允许 true 或 false。</p>
        # @type Filters: String

        attr_accessor :AppId, :StartTime, :EndTime, :Metric, :Filters

        def initialize(appid=nil, starttime=nil, endtime=nil, metric=nil, filters=nil)
          @AppId = appid
          @StartTime = starttime
          @EndTime = endtime
          @Metric = metric
          @Filters = filters
        end

        def deserialize(params)
          @AppId = params['AppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Metric = params['Metric']
          @Filters = params['Filters']
        end
      end

      # DescribeTDEMSSEDistribution返回参数结构体
      class DescribeTDEMSSEDistributionResponse < TencentCloud::Common::AbstractModel
        # @param Bins: <p>分布档。没有样本时为空数组。最后一档 Overflow 为 true 且省略 End。</p>
        # @type Bins: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Bins, :RequestId

        def initialize(bins=nil, requestid=nil)
          @Bins = bins
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Bins'].nil?
            @Bins = []
            params['Bins'].each do |i|
              tdemssedistributionbin_tmp = TDEMSSEDistributionBin.new
              tdemssedistributionbin_tmp.deserialize(i)
              @Bins << tdemssedistributionbin_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMSSEPercentile请求参数结构体
      class DescribeTDEMSSEPercentileRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID。这里是业务应用标识，不是腾讯云账号 AppId。</p>
        # @type AppId: String
        # @param StartTime: <p>开始时间，Unix 毫秒。</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间，Unix 毫秒。须通过现有时间范围校验。</p>
        # @type EndTime: Integer
        # @param Metric: <p>指标。只允许 token_throughput、first_message_delay、fluency。error_rate 与 stall_rate 返回 InvalidParameter。</p>
        # @type Metric: String
        # @param Filters: <p>筛选条件 JSON 字符串，格式为 [{Key,Op,Values}]。Op 只允许 in。Key 只允许 model_version、app_version、platform、os、region、is_error、is_stall、network_type、server_ip、isp、user_id。is_error 与 is_stall 的值只允许 true 或 false。</p>
        # @type Filters: String

        attr_accessor :AppId, :StartTime, :EndTime, :Metric, :Filters

        def initialize(appid=nil, starttime=nil, endtime=nil, metric=nil, filters=nil)
          @AppId = appid
          @StartTime = starttime
          @EndTime = endtime
          @Metric = metric
          @Filters = filters
        end

        def deserialize(params)
          @AppId = params['AppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Metric = params['Metric']
          @Filters = params['Filters']
        end
      end

      # DescribeTDEMSSEPercentile返回参数结构体
      class DescribeTDEMSSEPercentileResponse < TencentCloud::Common::AbstractModel
        # @param IntervalSec: <p>时间桶宽度，单位秒，与趋势查询使用同一套分桶。</p>
        # @type IntervalSec: Integer
        # @param Average: <p>整个时间窗的算术平均。没有有效样本时为 null。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Average: Float
        # @param P50: <p>整个时间窗的 50 分位。没有有效样本时为 null。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type P50: Float
        # @param P75: <p>整个时间窗的 75 分位。没有有效样本时为 null。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type P75: Float
        # @param P95: <p>整个时间窗的 95 分位。没有有效样本时为 null。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type P95: Float
        # @param P99: <p>整个时间窗的 99 分位。没有有效样本时为 null。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type P99: Float
        # @param Points: <p>各时间桶的平均值和分位。没有样本的桶不返回，全部没有样本时为空数组。</p>
        # @type Points: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IntervalSec, :Average, :P50, :P75, :P95, :P99, :Points, :RequestId

        def initialize(intervalsec=nil, average=nil, p50=nil, p75=nil, p95=nil, p99=nil, points=nil, requestid=nil)
          @IntervalSec = intervalsec
          @Average = average
          @P50 = p50
          @P75 = p75
          @P95 = p95
          @P99 = p99
          @Points = points
          @RequestId = requestid
        end

        def deserialize(params)
          @IntervalSec = params['IntervalSec']
          @Average = params['Average']
          @P50 = params['P50']
          @P75 = params['P75']
          @P95 = params['P95']
          @P99 = params['P99']
          unless params['Points'].nil?
            @Points = []
            params['Points'].each do |i|
              tdemssepercentilepoint_tmp = TDEMSSEPercentilePoint.new
              tdemssepercentilepoint_tmp.deserialize(i)
              @Points << tdemssepercentilepoint_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMSSESummary请求参数结构体
      class DescribeTDEMSSESummaryRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID。这里是业务应用标识，不是腾讯云账号 AppId。</p>
        # @type AppId: String
        # @param StartTime: <p>开始时间，Unix 毫秒。</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间，Unix 毫秒。须通过现有时间范围校验。</p>
        # @type EndTime: Integer
        # @param Filters: <p>筛选条件 JSON 字符串，格式为 [{Key,Op,Values}]。Op 只允许 in。Key 只允许 model_version、app_version、platform、os、region、is_error、is_stall、network_type、server_ip、isp、user_id。is_error 与 is_stall 的值只允许 true 或 false。</p>
        # @type Filters: String

        attr_accessor :AppId, :StartTime, :EndTime, :Filters

        def initialize(appid=nil, starttime=nil, endtime=nil, filters=nil)
          @AppId = appid
          @StartTime = starttime
          @EndTime = endtime
          @Filters = filters
        end

        def deserialize(params)
          @AppId = params['AppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Filters = params['Filters']
        end
      end

      # DescribeTDEMSSESummary返回参数结构体
      class DescribeTDEMSSESummaryResponse < TencentCloud::Common::AbstractModel
        # @param ConversationCount: <p>对话次数。一条大模型对话对应一条 sse_call。</p>
        # @type ConversationCount: Integer
        # @param TotalTokenCount: <p>token 总数。对话次数为 0 时为 0。</p>
        # @type TotalTokenCount: Integer
        # @param TokenThroughput: <p>token 吞吐率，单位 token/秒。对话次数为 0 时为 null。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TokenThroughput: Float
        # @param FirstMessageDelay: <p>首次消息时延，单位毫秒。对话次数为 0 时为 null。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstMessageDelay: Float
        # @param ErrorRate: <p>错误率，已乘 100。对话次数为 0 时为 null。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorRate: Float
        # @param StallRate: <p>卡死率，已乘 100。对话次数为 0 时为 null。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StallRate: Float
        # @param Fluency: <p>流畅度，已乘 100。对话次数为 0 时为 null。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Fluency: Float
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConversationCount, :TotalTokenCount, :TokenThroughput, :FirstMessageDelay, :ErrorRate, :StallRate, :Fluency, :RequestId

        def initialize(conversationcount=nil, totaltokencount=nil, tokenthroughput=nil, firstmessagedelay=nil, errorrate=nil, stallrate=nil, fluency=nil, requestid=nil)
          @ConversationCount = conversationcount
          @TotalTokenCount = totaltokencount
          @TokenThroughput = tokenthroughput
          @FirstMessageDelay = firstmessagedelay
          @ErrorRate = errorrate
          @StallRate = stallrate
          @Fluency = fluency
          @RequestId = requestid
        end

        def deserialize(params)
          @ConversationCount = params['ConversationCount']
          @TotalTokenCount = params['TotalTokenCount']
          @TokenThroughput = params['TokenThroughput']
          @FirstMessageDelay = params['FirstMessageDelay']
          @ErrorRate = params['ErrorRate']
          @StallRate = params['StallRate']
          @Fluency = params['Fluency']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMSSETrend请求参数结构体
      class DescribeTDEMSSETrendRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID。这里是业务应用标识，不是腾讯云账号 AppId。</p>
        # @type AppId: String
        # @param StartTime: <p>开始时间，Unix 毫秒。</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间，Unix 毫秒。须通过现有时间范围校验。</p>
        # @type EndTime: Integer
        # @param Metric: <p>指标。取值说明：token_throughput（token 吞吐率，token/秒）、first_message_delay（首次消息时延，毫秒）、error_rate（错误率，已乘 100 的百分比）、stall_rate（卡死率，已乘 100 的百分比）、fluency（流畅度，已乘 100 的百分比）。</p>
        # @type Metric: String
        # @param Dimension: <p>趋势维度。取值说明：overall、model_version、network_type、server_ip、isp。overall 返回 Points，其他维度返回 Series。</p>
        # @type Dimension: String
        # @param Filters: <p>筛选条件 JSON 字符串，格式为 [{Key,Op,Values}]。Op 只允许 in。Key 只允许 model_version、app_version、platform、os、region、is_error、is_stall、network_type、server_ip、isp、user_id。is_error 与 is_stall 的值只允许 true 或 false。</p>
        # @type Filters: String
        # @param TopN: <p>头部维度数量，只允许 7、10、20。Dimension 为 overall 时忽略。</p>
        # @type TopN: Integer

        attr_accessor :AppId, :StartTime, :EndTime, :Metric, :Dimension, :Filters, :TopN

        def initialize(appid=nil, starttime=nil, endtime=nil, metric=nil, dimension=nil, filters=nil, topn=nil)
          @AppId = appid
          @StartTime = starttime
          @EndTime = endtime
          @Metric = metric
          @Dimension = dimension
          @Filters = filters
          @TopN = topn
        end

        def deserialize(params)
          @AppId = params['AppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Metric = params['Metric']
          @Dimension = params['Dimension']
          @Filters = params['Filters']
          @TopN = params['TopN']
        end
      end

      # DescribeTDEMSSETrend返回参数结构体
      class DescribeTDEMSSETrendResponse < TencentCloud::Common::AbstractModel
        # @param IntervalSec: <p>时间桶宽度，单位秒。</p>
        # @type IntervalSec: Integer
        # @param Points: <p>Dimension 为 overall 时的时间桶。没有对话时为空数组。</p>
        # @type Points: Array
        # @param Series: <p>非 overall 时按指标从高到低取 TopN 后的序列。没有对话时为空数组。</p>
        # @type Series: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IntervalSec, :Points, :Series, :RequestId

        def initialize(intervalsec=nil, points=nil, series=nil, requestid=nil)
          @IntervalSec = intervalsec
          @Points = points
          @Series = series
          @RequestId = requestid
        end

        def deserialize(params)
          @IntervalSec = params['IntervalSec']
          unless params['Points'].nil?
            @Points = []
            params['Points'].each do |i|
              tdemssetrendpoint_tmp = TDEMSSETrendPoint.new
              tdemssetrendpoint_tmp.deserialize(i)
              @Points << tdemssetrendpoint_tmp
            end
          end
          unless params['Series'].nil?
            @Series = []
            params['Series'].each do |i|
              tdemssetrendseries_tmp = TDEMSSETrendSeries.new
              tdemssetrendseries_tmp.deserialize(i)
              @Series << tdemssetrendseries_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMSampleConfig请求参数结构体
      class DescribeTDEMSampleConfigRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>项目ID</p>
        # @type AppId: String

        attr_accessor :AppId

        def initialize(appid=nil)
          @AppId = appid
        end

        def deserialize(params)
          @AppId = params['AppId']
        end
      end

      # DescribeTDEMSampleConfig返回参数结构体
      class DescribeTDEMSampleConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>业务数据 JSON 字符串，反序列化后：{ProjectId,Event,Replay,SnapshotId,UpdatedAt}。Event/Replay 结构见 ModifyTDEMSampleConfig 入参说明。无行时 SnapshotId=0、UpdatedAt 为空。</p>
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMSampleRate请求参数结构体
      class DescribeTDEMSampleRateRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID（必填）</p>
        # @type AppId: String

        attr_accessor :AppId

        def initialize(appid=nil)
          @AppId = appid
        end

        def deserialize(params)
          @AppId = params['AppId']
        end
      end

      # DescribeTDEMSampleRate返回参数结构体
      class DescribeTDEMSampleRateResponse < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param SampleRate: <p>采集采样率 0-100</p>
        # @type SampleRate: Float
        # @param ReplaySampleRate: <p>会话回放采样率 0-100；未配置时为 1</p>
        # @type ReplaySampleRate: Float
        # @param CreatedAt: <p>创建时间</p>
        # @type CreatedAt: String
        # @param UpdatedAt: <p>更新时间</p>
        # @type UpdatedAt: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppId, :SampleRate, :ReplaySampleRate, :CreatedAt, :UpdatedAt, :RequestId

        def initialize(appid=nil, samplerate=nil, replaysamplerate=nil, createdat=nil, updatedat=nil, requestid=nil)
          @AppId = appid
          @SampleRate = samplerate
          @ReplaySampleRate = replaysamplerate
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @RequestId = requestid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @SampleRate = params['SampleRate']
          @ReplaySampleRate = params['ReplaySampleRate']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMSessionReplayTimeline请求参数结构体
      class DescribeTDEMSessionReplayTimelineRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用id</p>
        # @type AppId: String
        # @param SessionId: <p>会话id</p>
        # @type SessionId: String
        # @param StartTime: <p>开始时间</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间</p>
        # @type EndTime: Integer
        # @param Limit: <p>数量限制</p>
        # @type Limit: Integer
        # @param Cursor: <p>游标</p>
        # @type Cursor: Integer
        # @param CursorEventId: <p>时间线分页的事件ID游标，与时间游标Cursor共同定位续页起点，用于同一时间戳下的稳定分页。</p>
        # @type CursorEventId: String

        attr_accessor :AppId, :SessionId, :StartTime, :EndTime, :Limit, :Cursor, :CursorEventId

        def initialize(appid=nil, sessionid=nil, starttime=nil, endtime=nil, limit=nil, cursor=nil, cursoreventid=nil)
          @AppId = appid
          @SessionId = sessionid
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Cursor = cursor
          @CursorEventId = cursoreventid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @SessionId = params['SessionId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Cursor = params['Cursor']
          @CursorEventId = params['CursorEventId']
        end
      end

      # DescribeTDEMSessionReplayTimeline返回参数结构体
      class DescribeTDEMSessionReplayTimelineResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>请求结果</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMUsageDetail请求参数结构体
      class DescribeTDEMUsageDetailRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: <p>开始时间，YYYY-MM-DD HH:00:00（小时对齐，必填）</p>
        # @type StartTime: String
        # @param EndTime: <p>结束时间，YYYY-MM-DD HH:00:00（小时对齐，必填）</p>
        # @type EndTime: String
        # @param Keyword: <p>可选关键字，匹配业务系统名称、应用名称或应用 ID</p>
        # @type Keyword: String
        # @param Offset: <p>分页偏移，默认 0</p>
        # @type Offset: Integer
        # @param Limit: <p>每页数量，默认 20，上限 100</p>
        # @type Limit: Integer
        # @param DemoMode: <p>演示模式开关</p>
        # @type DemoMode: Boolean

        attr_accessor :StartTime, :EndTime, :Keyword, :Offset, :Limit, :DemoMode

        def initialize(starttime=nil, endtime=nil, keyword=nil, offset=nil, limit=nil, demomode=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Keyword = keyword
          @Offset = offset
          @Limit = limit
          @DemoMode = demomode
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Keyword = params['Keyword']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @DemoMode = params['DemoMode']
        end
      end

      # DescribeTDEMUsageDetail返回参数结构体
      class DescribeTDEMUsageDetailResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>总行数</p>
        # @type TotalCount: Integer
        # @param ReportVolume: <p>当前结果集上报合计</p>
        # @type ReportVolume: Integer
        # @param DetailSet: <p>明细</p>
        # @type DetailSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ReportVolume, :DetailSet, :RequestId

        def initialize(totalcount=nil, reportvolume=nil, detailset=nil, requestid=nil)
          @TotalCount = totalcount
          @ReportVolume = reportvolume
          @DetailSet = detailset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @ReportVolume = params['ReportVolume']
          unless params['DetailSet'].nil?
            @DetailSet = []
            params['DetailSet'].each do |i|
              usagedetailrow_tmp = UsageDetailRow.new
              usagedetailrow_tmp.deserialize(i)
              @DetailSet << usagedetailrow_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTDEMUsageSummary请求参数结构体
      class DescribeTDEMUsageSummaryRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: <p>开始时间，YYYY-MM-DD HH:00:00（小时对齐，必填）</p>
        # @type StartTime: String
        # @param EndTime: <p>结束时间，YYYY-MM-DD HH:00:00（小时对齐，必填）</p>
        # @type EndTime: String
        # @param DemoMode: <p>演示模式开关</p>
        # @type DemoMode: Boolean

        attr_accessor :StartTime, :EndTime, :DemoMode

        def initialize(starttime=nil, endtime=nil, demomode=nil)
          @StartTime = starttime
          @EndTime = endtime
          @DemoMode = demomode
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @DemoMode = params['DemoMode']
        end
      end

      # DescribeTDEMUsageSummary返回参数结构体
      class DescribeTDEMUsageSummaryResponse < TencentCloud::Common::AbstractModel
        # @param ReportVolume: <p>上报总量</p>
        # @type ReportVolume: Integer
        # @param ResourceCount: <p>窗口内有量应用数</p>
        # @type ResourceCount: Integer
        # @param Granularity: <p>hour 或 day</p>
        # @type Granularity: String
        # @param ByDate: <p>趋势</p>
        # @type ByDate: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReportVolume, :ResourceCount, :Granularity, :ByDate, :RequestId

        def initialize(reportvolume=nil, resourcecount=nil, granularity=nil, bydate=nil, requestid=nil)
          @ReportVolume = reportvolume
          @ResourceCount = resourcecount
          @Granularity = granularity
          @ByDate = bydate
          @RequestId = requestid
        end

        def deserialize(params)
          @ReportVolume = params['ReportVolume']
          @ResourceCount = params['ResourceCount']
          @Granularity = params['Granularity']
          unless params['ByDate'].nil?
            @ByDate = []
            params['ByDate'].each do |i|
              usagetimepoint_tmp = UsageTimePoint.new
              usagetimepoint_tmp.deserialize(i)
              @ByDate << usagetimepoint_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTawAreas请求参数结构体
      class DescribeTawAreasRequest < TencentCloud::Common::AbstractModel
        # @param AreaIds: 片区Id
        # @type AreaIds: Array
        # @param AreaKeys: 片区Key
        # @type AreaKeys: Array
        # @param Limit: 分页Limit，默认根据AreaKeys和AreaStatuses参数查询所有。
        # @type Limit: Integer
        # @param AreaStatuses: 片区状态(1=有效，2=无效)
        # @type AreaStatuses: Array
        # @param Offset: 分页Offset，默认根据AreaKeys和AreaStatuses参数查询所有。
        # @type Offset: Integer

        attr_accessor :AreaIds, :AreaKeys, :Limit, :AreaStatuses, :Offset

        def initialize(areaids=nil, areakeys=nil, limit=nil, areastatuses=nil, offset=nil)
          @AreaIds = areaids
          @AreaKeys = areakeys
          @Limit = limit
          @AreaStatuses = areastatuses
          @Offset = offset
        end

        def deserialize(params)
          @AreaIds = params['AreaIds']
          @AreaKeys = params['AreaKeys']
          @Limit = params['Limit']
          @AreaStatuses = params['AreaStatuses']
          @Offset = params['Offset']
        end
      end

      # DescribeTawAreas返回参数结构体
      class DescribeTawAreasResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 片区总数
        # @type TotalCount: Integer
        # @param AreaSet: 片区列表
        # @type AreaSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AreaSet, :RequestId

        def initialize(totalcount=nil, areaset=nil, requestid=nil)
          @TotalCount = totalcount
          @AreaSet = areaset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AreaSet'].nil?
            @AreaSet = []
            params['AreaSet'].each do |i|
              rumareainfo_tmp = RumAreaInfo.new
              rumareainfo_tmp.deserialize(i)
              @AreaSet << rumareainfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTawInstances请求参数结构体
      class DescribeTawInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ChargeStatuses: 计费状态
        # @type ChargeStatuses: Array
        # @param ChargeTypes: 计费类型
        # @type ChargeTypes: Array
        # @param Limit: 分页Limit
        # @type Limit: Integer
        # @param Offset: 分页Offset
        # @type Offset: Integer
        # @param AreaIds: 片区Id
        # @type AreaIds: Array
        # @param InstanceStatuses: 实例状态(1=创建中，2=运行中，3=异常，4=重启中，5=停止中，6=已停止，7=销毁中，8=已销毁), 该参数已废弃，请在Filters内注明
        # @type InstanceStatuses: Array
        # @param InstanceIds: 实例Id, 该参数已废弃，请在Filters内注明
        # @type InstanceIds: Array
        # @param Filters: 过滤参数；demo模式传{"Name": "IsDemo", "Values":["1"]}
        # @type Filters: Array
        # @param IsDemo: 该参数已废弃，demo模式请在Filters内注明
        # @type IsDemo: Integer

        attr_accessor :ChargeStatuses, :ChargeTypes, :Limit, :Offset, :AreaIds, :InstanceStatuses, :InstanceIds, :Filters, :IsDemo
        extend Gem::Deprecate
        deprecate :InstanceStatuses, :none, 2026, 10
        deprecate :InstanceStatuses=, :none, 2026, 10
        deprecate :InstanceIds, :none, 2026, 10
        deprecate :InstanceIds=, :none, 2026, 10
        deprecate :IsDemo, :none, 2026, 10
        deprecate :IsDemo=, :none, 2026, 10

        def initialize(chargestatuses=nil, chargetypes=nil, limit=nil, offset=nil, areaids=nil, instancestatuses=nil, instanceids=nil, filters=nil, isdemo=nil)
          @ChargeStatuses = chargestatuses
          @ChargeTypes = chargetypes
          @Limit = limit
          @Offset = offset
          @AreaIds = areaids
          @InstanceStatuses = instancestatuses
          @InstanceIds = instanceids
          @Filters = filters
          @IsDemo = isdemo
        end

        def deserialize(params)
          @ChargeStatuses = params['ChargeStatuses']
          @ChargeTypes = params['ChargeTypes']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @AreaIds = params['AreaIds']
          @InstanceStatuses = params['InstanceStatuses']
          @InstanceIds = params['InstanceIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @IsDemo = params['IsDemo']
        end
      end

      # DescribeTawInstances返回参数结构体
      class DescribeTawInstancesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceSet: 实例列表
        # @type InstanceSet: Array
        # @param TotalCount: 实例总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceSet, :TotalCount, :RequestId

        def initialize(instanceset=nil, totalcount=nil, requestid=nil)
          @InstanceSet = instanceset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceSet'].nil?
            @InstanceSet = []
            params['InstanceSet'].each do |i|
              ruminstanceinfo_tmp = RumInstanceInfo.new
              ruminstanceinfo_tmp.deserialize(i)
              @InstanceSet << ruminstanceinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeToken请求参数结构体
      class DescribeTokenRequest < TencentCloud::Common::AbstractModel
        # @param FormListString: <p>筛选条件</p>
        # @type FormListString: String
        # @param FormListAString: <p>仅对比模式下填写，筛选条件A</p>
        # @type FormListAString: String
        # @param FormListBString: <p>仅对比模式下填写，筛选条件B</p>
        # @type FormListBString: String
        # @param RequestHeader: <p>请求头</p>
        # @type RequestHeader: String
        # @param ExtraData: <p>拓展字段</p>
        # @type ExtraData: String

        attr_accessor :FormListString, :FormListAString, :FormListBString, :RequestHeader, :ExtraData

        def initialize(formliststring=nil, formlistastring=nil, formlistbstring=nil, requestheader=nil, extradata=nil)
          @FormListString = formliststring
          @FormListAString = formlistastring
          @FormListBString = formlistbstring
          @RequestHeader = requestheader
          @ExtraData = extradata
        end

        def deserialize(params)
          @FormListString = params['FormListString']
          @FormListAString = params['FormListAString']
          @FormListBString = params['FormListBString']
          @RequestHeader = params['RequestHeader']
          @ExtraData = params['ExtraData']
        end
      end

      # DescribeToken返回参数结构体
      class DescribeTokenResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回值</p>
        # @type Data: String
        # @param Code: <p>状态码</p>
        # @type Code: Integer
        # @param Message: <p>消息</p>
        # @type Message: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Code, :Message, :RequestId

        def initialize(data=nil, code=nil, message=nil, requestid=nil)
          @Data = data
          @Code = code
          @Message = message
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @Code = params['Code']
          @Message = params['Message']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopIssues请求参数结构体
      class DescribeTopIssuesRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: <p>产品Id</p>
        # @type ProductId: String
        # @param Compare: <p>需要对比的查询条件，没有则不填</p>
        # @type Compare: :class:`Tencentcloud::Rum.v20210622.models.CompareCondition`
        # @param Condition: <p>查询条件</p>
        # @type Condition: :class:`Tencentcloud::Rum.v20210622.models.CompareCondition`
        # @param IssueType: <p>问题类型</p>
        # @type IssueType: Integer
        # @param SortField: <p>排序字段</p>
        # @type SortField: String
        # @param SortType: <p>排序方式</p>
        # @type SortType: String
        # @param TopNum: <p>topN</p>
        # @type TopNum: Integer
        # @param ExtraData: <p>拓展字段</p>
        # @type ExtraData: String
        # @param RequestHeader: <p>请求头</p>
        # @type RequestHeader: String

        attr_accessor :ProductId, :Compare, :Condition, :IssueType, :SortField, :SortType, :TopNum, :ExtraData, :RequestHeader

        def initialize(productid=nil, compare=nil, condition=nil, issuetype=nil, sortfield=nil, sorttype=nil, topnum=nil, extradata=nil, requestheader=nil)
          @ProductId = productid
          @Compare = compare
          @Condition = condition
          @IssueType = issuetype
          @SortField = sortfield
          @SortType = sorttype
          @TopNum = topnum
          @ExtraData = extradata
          @RequestHeader = requestheader
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          unless params['Compare'].nil?
            @Compare = CompareCondition.new
            @Compare.deserialize(params['Compare'])
          end
          unless params['Condition'].nil?
            @Condition = CompareCondition.new
            @Condition.deserialize(params['Condition'])
          end
          @IssueType = params['IssueType']
          @SortField = params['SortField']
          @SortType = params['SortType']
          @TopNum = params['TopNum']
          @ExtraData = params['ExtraData']
          @RequestHeader = params['RequestHeader']
        end
      end

      # DescribeTopIssues返回参数结构体
      class DescribeTopIssuesResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回值</p>
        # @type Data: String
        # @param Code: <p>状态码</p>
        # @type Code: Integer
        # @param Message: <p>消息</p>
        # @type Message: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Code, :Message, :RequestId

        def initialize(data=nil, code=nil, message=nil, requestid=nil)
          @Data = data
          @Code = code
          @Message = message
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @Code = params['Code']
          @Message = params['Message']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserJourneySanKey请求参数结构体
      class DescribeUserJourneySanKeyRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用id</p>
        # @type AppId: String
        # @param StartTime: <p>开始时间</p>
        # @type StartTime: Integer
        # @param EndTime: <p>结束时间</p>
        # @type EndTime: Integer
        # @param Platform: <p>平台</p>
        # @type Platform: String
        # @param Filters: <p>过滤条件</p>
        # @type Filters: String
        # @param TopPagesPerStep: <p>每一步骤的数量</p>
        # @type TopPagesPerStep: Integer
        # @param MinSessionThreshold: <p>每一个节点最小的会话数量</p>
        # @type MinSessionThreshold: Integer
        # @param StartPage: <p>开始页面</p>
        # @type StartPage: String
        # @param EndPage: <p>结束页面</p>
        # @type EndPage: String
        # @param HasStruggle: <p>是否有挣扎事件</p>
        # @type HasStruggle: Boolean

        attr_accessor :AppId, :StartTime, :EndTime, :Platform, :Filters, :TopPagesPerStep, :MinSessionThreshold, :StartPage, :EndPage, :HasStruggle

        def initialize(appid=nil, starttime=nil, endtime=nil, platform=nil, filters=nil, toppagesperstep=nil, minsessionthreshold=nil, startpage=nil, endpage=nil, hasstruggle=nil)
          @AppId = appid
          @StartTime = starttime
          @EndTime = endtime
          @Platform = platform
          @Filters = filters
          @TopPagesPerStep = toppagesperstep
          @MinSessionThreshold = minsessionthreshold
          @StartPage = startpage
          @EndPage = endpage
          @HasStruggle = hasstruggle
        end

        def deserialize(params)
          @AppId = params['AppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Platform = params['Platform']
          @Filters = params['Filters']
          @TopPagesPerStep = params['TopPagesPerStep']
          @MinSessionThreshold = params['MinSessionThreshold']
          @StartPage = params['StartPage']
          @EndPage = params['EndPage']
          @HasStruggle = params['HasStruggle']
        end
      end

      # DescribeUserJourneySanKey返回参数结构体
      class DescribeUserJourneySanKeyResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>请求结果</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUvList请求参数结构体
      class DescribeUvListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: ID
        # @type ProjectId: Integer
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param Dimension: 获取day：d，   min:m
        # @type Dimension: String

        attr_accessor :ProjectId, :EndTime, :StartTime, :Dimension

        def initialize(projectid=nil, endtime=nil, starttime=nil, dimension=nil)
          @ProjectId = projectid
          @EndTime = endtime
          @StartTime = starttime
          @Dimension = dimension
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @EndTime = params['EndTime']
          @StartTime = params['StartTime']
          @Dimension = params['Dimension']
        end
      end

      # DescribeUvList返回参数结构体
      class DescribeUvListResponse < TencentCloud::Common::AbstractModel
        # @param ProjectUvSet: uv列表
        # @type ProjectUvSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProjectUvSet, :RequestId

        def initialize(projectuvset=nil, requestid=nil)
          @ProjectUvSet = projectuvset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ProjectUvSet'].nil?
            @ProjectUvSet = []
            params['ProjectUvSet'].each do |i|
              rumuvinfo_tmp = RumUvInfo.new
              rumuvinfo_tmp.deserialize(i)
              @ProjectUvSet << rumuvinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWhitelists请求参数结构体
      class DescribeWhitelistsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 实例instance-ID
        # @type InstanceID: String

        attr_accessor :InstanceID

        def initialize(instanceid=nil)
          @InstanceID = instanceid
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
        end
      end

      # DescribeWhitelists返回参数结构体
      class DescribeWhitelistsResponse < TencentCloud::Common::AbstractModel
        # @param WhitelistSet: 白名单列表
        # @type WhitelistSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WhitelistSet, :RequestId

        def initialize(whitelistset=nil, requestid=nil)
          @WhitelistSet = whitelistset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WhitelistSet'].nil?
            @WhitelistSet = []
            params['WhitelistSet'].each do |i|
              whitelist_tmp = Whitelist.new
              whitelist_tmp.deserialize(i)
              @WhitelistSet << whitelist_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 拨测维度统计项
      class DialDimensionItem < TencentCloud::Common::AbstractModel
        # @param Value: <p>维度值。空值在控制台展示为未知。</p>
        # @type Value: String
        # @param ExecutionCount: <p>执行次数。target_ip 按探测条数，其它维度按批次。</p>
        # @type ExecutionCount: Integer
        # @param SuccessCount: <p>成功次数</p>
        # @type SuccessCount: Integer
        # @param FailCount: <p>失败次数</p>
        # @type FailCount: Integer
        # @param AvgDuration: <p>平均时延，单位毫秒</p>
        # @type AvgDuration: Float
        # @param AvgLoss: <p>平均丢包率，0 到 100</p>
        # @type AvgLoss: Float

        attr_accessor :Value, :ExecutionCount, :SuccessCount, :FailCount, :AvgDuration, :AvgLoss

        def initialize(value=nil, executioncount=nil, successcount=nil, failcount=nil, avgduration=nil, avgloss=nil)
          @Value = value
          @ExecutionCount = executioncount
          @SuccessCount = successcount
          @FailCount = failcount
          @AvgDuration = avgduration
          @AvgLoss = avgloss
        end

        def deserialize(params)
          @Value = params['Value']
          @ExecutionCount = params['ExecutionCount']
          @SuccessCount = params['SuccessCount']
          @FailCount = params['FailCount']
          @AvgDuration = params['AvgDuration']
          @AvgLoss = params['AvgLoss']
        end
      end

      # 一次拨测执行批次
      class DialExecution < TencentCloud::Common::AbstractModel
        # @param TaskId: <p>任务 ID</p>
        # @type TaskId: String
        # @param TaskName: <p>任务名称。任务已删除时仍返回当时名称，找不到则为空。</p>
        # @type TaskName: String
        # @param TaskSessionId: <p>拨测批次 ID</p>
        # @type TaskSessionId: String
        # @param StartTime: <p>批次开始时间，毫秒时间戳</p>
        # @type StartTime: Integer
        # @param Platform: <p>客户端平台</p>
        # @type Platform: String
        # @param AppVersion: <p>应用版本</p>
        # @type AppVersion: String
        # @param Device: <p>设备机型</p>
        # @type Device: String
        # @param NetType: <p>网络类型</p>
        # @type NetType: String
        # @param Operator: <p>客户端运营商。不是目标 IP 运营商。</p>
        # @type Operator: String
        # @param Region: <p>客户端地区。不是目标 IP 地区。</p>
        # @type Region: String
        # @param TargetIps: <p>本批次探测到的目标 IP，顺序与 TargetIpGeo 一致</p>
        # @type TargetIps: Array
        # @param TargetIpGeo: <p>每个目标 IP 的地区和运营商</p>
        # @type TargetIpGeo: Array
        # @param Success: <p>本批次是否全部探测成功</p>
        # @type Success: Boolean
        # @param NotProbed: <p>本批次是否未实际探测</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NotProbed: Boolean
        # @param AvgDuration: <p>本批次成功目标的平均时延，单位毫秒</p>
        # @type AvgDuration: Float
        # @param HasMTR: <p>本批次是否包含路由追踪</p>
        # @type HasMTR: Boolean
        # @param SessionId: <p>所属用户会话 ID</p>
        # @type SessionId: String

        attr_accessor :TaskId, :TaskName, :TaskSessionId, :StartTime, :Platform, :AppVersion, :Device, :NetType, :Operator, :Region, :TargetIps, :TargetIpGeo, :Success, :NotProbed, :AvgDuration, :HasMTR, :SessionId

        def initialize(taskid=nil, taskname=nil, tasksessionid=nil, starttime=nil, platform=nil, appversion=nil, device=nil, nettype=nil, operator=nil, region=nil, targetips=nil, targetipgeo=nil, success=nil, notprobed=nil, avgduration=nil, hasmtr=nil, sessionid=nil)
          @TaskId = taskid
          @TaskName = taskname
          @TaskSessionId = tasksessionid
          @StartTime = starttime
          @Platform = platform
          @AppVersion = appversion
          @Device = device
          @NetType = nettype
          @Operator = operator
          @Region = region
          @TargetIps = targetips
          @TargetIpGeo = targetipgeo
          @Success = success
          @NotProbed = notprobed
          @AvgDuration = avgduration
          @HasMTR = hasmtr
          @SessionId = sessionid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @TaskSessionId = params['TaskSessionId']
          @StartTime = params['StartTime']
          @Platform = params['Platform']
          @AppVersion = params['AppVersion']
          @Device = params['Device']
          @NetType = params['NetType']
          @Operator = params['Operator']
          @Region = params['Region']
          @TargetIps = params['TargetIps']
          unless params['TargetIpGeo'].nil?
            @TargetIpGeo = []
            params['TargetIpGeo'].each do |i|
              dialtargetipgeo_tmp = DialTargetIpGeo.new
              dialtargetipgeo_tmp.deserialize(i)
              @TargetIpGeo << dialtargetipgeo_tmp
            end
          end
          @Success = params['Success']
          @NotProbed = params['NotProbed']
          @AvgDuration = params['AvgDuration']
          @HasMTR = params['HasMTR']
          @SessionId = params['SessionId']
        end
      end

      # 一次目标探测结果
      class DialProbe < TencentCloud::Common::AbstractModel
        # @param TargetIp: <p>探测目标 IP</p>
        # @type TargetIp: String
        # @param PingSuccess: <p>本次探测是否成功</p>
        # @type PingSuccess: Boolean
        # @param Sent: <p>发送包数</p>
        # @type Sent: Float
        # @param Received: <p>接收包数</p>
        # @type Received: Float
        # @param Loss: <p>丢包率，0 到 100</p>
        # @type Loss: Float
        # @param Min: <p>最小时延，单位毫秒</p>
        # @type Min: Float
        # @param Max: <p>最大时延，单位毫秒</p>
        # @type Max: Float
        # @param Avg: <p>平均时延，单位毫秒</p>
        # @type Avg: Float
        # @param Protocol: <p>探测协议</p>
        # @type Protocol: String
        # @param Domain: <p>探测目标域名或地址</p>
        # @type Domain: String
        # @param SkipReason: <p>未探测原因</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SkipReason: String
        # @param Region: <p>目标 IP 所在地区。与客户端地区无关。无法解析时为未知。</p>
        # @type Region: String
        # @param Operator: <p>目标 IP 所属运营商。与客户端运营商无关。无法解析时为未知。</p>
        # @type Operator: String

        attr_accessor :TargetIp, :PingSuccess, :Sent, :Received, :Loss, :Min, :Max, :Avg, :Protocol, :Domain, :SkipReason, :Region, :Operator

        def initialize(targetip=nil, pingsuccess=nil, sent=nil, received=nil, loss=nil, min=nil, max=nil, avg=nil, protocol=nil, domain=nil, skipreason=nil, region=nil, operator=nil)
          @TargetIp = targetip
          @PingSuccess = pingsuccess
          @Sent = sent
          @Received = received
          @Loss = loss
          @Min = min
          @Max = max
          @Avg = avg
          @Protocol = protocol
          @Domain = domain
          @SkipReason = skipreason
          @Region = region
          @Operator = operator
        end

        def deserialize(params)
          @TargetIp = params['TargetIp']
          @PingSuccess = params['PingSuccess']
          @Sent = params['Sent']
          @Received = params['Received']
          @Loss = params['Loss']
          @Min = params['Min']
          @Max = params['Max']
          @Avg = params['Avg']
          @Protocol = params['Protocol']
          @Domain = params['Domain']
          @SkipReason = params['SkipReason']
          @Region = params['Region']
          @Operator = params['Operator']
        end
      end

      # 拨测目标 IP 的地区和运营商
      class DialTargetIpGeo < TencentCloud::Common::AbstractModel
        # @param Ip: <p>目标 IP，与 TargetIps 中的地址一致</p>
        # @type Ip: String
        # @param Region: <p>目标 IP 所在地区。无法解析时为未知。</p>
        # @type Region: String
        # @param Operator: <p>目标 IP 所属运营商。无法解析时为未知。</p>
        # @type Operator: String

        attr_accessor :Ip, :Region, :Operator

        def initialize(ip=nil, region=nil, operator=nil)
          @Ip = ip
          @Region = region
          @Operator = operator
        end

        def deserialize(params)
          @Ip = params['Ip']
          @Region = params['Region']
          @Operator = params['Operator']
        end
      end

      # 拨测任务
      class DialTask < TencentCloud::Common::AbstractModel
        # @param TaskId: <p>任务 ID</p>
        # @type TaskId: String
        # @param TaskName: <p>任务名称</p>
        # @type TaskName: String
        # @param Status: <p>任务状态。取值说明：active、paused；已删除任务不返回。</p>
        # @type Status: String
        # @param Type: <p>探测类型。取值说明：icmp、tcp。</p>
        # @type Type: String
        # @param ExecutionTime: <p>执行时机。取值说明：realtime、after_request、after_error、after_slow、after_dns_slow。</p>
        # @type ExecutionTime: String
        # @param WatchDomain: <p>监听域名。非 realtime 时有值。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WatchDomain: String
        # @param DialDomain: <p>拨测目标。域名、IP 或 ldns。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DialDomain: String
        # @param Port: <p>TCP 端口。仅 tcp 任务返回。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param FrequencyMs: <p>实时拨测间隔，单位毫秒。仅 realtime 返回。取值说明：60000、300000、600000、900000、1800000、3600000。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrequencyMs: Integer
        # @param TimeoutMs: <p>单次探测超时，单位毫秒。范围 1000 到 20000。</p>
        # @type TimeoutMs: Integer
        # @param PeriodMs: <p>探测周期，单位毫秒。</p>
        # @type PeriodMs: Integer
        # @param PackageCount: <p>发包次数。范围 3 到 40。</p>
        # @type PackageCount: Integer
        # @param PackageSize: <p>ICMP 包大小，单位字节。范围 32 到 1024，默认 64。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageSize: Integer
        # @param NeedMTR: <p>是否做路由追踪。取值说明：0 否，1 是。</p>
        # @type NeedMTR: Integer
        # @param MTRTimeoutMs: <p>路由追踪超时，单位毫秒。NeedMTR 为 1 时有值。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MTRTimeoutMs: Integer
        # @param MTRMaxHop: <p>路由追踪最大跳数。NeedMTR 为 1 时有值。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MTRMaxHop: Integer
        # @param MTRPingCount: <p>每一跳发包次数。范围 3 到 40。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MTRPingCount: Integer
        # @param SlowThresholdMs: <p>慢请求阈值，单位毫秒。after_slow、after_dns_slow 时使用，默认 2000。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlowThresholdMs: Integer
        # @param ErrorType: <p>错误类型过滤。after_error 时使用。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorType: String
        # @param Regions: <p>允许启动的客户端地区，逗号分隔，名称与分析页客户端地区一致。空表示不限制。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Regions: String
        # @param Operators: <p>允许启动的客户端运营商，逗号分隔，名称与分析页客户端运营商一致。空表示不限制。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operators: String
        # @param UserIds: <p>允许启动的用户 ID，逗号分隔。空表示不限制。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserIds: String
        # @param DeviceIds: <p>允许启动的设备 ID，逗号分隔。空表示不限制。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceIds: String
        # @param CreatedBy: <p>创建人</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedBy: String
        # @param CreatedAt: <p>创建时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param UpdatedAt: <p>更新时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String

        attr_accessor :TaskId, :TaskName, :Status, :Type, :ExecutionTime, :WatchDomain, :DialDomain, :Port, :FrequencyMs, :TimeoutMs, :PeriodMs, :PackageCount, :PackageSize, :NeedMTR, :MTRTimeoutMs, :MTRMaxHop, :MTRPingCount, :SlowThresholdMs, :ErrorType, :Regions, :Operators, :UserIds, :DeviceIds, :CreatedBy, :CreatedAt, :UpdatedAt

        def initialize(taskid=nil, taskname=nil, status=nil, type=nil, executiontime=nil, watchdomain=nil, dialdomain=nil, port=nil, frequencyms=nil, timeoutms=nil, periodms=nil, packagecount=nil, packagesize=nil, needmtr=nil, mtrtimeoutms=nil, mtrmaxhop=nil, mtrpingcount=nil, slowthresholdms=nil, errortype=nil, regions=nil, operators=nil, userids=nil, deviceids=nil, createdby=nil, createdat=nil, updatedat=nil)
          @TaskId = taskid
          @TaskName = taskname
          @Status = status
          @Type = type
          @ExecutionTime = executiontime
          @WatchDomain = watchdomain
          @DialDomain = dialdomain
          @Port = port
          @FrequencyMs = frequencyms
          @TimeoutMs = timeoutms
          @PeriodMs = periodms
          @PackageCount = packagecount
          @PackageSize = packagesize
          @NeedMTR = needmtr
          @MTRTimeoutMs = mtrtimeoutms
          @MTRMaxHop = mtrmaxhop
          @MTRPingCount = mtrpingcount
          @SlowThresholdMs = slowthresholdms
          @ErrorType = errortype
          @Regions = regions
          @Operators = operators
          @UserIds = userids
          @DeviceIds = deviceids
          @CreatedBy = createdby
          @CreatedAt = createdat
          @UpdatedAt = updatedat
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @Status = params['Status']
          @Type = params['Type']
          @ExecutionTime = params['ExecutionTime']
          @WatchDomain = params['WatchDomain']
          @DialDomain = params['DialDomain']
          @Port = params['Port']
          @FrequencyMs = params['FrequencyMs']
          @TimeoutMs = params['TimeoutMs']
          @PeriodMs = params['PeriodMs']
          @PackageCount = params['PackageCount']
          @PackageSize = params['PackageSize']
          @NeedMTR = params['NeedMTR']
          @MTRTimeoutMs = params['MTRTimeoutMs']
          @MTRMaxHop = params['MTRMaxHop']
          @MTRPingCount = params['MTRPingCount']
          @SlowThresholdMs = params['SlowThresholdMs']
          @ErrorType = params['ErrorType']
          @Regions = params['Regions']
          @Operators = params['Operators']
          @UserIds = params['UserIds']
          @DeviceIds = params['DeviceIds']
          @CreatedBy = params['CreatedBy']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
        end
      end

      # 拨测趋势点
      class DialTrendPoint < TencentCloud::Common::AbstractModel
        # @param Time: <p>时间桶，格式 yyyy-MM-dd HH:mm:ss</p>
        # @type Time: String
        # @param ExecutionCount: <p>执行批次数</p>
        # @type ExecutionCount: Integer
        # @param SuccessCount: <p>成功批次数</p>
        # @type SuccessCount: Integer
        # @param FailCount: <p>失败批次数</p>
        # @type FailCount: Integer
        # @param AvgDuration: <p>平均时延，单位毫秒</p>
        # @type AvgDuration: Float

        attr_accessor :Time, :ExecutionCount, :SuccessCount, :FailCount, :AvgDuration

        def initialize(time=nil, executioncount=nil, successcount=nil, failcount=nil, avgduration=nil)
          @Time = time
          @ExecutionCount = executioncount
          @SuccessCount = successcount
          @FailCount = failcount
          @AvgDuration = avgduration
        end

        def deserialize(params)
          @Time = params['Time']
          @ExecutionCount = params['ExecutionCount']
          @SuccessCount = params['SuccessCount']
          @FailCount = params['FailCount']
          @AvgDuration = params['AvgDuration']
        end
      end

      # 堆栈帧
      class EventFrame < TencentCloud::Common::AbstractModel
        # @param AbsPath: <p>绝对路径</p>
        # @type AbsPath: String
        # @param ColNo: <p>列号</p>
        # @type ColNo: Integer
        # @param Filename: <p>文件名</p>
        # @type Filename: String
        # @param Function: <p>函数名</p>
        # @type Function: String
        # @param LineNo: <p>行号</p>
        # @type LineNo: Integer
        # @param InApp: <p>是否应用内 0/1</p>
        # @type InApp: Integer
        # @param Module: <p>模块</p>
        # @type Module: String
        # @param Package: <p>包名</p>
        # @type Package: String
        # @param StackLevel: <p>栈层级</p>
        # @type StackLevel: Integer

        attr_accessor :AbsPath, :ColNo, :Filename, :Function, :LineNo, :InApp, :Module, :Package, :StackLevel

        def initialize(abspath=nil, colno=nil, filename=nil, function=nil, lineno=nil, inapp=nil, _module=nil, package=nil, stacklevel=nil)
          @AbsPath = abspath
          @ColNo = colno
          @Filename = filename
          @Function = function
          @LineNo = lineno
          @InApp = inapp
          @Module = _module
          @Package = package
          @StackLevel = stacklevel
        end

        def deserialize(params)
          @AbsPath = params['AbsPath']
          @ColNo = params['ColNo']
          @Filename = params['Filename']
          @Function = params['Function']
          @LineNo = params['LineNo']
          @InApp = params['InApp']
          @Module = params['Module']
          @Package = params['Package']
          @StackLevel = params['StackLevel']
        end
      end

      # 事件排行。Kind=error 填指纹字段；URL 排行填 URL/Fail/Duration。
      class EventRankItem < TencentCloud::Common::AbstractModel
        # @param Fingerprint: <p>错误指纹</p>
        # @type Fingerprint: String
        # @param EventType: <p>事件类型</p>
        # @type EventType: String
        # @param CrashType: <p>崩溃类型</p>
        # @type CrashType: String
        # @param ErrorType: <p>错误类型</p>
        # @type ErrorType: String
        # @param ErrorValue: <p>错误值</p>
        # @type ErrorValue: String
        # @param IssueId: <p>问题单 ID</p>
        # @type IssueId: String
        # @param Status: <p>问题单状态</p>
        # @type Status: String
        # @param URL: <p>API 或资源 URL</p>
        # @type URL: String
        # @param Count: <p>次数</p>
        # @type Count: Integer
        # @param AffectedUser: <p>影响用户数</p>
        # @type AffectedUser: Integer
        # @param Fail: <p>失败次数</p>
        # @type Fail: Integer
        # @param Duration: <p>耗时</p>
        # @type Duration: Float
        # @param ConnectTime: <p>连接时长</p>
        # @type ConnectTime: Float
        # @param DomainLookupTime: <p>DNS 时长</p>
        # @type DomainLookupTime: Float
        # @param Series: <p>时序</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Series: Array

        attr_accessor :Fingerprint, :EventType, :CrashType, :ErrorType, :ErrorValue, :IssueId, :Status, :URL, :Count, :AffectedUser, :Fail, :Duration, :ConnectTime, :DomainLookupTime, :Series

        def initialize(fingerprint=nil, eventtype=nil, crashtype=nil, errortype=nil, errorvalue=nil, issueid=nil, status=nil, url=nil, count=nil, affecteduser=nil, fail=nil, duration=nil, connecttime=nil, domainlookuptime=nil, series=nil)
          @Fingerprint = fingerprint
          @EventType = eventtype
          @CrashType = crashtype
          @ErrorType = errortype
          @ErrorValue = errorvalue
          @IssueId = issueid
          @Status = status
          @URL = url
          @Count = count
          @AffectedUser = affecteduser
          @Fail = fail
          @Duration = duration
          @ConnectTime = connecttime
          @DomainLookupTime = domainlookuptime
          @Series = series
        end

        def deserialize(params)
          @Fingerprint = params['Fingerprint']
          @EventType = params['EventType']
          @CrashType = params['CrashType']
          @ErrorType = params['ErrorType']
          @ErrorValue = params['ErrorValue']
          @IssueId = params['IssueId']
          @Status = params['Status']
          @URL = params['URL']
          @Count = params['Count']
          @AffectedUser = params['AffectedUser']
          @Fail = params['Fail']
          @Duration = params['Duration']
          @ConnectTime = params['ConnectTime']
          @DomainLookupTime = params['DomainLookupTime']
          unless params['Series'].nil?
            @Series = []
            params['Series'].each do |i|
              eventrankpoint_tmp = EventRankPoint.new
              eventrankpoint_tmp.deserialize(i)
              @Series << eventrankpoint_tmp
            end
          end
        end
      end

      # 事件排行时序点
      class EventRankPoint < TencentCloud::Common::AbstractModel
        # @param Ts: <p>时间戳 Unix 毫秒</p>
        # @type Ts: Integer
        # @param Count: <p>次数</p>
        # @type Count: Integer
        # @param Fail: <p>失败次数</p>
        # @type Fail: Integer
        # @param Duration: <p>耗时</p>
        # @type Duration: Float

        attr_accessor :Ts, :Count, :Fail, :Duration

        def initialize(ts=nil, count=nil, fail=nil, duration=nil)
          @Ts = ts
          @Count = count
          @Fail = fail
          @Duration = duration
        end

        def deserialize(params)
          @Ts = params['Ts']
          @Count = params['Count']
          @Fail = params['Fail']
          @Duration = params['Duration']
        end
      end

      # 探索汇总分桶点
      class EventSearchSeriesPoint < TencentCloud::Common::AbstractModel
        # @param Timestamp: <p>时间戳 Unix 毫秒</p>
        # @type Timestamp: Integer
        # @param Count: <p>次数</p>
        # @type Count: Integer

        attr_accessor :Timestamp, :Count

        def initialize(timestamp=nil, count=nil)
          @Timestamp = timestamp
          @Count = count
        end

        def deserialize(params)
          @Timestamp = params['Timestamp']
          @Count = params['Count']
        end
      end

      # 事件异常栈
      class EventStack < TencentCloud::Common::AbstractModel
        # @param Type: <p>异常类型</p>
        # @type Type: String
        # @param Value: <p>异常信息</p>
        # @type Value: String
        # @param MechanismType: <p>mechanism 类型</p>
        # @type MechanismType: String
        # @param MechanismHandled: <p>是否已处理 0/1</p>
        # @type MechanismHandled: Integer

        attr_accessor :Type, :Value, :MechanismType, :MechanismHandled

        def initialize(type=nil, value=nil, mechanismtype=nil, mechanismhandled=nil)
          @Type = type
          @Value = value
          @MechanismType = mechanismtype
          @MechanismHandled = mechanismhandled
        end

        def deserialize(params)
          @Type = params['Type']
          @Value = params['Value']
          @MechanismType = params['MechanismType']
          @MechanismHandled = params['MechanismHandled']
        end
      end

      # 事件详情主表视图。空字符串省略。
      class EventView < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param EventId: <p>事件 ID</p>
        # @type EventId: String
        # @param ViewId: <p>视图 ID</p>
        # @type ViewId: String
        # @param EventType: <p>事件类型</p>
        # @type EventType: String
        # @param EventCategory: <p>事件分类</p>
        # @type EventCategory: String
        # @param EventName: <p>事件名</p>
        # @type EventName: String
        # @param Timestamp: <p>时间 RFC3339</p>
        # @type Timestamp: String
        # @param Date: <p>分区日期 YYYY-MM-DD</p>
        # @type Date: String
        # @param Platform: <p>平台</p>
        # @type Platform: String
        # @param AppVersion: <p>应用版本</p>
        # @type AppVersion: String
        # @param SdkVersion: <p>SDK 版本</p>
        # @type SdkVersion: String
        # @param IssueId: <p>问题单 ID</p>
        # @type IssueId: String
        # @param Fingerprint: <p>错误指纹</p>
        # @type Fingerprint: String
        # @param IsSourceMapped: <p>是否已符号化 0/1</p>
        # @type IsSourceMapped: Integer
        # @param ExceptionStacks: <p>异常栈</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExceptionStacks: Array
        # @param ExceptionFrames: <p>原始堆栈帧</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExceptionFrames: Array
        # @param EventProperties: <p>事件属性</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventProperties: Array
        # @param SessionId: <p>会话 ID</p>
        # @type SessionId: String
        # @param UserId: <p>业务用户 ID</p>
        # @type UserId: String
        # @param DeviceId: <p>设备 ID</p>
        # @type DeviceId: String
        # @param PageUrl: <p>页面 URL</p>
        # @type PageUrl: String
        # @param NormalizedPageUrl: <p>归一化页面 URL</p>
        # @type NormalizedPageUrl: String
        # @param PageTitle: <p>页面标题</p>
        # @type PageTitle: String
        # @param ResourceUrl: <p>资源 URL</p>
        # @type ResourceUrl: String
        # @param ResourceType: <p>资源类型</p>
        # @type ResourceType: String
        # @param TargetElement: <p>目标元素</p>
        # @type TargetElement: String
        # @param TargetText: <p>目标文本</p>
        # @type TargetText: String
        # @param LogLevel: <p>日志级别</p>
        # @type LogLevel: String
        # @param Ip: <p>IP</p>
        # @type Ip: String
        # @param Country: <p>国家</p>
        # @type Country: String
        # @param Province: <p>省份</p>
        # @type Province: String
        # @param City: <p>城市</p>
        # @type City: String
        # @param Isp: <p>运营商</p>
        # @type Isp: String
        # @param NetworkType: <p>网络类型</p>
        # @type NetworkType: String
        # @param DeviceType: <p>设备类型</p>
        # @type DeviceType: String
        # @param Os: <p>操作系统</p>
        # @type Os: String
        # @param Browser: <p>浏览器</p>
        # @type Browser: String
        # @param Environment: <p>环境</p>
        # @type Environment: String
        # @param Measurements: <p>测量值</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Measurements: Array
        # @param Tags: <p>标签</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :AppId, :EventId, :ViewId, :EventType, :EventCategory, :EventName, :Timestamp, :Date, :Platform, :AppVersion, :SdkVersion, :IssueId, :Fingerprint, :IsSourceMapped, :ExceptionStacks, :ExceptionFrames, :EventProperties, :SessionId, :UserId, :DeviceId, :PageUrl, :NormalizedPageUrl, :PageTitle, :ResourceUrl, :ResourceType, :TargetElement, :TargetText, :LogLevel, :Ip, :Country, :Province, :City, :Isp, :NetworkType, :DeviceType, :Os, :Browser, :Environment, :Measurements, :Tags

        def initialize(appid=nil, eventid=nil, viewid=nil, eventtype=nil, eventcategory=nil, eventname=nil, timestamp=nil, date=nil, platform=nil, appversion=nil, sdkversion=nil, issueid=nil, fingerprint=nil, issourcemapped=nil, exceptionstacks=nil, exceptionframes=nil, eventproperties=nil, sessionid=nil, userid=nil, deviceid=nil, pageurl=nil, normalizedpageurl=nil, pagetitle=nil, resourceurl=nil, resourcetype=nil, targetelement=nil, targettext=nil, loglevel=nil, ip=nil, country=nil, province=nil, city=nil, isp=nil, networktype=nil, devicetype=nil, os=nil, browser=nil, environment=nil, measurements=nil, tags=nil)
          @AppId = appid
          @EventId = eventid
          @ViewId = viewid
          @EventType = eventtype
          @EventCategory = eventcategory
          @EventName = eventname
          @Timestamp = timestamp
          @Date = date
          @Platform = platform
          @AppVersion = appversion
          @SdkVersion = sdkversion
          @IssueId = issueid
          @Fingerprint = fingerprint
          @IsSourceMapped = issourcemapped
          @ExceptionStacks = exceptionstacks
          @ExceptionFrames = exceptionframes
          @EventProperties = eventproperties
          @SessionId = sessionid
          @UserId = userid
          @DeviceId = deviceid
          @PageUrl = pageurl
          @NormalizedPageUrl = normalizedpageurl
          @PageTitle = pagetitle
          @ResourceUrl = resourceurl
          @ResourceType = resourcetype
          @TargetElement = targetelement
          @TargetText = targettext
          @LogLevel = loglevel
          @Ip = ip
          @Country = country
          @Province = province
          @City = city
          @Isp = isp
          @NetworkType = networktype
          @DeviceType = devicetype
          @Os = os
          @Browser = browser
          @Environment = environment
          @Measurements = measurements
          @Tags = tags
        end

        def deserialize(params)
          @AppId = params['AppId']
          @EventId = params['EventId']
          @ViewId = params['ViewId']
          @EventType = params['EventType']
          @EventCategory = params['EventCategory']
          @EventName = params['EventName']
          @Timestamp = params['Timestamp']
          @Date = params['Date']
          @Platform = params['Platform']
          @AppVersion = params['AppVersion']
          @SdkVersion = params['SdkVersion']
          @IssueId = params['IssueId']
          @Fingerprint = params['Fingerprint']
          @IsSourceMapped = params['IsSourceMapped']
          unless params['ExceptionStacks'].nil?
            @ExceptionStacks = []
            params['ExceptionStacks'].each do |i|
              eventstack_tmp = EventStack.new
              eventstack_tmp.deserialize(i)
              @ExceptionStacks << eventstack_tmp
            end
          end
          unless params['ExceptionFrames'].nil?
            @ExceptionFrames = []
            params['ExceptionFrames'].each do |i|
              eventframe_tmp = EventFrame.new
              eventframe_tmp.deserialize(i)
              @ExceptionFrames << eventframe_tmp
            end
          end
          unless params['EventProperties'].nil?
            @EventProperties = []
            params['EventProperties'].each do |i|
              stringkeyvalue_tmp = StringKeyValue.new
              stringkeyvalue_tmp.deserialize(i)
              @EventProperties << stringkeyvalue_tmp
            end
          end
          @SessionId = params['SessionId']
          @UserId = params['UserId']
          @DeviceId = params['DeviceId']
          @PageUrl = params['PageUrl']
          @NormalizedPageUrl = params['NormalizedPageUrl']
          @PageTitle = params['PageTitle']
          @ResourceUrl = params['ResourceUrl']
          @ResourceType = params['ResourceType']
          @TargetElement = params['TargetElement']
          @TargetText = params['TargetText']
          @LogLevel = params['LogLevel']
          @Ip = params['Ip']
          @Country = params['Country']
          @Province = params['Province']
          @City = params['City']
          @Isp = params['Isp']
          @NetworkType = params['NetworkType']
          @DeviceType = params['DeviceType']
          @Os = params['Os']
          @Browser = params['Browser']
          @Environment = params['Environment']
          unless params['Measurements'].nil?
            @Measurements = []
            params['Measurements'].each do |i|
              floatkeyvalue_tmp = FloatKeyValue.new
              floatkeyvalue_tmp.deserialize(i)
              @Measurements << floatkeyvalue_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              stringkeyvalue_tmp = StringKeyValue.new
              stringkeyvalue_tmp.deserialize(i)
              @Tags << stringkeyvalue_tmp
            end
          end
        end
      end

      # 异常维度同批计数桶；IncludedInTotal 表示计入父行总数，ParentKey 表示包含关系。
      class ExceptionBucket < TencentCloud::Common::AbstractModel
        # @param Key: <p>固定目录分类 key，与请求平台、CategoryKeys 或 EventTypes 派生目录一致。</p>
        # @type Key: String
        # @param Count: <p>精确事件行数，0至9007199254740991的整数，0必须保留。</p>
        # @type Count: Integer
        # @param IncludedInTotal: <p>是否为计入 TotalCount 的互斥主项。包含项为false，不重复计总。</p>
        # @type IncludedInTotal: Boolean
        # @param ParentKey: <p>包含项所属主项的 Key；主项不返回该字段。</p>
        # @type ParentKey: String

        attr_accessor :Key, :Count, :IncludedInTotal, :ParentKey

        def initialize(key=nil, count=nil, includedintotal=nil, parentkey=nil)
          @Key = key
          @Count = count
          @IncludedInTotal = includedintotal
          @ParentKey = parentkey
        end

        def deserialize(params)
          @Key = params['Key']
          @Count = params['Count']
          @IncludedInTotal = params['IncludedInTotal']
          @ParentKey = params['ParentKey']
        end
      end

      # 异常维度值的同批完整分类计数；TotalCount为互斥主类之和，Items包含全部适用类型。
      class ExceptionDimensionRow < TencentCloud::Common::AbstractModel
        # @param RowKey: <p>由目录域、维度或TagKey及归一化值确定的稳定、不透明唯一标识。</p>
        # @type RowKey: String
        # @param Value: <p>维度显示值；标签保留原始值，普通province/platform/network_type按既有显示别名归一化。</p>
        # @type Value: String
        # @param TotalCount: <p>本行全部 IncludedInTotal=true 主项的 Count 之和，安全非负整数。</p>
        # @type TotalCount: Integer
        # @param Items: <p>完整固定分类向量，含0计数及适用包含项；不按数量裁剪。</p>
        # @type Items: Array

        attr_accessor :RowKey, :Value, :TotalCount, :Items

        def initialize(rowkey=nil, value=nil, totalcount=nil, items=nil)
          @RowKey = rowkey
          @Value = value
          @TotalCount = totalcount
          @Items = items
        end

        def deserialize(params)
          @RowKey = params['RowKey']
          @Value = params['Value']
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              exceptionbucket_tmp = ExceptionBucket.new
              exceptionbucket_tmp.deserialize(i)
              @Items << exceptionbucket_tmp
            end
          end
        end
      end

      # Kind=exception_dimension时返回；Rows为同一次聚合的有界排行及完整分类向量，成功空结果返回空数组。
      class ExceptionDistribution < TencentCloud::Common::AbstractModel
        # @param Rows: <p>按 TotalCount 降序、归一化值升序返回的完整维度行，行数不超过Limit；无数据返回空数组。</p>
        # @type Rows: Array

        attr_accessor :Rows

        def initialize(rows=nil)
          @Rows = rows
        end

        def deserialize(params)
          unless params['Rows'].nil?
            @Rows = []
            params['Rows'].each do |i|
              exceptiondimensionrow_tmp = ExceptionDimensionRow.new
              exceptiondimensionrow_tmp.deserialize(i)
              @Rows << exceptiondimensionrow_tmp
            end
          end
        end
      end

      # 探索事件列表项
      class ExplorationEventItem < TencentCloud::Common::AbstractModel
        # @param EventId: <p>事件 ID</p>
        # @type EventId: String
        # @param EventType: <p>事件类型</p>
        # @type EventType: String
        # @param EventName: <p>事件名</p>
        # @type EventName: String
        # @param EventCategory: <p>事件分类</p>
        # @type EventCategory: String
        # @param Timestamp: <p>时间戳 Unix 毫秒</p>
        # @type Timestamp: Integer
        # @param SessionId: <p>会话 ID</p>
        # @type SessionId: String
        # @param ViewId: <p>视图 ID</p>
        # @type ViewId: String
        # @param UserId: <p>业务用户 ID</p>
        # @type UserId: String
        # @param DeviceId: <p>设备 ID</p>
        # @type DeviceId: String
        # @param PageUrl: <p>页面 URL</p>
        # @type PageUrl: String
        # @param NormalizedPageUrl: <p>归一化页面 URL</p>
        # @type NormalizedPageUrl: String
        # @param PageTitle: <p>页面标题</p>
        # @type PageTitle: String
        # @param Platform: <p>平台</p>
        # @type Platform: String
        # @param AppVersion: <p>应用版本</p>
        # @type AppVersion: String
        # @param Os: <p>操作系统</p>
        # @type Os: String
        # @param Browser: <p>浏览器</p>
        # @type Browser: String
        # @param DeviceType: <p>设备类型</p>
        # @type DeviceType: String
        # @param Country: <p>国家</p>
        # @type Country: String
        # @param Province: <p>省份</p>
        # @type Province: String
        # @param City: <p>城市</p>
        # @type City: String
        # @param Isp: <p>运营商</p>
        # @type Isp: String
        # @param NetworkType: <p>网络类型</p>
        # @type NetworkType: String
        # @param Ip: <p>IP</p>
        # @type Ip: String
        # @param ResourceUrl: <p>资源 URL</p>
        # @type ResourceUrl: String
        # @param ResourceType: <p>资源类型</p>
        # @type ResourceType: String
        # @param TargetElement: <p>目标元素</p>
        # @type TargetElement: String
        # @param TargetText: <p>目标文本</p>
        # @type TargetText: String
        # @param LogLevel: <p>日志级别</p>
        # @type LogLevel: String
        # @param IssueId: <p>问题单 ID</p>
        # @type IssueId: String
        # @param IsSourceMapped: <p>是否已符号化 0/1</p>
        # @type IsSourceMapped: Integer
        # @param Measurements: <p>测量值</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Measurements: Array
        # @param EventProperties: <p>事件属性</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventProperties: Array
        # @param ExceptionStacks: <p>异常栈摘要</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExceptionStacks: Array
        # @param Tags: <p>事件标签列表。APM 全链路时包含 Key=trace_id，Value 为 32 位 hex TraceId（不是整段 traceparent）。无标签时省略或空数组。</p>
        # @type Tags: Array

        attr_accessor :EventId, :EventType, :EventName, :EventCategory, :Timestamp, :SessionId, :ViewId, :UserId, :DeviceId, :PageUrl, :NormalizedPageUrl, :PageTitle, :Platform, :AppVersion, :Os, :Browser, :DeviceType, :Country, :Province, :City, :Isp, :NetworkType, :Ip, :ResourceUrl, :ResourceType, :TargetElement, :TargetText, :LogLevel, :IssueId, :IsSourceMapped, :Measurements, :EventProperties, :ExceptionStacks, :Tags

        def initialize(eventid=nil, eventtype=nil, eventname=nil, eventcategory=nil, timestamp=nil, sessionid=nil, viewid=nil, userid=nil, deviceid=nil, pageurl=nil, normalizedpageurl=nil, pagetitle=nil, platform=nil, appversion=nil, os=nil, browser=nil, devicetype=nil, country=nil, province=nil, city=nil, isp=nil, networktype=nil, ip=nil, resourceurl=nil, resourcetype=nil, targetelement=nil, targettext=nil, loglevel=nil, issueid=nil, issourcemapped=nil, measurements=nil, eventproperties=nil, exceptionstacks=nil, tags=nil)
          @EventId = eventid
          @EventType = eventtype
          @EventName = eventname
          @EventCategory = eventcategory
          @Timestamp = timestamp
          @SessionId = sessionid
          @ViewId = viewid
          @UserId = userid
          @DeviceId = deviceid
          @PageUrl = pageurl
          @NormalizedPageUrl = normalizedpageurl
          @PageTitle = pagetitle
          @Platform = platform
          @AppVersion = appversion
          @Os = os
          @Browser = browser
          @DeviceType = devicetype
          @Country = country
          @Province = province
          @City = city
          @Isp = isp
          @NetworkType = networktype
          @Ip = ip
          @ResourceUrl = resourceurl
          @ResourceType = resourcetype
          @TargetElement = targetelement
          @TargetText = targettext
          @LogLevel = loglevel
          @IssueId = issueid
          @IsSourceMapped = issourcemapped
          @Measurements = measurements
          @EventProperties = eventproperties
          @ExceptionStacks = exceptionstacks
          @Tags = tags
        end

        def deserialize(params)
          @EventId = params['EventId']
          @EventType = params['EventType']
          @EventName = params['EventName']
          @EventCategory = params['EventCategory']
          @Timestamp = params['Timestamp']
          @SessionId = params['SessionId']
          @ViewId = params['ViewId']
          @UserId = params['UserId']
          @DeviceId = params['DeviceId']
          @PageUrl = params['PageUrl']
          @NormalizedPageUrl = params['NormalizedPageUrl']
          @PageTitle = params['PageTitle']
          @Platform = params['Platform']
          @AppVersion = params['AppVersion']
          @Os = params['Os']
          @Browser = params['Browser']
          @DeviceType = params['DeviceType']
          @Country = params['Country']
          @Province = params['Province']
          @City = params['City']
          @Isp = params['Isp']
          @NetworkType = params['NetworkType']
          @Ip = params['Ip']
          @ResourceUrl = params['ResourceUrl']
          @ResourceType = params['ResourceType']
          @TargetElement = params['TargetElement']
          @TargetText = params['TargetText']
          @LogLevel = params['LogLevel']
          @IssueId = params['IssueId']
          @IsSourceMapped = params['IsSourceMapped']
          unless params['Measurements'].nil?
            @Measurements = []
            params['Measurements'].each do |i|
              floatkeyvalue_tmp = FloatKeyValue.new
              floatkeyvalue_tmp.deserialize(i)
              @Measurements << floatkeyvalue_tmp
            end
          end
          unless params['EventProperties'].nil?
            @EventProperties = []
            params['EventProperties'].each do |i|
              stringkeyvalue_tmp = StringKeyValue.new
              stringkeyvalue_tmp.deserialize(i)
              @EventProperties << stringkeyvalue_tmp
            end
          end
          unless params['ExceptionStacks'].nil?
            @ExceptionStacks = []
            params['ExceptionStacks'].each do |i|
              explorationexceptionstack_tmp = ExplorationExceptionStack.new
              explorationexceptionstack_tmp.deserialize(i)
              @ExceptionStacks << explorationexceptionstack_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              stringkeyvalue_tmp = StringKeyValue.new
              stringkeyvalue_tmp.deserialize(i)
              @Tags << stringkeyvalue_tmp
            end
          end
        end
      end

      # 探索列表异常栈摘要
      class ExplorationExceptionStack < TencentCloud::Common::AbstractModel
        # @param Type: <p>异常类型</p>
        # @type Type: String
        # @param Value: <p>异常信息</p>
        # @type Value: String
        # @param MechanismType: <p>mechanism 类型</p>
        # @type MechanismType: String
        # @param MechanismHandled: <p>是否已处理 0/1</p>
        # @type MechanismHandled: Integer

        attr_accessor :Type, :Value, :MechanismType, :MechanismHandled

        def initialize(type=nil, value=nil, mechanismtype=nil, mechanismhandled=nil)
          @Type = type
          @Value = value
          @MechanismType = mechanismtype
          @MechanismHandled = mechanismhandled
        end

        def deserialize(params)
          @Type = params['Type']
          @Value = params['Value']
          @MechanismType = params['MechanismType']
          @MechanismHandled = params['MechanismHandled']
        end
      end

      # 字段值替换规则
      class FieldTransformRuleItem < TencentCloud::Common::AbstractModel
        # @param Id: <p>规则 ID</p>
        # @type Id: Integer
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param Name: <p>规则名称</p>
        # @type Name: String
        # @param TargetField: <p>目标字段</p>
        # @type TargetField: String
        # @param MatchType: <p>匹配方式：exact / prefix / contains / regex</p>
        # @type MatchType: String
        # @param MatchPattern: <p>匹配模式</p>
        # @type MatchPattern: String
        # @param TransformAction: <p>替换动作：replace / regex_replace / mask</p>
        # @type TransformAction: String
        # @param ReplaceValue: <p>替换值</p>
        # @type ReplaceValue: String
        # @param Priority: <p>优先级</p>
        # @type Priority: Integer
        # @param Enabled: <p>是否启用</p>
        # @type Enabled: Boolean
        # @param CreatedBy: <p>创建人</p>
        # @type CreatedBy: String
        # @param UpdatedBy: <p>更新人</p>
        # @type UpdatedBy: String
        # @param CreatedAt: <p>创建时间</p>
        # @type CreatedAt: String
        # @param UpdatedAt: <p>更新时间</p>
        # @type UpdatedAt: String

        attr_accessor :Id, :AppId, :Name, :TargetField, :MatchType, :MatchPattern, :TransformAction, :ReplaceValue, :Priority, :Enabled, :CreatedBy, :UpdatedBy, :CreatedAt, :UpdatedAt

        def initialize(id=nil, appid=nil, name=nil, targetfield=nil, matchtype=nil, matchpattern=nil, transformaction=nil, replacevalue=nil, priority=nil, enabled=nil, createdby=nil, updatedby=nil, createdat=nil, updatedat=nil)
          @Id = id
          @AppId = appid
          @Name = name
          @TargetField = targetfield
          @MatchType = matchtype
          @MatchPattern = matchpattern
          @TransformAction = transformaction
          @ReplaceValue = replacevalue
          @Priority = priority
          @Enabled = enabled
          @CreatedBy = createdby
          @UpdatedBy = updatedby
          @CreatedAt = createdat
          @UpdatedAt = updatedat
        end

        def deserialize(params)
          @Id = params['Id']
          @AppId = params['AppId']
          @Name = params['Name']
          @TargetField = params['TargetField']
          @MatchType = params['MatchType']
          @MatchPattern = params['MatchPattern']
          @TransformAction = params['TransformAction']
          @ReplaceValue = params['ReplaceValue']
          @Priority = params['Priority']
          @Enabled = params['Enabled']
          @CreatedBy = params['CreatedBy']
          @UpdatedBy = params['UpdatedBy']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
        end
      end

      # 描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等

      # · 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
      # · 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
      class Filter < TencentCloud::Common::AbstractModel
        # @param Values: 一个或者多个过滤值。
        # @type Values: Array
        # @param Name: 过滤键的名称。
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

      # BugLY筛选结构体
      class Filters < TencentCloud::Common::AbstractModel
        # @param IsReversed: 是否反转
        # @type IsReversed: Boolean
        # @param Key: 键
        # @type Key: String
        # @param Name: 名称
        # @type Name: String
        # @param Operator: 运算符
        # @type Operator: String
        # @param Type: 类型
        # @type Type: Integer
        # @param Values: 值
        # @type Values: Array

        attr_accessor :IsReversed, :Key, :Name, :Operator, :Type, :Values

        def initialize(isreversed=nil, key=nil, name=nil, operator=nil, type=nil, values=nil)
          @IsReversed = isreversed
          @Key = key
          @Name = name
          @Operator = operator
          @Type = type
          @Values = values
        end

        def deserialize(params)
          @IsReversed = params['IsReversed']
          @Key = params['Key']
          @Name = params['Name']
          @Operator = params['Operator']
          @Type = params['Type']
          @Values = params['Values']
        end
      end

      # 数值键值对
      class FloatKeyValue < TencentCloud::Common::AbstractModel
        # @param Key: <p>键</p>
        # @type Key: String
        # @param Value: <p>值</p>
        # @type Value: Float

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

      # 指标名值对
      class FloatNameValue < TencentCloud::Common::AbstractModel
        # @param Name: <p>指标名，如 Count / Rate / P95</p>
        # @type Name: String
        # @param Value: <p>指标值</p>
        # @type Value: Float

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

      # TDEM漏斗步骤
      class FunnelStepInput < TencentCloud::Common::AbstractModel
        # @param StepName: <p>应用id</p>
        # @type StepName: String
        # @param PagePattern: <p>页面特征</p>
        # @type PagePattern: String
        # @param PageMatchMode: <p>页面匹配模式</p>
        # @type PageMatchMode: String
        # @param Selector: <p>控件Selector</p>
        # @type Selector: String
        # @param ActionType: <p>事件类型</p>
        # @type ActionType: String
        # @param VisualName: <p>可视化名称，如控件文本、自定义事件名</p>
        # @type VisualName: String

        attr_accessor :StepName, :PagePattern, :PageMatchMode, :Selector, :ActionType, :VisualName

        def initialize(stepname=nil, pagepattern=nil, pagematchmode=nil, selector=nil, actiontype=nil, visualname=nil)
          @StepName = stepname
          @PagePattern = pagepattern
          @PageMatchMode = pagematchmode
          @Selector = selector
          @ActionType = actiontype
          @VisualName = visualname
        end

        def deserialize(params)
          @StepName = params['StepName']
          @PagePattern = params['PagePattern']
          @PageMatchMode = params['PageMatchMode']
          @Selector = params['Selector']
          @ActionType = params['ActionType']
          @VisualName = params['VisualName']
        end
      end

      # 整型键值对。分类计数等枚举键用此结构，不把枚举值做成结构体字段。
      class IntKeyValue < TencentCloud::Common::AbstractModel
        # @param Key: <p>键，如 error / session</p>
        # @type Key: String
        # @param Value: <p>整型值</p>
        # @type Value: Integer

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

      # 旁路kafka配置
      class Kafka < TencentCloud::Common::AbstractModel
        # @param EnableKafka: 1：开启
        # 0：关闭
        # @type EnableKafka: Integer
        # @param KafkaHost: host地址
        # @type KafkaHost: String
        # @param KafkaTopic: topic
        # @type KafkaTopic: String
        # @param KafkaVersion: 版本
        # @type KafkaVersion: String
        # @param SaslUserName: username
        # @type SaslUserName: String
        # @param SaslPassword: password
        # @type SaslPassword: String
        # @param SaslMechanism: ssl
        # @type SaslMechanism: String
        # @param SinkId: 默认算子id为0新增算子
        # 一旦算子新增成功会返回正确的算子id值
        # @type SinkId: Integer

        attr_accessor :EnableKafka, :KafkaHost, :KafkaTopic, :KafkaVersion, :SaslUserName, :SaslPassword, :SaslMechanism, :SinkId

        def initialize(enablekafka=nil, kafkahost=nil, kafkatopic=nil, kafkaversion=nil, saslusername=nil, saslpassword=nil, saslmechanism=nil, sinkid=nil)
          @EnableKafka = enablekafka
          @KafkaHost = kafkahost
          @KafkaTopic = kafkatopic
          @KafkaVersion = kafkaversion
          @SaslUserName = saslusername
          @SaslPassword = saslpassword
          @SaslMechanism = saslmechanism
          @SinkId = sinkid
        end

        def deserialize(params)
          @EnableKafka = params['EnableKafka']
          @KafkaHost = params['KafkaHost']
          @KafkaTopic = params['KafkaTopic']
          @KafkaVersion = params['KafkaVersion']
          @SaslUserName = params['SaslUserName']
          @SaslPassword = params['SaslPassword']
          @SaslMechanism = params['SaslMechanism']
          @SinkId = params['SinkId']
        end
      end

      # 批量分布条目
      class MetricDistributionBatchItem < TencentCloud::Common::AbstractModel
        # @param Key: <p>条目 Key</p>
        # @type Key: String
        # @param Items: <p>分布桶</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param Total: <p>合计</p>
        # @type Total: Integer

        attr_accessor :Key, :Items, :Total

        def initialize(key=nil, items=nil, total=nil)
          @Key = key
          @Items = items
          @Total = total
        end

        def deserialize(params)
          @Key = params['Key']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              metricdistributionitem_tmp = MetricDistributionItem.new
              metricdistributionitem_tmp.deserialize(i)
              @Items << metricdistributionitem_tmp
            end
          end
          @Total = params['Total']
        end
      end

      # 分析指标分布桶
      class MetricDistributionItem < TencentCloud::Common::AbstractModel
        # @param Value: <p>维度值</p>
        # @type Value: String
        # @param Count: <p>次数</p>
        # @type Count: Integer
        # @param AffectedUser: <p>影响用户数</p>
        # @type AffectedUser: Integer
        # @param Rate: <p>率，分母为 0 时省略</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rate: Float
        # @param AffectedUserRate: <p>影响用户率，缺省省略</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AffectedUserRate: Float
        # @param Avg: <p>均值，缺省省略</p>
        # @type Avg: Float
        # @param P50: <p>P50，缺省省略</p>
        # @type P50: Float
        # @param P75: <p>P75，缺省省略</p>
        # @type P75: Float
        # @param P95: <p>P95，缺省省略</p>
        # @type P95: Float
        # @param P99: <p>P99，缺省省略</p>
        # @type P99: Float

        attr_accessor :Value, :Count, :AffectedUser, :Rate, :AffectedUserRate, :Avg, :P50, :P75, :P95, :P99

        def initialize(value=nil, count=nil, affecteduser=nil, rate=nil, affecteduserrate=nil, avg=nil, p50=nil, p75=nil, p95=nil, p99=nil)
          @Value = value
          @Count = count
          @AffectedUser = affecteduser
          @Rate = rate
          @AffectedUserRate = affecteduserrate
          @Avg = avg
          @P50 = p50
          @P75 = p75
          @P95 = p95
          @P99 = p99
        end

        def deserialize(params)
          @Value = params['Value']
          @Count = params['Count']
          @AffectedUser = params['AffectedUser']
          @Rate = params['Rate']
          @AffectedUserRate = params['AffectedUserRate']
          @Avg = params['Avg']
          @P50 = params['P50']
          @P75 = params['P75']
          @P95 = params['P95']
          @P99 = params['P99']
        end
      end

      # 批量指标查询条目
      class MetricQueryItem < TencentCloud::Common::AbstractModel
        # @param EventType: <p>事件类型</p>
        # @type EventType: String
        # @param Metrics: <p>指标名列表，如 count / rate</p>
        # @type Metrics: Array
        # @param Key: <p>条目 Key，缺省为 EventType/SubType/MeasurementKey</p>
        # @type Key: String
        # @param SubType: <p>子类型</p>
        # @type SubType: String
        # @param MeasurementKey: <p>分位/均值测量键</p>
        # @type MeasurementKey: String

        attr_accessor :EventType, :Metrics, :Key, :SubType, :MeasurementKey

        def initialize(eventtype=nil, metrics=nil, key=nil, subtype=nil, measurementkey=nil)
          @EventType = eventtype
          @Metrics = metrics
          @Key = key
          @SubType = subtype
          @MeasurementKey = measurementkey
        end

        def deserialize(params)
          @EventType = params['EventType']
          @Metrics = params['Metrics']
          @Key = params['Key']
          @SubType = params['SubType']
          @MeasurementKey = params['MeasurementKey']
        end
      end

      # 批量合计条目
      class MetricSummaryBatchItem < TencentCloud::Common::AbstractModel
        # @param Key: <p>条目 Key</p>
        # @type Key: String
        # @param Metrics: <p>指标列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metrics: Array
        # @param MaybeUncollected: <p>可能尚未采集，false 时省略</p>
        # @type MaybeUncollected: Boolean

        attr_accessor :Key, :Metrics, :MaybeUncollected

        def initialize(key=nil, metrics=nil, maybeuncollected=nil)
          @Key = key
          @Metrics = metrics
          @MaybeUncollected = maybeuncollected
        end

        def deserialize(params)
          @Key = params['Key']
          unless params['Metrics'].nil?
            @Metrics = []
            params['Metrics'].each do |i|
              floatnamevalue_tmp = FloatNameValue.new
              floatnamevalue_tmp.deserialize(i)
              @Metrics << floatnamevalue_tmp
            end
          end
          @MaybeUncollected = params['MaybeUncollected']
        end
      end

      # 批量趋势条目
      class MetricTrendBatchItem < TencentCloud::Common::AbstractModel
        # @param Key: <p>条目 Key</p>
        # @type Key: String
        # @param Series: <p>主窗时序</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Series: Array
        # @param CompareSeries: <p>对比窗时序</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompareSeries: Array
        # @param MaybeUncollected: <p>可能尚未采集，false 时省略</p>
        # @type MaybeUncollected: Boolean

        attr_accessor :Key, :Series, :CompareSeries, :MaybeUncollected

        def initialize(key=nil, series=nil, compareseries=nil, maybeuncollected=nil)
          @Key = key
          @Series = series
          @CompareSeries = compareseries
          @MaybeUncollected = maybeuncollected
        end

        def deserialize(params)
          @Key = params['Key']
          unless params['Series'].nil?
            @Series = []
            params['Series'].each do |i|
              metrictrendpoint_tmp = MetricTrendPoint.new
              metrictrendpoint_tmp.deserialize(i)
              @Series << metrictrendpoint_tmp
            end
          end
          unless params['CompareSeries'].nil?
            @CompareSeries = []
            params['CompareSeries'].each do |i|
              metrictrendpoint_tmp = MetricTrendPoint.new
              metrictrendpoint_tmp.deserialize(i)
              @CompareSeries << metrictrendpoint_tmp
            end
          end
          @MaybeUncollected = params['MaybeUncollected']
        end
      end

      # 分析指标趋势点
      class MetricTrendPoint < TencentCloud::Common::AbstractModel
        # @param Ts: <p>时间戳 Unix 毫秒</p>
        # @type Ts: Integer
        # @param Metrics: <p>该桶指标</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metrics: Array

        attr_accessor :Ts, :Metrics

        def initialize(ts=nil, metrics=nil)
          @Ts = ts
          @Metrics = metrics
        end

        def deserialize(params)
          @Ts = params['Ts']
          unless params['Metrics'].nil?
            @Metrics = []
            params['Metrics'].each do |i|
              floatnamevalue_tmp = FloatNameValue.new
              floatnamevalue_tmp.deserialize(i)
              @Metrics << floatnamevalue_tmp
            end
          end
        end
      end

      # ModifyFieldTransformRule请求参数结构体
      class ModifyFieldTransformRuleRequest < TencentCloud::Common::AbstractModel
        # @param Id: <p>规则id</p>
        # @type Id: Integer
        # @param ProjectId: <p>项目id</p>
        # @type ProjectId: Integer
        # @param Name: <p>规则名</p>
        # @type Name: String
        # @param TargetField: <p>目标字段</p>
        # @type TargetField: String
        # @param MatchType: <p>匹配方式</p>
        # @type MatchType: String
        # @param MatchPattern: <p>匹配规则</p>
        # @type MatchPattern: String
        # @param TransformAction: <p>转换方式</p>
        # @type TransformAction: String
        # @param ReplaceValue: <p>替换值</p>
        # @type ReplaceValue: String
        # @param Priority: <p>规则优先级</p>
        # @type Priority: Integer
        # @param Enabled: <p>是否开启</p>
        # @type Enabled: Boolean

        attr_accessor :Id, :ProjectId, :Name, :TargetField, :MatchType, :MatchPattern, :TransformAction, :ReplaceValue, :Priority, :Enabled

        def initialize(id=nil, projectid=nil, name=nil, targetfield=nil, matchtype=nil, matchpattern=nil, transformaction=nil, replacevalue=nil, priority=nil, enabled=nil)
          @Id = id
          @ProjectId = projectid
          @Name = name
          @TargetField = targetfield
          @MatchType = matchtype
          @MatchPattern = matchpattern
          @TransformAction = transformaction
          @ReplaceValue = replacevalue
          @Priority = priority
          @Enabled = enabled
        end

        def deserialize(params)
          @Id = params['Id']
          @ProjectId = params['ProjectId']
          @Name = params['Name']
          @TargetField = params['TargetField']
          @MatchType = params['MatchType']
          @MatchPattern = params['MatchPattern']
          @TransformAction = params['TransformAction']
          @ReplaceValue = params['ReplaceValue']
          @Priority = params['Priority']
          @Enabled = params['Enabled']
        end
      end

      # ModifyFieldTransformRule返回参数结构体
      class ModifyFieldTransformRuleResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>结果</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # ModifyInstance请求参数结构体
      class ModifyInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 要修改的实例id
        # @type InstanceId: String
        # @param InstanceName: 新的实例名称(长度最大不超过255)
        # @type InstanceName: String
        # @param InstanceDesc: 新的实例描述(长度最大不超过1024)
        # @type InstanceDesc: String

        attr_accessor :InstanceId, :InstanceName, :InstanceDesc

        def initialize(instanceid=nil, instancename=nil, instancedesc=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @InstanceDesc = instancedesc
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @InstanceDesc = params['InstanceDesc']
        end
      end

      # ModifyInstance返回参数结构体
      class ModifyInstanceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyIssueStatus请求参数结构体
      class ModifyIssueStatusRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param IssueId: <p>Issue ID</p>
        # @type IssueId: String
        # @param IssueAction: <p>状态动作，可选值：resolve、ignore、reopen</p>
        # @type IssueAction: String
        # @param ResolvedRelease: <p>解决版本；当 IssueAction=resolve 时可传，不传则默认使用 latest_release</p>
        # @type ResolvedRelease: String

        attr_accessor :AppId, :IssueId, :IssueAction, :ResolvedRelease

        def initialize(appid=nil, issueid=nil, issueaction=nil, resolvedrelease=nil)
          @AppId = appid
          @IssueId = issueid
          @IssueAction = issueaction
          @ResolvedRelease = resolvedrelease
        end

        def deserialize(params)
          @AppId = params['AppId']
          @IssueId = params['IssueId']
          @IssueAction = params['IssueAction']
          @ResolvedRelease = params['ResolvedRelease']
        end
      end

      # ModifyIssueStatus返回参数结构体
      class ModifyIssueStatusResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>业务结果 JSON 字符串；前端会再做一次 JSON 解析。Result 内业务 JSON 为 Data，内容是状态流转结果</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息；正常返回时为空</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # ModifyMiniProgramReplayPack请求参数结构体
      class ModifyMiniProgramReplayPackRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用id</p>
        # @type AppId: String
        # @param PackId: <p>回放包id（前缀mpr_）</p>
        # @type PackId: String
        # @param Release: <p>应用版本（可选）</p>
        # @type Release: String

        attr_accessor :AppId, :PackId, :Release

        def initialize(appid=nil, packid=nil, release=nil)
          @AppId = appid
          @PackId = packid
          @Release = release
        end

        def deserialize(params)
          @AppId = params['AppId']
          @PackId = params['PackId']
          @Release = params['Release']
        end
      end

      # ModifyMiniProgramReplayPack返回参数结构体
      class ModifyMiniProgramReplayPackResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: <p>错误信息</p>
        # @type ErrorMsg: String
        # @param Result: <p>请求结果（JSON字符串，包含 PackId/AppId/BundleHash/Release/Status）</p>
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :Result, :RequestId

        def initialize(errormsg=nil, result=nil, requestid=nil)
          @ErrorMsg = errormsg
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # ModifyProjectLimit请求参数结构体
      class ModifyProjectLimitRequest < TencentCloud::Common::AbstractModel
        # @param ProjectID: 项目ID
        # @type ProjectID: Integer
        # @param ProjectInterface: 取值为[log speed performance webvitals pv event custom miniProgramData]其中之一
        # @type ProjectInterface: String
        # @param ReportRate: 上报比例   10代表10%
        # @type ReportRate: Integer
        # @param ReportType: 上报类型 1：比例  2：上报量
        # @type ReportType: Integer
        # @param ID: 主键ID
        # @type ID: Integer

        attr_accessor :ProjectID, :ProjectInterface, :ReportRate, :ReportType, :ID

        def initialize(projectid=nil, projectinterface=nil, reportrate=nil, reporttype=nil, id=nil)
          @ProjectID = projectid
          @ProjectInterface = projectinterface
          @ReportRate = reportrate
          @ReportType = reporttype
          @ID = id
        end

        def deserialize(params)
          @ProjectID = params['ProjectID']
          @ProjectInterface = params['ProjectInterface']
          @ReportRate = params['ReportRate']
          @ReportType = params['ReportType']
          @ID = params['ID']
        end
      end

      # ModifyProjectLimit返回参数结构体
      class ModifyProjectLimitResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 返回信息
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :RequestId

        def initialize(msg=nil, requestid=nil)
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # ModifyProject请求参数结构体
      class ModifyProjectRequest < TencentCloud::Common::AbstractModel
        # @param ID: 项目 id
        # @type ID: Integer
        # @param Name: 应用名称(可选，不为空且最长为 200字符)
        # @type Name: String
        # @param URL: 项目网页地址(可选，最长为 256)
        # @type URL: String
        # @param Repo: 项目仓库地址(可选，最长为 256)
        # @type Repo: String
        # @param InstanceID: 项目需要转移到的实例 id(可选)
        # @type InstanceID: String
        # @param Rate: 项目采样率(可选)
        # @type Rate: String
        # @param EnableURLGroup: 是否开启聚类(可选)
        # @type EnableURLGroup: Integer
        # @param Type: 项目类型(可接受值为 "web", "mp", "android", "ios", "node", "hippy", "weex", "viola", "rn")
        # @type Type: String
        # @param Desc: 应用描述(可选，最长为 1000字符)
        # @type Desc: String
        # @param EnableKafka: 启动kafka配置
        # @type EnableKafka: Integer
        # @param KafkaHost: kafka_host
        # @type KafkaHost: String
        # @param KafkaTopic: topic
        # @type KafkaTopic: String
        # @param KafkaVersion: kafka_version
        # @type KafkaVersion: String
        # @param SaslUserName: kafka_username
        # @type SaslUserName: String
        # @param SaslPassword: kafka_pwd
        # @type SaslPassword: String
        # @param SaslMechanism: SaslMechanism
        # @type SaslMechanism: String
        # @param SinkId: sink_id，日知汇算子id
        # @type SinkId: Integer

        attr_accessor :ID, :Name, :URL, :Repo, :InstanceID, :Rate, :EnableURLGroup, :Type, :Desc, :EnableKafka, :KafkaHost, :KafkaTopic, :KafkaVersion, :SaslUserName, :SaslPassword, :SaslMechanism, :SinkId

        def initialize(id=nil, name=nil, url=nil, repo=nil, instanceid=nil, rate=nil, enableurlgroup=nil, type=nil, desc=nil, enablekafka=nil, kafkahost=nil, kafkatopic=nil, kafkaversion=nil, saslusername=nil, saslpassword=nil, saslmechanism=nil, sinkid=nil)
          @ID = id
          @Name = name
          @URL = url
          @Repo = repo
          @InstanceID = instanceid
          @Rate = rate
          @EnableURLGroup = enableurlgroup
          @Type = type
          @Desc = desc
          @EnableKafka = enablekafka
          @KafkaHost = kafkahost
          @KafkaTopic = kafkatopic
          @KafkaVersion = kafkaversion
          @SaslUserName = saslusername
          @SaslPassword = saslpassword
          @SaslMechanism = saslmechanism
          @SinkId = sinkid
        end

        def deserialize(params)
          @ID = params['ID']
          @Name = params['Name']
          @URL = params['URL']
          @Repo = params['Repo']
          @InstanceID = params['InstanceID']
          @Rate = params['Rate']
          @EnableURLGroup = params['EnableURLGroup']
          @Type = params['Type']
          @Desc = params['Desc']
          @EnableKafka = params['EnableKafka']
          @KafkaHost = params['KafkaHost']
          @KafkaTopic = params['KafkaTopic']
          @KafkaVersion = params['KafkaVersion']
          @SaslUserName = params['SaslUserName']
          @SaslPassword = params['SaslPassword']
          @SaslMechanism = params['SaslMechanism']
          @SinkId = params['SinkId']
        end
      end

      # ModifyProject返回参数结构体
      class ModifyProjectResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 操作信息
        # @type Msg: String
        # @param ID: 项目id
        # @type ID: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :ID, :RequestId

        def initialize(msg=nil, id=nil, requestid=nil)
          @Msg = msg
          @ID = id
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @ID = params['ID']
          @RequestId = params['RequestId']
        end
      end

      # ModifySampleRate请求参数结构体
      class ModifySampleRateRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: <p>项目id</p>
        # @type ProjectId: Integer
        # @param SampleRate: <p>会话采样率</p>
        # @type SampleRate: Float
        # @param ReplaySampleRate: <p>录制采样率</p>
        # @type ReplaySampleRate: Float

        attr_accessor :ProjectId, :SampleRate, :ReplaySampleRate

        def initialize(projectid=nil, samplerate=nil, replaysamplerate=nil)
          @ProjectId = projectid
          @SampleRate = samplerate
          @ReplaySampleRate = replaysamplerate
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @SampleRate = params['SampleRate']
          @ReplaySampleRate = params['ReplaySampleRate']
        end
      end

      # ModifySampleRate返回参数结构体
      class ModifySampleRateResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>返回结果</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # ModifyTDEMApplication请求参数结构体
      class ModifyTDEMApplicationRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID（必填）</p>
        # @type AppId: String
        # @param Name: <p>应用名称（可选）</p>
        # @type Name: String
        # @param Desc: <p>应用描述（可选）</p>
        # @type Desc: String
        # @param ExcludeIgnoredErrors: <p>是否排除已忽略错误</p>
        # @type ExcludeIgnoredErrors: Boolean
        # @param ApmInstanceIds: <p>APM 实例 ID 列表</p>
        # @type ApmInstanceIds: Array

        attr_accessor :AppId, :Name, :Desc, :ExcludeIgnoredErrors, :ApmInstanceIds

        def initialize(appid=nil, name=nil, desc=nil, excludeignorederrors=nil, apminstanceids=nil)
          @AppId = appid
          @Name = name
          @Desc = desc
          @ExcludeIgnoredErrors = excludeignorederrors
          @ApmInstanceIds = apminstanceids
        end

        def deserialize(params)
          @AppId = params['AppId']
          @Name = params['Name']
          @Desc = params['Desc']
          @ExcludeIgnoredErrors = params['ExcludeIgnoredErrors']
          @ApmInstanceIds = params['ApmInstanceIds']
        end
      end

      # ModifyTDEMApplication返回参数结构体
      class ModifyTDEMApplicationResponse < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppId, :RequestId

        def initialize(appid=nil, requestid=nil)
          @AppId = appid
          @RequestId = requestid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyTDEMBusinessSystem请求参数结构体
      class ModifyTDEMBusinessSystemRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>业务系统 ID（必填）</p>
        # @type InstanceId: String
        # @param InstanceName: <p>业务系统名称（可选）</p>
        # @type InstanceName: String
        # @param InstanceDesc: <p>业务系统描述（可选）</p>
        # @type InstanceDesc: String

        attr_accessor :InstanceId, :InstanceName, :InstanceDesc

        def initialize(instanceid=nil, instancename=nil, instancedesc=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @InstanceDesc = instancedesc
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @InstanceDesc = params['InstanceDesc']
        end
      end

      # ModifyTDEMBusinessSystem返回参数结构体
      class ModifyTDEMBusinessSystemResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>业务系统 ID</p>
        # @type InstanceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :RequestId

        def initialize(instanceid=nil, requestid=nil)
          @InstanceId = instanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyTDEMDialTask请求参数结构体
      class ModifyTDEMDialTaskRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param TaskId: <p>任务 ID</p>
        # @type TaskId: String
        # @param TaskName: <p>任务名称。不传表示不修改。</p>
        # @type TaskName: String
        # @param Status: <p>任务状态。取值说明：active、paused。不传表示不修改。不能改为 deleted。</p>
        # @type Status: String
        # @param Type: <p>探测类型。创建后不可修改。</p>
        # @type Type: String
        # @param ExecutionTime: <p>执行时机。创建后不可修改。</p>
        # @type ExecutionTime: String
        # @param WatchDomain: <p>监听域名。不传表示不修改。</p>
        # @type WatchDomain: String
        # @param DialDomain: <p>拨测目标。不传表示不修改。</p>
        # @type DialDomain: String
        # @param Port: <p>TCP 端口。不传表示不修改。</p>
        # @type Port: Integer
        # @param FrequencyMs: <p>实时拨测间隔，单位毫秒。不传表示不修改。</p>
        # @type FrequencyMs: Integer
        # @param TimeoutMs: <p>单次探测超时，单位毫秒。不传表示不修改。</p>
        # @type TimeoutMs: Integer
        # @param PeriodMs: <p>探测周期，单位毫秒。不传表示不修改。</p>
        # @type PeriodMs: Integer
        # @param PackageCount: <p>发包次数。不传表示不修改。</p>
        # @type PackageCount: Integer
        # @param PackageSize: <p>ICMP 包大小，单位字节。不传表示不修改。</p>
        # @type PackageSize: Integer
        # @param NeedMTR: <p>是否做路由追踪。取值说明：0 否，1 是。不传表示不修改。</p>
        # @type NeedMTR: Integer
        # @param MTRTimeoutMs: <p>路由追踪超时，单位毫秒。不传表示不修改。</p>
        # @type MTRTimeoutMs: Integer
        # @param MTRMaxHop: <p>路由追踪最大跳数。不传表示不修改。</p>
        # @type MTRMaxHop: Integer
        # @param MTRPingCount: <p>每一跳发包次数。不传表示不修改。</p>
        # @type MTRPingCount: Integer
        # @param SlowThresholdMs: <p>慢请求阈值，单位毫秒。不传表示不修改。</p>
        # @type SlowThresholdMs: Integer
        # @param ErrorType: <p>错误类型过滤。不传表示不修改。</p>
        # @type ErrorType: String
        # @param Regions: <p>允许启动的客户端地区，逗号分隔，名称必须与分析页客户端地区完全一致。不传保留原值，空字符串清空。空名单表示不限制。</p>
        # @type Regions: String
        # @param Operators: <p>允许启动的客户端运营商，逗号分隔，名称必须与分析页客户端运营商完全一致。不传保留原值，空字符串清空。空名单表示不限制。</p>
        # @type Operators: String
        # @param UserIds: <p>允许启动的用户 ID，逗号分隔。不传保留原值，空字符串清空。空名单表示不限制。</p>
        # @type UserIds: String
        # @param DeviceIds: <p>允许启动的设备 ID，逗号分隔。不传保留原值，空字符串清空。空名单表示不限制。</p>
        # @type DeviceIds: String

        attr_accessor :AppId, :TaskId, :TaskName, :Status, :Type, :ExecutionTime, :WatchDomain, :DialDomain, :Port, :FrequencyMs, :TimeoutMs, :PeriodMs, :PackageCount, :PackageSize, :NeedMTR, :MTRTimeoutMs, :MTRMaxHop, :MTRPingCount, :SlowThresholdMs, :ErrorType, :Regions, :Operators, :UserIds, :DeviceIds

        def initialize(appid=nil, taskid=nil, taskname=nil, status=nil, type=nil, executiontime=nil, watchdomain=nil, dialdomain=nil, port=nil, frequencyms=nil, timeoutms=nil, periodms=nil, packagecount=nil, packagesize=nil, needmtr=nil, mtrtimeoutms=nil, mtrmaxhop=nil, mtrpingcount=nil, slowthresholdms=nil, errortype=nil, regions=nil, operators=nil, userids=nil, deviceids=nil)
          @AppId = appid
          @TaskId = taskid
          @TaskName = taskname
          @Status = status
          @Type = type
          @ExecutionTime = executiontime
          @WatchDomain = watchdomain
          @DialDomain = dialdomain
          @Port = port
          @FrequencyMs = frequencyms
          @TimeoutMs = timeoutms
          @PeriodMs = periodms
          @PackageCount = packagecount
          @PackageSize = packagesize
          @NeedMTR = needmtr
          @MTRTimeoutMs = mtrtimeoutms
          @MTRMaxHop = mtrmaxhop
          @MTRPingCount = mtrpingcount
          @SlowThresholdMs = slowthresholdms
          @ErrorType = errortype
          @Regions = regions
          @Operators = operators
          @UserIds = userids
          @DeviceIds = deviceids
        end

        def deserialize(params)
          @AppId = params['AppId']
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @Status = params['Status']
          @Type = params['Type']
          @ExecutionTime = params['ExecutionTime']
          @WatchDomain = params['WatchDomain']
          @DialDomain = params['DialDomain']
          @Port = params['Port']
          @FrequencyMs = params['FrequencyMs']
          @TimeoutMs = params['TimeoutMs']
          @PeriodMs = params['PeriodMs']
          @PackageCount = params['PackageCount']
          @PackageSize = params['PackageSize']
          @NeedMTR = params['NeedMTR']
          @MTRTimeoutMs = params['MTRTimeoutMs']
          @MTRMaxHop = params['MTRMaxHop']
          @MTRPingCount = params['MTRPingCount']
          @SlowThresholdMs = params['SlowThresholdMs']
          @ErrorType = params['ErrorType']
          @Regions = params['Regions']
          @Operators = params['Operators']
          @UserIds = params['UserIds']
          @DeviceIds = params['DeviceIds']
        end
      end

      # ModifyTDEMDialTask返回参数结构体
      class ModifyTDEMDialTaskResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTDEMFieldTransformRule请求参数结构体
      class ModifyTDEMFieldTransformRuleRequest < TencentCloud::Common::AbstractModel
        # @param Id: <p>规则 ID（必填）</p>
        # @type Id: Integer
        # @param AppId: <p>应用 ID（必填）</p>
        # @type AppId: String
        # @param TargetField: <p>目标字段（必填）</p>
        # @type TargetField: String
        # @param MatchType: <p>匹配方式（必填）：exact / prefix / contains / regex</p>
        # @type MatchType: String
        # @param MatchPattern: <p>匹配模式（必填）</p>
        # @type MatchPattern: String
        # @param TransformAction: <p>替换动作（必填）：replace / regex_replace / mask</p>
        # @type TransformAction: String
        # @param Name: <p>规则名称（可选）</p>
        # @type Name: String
        # @param ReplaceValue: <p>替换值</p>
        # @type ReplaceValue: String
        # @param Priority: <p>优先级</p>
        # @type Priority: Integer
        # @param Enabled: <p>是否启用</p>
        # @type Enabled: Boolean

        attr_accessor :Id, :AppId, :TargetField, :MatchType, :MatchPattern, :TransformAction, :Name, :ReplaceValue, :Priority, :Enabled

        def initialize(id=nil, appid=nil, targetfield=nil, matchtype=nil, matchpattern=nil, transformaction=nil, name=nil, replacevalue=nil, priority=nil, enabled=nil)
          @Id = id
          @AppId = appid
          @TargetField = targetfield
          @MatchType = matchtype
          @MatchPattern = matchpattern
          @TransformAction = transformaction
          @Name = name
          @ReplaceValue = replacevalue
          @Priority = priority
          @Enabled = enabled
        end

        def deserialize(params)
          @Id = params['Id']
          @AppId = params['AppId']
          @TargetField = params['TargetField']
          @MatchType = params['MatchType']
          @MatchPattern = params['MatchPattern']
          @TransformAction = params['TransformAction']
          @Name = params['Name']
          @ReplaceValue = params['ReplaceValue']
          @Priority = params['Priority']
          @Enabled = params['Enabled']
        end
      end

      # ModifyTDEMFieldTransformRule返回参数结构体
      class ModifyTDEMFieldTransformRuleResponse < TencentCloud::Common::AbstractModel
        # @param Rule: <p>修改后的规则</p>
        # @type Rule: :class:`Tencentcloud::Rum.v20210622.models.FieldTransformRuleItem`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rule, :RequestId

        def initialize(rule=nil, requestid=nil)
          @Rule = rule
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Rule'].nil?
            @Rule = FieldTransformRuleItem.new
            @Rule.deserialize(params['Rule'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyTDEMFunnel请求参数结构体
      class ModifyTDEMFunnelRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用id</p>
        # @type AppId: String
        # @param FunnelId: <p>漏斗id</p>
        # @type FunnelId: String
        # @param FunnelName: <p>漏斗名</p>
        # @type FunnelName: String
        # @param Steps: <p>漏斗步骤</p>
        # @type Steps: Array
        # @param Description: <p>漏斗描述</p>
        # @type Description: String
        # @param Status: <p>漏斗状态</p>
        # @type Status: String
        # @param Source: <p>漏斗来源</p>
        # @type Source: String

        attr_accessor :AppId, :FunnelId, :FunnelName, :Steps, :Description, :Status, :Source

        def initialize(appid=nil, funnelid=nil, funnelname=nil, steps=nil, description=nil, status=nil, source=nil)
          @AppId = appid
          @FunnelId = funnelid
          @FunnelName = funnelname
          @Steps = steps
          @Description = description
          @Status = status
          @Source = source
        end

        def deserialize(params)
          @AppId = params['AppId']
          @FunnelId = params['FunnelId']
          @FunnelName = params['FunnelName']
          unless params['Steps'].nil?
            @Steps = []
            params['Steps'].each do |i|
              funnelstepinput_tmp = FunnelStepInput.new
              funnelstepinput_tmp.deserialize(i)
              @Steps << funnelstepinput_tmp
            end
          end
          @Description = params['Description']
          @Status = params['Status']
          @Source = params['Source']
        end
      end

      # ModifyTDEMFunnel返回参数结构体
      class ModifyTDEMFunnelResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>请求结果</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # ModifyTDEMSampleConfig请求参数结构体
      class ModifyTDEMSampleConfigRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用ID</p>
        # @type AppId: String
        # @param Event: <p>事件采样配置 JSON 字符串。反序列化后：{"Enabled":bool,"Types":{&lt;event_type&gt;:{"SampleRate":0-100最多两位小数,"Rules":[{"Name":string,"Enabled":bool,"SampleRate":0-100,"Conditions":[{"Field":string,"Operator":string,"Value":string或string[]}]}]}}}。Types 可只含改过的 type；未出现的 type 服务端视为 100% + 空规则。Types key 闭集：js_error,promise_error,resource_error,api_error,blank_screen,no_response,page_load,web_vitals,lag_detected,memory_usage,memory_oom,resource_load,api_call,sse_call,click,page_view,tab_hidden,tab_visible,form_focus,form_blur,form_change,form_submit,form_submit_result,struggle,custom,log（不含 rage_click/lcp）。Operator 白名单：equals,not_equals,contains,not_contains,in,not_in,starts_with,ends_with。规则 Conditions 至少 1 条；in/not_in 的 Value 为字符串数组。</p>
        # @type Event: String
        # @param Replay: <p>回放采样配置 JSON 字符串。反序列化后：{"Enabled":bool,"ExperienceSampleRate":0-100最多两位小数,"ErrorTraceback":bool,"ErrorSampleRate":0-100最多两位小数}。控制台/远程字段名为 ExperienceSampleRate（非 SessionSampleRate）。</p>
        # @type Replay: String

        attr_accessor :AppId, :Event, :Replay

        def initialize(appid=nil, event=nil, replay=nil)
          @AppId = appid
          @Event = event
          @Replay = replay
        end

        def deserialize(params)
          @AppId = params['AppId']
          @Event = params['Event']
          @Replay = params['Replay']
        end
      end

      # ModifyTDEMSampleConfig返回参数结构体
      class ModifyTDEMSampleConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>业务数据 JSON 字符串，反序列化后：{ProjectId,Event,Replay,SnapshotId,UpdatedAt}。SnapshotId 为本次写入的快照主键。</p>
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # ModifyTDEMSampleRate请求参数结构体
      class ModifyTDEMSampleRateRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID（必填）</p>
        # @type AppId: String
        # @param SampleRate: <p>采集采样率 0-100（必填）</p>
        # @type SampleRate: Float
        # @param ReplaySampleRate: <p>会话回放采样率 0-100（可选）</p>
        # @type ReplaySampleRate: Float

        attr_accessor :AppId, :SampleRate, :ReplaySampleRate

        def initialize(appid=nil, samplerate=nil, replaysamplerate=nil)
          @AppId = appid
          @SampleRate = samplerate
          @ReplaySampleRate = replaysamplerate
        end

        def deserialize(params)
          @AppId = params['AppId']
          @SampleRate = params['SampleRate']
          @ReplaySampleRate = params['ReplaySampleRate']
        end
      end

      # ModifyTDEMSampleRate返回参数结构体
      class ModifyTDEMSampleRateResponse < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param SampleRate: <p>采集采样率 0-100</p>
        # @type SampleRate: Float
        # @param ReplaySampleRate: <p>会话回放采样率 0-100</p>
        # @type ReplaySampleRate: Float
        # @param UpdatedAt: <p>更新时间</p>
        # @type UpdatedAt: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppId, :SampleRate, :ReplaySampleRate, :UpdatedAt, :RequestId

        def initialize(appid=nil, samplerate=nil, replaysamplerate=nil, updatedat=nil, requestid=nil)
          @AppId = appid
          @SampleRate = samplerate
          @ReplaySampleRate = replaysamplerate
          @UpdatedAt = updatedat
          @RequestId = requestid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @SampleRate = params['SampleRate']
          @ReplaySampleRate = params['ReplaySampleRate']
          @UpdatedAt = params['UpdatedAt']
          @RequestId = params['RequestId']
        end
      end

      # 总览计分项。Score/Value 缺失时省略，前端展示 —。
      class OverviewScoreItem < TencentCloud::Common::AbstractModel
        # @param Key: <p>计分项，如 crash / anr / lag</p>
        # @type Key: String
        # @param Score: <p>单项 0-100，缺失省略</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Float
        # @param Value: <p>原始值（率为小数、耗时为 ms）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: Float

        attr_accessor :Key, :Score, :Value

        def initialize(key=nil, score=nil, value=nil)
          @Key = key
          @Score = score
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Score = params['Score']
          @Value = params['Value']
        end
      end

      # PreviewTDEMFunnelReport请求参数结构体
      class PreviewTDEMFunnelReportRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用id</p>
        # @type AppId: String
        # @param StartTime: <p>开始时间戳（毫秒）</p>
        # @type StartTime: String
        # @param EndTime: <p>结束时间戳（毫秒）</p>
        # @type EndTime: String
        # @param Steps: <p>漏斗步骤配置JSON字符串（2~20步），格式：[{"StepName":"首页","PagePattern":"/","PageMatchMode":"exact","Selector":"","ActionType":"page_view","VisualName":""}]</p>
        # @type Steps: String
        # @param Platform: <p>平台筛选</p>
        # @type Platform: String
        # @param AppVersion: <p>应用版本筛选</p>
        # @type AppVersion: String
        # @param DeviceType: <p>设备类型筛选</p>
        # @type DeviceType: String
        # @param Browser: <p>浏览器筛选</p>
        # @type Browser: String
        # @param OS: <p>操作系统筛选</p>
        # @type OS: String
        # @param Country: <p>国家/地区筛选</p>
        # @type Country: String
        # @param Referrer: <p>来源筛选</p>
        # @type Referrer: String
        # @param Environment: <p>环境选择</p>
        # @type Environment: String

        attr_accessor :AppId, :StartTime, :EndTime, :Steps, :Platform, :AppVersion, :DeviceType, :Browser, :OS, :Country, :Referrer, :Environment

        def initialize(appid=nil, starttime=nil, endtime=nil, steps=nil, platform=nil, appversion=nil, devicetype=nil, browser=nil, os=nil, country=nil, referrer=nil, environment=nil)
          @AppId = appid
          @StartTime = starttime
          @EndTime = endtime
          @Steps = steps
          @Platform = platform
          @AppVersion = appversion
          @DeviceType = devicetype
          @Browser = browser
          @OS = os
          @Country = country
          @Referrer = referrer
          @Environment = environment
        end

        def deserialize(params)
          @AppId = params['AppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Steps = params['Steps']
          @Platform = params['Platform']
          @AppVersion = params['AppVersion']
          @DeviceType = params['DeviceType']
          @Browser = params['Browser']
          @OS = params['OS']
          @Country = params['Country']
          @Referrer = params['Referrer']
          @Environment = params['Environment']
        end
      end

      # PreviewTDEMFunnelReport返回参数结构体
      class PreviewTDEMFunnelReportResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>请求结果（JSON字符串，包含 FunnelId/FunnelName/Summary/Steps/Chart）</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # 项目接口限制类型
      class ProjectLimit < TencentCloud::Common::AbstractModel
        # @param ProjectInterface: 接口
        # @type ProjectInterface: String
        # @param ReportRate: 上报率
        # @type ReportRate: Integer
        # @param ReportType: 上报类型 1：上报率  2：上报量限制
        # @type ReportType: Integer
        # @param ID: 主键ID
        # @type ID: Integer
        # @param ProjectID: 项目ID
        # @type ProjectID: Integer

        attr_accessor :ProjectInterface, :ReportRate, :ReportType, :ID, :ProjectID

        def initialize(projectinterface=nil, reportrate=nil, reporttype=nil, id=nil, projectid=nil)
          @ProjectInterface = projectinterface
          @ReportRate = reportrate
          @ReportType = reporttype
          @ID = id
          @ProjectID = projectid
        end

        def deserialize(params)
          @ProjectInterface = params['ProjectInterface']
          @ReportRate = params['ReportRate']
          @ReportType = params['ReportType']
          @ID = params['ID']
          @ProjectID = params['ProjectID']
        end
      end

      # 发布文件列表(SOURCEMAP)
      class ReleaseFile < TencentCloud::Common::AbstractModel
        # @param Version: <p>文件版本</p>
        # @type Version: String
        # @param FileKey: <p>文件唯一 key</p>
        # @type FileKey: String
        # @param FileName: <p>文件名</p>
        # @type FileName: String
        # @param FileHash: <p>文件哈希值</p>
        # @type FileHash: String
        # @param ID: <p>文件 id</p>
        # @type ID: Integer
        # @param CreatedAt: <p>创建时间</p>
        # @type CreatedAt: String

        attr_accessor :Version, :FileKey, :FileName, :FileHash, :ID, :CreatedAt

        def initialize(version=nil, filekey=nil, filename=nil, filehash=nil, id=nil, createdat=nil)
          @Version = version
          @FileKey = filekey
          @FileName = filename
          @FileHash = filehash
          @ID = id
          @CreatedAt = createdat
        end

        def deserialize(params)
          @Version = params['Version']
          @FileKey = params['FileKey']
          @FileName = params['FileName']
          @FileHash = params['FileHash']
          @ID = params['ID']
          @CreatedAt = params['CreatedAt']
        end
      end

      # ResumeInstance请求参数结构体
      class ResumeInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 需要恢复的实例id
        # @type InstanceId: String
        # @param IsModifyAll: 修改是否包括白名单
        # @type IsModifyAll: Boolean

        attr_accessor :InstanceId, :IsModifyAll

        def initialize(instanceid=nil, ismodifyall=nil)
          @InstanceId = instanceid
          @IsModifyAll = ismodifyall
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @IsModifyAll = params['IsModifyAll']
        end
      end

      # ResumeInstance返回参数结构体
      class ResumeInstanceResponse < TencentCloud::Common::AbstractModel
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

      # ResumeProject请求参数结构体
      class ResumeProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目 id
        # @type ProjectId: Integer

        attr_accessor :ProjectId

        def initialize(projectid=nil)
          @ProjectId = projectid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
        end
      end

      # ResumeProject返回参数结构体
      class ResumeProjectResponse < TencentCloud::Common::AbstractModel
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

      # ResumeTDEMApplication请求参数结构体
      class ResumeTDEMApplicationRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID（必填）</p>
        # @type AppId: String

        attr_accessor :AppId

        def initialize(appid=nil)
          @AppId = appid
        end

        def deserialize(params)
          @AppId = params['AppId']
        end
      end

      # ResumeTDEMApplication返回参数结构体
      class ResumeTDEMApplicationResponse < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param Status: <p>恢复后为 2</p>
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppId, :Status, :RequestId

        def initialize(appid=nil, status=nil, requestid=nil)
          @AppId = appid
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # Rum片区信息
      class RumAreaInfo < TencentCloud::Common::AbstractModel
        # @param AreaId: 片区Id
        # @type AreaId: Integer
        # @param AreaStatus: 片区状态(1=有效，2=无效)
        # @type AreaStatus: Integer
        # @param AreaName: 片区名称
        # @type AreaName: String
        # @param AreaKey: 片区Key
        # @type AreaKey: String
        # @param AreaRegionID: 地域码表 id
        # @type AreaRegionID: String
        # @param AreaRegionCode: 地域码表 code 如 ap-xxx（xxx 为地域词）
        # @type AreaRegionCode: String
        # @param AreaAbbr: 地域缩写
        # @type AreaAbbr: String

        attr_accessor :AreaId, :AreaStatus, :AreaName, :AreaKey, :AreaRegionID, :AreaRegionCode, :AreaAbbr

        def initialize(areaid=nil, areastatus=nil, areaname=nil, areakey=nil, arearegionid=nil, arearegioncode=nil, areaabbr=nil)
          @AreaId = areaid
          @AreaStatus = areastatus
          @AreaName = areaname
          @AreaKey = areakey
          @AreaRegionID = arearegionid
          @AreaRegionCode = arearegioncode
          @AreaAbbr = areaabbr
        end

        def deserialize(params)
          @AreaId = params['AreaId']
          @AreaStatus = params['AreaStatus']
          @AreaName = params['AreaName']
          @AreaKey = params['AreaKey']
          @AreaRegionID = params['AreaRegionID']
          @AreaRegionCode = params['AreaRegionCode']
          @AreaAbbr = params['AreaAbbr']
        end
      end

      # Rum实例信息
      class RumInstanceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceStatus: 实例状态(1=创建中，2=运行中，3=异常，4=重启中，5=停止中，6=已停止，7=已删除)
        # @type InstanceStatus: Integer
        # @param AreaId: 片区Id
        # @type AreaId: Integer
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param ClusterId: 集群Id
        # @type ClusterId: Integer
        # @param InstanceDesc: 实例描述
        # @type InstanceDesc: String
        # @param ChargeStatus: 计费状态(1=使用中，2=已过期，3=已销毁，4=分配中，5=分配失败)
        # @type ChargeStatus: Integer
        # @param ChargeType: 计费类型(1=免费版，2=预付费，3=后付费)
        # @type ChargeType: Integer
        # @param UpdatedAt: 更新时间
        # @type UpdatedAt: String
        # @param DataRetentionDays: 数据保留时间(天)
        # @type DataRetentionDays: Integer
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param InstanceType: 实例类型 1:原web相关类型 2:app端类型
        # @type InstanceType: Integer

        attr_accessor :InstanceStatus, :AreaId, :Tags, :InstanceId, :ClusterId, :InstanceDesc, :ChargeStatus, :ChargeType, :UpdatedAt, :DataRetentionDays, :InstanceName, :CreatedAt, :InstanceType

        def initialize(instancestatus=nil, areaid=nil, tags=nil, instanceid=nil, clusterid=nil, instancedesc=nil, chargestatus=nil, chargetype=nil, updatedat=nil, dataretentiondays=nil, instancename=nil, createdat=nil, instancetype=nil)
          @InstanceStatus = instancestatus
          @AreaId = areaid
          @Tags = tags
          @InstanceId = instanceid
          @ClusterId = clusterid
          @InstanceDesc = instancedesc
          @ChargeStatus = chargestatus
          @ChargeType = chargetype
          @UpdatedAt = updatedat
          @DataRetentionDays = dataretentiondays
          @InstanceName = instancename
          @CreatedAt = createdat
          @InstanceType = instancetype
        end

        def deserialize(params)
          @InstanceStatus = params['InstanceStatus']
          @AreaId = params['AreaId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @InstanceId = params['InstanceId']
          @ClusterId = params['ClusterId']
          @InstanceDesc = params['InstanceDesc']
          @ChargeStatus = params['ChargeStatus']
          @ChargeType = params['ChargeType']
          @UpdatedAt = params['UpdatedAt']
          @DataRetentionDays = params['DataRetentionDays']
          @InstanceName = params['InstanceName']
          @CreatedAt = params['CreatedAt']
          @InstanceType = params['InstanceType']
        end
      end

      # Rum 项目信息
      class RumProject < TencentCloud::Common::AbstractModel
        # @param Name: 项目名
        # @type Name: String
        # @param Creator: 创建者 id
        # @type Creator: String
        # @param InstanceID: 实例 id
        # @type InstanceID: String
        # @param Type: 项目类型
        # @type Type: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param Repo: 项目仓库地址
        # @type Repo: String
        # @param URL: 项目网址地址
        # @type URL: String
        # @param Rate: 项目采样频率
        # @type Rate: String
        # @param Key: 项目唯一key（长度 12 位）
        # @type Key: String
        # @param EnableURLGroup: 是否开启url聚类
        # @type EnableURLGroup: Integer
        # @param InstanceName: 实例名
        # @type InstanceName: String
        # @param ID: 项目 ID
        # @type ID: Integer
        # @param InstanceKey: 实例 key
        # @type InstanceKey: String
        # @param Desc: 项目描述
        # @type Desc: String
        # @param IsStar: 是否星标  1:是 0:否
        # @type IsStar: Integer
        # @param ProjectStatus: 项目状态(1 创建中，2 运行中，3 异常，4 重启中，5 停止中，6 已停止， 7 销毁中，8 已销毁)
        # @type ProjectStatus: Integer
        # @param AccessPoint: 日志接入点，用户忽略。
        # @type AccessPoint: String
        # @param Kafka: kafka旁路配置信息
        # @type Kafka: :class:`Tencentcloud::Rum.v20210622.models.Kafka`

        attr_accessor :Name, :Creator, :InstanceID, :Type, :CreateTime, :Repo, :URL, :Rate, :Key, :EnableURLGroup, :InstanceName, :ID, :InstanceKey, :Desc, :IsStar, :ProjectStatus, :AccessPoint, :Kafka

        def initialize(name=nil, creator=nil, instanceid=nil, type=nil, createtime=nil, repo=nil, url=nil, rate=nil, key=nil, enableurlgroup=nil, instancename=nil, id=nil, instancekey=nil, desc=nil, isstar=nil, projectstatus=nil, accesspoint=nil, kafka=nil)
          @Name = name
          @Creator = creator
          @InstanceID = instanceid
          @Type = type
          @CreateTime = createtime
          @Repo = repo
          @URL = url
          @Rate = rate
          @Key = key
          @EnableURLGroup = enableurlgroup
          @InstanceName = instancename
          @ID = id
          @InstanceKey = instancekey
          @Desc = desc
          @IsStar = isstar
          @ProjectStatus = projectstatus
          @AccessPoint = accesspoint
          @Kafka = kafka
        end

        def deserialize(params)
          @Name = params['Name']
          @Creator = params['Creator']
          @InstanceID = params['InstanceID']
          @Type = params['Type']
          @CreateTime = params['CreateTime']
          @Repo = params['Repo']
          @URL = params['URL']
          @Rate = params['Rate']
          @Key = params['Key']
          @EnableURLGroup = params['EnableURLGroup']
          @InstanceName = params['InstanceName']
          @ID = params['ID']
          @InstanceKey = params['InstanceKey']
          @Desc = params['Desc']
          @IsStar = params['IsStar']
          @ProjectStatus = params['ProjectStatus']
          @AccessPoint = params['AccessPoint']
          unless params['Kafka'].nil?
            @Kafka = Kafka.new
            @Kafka.deserialize(params['Kafka'])
          end
        end
      end

      # rum 日志对象
      class RumPvInfo < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param Pv: pv访问量
        # @type Pv: String
        # @param CreateTime: 时间
        # @type CreateTime: String

        attr_accessor :ProjectId, :Pv, :CreateTime

        def initialize(projectid=nil, pv=nil, createtime=nil)
          @ProjectId = projectid
          @Pv = pv
          @CreateTime = createtime
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Pv = params['Pv']
          @CreateTime = params['CreateTime']
        end
      end

      # RumUv 访问量
      class RumUvInfo < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param Uv: uv访问量
        # @type Uv: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :ProjectId, :Uv, :CreateTime

        def initialize(projectid=nil, uv=nil, createtime=nil)
          @ProjectId = projectid
          @Uv = uv
          @CreateTime = createtime
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Uv = params['Uv']
          @CreateTime = params['CreateTime']
        end
      end

      # project Score分数实体
      class ScoreInfo < TencentCloud::Common::AbstractModel
        # @param StaticDuration: duration
        # @type StaticDuration: String
        # @param PagePv: pv
        # @type PagePv: String
        # @param ApiFail: 失败
        # @type ApiFail: String
        # @param ApiNum: 请求
        # @type ApiNum: String
        # @param StaticFail: fail
        # @type StaticFail: String
        # @param ProjectID: 项目id
        # @type ProjectID: Integer
        # @param PageUv: uv
        # @type PageUv: String
        # @param ApiDuration: 请求次数
        # @type ApiDuration: String
        # @param Score: 项目总分
        # @type Score: String
        # @param PageError: error
        # @type PageError: String
        # @param StaticNum: num
        # @type StaticNum: String
        # @param RecordNum: num
        # @type RecordNum: Integer
        # @param PageDuration: Duration
        # @type PageDuration: String
        # @param CreateTime: 时间
        # @type CreateTime: String
        # @param PagePerformanceScore: 页面性能评分
        # @type PagePerformanceScore: String
        # @param JsErrorScore: js错误评分
        # @type JsErrorScore: String
        # @param ApiPerformanceScore: API性能评分
        # @type ApiPerformanceScore: String
        # @param ApiAvaliableScore: API可用性评分
        # @type ApiAvaliableScore: String
        # @param StaticPerformanceScore: 静态资源性能评分
        # @type StaticPerformanceScore: String
        # @param StaticAvaliableScore: 静态资源可用性评分
        # @type StaticAvaliableScore: String

        attr_accessor :StaticDuration, :PagePv, :ApiFail, :ApiNum, :StaticFail, :ProjectID, :PageUv, :ApiDuration, :Score, :PageError, :StaticNum, :RecordNum, :PageDuration, :CreateTime, :PagePerformanceScore, :JsErrorScore, :ApiPerformanceScore, :ApiAvaliableScore, :StaticPerformanceScore, :StaticAvaliableScore

        def initialize(staticduration=nil, pagepv=nil, apifail=nil, apinum=nil, staticfail=nil, projectid=nil, pageuv=nil, apiduration=nil, score=nil, pageerror=nil, staticnum=nil, recordnum=nil, pageduration=nil, createtime=nil, pageperformancescore=nil, jserrorscore=nil, apiperformancescore=nil, apiavaliablescore=nil, staticperformancescore=nil, staticavaliablescore=nil)
          @StaticDuration = staticduration
          @PagePv = pagepv
          @ApiFail = apifail
          @ApiNum = apinum
          @StaticFail = staticfail
          @ProjectID = projectid
          @PageUv = pageuv
          @ApiDuration = apiduration
          @Score = score
          @PageError = pageerror
          @StaticNum = staticnum
          @RecordNum = recordnum
          @PageDuration = pageduration
          @CreateTime = createtime
          @PagePerformanceScore = pageperformancescore
          @JsErrorScore = jserrorscore
          @ApiPerformanceScore = apiperformancescore
          @ApiAvaliableScore = apiavaliablescore
          @StaticPerformanceScore = staticperformancescore
          @StaticAvaliableScore = staticavaliablescore
        end

        def deserialize(params)
          @StaticDuration = params['StaticDuration']
          @PagePv = params['PagePv']
          @ApiFail = params['ApiFail']
          @ApiNum = params['ApiNum']
          @StaticFail = params['StaticFail']
          @ProjectID = params['ProjectID']
          @PageUv = params['PageUv']
          @ApiDuration = params['ApiDuration']
          @Score = params['Score']
          @PageError = params['PageError']
          @StaticNum = params['StaticNum']
          @RecordNum = params['RecordNum']
          @PageDuration = params['PageDuration']
          @CreateTime = params['CreateTime']
          @PagePerformanceScore = params['PagePerformanceScore']
          @JsErrorScore = params['JsErrorScore']
          @ApiPerformanceScore = params['ApiPerformanceScore']
          @ApiAvaliableScore = params['ApiAvaliableScore']
          @StaticPerformanceScore = params['StaticPerformanceScore']
          @StaticAvaliableScore = params['StaticAvaliableScore']
        end
      end

      # project Score分数实体
      class ScoreInfoV2 < TencentCloud::Common::AbstractModel
        # @param ProjectID: <p>项目id</p>
        # @type ProjectID: Integer
        # @param Score: <p>项目总分</p>
        # @type Score: Float
        # @param ApiPerformanceScore: <p>API性能评分</p>
        # @type ApiPerformanceScore: Float
        # @param ApiAvailableScore: <p>API可用性评分</p>
        # @type ApiAvailableScore: Float
        # @param ApiNum: <p>API调用总数</p>
        # @type ApiNum: Integer
        # @param ApiFail: <p>API失败次数</p>
        # @type ApiFail: Integer
        # @param ApiDuration: <p>API平均持续时间</p>
        # @type ApiDuration: Float
        # @param PagePerformanceScore: <p>页面性能评分</p>
        # @type PagePerformanceScore: Float
        # @param PagePv: <p>页面浏览量</p>
        # @type PagePv: Integer
        # @param PageUv: <p>独立访客数</p>
        # @type PageUv: Integer
        # @param PageError: <p>页面错误数</p>
        # @type PageError: Integer
        # @param PageDuration: <p>首屏时间</p>
        # @type PageDuration: Float
        # @param PageLCP: <p>平均 LCP</p>
        # @type PageLCP: Float
        # @param PageFID: <p>平均 FID</p>
        # @type PageFID: Float
        # @param PageCLS: <p>平均 CLS</p>
        # @type PageCLS: Float
        # @param PageFCP: <p>平均 FCP</p>
        # @type PageFCP: Float
        # @param PageINP: <p>平均 INP</p>
        # @type PageINP: Float
        # @param JsErrorScore: <p>JavaScript错误评分</p>
        # @type JsErrorScore: Float
        # @param StaticAvailableScore: <p>静态资源可用性评分</p>
        # @type StaticAvailableScore: Float
        # @param StaticPerformanceScore: <p>静态资源性能评分</p>
        # @type StaticPerformanceScore: Float
        # @param StaticNum: <p>静态资源请求总数</p>
        # @type StaticNum: Integer
        # @param StaticFail: <p>静态资源加载失败数</p>
        # @type StaticFail: Integer
        # @param StaticDuration: <p>静态资源加载时间</p>
        # @type StaticDuration: Float
        # @param Exclusion: <p>忽略的配置项</p>
        # @type Exclusion: String

        attr_accessor :ProjectID, :Score, :ApiPerformanceScore, :ApiAvailableScore, :ApiNum, :ApiFail, :ApiDuration, :PagePerformanceScore, :PagePv, :PageUv, :PageError, :PageDuration, :PageLCP, :PageFID, :PageCLS, :PageFCP, :PageINP, :JsErrorScore, :StaticAvailableScore, :StaticPerformanceScore, :StaticNum, :StaticFail, :StaticDuration, :Exclusion

        def initialize(projectid=nil, score=nil, apiperformancescore=nil, apiavailablescore=nil, apinum=nil, apifail=nil, apiduration=nil, pageperformancescore=nil, pagepv=nil, pageuv=nil, pageerror=nil, pageduration=nil, pagelcp=nil, pagefid=nil, pagecls=nil, pagefcp=nil, pageinp=nil, jserrorscore=nil, staticavailablescore=nil, staticperformancescore=nil, staticnum=nil, staticfail=nil, staticduration=nil, exclusion=nil)
          @ProjectID = projectid
          @Score = score
          @ApiPerformanceScore = apiperformancescore
          @ApiAvailableScore = apiavailablescore
          @ApiNum = apinum
          @ApiFail = apifail
          @ApiDuration = apiduration
          @PagePerformanceScore = pageperformancescore
          @PagePv = pagepv
          @PageUv = pageuv
          @PageError = pageerror
          @PageDuration = pageduration
          @PageLCP = pagelcp
          @PageFID = pagefid
          @PageCLS = pagecls
          @PageFCP = pagefcp
          @PageINP = pageinp
          @JsErrorScore = jserrorscore
          @StaticAvailableScore = staticavailablescore
          @StaticPerformanceScore = staticperformancescore
          @StaticNum = staticnum
          @StaticFail = staticfail
          @StaticDuration = staticduration
          @Exclusion = exclusion
        end

        def deserialize(params)
          @ProjectID = params['ProjectID']
          @Score = params['Score']
          @ApiPerformanceScore = params['ApiPerformanceScore']
          @ApiAvailableScore = params['ApiAvailableScore']
          @ApiNum = params['ApiNum']
          @ApiFail = params['ApiFail']
          @ApiDuration = params['ApiDuration']
          @PagePerformanceScore = params['PagePerformanceScore']
          @PagePv = params['PagePv']
          @PageUv = params['PageUv']
          @PageError = params['PageError']
          @PageDuration = params['PageDuration']
          @PageLCP = params['PageLCP']
          @PageFID = params['PageFID']
          @PageCLS = params['PageCLS']
          @PageFCP = params['PageFCP']
          @PageINP = params['PageINP']
          @JsErrorScore = params['JsErrorScore']
          @StaticAvailableScore = params['StaticAvailableScore']
          @StaticPerformanceScore = params['StaticPerformanceScore']
          @StaticNum = params['StaticNum']
          @StaticFail = params['StaticFail']
          @StaticDuration = params['StaticDuration']
          @Exclusion = params['Exclusion']
        end
      end

      # StopInstance请求参数结构体
      class StopInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 需要停止的实例id
        # @type InstanceId: String
        # @param IsModifyAll: 修改是否包括白名单
        # @type IsModifyAll: Boolean

        attr_accessor :InstanceId, :IsModifyAll

        def initialize(instanceid=nil, ismodifyall=nil)
          @InstanceId = instanceid
          @IsModifyAll = ismodifyall
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @IsModifyAll = params['IsModifyAll']
        end
      end

      # StopInstance返回参数结构体
      class StopInstanceResponse < TencentCloud::Common::AbstractModel
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

      # StopProject请求参数结构体
      class StopProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目 id
        # @type ProjectId: Integer

        attr_accessor :ProjectId

        def initialize(projectid=nil)
          @ProjectId = projectid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
        end
      end

      # StopProject返回参数结构体
      class StopProjectResponse < TencentCloud::Common::AbstractModel
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

      # StopTDEMApplication请求参数结构体
      class StopTDEMApplicationRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID（必填）</p>
        # @type AppId: String

        attr_accessor :AppId

        def initialize(appid=nil)
          @AppId = appid
        end

        def deserialize(params)
          @AppId = params['AppId']
        end
      end

      # StopTDEMApplication返回参数结构体
      class StopTDEMApplicationResponse < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param Status: <p>停止后为 6</p>
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppId, :Status, :RequestId

        def initialize(appid=nil, status=nil, requestid=nil)
          @AppId = appid
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # 字符串键值对
      class StringKeyValue < TencentCloud::Common::AbstractModel
        # @param Key: <p>键</p>
        # @type Key: String
        # @param Value: <p>值</p>
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

      # 符号化结果。未翻译时只填 Status / SkipReason。
      class SymbolicatedView < TencentCloud::Common::AbstractModel
        # @param SymbolicationVersion: <p>符号化版本</p>
        # @type SymbolicationVersion: Integer
        # @param SymbolicatedAt: <p>符号化时间</p>
        # @type SymbolicatedAt: String
        # @param SymbolicationStatus: <p>状态：success / missing / skipped</p>
        # @type SymbolicationStatus: String
        # @param SymbolicationSkipReason: <p>跳过原因</p>
        # @type SymbolicationSkipReason: String
        # @param SymbolicationSource: <p>来源</p>
        # @type SymbolicationSource: String
        # @param SymbolicationRelease: <p>release</p>
        # @type SymbolicationRelease: String
        # @param SymbolicationDist: <p>dist</p>
        # @type SymbolicationDist: String
        # @param SymbolicationDurationMs: <p>耗时毫秒</p>
        # @type SymbolicationDurationMs: Integer
        # @param SymbolicatorRequestId: <p>Symbolicator 请求 ID</p>
        # @type SymbolicatorRequestId: String
        # @param Frames: <p>翻译后堆栈帧</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Frames: Array

        attr_accessor :SymbolicationVersion, :SymbolicatedAt, :SymbolicationStatus, :SymbolicationSkipReason, :SymbolicationSource, :SymbolicationRelease, :SymbolicationDist, :SymbolicationDurationMs, :SymbolicatorRequestId, :Frames

        def initialize(symbolicationversion=nil, symbolicatedat=nil, symbolicationstatus=nil, symbolicationskipreason=nil, symbolicationsource=nil, symbolicationrelease=nil, symbolicationdist=nil, symbolicationdurationms=nil, symbolicatorrequestid=nil, frames=nil)
          @SymbolicationVersion = symbolicationversion
          @SymbolicatedAt = symbolicatedat
          @SymbolicationStatus = symbolicationstatus
          @SymbolicationSkipReason = symbolicationskipreason
          @SymbolicationSource = symbolicationsource
          @SymbolicationRelease = symbolicationrelease
          @SymbolicationDist = symbolicationdist
          @SymbolicationDurationMs = symbolicationdurationms
          @SymbolicatorRequestId = symbolicatorrequestid
          @Frames = frames
        end

        def deserialize(params)
          @SymbolicationVersion = params['SymbolicationVersion']
          @SymbolicatedAt = params['SymbolicatedAt']
          @SymbolicationStatus = params['SymbolicationStatus']
          @SymbolicationSkipReason = params['SymbolicationSkipReason']
          @SymbolicationSource = params['SymbolicationSource']
          @SymbolicationRelease = params['SymbolicationRelease']
          @SymbolicationDist = params['SymbolicationDist']
          @SymbolicationDurationMs = params['SymbolicationDurationMs']
          @SymbolicatorRequestId = params['SymbolicatorRequestId']
          unless params['Frames'].nil?
            @Frames = []
            params['Frames'].each do |i|
              eventframe_tmp = EventFrame.new
              eventframe_tmp.deserialize(i)
              @Frames << eventframe_tmp
            end
          end
        end
      end

      # 大模型对话多维分析行
      class TDEMSSEDimensionRow < TencentCloud::Common::AbstractModel
        # @param DimensionValue: <p>维度取值。空值保留为空字符串。</p>
        # @type DimensionValue: String
        # @param ConversationCount: <p>该取值的对话次数。</p>
        # @type ConversationCount: Integer
        # @param Value: <p>该取值上当前指标的值。没有可计算样本时为 null。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: Float

        attr_accessor :DimensionValue, :ConversationCount, :Value

        def initialize(dimensionvalue=nil, conversationcount=nil, value=nil)
          @DimensionValue = dimensionvalue
          @ConversationCount = conversationcount
          @Value = value
        end

        def deserialize(params)
          @DimensionValue = params['DimensionValue']
          @ConversationCount = params['ConversationCount']
          @Value = params['Value']
        end
      end

      # 大模型对话分布档
      class TDEMSSEDistributionBin < TencentCloud::Common::AbstractModel
        # @param Start: <p>档位左端，左闭。</p>
        # @type Start: Float
        # @param End: <p>档位右端。溢出档省略。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type End: Float
        # @param Overflow: <p>是否为溢出档。溢出档为 true，且不返回 End。</p>
        # @type Overflow: Boolean
        # @param Count: <p>落入该档的对话次数。</p>
        # @type Count: Integer
        # @param Rate: <p>该档占有效样本的百分比，已乘 100。</p>
        # @type Rate: Float

        attr_accessor :Start, :End, :Overflow, :Count, :Rate

        def initialize(start=nil, _end=nil, overflow=nil, count=nil, rate=nil)
          @Start = start
          @End = _end
          @Overflow = overflow
          @Count = count
          @Rate = rate
        end

        def deserialize(params)
          @Start = params['Start']
          @End = params['End']
          @Overflow = params['Overflow']
          @Count = params['Count']
          @Rate = params['Rate']
        end
      end

      # 大模型对话分位时间桶
      class TDEMSSEPercentilePoint < TencentCloud::Common::AbstractModel
        # @param Time: <p>时间桶起点，Unix 毫秒。</p>
        # @type Time: Integer
        # @param Average: <p>该桶算术平均值。没有样本的桶不返回。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Average: Float
        # @param P50: <p>50 分位。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type P50: Float
        # @param P75: <p>75 分位。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type P75: Float
        # @param P95: <p>95 分位。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type P95: Float
        # @param P99: <p>99 分位。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type P99: Float

        attr_accessor :Time, :Average, :P50, :P75, :P95, :P99

        def initialize(time=nil, average=nil, p50=nil, p75=nil, p95=nil, p99=nil)
          @Time = time
          @Average = average
          @P50 = p50
          @P75 = p75
          @P95 = p95
          @P99 = p99
        end

        def deserialize(params)
          @Time = params['Time']
          @Average = params['Average']
          @P50 = params['P50']
          @P75 = params['P75']
          @P95 = params['P95']
          @P99 = params['P99']
        end
      end

      # 大模型对话趋势时间桶
      class TDEMSSETrendPoint < TencentCloud::Common::AbstractModel
        # @param Time: <p>时间桶起点，Unix 毫秒。</p>
        # @type Time: Integer
        # @param ConversationCount: <p>该桶内的对话次数。</p>
        # @type ConversationCount: Integer
        # @param Value: <p>该桶内当前指标的值。桶内没有可计算样本时为 null。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: Float

        attr_accessor :Time, :ConversationCount, :Value

        def initialize(time=nil, conversationcount=nil, value=nil)
          @Time = time
          @ConversationCount = conversationcount
          @Value = value
        end

        def deserialize(params)
          @Time = params['Time']
          @ConversationCount = params['ConversationCount']
          @Value = params['Value']
        end
      end

      # 大模型对话趋势维度序列
      class TDEMSSETrendSeries < TencentCloud::Common::AbstractModel
        # @param DimensionValue: <p>维度取值。空值保留为空字符串。</p>
        # @type DimensionValue: String
        # @param Points: <p>该取值在各个时间桶上的点。</p>
        # @type Points: Array

        attr_accessor :DimensionValue, :Points

        def initialize(dimensionvalue=nil, points=nil)
          @DimensionValue = dimensionvalue
          @Points = points
        end

        def deserialize(params)
          @DimensionValue = params['DimensionValue']
          unless params['Points'].nil?
            @Points = []
            params['Points'].each do |i|
              tdemssetrendpoint_tmp = TDEMSSETrendPoint.new
              tdemssetrendpoint_tmp.deserialize(i)
              @Points << tdemssetrendpoint_tmp
            end
          end
        end
      end

      # 标签
      class Tag < TencentCloud::Common::AbstractModel
        # @param Key: 标签key
        # @type Key: String
        # @param Value: 标签value
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

      # UploadMiniProgramSource请求参数结构体
      class UploadMiniProgramSourceRequest < TencentCloud::Common::AbstractModel
        # @param AppId: <p>应用id</p>
        # @type AppId: String
        # @param FileBase64: <p>源码zip的Base64，请求包上限10240KB</p>
        # @type FileBase64: String
        # @param Release: <p>应用版本（可选）</p>
        # @type Release: String
        # @param FileName: <p>原始文件名（可选）</p>
        # @type FileName: String

        attr_accessor :AppId, :FileBase64, :Release, :FileName

        def initialize(appid=nil, filebase64=nil, release=nil, filename=nil)
          @AppId = appid
          @FileBase64 = filebase64
          @Release = release
          @FileName = filename
        end

        def deserialize(params)
          @AppId = params['AppId']
          @FileBase64 = params['FileBase64']
          @Release = params['Release']
          @FileName = params['FileName']
        end
      end

      # UploadMiniProgramSource返回参数结构体
      class UploadMiniProgramSourceResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: <p>错误信息</p>
        # @type ErrorMsg: String
        # @param Result: <p>请求结果（JSON字符串，包含 PackId/AppId/Release/BundleHash/Status/PageCount/ComponentCount/FileSize/Idempotent）</p>
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :Result, :RequestId

        def initialize(errormsg=nil, result=nil, requestid=nil)
          @ErrorMsg = errormsg
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # UploadSymbolArtifact请求参数结构体
      class UploadSymbolArtifactRequest < TencentCloud::Common::AbstractModel
        # @param Kind: <p>制品类型。取值：js_sourcemap、ios_dsym、macos_dsym、windows_pdb、android_mapping、android_native、system_symbol。</p>
        # @type Kind: String
        # @param FileSize: <p>对象大小（字节）。</p>
        # @type FileSize: Integer
        # @param Sha256: <p>对象内容的 SHA256 十六进制摘要，长度固定为 64 个字符。</p>
        # @type Sha256: String
        # @param COSUrl: <p>已上传对象的腾讯云 COS URL。与 FileUrl 二选一至少传一个；优先使用 COSUrl。必须属于当前配置的 Bucket 和 Region。</p>
        # @type COSUrl: String
        # @param AppId: <p>应用 ID。应用级制品必填；system_symbol 不传。</p>
        # @type AppId: String
        # @param ProjectId: <p>兼容别名，未传 AppId 时使用。</p>
        # @type ProjectId: String
        # @param Release: <p>JS 应用版本。未传 AppVersion 时使用。</p>
        # @type Release: String
        # @param Dist: <p>兼容字段，不参与制品匹配。</p>
        # @type Dist: String
        # @param MinifiedUrl: <p>压缩文件 URL。Kind=js_sourcemap 且 FileType 非 source_bundle 时必填。</p>
        # @type MinifiedUrl: String
        # @param FileType: <p>JS 制品文件类型。可选值说明：sourcemap、minified、source_bundle；为空时默认 sourcemap。</p>
        # @type FileType: String
        # @param DebugId: <p>调试 ID。除 js_sourcemap 外均必填。</p>
        # @type DebugId: String
        # @param BuildId: <p>构建 ID。ios_dsym、android_mapping、android_native 必填。</p>
        # @type BuildId: String
        # @param AppVersion: <p>应用版本。js_sourcemap 必填，未传时使用 Release。</p>
        # @type AppVersion: String
        # @param Platform: <p>兼容字段，请勿传入。</p>
        # @type Platform: String
        # @param OS: <p>系统名称。system_symbol 可填写。</p>
        # @type OS: String
        # @param OSVersion: <p>系统版本。system_symbol 可填写。</p>
        # @type OSVersion: String
        # @param StorePath: <p>兼容字段，请勿传入。</p>
        # @type StorePath: String
        # @param FileName: <p>文件名。原生和系统符号必填；ios_dsym 使用模块名，android_native 使用 abi/文件名。</p>
        # @type FileName: String
        # @param ContentType: <p>文件内容类型，如 application/json。</p>
        # @type ContentType: String
        # @param FileUrl: <p>COSUrl 的兼容别名；当未传 COSUrl 时使用。与 COSUrl 二选一至少传一个。</p>
        # @type FileUrl: String

        attr_accessor :Kind, :FileSize, :Sha256, :COSUrl, :AppId, :ProjectId, :Release, :Dist, :MinifiedUrl, :FileType, :DebugId, :BuildId, :AppVersion, :Platform, :OS, :OSVersion, :StorePath, :FileName, :ContentType, :FileUrl

        def initialize(kind=nil, filesize=nil, sha256=nil, cosurl=nil, appid=nil, projectid=nil, release=nil, dist=nil, minifiedurl=nil, filetype=nil, debugid=nil, buildid=nil, appversion=nil, platform=nil, os=nil, osversion=nil, storepath=nil, filename=nil, contenttype=nil, fileurl=nil)
          @Kind = kind
          @FileSize = filesize
          @Sha256 = sha256
          @COSUrl = cosurl
          @AppId = appid
          @ProjectId = projectid
          @Release = release
          @Dist = dist
          @MinifiedUrl = minifiedurl
          @FileType = filetype
          @DebugId = debugid
          @BuildId = buildid
          @AppVersion = appversion
          @Platform = platform
          @OS = os
          @OSVersion = osversion
          @StorePath = storepath
          @FileName = filename
          @ContentType = contenttype
          @FileUrl = fileurl
        end

        def deserialize(params)
          @Kind = params['Kind']
          @FileSize = params['FileSize']
          @Sha256 = params['Sha256']
          @COSUrl = params['COSUrl']
          @AppId = params['AppId']
          @ProjectId = params['ProjectId']
          @Release = params['Release']
          @Dist = params['Dist']
          @MinifiedUrl = params['MinifiedUrl']
          @FileType = params['FileType']
          @DebugId = params['DebugId']
          @BuildId = params['BuildId']
          @AppVersion = params['AppVersion']
          @Platform = params['Platform']
          @OS = params['OS']
          @OSVersion = params['OSVersion']
          @StorePath = params['StorePath']
          @FileName = params['FileName']
          @ContentType = params['ContentType']
          @FileUrl = params['FileUrl']
        end
      end

      # UploadSymbolArtifact返回参数结构体
      class UploadSymbolArtifactResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>登记的制品信息，JSON 格式字符串。</p>
        # @type Result: String
        # @param ErrorMsg: <p>错误信息</p>
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrorMsg, :RequestId

        def initialize(result=nil, errormsg=nil, requestid=nil)
          @Result = result
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # 用量明细行
      class UsageDetailRow < TencentCloud::Common::AbstractModel
        # @param InstanceId: <p>业务系统 ID</p>
        # @type InstanceId: String
        # @param InstanceName: <p>业务系统名称</p>
        # @type InstanceName: String
        # @param InstanceStatus: <p>业务系统状态</p>
        # @type InstanceStatus: Integer
        # @param AppId: <p>应用 ID</p>
        # @type AppId: String
        # @param AppName: <p>应用名称</p>
        # @type AppName: String
        # @param AppType: <p>端类型</p>
        # @type AppType: String
        # @param AppStatus: <p>应用状态</p>
        # @type AppStatus: Integer
        # @param ReportVolume: <p>上报量</p>
        # @type ReportVolume: Integer
        # @param Percent: <p>占当前结果集比例</p>
        # @type Percent: Float
        # @param ByDate: <p>行趋势</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ByDate: Array

        attr_accessor :InstanceId, :InstanceName, :InstanceStatus, :AppId, :AppName, :AppType, :AppStatus, :ReportVolume, :Percent, :ByDate

        def initialize(instanceid=nil, instancename=nil, instancestatus=nil, appid=nil, appname=nil, apptype=nil, appstatus=nil, reportvolume=nil, percent=nil, bydate=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @InstanceStatus = instancestatus
          @AppId = appid
          @AppName = appname
          @AppType = apptype
          @AppStatus = appstatus
          @ReportVolume = reportvolume
          @Percent = percent
          @ByDate = bydate
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @InstanceStatus = params['InstanceStatus']
          @AppId = params['AppId']
          @AppName = params['AppName']
          @AppType = params['AppType']
          @AppStatus = params['AppStatus']
          @ReportVolume = params['ReportVolume']
          @Percent = params['Percent']
          unless params['ByDate'].nil?
            @ByDate = []
            params['ByDate'].each do |i|
              usagetimepoint_tmp = UsageTimePoint.new
              usagetimepoint_tmp.deserialize(i)
              @ByDate << usagetimepoint_tmp
            end
          end
        end
      end

      # 用量趋势点
      class UsageTimePoint < TencentCloud::Common::AbstractModel
        # @param Time: <p>时间 YYYY-MM-DD HH:00:00</p>
        # @type Time: String
        # @param ReportVolume: <p>上报量</p>
        # @type ReportVolume: Integer

        attr_accessor :Time, :ReportVolume

        def initialize(time=nil, reportvolume=nil)
          @Time = time
          @ReportVolume = reportvolume
        end

        def deserialize(params)
          @Time = params['Time']
          @ReportVolume = params['ReportVolume']
        end
      end

      # 白名单
      class Whitelist < TencentCloud::Common::AbstractModel
        # @param Remark: 备注
        # @type Remark: String
        # @param InstanceID: 实例ID
        # @type InstanceID: String
        # @param Ttl: 截止时间
        # @type Ttl: String
        # @param ID: 白名单自增ID
        # @type ID: String
        # @param WhitelistUin: 业务唯一标识
        # @type WhitelistUin: String
        # @param CreateUser: 创建者ID
        # @type CreateUser: String
        # @param Aid: aid标识
        # @type Aid: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :Remark, :InstanceID, :Ttl, :ID, :WhitelistUin, :CreateUser, :Aid, :CreateTime

        def initialize(remark=nil, instanceid=nil, ttl=nil, id=nil, whitelistuin=nil, createuser=nil, aid=nil, createtime=nil)
          @Remark = remark
          @InstanceID = instanceid
          @Ttl = ttl
          @ID = id
          @WhitelistUin = whitelistuin
          @CreateUser = createuser
          @Aid = aid
          @CreateTime = createtime
        end

        def deserialize(params)
          @Remark = params['Remark']
          @InstanceID = params['InstanceID']
          @Ttl = params['Ttl']
          @ID = params['ID']
          @WhitelistUin = params['WhitelistUin']
          @CreateUser = params['CreateUser']
          @Aid = params['Aid']
          @CreateTime = params['CreateTime']
        end
      end

    end
  end
end

