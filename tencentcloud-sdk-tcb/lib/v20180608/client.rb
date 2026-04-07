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
  module Tcb
    module V20180608
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-06-08'
            api_endpoint = 'tcb.tencentcloudapi.com'
            sdk_version = 'TCB_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 添加身份认证源。在指定云开发环境下创建一个新的身份认证源，支持 OAuth 2.0、OIDC、SAML 2.0 等标准协议，以及自定义登录和邮箱登录等多种认证方式。
        # 创建时需指定身份源协议类型（ProviderType）并配置对应的协议连接参数（Config）。若身份源 ID 已存在将返回错误。
        # 限制：一个环境最大可允许加入20个认证源。

        # @param request: Request instance for AddProvider.
        # @type request: :class:`Tencentcloud::tcb::V20180608::AddProviderRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::AddProviderResponse`
        def AddProvider(request)
          body = send_request('AddProvider', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddProviderResponse.new
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

        # 检查是否开通Tcb服务

        # @param request: Request instance for CheckTcbService.
        # @type request: :class:`Tencentcloud::tcb::V20180608::CheckTcbServiceRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::CheckTcbServiceResponse`
        def CheckTcbService(request)
          body = send_request('CheckTcbService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckTcbServiceResponse.new
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

        # 创建云开发平台的API Key。在指定云开发环境下创建一个 API Key 访问凭证。支持两种类型：api_key（服务端管理员访问凭证，以管理员身份签发，可设置有效期，不设置有效期则永不过期，单个环境最多创建 5 个）和 publish_key（前端匿名访问凭证，固定有效期，每个环境仅保留一个）。创建成功后将返回 API Key 明文 Token，该值仅在创建时返回一次，请妥善保存。需要管理员权限。

        # @param request: Request instance for CreateApiKey.
        # @type request: :class:`Tencentcloud::tcb::V20180608::CreateApiKeyRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::CreateApiKeyResponse`
        def CreateApiKey(request)
          body = send_request('CreateApiKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateApiKeyResponse.new
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

        # 增加安全域名。
        # 云开发会校验网页应用请求的来源域名，您需要将来源域名加入到WEB安全域名列表中。
        # 可以通过接口 [DescribeAuthDomains](https://cloud.tencent.com/document/product/876/42151) 获取当前已绑定生效的安全域名。

        # 注意⚠️
        #   安全域名绑定成功之后，需要几分钟时间逐步生效。

        # @param request: Request instance for CreateAuthDomain.
        # @type request: :class:`Tencentcloud::tcb::V20180608::CreateAuthDomainRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::CreateAuthDomainResponse`
        def CreateAuthDomain(request)
          body = send_request('CreateAuthDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAuthDomainResponse.new
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

        # 创建云开发产品计费订单，用于以下几种场景：
        # 1. 购买云开发环境
        # 2. 续费云开发环境
        # 3. 变更云开发环境套餐
        # 4. 购买云开发资源包
        # 5. 购买云开发大促包

        # 该接口支持下单并支付(CreateAndPay=true时)，此时会自动在腾讯云账户中扣除余额（余额不足会下单失败）。
        # 该接口支持自动扣除代金券（AutoVoucher=true时），符合条件的代金券会被自动扣除。

        # @param request: Request instance for CreateBillDeal.
        # @type request: :class:`Tencentcloud::tcb::V20180608::CreateBillDealRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::CreateBillDealResponse`
        def CreateBillDeal(request)
          body = send_request('CreateBillDeal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBillDealResponse.new
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

        # 创建自定义登录密钥。在指定云开发环境下生成一对 RSA 1024 位非对称密钥对，系统仅存储公钥，私钥仅在创建时返回一次且不可恢复，请妥善保存。创建新密钥后，该环境下原有未设置过期时间的旧密钥将被自动标记为 2 小时后过期，请确保客户端及时更新密钥配置。
        # 返回的 KeyID 和 PrivateKey 需与环境 ID 一起组装为 JSON 配置文件，供客户端 Admin SDK 初始化时使用，文件格式如下：
        # {
        #   "private_key_id": "<返回的 KeyID>",
        #   "private_key": "<返回的 PrivateKey>",
        #   "env_id": "<请求时传入的 EnvId>"
        # }

        # @param request: Request instance for CreateCustomLoginKey.
        # @type request: :class:`Tencentcloud::tcb::V20180608::CreateCustomLoginKeyRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::CreateCustomLoginKeyResponse`
        def CreateCustomLoginKey(request)
          body = send_request('CreateCustomLoginKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCustomLoginKeyResponse.new
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

        # 本接口用于购买云开发环境。
        # 该接口会自动下单并支付，会在腾讯云账户中扣除余额（余额不足会下单失败）。
        # 该接口支持自动扣除代金券（AutoVoucher=true时），符合条件的代金券会被自动扣除。
        # 环境下单成功之后会返回EnvId。EnvId是全局唯一表示。
        # 环境发货是异步行为，后续可以通过接口 [DescribeEnvs ](https://cloud.tencent.com/document/product/876/34820) 查询环境状态和各项资源信息；通过 [DescribeBillingInfo](https://cloud.tencent.com/document/product/876/94390) 查询环境套餐信息，包括 到期时间、当前套餐等。

        # @param request: Request instance for CreateEnv.
        # @type request: :class:`Tencentcloud::tcb::V20180608::CreateEnvRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::CreateEnvResponse`
        def CreateEnv(request)
          body = send_request('CreateEnv', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEnvResponse.new
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

        # **创建环境日志资源**

        # 环境开通后，若用户需要开启检索日志功能，需调用此接口进行日志资源的开通。

        # > **注意**：日志资源的开通为**异步操作**，接口调用成功后并不代表日志资源已立即可用。

        # **如何确认日志开通状态：**

        # 可通过 [DescribeEnvs](https://cloud.tencent.com/document/product/876/34820) 接口轮询查询日志开通结果，建议每 5 秒轮询一次，最长等待 5 分钟。在返回的数据结构 [EnvInfo](https://cloud.tencent.com/document/api/876/34822#EnvInfo) 中，检查 `LogServices` 字段下 `LogServiceInfo` 是否包含有效的日志主题（Topic）等相关信息，以此判断日志资源是否已成功开通：

        # - **已开通**：`LogServiceInfo` 中存在日志主题 ID 等有效信息
        # - **未开通 / 开通中**：`LogServiceInfo` 为空或相关字段缺失

        # @param request: Request instance for CreateEnvResource.
        # @type request: :class:`Tencentcloud::tcb::V20180608::CreateEnvResourceRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::CreateEnvResourceResponse`
        def CreateEnvResource(request)
          body = send_request('CreateEnvResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEnvResourceResponse.new
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

        # 本接口CreateHTTPServiceRoute用于创建HTTP访问服务路由。如果不传Domain.Routes，仅创建域名信息。首次创建域名后需要调用DescribeHTTPServiceRoute查询域名状态，如果状态是PROCESSING，需要轮询查询域名状态直到SUCCESS或者FAIL。如果状态是FAIL，可以删除后重新创建。创建成功后域名可能无法访问，原因是异步下发的路由，可通过http或者https探测路由是否下发，如果http访问返回404或者https访问握手失败，可等待一会再试，直到访问正常。此外HTTP访问服务提供了默认域名，通过DescribeHTTPServiceRoute接口可直接获取默认域名。

        # @param request: Request instance for CreateHTTPServiceRoute.
        # @type request: :class:`Tencentcloud::tcb::V20180608::CreateHTTPServiceRouteRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::CreateHTTPServiceRouteResponse`
        def CreateHTTPServiceRoute(request)
          body = send_request('CreateHTTPServiceRoute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateHTTPServiceRouteResponse.new
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

        # 创建托管域名

        # @param request: Request instance for CreateHostingDomain.
        # @type request: :class:`Tencentcloud::tcb::V20180608::CreateHostingDomainRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::CreateHostingDomainResponse`
        def CreateHostingDomain(request)
          body = send_request('CreateHostingDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateHostingDomainResponse.new
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

        # 本接口（CreateMySQL）用于开通Mysql型数据库。

        # 开通后，可通过 [DescribeCreateMySQLResult ](https://cloud.tencent.com/document/api/876/128185) 查询开通结果，Mysql开通成功后，可通过接口设置数据库账号相关功能包括但不限于【创建账号、删除账号、查询可授权权限列表、查询账号已有权限、修改主机、修改配置、修改账号库表权限】、集群操作相关【查询集群参数、修改集群参数】，连接设置相关【关闭外网、开通外网、查询集群信息】，备份回档相关【创建手动回档、删除手动回档、修改自动备份配置信息、查询备份文件列表、集群回档、查询任务列表、获取table列表、获取集群数据库列表、查询备份下载地址】，相关功能接口文档：[TDSQL-C MySQL API文档](https://cloud.tencent.com/document/product/1003/48106)，可以通过 [RunSql](https://cloud.tencent.com/document/api/876/127880) 接口来执行 sql 命令，比如创建表格、插入数据、删除表格等 sql 命令。

        # @param request: Request instance for CreateMySQL.
        # @type request: :class:`Tencentcloud::tcb::V20180608::CreateMySQLRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::CreateMySQLResponse`
        def CreateMySQL(request)
          body = send_request('CreateMySQL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMySQLResponse.new
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

        # 创建静态托管资源，包括COS和CDN，异步任务创建，查看创建结果需要根据DescribeStaticStore接口来查看

        # @param request: Request instance for CreateStaticStore.
        # @type request: :class:`Tencentcloud::tcb::V20180608::CreateStaticStoreRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::CreateStaticStoreResponse`
        def CreateStaticStore(request)
          body = send_request('CreateStaticStore', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateStaticStoreResponse.new
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

        # 本接口(CreateTable)用于创建文档型数据库表，支持创建capped类型集合，暂时不支持分片表。

        # @param request: Request instance for CreateTable.
        # @type request: :class:`Tencentcloud::tcb::V20180608::CreateTableRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::CreateTableResponse`
        def CreateTable(request)
          body = send_request('CreateTable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTableResponse.new
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

        # 创建tcb用户

        # @param request: Request instance for CreateUser.
        # @type request: :class:`Tencentcloud::tcb::V20180608::CreateUserRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::CreateUserResponse`
        def CreateUser(request)
          body = send_request('CreateUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUserResponse.new
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

        # 创建虚拟服务器
        # 创建流程为先调用[DescribeVmSpec](https://cloud.tencent.com/document/product/876/129360)获取可购买的规格，同时调用[DescribeBlueprints](https://cloud.tencent.com/document/product/1207/47689)拉取镜像列表，选中一个规格和一个镜像后，调用[InquireVmPrice](https://cloud.tencent.com/document/product/876/129759)询价，如果价格可接受，调用此接口创建实例

        # @param request: Request instance for CreateVmInstance.
        # @type request: :class:`Tencentcloud::tcb::V20180608::CreateVmInstanceRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::CreateVmInstanceResponse`
        def CreateVmInstance(request)
          body = send_request('CreateVmInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVmInstanceResponse.new
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

        # 删除指定云开发环境下的某个 API Key 服务端访问凭证。删除后，该 API Key 对应的 Token 将被吊销，已使用该 Key 发起的请求将失败。该操作具有幂等性，若指定的 API Key 不存在则直接返回成功。需要管理员权限。

        # @param request: Request instance for DeleteApiKey.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DeleteApiKeyRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DeleteApiKeyResponse`
        def DeleteApiKey(request)
          body = send_request('DeleteApiKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteApiKeyResponse.new
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

        # 删除合法域名。
        # 云开发会校验网页应用请求的来源域名，您需要将来源域名加入到WEB安全域名列表中。
        # 可以通过接口 [DescribeAuthDomains](https://cloud.tencent.com/document/product/876/42151) 获取当前已绑定生效的安全域名，将对应安全域名的id填入Domainlds中

        # 注意⚠️
        # 安全域名被删除之后，可能会引起跨域问题，请谨慎操作。

        # @param request: Request instance for DeleteAuthDomain.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DeleteAuthDomainRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DeleteAuthDomainResponse`
        def DeleteAuthDomain(request)
          body = send_request('DeleteAuthDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAuthDomainResponse.new
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

        # 本接口DeleteHTTPServiceRoute用于删除HTTP访问服务域名或者路由。可批量删除多条path路由、删除域名及所有path路由，如果Paths字段为空则删除域名及所有path路由，如果Paths不为空则仅删除path路由。

        # @param request: Request instance for DeleteHTTPServiceRoute.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DeleteHTTPServiceRouteRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DeleteHTTPServiceRouteResponse`
        def DeleteHTTPServiceRoute(request)
          body = send_request('DeleteHTTPServiceRoute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteHTTPServiceRouteResponse.new
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

        # 删除认证源

        # @param request: Request instance for DeleteProvider.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DeleteProviderRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DeleteProviderResponse`
        def DeleteProvider(request)
          body = send_request('DeleteProvider', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteProviderResponse.new
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

        # 本接口(DeleteTable)用于删除文档型数据库表，删除表后表中数据将会被删除且无法恢复，请谨慎操作。

        # 接口入参中的 Tag 为文档型数据库的实例 Id，可以通过 [DescribeEnvs](https://cloud.tencent.com/document/api/876/34820) 接口返回的 EnvList[0].Databases[0].InstanceId 获取。

        # @param request: Request instance for DeleteTable.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DeleteTableRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DeleteTableResponse`
        def DeleteTable(request)
          body = send_request('DeleteTable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTableResponse.new
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

        # 删除tcb用户

        # @param request: Request instance for DeleteUsers.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DeleteUsersRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DeleteUsersResponse`
        def DeleteUsers(request)
          body = send_request('DeleteUsers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteUsersResponse.new
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

        # 销毁云服务器实例

        # @param request: Request instance for DeleteVmInstance.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DeleteVmInstanceRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DeleteVmInstanceResponse`
        def DeleteVmInstance(request)
          body = send_request('DeleteVmInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteVmInstanceResponse.new
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

        # 查询 API Key 列表。分页查询指定云开发环境下的 API Key 访问凭证列表。支持按类型过滤（api_key 或 publish_key）。未指定类型时，默认仅返回 api_key 类型的记录。列表查询中 api_key 类型的令牌值将进行脱敏处理（仅保留前后各 6 位字符）；publish_key 类型始终返回完整明文。接口需要管理员权限。

        # @param request: Request instance for DescribeApiKeyList.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeApiKeyListRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeApiKeyListResponse`
        def DescribeApiKeyList(request)
          body = send_request('DescribeApiKeyList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApiKeyListResponse.new
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

        # 本接口用于获取当前环境的安全域名列表。
        # 云开发会校验网页应用请求的来源域名，您需要将来源域名加入到WEB安全域名列表中。
        # 可以通过接口 [CreateAuthDomain](https://cloud.tencent.com/document/product/876/42764) 增加安全域名。

        # @param request: Request instance for DescribeAuthDomains.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeAuthDomainsRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeAuthDomainsResponse`
        def DescribeAuthDomains(request)
          body = send_request('DescribeAuthDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAuthDomainsResponse.new
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

        # 获取新套餐列表，含详情，如果传了PackageId，则只获取指定套餐详情

        # @param request: Request instance for DescribeBaasPackageList.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeBaasPackageListRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeBaasPackageListResponse`
        def DescribeBaasPackageList(request)
          body = send_request('DescribeBaasPackageList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaasPackageListResponse.new
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

        # 获取计费相关信息

        # @param request: Request instance for DescribeBillingInfo.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeBillingInfoRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeBillingInfoResponse`
        def DescribeBillingInfo(request)
          body = send_request('DescribeBillingInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillingInfoResponse.new
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

        # 查询客户端详情。获取指定云开发环境下某个客户端的配置信息，包括客户端基本信息（名称、图标、描述）、OAuth 凭证（ClientId、ClientSecret）、安全域名、允许的 Scope 列表、Token 有效期、会话控制策略等。当客户端 ID 等于环境 ID 时，返回该环境的默认客户端配置。

        # @param request: Request instance for DescribeClient.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeClientRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeClientResponse`
        def DescribeClient(request)
          body = send_request('DescribeClient', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClientResponse.new
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

        # 获取云托管代码上传url

        # @param request: Request instance for DescribeCloudBaseBuildService.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseBuildServiceRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseBuildServiceResponse`
        def DescribeCloudBaseBuildService(request)
          body = send_request('DescribeCloudBaseBuildService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudBaseBuildServiceResponse.new
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

        # 查询服务版本的详情，CPU和MEM  请使用CPUSize和MemSize

        # @param request: Request instance for DescribeCloudBaseRunServerVersion.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseRunServerVersionRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseRunServerVersionResponse`
        def DescribeCloudBaseRunServerVersion(request)
          body = send_request('DescribeCloudBaseRunServerVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudBaseRunServerVersionResponse.new
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

        # 本接口（DescribeCreateMySQLResult）用于查询开通Mysql结果。

        # `Response.Data.Status = "notexist"` 表示未开通，如果未开通，可以调用 [CreateMySQL](https://cloud.tencent.com/document/api/876/128186) 来开通
        #  `Response.Data. Status = "success"` 表示开通成功，Mysql开通成功后，可通过接口设置数据库账号相关功能包括但不限于【创建账号、删除账号、查询可授权权限列表、查询账号已有权限、修改主机、修改配置、修改账号库表权限】、集群操作相关【查询集群参数、修改集群参数】，连接设置相关【关闭外网、开通外网、查询集群信息】，备份回档相关【创建手动回档、删除手动回档、修改自动备份配置信息、查询备份文件列表、集群回档、查询任务列表、获取table列表、获取集群数据库列表、查询备份下载地址】，相关功能接口文档：[TDSQL-C MySQL API文档](https://cloud.tencent.com/document/product/1003/48106)，可以通过 [RunSql](https://cloud.tencent.com/document/api/876/127880) 接口来执行 sql 命令，比如创建表格、插入数据、删除表格等 MySql 命令。

        # @param request: Request instance for DescribeCreateMySQLResult.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeCreateMySQLResultRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeCreateMySQLResultResponse`
        def DescribeCreateMySQLResult(request)
          body = send_request('DescribeCreateMySQLResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCreateMySQLResultResponse.new
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

        # 根据指定指标名称，查询某环境在指定时间范围内的监控数据，返回按统计粒度聚合后的时序数据。

        # @param request: Request instance for DescribeCurveData.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeCurveDataRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeCurveDataResponse`
        def DescribeCurveData(request)
          body = send_request('DescribeCurveData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCurveDataResponse.new
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

        # 本接口（DescribeDatabaseACL）获取文档型数据库权限。

        # @param request: Request instance for DescribeDatabaseACL.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeDatabaseACLRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeDatabaseACLResponse`
        def DescribeDatabaseACL(request)
          body = send_request('DescribeDatabaseACL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDatabaseACLResponse.new
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

        # 查询环境计费周期。
        # 云开发环境的资源点都是按月结算的，每个月都有一定的抵扣额度。

        # 例如：
        #   某个环境在 2026-01-05 购买了3个月个人版(到期时间: 2026-04-05)，则他可以在以下3个周期内，分别享有40000资源点的额度：
        #   1. 2026-01-05 ~ 2026-02-05 23:59:59
        #   2. 2026-02-06 ~ 2026-03-05 23:59:59
        #   3. 2026-03-06 ~ 2026-04-05 23:59:59

        # 本接口，用于获取环境当前属于哪个计费周期内。

        # @param request: Request instance for DescribeEnvAccountCircle.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeEnvAccountCircleRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeEnvAccountCircleResponse`
        def DescribeEnvAccountCircle(request)
          body = send_request('DescribeEnvAccountCircle', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEnvAccountCircleResponse.new
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

        # 查询环境个数上限

        # @param request: Request instance for DescribeEnvLimit.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeEnvLimitRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeEnvLimitResponse`
        def DescribeEnvLimit(request)
          body = send_request('DescribeEnvLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEnvLimitResponse.new
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

        # @param request: Request instance for DescribeEnvs.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeEnvsRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeEnvsResponse`
        def DescribeEnvs(request)
          body = send_request('DescribeEnvs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEnvsResponse.new
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

        # 查询网关版本信息
        # 暂不鉴权

        # @param request: Request instance for DescribeGatewayVersions.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeGatewayVersionsRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeGatewayVersionsResponse`
        def DescribeGatewayVersions(request)
          body = send_request('DescribeGatewayVersions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGatewayVersionsResponse.new
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

        # 本接口DescribeHTTPServiceRoute用于查询环境下HTTP访问服务路由信息。可通过Filters过滤。如果不存在不会返回错误。HTTP访问服务提供了默认域名，通过本接口可直接获取默认域名。

        # @param request: Request instance for DescribeHTTPServiceRoute.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeHTTPServiceRouteRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeHTTPServiceRouteResponse`
        def DescribeHTTPServiceRoute(request)
          body = send_request('DescribeHTTPServiceRoute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHTTPServiceRouteResponse.new
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

        # 查询静态托管域名任务状态

        # @param request: Request instance for DescribeHostingDomainTask.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeHostingDomainTaskRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeHostingDomainTaskResponse`
        def DescribeHostingDomainTask(request)
          body = send_request('DescribeHostingDomainTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostingDomainTaskResponse.new
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

        # 查询指定云开发环境的登录策略配置。包括手机号短信登录、邮箱登录、用户名密码登录和匿名登录方式的开启状态，同时包含短信验证码发送通道、MFA 多因子认证和密码的更新策略。

        # @param request: Request instance for DescribeLoginConfig.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeLoginConfigRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeLoginConfigResponse`
        def DescribeLoginConfig(request)
          body = send_request('DescribeLoginConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLoginConfigResponse.new
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

        # 本接口（DescribeMySQLClusterDetail）查询Mysql集群信息。

        # 调用该接口前需要先查询Mysql是否开通，可通过 [DescribeCreateMySQLResult ](https://cloud.tencent.com/document/api/876/128185) 查询，只有已开通的才能查到集群信息，Mysql开通成功后，可通过接口设置数据库账号相关功能包括但不限于【创建账号、删除账号、查询可授权权限列表、查询账号已有权限、修改主机、修改配置、修改账号库表权限】、集群操作相关【查询集群参数、修改集群参数】，连接设置相关【关闭外网、开通外网、查询集群信息】，备份回档相关【创建手动回档、删除手动回档、修改自动备份配置信息、查询备份文件列表、集群回档、查询任务列表、获取table列表、获取集群数据库列表、查询备份下载地址】，相关功能接口文档：[TDSQL-C MySQL API文档](https://cloud.tencent.com/document/product/1003/48106)，可以通过 [RunSql](https://cloud.tencent.com/document/api/876/127880) 接口来执行 MySql 命令，比如创建表格、插入数据、删除表格等 MySql 命令。

        # @param request: Request instance for DescribeMySQLClusterDetail.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeMySQLClusterDetailRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeMySQLClusterDetailResponse`
        def DescribeMySQLClusterDetail(request)
          body = send_request('DescribeMySQLClusterDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMySQLClusterDetailResponse.new
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

        # 本接口（DescribeMySQLTaskStatus）用于查询Mysql任务状态。

        # @param request: Request instance for DescribeMySQLTaskStatus.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeMySQLTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeMySQLTaskStatusResponse`
        def DescribeMySQLTaskStatus(request)
          body = send_request('DescribeMySQLTaskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMySQLTaskStatusResponse.new
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

        # 查询指定指标的配额使用量

        # @param request: Request instance for DescribeQuotaData.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeQuotaDataRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeQuotaDataResponse`
        def DescribeQuotaData(request)
          body = send_request('DescribeQuotaData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeQuotaDataResponse.new
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

        # 查询数据库安全规则。
        # 安全规则，用于控制C端用户的访问权限。详见 [安全规则介绍](https://cloud.tencent.com/document/product/876/123478) 。

        # @param request: Request instance for DescribeSafeRule.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeSafeRuleRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeSafeRuleResponse`
        def DescribeSafeRule(request)
          body = send_request('DescribeSafeRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSafeRuleResponse.new
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

        # 查看当前环境下静态托管资源信息，根据返回结果判断静态资源的状态

        # @param request: Request instance for DescribeStaticStore.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeStaticStoreRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeStaticStoreResponse`
        def DescribeStaticStore(request)
          body = send_request('DescribeStaticStore', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStaticStoreResponse.new
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

        # 本接口（DescribeTable）用于查询文档型数据库表的相关信息，包括索引等信息。

        # 接口入参中的 Tag 为文档型数据库的实例 Id，可以通过 [DescribeEnvs](https://cloud.tencent.com/document/api/876/34820) 接口返回的 EnvList[0].Databases[0].InstanceId 获取。

        # @param request: Request instance for DescribeTable.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeTableRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeTableResponse`
        def DescribeTable(request)
          body = send_request('DescribeTable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTableResponse.new
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

        # 本接口(DescribeTables)用于查询文档型数据库所有表信息，包括表名、表中数据条数、表中数据量、索引个数及索引的大小等。

        # @param request: Request instance for DescribeTables.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeTablesRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeTablesResponse`
        def DescribeTables(request)
          body = send_request('DescribeTables', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTablesResponse.new
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

        # 查询tcb用户列表

        # @param request: Request instance for DescribeUserList.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeUserListRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeUserListResponse`
        def DescribeUserList(request)
          body = send_request('DescribeUserList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserListResponse.new
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

        # 查询环境下的云服务器列表

        # @param request: Request instance for DescribeVmInstances.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeVmInstancesRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeVmInstancesResponse`
        def DescribeVmInstances(request)
          body = send_request('DescribeVmInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVmInstancesResponse.new
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

        # 云服务器规格list

        # @param request: Request instance for DescribeVmSpec.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeVmSpecRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeVmSpecResponse`
        def DescribeVmSpec(request)
          body = send_request('DescribeVmSpec', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVmSpecResponse.new
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

        # 本接口用于销毁云开发环境。
        # 云开发环境遵循腾讯云包年包月预付费产品生命周期，因此环境销毁需要分两步：
        # 1. 资源退费。此时会根据当前环境剩余有效期，自动退还相关费用(代金券不退)。退款后，环境进入隔离期。
        # 2. 环境删除。环境在进入隔离期后15天会自动删除。也可以通过本接口，指定 IsForce=true 来强制删除隔离期环境。

        # **注意**⚠️
        #   1. 环境退费后进入隔离期，则所有资源均无法访问，控制台无法操作和管理。
        #   2. 环境被彻底删除后，所有数据均无法找回。请谨慎操作。

        # 可以通过接口 [tcb:DescribeBillingInfo](https://cloud.tencent.com/document/product/876/94390) 查询环境计费状态。

        # @param request: Request instance for DestroyEnv.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DestroyEnvRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DestroyEnvResponse`
        def DestroyEnv(request)
          body = send_request('DestroyEnv', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroyEnvResponse.new
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

        # 本接口（DestroyMySQL）用于销毁Mysql。

        # 销毁后可以通过 [DescribeMySQLTaskStatus](https://cloud.tencent.com/document/api/876/128183) 接口查询销毁结果，如果 `Response.Data. Status = FAILED ` 表示销毁失败，可以重新调用销毁接口重试。

        # @param request: Request instance for DestroyMySQL.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DestroyMySQLRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DestroyMySQLResponse`
        def DestroyMySQL(request)
          body = send_request('DestroyMySQL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroyMySQLResponse.new
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

        # 销毁静态托管资源，该接口创建异步销毁任务，资源最终状态可从DestroyStaticStore接口查看

        # @param request: Request instance for DestroyStaticStore.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DestroyStaticStoreRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DestroyStaticStoreResponse`
        def DestroyStaticStore(request)
          body = send_request('DestroyStaticStore', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroyStaticStoreResponse.new
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

        # 查询指定云开发环境下的身份认证源列表。返回该环境已配置的所有身份认证源信息，包括第三方登录（OAuth、OIDC、SAML）、微信小程序登录、自定义登录和邮箱登录等。返回结果包含认证源基本信息、关联应用、配置状态及启用情况。若自定义登录或邮箱登录的身份源尚未创建，接口会自动追加一个默认关闭状态的身份源记录。

        # @param request: Request instance for GetProviders.
        # @type request: :class:`Tencentcloud::tcb::V20180608::GetProvidersRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::GetProvidersResponse`
        def GetProviders(request)
          body = send_request('GetProviders', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetProvidersResponse.new
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

        # 查询服务器价格

        # @param request: Request instance for InquireVmPrice.
        # @type request: :class:`Tencentcloud::tcb::V20180608::InquireVmPriceRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::InquireVmPriceResponse`
        def InquireVmPrice(request)
          body = send_request('InquireVmPrice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquireVmPriceResponse.new
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

        # 本接口(ListTables)用于查询文档型数据库所有表信息，包括表名、表中数据条数、表中数据量、索引个数及索引的大小等。

        # 该接口跟 [DescribeTables](https://cloud.tencent.com/document/api/876/127962) 接口功能一致，后续该接口可能会下线，请使用 [DescribeTable](https://cloud.tencent.com/document/api/876/127962)接口。

        # @param request: Request instance for ListTables.
        # @type request: :class:`Tencentcloud::tcb::V20180608::ListTablesRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::ListTablesResponse`
        def ListTables(request)
          body = send_request('ListTables', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListTablesResponse.new
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

        # 修改客户端配置。采用增量更新策略，仅更新请求中传入的非空字段，未传入的字段保持原值不变。支持修改客户端基本信息（名称、图标、描述、主页地址）、安全域名、允许的 Scope 列表、Token 有效期、会话控制策略及启用状态等配置。
        # Id、Secret、CreatedAt、Meta 等字段在该接口中不可修改，当客户端 ID 等于环境 ID 且客户端尚未创建时，将自动创建默认客户端配置。

        # @param request: Request instance for ModifyClient.
        # @type request: :class:`Tencentcloud::tcb::V20180608::ModifyClientRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::ModifyClientResponse`
        def ModifyClient(request)
          body = send_request('ModifyClient', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClientResponse.new
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

        # 修改日志主题

        # @param request: Request instance for ModifyClsTopic.
        # @type request: :class:`Tencentcloud::tcb::V20180608::ModifyClsTopicRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::ModifyClsTopicResponse`
        def ModifyClsTopic(request)
          body = send_request('ModifyClsTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClsTopicResponse.new
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

        # 本接口（ModifyDatabaseACL）用于修改文档型数据库权限。

        # @param request: Request instance for ModifyDatabaseACL.
        # @type request: :class:`Tencentcloud::tcb::V20180608::ModifyDatabaseACLRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::ModifyDatabaseACLResponse`
        def ModifyDatabaseACL(request)
          body = send_request('ModifyDatabaseACL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDatabaseACLResponse.new
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

        # 更新环境信息

        # @param request: Request instance for ModifyEnv.
        # @type request: :class:`Tencentcloud::tcb::V20180608::ModifyEnvRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::ModifyEnvResponse`
        def ModifyEnv(request)
          body = send_request('ModifyEnv', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEnvResponse.new
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

        # 本接口用于变更云开发环境套餐。
        # 该接口会自动下单并支付，会在腾讯云账户中扣除余额（余额不足会下单失败）。
        # 该接口支持自动扣除代金券（AutoVoucher=true时），符合条件的代金券会被自动扣除。

        # @param request: Request instance for ModifyEnvPlan.
        # @type request: :class:`Tencentcloud::tcb::V20180608::ModifyEnvPlanRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::ModifyEnvPlanResponse`
        def ModifyEnvPlan(request)
          body = send_request('ModifyEnvPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEnvPlanResponse.new
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

        # 本接口ModifyHTTPServiceRoute用于修改HTTP访问服务路由。支持增量修改，对应字段不传参数则不修改

        # @param request: Request instance for ModifyHTTPServiceRoute.
        # @type request: :class:`Tencentcloud::tcb::V20180608::ModifyHTTPServiceRouteRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::ModifyHTTPServiceRouteResponse`
        def ModifyHTTPServiceRoute(request)
          body = send_request('ModifyHTTPServiceRoute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyHTTPServiceRouteResponse.new
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

        # 修改指定云开发环境的登录策略配置。支持开启或关闭手机号短信登录、邮箱登录、用户名密码登录和匿名登录，同时可配置短信验证码发送通道、MFA 多因子认证和密码更新策略。
        # 修改后立即生效，影响该环境下所有终端用户的登录行为。

        # @param request: Request instance for ModifyLoginConfig.
        # @type request: :class:`Tencentcloud::tcb::V20180608::ModifyLoginConfigRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::ModifyLoginConfigResponse`
        def ModifyLoginConfig(request)
          body = send_request('ModifyLoginConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLoginConfigResponse.new
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

        # 修改身份认证源。更新指定云开发环境下已有身份认证源的配置信息，支持修改基本信息（名称、图标、描述）、协议连接配置（ClientId、ClientSecret、端点地址等）、登录行为控制（透传模式、自动注册、邮箱/手机号自动关联）以及启用状态。
        # 对于 OIDC 类型身份源，修改 Issuer 后将自动通过 OpenID Connect Discovery 重新获取端点配置。
        # 若自定义登录（CUSTOM）或邮箱登录（EMAIL）身份源尚不存在，调用该接口时将自动创建。

        # @param request: Request instance for ModifyProvider.
        # @type request: :class:`Tencentcloud::tcb::V20180608::ModifyProviderRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::ModifyProviderResponse`
        def ModifyProvider(request)
          body = send_request('ModifyProvider', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProviderResponse.new
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

        # 设置数据库安全规则。
        # 安全规则，用于控制C端用户的访问权限。详见 [安全规则介绍 ](https://cloud.tencent.com/document/product/876/123478)。

        # @param request: Request instance for ModifySafeRule.
        # @type request: :class:`Tencentcloud::tcb::V20180608::ModifySafeRuleRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::ModifySafeRuleResponse`
        def ModifySafeRule(request)
          body = send_request('ModifySafeRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySafeRuleResponse.new
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

        # 修改tcb用户

        # @param request: Request instance for ModifyUser.
        # @type request: :class:`Tencentcloud::tcb::V20180608::ModifyUserRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::ModifyUserResponse`
        def ModifyUser(request)
          body = send_request('ModifyUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUserResponse.new
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

        # 本接口用于云开发环境套餐续费。
        # 该接口会自动下单并支付，会在腾讯云账户中扣除余额（余额不足会下单失败）。
        # 该接口支持自动扣除代金券（AutoVoucher=true时），符合条件的代金券会被自动扣除。

        # @param request: Request instance for RenewEnv.
        # @type request: :class:`Tencentcloud::tcb::V20180608::RenewEnvRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::RenewEnvResponse`
        def RenewEnv(request)
          body = send_request('RenewEnv', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewEnvResponse.new
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

        # 本接口（RunCommands）用于执行文档型数据库命令。

        # @param request: Request instance for RunCommands.
        # @type request: :class:`Tencentcloud::tcb::V20180608::RunCommandsRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::RunCommandsResponse`
        def RunCommands(request)
          body = send_request('RunCommands', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunCommandsResponse.new
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

        # 本接口（RunSql）用于执行MySQL语句。

        # 该接口用来执行 MySql 语句，比如创建表格、插入数据、修改数据、删除字段、添加索引等可以通过sql 语句实现的都可以使用该接口。

        # 调用该接口前需要先查询Mysql是否开通，可通过 [DescribeCreateMySQLResult ](https://cloud.tencent.com/document/api/876/128185) 查询，只有开通成功才能操作。

        # @param request: Request instance for RunSql.
        # @type request: :class:`Tencentcloud::tcb::V20180608::RunSqlRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::RunSqlResponse`
        def RunSql(request)
          body = send_request('RunSql', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunSqlResponse.new
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

        # 搜索用户调用日志

        # @param request: Request instance for SearchClsLog.
        # @type request: :class:`Tencentcloud::tcb::V20180608::SearchClsLogRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::SearchClsLogResponse`
        def SearchClsLog(request)
          body = send_request('SearchClsLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchClsLogResponse.new
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

        # 本接口(UpdateTable)用于修改文档型数据库表信息，当前可以支持创建和删除索引。

        # @param request: Request instance for UpdateTable.
        # @type request: :class:`Tencentcloud::tcb::V20180608::UpdateTableRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::UpdateTableResponse`
        def UpdateTable(request)
          body = send_request('UpdateTable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateTableResponse.new
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