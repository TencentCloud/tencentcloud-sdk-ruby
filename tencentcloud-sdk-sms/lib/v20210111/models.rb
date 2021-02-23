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
  module Sms
    module V20210111
      # DescribeSmsTemplateList请求参数结构体
      class DescribeSmsTemplateListRequest < TencentCloud::Common::AbstractModel
        # @param TemplateIdSet: 模板 ID 数组。
        # @type TemplateIdSet: Array
        # @param International: 是否国际/港澳台短信：
        # 0：表示国内短信。
        # 1：表示国际/港澳台短信。
        # @type International: Integer

        attr_accessor :TemplateIdSet, :International
        
        def initialize(templateidset=nil, international=nil)
          @TemplateIdSet = templateidset
          @International = international
        end

        def deserialize(params)
          @TemplateIdSet = params['TemplateIdSet']
          @International = params['International']
        end
      end

      # DescribeSmsTemplateList返回参数结构体
      class DescribeSmsTemplateListResponse < TencentCloud::Common::AbstractModel
        # @param DescribeTemplateStatusSet: 获取短信模板信息响应
        # @type DescribeTemplateStatusSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DescribeTemplateStatusSet, :RequestId
        
        def initialize(describetemplatestatusset=nil, requestid=nil)
          @DescribeTemplateStatusSet = describetemplatestatusset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DescribeTemplateStatusSet'].nil?
            @DescribeTemplateStatusSet = []
            params['DescribeTemplateStatusSet'].each do |i|
              @DescribeTemplateStatusSet << DescribeTemplateListStatus.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取短信模板信息响应
      class DescribeTemplateListStatus < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板Id
        # @type TemplateId: Integer
        # @param International: 是否国际/港澳台短信：
        # 0：表示国内短信。
        # 1：表示国际/港澳台短信。
        # @type International: Integer
        # @param StatusCode: 申请签名状态。其中：
        # 0：表示审核通过。
        # 1：表示审核中。
        # -1：表示审核未通过或审核失败。
        # @type StatusCode: Integer
        # @param ReviewReply: 审核回复，审核人员审核后给出的回复，通常是审核未通过的原因。
        # @type ReviewReply: String
        # @param TemplateName: 模板名称。
        # @type TemplateName: String
        # @param CreateTime: 提交审核时间，UNIX 时间戳（单位：秒）。
        # @type CreateTime: Integer

        attr_accessor :TemplateId, :International, :StatusCode, :ReviewReply, :TemplateName, :CreateTime
        
        def initialize(templateid=nil, international=nil, statuscode=nil, reviewreply=nil, templatename=nil, createtime=nil)
          @TemplateId = templateid
          @International = international
          @StatusCode = statuscode
          @ReviewReply = reviewreply
          @TemplateName = templatename
          @CreateTime = createtime
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @International = params['International']
          @StatusCode = params['StatusCode']
          @ReviewReply = params['ReviewReply']
          @TemplateName = params['TemplateName']
          @CreateTime = params['CreateTime']
        end
      end

    end
  end
end

