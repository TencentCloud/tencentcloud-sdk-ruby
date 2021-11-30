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
  module Apm
    module V20210622
      # apm Agent信息
      class ApmAgentInfo < TencentCloud::Common::AbstractModel
        # @param AgentDownloadURL: Agent下载地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentDownloadURL: String
        # @param CollectorURL: Collector上报地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CollectorURL: String
        # @param Token: Token信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Token: String
        # @param PublicCollectorURL: 外网上报地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicCollectorURL: String
        # @param InnerCollectorURL: 自研VPC上报地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerCollectorURL: String
        # @param PrivateLinkCollectorURL: 内网上报地址(Private Link上报地址)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateLinkCollectorURL: String

        attr_accessor :AgentDownloadURL, :CollectorURL, :Token, :PublicCollectorURL, :InnerCollectorURL, :PrivateLinkCollectorURL
        
        def initialize(agentdownloadurl=nil, collectorurl=nil, token=nil, publiccollectorurl=nil, innercollectorurl=nil, privatelinkcollectorurl=nil)
          @AgentDownloadURL = agentdownloadurl
          @CollectorURL = collectorurl
          @Token = token
          @PublicCollectorURL = publiccollectorurl
          @InnerCollectorURL = innercollectorurl
          @PrivateLinkCollectorURL = privatelinkcollectorurl
        end

        def deserialize(params)
          @AgentDownloadURL = params['AgentDownloadURL']
          @CollectorURL = params['CollectorURL']
          @Token = params['Token']
          @PublicCollectorURL = params['PublicCollectorURL']
          @InnerCollectorURL = params['InnerCollectorURL']
          @PrivateLinkCollectorURL = params['PrivateLinkCollectorURL']
        end
      end

      # DescribeApmAgent请求参数结构体
      class DescribeApmAgentRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param AgentType: 接入方式
        # @type AgentType: String
        # @param NetworkMode: 环境
        # @type NetworkMode: String
        # @param LanguageEnvironment: 语言
        # @type LanguageEnvironment: String

        attr_accessor :InstanceId, :AgentType, :NetworkMode, :LanguageEnvironment
        
        def initialize(instanceid=nil, agenttype=nil, networkmode=nil, languageenvironment=nil)
          @InstanceId = instanceid
          @AgentType = agenttype
          @NetworkMode = networkmode
          @LanguageEnvironment = languageenvironment
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AgentType = params['AgentType']
          @NetworkMode = params['NetworkMode']
          @LanguageEnvironment = params['LanguageEnvironment']
        end
      end

      # DescribeApmAgent返回参数结构体
      class DescribeApmAgentResponse < TencentCloud::Common::AbstractModel
        # @param ApmAgent: Agent信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApmAgent: :class:`Tencentcloud::Apm.v20210622.models.ApmAgentInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApmAgent, :RequestId
        
        def initialize(apmagent=nil, requestid=nil)
          @ApmAgent = apmagent
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ApmAgent'].nil?
            @ApmAgent = ApmAgentInfo.new
            @ApmAgent.deserialize(params['ApmAgent'])
          end
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

