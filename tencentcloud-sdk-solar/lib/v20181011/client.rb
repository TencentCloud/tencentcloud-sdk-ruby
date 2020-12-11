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
  module Solar
    module V20181011
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2018-10-11'
        @@endpoint = 'solar.tencentcloudapi.com'
        @@sdk_version = 'SOLAR_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 员工渠道更改员工状态

        # @param request: Request instance for CheckStaffChUser.
        # @type request: :class:`Tencentcloud::solar::V20181011::CheckStaffChUserRequest`
        # @rtype: :class:`Tencentcloud::solar::V20181011::CheckStaffChUserResponse`
        def CheckStaffChUser(request)
          body = send_request('CheckStaffChUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckStaffChUserResponse.new
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

        # 复制活动渠道的策略

        # @param request: Request instance for CopyActivityChannel.
        # @type request: :class:`Tencentcloud::solar::V20181011::CopyActivityChannelRequest`
        # @rtype: :class:`Tencentcloud::solar::V20181011::CopyActivityChannelResponse`
        def CopyActivityChannel(request)
          body = send_request('CopyActivityChannel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CopyActivityChannelResponse.new
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

        # 创建项目

        # @param request: Request instance for CreateProject.
        # @type request: :class:`Tencentcloud::solar::V20181011::CreateProjectRequest`
        # @rtype: :class:`Tencentcloud::solar::V20181011::CreateProjectResponse`
        def CreateProject(request)
          body = send_request('CreateProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateProjectResponse.new
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

        # 创建子项目

        # @param request: Request instance for CreateSubProject.
        # @type request: :class:`Tencentcloud::solar::V20181011::CreateSubProjectRequest`
        # @rtype: :class:`Tencentcloud::solar::V20181011::CreateSubProjectResponse`
        def CreateSubProject(request)
          body = send_request('CreateSubProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSubProjectResponse.new
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

        # 删除项目

        # @param request: Request instance for DeleteProject.
        # @type request: :class:`Tencentcloud::solar::V20181011::DeleteProjectRequest`
        # @rtype: :class:`Tencentcloud::solar::V20181011::DeleteProjectResponse`
        def DeleteProject(request)
          body = send_request('DeleteProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteProjectResponse.new
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

        # 客户档案查询客户详情

        # @param request: Request instance for DescribeCustomer.
        # @type request: :class:`Tencentcloud::solar::V20181011::DescribeCustomerRequest`
        # @rtype: :class:`Tencentcloud::solar::V20181011::DescribeCustomerResponse`
        def DescribeCustomer(request)
          body = send_request('DescribeCustomer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomerResponse.new
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

        # 查询客户档案列表

        # @param request: Request instance for DescribeCustomers.
        # @type request: :class:`Tencentcloud::solar::V20181011::DescribeCustomersRequest`
        # @rtype: :class:`Tencentcloud::solar::V20181011::DescribeCustomersResponse`
        def DescribeCustomers(request)
          body = send_request('DescribeCustomers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomersResponse.new
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

        # 项目详情展示

        # @param request: Request instance for DescribeProject.
        # @type request: :class:`Tencentcloud::solar::V20181011::DescribeProjectRequest`
        # @rtype: :class:`Tencentcloud::solar::V20181011::DescribeProjectResponse`
        def DescribeProject(request)
          body = send_request('DescribeProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProjectResponse.new
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

        # 项目库存详情

        # @param request: Request instance for DescribeProjectStock.
        # @type request: :class:`Tencentcloud::solar::V20181011::DescribeProjectStockRequest`
        # @rtype: :class:`Tencentcloud::solar::V20181011::DescribeProjectStockResponse`
        def DescribeProjectStock(request)
          body = send_request('DescribeProjectStock', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProjectStockResponse.new
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

        # 项目列表展示

        # @param request: Request instance for DescribeProjects.
        # @type request: :class:`Tencentcloud::solar::V20181011::DescribeProjectsRequest`
        # @rtype: :class:`Tencentcloud::solar::V20181011::DescribeProjectsResponse`
        def DescribeProjects(request)
          body = send_request('DescribeProjects', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProjectsResponse.new
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

        # 素材查询服务号模板的列表（样例）

        # @param request: Request instance for DescribeResourceTemplateHeaders.
        # @type request: :class:`Tencentcloud::solar::V20181011::DescribeResourceTemplateHeadersRequest`
        # @rtype: :class:`Tencentcloud::solar::V20181011::DescribeResourceTemplateHeadersResponse`
        def DescribeResourceTemplateHeaders(request)
          body = send_request('DescribeResourceTemplateHeaders', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourceTemplateHeadersResponse.new
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

        # 子项目详情

        # @param request: Request instance for DescribeSubProject.
        # @type request: :class:`Tencentcloud::solar::V20181011::DescribeSubProjectRequest`
        # @rtype: :class:`Tencentcloud::solar::V20181011::DescribeSubProjectResponse`
        def DescribeSubProject(request)
          body = send_request('DescribeSubProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSubProjectResponse.new
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

        # 把审批中的工单置为已失效

        # @param request: Request instance for ExpireFlow.
        # @type request: :class:`Tencentcloud::solar::V20181011::ExpireFlowRequest`
        # @rtype: :class:`Tencentcloud::solar::V20181011::ExpireFlowResponse`
        def ExpireFlow(request)
          body = send_request('ExpireFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExpireFlowResponse.new
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

        # 修改项目

        # @param request: Request instance for ModifyProject.
        # @type request: :class:`Tencentcloud::solar::V20181011::ModifyProjectRequest`
        # @rtype: :class:`Tencentcloud::solar::V20181011::ModifyProjectResponse`
        def ModifyProject(request)
          body = send_request('ModifyProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProjectResponse.new
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

        # 下线项目

        # @param request: Request instance for OffLineProject.
        # @type request: :class:`Tencentcloud::solar::V20181011::OffLineProjectRequest`
        # @rtype: :class:`Tencentcloud::solar::V20181011::OffLineProjectResponse`
        def OffLineProject(request)
          body = send_request('OffLineProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OffLineProjectResponse.new
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

        # 补充子项目库存

        # @param request: Request instance for ReplenishProjectStock.
        # @type request: :class:`Tencentcloud::solar::V20181011::ReplenishProjectStockRequest`
        # @rtype: :class:`Tencentcloud::solar::V20181011::ReplenishProjectStockResponse`
        def ReplenishProjectStock(request)
          body = send_request('ReplenishProjectStock', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReplenishProjectStockResponse.new
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

        # 发送企业微信触达任务

        # @param request: Request instance for SendWxTouchTask.
        # @type request: :class:`Tencentcloud::solar::V20181011::SendWxTouchTaskRequest`
        # @rtype: :class:`Tencentcloud::solar::V20181011::SendWxTouchTaskResponse`
        def SendWxTouchTask(request)
          body = send_request('SendWxTouchTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SendWxTouchTaskResponse.new
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