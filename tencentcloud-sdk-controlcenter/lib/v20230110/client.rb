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
  module Controlcenter
    module V20230110
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2023-01-10'
            api_endpoint = 'controlcenter.tencentcloudapi.com'
            sdk_version = 'CONTROLCENTER_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 批量对存量账号应用基线

        # @param request: Request instance for BatchApplyAccountBaselines.
        # @type request: :class:`Tencentcloud::controlcenter::V20230110::BatchApplyAccountBaselinesRequest`
        # @rtype: :class:`Tencentcloud::controlcenter::V20230110::BatchApplyAccountBaselinesResponse`
        def BatchApplyAccountBaselines(request)
          body = send_request('BatchApplyAccountBaselines', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchApplyAccountBaselinesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户基线配置数据

        # @param request: Request instance for GetAccountFactoryBaseline.
        # @type request: :class:`Tencentcloud::controlcenter::V20230110::GetAccountFactoryBaselineRequest`
        # @rtype: :class:`Tencentcloud::controlcenter::V20230110::GetAccountFactoryBaselineResponse`
        def GetAccountFactoryBaseline(request)
          body = send_request('GetAccountFactoryBaseline', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetAccountFactoryBaselineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取账号工厂系统基线项

        # @param request: Request instance for ListAccountFactoryBaselineItems.
        # @type request: :class:`Tencentcloud::controlcenter::V20230110::ListAccountFactoryBaselineItemsRequest`
        # @rtype: :class:`Tencentcloud::controlcenter::V20230110::ListAccountFactoryBaselineItemsResponse`
        def ListAccountFactoryBaselineItems(request)
          body = send_request('ListAccountFactoryBaselineItems', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAccountFactoryBaselineItemsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取某个基线项历史应用信息

        # @param request: Request instance for ListDeployStepTasks.
        # @type request: :class:`Tencentcloud::controlcenter::V20230110::ListDeployStepTasksRequest`
        # @rtype: :class:`Tencentcloud::controlcenter::V20230110::ListDeployStepTasksResponse`
        def ListDeployStepTasks(request)
          body = send_request('ListDeployStepTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListDeployStepTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新用户当前基线项配置，基线配置会覆盖更新为当前配置。新增基线项时需要将新增的基线配置加到现有配置，删除基线项时需要将删除的基线配置从现有配置移除，然后保存最新基线配置。

        # @param request: Request instance for UpdateAccountFactoryBaseline.
        # @type request: :class:`Tencentcloud::controlcenter::V20230110::UpdateAccountFactoryBaselineRequest`
        # @rtype: :class:`Tencentcloud::controlcenter::V20230110::UpdateAccountFactoryBaselineResponse`
        def UpdateAccountFactoryBaseline(request)
          body = send_request('UpdateAccountFactoryBaseline', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateAccountFactoryBaselineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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