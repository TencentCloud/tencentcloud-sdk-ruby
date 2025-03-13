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
  module Lcic
    module V20220817
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-08-17'
            api_endpoint = 'lcic.tencentcloudapi.com'
            sdk_version = 'LCIC_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 此接口用于添加成员列表到指定群组

        # @param request: Request instance for AddGroupMember.
        # @type request: :class:`Tencentcloud::lcic::V20220817::AddGroupMemberRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::AddGroupMemberResponse`
        def AddGroupMember(request)
          body = send_request('AddGroupMember', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddGroupMemberResponse.new
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

        # 此接口用于批量添加成员列表到指定群组

        # @param request: Request instance for BatchAddGroupMember.
        # @type request: :class:`Tencentcloud::lcic::V20220817::BatchAddGroupMemberRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::BatchAddGroupMemberResponse`
        def BatchAddGroupMember(request)
          body = send_request('BatchAddGroupMember', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchAddGroupMemberResponse.new
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

        # 此接口用于批量创建群组

        # @param request: Request instance for BatchCreateGroupWithMembers.
        # @type request: :class:`Tencentcloud::lcic::V20220817::BatchCreateGroupWithMembersRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::BatchCreateGroupWithMembersResponse`
        def BatchCreateGroupWithMembers(request)
          body = send_request('BatchCreateGroupWithMembers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchCreateGroupWithMembersResponse.new
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

        # 批量创建房间接口

        # @param request: Request instance for BatchCreateRoom.
        # @type request: :class:`Tencentcloud::lcic::V20220817::BatchCreateRoomRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::BatchCreateRoomResponse`
        def BatchCreateRoom(request)
          body = send_request('BatchCreateRoom', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchCreateRoomResponse.new
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

        # 此接口用于批量删除成员列表到指定群组列表

        # @param request: Request instance for BatchDeleteGroupMember.
        # @type request: :class:`Tencentcloud::lcic::V20220817::BatchDeleteGroupMemberRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::BatchDeleteGroupMemberResponse`
        def BatchDeleteGroupMember(request)
          body = send_request('BatchDeleteGroupMember', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchDeleteGroupMemberResponse.new
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

        # 批量删除多个房间的录制文件

        # @param request: Request instance for BatchDeleteRecord.
        # @type request: :class:`Tencentcloud::lcic::V20220817::BatchDeleteRecordRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::BatchDeleteRecordResponse`
        def BatchDeleteRecord(request)
          body = send_request('BatchDeleteRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchDeleteRecordResponse.new
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

        # 批量获取文档详情

        # @param request: Request instance for BatchDescribeDocument.
        # @type request: :class:`Tencentcloud::lcic::V20220817::BatchDescribeDocumentRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::BatchDescribeDocumentResponse`
        def BatchDescribeDocument(request)
          body = send_request('BatchDescribeDocument', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchDescribeDocumentResponse.new
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

        # 如果批量注册的用户已存在，则会被覆盖。一次最多注册1000个用户。默认请求频率限制：10次/秒

        # @param request: Request instance for BatchRegister.
        # @type request: :class:`Tencentcloud::lcic::V20220817::BatchRegisterRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::BatchRegisterResponse`
        def BatchRegister(request)
          body = send_request('BatchRegister', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchRegisterResponse.new
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

        # 功能概述
        # 本接口提供教学场景下的课程文档预绑定能力，支持将课件课堂ID进行关联映射，实现课件的自动化预加载。

        # 应用场景建议

        # 绑定时机
        # 推荐在创建课堂预约阶段同步完成文档绑定操作，确保课件资源在课堂开始前完成上传。

        # 接口限制与频控策略

        # 频控维度
        # 开发者账号维度限频
        # 默认频控阈值为20 QPS（每秒请求次数）

        # 最佳实践建议

        # 重试策略
        # 当触发限频错误时，建议采用以下策略：
        # 启用退避重试机制（建议使用指数退避算法）
        # 初始重试间隔不低于500ms
        # 最大重试次数不超过3次

        # @param request: Request instance for BindDocumentToRoom.
        # @type request: :class:`Tencentcloud::lcic::V20220817::BindDocumentToRoomRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::BindDocumentToRoomResponse`
        def BindDocumentToRoom(request)
          body = send_request('BindDocumentToRoom', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindDocumentToRoomResponse.new
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

        # 创建房间内可以使用的文档。

        # @param request: Request instance for CreateDocument.
        # @type request: :class:`Tencentcloud::lcic::V20220817::CreateDocumentRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::CreateDocumentResponse`
        def CreateDocument(request)
          body = send_request('CreateDocument', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDocumentResponse.new
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

        # 此接口根据成员列表创建群组

        # @param request: Request instance for CreateGroupWithMembers.
        # @type request: :class:`Tencentcloud::lcic::V20220817::CreateGroupWithMembersRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::CreateGroupWithMembersResponse`
        def CreateGroupWithMembers(request)
          body = send_request('CreateGroupWithMembers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateGroupWithMembersResponse.new
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

        # 此接口会聚合子群组创建联合群组

        # @param request: Request instance for CreateGroupWithSubGroup.
        # @type request: :class:`Tencentcloud::lcic::V20220817::CreateGroupWithSubGroupRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::CreateGroupWithSubGroupResponse`
        def CreateGroupWithSubGroup(request)
          body = send_request('CreateGroupWithSubGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateGroupWithSubGroupResponse.new
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

        # 创建房间

        # @param request: Request instance for CreateRoom.
        # @type request: :class:`Tencentcloud::lcic::V20220817::CreateRoomRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::CreateRoomResponse`
        def CreateRoom(request)
          body = send_request('CreateRoom', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRoomResponse.new
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

        # 创建巡课

        # @param request: Request instance for CreateSupervisor.
        # @type request: :class:`Tencentcloud::lcic::V20220817::CreateSupervisorRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::CreateSupervisorResponse`
        def CreateSupervisor(request)
          body = send_request('CreateSupervisor', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSupervisorResponse.new
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

        # 删除设置自定义元素。如果参数scenes为空则删除所有自定义元素，否则删除指定的scene自定义元素。

        # @param request: Request instance for DeleteAppCustomContent.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DeleteAppCustomContentRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DeleteAppCustomContentResponse`
        def DeleteAppCustomContent(request)
          body = send_request('DeleteAppCustomContent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAppCustomContentResponse.new
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

        # 删除文档

        # @param request: Request instance for DeleteDocument.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DeleteDocumentRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DeleteDocumentResponse`
        def DeleteDocument(request)
          body = send_request('DeleteDocument', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDocumentResponse.new
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

        # 此接口用于删除指定群组，支持批量操作。

        # @param request: Request instance for DeleteGroup.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DeleteGroupRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DeleteGroupResponse`
        def DeleteGroup(request)
          body = send_request('DeleteGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteGroupResponse.new
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

        # 此接口用于删除群组中指定成员

        # @param request: Request instance for DeleteGroupMember.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DeleteGroupMemberRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DeleteGroupMemberResponse`
        def DeleteGroupMember(request)
          body = send_request('DeleteGroupMember', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteGroupMemberResponse.new
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

        # 删除指定房间的录制文件

        # @param request: Request instance for DeleteRecord.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DeleteRecordRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DeleteRecordResponse`
        def DeleteRecord(request)
          body = send_request('DeleteRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRecordResponse.new
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

        # 删除房间

        # @param request: Request instance for DeleteRoom.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DeleteRoomRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DeleteRoomResponse`
        def DeleteRoom(request)
          body = send_request('DeleteRoom', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRoomResponse.new
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

        # 删除巡课

        # @param request: Request instance for DeleteSupervisor.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DeleteSupervisorRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DeleteSupervisorResponse`
        def DeleteSupervisor(request)
          body = send_request('DeleteSupervisor', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSupervisorResponse.new
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

        # 删除已注册用户。注：如果该成员已被添加到群组，请先在群组中删除该成员。

        # @param request: Request instance for DeleteUser.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DeleteUserRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DeleteUserResponse`
        def DeleteUser(request)
          body = send_request('DeleteUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteUserResponse.new
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

        # 删除白板板书截图

        # @param request: Request instance for DeleteWhiteBoardSnapshot.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DeleteWhiteBoardSnapshotRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DeleteWhiteBoardSnapshotResponse`
        def DeleteWhiteBoardSnapshot(request)
          body = send_request('DeleteWhiteBoardSnapshot', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWhiteBoardSnapshotResponse.new
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

        # 获取房间答题详情

        # @param request: Request instance for DescribeAnswerList.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DescribeAnswerListRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DescribeAnswerListResponse`
        def DescribeAnswerList(request)
          body = send_request('DescribeAnswerList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAnswerListResponse.new
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

        # 获取应用详情

        # @param request: Request instance for DescribeAppDetail.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DescribeAppDetailRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DescribeAppDetailResponse`
        def DescribeAppDetail(request)
          body = send_request('DescribeAppDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAppDetailResponse.new
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

        # 获取当前房间的成员列表，房间结束或过期后无法使用。

        # @param request: Request instance for DescribeCurrentMemberList.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DescribeCurrentMemberListRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DescribeCurrentMemberListResponse`
        def DescribeCurrentMemberList(request)
          body = send_request('DescribeCurrentMemberList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCurrentMemberListResponse.new
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

        # 开发商信息获取

        # @param request: Request instance for DescribeDeveloper.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DescribeDeveloperRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DescribeDeveloperResponse`
        def DescribeDeveloper(request)
          body = send_request('DescribeDeveloper', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeveloperResponse.new
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

        # 获取文档信息

        # @param request: Request instance for DescribeDocument.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DescribeDocumentRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DescribeDocumentResponse`
        def DescribeDocument(request)
          body = send_request('DescribeDocument', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDocumentResponse.new
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

        # 有新接口替换

        # 批量获取文档信息（已废弃，替代接口BatchDescribeDocument）

        # @param request: Request instance for DescribeDocuments.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DescribeDocumentsRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DescribeDocumentsResponse`
        def DescribeDocuments(request)
          body = send_request('DescribeDocuments', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDocumentsResponse.new
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

        # 此接口获取指定房间下课件列表

        # @param request: Request instance for DescribeDocumentsByRoom.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DescribeDocumentsByRoomRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DescribeDocumentsByRoomResponse`
        def DescribeDocumentsByRoom(request)
          body = send_request('DescribeDocumentsByRoom', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDocumentsByRoomResponse.new
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

        # 此接口用于获取群组详情

        # @param request: Request instance for DescribeGroup.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DescribeGroupRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DescribeGroupResponse`
        def DescribeGroup(request)
          body = send_request('DescribeGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGroupResponse.new
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

        # 获取群组列表

        # @param request: Request instance for DescribeGroupList.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DescribeGroupListRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DescribeGroupListResponse`
        def DescribeGroupList(request)
          body = send_request('DescribeGroupList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGroupListResponse.new
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

        # 此接口用于获取群组成员列表

        # @param request: Request instance for DescribeGroupMemberList.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DescribeGroupMemberListRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DescribeGroupMemberListResponse`
        def DescribeGroupMemberList(request)
          body = send_request('DescribeGroupMemberList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGroupMemberListResponse.new
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

        # 查询跑马灯配置

        # @param request: Request instance for DescribeMarquee.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DescribeMarqueeRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DescribeMarqueeResponse`
        def DescribeMarquee(request)
          body = send_request('DescribeMarquee', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMarqueeResponse.new
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

        # 获取房间提问列表

        # @param request: Request instance for DescribeQuestionList.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DescribeQuestionListRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DescribeQuestionListResponse`
        def DescribeQuestionList(request)
          body = send_request('DescribeQuestionList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeQuestionListResponse.new
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

        # 查询录制信息

        # @param request: Request instance for DescribeRecord.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DescribeRecordRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DescribeRecordResponse`
        def DescribeRecord(request)
          body = send_request('DescribeRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRecordResponse.new
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

        # 录制流查询

        # @param request: Request instance for DescribeRecordStream.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DescribeRecordStreamRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DescribeRecordStreamResponse`
        def DescribeRecordStream(request)
          body = send_request('DescribeRecordStream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRecordStreamResponse.new
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

        # 查询录制任务ID

        # @param request: Request instance for DescribeRecordTask.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DescribeRecordTaskRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DescribeRecordTaskResponse`
        def DescribeRecordTask(request)
          body = send_request('DescribeRecordTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRecordTaskResponse.new
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

        # 获取房间配置信息

        # @param request: Request instance for DescribeRoom.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DescribeRoomRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DescribeRoomResponse`
        def DescribeRoom(request)
          body = send_request('DescribeRoom', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRoomResponse.new
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

        # 根据房间ID获取群组中被禁言的用户列表。

        # @param request: Request instance for DescribeRoomForbiddenUser.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DescribeRoomForbiddenUserRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DescribeRoomForbiddenUserResponse`
        def DescribeRoomForbiddenUser(request)
          body = send_request('DescribeRoomForbiddenUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRoomForbiddenUserResponse.new
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

        # 获取房间统计信息，仅可在房间结束后调用。

        # @param request: Request instance for DescribeRoomStatistics.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DescribeRoomStatisticsRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DescribeRoomStatisticsResponse`
        def DescribeRoomStatistics(request)
          body = send_request('DescribeRoomStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRoomStatisticsResponse.new
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

        # 获取课堂评分列表

        # @param request: Request instance for DescribeScoreList.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DescribeScoreListRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DescribeScoreListResponse`
        def DescribeScoreList(request)
          body = send_request('DescribeScoreList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScoreListResponse.new
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

        # 此接口用于获取指定应用ID下用户列表

        # @param request: Request instance for DescribeSdkAppIdUsers.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DescribeSdkAppIdUsersRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DescribeSdkAppIdUsersResponse`
        def DescribeSdkAppIdUsers(request)
          body = send_request('DescribeSdkAppIdUsers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSdkAppIdUsersResponse.new
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

        # 获取巡课列表

        # @param request: Request instance for DescribeSupervisors.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DescribeSupervisorsRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DescribeSupervisorsResponse`
        def DescribeSupervisors(request)
          body = send_request('DescribeSupervisors', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSupervisorsResponse.new
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

        # 获取用户信息

        # @param request: Request instance for DescribeUser.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DescribeUserRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DescribeUserResponse`
        def DescribeUser(request)
          body = send_request('DescribeUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserResponse.new
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

        # 查询白板板书截图

        # @param request: Request instance for DescribeWhiteBoardSnapshot.
        # @type request: :class:`Tencentcloud::lcic::V20220817::DescribeWhiteBoardSnapshotRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::DescribeWhiteBoardSnapshotResponse`
        def DescribeWhiteBoardSnapshot(request)
          body = send_request('DescribeWhiteBoardSnapshot', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWhiteBoardSnapshotResponse.new
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

        # 结束房间的直播

        # @param request: Request instance for EndRoom.
        # @type request: :class:`Tencentcloud::lcic::V20220817::EndRoomRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::EndRoomResponse`
        def EndRoom(request)
          body = send_request('EndRoom', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EndRoomResponse.new
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

        # 禁止指定房间中某些用户在一段时间内发言。
        # 取消对某些用户的禁言。
        # 被禁言用户退出房间之后再进入同一房间，禁言仍然有效。

        # @param request: Request instance for ForbidSendMsg.
        # @type request: :class:`Tencentcloud::lcic::V20220817::ForbidSendMsgRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::ForbidSendMsgResponse`
        def ForbidSendMsg(request)
          body = send_request('ForbidSendMsg', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ForbidSendMsgResponse.new
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

        # 获取房间事件,仅在课堂结束1小时内有效。

        # @param request: Request instance for GetRoomEvent.
        # @type request: :class:`Tencentcloud::lcic::V20220817::GetRoomEventRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::GetRoomEventResponse`
        def GetRoomEvent(request)
          body = send_request('GetRoomEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRoomEventResponse.new
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

        # 获取房间历史消息(房间历史消息保存7天)

        # @param request: Request instance for GetRoomMessage.
        # @type request: :class:`Tencentcloud::lcic::V20220817::GetRoomMessageRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::GetRoomMessageResponse`
        def GetRoomMessage(request)
          body = send_request('GetRoomMessage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRoomMessageResponse.new
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

        # 获取房间列表

        # @param request: Request instance for GetRooms.
        # @type request: :class:`Tencentcloud::lcic::V20220817::GetRoomsRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::GetRoomsResponse`
        def GetRooms(request)
          body = send_request('GetRooms', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRoomsResponse.new
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

        # 获取水印设置

        # @param request: Request instance for GetWatermark.
        # @type request: :class:`Tencentcloud::lcic::V20220817::GetWatermarkRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::GetWatermarkResponse`
        def GetWatermark(request)
          body = send_request('GetWatermark', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetWatermarkResponse.new
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

        # 从房间里面踢出用户

        # @param request: Request instance for KickUserFromRoom.
        # @type request: :class:`Tencentcloud::lcic::V20220817::KickUserFromRoomRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::KickUserFromRoomResponse`
        def KickUserFromRoom(request)
          body = send_request('KickUserFromRoom', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = KickUserFromRoomResponse.new
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

        # 使用源账号登录，源账号为注册时填入的originId

        # @param request: Request instance for LoginOriginId.
        # @type request: :class:`Tencentcloud::lcic::V20220817::LoginOriginIdRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::LoginOriginIdResponse`
        def LoginOriginId(request)
          body = send_request('LoginOriginId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = LoginOriginIdResponse.new
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

        # 登录

        # @param request: Request instance for LoginUser.
        # @type request: :class:`Tencentcloud::lcic::V20220817::LoginUserRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::LoginUserResponse`
        def LoginUser(request)
          body = send_request('LoginUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = LoginUserResponse.new
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

        # 修改应用

        # @param request: Request instance for ModifyApp.
        # @type request: :class:`Tencentcloud::lcic::V20220817::ModifyAppRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::ModifyAppResponse`
        def ModifyApp(request)
          body = send_request('ModifyApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAppResponse.new
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

        # 此接口修改群组信息

        # @param request: Request instance for ModifyGroup.
        # @type request: :class:`Tencentcloud::lcic::V20220817::ModifyGroupRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::ModifyGroupResponse`
        def ModifyGroup(request)
          body = send_request('ModifyGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyGroupResponse.new
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

        # 修改房间

        # @param request: Request instance for ModifyRoom.
        # @type request: :class:`Tencentcloud::lcic::V20220817::ModifyRoomRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::ModifyRoomResponse`
        def ModifyRoom(request)
          body = send_request('ModifyRoom', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRoomResponse.new
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

        # 此接口用于修改用户信息，例如头像、昵称（用户名）等。注意，课中的用户信息不会立即同步修改，需待下次上课时，修改后的信息才会更新显示。

        # @param request: Request instance for ModifyUserProfile.
        # @type request: :class:`Tencentcloud::lcic::V20220817::ModifyUserProfileRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::ModifyUserProfileResponse`
        def ModifyUserProfile(request)
          body = send_request('ModifyUserProfile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUserProfileResponse.new
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

        # 注册用户

        # @param request: Request instance for RegisterUser.
        # @type request: :class:`Tencentcloud::lcic::V20220817::RegisterUserRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::RegisterUserResponse`
        def RegisterUser(request)
          body = send_request('RegisterUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RegisterUserResponse.new
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

        # 1、按照指定身份发送消息，目前支持表情消息、图片消息、文本消息。

        # @param request: Request instance for SendRoomNormalMessage.
        # @type request: :class:`Tencentcloud::lcic::V20220817::SendRoomNormalMessageRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::SendRoomNormalMessageResponse`
        def SendRoomNormalMessage(request)
          body = send_request('SendRoomNormalMessage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SendRoomNormalMessageResponse.new
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

        # App 管理员可以通过该接口在群组中发送通知、公告等。目前仅支持文本消息。

        # @param request: Request instance for SendRoomNotificationMessage.
        # @type request: :class:`Tencentcloud::lcic::V20220817::SendRoomNotificationMessageRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::SendRoomNotificationMessageResponse`
        def SendRoomNotificationMessage(request)
          body = send_request('SendRoomNotificationMessage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SendRoomNotificationMessageResponse.new
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

        # 设置应用的自定义内容，包括应用图标，自定义的代码等。如果已存在，则为更新。更新js、css内容后，要生效也需要调用该接口

        # @param request: Request instance for SetAppCustomContent.
        # @type request: :class:`Tencentcloud::lcic::V20220817::SetAppCustomContentRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::SetAppCustomContentResponse`
        def SetAppCustomContent(request)
          body = send_request('SetAppCustomContent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetAppCustomContentResponse.new
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

        # 设置跑马灯参数设置

        # @param request: Request instance for SetMarquee.
        # @type request: :class:`Tencentcloud::lcic::V20220817::SetMarqueeRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::SetMarqueeResponse`
        def SetMarquee(request)
          body = send_request('SetMarquee', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetMarqueeResponse.new
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

        # 设置水印

        # @param request: Request instance for SetWatermark.
        # @type request: :class:`Tencentcloud::lcic::V20220817::SetWatermarkRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::SetWatermarkResponse`
        def SetWatermark(request)
          body = send_request('SetWatermark', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetWatermarkResponse.new
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

        # 开始录制

        # @param request: Request instance for StartRecord.
        # @type request: :class:`Tencentcloud::lcic::V20220817::StartRecordRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::StartRecordResponse`
        def StartRecord(request)
          body = send_request('StartRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartRecordResponse.new
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

        # 开始房间的直播。 说明：开始房间接口调用之前需要有用户进入课堂初始化课堂信息。

        # @param request: Request instance for StartRoom.
        # @type request: :class:`Tencentcloud::lcic::V20220817::StartRoomRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::StartRoomResponse`
        def StartRoom(request)
          body = send_request('StartRoom', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartRoomResponse.new
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

        # 停止录制

        # @param request: Request instance for StopRecord.
        # @type request: :class:`Tencentcloud::lcic::V20220817::StopRecordRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::StopRecordResponse`
        def StopRecord(request)
          body = send_request('StopRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopRecordResponse.new
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

        # 文档从房间解绑

        # @param request: Request instance for UnbindDocumentFromRoom.
        # @type request: :class:`Tencentcloud::lcic::V20220817::UnbindDocumentFromRoomRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::UnbindDocumentFromRoomResponse`
        def UnbindDocumentFromRoom(request)
          body = send_request('UnbindDocumentFromRoom', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindDocumentFromRoomResponse.new
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

        # 解禁从房间里面踢出的用户

        # @param request: Request instance for UnblockKickedUser.
        # @type request: :class:`Tencentcloud::lcic::V20220817::UnblockKickedUserRequest`
        # @rtype: :class:`Tencentcloud::lcic::V20220817::UnblockKickedUserResponse`
        def UnblockKickedUser(request)
          body = send_request('UnblockKickedUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnblockKickedUserResponse.new
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