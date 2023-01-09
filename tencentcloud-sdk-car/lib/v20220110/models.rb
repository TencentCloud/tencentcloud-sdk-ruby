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
        # @param ApplicationVersionId: 应用版本ID
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

      # CreateSession请求参数结构体
      class CreateSessionRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 唯一用户身份标识，由业务方自定义，平台不予理解。（可根据业务需要决定使用用户的唯一身份标识或是使用时间戳随机生成；在用户重连时应保持UserId不变）
        # @type UserId: String
        # @param UserIp: 用户IP，用户客户端的公网IP，用于就近调度
        # @type UserIp: String
        # @param ClientSession: 客户端session信息，从SDK请求中获得
        # @type ClientSession: String
        # @param RunMode: 云端运行模式。
        # RunWithoutClient：允许无客户端连接的情况下仍保持云端 App 运行
        # 默认值（空）：要求必须有客户端连接才会保持云端 App 运行。
        # @type RunMode: String

        attr_accessor :UserId, :UserIp, :ClientSession, :RunMode
        
        def initialize(userid=nil, userip=nil, clientsession=nil, runmode=nil)
          @UserId = userid
          @UserIp = userip
          @ClientSession = clientsession
          @RunMode = runmode
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserIp = params['UserIp']
          @ClientSession = params['ClientSession']
          @RunMode = params['RunMode']
        end
      end

      # CreateSession返回参数结构体
      class CreateSessionResponse < TencentCloud::Common::AbstractModel
        # @param ServerSession: 服务端session信息，返回给SDK
        # @type ServerSession: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

