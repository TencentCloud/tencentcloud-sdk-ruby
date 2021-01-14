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
  module Sslpod
    module V20190605
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2019-06-05'
        @@endpoint = 'sslpod.tencentcloudapi.com'
        @@sdk_version = 'SSLPOD_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 通过域名端口添加监控

        # @param request: Request instance for CreateDomain.
        # @type request: :class:`Tencentcloud::sslpod::V20190605::CreateDomainRequest`
        # @rtype: :class:`Tencentcloud::sslpod::V20190605::CreateDomainResponse`
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

        # 通过域名ID删除监控的域名

        # @param request: Request instance for DeleteDomain.
        # @type request: :class:`Tencentcloud::sslpod::V20190605::DeleteDomainRequest`
        # @rtype: :class:`Tencentcloud::sslpod::V20190605::DeleteDomainResponse`
        def DeleteDomain(request)
          body = send_request('DeleteDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取仪表盘数据

        # @param request: Request instance for DescribeDashboard.
        # @type request: :class:`Tencentcloud::sslpod::V20190605::DescribeDashboardRequest`
        # @rtype: :class:`Tencentcloud::sslpod::V20190605::DescribeDashboardResponse`
        def DescribeDashboard(request)
          body = send_request('DescribeDashboard', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDashboardResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取域名关联证书

        # @param request: Request instance for DescribeDomainCerts.
        # @type request: :class:`Tencentcloud::sslpod::V20190605::DescribeDomainCertsRequest`
        # @rtype: :class:`Tencentcloud::sslpod::V20190605::DescribeDomainCertsResponse`
        def DescribeDomainCerts(request)
          body = send_request('DescribeDomainCerts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainCertsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取账号下所有tag

        # @param request: Request instance for DescribeDomainTags.
        # @type request: :class:`Tencentcloud::sslpod::V20190605::DescribeDomainTagsRequest`
        # @rtype: :class:`Tencentcloud::sslpod::V20190605::DescribeDomainTagsResponse`
        def DescribeDomainTags(request)
          body = send_request('DescribeDomainTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainTagsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过searchType搜索已经添加的域名

        # @param request: Request instance for DescribeDomains.
        # @type request: :class:`Tencentcloud::sslpod::V20190605::DescribeDomainsRequest`
        # @rtype: :class:`Tencentcloud::sslpod::V20190605::DescribeDomainsResponse`
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

        # 获取通知额度信息

        # @param request: Request instance for DescribeNoticeInfo.
        # @type request: :class:`Tencentcloud::sslpod::V20190605::DescribeNoticeInfoRequest`
        # @rtype: :class:`Tencentcloud::sslpod::V20190605::DescribeNoticeInfoResponse`
        def DescribeNoticeInfo(request)
          body = send_request('DescribeNoticeInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNoticeInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改域名tag

        # @param request: Request instance for ModifyDomainTags.
        # @type request: :class:`Tencentcloud::sslpod::V20190605::ModifyDomainTagsRequest`
        # @rtype: :class:`Tencentcloud::sslpod::V20190605::ModifyDomainTagsResponse`
        def ModifyDomainTags(request)
          body = send_request('ModifyDomainTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDomainTagsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 强制重新检测域名

        # @param request: Request instance for RefreshDomain.
        # @type request: :class:`Tencentcloud::sslpod::V20190605::RefreshDomainRequest`
        # @rtype: :class:`Tencentcloud::sslpod::V20190605::RefreshDomainResponse`
        def RefreshDomain(request)
          body = send_request('RefreshDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RefreshDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 解析域名获得多个IP地址

        # @param request: Request instance for ResolveDomain.
        # @type request: :class:`Tencentcloud::sslpod::V20190605::ResolveDomainRequest`
        # @rtype: :class:`Tencentcloud::sslpod::V20190605::ResolveDomainResponse`
        def ResolveDomain(request)
          body = send_request('ResolveDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResolveDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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