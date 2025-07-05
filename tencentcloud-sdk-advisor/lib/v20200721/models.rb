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
  module Advisor
    module V20200721
      # 评估项警告条件
      class Conditions < TencentCloud::Common::AbstractModel
        # @param ConditionId: 警告条件ID
        # @type ConditionId: Integer
        # @param Level: 警告级别，2:中风险，3:高风险
        # @type Level: Integer
        # @param LevelDesc: 警告级别描述
        # @type LevelDesc: String
        # @param Desc: 警告条件描述
        # @type Desc: String

        attr_accessor :ConditionId, :Level, :LevelDesc, :Desc

        def initialize(conditionid=nil, level=nil, leveldesc=nil, desc=nil)
          @ConditionId = conditionid
          @Level = level
          @LevelDesc = leveldesc
          @Desc = desc
        end

        def deserialize(params)
          @ConditionId = params['ConditionId']
          @Level = params['Level']
          @LevelDesc = params['LevelDesc']
          @Desc = params['Desc']
        end
      end

      # DescribeStrategies请求参数结构体
      class DescribeStrategiesRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeStrategies返回参数结构体
      class DescribeStrategiesResponse < TencentCloud::Common::AbstractModel
        # @param Strategies: 评估项列表
        # @type Strategies: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Strategies, :RequestId

        def initialize(strategies=nil, requestid=nil)
          @Strategies = strategies
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Strategies'].nil?
            @Strategies = []
            params['Strategies'].each do |i|
              strategies_tmp = Strategies.new
              strategies_tmp.deserialize(i)
              @Strategies << strategies_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskStrategyRisks请求参数结构体
      class DescribeTaskStrategyRisksRequest < TencentCloud::Common::AbstractModel
        # @param StrategyId: 评估项ID
        # @type StrategyId: Integer
        # @param Limit: 返回数量,默认值为100,最大值为200
        # @type Limit: Integer
        # @param Offset: 偏移量,默认0
        # @type Offset: Integer
        # @param Env: 环境
        # @type Env: String
        # @param TaskType: 任务类型
        # @type TaskType: String

        attr_accessor :StrategyId, :Limit, :Offset, :Env, :TaskType

        def initialize(strategyid=nil, limit=nil, offset=nil, env=nil, tasktype=nil)
          @StrategyId = strategyid
          @Limit = limit
          @Offset = offset
          @Env = env
          @TaskType = tasktype
        end

        def deserialize(params)
          @StrategyId = params['StrategyId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Env = params['Env']
          @TaskType = params['TaskType']
        end
      end

      # DescribeTaskStrategyRisks返回参数结构体
      class DescribeTaskStrategyRisksResponse < TencentCloud::Common::AbstractModel
        # @param RiskFieldsDesc: 根据此配置，匹配风险实例列表（Risks）对应字段，例如:
        # {"Response":{"RequestId":"111","RiskFieldsDesc":[{"Field":"InstanceId","FieldName":"ID","FieldType":"string","FieldDict":{}},{"Field":"InstanceName","FieldName":"名称","FieldType":"string","FieldDict":{}},{"Field":"InstanceState","FieldName":"状态","FieldType":"string","FieldDict":{"LAUNCH_FAILED":"创建失败","PENDING":"创建中","REBOOTING":"重启中","RUNNING":"运行中","SHUTDOWN":"停止待销毁","STARTING":"开机中","STOPPED":"关机","STOPPING":"关机中","TERMINATING":"销毁中"}},{"Field":"Zone","FieldName":"可用区","FieldType":"string","FieldDict":{}},{"Field":"PrivateIPAddresses","FieldName":"IP地址(内)","FieldType":"stringSlice","FieldDict":{}},{"Field":"PublicIPAddresses","FieldName":"IP地址(公)","FieldType":"stringSlice","FieldDict":{}},{"Field":"Region","FieldName":"地域","FieldType":"string","FieldDict":{}},{"Field":"Tags","FieldName":"标签","FieldType":"tags","FieldDict":{}}],"RiskTotalCount":3,"Risks":"[{\"InstanceId\":\"ins-xxx1\",\"InstanceName\":\"xxx1\",\"InstanceState\":\"RUNNING\",\"PrivateIPAddresses\":[\"1.17.64.2\"],\"PublicIPAddresses\":null,\"Region\":\"ap-shanghai\",\"Tags\":null,\"Zone\":\"ap-shanghai-2\"},{\"InstanceId\":\"ins-xxx2\",\"InstanceName\":\"xxx2\",\"InstanceState\":\"RUNNING\",\"PrivateIPAddresses\":[\"1.17.64.11\"],\"PublicIPAddresses\":null,\"Region\":\"ap-shanghai\",\"Tags\":null,\"Zone\":\"ap-shanghai-2\"}]","StrategyId":9}}
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskFieldsDesc: Array
        # @param StrategyId: 评估项ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrategyId: Integer
        # @param RiskTotalCount: 风险实例个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskTotalCount: Integer
        # @param Risks: 风险实例详情列表，需要json decode
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Risks: String
        # @param ResourceCount: 巡检资源数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RiskFieldsDesc, :StrategyId, :RiskTotalCount, :Risks, :ResourceCount, :RequestId

        def initialize(riskfieldsdesc=nil, strategyid=nil, risktotalcount=nil, risks=nil, resourcecount=nil, requestid=nil)
          @RiskFieldsDesc = riskfieldsdesc
          @StrategyId = strategyid
          @RiskTotalCount = risktotalcount
          @Risks = risks
          @ResourceCount = resourcecount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RiskFieldsDesc'].nil?
            @RiskFieldsDesc = []
            params['RiskFieldsDesc'].each do |i|
              riskfieldsdesc_tmp = RiskFieldsDesc.new
              riskfieldsdesc_tmp.deserialize(i)
              @RiskFieldsDesc << riskfieldsdesc_tmp
            end
          end
          @StrategyId = params['StrategyId']
          @RiskTotalCount = params['RiskTotalCount']
          @Risks = params['Risks']
          @ResourceCount = params['ResourceCount']
          @RequestId = params['RequestId']
        end
      end

      # 键值对
      class KeyValue < TencentCloud::Common::AbstractModel
        # @param Key: 键名
        # @type Key: String
        # @param Value: 键名对应值
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

      # 风险实例字段描述
      class RiskFieldsDesc < TencentCloud::Common::AbstractModel
        # @param Field: 字段ID
        # @type Field: String
        # @param FieldName: 字段名称
        # @type FieldName: String
        # @param FieldType: 字段类型,
        # string: 字符串类型，例如"aa"
        # int: 整形，例如 111
        # stringSlice : 字符串数组类型，例如["a", "b"]
        # tags: 标签类型, 例如: [{"Key":"kkk","Value":"vvv"},{"Key":"kkk2","Value":"vvv2"}]
        # @type FieldType: String
        # @param FieldDict: 字段值对应字典
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FieldDict: Array

        attr_accessor :Field, :FieldName, :FieldType, :FieldDict

        def initialize(field=nil, fieldname=nil, fieldtype=nil, fielddict=nil)
          @Field = field
          @FieldName = fieldname
          @FieldType = fieldtype
          @FieldDict = fielddict
        end

        def deserialize(params)
          @Field = params['Field']
          @FieldName = params['FieldName']
          @FieldType = params['FieldType']
          unless params['FieldDict'].nil?
            @FieldDict = []
            params['FieldDict'].each do |i|
              keyvalue_tmp = KeyValue.new
              keyvalue_tmp.deserialize(i)
              @FieldDict << keyvalue_tmp
            end
          end
        end
      end

      # 评估项信息
      class Strategies < TencentCloud::Common::AbstractModel
        # @param StrategyId: 评估项ID
        # @type StrategyId: Integer
        # @param Name: 评估项名称
        # @type Name: String
        # @param Desc: 评估项描述
        # @type Desc: String
        # @param Product: 评估项对应产品ID
        # @type Product: String
        # @param ProductDesc: 评估项对应产品名称
        # @type ProductDesc: String
        # @param Repair: 评估项优化建议
        # @type Repair: String
        # @param GroupId: 评估项类别ID
        # @type GroupId: Integer
        # @param GroupName: 评估项类别名称
        # @type GroupName: String
        # @param Conditions: 评估项风险列表
        # @type Conditions: Array

        attr_accessor :StrategyId, :Name, :Desc, :Product, :ProductDesc, :Repair, :GroupId, :GroupName, :Conditions

        def initialize(strategyid=nil, name=nil, desc=nil, product=nil, productdesc=nil, repair=nil, groupid=nil, groupname=nil, conditions=nil)
          @StrategyId = strategyid
          @Name = name
          @Desc = desc
          @Product = product
          @ProductDesc = productdesc
          @Repair = repair
          @GroupId = groupid
          @GroupName = groupname
          @Conditions = conditions
        end

        def deserialize(params)
          @StrategyId = params['StrategyId']
          @Name = params['Name']
          @Desc = params['Desc']
          @Product = params['Product']
          @ProductDesc = params['ProductDesc']
          @Repair = params['Repair']
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          unless params['Conditions'].nil?
            @Conditions = []
            params['Conditions'].each do |i|
              conditions_tmp = Conditions.new
              conditions_tmp.deserialize(i)
              @Conditions << conditions_tmp
            end
          end
        end
      end

    end
  end
end

