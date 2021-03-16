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
  module Scf
    module V20180416
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2018-04-16'
        @@endpoint = 'scf.tencentcloudapi.com'
        @@sdk_version = 'SCF_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 复制一个函数，您可以选择将复制出的新函数放置在特定的Region和Namespace。
        # 注：本接口**不会**复制函数的以下对象或属性：
        # 1. 函数的触发器
        # 2. 除了$LATEST以外的其它版本
        # 3. 函数配置的日志投递到的CLS目标。

        # 如有需要，您可以在复制后手动配置新函数。

        # @param request: Request instance for CopyFunction.
        # @type request: :class:`Tencentcloud::scf::V20180416::CopyFunctionRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::CopyFunctionResponse`
        def CopyFunction(request)
          body = send_request('CopyFunction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CopyFunctionResponse.new
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

        # 为某个函数版本创建一个别名，您可以使用别名来标记特定的函数版本，如DEV/RELEASE版本，也可以随时修改别名指向的版本。
        # 一个别名必须指向一个主版本，此外还可以同时指向一个附加版本。调用函数时指定特定的别名，则请求会被发送到别名指向的版本上，您可以配置请求发送到主版本和附加版本的比例。

        # @param request: Request instance for CreateAlias.
        # @type request: :class:`Tencentcloud::scf::V20180416::CreateAliasRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::CreateAliasResponse`
        def CreateAlias(request)
          body = send_request('CreateAlias', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAliasResponse.new
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

        # 该接口根据传入参数创建新的函数。

        # @param request: Request instance for CreateFunction.
        # @type request: :class:`Tencentcloud::scf::V20180416::CreateFunctionRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::CreateFunctionResponse`
        def CreateFunction(request)
          body = send_request('CreateFunction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFunctionResponse.new
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

        # 该接口根据传入的参数创建命名空间。

        # @param request: Request instance for CreateNamespace.
        # @type request: :class:`Tencentcloud::scf::V20180416::CreateNamespaceRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::CreateNamespaceResponse`
        def CreateNamespace(request)
          body = send_request('CreateNamespace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNamespaceResponse.new
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

        # 该接口根据参数输入设置新的触发方式。

        # @param request: Request instance for CreateTrigger.
        # @type request: :class:`Tencentcloud::scf::V20180416::CreateTriggerRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::CreateTriggerResponse`
        def CreateTrigger(request)
          body = send_request('CreateTrigger', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTriggerResponse.new
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

        # 删除一个函数版本的别名

        # @param request: Request instance for DeleteAlias.
        # @type request: :class:`Tencentcloud::scf::V20180416::DeleteAliasRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::DeleteAliasResponse`
        def DeleteAlias(request)
          body = send_request('DeleteAlias', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAliasResponse.new
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

        # 该接口根据传入参数删除函数。

        # @param request: Request instance for DeleteFunction.
        # @type request: :class:`Tencentcloud::scf::V20180416::DeleteFunctionRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::DeleteFunctionResponse`
        def DeleteFunction(request)
          body = send_request('DeleteFunction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteFunctionResponse.new
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

        # 删除指定层的指定版本，被删除的版本无法再关联到函数上，但不会影响正在引用这个层的函数。

        # @param request: Request instance for DeleteLayerVersion.
        # @type request: :class:`Tencentcloud::scf::V20180416::DeleteLayerVersionRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::DeleteLayerVersionResponse`
        def DeleteLayerVersion(request)
          body = send_request('DeleteLayerVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLayerVersionResponse.new
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

        # 该接口根据传入的参数创建命名空间。

        # @param request: Request instance for DeleteNamespace.
        # @type request: :class:`Tencentcloud::scf::V20180416::DeleteNamespaceRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::DeleteNamespaceResponse`
        def DeleteNamespace(request)
          body = send_request('DeleteNamespace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNamespaceResponse.new
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

        # 删除函数版本的预置并发配置。

        # @param request: Request instance for DeleteProvisionedConcurrencyConfig.
        # @type request: :class:`Tencentcloud::scf::V20180416::DeleteProvisionedConcurrencyConfigRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::DeleteProvisionedConcurrencyConfigResponse`
        def DeleteProvisionedConcurrencyConfig(request)
          body = send_request('DeleteProvisionedConcurrencyConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteProvisionedConcurrencyConfigResponse.new
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

        # 删除函数的保留并发配置。

        # @param request: Request instance for DeleteReservedConcurrencyConfig.
        # @type request: :class:`Tencentcloud::scf::V20180416::DeleteReservedConcurrencyConfigRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::DeleteReservedConcurrencyConfigResponse`
        def DeleteReservedConcurrencyConfig(request)
          body = send_request('DeleteReservedConcurrencyConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteReservedConcurrencyConfigResponse.new
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

        # 该接口根据参数传入删除已有的触发方式。

        # @param request: Request instance for DeleteTrigger.
        # @type request: :class:`Tencentcloud::scf::V20180416::DeleteTriggerRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::DeleteTriggerResponse`
        def DeleteTrigger(request)
          body = send_request('DeleteTrigger', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTriggerResponse.new
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

        # 获取账户信息

        # @param request: Request instance for GetAccount.
        # @type request: :class:`Tencentcloud::scf::V20180416::GetAccountRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::GetAccountResponse`
        def GetAccount(request)
          body = send_request('GetAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetAccountResponse.new
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

        # 获取别名的详细信息，包括名称、描述、版本、路由信息等。

        # @param request: Request instance for GetAlias.
        # @type request: :class:`Tencentcloud::scf::V20180416::GetAliasRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::GetAliasResponse`
        def GetAlias(request)
          body = send_request('GetAlias', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetAliasResponse.new
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

        # 该接口获取某个函数的详细信息，包括名称、代码、处理方法、关联触发器和超时时间等字段。

        # @param request: Request instance for GetFunction.
        # @type request: :class:`Tencentcloud::scf::V20180416::GetFunctionRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::GetFunctionResponse`
        def GetFunction(request)
          body = send_request('GetFunction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetFunctionResponse.new
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

        # 该接口用于获取函数代码包的下载地址。

        # @param request: Request instance for GetFunctionAddress.
        # @type request: :class:`Tencentcloud::scf::V20180416::GetFunctionAddressRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::GetFunctionAddressResponse`
        def GetFunctionAddress(request)
          body = send_request('GetFunctionAddress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetFunctionAddressResponse.new
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

        # 获取函数异步重试配置，包括重试次数和消息保留时间

        # @param request: Request instance for GetFunctionEventInvokeConfig.
        # @type request: :class:`Tencentcloud::scf::V20180416::GetFunctionEventInvokeConfigRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::GetFunctionEventInvokeConfigResponse`
        def GetFunctionEventInvokeConfig(request)
          body = send_request('GetFunctionEventInvokeConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetFunctionEventInvokeConfigResponse.new
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

        # 该接口根据指定的日志查询条件返回函数运行日志。

        # @param request: Request instance for GetFunctionLogs.
        # @type request: :class:`Tencentcloud::scf::V20180416::GetFunctionLogsRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::GetFunctionLogsResponse`
        def GetFunctionLogs(request)
          body = send_request('GetFunctionLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetFunctionLogsResponse.new
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

        # 获取层版本详细信息，包括用于下载层中文件的链接。

        # @param request: Request instance for GetLayerVersion.
        # @type request: :class:`Tencentcloud::scf::V20180416::GetLayerVersionRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::GetLayerVersionResponse`
        def GetLayerVersion(request)
          body = send_request('GetLayerVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetLayerVersionResponse.new
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

        # 获取函数或函数某一版本的预置并发详情。

        # @param request: Request instance for GetProvisionedConcurrencyConfig.
        # @type request: :class:`Tencentcloud::scf::V20180416::GetProvisionedConcurrencyConfigRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::GetProvisionedConcurrencyConfigResponse`
        def GetProvisionedConcurrencyConfig(request)
          body = send_request('GetProvisionedConcurrencyConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetProvisionedConcurrencyConfigResponse.new
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

        # 获取函数的保留并发详情。

        # @param request: Request instance for GetReservedConcurrencyConfig.
        # @type request: :class:`Tencentcloud::scf::V20180416::GetReservedConcurrencyConfigRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::GetReservedConcurrencyConfigResponse`
        def GetReservedConcurrencyConfig(request)
          body = send_request('GetReservedConcurrencyConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetReservedConcurrencyConfigResponse.new
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

        # 该接口用于运行函数。

        # @param request: Request instance for Invoke.
        # @type request: :class:`Tencentcloud::scf::V20180416::InvokeRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::InvokeResponse`
        def Invoke(request)
          body = send_request('Invoke', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InvokeResponse.new
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

        # 返回一个函数下的全部别名，可以根据特定函数版本过滤。

        # @param request: Request instance for ListAliases.
        # @type request: :class:`Tencentcloud::scf::V20180416::ListAliasesRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::ListAliasesResponse`
        def ListAliases(request)
          body = send_request('ListAliases', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAliasesResponse.new
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

        # 拉取函数异步事件列表

        # @param request: Request instance for ListAsyncEvents.
        # @type request: :class:`Tencentcloud::scf::V20180416::ListAsyncEventsRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::ListAsyncEventsResponse`
        def ListAsyncEvents(request)
          body = send_request('ListAsyncEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListAsyncEventsResponse.new
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

        # 该接口根据传入的查询参数返回相关函数信息。

        # @param request: Request instance for ListFunctions.
        # @type request: :class:`Tencentcloud::scf::V20180416::ListFunctionsRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::ListFunctionsResponse`
        def ListFunctions(request)
          body = send_request('ListFunctions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListFunctionsResponse.new
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

        # 返回指定层的全部版本的信息

        # @param request: Request instance for ListLayerVersions.
        # @type request: :class:`Tencentcloud::scf::V20180416::ListLayerVersionsRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::ListLayerVersionsResponse`
        def ListLayerVersions(request)
          body = send_request('ListLayerVersions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListLayerVersionsResponse.new
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

        # 返回全部层的列表，其中包含了每个层最新版本的信息，可以通过适配运行时进行过滤。

        # @param request: Request instance for ListLayers.
        # @type request: :class:`Tencentcloud::scf::V20180416::ListLayersRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::ListLayersResponse`
        def ListLayers(request)
          body = send_request('ListLayers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListLayersResponse.new
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

        # 列出命名空间列表

        # @param request: Request instance for ListNamespaces.
        # @type request: :class:`Tencentcloud::scf::V20180416::ListNamespacesRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::ListNamespacesResponse`
        def ListNamespaces(request)
          body = send_request('ListNamespaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListNamespacesResponse.new
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

        # 获取函数触发器列表

        # @param request: Request instance for ListTriggers.
        # @type request: :class:`Tencentcloud::scf::V20180416::ListTriggersRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::ListTriggersResponse`
        def ListTriggers(request)
          body = send_request('ListTriggers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListTriggersResponse.new
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

        # 该接口根据传入的参数查询函数的版本。

        # @param request: Request instance for ListVersionByFunction.
        # @type request: :class:`Tencentcloud::scf::V20180416::ListVersionByFunctionRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::ListVersionByFunctionResponse`
        def ListVersionByFunction(request)
          body = send_request('ListVersionByFunction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListVersionByFunctionResponse.new
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

        # 使用给定的zip文件或cos对象创建一个层的新版本，每次使用相同的层的名称调用本接口，都会生成一个新版本。

        # @param request: Request instance for PublishLayerVersion.
        # @type request: :class:`Tencentcloud::scf::V20180416::PublishLayerVersionRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::PublishLayerVersionResponse`
        def PublishLayerVersion(request)
          body = send_request('PublishLayerVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PublishLayerVersionResponse.new
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

        # 该接口用于用户发布新版本函数。

        # @param request: Request instance for PublishVersion.
        # @type request: :class:`Tencentcloud::scf::V20180416::PublishVersionRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::PublishVersionResponse`
        def PublishVersion(request)
          body = send_request('PublishVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PublishVersionResponse.new
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

        # 设置函数某一非$LATEST版本的预置并发。

        # @param request: Request instance for PutProvisionedConcurrencyConfig.
        # @type request: :class:`Tencentcloud::scf::V20180416::PutProvisionedConcurrencyConfigRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::PutProvisionedConcurrencyConfigResponse`
        def PutProvisionedConcurrencyConfig(request)
          body = send_request('PutProvisionedConcurrencyConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PutProvisionedConcurrencyConfigResponse.new
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

        # 设置函数保留并发

        # @param request: Request instance for PutReservedConcurrencyConfig.
        # @type request: :class:`Tencentcloud::scf::V20180416::PutReservedConcurrencyConfigRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::PutReservedConcurrencyConfigResponse`
        def PutReservedConcurrencyConfig(request)
          body = send_request('PutReservedConcurrencyConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PutReservedConcurrencyConfigResponse.new
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

        # 修改账号并发限制配额

        # @param request: Request instance for PutTotalConcurrencyConfig.
        # @type request: :class:`Tencentcloud::scf::V20180416::PutTotalConcurrencyConfigRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::PutTotalConcurrencyConfigResponse`
        def PutTotalConcurrencyConfig(request)
          body = send_request('PutTotalConcurrencyConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PutTotalConcurrencyConfigResponse.new
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

        # 终止正在运行中的函数异步事件

        # @param request: Request instance for TerminateAsyncEvent.
        # @type request: :class:`Tencentcloud::scf::V20180416::TerminateAsyncEventRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::TerminateAsyncEventResponse`
        def TerminateAsyncEvent(request)
          body = send_request('TerminateAsyncEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TerminateAsyncEventResponse.new
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

        # 更新别名的配置

        # @param request: Request instance for UpdateAlias.
        # @type request: :class:`Tencentcloud::scf::V20180416::UpdateAliasRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::UpdateAliasResponse`
        def UpdateAlias(request)
          body = send_request('UpdateAlias', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateAliasResponse.new
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

        # 该接口根据传入参数更新函数代码。

        # @param request: Request instance for UpdateFunctionCode.
        # @type request: :class:`Tencentcloud::scf::V20180416::UpdateFunctionCodeRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::UpdateFunctionCodeResponse`
        def UpdateFunctionCode(request)
          body = send_request('UpdateFunctionCode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateFunctionCodeResponse.new
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

        # 该接口根据传入参数更新函数配置。

        # @param request: Request instance for UpdateFunctionConfiguration.
        # @type request: :class:`Tencentcloud::scf::V20180416::UpdateFunctionConfigurationRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::UpdateFunctionConfigurationResponse`
        def UpdateFunctionConfiguration(request)
          body = send_request('UpdateFunctionConfiguration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateFunctionConfigurationResponse.new
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

        # 更新函数的异步重试配置，包括重试次数和消息保留时间

        # @param request: Request instance for UpdateFunctionEventInvokeConfig.
        # @type request: :class:`Tencentcloud::scf::V20180416::UpdateFunctionEventInvokeConfigRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::UpdateFunctionEventInvokeConfigResponse`
        def UpdateFunctionEventInvokeConfig(request)
          body = send_request('UpdateFunctionEventInvokeConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateFunctionEventInvokeConfigResponse.new
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

        # 更新命名空间

        # @param request: Request instance for UpdateNamespace.
        # @type request: :class:`Tencentcloud::scf::V20180416::UpdateNamespaceRequest`
        # @rtype: :class:`Tencentcloud::scf::V20180416::UpdateNamespaceResponse`
        def UpdateNamespace(request)
          body = send_request('UpdateNamespace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateNamespaceResponse.new
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