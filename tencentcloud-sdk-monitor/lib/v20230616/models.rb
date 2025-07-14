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
  module Monitor
    module V20230616
      # DescribeAlarmNotifyHistories请求参数结构体
      class DescribeAlarmNotifyHistoriesRequest < TencentCloud::Common::AbstractModel
        # @param MonitorType: 监控类型
        # @type MonitorType: String
        # @param QueryBaseTime: 起始时间点，unix秒级时间戳
        # @type QueryBaseTime: Integer
        # @param QueryBeforeSeconds: 从 QueryBaseTime 开始，需要查询往前多久的时间，单位秒
        # @type QueryBeforeSeconds: Integer
        # @param PageParams: 分页参数
        # @type PageParams: :class:`Tencentcloud::Monitor.v20230616.models.PageByNoParams`
        # @param Namespace: 当监控类型为 MT_QCE 时候需要填写，归属的命名空间
        # @type Namespace: String
        # @param ModelName: 当监控类型为 MT_QCE 时候需要填写， 告警策略类型
        # @type ModelName: String
        # @param PolicyId: 查询某个策略的通知历史
        # @type PolicyId: String

        attr_accessor :MonitorType, :QueryBaseTime, :QueryBeforeSeconds, :PageParams, :Namespace, :ModelName, :PolicyId

        def initialize(monitortype=nil, querybasetime=nil, querybeforeseconds=nil, pageparams=nil, namespace=nil, modelname=nil, policyid=nil)
          @MonitorType = monitortype
          @QueryBaseTime = querybasetime
          @QueryBeforeSeconds = querybeforeseconds
          @PageParams = pageparams
          @Namespace = namespace
          @ModelName = modelname
          @PolicyId = policyid
        end

        def deserialize(params)
          @MonitorType = params['MonitorType']
          @QueryBaseTime = params['QueryBaseTime']
          @QueryBeforeSeconds = params['QueryBeforeSeconds']
          unless params['PageParams'].nil?
            @PageParams = PageByNoParams.new
            @PageParams.deserialize(params['PageParams'])
          end
          @Namespace = params['Namespace']
          @ModelName = params['ModelName']
          @PolicyId = params['PolicyId']
        end
      end

      # DescribeAlarmNotifyHistories返回参数结构体
      class DescribeAlarmNotifyHistoriesResponse < TencentCloud::Common::AbstractModel
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

      # 分页请求参数
      class PageByNoParams < TencentCloud::Common::AbstractModel
        # @param PerPage: 每个分页的数量是多少
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PerPage: Integer
        # @param PageNo: 第几个分页，从1开始
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNo: String

        attr_accessor :PerPage, :PageNo

        def initialize(perpage=nil, pageno=nil)
          @PerPage = perpage
          @PageNo = pageno
        end

        def deserialize(params)
          @PerPage = params['PerPage']
          @PageNo = params['PageNo']
        end
      end

    end
  end
end

