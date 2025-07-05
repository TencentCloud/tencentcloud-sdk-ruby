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
  module Teo
    module V20220106
      # CreatePrefetchTask请求参数结构体
      class CreatePrefetchTaskRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: Zone ID
        # @type ZoneId: String
        # @param Targets: 要预热的资源列表，每个元素格式类似如下:
        # http://www.example.com/example.txt
        # @type Targets: Array
        # @param EncodeUrl: 是否对url进行encode
        # 若内容含有非 ASCII 字符集的字符，请开启此开关，编码转换（编码规则遵循 RFC3986）
        # @type EncodeUrl: Boolean
        # @param Headers: 附带的http头部信息
        # @type Headers: Array

        attr_accessor :ZoneId, :Targets, :EncodeUrl, :Headers

        def initialize(zoneid=nil, targets=nil, encodeurl=nil, headers=nil)
          @ZoneId = zoneid
          @Targets = targets
          @EncodeUrl = encodeurl
          @Headers = headers
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Targets = params['Targets']
          @EncodeUrl = params['EncodeUrl']
          unless params['Headers'].nil?
            @Headers = []
            params['Headers'].each do |i|
              header_tmp = Header.new
              header_tmp.deserialize(i)
              @Headers << header_tmp
            end
          end
        end
      end

      # CreatePrefetchTask返回参数结构体
      class CreatePrefetchTaskResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID
        # @type JobId: String
        # @param FailedList: 失败的任务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :FailedList, :RequestId

        def initialize(jobid=nil, failedlist=nil, requestid=nil)
          @JobId = jobid
          @FailedList = failedlist
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          unless params['FailedList'].nil?
            @FailedList = []
            params['FailedList'].each do |i|
              failreason_tmp = FailReason.new
              failreason_tmp.deserialize(i)
              @FailedList << failreason_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreatePurgeTask请求参数结构体
      class CreatePurgeTaskRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: Zone ID
        # @type ZoneId: String
        # @param Type: 类型，当前支持的类型：
        # - purge_url：URL
        # - purge_prefix：前缀
        # - purge_host：Hostname
        # - purge_all：全部缓存
        # @type Type: String
        # @param Targets: 要刷新的资源列表，每个元素格式依据Type而定
        # 1) Type = purge_host 时
        # 形如：www.example.com 或 foo.bar.example.com
        # 2) Type = purge_prefix 时
        # 形如：http://www.example.com/example
        # 3) Type = purge_url 时
        # 形如：https://www.example.com/example.jpg
        # 4）Type = purge_all 时
        # Targets可为空，不需要填写
        # @type Targets: Array
        # @param EncodeUrl: 若有编码转换，仅清除编码转换后匹配的资源
        # 若内容含有非 ASCII 字符集的字符，请开启此开关，编码转换（编码规则遵循 RFC3986）
        # @type EncodeUrl: Boolean

        attr_accessor :ZoneId, :Type, :Targets, :EncodeUrl

        def initialize(zoneid=nil, type=nil, targets=nil, encodeurl=nil)
          @ZoneId = zoneid
          @Type = type
          @Targets = targets
          @EncodeUrl = encodeurl
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Type = params['Type']
          @Targets = params['Targets']
          @EncodeUrl = params['EncodeUrl']
        end
      end

      # CreatePurgeTask返回参数结构体
      class CreatePurgeTaskResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID
        # @type JobId: String
        # @param FailedList: 失败的任务列表及原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :FailedList, :RequestId

        def initialize(jobid=nil, failedlist=nil, requestid=nil)
          @JobId = jobid
          @FailedList = failedlist
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          unless params['FailedList'].nil?
            @FailedList = []
            params['FailedList'].each do |i|
              failreason_tmp = FailReason.new
              failreason_tmp.deserialize(i)
              @FailedList << failreason_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePrefetchTasks请求参数结构体
      class DescribePrefetchTasksRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID
        # @type JobId: String
        # @param StartTime: 查询起始时间
        # @type StartTime: String
        # @param EndTime: 查询结束时间
        # @type EndTime: String
        # @param Offset: 查询起始偏移量
        # @type Offset: Integer
        # @param Limit: 查询最大返回的结果条数
        # @type Limit: Integer
        # @param Statuses: 查询的状态
        # 允许的值为：processing、success、failed、timeout、invalid
        # @type Statuses: Array
        # @param ZoneId: zone id
        # @type ZoneId: String
        # @param Domains: 查询的域名列表
        # @type Domains: Array
        # @param Target: 查询的资源
        # @type Target: String

        attr_accessor :JobId, :StartTime, :EndTime, :Offset, :Limit, :Statuses, :ZoneId, :Domains, :Target

        def initialize(jobid=nil, starttime=nil, endtime=nil, offset=nil, limit=nil, statuses=nil, zoneid=nil, domains=nil, target=nil)
          @JobId = jobid
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
          @Statuses = statuses
          @ZoneId = zoneid
          @Domains = domains
          @Target = target
        end

        def deserialize(params)
          @JobId = params['JobId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Statuses = params['Statuses']
          @ZoneId = params['ZoneId']
          @Domains = params['Domains']
          @Target = params['Target']
        end
      end

      # DescribePrefetchTasks返回参数结构体
      class DescribePrefetchTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 该查询条件总共条目数
        # @type TotalCount: Integer
        # @param Tasks: 任务结果列表
        # @type Tasks: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              task_tmp = Task.new
              task_tmp.deserialize(i)
              @Tasks << task_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePurgeTasks请求参数结构体
      class DescribePurgeTasksRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID
        # @type JobId: String
        # @param Type: 类型
        # @type Type: String
        # @param StartTime: 查询起始时间
        # @type StartTime: String
        # @param EndTime: 查询结束时间
        # @type EndTime: String
        # @param Offset: 查询起始偏移量
        # @type Offset: Integer
        # @param Limit: 查询最大返回的结果条数
        # @type Limit: Integer
        # @param Statuses: 查询的状态
        # 允许的值为：processing、success、failed、timeout、invalid
        # @type Statuses: Array
        # @param ZoneId: zone id
        # @type ZoneId: String
        # @param Domains: 查询的域名列表
        # @type Domains: Array
        # @param Target: 查询内容
        # @type Target: String

        attr_accessor :JobId, :Type, :StartTime, :EndTime, :Offset, :Limit, :Statuses, :ZoneId, :Domains, :Target

        def initialize(jobid=nil, type=nil, starttime=nil, endtime=nil, offset=nil, limit=nil, statuses=nil, zoneid=nil, domains=nil, target=nil)
          @JobId = jobid
          @Type = type
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
          @Statuses = statuses
          @ZoneId = zoneid
          @Domains = domains
          @Target = target
        end

        def deserialize(params)
          @JobId = params['JobId']
          @Type = params['Type']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Statuses = params['Statuses']
          @ZoneId = params['ZoneId']
          @Domains = params['Domains']
          @Target = params['Target']
        end
      end

      # DescribePurgeTasks返回参数结构体
      class DescribePurgeTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 该查询条件总共条目数
        # @type TotalCount: Integer
        # @param Tasks: 任务结果列表
        # @type Tasks: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              task_tmp = Task.new
              task_tmp.deserialize(i)
              @Tasks << task_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeZones请求参数结构体
      class DescribeZonesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页查询偏移量。默认值：0，最小值：0。
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目。默认值：1000，最大值：1000。
        # @type Limit: Integer
        # @param Filters: 查询条件过滤器，复杂类型。
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
              zonefilter_tmp = ZoneFilter.new
              zonefilter_tmp.deserialize(i)
              @Filters << zonefilter_tmp
            end
          end
        end
      end

      # DescribeZones返回参数结构体
      class DescribeZonesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的站点个数。
        # @type TotalCount: Integer
        # @param Zones: 站点详细信息列表。
        # @type Zones: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Zones, :RequestId

        def initialize(totalcount=nil, zones=nil, requestid=nil)
          @TotalCount = totalcount
          @Zones = zones
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Zones'].nil?
            @Zones = []
            params['Zones'].each do |i|
              zone_tmp = Zone.new
              zone_tmp.deserialize(i)
              @Zones << zone_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 失败原因
      class FailReason < TencentCloud::Common::AbstractModel
        # @param Reason: 失败原因
        # @type Reason: String
        # @param Targets: 处理失败的资源列表。
        # 该列表元素来源于输入参数中的Targets，因此格式和入参中的Targets保持一致
        # @type Targets: Array

        attr_accessor :Reason, :Targets

        def initialize(reason=nil, targets=nil)
          @Reason = reason
          @Targets = targets
        end

        def deserialize(params)
          @Reason = params['Reason']
          @Targets = params['Targets']
        end
      end

      # 刷新预热附带的头部信息
      class Header < TencentCloud::Common::AbstractModel
        # @param Name: HTTP头部
        # @type Name: String
        # @param Value: HTTP头部值
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

      # 计费资源
      class Resource < TencentCloud::Common::AbstractModel
        # @param Id: 资源 ID。
        # @type Id: String
        # @param PayMode: 付费模式，取值有：
        # <li>0：后付费。</li>
        # @type PayMode: Integer
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param EnableTime: 生效时间。
        # @type EnableTime: String
        # @param ExpireTime: 失效时间。
        # @type ExpireTime: String
        # @param Status: 套餐状态，取值有：
        # <li>normal：正常；</li>
        # <li>isolated：隔离；</li>
        # <li>destroyed：销毁。</li>
        # @type Status: String
        # @param Sv: 询价参数。
        # @type Sv: Array
        # @param AutoRenewFlag: 是否自动续费，取值有：
        # <li>0：默认状态；</li>
        # <li>1：自动续费；</li>
        # <li>2：不自动续费。</li>
        # @type AutoRenewFlag: Integer
        # @param PlanId: 套餐关联资源 ID。
        # @type PlanId: String
        # @param Area: 地域，取值有：
        # <li>mainland：国内；</li>
        # <li>overseas：海外。</li>
        # @type Area: String

        attr_accessor :Id, :PayMode, :CreateTime, :EnableTime, :ExpireTime, :Status, :Sv, :AutoRenewFlag, :PlanId, :Area

        def initialize(id=nil, paymode=nil, createtime=nil, enabletime=nil, expiretime=nil, status=nil, sv=nil, autorenewflag=nil, planid=nil, area=nil)
          @Id = id
          @PayMode = paymode
          @CreateTime = createtime
          @EnableTime = enabletime
          @ExpireTime = expiretime
          @Status = status
          @Sv = sv
          @AutoRenewFlag = autorenewflag
          @PlanId = planid
          @Area = area
        end

        def deserialize(params)
          @Id = params['Id']
          @PayMode = params['PayMode']
          @CreateTime = params['CreateTime']
          @EnableTime = params['EnableTime']
          @ExpireTime = params['ExpireTime']
          @Status = params['Status']
          unless params['Sv'].nil?
            @Sv = []
            params['Sv'].each do |i|
              sv_tmp = Sv.new
              sv_tmp.deserialize(i)
              @Sv << sv_tmp
            end
          end
          @AutoRenewFlag = params['AutoRenewFlag']
          @PlanId = params['PlanId']
          @Area = params['Area']
        end
      end

      # 询价参数
      class Sv < TencentCloud::Common::AbstractModel
        # @param Key: 询价参数键。
        # @type Key: String
        # @param Value: 询价参数值。
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

      # 标签配置
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagKey: String
        # @param TagValue: 标签值
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 内容管理任务结果
      class Task < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID
        # @type JobId: String
        # @param Status: 状态
        # @type Status: String
        # @param Target: 资源
        # @type Target: String
        # @param Type: 任务类型
        # @type Type: String
        # @param CreateTime: 任务创建时间
        # @type CreateTime: String
        # @param UpdateTime: 任务完成时间
        # @type UpdateTime: String

        attr_accessor :JobId, :Status, :Target, :Type, :CreateTime, :UpdateTime

        def initialize(jobid=nil, status=nil, target=nil, type=nil, createtime=nil, updatetime=nil)
          @JobId = jobid
          @Status = status
          @Target = target
          @Type = type
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @JobId = params['JobId']
          @Status = params['Status']
          @Target = params['Target']
          @Type = params['Type']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 站点信息
      class Zone < TencentCloud::Common::AbstractModel
        # @param Id: 站点ID。
        # @type Id: String
        # @param Name: 站点名称。
        # @type Name: String
        # @param OriginalNameServers: 站点当前使用的 NS 列表。
        # @type OriginalNameServers: Array
        # @param NameServers: 腾讯云分配的 NS 列表。
        # @type NameServers: Array
        # @param Status: 站点状态，取值有：
        # <li> active：NS 已切换； </li>
        # <li> pending：NS 未切换；</li>
        # <li> moved：NS 已切走；</li>
        # <li> deactivated：被封禁。 </li>
        # @type Status: String
        # @param Type: 站点接入方式，取值有
        # <li> full：NS 接入； </li>
        # <li> partial：CNAME 接入。</li>
        # @type Type: String
        # @param Paused: 站点是否关闭。
        # @type Paused: Boolean
        # @param CnameSpeedUp: 是否开启cname加速，取值有：
        # <li> enabled：开启；</li>
        # <li> disabled：关闭。</li>
        # @type CnameSpeedUp: String
        # @param CnameStatus: cname 接入状态，取值有：
        # <li> finished：站点已验证；</li>
        # <li> pending：站点验证中。</li>
        # @type CnameStatus: String
        # @param Tags: 资源标签列表。
        # @type Tags: Array
        # @param Resources: 计费资源列表。
        # @type Resources: Array
        # @param CreatedOn: 站点创建时间。
        # @type CreatedOn: String
        # @param ModifiedOn: 站点修改时间。
        # @type ModifiedOn: String
        # @param Area: 站点接入地域，取值为：
        # <li> global：全球；</li>
        # <li> mainland：中国大陆；</li>
        # <li> overseas：境外区域。</li>
        # @type Area: String

        attr_accessor :Id, :Name, :OriginalNameServers, :NameServers, :Status, :Type, :Paused, :CnameSpeedUp, :CnameStatus, :Tags, :Resources, :CreatedOn, :ModifiedOn, :Area

        def initialize(id=nil, name=nil, originalnameservers=nil, nameservers=nil, status=nil, type=nil, paused=nil, cnamespeedup=nil, cnamestatus=nil, tags=nil, resources=nil, createdon=nil, modifiedon=nil, area=nil)
          @Id = id
          @Name = name
          @OriginalNameServers = originalnameservers
          @NameServers = nameservers
          @Status = status
          @Type = type
          @Paused = paused
          @CnameSpeedUp = cnamespeedup
          @CnameStatus = cnamestatus
          @Tags = tags
          @Resources = resources
          @CreatedOn = createdon
          @ModifiedOn = modifiedon
          @Area = area
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @OriginalNameServers = params['OriginalNameServers']
          @NameServers = params['NameServers']
          @Status = params['Status']
          @Type = params['Type']
          @Paused = params['Paused']
          @CnameSpeedUp = params['CnameSpeedUp']
          @CnameStatus = params['CnameStatus']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          unless params['Resources'].nil?
            @Resources = []
            params['Resources'].each do |i|
              resource_tmp = Resource.new
              resource_tmp.deserialize(i)
              @Resources << resource_tmp
            end
          end
          @CreatedOn = params['CreatedOn']
          @ModifiedOn = params['ModifiedOn']
          @Area = params['Area']
        end
      end

      # 站点查询过滤条件
      class ZoneFilter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤字段名，支持的列表如下：
        # <li> name：站点名；</li>
        # <li> status：站点状态；</li>
        # <li> tagKey：标签键；</li>
        # <li> tagValue: 标签值。</li>
        # @type Name: String
        # @param Values: 过滤字段值。
        # @type Values: Array
        # @param Fuzzy: 是否启用模糊查询，仅支持过滤字段名为name。模糊查询时，Values长度最大为1。默认为false。
        # @type Fuzzy: Boolean

        attr_accessor :Name, :Values, :Fuzzy

        def initialize(name=nil, values=nil, fuzzy=nil)
          @Name = name
          @Values = values
          @Fuzzy = fuzzy
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
          @Fuzzy = params['Fuzzy']
        end
      end

    end
  end
end

