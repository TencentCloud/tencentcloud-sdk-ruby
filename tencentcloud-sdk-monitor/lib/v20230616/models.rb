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
  module Monitor
    module V20230616
      # 监控数据点
      class DataPoint < TencentCloud::Common::AbstractModel
        # @param Dimensions: 实例对象维度组合
        # @type Dimensions: Array
        # @param Timestamps: 时间戳数组，表示那些时间点有数据，缺失的时间戳，没有数据点，可以理解为掉点了
        # @type Timestamps: Array
        # @param Values: 监控值数组，该数组和Timestamps一一对应
        # @type Values: Array

        attr_accessor :Dimensions, :Timestamps, :Values

        def initialize(dimensions=nil, timestamps=nil, values=nil)
          @Dimensions = dimensions
          @Timestamps = timestamps
          @Values = values
        end

        def deserialize(params)
          unless params['Dimensions'].nil?
            @Dimensions = []
            params['Dimensions'].each do |i|
              dimension_tmp = Dimension.new
              dimension_tmp.deserialize(i)
              @Dimensions << dimension_tmp
            end
          end
          @Timestamps = params['Timestamps']
          @Values = params['Values']
        end
      end

      # 实例对象的维度组合
      class Dimension < TencentCloud::Common::AbstractModel
        # @param Name: 实例维度名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Value: 实例维度值
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 计算算子
      class Expr < TencentCloud::Common::AbstractModel
        # @param Function: 算子名称
        # @type Function: String
        # @param N: 算子入参值
        # @type N: Float

        attr_accessor :Function, :N

        def initialize(function=nil, n=nil)
          @Function = function
          @N = n
        end

        def deserialize(params)
          @Function = params['Function']
          @N = params['N']
        end
      end

      # GetMonitorData请求参数结构体
      class GetMonitorDataRequest < TencentCloud::Common::AbstractModel
        # @param Namespace: 命名空间，如QCE/CVM。各个云产品的详细命名空间说明请参阅各个产品[监控指标](https://cloud.tencent.com/document/product/248/6140)文档
        # @type Namespace: String
        # @param MetricName: 指标名称，如CPUUsage，仅支持单指标拉取。各个云产品的详细指标说明请参阅各个产品[监控指标](https://cloud.tencent.com/document/product/248/6140)文档，对应的指标英文名即为MetricName
        # @type MetricName: String
        # @param Instances: 实例对象的维度组合，格式为key-value键值对形式的集合。不同类型的实例字段完全不同，如CVM为[{"Name":"InstanceId","Value":"ins-j0hk02zo"}]，Ckafka为[{"Name":"instanceId","Value":"ckafka-l49k54dd"}]，COS为[{"Name":"appid","Value":"1258344699"},{"Name":"bucket","Value":"rig-1258344699"}]。各个云产品的维度请参阅各个产品[监控指标](https://cloud.tencent.com/document/product/248/6140)文档，对应的维度列即为维度组合的key，value为key对应的值。单请求最多支持批量拉取10个实例的监控数据。
        # @type Instances: Array
        # @param Period: 监控统计周期，如60。默认为取值为300，单位为s。每个指标支持的统计周期不一定相同，各个云产品支持的统计周期请参阅各个产品[监控指标](https://cloud.tencent.com/document/product/248/6140)文档，对应的统计周期列即为支持的统计周期。单请求的数据点数限制为1440个。
        # @type Period: Integer
        # @param StartTime: 起始时间，如2018-09-22T19:51:23+08:00
        # @type StartTime: String
        # @param EndTime: 结束时间，如2018-09-22T20:51:23+08:00，默认为当前时间。 EndTime不能小于StartTime
        # @type EndTime: String
        # @param Expr: 计算算子
        # @type Expr: :class:`Tencentcloud::Monitor.v20230616.models.Expr`

        attr_accessor :Namespace, :MetricName, :Instances, :Period, :StartTime, :EndTime, :Expr

        def initialize(namespace=nil, metricname=nil, instances=nil, period=nil, starttime=nil, endtime=nil, expr=nil)
          @Namespace = namespace
          @MetricName = metricname
          @Instances = instances
          @Period = period
          @StartTime = starttime
          @EndTime = endtime
          @Expr = expr
        end

        def deserialize(params)
          @Namespace = params['Namespace']
          @MetricName = params['MetricName']
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              instance_tmp = Instance.new
              instance_tmp.deserialize(i)
              @Instances << instance_tmp
            end
          end
          @Period = params['Period']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          unless params['Expr'].nil?
            @Expr = Expr.new
            @Expr.deserialize(params['Expr'])
          end
        end
      end

      # GetMonitorData返回参数结构体
      class GetMonitorDataResponse < TencentCloud::Common::AbstractModel
        # @param Period: 统计周期
        # @type Period: Integer
        # @param MetricName: 指标名
        # @type MetricName: String
        # @param DataPoints: 数据点数组
        # @type DataPoints: Array
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Msg: 返回信息
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Period, :MetricName, :DataPoints, :StartTime, :EndTime, :Msg, :RequestId

        def initialize(period=nil, metricname=nil, datapoints=nil, starttime=nil, endtime=nil, msg=nil, requestid=nil)
          @Period = period
          @MetricName = metricname
          @DataPoints = datapoints
          @StartTime = starttime
          @EndTime = endtime
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Period = params['Period']
          @MetricName = params['MetricName']
          unless params['DataPoints'].nil?
            @DataPoints = []
            params['DataPoints'].each do |i|
              datapoint_tmp = DataPoint.new
              datapoint_tmp.deserialize(i)
              @DataPoints << datapoint_tmp
            end
          end
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # 实例维度组合数组
      class Instance < TencentCloud::Common::AbstractModel
        # @param Dimensions: 实例的维度组合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Dimensions: Array

        attr_accessor :Dimensions

        def initialize(dimensions=nil)
          @Dimensions = dimensions
        end

        def deserialize(params)
          unless params['Dimensions'].nil?
            @Dimensions = []
            params['Dimensions'].each do |i|
              dimension_tmp = Dimension.new
              dimension_tmp.deserialize(i)
              @Dimensions << dimension_tmp
            end
          end
        end
      end

    end
  end
end

