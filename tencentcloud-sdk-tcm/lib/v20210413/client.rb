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
  module Tcm
    module V20210413
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-04-13'
            api_endpoint = 'tcm.tencentcloudapi.com'
            sdk_version = 'TCM_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建网格

        # @param request: Request instance for CreateMesh.
        # @type request: :class:`Tencentcloud::tcm::V20210413::CreateMeshRequest`
        # @rtype: :class:`Tencentcloud::tcm::V20210413::CreateMeshResponse`
        def CreateMesh(request)
          body = send_request('CreateMesh', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMeshResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除网格

        # @param request: Request instance for DeleteMesh.
        # @type request: :class:`Tencentcloud::tcm::V20210413::DeleteMeshRequest`
        # @rtype: :class:`Tencentcloud::tcm::V20210413::DeleteMeshResponse`
        def DeleteMesh(request)
          body = send_request('DeleteMesh', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMeshResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询网格详情

        # @param request: Request instance for DescribeMesh.
        # @type request: :class:`Tencentcloud::tcm::V20210413::DescribeMeshRequest`
        # @rtype: :class:`Tencentcloud::tcm::V20210413::DescribeMeshResponse`
        def DescribeMesh(request)
          body = send_request('DescribeMesh', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMeshResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询网格列表

        # @param request: Request instance for DescribeMeshList.
        # @type request: :class:`Tencentcloud::tcm::V20210413::DescribeMeshListRequest`
        # @rtype: :class:`Tencentcloud::tcm::V20210413::DescribeMeshListResponse`
        def DescribeMeshList(request)
          body = send_request('DescribeMeshList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMeshListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改网格

        # @param request: Request instance for ModifyMesh.
        # @type request: :class:`Tencentcloud::tcm::V20210413::ModifyMeshRequest`
        # @rtype: :class:`Tencentcloud::tcm::V20210413::ModifyMeshResponse`
        def ModifyMesh(request)
          body = send_request('ModifyMesh', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMeshResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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