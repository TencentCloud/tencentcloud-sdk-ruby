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
  module Rce
    module V20201103
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-11-03'
            api_endpoint = 'rce.tencentcloudapi.com'
            sdk_version = 'RCE_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建黑白名单，黑白名单数量上限为100

        # @param request: Request instance for CreateNameList.
        # @type request: :class:`Tencentcloud::rce::V20201103::CreateNameListRequest`
        # @rtype: :class:`Tencentcloud::rce::V20201103::CreateNameListResponse`
        def CreateNameList(request)
          body = send_request('CreateNameList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNameListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改黑白名单状态 关闭 开启 删除

        # @param request: Request instance for DeleteNameList.
        # @type request: :class:`Tencentcloud::rce::V20201103::DeleteNameListRequest`
        # @rtype: :class:`Tencentcloud::rce::V20201103::DeleteNameListResponse`
        def DeleteNameList(request)
          body = send_request('DeleteNameList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNameListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除黑白名单数据

        # @param request: Request instance for DeleteNameListData.
        # @type request: :class:`Tencentcloud::rce::V20201103::DeleteNameListDataRequest`
        # @rtype: :class:`Tencentcloud::rce::V20201103::DeleteNameListDataResponse`
        def DeleteNameListData(request)
          body = send_request('DeleteNameListData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNameListDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 列表展示黑白名单列表数据, 包含列表名称, 名单类型, 数据类型, 数据来源, 描述, 状态等

        # @param request: Request instance for DescribeNameList.
        # @type request: :class:`Tencentcloud::rce::V20201103::DescribeNameListRequest`
        # @rtype: :class:`Tencentcloud::rce::V20201103::DescribeNameListResponse`
        def DescribeNameList(request)
          body = send_request('DescribeNameList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNameListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 黑白名单详情数据展示 名单id 客户appid uin 数据内容 开始时间和结束时间 状态 描述

        # @param request: Request instance for DescribeNameListDataList.
        # @type request: :class:`Tencentcloud::rce::V20201103::DescribeNameListDataListRequest`
        # @rtype: :class:`Tencentcloud::rce::V20201103::DescribeNameListDataListResponse`
        def DescribeNameListDataList(request)
          body = send_request('DescribeNameListDataList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNameListDataListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询黑白名单列表详情

        # @param request: Request instance for DescribeNameListDetail.
        # @type request: :class:`Tencentcloud::rce::V20201103::DescribeNameListDetailRequest`
        # @rtype: :class:`Tencentcloud::rce::V20201103::DescribeNameListDetailResponse`
        def DescribeNameListDetail(request)
          body = send_request('DescribeNameListDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNameListDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # RCE控制台预付费和后付费次数展示

        # @param request: Request instance for DescribeUserUsageCnt.
        # @type request: :class:`Tencentcloud::rce::V20201103::DescribeUserUsageCntRequest`
        # @rtype: :class:`Tencentcloud::rce::V20201103::DescribeUserUsageCntResponse`
        def DescribeUserUsageCnt(request)
          body = send_request('DescribeUserUsageCnt', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserUsageCntResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增黑白名单数据，所有黑白名单数据总量上限为10000

        # @param request: Request instance for ImportNameListData.
        # @type request: :class:`Tencentcloud::rce::V20201103::ImportNameListDataRequest`
        # @rtype: :class:`Tencentcloud::rce::V20201103::ImportNameListDataResponse`
        def ImportNameListData(request)
          body = send_request('ImportNameListData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImportNameListDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 全栈式风控引擎（RiskControlEngine，RCE）是基于人工智能技术和腾讯20年风控实战沉淀，依托腾讯海量业务构建的风控引擎，以轻量级的 SaaS 服务方式接入，帮助您快速解决注册、登录、营销活动等关键场景遇到的欺诈问题，实时防御黑灰产作恶。

        # @param request: Request instance for ManageMarketingRisk.
        # @type request: :class:`Tencentcloud::rce::V20201103::ManageMarketingRiskRequest`
        # @rtype: :class:`Tencentcloud::rce::V20201103::ManageMarketingRiskResponse`
        def ManageMarketingRisk(request)
          body = send_request('ManageMarketingRisk', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ManageMarketingRiskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改列表数据 列表名称 列表类型 数据类型 状态 备注

        # @param request: Request instance for ModifyNameList.
        # @type request: :class:`Tencentcloud::rce::V20201103::ModifyNameListRequest`
        # @rtype: :class:`Tencentcloud::rce::V20201103::ModifyNameListResponse`
        def ModifyNameList(request)
          body = send_request('ModifyNameList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNameListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改黑白名单列表详情 详情内容 开始和结束时间 状态 备注等

        # @param request: Request instance for ModifyNameListData.
        # @type request: :class:`Tencentcloud::rce::V20201103::ModifyNameListDataRequest`
        # @rtype: :class:`Tencentcloud::rce::V20201103::ModifyNameListDataResponse`
        def ModifyNameListData(request)
          body = send_request('ModifyNameListData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNameListDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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