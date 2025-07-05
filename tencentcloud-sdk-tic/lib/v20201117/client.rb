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
  module Tic
    module V20201117
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-11-17'
            api_endpoint = 'tic.tencentcloudapi.com'
            sdk_version = 'TIC_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口（ApplyStack）用于触发资源栈下某个版本的Apply事件。

        # - 当版本处于PLAN_IN_PROGRESS或APPLY_IN_PROGRESS状态时，将无法再执行本操作
        # - 当版本处于APPLY_COMPLETED状态时，本操作无法执行

        # @param request: Request instance for ApplyStack.
        # @type request: :class:`Tencentcloud::tic::V20201117::ApplyStackRequest`
        # @rtype: :class:`Tencentcloud::tic::V20201117::ApplyStackResponse`
        def ApplyStack(request)
          body = send_request('ApplyStack', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyStackResponse.new
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

        # 本接口（CreateStack）用于通过传递一个COS的terraform zip模版URL来创建一个资源栈。创建资源栈后仍需要用户调用对应的plan, apply, destory执行对应的事件。

        # @param request: Request instance for CreateStack.
        # @type request: :class:`Tencentcloud::tic::V20201117::CreateStackRequest`
        # @rtype: :class:`Tencentcloud::tic::V20201117::CreateStackResponse`
        def CreateStack(request)
          body = send_request('CreateStack', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateStackResponse.new
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

        # 本接口（CreateStackVersion）用于给资源栈新增一个HCL模版版本，仅限COS链接，且为zip格式。

        # @param request: Request instance for CreateStackVersion.
        # @type request: :class:`Tencentcloud::tic::V20201117::CreateStackVersionRequest`
        # @rtype: :class:`Tencentcloud::tic::V20201117::CreateStackVersionResponse`
        def CreateStackVersion(request)
          body = send_request('CreateStackVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateStackVersionResponse.new
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

        # 本接口（DeleteStack）用于删除一个资源栈（配置、版本、事件信息）。但不会销毁资源管理的云资源。如果需要销毁资源栈管理的云资源，请调用 DestoryStack 接口销毁云资源。

        # @param request: Request instance for DeleteStack.
        # @type request: :class:`Tencentcloud::tic::V20201117::DeleteStackRequest`
        # @rtype: :class:`Tencentcloud::tic::V20201117::DeleteStackResponse`
        def DeleteStack(request)
          body = send_request('DeleteStack', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteStackResponse.new
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

        # 本接口（DeleteStackVersion）用于删除一个版本，处于PLAN_IN_PROGRESS和APPLY_IN_PROGRESS状态中的版本无法删除。

        # @param request: Request instance for DeleteStackVersion.
        # @type request: :class:`Tencentcloud::tic::V20201117::DeleteStackVersionRequest`
        # @rtype: :class:`Tencentcloud::tic::V20201117::DeleteStackVersionResponse`
        def DeleteStackVersion(request)
          body = send_request('DeleteStackVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteStackVersionResponse.new
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

        # 本接口（DescribeStackEvent）用于获取单个事件详情，尤其是可以得到事件的详细控制台输出文本。

        # @param request: Request instance for DescribeStackEvent.
        # @type request: :class:`Tencentcloud::tic::V20201117::DescribeStackEventRequest`
        # @rtype: :class:`Tencentcloud::tic::V20201117::DescribeStackEventResponse`
        def DescribeStackEvent(request)
          body = send_request('DescribeStackEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStackEventResponse.new
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

        # 本接口（DescribeStackEvents）用于查看一个或多个事件详细信息。

        # - 可以根据事件ID过滤感兴趣的事件
        # - 也可以根据版本ID，资源栈ID，事件类型，事件状态过滤事件，过滤信息详细请见过滤器Filter
        # - 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的事件

        # @param request: Request instance for DescribeStackEvents.
        # @type request: :class:`Tencentcloud::tic::V20201117::DescribeStackEventsRequest`
        # @rtype: :class:`Tencentcloud::tic::V20201117::DescribeStackEventsResponse`
        def DescribeStackEvents(request)
          body = send_request('DescribeStackEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStackEventsResponse.new
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

        # 本接口（DescribeStackVersions）用于查询一个或多个版本的详细信息。

        # - 可以根据版本ID查询感兴趣的版本
        # - 可以根据版本名字和状态来过滤版本，详见过滤器Filter
        # - 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的版本

        # @param request: Request instance for DescribeStackVersions.
        # @type request: :class:`Tencentcloud::tic::V20201117::DescribeStackVersionsRequest`
        # @rtype: :class:`Tencentcloud::tic::V20201117::DescribeStackVersionsResponse`
        def DescribeStackVersions(request)
          body = send_request('DescribeStackVersions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStackVersionsResponse.new
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

        # 本接口（DescribeStacks）用于查询一个或多个资源栈的详细信息。

        # - 可以根据资源栈ID来查询感兴趣的资源栈信息
        # - 若参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的资源栈

        # @param request: Request instance for DescribeStacks.
        # @type request: :class:`Tencentcloud::tic::V20201117::DescribeStacksRequest`
        # @rtype: :class:`Tencentcloud::tic::V20201117::DescribeStacksResponse`
        def DescribeStacks(request)
          body = send_request('DescribeStacks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStacksResponse.new
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

        # 本接口（DestroyStack）用于删除资源栈下的某个版本所创建的资源。

        # @param request: Request instance for DestroyStack.
        # @type request: :class:`Tencentcloud::tic::V20201117::DestroyStackRequest`
        # @rtype: :class:`Tencentcloud::tic::V20201117::DestroyStackResponse`
        def DestroyStack(request)
          body = send_request('DestroyStack', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroyStackResponse.new
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

        # 本接口（PlanStack）用于触发资源栈下某个版本的PLAN事件。

        # - 当版本处于PLAN_IN_PROGRESS或APPLY_IN_PROGRESS状态时，将无法再执行本操作
        # - 当版本处于APPLY_COMPLETED状态时，本操作无法执行

        # @param request: Request instance for PlanStack.
        # @type request: :class:`Tencentcloud::tic::V20201117::PlanStackRequest`
        # @rtype: :class:`Tencentcloud::tic::V20201117::PlanStackResponse`
        def PlanStack(request)
          body = send_request('PlanStack', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PlanStackResponse.new
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

        # 本接口（UpdateStack）用于更新资源栈的名称和描述。

        # @param request: Request instance for UpdateStack.
        # @type request: :class:`Tencentcloud::tic::V20201117::UpdateStackRequest`
        # @rtype: :class:`Tencentcloud::tic::V20201117::UpdateStackResponse`
        def UpdateStack(request)
          body = send_request('UpdateStack', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateStackResponse.new
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

        # 本接口（UpdateStackVersion）用于更新一个版本的模版内容，名称或描述，模版仅限COS URL，且为zip格式。

        # @param request: Request instance for UpdateStackVersion.
        # @type request: :class:`Tencentcloud::tic::V20201117::UpdateStackVersionRequest`
        # @rtype: :class:`Tencentcloud::tic::V20201117::UpdateStackVersionResponse`
        def UpdateStackVersion(request)
          body = send_request('UpdateStackVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateStackVersionResponse.new
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