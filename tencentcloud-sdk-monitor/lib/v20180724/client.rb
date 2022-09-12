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
  module Monitor
    module V20180724
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-07-24'
            api_endpoint = 'monitor.tencentcloudapi.com'
            sdk_version = 'MONITOR_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 绑定 Grafana 可视化服务实例

        # @param request: Request instance for BindPrometheusManagedGrafana.
        # @type request: :class:`Tencentcloud::monitor::V20180724::BindPrometheusManagedGrafanaRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::BindPrometheusManagedGrafanaResponse`
        def BindPrometheusManagedGrafana(request)
          body = send_request('BindPrometheusManagedGrafana', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindPrometheusManagedGrafanaResponse.new
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

        # 将告警策略绑定到特定对象

        # @param request: Request instance for BindingPolicyObject.
        # @type request: :class:`Tencentcloud::monitor::V20180724::BindingPolicyObjectRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::BindingPolicyObjectResponse`
        def BindingPolicyObject(request)
          body = send_request('BindingPolicyObject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindingPolicyObjectResponse.new
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

        # 策略绑定标签

        # @param request: Request instance for BindingPolicyTag.
        # @type request: :class:`Tencentcloud::monitor::V20180724::BindingPolicyTagRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::BindingPolicyTagResponse`
        def BindingPolicyTag(request)
          body = send_request('BindingPolicyTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindingPolicyTagResponse.new
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

        # 强制销毁 Grafana 实例

        # @param request: Request instance for CleanGrafanaInstance.
        # @type request: :class:`Tencentcloud::monitor::V20180724::CleanGrafanaInstanceRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::CleanGrafanaInstanceResponse`
        def CleanGrafanaInstance(request)
          body = send_request('CleanGrafanaInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CleanGrafanaInstanceResponse.new
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

        # 创建通知模板

        # @param request: Request instance for CreateAlarmNotice.
        # @type request: :class:`Tencentcloud::monitor::V20180724::CreateAlarmNoticeRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::CreateAlarmNoticeResponse`
        def CreateAlarmNotice(request)
          body = send_request('CreateAlarmNotice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAlarmNoticeResponse.new
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

        # 创建云监控告警策略

        # @param request: Request instance for CreateAlarmPolicy.
        # @type request: :class:`Tencentcloud::monitor::V20180724::CreateAlarmPolicyRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::CreateAlarmPolicyResponse`
        def CreateAlarmPolicy(request)
          body = send_request('CreateAlarmPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAlarmPolicyResponse.new
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

        # 创建 Prometheus 告警规则。

        # 请注意，**告警对象和告警消息是 Prometheus Rule Annotations 的特殊字段，需要通过 annotations 来传递，对应的 Key 分别为summary/description**，，请参考 [Prometheus Rule更多配置请参考](https://prometheus.io/docs/prometheus/latest/configuration/alerting_rules/)。

        # @param request: Request instance for CreateAlertRule.
        # @type request: :class:`Tencentcloud::monitor::V20180724::CreateAlertRuleRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::CreateAlertRuleResponse`
        def CreateAlertRule(request)
          body = send_request('CreateAlertRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAlertRuleResponse.new
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

        # 创建 exporter 集成

        # @param request: Request instance for CreateExporterIntegration.
        # @type request: :class:`Tencentcloud::monitor::V20180724::CreateExporterIntegrationRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::CreateExporterIntegrationResponse`
        def CreateExporterIntegration(request)
          body = send_request('CreateExporterIntegration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateExporterIntegrationResponse.new
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

        # 创建 Grafana 实例

        # @param request: Request instance for CreateGrafanaInstance.
        # @type request: :class:`Tencentcloud::monitor::V20180724::CreateGrafanaInstanceRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::CreateGrafanaInstanceResponse`
        def CreateGrafanaInstance(request)
          body = send_request('CreateGrafanaInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateGrafanaInstanceResponse.new
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

        # 创建 Grafana 集成配置

        # @param request: Request instance for CreateGrafanaIntegration.
        # @type request: :class:`Tencentcloud::monitor::V20180724::CreateGrafanaIntegrationRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::CreateGrafanaIntegrationResponse`
        def CreateGrafanaIntegration(request)
          body = send_request('CreateGrafanaIntegration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateGrafanaIntegrationResponse.new
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

        # 创建 Grafana 告警通道

        # @param request: Request instance for CreateGrafanaNotificationChannel.
        # @type request: :class:`Tencentcloud::monitor::V20180724::CreateGrafanaNotificationChannelRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::CreateGrafanaNotificationChannelResponse`
        def CreateGrafanaNotificationChannel(request)
          body = send_request('CreateGrafanaNotificationChannel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateGrafanaNotificationChannelResponse.new
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

        # 增加策略组

        # @param request: Request instance for CreatePolicyGroup.
        # @type request: :class:`Tencentcloud::monitor::V20180724::CreatePolicyGroupRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::CreatePolicyGroupResponse`
        def CreatePolicyGroup(request)
          body = send_request('CreatePolicyGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePolicyGroupResponse.new
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

        # 创建 Prometheus CVM Agent

        # @param request: Request instance for CreatePrometheusAgent.
        # @type request: :class:`Tencentcloud::monitor::V20180724::CreatePrometheusAgentRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::CreatePrometheusAgentResponse`
        def CreatePrometheusAgent(request)
          body = send_request('CreatePrometheusAgent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePrometheusAgentResponse.new
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

        # 创建按量 Prometheus 实例，根据用量收费实例

        # @param request: Request instance for CreatePrometheusMultiTenantInstancePostPayMode.
        # @type request: :class:`Tencentcloud::monitor::V20180724::CreatePrometheusMultiTenantInstancePostPayModeRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::CreatePrometheusMultiTenantInstancePostPayModeResponse`
        def CreatePrometheusMultiTenantInstancePostPayMode(request)
          body = send_request('CreatePrometheusMultiTenantInstancePostPayMode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePrometheusMultiTenantInstancePostPayModeResponse.new
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

        # 创建 Prometheus 抓取任务

        # @param request: Request instance for CreatePrometheusScrapeJob.
        # @type request: :class:`Tencentcloud::monitor::V20180724::CreatePrometheusScrapeJobRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::CreatePrometheusScrapeJobResponse`
        def CreatePrometheusScrapeJob(request)
          body = send_request('CreatePrometheusScrapeJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePrometheusScrapeJobResponse.new
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

        # 创建 Prometheus 的预聚合规则

        # @param request: Request instance for CreateRecordingRule.
        # @type request: :class:`Tencentcloud::monitor::V20180724::CreateRecordingRuleRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::CreateRecordingRuleResponse`
        def CreateRecordingRule(request)
          body = send_request('CreateRecordingRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRecordingRuleResponse.new
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

        # Grafana实例授权其他腾讯云用户

        # @param request: Request instance for CreateSSOAccount.
        # @type request: :class:`Tencentcloud::monitor::V20180724::CreateSSOAccountRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::CreateSSOAccountResponse`
        def CreateSSOAccount(request)
          body = send_request('CreateSSOAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSSOAccountResponse.new
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

        # 在腾讯云容器服务下创建 Prometheus 服务发现。
        # <p>注意：前提条件，已经通过 Prometheus 控制台集成了对应的腾讯云容器服务，具体请参考
        # <a href="https://cloud.tencent.com/document/product/248/48859" target="_blank">Agent 安装</a>。</p>

        # @param request: Request instance for CreateServiceDiscovery.
        # @type request: :class:`Tencentcloud::monitor::V20180724::CreateServiceDiscoveryRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::CreateServiceDiscoveryResponse`
        def CreateServiceDiscovery(request)
          body = send_request('CreateServiceDiscovery', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateServiceDiscoveryResponse.new
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

        # 云监控告警删除告警通知模板

        # @param request: Request instance for DeleteAlarmNotices.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DeleteAlarmNoticesRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DeleteAlarmNoticesResponse`
        def DeleteAlarmNotices(request)
          body = send_request('DeleteAlarmNotices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAlarmNoticesResponse.new
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

        # 删除告警策略

        # @param request: Request instance for DeleteAlarmPolicy.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DeleteAlarmPolicyRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DeleteAlarmPolicyResponse`
        def DeleteAlarmPolicy(request)
          body = send_request('DeleteAlarmPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAlarmPolicyResponse.new
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

        # 批量删除 Prometheus 报警规则

        # @param request: Request instance for DeleteAlertRules.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DeleteAlertRulesRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DeleteAlertRulesResponse`
        def DeleteAlertRules(request)
          body = send_request('DeleteAlertRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAlertRulesResponse.new
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

        # 删除 exporter 集成

        # @param request: Request instance for DeleteExporterIntegration.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DeleteExporterIntegrationRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DeleteExporterIntegrationResponse`
        def DeleteExporterIntegration(request)
          body = send_request('DeleteExporterIntegration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteExporterIntegrationResponse.new
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

        # 删除 Grafana 实例

        # @param request: Request instance for DeleteGrafanaInstance.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DeleteGrafanaInstanceRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DeleteGrafanaInstanceResponse`
        def DeleteGrafanaInstance(request)
          body = send_request('DeleteGrafanaInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteGrafanaInstanceResponse.new
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

        # 删除 Grafana 集成配置

        # @param request: Request instance for DeleteGrafanaIntegration.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DeleteGrafanaIntegrationRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DeleteGrafanaIntegrationResponse`
        def DeleteGrafanaIntegration(request)
          body = send_request('DeleteGrafanaIntegration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteGrafanaIntegrationResponse.new
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

        # 删除 Grafana 告警通道

        # @param request: Request instance for DeleteGrafanaNotificationChannel.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DeleteGrafanaNotificationChannelRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DeleteGrafanaNotificationChannelResponse`
        def DeleteGrafanaNotificationChannel(request)
          body = send_request('DeleteGrafanaNotificationChannel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteGrafanaNotificationChannelResponse.new
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

        # 删除告警策略组

        # @param request: Request instance for DeletePolicyGroup.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DeletePolicyGroupRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DeletePolicyGroupResponse`
        def DeletePolicyGroup(request)
          body = send_request('DeletePolicyGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePolicyGroupResponse.new
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

        # 删除 Prometheus 抓取任务

        # @param request: Request instance for DeletePrometheusScrapeJobs.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DeletePrometheusScrapeJobsRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DeletePrometheusScrapeJobsResponse`
        def DeletePrometheusScrapeJobs(request)
          body = send_request('DeletePrometheusScrapeJobs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePrometheusScrapeJobsResponse.new
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

        # 批量删除 Prometheus 预聚合规则

        # @param request: Request instance for DeleteRecordingRules.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DeleteRecordingRulesRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DeleteRecordingRulesResponse`
        def DeleteRecordingRules(request)
          body = send_request('DeleteRecordingRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRecordingRulesResponse.new
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

        # Grafana可视化服务 删除授权用户

        # @param request: Request instance for DeleteSSOAccount.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DeleteSSOAccountRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DeleteSSOAccountResponse`
        def DeleteSSOAccount(request)
          body = send_request('DeleteSSOAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSSOAccountResponse.new
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

        # 删除在腾讯云容器服务下创建的 Prometheus 服务发现。
        # <p>注意：前提条件，已经通过 Prometheus 控制台集成了对应的腾讯云容器服务，具体请参考
        # <a href="https://cloud.tencent.com/document/product/248/48859" target="_blank">Agent 安装</a>。</p>

        # @param request: Request instance for DeleteServiceDiscovery.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DeleteServiceDiscoveryRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DeleteServiceDiscoveryResponse`
        def DeleteServiceDiscovery(request)
          body = send_request('DeleteServiceDiscovery', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteServiceDiscoveryResponse.new
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

        # 获取平台事件列表

        # @param request: Request instance for DescribeAccidentEventList.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeAccidentEventListRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeAccidentEventListResponse`
        def DescribeAccidentEventList(request)
          body = send_request('DescribeAccidentEventList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccidentEventListResponse.new
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

        # 查询告警事件列表

        # @param request: Request instance for DescribeAlarmEvents.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmEventsRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmEventsResponse`
        def DescribeAlarmEvents(request)
          body = send_request('DescribeAlarmEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmEventsResponse.new
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

        # 查询告警历史

        # 请注意，**如果使用子用户进行告警历史的查询，只能查询到被授权项目下的告警历史**，或不区分项目的产品的告警历史。如何对子账户授予项目的权限，请参考 [访问管理-项目与标签](https://cloud.tencent.com/document/product/598/32738)。

        # @param request: Request instance for DescribeAlarmHistories.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmHistoriesRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmHistoriesResponse`
        def DescribeAlarmHistories(request)
          body = send_request('DescribeAlarmHistories', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmHistoriesResponse.new
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

        # 查询告警指标列表

        # @param request: Request instance for DescribeAlarmMetrics.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmMetricsRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmMetricsResponse`
        def DescribeAlarmMetrics(request)
          body = send_request('DescribeAlarmMetrics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmMetricsResponse.new
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

        # 查询单个通知模板的详情

        # @param request: Request instance for DescribeAlarmNotice.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmNoticeRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmNoticeResponse`
        def DescribeAlarmNotice(request)
          body = send_request('DescribeAlarmNotice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmNoticeResponse.new
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

        # 云监控告警获取告警通知模板所有回调URL

        # @param request: Request instance for DescribeAlarmNoticeCallbacks.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmNoticeCallbacksRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmNoticeCallbacksResponse`
        def DescribeAlarmNoticeCallbacks(request)
          body = send_request('DescribeAlarmNoticeCallbacks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmNoticeCallbacksResponse.new
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

        # 查询通知模板列表

        # @param request: Request instance for DescribeAlarmNotices.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmNoticesRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmNoticesResponse`
        def DescribeAlarmNotices(request)
          body = send_request('DescribeAlarmNotices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmNoticesResponse.new
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

        # 查询告警策略列表

        # @param request: Request instance for DescribeAlarmPolicies.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmPoliciesRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmPoliciesResponse`
        def DescribeAlarmPolicies(request)
          body = send_request('DescribeAlarmPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmPoliciesResponse.new
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

        # 获取单个告警策略详情

        # @param request: Request instance for DescribeAlarmPolicy.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmPolicyRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeAlarmPolicyResponse`
        def DescribeAlarmPolicy(request)
          body = send_request('DescribeAlarmPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlarmPolicyResponse.new
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

        # Prometheus 报警规则查询接口

        # @param request: Request instance for DescribeAlertRules.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeAlertRulesRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeAlertRulesResponse`
        def DescribeAlertRules(request)
          body = send_request('DescribeAlertRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAlertRulesResponse.new
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

        # 查询所有名字空间

        # @param request: Request instance for DescribeAllNamespaces.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeAllNamespacesRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeAllNamespacesResponse`
        def DescribeAllNamespaces(request)
          body = send_request('DescribeAllNamespaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAllNamespacesResponse.new
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

        # 获取基础指标属性

        # @param request: Request instance for DescribeBaseMetrics.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeBaseMetricsRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeBaseMetricsResponse`
        def DescribeBaseMetrics(request)
          body = send_request('DescribeBaseMetrics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaseMetricsResponse.new
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

        # 获取基础告警列表

        # @param request: Request instance for DescribeBasicAlarmList.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeBasicAlarmListRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeBasicAlarmListResponse`
        def DescribeBasicAlarmList(request)
          body = send_request('DescribeBasicAlarmList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBasicAlarmListResponse.new
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

        # 获取已绑定对象列表

        # @param request: Request instance for DescribeBindingPolicyObjectList.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeBindingPolicyObjectListRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeBindingPolicyObjectListResponse`
        def DescribeBindingPolicyObjectList(request)
          body = send_request('DescribeBindingPolicyObjectList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBindingPolicyObjectListResponse.new
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

        # 获取条件模板列表

        # @param request: Request instance for DescribeConditionsTemplateList.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeConditionsTemplateListRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeConditionsTemplateListResponse`
        def DescribeConditionsTemplateList(request)
          body = send_request('DescribeConditionsTemplateList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConditionsTemplateListResponse.new
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

        # 列出 Grafana DNS 配置

        # @param request: Request instance for DescribeDNSConfig.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeDNSConfigRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeDNSConfigResponse`
        def DescribeDNSConfig(request)
          body = send_request('DescribeDNSConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDNSConfigResponse.new
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

        # 查询 exporter 集成列表

        # @param request: Request instance for DescribeExporterIntegrations.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeExporterIntegrationsRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeExporterIntegrationsResponse`
        def DescribeExporterIntegrations(request)
          body = send_request('DescribeExporterIntegrations', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExporterIntegrationsResponse.new
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

        # 列出 Grafana 所有告警通道

        # @param request: Request instance for DescribeGrafanaChannels.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeGrafanaChannelsRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeGrafanaChannelsResponse`
        def DescribeGrafanaChannels(request)
          body = send_request('DescribeGrafanaChannels', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGrafanaChannelsResponse.new
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

        # 列出 Grafana 的设置，即 grafana.ini 文件内容

        # @param request: Request instance for DescribeGrafanaConfig.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeGrafanaConfigRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeGrafanaConfigResponse`
        def DescribeGrafanaConfig(request)
          body = send_request('DescribeGrafanaConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGrafanaConfigResponse.new
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

        # 列出 Grafana 环境变量

        # @param request: Request instance for DescribeGrafanaEnvironments.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeGrafanaEnvironmentsRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeGrafanaEnvironmentsResponse`
        def DescribeGrafanaEnvironments(request)
          body = send_request('DescribeGrafanaEnvironments', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGrafanaEnvironmentsResponse.new
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

        # 列出用户所有的 Grafana 服务

        # @param request: Request instance for DescribeGrafanaInstances.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeGrafanaInstancesRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeGrafanaInstancesResponse`
        def DescribeGrafanaInstances(request)
          body = send_request('DescribeGrafanaInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGrafanaInstancesResponse.new
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

        # 列出 Grafana 已安装的集成

        # @param request: Request instance for DescribeGrafanaIntegrations.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeGrafanaIntegrationsRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeGrafanaIntegrationsResponse`
        def DescribeGrafanaIntegrations(request)
          body = send_request('DescribeGrafanaIntegrations', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGrafanaIntegrationsResponse.new
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

        # 列出 Grafana 告警通道

        # @param request: Request instance for DescribeGrafanaNotificationChannels.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeGrafanaNotificationChannelsRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeGrafanaNotificationChannelsResponse`
        def DescribeGrafanaNotificationChannels(request)
          body = send_request('DescribeGrafanaNotificationChannels', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGrafanaNotificationChannelsResponse.new
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

        # 列出 Grafana 白名单

        # @param request: Request instance for DescribeGrafanaWhiteList.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeGrafanaWhiteListRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeGrafanaWhiteListResponse`
        def DescribeGrafanaWhiteList(request)
          body = send_request('DescribeGrafanaWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGrafanaWhiteListResponse.new
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

        # 列出实例已安装的插件

        # @param request: Request instance for DescribeInstalledPlugins.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeInstalledPluginsRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeInstalledPluginsResponse`
        def DescribeInstalledPlugins(request)
          body = send_request('DescribeInstalledPlugins', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstalledPluginsResponse.new
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

        # 云监控支持多种类型的监控，此接口列出支持的所有类型

        # @param request: Request instance for DescribeMonitorTypes.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeMonitorTypesRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeMonitorTypesResponse`
        def DescribeMonitorTypes(request)
          body = send_request('DescribeMonitorTypes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMonitorTypesResponse.new
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

        # 列出可安装的所有 Grafana 插件

        # @param request: Request instance for DescribePluginOverviews.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribePluginOverviewsRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribePluginOverviewsResponse`
        def DescribePluginOverviews(request)
          body = send_request('DescribePluginOverviews', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePluginOverviewsResponse.new
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

        # 获取基础告警策略条件

        # @param request: Request instance for DescribePolicyConditionList.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribePolicyConditionListRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribePolicyConditionListResponse`
        def DescribePolicyConditionList(request)
          body = send_request('DescribePolicyConditionList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePolicyConditionListResponse.new
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

        # 获取基础策略组详情

        # @param request: Request instance for DescribePolicyGroupInfo.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribePolicyGroupInfoRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribePolicyGroupInfoResponse`
        def DescribePolicyGroupInfo(request)
          body = send_request('DescribePolicyGroupInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePolicyGroupInfoResponse.new
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

        # 获取基础策略告警组列表

        # @param request: Request instance for DescribePolicyGroupList.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribePolicyGroupListRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribePolicyGroupListResponse`
        def DescribePolicyGroupList(request)
          body = send_request('DescribePolicyGroupList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePolicyGroupListResponse.new
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

        # 分页获取产品事件的列表

        # @param request: Request instance for DescribeProductEventList.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeProductEventListRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeProductEventListResponse`
        def DescribeProductEventList(request)
          body = send_request('DescribeProductEventList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProductEventListResponse.new
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

        # 查询云监控产品列表，支持云服务器CVM、云数据库、云消息队列、负载均衡、容器服务、专线等云产品。

        # @param request: Request instance for DescribeProductList.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeProductListRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeProductListResponse`
        def DescribeProductList(request)
          body = send_request('DescribeProductList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProductListResponse.new
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

        # 列出 Prometheus CVM Agent

        # @param request: Request instance for DescribePrometheusAgents.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribePrometheusAgentsRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribePrometheusAgentsResponse`
        def DescribePrometheusAgents(request)
          body = send_request('DescribePrometheusAgents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrometheusAgentsResponse.new
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

        # 本接口 (DescribePrometheusInstances) 用于查询一个或多个实例的详细信息。
        # <ul>
        # <li>可以根据实例ID、实例名称或者实例状态等信息来查询实例的详细信息</li>
        # <li>如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的实例。</li>
        # </ul>

        # @param request: Request instance for DescribePrometheusInstances.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribePrometheusInstancesRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribePrometheusInstancesResponse`
        def DescribePrometheusInstances(request)
          body = send_request('DescribePrometheusInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrometheusInstancesResponse.new
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

        # 列出 Prometheus 抓取任务

        # @param request: Request instance for DescribePrometheusScrapeJobs.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribePrometheusScrapeJobsRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribePrometheusScrapeJobsResponse`
        def DescribePrometheusScrapeJobs(request)
          body = send_request('DescribePrometheusScrapeJobs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrometheusScrapeJobsResponse.new
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

        # 根据条件查询 Prometheus 预聚合规则

        # @param request: Request instance for DescribeRecordingRules.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeRecordingRulesRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeRecordingRulesResponse`
        def DescribeRecordingRules(request)
          body = send_request('DescribeRecordingRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRecordingRulesResponse.new
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

        # 列出当前grafana实例的所有授权账号

        # @param request: Request instance for DescribeSSOAccount.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeSSOAccountRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeSSOAccountResponse`
        def DescribeSSOAccount(request)
          body = send_request('DescribeSSOAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSSOAccountResponse.new
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

        # 列出在腾讯云容器服务下创建的 Prometheus 服务发现。
        # <p>注意：前提条件，已经通过 Prometheus 控制台集成了对应的腾讯云容器服务，具体请参考
        # <a href="https://cloud.tencent.com/document/product/248/48859" target="_blank">Agent 安装</a>。</p>

        # @param request: Request instance for DescribeServiceDiscovery.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeServiceDiscoveryRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeServiceDiscoveryResponse`
        def DescribeServiceDiscovery(request)
          body = send_request('DescribeServiceDiscovery', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeServiceDiscoveryResponse.new
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

        # 根据维度条件查询监控数据

        # @param request: Request instance for DescribeStatisticData.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DescribeStatisticDataRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DescribeStatisticDataResponse`
        def DescribeStatisticData(request)
          body = send_request('DescribeStatisticData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStatisticDataResponse.new
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

        # 彻底删除 Prometheus 实例相关数据，给定的实例必须先被 Terminate

        # @param request: Request instance for DestroyPrometheusInstance.
        # @type request: :class:`Tencentcloud::monitor::V20180724::DestroyPrometheusInstanceRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::DestroyPrometheusInstanceResponse`
        def DestroyPrometheusInstance(request)
          body = send_request('DestroyPrometheusInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroyPrometheusInstanceResponse.new
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

        # 设置 Grafana 公网访问

        # @param request: Request instance for EnableGrafanaInternet.
        # @type request: :class:`Tencentcloud::monitor::V20180724::EnableGrafanaInternetRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::EnableGrafanaInternetResponse`
        def EnableGrafanaInternet(request)
          body = send_request('EnableGrafanaInternet', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableGrafanaInternetResponse.new
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

        # 设置 Grafana 单点登录，使用腾讯云账号

        # @param request: Request instance for EnableGrafanaSSO.
        # @type request: :class:`Tencentcloud::monitor::V20180724::EnableGrafanaSSORequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::EnableGrafanaSSOResponse`
        def EnableGrafanaSSO(request)
          body = send_request('EnableGrafanaSSO', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableGrafanaSSOResponse.new
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

        # SSO单点登录时，设置是否cam鉴权

        # @param request: Request instance for EnableSSOCamCheck.
        # @type request: :class:`Tencentcloud::monitor::V20180724::EnableSSOCamCheckRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::EnableSSOCamCheckResponse`
        def EnableSSOCamCheck(request)
          body = send_request('EnableSSOCamCheck', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableSSOCamCheckResponse.new
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

        # 获取云产品的监控数据。此接口不适用于拉取容器服务监控数据，如需拉取容器服务监控数据，请使用[根据维度条件查询监控数据](https://cloud.tencent.com/document/product/248/51845)接口。
        # 传入产品的命名空间、对象维度描述和监控指标即可获得相应的监控数据。
        # 接口调用频率限制为：20次/秒，1200次/分钟。单请求最多可支持批量拉取10个实例的监控数据，单请求的数据点数限制为1440个。
        # 若您需要调用的指标、对象较多，可能存在因限频出现拉取失败的情况，建议尽量将请求按时间维度均摊。

        # >?
        # >- 2022年9月1日起，云监控开始对GetMonitorData接口计费。每个主账号每月可获得100万次免费请求额度，超过免费额度后如需继续调用接口需要开通 [API请求按量付费](https://buy.cloud.tencent.com/APIRequestBuy)。计费规则可查看[API计费文档](https://cloud.tencent.com/document/product/248/77914)。

        # @param request: Request instance for GetMonitorData.
        # @type request: :class:`Tencentcloud::monitor::V20180724::GetMonitorDataRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::GetMonitorDataResponse`
        def GetMonitorData(request)
          body = send_request('GetMonitorData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetMonitorDataResponse.new
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

        # 获取 Prometheus Agent 管理相关的命令行

        # @param request: Request instance for GetPrometheusAgentManagementCommand.
        # @type request: :class:`Tencentcloud::monitor::V20180724::GetPrometheusAgentManagementCommandRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::GetPrometheusAgentManagementCommandResponse`
        def GetPrometheusAgentManagementCommand(request)
          body = send_request('GetPrometheusAgentManagementCommand', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetPrometheusAgentManagementCommandResponse.new
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

        # 安装 Grafana Plugin

        # @param request: Request instance for InstallPlugins.
        # @type request: :class:`Tencentcloud::monitor::V20180724::InstallPluginsRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::InstallPluginsResponse`
        def InstallPlugins(request)
          body = send_request('InstallPlugins', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InstallPluginsResponse.new
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

        # 云监控告警编辑告警通知模板

        # @param request: Request instance for ModifyAlarmNotice.
        # @type request: :class:`Tencentcloud::monitor::V20180724::ModifyAlarmNoticeRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::ModifyAlarmNoticeResponse`
        def ModifyAlarmNotice(request)
          body = send_request('ModifyAlarmNotice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAlarmNoticeResponse.new
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

        # 修改告警策略触发条件

        # @param request: Request instance for ModifyAlarmPolicyCondition.
        # @type request: :class:`Tencentcloud::monitor::V20180724::ModifyAlarmPolicyConditionRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::ModifyAlarmPolicyConditionResponse`
        def ModifyAlarmPolicyCondition(request)
          body = send_request('ModifyAlarmPolicyCondition', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAlarmPolicyConditionResponse.new
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

        # 告警2.0编辑告警策略基本信息，包括策略名、备注

        # @param request: Request instance for ModifyAlarmPolicyInfo.
        # @type request: :class:`Tencentcloud::monitor::V20180724::ModifyAlarmPolicyInfoRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::ModifyAlarmPolicyInfoResponse`
        def ModifyAlarmPolicyInfo(request)
          body = send_request('ModifyAlarmPolicyInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAlarmPolicyInfoResponse.new
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

        # 云监控告警修改告警策略绑定的告警通知模板

        # @param request: Request instance for ModifyAlarmPolicyNotice.
        # @type request: :class:`Tencentcloud::monitor::V20180724::ModifyAlarmPolicyNoticeRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::ModifyAlarmPolicyNoticeResponse`
        def ModifyAlarmPolicyNotice(request)
          body = send_request('ModifyAlarmPolicyNotice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAlarmPolicyNoticeResponse.new
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

        # 启停告警策略

        # @param request: Request instance for ModifyAlarmPolicyStatus.
        # @type request: :class:`Tencentcloud::monitor::V20180724::ModifyAlarmPolicyStatusRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::ModifyAlarmPolicyStatusResponse`
        def ModifyAlarmPolicyStatus(request)
          body = send_request('ModifyAlarmPolicyStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAlarmPolicyStatusResponse.new
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

        # 云监控告警修改告警策略的触发任务，TriggerTasks字段放触发任务列表，TriggerTasks传空数组时，代表解绑该策略的所有触发任务。

        # @param request: Request instance for ModifyAlarmPolicyTasks.
        # @type request: :class:`Tencentcloud::monitor::V20180724::ModifyAlarmPolicyTasksRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::ModifyAlarmPolicyTasksResponse`
        def ModifyAlarmPolicyTasks(request)
          body = send_request('ModifyAlarmPolicyTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAlarmPolicyTasksResponse.new
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

        # 修改告警接收人

        # @param request: Request instance for ModifyAlarmReceivers.
        # @type request: :class:`Tencentcloud::monitor::V20180724::ModifyAlarmReceiversRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::ModifyAlarmReceiversResponse`
        def ModifyAlarmReceivers(request)
          body = send_request('ModifyAlarmReceivers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAlarmReceiversResponse.new
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

        # 修改 Grafana 实例属性

        # @param request: Request instance for ModifyGrafanaInstance.
        # @type request: :class:`Tencentcloud::monitor::V20180724::ModifyGrafanaInstanceRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::ModifyGrafanaInstanceResponse`
        def ModifyGrafanaInstance(request)
          body = send_request('ModifyGrafanaInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyGrafanaInstanceResponse.new
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

        # 更新策略组

        # @param request: Request instance for ModifyPolicyGroup.
        # @type request: :class:`Tencentcloud::monitor::V20180724::ModifyPolicyGroupRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::ModifyPolicyGroupResponse`
        def ModifyPolicyGroup(request)
          body = send_request('ModifyPolicyGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPolicyGroupResponse.new
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

        # 修改 Prometheus 实例相关属性

        # @param request: Request instance for ModifyPrometheusInstanceAttributes.
        # @type request: :class:`Tencentcloud::monitor::V20180724::ModifyPrometheusInstanceAttributesRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::ModifyPrometheusInstanceAttributesResponse`
        def ModifyPrometheusInstanceAttributes(request)
          body = send_request('ModifyPrometheusInstanceAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPrometheusInstanceAttributesResponse.new
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

        # 默认接口请求频率限制：50次/秒。
        # 默认单租户指标上限：100个。
        # 单次上报最多 30 个指标/值对，请求返回错误时，请求中所有的指标/值均不会被保存。

        # 上报的时间戳为期望保存的时间戳，建议构造整数分钟时刻的时间戳。
        # 时间戳时间范围必须为当前时间到 300 秒前之间。
        # 同一 IP 指标对的数据需按分钟先后顺序上报。

        # @param request: Request instance for PutMonitorData.
        # @type request: :class:`Tencentcloud::monitor::V20180724::PutMonitorDataRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::PutMonitorDataResponse`
        def PutMonitorData(request)
          body = send_request('PutMonitorData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PutMonitorDataResponse.new
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

        # 恢复 Grafana 实例

        # @param request: Request instance for ResumeGrafanaInstance.
        # @type request: :class:`Tencentcloud::monitor::V20180724::ResumeGrafanaInstanceRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::ResumeGrafanaInstanceResponse`
        def ResumeGrafanaInstance(request)
          body = send_request('ResumeGrafanaInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResumeGrafanaInstanceResponse.new
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

        # 发送自定义消息告警

        # @param request: Request instance for SendCustomAlarmMsg.
        # @type request: :class:`Tencentcloud::monitor::V20180724::SendCustomAlarmMsgRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::SendCustomAlarmMsgResponse`
        def SendCustomAlarmMsg(request)
          body = send_request('SendCustomAlarmMsg', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SendCustomAlarmMsgResponse.new
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

        # 设置一个策略为该告警策略类型、该项目的默认告警策略。
        # 同一项目下相同的告警策略类型，就会被设置为非默认。

        # @param request: Request instance for SetDefaultAlarmPolicy.
        # @type request: :class:`Tencentcloud::monitor::V20180724::SetDefaultAlarmPolicyRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::SetDefaultAlarmPolicyResponse`
        def SetDefaultAlarmPolicy(request)
          body = send_request('SetDefaultAlarmPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetDefaultAlarmPolicyResponse.new
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

        # 销毁按量 Prometheus 实例

        # @param request: Request instance for TerminatePrometheusInstances.
        # @type request: :class:`Tencentcloud::monitor::V20180724::TerminatePrometheusInstancesRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::TerminatePrometheusInstancesResponse`
        def TerminatePrometheusInstances(request)
          body = send_request('TerminatePrometheusInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TerminatePrometheusInstancesResponse.new
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

        # 删除全部的关联对象

        # @param request: Request instance for UnBindingAllPolicyObject.
        # @type request: :class:`Tencentcloud::monitor::V20180724::UnBindingAllPolicyObjectRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::UnBindingAllPolicyObjectResponse`
        def UnBindingAllPolicyObject(request)
          body = send_request('UnBindingAllPolicyObject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnBindingAllPolicyObjectResponse.new
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

        # 删除策略的关联对象

        # @param request: Request instance for UnBindingPolicyObject.
        # @type request: :class:`Tencentcloud::monitor::V20180724::UnBindingPolicyObjectRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::UnBindingPolicyObjectResponse`
        def UnBindingPolicyObject(request)
          body = send_request('UnBindingPolicyObject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnBindingPolicyObjectResponse.new
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

        # 解除实例绑定的 Grafana 可视化实例

        # @param request: Request instance for UnbindPrometheusManagedGrafana.
        # @type request: :class:`Tencentcloud::monitor::V20180724::UnbindPrometheusManagedGrafanaRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::UnbindPrometheusManagedGrafanaResponse`
        def UnbindPrometheusManagedGrafana(request)
          body = send_request('UnbindPrometheusManagedGrafana', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindPrometheusManagedGrafanaResponse.new
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

        # 删除 Grafana Dashboard

        # @param request: Request instance for UninstallGrafanaDashboard.
        # @type request: :class:`Tencentcloud::monitor::V20180724::UninstallGrafanaDashboardRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::UninstallGrafanaDashboardResponse`
        def UninstallGrafanaDashboard(request)
          body = send_request('UninstallGrafanaDashboard', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UninstallGrafanaDashboardResponse.new
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

        # 删除已安装的插件

        # @param request: Request instance for UninstallGrafanaPlugins.
        # @type request: :class:`Tencentcloud::monitor::V20180724::UninstallGrafanaPluginsRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::UninstallGrafanaPluginsResponse`
        def UninstallGrafanaPlugins(request)
          body = send_request('UninstallGrafanaPlugins', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UninstallGrafanaPluginsResponse.new
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

        # 更新 Prometheus 的报警规则。

        # 请注意，**告警对象和告警消息是 Prometheus Rule Annotations 的特殊字段，需要通过 annotations 来传递，对应的 Key 分别为summary/description**，，请参考 [Prometheus Rule更多配置请参考](https://prometheus.io/docs/prometheus/latest/configuration/alerting_rules/)。

        # @param request: Request instance for UpdateAlertRule.
        # @type request: :class:`Tencentcloud::monitor::V20180724::UpdateAlertRuleRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::UpdateAlertRuleResponse`
        def UpdateAlertRule(request)
          body = send_request('UpdateAlertRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateAlertRuleResponse.new
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

        # 更新 Prometheus 报警策略状态

        # @param request: Request instance for UpdateAlertRuleState.
        # @type request: :class:`Tencentcloud::monitor::V20180724::UpdateAlertRuleStateRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::UpdateAlertRuleStateResponse`
        def UpdateAlertRuleState(request)
          body = send_request('UpdateAlertRuleState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateAlertRuleStateResponse.new
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

        # 更新 Grafana 的 DNS 配置

        # @param request: Request instance for UpdateDNSConfig.
        # @type request: :class:`Tencentcloud::monitor::V20180724::UpdateDNSConfigRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::UpdateDNSConfigResponse`
        def UpdateDNSConfig(request)
          body = send_request('UpdateDNSConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateDNSConfigResponse.new
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

        # 更新 exporter 集成配置

        # @param request: Request instance for UpdateExporterIntegration.
        # @type request: :class:`Tencentcloud::monitor::V20180724::UpdateExporterIntegrationRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::UpdateExporterIntegrationResponse`
        def UpdateExporterIntegration(request)
          body = send_request('UpdateExporterIntegration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateExporterIntegrationResponse.new
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

        # 更新 Grafana 配置

        # @param request: Request instance for UpdateGrafanaConfig.
        # @type request: :class:`Tencentcloud::monitor::V20180724::UpdateGrafanaConfigRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::UpdateGrafanaConfigResponse`
        def UpdateGrafanaConfig(request)
          body = send_request('UpdateGrafanaConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateGrafanaConfigResponse.new
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

        # 更新 Grafana 环境变量

        # @param request: Request instance for UpdateGrafanaEnvironments.
        # @type request: :class:`Tencentcloud::monitor::V20180724::UpdateGrafanaEnvironmentsRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::UpdateGrafanaEnvironmentsResponse`
        def UpdateGrafanaEnvironments(request)
          body = send_request('UpdateGrafanaEnvironments', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateGrafanaEnvironmentsResponse.new
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

        # 更新 Grafana 集成配置

        # @param request: Request instance for UpdateGrafanaIntegration.
        # @type request: :class:`Tencentcloud::monitor::V20180724::UpdateGrafanaIntegrationRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::UpdateGrafanaIntegrationResponse`
        def UpdateGrafanaIntegration(request)
          body = send_request('UpdateGrafanaIntegration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateGrafanaIntegrationResponse.new
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

        # 更新 Grafana 告警通道

        # @param request: Request instance for UpdateGrafanaNotificationChannel.
        # @type request: :class:`Tencentcloud::monitor::V20180724::UpdateGrafanaNotificationChannelRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::UpdateGrafanaNotificationChannelResponse`
        def UpdateGrafanaNotificationChannel(request)
          body = send_request('UpdateGrafanaNotificationChannel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateGrafanaNotificationChannelResponse.new
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

        # 更新 Grafana 白名单

        # @param request: Request instance for UpdateGrafanaWhiteList.
        # @type request: :class:`Tencentcloud::monitor::V20180724::UpdateGrafanaWhiteListRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::UpdateGrafanaWhiteListResponse`
        def UpdateGrafanaWhiteList(request)
          body = send_request('UpdateGrafanaWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateGrafanaWhiteListResponse.new
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

        # 更新 Prometheus CVM Agent 状态

        # @param request: Request instance for UpdatePrometheusAgentStatus.
        # @type request: :class:`Tencentcloud::monitor::V20180724::UpdatePrometheusAgentStatusRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::UpdatePrometheusAgentStatusResponse`
        def UpdatePrometheusAgentStatus(request)
          body = send_request('UpdatePrometheusAgentStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdatePrometheusAgentStatusResponse.new
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

        # 更新 Prometheus 抓取任务

        # @param request: Request instance for UpdatePrometheusScrapeJob.
        # @type request: :class:`Tencentcloud::monitor::V20180724::UpdatePrometheusScrapeJobRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::UpdatePrometheusScrapeJobResponse`
        def UpdatePrometheusScrapeJob(request)
          body = send_request('UpdatePrometheusScrapeJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdatePrometheusScrapeJobResponse.new
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

        # 更新 Prometheus 的预聚合规则

        # @param request: Request instance for UpdateRecordingRule.
        # @type request: :class:`Tencentcloud::monitor::V20180724::UpdateRecordingRuleRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::UpdateRecordingRuleResponse`
        def UpdateRecordingRule(request)
          body = send_request('UpdateRecordingRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateRecordingRuleResponse.new
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

        # 更新已授权账号的备注、权限信息，会直接覆盖原有的信息，不传则不会更新。

        # @param request: Request instance for UpdateSSOAccount.
        # @type request: :class:`Tencentcloud::monitor::V20180724::UpdateSSOAccountRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::UpdateSSOAccountResponse`
        def UpdateSSOAccount(request)
          body = send_request('UpdateSSOAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateSSOAccountResponse.new
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

        # 在腾讯云容器服务下更新 Prometheus 服务发现。
        # <p>注意：前提条件，已经通过 Prometheus 控制台集成了对应的腾讯云容器服务，具体请参考
        # <a href="https://cloud.tencent.com/document/product/248/48859" target="_blank">Agent 安装</a>。</p>

        # @param request: Request instance for UpdateServiceDiscovery.
        # @type request: :class:`Tencentcloud::monitor::V20180724::UpdateServiceDiscoveryRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::UpdateServiceDiscoveryResponse`
        def UpdateServiceDiscovery(request)
          body = send_request('UpdateServiceDiscovery', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateServiceDiscoveryResponse.new
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

        # 升级 Grafana Dashboard

        # @param request: Request instance for UpgradeGrafanaDashboard.
        # @type request: :class:`Tencentcloud::monitor::V20180724::UpgradeGrafanaDashboardRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::UpgradeGrafanaDashboardResponse`
        def UpgradeGrafanaDashboard(request)
          body = send_request('UpgradeGrafanaDashboard', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeGrafanaDashboardResponse.new
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

        # 升级 Grafana 实例

        # @param request: Request instance for UpgradeGrafanaInstance.
        # @type request: :class:`Tencentcloud::monitor::V20180724::UpgradeGrafanaInstanceRequest`
        # @rtype: :class:`Tencentcloud::monitor::V20180724::UpgradeGrafanaInstanceResponse`
        def UpgradeGrafanaInstance(request)
          body = send_request('UpgradeGrafanaInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeGrafanaInstanceResponse.new
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