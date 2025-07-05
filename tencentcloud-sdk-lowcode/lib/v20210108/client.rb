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
  module Lowcode
    module V20210108
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-01-08'
            api_endpoint = 'lowcode.tencentcloudapi.com'
            sdk_version = 'LOWCODE_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建知识库

        # @param request: Request instance for CreateKnowledgeSet.
        # @type request: :class:`Tencentcloud::lowcode::V20210108::CreateKnowledgeSetRequest`
        # @rtype: :class:`Tencentcloud::lowcode::V20210108::CreateKnowledgeSetResponse`
        def CreateKnowledgeSet(request)
          body = send_request('CreateKnowledgeSet', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateKnowledgeSetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除知识库下文档

        # @param request: Request instance for DeleteKnowledgeDocumentSet.
        # @type request: :class:`Tencentcloud::lowcode::V20210108::DeleteKnowledgeDocumentSetRequest`
        # @rtype: :class:`Tencentcloud::lowcode::V20210108::DeleteKnowledgeDocumentSetResponse`
        def DeleteKnowledgeDocumentSet(request)
          body = send_request('DeleteKnowledgeDocumentSet', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteKnowledgeDocumentSetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除知识库

        # @param request: Request instance for DeleteKnowledgeSet.
        # @type request: :class:`Tencentcloud::lowcode::V20210108::DeleteKnowledgeSetRequest`
        # @rtype: :class:`Tencentcloud::lowcode::V20210108::DeleteKnowledgeSetResponse`
        def DeleteKnowledgeSet(request)
          body = send_request('DeleteKnowledgeSet', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteKnowledgeSetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取数据源详情列表

        # @param request: Request instance for DescribeDataSourceList.
        # @type request: :class:`Tencentcloud::lowcode::V20210108::DescribeDataSourceListRequest`
        # @rtype: :class:`Tencentcloud::lowcode::V20210108::DescribeDataSourceListResponse`
        def DescribeDataSourceList(request)
          body = send_request('DescribeDataSourceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataSourceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取知识库下文档详情

        # @param request: Request instance for DescribeKnowledgeDocumentSetDetail.
        # @type request: :class:`Tencentcloud::lowcode::V20210108::DescribeKnowledgeDocumentSetDetailRequest`
        # @rtype: :class:`Tencentcloud::lowcode::V20210108::DescribeKnowledgeDocumentSetDetailResponse`
        def DescribeKnowledgeDocumentSetDetail(request)
          body = send_request('DescribeKnowledgeDocumentSetDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKnowledgeDocumentSetDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询知识库下文件集合

        # @param request: Request instance for DescribeKnowledgeDocumentSetList.
        # @type request: :class:`Tencentcloud::lowcode::V20210108::DescribeKnowledgeDocumentSetListRequest`
        # @rtype: :class:`Tencentcloud::lowcode::V20210108::DescribeKnowledgeDocumentSetListResponse`
        def DescribeKnowledgeDocumentSetList(request)
          body = send_request('DescribeKnowledgeDocumentSetList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKnowledgeDocumentSetListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询知识库

        # @param request: Request instance for DescribeKnowledgeSetList.
        # @type request: :class:`Tencentcloud::lowcode::V20210108::DescribeKnowledgeSetListRequest`
        # @rtype: :class:`Tencentcloud::lowcode::V20210108::DescribeKnowledgeSetListResponse`
        def DescribeKnowledgeSetList(request)
          body = send_request('DescribeKnowledgeSetList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKnowledgeSetListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 知识库文档搜索接口

        # @param request: Request instance for SearchDocList.
        # @type request: :class:`Tencentcloud::lowcode::V20210108::SearchDocListRequest`
        # @rtype: :class:`Tencentcloud::lowcode::V20210108::SearchDocListResponse`
        def SearchDocList(request)
          body = send_request('SearchDocList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchDocListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新知识库

        # @param request: Request instance for UpdateKnowledgeSet.
        # @type request: :class:`Tencentcloud::lowcode::V20210108::UpdateKnowledgeSetRequest`
        # @rtype: :class:`Tencentcloud::lowcode::V20210108::UpdateKnowledgeSetResponse`
        def UpdateKnowledgeSet(request)
          body = send_request('UpdateKnowledgeSet', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateKnowledgeSetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新知识库

        # @param request: Request instance for UploadKnowledgeDocumentSet.
        # @type request: :class:`Tencentcloud::lowcode::V20210108::UploadKnowledgeDocumentSetRequest`
        # @rtype: :class:`Tencentcloud::lowcode::V20210108::UploadKnowledgeDocumentSetResponse`
        def UploadKnowledgeDocumentSet(request)
          body = send_request('UploadKnowledgeDocumentSet', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadKnowledgeDocumentSetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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