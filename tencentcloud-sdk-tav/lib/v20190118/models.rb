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
  module Tav
    module V20190118
      # GetLocalEngine请求参数结构体
      class GetLocalEngineRequest < TencentCloud::Common::AbstractModel
        # @param Key: 购买服务后获得的授权信息，用于保证请求有效性
        # @type Key: String

        attr_accessor :Key

        def initialize(key=nil)
          @Key = key
        end

        def deserialize(params)
          @Key = params['Key']
        end
      end

      # GetLocalEngine返回参数结构体
      class GetLocalEngineResponse < TencentCloud::Common::AbstractModel
        # @param Status: 接口调用状态，成功返回200，失败返回400
        # @type Status: Integer
        # @param Info: 接口调用描述信息，成功返回"scan success"，失败返回"scan error"
        # @type Info: String
        # @param Data: 本地引擎下载地址
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

      # GetScanResult请求参数结构体
      class GetScanResultRequest < TencentCloud::Common::AbstractModel
        # @param Key: 购买服务后获得的授权信息，用于保证请求有效性
        # @type Key: String
        # @param Md5: 需要获取扫描接口的md5（只允许单个md5）
        # @type Md5: String

        attr_accessor :Key, :Md5

        def initialize(key=nil, md5=nil)
          @Key = key
          @Md5 = md5
        end

        def deserialize(params)
          @Key = params['Key']
          @Md5 = params['Md5']
        end
      end

      # GetScanResult返回参数结构体
      class GetScanResultResponse < TencentCloud::Common::AbstractModel
        # @param Status: 接口调用状态，成功返回200，失败返回400
        # @type Status: Integer
        # @param Info: 接口调用描述信息，成功返回"scan success"，失败返回"scan error"
        # @type Info: String
        # @param Data: 实际结果信息，包括md5、scan_status、virus_name三个字段；virus_name报毒名："torjan.**":黑样本的报毒名、".":样本不报毒、"" :样本无检出信息，需上传扫描；
        # scan_status样本状态：-1无检出信息需上传扫描、0样本扫描中、1样本扫描结束且不报毒、2样本扫描结束且报黑、3样本下载失败；
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

      # ScanFileHash请求参数结构体
      class ScanFileHashRequest < TencentCloud::Common::AbstractModel
        # @param Key: 购买服务后获得的授权信息，用于保证请求有效性
        # @type Key: String
        # @param Md5s: 需要查询的md5值（支持单个和多个，多个md5间用逗号分格）
        # @type Md5s: String
        # @param WithCategory: 保留字段默认填0
        # @type WithCategory: String
        # @param SensitiveLevel: 松严规则控制字段默认填10（5-松、10-标准、15-严）
        # @type SensitiveLevel: String

        attr_accessor :Key, :Md5s, :WithCategory, :SensitiveLevel

        def initialize(key=nil, md5s=nil, withcategory=nil, sensitivelevel=nil)
          @Key = key
          @Md5s = md5s
          @WithCategory = withcategory
          @SensitiveLevel = sensitivelevel
        end

        def deserialize(params)
          @Key = params['Key']
          @Md5s = params['Md5s']
          @WithCategory = params['WithCategory']
          @SensitiveLevel = params['SensitiveLevel']
        end
      end

      # ScanFileHash返回参数结构体
      class ScanFileHashResponse < TencentCloud::Common::AbstractModel
        # @param Status: 接口调用状态，成功返回200，失败返回400
        # @type Status: Integer
        # @param Info: 接口调用描述信息，成功返回"scan success"，失败返回"scan error"
        # @type Info: String
        # @param Data: 云查实际结果信息，包括md5、return_state、virus_state、virus_name字符逗号间隔；
        # return_state查询状态：-1/0代表失败、1/2代表成功；
        # virus_state文状件态：0文件不存在、1白、2黑、3未知、4感染性、5低可信白；
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

      # ScanFile请求参数结构体
      class ScanFileRequest < TencentCloud::Common::AbstractModel
        # @param Key: 购买服务后获得的授权信息，用于保证请求有效性
        # @type Key: String
        # @param Sample: 文件下载url地址
        # @type Sample: String
        # @param Md5: 文件的md5值
        # @type Md5: String

        attr_accessor :Key, :Sample, :Md5

        def initialize(key=nil, sample=nil, md5=nil)
          @Key = key
          @Sample = sample
          @Md5 = md5
        end

        def deserialize(params)
          @Key = params['Key']
          @Sample = params['Sample']
          @Md5 = params['Md5']
        end
      end

      # ScanFile返回参数结构体
      class ScanFileResponse < TencentCloud::Common::AbstractModel
        # @param Status: 接口调用状态，成功返回200，失败返回400
        # @type Status: Integer
        # @param Info: 接口调用描述信息，成功返回"success"，失败返回"invalid request"
        # @type Info: String
        # @param Data: 异步扫描任务提交成功返回success
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

