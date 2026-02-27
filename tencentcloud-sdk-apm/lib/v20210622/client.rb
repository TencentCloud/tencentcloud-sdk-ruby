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

        # 查询用户所有漏洞信息

        # @param request: Request instance for DescribeApmAllVulCount.
        # @type request: :class:`Tencentcloud::apm::V20210622::DescribeApmAllVulCountRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::DescribeApmAllVulCountResponse`
        def DescribeApmAllVulCount(request)
          body = send_request('DescribeApmAllVulCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApmAllVulCountResponse.new
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

        # 查询SQL注入详情信息

        # @param request: Request instance for DescribeApmSQLInjectionDetail.
        # @type request: :class:`Tencentcloud::apm::V20210622::DescribeApmSQLInjectionDetailRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::DescribeApmSQLInjectionDetailResponse`
        def DescribeApmSQLInjectionDetail(request)
          body = send_request('DescribeApmSQLInjectionDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApmSQLInjectionDetailResponse.new
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

        # 查询漏洞指标

        # @param request: Request instance for DescribeApmVulnerabilityCount.
        # @type request: :class:`Tencentcloud::apm::V20210622::DescribeApmVulnerabilityCountRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::DescribeApmVulnerabilityCountResponse`
        def DescribeApmVulnerabilityCount(request)
          body = send_request('DescribeApmVulnerabilityCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApmVulnerabilityCountResponse.new
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

        # 查询漏洞详情

        # @param request: Request instance for DescribeApmVulnerabilityDetail.
        # @type request: :class:`Tencentcloud::apm::V20210622::DescribeApmVulnerabilityDetailRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::DescribeApmVulnerabilityDetailResponse`
        def DescribeApmVulnerabilityDetail(request)
          body = send_request('DescribeApmVulnerabilityDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApmVulnerabilityDetailResponse.new
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

        # 获取指标数据通用接口用法：DescribeGeneralMetricData 是通用的指标数据查询接口，支持灵活的获取指标数据。该接口的查询方式类似于使用如下 SQL 语句：SELECT {Metrics} FROM {ViewName} WHERE {Filters} GROUP BY {GroupBy}。在发起请求前，请确定如下关键入参：
        # 1. 视图（ViewName）
        # 决定您要查询的数据领域。
        # 例如：service_metric（服务监控视图）、db_metric（数据库视图）等。关于 APM 支持的视图，请参考 [指标视图](https://cloud.tencent.com/document/product/248/101681#069b06a9-2593-49db-b694-dea4200f3b19)。

        # 2. 指标（Metrics）
        # 用于指定返回结果中包含的一个或多个指标项。
        # 例如：request_count（请求数）、duration_avg（平均耗时）、error_rate（错误率）。关于APM 支持的指标，请参考 [APM 指标协议标准](https://cloud.tencent.com/document/product/248/101681)，每种视图（ViewName）支持专属的指标集。
        # 3. 过滤（Filters）
        # 支持一个或多个键值对（Key-Value）形式的过滤条件。
        # 例如：只查某个特定服务 service.name = "order-service"。通用维度和每种视图（ViewName）支持专属专属维度，可以用作过滤条件中的键（Key），更多详情请参考 [APM 指标协议标准](https://cloud.tencent.com/document/product/248/101681)。

        # 4. 聚合（GroupBy）
        # 支持一个或多个聚合维度，相当于 SQL 的 GROUP BY。
        # 例如：按接口名称 operation 分组，查看每个接口的性能。通用维度和每种视图（ViewName）支持专属专属维度，可以用作聚合维度，更多详情请参考 [APM 指标协议标准](https://cloud.tencent.com/document/product/248/101681)。
        # 5. 粒度 (Period)
        # 该参数决定了是否需要以时间切片聚合。
        #     - Period = 1：时间序列模式：返回结果中按时间切片聚合，时间序列（TimeSerial）和数据序列（DataSerial）中包含的多个值一一对应，分别代表特定时间切片上的聚合结果。时间序列模式主要用于展示时间趋势图。
        #     - Period = 0：汇总统计模式：返回结果中，数据序列（DataSerial）中只包含唯一的值，代表整个时间区间内的汇总数据。

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

        # 查询用户所有漏洞信息

        # @param request: Request instance for DescribeOPRAllVulCount.
        # @type request: :class:`Tencentcloud::apm::V20210622::DescribeOPRAllVulCountRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::DescribeOPRAllVulCountResponse`
        def DescribeOPRAllVulCount(request)
          body = send_request('DescribeOPRAllVulCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOPRAllVulCountResponse.new
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

        # 根据应用名查询服务拓扑图

        # @param request: Request instance for DescribeTopologyNew.
        # @type request: :class:`Tencentcloud::apm::V20210622::DescribeTopologyNewRequest`
        # @rtype: :class:`Tencentcloud::apm::V20210622::DescribeTopologyNewResponse`
        def DescribeTopologyNew(request)
          body = send_request('DescribeTopologyNew', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopologyNewResponse.new
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