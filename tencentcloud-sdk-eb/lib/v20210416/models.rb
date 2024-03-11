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
        # @param Event: Event信息
        # @type Event: String
        # @param EventPattern: EventPattern信息
        # @type EventPattern: String

        attr_accessor :Event, :EventPattern

        def initialize(event=nil, eventpattern=nil)
          @Event = event
          @EventPattern = eventpattern
        end

        def deserialize(params)
          @Event = params['Event']
          @EventPattern = params['EventPattern']
        end
      end

      # CheckRule返回参数结构体
      class CheckRuleResponse < TencentCloud::Common::AbstractModel
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 连接器基础信息
      class ConnectionBrief < TencentCloud::Common::AbstractModel
        # @param Type: 连接器类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Status: 连接器状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String

        attr_accessor :Type, :Status

        def initialize(type=nil, status=nil)
          @Type = type
          @Status = status
        end

        def deserialize(params)
          @Type = params['Type']
          @Status = params['Status']
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
        # @param DTSParams: data transfer service (DTS)参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DTSParams: :class:`Tencentcloud::Eb.v20210416.models.DTSParams`
        # @param TDMQParams: tdmq参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TDMQParams: :class:`Tencentcloud::Eb.v20210416.models.TDMQParams`

        attr_accessor :ResourceDescription, :APIGWParams, :CkafkaParams, :DTSParams, :TDMQParams

        def initialize(resourcedescription=nil, apigwparams=nil, ckafkaparams=nil, dtsparams=nil, tdmqparams=nil)
          @ResourceDescription = resourcedescription
          @APIGWParams = apigwparams
          @CkafkaParams = ckafkaparams
          @DTSParams = dtsparams
          @TDMQParams = tdmqparams
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
          unless params['DTSParams'].nil?
            @DTSParams = DTSParams.new
            @DTSParams.deserialize(params['DTSParams'])
          end
          unless params['TDMQParams'].nil?
            @TDMQParams = TDMQParams.new
            @TDMQParams.deserialize(params['TDMQParams'])
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
        # @param Type: 连接器类型，目前支持以下类型:apigw/ckafka/dts/tdmq
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param EnableStore: EB是否开启存储
        # @type EnableStore: Boolean

        attr_accessor :EventBusName, :Description, :SaveDays, :EnableStore

        def initialize(eventbusname=nil, description=nil, savedays=nil, enablestore=nil)
          @EventBusName = eventbusname
          @Description = description
          @SaveDays = savedays
          @EnableStore = enablestore
        end

        def deserialize(params)
          @EventBusName = params['EventBusName']
          @Description = params['Description']
          @SaveDays = params['SaveDays']
          @EnableStore = params['EnableStore']
        end
      end

      # CreateEventBus返回参数结构体
      class CreateEventBusResponse < TencentCloud::Common::AbstractModel
        # @param EventBusId: 事件集ID
        # @type EventBusId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param Type: 目标类型;取值范围:scf(云函数)/cls(日志服务)/amp(消息推送)/ckafka(消息推送)/es(大数据elastic-search)
        # @type Type: String
        # @param TargetDescription: 目标描述;scf类型示例:
        # {"ResourceDescription":"qcs::scf:ap-guangzhou:uin/2252646423:namespace/default/function/john-test-0326/$LATEST"};
        # cls类型示例:
        # {"ResourceDescription":"qcs::cls:ap-guangzhou:uin/12323442323:topic/7103f705-6c38-4b64-ac9d-428af0f2e732"}
        # ckafka类型示例:
        # {"ResourceDescription":"qcs::ckafka:ap-guangzhou:uin/1500000688:ckafkaId/uin/1500000688/ckafka-018q1nwj","CkafkaTargetParams":{"TopicName":"alert","RetryPolicy":{"RetryInterval":60,"MaxRetryAttempts":360}}}
        # amp类型-邮件/短信示例:
        # {"ResourceDescription":"qcs::eb-amp:ap-guangzhou:uin/100012505002:","AMPParams":{"NotificationTemplateId":10181,"Lang":"cn","NoticeReceivers":[{"UserType":"User","UserIds":["9424525"],"TimeWindow":{"From":"09:30:00","To":"23:30:00"},"Channels":["Email","SMS"]}]}}
        # es类型示例:
        # {"ResourceDescription":"qcs::es:ap-guangzhou:uin/1500000688:instance/es-7cplmhsd","ESTargetParams":{"EsVersion":"7.14.2","UserName":"elastic","Password":"xxxxx","NetMode":"privateLink","IndexPrefix":"auto-test","IndexSuffixMode":"default","RotationInterval":"none","IndexTemplateType":"","OutputMode":"default"}}
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param Transformations: 一个转换规则列表，当前仅限定一个;示例如下：[{"Extraction":{"ExtractionInputPath":"$.data.payload","Format":"JSON"},"EtlFilter":{"Filter":"{\"source\":\"ckafka.cloud.tencent\"}"},"Transform":{"OutputStructs":[{"Key":"op","Value":"$.op","ValueType":"JSONPATH"},{"Key":"table","Value":"$.source.table","ValueType":"JSONPATH"},{"Key":"id","Value":"$.after.id","ValueType":"JSONPATH"},{"Key":"app_id","Value":"$.after.app_id","ValueType":"JSONPATH"},{"Key":"spu_id","Value":"$.after.spu_id","ValueType":"JSONPATH"}]}}]
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # Data Transfer Service参数
      class DTSParams < TencentCloud::Common::AbstractModel
        # @param ConsumerGroupName: Consumer Group Name
        # @type ConsumerGroupName: String
        # @param Account: 账户名
        # @type Account: String
        # @param Password: 密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String

        attr_accessor :ConsumerGroupName, :Account, :Password

        def initialize(consumergroupname=nil, account=nil, password=nil)
          @ConsumerGroupName = consumergroupname
          @Account = account
          @Password = password
        end

        def deserialize(params)
          @ConsumerGroupName = params['ConsumerGroupName']
          @Account = params['Account']
          @Password = params['Password']
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

      # DescribeLogTagValue请求参数结构体
      class DescribeLogTagValueRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间
        # @type StartTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param EventBusId: 事件集ID
        # @type EventBusId: String
        # @param GroupField: 聚合字段,取值范围如下：Source(事件源),RuleIds(命中规则),Subject(实例ID),Region(地域)
        # @type GroupField: String
        # @param Page: 页数
        # @type Page: Integer
        # @param Limit: 每页数据大小
        # @type Limit: Integer
        # @param Filter: 筛选条件
        # @type Filter: Array

        attr_accessor :StartTime, :EndTime, :EventBusId, :GroupField, :Page, :Limit, :Filter

        def initialize(starttime=nil, endtime=nil, eventbusid=nil, groupfield=nil, page=nil, limit=nil, filter=nil)
          @StartTime = starttime
          @EndTime = endtime
          @EventBusId = eventbusid
          @GroupField = groupfield
          @Page = page
          @Limit = limit
          @Filter = filter
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @EventBusId = params['EventBusId']
          @GroupField = params['GroupField']
          @Page = params['Page']
          @Limit = params['Limit']
          unless params['Filter'].nil?
            @Filter = []
            params['Filter'].each do |i|
              logfilter_tmp = LogFilter.new
              logfilter_tmp.deserialize(i)
              @Filter << logfilter_tmp
            end
          end
        end
      end

      # DescribeLogTagValue返回参数结构体
      class DescribeLogTagValueResponse < TencentCloud::Common::AbstractModel
        # @param Results: 事件查询维度值结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Results, :RequestId

        def initialize(results=nil, requestid=nil)
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          @Results = params['Results']
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
        # @param PayMode: 计费模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: String
        # @param ConnectionBriefs: 连接器基础信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConnectionBriefs: Array
        # @param TargetBriefs: 目标简要信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetBriefs: Array

        attr_accessor :ModTime, :Description, :AddTime, :EventBusName, :EventBusId, :Type, :PayMode, :ConnectionBriefs, :TargetBriefs

        def initialize(modtime=nil, description=nil, addtime=nil, eventbusname=nil, eventbusid=nil, type=nil, paymode=nil, connectionbriefs=nil, targetbriefs=nil)
          @ModTime = modtime
          @Description = description
          @AddTime = addtime
          @EventBusName = eventbusname
          @EventBusId = eventbusid
          @Type = type
          @PayMode = paymode
          @ConnectionBriefs = connectionbriefs
          @TargetBriefs = targetbriefs
        end

        def deserialize(params)
          @ModTime = params['ModTime']
          @Description = params['Description']
          @AddTime = params['AddTime']
          @EventBusName = params['EventBusName']
          @EventBusId = params['EventBusId']
          @Type = params['Type']
          @PayMode = params['PayMode']
          unless params['ConnectionBriefs'].nil?
            @ConnectionBriefs = []
            params['ConnectionBriefs'].each do |i|
              connectionbrief_tmp = ConnectionBrief.new
              connectionbrief_tmp.deserialize(i)
              @ConnectionBriefs << connectionbrief_tmp
            end
          end
          unless params['TargetBriefs'].nil?
            @TargetBriefs = []
            params['TargetBriefs'].each do |i|
              targetbrief_tmp = TargetBrief.new
              targetbrief_tmp.deserialize(i)
              @TargetBriefs << targetbrief_tmp
            end
          end
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
        # @param Name: 过滤键的名称。EventBusName(事件集名称)/EventBusId(事件集Id)/Type(事件集类型:Cloud(云服务);Platform(平台型);Custom(自定义))/TagKey(标签键)
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
        # @param PayMode: 计费模式
        # @type PayMode: String
        # @param SaveDays: EB日志存储时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SaveDays: Integer
        # @param LogTopicId: EB日志主题ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogTopicId: String
        # @param EnableStore: 是否开启存储
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableStore: Boolean
        # @param LinkMode: 消息序列，是否有序
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LinkMode: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModTime, :Description, :ClsTopicId, :AddTime, :ClsLogsetId, :EventBusName, :EventBusId, :Type, :PayMode, :SaveDays, :LogTopicId, :EnableStore, :LinkMode, :RequestId

        def initialize(modtime=nil, description=nil, clstopicid=nil, addtime=nil, clslogsetid=nil, eventbusname=nil, eventbusid=nil, type=nil, paymode=nil, savedays=nil, logtopicid=nil, enablestore=nil, linkmode=nil, requestid=nil)
          @ModTime = modtime
          @Description = description
          @ClsTopicId = clstopicid
          @AddTime = addtime
          @ClsLogsetId = clslogsetid
          @EventBusName = eventbusname
          @EventBusId = eventbusid
          @Type = type
          @PayMode = paymode
          @SaveDays = savedays
          @LogTopicId = logtopicid
          @EnableStore = enablestore
          @LinkMode = linkmode
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
          @PayMode = params['PayMode']
          @SaveDays = params['SaveDays']
          @LogTopicId = params['LogTopicId']
          @EnableStore = params['EnableStore']
          @LinkMode = params['LinkMode']
          @RequestId = params['RequestId']
        end
      end

      # GetPlatformEventTemplate请求参数结构体
      class GetPlatformEventTemplateRequest < TencentCloud::Common::AbstractModel
        # @param EventType: 平台产品事件类型
        # @type EventType: String

        attr_accessor :EventType

        def initialize(eventtype=nil)
          @EventType = eventtype
        end

        def deserialize(params)
          @EventType = params['EventType']
        end
      end

      # GetPlatformEventTemplate返回参数结构体
      class GetPlatformEventTemplateResponse < TencentCloud::Common::AbstractModel
        # @param EventTemplate: 平台产品事件模板
        # @type EventTemplate: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EventTemplate, :RequestId

        def initialize(eventtemplate=nil, requestid=nil)
          @EventTemplate = eventtemplate
          @RequestId = requestid
        end

        def deserialize(params)
          @EventTemplate = params['EventTemplate']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param Filters: 过滤字段范围: EventBusName(事件集名称)/EventBusId(事件集Id)/Type(事件集类型:Cloud(云服务);Platform(平台型);Custom(自定义))/TagKey(标签键)。每次请求的Filters的上限为10，Filter.Values的上限为5。[{"Name":"Type","Values":["Cloud","Platform"]}]
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # ListPlatformEventNames请求参数结构体
      class ListPlatformEventNamesRequest < TencentCloud::Common::AbstractModel
        # @param ProductType: 平台产品类型
        # @type ProductType: String

        attr_accessor :ProductType

        def initialize(producttype=nil)
          @ProductType = producttype
        end

        def deserialize(params)
          @ProductType = params['ProductType']
        end
      end

      # ListPlatformEventNames返回参数结构体
      class ListPlatformEventNamesResponse < TencentCloud::Common::AbstractModel
        # @param EventNames: 平台产品列表
        # @type EventNames: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EventNames, :RequestId

        def initialize(eventnames=nil, requestid=nil)
          @EventNames = eventnames
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EventNames'].nil?
            @EventNames = []
            params['EventNames'].each do |i|
              platformeventdetail_tmp = PlatformEventDetail.new
              platformeventdetail_tmp.deserialize(i)
              @EventNames << platformeventdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListPlatformEventPatterns请求参数结构体
      class ListPlatformEventPatternsRequest < TencentCloud::Common::AbstractModel
        # @param ProductType: 平台产品类型
        # @type ProductType: String

        attr_accessor :ProductType

        def initialize(producttype=nil)
          @ProductType = producttype
        end

        def deserialize(params)
          @ProductType = params['ProductType']
        end
      end

      # ListPlatformEventPatterns返回参数结构体
      class ListPlatformEventPatternsResponse < TencentCloud::Common::AbstractModel
        # @param EventPatterns: 平台产品事件匹配规则
        # @type EventPatterns: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EventPatterns, :RequestId

        def initialize(eventpatterns=nil, requestid=nil)
          @EventPatterns = eventpatterns
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EventPatterns'].nil?
            @EventPatterns = []
            params['EventPatterns'].each do |i|
              platformeventsummary_tmp = PlatformEventSummary.new
              platformeventsummary_tmp.deserialize(i)
              @EventPatterns << platformeventsummary_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListPlatformProducts请求参数结构体
      class ListPlatformProductsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ListPlatformProducts返回参数结构体
      class ListPlatformProductsResponse < TencentCloud::Common::AbstractModel
        # @param PlatformProducts: 平台产品列表
        # @type PlatformProducts: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PlatformProducts, :RequestId

        def initialize(platformproducts=nil, requestid=nil)
          @PlatformProducts = platformproducts
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PlatformProducts'].nil?
            @PlatformProducts = []
            params['PlatformProducts'].each do |i|
              platformproduct_tmp = PlatformProduct.new
              platformproduct_tmp.deserialize(i)
              @PlatformProducts << platformproduct_tmp
            end
          end
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 日志查询相关接口filter参数定义
      class LogFilter < TencentCloud::Common::AbstractModel
        # @param Key: 过滤字段名称
        # @type Key: String
        # @param Operator: 运算符，全等 eq，不等 neq，相似 like，排除相似 not like,  小于 lt，小于且等于 lte，大于 gt，大于且等于 gte，在范围内 range，不在范围内 norange
        # @type Operator: String
        # @param Value: 过滤值,范围运算需要同时输入两个值，以英文逗号分隔
        # @type Value: String
        # @param Type: 该层级filters逻辑关系，取值 "AND" 或 "OR"
        # @type Type: String
        # @param Filters: LogFilters数组
        # @type Filters: Array

        attr_accessor :Key, :Operator, :Value, :Type, :Filters

        def initialize(key=nil, operator=nil, value=nil, type=nil, filters=nil)
          @Key = key
          @Operator = operator
          @Value = value
          @Type = type
          @Filters = filters
        end

        def deserialize(params)
          @Key = params['Key']
          @Operator = params['Operator']
          @Value = params['Value']
          @Type = params['Type']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              logfilters_tmp = LogFilters.new
              logfilters_tmp.deserialize(i)
              @Filters << logfilters_tmp
            end
          end
        end
      end

      # 日志存储过滤条件
      class LogFilters < TencentCloud::Common::AbstractModel
        # @param Key: 过滤字段名称，取值范围如下:region(地域)，type(事件类型)，source(事件源)，status(事件状态)
        # @type Key: String
        # @param Operator: 运算符, 全等 eq，不等 neq，相似 like，排除相似 not like,  小于 lt，小于且等于 lte，大于 gt，大于且等于 gte，在范围内 range，不在范围内 norange
        # @type Operator: String
        # @param Value: 过滤值，范围运算需要同时输入两个值，以英文逗号分隔
        # @type Value: String

        attr_accessor :Key, :Operator, :Value

        def initialize(key=nil, operator=nil, value=nil)
          @Key = key
          @Operator = operator
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Operator = params['Operator']
          @Value = params['Value']
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

      # 平台事件名称
      class PlatformEventDetail < TencentCloud::Common::AbstractModel
        # @param EventName: 事件名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventName: String
        # @param EventType: 事件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventType: String

        attr_accessor :EventName, :EventType

        def initialize(eventname=nil, eventtype=nil)
          @EventName = eventname
          @EventType = eventtype
        end

        def deserialize(params)
          @EventName = params['EventName']
          @EventType = params['EventType']
        end
      end

      # 平台事件匹配规则
      class PlatformEventSummary < TencentCloud::Common::AbstractModel
        # @param EventName: 平台事件名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventName: String
        # @param EventPattern: 平台事件匹配规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventPattern: String

        attr_accessor :EventName, :EventPattern

        def initialize(eventname=nil, eventpattern=nil)
          @EventName = eventname
          @EventPattern = eventpattern
        end

        def deserialize(params)
          @EventName = params['EventName']
          @EventPattern = params['EventPattern']
        end
      end

      # 平台产品基础信息
      class PlatformProduct < TencentCloud::Common::AbstractModel
        # @param ProductName: 平台产品名称
        # @type ProductName: String
        # @param ProductType: 平台产品类型
        # @type ProductType: String

        attr_accessor :ProductName, :ProductType

        def initialize(productname=nil, producttype=nil)
          @ProductName = productname
          @ProductType = producttype
        end

        def deserialize(params)
          @ProductName = params['ProductName']
          @ProductType = params['ProductType']
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

      # SearchLog请求参数结构体
      class SearchLogRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间unix 毫秒时间戳
        # @type StartTime: Integer
        # @param EndTime: 结束时间unix 毫秒时间戳
        # @type EndTime: Integer
        # @param EventBusId: 事件集ID
        # @type EventBusId: String
        # @param Page: 页码
        # @type Page: Integer
        # @param Limit: 每页数据大小
        # @type Limit: Integer
        # @param Filter: 事件查询筛选条件；示例如下：[{"key":"host","operator":"eq","value":"106.53.106.243"},{"type":"AND","filters":[{"key":"region","operator":"like","value":"*guangzhou*"},{"key":"type","operator":"eq","value":"cvm:ErrorEvent:GuestReboot"}]},{"type":"OR","filters":[{"key":"field1","operator":"like","value":"*access*"},{"key":"field2","operator":"eq","value":"custorm"}]}]
        # @type Filter: Array
        # @param OrderFields: 事件查询结果排序，["timestamp","subject"]
        # @type OrderFields: Array
        # @param OrderBy: 排序方式，asc 从旧到新，desc 从新到旧
        # @type OrderBy: String

        attr_accessor :StartTime, :EndTime, :EventBusId, :Page, :Limit, :Filter, :OrderFields, :OrderBy

        def initialize(starttime=nil, endtime=nil, eventbusid=nil, page=nil, limit=nil, filter=nil, orderfields=nil, orderby=nil)
          @StartTime = starttime
          @EndTime = endtime
          @EventBusId = eventbusid
          @Page = page
          @Limit = limit
          @Filter = filter
          @OrderFields = orderfields
          @OrderBy = orderby
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @EventBusId = params['EventBusId']
          @Page = params['Page']
          @Limit = params['Limit']
          unless params['Filter'].nil?
            @Filter = []
            params['Filter'].each do |i|
              logfilter_tmp = LogFilter.new
              logfilter_tmp.deserialize(i)
              @Filter << logfilter_tmp
            end
          end
          @OrderFields = params['OrderFields']
          @OrderBy = params['OrderBy']
        end
      end

      # SearchLog返回参数结构体
      class SearchLogResponse < TencentCloud::Common::AbstractModel
        # @param Total: 事件总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Limit: 每页事件条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Limit: Integer
        # @param Page: 页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: Integer
        # @param Results: 事件查询结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Limit, :Page, :Results, :RequestId

        def initialize(total=nil, limit=nil, page=nil, results=nil, requestid=nil)
          @Total = total
          @Limit = limit
          @Page = page
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          @Limit = params['Limit']
          @Page = params['Page']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              searchlogresult_tmp = SearchLogResult.new
              searchlogresult_tmp.deserialize(i)
              @Results << searchlogresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 日志检索详情
      class SearchLogResult < TencentCloud::Common::AbstractModel
        # @param Timestamp: 单条日志上报时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timestamp: String
        # @param Message: 日志内容详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Source: 事件来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: String
        # @param Type: 事件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param RuleIds: 事件匹配规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleIds: String
        # @param Subject: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Subject: String
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Status: 事件状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String

        attr_accessor :Timestamp, :Message, :Source, :Type, :RuleIds, :Subject, :Region, :Status

        def initialize(timestamp=nil, message=nil, source=nil, type=nil, ruleids=nil, subject=nil, region=nil, status=nil)
          @Timestamp = timestamp
          @Message = message
          @Source = source
          @Type = type
          @RuleIds = ruleids
          @Subject = subject
          @Region = region
          @Status = status
        end

        def deserialize(params)
          @Timestamp = params['Timestamp']
          @Message = params['Message']
          @Source = params['Source']
          @Type = params['Type']
          @RuleIds = params['RuleIds']
          @Subject = params['Subject']
          @Region = params['Region']
          @Status = params['Status']
        end
      end

      # TDMQ参数详情
      class TDMQParams < TencentCloud::Common::AbstractModel
        # @param ClusterType: 集群类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterType: String
        # @param ClusterEndPoint: 集群支撑网接入点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterEndPoint: String

        attr_accessor :ClusterType, :ClusterEndPoint

        def initialize(clustertype=nil, clusterendpoint=nil)
          @ClusterType = clustertype
          @ClusterEndPoint = clusterendpoint
        end

        def deserialize(params)
          @ClusterType = params['ClusterType']
          @ClusterEndPoint = params['ClusterEndPoint']
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
        # @param ResourceDescription: QCS资源六段式，更多参考 [资源六段式](https://cloud.tencent.com/document/product/598/10606)；scf资源六段式示例[qcs::scf:ap-guangzhou:uin/123:namespace/test(函数命名空间)/function/test(函数名)/$LATEST(函数版本)] amp资源六段式示例[qcs::eb-amp:ap-guangzhou:uin/123:] ckafka资源六段式示例[qcs::ckafka:ap-guangzhou:uin/123:ckafkaId/uin/123/ckafka-123(ckafka实例Id)] cls资源六段式示例[qcs::cls:ap-guangzhou:uin/123:topic/122332442(topicId)] es资源六段式示例[qcs::es:ap-guangzhou:appid/123/uin/456:instance/es-7cplmhsd(es实例Id)]
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
        # @param Extraction: 描述如何提取数据，{"ExtractionInputPath":"$.data.payload","Format":"JSON"}
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extraction: :class:`Tencentcloud::Eb.v20210416.models.Extraction`
        # @param EtlFilter: 描述如何过滤数据;{"Filter":"{\"source\":\"ckafka.cloud.tencent\"}"}
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EtlFilter: :class:`Tencentcloud::Eb.v20210416.models.EtlFilter`
        # @param Transform: 描述如何数据转换;"OutputStructs":[{"Key":"op","Value":"$.op","ValueType":"JSONPATH"}]
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
        # @param EnableStore: 是否开启存储
        # @type EnableStore: Boolean

        attr_accessor :EventBusId, :Description, :EventBusName, :SaveDays, :LogTopicId, :EnableStore

        def initialize(eventbusid=nil, description=nil, eventbusname=nil, savedays=nil, logtopicid=nil, enablestore=nil)
          @EventBusId = eventbusid
          @Description = description
          @EventBusName = eventbusname
          @SaveDays = savedays
          @LogTopicId = logtopicid
          @EnableStore = enablestore
        end

        def deserialize(params)
          @EventBusId = params['EventBusId']
          @Description = params['Description']
          @EventBusName = params['EventBusName']
          @SaveDays = params['SaveDays']
          @LogTopicId = params['LogTopicId']
          @EnableStore = params['EnableStore']
        end
      end

      # UpdateEventBus返回参数结构体
      class UpdateEventBusResponse < TencentCloud::Common::AbstractModel
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

    end
  end
end

