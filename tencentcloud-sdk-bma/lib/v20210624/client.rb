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
  module Bma
    module V20210624
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-06-24'
            api_endpoint = 'bma.tencentcloudapi.com'
            sdk_version = 'BMA_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 版权保护-新建拦截接口

        # @param request: Request instance for CreateCRBlock.
        # @type request: :class:`Tencentcloud::bma::V20210624::CreateCRBlockRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::CreateCRBlockResponse`
        def CreateCRBlock(request)
          body = send_request('CreateCRBlock', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCRBlockResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 品牌经营管家-版权保护模块企业认证接口

        # @param request: Request instance for CreateCRCompanyVerify.
        # @type request: :class:`Tencentcloud::bma::V20210624::CreateCRCompanyVerifyRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::CreateCRCompanyVerifyResponse`
        def CreateCRCompanyVerify(request)
          body = send_request('CreateCRCompanyVerify', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCRCompanyVerifyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 版权保护-新建发函接口

        # @param request: Request instance for CreateCRRight.
        # @type request: :class:`Tencentcloud::bma::V20210624::CreateCRRightRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::CreateCRRightResponse`
        def CreateCRRight(request)
          body = send_request('CreateCRRight', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCRRightResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 版权保护-添加作品接口

        # @param request: Request instance for CreateCRWork.
        # @type request: :class:`Tencentcloud::bma::V20210624::CreateCRWorkRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::CreateCRWorkResponse`
        def CreateCRWork(request)
          body = send_request('CreateCRWork', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCRWorkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 版权保护-查询作品监测详情接口

        # @param request: Request instance for DescribeCRMonitorDetail.
        # @type request: :class:`Tencentcloud::bma::V20210624::DescribeCRMonitorDetailRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::DescribeCRMonitorDetailResponse`
        def DescribeCRMonitorDetail(request)
          body = send_request('DescribeCRMonitorDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCRMonitorDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 版权保护-查询监测列表接口

        # @param request: Request instance for DescribeCRMonitors.
        # @type request: :class:`Tencentcloud::bma::V20210624::DescribeCRMonitorsRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::DescribeCRMonitorsResponse`
        def DescribeCRMonitors(request)
          body = send_request('DescribeCRMonitors', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCRMonitorsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询作品基本信息

        # @param request: Request instance for DescribeCRWorkInfo.
        # @type request: :class:`Tencentcloud::bma::V20210624::DescribeCRWorkInfoRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::DescribeCRWorkInfoResponse`
        def DescribeCRWorkInfo(request)
          body = send_request('DescribeCRWorkInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCRWorkInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 版权保护-拦截申请接口

        # @param request: Request instance for ModifyCRBlockStatus.
        # @type request: :class:`Tencentcloud::bma::V20210624::ModifyCRBlockStatusRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::ModifyCRBlockStatusResponse`
        def ModifyCRBlockStatus(request)
          body = send_request('ModifyCRBlockStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCRBlockStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 版权保护-修改监测状态接口

        # @param request: Request instance for ModifyCRMonitor.
        # @type request: :class:`Tencentcloud::bma::V20210624::ModifyCRMonitorRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::ModifyCRMonitorResponse`
        def ModifyCRMonitor(request)
          body = send_request('ModifyCRMonitor', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCRMonitorResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 申请取证

        # @param request: Request instance for ModifyCRObtainStatus.
        # @type request: :class:`Tencentcloud::bma::V20210624::ModifyCRObtainStatusRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::ModifyCRObtainStatusResponse`
        def ModifyCRObtainStatus(request)
          body = send_request('ModifyCRObtainStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCRObtainStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 版权保护-维权申请接口

        # @param request: Request instance for ModifyCRRightStatus.
        # @type request: :class:`Tencentcloud::bma::V20210624::ModifyCRRightStatusRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::ModifyCRRightStatusResponse`
        def ModifyCRRightStatus(request)
          body = send_request('ModifyCRRightStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCRRightStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新作品

        # @param request: Request instance for UpdateCRWork.
        # @type request: :class:`Tencentcloud::bma::V20210624::UpdateCRWorkRequest`
        # @rtype: :class:`Tencentcloud::bma::V20210624::UpdateCRWorkResponse`
        def UpdateCRWork(request)
          body = send_request('UpdateCRWork', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCRWorkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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