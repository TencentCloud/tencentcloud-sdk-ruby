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
  module Dayu
    module V20180709
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-07-09'
            api_endpoint = 'dayu.tencentcloudapi.com'
            sdk_version = 'DAYU_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 设置基础防护的DDoS告警阈值，只支持基础防护产品

        # @param request: Request instance for CreateBasicDDoSAlarmThreshold.
        # @type request: :class:`Tencentcloud::dayu::V20180709::CreateBasicDDoSAlarmThresholdRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::CreateBasicDDoSAlarmThresholdResponse`
        def CreateBasicDDoSAlarmThreshold(request)
          body = send_request('CreateBasicDDoSAlarmThreshold', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBasicDDoSAlarmThresholdResponse.new
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

        # 绑定IP到高防包实例，支持独享包、共享包；需要注意的是此接口绑定或解绑IP是异步接口，当处于绑定或解绑中时，则不允许再进行绑定或解绑，需要等待当前绑定或解绑完成。

        # @param request: Request instance for CreateBoundIP.
        # @type request: :class:`Tencentcloud::dayu::V20180709::CreateBoundIPRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::CreateBoundIPResponse`
        def CreateBoundIP(request)
          body = send_request('CreateBoundIP', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBoundIPResponse.new
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

        # 添加CC防护的访问频率控制规则

        # @param request: Request instance for CreateCCFrequencyRules.
        # @type request: :class:`Tencentcloud::dayu::V20180709::CreateCCFrequencyRulesRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::CreateCCFrequencyRulesResponse`
        def CreateCCFrequencyRules(request)
          body = send_request('CreateCCFrequencyRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCCFrequencyRulesResponse.new
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

        # 创建CC自定义策略

        # @param request: Request instance for CreateCCSelfDefinePolicy.
        # @type request: :class:`Tencentcloud::dayu::V20180709::CreateCCSelfDefinePolicyRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::CreateCCSelfDefinePolicyResponse`
        def CreateCCSelfDefinePolicy(request)
          body = send_request('CreateCCSelfDefinePolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCCSelfDefinePolicyResponse.new
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

        # 添加DDoS高级策略

        # @param request: Request instance for CreateDDoSPolicy.
        # @type request: :class:`Tencentcloud::dayu::V20180709::CreateDDoSPolicyRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::CreateDDoSPolicyResponse`
        def CreateDDoSPolicy(request)
          body = send_request('CreateDDoSPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDDoSPolicyResponse.new
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

        # 添加策略场景

        # @param request: Request instance for CreateDDoSPolicyCase.
        # @type request: :class:`Tencentcloud::dayu::V20180709::CreateDDoSPolicyCaseRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::CreateDDoSPolicyCaseResponse`
        def CreateDDoSPolicyCase(request)
          body = send_request('CreateDDoSPolicyCase', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDDoSPolicyCaseResponse.new
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

        # 资源实例重命名，支持独享包、共享包、高防IP、高防IP专业版；

        # @param request: Request instance for CreateInstanceName.
        # @type request: :class:`Tencentcloud::dayu::V20180709::CreateInstanceNameRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::CreateInstanceNameResponse`
        def CreateInstanceName(request)
          body = send_request('CreateInstanceName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateInstanceNameResponse.new
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

        # 上传四层健康检查配置

        # @param request: Request instance for CreateL4HealthConfig.
        # @type request: :class:`Tencentcloud::dayu::V20180709::CreateL4HealthConfigRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::CreateL4HealthConfigResponse`
        def CreateL4HealthConfig(request)
          body = send_request('CreateL4HealthConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateL4HealthConfigResponse.new
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

        # 添加L4转发规则

        # @param request: Request instance for CreateL4Rules.
        # @type request: :class:`Tencentcloud::dayu::V20180709::CreateL4RulesRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::CreateL4RulesResponse`
        def CreateL4Rules(request)
          body = send_request('CreateL4Rules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateL4RulesResponse.new
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

        # 此接口是7层CC的访问频控自定义规则（IP+Host维度，不支持具体的URI），此接口已弃用，请调用新接口CreateCCFrequencyRules，新接口同时支持IP+Host维度以及具体的URI；

        # @param request: Request instance for CreateL7CCRule.
        # @type request: :class:`Tencentcloud::dayu::V20180709::CreateL7CCRuleRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::CreateL7CCRuleResponse`
        def CreateL7CCRule(request)
          body = send_request('CreateL7CCRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateL7CCRuleResponse.new
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

        # 上传七层健康检查配置

        # @param request: Request instance for CreateL7HealthConfig.
        # @type request: :class:`Tencentcloud::dayu::V20180709::CreateL7HealthConfigRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::CreateL7HealthConfigResponse`
        def CreateL7HealthConfig(request)
          body = send_request('CreateL7HealthConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateL7HealthConfigResponse.new
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

        # 配置7层转发规则的证书

        # @param request: Request instance for CreateL7RuleCert.
        # @type request: :class:`Tencentcloud::dayu::V20180709::CreateL7RuleCertRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::CreateL7RuleCertResponse`
        def CreateL7RuleCert(request)
          body = send_request('CreateL7RuleCert', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateL7RuleCertResponse.new
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

        # 添加7层(网站)转发规则

        # @param request: Request instance for CreateL7Rules.
        # @type request: :class:`Tencentcloud::dayu::V20180709::CreateL7RulesRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::CreateL7RulesResponse`
        def CreateL7Rules(request)
          body = send_request('CreateL7Rules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateL7RulesResponse.new
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

        # 批量上传7层转发规则

        # @param request: Request instance for CreateL7RulesUpload.
        # @type request: :class:`Tencentcloud::dayu::V20180709::CreateL7RulesUploadRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::CreateL7RulesUploadResponse`
        def CreateL7RulesUpload(request)
          body = send_request('CreateL7RulesUpload', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateL7RulesUploadResponse.new
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

        # 高防IP专业版一键切回源站

        # @param request: Request instance for CreateNetReturn.
        # @type request: :class:`Tencentcloud::dayu::V20180709::CreateNetReturnRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::CreateNetReturnResponse`
        def CreateNetReturn(request)
          body = send_request('CreateNetReturn', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNetReturnResponse.new
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

        # 添加L4转发规则

        # @param request: Request instance for CreateNewL4Rules.
        # @type request: :class:`Tencentcloud::dayu::V20180709::CreateNewL4RulesRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::CreateNewL4RulesResponse`
        def CreateNewL4Rules(request)
          body = send_request('CreateNewL4Rules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNewL4RulesResponse.new
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

        # 添加7层转发规则

        # @param request: Request instance for CreateNewL7Rules.
        # @type request: :class:`Tencentcloud::dayu::V20180709::CreateNewL7RulesRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::CreateNewL7RulesResponse`
        def CreateNewL7Rules(request)
          body = send_request('CreateNewL7Rules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNewL7RulesResponse.new
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

        # 批量上传7层转发规则

        # @param request: Request instance for CreateNewL7RulesUpload.
        # @type request: :class:`Tencentcloud::dayu::V20180709::CreateNewL7RulesUploadRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::CreateNewL7RulesUploadResponse`
        def CreateNewL7RulesUpload(request)
          body = send_request('CreateNewL7RulesUpload', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNewL7RulesUploadResponse.new
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

        # IP解封操作

        # @param request: Request instance for CreateUnblockIp.
        # @type request: :class:`Tencentcloud::dayu::V20180709::CreateUnblockIpRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::CreateUnblockIpResponse`
        def CreateUnblockIp(request)
          body = send_request('CreateUnblockIp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUnblockIpResponse.new
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

        # 删除CC防护的访问频率控制规则

        # @param request: Request instance for DeleteCCFrequencyRules.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DeleteCCFrequencyRulesRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DeleteCCFrequencyRulesResponse`
        def DeleteCCFrequencyRules(request)
          body = send_request('DeleteCCFrequencyRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCCFrequencyRulesResponse.new
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

        # 删除CC自定义策略

        # @param request: Request instance for DeleteCCSelfDefinePolicy.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DeleteCCSelfDefinePolicyRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DeleteCCSelfDefinePolicyResponse`
        def DeleteCCSelfDefinePolicy(request)
          body = send_request('DeleteCCSelfDefinePolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCCSelfDefinePolicyResponse.new
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

        # 删除DDoS高级策略

        # @param request: Request instance for DeleteDDoSPolicy.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DeleteDDoSPolicyRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DeleteDDoSPolicyResponse`
        def DeleteDDoSPolicy(request)
          body = send_request('DeleteDDoSPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDDoSPolicyResponse.new
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

        # 删除策略场景

        # @param request: Request instance for DeleteDDoSPolicyCase.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DeleteDDoSPolicyCaseRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DeleteDDoSPolicyCaseResponse`
        def DeleteDDoSPolicyCase(request)
          body = send_request('DeleteDDoSPolicyCase', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDDoSPolicyCaseResponse.new
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

        # 删除四层转发规则

        # @param request: Request instance for DeleteL4Rules.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DeleteL4RulesRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DeleteL4RulesResponse`
        def DeleteL4Rules(request)
          body = send_request('DeleteL4Rules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteL4RulesResponse.new
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

        # 删除七层转发规则

        # @param request: Request instance for DeleteL7Rules.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DeleteL7RulesRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DeleteL7RulesResponse`
        def DeleteL7Rules(request)
          body = send_request('DeleteL7Rules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteL7RulesResponse.new
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

        # 删除L4转发规则

        # @param request: Request instance for DeleteNewL4Rules.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DeleteNewL4RulesRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DeleteNewL4RulesResponse`
        def DeleteNewL4Rules(request)
          body = send_request('DeleteNewL4Rules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNewL4RulesResponse.new
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

        # 删除L7转发规则

        # @param request: Request instance for DeleteNewL7Rules.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DeleteNewL7RulesRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DeleteNewL7RulesResponse`
        def DeleteNewL7Rules(request)
          body = send_request('DeleteNewL7Rules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNewL7RulesResponse.new
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

        # 获取操作日志

        # @param request: Request instance for DescribeActionLog.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeActionLogRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeActionLogResponse`
        def DescribeActionLog(request)
          body = send_request('DescribeActionLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeActionLogResponse.new
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

        # 获取高防IP可添加的最多7层规则数量

        # @param request: Request instance for DescribeBGPIPL7RuleMaxCnt.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeBGPIPL7RuleMaxCntRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeBGPIPL7RuleMaxCntResponse`
        def DescribeBGPIPL7RuleMaxCnt(request)
          body = send_request('DescribeBGPIPL7RuleMaxCnt', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBGPIPL7RuleMaxCntResponse.new
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

        # 为大禹子产品提供业务转发指标数据的接口

        # @param request: Request instance for DescribeBaradData.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeBaradDataRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeBaradDataResponse`
        def DescribeBaradData(request)
          body = send_request('DescribeBaradData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaradDataResponse.new
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

        # 获取基础防护CC防护阈值

        # @param request: Request instance for DescribeBasicCCThreshold.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeBasicCCThresholdRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeBasicCCThresholdResponse`
        def DescribeBasicCCThreshold(request)
          body = send_request('DescribeBasicCCThreshold', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBasicCCThresholdResponse.new
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

        # 获取基础防护黑洞阈值

        # @param request: Request instance for DescribeBasicDeviceThreshold.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeBasicDeviceThresholdRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeBasicDeviceThresholdResponse`
        def DescribeBasicDeviceThreshold(request)
          body = send_request('DescribeBasicDeviceThreshold', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBasicDeviceThresholdResponse.new
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

        # 获取业务流量状态码统计

        # @param request: Request instance for DescribeBizHttpStatus.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeBizHttpStatusRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeBizHttpStatusResponse`
        def DescribeBizHttpStatus(request)
          body = send_request('DescribeBizHttpStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBizHttpStatusResponse.new
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

        # 获取业务流量曲线

        # @param request: Request instance for DescribeBizTrend.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeBizTrendRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeBizTrendResponse`
        def DescribeBizTrend(request)
          body = send_request('DescribeBizTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBizTrendResponse.new
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

        # 获取高防包、高防IP、高防IP专业版、棋牌盾产品设置CC攻击的告警通知阈值

        # @param request: Request instance for DescribeCCAlarmThreshold.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeCCAlarmThresholdRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeCCAlarmThresholdResponse`
        def DescribeCCAlarmThreshold(request)
          body = send_request('DescribeCCAlarmThreshold', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCCAlarmThresholdResponse.new
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

        # 获取CC攻击事件列表

        # @param request: Request instance for DescribeCCEvList.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeCCEvListRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeCCEvListResponse`
        def DescribeCCEvList(request)
          body = send_request('DescribeCCEvList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCCEvListResponse.new
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

        # 获取CC防护的访问频率控制规则

        # @param request: Request instance for DescribeCCFrequencyRules.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeCCFrequencyRulesRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeCCFrequencyRulesResponse`
        def DescribeCCFrequencyRules(request)
          body = send_request('DescribeCCFrequencyRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCCFrequencyRulesResponse.new
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

        # 获取CC的IP黑白名单

        # @param request: Request instance for DescribeCCIpAllowDeny.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeCCIpAllowDenyRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeCCIpAllowDenyResponse`
        def DescribeCCIpAllowDeny(request)
          body = send_request('DescribeCCIpAllowDeny', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCCIpAllowDenyResponse.new
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

        # 获取CC自定义策略

        # @param request: Request instance for DescribeCCSelfDefinePolicy.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeCCSelfDefinePolicyRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeCCSelfDefinePolicyResponse`
        def DescribeCCSelfDefinePolicy(request)
          body = send_request('DescribeCCSelfDefinePolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCCSelfDefinePolicyResponse.new
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

        # 获取CC攻击指标数据，包括总请求峰值(QPS)和攻击请求(QPS)

        # @param request: Request instance for DescribeCCTrend.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeCCTrendRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeCCTrendResponse`
        def DescribeCCTrend(request)
          body = send_request('DescribeCCTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCCTrendResponse.new
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

        # 获取CC的Url白名单

        # @param request: Request instance for DescribeCCUrlAllow.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeCCUrlAllowRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeCCUrlAllowResponse`
        def DescribeCCUrlAllow(request)
          body = send_request('DescribeCCUrlAllow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCCUrlAllowResponse.new
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

        # 获取高防包、高防IP、高防IP专业版、棋牌盾产品设置DDoS攻击的告警通知阈值

        # @param request: Request instance for DescribeDDoSAlarmThreshold.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSAlarmThresholdRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSAlarmThresholdResponse`
        def DescribeDDoSAlarmThreshold(request)
          body = send_request('DescribeDDoSAlarmThreshold', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSAlarmThresholdResponse.new
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

        # 获取DDoS攻击源IP地域分布图，支持全球攻击分布和国内省份攻击分布；

        # @param request: Request instance for DescribeDDoSAttackIPRegionMap.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSAttackIPRegionMapRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSAttackIPRegionMapResponse`
        def DescribeDDoSAttackIPRegionMap(request)
          body = send_request('DescribeDDoSAttackIPRegionMap', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSAttackIPRegionMapResponse.new
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

        # 获取DDoS攻击源列表

        # @param request: Request instance for DescribeDDoSAttackSource.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSAttackSourceRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSAttackSourceResponse`
        def DescribeDDoSAttackSource(request)
          body = send_request('DescribeDDoSAttackSource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSAttackSourceResponse.new
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

        # 获取DDoS攻击占比分析

        # @param request: Request instance for DescribeDDoSCount.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSCountRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSCountResponse`
        def DescribeDDoSCount(request)
          body = send_request('DescribeDDoSCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSCountResponse.new
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

        # 获取DDoS防护状态（临时关闭状态），支持产品：基础防护，独享包，共享包，高防IP，高防IP专业版；调用此接口是获取当前是否有设置临时关闭DDoS防护状态，如果有设置会返回临时关闭的时长等参数。

        # @param request: Request instance for DescribeDDoSDefendStatus.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSDefendStatusRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSDefendStatusResponse`
        def DescribeDDoSDefendStatus(request)
          body = send_request('DescribeDDoSDefendStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSDefendStatusResponse.new
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

        # 获取DDoS攻击事件详情

        # @param request: Request instance for DescribeDDoSEvInfo.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSEvInfoRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSEvInfoResponse`
        def DescribeDDoSEvInfo(request)
          body = send_request('DescribeDDoSEvInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSEvInfoResponse.new
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

        # 获取DDoS攻击事件列表

        # @param request: Request instance for DescribeDDoSEvList.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSEvListRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSEvListResponse`
        def DescribeDDoSEvList(request)
          body = send_request('DescribeDDoSEvList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSEvListResponse.new
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

        # 获取DDoSIP攻击日志

        # @param request: Request instance for DescribeDDoSIpLog.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSIpLogRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSIpLogResponse`
        def DescribeDDoSIpLog(request)
          body = send_request('DescribeDDoSIpLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSIpLogResponse.new
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

        # 获取高防IP专业版资源的DDoS攻击占比分析

        # @param request: Request instance for DescribeDDoSNetCount.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSNetCountRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSNetCountResponse`
        def DescribeDDoSNetCount(request)
          body = send_request('DescribeDDoSNetCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSNetCountResponse.new
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

        # 获取高防IP专业版资源的DDoS攻击事件详情

        # @param request: Request instance for DescribeDDoSNetEvInfo.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSNetEvInfoRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSNetEvInfoResponse`
        def DescribeDDoSNetEvInfo(request)
          body = send_request('DescribeDDoSNetEvInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSNetEvInfoResponse.new
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

        # 获取高防IP专业版资源的DDoS攻击事件列表

        # @param request: Request instance for DescribeDDoSNetEvList.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSNetEvListRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSNetEvListResponse`
        def DescribeDDoSNetEvList(request)
          body = send_request('DescribeDDoSNetEvList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSNetEvListResponse.new
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

        # 获取高防IP专业版资源的DDoSIP攻击日志

        # @param request: Request instance for DescribeDDoSNetIpLog.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSNetIpLogRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSNetIpLogResponse`
        def DescribeDDoSNetIpLog(request)
          body = send_request('DescribeDDoSNetIpLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSNetIpLogResponse.new
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

        # 获取高防IP专业版资源的DDoS攻击指标数据

        # @param request: Request instance for DescribeDDoSNetTrend.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSNetTrendRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSNetTrendResponse`
        def DescribeDDoSNetTrend(request)
          body = send_request('DescribeDDoSNetTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSNetTrendResponse.new
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

        # 获取DDoS高级策略

        # @param request: Request instance for DescribeDDoSPolicy.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSPolicyRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSPolicyResponse`
        def DescribeDDoSPolicy(request)
          body = send_request('DescribeDDoSPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSPolicyResponse.new
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

        # 获取DDoS攻击流量带宽和攻击包速率数据

        # @param request: Request instance for DescribeDDoSTrend.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSTrendRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSTrendResponse`
        def DescribeDDoSTrend(request)
          body = send_request('DescribeDDoSTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSTrendResponse.new
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

        # 统计用户的高防资源的使用天数和DDoS攻击防护次数

        # @param request: Request instance for DescribeDDoSUsedStatis.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSUsedStatisRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeDDoSUsedStatisResponse`
        def DescribeDDoSUsedStatis(request)
          body = send_request('DescribeDDoSUsedStatis', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSUsedStatisResponse.new
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

        # 获取独享包或共享包IP对应的云资产信息，只支持独享包和共享包的IP

        # @param request: Request instance for DescribeIPProductInfo.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeIPProductInfoRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeIPProductInfoResponse`
        def DescribeIPProductInfo(request)
          body = send_request('DescribeIPProductInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIPProductInfoResponse.new
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

        # 获取保险包套餐列表

        # @param request: Request instance for DescribeInsurePacks.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeInsurePacksRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeInsurePacksResponse`
        def DescribeInsurePacks(request)
          body = send_request('DescribeInsurePacks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInsurePacksResponse.new
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

        # 获取IP封堵列表

        # @param request: Request instance for DescribeIpBlockList.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeIpBlockListRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeIpBlockListResponse`
        def DescribeIpBlockList(request)
          body = send_request('DescribeIpBlockList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIpBlockListResponse.new
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

        # 获取IP解封记录

        # @param request: Request instance for DescribeIpUnBlockList.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeIpUnBlockListRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeIpUnBlockListResponse`
        def DescribeIpUnBlockList(request)
          body = send_request('DescribeIpUnBlockList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIpUnBlockListResponse.new
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

        # 导出四层健康检查配置

        # @param request: Request instance for DescribeL4HealthConfig.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeL4HealthConfigRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeL4HealthConfigResponse`
        def DescribeL4HealthConfig(request)
          body = send_request('DescribeL4HealthConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeL4HealthConfigResponse.new
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

        # 获取L4转发规则健康检查异常结果

        # @param request: Request instance for DescribeL4RulesErrHealth.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeL4RulesErrHealthRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeL4RulesErrHealthResponse`
        def DescribeL4RulesErrHealth(request)
          body = send_request('DescribeL4RulesErrHealth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeL4RulesErrHealthResponse.new
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

        # 导出七层健康检查配置

        # @param request: Request instance for DescribeL7HealthConfig.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeL7HealthConfigRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeL7HealthConfigResponse`
        def DescribeL7HealthConfig(request)
          body = send_request('DescribeL7HealthConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeL7HealthConfigResponse.new
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

        # 获取L4转发规则

        # @param request: Request instance for DescribeNewL4Rules.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeNewL4RulesRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeNewL4RulesResponse`
        def DescribeNewL4Rules(request)
          body = send_request('DescribeNewL4Rules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNewL4RulesResponse.new
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

        # 获取L4转发规则健康检查异常结果

        # @param request: Request instance for DescribeNewL4RulesErrHealth.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeNewL4RulesErrHealthRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeNewL4RulesErrHealthResponse`
        def DescribeNewL4RulesErrHealth(request)
          body = send_request('DescribeNewL4RulesErrHealth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNewL4RulesErrHealthResponse.new
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

        # 获取L7转发规则健康检查异常结果

        # @param request: Request instance for DescribeNewL7RulesErrHealth.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeNewL7RulesErrHealthRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeNewL7RulesErrHealthResponse`
        def DescribeNewL7RulesErrHealth(request)
          body = send_request('DescribeNewL7RulesErrHealth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNewL7RulesErrHealthResponse.new
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

        # 获取产品总览统计，支持高防包、高防IP、高防IP专业版；

        # @param request: Request instance for DescribePackIndex.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribePackIndexRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribePackIndexResponse`
        def DescribePackIndex(request)
          body = send_request('DescribePackIndex', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePackIndexResponse.new
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

        # 下载攻击事件的pcap包

        # @param request: Request instance for DescribePcap.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribePcapRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribePcapResponse`
        def DescribePcap(request)
          body = send_request('DescribePcap', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePcapResponse.new
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

        # 获取策略场景

        # @param request: Request instance for DescribePolicyCase.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribePolicyCaseRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribePolicyCaseResponse`
        def DescribePolicyCase(request)
          body = send_request('DescribePolicyCase', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePolicyCaseResponse.new
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

        # 获取资源的IP列表

        # @param request: Request instance for DescribeResIpList.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeResIpListRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeResIpListResponse`
        def DescribeResIpList(request)
          body = send_request('DescribeResIpList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResIpListResponse.new
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

        # @param request: Request instance for DescribeResourceList.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeResourceListRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeResourceListResponse`
        def DescribeResourceList(request)
          body = send_request('DescribeResourceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourceListResponse.new
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

        # 获取资源的规则数

        # @param request: Request instance for DescribeRuleSets.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeRuleSetsRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeRuleSetsResponse`
        def DescribeRuleSets(request)
          body = send_request('DescribeRuleSets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRuleSetsResponse.new
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

        # 获取调度域名列表

        # @param request: Request instance for DescribeSchedulingDomainList.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeSchedulingDomainListRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeSchedulingDomainListResponse`
        def DescribeSchedulingDomainList(request)
          body = send_request('DescribeSchedulingDomainList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSchedulingDomainListResponse.new
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

        # 获取本月安全统计

        # @param request: Request instance for DescribeSecIndex.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeSecIndexRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeSecIndexResponse`
        def DescribeSecIndex(request)
          body = send_request('DescribeSecIndex', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecIndexResponse.new
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

        # 获取回源IP段，支持的产品：高防IP，高防IP专业版；

        # @param request: Request instance for DescribeSourceIpSegment.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeSourceIpSegmentRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeSourceIpSegmentResponse`
        def DescribeSourceIpSegment(request)
          body = send_request('DescribeSourceIpSegment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSourceIpSegmentResponse.new
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

        # 获取业务转发统计数据，支持转发流量和转发包速率

        # @param request: Request instance for DescribeTransmitStatis.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeTransmitStatisRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeTransmitStatisResponse`
        def DescribeTransmitStatis(request)
          body = send_request('DescribeTransmitStatis', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTransmitStatisResponse.new
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

        # 获取黑洞解封次数

        # @param request: Request instance for DescribeUnBlockStatis.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribeUnBlockStatisRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribeUnBlockStatisResponse`
        def DescribeUnBlockStatis(request)
          body = send_request('DescribeUnBlockStatis', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUnBlockStatisResponse.new
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

        # 获取四层转发规则

        # @param request: Request instance for DescribleL4Rules.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribleL4RulesRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribleL4RulesResponse`
        def DescribleL4Rules(request)
          body = send_request('DescribleL4Rules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribleL4RulesResponse.new
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

        # 获取七层转发规则

        # @param request: Request instance for DescribleL7Rules.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribleL7RulesRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribleL7RulesResponse`
        def DescribleL7Rules(request)
          body = send_request('DescribleL7Rules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribleL7RulesResponse.new
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

        # 获取7层规则

        # @param request: Request instance for DescribleNewL7Rules.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribleNewL7RulesRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribleNewL7RulesResponse`
        def DescribleNewL7Rules(request)
          body = send_request('DescribleNewL7Rules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribleNewL7RulesResponse.new
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

        # 获取地域的资源实例数

        # @param request: Request instance for DescribleRegionCount.
        # @type request: :class:`Tencentcloud::dayu::V20180709::DescribleRegionCountRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::DescribleRegionCountResponse`
        def DescribleRegionCount(request)
          body = send_request('DescribleRegionCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribleRegionCountResponse.new
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

        # 为高防包、高防IP、高防IP专业版、棋牌盾产品设置CC攻击的告警通知阈值

        # @param request: Request instance for ModifyCCAlarmThreshold.
        # @type request: :class:`Tencentcloud::dayu::V20180709::ModifyCCAlarmThresholdRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::ModifyCCAlarmThresholdResponse`
        def ModifyCCAlarmThreshold(request)
          body = send_request('ModifyCCAlarmThreshold', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCCAlarmThresholdResponse.new
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

        # 修改CC防护的访问频率控制规则

        # @param request: Request instance for ModifyCCFrequencyRules.
        # @type request: :class:`Tencentcloud::dayu::V20180709::ModifyCCFrequencyRulesRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::ModifyCCFrequencyRulesResponse`
        def ModifyCCFrequencyRules(request)
          body = send_request('ModifyCCFrequencyRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCCFrequencyRulesResponse.new
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

        # 开启或关闭CC防护的访问频率控制规则

        # @param request: Request instance for ModifyCCFrequencyRulesStatus.
        # @type request: :class:`Tencentcloud::dayu::V20180709::ModifyCCFrequencyRulesStatusRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::ModifyCCFrequencyRulesStatusResponse`
        def ModifyCCFrequencyRulesStatus(request)
          body = send_request('ModifyCCFrequencyRulesStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCCFrequencyRulesStatusResponse.new
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

        # 开启或关闭CC域名防护

        # @param request: Request instance for ModifyCCHostProtection.
        # @type request: :class:`Tencentcloud::dayu::V20180709::ModifyCCHostProtectionRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::ModifyCCHostProtectionResponse`
        def ModifyCCHostProtection(request)
          body = send_request('ModifyCCHostProtection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCCHostProtectionResponse.new
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

        # 添加或删除CC的IP黑白名单

        # @param request: Request instance for ModifyCCIpAllowDeny.
        # @type request: :class:`Tencentcloud::dayu::V20180709::ModifyCCIpAllowDenyRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::ModifyCCIpAllowDenyResponse`
        def ModifyCCIpAllowDeny(request)
          body = send_request('ModifyCCIpAllowDeny', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCCIpAllowDenyResponse.new
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

        # 修改CC防护等级

        # @param request: Request instance for ModifyCCLevel.
        # @type request: :class:`Tencentcloud::dayu::V20180709::ModifyCCLevelRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::ModifyCCLevelResponse`
        def ModifyCCLevel(request)
          body = send_request('ModifyCCLevel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCCLevelResponse.new
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

        # 修改CC自定义策略开关

        # @param request: Request instance for ModifyCCPolicySwitch.
        # @type request: :class:`Tencentcloud::dayu::V20180709::ModifyCCPolicySwitchRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::ModifyCCPolicySwitchResponse`
        def ModifyCCPolicySwitch(request)
          body = send_request('ModifyCCPolicySwitch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCCPolicySwitchResponse.new
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

        # 修改CC自定义策略

        # @param request: Request instance for ModifyCCSelfDefinePolicy.
        # @type request: :class:`Tencentcloud::dayu::V20180709::ModifyCCSelfDefinePolicyRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::ModifyCCSelfDefinePolicyResponse`
        def ModifyCCSelfDefinePolicy(request)
          body = send_request('ModifyCCSelfDefinePolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCCSelfDefinePolicyResponse.new
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

        # 修改CC的防护阈值

        # @param request: Request instance for ModifyCCThreshold.
        # @type request: :class:`Tencentcloud::dayu::V20180709::ModifyCCThresholdRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::ModifyCCThresholdResponse`
        def ModifyCCThreshold(request)
          body = send_request('ModifyCCThreshold', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCCThresholdResponse.new
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

        # 添加或删除CC的URL白名单

        # @param request: Request instance for ModifyCCUrlAllow.
        # @type request: :class:`Tencentcloud::dayu::V20180709::ModifyCCUrlAllowRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::ModifyCCUrlAllowResponse`
        def ModifyCCUrlAllow(request)
          body = send_request('ModifyCCUrlAllow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCCUrlAllowResponse.new
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

        # 读取或修改DDoS的AI防护状态

        # @param request: Request instance for ModifyDDoSAIStatus.
        # @type request: :class:`Tencentcloud::dayu::V20180709::ModifyDDoSAIStatusRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::ModifyDDoSAIStatusResponse`
        def ModifyDDoSAIStatus(request)
          body = send_request('ModifyDDoSAIStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDDoSAIStatusResponse.new
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

        # 为高防包、高防IP、高防IP专业版、棋牌盾等产品设置DDoS攻击的告警通知阈值

        # @param request: Request instance for ModifyDDoSAlarmThreshold.
        # @type request: :class:`Tencentcloud::dayu::V20180709::ModifyDDoSAlarmThresholdRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::ModifyDDoSAlarmThresholdResponse`
        def ModifyDDoSAlarmThreshold(request)
          body = send_request('ModifyDDoSAlarmThreshold', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDDoSAlarmThresholdResponse.new
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

        # 开启或关闭DDoS防护状态，调用此接口允许临时关闭DDoS防护一段时间，等时间到了会自动开启DDoS防护；

        # @param request: Request instance for ModifyDDoSDefendStatus.
        # @type request: :class:`Tencentcloud::dayu::V20180709::ModifyDDoSDefendStatusRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::ModifyDDoSDefendStatusResponse`
        def ModifyDDoSDefendStatus(request)
          body = send_request('ModifyDDoSDefendStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDDoSDefendStatusResponse.new
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

        # 读取或修改DDoS的防护等级

        # @param request: Request instance for ModifyDDoSLevel.
        # @type request: :class:`Tencentcloud::dayu::V20180709::ModifyDDoSLevelRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::ModifyDDoSLevelResponse`
        def ModifyDDoSLevel(request)
          body = send_request('ModifyDDoSLevel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDDoSLevelResponse.new
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

        # 修改DDoS高级策略

        # @param request: Request instance for ModifyDDoSPolicy.
        # @type request: :class:`Tencentcloud::dayu::V20180709::ModifyDDoSPolicyRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::ModifyDDoSPolicyResponse`
        def ModifyDDoSPolicy(request)
          body = send_request('ModifyDDoSPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDDoSPolicyResponse.new
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

        # 修改策略场景

        # @param request: Request instance for ModifyDDoSPolicyCase.
        # @type request: :class:`Tencentcloud::dayu::V20180709::ModifyDDoSPolicyCaseRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::ModifyDDoSPolicyCaseResponse`
        def ModifyDDoSPolicyCase(request)
          body = send_request('ModifyDDoSPolicyCase', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDDoSPolicyCaseResponse.new
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

        # 修改DDoS高级策略名称

        # @param request: Request instance for ModifyDDoSPolicyName.
        # @type request: :class:`Tencentcloud::dayu::V20180709::ModifyDDoSPolicyNameRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::ModifyDDoSPolicyNameResponse`
        def ModifyDDoSPolicyName(request)
          body = send_request('ModifyDDoSPolicyName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDDoSPolicyNameResponse.new
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

        # 开启或关闭DDoS防护，只支持基础防护产品；

        # @param request: Request instance for ModifyDDoSSwitch.
        # @type request: :class:`Tencentcloud::dayu::V20180709::ModifyDDoSSwitchRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::ModifyDDoSSwitchResponse`
        def ModifyDDoSSwitch(request)
          body = send_request('ModifyDDoSSwitch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDDoSSwitchResponse.new
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

        # 修改DDoS清洗阈值

        # @param request: Request instance for ModifyDDoSThreshold.
        # @type request: :class:`Tencentcloud::dayu::V20180709::ModifyDDoSThresholdRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::ModifyDDoSThresholdResponse`
        def ModifyDDoSThreshold(request)
          body = send_request('ModifyDDoSThreshold', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDDoSThresholdResponse.new
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

        # 支持水印密钥的添加，删除，开启，关闭

        # @param request: Request instance for ModifyDDoSWaterKey.
        # @type request: :class:`Tencentcloud::dayu::V20180709::ModifyDDoSWaterKeyRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::ModifyDDoSWaterKeyResponse`
        def ModifyDDoSWaterKey(request)
          body = send_request('ModifyDDoSWaterKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDDoSWaterKeyResponse.new
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

        # 修改弹性防护阈值

        # @param request: Request instance for ModifyElasticLimit.
        # @type request: :class:`Tencentcloud::dayu::V20180709::ModifyElasticLimitRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::ModifyElasticLimitResponse`
        def ModifyElasticLimit(request)
          body = send_request('ModifyElasticLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyElasticLimitResponse.new
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

        # 修改L4转发规则健康检查参数，支持的子产品：高防IP、高防IP专业版

        # @param request: Request instance for ModifyL4Health.
        # @type request: :class:`Tencentcloud::dayu::V20180709::ModifyL4HealthRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::ModifyL4HealthResponse`
        def ModifyL4Health(request)
          body = send_request('ModifyL4Health', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyL4HealthResponse.new
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

        # 修改L4转发规则的会话保持，支持的子产品：高防IP、高防IP专业版

        # @param request: Request instance for ModifyL4KeepTime.
        # @type request: :class:`Tencentcloud::dayu::V20180709::ModifyL4KeepTimeRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::ModifyL4KeepTimeResponse`
        def ModifyL4KeepTime(request)
          body = send_request('ModifyL4KeepTime', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyL4KeepTimeResponse.new
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

        # 修改L4转发规则

        # @param request: Request instance for ModifyL4Rules.
        # @type request: :class:`Tencentcloud::dayu::V20180709::ModifyL4RulesRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::ModifyL4RulesResponse`
        def ModifyL4Rules(request)
          body = send_request('ModifyL4Rules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyL4RulesResponse.new
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

        # 修改L7转发规则

        # @param request: Request instance for ModifyL7Rules.
        # @type request: :class:`Tencentcloud::dayu::V20180709::ModifyL7RulesRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::ModifyL7RulesResponse`
        def ModifyL7Rules(request)
          body = send_request('ModifyL7Rules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyL7RulesResponse.new
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

        # 在客户收攻击或者被封堵时，切回到源站，并设置回切的时长

        # @param request: Request instance for ModifyNetReturnSwitch.
        # @type request: :class:`Tencentcloud::dayu::V20180709::ModifyNetReturnSwitchRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::ModifyNetReturnSwitchResponse`
        def ModifyNetReturnSwitch(request)
          body = send_request('ModifyNetReturnSwitch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNetReturnSwitchResponse.new
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

        # 修改7层转发规则

        # @param request: Request instance for ModifyNewDomainRules.
        # @type request: :class:`Tencentcloud::dayu::V20180709::ModifyNewDomainRulesRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::ModifyNewDomainRulesResponse`
        def ModifyNewDomainRules(request)
          body = send_request('ModifyNewDomainRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNewDomainRulesResponse.new
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

        # 修改4层转发规则

        # @param request: Request instance for ModifyNewL4Rule.
        # @type request: :class:`Tencentcloud::dayu::V20180709::ModifyNewL4RuleRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::ModifyNewL4RuleResponse`
        def ModifyNewL4Rule(request)
          body = send_request('ModifyNewL4Rule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNewL4RuleResponse.new
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

        # 资源实例绑定DDoS高级策略

        # @param request: Request instance for ModifyResBindDDoSPolicy.
        # @type request: :class:`Tencentcloud::dayu::V20180709::ModifyResBindDDoSPolicyRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::ModifyResBindDDoSPolicyResponse`
        def ModifyResBindDDoSPolicy(request)
          body = send_request('ModifyResBindDDoSPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyResBindDDoSPolicyResponse.new
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

        # 修改资源自动续费标记

        # @param request: Request instance for ModifyResourceRenewFlag.
        # @type request: :class:`Tencentcloud::dayu::V20180709::ModifyResourceRenewFlagRequest`
        # @rtype: :class:`Tencentcloud::dayu::V20180709::ModifyResourceRenewFlagResponse`
        def ModifyResourceRenewFlag(request)
          body = send_request('ModifyResourceRenewFlag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyResourceRenewFlagResponse.new
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