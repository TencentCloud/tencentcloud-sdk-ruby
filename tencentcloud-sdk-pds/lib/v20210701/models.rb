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
  module Pds
    module V20210701
      # DescribeNewUserAcquisition请求参数结构体
      class DescribeNewUserAcquisitionRequest < TencentCloud::Common::AbstractModel
        # @param ServiceParams: 用户信息
        # @type ServiceParams: :class:`Tencentcloud::Pds.v20210701.models.UserInfos`

        attr_accessor :ServiceParams

        def initialize(serviceparams=nil)
          @ServiceParams = serviceparams
        end

        def deserialize(params)
          unless params['ServiceParams'].nil?
            @ServiceParams = UserInfos.new
            @ServiceParams.deserialize(params['ServiceParams'])
          end
        end
      end

      # DescribeNewUserAcquisition返回参数结构体
      class DescribeNewUserAcquisitionResponse < TencentCloud::Common::AbstractModel
        # @param ServiceRsp: 用户信誉分，1-5从低到高
        # @type ServiceRsp: :class:`Tencentcloud::Pds.v20210701.models.Score`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceRsp, :RequestId

        def initialize(servicersp=nil, requestid=nil)
          @ServiceRsp = servicersp
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ServiceRsp'].nil?
            @ServiceRsp = Score.new
            @ServiceRsp.deserialize(params['ServiceRsp'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeStockEstimation请求参数结构体
      class DescribeStockEstimationRequest < TencentCloud::Common::AbstractModel
        # @param ServiceParams: 用户信息
        # @type ServiceParams: :class:`Tencentcloud::Pds.v20210701.models.UserInfos`

        attr_accessor :ServiceParams

        def initialize(serviceparams=nil)
          @ServiceParams = serviceparams
        end

        def deserialize(params)
          unless params['ServiceParams'].nil?
            @ServiceParams = UserInfos.new
            @ServiceParams.deserialize(params['ServiceParams'])
          end
        end
      end

      # DescribeStockEstimation返回参数结构体
      class DescribeStockEstimationResponse < TencentCloud::Common::AbstractModel
        # @param ServiceRsp: 用户信誉分，1-5从低到高
        # @type ServiceRsp: :class:`Tencentcloud::Pds.v20210701.models.Score`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceRsp, :RequestId

        def initialize(servicersp=nil, requestid=nil)
          @ServiceRsp = servicersp
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ServiceRsp'].nil?
            @ServiceRsp = Score.new
            @ServiceRsp.deserialize(params['ServiceRsp'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 信誉分，1-5从低到高
      class Score < TencentCloud::Common::AbstractModel
        # @param Star: 信誉分，1-5从低到高
        # @type Star: Integer

        attr_accessor :Star

        def initialize(star=nil)
          @Star = star
        end

        def deserialize(params)
          @Star = params['Star']
        end
      end

      # 用户信息
      class UserInfos < TencentCloud::Common::AbstractModel
        # @param PhoneNum: 用户的手机号
        # @type PhoneNum: String
        # @param Openid: 用户的微信OpenID
        # @type Openid: String
        # @param IP: 用户移动设备的客户端IP
        # @type IP: String
        # @param WiFiBssid: 用户WiFi的BSSID
        # @type WiFiBssid: String
        # @param IMEI: 用户Android设备的IMEI
        # @type IMEI: String
        # @param OAID: 用户Android设备的OAID
        # @type OAID: String
        # @param IDFA: 用户iOS设备的IDFA
        # @type IDFA: String

        attr_accessor :PhoneNum, :Openid, :IP, :WiFiBssid, :IMEI, :OAID, :IDFA

        def initialize(phonenum=nil, openid=nil, ip=nil, wifibssid=nil, imei=nil, oaid=nil, idfa=nil)
          @PhoneNum = phonenum
          @Openid = openid
          @IP = ip
          @WiFiBssid = wifibssid
          @IMEI = imei
          @OAID = oaid
          @IDFA = idfa
        end

        def deserialize(params)
          @PhoneNum = params['PhoneNum']
          @Openid = params['Openid']
          @IP = params['IP']
          @WiFiBssid = params['WiFiBssid']
          @IMEI = params['IMEI']
          @OAID = params['OAID']
          @IDFA = params['IDFA']
        end
      end

    end
  end
end

