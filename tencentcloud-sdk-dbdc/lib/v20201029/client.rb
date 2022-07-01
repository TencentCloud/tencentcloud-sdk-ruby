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
  module Dbdc
    module V20201029
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-10-29'
            api_endpoint = 'dbdc.tencentcloudapi.com'
            sdk_version = 'DBDC_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口用于查询独享集群内的DB实例列表

        # @param request: Request instance for DescribeDBInstances.
        # @type request: :class:`Tencentcloud::dbdc::V20201029::DescribeDBInstancesRequest`
        # @rtype: :class:`Tencentcloud::dbdc::V20201029::DescribeDBInstancesResponse`
        def DescribeDBInstances(request)
          body = send_request('DescribeDBInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于查询主机列表

        # @param request: Request instance for DescribeHostList.
        # @type request: :class:`Tencentcloud::dbdc::V20201029::DescribeHostListRequest`
        # @rtype: :class:`Tencentcloud::dbdc::V20201029::DescribeHostListResponse`
        def DescribeHostList(request)
          body = send_request('DescribeHostList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于查询独享集群详情

        # @param request: Request instance for DescribeInstanceDetail.
        # @type request: :class:`Tencentcloud::dbdc::V20201029::DescribeInstanceDetailRequest`
        # @rtype: :class:`Tencentcloud::dbdc::V20201029::DescribeInstanceDetailResponse`
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

        # 本接口用于查询独享集群实例列表

        # @param request: Request instance for DescribeInstanceList.
        # @type request: :class:`Tencentcloud::dbdc::V20201029::DescribeInstanceListRequest`
        # @rtype: :class:`Tencentcloud::dbdc::V20201029::DescribeInstanceListResponse`
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

        # 根据不同地域不同用户，获取集群列表信息

        # @param request: Request instance for DescribeInstances.
        # @type request: :class:`Tencentcloud::dbdc::V20201029::DescribeInstancesRequest`
        # @rtype: :class:`Tencentcloud::dbdc::V20201029::DescribeInstancesResponse`
        def DescribeInstances(request)
          body = send_request('DescribeInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于修改集群名称

        # @param request: Request instance for ModifyInstanceName.
        # @type request: :class:`Tencentcloud::dbdc::V20201029::ModifyInstanceNameRequest`
        # @rtype: :class:`Tencentcloud::dbdc::V20201029::ModifyInstanceNameResponse`
        def ModifyInstanceName(request)
          body = send_request('ModifyInstanceName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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