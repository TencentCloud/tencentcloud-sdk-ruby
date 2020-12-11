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
    module V20181225
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2018-12-25'
        @@endpoint = 'organization.tencentcloudapi.com'
        @@sdk_version = 'ORGANIZATION_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 接受加入企业组织邀请

        # @param request: Request instance for AcceptOrganizationInvitation.
        # @type request: :class:`Tencentcloud::organization::V20181225::AcceptOrganizationInvitationRequest`
        # @rtype: :class:`Tencentcloud::organization::V20181225::AcceptOrganizationInvitationResponse`
        def AcceptOrganizationInvitation(request)
          body = send_request('AcceptOrganizationInvitation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AcceptOrganizationInvitationResponse.new
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

        # 添加企业组织单元

        # @param request: Request instance for AddOrganizationNode.
        # @type request: :class:`Tencentcloud::organization::V20181225::AddOrganizationNodeRequest`
        # @rtype: :class:`Tencentcloud::organization::V20181225::AddOrganizationNodeResponse`
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

        # 取消企业组织邀请

        # @param request: Request instance for CancelOrganizationInvitation.
        # @type request: :class:`Tencentcloud::organization::V20181225::CancelOrganizationInvitationRequest`
        # @rtype: :class:`Tencentcloud::organization::V20181225::CancelOrganizationInvitationResponse`
        def CancelOrganizationInvitation(request)
          body = send_request('CancelOrganizationInvitation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelOrganizationInvitationResponse.new
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
        # @type request: :class:`Tencentcloud::organization::V20181225::CreateOrganizationRequest`
        # @rtype: :class:`Tencentcloud::organization::V20181225::CreateOrganizationResponse`
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

        # 删除企业组织

        # @param request: Request instance for DeleteOrganization.
        # @type request: :class:`Tencentcloud::organization::V20181225::DeleteOrganizationRequest`
        # @rtype: :class:`Tencentcloud::organization::V20181225::DeleteOrganizationResponse`
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

        # 删除企业组织成员

        # @param request: Request instance for DeleteOrganizationMemberFromNode.
        # @type request: :class:`Tencentcloud::organization::V20181225::DeleteOrganizationMemberFromNodeRequest`
        # @rtype: :class:`Tencentcloud::organization::V20181225::DeleteOrganizationMemberFromNodeResponse`
        def DeleteOrganizationMemberFromNode(request)
          body = send_request('DeleteOrganizationMemberFromNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteOrganizationMemberFromNodeResponse.new
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
        # @type request: :class:`Tencentcloud::organization::V20181225::DeleteOrganizationMembersRequest`
        # @rtype: :class:`Tencentcloud::organization::V20181225::DeleteOrganizationMembersResponse`
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

        # 批量删除企业组织单元

        # @param request: Request instance for DeleteOrganizationNodes.
        # @type request: :class:`Tencentcloud::organization::V20181225::DeleteOrganizationNodesRequest`
        # @rtype: :class:`Tencentcloud::organization::V20181225::DeleteOrganizationNodesResponse`
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

        # 拒绝企业组织邀请

        # @param request: Request instance for DenyOrganizationInvitation.
        # @type request: :class:`Tencentcloud::organization::V20181225::DenyOrganizationInvitationRequest`
        # @rtype: :class:`Tencentcloud::organization::V20181225::DenyOrganizationInvitationResponse`
        def DenyOrganizationInvitation(request)
          body = send_request('DenyOrganizationInvitation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DenyOrganizationInvitationResponse.new
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

        # @param request: Request instance for GetOrganization.
        # @type request: :class:`Tencentcloud::organization::V20181225::GetOrganizationRequest`
        # @rtype: :class:`Tencentcloud::organization::V20181225::GetOrganizationResponse`
        def GetOrganization(request)
          body = send_request('GetOrganization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetOrganizationResponse.new
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

        # 获取企业组织成员

        # @param request: Request instance for GetOrganizationMember.
        # @type request: :class:`Tencentcloud::organization::V20181225::GetOrganizationMemberRequest`
        # @rtype: :class:`Tencentcloud::organization::V20181225::GetOrganizationMemberResponse`
        def GetOrganizationMember(request)
          body = send_request('GetOrganizationMember', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetOrganizationMemberResponse.new
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

        # 获取邀请信息列表

        # @param request: Request instance for ListOrganizationInvitations.
        # @type request: :class:`Tencentcloud::organization::V20181225::ListOrganizationInvitationsRequest`
        # @rtype: :class:`Tencentcloud::organization::V20181225::ListOrganizationInvitationsResponse`
        def ListOrganizationInvitations(request)
          body = send_request('ListOrganizationInvitations', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListOrganizationInvitationsResponse.new
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

        # @param request: Request instance for ListOrganizationMembers.
        # @type request: :class:`Tencentcloud::organization::V20181225::ListOrganizationMembersRequest`
        # @rtype: :class:`Tencentcloud::organization::V20181225::ListOrganizationMembersResponse`
        def ListOrganizationMembers(request)
          body = send_request('ListOrganizationMembers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListOrganizationMembersResponse.new
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

        # 获取企业组织单元成员列表

        # @param request: Request instance for ListOrganizationNodeMembers.
        # @type request: :class:`Tencentcloud::organization::V20181225::ListOrganizationNodeMembersRequest`
        # @rtype: :class:`Tencentcloud::organization::V20181225::ListOrganizationNodeMembersResponse`
        def ListOrganizationNodeMembers(request)
          body = send_request('ListOrganizationNodeMembers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListOrganizationNodeMembersResponse.new
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

        # 获取企业组织单元列表

        # @param request: Request instance for ListOrganizationNodes.
        # @type request: :class:`Tencentcloud::organization::V20181225::ListOrganizationNodesRequest`
        # @rtype: :class:`Tencentcloud::organization::V20181225::ListOrganizationNodesResponse`
        def ListOrganizationNodes(request)
          body = send_request('ListOrganizationNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListOrganizationNodesResponse.new
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

        # 移动成员到指定企业组织单元

        # @param request: Request instance for MoveOrganizationMembersToNode.
        # @type request: :class:`Tencentcloud::organization::V20181225::MoveOrganizationMembersToNodeRequest`
        # @rtype: :class:`Tencentcloud::organization::V20181225::MoveOrganizationMembersToNodeResponse`
        def MoveOrganizationMembersToNode(request)
          body = send_request('MoveOrganizationMembersToNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = MoveOrganizationMembersToNodeResponse.new
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
        # @type request: :class:`Tencentcloud::organization::V20181225::QuitOrganizationRequest`
        # @rtype: :class:`Tencentcloud::organization::V20181225::QuitOrganizationResponse`
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

        # 发送企业组织邀请

        # @param request: Request instance for SendOrganizationInvitation.
        # @type request: :class:`Tencentcloud::organization::V20181225::SendOrganizationInvitationRequest`
        # @rtype: :class:`Tencentcloud::organization::V20181225::SendOrganizationInvitationResponse`
        def SendOrganizationInvitation(request)
          body = send_request('SendOrganizationInvitation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SendOrganizationInvitationResponse.new
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

        # 更新企业成员信息

        # @param request: Request instance for UpdateOrganizationMember.
        # @type request: :class:`Tencentcloud::organization::V20181225::UpdateOrganizationMemberRequest`
        # @rtype: :class:`Tencentcloud::organization::V20181225::UpdateOrganizationMemberResponse`
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

        # 更新企业组织单元

        # @param request: Request instance for UpdateOrganizationNode.
        # @type request: :class:`Tencentcloud::organization::V20181225::UpdateOrganizationNodeRequest`
        # @rtype: :class:`Tencentcloud::organization::V20181225::UpdateOrganizationNodeResponse`
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