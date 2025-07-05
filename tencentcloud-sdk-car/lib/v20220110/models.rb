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
  module Car
    module V20220110
      # ApplyConcurrent请求参数结构体
      class ApplyConcurrentRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 唯一用户身份标识，由业务方自定义，平台不予理解。（可根据业务需要决定使用用户的唯一身份标识或是使用时间戳随机生成；在用户重连时应保持UserId不变）
        # @type UserId: String
        # @param UserIp: 用户IP，用户客户端的公网IP，用于就近调度
        # @type UserIp: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ApplicationVersionId: 应用版本ID。如果请求应用的当前版本，可以不用填写该字段。如果请求应用的其它版本时，才需要通过该字段来指定应用的版本。
        # @type ApplicationVersionId: String
        # @param ApplicationId: 应用ID。如果是独享项目，将忽略该参数，使用项目绑定的应用。如果是共享项目，使用该参数来指定应用。
        # @type ApplicationId: String

        attr_accessor :UserId, :UserIp, :ProjectId, :ApplicationVersionId, :ApplicationId

        def initialize(userid=nil, userip=nil, projectid=nil, applicationversionid=nil, applicationid=nil)
          @UserId = userid
          @UserIp = userip
          @ProjectId = projectid
          @ApplicationVersionId = applicationversionid
          @ApplicationId = applicationid
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserIp = params['UserIp']
          @ProjectId = params['ProjectId']
          @ApplicationVersionId = params['ApplicationVersionId']
          @ApplicationId = params['ApplicationId']
        end
      end

      # ApplyConcurrent返回参数结构体
      class ApplyConcurrentResponse < TencentCloud::Common::AbstractModel
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

      # CreateSession请求参数结构体
      class CreateSessionRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 唯一用户身份标识，由业务方自定义，平台不予理解。（可根据业务需要决定使用用户的唯一身份标识或是使用时间戳随机生成；在用户重连时应保持UserId不变）
        # @type UserId: String
        # @param UserIp: 用户IP，用户客户端的公网IP，用于就近调度
        # @type UserIp: String
        # @param ClientSession: 客户端session信息，从SDK请求中获得。特殊的，当 RunMode 参数为 RunWithoutClient 时，该字段可以为空
        # @type ClientSession: String
        # @param RunMode: 云端运行模式。
        # RunWithoutClient：允许无客户端连接的情况下仍保持云端 App 运行
        # 默认值（空）：要求必须有客户端连接才会保持云端 App 运行。
        # @type RunMode: String
        # @param ApplicationParameters: 应用启动参数。
        # 如果请求的是多应用共享项目，此参数生效；
        # 如果请求的是关闭预启动的单应用独享项目，此参数生效；
        # 如果请求的是开启预启动的单应用独享项目，此参数失效。

        # 注意：在此参数生效的情况下，将会被追加到控制台应用或项目配置的启动参数的后面。
        # 例如，对于某关闭预启动的单应用独享项目，若在控制台中项目配置的启动参数为bar=0，而ApplicationParameters参数为foo=1，则实际应用启动参数为bar=0 foo=1。
        # @type ApplicationParameters: String
        # @param HostUserId: 【多人互动】房主用户ID，在多人互动模式下为必填字段。
        # 如果该用户是房主，HostUserId需要和UserId保持一致；
        # 如果该用户非房主，HostUserId需要填写房主的HostUserId。
        # @type HostUserId: String
        # @param Role: 【多人互动】角色。
        # Player：玩家（可通过键鼠等操作应用）
        # Viewer：观察者（只能观看，无法操作）
        # @type Role: String

        attr_accessor :UserId, :UserIp, :ClientSession, :RunMode, :ApplicationParameters, :HostUserId, :Role

        def initialize(userid=nil, userip=nil, clientsession=nil, runmode=nil, applicationparameters=nil, hostuserid=nil, role=nil)
          @UserId = userid
          @UserIp = userip
          @ClientSession = clientsession
          @RunMode = runmode
          @ApplicationParameters = applicationparameters
          @HostUserId = hostuserid
          @Role = role
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserIp = params['UserIp']
          @ClientSession = params['ClientSession']
          @RunMode = params['RunMode']
          @ApplicationParameters = params['ApplicationParameters']
          @HostUserId = params['HostUserId']
          @Role = params['Role']
        end
      end

      # CreateSession返回参数结构体
      class CreateSessionResponse < TencentCloud::Common::AbstractModel
        # @param ServerSession: 服务端session信息，返回给SDK
        # @type ServerSession: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServerSession, :RequestId

        def initialize(serversession=nil, requestid=nil)
          @ServerSession = serversession
          @RequestId = requestid
        end

        def deserialize(params)
          @ServerSession = params['ServerSession']
          @RequestId = params['RequestId']
        end
      end

      # DestroySession请求参数结构体
      class DestroySessionRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 唯一用户身份标识，由业务方自定义，平台不予理解。（可根据业务需要决定使用用户的唯一身份标识或是使用时间戳随机生成；在用户重连时应保持UserId不变）
        # @type UserId: String

        attr_accessor :UserId

        def initialize(userid=nil)
          @UserId = userid
        end

        def deserialize(params)
          @UserId = params['UserId']
        end
      end

      # DestroySession返回参数结构体
      class DestroySessionResponse < TencentCloud::Common::AbstractModel
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

      # StartPublishStream请求参数结构体
      class StartPublishStreamRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 唯一用户身份标识，由业务方自定义，平台不予理解。（UserId将作为StreamId进行推流，比如绑定推流域名为abc.livepush.myqcloud.com，那么推流地址为rtmp://abc.livepush.myqcloud.com/live/UserId?txSecret=xxx&txTime=xxx）
        # @type UserId: String
        # @param PublishStreamArgs: 推流参数，推流时携带自定义参数。
        # @type PublishStreamArgs: String

        attr_accessor :UserId, :PublishStreamArgs

        def initialize(userid=nil, publishstreamargs=nil)
          @UserId = userid
          @PublishStreamArgs = publishstreamargs
        end

        def deserialize(params)
          @UserId = params['UserId']
          @PublishStreamArgs = params['PublishStreamArgs']
        end
      end

      # StartPublishStream返回参数结构体
      class StartPublishStreamResponse < TencentCloud::Common::AbstractModel
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

      # StartPublishStreamWithURL请求参数结构体
      class StartPublishStreamWithURLRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 唯一用户身份标识，由业务方自定义，平台不予理解。
        # @type UserId: String
        # @param PublishStreamURL: 推流地址，仅支持rtmp协议。
        # @type PublishStreamURL: String

        attr_accessor :UserId, :PublishStreamURL

        def initialize(userid=nil, publishstreamurl=nil)
          @UserId = userid
          @PublishStreamURL = publishstreamurl
        end

        def deserialize(params)
          @UserId = params['UserId']
          @PublishStreamURL = params['PublishStreamURL']
        end
      end

      # StartPublishStreamWithURL返回参数结构体
      class StartPublishStreamWithURLResponse < TencentCloud::Common::AbstractModel
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

      # StopPublishStream请求参数结构体
      class StopPublishStreamRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 唯一用户身份标识，由业务方自定义，平台不予理解。（可根据业务需要决定使用用户的唯一身份标识或是使用时间戳随机生成；在用户重连时应保持UserId不变）
        # @type UserId: String

        attr_accessor :UserId

        def initialize(userid=nil)
          @UserId = userid
        end

        def deserialize(params)
          @UserId = params['UserId']
        end
      end

      # StopPublishStream返回参数结构体
      class StopPublishStreamResponse < TencentCloud::Common::AbstractModel
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

