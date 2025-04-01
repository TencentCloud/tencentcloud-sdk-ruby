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
  module Vod
    module V20240718
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2024-07-18'
            api_endpoint = 'vod.tencentcloudapi.com'
            sdk_version = 'VOD_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建增量迁移策略。

        # @param request: Request instance for CreateIncrementalMigrationStrategy.
        # @type request: :class:`Tencentcloud::vod::V20240718::CreateIncrementalMigrationStrategyRequest`
        # @rtype: :class:`Tencentcloud::vod::V20240718::CreateIncrementalMigrationStrategyResponse`
        def CreateIncrementalMigrationStrategy(request)
          body = send_request('CreateIncrementalMigrationStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateIncrementalMigrationStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于为专业版应用创建存储桶。

        # 注：
        # - 本接口仅用于专业版应用；
        # - 客户创建点播专业版应用时，系统默认为客户开通了部分地域的存储，用户如果需要开通其它地域的存储，可以通过该接口进行开通；
        # - 通过 [DescribeStorageRegions](https://cloud.tencent.com/document/product/266/72480) 接口可以查询到所有存储地域及已经开通存储桶的地域。

        # @param request: Request instance for CreateStorage.
        # @type request: :class:`Tencentcloud::vod::V20240718::CreateStorageRequest`
        # @rtype: :class:`Tencentcloud::vod::V20240718::CreateStorageResponse`
        def CreateStorage(request)
          body = send_request('CreateStorage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateStorageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于按指定策略，生成专业版应用的临时访问凭证，比如生成用于客户端上传的临时凭证。

        # @param request: Request instance for CreateStorageCredentials.
        # @type request: :class:`Tencentcloud::vod::V20240718::CreateStorageCredentialsRequest`
        # @rtype: :class:`Tencentcloud::vod::V20240718::CreateStorageCredentialsResponse`
        def CreateStorageCredentials(request)
          body = send_request('CreateStorageCredentials', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateStorageCredentialsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除增量迁移策略。

        # @param request: Request instance for DeleteIncrementalMigrationStrategy.
        # @type request: :class:`Tencentcloud::vod::V20240718::DeleteIncrementalMigrationStrategyRequest`
        # @rtype: :class:`Tencentcloud::vod::V20240718::DeleteIncrementalMigrationStrategyResponse`
        def DeleteIncrementalMigrationStrategy(request)
          body = send_request('DeleteIncrementalMigrationStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteIncrementalMigrationStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询增量迁移策略信息。

        # @param request: Request instance for DescribeIncrementalMigrationStrategyInfos.
        # @type request: :class:`Tencentcloud::vod::V20240718::DescribeIncrementalMigrationStrategyInfosRequest`
        # @rtype: :class:`Tencentcloud::vod::V20240718::DescribeIncrementalMigrationStrategyInfosResponse`
        def DescribeIncrementalMigrationStrategyInfos(request)
          body = send_request('DescribeIncrementalMigrationStrategyInfos', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIncrementalMigrationStrategyInfosResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于查询专业版应用中的存储桶信息，同时支持分页查询。

        # 注：
        # - 本接口仅用于专业版应用。

        # @param request: Request instance for DescribeStorage.
        # @type request: :class:`Tencentcloud::vod::V20240718::DescribeStorageRequest`
        # @rtype: :class:`Tencentcloud::vod::V20240718::DescribeStorageResponse`
        def DescribeStorage(request)
          body = send_request('DescribeStorage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStorageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建增量迁移策略。

        # @param request: Request instance for ModifyIncrementalMigrationStrategy.
        # @type request: :class:`Tencentcloud::vod::V20240718::ModifyIncrementalMigrationStrategyRequest`
        # @rtype: :class:`Tencentcloud::vod::V20240718::ModifyIncrementalMigrationStrategyResponse`
        def ModifyIncrementalMigrationStrategy(request)
          body = send_request('ModifyIncrementalMigrationStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyIncrementalMigrationStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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