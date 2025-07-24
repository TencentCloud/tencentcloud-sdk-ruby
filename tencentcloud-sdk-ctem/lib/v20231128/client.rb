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