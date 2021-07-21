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
  module Waf
    module V20180125
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-01-25'
            api_endpoint = 'waf.tencentcloudapi.com'
            sdk_version = 'WAF_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 增加自定义策略

        # @param request: Request instance for AddCustomRule.
        # @type request: :class:`Tencentcloud::waf::V20180125::AddCustomRuleRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::AddCustomRuleResponse`
        def AddCustomRule(request)
          body = send_request('AddCustomRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddCustomRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建攻击日志下载任务

        # @param request: Request instance for CreateAttackDownloadTask.
        # @type request: :class:`Tencentcloud::waf::V20180125::CreateAttackDownloadTaskRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::CreateAttackDownloadTaskResponse`
        def CreateAttackDownloadTask(request)
          body = send_request('CreateAttackDownloadTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAttackDownloadTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除攻击日志下载任务记录

        # @param request: Request instance for DeleteAttackDownloadRecord.
        # @type request: :class:`Tencentcloud::waf::V20180125::DeleteAttackDownloadRecordRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DeleteAttackDownloadRecordResponse`
        def DeleteAttackDownloadRecord(request)
          body = send_request('DeleteAttackDownloadRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAttackDownloadRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除访问日志下载记录

        # @param request: Request instance for DeleteDownloadRecord.
        # @type request: :class:`Tencentcloud::waf::V20180125::DeleteDownloadRecordRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DeleteDownloadRecordResponse`
        def DeleteDownloadRecord(request)
          body = send_request('DeleteDownloadRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDownloadRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除CC攻击的session设置

        # @param request: Request instance for DeleteSession.
        # @type request: :class:`Tencentcloud::waf::V20180125::DeleteSessionRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DeleteSessionResponse`
        def DeleteSession(request)
          body = send_request('DeleteSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSessionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取防护配置中的自定义策略列表

        # @param request: Request instance for DescribeCustomRules.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeCustomRulesRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeCustomRulesResponse`
        def DescribeCustomRules(request)
          body = send_request('DescribeCustomRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取waf流量访问趋势

        # @param request: Request instance for DescribeFlowTrend.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeFlowTrendRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeFlowTrendResponse`
        def DescribeFlowTrend(request)
          body = send_request('DescribeFlowTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFlowTrendResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在负载均衡型WAF的添加、编辑域名配置的时候，需要展示负载均衡型WAF（clb-waf)支持的地域列表，通过DescribeUserClbWafRegions既可以获得当前对客户已经开放的地域列表

        # @param request: Request instance for DescribeUserClbWafRegions.
        # @type request: :class:`Tencentcloud::waf::V20180125::DescribeUserClbWafRegionsRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::DescribeUserClbWafRegionsResponse`
        def DescribeUserClbWafRegions(request)
          body = send_request('DescribeUserClbWafRegions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserClbWafRegionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于修改访问日志保存期限

        # @param request: Request instance for ModifyAccessPeriod.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyAccessPeriodRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyAccessPeriodResponse`
        def ModifyAccessPeriod(request)
          body = send_request('ModifyAccessPeriod', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAccessPeriodResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开启或禁用自定义策略

        # @param request: Request instance for ModifyCustomRuleStatus.
        # @type request: :class:`Tencentcloud::waf::V20180125::ModifyCustomRuleStatusRequest`
        # @rtype: :class:`Tencentcloud::waf::V20180125::ModifyCustomRuleStatusResponse`
        def ModifyCustomRuleStatus(request)
          body = send_request('ModifyCustomRuleStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCustomRuleStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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