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

        # 开通后，可通过 [DescribeCreateMySQLResult ](https://cloud.tencent.com/document/api/876/128185) 查询开通结果

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

        # 删除合法域名。
        # 云开发会校验网页应用请求的来源域名，您需要将来源域名加入到WEB安全域名列表中。
        # 可以通过接口 [DescribeAuthDomains](https://cloud.tencent.com/document/product/876/42151) 获取当前已绑定生效的安全域名。

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

        # 本接口(DeleteTable)用于删除表，删除表后表中数据将会被删除且无法恢复，请谨慎操作

        # 接口入参中的 Tag 为 flexdb 的实例 Id，可以通过 [DescribeEnvs](https://cloud.tencent.com/document/api/876/34820) 接口返回的 EnvList[0].Databases[0].InstanceId 获取

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

        # 查询开通Mysql结果，`Response.Data.Status = "notexist"` 表示未开通，如果未开通，可以调用 [CreateMySQL](https://cloud.tencent.com/document/api/876/128186) 来开通
        #  `Response.Data. Status = "success"` 表示开通成功，Mysql开通成功后，可通过接口设置数据库账号相关功能包括但不限于【创建账号、删除账号、查询可授权权限列表、查询账号已有权限、修改主机、修改配置、修改账号库表权限】、集群操作相关【查询集群参数、修改集群参数】，连接设置相关【关闭外网、开通外网、查询集群信息】，备份回档相关【创建手动回档、删除手动回档、修改自动备份配置信息、查询备份文件列表、集群回档、查询任务列表、获取table列表、获取集群数据库列表、查询备份下载地址】，相关功能接口文档：[TDSQL-C MySQL API文档](https://cloud.tencent.com/document/product/1003/48106)

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

        # 查询Mysql集群信息

        # 调用该接口前需要先查询Mysql是否开通，可通过 [DescribeCreateMySQLResult ](https://cloud.tencent.com/document/api/876/128185) 查询，只有已开通的才能查到集群信息

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

        # 查询表的相关信息，包括索引等信息

        # 接口入参中的 Tag 为 flexdb 的实例 Id，可以通过 [DescribeEnvs](https://cloud.tencent.com/document/api/876/34820) 接口返回的 EnvList[0].Databases[0].InstanceId 获取

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

        # 本接口(DescribeTables)用于查询所有表信息，包括表名、表中数据条数、表中数据量、索引个数及索引的大小等

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

        # 销毁后可以通过 [DescribeMySQLTaskStatus](https://cloud.tencent.com/document/api/876/128183) 接口查询销毁结果，如果 `Response.Data. Status = FAILED ` 表示销毁失败，可以重新调用销毁接口重试

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

        # 本接口用于执行数据库命令

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

        # 执行SQL语句

        # 调用该接口前需要先查询Mysql是否开通，可通过 [DescribeCreateMySQLResult ](https://cloud.tencent.com/document/api/876/128185) 查询，只有开通成功才能操作

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