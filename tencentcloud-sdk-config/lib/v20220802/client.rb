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
  module Config
    module V20220802
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-08-02'
            api_endpoint = 'config.tencentcloudapi.com'
            sdk_version = 'CONFIG_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 账号组新建合规包

        # @param request: Request instance for AddAggregateCompliancePack.
        # @type request: :class:`Tencentcloud::config::V20220802::AddAggregateCompliancePackRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::AddAggregateCompliancePackResponse`
        def AddAggregateCompliancePack(request)
          body = send_request('AddAggregateCompliancePack', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddAggregateCompliancePackResponse.new
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

        # 账号组新建规则

        # @param request: Request instance for AddAggregateConfigRule.
        # @type request: :class:`Tencentcloud::config::V20220802::AddAggregateConfigRuleRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::AddAggregateConfigRuleResponse`
        def AddAggregateConfigRule(request)
          body = send_request('AddAggregateConfigRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddAggregateConfigRuleResponse.new
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

        # 新增告警监控规则

        # @param request: Request instance for AddAlarmPolicy.
        # @type request: :class:`Tencentcloud::config::V20220802::AddAlarmPolicyRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::AddAlarmPolicyResponse`
        def AddAlarmPolicy(request)
          body = send_request('AddAlarmPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddAlarmPolicyResponse.new
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

        # 新建合规包

        # @param request: Request instance for AddCompliancePack.
        # @type request: :class:`Tencentcloud::config::V20220802::AddCompliancePackRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::AddCompliancePackResponse`
        def AddCompliancePack(request)
          body = send_request('AddCompliancePack', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddCompliancePackResponse.new
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

        # 新建 规则

        # @param request: Request instance for AddConfigRule.
        # @type request: :class:`Tencentcloud::config::V20220802::AddConfigRuleRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::AddConfigRuleResponse`
        def AddConfigRule(request)
          body = send_request('AddConfigRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddConfigRuleResponse.new
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

        # 账号组关闭规则

        # @param request: Request instance for CloseAggregateConfigRule.
        # @type request: :class:`Tencentcloud::config::V20220802::CloseAggregateConfigRuleRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::CloseAggregateConfigRuleResponse`
        def CloseAggregateConfigRule(request)
          body = send_request('CloseAggregateConfigRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloseAggregateConfigRuleResponse.new
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

        # 资源监控管理-关闭监控

        # @param request: Request instance for CloseConfigRecorder.
        # @type request: :class:`Tencentcloud::config::V20220802::CloseConfigRecorderRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::CloseConfigRecorderResponse`
        def CloseConfigRecorder(request)
          body = send_request('CloseConfigRecorder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloseConfigRecorderResponse.new
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

        # 关闭规则

        # @param request: Request instance for CloseConfigRule.
        # @type request: :class:`Tencentcloud::config::V20220802::CloseConfigRuleRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::CloseConfigRuleResponse`
        def CloseConfigRule(request)
          body = send_request('CloseConfigRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloseConfigRuleResponse.new
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

        # 新建账号组

        # @param request: Request instance for CreateAggregator.
        # @type request: :class:`Tencentcloud::config::V20220802::CreateAggregatorRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::CreateAggregatorResponse`
        def CreateAggregator(request)
          body = send_request('CreateAggregator', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAggregatorResponse.new
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

        # 新增规则修正设置

        # @param request: Request instance for CreateRemediation.
        # @type request: :class:`Tencentcloud::config::V20220802::CreateRemediationRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::CreateRemediationResponse`
        def CreateRemediation(request)
          body = send_request('CreateRemediation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRemediationResponse.new
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

        # 账号组删除合规包

        # @param request: Request instance for DeleteAggregateCompliancePack.
        # @type request: :class:`Tencentcloud::config::V20220802::DeleteAggregateCompliancePackRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::DeleteAggregateCompliancePackResponse`
        def DeleteAggregateCompliancePack(request)
          body = send_request('DeleteAggregateCompliancePack', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAggregateCompliancePackResponse.new
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

        # 账号组删除规则

        # @param request: Request instance for DeleteAggregateConfigRule.
        # @type request: :class:`Tencentcloud::config::V20220802::DeleteAggregateConfigRuleRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::DeleteAggregateConfigRuleResponse`
        def DeleteAggregateConfigRule(request)
          body = send_request('DeleteAggregateConfigRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAggregateConfigRuleResponse.new
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

        # 删除告警规则

        # @param request: Request instance for DeleteAlarmPolicy.
        # @type request: :class:`Tencentcloud::config::V20220802::DeleteAlarmPolicyRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::DeleteAlarmPolicyResponse`
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

        # 删除合规包

        # @param request: Request instance for DeleteCompliancePack.
        # @type request: :class:`Tencentcloud::config::V20220802::DeleteCompliancePackRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::DeleteCompliancePackResponse`
        def DeleteCompliancePack(request)
          body = send_request('DeleteCompliancePack', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCompliancePackResponse.new
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

        # 删除规则

        # @param request: Request instance for DeleteConfigRule.
        # @type request: :class:`Tencentcloud::config::V20220802::DeleteConfigRuleRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::DeleteConfigRuleResponse`
        def DeleteConfigRule(request)
          body = send_request('DeleteConfigRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteConfigRuleResponse.new
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

        # 删除规则修正设置

        # @param request: Request instance for DeleteRemediations.
        # @type request: :class:`Tencentcloud::config::V20220802::DeleteRemediationsRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::DeleteRemediationsResponse`
        def DeleteRemediations(request)
          body = send_request('DeleteRemediations', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRemediationsResponse.new
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

        # 账号组合规包详情

        # @param request: Request instance for DescribeAggregateCompliancePack.
        # @type request: :class:`Tencentcloud::config::V20220802::DescribeAggregateCompliancePackRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::DescribeAggregateCompliancePackResponse`
        def DescribeAggregateCompliancePack(request)
          body = send_request('DescribeAggregateCompliancePack', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAggregateCompliancePackResponse.new
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

        # 账号组获取投递设置详情

        # @param request: Request instance for DescribeAggregateConfigDeliver.
        # @type request: :class:`Tencentcloud::config::V20220802::DescribeAggregateConfigDeliverRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::DescribeAggregateConfigDeliverResponse`
        def DescribeAggregateConfigDeliver(request)
          body = send_request('DescribeAggregateConfigDeliver', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAggregateConfigDeliverResponse.new
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

        # 账号组获取规则详情

        # @param request: Request instance for DescribeAggregateConfigRule.
        # @type request: :class:`Tencentcloud::config::V20220802::DescribeAggregateConfigRuleRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::DescribeAggregateConfigRuleResponse`
        def DescribeAggregateConfigRule(request)
          body = send_request('DescribeAggregateConfigRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAggregateConfigRuleResponse.new
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

        # 账号组资源详情

        # @param request: Request instance for DescribeAggregateDiscoveredResource.
        # @type request: :class:`Tencentcloud::config::V20220802::DescribeAggregateDiscoveredResourceRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::DescribeAggregateDiscoveredResourceResponse`
        def DescribeAggregateDiscoveredResource(request)
          body = send_request('DescribeAggregateDiscoveredResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAggregateDiscoveredResourceResponse.new
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

        # 账号组详情

        # @param request: Request instance for DescribeAggregator.
        # @type request: :class:`Tencentcloud::config::V20220802::DescribeAggregatorRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::DescribeAggregatorResponse`
        def DescribeAggregator(request)
          body = send_request('DescribeAggregator', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAggregatorResponse.new
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

        # 合规包详情

        # @param request: Request instance for DescribeCompliancePack.
        # @type request: :class:`Tencentcloud::config::V20220802::DescribeCompliancePackRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::DescribeCompliancePackResponse`
        def DescribeCompliancePack(request)
          body = send_request('DescribeCompliancePack', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCompliancePackResponse.new
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

        # 获取投递设置详情

        # @param request: Request instance for DescribeConfigDeliver.
        # @type request: :class:`Tencentcloud::config::V20220802::DescribeConfigDeliverRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::DescribeConfigDeliverResponse`
        def DescribeConfigDeliver(request)
          body = send_request('DescribeConfigDeliver', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigDeliverResponse.new
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

        # 获取监控详情

        # @param request: Request instance for DescribeConfigRecorder.
        # @type request: :class:`Tencentcloud::config::V20220802::DescribeConfigRecorderRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::DescribeConfigRecorderResponse`
        def DescribeConfigRecorder(request)
          body = send_request('DescribeConfigRecorder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigRecorderResponse.new
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

        # 获取规则详情

        # @param request: Request instance for DescribeConfigRule.
        # @type request: :class:`Tencentcloud::config::V20220802::DescribeConfigRuleRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::DescribeConfigRuleResponse`
        def DescribeConfigRule(request)
          body = send_request('DescribeConfigRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigRuleResponse.new
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

        # 资源详情

        # @param request: Request instance for DescribeDiscoveredResource.
        # @type request: :class:`Tencentcloud::config::V20220802::DescribeDiscoveredResourceRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::DescribeDiscoveredResourceResponse`
        def DescribeDiscoveredResource(request)
          body = send_request('DescribeDiscoveredResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDiscoveredResourceResponse.new
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

        # 获取系统合规包详情

        # @param request: Request instance for DescribeSystemCompliancePack.
        # @type request: :class:`Tencentcloud::config::V20220802::DescribeSystemCompliancePackRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::DescribeSystemCompliancePackResponse`
        def DescribeSystemCompliancePack(request)
          body = send_request('DescribeSystemCompliancePack', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSystemCompliancePackResponse.new
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

        # 预设规则详情

        # @param request: Request instance for DescribeSystemRule.
        # @type request: :class:`Tencentcloud::config::V20220802::DescribeSystemRuleRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::DescribeSystemRuleResponse`
        def DescribeSystemRule(request)
          body = send_request('DescribeSystemRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSystemRuleResponse.new
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

        # 账号组合规包移除规则

        # @param request: Request instance for DetachAggregateConfigRuleToCompliancePack.
        # @type request: :class:`Tencentcloud::config::V20220802::DetachAggregateConfigRuleToCompliancePackRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::DetachAggregateConfigRuleToCompliancePackResponse`
        def DetachAggregateConfigRuleToCompliancePack(request)
          body = send_request('DetachAggregateConfigRuleToCompliancePack', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetachAggregateConfigRuleToCompliancePackResponse.new
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

        # 合规包移除规则

        # @param request: Request instance for DetachConfigRuleToCompliancePack.
        # @type request: :class:`Tencentcloud::config::V20220802::DetachConfigRuleToCompliancePackRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::DetachConfigRuleToCompliancePackResponse`
        def DetachConfigRuleToCompliancePack(request)
          body = send_request('DetachConfigRuleToCompliancePack', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetachConfigRuleToCompliancePackResponse.new
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

        # 账号组获取合规包列表

        # @param request: Request instance for ListAggregateCompliancePacks.
        # @type request: :class:`Tencentcloud::config::V20220802::ListAggregateCompliancePacksRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::ListAggregateCompliancePacksResponse`
        def ListAggregateCompliancePacks(request)
          body = send_request('ListAggregateCompliancePacks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAggregateCompliancePacksResponse.new
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

        # 账号组获取评估结果--规则维度（某个规则下资源的评估结果列表）

        # @param request: Request instance for ListAggregateConfigRuleEvaluationResults.
        # @type request: :class:`Tencentcloud::config::V20220802::ListAggregateConfigRuleEvaluationResultsRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::ListAggregateConfigRuleEvaluationResultsResponse`
        def ListAggregateConfigRuleEvaluationResults(request)
          body = send_request('ListAggregateConfigRuleEvaluationResults', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAggregateConfigRuleEvaluationResultsResponse.new
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

        # 账号组获取规则列表

        # @param request: Request instance for ListAggregateConfigRules.
        # @type request: :class:`Tencentcloud::config::V20220802::ListAggregateConfigRulesRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::ListAggregateConfigRulesResponse`
        def ListAggregateConfigRules(request)
          body = send_request('ListAggregateConfigRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAggregateConfigRulesResponse.new
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

        # 账号组获取资源列表

        # @param request: Request instance for ListAggregateDiscoveredResources.
        # @type request: :class:`Tencentcloud::config::V20220802::ListAggregateDiscoveredResourcesRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::ListAggregateDiscoveredResourcesResponse`
        def ListAggregateDiscoveredResources(request)
          body = send_request('ListAggregateDiscoveredResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAggregateDiscoveredResourcesResponse.new
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

        # 账号组列表

        # @param request: Request instance for ListAggregators.
        # @type request: :class:`Tencentcloud::config::V20220802::ListAggregatorsRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::ListAggregatorsResponse`
        def ListAggregators(request)
          body = send_request('ListAggregators', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAggregatorsResponse.new
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

        # 告警规则列表

        # @param request: Request instance for ListAlarmPolicy.
        # @type request: :class:`Tencentcloud::config::V20220802::ListAlarmPolicyRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::ListAlarmPolicyResponse`
        def ListAlarmPolicy(request)
          body = send_request('ListAlarmPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAlarmPolicyResponse.new
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

        # 获取合规包列表

        # @param request: Request instance for ListCompliancePacks.
        # @type request: :class:`Tencentcloud::config::V20220802::ListCompliancePacksRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::ListCompliancePacksResponse`
        def ListCompliancePacks(request)
          body = send_request('ListCompliancePacks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListCompliancePacksResponse.new
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

        #  获取评估结果--规则维度（某个规则下资源的评估结果列表）

        # @param request: Request instance for ListConfigRuleEvaluationResults.
        # @type request: :class:`Tencentcloud::config::V20220802::ListConfigRuleEvaluationResultsRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::ListConfigRuleEvaluationResultsResponse`
        def ListConfigRuleEvaluationResults(request)
          body = send_request('ListConfigRuleEvaluationResults', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListConfigRuleEvaluationResultsResponse.new
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

        # 获取规则列表

        # @param request: Request instance for ListConfigRules.
        # @type request: :class:`Tencentcloud::config::V20220802::ListConfigRulesRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::ListConfigRulesResponse`
        def ListConfigRules(request)
          body = send_request('ListConfigRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListConfigRulesResponse.new
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

        # 获取资源列表

        # @param request: Request instance for ListDiscoveredResources.
        # @type request: :class:`Tencentcloud::config::V20220802::ListDiscoveredResourcesRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::ListDiscoveredResourcesResponse`
        def ListDiscoveredResources(request)
          body = send_request('ListDiscoveredResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListDiscoveredResourcesResponse.new
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

        # 修正记录

        # @param request: Request instance for ListRemediationExecutions.
        # @type request: :class:`Tencentcloud::config::V20220802::ListRemediationExecutionsRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::ListRemediationExecutionsResponse`
        def ListRemediationExecutions(request)
          body = send_request('ListRemediationExecutions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListRemediationExecutionsResponse.new
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

        # 修正设置列表

        # @param request: Request instance for ListRemediations.
        # @type request: :class:`Tencentcloud::config::V20220802::ListRemediationsRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::ListRemediationsResponse`
        def ListRemediations(request)
          body = send_request('ListRemediations', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListRemediationsResponse.new
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

        # 获取资源类型列表

        # @param request: Request instance for ListResourceTypes.
        # @type request: :class:`Tencentcloud::config::V20220802::ListResourceTypesRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::ListResourceTypesResponse`
        def ListResourceTypes(request)
          body = send_request('ListResourceTypes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListResourceTypesResponse.new
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

        # 获取系统合规包列表

        # @param request: Request instance for ListSystemCompliancePacks.
        # @type request: :class:`Tencentcloud::config::V20220802::ListSystemCompliancePacksRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::ListSystemCompliancePacksResponse`
        def ListSystemCompliancePacks(request)
          body = send_request('ListSystemCompliancePacks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListSystemCompliancePacksResponse.new
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

        # 获取预设规则列表

        # @param request: Request instance for ListSystemRules.
        # @type request: :class:`Tencentcloud::config::V20220802::ListSystemRulesRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::ListSystemRulesResponse`
        def ListSystemRules(request)
          body = send_request('ListSystemRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListSystemRulesResponse.new
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

        # 账号组开启规则

        # @param request: Request instance for OpenAggregateConfigRule.
        # @type request: :class:`Tencentcloud::config::V20220802::OpenAggregateConfigRuleRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::OpenAggregateConfigRuleResponse`
        def OpenAggregateConfigRule(request)
          body = send_request('OpenAggregateConfigRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenAggregateConfigRuleResponse.new
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

        # 资源监控管理-开启监控

        # @param request: Request instance for OpenConfigRecorder.
        # @type request: :class:`Tencentcloud::config::V20220802::OpenConfigRecorderRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::OpenConfigRecorderResponse`
        def OpenConfigRecorder(request)
          body = send_request('OpenConfigRecorder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenConfigRecorderResponse.new
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

        # 开启规则

        # @param request: Request instance for OpenConfigRule.
        # @type request: :class:`Tencentcloud::config::V20220802::OpenConfigRuleRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::OpenConfigRuleResponse`
        def OpenConfigRule(request)
          body = send_request('OpenConfigRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenConfigRuleResponse.new
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

        # 上报自定义规则评估结果

        # @param request: Request instance for PutEvaluations.
        # @type request: :class:`Tencentcloud::config::V20220802::PutEvaluationsRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::PutEvaluationsResponse`
        def PutEvaluations(request)
          body = send_request('PutEvaluations', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PutEvaluationsResponse.new
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

        # 账号组触发评估

        # @param request: Request instance for StartAggregateConfigRuleEvaluation.
        # @type request: :class:`Tencentcloud::config::V20220802::StartAggregateConfigRuleEvaluationRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::StartAggregateConfigRuleEvaluationResponse`
        def StartAggregateConfigRuleEvaluation(request)
          body = send_request('StartAggregateConfigRuleEvaluation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartAggregateConfigRuleEvaluationResponse.new
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

        # 触发评估

        # @param request: Request instance for StartConfigRuleEvaluation.
        # @type request: :class:`Tencentcloud::config::V20220802::StartConfigRuleEvaluationRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::StartConfigRuleEvaluationResponse`
        def StartConfigRuleEvaluation(request)
          body = send_request('StartConfigRuleEvaluation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartConfigRuleEvaluationResponse.new
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

        # 手动执行规则修复

        # @param request: Request instance for StartRemediation.
        # @type request: :class:`Tencentcloud::config::V20220802::StartRemediationRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::StartRemediationResponse`
        def StartRemediation(request)
          body = send_request('StartRemediation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartRemediationResponse.new
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

        # 账号组编辑合规包

        # @param request: Request instance for UpdateAggregateCompliancePack.
        # @type request: :class:`Tencentcloud::config::V20220802::UpdateAggregateCompliancePackRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::UpdateAggregateCompliancePackResponse`
        def UpdateAggregateCompliancePack(request)
          body = send_request('UpdateAggregateCompliancePack', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateAggregateCompliancePackResponse.new
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

        # 账号组开启、关闭合规包

        # @param request: Request instance for UpdateAggregateCompliancePackStatus.
        # @type request: :class:`Tencentcloud::config::V20220802::UpdateAggregateCompliancePackStatusRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::UpdateAggregateCompliancePackStatusResponse`
        def UpdateAggregateCompliancePackStatus(request)
          body = send_request('UpdateAggregateCompliancePackStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateAggregateCompliancePackStatusResponse.new
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

        # 账号组编辑投递设置

        # @param request: Request instance for UpdateAggregateConfigDeliver.
        # @type request: :class:`Tencentcloud::config::V20220802::UpdateAggregateConfigDeliverRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::UpdateAggregateConfigDeliverResponse`
        def UpdateAggregateConfigDeliver(request)
          body = send_request('UpdateAggregateConfigDeliver', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateAggregateConfigDeliverResponse.new
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

        # 账号组编辑规则

        # @param request: Request instance for UpdateAggregateConfigRule.
        # @type request: :class:`Tencentcloud::config::V20220802::UpdateAggregateConfigRuleRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::UpdateAggregateConfigRuleResponse`
        def UpdateAggregateConfigRule(request)
          body = send_request('UpdateAggregateConfigRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateAggregateConfigRuleResponse.new
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

        # 更新告警规则

        # @param request: Request instance for UpdateAlarmPolicy.
        # @type request: :class:`Tencentcloud::config::V20220802::UpdateAlarmPolicyRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::UpdateAlarmPolicyResponse`
        def UpdateAlarmPolicy(request)
          body = send_request('UpdateAlarmPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateAlarmPolicyResponse.new
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

        # 编辑合规包

        # @param request: Request instance for UpdateCompliancePack.
        # @type request: :class:`Tencentcloud::config::V20220802::UpdateCompliancePackRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::UpdateCompliancePackResponse`
        def UpdateCompliancePack(request)
          body = send_request('UpdateCompliancePack', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCompliancePackResponse.new
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

        # 开启、关闭合规包

        # @param request: Request instance for UpdateCompliancePackStatus.
        # @type request: :class:`Tencentcloud::config::V20220802::UpdateCompliancePackStatusRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::UpdateCompliancePackStatusResponse`
        def UpdateCompliancePackStatus(request)
          body = send_request('UpdateCompliancePackStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCompliancePackStatusResponse.new
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

        # 编辑投递设置

        # @param request: Request instance for UpdateConfigDeliver.
        # @type request: :class:`Tencentcloud::config::V20220802::UpdateConfigDeliverRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::UpdateConfigDeliverResponse`
        def UpdateConfigDeliver(request)
          body = send_request('UpdateConfigDeliver', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateConfigDeliverResponse.new
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

        # 编辑监控范围

        # @param request: Request instance for UpdateConfigRecorder.
        # @type request: :class:`Tencentcloud::config::V20220802::UpdateConfigRecorderRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::UpdateConfigRecorderResponse`
        def UpdateConfigRecorder(request)
          body = send_request('UpdateConfigRecorder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateConfigRecorderResponse.new
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

        # 编辑规则

        # @param request: Request instance for UpdateConfigRule.
        # @type request: :class:`Tencentcloud::config::V20220802::UpdateConfigRuleRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::UpdateConfigRuleResponse`
        def UpdateConfigRule(request)
          body = send_request('UpdateConfigRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateConfigRuleResponse.new
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

        # 新增告警监控规则

        # @param request: Request instance for UpdateRemediation.
        # @type request: :class:`Tencentcloud::config::V20220802::UpdateRemediationRequest`
        # @rtype: :class:`Tencentcloud::config::V20220802::UpdateRemediationResponse`
        def UpdateRemediation(request)
          body = send_request('UpdateRemediation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateRemediationResponse.new
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