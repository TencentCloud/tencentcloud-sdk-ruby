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
  module Aca
    module V20210323
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-03-23'
            api_endpoint = 'aca.tencentcloudapi.com'
            sdk_version = 'ACA_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 药品适应症接口

        # @param request: Request instance for GetDrugIndications.
        # @type request: :class:`Tencentcloud::aca::V20210323::GetDrugIndicationsRequest`
        # @rtype: :class:`Tencentcloud::aca::V20210323::GetDrugIndicationsResponse`
        def GetDrugIndications(request)
          body = send_request('GetDrugIndications', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDrugIndicationsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 登录获取token

        # @param request: Request instance for LoginHisTool.
        # @type request: :class:`Tencentcloud::aca::V20210323::LoginHisToolRequest`
        # @rtype: :class:`Tencentcloud::aca::V20210323::LoginHisToolResponse`
        def LoginHisTool(request)
          body = send_request('LoginHisTool', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = LoginHisToolResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 登出

        # @param request: Request instance for LoginOutHisTool.
        # @type request: :class:`Tencentcloud::aca::V20210323::LoginOutHisToolRequest`
        # @rtype: :class:`Tencentcloud::aca::V20210323::LoginOutHisToolResponse`
        def LoginOutHisTool(request)
          body = send_request('LoginOutHisTool', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = LoginOutHisToolResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 智能用药接口

        # @param request: Request instance for SmartDrugInfo.
        # @type request: :class:`Tencentcloud::aca::V20210323::SmartDrugInfoRequest`
        # @rtype: :class:`Tencentcloud::aca::V20210323::SmartDrugInfoResponse`
        def SmartDrugInfo(request)
          body = send_request('SmartDrugInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SmartDrugInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 辅诊智能预测接口

        # @param request: Request instance for SmartPredict.
        # @type request: :class:`Tencentcloud::aca::V20210323::SmartPredictRequest`
        # @rtype: :class:`Tencentcloud::aca::V20210323::SmartPredictResponse`
        def SmartPredict(request)
          body = send_request('SmartPredict', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SmartPredictResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于院方科室管理，获取科室列表和状态、新增或修改科室信息、删除科室。

        # @param request: Request instance for SyncDepartment.
        # @type request: :class:`Tencentcloud::aca::V20210323::SyncDepartmentRequest`
        # @rtype: :class:`Tencentcloud::aca::V20210323::SyncDepartmentResponse`
        def SyncDepartment(request)
          body = send_request('SyncDepartment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SyncDepartmentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 同步标准字典，如给药频次、给药途径、科室、诊断等

        # @param request: Request instance for SyncStandardDict.
        # @type request: :class:`Tencentcloud::aca::V20210323::SyncStandardDictRequest`
        # @rtype: :class:`Tencentcloud::aca::V20210323::SyncStandardDictResponse`
        def SyncStandardDict(request)
          body = send_request('SyncStandardDict', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SyncStandardDictResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 药品同步，一次同步数据不要超过500个

        # @param request: Request instance for UploadDrugs.
        # @type request: :class:`Tencentcloud::aca::V20210323::UploadDrugsRequest`
        # @rtype: :class:`Tencentcloud::aca::V20210323::UploadDrugsResponse`
        def UploadDrugs(request)
          body = send_request('UploadDrugs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadDrugsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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