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
  module Cdwdoris
    module V20211228
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-12-28'
            api_endpoint = 'cdwdoris.tencentcloudapi.com'
            sdk_version = 'CDWDORIS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 新增和修改用户接口

        # @param request: Request instance for ActionAlterUser.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::ActionAlterUserRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::ActionAlterUserResponse`
        def ActionAlterUser(request)
          body = send_request('ActionAlterUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ActionAlterUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 取消对应的备份实例任务

        # @param request: Request instance for CancelBackupJob.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::CancelBackupJobRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::CancelBackupJobResponse`
        def CancelBackupJob(request)
          body = send_request('CancelBackupJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelBackupJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询冷热分层生效变量和配置是否正确

        # @param request: Request instance for CheckCoolDownWorkingVariableConfigCorrect.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::CheckCoolDownWorkingVariableConfigCorrectRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::CheckCoolDownWorkingVariableConfigCorrectResponse`
        def CheckCoolDownWorkingVariableConfigCorrect(request)
          body = send_request('CheckCoolDownWorkingVariableConfigCorrect', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckCoolDownWorkingVariableConfigCorrectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建或者修改备份策略

        # @param request: Request instance for CreateBackUpSchedule.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::CreateBackUpScheduleRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::CreateBackUpScheduleResponse`
        def CreateBackUpSchedule(request)
          body = send_request('CreateBackUpSchedule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBackUpScheduleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建冷热分层策略

        # @param request: Request instance for CreateCoolDownPolicy.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::CreateCoolDownPolicyRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::CreateCoolDownPolicyResponse`
        def CreateCoolDownPolicy(request)
          body = send_request('CreateCoolDownPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCoolDownPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过API创建集群

        # @param request: Request instance for CreateInstanceNew.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::CreateInstanceNewRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::CreateInstanceNewResponse`
        def CreateInstanceNew(request)
          body = send_request('CreateInstanceNew', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateInstanceNewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建资源组

        # @param request: Request instance for CreateWorkloadGroup.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::CreateWorkloadGroupRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::CreateWorkloadGroupResponse`
        def CreateWorkloadGroup(request)
          body = send_request('CreateWorkloadGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWorkloadGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除备份数据

        # @param request: Request instance for DeleteBackUpData.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DeleteBackUpDataRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DeleteBackUpDataResponse`
        def DeleteBackUpData(request)
          body = send_request('DeleteBackUpData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBackUpDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除资源组

        # @param request: Request instance for DeleteWorkloadGroup.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DeleteWorkloadGroupRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DeleteWorkloadGroupResponse`
        def DeleteWorkloadGroup(request)
          body = send_request('DeleteWorkloadGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWorkloadGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 集群列表页上显示地域信息及各个地域的集群总数

        # @param request: Request instance for DescribeAreaRegion.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DescribeAreaRegionRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DescribeAreaRegionResponse`
        def DescribeAreaRegion(request)
          body = send_request('DescribeAreaRegion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAreaRegionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询备份实例列表

        # @param request: Request instance for DescribeBackUpJob.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DescribeBackUpJobRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DescribeBackUpJobResponse`
        def DescribeBackUpJob(request)
          body = send_request('DescribeBackUpJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackUpJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询备份任务详情

        # @param request: Request instance for DescribeBackUpJobDetail.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DescribeBackUpJobDetailRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DescribeBackUpJobDetailResponse`
        def DescribeBackUpJobDetail(request)
          body = send_request('DescribeBackUpJobDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackUpJobDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取备份、迁移的调度任务信息

        # @param request: Request instance for DescribeBackUpSchedules.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DescribeBackUpSchedulesRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DescribeBackUpSchedulesResponse`
        def DescribeBackUpSchedules(request)
          body = send_request('DescribeBackUpSchedules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackUpSchedulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取可备份表信息

        # @param request: Request instance for DescribeBackUpTables.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DescribeBackUpTablesRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DescribeBackUpTablesResponse`
        def DescribeBackUpTables(request)
          body = send_request('DescribeBackUpTables', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackUpTablesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询备份任务进度详情

        # @param request: Request instance for DescribeBackUpTaskDetail.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DescribeBackUpTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DescribeBackUpTaskDetailResponse`
        def DescribeBackUpTaskDetail(request)
          body = send_request('DescribeBackUpTaskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackUpTaskDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取集群的最新的几个配置文件（config.xml、metrika.xml、user.xml）的内容，显示给用户

        # @param request: Request instance for DescribeClusterConfigs.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DescribeClusterConfigsRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DescribeClusterConfigsResponse`
        def DescribeClusterConfigs(request)
          body = send_request('DescribeClusterConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterConfigsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取集群配置文件修改历史

        # @param request: Request instance for DescribeClusterConfigsHistory.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DescribeClusterConfigsHistoryRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DescribeClusterConfigsHistoryResponse`
        def DescribeClusterConfigsHistory(request)
          body = send_request('DescribeClusterConfigsHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterConfigsHistoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询冷热分层backend节点信息列表

        # @param request: Request instance for DescribeCoolDownBackends.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DescribeCoolDownBackendsRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DescribeCoolDownBackendsResponse`
        def DescribeCoolDownBackends(request)
          body = send_request('DescribeCoolDownBackends', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCoolDownBackendsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询冷热分层策略列表

        # @param request: Request instance for DescribeCoolDownPolicies.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DescribeCoolDownPoliciesRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DescribeCoolDownPoliciesResponse`
        def DescribeCoolDownPolicies(request)
          body = send_request('DescribeCoolDownPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCoolDownPoliciesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询冷热分层Table数据

        # @param request: Request instance for DescribeCoolDownTableData.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DescribeCoolDownTableDataRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DescribeCoolDownTableDataResponse`
        def DescribeCoolDownTableData(request)
          body = send_request('DescribeCoolDownTableData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCoolDownTableDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 下载数据库审计日志

        # @param request: Request instance for DescribeDatabaseAuditDownload.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DescribeDatabaseAuditDownloadRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DescribeDatabaseAuditDownloadResponse`
        def DescribeDatabaseAuditDownload(request)
          body = send_request('DescribeDatabaseAuditDownload', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDatabaseAuditDownloadResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取数据库审计记录

        # @param request: Request instance for DescribeDatabaseAuditRecords.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DescribeDatabaseAuditRecordsRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DescribeDatabaseAuditRecordsResponse`
        def DescribeDatabaseAuditRecords(request)
          body = send_request('DescribeDatabaseAuditRecords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDatabaseAuditRecordsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据集群ID查询某个集群的具体信息

        # @param request: Request instance for DescribeInstance.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DescribeInstanceRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DescribeInstanceResponse`
        def DescribeInstance(request)
          body = send_request('DescribeInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取集群节点信息列表

        # @param request: Request instance for DescribeInstanceNodes.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DescribeInstanceNodesRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DescribeInstanceNodesResponse`
        def DescribeInstanceNodes(request)
          body = send_request('DescribeInstanceNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceNodesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取BE/FE节点角色

        # @param request: Request instance for DescribeInstanceNodesInfo.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DescribeInstanceNodesInfoRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DescribeInstanceNodesInfoResponse`
        def DescribeInstanceNodesInfo(request)
          body = send_request('DescribeInstanceNodesInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceNodesInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取集群节点角色

        # @param request: Request instance for DescribeInstanceNodesRole.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DescribeInstanceNodesRoleRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DescribeInstanceNodesRoleResponse`
        def DescribeInstanceNodesRole(request)
          body = send_request('DescribeInstanceNodesRole', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceNodesRoleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在集群详情页面，拉取该集群的操作

        # @param request: Request instance for DescribeInstanceOperations.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DescribeInstanceOperationsRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DescribeInstanceOperationsResponse`
        def DescribeInstanceOperations(request)
          body = send_request('DescribeInstanceOperations', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceOperationsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 集群详情页中显示集群状态、流程进度等

        # @param request: Request instance for DescribeInstanceState.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DescribeInstanceStateRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DescribeInstanceStateResponse`
        def DescribeInstanceState(request)
          body = send_request('DescribeInstanceState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceStateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取集群已使用子网信息

        # @param request: Request instance for DescribeInstanceUsedSubnets.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DescribeInstanceUsedSubnetsRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DescribeInstanceUsedSubnetsResponse`
        def DescribeInstanceUsedSubnets(request)
          body = send_request('DescribeInstanceUsedSubnets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceUsedSubnetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取集群列表

        # @param request: Request instance for DescribeInstances.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DescribeInstancesRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DescribeInstancesResponse`
        def DescribeInstances(request)
          body = send_request('DescribeInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 集群健康检查

        # @param request: Request instance for DescribeInstancesHealthState.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DescribeInstancesHealthStateRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DescribeInstancesHealthStateResponse`
        def DescribeInstancesHealthState(request)
          body = send_request('DescribeInstancesHealthState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstancesHealthStateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询恢复任务进度详情

        # @param request: Request instance for DescribeRestoreTaskDetail.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DescribeRestoreTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DescribeRestoreTaskDetailResponse`
        def DescribeRestoreTaskDetail(request)
          body = send_request('DescribeRestoreTaskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRestoreTaskDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取慢查询列表

        # @param request: Request instance for DescribeSlowQueryRecords.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DescribeSlowQueryRecordsRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DescribeSlowQueryRecordsResponse`
        def DescribeSlowQueryRecords(request)
          body = send_request('DescribeSlowQueryRecords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSlowQueryRecordsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 下载慢查询文件

        # @param request: Request instance for DescribeSlowQueryRecordsDownload.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DescribeSlowQueryRecordsDownloadRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DescribeSlowQueryRecordsDownloadResponse`
        def DescribeSlowQueryRecordsDownload(request)
          body = send_request('DescribeSlowQueryRecordsDownload', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSlowQueryRecordsDownloadResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 拉取集群节点规格列表

        # @param request: Request instance for DescribeSpec.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DescribeSpecRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DescribeSpecResponse`
        def DescribeSpec(request)
          body = send_request('DescribeSpec', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSpecResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 针对驱动sql命令查询集群接口

        # @param request: Request instance for DescribeSqlApis.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DescribeSqlApisRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DescribeSqlApisResponse`
        def DescribeSqlApis(request)
          body = send_request('DescribeSqlApis', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSqlApisResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定数据源和库下的表列表

        # @param request: Request instance for DescribeTableList.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DescribeTableListRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DescribeTableListResponse`
        def DescribeTableList(request)
          body = send_request('DescribeTableList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTableListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取当前集群各用户绑定的资源信息

        # @param request: Request instance for DescribeUserBindWorkloadGroup.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DescribeUserBindWorkloadGroupRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DescribeUserBindWorkloadGroupResponse`
        def DescribeUserBindWorkloadGroup(request)
          body = send_request('DescribeUserBindWorkloadGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserBindWorkloadGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取资源组信息

        # @param request: Request instance for DescribeWorkloadGroup.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DescribeWorkloadGroupRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DescribeWorkloadGroupResponse`
        def DescribeWorkloadGroup(request)
          body = send_request('DescribeWorkloadGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWorkloadGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 销毁集群

        # @param request: Request instance for DestroyInstance.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::DestroyInstanceRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::DestroyInstanceResponse`
        def DestroyInstance(request)
          body = send_request('DestroyInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroyInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在集群配置页面修改集群配置文件接口，xml模式

        # @param request: Request instance for ModifyClusterConfigs.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::ModifyClusterConfigsRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::ModifyClusterConfigsResponse`
        def ModifyClusterConfigs(request)
          body = send_request('ModifyClusterConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClusterConfigsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改冷热分层策略

        # @param request: Request instance for ModifyCoolDownPolicy.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::ModifyCoolDownPolicyRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::ModifyCoolDownPolicyResponse`
        def ModifyCoolDownPolicy(request)
          body = send_request('ModifyCoolDownPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCoolDownPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改集群名称

        # @param request: Request instance for ModifyInstance.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::ModifyInstanceRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::ModifyInstanceResponse`
        def ModifyInstance(request)
          body = send_request('ModifyInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # KV模式修改配置接口

        # @param request: Request instance for ModifyInstanceKeyValConfigs.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::ModifyInstanceKeyValConfigsRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::ModifyInstanceKeyValConfigsResponse`
        def ModifyInstanceKeyValConfigs(request)
          body = send_request('ModifyInstanceKeyValConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceKeyValConfigsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改节点状态

        # @param request: Request instance for ModifyNodeStatus.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::ModifyNodeStatusRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::ModifyNodeStatusResponse`
        def ModifyNodeStatus(request)
          body = send_request('ModifyNodeStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNodeStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更改安全组

        # @param request: Request instance for ModifySecurityGroups.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::ModifySecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::ModifySecurityGroupsResponse`
        def ModifySecurityGroups(request)
          body = send_request('ModifySecurityGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySecurityGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改用户绑定的资源组

        # @param request: Request instance for ModifyUserBindWorkloadGroup.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::ModifyUserBindWorkloadGroupRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::ModifyUserBindWorkloadGroupResponse`
        def ModifyUserBindWorkloadGroup(request)
          body = send_request('ModifyUserBindWorkloadGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUserBindWorkloadGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改用户权限,支持catalog，全部db，部分db表三种权限设置类别

        # @param request: Request instance for ModifyUserPrivilegesV3.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::ModifyUserPrivilegesV3Request`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::ModifyUserPrivilegesV3Response`
        def ModifyUserPrivilegesV3(request)
          body = send_request('ModifyUserPrivilegesV3', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUserPrivilegesV3Response.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改资源组信息

        # @param request: Request instance for ModifyWorkloadGroup.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::ModifyWorkloadGroupRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::ModifyWorkloadGroupResponse`
        def ModifyWorkloadGroup(request)
          body = send_request('ModifyWorkloadGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWorkloadGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开启或关闭资源组

        # @param request: Request instance for ModifyWorkloadGroupStatus.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::ModifyWorkloadGroupStatusRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::ModifyWorkloadGroupStatusResponse`
        def ModifyWorkloadGroupStatus(request)
          body = send_request('ModifyWorkloadGroupStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWorkloadGroupStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开始启用冷热分层

        # @param request: Request instance for OpenCoolDown.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::OpenCoolDownRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::OpenCoolDownResponse`
        def OpenCoolDown(request)
          body = send_request('OpenCoolDown', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenCoolDownResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开通、描述降冷策略接口

        # @param request: Request instance for OpenCoolDownPolicy.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::OpenCoolDownPolicyRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::OpenCoolDownPolicyResponse`
        def OpenCoolDownPolicy(request)
          body = send_request('OpenCoolDownPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenCoolDownPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 备份恢复

        # @param request: Request instance for RecoverBackUpJob.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::RecoverBackUpJobRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::RecoverBackUpJobResponse`
        def RecoverBackUpJob(request)
          body = send_request('RecoverBackUpJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RecoverBackUpJobResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 集群缩容

        # @param request: Request instance for ReduceInstance.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::ReduceInstanceRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::ReduceInstanceResponse`
        def ReduceInstance(request)
          body = send_request('ReduceInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReduceInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 扩容云盘

        # @param request: Request instance for ResizeDisk.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::ResizeDiskRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::ResizeDiskResponse`
        def ResizeDisk(request)
          body = send_request('ResizeDisk', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResizeDiskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重启集群让配置文件生效

        # @param request: Request instance for RestartClusterForConfigs.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::RestartClusterForConfigsRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::RestartClusterForConfigsResponse`
        def RestartClusterForConfigs(request)
          body = send_request('RestartClusterForConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestartClusterForConfigsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 集群滚动重启

        # @param request: Request instance for RestartClusterForNode.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::RestartClusterForNodeRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::RestartClusterForNodeResponse`
        def RestartClusterForNode(request)
          body = send_request('RestartClusterForNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestartClusterForNodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 水平扩容节点

        # @param request: Request instance for ScaleOutInstance.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::ScaleOutInstanceRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::ScaleOutInstanceResponse`
        def ScaleOutInstance(request)
          body = send_request('ScaleOutInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScaleOutInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 计算资源垂直变配

        # @param request: Request instance for ScaleUpInstance.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::ScaleUpInstanceRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::ScaleUpInstanceResponse`
        def ScaleUpInstance(request)
          body = send_request('ScaleUpInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScaleUpInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新集群冷热分层信息

        # @param request: Request instance for UpdateCoolDown.
        # @type request: :class:`Tencentcloud::cdwdoris::V20211228::UpdateCoolDownRequest`
        # @rtype: :class:`Tencentcloud::cdwdoris::V20211228::UpdateCoolDownResponse`
        def UpdateCoolDown(request)
          body = send_request('UpdateCoolDown', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCoolDownResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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