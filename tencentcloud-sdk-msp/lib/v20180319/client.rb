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
  module Msp
    module V20180319
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-03-19'
            api_endpoint = 'msp.tencentcloudapi.com'
            sdk_version = 'MSP_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 接口已经废弃不再使用

        # 取消注册迁移任务

        # @param request: Request instance for DeregisterMigrationTask.
        # @type request: :class:`Tencentcloud::msp::V20180319::DeregisterMigrationTaskRequest`
        # @rtype: :class:`Tencentcloud::msp::V20180319::DeregisterMigrationTaskResponse`
        def DeregisterMigrationTask(request)
          body = send_request('DeregisterMigrationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeregisterMigrationTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定迁移任务详情

        # @param request: Request instance for DescribeMigrationTask.
        # @type request: :class:`Tencentcloud::msp::V20180319::DescribeMigrationTaskRequest`
        # @rtype: :class:`Tencentcloud::msp::V20180319::DescribeMigrationTaskResponse`
        def DescribeMigrationTask(request)
          body = send_request('DescribeMigrationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMigrationTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取迁移项目名称列表

        # @param request: Request instance for ListMigrationProject.
        # @type request: :class:`Tencentcloud::msp::V20180319::ListMigrationProjectRequest`
        # @rtype: :class:`Tencentcloud::msp::V20180319::ListMigrationProjectResponse`
        def ListMigrationProject(request)
          body = send_request('ListMigrationProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListMigrationProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取迁移任务列表

        # @param request: Request instance for ListMigrationTask.
        # @type request: :class:`Tencentcloud::msp::V20180319::ListMigrationTaskRequest`
        # @rtype: :class:`Tencentcloud::msp::V20180319::ListMigrationTaskResponse`
        def ListMigrationTask(request)
          body = send_request('ListMigrationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListMigrationTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更改迁移任务所属项目

        # @param request: Request instance for ModifyMigrationTaskBelongToProject.
        # @type request: :class:`Tencentcloud::msp::V20180319::ModifyMigrationTaskBelongToProjectRequest`
        # @rtype: :class:`Tencentcloud::msp::V20180319::ModifyMigrationTaskBelongToProjectResponse`
        def ModifyMigrationTaskBelongToProject(request)
          body = send_request('ModifyMigrationTaskBelongToProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMigrationTaskBelongToProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新迁移任务状态

        # @param request: Request instance for ModifyMigrationTaskStatus.
        # @type request: :class:`Tencentcloud::msp::V20180319::ModifyMigrationTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::msp::V20180319::ModifyMigrationTaskStatusResponse`
        def ModifyMigrationTaskStatus(request)
          body = send_request('ModifyMigrationTaskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMigrationTaskStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 注册迁移任务

        # @param request: Request instance for RegisterMigrationTask.
        # @type request: :class:`Tencentcloud::msp::V20180319::RegisterMigrationTaskRequest`
        # @rtype: :class:`Tencentcloud::msp::V20180319::RegisterMigrationTaskResponse`
        def RegisterMigrationTask(request)
          body = send_request('RegisterMigrationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RegisterMigrationTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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