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
  module Tcbr
    module V20220217
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-02-17'
            api_endpoint = 'tcbr.tencentcloudapi.com'
            sdk_version = 'TCBR_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建云托管环境，并开通资源。

        # @param request: Request instance for CreateCloudRunEnv.
        # @type request: :class:`Tencentcloud::tcbr::V20220217::CreateCloudRunEnvRequest`
        # @rtype: :class:`Tencentcloud::tcbr::V20220217::CreateCloudRunEnvResponse`
        def CreateCloudRunEnv(request)
          body = send_request('CreateCloudRunEnv', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudRunEnvResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建云托管服务接口

        # @param request: Request instance for CreateCloudRunServer.
        # @type request: :class:`Tencentcloud::tcbr::V20220217::CreateCloudRunServerRequest`
        # @rtype: :class:`Tencentcloud::tcbr::V20220217::CreateCloudRunServerResponse`
        def CreateCloudRunServer(request)
          body = send_request('CreateCloudRunServer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudRunServerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取环境列表，含环境下的各个资源信息。尤其是各资源的唯一标识，是请求各资源的关键参数

        # @param request: Request instance for DescribeCloudRunEnvs.
        # @type request: :class:`Tencentcloud::tcbr::V20220217::DescribeCloudRunEnvsRequest`
        # @rtype: :class:`Tencentcloud::tcbr::V20220217::DescribeCloudRunEnvsResponse`
        def DescribeCloudRunEnvs(request)
          body = send_request('DescribeCloudRunEnvs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudRunEnvsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云托管服务详情

        # @param request: Request instance for DescribeCloudRunServerDetail.
        # @type request: :class:`Tencentcloud::tcbr::V20220217::DescribeCloudRunServerDetailRequest`
        # @rtype: :class:`Tencentcloud::tcbr::V20220217::DescribeCloudRunServerDetailResponse`
        def DescribeCloudRunServerDetail(request)
          body = send_request('DescribeCloudRunServerDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudRunServerDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云托管服务列表接口

        # @param request: Request instance for DescribeCloudRunServers.
        # @type request: :class:`Tencentcloud::tcbr::V20220217::DescribeCloudRunServersRequest`
        # @rtype: :class:`Tencentcloud::tcbr::V20220217::DescribeCloudRunServersResponse`
        def DescribeCloudRunServers(request)
          body = send_request('DescribeCloudRunServers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudRunServersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询环境基础信息

        # @param request: Request instance for DescribeEnvBaseInfo.
        # @type request: :class:`Tencentcloud::tcbr::V20220217::DescribeEnvBaseInfoRequest`
        # @rtype: :class:`Tencentcloud::tcbr::V20220217::DescribeEnvBaseInfoResponse`
        def DescribeEnvBaseInfo(request)
          body = send_request('DescribeEnvBaseInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEnvBaseInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询服务管理任务信息

        # @param request: Request instance for DescribeServerManageTask.
        # @type request: :class:`Tencentcloud::tcbr::V20220217::DescribeServerManageTaskRequest`
        # @rtype: :class:`Tencentcloud::tcbr::V20220217::DescribeServerManageTaskResponse`
        def DescribeServerManageTask(request)
          body = send_request('DescribeServerManageTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeServerManageTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 操作发布单

        # @param request: Request instance for OperateServerManage.
        # @type request: :class:`Tencentcloud::tcbr::V20220217::OperateServerManageRequest`
        # @rtype: :class:`Tencentcloud::tcbr::V20220217::OperateServerManageResponse`
        def OperateServerManage(request)
          body = send_request('OperateServerManage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OperateServerManageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 灰度发布

        # @param request: Request instance for ReleaseGray.
        # @type request: :class:`Tencentcloud::tcbr::V20220217::ReleaseGrayRequest`
        # @rtype: :class:`Tencentcloud::tcbr::V20220217::ReleaseGrayResponse`
        def ReleaseGray(request)
          body = send_request('ReleaseGray', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReleaseGrayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新云托管服务

        # @param request: Request instance for UpdateCloudRunServer.
        # @type request: :class:`Tencentcloud::tcbr::V20220217::UpdateCloudRunServerRequest`
        # @rtype: :class:`Tencentcloud::tcbr::V20220217::UpdateCloudRunServerResponse`
        def UpdateCloudRunServer(request)
          body = send_request('UpdateCloudRunServer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCloudRunServerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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