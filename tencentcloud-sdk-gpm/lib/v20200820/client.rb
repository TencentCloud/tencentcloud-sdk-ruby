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
  module Gpm
    module V20200820
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-08-20'
            api_endpoint = 'gpm.tencentcloudapi.com'
            sdk_version = 'GPM_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持

        # 取消匹配。

        # @param request: Request instance for CancelMatching.
        # @type request: :class:`Tencentcloud::gpm::V20200820::CancelMatchingRequest`
        # @rtype: :class:`Tencentcloud::gpm::V20200820::CancelMatchingResponse`
        def CancelMatching(request)
          body = send_request('CancelMatching', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelMatchingResponse.new
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

        # 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持

        # 创建匹配

        # @param request: Request instance for CreateMatch.
        # @type request: :class:`Tencentcloud::gpm::V20200820::CreateMatchRequest`
        # @rtype: :class:`Tencentcloud::gpm::V20200820::CreateMatchResponse`
        def CreateMatch(request)
          body = send_request('CreateMatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMatchResponse.new
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

        # 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持

        # 创建规则

        # @param request: Request instance for CreateRule.
        # @type request: :class:`Tencentcloud::gpm::V20200820::CreateRuleRequest`
        # @rtype: :class:`Tencentcloud::gpm::V20200820::CreateRuleResponse`
        def CreateRule(request)
          body = send_request('CreateRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRuleResponse.new
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

        # 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持

        # 删除匹配

        # @param request: Request instance for DeleteMatch.
        # @type request: :class:`Tencentcloud::gpm::V20200820::DeleteMatchRequest`
        # @rtype: :class:`Tencentcloud::gpm::V20200820::DeleteMatchResponse`
        def DeleteMatch(request)
          body = send_request('DeleteMatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMatchResponse.new
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

        # 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持

        # 删除规则

        # @param request: Request instance for DeleteRule.
        # @type request: :class:`Tencentcloud::gpm::V20200820::DeleteRuleRequest`
        # @rtype: :class:`Tencentcloud::gpm::V20200820::DeleteRuleResponse`
        def DeleteRule(request)
          body = send_request('DeleteRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRuleResponse.new
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

        # 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持

        # 统计数据

        # @param request: Request instance for DescribeData.
        # @type request: :class:`Tencentcloud::gpm::V20200820::DescribeDataRequest`
        # @rtype: :class:`Tencentcloud::gpm::V20200820::DescribeDataResponse`
        def DescribeData(request)
          body = send_request('DescribeData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataResponse.new
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

        # 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持

        # 查询匹配详情

        # @param request: Request instance for DescribeMatch.
        # @type request: :class:`Tencentcloud::gpm::V20200820::DescribeMatchRequest`
        # @rtype: :class:`Tencentcloud::gpm::V20200820::DescribeMatchResponse`
        def DescribeMatch(request)
          body = send_request('DescribeMatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMatchResponse.new
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

        # 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持

        # 分页查询匹配Code

        # @param request: Request instance for DescribeMatchCodes.
        # @type request: :class:`Tencentcloud::gpm::V20200820::DescribeMatchCodesRequest`
        # @rtype: :class:`Tencentcloud::gpm::V20200820::DescribeMatchCodesResponse`
        def DescribeMatchCodes(request)
          body = send_request('DescribeMatchCodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMatchCodesResponse.new
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

        # 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持

        # 分页查询匹配列表

        # @param request: Request instance for DescribeMatches.
        # @type request: :class:`Tencentcloud::gpm::V20200820::DescribeMatchesRequest`
        # @rtype: :class:`Tencentcloud::gpm::V20200820::DescribeMatchesResponse`
        def DescribeMatches(request)
          body = send_request('DescribeMatches', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMatchesResponse.new
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

        # 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持

        # 查询匹配进度。

        # @param request: Request instance for DescribeMatchingProgress.
        # @type request: :class:`Tencentcloud::gpm::V20200820::DescribeMatchingProgressRequest`
        # @rtype: :class:`Tencentcloud::gpm::V20200820::DescribeMatchingProgressResponse`
        def DescribeMatchingProgress(request)
          body = send_request('DescribeMatchingProgress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMatchingProgressResponse.new
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

        # 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持

        # 查询规则详情

        # @param request: Request instance for DescribeRule.
        # @type request: :class:`Tencentcloud::gpm::V20200820::DescribeRuleRequest`
        # @rtype: :class:`Tencentcloud::gpm::V20200820::DescribeRuleResponse`
        def DescribeRule(request)
          body = send_request('DescribeRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRuleResponse.new
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

        # 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持

        # 分页查询规则集列表

        # @param request: Request instance for DescribeRules.
        # @type request: :class:`Tencentcloud::gpm::V20200820::DescribeRulesRequest`
        # @rtype: :class:`Tencentcloud::gpm::V20200820::DescribeRulesResponse`
        def DescribeRules(request)
          body = send_request('DescribeRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRulesResponse.new
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

        # 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持

        # 查询匹配Token，Token用于push消息验证。

        # @param request: Request instance for DescribeToken.
        # @type request: :class:`Tencentcloud::gpm::V20200820::DescribeTokenRequest`
        # @rtype: :class:`Tencentcloud::gpm::V20200820::DescribeTokenResponse`
        def DescribeToken(request)
          body = send_request('DescribeToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTokenResponse.new
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

        # 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持

        # 修改匹配

        # @param request: Request instance for ModifyMatch.
        # @type request: :class:`Tencentcloud::gpm::V20200820::ModifyMatchRequest`
        # @rtype: :class:`Tencentcloud::gpm::V20200820::ModifyMatchResponse`
        def ModifyMatch(request)
          body = send_request('ModifyMatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMatchResponse.new
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

        # 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持

        # 修改规则（描述、标签）

        # @param request: Request instance for ModifyRule.
        # @type request: :class:`Tencentcloud::gpm::V20200820::ModifyRuleRequest`
        # @rtype: :class:`Tencentcloud::gpm::V20200820::ModifyRuleResponse`
        def ModifyRule(request)
          body = send_request('ModifyRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRuleResponse.new
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

        # 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持

        # 修改匹配Token。

        # @param request: Request instance for ModifyToken.
        # @type request: :class:`Tencentcloud::gpm::V20200820::ModifyTokenRequest`
        # @rtype: :class:`Tencentcloud::gpm::V20200820::ModifyTokenResponse`
        def ModifyToken(request)
          body = send_request('ModifyToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTokenResponse.new
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

        # 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持

        # 支持传入一个玩家或多个玩家发起匹配，在同一个请求内的玩家将被分到同一个对局。

        # @param request: Request instance for StartMatching.
        # @type request: :class:`Tencentcloud::gpm::V20200820::StartMatchingRequest`
        # @rtype: :class:`Tencentcloud::gpm::V20200820::StartMatchingResponse`
        def StartMatching(request)
          body = send_request('StartMatching', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartMatchingResponse.new
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

        # 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持

        # 通过调用StartMatchingBackfill，用户可以传入一个回填的匹配请求，GPM为回填请求搜索符合条件的ticket并形成一个新的match。

        # @param request: Request instance for StartMatchingBackfill.
        # @type request: :class:`Tencentcloud::gpm::V20200820::StartMatchingBackfillRequest`
        # @rtype: :class:`Tencentcloud::gpm::V20200820::StartMatchingBackfillResponse`
        def StartMatchingBackfill(request)
          body = send_request('StartMatchingBackfill', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartMatchingBackfillResponse.new
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