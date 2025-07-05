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
  module Tbm
    module V20180129
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-01-29'
            api_endpoint = 'tbm.tencentcloudapi.com'
            sdk_version = 'TBM_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 通过分析用户在评价品牌时用词的正负面情绪评分，返回品牌好评与差评评价条数，按天输出结果。

        # @param request: Request instance for DescribeBrandCommentCount.
        # @type request: :class:`Tencentcloud::tbm::V20180129::DescribeBrandCommentCountRequest`
        # @rtype: :class:`Tencentcloud::tbm::V20180129::DescribeBrandCommentCountResponse`
        def DescribeBrandCommentCount(request)
          body = send_request('DescribeBrandCommentCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBrandCommentCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 监测品牌关键词命中文章标题或全文的文章篇数，按天输出数据。

        # @param request: Request instance for DescribeBrandExposure.
        # @type request: :class:`Tencentcloud::tbm::V20180129::DescribeBrandExposureRequest`
        # @rtype: :class:`Tencentcloud::tbm::V20180129::DescribeBrandExposureResponse`
        def DescribeBrandExposure(request)
          body = send_request('DescribeBrandExposure', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBrandExposureResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 监测品牌关键词出现在媒体网站（新闻媒体、网络门户、政府网站、微信公众号、天天快报等）发布资讯标题和正文中的报道数。按天输出结果。

        # @param request: Request instance for DescribeBrandMediaReport.
        # @type request: :class:`Tencentcloud::tbm::V20180129::DescribeBrandMediaReportRequest`
        # @rtype: :class:`Tencentcloud::tbm::V20180129::DescribeBrandMediaReportResponse`
        def DescribeBrandMediaReport(request)
          body = send_request('DescribeBrandMediaReport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBrandMediaReportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过分析用户在评价品牌时用词的正负面情绪评分，返回品牌热门差评观点列表。

        # @param request: Request instance for DescribeBrandNegComments.
        # @type request: :class:`Tencentcloud::tbm::V20180129::DescribeBrandNegCommentsRequest`
        # @rtype: :class:`Tencentcloud::tbm::V20180129::DescribeBrandNegCommentsResponse`
        def DescribeBrandNegComments(request)
          body = send_request('DescribeBrandNegComments', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBrandNegCommentsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过分析用户在评价品牌时用词的正负面情绪评分，返回品牌热门好评观点列表。

        # @param request: Request instance for DescribeBrandPosComments.
        # @type request: :class:`Tencentcloud::tbm::V20180129::DescribeBrandPosCommentsRequest`
        # @rtype: :class:`Tencentcloud::tbm::V20180129::DescribeBrandPosCommentsResponse`
        def DescribeBrandPosComments(request)
          body = send_request('DescribeBrandPosComments', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBrandPosCommentsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 检测品牌关键词出现在微博、QQ兴趣部落、论坛、博客等个人公开贡献资讯中的内容，每天聚合近30天热度最高的观点列表。

        # @param request: Request instance for DescribeBrandSocialOpinion.
        # @type request: :class:`Tencentcloud::tbm::V20180129::DescribeBrandSocialOpinionRequest`
        # @rtype: :class:`Tencentcloud::tbm::V20180129::DescribeBrandSocialOpinionResponse`
        def DescribeBrandSocialOpinion(request)
          body = send_request('DescribeBrandSocialOpinion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBrandSocialOpinionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 监测品牌关键词出现在微博、QQ兴趣部落、论坛、博客等个人公开贡献资讯中的条数。按天输出数据结果。

        # @param request: Request instance for DescribeBrandSocialReport.
        # @type request: :class:`Tencentcloud::tbm::V20180129::DescribeBrandSocialReportRequest`
        # @rtype: :class:`Tencentcloud::tbm::V20180129::DescribeBrandSocialReportResponse`
        def DescribeBrandSocialReport(request)
          body = send_request('DescribeBrandSocialReport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBrandSocialReportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据客户定制的行业关键词，监测关键词出现在媒体网站（新闻媒体、网络门户、政府网站、微信公众号、天天快报等）发布资讯标题和正文中的报道数，以及文章列表、来源渠道、作者、发布时间等。

        # @param request: Request instance for DescribeIndustryNews.
        # @type request: :class:`Tencentcloud::tbm::V20180129::DescribeIndustryNewsRequest`
        # @rtype: :class:`Tencentcloud::tbm::V20180129::DescribeIndustryNewsResponse`
        def DescribeIndustryNews(request)
          body = send_request('DescribeIndustryNews', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIndustryNewsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过分析洞察参与过品牌媒体互动的用户，比如公开发表品牌的新闻评论、在公开社交渠道发表过对品牌的评价观点等用户，返回用户的画像属性分布，例如性别、年龄、地域、喜爱的明星、喜爱的影视。

        # @param request: Request instance for DescribeUserPortrait.
        # @type request: :class:`Tencentcloud::tbm::V20180129::DescribeUserPortraitRequest`
        # @rtype: :class:`Tencentcloud::tbm::V20180129::DescribeUserPortraitResponse`
        def DescribeUserPortrait(request)
          body = send_request('DescribeUserPortrait', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserPortraitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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