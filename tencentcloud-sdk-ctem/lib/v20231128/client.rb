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
  module Ctem
    module V20231128
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2023-11-28'
            api_endpoint = 'ctem.tencentcloudapi.com'
            sdk_version = 'CTEM_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 添加APP资产

        # @param request: Request instance for CreateApp.
        # @type request: :class:`Tencentcloud::ctem::V20231128::CreateAppRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::CreateAppResponse`
        def CreateApp(request)
          body = send_request('CreateApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加主机资产

        # @param request: Request instance for CreateAsset.
        # @type request: :class:`Tencentcloud::ctem::V20231128::CreateAssetRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::CreateAssetResponse`
        def CreateAsset(request)
          body = send_request('CreateAsset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAssetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建企业

        # @param request: Request instance for CreateCustomer.
        # @type request: :class:`Tencentcloud::ctem::V20231128::CreateCustomerRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::CreateCustomerResponse`
        def CreateCustomer(request)
          body = send_request('CreateCustomer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCustomerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加主域名数据

        # @param request: Request instance for CreateDomain.
        # @type request: :class:`Tencentcloud::ctem::V20231128::CreateDomainRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::CreateDomainResponse`
        def CreateDomain(request)
          body = send_request('CreateDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加企业架构资产

        # @param request: Request instance for CreateEnterprise.
        # @type request: :class:`Tencentcloud::ctem::V20231128::CreateEnterpriseRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::CreateEnterpriseResponse`
        def CreateEnterprise(request)
          body = send_request('CreateEnterprise', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEnterpriseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加网站资产

        # @param request: Request instance for CreateHttp.
        # @type request: :class:`Tencentcloud::ctem::V20231128::CreateHttpRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::CreateHttpResponse`
        def CreateHttp(request)
          body = send_request('CreateHttp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateHttpResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 启动测绘

        # @param request: Request instance for CreateJobRecord.
        # @type request: :class:`Tencentcloud::ctem::V20231128::CreateJobRecordRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::CreateJobRecordResponse`
        def CreateJobRecord(request)
          body = send_request('CreateJobRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateJobRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加后台数据

        # @param request: Request instance for CreateManage.
        # @type request: :class:`Tencentcloud::ctem::V20231128::CreateManageRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::CreateManageResponse`
        def CreateManage(request)
          body = send_request('CreateManage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateManageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加端口服务资产

        # @param request: Request instance for CreatePort.
        # @type request: :class:`Tencentcloud::ctem::V20231128::CreatePortRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::CreatePortResponse`
        def CreatePort(request)
          body = send_request('CreatePort', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePortResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建种子

        # @param request: Request instance for CreateSeeds.
        # @type request: :class:`Tencentcloud::ctem::V20231128::CreateSeedsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::CreateSeedsResponse`
        def CreateSeeds(request)
          body = send_request('CreateSeeds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSeedsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加子域名数据

        # @param request: Request instance for CreateSubDomain.
        # @type request: :class:`Tencentcloud::ctem::V20231128::CreateSubDomainRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::CreateSubDomainResponse`
        def CreateSubDomain(request)
          body = send_request('CreateSubDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSubDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加影子资产

        # @param request: Request instance for CreateSuspiciousAsset.
        # @type request: :class:`Tencentcloud::ctem::V20231128::CreateSuspiciousAssetRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::CreateSuspiciousAssetResponse`
        def CreateSuspiciousAsset(request)
          body = send_request('CreateSuspiciousAsset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSuspiciousAssetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加微信小程序资产

        # @param request: Request instance for CreateWechatApplet.
        # @type request: :class:`Tencentcloud::ctem::V20231128::CreateWechatAppletRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::CreateWechatAppletResponse`
        def CreateWechatApplet(request)
          body = send_request('CreateWechatApplet', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWechatAppletResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加微信公众号资产

        # @param request: Request instance for CreateWechatOfficialAccount.
        # @type request: :class:`Tencentcloud::ctem::V20231128::CreateWechatOfficialAccountRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::CreateWechatOfficialAccountResponse`
        def CreateWechatOfficialAccount(request)
          body = send_request('CreateWechatOfficialAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWechatOfficialAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除APP数据

        # @param request: Request instance for DeleteApps.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DeleteAppsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DeleteAppsResponse`
        def DeleteApps(request)
          body = send_request('DeleteApps', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAppsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除主机资产数据

        # @param request: Request instance for DeleteAssets.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DeleteAssetsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DeleteAssetsResponse`
        def DeleteAssets(request)
          body = send_request('DeleteAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAssetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除主域名数据

        # @param request: Request instance for DeleteDomains.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DeleteDomainsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DeleteDomainsResponse`
        def DeleteDomains(request)
          body = send_request('DeleteDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDomainsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除企业架构数据

        # @param request: Request instance for DeleteEnterprises.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DeleteEnterprisesRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DeleteEnterprisesResponse`
        def DeleteEnterprises(request)
          body = send_request('DeleteEnterprises', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEnterprisesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除网站资产数据

        # @param request: Request instance for DeleteHttps.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DeleteHttpsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DeleteHttpsResponse`
        def DeleteHttps(request)
          body = send_request('DeleteHttps', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteHttpsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除后台数据

        # @param request: Request instance for DeleteManages.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DeleteManagesRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DeleteManagesResponse`
        def DeleteManages(request)
          body = send_request('DeleteManages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteManagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除端口数据

        # @param request: Request instance for DeletePorts.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DeletePortsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DeletePortsResponse`
        def DeletePorts(request)
          body = send_request('DeletePorts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePortsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除种子

        # @param request: Request instance for DeleteSeeds.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DeleteSeedsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DeleteSeedsResponse`
        def DeleteSeeds(request)
          body = send_request('DeleteSeeds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSeedsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除子域名数据

        # @param request: Request instance for DeleteSubDomains.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DeleteSubDomainsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DeleteSubDomainsResponse`
        def DeleteSubDomains(request)
          body = send_request('DeleteSubDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSubDomainsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除影子资产数据

        # @param request: Request instance for DeleteSuspiciousAssets.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DeleteSuspiciousAssetsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DeleteSuspiciousAssetsResponse`
        def DeleteSuspiciousAssets(request)
          body = send_request('DeleteSuspiciousAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSuspiciousAssetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除微信小程序数据

        # @param request: Request instance for DeleteWechatApplets.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DeleteWechatAppletsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DeleteWechatAppletsResponse`
        def DeleteWechatApplets(request)
          body = send_request('DeleteWechatApplets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWechatAppletsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除微信公众号数据

        # @param request: Request instance for DeleteWechatOfficialAccounts.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DeleteWechatOfficialAccountsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DeleteWechatOfficialAccountsResponse`
        def DeleteWechatOfficialAccounts(request)
          body = send_request('DeleteWechatOfficialAccounts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWechatOfficialAccountsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看API安全数据

        # @param request: Request instance for DescribeApiSecs.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DescribeApiSecsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DescribeApiSecsResponse`
        def DescribeApiSecs(request)
          body = send_request('DescribeApiSecs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApiSecsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看移动端资产

        # @param request: Request instance for DescribeApps.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DescribeAppsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DescribeAppsResponse`
        def DescribeApps(request)
          body = send_request('DescribeApps', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAppsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看主机资产

        # @param request: Request instance for DescribeAssets.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DescribeAssetsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DescribeAssetsResponse`
        def DescribeAssets(request)
          body = send_request('DescribeAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看目录爆破数据

        # @param request: Request instance for DescribeConfigs.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DescribeConfigsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DescribeConfigsResponse`
        def DescribeConfigs(request)
          body = send_request('DescribeConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看企业列表

        # @param request: Request instance for DescribeCustomers.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DescribeCustomersRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DescribeCustomersResponse`
        def DescribeCustomers(request)
          body = send_request('DescribeCustomers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看暗网数据

        # @param request: Request instance for DescribeDarkWebs.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DescribeDarkWebsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DescribeDarkWebsResponse`
        def DescribeDarkWebs(request)
          body = send_request('DescribeDarkWebs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDarkWebsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看主域名数据

        # @param request: Request instance for DescribeDomains.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DescribeDomainsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DescribeDomainsResponse`
        def DescribeDomains(request)
          body = send_request('DescribeDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看企业架构数据

        # @param request: Request instance for DescribeEnterprises.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DescribeEnterprisesRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DescribeEnterprisesResponse`
        def DescribeEnterprises(request)
          body = send_request('DescribeEnterprises', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEnterprisesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询仿冒应用

        # @param request: Request instance for DescribeFakeApps.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DescribeFakeAppsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DescribeFakeAppsResponse`
        def DescribeFakeApps(request)
          body = send_request('DescribeFakeApps', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFakeAppsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询仿冒小程序

        # @param request: Request instance for DescribeFakeMiniPrograms.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DescribeFakeMiniProgramsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DescribeFakeMiniProgramsResponse`
        def DescribeFakeMiniPrograms(request)
          body = send_request('DescribeFakeMiniPrograms', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFakeMiniProgramsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询仿冒网站

        # @param request: Request instance for DescribeFakeWebsites.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DescribeFakeWebsitesRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DescribeFakeWebsitesResponse`
        def DescribeFakeWebsites(request)
          body = send_request('DescribeFakeWebsites', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFakeWebsitesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询仿冒公众号

        # @param request: Request instance for DescribeFakeWechatOfficials.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DescribeFakeWechatOfficialsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DescribeFakeWechatOfficialsResponse`
        def DescribeFakeWechatOfficials(request)
          body = send_request('DescribeFakeWechatOfficials', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFakeWechatOfficialsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看Github泄露数据

        # @param request: Request instance for DescribeGithubs.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DescribeGithubsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DescribeGithubsResponse`
        def DescribeGithubs(request)
          body = send_request('DescribeGithubs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGithubsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看http数据

        # @param request: Request instance for DescribeHttps.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DescribeHttpsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DescribeHttpsResponse`
        def DescribeHttps(request)
          body = send_request('DescribeHttps', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHttpsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看链路详情

        # @param request: Request instance for DescribeJobRecordDetails.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DescribeJobRecordDetailsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DescribeJobRecordDetailsResponse`
        def DescribeJobRecordDetails(request)
          body = send_request('DescribeJobRecordDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeJobRecordDetailsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看任务运行记录列表

        # @param request: Request instance for DescribeJobRecords.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DescribeJobRecordsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DescribeJobRecordsResponse`
        def DescribeJobRecords(request)
          body = send_request('DescribeJobRecords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeJobRecordsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取代码泄露数据

        # @param request: Request instance for DescribeLeakageCodes.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DescribeLeakageCodesRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DescribeLeakageCodesResponse`
        def DescribeLeakageCodes(request)
          body = send_request('DescribeLeakageCodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLeakageCodesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取数据泄露事件

        # @param request: Request instance for DescribeLeakageDatas.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DescribeLeakageDatasRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DescribeLeakageDatasResponse`
        def DescribeLeakageDatas(request)
          body = send_request('DescribeLeakageDatas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLeakageDatasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取邮箱泄露数据

        # @param request: Request instance for DescribeLeakageEmails.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DescribeLeakageEmailsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DescribeLeakageEmailsResponse`
        def DescribeLeakageEmails(request)
          body = send_request('DescribeLeakageEmails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLeakageEmailsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看后台管理数据

        # @param request: Request instance for DescribeManages.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DescribeManagesRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DescribeManagesResponse`
        def DescribeManages(request)
          body = send_request('DescribeManages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeManagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看网盘泄露数据

        # @param request: Request instance for DescribeNetDisks.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DescribeNetDisksRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DescribeNetDisksResponse`
        def DescribeNetDisks(request)
          body = send_request('DescribeNetDisks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNetDisksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看端口数据

        # @param request: Request instance for DescribePorts.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DescribePortsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DescribePortsResponse`
        def DescribePorts(request)
          body = send_request('DescribePorts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePortsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看种子列表

        # @param request: Request instance for DescribeSeeds.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DescribeSeedsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DescribeSeedsResponse`
        def DescribeSeeds(request)
          body = send_request('DescribeSeeds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSeedsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看敏感信息泄露数据

        # @param request: Request instance for DescribeSensitiveInfos.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DescribeSensitiveInfosRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DescribeSensitiveInfosResponse`
        def DescribeSensitiveInfos(request)
          body = send_request('DescribeSensitiveInfos', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSensitiveInfosResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看子域名数据

        # @param request: Request instance for DescribeSubDomains.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DescribeSubDomainsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DescribeSubDomainsResponse`
        def DescribeSubDomains(request)
          body = send_request('DescribeSubDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSubDomainsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看影子资产

        # @param request: Request instance for DescribeSuspiciousAssets.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DescribeSuspiciousAssetsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DescribeSuspiciousAssetsResponse`
        def DescribeSuspiciousAssets(request)
          body = send_request('DescribeSuspiciousAssets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSuspiciousAssetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看漏洞数据

        # @param request: Request instance for DescribeVuls.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DescribeVulsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DescribeVulsResponse`
        def DescribeVuls(request)
          body = send_request('DescribeVuls', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看弱口令数据

        # @param request: Request instance for DescribeWeakPasswords.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DescribeWeakPasswordsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DescribeWeakPasswordsResponse`
        def DescribeWeakPasswords(request)
          body = send_request('DescribeWeakPasswords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWeakPasswordsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看微信小程序

        # @param request: Request instance for DescribeWechatApplets.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DescribeWechatAppletsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DescribeWechatAppletsResponse`
        def DescribeWechatApplets(request)
          body = send_request('DescribeWechatApplets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWechatAppletsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看公众号数据

        # @param request: Request instance for DescribeWechatOfficialAccounts.
        # @type request: :class:`Tencentcloud::ctem::V20231128::DescribeWechatOfficialAccountsRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::DescribeWechatOfficialAccountsResponse`
        def DescribeWechatOfficialAccounts(request)
          body = send_request('DescribeWechatOfficialAccounts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWechatOfficialAccountsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 忽略数据

        # @param request: Request instance for IgnoreData.
        # @type request: :class:`Tencentcloud::ctem::V20231128::IgnoreDataRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::IgnoreDataResponse`
        def IgnoreData(request)
          body = send_request('IgnoreData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IgnoreDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑企业

        # @param request: Request instance for ModifyCustomer.
        # @type request: :class:`Tencentcloud::ctem::V20231128::ModifyCustomerRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::ModifyCustomerResponse`
        def ModifyCustomer(request)
          body = send_request('ModifyCustomer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCustomerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改标签

        # @param request: Request instance for ModifyLabel.
        # @type request: :class:`Tencentcloud::ctem::V20231128::ModifyLabelRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::ModifyLabelResponse`
        def ModifyLabel(request)
          body = send_request('ModifyLabel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLabelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改种子状态

        # @param request: Request instance for ModifySeedStatus.
        # @type request: :class:`Tencentcloud::ctem::V20231128::ModifySeedStatusRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::ModifySeedStatusResponse`
        def ModifySeedStatus(request)
          body = send_request('ModifySeedStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySeedStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止扫描

        # @param request: Request instance for StopJobRecord.
        # @type request: :class:`Tencentcloud::ctem::V20231128::StopJobRecordRequest`
        # @rtype: :class:`Tencentcloud::ctem::V20231128::StopJobRecordResponse`
        def StopJobRecord(request)
          body = send_request('StopJobRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopJobRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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