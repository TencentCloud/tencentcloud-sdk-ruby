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
  module Tcaplusdb
    module V20190823
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2019-08-23'
        @@endpoint = 'tcaplusdb.tencentcloudapi.com'
        @@sdk_version = 'TCAPLUSDB_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 根据给定的表信息，清除表数据。

        # @param request: Request instance for ClearTables.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::ClearTablesRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::ClearTablesResponse`
        def ClearTables(request)
          body = send_request('ClearTables', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ClearTablesResponse.new
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

        # 选中目标表格，上传并校验改表文件，返回是否允许修改表格结构的结果。

        # @param request: Request instance for CompareIdlFiles.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::CompareIdlFilesRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::CompareIdlFilesResponse`
        def CompareIdlFiles(request)
          body = send_request('CompareIdlFiles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CompareIdlFilesResponse.new
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

        # 用户创建备份任务

        # @param request: Request instance for CreateBackup.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::CreateBackupRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::CreateBackupResponse`
        def CreateBackup(request)
          body = send_request('CreateBackup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBackupResponse.new
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

        # 本接口用于创建TcaplusDB集群

        # @param request: Request instance for CreateCluster.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::CreateClusterRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::CreateClusterResponse`
        def CreateCluster(request)
          body = send_request('CreateCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateClusterResponse.new
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

        # 在TcaplusDB集群下创建表格组

        # @param request: Request instance for CreateTableGroup.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::CreateTableGroupRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::CreateTableGroupResponse`
        def CreateTableGroup(request)
          body = send_request('CreateTableGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTableGroupResponse.new
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

        # 根据选择的IDL文件列表，批量创建表格

        # @param request: Request instance for CreateTables.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::CreateTablesRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::CreateTablesResponse`
        def CreateTables(request)
          body = send_request('CreateTables', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTablesResponse.new
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

        # 删除TcaplusDB集群，必须在集群所属所有资源（包括表格组，表）都已经释放的情况下才会成功。

        # @param request: Request instance for DeleteCluster.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::DeleteClusterRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::DeleteClusterResponse`
        def DeleteCluster(request)
          body = send_request('DeleteCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteClusterResponse.new
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

        # 指定集群ID和待删除IDL文件的信息，删除目标文件，如果文件正在被表关联则删除失败。

        # @param request: Request instance for DeleteIdlFiles.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::DeleteIdlFilesRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::DeleteIdlFilesResponse`
        def DeleteIdlFiles(request)
          body = send_request('DeleteIdlFiles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteIdlFilesResponse.new
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

        # 删除表格组

        # @param request: Request instance for DeleteTableGroup.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::DeleteTableGroupRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::DeleteTableGroupResponse`
        def DeleteTableGroup(request)
          body = send_request('DeleteTableGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTableGroupResponse.new
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

        # 删除表格的分布式索引

        # @param request: Request instance for DeleteTableIndex.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::DeleteTableIndexRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::DeleteTableIndexResponse`
        def DeleteTableIndex(request)
          body = send_request('DeleteTableIndex', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTableIndexResponse.new
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

        # 删除指定的表,第一次调用此接口代表将表移动至回收站，再次调用代表将此表格从回收站中彻底删除。

        # @param request: Request instance for DeleteTables.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::DeleteTablesRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::DeleteTablesResponse`
        def DeleteTables(request)
          body = send_request('DeleteTables', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTablesResponse.new
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

        # 获取集群关联的标签列表

        # @param request: Request instance for DescribeClusterTags.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::DescribeClusterTagsRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::DescribeClusterTagsResponse`
        def DescribeClusterTags(request)
          body = send_request('DescribeClusterTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterTagsResponse.new
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

        # 查询TcaplusDB集群列表，包含集群详细信息。

        # @param request: Request instance for DescribeClusters.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::DescribeClustersRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::DescribeClustersResponse`
        def DescribeClusters(request)
          body = send_request('DescribeClusters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClustersResponse.new
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

        # 查询表描述文件详情

        # @param request: Request instance for DescribeIdlFileInfos.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::DescribeIdlFileInfosRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::DescribeIdlFileInfosResponse`
        def DescribeIdlFileInfos(request)
          body = send_request('DescribeIdlFileInfos', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIdlFileInfosResponse.new
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

        # 查询独占集群可以申请的剩余机器

        # @param request: Request instance for DescribeMachine.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::DescribeMachineRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::DescribeMachineResponse`
        def DescribeMachine(request)
          body = send_request('DescribeMachine', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMachineResponse.new
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

        # 查询TcaplusDB服务支持的地域列表

        # @param request: Request instance for DescribeRegions.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::DescribeRegionsRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::DescribeRegionsResponse`
        def DescribeRegions(request)
          body = send_request('DescribeRegions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRegionsResponse.new
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

        # 获取表格组关联的标签列表

        # @param request: Request instance for DescribeTableGroupTags.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::DescribeTableGroupTagsRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::DescribeTableGroupTagsResponse`
        def DescribeTableGroupTags(request)
          body = send_request('DescribeTableGroupTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTableGroupTagsResponse.new
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

        # 查询表格组列表

        # @param request: Request instance for DescribeTableGroups.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::DescribeTableGroupsRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::DescribeTableGroupsResponse`
        def DescribeTableGroups(request)
          body = send_request('DescribeTableGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTableGroupsResponse.new
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

        # 获取表格标签

        # @param request: Request instance for DescribeTableTags.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::DescribeTableTagsRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::DescribeTableTagsResponse`
        def DescribeTableTags(request)
          body = send_request('DescribeTableTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTableTagsResponse.new
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

        # 查询表详情

        # @param request: Request instance for DescribeTables.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::DescribeTablesRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::DescribeTablesResponse`
        def DescribeTables(request)
          body = send_request('DescribeTables', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTablesResponse.new
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

        # 查询回收站中的表详情

        # @param request: Request instance for DescribeTablesInRecycle.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::DescribeTablesInRecycleRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::DescribeTablesInRecycleResponse`
        def DescribeTablesInRecycle(request)
          body = send_request('DescribeTablesInRecycle', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTablesInRecycleResponse.new
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

        # 查询任务列表

        # @param request: Request instance for DescribeTasks.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::DescribeTasksRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::DescribeTasksResponse`
        def DescribeTasks(request)
          body = send_request('DescribeTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTasksResponse.new
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

        # 查询本用户是否在白名单中，控制是否能创建TDR类型的APP或表

        # @param request: Request instance for DescribeUinInWhitelist.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::DescribeUinInWhitelistRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::DescribeUinInWhitelistResponse`
        def DescribeUinInWhitelist(request)
          body = send_request('DescribeUinInWhitelist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUinInWhitelistResponse.new
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

        # 修改独占集群机器

        # @param request: Request instance for ModifyClusterMachine.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::ModifyClusterMachineRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::ModifyClusterMachineResponse`
        def ModifyClusterMachine(request)
          body = send_request('ModifyClusterMachine', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClusterMachineResponse.new
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

        # 修改指定的集群名称

        # @param request: Request instance for ModifyClusterName.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::ModifyClusterNameRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::ModifyClusterNameResponse`
        def ModifyClusterName(request)
          body = send_request('ModifyClusterName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClusterNameResponse.new
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

        # 修改指定集群的密码，后台将在旧密码失效之前同时支持TcaplusDB SDK使用旧密码和新密码访问数据库。在旧密码失效之前不能提交新的密码修改请求，在旧密码失效之后不能提交修改旧密码过期时间的请求。

        # @param request: Request instance for ModifyClusterPassword.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::ModifyClusterPasswordRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::ModifyClusterPasswordResponse`
        def ModifyClusterPassword(request)
          body = send_request('ModifyClusterPassword', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClusterPasswordResponse.new
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

        # 修改集群标签

        # @param request: Request instance for ModifyClusterTags.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::ModifyClusterTagsRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::ModifyClusterTagsResponse`
        def ModifyClusterTags(request)
          body = send_request('ModifyClusterTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClusterTagsResponse.new
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

        # 修改TcaplusDB表格组名称

        # @param request: Request instance for ModifyTableGroupName.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::ModifyTableGroupNameRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::ModifyTableGroupNameResponse`
        def ModifyTableGroupName(request)
          body = send_request('ModifyTableGroupName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTableGroupNameResponse.new
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

        # 修改表格组标签

        # @param request: Request instance for ModifyTableGroupTags.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::ModifyTableGroupTagsRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::ModifyTableGroupTagsResponse`
        def ModifyTableGroupTags(request)
          body = send_request('ModifyTableGroupTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTableGroupTagsResponse.new
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

        # 修改表备注信息

        # @param request: Request instance for ModifyTableMemos.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::ModifyTableMemosRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::ModifyTableMemosResponse`
        def ModifyTableMemos(request)
          body = send_request('ModifyTableMemos', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTableMemosResponse.new
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

        # 表格扩缩容

        # @param request: Request instance for ModifyTableQuotas.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::ModifyTableQuotasRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::ModifyTableQuotasResponse`
        def ModifyTableQuotas(request)
          body = send_request('ModifyTableQuotas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTableQuotasResponse.new
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

        # 修改表格标签

        # @param request: Request instance for ModifyTableTags.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::ModifyTableTagsRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::ModifyTableTagsResponse`
        def ModifyTableTags(request)
          body = send_request('ModifyTableTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTableTagsResponse.new
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

        # 根据用户选定的表定义IDL文件，批量修改指定的表

        # @param request: Request instance for ModifyTables.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::ModifyTablesRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::ModifyTablesResponse`
        def ModifyTables(request)
          body = send_request('ModifyTables', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTablesResponse.new
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

        # 恢复回收站中，用户自行删除的表。对欠费待释放的表无效。

        # @param request: Request instance for RecoverRecycleTables.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::RecoverRecycleTablesRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::RecoverRecycleTablesResponse`
        def RecoverRecycleTables(request)
          body = send_request('RecoverRecycleTables', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RecoverRecycleTablesResponse.new
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

        # 表格数据回档

        # @param request: Request instance for RollbackTables.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::RollbackTablesRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::RollbackTablesResponse`
        def RollbackTables(request)
          body = send_request('RollbackTables', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RollbackTablesResponse.new
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

        # 设置表格分布式索引

        # @param request: Request instance for SetTableIndex.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::SetTableIndexRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::SetTableIndexResponse`
        def SetTableIndex(request)
          body = send_request('SetTableIndex', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetTableIndexResponse.new
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

        # 上传并校验创建表格文件，返回校验合法的表格定义

        # @param request: Request instance for VerifyIdlFiles.
        # @type request: :class:`Tencentcloud::tcaplusdb::V20190823::VerifyIdlFilesRequest`
        # @rtype: :class:`Tencentcloud::tcaplusdb::V20190823::VerifyIdlFilesResponse`
        def VerifyIdlFiles(request)
          body = send_request('VerifyIdlFiles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifyIdlFilesResponse.new
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