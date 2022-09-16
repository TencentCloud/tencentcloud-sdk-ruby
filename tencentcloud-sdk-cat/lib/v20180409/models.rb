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
        # @param ProbeType: 测试类型，包含定时测试与即时测试
        # @type ProbeType: Integer
        # @param PluginSource: 插件类型
        # @type PluginSource: String
        # @param ClientNum: 客户端ID
        # @type ClientNum: String

        attr_accessor :BatchTasks, :TaskType, :Nodes, :Interval, :Parameters, :TaskCategory, :Cron, :Tag, :ProbeType, :PluginSource, :ClientNum
        
        def initialize(batchtasks=nil, tasktype=nil, nodes=nil, interval=nil, parameters=nil, taskcategory=nil, cron=nil, tag=nil, probetype=nil, pluginsource=nil, clientnum=nil)
          @BatchTasks = batchtasks
          @TaskType = tasktype
          @Nodes = nodes
          @Interval = interval
          @Parameters = parameters
          @TaskCategory = taskcategory
          @Cron = cron
          @Tag = tag
          @ProbeType = probetype
          @PluginSource = pluginsource
          @ClientNum = clientnum
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
          @ProbeType = params['ProbeType']
          @PluginSource = params['PluginSource']
          @ClientNum = params['ClientNum']
        end
      end

      # CreateProbeTasks返回参数结构体
      class CreateProbeTasksResponse < TencentCloud::Common::AbstractModel
        # @param TaskIDs: 任务ID列表
        # @type TaskIDs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskIDs, :RequestId
        
        def initialize(taskids=nil, requestid=nil)
          @TaskIDs = taskids
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskIDs = params['TaskIDs']
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

      # DescribeDetailedSingleProbeData请求参数结构体
      class DescribeDetailedSingleProbeDataRequest < TencentCloud::Common::AbstractModel
        # @param BeginTime: 开始时间戳（毫秒级）
        # @type BeginTime: Integer
        # @param EndTime: 结束时间戳（毫秒级）
        # @type EndTime: Integer
        # @param TaskType: 任务类型
        # AnalyzeTaskType_Network：网络质量
        # AnalyzeTaskType_Browse：页面性能
        # AnalyzeTaskType_UploadDownload：文件传输（含文件上传、文件下载）
        # AnalyzeTaskType_Transport：端口性能
        # AnalyzeTaskType_MediaStream：音视频体验
        # @type TaskType: String
        # @param SortField: 待排序字段
        # 可以填写 ProbeTime 拨测时间排序
        # 也可填写SelectedFields 中的选中字段
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

        # 这里实际按拨测结果中的运营商来填写即可

        # 电信：中国电信
        # 移动：中国移动
        # 联通：中国联通
        # @type Operators: Array
        # @param Districts: 拨测点地区

        # 这里实际按拨测结果中的地区来填写即可

        # 国内一般是省级单位，如广东、广西、中国香港、新疆；直辖市则填北京、上海

        # 境外一般是国家名，如澳大利亚、新加坡
        # @type Districts: Array
        # @param ErrorTypes: 错误类型
        # @type ErrorTypes: Array
        # @param City: 城市
        # 这里实际按拨测结果中的城市来填写即可

        # 示例：

        # 深圳市
        # 武汉市
        # 首尔
        # 多伦多
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

      # DescribeNodes请求参数结构体
      class DescribeNodesRequest < TencentCloud::Common::AbstractModel
        # @param NodeType: 节点类型
        # <li> 1 = IDC </li>
        # <li> 2 = LastMile </li>
        # <li> 3 = Mobile </li>
        # @type NodeType: Integer
        # @param Location: 节点区域
        # <li> 1 = 中国大陆 </li>
        # <li> 2 = 港澳台 </li>
        # <li> 3 = 境外</li>
        # @type Location: Integer
        # @param IsIPv6: 是否IPv6
        # @type IsIPv6: Boolean
        # @param NodeName: 名字模糊搜索
        # @type NodeName: String
        # @param PayMode: 付费模式
        # <li>1 = 试用版本</li>
        # <li> 2 = 付费版本 </li>
        # @type PayMode: Integer
        # @param TaskType: 任务类型
        # <li>1 = 页面性能</li>
        # <li>2 = 文件上传</li>
        # <li>3 = 文件下载</li>
        # <li>4 = 端口性能</li>
        # <li>5 = 网络质量</li>
        # <li>6 = 音视频体验</li>
        # @type TaskType: Integer

        attr_accessor :NodeType, :Location, :IsIPv6, :NodeName, :PayMode, :TaskType
        
        def initialize(nodetype=nil, location=nil, isipv6=nil, nodename=nil, paymode=nil, tasktype=nil)
          @NodeType = nodetype
          @Location = location
          @IsIPv6 = isipv6
          @NodeName = nodename
          @PayMode = paymode
          @TaskType = tasktype
        end

        def deserialize(params)
          @NodeType = params['NodeType']
          @Location = params['Location']
          @IsIPv6 = params['IsIPv6']
          @NodeName = params['NodeName']
          @PayMode = params['PayMode']
          @TaskType = params['TaskType']
        end
      end

      # DescribeNodes返回参数结构体
      class DescribeNodesResponse < TencentCloud::Common::AbstractModel
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
              nodedefineext_tmp = NodeDefineExt.new
              nodedefineext_tmp.deserialize(i)
              @NodeSet << nodedefineext_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProbeMetricData请求参数结构体
      class DescribeProbeMetricDataRequest < TencentCloud::Common::AbstractModel
        # @param AnalyzeTaskType: 分析任务类型，支持以下几种类型：
        # AnalyzeTaskType_Network：网络质量
        # AnalyzeTaskType_Browse：页面性能
        # AnalyzeTaskType_Transport：端口性能
        # AnalyzeTaskType_UploadDownload：文件传输
        # AnalyzeTaskType_MediaStream：音视频体验
        # @type AnalyzeTaskType: String
        # @param MetricType: 指标类型，指标查询默认传gauge
        # @type MetricType: String
        # @param Field: 指标详细字段，可以传递传具体的指标也可以对指标进行聚合查询例如："avg(ping_time)"代表整体时延(ms)
        # @type Field: String
        # @param Filter: 过滤条件可以传单个过滤条件也可以拼接多个参数
        # @type Filter: String
        # @param GroupBy: 聚合时间, 1m、1d、30d 等等
        # @type GroupBy: String
        # @param Filters: 多条件过滤，支持多个过滤条件组合查询
        # 例如：[""host" = 'www.test.com'", "time >= now()-1h"]
        # @type Filters: Array

        attr_accessor :AnalyzeTaskType, :MetricType, :Field, :Filter, :GroupBy, :Filters
        
        def initialize(analyzetasktype=nil, metrictype=nil, field=nil, filter=nil, groupby=nil, filters=nil)
          @AnalyzeTaskType = analyzetasktype
          @MetricType = metrictype
          @Field = field
          @Filter = filter
          @GroupBy = groupby
          @Filters = filters
        end

        def deserialize(params)
          @AnalyzeTaskType = params['AnalyzeTaskType']
          @MetricType = params['MetricType']
          @Field = params['Field']
          @Filter = params['Filter']
          @GroupBy = params['GroupBy']
          @Filters = params['Filters']
        end
      end

      # DescribeProbeMetricData返回参数结构体
      class DescribeProbeMetricDataResponse < TencentCloud::Common::AbstractModel
        # @param MetricSet: 返回指标 JSON 序列化后的字符串,具体如下所示：
        # "[{\"name\":\"task_navigate_request_gauge\",\"columns\":[\"time\",\"avg(first_screen_time) / 1000\"],\"values\":[[1641571200,6.756600000000001]],\"tags\":null}]"
        # @type MetricSet: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MetricSet, :RequestId
        
        def initialize(metricset=nil, requestid=nil)
          @MetricSet = metricset
          @RequestId = requestid
        end

        def deserialize(params)
          @MetricSet = params['MetricSet']
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
        # <li>1 = 创建中</li>
        # <li> 2 = 运行中 </li>
        # <li> 3 = 运行异常 </li>
        # <li> 4 = 暂停中 </li>
        # <li> 5 = 暂停异常 </li>
        # <li> 6 = 任务暂停 </li>
        # <li> 7 = 任务删除中 </li>
        # <li> 8 = 任务删除异常 </li>
        # <li> 9 = 任务删除</li>
        # <li> 10 = 定时任务暂停中 </li>
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
        # <li>1 = 页面浏览</li>
        # <li> 2 =文件上传 </li>
        # <li> 3 = 文件下载</li>
        # <li> 4 = 端口性能 </li>
        # <li> 5 = 网络质量 </li>
        # <li> 6 =流媒体 </li>

        # 即使拨测只支持页面浏览，网络质量，文件下载
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
        # @param CodeType: 节点类型  如果为base 则为可用性拨测点，为空则为高级拨测点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeType: String
        # @param NodeDefineStatus: 节点状态：1-运行,2-下线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeDefineStatus: Integer

        attr_accessor :Name, :Code, :Type, :NetService, :District, :City, :IPType, :Location, :CodeType, :NodeDefineStatus
        
        def initialize(name=nil, code=nil, type=nil, netservice=nil, district=nil, city=nil, iptype=nil, location=nil, codetype=nil, nodedefinestatus=nil)
          @Name = name
          @Code = code
          @Type = type
          @NetService = netservice
          @District = district
          @City = city
          @IPType = iptype
          @Location = location
          @CodeType = codetype
          @NodeDefineStatus = nodedefinestatus
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
          @CodeType = params['CodeType']
          @NodeDefineStatus = params['NodeDefineStatus']
        end
      end

      # 探测节点
      class NodeDefineExt < TencentCloud::Common::AbstractModel
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
        # <li> 3 = 境外 </li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Location: Integer
        # @param CodeType: 节点类型  如果为base 则为可用性拨测点，为空则为高级拨测点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeType: String
        # @param TaskTypes: 节点支持的任务类型。1: 页面性能 2: 文件上传 3: 文件下载 4: 端口性能 5: 网络质量 6: 音视频体验
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypes: Array

        attr_accessor :Name, :Code, :Type, :NetService, :District, :City, :IPType, :Location, :CodeType, :TaskTypes
        
        def initialize(name=nil, code=nil, type=nil, netservice=nil, district=nil, city=nil, iptype=nil, location=nil, codetype=nil, tasktypes=nil)
          @Name = name
          @Code = code
          @Type = type
          @NetService = netservice
          @District = district
          @City = city
          @IPType = iptype
          @Location = location
          @CodeType = codetype
          @TaskTypes = tasktypes
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
          @CodeType = params['CodeType']
          @TaskTypes = params['TaskTypes']
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

      # 拨测任务基础配置
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
        # @param ResourceIDs: 预付费套餐id
        # 需要与taskId对应
        # @type ResourceIDs: Array

        attr_accessor :TaskIds, :Nodes, :Interval, :Parameters, :Cron, :ResourceIDs
        
        def initialize(taskids=nil, nodes=nil, interval=nil, parameters=nil, cron=nil, resourceids=nil)
          @TaskIds = taskids
          @Nodes = nodes
          @Interval = interval
          @Parameters = parameters
          @Cron = cron
          @ResourceIDs = resourceids
        end

        def deserialize(params)
          @TaskIds = params['TaskIds']
          @Nodes = params['Nodes']
          @Interval = params['Interval']
          @Parameters = params['Parameters']
          @Cron = params['Cron']
          @ResourceIDs = params['ResourceIDs']
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

    end
  end
end

