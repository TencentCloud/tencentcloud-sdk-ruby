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
  module Ssm
    module V20190923
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-09-23'
            api_endpoint = 'ssm.tencentcloudapi.com'
            sdk_version = 'SSM_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建新的凭据信息，通过KMS进行加密保护。每个Region最多可创建存储1000个凭据信息。

        # @param request: Request instance for CreateSecret.
        # @type request: :class:`Tencentcloud::ssm::V20190923::CreateSecretRequest`
        # @rtype: :class:`Tencentcloud::ssm::V20190923::CreateSecretResponse`
        def CreateSecret(request)
          body = send_request('CreateSecret', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSecretResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除指定的凭据信息，可以通过RecoveryWindowInDays参数设置立即删除或者计划删除。对于计划删除的凭据，在删除日期到达之前状态为 PendingDelete，并可以通过RestoreSecret 进行恢复，超出指定删除日期之后会被彻底删除。您必须先通过 DisableSecret 停用凭据后才可以进行（计划）删除操作。

        # @param request: Request instance for DeleteSecret.
        # @type request: :class:`Tencentcloud::ssm::V20190923::DeleteSecretRequest`
        # @rtype: :class:`Tencentcloud::ssm::V20190923::DeleteSecretResponse`
        def DeleteSecret(request)
          body = send_request('DeleteSecret', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSecretResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于直接删除指定凭据下的单个版本凭据，删除操作立即生效，对所有状态下的凭据版本都可以删除。

        # @param request: Request instance for DeleteSecretVersion.
        # @type request: :class:`Tencentcloud::ssm::V20190923::DeleteSecretVersionRequest`
        # @rtype: :class:`Tencentcloud::ssm::V20190923::DeleteSecretVersionResponse`
        def DeleteSecretVersion(request)
          body = send_request('DeleteSecretVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSecretVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取凭据的详细属性信息。

        # @param request: Request instance for DescribeSecret.
        # @type request: :class:`Tencentcloud::ssm::V20190923::DescribeSecretRequest`
        # @rtype: :class:`Tencentcloud::ssm::V20190923::DescribeSecretResponse`
        def DescribeSecret(request)
          body = send_request('DescribeSecret', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecretResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停用指定的凭据，停用后状态为 Disabled，无法通过接口获取该凭据的明文。

        # @param request: Request instance for DisableSecret.
        # @type request: :class:`Tencentcloud::ssm::V20190923::DisableSecretRequest`
        # @rtype: :class:`Tencentcloud::ssm::V20190923::DisableSecretResponse`
        def DisableSecret(request)
          body = send_request('DisableSecret', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableSecretResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于开启凭据，状态为Enabled。可以通过 GetSecretValue 接口获取凭据明文。处于PendingDelete状态的凭据不能直接开启，需要通过RestoreSecret 恢复后再开启使用。

        # @param request: Request instance for EnableSecret.
        # @type request: :class:`Tencentcloud::ssm::V20190923::EnableSecretRequest`
        # @rtype: :class:`Tencentcloud::ssm::V20190923::EnableSecretResponse`
        def EnableSecret(request)
          body = send_request('EnableSecret', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableSecretResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取控制台展示region列表

        # @param request: Request instance for GetRegions.
        # @type request: :class:`Tencentcloud::ssm::V20190923::GetRegionsRequest`
        # @rtype: :class:`Tencentcloud::ssm::V20190923::GetRegionsResponse`
        def GetRegions(request)
          body = send_request('GetRegions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRegionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定凭据名称和版本的凭据明文信息，只能获取启用状态的凭据明文。

        # @param request: Request instance for GetSecretValue.
        # @type request: :class:`Tencentcloud::ssm::V20190923::GetSecretValueRequest`
        # @rtype: :class:`Tencentcloud::ssm::V20190923::GetSecretValueResponse`
        def GetSecretValue(request)
          body = send_request('GetSecretValue', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetSecretValueResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用户获取用户SecretsManager服务开通状态。

        # @param request: Request instance for GetServiceStatus.
        # @type request: :class:`Tencentcloud::ssm::V20190923::GetServiceStatusRequest`
        # @rtype: :class:`Tencentcloud::ssm::V20190923::GetServiceStatusResponse`
        def GetServiceStatus(request)
          body = send_request('GetServiceStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetServiceStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于获取指定凭据下的版本列表信息

        # @param request: Request instance for ListSecretVersionIds.
        # @type request: :class:`Tencentcloud::ssm::V20190923::ListSecretVersionIdsRequest`
        # @rtype: :class:`Tencentcloud::ssm::V20190923::ListSecretVersionIdsResponse`
        def ListSecretVersionIds(request)
          body = send_request('ListSecretVersionIds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListSecretVersionIdsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于获取所有凭据的详细列表，可以指定过滤字段、排序方式等。

        # @param request: Request instance for ListSecrets.
        # @type request: :class:`Tencentcloud::ssm::V20190923::ListSecretsRequest`
        # @rtype: :class:`Tencentcloud::ssm::V20190923::ListSecretsResponse`
        def ListSecrets(request)
          body = send_request('ListSecrets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListSecretsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口在指定名称的凭据下增加新版本的凭据内容，一个凭据下最多可以支持10个版本。只能对处于Enabled 和 Disabled 状态的凭据添加新的版本。

        # @param request: Request instance for PutSecretValue.
        # @type request: :class:`Tencentcloud::ssm::V20190923::PutSecretValueRequest`
        # @rtype: :class:`Tencentcloud::ssm::V20190923::PutSecretValueResponse`
        def PutSecretValue(request)
          body = send_request('PutSecretValue', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PutSecretValueResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于恢复计划删除（PendingDelete状态）中的凭据，取消计划删除。取消计划删除的凭据将处于Disabled 状态，如需恢复使用，通过EnableSecret 接口开启凭据。

        # @param request: Request instance for RestoreSecret.
        # @type request: :class:`Tencentcloud::ssm::V20190923::RestoreSecretRequest`
        # @rtype: :class:`Tencentcloud::ssm::V20190923::RestoreSecretResponse`
        def RestoreSecret(request)
          body = send_request('RestoreSecret', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestoreSecretResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于修改指定凭据的描述信息，仅能修改Enabled 和 Disabled 状态的凭据。

        # @param request: Request instance for UpdateDescription.
        # @type request: :class:`Tencentcloud::ssm::V20190923::UpdateDescriptionRequest`
        # @rtype: :class:`Tencentcloud::ssm::V20190923::UpdateDescriptionResponse`
        def UpdateDescription(request)
          body = send_request('UpdateDescription', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateDescriptionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于更新指定凭据名称和版本号的内容，调用该接口会对新的凭据内容加密后覆盖旧的内容。仅允许更新Enabled 和 Disabled 状态的凭据。

        # @param request: Request instance for UpdateSecret.
        # @type request: :class:`Tencentcloud::ssm::V20190923::UpdateSecretRequest`
        # @rtype: :class:`Tencentcloud::ssm::V20190923::UpdateSecretResponse`
        def UpdateSecret(request)
          body = send_request('UpdateSecret', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateSecretResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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