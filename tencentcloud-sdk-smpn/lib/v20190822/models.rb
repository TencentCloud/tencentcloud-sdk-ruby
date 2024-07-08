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
  module Smpn
    module V20190822
      # 终端骚扰保护请求内容
      class CHPRequest < TencentCloud::Common::AbstractModel
        # @param PhoneNumber: 电话号码
        # @type PhoneNumber: String

        attr_accessor :PhoneNumber

        def initialize(phonenumber=nil)
          @PhoneNumber = phonenumber
        end

        def deserialize(params)
          @PhoneNumber = params['PhoneNumber']
        end
      end

      # 终端骚扰保护
      class CHPResponse < TencentCloud::Common::AbstractModel
        # @param TagType: 标记类型
        #  0: 无标记
        #  50:骚扰电话
        #  51:房产中介
        #  52:保险理财
        #  53:广告推销
        #  54:诈骗电话
        #  55:快递电话
        #  56:出租车专车
        # @type TagType: Integer
        # @param TagCount: 标记次数
        # @type TagCount: Integer

        attr_accessor :TagType, :TagCount

        def initialize(tagtype=nil, tagcount=nil)
          @TagType = tagtype
          @TagCount = tagcount
        end

        def deserialize(params)
          @TagType = params['TagType']
          @TagCount = params['TagCount']
        end
      end

      # DescribeSmpnChp请求参数结构体
      class DescribeSmpnChpRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 客户用于计费的资源Id
        # @type ResourceId: String
        # @param RequestData: 终端骚扰保护请求
        # @type RequestData: :class:`Tencentcloud::Smpn.v20190822.models.CHPRequest`

        attr_accessor :ResourceId, :RequestData

        def initialize(resourceid=nil, requestdata=nil)
          @ResourceId = resourceid
          @RequestData = requestdata
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          unless params['RequestData'].nil?
            @RequestData = CHPRequest.new
            @RequestData.deserialize(params['RequestData'])
          end
        end
      end

      # DescribeSmpnChp返回参数结构体
      class DescribeSmpnChpResponse < TencentCloud::Common::AbstractModel
        # @param ResponseData: 终端骚扰保护回应
        # @type ResponseData: :class:`Tencentcloud::Smpn.v20190822.models.CHPResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResponseData, :RequestId

        def initialize(responsedata=nil, requestid=nil)
          @ResponseData = responsedata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ResponseData'].nil?
            @ResponseData = CHPResponse.new
            @ResponseData.deserialize(params['ResponseData'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSmpnFnr请求参数结构体
      class DescribeSmpnFnrRequest < TencentCloud::Common::AbstractModel
        # @param RequestData: 虚假号码识别请求内容
        # @type RequestData: :class:`Tencentcloud::Smpn.v20190822.models.FNRRequest`
        # @param ResourceId: 用于计费的资源ID
        # @type ResourceId: String

        attr_accessor :RequestData, :ResourceId

        def initialize(requestdata=nil, resourceid=nil)
          @RequestData = requestdata
          @ResourceId = resourceid
        end

        def deserialize(params)
          unless params['RequestData'].nil?
            @RequestData = FNRRequest.new
            @RequestData.deserialize(params['RequestData'])
          end
          @ResourceId = params['ResourceId']
        end
      end

      # DescribeSmpnFnr返回参数结构体
      class DescribeSmpnFnrResponse < TencentCloud::Common::AbstractModel
        # @param ResponseData: 虚假号码识别回应内容
        # @type ResponseData: :class:`Tencentcloud::Smpn.v20190822.models.FNRResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResponseData, :RequestId

        def initialize(responsedata=nil, requestid=nil)
          @ResponseData = responsedata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ResponseData'].nil?
            @ResponseData = FNRResponse.new
            @ResponseData.deserialize(params['ResponseData'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 虚假号码识别请求
      class FNRRequest < TencentCloud::Common::AbstractModel
        # @param PhoneNumber: 电话号码
        # @type PhoneNumber: String

        attr_accessor :PhoneNumber

        def initialize(phonenumber=nil)
          @PhoneNumber = phonenumber
        end

        def deserialize(params)
          @PhoneNumber = params['PhoneNumber']
        end
      end

      # 虚假号码识别回应
      class FNRResponse < TencentCloud::Common::AbstractModel
        # @param Status: 虚假号码描述
        # @type Status: Integer

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

    end
  end
end

