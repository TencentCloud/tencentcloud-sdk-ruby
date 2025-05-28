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
  module Trabbit
    module V20230418
      # CreateRabbitMQServerlessBinding请求参数结构体
      class CreateRabbitMQServerlessBindingRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param VirtualHost: Vhost参数
        # @type VirtualHost: String
        # @param Source: 源exchange
        # @type Source: String
        # @param DestinationType: 目标类型,取值queue或exchange
        # @type DestinationType: String
        # @param Destination: 目标队列或者交换机
        # @type Destination: String
        # @param RoutingKey: 绑定key
        # @type RoutingKey: String

        attr_accessor :InstanceId, :VirtualHost, :Source, :DestinationType, :Destination, :RoutingKey

        def initialize(instanceid=nil, virtualhost=nil, source=nil, destinationtype=nil, destination=nil, routingkey=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @Source = source
          @DestinationType = destinationtype
          @Destination = destination
          @RoutingKey = routingkey
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @Source = params['Source']
          @DestinationType = params['DestinationType']
          @Destination = params['Destination']
          @RoutingKey = params['RoutingKey']
        end
      end

      # CreateRabbitMQServerlessBinding返回参数结构体
      class CreateRabbitMQServerlessBindingResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 队列名称
        # @type InstanceId: String
        # @param VirtualHost: vhost参数
        # @type VirtualHost: String
        # @param BindingId: 路由关系Id
        # @type BindingId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :VirtualHost, :BindingId, :RequestId

        def initialize(instanceid=nil, virtualhost=nil, bindingid=nil, requestid=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @BindingId = bindingid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @BindingId = params['BindingId']
          @RequestId = params['RequestId']
        end
      end

      # CreateRabbitMQServerlessExchange请求参数结构体
      class CreateRabbitMQServerlessExchangeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param VirtualHost: VHost参数
        # @type VirtualHost: String
        # @param ExchangeName: exchange 名称
        # @type ExchangeName: String
        # @param ExchangeType: exchange 类型, 支持 "fanout","direct","topic","headers"
        # @type ExchangeType: String
        # @param Remark: exchange 备注
        # @type Remark: String
        # @param Durable: 是否为持久化 exchange, 当集群重启时,将会清除所有该字段为"false"的 exchange
        # @type Durable: Boolean
        # @param AutoDelete: 是否自动删除该 exchange, 如果为 "true", 当解绑所有当前 exchange 上的路由关系时, 该 exchange 将会被自动删除
        # @type AutoDelete: Boolean
        # @param Internal: 是否为内部 exchange, 如果为 "true", 则无法直接投递消息到该 exchange, 需要在路由设置中通过其他 exchange 进行转发
        # @type Internal: Boolean
        # @param AlternateExchange: 替代 exchange, 如果消息无法发送到当前 exchange, 就会发送到该替代 exchange
        # @type AlternateExchange: String

        attr_accessor :InstanceId, :VirtualHost, :ExchangeName, :ExchangeType, :Remark, :Durable, :AutoDelete, :Internal, :AlternateExchange

        def initialize(instanceid=nil, virtualhost=nil, exchangename=nil, exchangetype=nil, remark=nil, durable=nil, autodelete=nil, internal=nil, alternateexchange=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @ExchangeName = exchangename
          @ExchangeType = exchangetype
          @Remark = remark
          @Durable = durable
          @AutoDelete = autodelete
          @Internal = internal
          @AlternateExchange = alternateexchange
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @ExchangeName = params['ExchangeName']
          @ExchangeType = params['ExchangeType']
          @Remark = params['Remark']
          @Durable = params['Durable']
          @AutoDelete = params['AutoDelete']
          @Internal = params['Internal']
          @AlternateExchange = params['AlternateExchange']
        end
      end

      # CreateRabbitMQServerlessExchange返回参数结构体
      class CreateRabbitMQServerlessExchangeResponse < TencentCloud::Common::AbstractModel
        # @param ExchangeName: exchange 名称
        # @type ExchangeName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ExchangeName, :RequestId

        def initialize(exchangename=nil, requestid=nil)
          @ExchangeName = exchangename
          @RequestId = requestid
        end

        def deserialize(params)
          @ExchangeName = params['ExchangeName']
          @RequestId = params['RequestId']
        end
      end

      # CreateRabbitMQServerlessQueue请求参数结构体
      class CreateRabbitMQServerlessQueueRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param VirtualHost: VHost参数
        # @type VirtualHost: String
        # @param QueueName: 队列名称
        # @type QueueName: String
        # @param QueueType: 只支持 classic
        # @type QueueType: String
        # @param Durable: 持久标记,classic类型必传,quorum类型无需传入固定为true
        # @type Durable: Boolean
        # @param AutoDelete: 自动清除,classic类型必传,quorum类型无需传入固定为false
        # @type AutoDelete: Boolean
        # @param Remark: 备注
        # @type Remark: String
        # @param MessageTTL: MessageTTL参数,classic类型专用
        # @type MessageTTL: Integer
        # @param AutoExpire: AutoExpire参数，单位为 ms，队列在指定时间内没有被使用，将会被删除
        # @type AutoExpire: Integer
        # @param MaxLength: MaxLength参数。队列可以容纳的最大条数。若超出上限，将根据 overview behavior 处理
        # @type MaxLength: Integer
        # @param MaxLengthBytes: MaxLengthBytes参数。若超出上限，将根据 overview behavior 处理。
        # @type MaxLengthBytes: Integer
        # @param DeliveryLimit: DeliveryLimit参数,quorum类型专用
        # @type DeliveryLimit: Integer
        # @param OverflowBehaviour: OverflowBehaviour参数,取值为drop-head, reject-publish或reject-publish-dlx
        # @type OverflowBehaviour: String
        # @param DeadLetterExchange: DeadLetterExchange参数。可将过期或被拒绝的消息投往指定的死信 exchange。
        # @type DeadLetterExchange: String
        # @param DeadLetterRoutingKey: DeadLetterRoutingKey参数。只能包含字母、数字、"."、"-"，"@"，"_"
        # @type DeadLetterRoutingKey: String
        # @param SingleActiveConsumer: SingleActiveConsumer参数。若开启，需确保每次有且只有一个消费者从队列中消费
        # @type SingleActiveConsumer: Boolean
        # @param MaximumPriority: MaximumPriority参数,classic类型专用
        # @type MaximumPriority: Integer
        # @param LazyMode: LazyMode参数,classic类型专用
        # @type LazyMode: Boolean
        # @param MasterLocator: MasterLocator参数,classic类型专用,取值为min-masters,client-local或random
        # @type MasterLocator: String
        # @param MaxInMemoryLength: MaxInMemoryLength参数，quorum类型专用。quorum 队列的内存中最大消息数量
        # @type MaxInMemoryLength: Integer
        # @param MaxInMemoryBytes: MaxInMemoryBytes参数，quorum类型专用。quorum 队列的内存中最大数总消息大小
        # @type MaxInMemoryBytes: Integer
        # @param Node: Node参数，非必填，指定创建 queue 所在节点
        # @type Node: String
        # @param DeadLetterStrategy: 仲裁队列死信一致性策略，at-most-once、at-least-once，默认是at-most-once
        # @type DeadLetterStrategy: String
        # @param QueueLeaderLocator: 仲裁队列的领导者选举策略，client-local、balanced，默认是client-local
        # @type QueueLeaderLocator: String
        # @param QuorumInitialGroupSize: 仲裁队列的初始副本组大小，默认3
        # @type QuorumInitialGroupSize: Integer

        attr_accessor :InstanceId, :VirtualHost, :QueueName, :QueueType, :Durable, :AutoDelete, :Remark, :MessageTTL, :AutoExpire, :MaxLength, :MaxLengthBytes, :DeliveryLimit, :OverflowBehaviour, :DeadLetterExchange, :DeadLetterRoutingKey, :SingleActiveConsumer, :MaximumPriority, :LazyMode, :MasterLocator, :MaxInMemoryLength, :MaxInMemoryBytes, :Node, :DeadLetterStrategy, :QueueLeaderLocator, :QuorumInitialGroupSize

        def initialize(instanceid=nil, virtualhost=nil, queuename=nil, queuetype=nil, durable=nil, autodelete=nil, remark=nil, messagettl=nil, autoexpire=nil, maxlength=nil, maxlengthbytes=nil, deliverylimit=nil, overflowbehaviour=nil, deadletterexchange=nil, deadletterroutingkey=nil, singleactiveconsumer=nil, maximumpriority=nil, lazymode=nil, masterlocator=nil, maxinmemorylength=nil, maxinmemorybytes=nil, node=nil, deadletterstrategy=nil, queueleaderlocator=nil, quoruminitialgroupsize=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @QueueName = queuename
          @QueueType = queuetype
          @Durable = durable
          @AutoDelete = autodelete
          @Remark = remark
          @MessageTTL = messagettl
          @AutoExpire = autoexpire
          @MaxLength = maxlength
          @MaxLengthBytes = maxlengthbytes
          @DeliveryLimit = deliverylimit
          @OverflowBehaviour = overflowbehaviour
          @DeadLetterExchange = deadletterexchange
          @DeadLetterRoutingKey = deadletterroutingkey
          @SingleActiveConsumer = singleactiveconsumer
          @MaximumPriority = maximumpriority
          @LazyMode = lazymode
          @MasterLocator = masterlocator
          @MaxInMemoryLength = maxinmemorylength
          @MaxInMemoryBytes = maxinmemorybytes
          @Node = node
          @DeadLetterStrategy = deadletterstrategy
          @QueueLeaderLocator = queueleaderlocator
          @QuorumInitialGroupSize = quoruminitialgroupsize
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @QueueName = params['QueueName']
          @QueueType = params['QueueType']
          @Durable = params['Durable']
          @AutoDelete = params['AutoDelete']
          @Remark = params['Remark']
          @MessageTTL = params['MessageTTL']
          @AutoExpire = params['AutoExpire']
          @MaxLength = params['MaxLength']
          @MaxLengthBytes = params['MaxLengthBytes']
          @DeliveryLimit = params['DeliveryLimit']
          @OverflowBehaviour = params['OverflowBehaviour']
          @DeadLetterExchange = params['DeadLetterExchange']
          @DeadLetterRoutingKey = params['DeadLetterRoutingKey']
          @SingleActiveConsumer = params['SingleActiveConsumer']
          @MaximumPriority = params['MaximumPriority']
          @LazyMode = params['LazyMode']
          @MasterLocator = params['MasterLocator']
          @MaxInMemoryLength = params['MaxInMemoryLength']
          @MaxInMemoryBytes = params['MaxInMemoryBytes']
          @Node = params['Node']
          @DeadLetterStrategy = params['DeadLetterStrategy']
          @QueueLeaderLocator = params['QueueLeaderLocator']
          @QuorumInitialGroupSize = params['QuorumInitialGroupSize']
        end
      end

      # CreateRabbitMQServerlessQueue返回参数结构体
      class CreateRabbitMQServerlessQueueResponse < TencentCloud::Common::AbstractModel
        # @param QueueName: 队列名称
        # @type QueueName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QueueName, :RequestId

        def initialize(queuename=nil, requestid=nil)
          @QueueName = queuename
          @RequestId = requestid
        end

        def deserialize(params)
          @QueueName = params['QueueName']
          @RequestId = params['RequestId']
        end
      end

      # CreateRabbitMQServerlessUser请求参数结构体
      class CreateRabbitMQServerlessUserRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例Id
        # @type InstanceId: String
        # @param User: 用户名，登录时使用
        # @type User: String
        # @param Password: 密码，登录时使用
        # @type Password: String
        # @param Description: 描述
        # @type Description: String
        # @param Tags: serverless 实例该字段无效
        # @type Tags: Array
        # @param MaxConnections: 该用户的最大连接数，不填写则不限制
        # @type MaxConnections: Integer
        # @param MaxChannels: 该用户的最大channel数，不填写则不限制
        # @type MaxChannels: Integer

        attr_accessor :InstanceId, :User, :Password, :Description, :Tags, :MaxConnections, :MaxChannels

        def initialize(instanceid=nil, user=nil, password=nil, description=nil, tags=nil, maxconnections=nil, maxchannels=nil)
          @InstanceId = instanceid
          @User = user
          @Password = password
          @Description = description
          @Tags = tags
          @MaxConnections = maxconnections
          @MaxChannels = maxchannels
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @User = params['User']
          @Password = params['Password']
          @Description = params['Description']
          @Tags = params['Tags']
          @MaxConnections = params['MaxConnections']
          @MaxChannels = params['MaxChannels']
        end
      end

      # CreateRabbitMQServerlessUser返回参数结构体
      class CreateRabbitMQServerlessUserResponse < TencentCloud::Common::AbstractModel
        # @param User: 用户名，登录时使用
        # @type User: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :User, :RequestId

        def initialize(user=nil, requestid=nil)
          @User = user
          @RequestId = requestid
        end

        def deserialize(params)
          @User = params['User']
          @RequestId = params['RequestId']
        end
      end

      # CreateRabbitMQServerlessVirtualHost请求参数结构体
      class CreateRabbitMQServerlessVirtualHostRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例Id
        # @type InstanceId: String
        # @param VirtualHost: vhost名称
        # @type VirtualHost: String
        # @param Description: 描述信息
        # @type Description: String
        # @param TraceFlag: 消息轨迹开关,true打开,false关闭,默认关闭
        # @type TraceFlag: Boolean
        # @param MirrorQueuePolicyFlag: 是否创建镜像队列策略，默认值 true
        # @type MirrorQueuePolicyFlag: Boolean

        attr_accessor :InstanceId, :VirtualHost, :Description, :TraceFlag, :MirrorQueuePolicyFlag

        def initialize(instanceid=nil, virtualhost=nil, description=nil, traceflag=nil, mirrorqueuepolicyflag=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @Description = description
          @TraceFlag = traceflag
          @MirrorQueuePolicyFlag = mirrorqueuepolicyflag
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @Description = params['Description']
          @TraceFlag = params['TraceFlag']
          @MirrorQueuePolicyFlag = params['MirrorQueuePolicyFlag']
        end
      end

      # CreateRabbitMQServerlessVirtualHost返回参数结构体
      class CreateRabbitMQServerlessVirtualHostResponse < TencentCloud::Common::AbstractModel
        # @param VirtualHost: vhost名称
        # @type VirtualHost: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VirtualHost, :RequestId

        def initialize(virtualhost=nil, requestid=nil)
          @VirtualHost = virtualhost
          @RequestId = requestid
        end

        def deserialize(params)
          @VirtualHost = params['VirtualHost']
          @RequestId = params['RequestId']
        end
      end

      # DeleteRabbitMQServerlessBinding请求参数结构体
      class DeleteRabbitMQServerlessBindingRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param VirtualHost: Vhost参数
        # @type VirtualHost: String
        # @param BindingId: 路由关系Id
        # @type BindingId: Integer

        attr_accessor :InstanceId, :VirtualHost, :BindingId

        def initialize(instanceid=nil, virtualhost=nil, bindingid=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @BindingId = bindingid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @BindingId = params['BindingId']
        end
      end

      # DeleteRabbitMQServerlessBinding返回参数结构体
      class DeleteRabbitMQServerlessBindingResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 队列名称
        # @type InstanceId: String
        # @param VirtualHost: vhost参数
        # @type VirtualHost: String
        # @param BindingId: 路由关系Id
        # @type BindingId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :VirtualHost, :BindingId, :RequestId

        def initialize(instanceid=nil, virtualhost=nil, bindingid=nil, requestid=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @BindingId = bindingid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @BindingId = params['BindingId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteRabbitMQServerlessExchange请求参数结构体
      class DeleteRabbitMQServerlessExchangeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 id
        # @type InstanceId: String
        # @param VirtualHost: vhost 参数
        # @type VirtualHost: String
        # @param ExchangeName: exchange 名称
        # @type ExchangeName: String

        attr_accessor :InstanceId, :VirtualHost, :ExchangeName

        def initialize(instanceid=nil, virtualhost=nil, exchangename=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @ExchangeName = exchangename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @ExchangeName = params['ExchangeName']
        end
      end

      # DeleteRabbitMQServerlessExchange返回参数结构体
      class DeleteRabbitMQServerlessExchangeResponse < TencentCloud::Common::AbstractModel
        # @param ExchangeName: exchange 名称
        # @type ExchangeName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ExchangeName, :RequestId

        def initialize(exchangename=nil, requestid=nil)
          @ExchangeName = exchangename
          @RequestId = requestid
        end

        def deserialize(params)
          @ExchangeName = params['ExchangeName']
          @RequestId = params['RequestId']
        end
      end

      # DeleteRabbitMQServerlessPermission请求参数结构体
      class DeleteRabbitMQServerlessPermissionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例Id
        # @type InstanceId: String
        # @param User: 用户名，登录时使用
        # @type User: String
        # @param VirtualHost: vhost名
        # @type VirtualHost: String

        attr_accessor :InstanceId, :User, :VirtualHost

        def initialize(instanceid=nil, user=nil, virtualhost=nil)
          @InstanceId = instanceid
          @User = user
          @VirtualHost = virtualhost
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @User = params['User']
          @VirtualHost = params['VirtualHost']
        end
      end

      # DeleteRabbitMQServerlessPermission返回参数结构体
      class DeleteRabbitMQServerlessPermissionResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRabbitMQServerlessQueue请求参数结构体
      class DeleteRabbitMQServerlessQueueRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param VirtualHost: Vhost参数
        # @type VirtualHost: String
        # @param QueueName: 队列名称
        # @type QueueName: String

        attr_accessor :InstanceId, :VirtualHost, :QueueName

        def initialize(instanceid=nil, virtualhost=nil, queuename=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @QueueName = queuename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @QueueName = params['QueueName']
        end
      end

      # DeleteRabbitMQServerlessQueue返回参数结构体
      class DeleteRabbitMQServerlessQueueResponse < TencentCloud::Common::AbstractModel
        # @param QueueName: 队列名称
        # @type QueueName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QueueName, :RequestId

        def initialize(queuename=nil, requestid=nil)
          @QueueName = queuename
          @RequestId = requestid
        end

        def deserialize(params)
          @QueueName = params['QueueName']
          @RequestId = params['RequestId']
        end
      end

      # DeleteRabbitMQServerlessUser请求参数结构体
      class DeleteRabbitMQServerlessUserRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例Id
        # @type InstanceId: String
        # @param User: 用户名，登录时使用
        # @type User: String

        attr_accessor :InstanceId, :User

        def initialize(instanceid=nil, user=nil)
          @InstanceId = instanceid
          @User = user
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @User = params['User']
        end
      end

      # DeleteRabbitMQServerlessUser返回参数结构体
      class DeleteRabbitMQServerlessUserResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRabbitMQServerlessVirtualHost请求参数结构体
      class DeleteRabbitMQServerlessVirtualHostRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例Id
        # @type InstanceId: String
        # @param VirtualHost: vhost名
        # @type VirtualHost: String

        attr_accessor :InstanceId, :VirtualHost

        def initialize(instanceid=nil, virtualhost=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
        end
      end

      # DeleteRabbitMQServerlessVirtualHost返回参数结构体
      class DeleteRabbitMQServerlessVirtualHostResponse < TencentCloud::Common::AbstractModel
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

      # DescribeRabbitMQServerlessBindings请求参数结构体
      class DescribeRabbitMQServerlessBindingsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param VirtualHost: Vhost参数
        # @type VirtualHost: String
        # @param Offset: 分页offset
        # @type Offset: Integer
        # @param Limit: 分页limit
        # @type Limit: Integer
        # @param SearchWord: 搜索关键词，根据源exchange名称/目标资源名称/绑定key进行模糊搜索
        # @type SearchWord: String
        # @param SourceExchange: 根据源Exchange精准搜索过滤
        # @type SourceExchange: String
        # @param QueueName: 根据目标QueueName精准搜索过滤，和DestinationExchange过滤不可同时设置
        # @type QueueName: String
        # @param DestinationExchange: 根据目标Exchange精准搜索过滤，和QueueName过滤不可同时设置
        # @type DestinationExchange: String

        attr_accessor :InstanceId, :VirtualHost, :Offset, :Limit, :SearchWord, :SourceExchange, :QueueName, :DestinationExchange

        def initialize(instanceid=nil, virtualhost=nil, offset=nil, limit=nil, searchword=nil, sourceexchange=nil, queuename=nil, destinationexchange=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @Offset = offset
          @Limit = limit
          @SearchWord = searchword
          @SourceExchange = sourceexchange
          @QueueName = queuename
          @DestinationExchange = destinationexchange
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchWord = params['SearchWord']
          @SourceExchange = params['SourceExchange']
          @QueueName = params['QueueName']
          @DestinationExchange = params['DestinationExchange']
        end
      end

      # DescribeRabbitMQServerlessBindings返回参数结构体
      class DescribeRabbitMQServerlessBindingsResponse < TencentCloud::Common::AbstractModel
        # @param BindingInfoList: 路由关系列表
        # @type BindingInfoList: Array
        # @param TotalCount: 数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BindingInfoList, :TotalCount, :RequestId

        def initialize(bindinginfolist=nil, totalcount=nil, requestid=nil)
          @BindingInfoList = bindinginfolist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BindingInfoList'].nil?
            @BindingInfoList = []
            params['BindingInfoList'].each do |i|
              rabbitmqbindinglistinfo_tmp = RabbitMQBindingListInfo.new
              rabbitmqbindinglistinfo_tmp.deserialize(i)
              @BindingInfoList << rabbitmqbindinglistinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRabbitMQServerlessConnection请求参数结构体
      class DescribeRabbitMQServerlessConnectionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例Id
        # @type InstanceId: String
        # @param VirtualHost: vhost名
        # @type VirtualHost: String

        attr_accessor :InstanceId, :VirtualHost

        def initialize(instanceid=nil, virtualhost=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
        end
      end

      # DescribeRabbitMQServerlessConnection返回参数结构体
      class DescribeRabbitMQServerlessConnectionResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回连接数量
        # @type TotalCount: Integer
        # @param Connections: 连接详情列表
        # @type Connections: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Connections, :RequestId

        def initialize(totalcount=nil, connections=nil, requestid=nil)
          @TotalCount = totalcount
          @Connections = connections
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Connections'].nil?
            @Connections = []
            params['Connections'].each do |i|
              rabbitmqconnection_tmp = RabbitMQConnection.new
              rabbitmqconnection_tmp.deserialize(i)
              @Connections << rabbitmqconnection_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRabbitMQServerlessConsumers请求参数结构体
      class DescribeRabbitMQServerlessConsumersRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param VirtualHost: Vhost参数
        # @type VirtualHost: String
        # @param QueueName: 队列名
        # @type QueueName: String
        # @param Limit: 分页Limit
        # @type Limit: Integer
        # @param Offset: 分页Offset
        # @type Offset: Integer
        # @param SearchWord: 搜索关键词
        # @type SearchWord: String

        attr_accessor :InstanceId, :VirtualHost, :QueueName, :Limit, :Offset, :SearchWord

        def initialize(instanceid=nil, virtualhost=nil, queuename=nil, limit=nil, offset=nil, searchword=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @QueueName = queuename
          @Limit = limit
          @Offset = offset
          @SearchWord = searchword
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @QueueName = params['QueueName']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @SearchWord = params['SearchWord']
        end
      end

      # DescribeRabbitMQServerlessConsumers返回参数结构体
      class DescribeRabbitMQServerlessConsumersResponse < TencentCloud::Common::AbstractModel
        # @param ConsumerInfoList: 消费者列表信息
        # @type ConsumerInfoList: Array
        # @param TotalCount: 数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConsumerInfoList, :TotalCount, :RequestId

        def initialize(consumerinfolist=nil, totalcount=nil, requestid=nil)
          @ConsumerInfoList = consumerinfolist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ConsumerInfoList'].nil?
            @ConsumerInfoList = []
            params['ConsumerInfoList'].each do |i|
              rabbitmqconsumerslistinfo_tmp = RabbitMQConsumersListInfo.new
              rabbitmqconsumerslistinfo_tmp.deserialize(i)
              @ConsumerInfoList << rabbitmqconsumerslistinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRabbitMQServerlessExchangeDetail请求参数结构体
      class DescribeRabbitMQServerlessExchangeDetailRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 id
        # @type InstanceId: String
        # @param VirtualHost: vhost 参数
        # @type VirtualHost: String
        # @param ExchangeName: exchange 名称
        # @type ExchangeName: String

        attr_accessor :InstanceId, :VirtualHost, :ExchangeName

        def initialize(instanceid=nil, virtualhost=nil, exchangename=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @ExchangeName = exchangename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @ExchangeName = params['ExchangeName']
        end
      end

      # DescribeRabbitMQServerlessExchangeDetail返回参数结构体
      class DescribeRabbitMQServerlessExchangeDetailResponse < TencentCloud::Common::AbstractModel
        # @param ExchangeName: exchange 名
        # @type ExchangeName: String
        # @param Remark: 备注说明
        # @type Remark: String
        # @param Durable: 是否为持久化 exchange, 当集群重启时, 将会清除所有该字段为 "false" 的 exchange
        # @type Durable: Boolean
        # @param AutoDelete: 是否自动删除该 exchange, 如果为 "true", 当解绑所有当前 exchange 上的路由关系时, 该 exchange 将会被自动删除
        # @type AutoDelete: Boolean
        # @param Internal: 是否为内部 exchange, 如果为 "true", 则无法直接投递消息到该 exchange, 需要在路由设置中通过其他 exchange 进行转发
        # @type Internal: Boolean
        # @param AlternateExchange: 替代 exchange, 如果消息没有匹配当前 exchange 绑定的所有 queue 或 exchange, 就会发送到该替代 exchange
        # @type AlternateExchange: String
        # @param ExchangeType: exchange 类型, 支持 "fanout","direct","topic","headers"
        # @type ExchangeType: String
        # @param VirtualHost: VHost参数
        # @type VirtualHost: String
        # @param ExchangeCreator: exchange 创建者, "system":"系统创建", "user":"用户创建"
        # @type ExchangeCreator: String
        # @param Arguments: 扩展参数 key-value 字符串
        # @type Arguments: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ExchangeName, :Remark, :Durable, :AutoDelete, :Internal, :AlternateExchange, :ExchangeType, :VirtualHost, :ExchangeCreator, :Arguments, :RequestId

        def initialize(exchangename=nil, remark=nil, durable=nil, autodelete=nil, internal=nil, alternateexchange=nil, exchangetype=nil, virtualhost=nil, exchangecreator=nil, arguments=nil, requestid=nil)
          @ExchangeName = exchangename
          @Remark = remark
          @Durable = durable
          @AutoDelete = autodelete
          @Internal = internal
          @AlternateExchange = alternateexchange
          @ExchangeType = exchangetype
          @VirtualHost = virtualhost
          @ExchangeCreator = exchangecreator
          @Arguments = arguments
          @RequestId = requestid
        end

        def deserialize(params)
          @ExchangeName = params['ExchangeName']
          @Remark = params['Remark']
          @Durable = params['Durable']
          @AutoDelete = params['AutoDelete']
          @Internal = params['Internal']
          @AlternateExchange = params['AlternateExchange']
          @ExchangeType = params['ExchangeType']
          @VirtualHost = params['VirtualHost']
          @ExchangeCreator = params['ExchangeCreator']
          @Arguments = params['Arguments']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRabbitMQServerlessExchanges请求参数结构体
      class DescribeRabbitMQServerlessExchangesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 id
        # @type InstanceId: String
        # @param VirtualHost: vhost 参数
        # @type VirtualHost: String
        # @param Offset: 分页 offset
        # @type Offset: Integer
        # @param Limit: 分页 limit
        # @type Limit: Integer
        # @param SearchWord: 搜索关键词, 支持模糊匹配
        # @type SearchWord: String
        # @param ExchangeTypeFilters: 筛选 exchange 类型, 数组中每个元素为选中的过滤类型
        # @type ExchangeTypeFilters: Array
        # @param ExchangeCreatorFilters: 筛选 exchange 创建来源,  "system":"系统创建", "user":"用户创建"
        # @type ExchangeCreatorFilters: Array
        # @param ExchangeName: exchange 名称，用于精确匹配
        # @type ExchangeName: String
        # @param SortElement: 排序依据的字段：
        # MessageRateInOut - 生产消费速率之和；
        # MessageRateIn - 生产速率；
        # MessageRateOut - 消费速率；
        # @type SortElement: String
        # @param SortOrder: 排序顺序，ascend 或 descend
        # @type SortOrder: String

        attr_accessor :InstanceId, :VirtualHost, :Offset, :Limit, :SearchWord, :ExchangeTypeFilters, :ExchangeCreatorFilters, :ExchangeName, :SortElement, :SortOrder

        def initialize(instanceid=nil, virtualhost=nil, offset=nil, limit=nil, searchword=nil, exchangetypefilters=nil, exchangecreatorfilters=nil, exchangename=nil, sortelement=nil, sortorder=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @Offset = offset
          @Limit = limit
          @SearchWord = searchword
          @ExchangeTypeFilters = exchangetypefilters
          @ExchangeCreatorFilters = exchangecreatorfilters
          @ExchangeName = exchangename
          @SortElement = sortelement
          @SortOrder = sortorder
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchWord = params['SearchWord']
          @ExchangeTypeFilters = params['ExchangeTypeFilters']
          @ExchangeCreatorFilters = params['ExchangeCreatorFilters']
          @ExchangeName = params['ExchangeName']
          @SortElement = params['SortElement']
          @SortOrder = params['SortOrder']
        end
      end

      # DescribeRabbitMQServerlessExchanges返回参数结构体
      class DescribeRabbitMQServerlessExchangesResponse < TencentCloud::Common::AbstractModel
        # @param ExchangeInfoList: 交换机列表
        # @type ExchangeInfoList: Array
        # @param TotalCount: 交换机总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ExchangeInfoList, :TotalCount, :RequestId

        def initialize(exchangeinfolist=nil, totalcount=nil, requestid=nil)
          @ExchangeInfoList = exchangeinfolist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ExchangeInfoList'].nil?
            @ExchangeInfoList = []
            params['ExchangeInfoList'].each do |i|
              rabbitmqexchangelistinfo_tmp = RabbitMQExchangeListInfo.new
              rabbitmqexchangelistinfo_tmp.deserialize(i)
              @ExchangeInfoList << rabbitmqexchangelistinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRabbitMQServerlessInstance请求参数结构体
      class DescribeRabbitMQServerlessInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeRabbitMQServerlessInstance返回参数结构体
      class DescribeRabbitMQServerlessInstanceResponse < TencentCloud::Common::AbstractModel
        # @param ClusterInfo: 集群信息
        # @type ClusterInfo: :class:`Tencentcloud::Trabbit.v20230418.models.RabbitMQClusterInfo`
        # @param ClusterSpecInfo: 集群规格信息
        # @type ClusterSpecInfo: :class:`Tencentcloud::Trabbit.v20230418.models.RabbitMQClusterSpecInfo`
        # @param VirtualHostQuota: vhost配额信息
        # @type VirtualHostQuota: :class:`Tencentcloud::Trabbit.v20230418.models.VirtualHostQuota`
        # @param ExchangeQuota: exchange配额信息
        # @type ExchangeQuota: :class:`Tencentcloud::Trabbit.v20230418.models.ExchangeQuota`
        # @param QueueQuota: queue配额信息
        # @type QueueQuota: :class:`Tencentcloud::Trabbit.v20230418.models.QueueQuota`
        # @param ClusterNetInfo: 网络信息
        # @type ClusterNetInfo: :class:`Tencentcloud::Trabbit.v20230418.models.RabbitMQServerlessAccessInfo`
        # @param ClusterWhiteListInfo: 公网白名单信息
        # @type ClusterWhiteListInfo: :class:`Tencentcloud::Trabbit.v20230418.models.RabbitMQServerlessWhiteListInfo`
        # @param UserQuota: user配额信息
        # @type UserQuota: :class:`Tencentcloud::Trabbit.v20230418.models.UserQuota`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterInfo, :ClusterSpecInfo, :VirtualHostQuota, :ExchangeQuota, :QueueQuota, :ClusterNetInfo, :ClusterWhiteListInfo, :UserQuota, :RequestId

        def initialize(clusterinfo=nil, clusterspecinfo=nil, virtualhostquota=nil, exchangequota=nil, queuequota=nil, clusternetinfo=nil, clusterwhitelistinfo=nil, userquota=nil, requestid=nil)
          @ClusterInfo = clusterinfo
          @ClusterSpecInfo = clusterspecinfo
          @VirtualHostQuota = virtualhostquota
          @ExchangeQuota = exchangequota
          @QueueQuota = queuequota
          @ClusterNetInfo = clusternetinfo
          @ClusterWhiteListInfo = clusterwhitelistinfo
          @UserQuota = userquota
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClusterInfo'].nil?
            @ClusterInfo = RabbitMQClusterInfo.new
            @ClusterInfo.deserialize(params['ClusterInfo'])
          end
          unless params['ClusterSpecInfo'].nil?
            @ClusterSpecInfo = RabbitMQClusterSpecInfo.new
            @ClusterSpecInfo.deserialize(params['ClusterSpecInfo'])
          end
          unless params['VirtualHostQuota'].nil?
            @VirtualHostQuota = VirtualHostQuota.new
            @VirtualHostQuota.deserialize(params['VirtualHostQuota'])
          end
          unless params['ExchangeQuota'].nil?
            @ExchangeQuota = ExchangeQuota.new
            @ExchangeQuota.deserialize(params['ExchangeQuota'])
          end
          unless params['QueueQuota'].nil?
            @QueueQuota = QueueQuota.new
            @QueueQuota.deserialize(params['QueueQuota'])
          end
          unless params['ClusterNetInfo'].nil?
            @ClusterNetInfo = RabbitMQServerlessAccessInfo.new
            @ClusterNetInfo.deserialize(params['ClusterNetInfo'])
          end
          unless params['ClusterWhiteListInfo'].nil?
            @ClusterWhiteListInfo = RabbitMQServerlessWhiteListInfo.new
            @ClusterWhiteListInfo.deserialize(params['ClusterWhiteListInfo'])
          end
          unless params['UserQuota'].nil?
            @UserQuota = UserQuota.new
            @UserQuota.deserialize(params['UserQuota'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRabbitMQServerlessPermission请求参数结构体
      class DescribeRabbitMQServerlessPermissionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例id
        # @type InstanceId: String
        # @param User: 用户名，用于查询过滤，不传则查询全部
        # @type User: String
        # @param VirtualHost: vhost名，用于查询过滤，不传则查询全部
        # @type VirtualHost: String
        # @param Offset: 分页Offset
        # @type Offset: Integer
        # @param Limit: 分页Limit
        # @type Limit: Integer

        attr_accessor :InstanceId, :User, :VirtualHost, :Offset, :Limit

        def initialize(instanceid=nil, user=nil, virtualhost=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @User = user
          @VirtualHost = virtualhost
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @User = params['User']
          @VirtualHost = params['VirtualHost']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeRabbitMQServerlessPermission返回参数结构体
      class DescribeRabbitMQServerlessPermissionResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回权限数量
        # @type TotalCount: Integer
        # @param RabbitMQPermissionList: 权限详情列表
        # @type RabbitMQPermissionList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RabbitMQPermissionList, :RequestId

        def initialize(totalcount=nil, rabbitmqpermissionlist=nil, requestid=nil)
          @TotalCount = totalcount
          @RabbitMQPermissionList = rabbitmqpermissionlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RabbitMQPermissionList'].nil?
            @RabbitMQPermissionList = []
            params['RabbitMQPermissionList'].each do |i|
              rabbitmqpermission_tmp = RabbitMQPermission.new
              rabbitmqpermission_tmp.deserialize(i)
              @RabbitMQPermissionList << rabbitmqpermission_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRabbitMQServerlessQueueDetail请求参数结构体
      class DescribeRabbitMQServerlessQueueDetailRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param VirtualHost: Vhost参数
        # @type VirtualHost: String
        # @param QueueName: 队列名称
        # @type QueueName: String

        attr_accessor :InstanceId, :VirtualHost, :QueueName

        def initialize(instanceid=nil, virtualhost=nil, queuename=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @QueueName = queuename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @QueueName = params['QueueName']
        end
      end

      # DescribeRabbitMQServerlessQueueDetail返回参数结构体
      class DescribeRabbitMQServerlessQueueDetailResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param VirtualHost: Vhost参数
        # @type VirtualHost: String
        # @param QueueName: 队列名称
        # @type QueueName: String
        # @param QueueType: 队列类型,取值classic或quorum
        # @type QueueType: String
        # @param Consumers: 在线消费者数量
        # @type Consumers: Integer
        # @param Durable: 持久标记
        # @type Durable: Boolean
        # @param AutoDelete: 自动清除
        # @type AutoDelete: Boolean
        # @param Remark: 备注
        # @type Remark: String
        # @param MessageTTL: MessageTTL参数,classic类型专用
        # @type MessageTTL: Integer
        # @param AutoExpire: AutoExpire参数
        # @type AutoExpire: Integer
        # @param MaxLength: MaxLength参数
        # @type MaxLength: Integer
        # @param MaxLengthBytes: MaxLengthBytes参数
        # @type MaxLengthBytes: Integer
        # @param DeliveryLimit: DeliveryLimit参数,quorum类型专用
        # @type DeliveryLimit: Integer
        # @param OverflowBehaviour: OverflowBehaviour参数,取值为drop-head, reject-publish或reject-publish-dlx
        # @type OverflowBehaviour: String
        # @param DeadLetterExchange: DeadLetterExchange参数
        # @type DeadLetterExchange: String
        # @param DeadLetterRoutingKey: DeadLetterRoutingKey参数
        # @type DeadLetterRoutingKey: String
        # @param SingleActiveConsumer: SingleActiveConsumer参数
        # @type SingleActiveConsumer: Boolean
        # @param MaximumPriority: MaximumPriority参数,classic类型专用
        # @type MaximumPriority: Integer
        # @param LazyMode: LazyMode参数,classic类型专用
        # @type LazyMode: Boolean
        # @param MasterLocator: MasterLocator参数,classic类型专用
        # @type MasterLocator: String
        # @param MaxInMemoryLength: MaxInMemoryLength参数,quorum类型专用
        # @type MaxInMemoryLength: Integer
        # @param MaxInMemoryBytes: MaxInMemoryBytes参数,quorum类型专用
        # @type MaxInMemoryBytes: Integer
        # @param CreateTime: 创建时间戳,单位秒
        # @type CreateTime: Integer
        # @param Node: 节点
        # @type Node: String
        # @param DeadLetterStrategy: 仲裁队列死信一致性策略
        # @type DeadLetterStrategy: String
        # @param QueueLeaderLocator: 仲裁队列的领导者选举策略
        # @type QueueLeaderLocator: String
        # @param QuorumInitialGroupSize: 仲裁队列的初始副本组大小
        # @type QuorumInitialGroupSize: Integer
        # @param Exclusive: 是否为独占队列
        # @type Exclusive: Boolean
        # @param Policy: 生效的策略名
        # @type Policy: String
        # @param Arguments: 扩展参数 key-value
        # @type Arguments: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :VirtualHost, :QueueName, :QueueType, :Consumers, :Durable, :AutoDelete, :Remark, :MessageTTL, :AutoExpire, :MaxLength, :MaxLengthBytes, :DeliveryLimit, :OverflowBehaviour, :DeadLetterExchange, :DeadLetterRoutingKey, :SingleActiveConsumer, :MaximumPriority, :LazyMode, :MasterLocator, :MaxInMemoryLength, :MaxInMemoryBytes, :CreateTime, :Node, :DeadLetterStrategy, :QueueLeaderLocator, :QuorumInitialGroupSize, :Exclusive, :Policy, :Arguments, :RequestId

        def initialize(instanceid=nil, virtualhost=nil, queuename=nil, queuetype=nil, consumers=nil, durable=nil, autodelete=nil, remark=nil, messagettl=nil, autoexpire=nil, maxlength=nil, maxlengthbytes=nil, deliverylimit=nil, overflowbehaviour=nil, deadletterexchange=nil, deadletterroutingkey=nil, singleactiveconsumer=nil, maximumpriority=nil, lazymode=nil, masterlocator=nil, maxinmemorylength=nil, maxinmemorybytes=nil, createtime=nil, node=nil, deadletterstrategy=nil, queueleaderlocator=nil, quoruminitialgroupsize=nil, exclusive=nil, policy=nil, arguments=nil, requestid=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @QueueName = queuename
          @QueueType = queuetype
          @Consumers = consumers
          @Durable = durable
          @AutoDelete = autodelete
          @Remark = remark
          @MessageTTL = messagettl
          @AutoExpire = autoexpire
          @MaxLength = maxlength
          @MaxLengthBytes = maxlengthbytes
          @DeliveryLimit = deliverylimit
          @OverflowBehaviour = overflowbehaviour
          @DeadLetterExchange = deadletterexchange
          @DeadLetterRoutingKey = deadletterroutingkey
          @SingleActiveConsumer = singleactiveconsumer
          @MaximumPriority = maximumpriority
          @LazyMode = lazymode
          @MasterLocator = masterlocator
          @MaxInMemoryLength = maxinmemorylength
          @MaxInMemoryBytes = maxinmemorybytes
          @CreateTime = createtime
          @Node = node
          @DeadLetterStrategy = deadletterstrategy
          @QueueLeaderLocator = queueleaderlocator
          @QuorumInitialGroupSize = quoruminitialgroupsize
          @Exclusive = exclusive
          @Policy = policy
          @Arguments = arguments
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @QueueName = params['QueueName']
          @QueueType = params['QueueType']
          @Consumers = params['Consumers']
          @Durable = params['Durable']
          @AutoDelete = params['AutoDelete']
          @Remark = params['Remark']
          @MessageTTL = params['MessageTTL']
          @AutoExpire = params['AutoExpire']
          @MaxLength = params['MaxLength']
          @MaxLengthBytes = params['MaxLengthBytes']
          @DeliveryLimit = params['DeliveryLimit']
          @OverflowBehaviour = params['OverflowBehaviour']
          @DeadLetterExchange = params['DeadLetterExchange']
          @DeadLetterRoutingKey = params['DeadLetterRoutingKey']
          @SingleActiveConsumer = params['SingleActiveConsumer']
          @MaximumPriority = params['MaximumPriority']
          @LazyMode = params['LazyMode']
          @MasterLocator = params['MasterLocator']
          @MaxInMemoryLength = params['MaxInMemoryLength']
          @MaxInMemoryBytes = params['MaxInMemoryBytes']
          @CreateTime = params['CreateTime']
          @Node = params['Node']
          @DeadLetterStrategy = params['DeadLetterStrategy']
          @QueueLeaderLocator = params['QueueLeaderLocator']
          @QuorumInitialGroupSize = params['QuorumInitialGroupSize']
          @Exclusive = params['Exclusive']
          @Policy = params['Policy']
          @Arguments = params['Arguments']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRabbitMQServerlessQueues请求参数结构体
      class DescribeRabbitMQServerlessQueuesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param VirtualHost: Vhost参数
        # @type VirtualHost: String
        # @param Offset: 分页Offset
        # @type Offset: Integer
        # @param Limit: 分页Limit
        # @type Limit: Integer
        # @param SearchWord: 搜索关键词
        # @type SearchWord: String
        # @param QueueType: 队列类型筛选，不填或 "all"：classic 和 quorum 队列；"classic"：筛选 classic 队列；"quorum"：筛选 quorum 队列
        # @type QueueType: String
        # @param SortElement: 排序依据的字段：
        # ConsumerNumber - 在线消费者数量；
        # MessageHeapCount - 消息堆积数；
        # MessageRateInOut - 生产消费速率之和；
        # MessageRateIn - 生产速率；
        # MessageRateOut - 消费速率；
        # @type SortElement: String
        # @param SortOrder: 排序顺序，ascend 或 descend
        # @type SortOrder: String

        attr_accessor :InstanceId, :VirtualHost, :Offset, :Limit, :SearchWord, :QueueType, :SortElement, :SortOrder

        def initialize(instanceid=nil, virtualhost=nil, offset=nil, limit=nil, searchword=nil, queuetype=nil, sortelement=nil, sortorder=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @Offset = offset
          @Limit = limit
          @SearchWord = searchword
          @QueueType = queuetype
          @SortElement = sortelement
          @SortOrder = sortorder
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchWord = params['SearchWord']
          @QueueType = params['QueueType']
          @SortElement = params['SortElement']
          @SortOrder = params['SortOrder']
        end
      end

      # DescribeRabbitMQServerlessQueues返回参数结构体
      class DescribeRabbitMQServerlessQueuesResponse < TencentCloud::Common::AbstractModel
        # @param QueueInfoList: 队列列表信息
        # @type QueueInfoList: Array
        # @param TotalCount: 数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QueueInfoList, :TotalCount, :RequestId

        def initialize(queueinfolist=nil, totalcount=nil, requestid=nil)
          @QueueInfoList = queueinfolist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['QueueInfoList'].nil?
            @QueueInfoList = []
            params['QueueInfoList'].each do |i|
              rabbitmqqueuelistinfo_tmp = RabbitMQQueueListInfo.new
              rabbitmqqueuelistinfo_tmp.deserialize(i)
              @QueueInfoList << rabbitmqqueuelistinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRabbitMQServerlessUser请求参数结构体
      class DescribeRabbitMQServerlessUserRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例Id
        # @type InstanceId: String
        # @param SearchUser: 用户名检索，支持前缀匹配，后缀匹配
        # @type SearchUser: String
        # @param Offset: 分页Offset
        # @type Offset: Integer
        # @param Limit: 分页Limit
        # @type Limit: Integer
        # @param User: 用户名，精确查询
        # @type User: String
        # @param Tags: 用户标签，根据标签过滤列表
        # @type Tags: Array

        attr_accessor :InstanceId, :SearchUser, :Offset, :Limit, :User, :Tags

        def initialize(instanceid=nil, searchuser=nil, offset=nil, limit=nil, user=nil, tags=nil)
          @InstanceId = instanceid
          @SearchUser = searchuser
          @Offset = offset
          @Limit = limit
          @User = user
          @Tags = tags
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SearchUser = params['SearchUser']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @User = params['User']
          @Tags = params['Tags']
        end
      end

      # DescribeRabbitMQServerlessUser返回参数结构体
      class DescribeRabbitMQServerlessUserResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回的User数量
        # @type TotalCount: Integer
        # @param RabbitMQUserList: 当前已创建的RabbitMQ用户列表
        # @type RabbitMQUserList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RabbitMQUserList, :RequestId

        def initialize(totalcount=nil, rabbitmquserlist=nil, requestid=nil)
          @TotalCount = totalcount
          @RabbitMQUserList = rabbitmquserlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RabbitMQUserList'].nil?
            @RabbitMQUserList = []
            params['RabbitMQUserList'].each do |i|
              rabbitmquser_tmp = RabbitMQUser.new
              rabbitmquser_tmp.deserialize(i)
              @RabbitMQUserList << rabbitmquser_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRabbitMQServerlessVirtualHost请求参数结构体
      class DescribeRabbitMQServerlessVirtualHostRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例Id
        # @type InstanceId: String
        # @param VirtualHost: vhost名,不传则查询全部
        # @type VirtualHost: String
        # @param Offset: 分页Offset
        # @type Offset: Integer
        # @param Limit: 分页Limit
        # @type Limit: Integer
        # @param Filters: search-virtual-host：vhost名称模糊查询，之前前缀和后缀匹配
        # @type Filters: :class:`Tencentcloud::Trabbit.v20230418.models.Filter`
        # @param SortElement: 排序依据的字段：
        # MessageHeapCount - 消息堆积数；
        # MessageRateInOut - 生产消费速率之和；
        # MessageRateIn - 生产速率；
        # MessageRateOut - 消费速率；
        # @type SortElement: String
        # @param SortOrder: 排序顺序，ascend 或 descend
        # @type SortOrder: String

        attr_accessor :InstanceId, :VirtualHost, :Offset, :Limit, :Filters, :SortElement, :SortOrder

        def initialize(instanceid=nil, virtualhost=nil, offset=nil, limit=nil, filters=nil, sortelement=nil, sortorder=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @SortElement = sortelement
          @SortOrder = sortorder
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = Filter.new
            @Filters.deserialize(params['Filters'])
          end
          @SortElement = params['SortElement']
          @SortOrder = params['SortOrder']
        end
      end

      # DescribeRabbitMQServerlessVirtualHost返回参数结构体
      class DescribeRabbitMQServerlessVirtualHostResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回vhost数量
        # @type TotalCount: Integer
        # @param VirtualHostList: vhost详情列表
        # @type VirtualHostList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :VirtualHostList, :RequestId

        def initialize(totalcount=nil, virtualhostlist=nil, requestid=nil)
          @TotalCount = totalcount
          @VirtualHostList = virtualhostlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['VirtualHostList'].nil?
            @VirtualHostList = []
            params['VirtualHostList'].each do |i|
              rabbitmqvirtualhostinfo_tmp = RabbitMQVirtualHostInfo.new
              rabbitmqvirtualhostinfo_tmp.deserialize(i)
              @VirtualHostList << rabbitmqvirtualhostinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # exchange使用配额信息
      class ExchangeQuota < TencentCloud::Common::AbstractModel
        # @param MaxExchange: 可创建最大exchange数
        # @type MaxExchange: Integer
        # @param UsedExchange: 已创建exchange数
        # @type UsedExchange: Integer

        attr_accessor :MaxExchange, :UsedExchange

        def initialize(maxexchange=nil, usedexchange=nil)
          @MaxExchange = maxexchange
          @UsedExchange = usedexchange
        end

        def deserialize(params)
          @MaxExchange = params['MaxExchange']
          @UsedExchange = params['UsedExchange']
        end
      end

      # 过滤参数
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤参数的名字
        # @type Name: String
        # @param Values: 数值
        # @type Values: Array

        attr_accessor :Name, :Values

        def initialize(name=nil, values=nil)
          @Name = name
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
        end
      end

      # ListRabbitMQServerlessInstances请求参数结构体
      class ListRabbitMQServerlessInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件
        # @type Filters: Array
        # @param Limit: 翻页大小
        # @type Limit: Integer
        # @param Offset: 翻页的起始索引值
        # @type Offset: Integer

        attr_accessor :Filters, :Limit, :Offset

        def initialize(filters=nil, limit=nil, offset=nil)
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # ListRabbitMQServerlessInstances返回参数结构体
      class ListRabbitMQServerlessInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Instances: 实例列表
        # @type Instances: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Instances, :TotalCount, :RequestId

        def initialize(instances=nil, totalcount=nil, requestid=nil)
          @Instances = instances
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              rabbitmqserverlessinstance_tmp = RabbitMQServerlessInstance.new
              rabbitmqserverlessinstance_tmp.deserialize(i)
              @Instances << rabbitmqserverlessinstance_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # ModifyRabbitMQServerlessExchange请求参数结构体
      class ModifyRabbitMQServerlessExchangeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 id
        # @type InstanceId: String
        # @param VirtualHost: vhost 参数
        # @type VirtualHost: String
        # @param ExchangeName: exchange 名称
        # @type ExchangeName: String
        # @param Remark: 备注信息
        # @type Remark: String

        attr_accessor :InstanceId, :VirtualHost, :ExchangeName, :Remark

        def initialize(instanceid=nil, virtualhost=nil, exchangename=nil, remark=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @ExchangeName = exchangename
          @Remark = remark
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @ExchangeName = params['ExchangeName']
          @Remark = params['Remark']
        end
      end

      # ModifyRabbitMQServerlessExchange返回参数结构体
      class ModifyRabbitMQServerlessExchangeResponse < TencentCloud::Common::AbstractModel
        # @param ExchangeName: exchange 名称
        # @type ExchangeName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ExchangeName, :RequestId

        def initialize(exchangename=nil, requestid=nil)
          @ExchangeName = exchangename
          @RequestId = requestid
        end

        def deserialize(params)
          @ExchangeName = params['ExchangeName']
          @RequestId = params['RequestId']
        end
      end

      # ModifyRabbitMQServerlessInstance请求参数结构体
      class ModifyRabbitMQServerlessInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param ClusterName: 集群名
        # @type ClusterName: String
        # @param Remark: 备注信息
        # @type Remark: String
        # @param TraceFlag: 是否开启trace
        # @type TraceFlag: Boolean

        attr_accessor :InstanceId, :ClusterName, :Remark, :TraceFlag

        def initialize(instanceid=nil, clustername=nil, remark=nil, traceflag=nil)
          @InstanceId = instanceid
          @ClusterName = clustername
          @Remark = remark
          @TraceFlag = traceflag
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ClusterName = params['ClusterName']
          @Remark = params['Remark']
          @TraceFlag = params['TraceFlag']
        end
      end

      # ModifyRabbitMQServerlessInstance返回参数结构体
      class ModifyRabbitMQServerlessInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
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

      # ModifyRabbitMQServerlessPermission请求参数结构体
      class ModifyRabbitMQServerlessPermissionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例Id
        # @type InstanceId: String
        # @param User: 用户名，权限关联的用户
        # @type User: String
        # @param VirtualHost: vhost名
        # @type VirtualHost: String
        # @param ConfigRegexp: 权限类型，declare相关操作，该用户可操作该vhost下的资源名称正则表达式
        # @type ConfigRegexp: String
        # @param WriteRegexp: 权限类型，消息写入相关操作，该用户可操作该vhost下的资源名称正则表达式
        # @type WriteRegexp: String
        # @param ReadRegexp: 权限类型，消息读取相关操作，该用户可操作该vhost下的资源名称正则表达式
        # @type ReadRegexp: String

        attr_accessor :InstanceId, :User, :VirtualHost, :ConfigRegexp, :WriteRegexp, :ReadRegexp

        def initialize(instanceid=nil, user=nil, virtualhost=nil, configregexp=nil, writeregexp=nil, readregexp=nil)
          @InstanceId = instanceid
          @User = user
          @VirtualHost = virtualhost
          @ConfigRegexp = configregexp
          @WriteRegexp = writeregexp
          @ReadRegexp = readregexp
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @User = params['User']
          @VirtualHost = params['VirtualHost']
          @ConfigRegexp = params['ConfigRegexp']
          @WriteRegexp = params['WriteRegexp']
          @ReadRegexp = params['ReadRegexp']
        end
      end

      # ModifyRabbitMQServerlessPermission返回参数结构体
      class ModifyRabbitMQServerlessPermissionResponse < TencentCloud::Common::AbstractModel
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

      # ModifyRabbitMQServerlessQueue请求参数结构体
      class ModifyRabbitMQServerlessQueueRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param VirtualHost: Vhost参数
        # @type VirtualHost: String
        # @param QueueName: 队列名称
        # @type QueueName: String
        # @param Remark: 新修改的备注
        # @type Remark: String

        attr_accessor :InstanceId, :VirtualHost, :QueueName, :Remark

        def initialize(instanceid=nil, virtualhost=nil, queuename=nil, remark=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @QueueName = queuename
          @Remark = remark
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @QueueName = params['QueueName']
          @Remark = params['Remark']
        end
      end

      # ModifyRabbitMQServerlessQueue返回参数结构体
      class ModifyRabbitMQServerlessQueueResponse < TencentCloud::Common::AbstractModel
        # @param QueueName: 队列名称
        # @type QueueName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QueueName, :RequestId

        def initialize(queuename=nil, requestid=nil)
          @QueueName = queuename
          @RequestId = requestid
        end

        def deserialize(params)
          @QueueName = params['QueueName']
          @RequestId = params['RequestId']
        end
      end

      # ModifyRabbitMQServerlessUser请求参数结构体
      class ModifyRabbitMQServerlessUserRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例Id
        # @type InstanceId: String
        # @param User: 用户名
        # @type User: String
        # @param Password: 密码
        # @type Password: String
        # @param Description: 描述，不传则不修改
        # @type Description: String
        # @param Tags: 用户标签，用于决定改用户访问RabbitMQ Management的权限范围，不传则不修改
        # @type Tags: Array
        # @param MaxConnections: 该用户的最大连接数，不传则不修改
        # @type MaxConnections: Integer
        # @param MaxChannels: 该用户的最大channel数，不传则不修改
        # @type MaxChannels: Integer

        attr_accessor :InstanceId, :User, :Password, :Description, :Tags, :MaxConnections, :MaxChannels

        def initialize(instanceid=nil, user=nil, password=nil, description=nil, tags=nil, maxconnections=nil, maxchannels=nil)
          @InstanceId = instanceid
          @User = user
          @Password = password
          @Description = description
          @Tags = tags
          @MaxConnections = maxconnections
          @MaxChannels = maxchannels
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @User = params['User']
          @Password = params['Password']
          @Description = params['Description']
          @Tags = params['Tags']
          @MaxConnections = params['MaxConnections']
          @MaxChannels = params['MaxChannels']
        end
      end

      # ModifyRabbitMQServerlessUser返回参数结构体
      class ModifyRabbitMQServerlessUserResponse < TencentCloud::Common::AbstractModel
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

      # ModifyRabbitMQServerlessVirtualHost请求参数结构体
      class ModifyRabbitMQServerlessVirtualHostRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例Id
        # @type InstanceId: String
        # @param VirtualHost: vhost名
        # @type VirtualHost: String
        # @param Description: vhost描述信息
        # @type Description: String
        # @param TraceFlag: 消息轨迹开关,true打开,false关闭
        # @type TraceFlag: Boolean

        attr_accessor :InstanceId, :VirtualHost, :Description, :TraceFlag

        def initialize(instanceid=nil, virtualhost=nil, description=nil, traceflag=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @Description = description
          @TraceFlag = traceflag
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @Description = params['Description']
          @TraceFlag = params['TraceFlag']
        end
      end

      # ModifyRabbitMQServerlessVirtualHost返回参数结构体
      class ModifyRabbitMQServerlessVirtualHostResponse < TencentCloud::Common::AbstractModel
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

      # queue使用配额信息
      class QueueQuota < TencentCloud::Common::AbstractModel
        # @param MaxQueue: 可创建最大Queue数
        # @type MaxQueue: Integer
        # @param UsedQueue: 已创建Queue数
        # @type UsedQueue: Integer

        attr_accessor :MaxQueue, :UsedQueue

        def initialize(maxqueue=nil, usedqueue=nil)
          @MaxQueue = maxqueue
          @UsedQueue = usedqueue
        end

        def deserialize(params)
          @MaxQueue = params['MaxQueue']
          @UsedQueue = params['UsedQueue']
        end
      end

      # Rabbitmq路由关系列表成员
      class RabbitMQBindingListInfo < TencentCloud::Common::AbstractModel
        # @param BindingId: 路由关系id
        # @type BindingId: Integer
        # @param VirtualHost: Vhost参数
        # @type VirtualHost: String
        # @param Source: 源exchange名称
        # @type Source: String
        # @param DestinationType: 目标类型,queue或exchange
        # @type DestinationType: String
        # @param Destination: 目标资源名称
        # @type Destination: String
        # @param RoutingKey: 绑定key
        # @type RoutingKey: String
        # @param SourceExchangeType: 源exchange类型
        # @type SourceExchangeType: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String

        attr_accessor :BindingId, :VirtualHost, :Source, :DestinationType, :Destination, :RoutingKey, :SourceExchangeType, :CreateTime, :ModifyTime

        def initialize(bindingid=nil, virtualhost=nil, source=nil, destinationtype=nil, destination=nil, routingkey=nil, sourceexchangetype=nil, createtime=nil, modifytime=nil)
          @BindingId = bindingid
          @VirtualHost = virtualhost
          @Source = source
          @DestinationType = destinationtype
          @Destination = destination
          @RoutingKey = routingkey
          @SourceExchangeType = sourceexchangetype
          @CreateTime = createtime
          @ModifyTime = modifytime
        end

        def deserialize(params)
          @BindingId = params['BindingId']
          @VirtualHost = params['VirtualHost']
          @Source = params['Source']
          @DestinationType = params['DestinationType']
          @Destination = params['Destination']
          @RoutingKey = params['RoutingKey']
          @SourceExchangeType = params['SourceExchangeType']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
        end
      end

      # RabbiteMQ集群基本信息
      class RabbitMQClusterInfo < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param Region: 地域信息
        # @type Region: String
        # @param CreateTime: 创建时间，毫秒为单位
        # @type CreateTime: Integer
        # @param Remark: 集群说明信息
        # @type Remark: String
        # @param Vpcs: VPC及网络信息
        # @type Vpcs: Array
        # @param ZoneIds: 可用区信息
        # @type ZoneIds: Array
        # @param VirtualHostNumber: 虚拟主机数量
        # @type VirtualHostNumber: Integer
        # @param QueueNumber: 队列数量
        # @type QueueNumber: Integer
        # @param MessagePublishRate: 每秒生产消息数 单位：条/秒
        # @type MessagePublishRate: Float
        # @param MessageStackNumber: 堆积消息数 单位：条
        # @type MessageStackNumber: Integer
        # @param ExpireTime: 过期时间
        # @type ExpireTime: Integer
        # @param ChannelNumber: Channel数量
        # @type ChannelNumber: Integer
        # @param ConnectionNumber: Connection数量
        # @type ConnectionNumber: Integer
        # @param ConsumerNumber: Consumer数量
        # @type ConsumerNumber: Integer
        # @param ExchangeNumber: Exchang数量
        # @type ExchangeNumber: Integer
        # @param ExceptionInformation: 集群异常信息
        # @type ExceptionInformation: String
        # @param ClusterStatus: 实例状态，0表示创建中，1表示正常，2表示隔离中，3表示已销毁，4 - 异常, 5 - 发货失败
        # @type ClusterStatus: Integer
        # @param AutoRenewFlag: 自动续费标记，0表示默认状态(用户未设置，即初始状态即手动续费)， 1表示自动续费，2表示明确不自动续费(用户设置)
        # @type AutoRenewFlag: Integer
        # @param MirrorQueuePolicyFlag: 是否开启镜像队列策略。1表示开启，0表示没开启。
        # @type MirrorQueuePolicyFlag: Integer
        # @param MessageConsumeRate: 每秒消费消息数 单位：条/秒
        # @type MessageConsumeRate: Float
        # @param ClusterVersion: 集群版本信息
        # @type ClusterVersion: String
        # @param PayMode: 计费模式，0-后付费，1-预付费
        # @type PayMode: Integer
        # @param InstanceType: 集群类型
        # @type InstanceType: Integer
        # @param MessageRetainTime: 消息保留时间，单位小时
        # @type MessageRetainTime: Integer

        attr_accessor :ClusterId, :ClusterName, :Region, :CreateTime, :Remark, :Vpcs, :ZoneIds, :VirtualHostNumber, :QueueNumber, :MessagePublishRate, :MessageStackNumber, :ExpireTime, :ChannelNumber, :ConnectionNumber, :ConsumerNumber, :ExchangeNumber, :ExceptionInformation, :ClusterStatus, :AutoRenewFlag, :MirrorQueuePolicyFlag, :MessageConsumeRate, :ClusterVersion, :PayMode, :InstanceType, :MessageRetainTime

        def initialize(clusterid=nil, clustername=nil, region=nil, createtime=nil, remark=nil, vpcs=nil, zoneids=nil, virtualhostnumber=nil, queuenumber=nil, messagepublishrate=nil, messagestacknumber=nil, expiretime=nil, channelnumber=nil, connectionnumber=nil, consumernumber=nil, exchangenumber=nil, exceptioninformation=nil, clusterstatus=nil, autorenewflag=nil, mirrorqueuepolicyflag=nil, messageconsumerate=nil, clusterversion=nil, paymode=nil, instancetype=nil, messageretaintime=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @Region = region
          @CreateTime = createtime
          @Remark = remark
          @Vpcs = vpcs
          @ZoneIds = zoneids
          @VirtualHostNumber = virtualhostnumber
          @QueueNumber = queuenumber
          @MessagePublishRate = messagepublishrate
          @MessageStackNumber = messagestacknumber
          @ExpireTime = expiretime
          @ChannelNumber = channelnumber
          @ConnectionNumber = connectionnumber
          @ConsumerNumber = consumernumber
          @ExchangeNumber = exchangenumber
          @ExceptionInformation = exceptioninformation
          @ClusterStatus = clusterstatus
          @AutoRenewFlag = autorenewflag
          @MirrorQueuePolicyFlag = mirrorqueuepolicyflag
          @MessageConsumeRate = messageconsumerate
          @ClusterVersion = clusterversion
          @PayMode = paymode
          @InstanceType = instancetype
          @MessageRetainTime = messageretaintime
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @Region = params['Region']
          @CreateTime = params['CreateTime']
          @Remark = params['Remark']
          unless params['Vpcs'].nil?
            @Vpcs = []
            params['Vpcs'].each do |i|
              vpcendpointinfo_tmp = VpcEndpointInfo.new
              vpcendpointinfo_tmp.deserialize(i)
              @Vpcs << vpcendpointinfo_tmp
            end
          end
          @ZoneIds = params['ZoneIds']
          @VirtualHostNumber = params['VirtualHostNumber']
          @QueueNumber = params['QueueNumber']
          @MessagePublishRate = params['MessagePublishRate']
          @MessageStackNumber = params['MessageStackNumber']
          @ExpireTime = params['ExpireTime']
          @ChannelNumber = params['ChannelNumber']
          @ConnectionNumber = params['ConnectionNumber']
          @ConsumerNumber = params['ConsumerNumber']
          @ExchangeNumber = params['ExchangeNumber']
          @ExceptionInformation = params['ExceptionInformation']
          @ClusterStatus = params['ClusterStatus']
          @AutoRenewFlag = params['AutoRenewFlag']
          @MirrorQueuePolicyFlag = params['MirrorQueuePolicyFlag']
          @MessageConsumeRate = params['MessageConsumeRate']
          @ClusterVersion = params['ClusterVersion']
          @PayMode = params['PayMode']
          @InstanceType = params['InstanceType']
          @MessageRetainTime = params['MessageRetainTime']
        end
      end

      # RabbitMQ集群规格信息
      class RabbitMQClusterSpecInfo < TencentCloud::Common::AbstractModel
        # @param SpecName: 集群规格名称
        # @type SpecName: String
        # @param MaxTps: 峰值tps
        # @type MaxTps: Integer
        # @param MaxQueueNum: 最大队列数
        # @type MaxQueueNum: Integer
        # @param MaxExchangeNum: 最大交换机数
        # @type MaxExchangeNum: Integer
        # @param MaxVhostNum: 最大vhost数
        # @type MaxVhostNum: Integer
        # @param MaxConnNum: 最大连接数
        # @type MaxConnNum: Integer
        # @param MaxUserNum: 最大用户数
        # @type MaxUserNum: Integer
        # @param MaxBandWidth: 峰值带宽，已废弃
        # @type MaxBandWidth: Integer
        # @param PublicNetworkTps: 公网带宽，已废弃
        # @type PublicNetworkTps: Integer
        # @param Features: 实例对应的功能列表，true表示支持，false 表示不支持
        # @type Features: String

        attr_accessor :SpecName, :MaxTps, :MaxQueueNum, :MaxExchangeNum, :MaxVhostNum, :MaxConnNum, :MaxUserNum, :MaxBandWidth, :PublicNetworkTps, :Features

        def initialize(specname=nil, maxtps=nil, maxqueuenum=nil, maxexchangenum=nil, maxvhostnum=nil, maxconnnum=nil, maxusernum=nil, maxbandwidth=nil, publicnetworktps=nil, features=nil)
          @SpecName = specname
          @MaxTps = maxtps
          @MaxQueueNum = maxqueuenum
          @MaxExchangeNum = maxexchangenum
          @MaxVhostNum = maxvhostnum
          @MaxConnNum = maxconnnum
          @MaxUserNum = maxusernum
          @MaxBandWidth = maxbandwidth
          @PublicNetworkTps = publicnetworktps
          @Features = features
        end

        def deserialize(params)
          @SpecName = params['SpecName']
          @MaxTps = params['MaxTps']
          @MaxQueueNum = params['MaxQueueNum']
          @MaxExchangeNum = params['MaxExchangeNum']
          @MaxVhostNum = params['MaxVhostNum']
          @MaxConnNum = params['MaxConnNum']
          @MaxUserNum = params['MaxUserNum']
          @MaxBandWidth = params['MaxBandWidth']
          @PublicNetworkTps = params['PublicNetworkTps']
          @Features = params['Features']
        end
      end

      # RabbitMQ连接详情
      class RabbitMQConnection < TencentCloud::Common::AbstractModel
        # @param ConnectionName: 连接名称
        # @type ConnectionName: String
        # @param PeerHost: 客户端ip
        # @type PeerHost: String
        # @param State: 连接状态，包括 starting、tuning、opening、running、flow、blocking、blocked、closing 和 closed
        # @type State: String
        # @param User: 连接使用用户
        # @type User: String
        # @param SSL: 是否开启ssl
        # @type SSL: Boolean
        # @param Protocol: 连接协议
        # @type Protocol: String
        # @param Channels: 连接下的channel数
        # @type Channels: Integer

        attr_accessor :ConnectionName, :PeerHost, :State, :User, :SSL, :Protocol, :Channels

        def initialize(connectionname=nil, peerhost=nil, state=nil, user=nil, ssl=nil, protocol=nil, channels=nil)
          @ConnectionName = connectionname
          @PeerHost = peerhost
          @State = state
          @User = user
          @SSL = ssl
          @Protocol = protocol
          @Channels = channels
        end

        def deserialize(params)
          @ConnectionName = params['ConnectionName']
          @PeerHost = params['PeerHost']
          @State = params['State']
          @User = params['User']
          @SSL = params['SSL']
          @Protocol = params['Protocol']
          @Channels = params['Channels']
        end
      end

      # 队列消费者列表信息
      class RabbitMQConsumersListInfo < TencentCloud::Common::AbstractModel
        # @param ClientIp: 客户端Ip
        # @type ClientIp: String
        # @param ConsumerTag: 消费者Tag
        # @type ConsumerTag: String

        attr_accessor :ClientIp, :ConsumerTag

        def initialize(clientip=nil, consumertag=nil)
          @ClientIp = clientip
          @ConsumerTag = consumertag
        end

        def deserialize(params)
          @ClientIp = params['ClientIp']
          @ConsumerTag = params['ConsumerTag']
        end
      end

      # RabbitMQ exchange列表成员信息
      class RabbitMQExchangeListInfo < TencentCloud::Common::AbstractModel
        # @param ExchangeName: exchange 名
        # @type ExchangeName: String
        # @param Remark: 备注说明
        # @type Remark: String
        # @param ExchangeType: exchange 类型, 支持 "fanout","direct","topic","headers"
        # @type ExchangeType: String
        # @param VirtualHost: VHost参数
        # @type VirtualHost: String
        # @param ExchangeCreator: exchange 创建者, "system":"系统创建", "user":"用户创建"
        # @type ExchangeCreator: String
        # @param CreateTimeStamp: exchange 创建时间
        # @type CreateTimeStamp: String
        # @param ModTimeStamp: exchange 修改时间
        # @type ModTimeStamp: String
        # @param MessageRateIn: 输入消息速率
        # @type MessageRateIn: Float
        # @param MessageRateOut: 输出消息速率
        # @type MessageRateOut: Float
        # @param Durable: 是否为持久化交换机，true 为持久化，false 为非持久化
        # @type Durable: Boolean
        # @param AutoDelete: 是否为自动删除交换机，true 为自动删除，false 为非自动删除
        # @type AutoDelete: Boolean
        # @param Internal: 是否为内部交换机，true 为内部交换机
        # @type Internal: Boolean
        # @param InstanceId: 交换机所属实例 ID
        # @type InstanceId: String
        # @param Policy: 生效的策略名称
        # @type Policy: String
        # @param Arguments: 扩展参数 key-value 对象
        # @type Arguments: String
        # @param MessagesDelayed: 未调度的延时消息数量
        # @type MessagesDelayed: Integer

        attr_accessor :ExchangeName, :Remark, :ExchangeType, :VirtualHost, :ExchangeCreator, :CreateTimeStamp, :ModTimeStamp, :MessageRateIn, :MessageRateOut, :Durable, :AutoDelete, :Internal, :InstanceId, :Policy, :Arguments, :MessagesDelayed

        def initialize(exchangename=nil, remark=nil, exchangetype=nil, virtualhost=nil, exchangecreator=nil, createtimestamp=nil, modtimestamp=nil, messageratein=nil, messagerateout=nil, durable=nil, autodelete=nil, internal=nil, instanceid=nil, policy=nil, arguments=nil, messagesdelayed=nil)
          @ExchangeName = exchangename
          @Remark = remark
          @ExchangeType = exchangetype
          @VirtualHost = virtualhost
          @ExchangeCreator = exchangecreator
          @CreateTimeStamp = createtimestamp
          @ModTimeStamp = modtimestamp
          @MessageRateIn = messageratein
          @MessageRateOut = messagerateout
          @Durable = durable
          @AutoDelete = autodelete
          @Internal = internal
          @InstanceId = instanceid
          @Policy = policy
          @Arguments = arguments
          @MessagesDelayed = messagesdelayed
        end

        def deserialize(params)
          @ExchangeName = params['ExchangeName']
          @Remark = params['Remark']
          @ExchangeType = params['ExchangeType']
          @VirtualHost = params['VirtualHost']
          @ExchangeCreator = params['ExchangeCreator']
          @CreateTimeStamp = params['CreateTimeStamp']
          @ModTimeStamp = params['ModTimeStamp']
          @MessageRateIn = params['MessageRateIn']
          @MessageRateOut = params['MessageRateOut']
          @Durable = params['Durable']
          @AutoDelete = params['AutoDelete']
          @Internal = params['Internal']
          @InstanceId = params['InstanceId']
          @Policy = params['Policy']
          @Arguments = params['Arguments']
          @MessagesDelayed = params['MessagesDelayed']
        end
      end

      # RabbitMQ权限详情
      class RabbitMQPermission < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例Id
        # @type InstanceId: String
        # @param User: 用户名，权限关联的用户
        # @type User: String
        # @param VirtualHost: vhost名
        # @type VirtualHost: String
        # @param ConfigRegexp: 权限类型，declare相关操作，该用户可操作该vhost下的资源名称正则表达式
        # @type ConfigRegexp: String
        # @param WriteRegexp: 权限类型，消息写入相关操作，该用户可操作该vhost下的资源名称正则表达式
        # @type WriteRegexp: String
        # @param ReadRegexp: 权限类型，消息读取相关操作，该用户可操作该vhost下的资源名称正则表达式
        # @type ReadRegexp: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String

        attr_accessor :InstanceId, :User, :VirtualHost, :ConfigRegexp, :WriteRegexp, :ReadRegexp, :CreateTime, :ModifyTime

        def initialize(instanceid=nil, user=nil, virtualhost=nil, configregexp=nil, writeregexp=nil, readregexp=nil, createtime=nil, modifytime=nil)
          @InstanceId = instanceid
          @User = user
          @VirtualHost = virtualhost
          @ConfigRegexp = configregexp
          @WriteRegexp = writeregexp
          @ReadRegexp = readregexp
          @CreateTime = createtime
          @ModifyTime = modifytime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @User = params['User']
          @VirtualHost = params['VirtualHost']
          @ConfigRegexp = params['ConfigRegexp']
          @WriteRegexp = params['WriteRegexp']
          @ReadRegexp = params['ReadRegexp']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
        end
      end

      # RabbitMQ队列列表消费者信息
      class RabbitMQQueueListConsumerDetailInfo < TencentCloud::Common::AbstractModel
        # @param ConsumersNumber: 消费者数量
        # @type ConsumersNumber: Integer

        attr_accessor :ConsumersNumber

        def initialize(consumersnumber=nil)
          @ConsumersNumber = consumersnumber
        end

        def deserialize(params)
          @ConsumersNumber = params['ConsumersNumber']
        end
      end

      # RabbitMQ队列列表成员信息
      class RabbitMQQueueListInfo < TencentCloud::Common::AbstractModel
        # @param QueueName: 队列名
        # @type QueueName: String
        # @param Remark: 备注说明
        # @type Remark: String
        # @param ConsumerDetail: 消费者信息
        # @type ConsumerDetail: :class:`Tencentcloud::Trabbit.v20230418.models.RabbitMQQueueListConsumerDetailInfo`
        # @param QueueType: 队列类型，取值 "classic"，"quorum"
        # @type QueueType: String
        # @param MessageHeapCount: 消息堆积数
        # @type MessageHeapCount: Integer
        # @param MessageRateIn: 消息生产速率，每秒
        # @type MessageRateIn: Float
        # @param MessageRateOut: 消息消费速率，每秒
        # @type MessageRateOut: Float
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String
        # @param Durable: 队列是否持久化，true 为持久化，false 为非持久化
        # @type Durable: Boolean
        # @param AutoDelete: 队列是否为自动删除队列，true 为自动删除，false 为非自动删除
        # @type AutoDelete: Boolean
        # @param InstanceId: 队列所属实例 ID
        # @type InstanceId: String
        # @param VirtualHost: 队列所属虚拟主机名称
        # @type VirtualHost: String
        # @param Node: 队列所在主节点名称
        # @type Node: String
        # @param Policy: 生效的策略名称
        # @type Policy: String
        # @param Arguments: 扩展参数 key-value 对象
        # @type Arguments: String
        # @param Exclusive: 是否独占队列
        # @type Exclusive: Boolean

        attr_accessor :QueueName, :Remark, :ConsumerDetail, :QueueType, :MessageHeapCount, :MessageRateIn, :MessageRateOut, :CreateTime, :ModifyTime, :Durable, :AutoDelete, :InstanceId, :VirtualHost, :Node, :Policy, :Arguments, :Exclusive

        def initialize(queuename=nil, remark=nil, consumerdetail=nil, queuetype=nil, messageheapcount=nil, messageratein=nil, messagerateout=nil, createtime=nil, modifytime=nil, durable=nil, autodelete=nil, instanceid=nil, virtualhost=nil, node=nil, policy=nil, arguments=nil, exclusive=nil)
          @QueueName = queuename
          @Remark = remark
          @ConsumerDetail = consumerdetail
          @QueueType = queuetype
          @MessageHeapCount = messageheapcount
          @MessageRateIn = messageratein
          @MessageRateOut = messagerateout
          @CreateTime = createtime
          @ModifyTime = modifytime
          @Durable = durable
          @AutoDelete = autodelete
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @Node = node
          @Policy = policy
          @Arguments = arguments
          @Exclusive = exclusive
        end

        def deserialize(params)
          @QueueName = params['QueueName']
          @Remark = params['Remark']
          unless params['ConsumerDetail'].nil?
            @ConsumerDetail = RabbitMQQueueListConsumerDetailInfo.new
            @ConsumerDetail.deserialize(params['ConsumerDetail'])
          end
          @QueueType = params['QueueType']
          @MessageHeapCount = params['MessageHeapCount']
          @MessageRateIn = params['MessageRateIn']
          @MessageRateOut = params['MessageRateOut']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @Durable = params['Durable']
          @AutoDelete = params['AutoDelete']
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @Node = params['Node']
          @Policy = params['Policy']
          @Arguments = params['Arguments']
          @Exclusive = params['Exclusive']
        end
      end

      # 公网访问信息
      class RabbitMQServerlessAccessInfo < TencentCloud::Common::AbstractModel
        # @param PublicAccessEndpoint: 公网域名
        # @type PublicAccessEndpoint: String
        # @param PublicDataStreamStatus: 公网状态
        # @type PublicDataStreamStatus: String

        attr_accessor :PublicAccessEndpoint, :PublicDataStreamStatus

        def initialize(publicaccessendpoint=nil, publicdatastreamstatus=nil)
          @PublicAccessEndpoint = publicaccessendpoint
          @PublicDataStreamStatus = publicdatastreamstatus
        end

        def deserialize(params)
          @PublicAccessEndpoint = params['PublicAccessEndpoint']
          @PublicDataStreamStatus = params['PublicDataStreamStatus']
        end
      end

      # 接入点
      class RabbitMQServerlessEndpoint < TencentCloud::Common::AbstractModel
        # @param VpcId: vpc id
        # @type VpcId: String
        # @param SubnetId: subnet id
        # @type SubnetId: String
        # @param VpcEndpoint: 接入地址
        # @type VpcEndpoint: String
        # @param VpcDataStreamEndpointStatus: 接入地址状态
        # @type VpcDataStreamEndpointStatus: String
        # @param PublicNetwork: 是否是公网
        # @type PublicNetwork: Boolean
        # @param AccessStrategy: 访问策略
        # @type AccessStrategy: String
        # @param Bandwidth: 带宽
        # @type Bandwidth: Integer

        attr_accessor :VpcId, :SubnetId, :VpcEndpoint, :VpcDataStreamEndpointStatus, :PublicNetwork, :AccessStrategy, :Bandwidth

        def initialize(vpcid=nil, subnetid=nil, vpcendpoint=nil, vpcdatastreamendpointstatus=nil, publicnetwork=nil, accessstrategy=nil, bandwidth=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @VpcEndpoint = vpcendpoint
          @VpcDataStreamEndpointStatus = vpcdatastreamendpointstatus
          @PublicNetwork = publicnetwork
          @AccessStrategy = accessstrategy
          @Bandwidth = bandwidth
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @VpcEndpoint = params['VpcEndpoint']
          @VpcDataStreamEndpointStatus = params['VpcDataStreamEndpointStatus']
          @PublicNetwork = params['PublicNetwork']
          @AccessStrategy = params['AccessStrategy']
          @Bandwidth = params['Bandwidth']
        end
      end

      # rabbitmq serverless 实例
      class RabbitMQServerlessInstance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param InstanceVersion: 实例版本号
        # @type InstanceVersion: String
        # @param Status: 实例状态，0表示创建中，1表示正常，2表示隔离中，3表示已销毁，4 - 异常, 5 - 发货失败
        # @type Status: Integer
        # @param MaxTps: TPS
        # @type MaxTps: Integer
        # @param MaxBandWidth: 带宽
        # @type MaxBandWidth: Integer
        # @param ExpireTime: 集群过期时间
        # @type ExpireTime: Integer
        # @param AutoRenewFlag: 自动续费标记，0表示默认状态(用户未设置，即初始状态即手动续费)， 1表示自动续费，2表示明确不自动续费(用户设置)
        # @type AutoRenewFlag: Integer
        # @param PayMode: 0-后付费，1-预付费
        # @type PayMode: Integer
        # @param Remark: 备注
        # @type Remark: String
        # @param SpecName: 集群规格
        # @type SpecName: String
        # @param ExceptionInformation: 异常信息
        # @type ExceptionInformation: String
        # @param PublicAccessEndpoint: 公网接入点
        # @type PublicAccessEndpoint: String
        # @param Vpcs: 私有网络接入点
        # @type Vpcs: Array
        # @param ClusterStatus: 实例状态，0表示创建中，1表示正常，2表示隔离中，3表示已销毁，4 - 异常, 5 - 发货失败
        # @type ClusterStatus: Integer
        # @param InstanceType: 集群类型：1
        # @type InstanceType: Integer
        # @param CreateTime: 过期时间
        # @type CreateTime: Integer
        # @param NodeCount: 为了兼容托管版，固定值 0
        # @type NodeCount: Integer
        # @param MaxStorage: 为了兼容托管版，固定值 0
        # @type MaxStorage: Integer
        # @param IsolatedTime: 隔离时间
        # @type IsolatedTime: Integer
        # @param ServerlessExt: Serverless 扩展字段
        # @type ServerlessExt: String

        attr_accessor :InstanceId, :InstanceName, :InstanceVersion, :Status, :MaxTps, :MaxBandWidth, :ExpireTime, :AutoRenewFlag, :PayMode, :Remark, :SpecName, :ExceptionInformation, :PublicAccessEndpoint, :Vpcs, :ClusterStatus, :InstanceType, :CreateTime, :NodeCount, :MaxStorage, :IsolatedTime, :ServerlessExt

        def initialize(instanceid=nil, instancename=nil, instanceversion=nil, status=nil, maxtps=nil, maxbandwidth=nil, expiretime=nil, autorenewflag=nil, paymode=nil, remark=nil, specname=nil, exceptioninformation=nil, publicaccessendpoint=nil, vpcs=nil, clusterstatus=nil, instancetype=nil, createtime=nil, nodecount=nil, maxstorage=nil, isolatedtime=nil, serverlessext=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @InstanceVersion = instanceversion
          @Status = status
          @MaxTps = maxtps
          @MaxBandWidth = maxbandwidth
          @ExpireTime = expiretime
          @AutoRenewFlag = autorenewflag
          @PayMode = paymode
          @Remark = remark
          @SpecName = specname
          @ExceptionInformation = exceptioninformation
          @PublicAccessEndpoint = publicaccessendpoint
          @Vpcs = vpcs
          @ClusterStatus = clusterstatus
          @InstanceType = instancetype
          @CreateTime = createtime
          @NodeCount = nodecount
          @MaxStorage = maxstorage
          @IsolatedTime = isolatedtime
          @ServerlessExt = serverlessext
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @InstanceVersion = params['InstanceVersion']
          @Status = params['Status']
          @MaxTps = params['MaxTps']
          @MaxBandWidth = params['MaxBandWidth']
          @ExpireTime = params['ExpireTime']
          @AutoRenewFlag = params['AutoRenewFlag']
          @PayMode = params['PayMode']
          @Remark = params['Remark']
          @SpecName = params['SpecName']
          @ExceptionInformation = params['ExceptionInformation']
          @PublicAccessEndpoint = params['PublicAccessEndpoint']
          unless params['Vpcs'].nil?
            @Vpcs = []
            params['Vpcs'].each do |i|
              rabbitmqserverlessendpoint_tmp = RabbitMQServerlessEndpoint.new
              rabbitmqserverlessendpoint_tmp.deserialize(i)
              @Vpcs << rabbitmqserverlessendpoint_tmp
            end
          end
          @ClusterStatus = params['ClusterStatus']
          @InstanceType = params['InstanceType']
          @CreateTime = params['CreateTime']
          @NodeCount = params['NodeCount']
          @MaxStorage = params['MaxStorage']
          @IsolatedTime = params['IsolatedTime']
          @ServerlessExt = params['ServerlessExt']
        end
      end

      # 公网白名单信息
      class RabbitMQServerlessWhiteListInfo < TencentCloud::Common::AbstractModel
        # @param PublicDataStreamWhiteList: 公网数据流白名单
        # @type PublicDataStreamWhiteList: String
        # @param PublicDataStreamWhiteListStatus: 公网数据流白名单状态
        # @type PublicDataStreamWhiteListStatus: String

        attr_accessor :PublicDataStreamWhiteList, :PublicDataStreamWhiteListStatus

        def initialize(publicdatastreamwhitelist=nil, publicdatastreamwhiteliststatus=nil)
          @PublicDataStreamWhiteList = publicdatastreamwhitelist
          @PublicDataStreamWhiteListStatus = publicdatastreamwhiteliststatus
        end

        def deserialize(params)
          @PublicDataStreamWhiteList = params['PublicDataStreamWhiteList']
          @PublicDataStreamWhiteListStatus = params['PublicDataStreamWhiteListStatus']
        end
      end

      # RabbitMQ用户实体详情
      class RabbitMQUser < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例Id
        # @type InstanceId: String
        # @param User: 用户名，登录时使用
        # @type User: String
        # @param Password: 密码，登录时使用
        # @type Password: String
        # @param Description: 用户描述
        # @type Description: String
        # @param Tags: 用户标签，用于决定改用户访问RabbitMQ Management的权限范围
        # @type Tags: Array
        # @param CreateTime: 用户创建时间
        # @type CreateTime: String
        # @param ModifyTime: 用户最后修改时间
        # @type ModifyTime: String
        # @param Type: 用户类型，System：系统创建，User：用户创建
        # @type Type: String
        # @param MaxConnections: 该用户所能允许的最大连接数
        # @type MaxConnections: Integer
        # @param MaxChannels: 该用户所能允许的最大通道数
        # @type MaxChannels: Integer

        attr_accessor :InstanceId, :User, :Password, :Description, :Tags, :CreateTime, :ModifyTime, :Type, :MaxConnections, :MaxChannels

        def initialize(instanceid=nil, user=nil, password=nil, description=nil, tags=nil, createtime=nil, modifytime=nil, type=nil, maxconnections=nil, maxchannels=nil)
          @InstanceId = instanceid
          @User = user
          @Password = password
          @Description = description
          @Tags = tags
          @CreateTime = createtime
          @ModifyTime = modifytime
          @Type = type
          @MaxConnections = maxconnections
          @MaxChannels = maxchannels
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @User = params['User']
          @Password = params['Password']
          @Description = params['Description']
          @Tags = params['Tags']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @Type = params['Type']
          @MaxConnections = params['MaxConnections']
          @MaxChannels = params['MaxChannels']
        end
      end

      # RabbitMQ的vhost详情
      class RabbitMQVirtualHostInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例Id
        # @type InstanceId: String
        # @param VirtualHost: vhost名
        # @type VirtualHost: String
        # @param Description: vhost描述信息
        # @type Description: String
        # @param Tags: vhost标签
        # @type Tags: Array
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String
        # @param VirtualHostStatistics: vhost概览统计信息
        # @type VirtualHostStatistics: :class:`Tencentcloud::Trabbit.v20230418.models.RabbitMQVirtualHostStatistics`
        # @param Status: vhost状态，与原生控制台对应，有running、partial、stopped、unknown
        # @type Status: String
        # @param MessageHeapCount: 消息堆积数
        # @type MessageHeapCount: Integer
        # @param MessageRateIn: 输入消息速率
        # @type MessageRateIn: Float
        # @param MessageRateOut: 输出消息速率
        # @type MessageRateOut: Float
        # @param MirrorQueuePolicyFlag: 是否存在镜像队列策略，true 为存在，false 为不存
        # @type MirrorQueuePolicyFlag: Boolean

        attr_accessor :InstanceId, :VirtualHost, :Description, :Tags, :CreateTime, :ModifyTime, :VirtualHostStatistics, :Status, :MessageHeapCount, :MessageRateIn, :MessageRateOut, :MirrorQueuePolicyFlag

        def initialize(instanceid=nil, virtualhost=nil, description=nil, tags=nil, createtime=nil, modifytime=nil, virtualhoststatistics=nil, status=nil, messageheapcount=nil, messageratein=nil, messagerateout=nil, mirrorqueuepolicyflag=nil)
          @InstanceId = instanceid
          @VirtualHost = virtualhost
          @Description = description
          @Tags = tags
          @CreateTime = createtime
          @ModifyTime = modifytime
          @VirtualHostStatistics = virtualhoststatistics
          @Status = status
          @MessageHeapCount = messageheapcount
          @MessageRateIn = messageratein
          @MessageRateOut = messagerateout
          @MirrorQueuePolicyFlag = mirrorqueuepolicyflag
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VirtualHost = params['VirtualHost']
          @Description = params['Description']
          @Tags = params['Tags']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          unless params['VirtualHostStatistics'].nil?
            @VirtualHostStatistics = RabbitMQVirtualHostStatistics.new
            @VirtualHostStatistics.deserialize(params['VirtualHostStatistics'])
          end
          @Status = params['Status']
          @MessageHeapCount = params['MessageHeapCount']
          @MessageRateIn = params['MessageRateIn']
          @MessageRateOut = params['MessageRateOut']
          @MirrorQueuePolicyFlag = params['MirrorQueuePolicyFlag']
        end
      end

      # vhost概览统计信息
      class RabbitMQVirtualHostStatistics < TencentCloud::Common::AbstractModel
        # @param CurrentQueues: 当前vhost的queue数量
        # @type CurrentQueues: Integer
        # @param CurrentExchanges: 当前vhost的exchange数量
        # @type CurrentExchanges: Integer
        # @param CurrentConnections: 当前vhost的连接数量
        # @type CurrentConnections: Integer
        # @param CurrentChannels: 当前vhost的channel数量
        # @type CurrentChannels: Integer
        # @param CurrentUsers: 当前vhost的用户数量
        # @type CurrentUsers: Integer

        attr_accessor :CurrentQueues, :CurrentExchanges, :CurrentConnections, :CurrentChannels, :CurrentUsers

        def initialize(currentqueues=nil, currentexchanges=nil, currentconnections=nil, currentchannels=nil, currentusers=nil)
          @CurrentQueues = currentqueues
          @CurrentExchanges = currentexchanges
          @CurrentConnections = currentconnections
          @CurrentChannels = currentchannels
          @CurrentUsers = currentusers
        end

        def deserialize(params)
          @CurrentQueues = params['CurrentQueues']
          @CurrentExchanges = params['CurrentExchanges']
          @CurrentConnections = params['CurrentConnections']
          @CurrentChannels = params['CurrentChannels']
          @CurrentUsers = params['CurrentUsers']
        end
      end

      # 用户数配额
      class UserQuota < TencentCloud::Common::AbstractModel
        # @param MaxUser: 最大用户数
        # @type MaxUser: Integer
        # @param UsedUser: 已用用户数
        # @type UsedUser: Integer

        attr_accessor :MaxUser, :UsedUser

        def initialize(maxuser=nil, useduser=nil)
          @MaxUser = maxuser
          @UsedUser = useduser
        end

        def deserialize(params)
          @MaxUser = params['MaxUser']
          @UsedUser = params['UsedUser']
        end
      end

      # 虚拟主机配额
      class VirtualHostQuota < TencentCloud::Common::AbstractModel
        # @param MaxVirtualHost: 最大虚拟主机数
        # @type MaxVirtualHost: Integer
        # @param UsedVirtualHost: 已经使用的虚拟主机数
        # @type UsedVirtualHost: Integer

        attr_accessor :MaxVirtualHost, :UsedVirtualHost

        def initialize(maxvirtualhost=nil, usedvirtualhost=nil)
          @MaxVirtualHost = maxvirtualhost
          @UsedVirtualHost = usedvirtualhost
        end

        def deserialize(params)
          @MaxVirtualHost = params['MaxVirtualHost']
          @UsedVirtualHost = params['UsedVirtualHost']
        end
      end

      # VPC接入点信息
      class VpcEndpointInfo < TencentCloud::Common::AbstractModel
        # @param VpcId: vpc的id
        # @type VpcId: String
        # @param SubnetId: 子网id
        # @type SubnetId: String
        # @param VpcEndpoint: vpc接入点信息
        # @type VpcEndpoint: String
        # @param VpcDataStreamEndpointStatus: vpc接入点状态
        # OFF/ON/CREATING/DELETING
        # @type VpcDataStreamEndpointStatus: String

        attr_accessor :VpcId, :SubnetId, :VpcEndpoint, :VpcDataStreamEndpointStatus

        def initialize(vpcid=nil, subnetid=nil, vpcendpoint=nil, vpcdatastreamendpointstatus=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @VpcEndpoint = vpcendpoint
          @VpcDataStreamEndpointStatus = vpcdatastreamendpointstatus
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @VpcEndpoint = params['VpcEndpoint']
          @VpcDataStreamEndpointStatus = params['VpcDataStreamEndpointStatus']
        end
      end

    end
  end
end

