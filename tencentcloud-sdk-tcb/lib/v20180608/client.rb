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


        # 绑定云开发自定义域名，用于云接入和静态托管

        # @param request: Request instance for BindCloudBaseAccessDomain.
        # @type request: :class:`Tencentcloud::tcb::V20180608::BindCloudBaseAccessDomainRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::BindCloudBaseAccessDomainResponse`
        def BindCloudBaseAccessDomain(request)
          body = send_request('BindCloudBaseAccessDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindCloudBaseAccessDomainResponse.new
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

        # 绑定自定义域名

        # @param request: Request instance for BindCloudBaseGWDomain.
        # @type request: :class:`Tencentcloud::tcb::V20180608::BindCloudBaseGWDomainRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::BindCloudBaseGWDomainResponse`
        def BindCloudBaseGWDomain(request)
          body = send_request('BindCloudBaseGWDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindCloudBaseGWDomainResponse.new
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

        # 绑定另外一个环境下的网关，callContainer请求可以访问到该网关

        # @param request: Request instance for BindEnvGateway.
        # @type request: :class:`Tencentcloud::tcb::V20180608::BindEnvGatewayRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::BindEnvGatewayResponse`
        def BindEnvGateway(request)
          body = send_request('BindEnvGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindEnvGatewayResponse.new
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

        # TCB云API统一入口

        # @param request: Request instance for CommonServiceAPI.
        # @type request: :class:`Tencentcloud::tcb::V20180608::CommonServiceAPIRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::CommonServiceAPIResponse`
        def CommonServiceAPI(request)
          body = send_request('CommonServiceAPI', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CommonServiceAPIResponse.new
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

        # 创建云开发项目

        # @param request: Request instance for CreateAndDeployCloudBaseProject.
        # @type request: :class:`Tencentcloud::tcb::V20180608::CreateAndDeployCloudBaseProjectRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::CreateAndDeployCloudBaseProjectResponse`
        def CreateAndDeployCloudBaseProject(request)
          body = send_request('CreateAndDeployCloudBaseProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAndDeployCloudBaseProjectResponse.new
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

        # 创建云开发网关API

        # @param request: Request instance for CreateCloudBaseGWAPI.
        # @type request: :class:`Tencentcloud::tcb::V20180608::CreateCloudBaseGWAPIRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::CreateCloudBaseGWAPIResponse`
        def CreateCloudBaseGWAPI(request)
          body = send_request('CreateCloudBaseGWAPI', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudBaseGWAPIResponse.new
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

        # 开通容器托管的资源，包括集群创建，VPC配置，异步任务创建，镜像托管，Coding等，查看创建结果需要根据DescribeCloudBaseRunResource接口来查看

        # @param request: Request instance for CreateCloudBaseRunResource.
        # @type request: :class:`Tencentcloud::tcb::V20180608::CreateCloudBaseRunResourceRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::CreateCloudBaseRunResourceResponse`
        def CreateCloudBaseRunResource(request)
          body = send_request('CreateCloudBaseRunResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudBaseRunResourceResponse.new
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

        # 创建服务版本

        # @param request: Request instance for CreateCloudBaseRunServerVersion.
        # @type request: :class:`Tencentcloud::tcb::V20180608::CreateCloudBaseRunServerVersionRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::CreateCloudBaseRunServerVersionResponse`
        def CreateCloudBaseRunServerVersion(request)
          body = send_request('CreateCloudBaseRunServerVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudBaseRunServerVersionResponse.new
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

        # 开通Mysql

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

        # 开通后付费资源

        # @param request: Request instance for CreatePostpayPackage.
        # @type request: :class:`Tencentcloud::tcb::V20180608::CreatePostpayPackageRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::CreatePostpayPackageResponse`
        def CreatePostpayPackage(request)
          body = send_request('CreatePostpayPackage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePostpayPackageResponse.new
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

        # 本接口(CreateTable)用于创建表，支持创建capped类型集合，暂时不支持分片表

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

        # 删除网关API

        # @param request: Request instance for DeleteCloudBaseGWAPI.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DeleteCloudBaseGWAPIRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DeleteCloudBaseGWAPIResponse`
        def DeleteCloudBaseGWAPI(request)
          body = send_request('DeleteCloudBaseGWAPI', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudBaseGWAPIResponse.new
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

        # 删除网关域名

        # @param request: Request instance for DeleteCloudBaseGWDomain.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DeleteCloudBaseGWDomainRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DeleteCloudBaseGWDomainResponse`
        def DeleteCloudBaseGWDomain(request)
          body = send_request('DeleteCloudBaseGWDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudBaseGWDomainResponse.new
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

        # 删除云项目

        # @param request: Request instance for DeleteCloudBaseProjectLatestVersion.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DeleteCloudBaseProjectLatestVersionRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DeleteCloudBaseProjectLatestVersionResponse`
        def DeleteCloudBaseProjectLatestVersion(request)
          body = send_request('DeleteCloudBaseProjectLatestVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudBaseProjectLatestVersionResponse.new
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

        # 删除服务版本

        # @param request: Request instance for DeleteCloudBaseRunServerVersion.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DeleteCloudBaseRunServerVersionRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DeleteCloudBaseRunServerVersionResponse`
        def DeleteCloudBaseRunServerVersion(request)
          body = send_request('DeleteCloudBaseRunServerVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudBaseRunServerVersionResponse.new
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

        # 删除网关某版本

        # @param request: Request instance for DeleteGatewayVersion.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DeleteGatewayVersionRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DeleteGatewayVersionResponse`
        def DeleteGatewayVersion(request)
          body = send_request('DeleteGatewayVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteGatewayVersionResponse.new
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

        # 本接口(DeleteTable)用于删除表，删除表后表中数据将会被删除且无法恢复，请谨慎操作

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

        # 删除安全网关路由

        # @param request: Request instance for DeleteWxGatewayRoute.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DeleteWxGatewayRouteRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DeleteWxGatewayRouteResponse`
        def DeleteWxGatewayRoute(request)
          body = send_request('DeleteWxGatewayRoute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWxGatewayRouteResponse.new
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

        # 查询活动记录信息

        # @param request: Request instance for DescribeActivityRecord.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeActivityRecordRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeActivityRecordResponse`
        def DescribeActivityRecord(request)
          body = send_request('DescribeActivityRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeActivityRecordResponse.new
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

        # 查询服务版本的详情

        # @param request: Request instance for DescribeCbrServerVersion.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeCbrServerVersionRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeCbrServerVersionResponse`
        def DescribeCbrServerVersion(request)
          body = send_request('DescribeCbrServerVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCbrServerVersionResponse.new
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

        # 获取网关API列表

        # @param request: Request instance for DescribeCloudBaseGWAPI.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseGWAPIRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseGWAPIResponse`
        def DescribeCloudBaseGWAPI(request)
          body = send_request('DescribeCloudBaseGWAPI', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudBaseGWAPIResponse.new
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

        # 获取网关服务

        # @param request: Request instance for DescribeCloudBaseGWService.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseGWServiceRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseGWServiceResponse`
        def DescribeCloudBaseGWService(request)
          body = send_request('DescribeCloudBaseGWService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudBaseGWServiceResponse.new
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

        # 获取云开发项目列表

        # @param request: Request instance for DescribeCloudBaseProjectLatestVersionList.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseProjectLatestVersionListRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseProjectLatestVersionListResponse`
        def DescribeCloudBaseProjectLatestVersionList(request)
          body = send_request('DescribeCloudBaseProjectLatestVersionList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudBaseProjectLatestVersionListResponse.new
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

        # 云项目部署列表

        # @param request: Request instance for DescribeCloudBaseProjectVersionList.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseProjectVersionListRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseProjectVersionListResponse`
        def DescribeCloudBaseProjectVersionList(request)
          body = send_request('DescribeCloudBaseProjectVersionList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudBaseProjectVersionListResponse.new
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

        # 查看容器托管的集群状态

        # @param request: Request instance for DescribeCloudBaseRunResource.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseRunResourceRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseRunResourceResponse`
        def DescribeCloudBaseRunResource(request)
          body = send_request('DescribeCloudBaseRunResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudBaseRunResourceResponse.new
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

        # 查看容器托管的集群状态扩展使用

        # @param request: Request instance for DescribeCloudBaseRunResourceForExtend.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseRunResourceForExtendRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseRunResourceForExtendResponse`
        def DescribeCloudBaseRunResourceForExtend(request)
          body = send_request('DescribeCloudBaseRunResourceForExtend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudBaseRunResourceForExtendResponse.new
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

        # 查询单个服务的详情，版本以及详情

        # @param request: Request instance for DescribeCloudBaseRunServer.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseRunServerRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseRunServerResponse`
        def DescribeCloudBaseRunServer(request)
          body = send_request('DescribeCloudBaseRunServer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudBaseRunServerResponse.new
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

        # 查询服务版本详情(新)

        # @param request: Request instance for DescribeCloudBaseRunVersion.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseRunVersionRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseRunVersionResponse`
        def DescribeCloudBaseRunVersion(request)
          body = send_request('DescribeCloudBaseRunVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudBaseRunVersionResponse.new
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

        # 查询版本历史

        # @param request: Request instance for DescribeCloudBaseRunVersionSnapshot.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseRunVersionSnapshotRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseRunVersionSnapshotResponse`
        def DescribeCloudBaseRunVersionSnapshot(request)
          body = send_request('DescribeCloudBaseRunVersionSnapshot', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudBaseRunVersionSnapshotResponse.new
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

        # 查询开通Mysql结果，Mysql开通成功后，可通过接口设置数据库账号相关功能包括但不限于【创建账号、删除账号、查询可授权权限列表、查询账号已有权限、修改主机、修改配置、修改账号库表权限】、集群操作相关【查询集群参数、修改集群参数】，连接设置相关【关闭外网、开通外网、查询集群信息】，备份回档相关【创建手动回档、删除手动回档、修改自动备份配置信息、查询备份文件列表、集群回档、查询任务列表、获取table列表、获取集群数据库列表、查询备份下载地址】，相关功能接口文档：[TDSQL-C MySQL API文档](https://cloud.tencent.com/document/product/1003/48106)

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

        # 根据用户传入的指标, 拉取一段时间内的监控数据。

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

        # 获取数据库权限

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

        # 获取下载文件信息

        # @param request: Request instance for DescribeDownloadFile.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeDownloadFileRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeDownloadFileResponse`
        def DescribeDownloadFile(request)
          body = send_request('DescribeDownloadFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDownloadFileResponse.new
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

        # 获取环境下单地域

        # @param request: Request instance for DescribeEnvDealRegion.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeEnvDealRegionRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeEnvDealRegionResponse`
        def DescribeEnvDealRegion(request)
          body = send_request('DescribeEnvDealRegion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEnvDealRegionResponse.new
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

        # 查询后付费免费配额信息

        # @param request: Request instance for DescribeEnvFreeQuota.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeEnvFreeQuotaRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeEnvFreeQuotaResponse`
        def DescribeEnvFreeQuota(request)
          body = send_request('DescribeEnvFreeQuota', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEnvFreeQuotaResponse.new
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

        # 查询环境后付费计费详情

        # @param request: Request instance for DescribeEnvPostpaidDeduct.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeEnvPostpaidDeductRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeEnvPostpaidDeductResponse`
        def DescribeEnvPostpaidDeduct(request)
          body = send_request('DescribeEnvPostpaidDeduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEnvPostpaidDeductResponse.new
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

        # 描述扩展上传文件信息

        # @param request: Request instance for DescribeExtensionUploadInfo.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeExtensionUploadInfoRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeExtensionUploadInfoResponse`
        def DescribeExtensionUploadInfo(request)
          body = send_request('DescribeExtensionUploadInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExtensionUploadInfoResponse.new
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

        # 获取增值包计费相关信息

        # @param request: Request instance for DescribeExtraPkgBillingInfo.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeExtraPkgBillingInfoRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeExtraPkgBillingInfoResponse`
        def DescribeExtraPkgBillingInfo(request)
          body = send_request('DescribeExtraPkgBillingInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExtraPkgBillingInfoResponse.new
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

        # 查询网关监控数据

        # @param request: Request instance for DescribeGatewayCurveData.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeGatewayCurveDataRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeGatewayCurveDataResponse`
        def DescribeGatewayCurveData(request)
          body = send_request('DescribeGatewayCurveData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGatewayCurveDataResponse.new
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

        # 根据用户传入的指标, 拉取一段时间内的监控数据。

        # @param request: Request instance for DescribeGraphData.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeGraphDataRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeGraphDataResponse`
        def DescribeGraphData(request)
          body = send_request('DescribeGraphData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGraphDataResponse.new
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

        # 销毁Mysql

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

        # 查询Mysql任务状态

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

        # 查询后付费资源免费量

        # @param request: Request instance for DescribePostpayFreeQuotas.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribePostpayFreeQuotasRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribePostpayFreeQuotasResponse`
        def DescribePostpayFreeQuotas(request)
          body = send_request('DescribePostpayFreeQuotas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePostpayFreeQuotasResponse.new
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

        # 获取后付费免费额度

        # @param request: Request instance for DescribePostpayPackageFreeQuotas.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribePostpayPackageFreeQuotasRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribePostpayPackageFreeQuotasResponse`
        def DescribePostpayPackageFreeQuotas(request)
          body = send_request('DescribePostpayPackageFreeQuotas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePostpayPackageFreeQuotasResponse.new
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

        # 查询后付费短信资源量
        # 1 有免费包的返回SmsFreeQuota结构所有字段
        # 2 没有免费包，有付费包，付费返回复用SmsFreeQuota结构，其中只有 TodayUsedQuota 字段有效
        # 3 都没有返回为空数组

        # @param request: Request instance for DescribeSmsQuotas.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeSmsQuotasRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeSmsQuotasResponse`
        def DescribeSmsQuotas(request)
          body = send_request('DescribeSmsQuotas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSmsQuotasResponse.new
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

        # 查询环境1分钱抵扣信息

        # @param request: Request instance for DescribeSpecialCostItems.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeSpecialCostItemsRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeSpecialCostItemsResponse`
        def DescribeSpecialCostItems(request)
          body = send_request('DescribeSpecialCostItems', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSpecialCostItemsResponse.new
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

        # 查询表的相关信息，包括索引等信息

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

        # 本接口(ListTables)用于查询所有表信息，包括表名、表中数据条数、表中数据量、索引个数及索引的大小等

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

        # 查询用户活动信息

        # @param request: Request instance for DescribeUserActivityInfo.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeUserActivityInfoRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeUserActivityInfoResponse`
        def DescribeUserActivityInfo(request)
          body = send_request('DescribeUserActivityInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserActivityInfoResponse.new
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

        # 查看安全网关路由

        # @param request: Request instance for DescribeWxGatewayRoutes.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeWxGatewayRoutesRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeWxGatewayRoutesResponse`
        def DescribeWxGatewayRoutes(request)
          body = send_request('DescribeWxGatewayRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWxGatewayRoutesResponse.new
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

        # 查看安全网关

        # @param request: Request instance for DescribeWxGateways.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeWxGatewaysRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeWxGatewaysResponse`
        def DescribeWxGateways(request)
          body = send_request('DescribeWxGateways', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWxGatewaysResponse.new
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

        # 销毁Mysql

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

        # 修改登录配置

        # @param request: Request instance for EditAuthConfig.
        # @type request: :class:`Tencentcloud::tcb::V20180608::EditAuthConfigRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::EditAuthConfigResponse`
        def EditAuthConfig(request)
          body = send_request('EditAuthConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EditAuthConfigResponse.new
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

        # 创建云应用服务

        # @param request: Request instance for EstablishCloudBaseRunServer.
        # @type request: :class:`Tencentcloud::tcb::V20180608::EstablishCloudBaseRunServerRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::EstablishCloudBaseRunServerResponse`
        def EstablishCloudBaseRunServer(request)
          body = send_request('EstablishCloudBaseRunServer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EstablishCloudBaseRunServerResponse.new
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

        # 创建或修改安全网关路由

        # @param request: Request instance for EstablishWxGatewayRoute.
        # @type request: :class:`Tencentcloud::tcb::V20180608::EstablishWxGatewayRouteRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::EstablishWxGatewayRouteResponse`
        def EstablishWxGatewayRoute(request)
          body = send_request('EstablishWxGatewayRoute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EstablishWxGatewayRouteResponse.new
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

        # 批量冻结

        # @param request: Request instance for FreezeCloudBaseRunServers.
        # @type request: :class:`Tencentcloud::tcb::V20180608::FreezeCloudBaseRunServersRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::FreezeCloudBaseRunServersResponse`
        def FreezeCloudBaseRunServers(request)
          body = send_request('FreezeCloudBaseRunServers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = FreezeCloudBaseRunServersResponse.new
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

        # 本接口(ListTables)用于查询所有表信息，包括表名、表中数据条数、表中数据量、索引个数及索引的大小等

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

        # 修改云开发网关API

        # @param request: Request instance for ModifyCloudBaseGWAPI.
        # @type request: :class:`Tencentcloud::tcb::V20180608::ModifyCloudBaseGWAPIRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::ModifyCloudBaseGWAPIResponse`
        def ModifyCloudBaseGWAPI(request)
          body = send_request('ModifyCloudBaseGWAPI', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudBaseGWAPIResponse.new
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

        # 修改容器内的版本流量配置

        # @param request: Request instance for ModifyCloudBaseRunServerFlowConf.
        # @type request: :class:`Tencentcloud::tcb::V20180608::ModifyCloudBaseRunServerFlowConfRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::ModifyCloudBaseRunServerFlowConfResponse`
        def ModifyCloudBaseRunServerFlowConf(request)
          body = send_request('ModifyCloudBaseRunServerFlowConf', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudBaseRunServerFlowConfResponse.new
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

        # 修改服务版本的副本数，环境变量

        # @param request: Request instance for ModifyCloudBaseRunServerVersion.
        # @type request: :class:`Tencentcloud::tcb::V20180608::ModifyCloudBaseRunServerVersionRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::ModifyCloudBaseRunServerVersionResponse`
        def ModifyCloudBaseRunServerVersion(request)
          body = send_request('ModifyCloudBaseRunServerVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudBaseRunServerVersionResponse.new
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

        # 修改数据库权限

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

        # 设置网关版本的流量比例

        # @param request: Request instance for ModifyGatewayVersionTraffic.
        # @type request: :class:`Tencentcloud::tcb::V20180608::ModifyGatewayVersionTrafficRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::ModifyGatewayVersionTrafficResponse`
        def ModifyGatewayVersionTraffic(request)
          body = send_request('ModifyGatewayVersionTraffic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyGatewayVersionTrafficResponse.new
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

        # 针对已隔离的免费环境，可以通过本接口将其恢复访问。

        # @param request: Request instance for ReinstateEnv.
        # @type request: :class:`Tencentcloud::tcb::V20180608::ReinstateEnvRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::ReinstateEnvResponse`
        def ReinstateEnv(request)
          body = send_request('ReinstateEnv', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReinstateEnvResponse.new
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

        # 更新活动详情

        # @param request: Request instance for ReplaceActivityRecord.
        # @type request: :class:`Tencentcloud::tcb::V20180608::ReplaceActivityRecordRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::ReplaceActivityRecordResponse`
        def ReplaceActivityRecord(request)
          body = send_request('ReplaceActivityRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReplaceActivityRecordResponse.new
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

        # 执行SQL语句

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

        # 批量解冻服务

        # @param request: Request instance for UnfreezeCloudBaseRunServers.
        # @type request: :class:`Tencentcloud::tcb::V20180608::UnfreezeCloudBaseRunServersRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::UnfreezeCloudBaseRunServersResponse`
        def UnfreezeCloudBaseRunServers(request)
          body = send_request('UnfreezeCloudBaseRunServers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnfreezeCloudBaseRunServersResponse.new
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

        # 本接口(UpdateTable)用于修改表信息，当前可以支持创建和删除索引

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