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
  module Cfs
    module V20190719
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2019-07-19'
        @@endpoint = 'cfs.tencentcloudapi.com'
        @@sdk_version = 'CFS_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 用于添加新文件系统

        # @param request: Request instance for CreateCfsFileSystem.
        # @type request: :class:`Tencentcloud::cfs::V20190719::CreateCfsFileSystemRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::CreateCfsFileSystemResponse`
        def CreateCfsFileSystem(request)
          body = send_request('CreateCfsFileSystem', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCfsFileSystemResponse.new
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

        # 本接口（CreateCfsPGroup）用于创建权限组

        # @param request: Request instance for CreateCfsPGroup.
        # @type request: :class:`Tencentcloud::cfs::V20190719::CreateCfsPGroupRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::CreateCfsPGroupResponse`
        def CreateCfsPGroup(request)
          body = send_request('CreateCfsPGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCfsPGroupResponse.new
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

        # 本接口（CreateCfsRule）用于创建权限组规则。

        # @param request: Request instance for CreateCfsRule.
        # @type request: :class:`Tencentcloud::cfs::V20190719::CreateCfsRuleRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::CreateCfsRuleResponse`
        def CreateCfsRule(request)
          body = send_request('CreateCfsRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCfsRuleResponse.new
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

        # 用于删除文件系统

        # @param request: Request instance for DeleteCfsFileSystem.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DeleteCfsFileSystemRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DeleteCfsFileSystemResponse`
        def DeleteCfsFileSystem(request)
          body = send_request('DeleteCfsFileSystem', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCfsFileSystemResponse.new
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

        # 本接口（DeleteCfsPGroup）用于删除权限组。

        # @param request: Request instance for DeleteCfsPGroup.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DeleteCfsPGroupRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DeleteCfsPGroupResponse`
        def DeleteCfsPGroup(request)
          body = send_request('DeleteCfsPGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCfsPGroupResponse.new
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

        # 本接口（DeleteCfsRule）用于删除权限组规则。

        # @param request: Request instance for DeleteCfsRule.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DeleteCfsRuleRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DeleteCfsRuleResponse`
        def DeleteCfsRule(request)
          body = send_request('DeleteCfsRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCfsRuleResponse.new
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

        # 本接口（DeleteMountTarget）用于删除挂载点

        # @param request: Request instance for DeleteMountTarget.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DeleteMountTargetRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DeleteMountTargetResponse`
        def DeleteMountTarget(request)
          body = send_request('DeleteMountTarget', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMountTargetResponse.new
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

        # 本接口（DescribeAvailableZoneInfo）用于查询区域的可用情况。

        # @param request: Request instance for DescribeAvailableZoneInfo.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DescribeAvailableZoneInfoRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DescribeAvailableZoneInfoResponse`
        def DescribeAvailableZoneInfo(request)
          body = send_request('DescribeAvailableZoneInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAvailableZoneInfoResponse.new
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

        # 查询挂载该文件系统的客户端。此功能需要客户端安装CFS监控插件。

        # @param request: Request instance for DescribeCfsFileSystemClients.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DescribeCfsFileSystemClientsRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DescribeCfsFileSystemClientsResponse`
        def DescribeCfsFileSystemClients(request)
          body = send_request('DescribeCfsFileSystemClients', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCfsFileSystemClientsResponse.new
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

        # 本接口（DescribeCfsFileSystems）用于查询文件系统

        # @param request: Request instance for DescribeCfsFileSystems.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DescribeCfsFileSystemsRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DescribeCfsFileSystemsResponse`
        def DescribeCfsFileSystems(request)
          body = send_request('DescribeCfsFileSystems', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCfsFileSystemsResponse.new
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

        # 本接口（DescribeCfsPGroups）用于查询权限组列表。

        # @param request: Request instance for DescribeCfsPGroups.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DescribeCfsPGroupsRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DescribeCfsPGroupsResponse`
        def DescribeCfsPGroups(request)
          body = send_request('DescribeCfsPGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCfsPGroupsResponse.new
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

        # 本接口（DescribeCfsRules）用于查询权限组规则列表。

        # @param request: Request instance for DescribeCfsRules.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DescribeCfsRulesRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DescribeCfsRulesResponse`
        def DescribeCfsRules(request)
          body = send_request('DescribeCfsRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCfsRulesResponse.new
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

        # 本接口（DescribeCfsServiceStatus）用于查询用户使用CFS的服务状态。

        # @param request: Request instance for DescribeCfsServiceStatus.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DescribeCfsServiceStatusRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DescribeCfsServiceStatusResponse`
        def DescribeCfsServiceStatus(request)
          body = send_request('DescribeCfsServiceStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCfsServiceStatusResponse.new
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

        # 本接口（DescribeMountTargets）用于查询文件系统挂载点信息

        # @param request: Request instance for DescribeMountTargets.
        # @type request: :class:`Tencentcloud::cfs::V20190719::DescribeMountTargetsRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::DescribeMountTargetsResponse`
        def DescribeMountTargets(request)
          body = send_request('DescribeMountTargets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMountTargetsResponse.new
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

        # 本接口（SignUpCfsService）用于开通CFS服务。

        # @param request: Request instance for SignUpCfsService.
        # @type request: :class:`Tencentcloud::cfs::V20190719::SignUpCfsServiceRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::SignUpCfsServiceResponse`
        def SignUpCfsService(request)
          body = send_request('SignUpCfsService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SignUpCfsServiceResponse.new
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

        # 本接口（UpdateCfsFileSystemName）用于更新文件系统名

        # @param request: Request instance for UpdateCfsFileSystemName.
        # @type request: :class:`Tencentcloud::cfs::V20190719::UpdateCfsFileSystemNameRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::UpdateCfsFileSystemNameResponse`
        def UpdateCfsFileSystemName(request)
          body = send_request('UpdateCfsFileSystemName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCfsFileSystemNameResponse.new
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

        # 本接口（UpdateCfsFileSystemPGroup）用于更新文件系统所使用的权限组

        # @param request: Request instance for UpdateCfsFileSystemPGroup.
        # @type request: :class:`Tencentcloud::cfs::V20190719::UpdateCfsFileSystemPGroupRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::UpdateCfsFileSystemPGroupResponse`
        def UpdateCfsFileSystemPGroup(request)
          body = send_request('UpdateCfsFileSystemPGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCfsFileSystemPGroupResponse.new
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

        # 本接口（UpdateCfsFileSystemSizeLimit）用于更新文件系统存储容量限制。

        # @param request: Request instance for UpdateCfsFileSystemSizeLimit.
        # @type request: :class:`Tencentcloud::cfs::V20190719::UpdateCfsFileSystemSizeLimitRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::UpdateCfsFileSystemSizeLimitResponse`
        def UpdateCfsFileSystemSizeLimit(request)
          body = send_request('UpdateCfsFileSystemSizeLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCfsFileSystemSizeLimitResponse.new
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

        # 本接口（UpdateCfsPGroup）更新权限组信息。

        # @param request: Request instance for UpdateCfsPGroup.
        # @type request: :class:`Tencentcloud::cfs::V20190719::UpdateCfsPGroupRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::UpdateCfsPGroupResponse`
        def UpdateCfsPGroup(request)
          body = send_request('UpdateCfsPGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCfsPGroupResponse.new
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

        # 本接口（UpdateCfsRule）用于更新权限规则。

        # @param request: Request instance for UpdateCfsRule.
        # @type request: :class:`Tencentcloud::cfs::V20190719::UpdateCfsRuleRequest`
        # @rtype: :class:`Tencentcloud::cfs::V20190719::UpdateCfsRuleResponse`
        def UpdateCfsRule(request)
          body = send_request('UpdateCfsRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCfsRuleResponse.new
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