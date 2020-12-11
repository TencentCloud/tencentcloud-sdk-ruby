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

      # CreateSmpnEpa请求参数结构体
      class CreateSmpnEpaRequest < TencentCloud::Common::AbstractModel
        # @param RequestData: 企业号码认证请求内容
        # @type RequestData: :class:`Tencentcloud::Smpn.v20190822.models.EPARequest`
        # @param ResourceId: 用于计费的资源ID
        # @type ResourceId: String

        attr_accessor :RequestData, :ResourceId
        
        def initialize(requestdata=nil, resourceid=nil)
          @RequestData = requestdata
          @ResourceId = resourceid
        end

        def deserialize(params)
          unless params['RequestData'].nil?
            @RequestData = EPARequest.new.deserialize(params[RequestData])
          end
          @ResourceId = params['ResourceId']
        end
      end

      # CreateSmpnEpa返回参数结构体
      class CreateSmpnEpaResponse < TencentCloud::Common::AbstractModel
        # @param ResponseData: 业号码认证回应内容
        # @type ResponseData: :class:`Tencentcloud::Smpn.v20190822.models.EPAResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResponseData, :RequestId
        
        def initialize(responsedata=nil, requestid=nil)
          @ResponseData = responsedata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ResponseData'].nil?
            @ResponseData = EPAResponse.new.deserialize(params[ResponseData])
          end
          @RequestId = params['RequestId']
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
            @RequestData = CHPRequest.new.deserialize(params[RequestData])
          end
        end
      end

      # DescribeSmpnChp返回参数结构体
      class DescribeSmpnChpResponse < TencentCloud::Common::AbstractModel
        # @param ResponseData: 终端骚扰保护回应
        # @type ResponseData: :class:`Tencentcloud::Smpn.v20190822.models.CHPResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResponseData, :RequestId
        
        def initialize(responsedata=nil, requestid=nil)
          @ResponseData = responsedata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ResponseData'].nil?
            @ResponseData = CHPResponse.new.deserialize(params[ResponseData])
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
            @RequestData = FNRRequest.new.deserialize(params[RequestData])
          end
          @ResourceId = params['ResourceId']
        end
      end

      # DescribeSmpnFnr返回参数结构体
      class DescribeSmpnFnrResponse < TencentCloud::Common::AbstractModel
        # @param ResponseData: 虚假号码识别回应内容
        # @type ResponseData: :class:`Tencentcloud::Smpn.v20190822.models.FNRResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResponseData, :RequestId
        
        def initialize(responsedata=nil, requestid=nil)
          @ResponseData = responsedata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ResponseData'].nil?
            @ResponseData = FNRResponse.new.deserialize(params[ResponseData])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSmpnMhm请求参数结构体
      class DescribeSmpnMhmRequest < TencentCloud::Common::AbstractModel
        # @param RequestData: 号码营销监控请求内容
        # @type RequestData: :class:`Tencentcloud::Smpn.v20190822.models.MHMRequest`
        # @param ResourceId: 用于计费的资源ID
        # @type ResourceId: String

        attr_accessor :RequestData, :ResourceId
        
        def initialize(requestdata=nil, resourceid=nil)
          @RequestData = requestdata
          @ResourceId = resourceid
        end

        def deserialize(params)
          unless params['RequestData'].nil?
            @RequestData = MHMRequest.new.deserialize(params[RequestData])
          end
          @ResourceId = params['ResourceId']
        end
      end

      # DescribeSmpnMhm返回参数结构体
      class DescribeSmpnMhmResponse < TencentCloud::Common::AbstractModel
        # @param ResponseData: 号码营销监控回应内容
        # @type ResponseData: :class:`Tencentcloud::Smpn.v20190822.models.MHMResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResponseData, :RequestId
        
        def initialize(responsedata=nil, requestid=nil)
          @ResponseData = responsedata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ResponseData'].nil?
            @ResponseData = MHMResponse.new.deserialize(params[ResponseData])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSmpnMrl请求参数结构体
      class DescribeSmpnMrlRequest < TencentCloud::Common::AbstractModel
        # @param RequestData: 恶意标记等级请求内容
        # @type RequestData: :class:`Tencentcloud::Smpn.v20190822.models.MRLRequest`
        # @param ResourceId: 用于计费的资源ID
        # @type ResourceId: String

        attr_accessor :RequestData, :ResourceId
        
        def initialize(requestdata=nil, resourceid=nil)
          @RequestData = requestdata
          @ResourceId = resourceid
        end

        def deserialize(params)
          unless params['RequestData'].nil?
            @RequestData = MRLRequest.new.deserialize(params[RequestData])
          end
          @ResourceId = params['ResourceId']
        end
      end

      # DescribeSmpnMrl返回参数结构体
      class DescribeSmpnMrlResponse < TencentCloud::Common::AbstractModel
        # @param ResponseData: 恶意标记等级回应内容
        # @type ResponseData: :class:`Tencentcloud::Smpn.v20190822.models.MRLResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResponseData, :RequestId
        
        def initialize(responsedata=nil, requestid=nil)
          @ResponseData = responsedata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ResponseData'].nil?
            @ResponseData = MRLResponse.new.deserialize(params[ResponseData])
          end
          @RequestId = params['RequestId']
        end
      end

      # 企业号码认证请求
      class EPARequest < TencentCloud::Common::AbstractModel
        # @param PhoneNumber: 电话号码
        # @type PhoneNumber: String
        # @param Name: 黄页名称
        # @type Name: String

        attr_accessor :PhoneNumber, :Name
        
        def initialize(phonenumber=nil, name=nil)
          @PhoneNumber = phonenumber
          @Name = name
        end

        def deserialize(params)
          @PhoneNumber = params['PhoneNumber']
          @Name = params['Name']
        end
      end

      # 企业号码认证回应
      class EPAResponse < TencentCloud::Common::AbstractModel
        # @param RetCode: 0成功 其他失败
        # @type RetCode: Integer

        attr_accessor :RetCode
        
        def initialize(retcode=nil)
          @RetCode = retcode
        end

        def deserialize(params)
          @RetCode = params['RetCode']
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

      # 号码营销监控请求
      class MHMRequest < TencentCloud::Common::AbstractModel
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

      # 号码营销监控回应
      class MHMResponse < TencentCloud::Common::AbstractModel
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

      # 号码恶意标记等级请求
      class MRLRequest < TencentCloud::Common::AbstractModel
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

      # 号码恶意标记等级
      class MRLResponse < TencentCloud::Common::AbstractModel
        # @param DisturbLevel: 骚扰电话恶意标记等级
        # @type DisturbLevel: Integer
        # @param HouseAgentLevel: 房产中介恶意标记等级
        # @type HouseAgentLevel: Integer
        # @param InsuranceLevel: 保险理财恶意标记等级
        # @type InsuranceLevel: Integer
        # @param SalesLevel: 广告推销恶意标记等级
        # @type SalesLevel: Integer
        # @param CheatLevel: 诈骗电话恶意标记等级
        # @type CheatLevel: Integer

        attr_accessor :DisturbLevel, :HouseAgentLevel, :InsuranceLevel, :SalesLevel, :CheatLevel
        
        def initialize(disturblevel=nil, houseagentlevel=nil, insurancelevel=nil, saleslevel=nil, cheatlevel=nil)
          @DisturbLevel = disturblevel
          @HouseAgentLevel = houseagentlevel
          @InsuranceLevel = insurancelevel
          @SalesLevel = saleslevel
          @CheatLevel = cheatlevel
        end

        def deserialize(params)
          @DisturbLevel = params['DisturbLevel']
          @HouseAgentLevel = params['HouseAgentLevel']
          @InsuranceLevel = params['InsuranceLevel']
          @SalesLevel = params['SalesLevel']
          @CheatLevel = params['CheatLevel']
        end
      end

    end
  end
end

