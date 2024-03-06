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

require 'json'

module TencentCloud
  module Apm
    module V20210622
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-06-22'
            api_endpoint = 'apm.tencentcloudapi.com'
            sdk_version = 'APM_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 业务购买APM实例，调用该接口创建

        # @param request: Request instance for CreateApmInstance.
        # @type request: :class:`Tencentcloud::apm::V20210622::CreateApmInstanceRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::CreateApmInstanceResponse`
        def CreateApmInstance(request)
          body = send_request('CreateApmInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateApmInstanceResponse.new
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

        # 获取APM Agent信息

        # @param request: Request instance for DescribeApmAgent.
        # @type request: :class:`Tencentcloud::apm::V20210622::DescribeApmAgentRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::DescribeApmAgentResponse`
        def DescribeApmAgent(request)
          body = send_request('DescribeApmAgent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApmAgentResponse.new
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

        # APM实例列表拉取

        # @param request: Request instance for DescribeApmInstances.
        # @type request: :class:`Tencentcloud::apm::V20210622::DescribeApmInstancesRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::DescribeApmInstancesResponse`
        def DescribeApmInstances(request)
          body = send_request('DescribeApmInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApmInstancesResponse.new
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

        # 获取指标数据通用接口。用户根据需要上送请求参数，返回对应的指标数据。
        # 接口调用频率限制为：20次/秒，1200次/分钟。单请求的数据点数限制为1440个。

        # @param request: Request instance for DescribeGeneralMetricData.
        # @type request: :class:`Tencentcloud::apm::V20210622::DescribeGeneralMetricDataRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::DescribeGeneralMetricDataResponse`
        def DescribeGeneralMetricData(request)
          body = send_request('DescribeGeneralMetricData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGeneralMetricDataResponse.new
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

        # 通用查询调用链列表

        # @param request: Request instance for DescribeGeneralSpanList.
        # @type request: :class:`Tencentcloud::apm::V20210622::DescribeGeneralSpanListRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::DescribeGeneralSpanListResponse`
        def DescribeGeneralSpanList(request)
          body = send_request('DescribeGeneralSpanList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGeneralSpanListResponse.new
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

        # 拉取通用指标列表

        # @param request: Request instance for DescribeMetricRecords.
        # @type request: :class:`Tencentcloud::apm::V20210622::DescribeMetricRecordsRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::DescribeMetricRecordsResponse`
        def DescribeMetricRecords(request)
          body = send_request('DescribeMetricRecords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMetricRecordsResponse.new
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

        # 服务概览数据拉取

        # @param request: Request instance for DescribeServiceOverview.
        # @type request: :class:`Tencentcloud::apm::V20210622::DescribeServiceOverviewRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::DescribeServiceOverviewResponse`
        def DescribeServiceOverview(request)
          body = send_request('DescribeServiceOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeServiceOverviewResponse.new
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

        # 修改APM实例接口

        # @param request: Request instance for ModifyApmInstance.
        # @type request: :class:`Tencentcloud::apm::V20210622::ModifyApmInstanceRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::ModifyApmInstanceResponse`
        def ModifyApmInstance(request)
          body = send_request('ModifyApmInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyApmInstanceResponse.new
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

        # apm销毁实例

        # @param request: Request instance for TerminateApmInstance.
        # @type request: :class:`Tencentcloud::apm::V20210622::TerminateApmInstanceRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::TerminateApmInstanceResponse`
        def TerminateApmInstance(request)
          body = send_request('TerminateApmInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TerminateApmInstanceResponse.new
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