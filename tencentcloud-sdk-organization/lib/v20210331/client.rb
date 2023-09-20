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
  module Organization
    module V20210331
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-03-31'
            api_endpoint = 'organization.tencentcloudapi.com'
            sdk_version = 'ORGANIZATION_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 添加组织成员邮箱

        # @param request: Request instance for AddOrganizationMemberEmail.
        # @type request: :class:`Tencentcloud::organization::V20210331::AddOrganizationMemberEmailRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::AddOrganizationMemberEmailResponse`
        def AddOrganizationMemberEmail(request)
          body = send_request('AddOrganizationMemberEmail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddOrganizationMemberEmailResponse.new
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

        # 添加企业组织节点

        # @param request: Request instance for AddOrganizationNode.
        # @type request: :class:`Tencentcloud::organization::V20210331::AddOrganizationNodeRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::AddOrganizationNodeResponse`
        def AddOrganizationNode(request)
          body = send_request('AddOrganizationNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddOrganizationNodeResponse.new
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

        # 绑定组织成员和组织管理员子账号的授权关系

        # @param request: Request instance for BindOrganizationMemberAuthAccount.
        # @type request: :class:`Tencentcloud::organization::V20210331::BindOrganizationMemberAuthAccountRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::BindOrganizationMemberAuthAccountResponse`
        def BindOrganizationMemberAuthAccount(request)
          body = send_request('BindOrganizationMemberAuthAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindOrganizationMemberAuthAccountResponse.new
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

        # 取消组织成员和组织管理员子账号的授权关系

        # @param request: Request instance for CancelOrganizationMemberAuthAccount.
        # @type request: :class:`Tencentcloud::organization::V20210331::CancelOrganizationMemberAuthAccountRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::CancelOrganizationMemberAuthAccountResponse`
        def CancelOrganizationMemberAuthAccount(request)
          body = send_request('CancelOrganizationMemberAuthAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelOrganizationMemberAuthAccountResponse.new
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

        # 创建企业组织

        # @param request: Request instance for CreateOrganization.
        # @type request: :class:`Tencentcloud::organization::V20210331::CreateOrganizationRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::CreateOrganizationResponse`
        def CreateOrganization(request)
          body = send_request('CreateOrganization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOrganizationResponse.new
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

        # 创建组织成员

        # @param request: Request instance for CreateOrganizationMember.
        # @type request: :class:`Tencentcloud::organization::V20210331::CreateOrganizationMemberRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::CreateOrganizationMemberResponse`
        def CreateOrganizationMember(request)
          body = send_request('CreateOrganizationMember', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOrganizationMemberResponse.new
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

        # 添加组织成员访问授权

        # @param request: Request instance for CreateOrganizationMemberAuthIdentity.
        # @type request: :class:`Tencentcloud::organization::V20210331::CreateOrganizationMemberAuthIdentityRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::CreateOrganizationMemberAuthIdentityResponse`
        def CreateOrganizationMemberAuthIdentity(request)
          body = send_request('CreateOrganizationMemberAuthIdentity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOrganizationMemberAuthIdentityResponse.new
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

        # 创建组织成员访问授权策略

        # @param request: Request instance for CreateOrganizationMemberPolicy.
        # @type request: :class:`Tencentcloud::organization::V20210331::CreateOrganizationMemberPolicyRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::CreateOrganizationMemberPolicyResponse`
        def CreateOrganizationMemberPolicy(request)
          body = send_request('CreateOrganizationMemberPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOrganizationMemberPolicyResponse.new
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

        # 删除企业组织

        # @param request: Request instance for DeleteOrganization.
        # @type request: :class:`Tencentcloud::organization::V20210331::DeleteOrganizationRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DeleteOrganizationResponse`
        def DeleteOrganization(request)
          body = send_request('DeleteOrganization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteOrganizationResponse.new
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

        # 删除组织成员访问授权

        # @param request: Request instance for DeleteOrganizationMemberAuthIdentity.
        # @type request: :class:`Tencentcloud::organization::V20210331::DeleteOrganizationMemberAuthIdentityRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DeleteOrganizationMemberAuthIdentityResponse`
        def DeleteOrganizationMemberAuthIdentity(request)
          body = send_request('DeleteOrganizationMemberAuthIdentity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteOrganizationMemberAuthIdentityResponse.new
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

        # 批量删除企业组织成员

        # @param request: Request instance for DeleteOrganizationMembers.
        # @type request: :class:`Tencentcloud::organization::V20210331::DeleteOrganizationMembersRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DeleteOrganizationMembersResponse`
        def DeleteOrganizationMembers(request)
          body = send_request('DeleteOrganizationMembers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteOrganizationMembersResponse.new
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

        # 删除组织成员访问策略

        # @param request: Request instance for DeleteOrganizationMembersPolicy.
        # @type request: :class:`Tencentcloud::organization::V20210331::DeleteOrganizationMembersPolicyRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DeleteOrganizationMembersPolicyResponse`
        def DeleteOrganizationMembersPolicy(request)
          body = send_request('DeleteOrganizationMembersPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteOrganizationMembersPolicyResponse.new
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

        # 批量删除企业组织节点

        # @param request: Request instance for DeleteOrganizationNodes.
        # @type request: :class:`Tencentcloud::organization::V20210331::DeleteOrganizationNodesRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DeleteOrganizationNodesResponse`
        def DeleteOrganizationNodes(request)
          body = send_request('DeleteOrganizationNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteOrganizationNodesResponse.new
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

        # 获取企业组织信息

        # @param request: Request instance for DescribeOrganization.
        # @type request: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationResponse`
        def DescribeOrganization(request)
          body = send_request('DescribeOrganization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrganizationResponse.new
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

        # 获取已设置管理员的互信主体关系列表

        # @param request: Request instance for DescribeOrganizationAuthNode.
        # @type request: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationAuthNodeRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationAuthNodeResponse`
        def DescribeOrganizationAuthNode(request)
          body = send_request('DescribeOrganizationAuthNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrganizationAuthNodeResponse.new
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

        # 以成员维度获取组织财务信息

        # @param request: Request instance for DescribeOrganizationFinancialByMember.
        # @type request: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationFinancialByMemberRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationFinancialByMemberResponse`
        def DescribeOrganizationFinancialByMember(request)
          body = send_request('DescribeOrganizationFinancialByMember', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrganizationFinancialByMemberResponse.new
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

        # 以月维度获取组织财务信息趋势

        # @param request: Request instance for DescribeOrganizationFinancialByMonth.
        # @type request: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationFinancialByMonthRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationFinancialByMonthResponse`
        def DescribeOrganizationFinancialByMonth(request)
          body = send_request('DescribeOrganizationFinancialByMonth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrganizationFinancialByMonthResponse.new
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

        # 以产品维度获取组织财务信息

        # @param request: Request instance for DescribeOrganizationFinancialByProduct.
        # @type request: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationFinancialByProductRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationFinancialByProductResponse`
        def DescribeOrganizationFinancialByProduct(request)
          body = send_request('DescribeOrganizationFinancialByProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrganizationFinancialByProductResponse.new
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

        # 获取组织成员被绑定授权关系的子账号列表

        # @param request: Request instance for DescribeOrganizationMemberAuthAccounts.
        # @type request: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationMemberAuthAccountsRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationMemberAuthAccountsResponse`
        def DescribeOrganizationMemberAuthAccounts(request)
          body = send_request('DescribeOrganizationMemberAuthAccounts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrganizationMemberAuthAccountsResponse.new
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

        # 获取组织成员可被管理的身份列表

        # @param request: Request instance for DescribeOrganizationMemberAuthIdentities.
        # @type request: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationMemberAuthIdentitiesRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationMemberAuthIdentitiesResponse`
        def DescribeOrganizationMemberAuthIdentities(request)
          body = send_request('DescribeOrganizationMemberAuthIdentities', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrganizationMemberAuthIdentitiesResponse.new
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

        # 查询成员邮箱绑定详细信息

        # @param request: Request instance for DescribeOrganizationMemberEmailBind.
        # @type request: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationMemberEmailBindRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationMemberEmailBindResponse`
        def DescribeOrganizationMemberEmailBind(request)
          body = send_request('DescribeOrganizationMemberEmailBind', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrganizationMemberEmailBindResponse.new
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

        # 获取组织成员的授权策略列表

        # @param request: Request instance for DescribeOrganizationMemberPolicies.
        # @type request: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationMemberPoliciesRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationMemberPoliciesResponse`
        def DescribeOrganizationMemberPolicies(request)
          body = send_request('DescribeOrganizationMemberPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrganizationMemberPoliciesResponse.new
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

        # 获取企业组织成员列表

        # @param request: Request instance for DescribeOrganizationMembers.
        # @type request: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationMembersRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationMembersResponse`
        def DescribeOrganizationMembers(request)
          body = send_request('DescribeOrganizationMembers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrganizationMembersResponse.new
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

        # 获取组织节点列表

        # @param request: Request instance for DescribeOrganizationNodes.
        # @type request: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationNodesRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::DescribeOrganizationNodesResponse`
        def DescribeOrganizationNodes(request)
          body = send_request('DescribeOrganizationNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrganizationNodesResponse.new
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

        # 获取组织成员访问身份列表

        # @param request: Request instance for ListOrganizationIdentity.
        # @type request: :class:`Tencentcloud::organization::V20210331::ListOrganizationIdentityRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::ListOrganizationIdentityResponse`
        def ListOrganizationIdentity(request)
          body = send_request('ListOrganizationIdentity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListOrganizationIdentityResponse.new
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

        # 移动成员到指定企业组织节点

        # @param request: Request instance for MoveOrganizationNodeMembers.
        # @type request: :class:`Tencentcloud::organization::V20210331::MoveOrganizationNodeMembersRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::MoveOrganizationNodeMembersResponse`
        def MoveOrganizationNodeMembers(request)
          body = send_request('MoveOrganizationNodeMembers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = MoveOrganizationNodeMembersResponse.new
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

        # 退出企业组织

        # @param request: Request instance for QuitOrganization.
        # @type request: :class:`Tencentcloud::organization::V20210331::QuitOrganizationRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::QuitOrganizationResponse`
        def QuitOrganization(request)
          body = send_request('QuitOrganization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QuitOrganizationResponse.new
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

        # 更新组织成员信息

        # @param request: Request instance for UpdateOrganizationMember.
        # @type request: :class:`Tencentcloud::organization::V20210331::UpdateOrganizationMemberRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::UpdateOrganizationMemberResponse`
        def UpdateOrganizationMember(request)
          body = send_request('UpdateOrganizationMember', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateOrganizationMemberResponse.new
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

        # 修改绑定成员邮箱

        # @param request: Request instance for UpdateOrganizationMemberEmailBind.
        # @type request: :class:`Tencentcloud::organization::V20210331::UpdateOrganizationMemberEmailBindRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::UpdateOrganizationMemberEmailBindResponse`
        def UpdateOrganizationMemberEmailBind(request)
          body = send_request('UpdateOrganizationMemberEmailBind', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateOrganizationMemberEmailBindResponse.new
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

        # 更新企业组织节点

        # @param request: Request instance for UpdateOrganizationNode.
        # @type request: :class:`Tencentcloud::organization::V20210331::UpdateOrganizationNodeRequest`
        # @rtype: :class:`Tencentcloud::organization::V20210331::UpdateOrganizationNodeResponse`
        def UpdateOrganizationNode(request)
          body = send_request('UpdateOrganizationNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateOrganizationNodeResponse.new
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