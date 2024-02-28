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
  module Ba
    module V20200720
      # CreateWeappQRUrl请求参数结构体
      class CreateWeappQRUrlRequest < TencentCloud::Common::AbstractModel
        # @param SessionKey: 代理角色临时密钥的Token
        # @type SessionKey: String

        attr_accessor :SessionKey

        def initialize(sessionkey=nil)
          @SessionKey = sessionkey
        end

        def deserialize(params)
          @SessionKey = params['SessionKey']
        end
      end

      # CreateWeappQRUrl返回参数结构体
      class CreateWeappQRUrlResponse < TencentCloud::Common::AbstractModel
        # @param Url: 渠道备案小程序二维码
        # @type Url: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Url, :RequestId

        def initialize(url=nil, requestid=nil)
          @Url = url
          @RequestId = requestid
        end

        def deserialize(params)
          @Url = params['Url']
          @RequestId = params['RequestId']
        end
      end

      # DescribeGetAuthInfo请求参数结构体
      class DescribeGetAuthInfoRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeGetAuthInfo返回参数结构体
      class DescribeGetAuthInfoResponse < TencentCloud::Common::AbstractModel
        # @param IsTenPayMasked: 实名认证状态：0未实名，1已实名
        # @type IsTenPayMasked: String
        # @param IsAuthenticated: 实名认证类型：0个人，1企业
        # @type IsAuthenticated: String
        # @param Type: 认证类型，个人0，企业1
        # @type Type: String
        # @param Level: 大客户标识：
        # 1004、1003、1002、1001

        # 其余为普通的用户
        # @type Level: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsTenPayMasked, :IsAuthenticated, :Type, :Level, :RequestId

        def initialize(istenpaymasked=nil, isauthenticated=nil, type=nil, level=nil, requestid=nil)
          @IsTenPayMasked = istenpaymasked
          @IsAuthenticated = isauthenticated
          @Type = type
          @Level = level
          @RequestId = requestid
        end

        def deserialize(params)
          @IsTenPayMasked = params['IsTenPayMasked']
          @IsAuthenticated = params['IsAuthenticated']
          @Type = params['Type']
          @Level = params['Level']
          @RequestId = params['RequestId']
        end
      end

      # SyncIcpOrderWebInfo请求参数结构体
      class SyncIcpOrderWebInfoRequest < TencentCloud::Common::AbstractModel
        # @param IcpOrderId: 备案ICP订单号
        # @type IcpOrderId: String
        # @param SourceWebId: 订单里的webId
        # @type SourceWebId: String
        # @param TargetWebIds: 订单里的webId 数组(如果传入的webIds含有 订单中不包含的webId，会自动跳过)
        # @type TargetWebIds: Array
        # @param SyncFields: 网站信息字段名 数组
        # @type SyncFields: Array
        # @param CheckSamePerson: 是否先判断同步的网站负责人是否一致 (这里会判断 sitePersonName, sitePersonCerType,sitePersonCerNum三个字段完全一致)  默认:true. 非必要 不建议关闭修改该参数默认值
        # @type CheckSamePerson: Boolean

        attr_accessor :IcpOrderId, :SourceWebId, :TargetWebIds, :SyncFields, :CheckSamePerson

        def initialize(icporderid=nil, sourcewebid=nil, targetwebids=nil, syncfields=nil, checksameperson=nil)
          @IcpOrderId = icporderid
          @SourceWebId = sourcewebid
          @TargetWebIds = targetwebids
          @SyncFields = syncfields
          @CheckSamePerson = checksameperson
        end

        def deserialize(params)
          @IcpOrderId = params['IcpOrderId']
          @SourceWebId = params['SourceWebId']
          @TargetWebIds = params['TargetWebIds']
          @SyncFields = params['SyncFields']
          @CheckSamePerson = params['CheckSamePerson']
        end
      end

      # SyncIcpOrderWebInfo返回参数结构体
      class SyncIcpOrderWebInfoResponse < TencentCloud::Common::AbstractModel
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

