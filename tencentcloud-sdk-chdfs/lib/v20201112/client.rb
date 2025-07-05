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
  module Chdfs
    module V20201112
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-11-12'
            api_endpoint = 'chdfs.tencentcloudapi.com'
            sdk_version = 'CHDFS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 给挂载点绑定多个权限组。

        # @param request: Request instance for AssociateAccessGroups.
        # @type request: :class:`Tencentcloud::chdfs::V20201112::AssociateAccessGroupsRequest`
        # @rtype: :class:`Tencentcloud::chdfs::V20201112::AssociateAccessGroupsResponse`
        def AssociateAccessGroups(request)
          body = send_request('AssociateAccessGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssociateAccessGroupsResponse.new
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

        # 创建权限组。

        # @param request: Request instance for CreateAccessGroup.
        # @type request: :class:`Tencentcloud::chdfs::V20201112::CreateAccessGroupRequest`
        # @rtype: :class:`Tencentcloud::chdfs::V20201112::CreateAccessGroupResponse`
        def CreateAccessGroup(request)
          body = send_request('CreateAccessGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAccessGroupResponse.new
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

        # 批量创建权限规则，权限规则ID和创建时间无需填写。

        # @param request: Request instance for CreateAccessRules.
        # @type request: :class:`Tencentcloud::chdfs::V20201112::CreateAccessRulesRequest`
        # @rtype: :class:`Tencentcloud::chdfs::V20201112::CreateAccessRulesResponse`
        def CreateAccessRules(request)
          body = send_request('CreateAccessRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAccessRulesResponse.new
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

        # 创建文件系统（异步）。

        # @param request: Request instance for CreateFileSystem.
        # @type request: :class:`Tencentcloud::chdfs::V20201112::CreateFileSystemRequest`
        # @rtype: :class:`Tencentcloud::chdfs::V20201112::CreateFileSystemResponse`
        def CreateFileSystem(request)
          body = send_request('CreateFileSystem', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFileSystemResponse.new
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

        # 批量创建生命周期规则，生命周期规则ID和创建时间无需填写。

        # @param request: Request instance for CreateLifeCycleRules.
        # @type request: :class:`Tencentcloud::chdfs::V20201112::CreateLifeCycleRulesRequest`
        # @rtype: :class:`Tencentcloud::chdfs::V20201112::CreateLifeCycleRulesResponse`
        def CreateLifeCycleRules(request)
          body = send_request('CreateLifeCycleRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLifeCycleRulesResponse.new
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

        # 创建文件系统挂载点，仅限于创建成功的文件系统。

        # @param request: Request instance for CreateMountPoint.
        # @type request: :class:`Tencentcloud::chdfs::V20201112::CreateMountPointRequest`
        # @rtype: :class:`Tencentcloud::chdfs::V20201112::CreateMountPointResponse`
        def CreateMountPoint(request)
          body = send_request('CreateMountPoint', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMountPointResponse.new
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

        # 批量创建回热任务，回热任务ID、状态和创建时间无需填写。

        # @param request: Request instance for CreateRestoreTasks.
        # @type request: :class:`Tencentcloud::chdfs::V20201112::CreateRestoreTasksRequest`
        # @rtype: :class:`Tencentcloud::chdfs::V20201112::CreateRestoreTasksResponse`
        def CreateRestoreTasks(request)
          body = send_request('CreateRestoreTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRestoreTasksResponse.new
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

        # 删除权限组。

        # @param request: Request instance for DeleteAccessGroup.
        # @type request: :class:`Tencentcloud::chdfs::V20201112::DeleteAccessGroupRequest`
        # @rtype: :class:`Tencentcloud::chdfs::V20201112::DeleteAccessGroupResponse`
        def DeleteAccessGroup(request)
          body = send_request('DeleteAccessGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAccessGroupResponse.new
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

        # 批量删除权限规则。

        # @param request: Request instance for DeleteAccessRules.
        # @type request: :class:`Tencentcloud::chdfs::V20201112::DeleteAccessRulesRequest`
        # @rtype: :class:`Tencentcloud::chdfs::V20201112::DeleteAccessRulesResponse`
        def DeleteAccessRules(request)
          body = send_request('DeleteAccessRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAccessRulesResponse.new
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

        # 删除文件系统，不允许删除非空文件系统。

        # @param request: Request instance for DeleteFileSystem.
        # @type request: :class:`Tencentcloud::chdfs::V20201112::DeleteFileSystemRequest`
        # @rtype: :class:`Tencentcloud::chdfs::V20201112::DeleteFileSystemResponse`
        def DeleteFileSystem(request)
          body = send_request('DeleteFileSystem', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteFileSystemResponse.new
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

        # 批量删除生命周期规则。

        # @param request: Request instance for DeleteLifeCycleRules.
        # @type request: :class:`Tencentcloud::chdfs::V20201112::DeleteLifeCycleRulesRequest`
        # @rtype: :class:`Tencentcloud::chdfs::V20201112::DeleteLifeCycleRulesResponse`
        def DeleteLifeCycleRules(request)
          body = send_request('DeleteLifeCycleRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLifeCycleRulesResponse.new
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

        # 删除挂载点。

        # @param request: Request instance for DeleteMountPoint.
        # @type request: :class:`Tencentcloud::chdfs::V20201112::DeleteMountPointRequest`
        # @rtype: :class:`Tencentcloud::chdfs::V20201112::DeleteMountPointResponse`
        def DeleteMountPoint(request)
          body = send_request('DeleteMountPoint', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMountPointResponse.new
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

        # 查看权限组详细信息。

        # @param request: Request instance for DescribeAccessGroup.
        # @type request: :class:`Tencentcloud::chdfs::V20201112::DescribeAccessGroupRequest`
        # @rtype: :class:`Tencentcloud::chdfs::V20201112::DescribeAccessGroupResponse`
        def DescribeAccessGroup(request)
          body = send_request('DescribeAccessGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccessGroupResponse.new
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

        # 查看权限组列表。

        # @param request: Request instance for DescribeAccessGroups.
        # @type request: :class:`Tencentcloud::chdfs::V20201112::DescribeAccessGroupsRequest`
        # @rtype: :class:`Tencentcloud::chdfs::V20201112::DescribeAccessGroupsResponse`
        def DescribeAccessGroups(request)
          body = send_request('DescribeAccessGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccessGroupsResponse.new
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

        # 通过权限组ID查看权限规则列表。

        # @param request: Request instance for DescribeAccessRules.
        # @type request: :class:`Tencentcloud::chdfs::V20201112::DescribeAccessRulesRequest`
        # @rtype: :class:`Tencentcloud::chdfs::V20201112::DescribeAccessRulesResponse`
        def DescribeAccessRules(request)
          body = send_request('DescribeAccessRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccessRulesResponse.new
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

        # 查看文件系统详细信息。

        # @param request: Request instance for DescribeFileSystem.
        # @type request: :class:`Tencentcloud::chdfs::V20201112::DescribeFileSystemRequest`
        # @rtype: :class:`Tencentcloud::chdfs::V20201112::DescribeFileSystemResponse`
        def DescribeFileSystem(request)
          body = send_request('DescribeFileSystem', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFileSystemResponse.new
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

        # 查看文件系统列表。

        # @param request: Request instance for DescribeFileSystems.
        # @type request: :class:`Tencentcloud::chdfs::V20201112::DescribeFileSystemsRequest`
        # @rtype: :class:`Tencentcloud::chdfs::V20201112::DescribeFileSystemsResponse`
        def DescribeFileSystems(request)
          body = send_request('DescribeFileSystems', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFileSystemsResponse.new
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

        # 通过文件系统ID查看生命周期规则列表。

        # @param request: Request instance for DescribeLifeCycleRules.
        # @type request: :class:`Tencentcloud::chdfs::V20201112::DescribeLifeCycleRulesRequest`
        # @rtype: :class:`Tencentcloud::chdfs::V20201112::DescribeLifeCycleRulesResponse`
        def DescribeLifeCycleRules(request)
          body = send_request('DescribeLifeCycleRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLifeCycleRulesResponse.new
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

        # 查看挂载点详细信息。

        # @param request: Request instance for DescribeMountPoint.
        # @type request: :class:`Tencentcloud::chdfs::V20201112::DescribeMountPointRequest`
        # @rtype: :class:`Tencentcloud::chdfs::V20201112::DescribeMountPointResponse`
        def DescribeMountPoint(request)
          body = send_request('DescribeMountPoint', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMountPointResponse.new
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

        # 查看挂载点列表。

        # @param request: Request instance for DescribeMountPoints.
        # @type request: :class:`Tencentcloud::chdfs::V20201112::DescribeMountPointsRequest`
        # @rtype: :class:`Tencentcloud::chdfs::V20201112::DescribeMountPointsResponse`
        def DescribeMountPoints(request)
          body = send_request('DescribeMountPoints', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMountPointsResponse.new
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

        # 通过文件系统ID查看资源标签列表。

        # @param request: Request instance for DescribeResourceTags.
        # @type request: :class:`Tencentcloud::chdfs::V20201112::DescribeResourceTagsRequest`
        # @rtype: :class:`Tencentcloud::chdfs::V20201112::DescribeResourceTagsResponse`
        def DescribeResourceTags(request)
          body = send_request('DescribeResourceTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourceTagsResponse.new
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

        # 通过文件系统ID查看回热任务列表。

        # @param request: Request instance for DescribeRestoreTasks.
        # @type request: :class:`Tencentcloud::chdfs::V20201112::DescribeRestoreTasksRequest`
        # @rtype: :class:`Tencentcloud::chdfs::V20201112::DescribeRestoreTasksResponse`
        def DescribeRestoreTasks(request)
          body = send_request('DescribeRestoreTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRestoreTasksResponse.new
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

        # 给挂载点解绑多个权限组。

        # @param request: Request instance for DisassociateAccessGroups.
        # @type request: :class:`Tencentcloud::chdfs::V20201112::DisassociateAccessGroupsRequest`
        # @rtype: :class:`Tencentcloud::chdfs::V20201112::DisassociateAccessGroupsResponse`
        def DisassociateAccessGroups(request)
          body = send_request('DisassociateAccessGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisassociateAccessGroupsResponse.new
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

        # 修改权限组属性。

        # @param request: Request instance for ModifyAccessGroup.
        # @type request: :class:`Tencentcloud::chdfs::V20201112::ModifyAccessGroupRequest`
        # @rtype: :class:`Tencentcloud::chdfs::V20201112::ModifyAccessGroupResponse`
        def ModifyAccessGroup(request)
          body = send_request('ModifyAccessGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAccessGroupResponse.new
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

        # 批量修改权限规则属性，需要指定权限规则ID，支持修改权限规则地址、访问模式和优先级。

        # @param request: Request instance for ModifyAccessRules.
        # @type request: :class:`Tencentcloud::chdfs::V20201112::ModifyAccessRulesRequest`
        # @rtype: :class:`Tencentcloud::chdfs::V20201112::ModifyAccessRulesResponse`
        def ModifyAccessRules(request)
          body = send_request('ModifyAccessRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAccessRulesResponse.new
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

        # 修改文件系统属性，仅限于创建成功的文件系统。

        # @param request: Request instance for ModifyFileSystem.
        # @type request: :class:`Tencentcloud::chdfs::V20201112::ModifyFileSystemRequest`
        # @rtype: :class:`Tencentcloud::chdfs::V20201112::ModifyFileSystemResponse`
        def ModifyFileSystem(request)
          body = send_request('ModifyFileSystem', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyFileSystemResponse.new
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

        # 批量修改生命周期规则属性，需要指定生命周期规则ID，支持修改生命周期规则名称、路径、转换列表和状态。

        # @param request: Request instance for ModifyLifeCycleRules.
        # @type request: :class:`Tencentcloud::chdfs::V20201112::ModifyLifeCycleRulesRequest`
        # @rtype: :class:`Tencentcloud::chdfs::V20201112::ModifyLifeCycleRulesResponse`
        def ModifyLifeCycleRules(request)
          body = send_request('ModifyLifeCycleRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLifeCycleRulesResponse.new
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

        # 修改挂载点属性。

        # @param request: Request instance for ModifyMountPoint.
        # @type request: :class:`Tencentcloud::chdfs::V20201112::ModifyMountPointRequest`
        # @rtype: :class:`Tencentcloud::chdfs::V20201112::ModifyMountPointResponse`
        def ModifyMountPoint(request)
          body = send_request('ModifyMountPoint', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMountPointResponse.new
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

        # 修改资源标签列表，全量覆盖。

        # @param request: Request instance for ModifyResourceTags.
        # @type request: :class:`Tencentcloud::chdfs::V20201112::ModifyResourceTagsRequest`
        # @rtype: :class:`Tencentcloud::chdfs::V20201112::ModifyResourceTagsResponse`
        def ModifyResourceTags(request)
          body = send_request('ModifyResourceTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyResourceTagsResponse.new
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