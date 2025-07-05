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
  module Goosefs
    module V20220519
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-05-19'
            api_endpoint = 'goosefs.tencentcloudapi.com'
            sdk_version = 'GOOSEFS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 为客户端节点添加跨vpc或子网访问能力

        # @param request: Request instance for AddCrossVpcSubnetSupportForClientNode.
        # @type request: :class:`Tencentcloud::goosefs::V20220519::AddCrossVpcSubnetSupportForClientNodeRequest`
        # @rtype: :class:`Tencentcloud::goosefs::V20220519::AddCrossVpcSubnetSupportForClientNodeResponse`
        def AddCrossVpcSubnetSupportForClientNode(request)
          body = send_request('AddCrossVpcSubnetSupportForClientNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddCrossVpcSubnetSupportForClientNodeResponse.new
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

        # 为文件系统关联Bucket

        # @param request: Request instance for AttachFileSystemBucket.
        # @type request: :class:`Tencentcloud::goosefs::V20220519::AttachFileSystemBucketRequest`
        # @rtype: :class:`Tencentcloud::goosefs::V20220519::AttachFileSystemBucketResponse`
        def AttachFileSystemBucket(request)
          body = send_request('AttachFileSystemBucket', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AttachFileSystemBucketResponse.new
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

        # 批量添加客户端节点

        # @param request: Request instance for BatchAddClientNodes.
        # @type request: :class:`Tencentcloud::goosefs::V20220519::BatchAddClientNodesRequest`
        # @rtype: :class:`Tencentcloud::goosefs::V20220519::BatchAddClientNodesResponse`
        def BatchAddClientNodes(request)
          body = send_request('BatchAddClientNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchAddClientNodesResponse.new
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

        # 批量删除客户端节点

        # @param request: Request instance for BatchDeleteClientNodes.
        # @type request: :class:`Tencentcloud::goosefs::V20220519::BatchDeleteClientNodesRequest`
        # @rtype: :class:`Tencentcloud::goosefs::V20220519::BatchDeleteClientNodesResponse`
        def BatchDeleteClientNodes(request)
          body = send_request('BatchDeleteClientNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchDeleteClientNodesResponse.new
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

        # 生成客户端的挂载命令

        # @param request: Request instance for BuildClientNodeMountCommand.
        # @type request: :class:`Tencentcloud::goosefs::V20220519::BuildClientNodeMountCommandRequest`
        # @rtype: :class:`Tencentcloud::goosefs::V20220519::BuildClientNodeMountCommandResponse`
        def BuildClientNodeMountCommand(request)
          body = send_request('BuildClientNodeMountCommand', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BuildClientNodeMountCommandResponse.new
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

        # 创建数据流通任务,包括从将文件系统的数据上传到存储桶下, 以及从存储桶下载到文件系统里。

        # @param request: Request instance for CreateDataRepositoryTask.
        # @type request: :class:`Tencentcloud::goosefs::V20220519::CreateDataRepositoryTaskRequest`
        # @rtype: :class:`Tencentcloud::goosefs::V20220519::CreateDataRepositoryTaskResponse`
        def CreateDataRepositoryTask(request)
          body = send_request('CreateDataRepositoryTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDataRepositoryTaskResponse.new
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

        # 创建文件系统

        # @param request: Request instance for CreateFileSystem.
        # @type request: :class:`Tencentcloud::goosefs::V20220519::CreateFileSystemRequest`
        # @rtype: :class:`Tencentcloud::goosefs::V20220519::CreateFileSystemResponse`
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

        # 创建Fileset

        # @param request: Request instance for CreateFileset.
        # @type request: :class:`Tencentcloud::goosefs::V20220519::CreateFilesetRequest`
        # @rtype: :class:`Tencentcloud::goosefs::V20220519::CreateFilesetResponse`
        def CreateFileset(request)
          body = send_request('CreateFileset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFilesetResponse.new
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

        # 为客户端节点删除跨vpc子网访问能力

        # @param request: Request instance for DeleteCrossVpcSubnetSupportForClientNode.
        # @type request: :class:`Tencentcloud::goosefs::V20220519::DeleteCrossVpcSubnetSupportForClientNodeRequest`
        # @rtype: :class:`Tencentcloud::goosefs::V20220519::DeleteCrossVpcSubnetSupportForClientNodeResponse`
        def DeleteCrossVpcSubnetSupportForClientNode(request)
          body = send_request('DeleteCrossVpcSubnetSupportForClientNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCrossVpcSubnetSupportForClientNodeResponse.new
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

        # 删除文件系统

        # @param request: Request instance for DeleteFileSystem.
        # @type request: :class:`Tencentcloud::goosefs::V20220519::DeleteFileSystemRequest`
        # @rtype: :class:`Tencentcloud::goosefs::V20220519::DeleteFileSystemResponse`
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

        # 删除Fileset

        # @param request: Request instance for DeleteFileset.
        # @type request: :class:`Tencentcloud::goosefs::V20220519::DeleteFilesetRequest`
        # @rtype: :class:`Tencentcloud::goosefs::V20220519::DeleteFilesetResponse`
        def DeleteFileset(request)
          body = send_request('DeleteFileset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteFilesetResponse.new
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

        # 列出集群中所有的客户端节点

        # @param request: Request instance for DescribeClientNodes.
        # @type request: :class:`Tencentcloud::goosefs::V20220519::DescribeClientNodesRequest`
        # @rtype: :class:`Tencentcloud::goosefs::V20220519::DescribeClientNodesResponse`
        def DescribeClientNodes(request)
          body = send_request('DescribeClientNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClientNodesResponse.new
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

        # 查询GooseFS集群客户端凭证

        # @param request: Request instance for DescribeClusterClientToken.
        # @type request: :class:`Tencentcloud::goosefs::V20220519::DescribeClusterClientTokenRequest`
        # @rtype: :class:`Tencentcloud::goosefs::V20220519::DescribeClusterClientTokenResponse`
        def DescribeClusterClientToken(request)
          body = send_request('DescribeClusterClientToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterClientTokenResponse.new
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

        # 查询GooseFS集群角色凭证

        # @param request: Request instance for DescribeClusterRoleToken.
        # @type request: :class:`Tencentcloud::goosefs::V20220519::DescribeClusterRoleTokenRequest`
        # @rtype: :class:`Tencentcloud::goosefs::V20220519::DescribeClusterRoleTokenResponse`
        def DescribeClusterRoleToken(request)
          body = send_request('DescribeClusterRoleToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterRoleTokenResponse.new
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

        # 接口废弃

        # 查询GooseFS集群角色

        # @param request: Request instance for DescribeClusterRoles.
        # @type request: :class:`Tencentcloud::goosefs::V20220519::DescribeClusterRolesRequest`
        # @rtype: :class:`Tencentcloud::goosefs::V20220519::DescribeClusterRolesResponse`
        def DescribeClusterRoles(request)
          body = send_request('DescribeClusterRoles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterRolesResponse.new
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

        # 获取数据流通任务实时状态，用作客户端控制

        # @param request: Request instance for DescribeDataRepositoryTaskStatus.
        # @type request: :class:`Tencentcloud::goosefs::V20220519::DescribeDataRepositoryTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::goosefs::V20220519::DescribeDataRepositoryTaskStatusResponse`
        def DescribeDataRepositoryTaskStatus(request)
          body = send_request('DescribeDataRepositoryTaskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataRepositoryTaskStatusResponse.new
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

        # 罗列文件系统关联的Bucket映射

        # @param request: Request instance for DescribeFileSystemBuckets.
        # @type request: :class:`Tencentcloud::goosefs::V20220519::DescribeFileSystemBucketsRequest`
        # @rtype: :class:`Tencentcloud::goosefs::V20220519::DescribeFileSystemBucketsResponse`
        def DescribeFileSystemBuckets(request)
          body = send_request('DescribeFileSystemBuckets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFileSystemBucketsResponse.new
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

        # 列出所有的文件系统

        # @param request: Request instance for DescribeFileSystems.
        # @type request: :class:`Tencentcloud::goosefs::V20220519::DescribeFileSystemsRequest`
        # @rtype: :class:`Tencentcloud::goosefs::V20220519::DescribeFileSystemsResponse`
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

        # 查询Fileset通用配置

        # @param request: Request instance for DescribeFilesetGeneralConfig.
        # @type request: :class:`Tencentcloud::goosefs::V20220519::DescribeFilesetGeneralConfigRequest`
        # @rtype: :class:`Tencentcloud::goosefs::V20220519::DescribeFilesetGeneralConfigResponse`
        def DescribeFilesetGeneralConfig(request)
          body = send_request('DescribeFilesetGeneralConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFilesetGeneralConfigResponse.new
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

        # 查询Fileset列表

        # @param request: Request instance for DescribeFilesets.
        # @type request: :class:`Tencentcloud::goosefs::V20220519::DescribeFilesetsRequest`
        # @rtype: :class:`Tencentcloud::goosefs::V20220519::DescribeFilesetsResponse`
        def DescribeFilesets(request)
          body = send_request('DescribeFilesets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFilesetsResponse.new
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

        # 解绑文件系统与Bucket的映射

        # @param request: Request instance for DetachFileSystemBucket.
        # @type request: :class:`Tencentcloud::goosefs::V20220519::DetachFileSystemBucketRequest`
        # @rtype: :class:`Tencentcloud::goosefs::V20220519::DetachFileSystemBucketResponse`
        def DetachFileSystemBucket(request)
          body = send_request('DetachFileSystemBucket', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetachFileSystemBucketResponse.new
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

        # 扩展文件系统容量

        # @param request: Request instance for ExpandCapacity.
        # @type request: :class:`Tencentcloud::goosefs::V20220519::ExpandCapacityRequest`
        # @rtype: :class:`Tencentcloud::goosefs::V20220519::ExpandCapacityResponse`
        def ExpandCapacity(request)
          body = send_request('ExpandCapacity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExpandCapacityResponse.new
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

        # 修改数据流动带宽

        # @param request: Request instance for ModifyDataRepositoryBandwidth.
        # @type request: :class:`Tencentcloud::goosefs::V20220519::ModifyDataRepositoryBandwidthRequest`
        # @rtype: :class:`Tencentcloud::goosefs::V20220519::ModifyDataRepositoryBandwidthResponse`
        def ModifyDataRepositoryBandwidth(request)
          body = send_request('ModifyDataRepositoryBandwidth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDataRepositoryBandwidthResponse.new
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

        # 查询客户端节点跨vpc子网访问能力

        # @param request: Request instance for QueryCrossVpcSubnetSupportForClientNode.
        # @type request: :class:`Tencentcloud::goosefs::V20220519::QueryCrossVpcSubnetSupportForClientNodeRequest`
        # @rtype: :class:`Tencentcloud::goosefs::V20220519::QueryCrossVpcSubnetSupportForClientNodeResponse`
        def QueryCrossVpcSubnetSupportForClientNode(request)
          body = send_request('QueryCrossVpcSubnetSupportForClientNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryCrossVpcSubnetSupportForClientNodeResponse.new
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

        # 查询数据流动带宽

        # @param request: Request instance for QueryDataRepositoryBandwidth.
        # @type request: :class:`Tencentcloud::goosefs::V20220519::QueryDataRepositoryBandwidthRequest`
        # @rtype: :class:`Tencentcloud::goosefs::V20220519::QueryDataRepositoryBandwidthResponse`
        def QueryDataRepositoryBandwidth(request)
          body = send_request('QueryDataRepositoryBandwidth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryDataRepositoryBandwidthResponse.new
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

        # 修改FIleset

        # @param request: Request instance for UpdateFileset.
        # @type request: :class:`Tencentcloud::goosefs::V20220519::UpdateFilesetRequest`
        # @rtype: :class:`Tencentcloud::goosefs::V20220519::UpdateFilesetResponse`
        def UpdateFileset(request)
          body = send_request('UpdateFileset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateFilesetResponse.new
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

        # 修改Fileset通用配置

        # @param request: Request instance for UpdateFilesetGeneralConfig.
        # @type request: :class:`Tencentcloud::goosefs::V20220519::UpdateFilesetGeneralConfigRequest`
        # @rtype: :class:`Tencentcloud::goosefs::V20220519::UpdateFilesetGeneralConfigResponse`
        def UpdateFilesetGeneralConfig(request)
          body = send_request('UpdateFilesetGeneralConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateFilesetGeneralConfigResponse.new
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