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
  module Igtm
    module V20231024
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2023-10-24'
            api_endpoint = 'igtm.tencentcloudapi.com'
            sdk_version = 'IGTM_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建地址池

        # @param request: Request instance for CreateAddressPool.
        # @type request: :class:`Tencentcloud::igtm::V20231024::CreateAddressPoolRequest`
        # @rtype: :class:`Tencentcloud::igtm::V20231024::CreateAddressPoolResponse`
        def CreateAddressPool(request)
          body = send_request('CreateAddressPool', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAddressPoolResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建实例接口，仅供免费实例使用

        # @param request: Request instance for CreateInstance.
        # @type request: :class:`Tencentcloud::igtm::V20231024::CreateInstanceRequest`
        # @rtype: :class:`Tencentcloud::igtm::V20231024::CreateInstanceResponse`
        def CreateInstance(request)
          body = send_request('CreateInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增监控器

        # @param request: Request instance for CreateMonitor.
        # @type request: :class:`Tencentcloud::igtm::V20231024::CreateMonitorRequest`
        # @rtype: :class:`Tencentcloud::igtm::V20231024::CreateMonitorResponse`
        def CreateMonitor(request)
          body = send_request('CreateMonitor', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMonitorResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新建策略接口

        # @param request: Request instance for CreateStrategy.
        # @type request: :class:`Tencentcloud::igtm::V20231024::CreateStrategyRequest`
        # @rtype: :class:`Tencentcloud::igtm::V20231024::CreateStrategyResponse`
        def CreateStrategy(request)
          body = send_request('CreateStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除地址池

        # @param request: Request instance for DeleteAddressPool.
        # @type request: :class:`Tencentcloud::igtm::V20231024::DeleteAddressPoolRequest`
        # @rtype: :class:`Tencentcloud::igtm::V20231024::DeleteAddressPoolResponse`
        def DeleteAddressPool(request)
          body = send_request('DeleteAddressPool', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAddressPoolResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除监控器

        # @param request: Request instance for DeleteMonitor.
        # @type request: :class:`Tencentcloud::igtm::V20231024::DeleteMonitorRequest`
        # @rtype: :class:`Tencentcloud::igtm::V20231024::DeleteMonitorResponse`
        def DeleteMonitor(request)
          body = send_request('DeleteMonitor', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMonitorResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除策略接口

        # @param request: Request instance for DeleteStrategy.
        # @type request: :class:`Tencentcloud::igtm::V20231024::DeleteStrategyRequest`
        # @rtype: :class:`Tencentcloud::igtm::V20231024::DeleteStrategyResponse`
        def DeleteStrategy(request)
          body = send_request('DeleteStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取地址所属地域

        # @param request: Request instance for DescribeAddressLocation.
        # @type request: :class:`Tencentcloud::igtm::V20231024::DescribeAddressLocationRequest`
        # @rtype: :class:`Tencentcloud::igtm::V20231024::DescribeAddressLocationResponse`
        def DescribeAddressLocation(request)
          body = send_request('DescribeAddressLocation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAddressLocationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 地址池详情

        # @param request: Request instance for DescribeAddressPoolDetail.
        # @type request: :class:`Tencentcloud::igtm::V20231024::DescribeAddressPoolDetailRequest`
        # @rtype: :class:`Tencentcloud::igtm::V20231024::DescribeAddressPoolDetailResponse`
        def DescribeAddressPoolDetail(request)
          body = send_request('DescribeAddressPoolDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAddressPoolDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 地址池列表

        # @param request: Request instance for DescribeAddressPoolList.
        # @type request: :class:`Tencentcloud::igtm::V20231024::DescribeAddressPoolListRequest`
        # @rtype: :class:`Tencentcloud::igtm::V20231024::DescribeAddressPoolListResponse`
        def DescribeAddressPoolList(request)
          body = send_request('DescribeAddressPoolList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAddressPoolListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取探测节点列表接口

        # @param request: Request instance for DescribeDetectors.
        # @type request: :class:`Tencentcloud::igtm::V20231024::DescribeDetectorsRequest`
        # @rtype: :class:`Tencentcloud::igtm::V20231024::DescribeDetectorsResponse`
        def DescribeDetectors(request)
          body = send_request('DescribeDetectors', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDetectorsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询分组线路列表接口

        # @param request: Request instance for DescribeDnsLineList.
        # @type request: :class:`Tencentcloud::igtm::V20231024::DescribeDnsLineListRequest`
        # @rtype: :class:`Tencentcloud::igtm::V20231024::DescribeDnsLineListResponse`
        def DescribeDnsLineList(request)
          body = send_request('DescribeDnsLineList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDnsLineListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 实例详情

        # @param request: Request instance for DescribeInstanceDetail.
        # @type request: :class:`Tencentcloud::igtm::V20231024::DescribeInstanceDetailRequest`
        # @rtype: :class:`Tencentcloud::igtm::V20231024::DescribeInstanceDetailResponse`
        def DescribeInstanceDetail(request)
          body = send_request('DescribeInstanceDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 实例列表

        # @param request: Request instance for DescribeInstanceList.
        # @type request: :class:`Tencentcloud::igtm::V20231024::DescribeInstanceListRequest`
        # @rtype: :class:`Tencentcloud::igtm::V20231024::DescribeInstanceListResponse`
        def DescribeInstanceList(request)
          body = send_request('DescribeInstanceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询监控器详情接口

        # @param request: Request instance for DescribeMonitorDetail.
        # @type request: :class:`Tencentcloud::igtm::V20231024::DescribeMonitorDetailRequest`
        # @rtype: :class:`Tencentcloud::igtm::V20231024::DescribeMonitorDetailResponse`
        def DescribeMonitorDetail(request)
          body = send_request('DescribeMonitorDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMonitorDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取所有监控器

        # @param request: Request instance for DescribeMonitors.
        # @type request: :class:`Tencentcloud::igtm::V20231024::DescribeMonitorsRequest`
        # @rtype: :class:`Tencentcloud::igtm::V20231024::DescribeMonitorsResponse`
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

        # 配额查询

        # @param request: Request instance for DescribeQuotas.
        # @type request: :class:`Tencentcloud::igtm::V20231024::DescribeQuotasRequest`
        # @rtype: :class:`Tencentcloud::igtm::V20231024::DescribeQuotasResponse`
        def DescribeQuotas(request)
          body = send_request('DescribeQuotas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeQuotasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 策略详情

        # @param request: Request instance for DescribeStrategyDetail.
        # @type request: :class:`Tencentcloud::igtm::V20231024::DescribeStrategyDetailRequest`
        # @rtype: :class:`Tencentcloud::igtm::V20231024::DescribeStrategyDetailResponse`
        def DescribeStrategyDetail(request)
          body = send_request('DescribeStrategyDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStrategyDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 策略列表接口

        # @param request: Request instance for DescribeStrategyList.
        # @type request: :class:`Tencentcloud::igtm::V20231024::DescribeStrategyListRequest`
        # @rtype: :class:`Tencentcloud::igtm::V20231024::DescribeStrategyListResponse`
        def DescribeStrategyList(request)
          body = send_request('DescribeStrategyList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStrategyListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改地址池

        # @param request: Request instance for ModifyAddressPool.
        # @type request: :class:`Tencentcloud::igtm::V20231024::ModifyAddressPoolRequest`
        # @rtype: :class:`Tencentcloud::igtm::V20231024::ModifyAddressPoolResponse`
        def ModifyAddressPool(request)
          body = send_request('ModifyAddressPool', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAddressPoolResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改实例配置

        # @param request: Request instance for ModifyInstanceConfig.
        # @type request: :class:`Tencentcloud::igtm::V20231024::ModifyInstanceConfigRequest`
        # @rtype: :class:`Tencentcloud::igtm::V20231024::ModifyInstanceConfigResponse`
        def ModifyInstanceConfig(request)
          body = send_request('ModifyInstanceConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改监控器

        # @param request: Request instance for ModifyMonitor.
        # @type request: :class:`Tencentcloud::igtm::V20231024::ModifyMonitorRequest`
        # @rtype: :class:`Tencentcloud::igtm::V20231024::ModifyMonitorResponse`
        def ModifyMonitor(request)
          body = send_request('ModifyMonitor', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMonitorResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改策略接口

        # @param request: Request instance for ModifyStrategy.
        # @type request: :class:`Tencentcloud::igtm::V20231024::ModifyStrategyRequest`
        # @rtype: :class:`Tencentcloud::igtm::V20231024::ModifyStrategyResponse`
        def ModifyStrategy(request)
          body = send_request('ModifyStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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