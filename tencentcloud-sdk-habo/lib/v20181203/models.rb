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
  module Habo
    module V20181203
      # DescribeStatus请求参数结构体
      class DescribeStatusRequest < TencentCloud::Common::AbstractModel
        # @param Pk: 购买服务后获得的授权帐号，用于保证请求有效性
        # @type Pk: String
        # @param Md5: 需要获取分析结果的样本md5
        # @type Md5: String

        attr_accessor :Pk, :Md5

        def initialize(pk=nil, md5=nil)
          @Pk = pk
          @Md5 = md5
        end

        def deserialize(params)
          @Pk = params['Pk']
          @Md5 = params['Md5']
        end
      end

      # DescribeStatus返回参数结构体
      class DescribeStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 接口调用状态，1表示成功，非1表示失败
        # @type Status: Integer
        # @param Info: 成功时返回success，失败时返回具体的失败原因，如样本分析未完成
        # @type Info: String
        # @param Data: 成功时返回样本日志下载地址，该地址10分钟内有效
        # @type Data: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Info, :Data, :RequestId

        def initialize(status=nil, info=nil, data=nil, requestid=nil)
          @Status = status
          @Info = info
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Info = params['Info']
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # StartAnalyse请求参数结构体
      class StartAnalyseRequest < TencentCloud::Common::AbstractModel
        # @param Pk: 购买服务后获得的授权帐号，用于保证请求有效性
        # @type Pk: String
        # @param Md5: 样本md5，用于对下载获得的样本完整性进行校验
        # @type Md5: String
        # @param DlUrl: 待分析样本下载地址
        # @type DlUrl: String

        attr_accessor :Pk, :Md5, :DlUrl

        def initialize(pk=nil, md5=nil, dlurl=nil)
          @Pk = pk
          @Md5 = md5
          @DlUrl = dlurl
        end

        def deserialize(params)
          @Pk = params['Pk']
          @Md5 = params['Md5']
          @DlUrl = params['DlUrl']
        end
      end

      # StartAnalyse返回参数结构体
      class StartAnalyseResponse < TencentCloud::Common::AbstractModel
        # @param Status: 接口调用状态，1表示成功，非1表示失败
        # @type Status: Integer
        # @param Info: 成功时返回success，失败时返回具体的失败原因
        # @type Info: String
        # @param Data: 保留字段
        # @type Data: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Info, :Data, :RequestId

        def initialize(status=nil, info=nil, data=nil, requestid=nil)
          @Status = status
          @Info = info
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Info = params['Info']
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

