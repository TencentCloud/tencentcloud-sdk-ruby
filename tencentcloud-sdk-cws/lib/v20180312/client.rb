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
  module Cws
    module V20180312
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-03-12'
            api_endpoint = 'cws.tencentcloudapi.com'
            sdk_version = 'CWS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口（CreateMonitors）用于新增一个或多个站点的监测任务。

        # @param request: Request instance for CreateMonitors.
        # @type request: :class:`Tencentcloud::cws::V20180312::CreateMonitorsRequest`
        # @rtype: :class:`Tencentcloud::cws::V20180312::CreateMonitorsResponse`
        def CreateMonitors(request)
          body = send_request('CreateMonitors', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMonitorsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateSites）用于新增一个或多个站点。

        # @param request: Request instance for CreateSites.
        # @type request: :class:`Tencentcloud::cws::V20180312::CreateSitesRequest`
        # @rtype: :class:`Tencentcloud::cws::V20180312::CreateSitesResponse`
        def CreateSites(request)
          body = send_request('CreateSites', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSitesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateSitesScans）用于新增一个或多个站点的单次扫描任务。

        # @param request: Request instance for CreateSitesScans.
        # @type request: :class:`Tencentcloud::cws::V20180312::CreateSitesScansRequest`
        # @rtype: :class:`Tencentcloud::cws::V20180312::CreateSitesScansResponse`
        def CreateSitesScans(request)
          body = send_request('CreateSitesScans', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSitesScansResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateVulsMisinformation）可以用于新增一个或多个漏洞误报信息。

        # @param request: Request instance for CreateVulsMisinformation.
        # @type request: :class:`Tencentcloud::cws::V20180312::CreateVulsMisinformationRequest`
        # @rtype: :class:`Tencentcloud::cws::V20180312::CreateVulsMisinformationResponse`
        def CreateVulsMisinformation(request)
          body = send_request('CreateVulsMisinformation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVulsMisinformationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (CreateVulsReport) 用于生成漏洞报告并返回下载链接。

        # @param request: Request instance for CreateVulsReport.
        # @type request: :class:`Tencentcloud::cws::V20180312::CreateVulsReportRequest`
        # @rtype: :class:`Tencentcloud::cws::V20180312::CreateVulsReportResponse`
        def CreateVulsReport(request)
          body = send_request('CreateVulsReport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVulsReportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DeleteMonitors) 用于删除用户监控任务。

        # @param request: Request instance for DeleteMonitors.
        # @type request: :class:`Tencentcloud::cws::V20180312::DeleteMonitorsRequest`
        # @rtype: :class:`Tencentcloud::cws::V20180312::DeleteMonitorsResponse`
        def DeleteMonitors(request)
          body = send_request('DeleteMonitors', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMonitorsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DeleteSites) 用于删除站点。

        # @param request: Request instance for DeleteSites.
        # @type request: :class:`Tencentcloud::cws::V20180312::DeleteSitesRequest`
        # @rtype: :class:`Tencentcloud::cws::V20180312::DeleteSitesResponse`
        def DeleteSites(request)
          body = send_request('DeleteSites', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSitesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeConfig) 用于查询用户配置的详细信息。

        # @param request: Request instance for DescribeConfig.
        # @type request: :class:`Tencentcloud::cws::V20180312::DescribeConfigRequest`
        # @rtype: :class:`Tencentcloud::cws::V20180312::DescribeConfigResponse`
        def DescribeConfig(request)
          body = send_request('DescribeConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeMonitors) 用于查询一个或多个监控任务的详细信息。

        # @param request: Request instance for DescribeMonitors.
        # @type request: :class:`Tencentcloud::cws::V20180312::DescribeMonitorsRequest`
        # @rtype: :class:`Tencentcloud::cws::V20180312::DescribeMonitorsResponse`
        def DescribeMonitors(request)
          body = send_request('DescribeMonitors', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMonitorsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeSiteQuota) 用于查询用户购买的扫描次数总数和已使用数。

        # @param request: Request instance for DescribeSiteQuota.
        # @type request: :class:`Tencentcloud::cws::V20180312::DescribeSiteQuotaRequest`
        # @rtype: :class:`Tencentcloud::cws::V20180312::DescribeSiteQuotaResponse`
        def DescribeSiteQuota(request)
          body = send_request('DescribeSiteQuota', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSiteQuotaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeSites) 用于查询一个或多个站点的详细信息。

        # @param request: Request instance for DescribeSites.
        # @type request: :class:`Tencentcloud::cws::V20180312::DescribeSitesRequest`
        # @rtype: :class:`Tencentcloud::cws::V20180312::DescribeSitesResponse`
        def DescribeSites(request)
          body = send_request('DescribeSites', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSitesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeSitesVerification) 用于查询一个或多个待验证站点的验证信息。

        # @param request: Request instance for DescribeSitesVerification.
        # @type request: :class:`Tencentcloud::cws::V20180312::DescribeSitesVerificationRequest`
        # @rtype: :class:`Tencentcloud::cws::V20180312::DescribeSitesVerificationResponse`
        def DescribeSitesVerification(request)
          body = send_request('DescribeSitesVerification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSitesVerificationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeVuls) 用于查询一个或多个漏洞的详细信息。

        # @param request: Request instance for DescribeVuls.
        # @type request: :class:`Tencentcloud::cws::V20180312::DescribeVulsRequest`
        # @rtype: :class:`Tencentcloud::cws::V20180312::DescribeVulsResponse`
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

        # 本接口 (DescribeVulsNumber) 用于查询用户网站的漏洞总计数量。

        # @param request: Request instance for DescribeVulsNumber.
        # @type request: :class:`Tencentcloud::cws::V20180312::DescribeVulsNumberRequest`
        # @rtype: :class:`Tencentcloud::cws::V20180312::DescribeVulsNumberResponse`
        def DescribeVulsNumber(request)
          body = send_request('DescribeVulsNumber', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulsNumberResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeVulsNumberTimeline) 用于查询漏洞数随时间变化统计信息。

        # @param request: Request instance for DescribeVulsNumberTimeline.
        # @type request: :class:`Tencentcloud::cws::V20180312::DescribeVulsNumberTimelineRequest`
        # @rtype: :class:`Tencentcloud::cws::V20180312::DescribeVulsNumberTimelineResponse`
        def DescribeVulsNumberTimeline(request)
          body = send_request('DescribeVulsNumberTimeline', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVulsNumberTimelineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (ModifyConfigAttribute) 用于修改用户配置的属性。

        # @param request: Request instance for ModifyConfigAttribute.
        # @type request: :class:`Tencentcloud::cws::V20180312::ModifyConfigAttributeRequest`
        # @rtype: :class:`Tencentcloud::cws::V20180312::ModifyConfigAttributeResponse`
        def ModifyConfigAttribute(request)
          body = send_request('ModifyConfigAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyConfigAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (ModifyMonitorAttribute) 用于修改监测任务的属性。

        # @param request: Request instance for ModifyMonitorAttribute.
        # @type request: :class:`Tencentcloud::cws::V20180312::ModifyMonitorAttributeRequest`
        # @rtype: :class:`Tencentcloud::cws::V20180312::ModifyMonitorAttributeResponse`
        def ModifyMonitorAttribute(request)
          body = send_request('ModifyMonitorAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMonitorAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (ModifySiteAttribute) 用于修改站点的属性。

        # @param request: Request instance for ModifySiteAttribute.
        # @type request: :class:`Tencentcloud::cws::V20180312::ModifySiteAttributeRequest`
        # @rtype: :class:`Tencentcloud::cws::V20180312::ModifySiteAttributeResponse`
        def ModifySiteAttribute(request)
          body = send_request('ModifySiteAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySiteAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (VerifySites) 用于验证一个或多个待验证站点。

        # @param request: Request instance for VerifySites.
        # @type request: :class:`Tencentcloud::cws::V20180312::VerifySitesRequest`
        # @rtype: :class:`Tencentcloud::cws::V20180312::VerifySitesResponse`
        def VerifySites(request)
          body = send_request('VerifySites', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifySitesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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