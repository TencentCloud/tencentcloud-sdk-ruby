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
  module Dataintegration
    module V20220613
      # 批量消息
      class BatchContent < TencentCloud::Common::AbstractModel
        # @param Body: 消息体
        # @type Body: String
        # @param Key: 消息的键名
        # @type Key: String

        attr_accessor :Body, :Key

        def initialize(body=nil, key=nil)
          @Body = body
          @Key = key
        end

        def deserialize(params)
          @Body = params['Body']
          @Key = params['Key']
        end
      end

      # SendMessage请求参数结构体
      class SendMessageRequest < TencentCloud::Common::AbstractModel
        # @param DataHubId: 接入资源ID
        # @type DataHubId: String
        # @param Message: 批量消息
        # @type Message: Array

        attr_accessor :DataHubId, :Message

        def initialize(datahubid=nil, message=nil)
          @DataHubId = datahubid
          @Message = message
        end

        def deserialize(params)
          @DataHubId = params['DataHubId']
          unless params['Message'].nil?
            @Message = []
            params['Message'].each do |i|
              batchcontent_tmp = BatchContent.new
              batchcontent_tmp.deserialize(i)
              @Message << batchcontent_tmp
            end
          end
        end
      end

      # SendMessage返回参数结构体
      class SendMessageResponse < TencentCloud::Common::AbstractModel
        # @param MessageId: 消息ID
        # @type MessageId: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MessageId, :RequestId

        def initialize(messageid=nil, requestid=nil)
          @MessageId = messageid
          @RequestId = requestid
        end

        def deserialize(params)
          @MessageId = params['MessageId']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

