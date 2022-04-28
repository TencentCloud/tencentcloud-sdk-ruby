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
  module Teo
    module V20220106
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
        # @param Targets: 内容，一行一个
        # @type Targets: Array
        # @param EncodeUrl: 若有编码转换，仅清除编码转换后匹配的资源
        # 若内容含有非 ASCII 字符集的字符，请打开 URL Encode 开关，编码转换（编码规则遵循 RFC3986）
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              task_tmp = Task.new
              task_tmp.deserialize(i)
              @Tasks << task_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 失败原因
      class FailReason < TencentCloud::Common::AbstractModel
        # @param Reason: 失败原因
        # @type Reason: String
        # @param Targets: 失败列表
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

    end
  end
end

