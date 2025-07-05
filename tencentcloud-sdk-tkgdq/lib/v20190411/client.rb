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

require 'json'

module TencentCloud
  module Tkgdq
    module V20190411
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-04-11'
            api_endpoint = 'tkgdq.tencentcloudapi.com'
            sdk_version = 'TKGDQ_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 输入实体名称，返回实体相关的信息如实体别名、实体英文名、实体详细信息、相关实体等

        # @param request: Request instance for DescribeEntity.
        # @type request: :class:`Tencentcloud::tkgdq::V20190411::DescribeEntityRequest`
        # @rtype: :class:`Tencentcloud::tkgdq::V20190411::DescribeEntityResponse`
        def DescribeEntity(request)
          body = send_request('DescribeEntity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEntityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 输入两个实体，返回两个实体间的关系，例如马化腾与腾讯公司不仅是相关实体，二者还存在隶属关系（马化腾属于腾讯公司）。

        # @param request: Request instance for DescribeRelation.
        # @type request: :class:`Tencentcloud::tkgdq::V20190411::DescribeRelationRequest`
        # @rtype: :class:`Tencentcloud::tkgdq::V20190411::DescribeRelationResponse`
        def DescribeRelation(request)
          body = send_request('DescribeRelation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRelationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 三元组查询，主要分为两类，SP查询和PO查询。SP查询表示已知主语和谓语查询宾语，PO查询表示已知宾语和谓语查询主语。每一个SP或PO查询都是一个可独立执行的查询，TQL支持SP查询的嵌套查询，即主语可以是一个嵌套的子查询。其他复杂的三元组查询方法，请参考官网API文档示例。

        # @param request: Request instance for DescribeTriple.
        # @type request: :class:`Tencentcloud::tkgdq::V20190411::DescribeTripleRequest`
        # @rtype: :class:`Tencentcloud::tkgdq::V20190411::DescribeTripleResponse`
        def DescribeTriple(request)
          body = send_request('DescribeTriple', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTripleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end


      end
    end
  end
end