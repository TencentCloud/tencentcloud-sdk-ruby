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
  module Tsw
    module V20200924
      # agent安装脚本串
      class AgentShell < TencentCloud::Common::AbstractModel
        # @param Token: 鉴权token
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Token: String
        # @param EtlIp: 数据接收Ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EtlIp: String
        # @param EtlPort: 数据接收port
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EtlPort: String
        # @param ByHandAccess: 手动接入脚本串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ByHandAccess: String
        # @param ByShellAccess: 自动接入脚本串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ByShellAccess: String
        # @param SkyWalkingPort: SkyWalking数据接收port
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SkyWalkingPort: String
        # @param ZipkinPort: Zipkin数据接收port
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZipkinPort: String
        # @param JaegerPort: Jaeger数据接收port
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JaegerPort: String

        attr_accessor :Token, :EtlIp, :EtlPort, :ByHandAccess, :ByShellAccess, :SkyWalkingPort, :ZipkinPort, :JaegerPort
        
        def initialize(token=nil, etlip=nil, etlport=nil, byhandaccess=nil, byshellaccess=nil, skywalkingport=nil, zipkinport=nil, jaegerport=nil)
          @Token = token
          @EtlIp = etlip
          @EtlPort = etlport
          @ByHandAccess = byhandaccess
          @ByShellAccess = byshellaccess
          @SkyWalkingPort = skywalkingport
          @ZipkinPort = zipkinport
          @JaegerPort = jaegerport
        end

        def deserialize(params)
          @Token = params['Token']
          @EtlIp = params['EtlIp']
          @EtlPort = params['EtlPort']
          @ByHandAccess = params['ByHandAccess']
          @ByShellAccess = params['ByShellAccess']
          @SkyWalkingPort = params['SkyWalkingPort']
          @ZipkinPort = params['ZipkinPort']
          @JaegerPort = params['JaegerPort']
        end
      end

      # DescribeAgentShell请求参数结构体
      class DescribeAgentShellRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAgentShell返回参数结构体
      class DescribeAgentShellResponse < TencentCloud::Common::AbstractModel
        # @param Result: 接入信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsw.v20200924.models.AgentShell`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = AgentShell.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

