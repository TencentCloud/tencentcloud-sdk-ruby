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
  module Tcb
    module V20180608
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-06-08'
            api_endpoint = 'tcb.tencentcloudapi.com'
            sdk_version = 'TCB_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
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

        # 增加安全域名

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

        # 本接口（CreateStandaloneGateway）用于创建独立网关。

        # @param request: Request instance for CreateStandaloneGateway.
        # @type request: :class:`Tencentcloud::tcb::V20180608::CreateStandaloneGatewayRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::CreateStandaloneGatewayResponse`
        def CreateStandaloneGateway(request)
          body = send_request('CreateStandaloneGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateStandaloneGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 创建微信云托管

        # @param request: Request instance for CreateWxCloudBaseRunEnv.
        # @type request: :class:`Tencentcloud::tcb::V20180608::CreateWxCloudBaseRunEnvRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::CreateWxCloudBaseRunEnvResponse`
        def CreateWxCloudBaseRunEnv(request)
          body = send_request('CreateWxCloudBaseRunEnv', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWxCloudBaseRunEnvResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开通微信云托管MySQL数据库服务

        # @param request: Request instance for CreateWxCloudBaseRunServerDBCluster.
        # @type request: :class:`Tencentcloud::tcb::V20180608::CreateWxCloudBaseRunServerDBClusterRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::CreateWxCloudBaseRunServerDBClusterResponse`
        def CreateWxCloudBaseRunServerDBCluster(request)
          body = send_request('CreateWxCloudBaseRunServerDBCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWxCloudBaseRunServerDBClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 删除终端用户

        # @param request: Request instance for DeleteEndUser.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DeleteEndUserRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DeleteEndUserResponse`
        def DeleteEndUser(request)
          body = send_request('DeleteEndUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEndUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询活动信息

        # @param request: Request instance for DescribeActivityInfo.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeActivityInfoRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeActivityInfoResponse`
        def DescribeActivityInfo(request)
          body = send_request('DescribeActivityInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeActivityInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 获取安全域名列表

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

        # 查询环境下所有的vpc列表

        # @param request: Request instance for DescribeCloudBaseRunAllVpcs.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseRunAllVpcsRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseRunAllVpcsResponse`
        def DescribeCloudBaseRunAllVpcs(request)
          body = send_request('DescribeCloudBaseRunAllVpcs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudBaseRunAllVpcsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 独立网关中拉取云托管服务对应的配置信息

        # @param request: Request instance for DescribeCloudBaseRunConfForGateWay.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseRunConfForGateWayRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseRunConfForGateWayResponse`
        def DescribeCloudBaseRunConfForGateWay(request)
          body = send_request('DescribeCloudBaseRunConfForGateWay', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudBaseRunConfForGateWayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询一键部署任务 （特定接口：外部查询使用）

        # @param request: Request instance for DescribeCloudBaseRunOneClickTaskExternal.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseRunOneClickTaskExternalRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseRunOneClickTaskExternalResponse`
        def DescribeCloudBaseRunOneClickTaskExternal(request)
          body = send_request('DescribeCloudBaseRunOneClickTaskExternal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudBaseRunOneClickTaskExternalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询服务、版本和操作类型

        # @param request: Request instance for DescribeCloudBaseRunOperationTypes.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseRunOperationTypesRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseRunOperationTypesResponse`
        def DescribeCloudBaseRunOperationTypes(request)
          body = send_request('DescribeCloudBaseRunOperationTypes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudBaseRunOperationTypesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云托管服务版本容器列表

        # @param request: Request instance for DescribeCloudBaseRunPodList.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseRunPodListRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseRunPodListResponse`
        def DescribeCloudBaseRunPodList(request)
          body = send_request('DescribeCloudBaseRunPodList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudBaseRunPodListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询微信云托管服务域名

        # @param request: Request instance for DescribeCloudBaseRunServerDomainName.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseRunServerDomainNameRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseRunServerDomainNameResponse`
        def DescribeCloudBaseRunServerDomainName(request)
          body = send_request('DescribeCloudBaseRunServerDomainName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudBaseRunServerDomainNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # DescribeCloudBaseRunVersionRsByCondition 获取云托管详情

        # @param request: Request instance for DescribeCloudBaseRunVersionRsByCondition.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseRunVersionRsByConditionRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeCloudBaseRunVersionRsByConditionResponse`
        def DescribeCloudBaseRunVersionRsByCondition(request)
          body = send_request('DescribeCloudBaseRunVersionRsByCondition', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudBaseRunVersionRsByConditionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 获取环境终端用户新增与登录信息

        # @param request: Request instance for DescribeEndUserLoginStatistic.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeEndUserLoginStatisticRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeEndUserLoginStatisticResponse`
        def DescribeEndUserLoginStatistic(request)
          body = send_request('DescribeEndUserLoginStatistic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEndUserLoginStatisticResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取终端用户总量与平台分布情况

        # @param request: Request instance for DescribeEndUserStatistic.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeEndUserStatisticRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeEndUserStatisticResponse`
        def DescribeEndUserStatistic(request)
          body = send_request('DescribeEndUserStatistic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEndUserStatisticResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取终端用户列表

        # @param request: Request instance for DescribeEndUsers.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeEndUsersRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeEndUsersResponse`
        def DescribeEndUsers(request)
          body = send_request('DescribeEndUsers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEndUsersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口（DescribeStandaloneGateway）查询小租户网关套餐信息。

        # @param request: Request instance for DescribeStandaloneGateway.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeStandaloneGatewayRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeStandaloneGatewayResponse`
        def DescribeStandaloneGateway(request)
          body = send_request('DescribeStandaloneGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStandaloneGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeStandaloneGatewayPackage）用于查询小租户网关套餐信息。

        # @param request: Request instance for DescribeStandaloneGatewayPackage.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeStandaloneGatewayPackageRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeStandaloneGatewayPackageResponse`
        def DescribeStandaloneGatewayPackage(request)
          body = send_request('DescribeStandaloneGatewayPackage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStandaloneGatewayPackageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 查询微信云托管环境信息

        # @param request: Request instance for DescribeWxCloudBaseRunEnvs.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeWxCloudBaseRunEnvsRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeWxCloudBaseRunEnvsResponse`
        def DescribeWxCloudBaseRunEnvs(request)
          body = send_request('DescribeWxCloudBaseRunEnvs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWxCloudBaseRunEnvsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询微信云托管子网

        # @param request: Request instance for DescribeWxCloudBaseRunSubNets.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DescribeWxCloudBaseRunSubNetsRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DescribeWxCloudBaseRunSubNetsResponse`
        def DescribeWxCloudBaseRunSubNets(request)
          body = send_request('DescribeWxCloudBaseRunSubNets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWxCloudBaseRunSubNetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 销毁环境

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

        # 本接口（DestroyStandaloneGateway）用于销毁小租户网关。

        # @param request: Request instance for DestroyStandaloneGateway.
        # @type request: :class:`Tencentcloud::tcb::V20180608::DestroyStandaloneGatewayRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::DestroyStandaloneGatewayResponse`
        def DestroyStandaloneGateway(request)
          body = send_request('DestroyStandaloneGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroyStandaloneGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 管理终端用户

        # @param request: Request instance for ModifyEndUser.
        # @type request: :class:`Tencentcloud::tcb::V20180608::ModifyEndUserRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::ModifyEndUserResponse`
        def ModifyEndUser(request)
          body = send_request('ModifyEndUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEndUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 针对特定的版本，进行滚动更新

        # @param request: Request instance for RollUpdateCloudBaseRunServerVersion.
        # @type request: :class:`Tencentcloud::tcb::V20180608::RollUpdateCloudBaseRunServerVersionRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::RollUpdateCloudBaseRunServerVersionResponse`
        def RollUpdateCloudBaseRunServerVersion(request)
          body = send_request('RollUpdateCloudBaseRunServerVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RollUpdateCloudBaseRunServerVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 搜索CLS日志，TCB角色密钥访问

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

        # 本接口（TurnOffStandaloneGateway）用于关闭小租户网关。

        # @param request: Request instance for TurnOffStandaloneGateway.
        # @type request: :class:`Tencentcloud::tcb::V20180608::TurnOffStandaloneGatewayRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::TurnOffStandaloneGatewayResponse`
        def TurnOffStandaloneGateway(request)
          body = send_request('TurnOffStandaloneGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TurnOffStandaloneGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（TurnOnStandaloneGateway）用于开启小租户网关。

        # @param request: Request instance for TurnOnStandaloneGateway.
        # @type request: :class:`Tencentcloud::tcb::V20180608::TurnOnStandaloneGatewayRequest`
        # @rtype: :class:`Tencentcloud::tcb::V20180608::TurnOnStandaloneGatewayResponse`
        def TurnOnStandaloneGateway(request)
          body = send_request('TurnOnStandaloneGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TurnOnStandaloneGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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


      end
    end
  end
end