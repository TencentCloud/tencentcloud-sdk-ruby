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
  module Eb
    module V20210416
      # APIGWParams描述
      class APIGWParams < TencentCloud::Common::AbstractModel
        # @param Protocol: HTTPS
        # @type Protocol: String
        # @param Method: POST
        # @type Method: String

        attr_accessor :Protocol, :Method
        
        def initialize(protocol=nil, method=nil)
          @Protocol = protocol
          @Method = method
        end

        def deserialize(params)
          @Protocol = params['Protocol']
          @Method = params['Method']
        end
      end

      # CheckRule请求参数结构体
      class CheckRuleRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # CheckRule返回参数结构体
      class CheckRuleResponse < TencentCloud::Common::AbstractModel
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

      # CheckTransformation请求参数结构体
      class CheckTransformationRequest < TencentCloud::Common::AbstractModel
        # @param Input: 待处理的json字符串
        # @type Input: String
        # @param Transformations: 一个转换规则列表
        # @type Transformations: Array

        attr_accessor :Input, :Transformations
        
        def initialize(input=nil, transformations=nil)
          @Input = input
          @Transformations = transformations
        end

        def deserialize(params)
          @Input = params['Input']
          unless params['Transformations'].nil?
            @Transformations = []
            params['Transformations'].each do |i|
              transformation_tmp = Transformation.new
              transformation_tmp.deserialize(i)
              @Transformations << transformation_tmp
            end
          end
        end
      end

      # CheckTransformation返回参数结构体
      class CheckTransformationResponse < TencentCloud::Common::AbstractModel
        # @param Output: 经过Transformations处理之后的数据
        # @type Output: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Output, :RequestId
        
        def initialize(output=nil, requestid=nil)
          @Output = output
          @RequestId = requestid
        end

        def deserialize(params)
          @Output = params['Output']
          @RequestId = params['RequestId']
        end
      end

      # 用来描述需要投递到kafka topic的参数
      class CkafkaDeliveryParams < TencentCloud::Common::AbstractModel
        # @param TopicName: ckafka topic name
        # @type TopicName: String
        # @param ResourceDescription: ckafka资源qcs六段式
        # @type ResourceDescription: String

        attr_accessor :TopicName, :ResourceDescription
        
        def initialize(topicname=nil, resourcedescription=nil)
          @TopicName = topicname
          @ResourceDescription = resourcedescription
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @ResourceDescription = params['ResourceDescription']
        end
      end

      # Ckafka 连接器参数
      class CkafkaParams < TencentCloud::Common::AbstractModel
        # @param Offset: kafka offset
        # @type Offset: String
        # @param TopicName: ckafka  topic
        # @type TopicName: String

        attr_accessor :Offset, :TopicName
        
        def initialize(offset=nil, topicname=nil)
          @Offset = offset
          @TopicName = topicname
        end

        def deserialize(params)
          @Offset = params['Offset']
          @TopicName = params['TopicName']
        end
      end

      # 用来描述ckafka投递目标
      class CkafkaTargetParams < TencentCloud::Common::AbstractModel
        # @param TopicName: 要投递到的ckafka topic
        # @type TopicName: String
        # @param RetryPolicy: 重试策略
        # @type RetryPolicy: :class:`Tencentcloud::Eb.v20210416.models.RetryPolicy`

        attr_accessor :TopicName, :RetryPolicy
        
        def initialize(topicname=nil, retrypolicy=nil)
          @TopicName = topicname
          @RetryPolicy = retrypolicy
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          unless params['RetryPolicy'].nil?
            @RetryPolicy = RetryPolicy.new
            @RetryPolicy.deserialize(params['RetryPolicy'])
          end
        end
      end

      # Connection信息
      class Connection < TencentCloud::Common::AbstractModel
        # @param Status: 状态
        # @type Status: String
        # @param ModTime: 更新时间
        # @type ModTime: String
        # @param Enable: 使能开关
        # @type Enable: Boolean
        # @param Description: 描述
        # @type Description: String
        # @param AddTime: 创建时间
        # @type AddTime: String
        # @param ConnectionId: 连接器ID
        # @type ConnectionId: String
        # @param EventBusId: 事件集ID
        # @type EventBusId: String
        # @param ConnectionDescription: 连接器描述
        # @type ConnectionDescription: :class:`Tencentcloud::Eb.v20210416.models.ConnectionDescription`
        # @param ConnectionName: 连接器名称
        # @type ConnectionName: String
        # @param Type: 类型
        # @type Type: String

        attr_accessor :Status, :ModTime, :Enable, :Description, :AddTime, :ConnectionId, :EventBusId, :ConnectionDescription, :ConnectionName, :Type
        
        def initialize(status=nil, modtime=nil, enable=nil, description=nil, addtime=nil, connectionid=nil, eventbusid=nil, connectiondescription=nil, connectionname=nil, type=nil)
          @Status = status
          @ModTime = modtime
          @Enable = enable
          @Description = description
          @AddTime = addtime
          @ConnectionId = connectionid
          @EventBusId = eventbusid
          @ConnectionDescription = connectiondescription
          @ConnectionName = connectionname
          @Type = type
        end

        def deserialize(params)
          @Status = params['Status']
          @ModTime = params['ModTime']
          @Enable = params['Enable']
          @Description = params['Description']
          @AddTime = params['AddTime']
          @ConnectionId = params['ConnectionId']
          @EventBusId = params['EventBusId']
          unless params['ConnectionDescription'].nil?
            @ConnectionDescription = ConnectionDescription.new
            @ConnectionDescription.deserialize(params['ConnectionDescription'])
          end
          @ConnectionName = params['ConnectionName']
          @Type = params['Type']
        end
      end

      # ConnectionDescription描述
      class ConnectionDescription < TencentCloud::Common::AbstractModel
        # @param ResourceDescription: 资源qcs六段式，更多参考 [资源六段式](https://cloud.tencent.com/document/product/598/10606)
        # @type ResourceDescription: String
        # @param APIGWParams: apigw参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type APIGWParams: :class:`Tencentcloud::Eb.v20210416.models.APIGWParams`
        # @param CkafkaParams: ckafka参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CkafkaParams: :class:`Tencentcloud::Eb.v20210416.models.CkafkaParams`

        attr_accessor :ResourceDescription, :APIGWParams, :CkafkaParams
        
        def initialize(resourcedescription=nil, apigwparams=nil, ckafkaparams=nil)
          @ResourceDescription = resourcedescription
          @APIGWParams = apigwparams
          @CkafkaParams = ckafkaparams
        end

        def deserialize(params)
          @ResourceDescription = params['ResourceDescription']
          unless params['APIGWParams'].nil?
            @APIGWParams = APIGWParams.new
            @APIGWParams.deserialize(params['APIGWParams'])
          end
          unless params['CkafkaParams'].nil?
            @CkafkaParams = CkafkaParams.new
            @CkafkaParams.deserialize(params['CkafkaParams'])
          end
        end
      end

      # CreateConnection请求参数结构体
      class CreateConnectionRequest < TencentCloud::Common::AbstractModel
        # @param ConnectionDescription: 连接器描述
        # @type ConnectionDescription: :class:`Tencentcloud::Eb.v20210416.models.ConnectionDescription`
        # @param EventBusId: 事件集ID
        # @type EventBusId: String
        # @param ConnectionName: 连接器名称
        # @type ConnectionName: String
        # @param Description: 描述
        # @type Description: String
        # @param Enable: 使能开关
        # @type Enable: Boolean
        # @param Type: 类型
        # @type Type: String

        attr_accessor :ConnectionDescription, :EventBusId, :ConnectionName, :Description, :Enable, :Type
        
        def initialize(connectiondescription=nil, eventbusid=nil, connectionname=nil, description=nil, enable=nil, type=nil)
          @ConnectionDescription = connectiondescription
          @EventBusId = eventbusid
          @ConnectionName = connectionname
          @Description = description
          @Enable = enable
          @Type = type
        end

        def deserialize(params)
          unless params['ConnectionDescription'].nil?
            @ConnectionDescription = ConnectionDescription.new
            @ConnectionDescription.deserialize(params['ConnectionDescription'])
          end
          @EventBusId = params['EventBusId']
          @ConnectionName = params['ConnectionName']
          @Description = params['Description']
          @Enable = params['Enable']
          @Type = params['Type']
        end
      end

      # CreateConnection返回参数结构体
      class CreateConnectionResponse < TencentCloud::Common::AbstractModel
        # @param ConnectionId: 连接器ID
        # @type ConnectionId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConnectionId, :RequestId
        
        def initialize(connectionid=nil, requestid=nil)
          @ConnectionId = connectionid
          @RequestId = requestid
        end

        def deserialize(params)
          @ConnectionId = params['ConnectionId']
          @RequestId = params['RequestId']
        end
      end

      # CreateEventBus请求参数结构体
      class CreateEventBusRequest < TencentCloud::Common::AbstractModel
        # @param EventBusName: 事件集名称，只能包含字母、数字、下划线、连字符，以字母开头，以数字或字母结尾，2~60个字符
        # @type EventBusName: String
        # @param Description: 事件集描述，不限字符类型，200字符描述以内
        # @type Description: String
        # @param SaveDays: EB存储时长
        # @type SaveDays: Integer

        attr_accessor :EventBusName, :Description, :SaveDays
        
        def initialize(eventbusname=nil, description=nil, savedays=nil)
          @EventBusName = eventbusname
          @Description = description
          @SaveDays = savedays
        end

        def deserialize(params)
          @EventBusName = params['EventBusName']
          @Description = params['Description']
          @SaveDays = params['SaveDays']
        end
      end

      # CreateEventBus返回参数结构体
      class CreateEventBusResponse < TencentCloud::Common::AbstractModel
        # @param EventBusId: 事件集ID
        # @type EventBusId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EventBusId, :RequestId
        
        def initialize(eventbusid=nil, requestid=nil)
          @EventBusId = eventbusid
          @RequestId = requestid
        end

        def deserialize(params)
          @EventBusId = params['EventBusId']
          @RequestId = params['RequestId']
        end
      end

      # CreateRule请求参数结构体
      class CreateRuleRequest < TencentCloud::Common::AbstractModel
        # @param EventPattern: 参考：[事件模式](https://cloud.tencent.com/document/product/1359/56084)
        # @type EventPattern: String
        # @param EventBusId: 事件集ID。
        # @type EventBusId: String
        # @param RuleName: 事件集名称，只能包含字母、数字、下划线、连字符，以字母开头，以数字或字母结尾，2~60个字符
        # @type RuleName: String
        # @param Enable: 使能开关。
        # @type Enable: Boolean
        # @param Description: 事件集描述，不限字符类型，200字符描述以内
        # @type Description: String

        attr_accessor :EventPattern, :EventBusId, :RuleName, :Enable, :Description
        
        def initialize(eventpattern=nil, eventbusid=nil, rulename=nil, enable=nil, description=nil)
          @EventPattern = eventpattern
          @EventBusId = eventbusid
          @RuleName = rulename
          @Enable = enable
          @Description = description
        end

        def deserialize(params)
          @EventPattern = params['EventPattern']
          @EventBusId = params['EventBusId']
          @RuleName = params['RuleName']
          @Enable = params['Enable']
          @Description = params['Description']
        end
      end

      # CreateRule返回参数结构体
      class CreateRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleId: 事件规则ID
        # @type RuleId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleId, :RequestId
        
        def initialize(ruleid=nil, requestid=nil)
          @RuleId = ruleid
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RequestId = params['RequestId']
        end
      end

      # CreateTarget请求参数结构体
      class CreateTargetRequest < TencentCloud::Common::AbstractModel
        # @param EventBusId: 事件集ID
        # @type EventBusId: String
        # @param Type: 目标类型
        # @type Type: String
        # @param TargetDescription: 目标描述
        # @type TargetDescription: :class:`Tencentcloud::Eb.v20210416.models.TargetDescription`
        # @param RuleId: 事件规则ID
        # @type RuleId: String

        attr_accessor :EventBusId, :Type, :TargetDescription, :RuleId
        
        def initialize(eventbusid=nil, type=nil, targetdescription=nil, ruleid=nil)
          @EventBusId = eventbusid
          @Type = type
          @TargetDescription = targetdescription
          @RuleId = ruleid
        end

        def deserialize(params)
          @EventBusId = params['EventBusId']
          @Type = params['Type']
          unless params['TargetDescription'].nil?
            @TargetDescription = TargetDescription.new
            @TargetDescription.deserialize(params['TargetDescription'])
          end
          @RuleId = params['RuleId']
        end
      end

      # CreateTarget返回参数结构体
      class CreateTargetResponse < TencentCloud::Common::AbstractModel
        # @param TargetId: 目标ID
        # @type TargetId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TargetId, :RequestId
        
        def initialize(targetid=nil, requestid=nil)
          @TargetId = targetid
          @RequestId = requestid
        end

        def deserialize(params)
          @TargetId = params['TargetId']
          @RequestId = params['RequestId']
        end
      end

      # CreateTransformation请求参数结构体
      class CreateTransformationRequest < TencentCloud::Common::AbstractModel
        # @param EventBusId: 事件总线 id
        # @type EventBusId: String
        # @param RuleId: 规则id
        # @type RuleId: String
        # @param Transformations: 一个转换规则列表，当前仅限定一个
        # @type Transformations: Array

        attr_accessor :EventBusId, :RuleId, :Transformations
        
        def initialize(eventbusid=nil, ruleid=nil, transformations=nil)
          @EventBusId = eventbusid
          @RuleId = ruleid
          @Transformations = transformations
        end

        def deserialize(params)
          @EventBusId = params['EventBusId']
          @RuleId = params['RuleId']
          unless params['Transformations'].nil?
            @Transformations = []
            params['Transformations'].each do |i|
              transformation_tmp = Transformation.new
              transformation_tmp.deserialize(i)
              @Transformations << transformation_tmp
            end
          end
        end
      end

      # CreateTransformation返回参数结构体
      class CreateTransformationResponse < TencentCloud::Common::AbstractModel
        # @param TransformationId: 生成的转换器id
        # @type TransformationId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TransformationId, :RequestId
        
        def initialize(transformationid=nil, requestid=nil)
          @TransformationId = transformationid
          @RequestId = requestid
        end

        def deserialize(params)
          @TransformationId = params['TransformationId']
          @RequestId = params['RequestId']
        end
      end

      # rule对应的dlq配置
      class DeadLetterConfig < TencentCloud::Common::AbstractModel
        # @param DisposeMethod: 支持dlq、丢弃、忽略错误继续传递三种模式, 分别对应: DLQ,DROP,IGNORE_ERROR
        # @type DisposeMethod: String
        # @param CkafkaDeliveryParams: 设置了DLQ方式后,此选项必填. 错误消息会被投递到对应的kafka topic中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CkafkaDeliveryParams: :class:`Tencentcloud::Eb.v20210416.models.CkafkaDeliveryParams`

        attr_accessor :DisposeMethod, :CkafkaDeliveryParams
        
        def initialize(disposemethod=nil, ckafkadeliveryparams=nil)
          @DisposeMethod = disposemethod
          @CkafkaDeliveryParams = ckafkadeliveryparams
        end

        def deserialize(params)
          @DisposeMethod = params['DisposeMethod']
          unless params['CkafkaDeliveryParams'].nil?
            @CkafkaDeliveryParams = CkafkaDeliveryParams.new
            @CkafkaDeliveryParams.deserialize(params['CkafkaDeliveryParams'])
          end
        end
      end

      # DeleteConnection请求参数结构体
      class DeleteConnectionRequest < TencentCloud::Common::AbstractModel
        # @param ConnectionId: 连接器ID
        # @type ConnectionId: String
        # @param EventBusId: 事件集ID
        # @type EventBusId: String

        attr_accessor :ConnectionId, :EventBusId
        
        def initialize(connectionid=nil, eventbusid=nil)
          @ConnectionId = connectionid
          @EventBusId = eventbusid
        end

        def deserialize(params)
          @ConnectionId = params['ConnectionId']
          @EventBusId = params['EventBusId']
        end
      end

      # DeleteConnection返回参数结构体
      class DeleteConnectionResponse < TencentCloud::Common::AbstractModel
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

      # DeleteEventBus请求参数结构体
      class DeleteEventBusRequest < TencentCloud::Common::AbstractModel
        # @param EventBusId: 事件集ID
        # @type EventBusId: String

        attr_accessor :EventBusId
        
        def initialize(eventbusid=nil)
          @EventBusId = eventbusid
        end

        def deserialize(params)
          @EventBusId = params['EventBusId']
        end
      end

      # DeleteEventBus返回参数结构体
      class DeleteEventBusResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRule请求参数结构体
      class DeleteRuleRequest < TencentCloud::Common::AbstractModel
        # @param EventBusId: 事件集ID
        # @type EventBusId: String
        # @param RuleId: 事件规则ID
        # @type RuleId: String

        attr_accessor :EventBusId, :RuleId
        
        def initialize(eventbusid=nil, ruleid=nil)
          @EventBusId = eventbusid
          @RuleId = ruleid
        end

        def deserialize(params)
          @EventBusId = params['EventBusId']
          @RuleId = params['RuleId']
        end
      end

      # DeleteRule返回参数结构体
      class DeleteRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTarget请求参数结构体
      class DeleteTargetRequest < TencentCloud::Common::AbstractModel
        # @param EventBusId: 事件集ID
        # @type EventBusId: String
        # @param TargetId: 事件目标ID
        # @type TargetId: String
        # @param RuleId: 事件规则ID
        # @type RuleId: String

        attr_accessor :EventBusId, :TargetId, :RuleId
        
        def initialize(eventbusid=nil, targetid=nil, ruleid=nil)
          @EventBusId = eventbusid
          @TargetId = targetid
          @RuleId = ruleid
        end

        def deserialize(params)
          @EventBusId = params['EventBusId']
          @TargetId = params['TargetId']
          @RuleId = params['RuleId']
        end
      end

      # DeleteTarget返回参数结构体
      class DeleteTargetResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTransformation请求参数结构体
      class DeleteTransformationRequest < TencentCloud::Common::AbstractModel
        # @param EventBusId: 事件集ID
        # @type EventBusId: String
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param TransformationId: 转换器id
        # @type TransformationId: String

        attr_accessor :EventBusId, :RuleId, :TransformationId
        
        def initialize(eventbusid=nil, ruleid=nil, transformationid=nil)
          @EventBusId = eventbusid
          @RuleId = ruleid
          @TransformationId = transformationid
        end

        def deserialize(params)
          @EventBusId = params['EventBusId']
          @RuleId = params['RuleId']
          @TransformationId = params['TransformationId']
        end
      end

      # DeleteTransformation返回参数结构体
      class DeleteTransformationResponse < TencentCloud::Common::AbstractModel
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

      # 描述Es规则目标
      class ESTargetParams < TencentCloud::Common::AbstractModel
        # @param NetMode: 网络连接类型
        # @type NetMode: String
        # @param IndexPrefix: 索引前缀
        # @type IndexPrefix: String
        # @param RotationInterval: es日志轮换粒度
        # @type RotationInterval: String
        # @param OutputMode: DTS事件配置
        # @type OutputMode: String
        # @param IndexSuffixMode: DTS索引配置
        # @type IndexSuffixMode: String
        # @param IndexTemplateType: es模版类型
        # @type IndexTemplateType: String

        attr_accessor :NetMode, :IndexPrefix, :RotationInterval, :OutputMode, :IndexSuffixMode, :IndexTemplateType
        
        def initialize(netmode=nil, indexprefix=nil, rotationinterval=nil, outputmode=nil, indexsuffixmode=nil, indextemplatetype=nil)
          @NetMode = netmode
          @IndexPrefix = indexprefix
          @RotationInterval = rotationinterval
          @OutputMode = outputmode
          @IndexSuffixMode = indexsuffixmode
          @IndexTemplateType = indextemplatetype
        end

        def deserialize(params)
          @NetMode = params['NetMode']
          @IndexPrefix = params['IndexPrefix']
          @RotationInterval = params['RotationInterval']
          @OutputMode = params['OutputMode']
          @IndexSuffixMode = params['IndexSuffixMode']
          @IndexTemplateType = params['IndexTemplateType']
        end
      end

      # 描述如何过滤数据
      class EtlFilter < TencentCloud::Common::AbstractModel
        # @param Filter: 语法Rule规则保持一致
        # @type Filter: String

        attr_accessor :Filter
        
        def initialize(filter=nil)
          @Filter = filter
        end

        def deserialize(params)
          @Filter = params['Filter']
        end
      end

      # eb event信息
      class Event < TencentCloud::Common::AbstractModel
        # @param Source: 事件源的信息,新产品上报必须符合EB的规范
        # @type Source: String
        # @param Data: 事件数据，内容由创建事件的系统来控制，当前datacontenttype仅支持application/json;charset=utf-8，所以该字段是json字符串
        # @type Data: String
        # @param Type: 事件类型，可自定义，选填。云服务默认写 COS:Created:PostObject，用“：”分割类型字段
        # @type Type: String
        # @param Subject: 事件来源详细描述，可自定义，选填。云服务默认为标准qcs资源表示语法：qcs::dts:ap-guangzhou:appid/uin:xxx
        # @type Subject: String
        # @param Time: 事件发生的毫秒时间戳，
        # time.Now().UnixNano()/1e6
        # @type Time: Integer

        attr_accessor :Source, :Data, :Type, :Subject, :Time
        
        def initialize(source=nil, data=nil, type=nil, subject=nil, time=nil)
          @Source = source
          @Data = data
          @Type = type
          @Subject = subject
          @Time = time
        end

        def deserialize(params)
          @Source = params['Source']
          @Data = params['Data']
          @Type = params['Type']
          @Subject = params['Subject']
          @Time = params['Time']
        end
      end

      # 事件集信息
      class EventBus < TencentCloud::Common::AbstractModel
        # @param ModTime: 更新时间
        # @type ModTime: String
        # @param Description: 事件集描述，不限字符类型，200字符描述以内
        # @type Description: String
        # @param AddTime: 创建时间
        # @type AddTime: String
        # @param EventBusName: 事件集名称，只能包含字母、数字、下划线、连字符，以字母开头，以数字或字母结尾，2~60个字符
        # @type EventBusName: String
        # @param EventBusId: 事件集ID
        # @type EventBusId: String
        # @param Type: 事件集类型
        # @type Type: String

        attr_accessor :ModTime, :Description, :AddTime, :EventBusName, :EventBusId, :Type
        
        def initialize(modtime=nil, description=nil, addtime=nil, eventbusname=nil, eventbusid=nil, type=nil)
          @ModTime = modtime
          @Description = description
          @AddTime = addtime
          @EventBusName = eventbusname
          @EventBusId = eventbusid
          @Type = type
        end

        def deserialize(params)
          @ModTime = params['ModTime']
          @Description = params['Description']
          @AddTime = params['AddTime']
          @EventBusName = params['EventBusName']
          @EventBusId = params['EventBusId']
          @Type = params['Type']
        end
      end

      # 描述如何提取数据
      class Extraction < TencentCloud::Common::AbstractModel
        # @param ExtractionInputPath: JsonPath, 不指定则使用默认值$.
        # @type ExtractionInputPath: String
        # @param Format: 取值: TEXT/JSON
        # @type Format: String
        # @param TextParams: 仅在Text需要传递
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TextParams: :class:`Tencentcloud::Eb.v20210416.models.TextParams`

        attr_accessor :ExtractionInputPath, :Format, :TextParams
        
        def initialize(extractioninputpath=nil, format=nil, textparams=nil)
          @ExtractionInputPath = extractioninputpath
          @Format = format
          @TextParams = textparams
        end

        def deserialize(params)
          @ExtractionInputPath = params['ExtractionInputPath']
          @Format = params['Format']
          unless params['TextParams'].nil?
            @TextParams = TextParams.new
            @TextParams.deserialize(params['TextParams'])
          end
        end
      end

      # 描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等
      # * 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
      # * 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
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

      # GetEventBus请求参数结构体
      class GetEventBusRequest < TencentCloud::Common::AbstractModel
        # @param EventBusId: 事件集ID
        # @type EventBusId: String

        attr_accessor :EventBusId
        
        def initialize(eventbusid=nil)
          @EventBusId = eventbusid
        end

        def deserialize(params)
          @EventBusId = params['EventBusId']
        end
      end

      # GetEventBus返回参数结构体
      class GetEventBusResponse < TencentCloud::Common::AbstractModel
        # @param ModTime: 更新时间
        # @type ModTime: String
        # @param Description: 事件集描述
        # @type Description: String
        # @param ClsTopicId: 日志主题ID
        # @type ClsTopicId: String
        # @param AddTime: 创建时间
        # @type AddTime: String
        # @param ClsLogsetId: 日志集ID
        # @type ClsLogsetId: String
        # @param EventBusName: 事件集名称
        # @type EventBusName: String
        # @param EventBusId: 事件集ID
        # @type EventBusId: String
        # @param Type: （已废弃）事件集类型
        # @type Type: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModTime, :Description, :ClsTopicId, :AddTime, :ClsLogsetId, :EventBusName, :EventBusId, :Type, :RequestId
        
        def initialize(modtime=nil, description=nil, clstopicid=nil, addtime=nil, clslogsetid=nil, eventbusname=nil, eventbusid=nil, type=nil, requestid=nil)
          @ModTime = modtime
          @Description = description
          @ClsTopicId = clstopicid
          @AddTime = addtime
          @ClsLogsetId = clslogsetid
          @EventBusName = eventbusname
          @EventBusId = eventbusid
          @Type = type
          @RequestId = requestid
        end

        def deserialize(params)
          @ModTime = params['ModTime']
          @Description = params['Description']
          @ClsTopicId = params['ClsTopicId']
          @AddTime = params['AddTime']
          @ClsLogsetId = params['ClsLogsetId']
          @EventBusName = params['EventBusName']
          @EventBusId = params['EventBusId']
          @Type = params['Type']
          @RequestId = params['RequestId']
        end
      end

      # GetRule请求参数结构体
      class GetRuleRequest < TencentCloud::Common::AbstractModel
        # @param EventBusId: 事件集ID
        # @type EventBusId: String
        # @param RuleId: 事件规则ID
        # @type RuleId: String

        attr_accessor :EventBusId, :RuleId
        
        def initialize(eventbusid=nil, ruleid=nil)
          @EventBusId = eventbusid
          @RuleId = ruleid
        end

        def deserialize(params)
          @EventBusId = params['EventBusId']
          @RuleId = params['RuleId']
        end
      end

      # GetRule返回参数结构体
      class GetRuleResponse < TencentCloud::Common::AbstractModel
        # @param EventBusId: 事件集id
        # @type EventBusId: String
        # @param RuleId: 事件规则id
        # @type RuleId: String
        # @param RuleName: 事件规则名称
        # @type RuleName: String
        # @param Status: 事件规则状态
        # @type Status: String
        # @param Enable: 使能开关
        # @type Enable: Boolean
        # @param Description: 事件规则描述
        # @type Description: String
        # @param EventPattern: 事件模式
        # @type EventPattern: String
        # @param AddTime: 创建时间
        # @type AddTime: String
        # @param ModTime: 更新时间
        # @type ModTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EventBusId, :RuleId, :RuleName, :Status, :Enable, :Description, :EventPattern, :AddTime, :ModTime, :RequestId
        
        def initialize(eventbusid=nil, ruleid=nil, rulename=nil, status=nil, enable=nil, description=nil, eventpattern=nil, addtime=nil, modtime=nil, requestid=nil)
          @EventBusId = eventbusid
          @RuleId = ruleid
          @RuleName = rulename
          @Status = status
          @Enable = enable
          @Description = description
          @EventPattern = eventpattern
          @AddTime = addtime
          @ModTime = modtime
          @RequestId = requestid
        end

        def deserialize(params)
          @EventBusId = params['EventBusId']
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @Status = params['Status']
          @Enable = params['Enable']
          @Description = params['Description']
          @EventPattern = params['EventPattern']
          @AddTime = params['AddTime']
          @ModTime = params['ModTime']
          @RequestId = params['RequestId']
        end
      end

      # GetTransformation请求参数结构体
      class GetTransformationRequest < TencentCloud::Common::AbstractModel
        # @param EventBusId: 事件集ID
        # @type EventBusId: String
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param TransformationId: 转换器id
        # @type TransformationId: String

        attr_accessor :EventBusId, :RuleId, :TransformationId
        
        def initialize(eventbusid=nil, ruleid=nil, transformationid=nil)
          @EventBusId = eventbusid
          @RuleId = ruleid
          @TransformationId = transformationid
        end

        def deserialize(params)
          @EventBusId = params['EventBusId']
          @RuleId = params['RuleId']
          @TransformationId = params['TransformationId']
        end
      end

      # GetTransformation返回参数结构体
      class GetTransformationResponse < TencentCloud::Common::AbstractModel
        # @param Transformations: 转换规则列表
        # @type Transformations: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Transformations, :RequestId
        
        def initialize(transformations=nil, requestid=nil)
          @Transformations = transformations
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Transformations'].nil?
            @Transformations = []
            params['Transformations'].each do |i|
              transformation_tmp = Transformation.new
              transformation_tmp.deserialize(i)
              @Transformations << transformation_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListConnections请求参数结构体
      class ListConnectionsRequest < TencentCloud::Common::AbstractModel
        # @param EventBusId: 事件集ID
        # @type EventBusId: String
        # @param OrderBy: 根据哪个字段进行返回结果排序，目前支持如下以下字段：AddTime, ModTime
        # @type OrderBy: String
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Order: 以升序还是降序的方式返回结果，可选值 ASC 和 DESC
        # @type Order: String
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer

        attr_accessor :EventBusId, :OrderBy, :Limit, :Order, :Offset
        
        def initialize(eventbusid=nil, orderby=nil, limit=nil, order=nil, offset=nil)
          @EventBusId = eventbusid
          @OrderBy = orderby
          @Limit = limit
          @Order = order
          @Offset = offset
        end

        def deserialize(params)
          @EventBusId = params['EventBusId']
          @OrderBy = params['OrderBy']
          @Limit = params['Limit']
          @Order = params['Order']
          @Offset = params['Offset']
        end
      end

      # ListConnections返回参数结构体
      class ListConnectionsResponse < TencentCloud::Common::AbstractModel
        # @param Connections: 连接器信息
        # @type Connections: Array
        # @param TotalCount: 连接器总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Connections, :TotalCount, :RequestId
        
        def initialize(connections=nil, totalcount=nil, requestid=nil)
          @Connections = connections
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Connections'].nil?
            @Connections = []
            params['Connections'].each do |i|
              connection_tmp = Connection.new
              connection_tmp.deserialize(i)
              @Connections << connection_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # ListEventBuses请求参数结构体
      class ListEventBusesRequest < TencentCloud::Common::AbstractModel
        # @param OrderBy: 根据哪个字段进行返回结果排序,支持以下字段：AddTime（创建时间）, ModTime（修改时间）
        # @type OrderBy: String
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Order: 以升序还是降序的方式返回结果，可选值 ASC（升序） 和 DESC（降序）
        # @type Order: String
        # @param Filters: 过滤条件，详见下表：实例过滤条件表。每次请求的Filters的上限为10，Filter.Values的上限为5。
        # @type Filters: Array
        # @param Offset: 分页偏移量，默认为0。
        # @type Offset: Integer

        attr_accessor :OrderBy, :Limit, :Order, :Filters, :Offset
        
        def initialize(orderby=nil, limit=nil, order=nil, filters=nil, offset=nil)
          @OrderBy = orderby
          @Limit = limit
          @Order = order
          @Filters = filters
          @Offset = offset
        end

        def deserialize(params)
          @OrderBy = params['OrderBy']
          @Limit = params['Limit']
          @Order = params['Order']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Offset = params['Offset']
        end
      end

      # ListEventBuses返回参数结构体
      class ListEventBusesResponse < TencentCloud::Common::AbstractModel
        # @param EventBuses: 事件集信息
        # @type EventBuses: Array
        # @param TotalCount: 事件集总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EventBuses, :TotalCount, :RequestId
        
        def initialize(eventbuses=nil, totalcount=nil, requestid=nil)
          @EventBuses = eventbuses
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EventBuses'].nil?
            @EventBuses = []
            params['EventBuses'].each do |i|
              eventbus_tmp = EventBus.new
              eventbus_tmp.deserialize(i)
              @EventBuses << eventbus_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # ListRules请求参数结构体
      class ListRulesRequest < TencentCloud::Common::AbstractModel
        # @param EventBusId: 事件集ID
        # @type EventBusId: String
        # @param OrderBy: 根据哪个字段进行返回结果排序,支持以下字段：AddTime（创建时间）, ModTime（修改时间）
        # @type OrderBy: String
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Offset: 分页偏移量，默认为0。
        # @type Offset: Integer
        # @param Order: 以升序还是降序的方式返回结果，可选值 ASC（升序） 和 DESC（降序）
        # @type Order: String

        attr_accessor :EventBusId, :OrderBy, :Limit, :Offset, :Order
        
        def initialize(eventbusid=nil, orderby=nil, limit=nil, offset=nil, order=nil)
          @EventBusId = eventbusid
          @OrderBy = orderby
          @Limit = limit
          @Offset = offset
          @Order = order
        end

        def deserialize(params)
          @EventBusId = params['EventBusId']
          @OrderBy = params['OrderBy']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Order = params['Order']
        end
      end

      # ListRules返回参数结构体
      class ListRulesResponse < TencentCloud::Common::AbstractModel
        # @param Rules: 事件规则信息
        # @type Rules: Array
        # @param TotalCount: 事件规则总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rules, :TotalCount, :RequestId
        
        def initialize(rules=nil, totalcount=nil, requestid=nil)
          @Rules = rules
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              rule_tmp = Rule.new
              rule_tmp.deserialize(i)
              @Rules << rule_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # ListTargets请求参数结构体
      class ListTargetsRequest < TencentCloud::Common::AbstractModel
        # @param EventBusId: 事件集ID
        # @type EventBusId: String
        # @param OrderBy: 根据哪个字段进行返回结果排序,支持以下字段：AddTime（创建时间）, ModTime（修改时间）
        # @type OrderBy: String
        # @param RuleId: 事件规则ID
        # @type RuleId: String
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Offset: 分页偏移量，默认为0。
        # @type Offset: Integer
        # @param Order: 以升序还是降序的方式返回结果，可选值 ASC（升序） 和 DESC（降序）
        # @type Order: String

        attr_accessor :EventBusId, :OrderBy, :RuleId, :Limit, :Offset, :Order
        
        def initialize(eventbusid=nil, orderby=nil, ruleid=nil, limit=nil, offset=nil, order=nil)
          @EventBusId = eventbusid
          @OrderBy = orderby
          @RuleId = ruleid
          @Limit = limit
          @Offset = offset
          @Order = order
        end

        def deserialize(params)
          @EventBusId = params['EventBusId']
          @OrderBy = params['OrderBy']
          @RuleId = params['RuleId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Order = params['Order']
        end
      end

      # ListTargets返回参数结构体
      class ListTargetsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 目标总数
        # @type TotalCount: Integer
        # @param Targets: 目标信息
        # @type Targets: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Targets, :RequestId
        
        def initialize(totalcount=nil, targets=nil, requestid=nil)
          @TotalCount = totalcount
          @Targets = targets
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              target_tmp = Target.new
              target_tmp.deserialize(i)
              @Targets << target_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # Transform输出参数
      class OutputStructParam < TencentCloud::Common::AbstractModel
        # @param Key: 对应输出json中的key
        # @type Key: String
        # @param Value: 可以填json-path也可以支持常量或者内置关键字date类型
        # @type Value: String
        # @param ValueType: value的数据类型, 可选值: STRING, NUMBER,BOOLEAN,NULL,SYS_VARIABLE,JSONPATH
        # @type ValueType: String

        attr_accessor :Key, :Value, :ValueType
        
        def initialize(key=nil, value=nil, valuetype=nil)
          @Key = key
          @Value = value
          @ValueType = valuetype
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
          @ValueType = params['ValueType']
        end
      end

      # PublishEvent请求参数结构体
      class PublishEventRequest < TencentCloud::Common::AbstractModel
        # @param EventList: 事件列表
        # @type EventList: Array
        # @param EventBusId: 事件集ID
        # @type EventBusId: String

        attr_accessor :EventList, :EventBusId
        
        def initialize(eventlist=nil, eventbusid=nil)
          @EventList = eventlist
          @EventBusId = eventbusid
        end

        def deserialize(params)
          unless params['EventList'].nil?
            @EventList = []
            params['EventList'].each do |i|
              event_tmp = Event.new
              event_tmp.deserialize(i)
              @EventList << event_tmp
            end
          end
          @EventBusId = params['EventBusId']
        end
      end

      # PublishEvent返回参数结构体
      class PublishEventResponse < TencentCloud::Common::AbstractModel
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

      # PutEvents请求参数结构体
      class PutEventsRequest < TencentCloud::Common::AbstractModel
        # @param EventList: 事件列表
        # @type EventList: Array
        # @param EventBusId: 事件集ID
        # @type EventBusId: String

        attr_accessor :EventList, :EventBusId
        
        def initialize(eventlist=nil, eventbusid=nil)
          @EventList = eventlist
          @EventBusId = eventbusid
        end

        def deserialize(params)
          unless params['EventList'].nil?
            @EventList = []
            params['EventList'].each do |i|
              event_tmp = Event.new
              event_tmp.deserialize(i)
              @EventList << event_tmp
            end
          end
          @EventBusId = params['EventBusId']
        end
      end

      # PutEvents返回参数结构体
      class PutEventsResponse < TencentCloud::Common::AbstractModel
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

      # 用来描述一个ckafka投递目标的重试策略
      class RetryPolicy < TencentCloud::Common::AbstractModel
        # @param RetryInterval: 重试间隔 单位:秒
        # @type RetryInterval: Integer
        # @param MaxRetryAttempts: 最大重试次数
        # @type MaxRetryAttempts: Integer

        attr_accessor :RetryInterval, :MaxRetryAttempts
        
        def initialize(retryinterval=nil, maxretryattempts=nil)
          @RetryInterval = retryinterval
          @MaxRetryAttempts = maxretryattempts
        end

        def deserialize(params)
          @RetryInterval = params['RetryInterval']
          @MaxRetryAttempts = params['MaxRetryAttempts']
        end
      end

      # 规则信息
      class Rule < TencentCloud::Common::AbstractModel
        # @param Status: 状态
        # @type Status: String
        # @param ModTime: 修改时间
        # @type ModTime: String
        # @param Enable: 使能开关
        # @type Enable: Boolean
        # @param Description: 描述
        # @type Description: String
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param AddTime: 创建时间
        # @type AddTime: String
        # @param EventBusId: 事件集ID
        # @type EventBusId: String
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param Targets: Target 简要信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Targets: Array
        # @param DeadLetterConfig: rule设置的dlq规则. 可能为null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeadLetterConfig: :class:`Tencentcloud::Eb.v20210416.models.DeadLetterConfig`

        attr_accessor :Status, :ModTime, :Enable, :Description, :RuleId, :AddTime, :EventBusId, :RuleName, :Targets, :DeadLetterConfig
        
        def initialize(status=nil, modtime=nil, enable=nil, description=nil, ruleid=nil, addtime=nil, eventbusid=nil, rulename=nil, targets=nil, deadletterconfig=nil)
          @Status = status
          @ModTime = modtime
          @Enable = enable
          @Description = description
          @RuleId = ruleid
          @AddTime = addtime
          @EventBusId = eventbusid
          @RuleName = rulename
          @Targets = targets
          @DeadLetterConfig = deadletterconfig
        end

        def deserialize(params)
          @Status = params['Status']
          @ModTime = params['ModTime']
          @Enable = params['Enable']
          @Description = params['Description']
          @RuleId = params['RuleId']
          @AddTime = params['AddTime']
          @EventBusId = params['EventBusId']
          @RuleName = params['RuleName']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              targetbrief_tmp = TargetBrief.new
              targetbrief_tmp.deserialize(i)
              @Targets << targetbrief_tmp
            end
          end
          unless params['DeadLetterConfig'].nil?
            @DeadLetterConfig = DeadLetterConfig.new
            @DeadLetterConfig.deserialize(params['DeadLetterConfig'])
          end
        end
      end

      # 云函数参数
      class SCFParams < TencentCloud::Common::AbstractModel
        # @param BatchTimeout: 批量投递最长等待时间
        # @type BatchTimeout: Integer
        # @param BatchEventCount: 批量投递最大事件条数
        # @type BatchEventCount: Integer
        # @param EnableBatchDelivery: 开启批量投递使能
        # @type EnableBatchDelivery: Boolean

        attr_accessor :BatchTimeout, :BatchEventCount, :EnableBatchDelivery
        
        def initialize(batchtimeout=nil, batcheventcount=nil, enablebatchdelivery=nil)
          @BatchTimeout = batchtimeout
          @BatchEventCount = batcheventcount
          @EnableBatchDelivery = enablebatchdelivery
        end

        def deserialize(params)
          @BatchTimeout = params['BatchTimeout']
          @BatchEventCount = params['BatchEventCount']
          @EnableBatchDelivery = params['EnableBatchDelivery']
        end
      end

      # Target信息
      class Target < TencentCloud::Common::AbstractModel
        # @param Type: 目标类型
        # @type Type: String
        # @param EventBusId: 事件集ID
        # @type EventBusId: String
        # @param TargetId: 目标ID
        # @type TargetId: String
        # @param TargetDescription: 目标描述
        # @type TargetDescription: :class:`Tencentcloud::Eb.v20210416.models.TargetDescription`
        # @param RuleId: 事件规则ID
        # @type RuleId: String
        # @param EnableBatchDelivery: 开启批量投递使能
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableBatchDelivery: Boolean
        # @param BatchTimeout: 批量投递最长等待时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchTimeout: Integer
        # @param BatchEventCount: 批量投递最大事件条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchEventCount: Integer

        attr_accessor :Type, :EventBusId, :TargetId, :TargetDescription, :RuleId, :EnableBatchDelivery, :BatchTimeout, :BatchEventCount
        
        def initialize(type=nil, eventbusid=nil, targetid=nil, targetdescription=nil, ruleid=nil, enablebatchdelivery=nil, batchtimeout=nil, batcheventcount=nil)
          @Type = type
          @EventBusId = eventbusid
          @TargetId = targetid
          @TargetDescription = targetdescription
          @RuleId = ruleid
          @EnableBatchDelivery = enablebatchdelivery
          @BatchTimeout = batchtimeout
          @BatchEventCount = batcheventcount
        end

        def deserialize(params)
          @Type = params['Type']
          @EventBusId = params['EventBusId']
          @TargetId = params['TargetId']
          unless params['TargetDescription'].nil?
            @TargetDescription = TargetDescription.new
            @TargetDescription.deserialize(params['TargetDescription'])
          end
          @RuleId = params['RuleId']
          @EnableBatchDelivery = params['EnableBatchDelivery']
          @BatchTimeout = params['BatchTimeout']
          @BatchEventCount = params['BatchEventCount']
        end
      end

      # 目标简要信息
      class TargetBrief < TencentCloud::Common::AbstractModel
        # @param TargetId: 目标ID
        # @type TargetId: String
        # @param Type: 目标类型
        # @type Type: String

        attr_accessor :TargetId, :Type
        
        def initialize(targetid=nil, type=nil)
          @TargetId = targetid
          @Type = type
        end

        def deserialize(params)
          @TargetId = params['TargetId']
          @Type = params['Type']
        end
      end

      # TargetDescription描述
      class TargetDescription < TencentCloud::Common::AbstractModel
        # @param ResourceDescription: QCS资源六段式，更多参考 [资源六段式](https://cloud.tencent.com/document/product/598/10606)
        # @type ResourceDescription: String
        # @param SCFParams: 云函数参数
        # @type SCFParams: :class:`Tencentcloud::Eb.v20210416.models.SCFParams`
        # @param CkafkaTargetParams: Ckafka参数
        # @type CkafkaTargetParams: :class:`Tencentcloud::Eb.v20210416.models.CkafkaTargetParams`
        # @param ESTargetParams: ElasticSearch参数
        # @type ESTargetParams: :class:`Tencentcloud::Eb.v20210416.models.ESTargetParams`

        attr_accessor :ResourceDescription, :SCFParams, :CkafkaTargetParams, :ESTargetParams
        
        def initialize(resourcedescription=nil, scfparams=nil, ckafkatargetparams=nil, estargetparams=nil)
          @ResourceDescription = resourcedescription
          @SCFParams = scfparams
          @CkafkaTargetParams = ckafkatargetparams
          @ESTargetParams = estargetparams
        end

        def deserialize(params)
          @ResourceDescription = params['ResourceDescription']
          unless params['SCFParams'].nil?
            @SCFParams = SCFParams.new
            @SCFParams.deserialize(params['SCFParams'])
          end
          unless params['CkafkaTargetParams'].nil?
            @CkafkaTargetParams = CkafkaTargetParams.new
            @CkafkaTargetParams.deserialize(params['CkafkaTargetParams'])
          end
          unless params['ESTargetParams'].nil?
            @ESTargetParams = ESTargetParams.new
            @ESTargetParams.deserialize(params['ESTargetParams'])
          end
        end
      end

      # 描述如何切分数据
      class TextParams < TencentCloud::Common::AbstractModel
        # @param Separator: 逗号、| 、制表符、空格、换行符、%、#，限制长度为 1。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Separator: String
        # @param Regex: 填写正则表达式：长度128
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Regex: String

        attr_accessor :Separator, :Regex
        
        def initialize(separator=nil, regex=nil)
          @Separator = separator
          @Regex = regex
        end

        def deserialize(params)
          @Separator = params['Separator']
          @Regex = params['Regex']
        end
      end

      # 描述如何数据转换
      class Transform < TencentCloud::Common::AbstractModel
        # @param OutputStructs: 描述如何数据转换
        # @type OutputStructs: Array

        attr_accessor :OutputStructs
        
        def initialize(outputstructs=nil)
          @OutputStructs = outputstructs
        end

        def deserialize(params)
          unless params['OutputStructs'].nil?
            @OutputStructs = []
            params['OutputStructs'].each do |i|
              outputstructparam_tmp = OutputStructParam.new
              outputstructparam_tmp.deserialize(i)
              @OutputStructs << outputstructparam_tmp
            end
          end
        end
      end

      # 一个转换器
      class Transformation < TencentCloud::Common::AbstractModel
        # @param Extraction: 描述如何提取数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extraction: :class:`Tencentcloud::Eb.v20210416.models.Extraction`
        # @param EtlFilter: 描述如何过滤数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EtlFilter: :class:`Tencentcloud::Eb.v20210416.models.EtlFilter`
        # @param Transform: 描述如何数据转换
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Transform: :class:`Tencentcloud::Eb.v20210416.models.Transform`

        attr_accessor :Extraction, :EtlFilter, :Transform
        
        def initialize(extraction=nil, etlfilter=nil, transform=nil)
          @Extraction = extraction
          @EtlFilter = etlfilter
          @Transform = transform
        end

        def deserialize(params)
          unless params['Extraction'].nil?
            @Extraction = Extraction.new
            @Extraction.deserialize(params['Extraction'])
          end
          unless params['EtlFilter'].nil?
            @EtlFilter = EtlFilter.new
            @EtlFilter.deserialize(params['EtlFilter'])
          end
          unless params['Transform'].nil?
            @Transform = Transform.new
            @Transform.deserialize(params['Transform'])
          end
        end
      end

      # UpdateConnection请求参数结构体
      class UpdateConnectionRequest < TencentCloud::Common::AbstractModel
        # @param ConnectionId: 连接器ID
        # @type ConnectionId: String
        # @param EventBusId: 事件集ID
        # @type EventBusId: String
        # @param Enable: 使能开关
        # @type Enable: Boolean
        # @param Description: 描述
        # @type Description: String
        # @param ConnectionName: 连接器名称
        # @type ConnectionName: String

        attr_accessor :ConnectionId, :EventBusId, :Enable, :Description, :ConnectionName
        
        def initialize(connectionid=nil, eventbusid=nil, enable=nil, description=nil, connectionname=nil)
          @ConnectionId = connectionid
          @EventBusId = eventbusid
          @Enable = enable
          @Description = description
          @ConnectionName = connectionname
        end

        def deserialize(params)
          @ConnectionId = params['ConnectionId']
          @EventBusId = params['EventBusId']
          @Enable = params['Enable']
          @Description = params['Description']
          @ConnectionName = params['ConnectionName']
        end
      end

      # UpdateConnection返回参数结构体
      class UpdateConnectionResponse < TencentCloud::Common::AbstractModel
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

      # UpdateEventBus请求参数结构体
      class UpdateEventBusRequest < TencentCloud::Common::AbstractModel
        # @param EventBusId: 事件集ID
        # @type EventBusId: String
        # @param Description: 事件集描述，不限字符类型，200字符描述以内
        # @type Description: String
        # @param EventBusName: 事件集名称，只能包含字母、数字、下划线、连字符，以字母开头，以数字或字母结尾，2~60个字符
        # @type EventBusName: String
        # @param SaveDays: EB日志存储时长
        # @type SaveDays: Integer
        # @param LogTopicId: EB日志主题ID
        # @type LogTopicId: String

        attr_accessor :EventBusId, :Description, :EventBusName, :SaveDays, :LogTopicId
        
        def initialize(eventbusid=nil, description=nil, eventbusname=nil, savedays=nil, logtopicid=nil)
          @EventBusId = eventbusid
          @Description = description
          @EventBusName = eventbusname
          @SaveDays = savedays
          @LogTopicId = logtopicid
        end

        def deserialize(params)
          @EventBusId = params['EventBusId']
          @Description = params['Description']
          @EventBusName = params['EventBusName']
          @SaveDays = params['SaveDays']
          @LogTopicId = params['LogTopicId']
        end
      end

      # UpdateEventBus返回参数结构体
      class UpdateEventBusResponse < TencentCloud::Common::AbstractModel
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

      # UpdateRule请求参数结构体
      class UpdateRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 事件规则ID
        # @type RuleId: String
        # @param EventBusId: 事件集ID
        # @type EventBusId: String
        # @param Enable: 使能开关。
        # @type Enable: Boolean
        # @param Description: 规则描述，不限字符类型，200字符描述以内。
        # @type Description: String
        # @param EventPattern: 参考：[事件模式](https://cloud.tencent.com/document/product/1359/56084)
        # @type EventPattern: String
        # @param RuleName: 事件规则名称，只能包含字母、数字、下划线、连字符，以字母开头，以数字或字母结尾，2~60个字符
        # @type RuleName: String

        attr_accessor :RuleId, :EventBusId, :Enable, :Description, :EventPattern, :RuleName
        
        def initialize(ruleid=nil, eventbusid=nil, enable=nil, description=nil, eventpattern=nil, rulename=nil)
          @RuleId = ruleid
          @EventBusId = eventbusid
          @Enable = enable
          @Description = description
          @EventPattern = eventpattern
          @RuleName = rulename
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @EventBusId = params['EventBusId']
          @Enable = params['Enable']
          @Description = params['Description']
          @EventPattern = params['EventPattern']
          @RuleName = params['RuleName']
        end
      end

      # UpdateRule返回参数结构体
      class UpdateRuleResponse < TencentCloud::Common::AbstractModel
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

      # UpdateTarget请求参数结构体
      class UpdateTargetRequest < TencentCloud::Common::AbstractModel
        # @param EventBusId: 事件集ID
        # @type EventBusId: String
        # @param RuleId: 事件规则ID
        # @type RuleId: String
        # @param TargetId: 事件目标ID
        # @type TargetId: String
        # @param EnableBatchDelivery: 开启批量投递使能
        # @type EnableBatchDelivery: Boolean
        # @param BatchTimeout: 批量投递最长等待时间
        # @type BatchTimeout: Integer
        # @param BatchEventCount: 批量投递最大事件条数
        # @type BatchEventCount: Integer

        attr_accessor :EventBusId, :RuleId, :TargetId, :EnableBatchDelivery, :BatchTimeout, :BatchEventCount
        
        def initialize(eventbusid=nil, ruleid=nil, targetid=nil, enablebatchdelivery=nil, batchtimeout=nil, batcheventcount=nil)
          @EventBusId = eventbusid
          @RuleId = ruleid
          @TargetId = targetid
          @EnableBatchDelivery = enablebatchdelivery
          @BatchTimeout = batchtimeout
          @BatchEventCount = batcheventcount
        end

        def deserialize(params)
          @EventBusId = params['EventBusId']
          @RuleId = params['RuleId']
          @TargetId = params['TargetId']
          @EnableBatchDelivery = params['EnableBatchDelivery']
          @BatchTimeout = params['BatchTimeout']
          @BatchEventCount = params['BatchEventCount']
        end
      end

      # UpdateTarget返回参数结构体
      class UpdateTargetResponse < TencentCloud::Common::AbstractModel
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

      # UpdateTransformation请求参数结构体
      class UpdateTransformationRequest < TencentCloud::Common::AbstractModel
        # @param EventBusId: 事件集ID
        # @type EventBusId: String
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param TransformationId: 转换器id
        # @type TransformationId: String
        # @param Transformations: 一个转换规则列表，当前仅限定一个
        # @type Transformations: Array

        attr_accessor :EventBusId, :RuleId, :TransformationId, :Transformations
        
        def initialize(eventbusid=nil, ruleid=nil, transformationid=nil, transformations=nil)
          @EventBusId = eventbusid
          @RuleId = ruleid
          @TransformationId = transformationid
          @Transformations = transformations
        end

        def deserialize(params)
          @EventBusId = params['EventBusId']
          @RuleId = params['RuleId']
          @TransformationId = params['TransformationId']
          unless params['Transformations'].nil?
            @Transformations = []
            params['Transformations'].each do |i|
              transformation_tmp = Transformation.new
              transformation_tmp.deserialize(i)
              @Transformations << transformation_tmp
            end
          end
        end
      end

      # UpdateTransformation返回参数结构体
      class UpdateTransformationResponse < TencentCloud::Common::AbstractModel
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

