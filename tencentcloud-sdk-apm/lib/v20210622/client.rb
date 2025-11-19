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
  module Apm
    module V20210622
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-06-22'
            api_endpoint = 'apm.tencentcloudapi.com'
            sdk_version = 'APM_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 业务购买 APM 业务系统，调用该接口创建

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

        # 用于创建apm业务系统与Prometheus实例的指标匹配规则

        # @param request: Request instance for CreateApmPrometheusRule.
        # @type request: :class:`Tencentcloud::apm::V20210622::CreateApmPrometheusRuleRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::CreateApmPrometheusRuleResponse`
        def CreateApmPrometheusRule(request)
          body = send_request('CreateApmPrometheusRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateApmPrometheusRuleResponse.new
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

        # 创建采样配置接口

        # @param request: Request instance for CreateApmSampleConfig.
        # @type request: :class:`Tencentcloud::apm::V20210622::CreateApmSampleConfigRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::CreateApmSampleConfigResponse`
        def CreateApmSampleConfig(request)
          body = send_request('CreateApmSampleConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateApmSampleConfigResponse.new
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

        # 创建事件任务

        # @param request: Request instance for CreateProfileTask.
        # @type request: :class:`Tencentcloud::apm::V20210622::CreateProfileTaskRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::CreateProfileTaskResponse`
        def CreateProfileTask(request)
          body = send_request('CreateProfileTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateProfileTaskResponse.new
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

        # 删除采样配置接口

        # @param request: Request instance for DeleteApmSampleConfig.
        # @type request: :class:`Tencentcloud::apm::V20210622::DeleteApmSampleConfigRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::DeleteApmSampleConfigResponse`
        def DeleteApmSampleConfig(request)
          body = send_request('DeleteApmSampleConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteApmSampleConfigResponse.new
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

        # 获取 APM 接入点

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

        # 查询应用配置接口

        # @param request: Request instance for DescribeApmApplicationConfig.
        # @type request: :class:`Tencentcloud::apm::V20210622::DescribeApmApplicationConfigRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::DescribeApmApplicationConfigResponse`
        def DescribeApmApplicationConfig(request)
          body = send_request('DescribeApmApplicationConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApmApplicationConfigResponse.new
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

        # 用于查询apm业务系统与其他产品的关联关系

        # @param request: Request instance for DescribeApmAssociation.
        # @type request: :class:`Tencentcloud::apm::V20210622::DescribeApmAssociationRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::DescribeApmAssociationResponse`
        def DescribeApmAssociation(request)
          body = send_request('DescribeApmAssociation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApmAssociationResponse.new
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

        # 获取 APM 业务系统列表

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

        # 用于查询apm业务系统与Prometheus实例的指标匹配规则

        # @param request: Request instance for DescribeApmPrometheusRule.
        # @type request: :class:`Tencentcloud::apm::V20210622::DescribeApmPrometheusRuleRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::DescribeApmPrometheusRuleResponse`
        def DescribeApmPrometheusRule(request)
          body = send_request('DescribeApmPrometheusRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApmPrometheusRuleResponse.new
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

        # 查询采样配置接口

        # @param request: Request instance for DescribeApmSampleConfig.
        # @type request: :class:`Tencentcloud::apm::V20210622::DescribeApmSampleConfigRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::DescribeApmSampleConfigResponse`
        def DescribeApmSampleConfig(request)
          body = send_request('DescribeApmSampleConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApmSampleConfigResponse.new
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

        # 获取 APM 应用指标列表

        # @param request: Request instance for DescribeApmServiceMetric.
        # @type request: :class:`Tencentcloud::apm::V20210622::DescribeApmServiceMetricRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::DescribeApmServiceMetricResponse`
        def DescribeApmServiceMetric(request)
          body = send_request('DescribeApmServiceMetric', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApmServiceMetricResponse.new
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

        # 查询应用配置信息

        # @param request: Request instance for DescribeGeneralApmApplicationConfig.
        # @type request: :class:`Tencentcloud::apm::V20210622::DescribeGeneralApmApplicationConfigRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::DescribeGeneralApmApplicationConfigResponse`
        def DescribeGeneralApmApplicationConfig(request)
          body = send_request('DescribeGeneralApmApplicationConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGeneralApmApplicationConfigResponse.new
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

        # 通用查询 OpenTelemetry 调用链列表

        # @param request: Request instance for DescribeGeneralOTSpanList.
        # @type request: :class:`Tencentcloud::apm::V20210622::DescribeGeneralOTSpanListRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::DescribeGeneralOTSpanListResponse`
        def DescribeGeneralOTSpanList(request)
          body = send_request('DescribeGeneralOTSpanList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGeneralOTSpanListResponse.new
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

        # 查询指标列表接口，查询指标更推荐使用DescribeGeneralMetricData接口

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

        # 应用概览数据拉取

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

        # 根据维度名和过滤条件，查询维度数据.

        # @param request: Request instance for DescribeTagValues.
        # @type request: :class:`Tencentcloud::apm::V20210622::DescribeTagValuesRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::DescribeTagValuesResponse`
        def DescribeTagValues(request)
          body = send_request('DescribeTagValues', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTagValuesResponse.new
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

        # 修改应用配置接口

        # @param request: Request instance for ModifyApmApplicationConfig.
        # @type request: :class:`Tencentcloud::apm::V20210622::ModifyApmApplicationConfigRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::ModifyApmApplicationConfigResponse`
        def ModifyApmApplicationConfig(request)
          body = send_request('ModifyApmApplicationConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyApmApplicationConfigResponse.new
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

        # 用于修改apm业务系统与其他产品的关联关系（包括创建和删除）

        # @param request: Request instance for ModifyApmAssociation.
        # @type request: :class:`Tencentcloud::apm::V20210622::ModifyApmAssociationRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::ModifyApmAssociationResponse`
        def ModifyApmAssociation(request)
          body = send_request('ModifyApmAssociation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyApmAssociationResponse.new
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

        # 修改APM业务系统接口

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

        # 用于修改apm业务系统与Prometheus实例的指标匹配规则

        # @param request: Request instance for ModifyApmPrometheusRule.
        # @type request: :class:`Tencentcloud::apm::V20210622::ModifyApmPrometheusRuleRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::ModifyApmPrometheusRuleResponse`
        def ModifyApmPrometheusRule(request)
          body = send_request('ModifyApmPrometheusRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyApmPrometheusRuleResponse.new
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

        # 修改采样配置接口

        # @param request: Request instance for ModifyApmSampleConfig.
        # @type request: :class:`Tencentcloud::apm::V20210622::ModifyApmSampleConfigRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::ModifyApmSampleConfigResponse`
        def ModifyApmSampleConfig(request)
          body = send_request('ModifyApmSampleConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyApmSampleConfigResponse.new
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

        # 对外开放的openApi，客户可以灵活的指定需要修改的字段，再加入需要修改的服务列表.

        # @param request: Request instance for ModifyGeneralApmApplicationConfig.
        # @type request: :class:`Tencentcloud::apm::V20210622::ModifyGeneralApmApplicationConfigRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::ModifyGeneralApmApplicationConfigResponse`
        def ModifyGeneralApmApplicationConfig(request)
          body = send_request('ModifyGeneralApmApplicationConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyGeneralApmApplicationConfigResponse.new
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

        # 销毁 APM 业务系统

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