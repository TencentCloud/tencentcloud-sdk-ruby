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
  module Emr
    module V20190103
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-01-03'
            api_endpoint = 'emr.tencentcloudapi.com'
            sdk_version = 'EMR_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 添加扩缩容规则，按负载和时间

        # @param request: Request instance for AddMetricScaleStrategy.
        # @type request: :class:`Tencentcloud::emr::V20190103::AddMetricScaleStrategyRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::AddMetricScaleStrategyResponse`
        def AddMetricScaleStrategy(request)
          body = send_request('AddMetricScaleStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddMetricScaleStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 增加当前集群的节点规格配置

        # @param request: Request instance for AddNodeResourceConfig.
        # @type request: :class:`Tencentcloud::emr::V20190103::AddNodeResourceConfigRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::AddNodeResourceConfigResponse`
        def AddNodeResourceConfig(request)
          body = send_request('AddNodeResourceConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddNodeResourceConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口支持安装了OpenLdap组件的集群。
        # 新增用户列表（用户管理）。

        # @param request: Request instance for AddUsersForUserManager.
        # @type request: :class:`Tencentcloud::emr::V20190103::AddUsersForUserManagerRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::AddUsersForUserManagerResponse`
        def AddUsersForUserManager(request)
          body = send_request('AddUsersForUserManager', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddUsersForUserManagerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云盘挂载

        # @param request: Request instance for AttachDisks.
        # @type request: :class:`Tencentcloud::emr::V20190103::AttachDisksRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::AttachDisksResponse`
        def AttachDisks(request)
          body = send_request('AttachDisks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AttachDisksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 包月集群转按量集群（不含cdb）

        # @param request: Request instance for ConvertPreToPostCluster.
        # @type request: :class:`Tencentcloud::emr::V20190103::ConvertPreToPostClusterRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::ConvertPreToPostClusterResponse`
        def ConvertPreToPostCluster(request)
          body = send_request('ConvertPreToPostCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ConvertPreToPostClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建EMR容器集群实例

        # @param request: Request instance for CreateCloudInstance.
        # @type request: :class:`Tencentcloud::emr::V20190103::CreateCloudInstanceRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::CreateCloudInstanceResponse`
        def CreateCloudInstance(request)
          body = send_request('CreateCloudInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建EMR集群实例

        # @param request: Request instance for CreateCluster.
        # @type request: :class:`Tencentcloud::emr::V20190103::CreateClusterRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::CreateClusterResponse`
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

        # 用户管理-批量创建用户组

        # @param request: Request instance for CreateGroupsSTD.
        # @type request: :class:`Tencentcloud::emr::V20190103::CreateGroupsSTDRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::CreateGroupsSTDResponse`
        def CreateGroupsSTD(request)
          body = send_request('CreateGroupsSTD', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateGroupsSTDResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建EMR集群实例

        # @param request: Request instance for CreateInstance.
        # @type request: :class:`Tencentcloud::emr::V20190103::CreateInstanceRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::CreateInstanceResponse`
        def CreateInstance(request)
          body = send_request('CreateInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateSLInstance）用于创建Serverless HBase实例
        # - 接口调用成功，会创建Serverless HBase实例，创建实例请求成功会返回创建实例的InstaceId和请求的 RequestID。
        # - 接口为异步接口，接口返回时操作并未立即完成，实例操作结果可以通过调用DescribeInstancesList查看当前实例的StatusDesc状态。

        # @param request: Request instance for CreateSLInstance.
        # @type request: :class:`Tencentcloud::emr::V20190103::CreateSLInstanceRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::CreateSLInstanceResponse`
        def CreateSLInstance(request)
          body = send_request('CreateSLInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSLInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除自动扩缩容规则，后台销毁根据该规则扩缩容出来的节点

        # @param request: Request instance for DeleteAutoScaleStrategy.
        # @type request: :class:`Tencentcloud::emr::V20190103::DeleteAutoScaleStrategyRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DeleteAutoScaleStrategyResponse`
        def DeleteAutoScaleStrategy(request)
          body = send_request('DeleteAutoScaleStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAutoScaleStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量删除用户组

        # @param request: Request instance for DeleteGroupsSTD.
        # @type request: :class:`Tencentcloud::emr::V20190103::DeleteGroupsSTDRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DeleteGroupsSTDResponse`
        def DeleteGroupsSTD(request)
          body = send_request('DeleteGroupsSTD', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteGroupsSTDResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除当前集群的节点规格配置

        # @param request: Request instance for DeleteNodeResourceConfig.
        # @type request: :class:`Tencentcloud::emr::V20190103::DeleteNodeResourceConfigRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DeleteNodeResourceConfigResponse`
        def DeleteNodeResourceConfig(request)
          body = send_request('DeleteNodeResourceConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNodeResourceConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除用户列表（用户管理）

        # @param request: Request instance for DeleteUserManagerUserList.
        # @type request: :class:`Tencentcloud::emr::V20190103::DeleteUserManagerUserListRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DeleteUserManagerUserListResponse`
        def DeleteUserManagerUserList(request)
          body = send_request('DeleteUserManagerUserList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteUserManagerUserListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # yarn资源调度-部署生效

        # @param request: Request instance for DeployYarnConf.
        # @type request: :class:`Tencentcloud::emr::V20190103::DeployYarnConfRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DeployYarnConfResponse`
        def DeployYarnConf(request)
          body = send_request('DeployYarnConf', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeployYarnConfResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取自动扩缩容全局配置

        # @param request: Request instance for DescribeAutoScaleGroupGlobalConf.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeAutoScaleGroupGlobalConfRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeAutoScaleGroupGlobalConfResponse`
        def DescribeAutoScaleGroupGlobalConf(request)
          body = send_request('DescribeAutoScaleGroupGlobalConf', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAutoScaleGroupGlobalConfResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取集群的自动扩缩容的详细记录

        # @param request: Request instance for DescribeAutoScaleRecords.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeAutoScaleRecordsRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeAutoScaleRecordsResponse`
        def DescribeAutoScaleRecords(request)
          body = send_request('DescribeAutoScaleRecords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAutoScaleRecordsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取自动扩缩容规则

        # @param request: Request instance for DescribeAutoScaleStrategies.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeAutoScaleStrategiesRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeAutoScaleStrategiesResponse`
        def DescribeAutoScaleStrategies(request)
          body = send_request('DescribeAutoScaleStrategies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAutoScaleStrategiesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询EMR任务运行详情状态

        # @param request: Request instance for DescribeClusterFlowStatusDetail.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeClusterFlowStatusDetailRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeClusterFlowStatusDetailResponse`
        def DescribeClusterFlowStatusDetail(request)
          body = send_request('DescribeClusterFlowStatusDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterFlowStatusDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集群节点信息

        # @param request: Request instance for DescribeClusterNodes.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeClusterNodesRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeClusterNodesResponse`
        def DescribeClusterNodes(request)
          body = send_request('DescribeClusterNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterNodesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取账户的CVM配额

        # @param request: Request instance for DescribeCvmQuota.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeCvmQuotaRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeCvmQuotaResponse`
        def DescribeCvmQuota(request)
          body = send_request('DescribeCvmQuota', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCvmQuotaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询DAG信息

        # @param request: Request instance for DescribeDAGInfo.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeDAGInfoRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeDAGInfoResponse`
        def DescribeDAGInfo(request)
          body = send_request('DescribeDAGInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDAGInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # yarn application 统计接口查询

        # @param request: Request instance for DescribeEmrApplicationStatics.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeEmrApplicationStaticsRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeEmrApplicationStaticsResponse`
        def DescribeEmrApplicationStatics(request)
          body = send_request('DescribeEmrApplicationStatics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEmrApplicationStaticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询监控概览页指标数据

        # @param request: Request instance for DescribeEmrOverviewMetrics.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeEmrOverviewMetricsRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeEmrOverviewMetricsResponse`
        def DescribeEmrOverviewMetrics(request)
          body = send_request('DescribeEmrOverviewMetrics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEmrOverviewMetricsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询YARN资源调度的全局配置

        # @param request: Request instance for DescribeGlobalConfig.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeGlobalConfigRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeGlobalConfigResponse`
        def DescribeGlobalConfig(request)
          body = send_request('DescribeGlobalConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGlobalConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户组

        # @param request: Request instance for DescribeGroupsSTD.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeGroupsSTDRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeGroupsSTDResponse`
        def DescribeGroupsSTD(request)
          body = send_request('DescribeGroupsSTD', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGroupsSTDResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取Hbase表级监控数据概览接口

        # @param request: Request instance for DescribeHBaseTableOverview.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeHBaseTableOverviewRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeHBaseTableOverviewResponse`
        def DescribeHBaseTableOverview(request)
          body = send_request('DescribeHBaseTableOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHBaseTableOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询HDFS存储文件信息

        # @param request: Request instance for DescribeHDFSStorageInfo.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeHDFSStorageInfoRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeHDFSStorageInfoResponse`
        def DescribeHDFSStorageInfo(request)
          body = send_request('DescribeHDFSStorageInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHDFSStorageInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取hive查询信息

        # @param request: Request instance for DescribeHiveQueries.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeHiveQueriesRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeHiveQueriesResponse`
        def DescribeHiveQueries(request)
          body = send_request('DescribeHiveQueries', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHiveQueriesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeImpalaQueries

        # @param request: Request instance for DescribeImpalaQueries.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeImpalaQueriesRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeImpalaQueriesResponse`
        def DescribeImpalaQueries(request)
          body = send_request('DescribeImpalaQueries', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImpalaQueriesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取洞察结果信息

        # @param request: Request instance for DescribeInsightList.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeInsightListRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeInsightListResponse`
        def DescribeInsightList(request)
          body = send_request('DescribeInsightList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInsightListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取巡检任务结果列表

        # @param request: Request instance for DescribeInspectionTaskResult.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeInspectionTaskResultRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeInspectionTaskResultResponse`
        def DescribeInspectionTaskResult(request)
          body = send_request('DescribeInspectionTaskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInspectionTaskResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询待续费节点信息

        # @param request: Request instance for DescribeInstanceRenewNodes.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeInstanceRenewNodesRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeInstanceRenewNodesResponse`
        def DescribeInstanceRenewNodes(request)
          body = send_request('DescribeInstanceRenewNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceRenewNodesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集群实例信息

        # @param request: Request instance for DescribeInstances.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeInstancesRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeInstancesResponse`
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

        # 查询集群列表

        # @param request: Request instance for DescribeInstancesList.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeInstancesListRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeInstancesListResponse`
        def DescribeInstancesList(request)
          body = send_request('DescribeInstancesList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstancesListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询流程任务

        # @param request: Request instance for DescribeJobFlow.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeJobFlowRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeJobFlowResponse`
        def DescribeJobFlow(request)
          body = send_request('DescribeJobFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeJobFlowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Kyuubi查询信息

        # @param request: Request instance for DescribeKyuubiQueryInfo.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeKyuubiQueryInfoRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeKyuubiQueryInfoResponse`
        def DescribeKyuubiQueryInfo(request)
          body = send_request('DescribeKyuubiQueryInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKyuubiQueryInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询节点数据盘信息

        # @param request: Request instance for DescribeNodeDataDisks.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeNodeDataDisksRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeNodeDataDisksResponse`
        def DescribeNodeDataDisks(request)
          body = send_request('DescribeNodeDataDisks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNodeDataDisksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 快速获取当前集群的节点规格配置

        # @param request: Request instance for DescribeNodeResourceConfigFast.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeNodeResourceConfigFastRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeNodeResourceConfigFastResponse`
        def DescribeNodeResourceConfigFast(request)
          body = send_request('DescribeNodeResourceConfigFast', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNodeResourceConfigFastResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询节点规格

        # @param request: Request instance for DescribeNodeSpec.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeNodeSpecRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeNodeSpecResponse`
        def DescribeNodeSpec(request)
          body = send_request('DescribeNodeSpec', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNodeSpecResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询YARN资源调度数据信息。已废弃，请使用`DescribeYarnQueue`去查询队列信息。

        # @param request: Request instance for DescribeResourceSchedule.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeResourceScheduleRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeResourceScheduleResponse`
        def DescribeResourceSchedule(request)
          body = send_request('DescribeResourceSchedule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourceScheduleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # YARN资源调度-变更详情

        # @param request: Request instance for DescribeResourceScheduleDiffDetail.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeResourceScheduleDiffDetailRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeResourceScheduleDiffDetailResponse`
        def DescribeResourceScheduleDiffDetail(request)
          body = send_request('DescribeResourceScheduleDiffDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourceScheduleDiffDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeSLInstance）用于查询 Serverless HBase实例基本信息

        # @param request: Request instance for DescribeSLInstance.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeSLInstanceRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeSLInstanceResponse`
        def DescribeSLInstance(request)
          body = send_request('DescribeSLInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSLInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeSLInstanceList）用于查询Serverless HBase实例列表详细信息

        # @param request: Request instance for DescribeSLInstanceList.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeSLInstanceListRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeSLInstanceListResponse`
        def DescribeSLInstanceList(request)
          body = send_request('DescribeSLInstanceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSLInstanceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 描述服务配置组信息

        # @param request: Request instance for DescribeServiceConfGroupInfos.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeServiceConfGroupInfosRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeServiceConfGroupInfosResponse`
        def DescribeServiceConfGroupInfos(request)
          body = send_request('DescribeServiceConfGroupInfos', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeServiceConfGroupInfosResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询服务进程信息

        # @param request: Request instance for DescribeServiceNodeInfos.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeServiceNodeInfosRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeServiceNodeInfosResponse`
        def DescribeServiceNodeInfos(request)
          body = send_request('DescribeServiceNodeInfos', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeServiceNodeInfosResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取spark应用列表

        # @param request: Request instance for DescribeSparkApplications.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeSparkApplicationsRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeSparkApplicationsResponse`
        def DescribeSparkApplications(request)
          body = send_request('DescribeSparkApplications', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSparkApplicationsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Spark查询信息列表

        # @param request: Request instance for DescribeSparkQueries.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeSparkQueriesRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeSparkQueriesResponse`
        def DescribeSparkQueries(request)
          body = send_request('DescribeSparkQueries', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSparkQueriesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询StarRocks查询信息

        # @param request: Request instance for DescribeStarRocksQueryInfo.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeStarRocksQueryInfoRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeStarRocksQueryInfoResponse`
        def DescribeStarRocksQueryInfo(request)
          body = send_request('DescribeStarRocksQueryInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStarRocksQueryInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Trino(PrestoSQL)查询信息

        # @param request: Request instance for DescribeTrinoQueryInfo.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeTrinoQueryInfoRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeTrinoQueryInfoResponse`
        def DescribeTrinoQueryInfo(request)
          body = send_request('DescribeTrinoQueryInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTrinoQueryInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口支持安装了OpenLdap组件的集群。
        # 批量导出用户。对于kerberos集群，如果需要kertab文件下载地址，可以将NeedKeytabInfo设置为true；注意SupportDownLoadKeyTab为true，但是DownLoadKeyTabUrl为空字符串，表示keytab文件在后台没有准备好（正在生成）。

        # @param request: Request instance for DescribeUsersForUserManager.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeUsersForUserManagerRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeUsersForUserManagerResponse`
        def DescribeUsersForUserManager(request)
          body = send_request('DescribeUsersForUserManager', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUsersForUserManagerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeYarnApplications

        # @param request: Request instance for DescribeYarnApplications.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeYarnApplicationsRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeYarnApplicationsResponse`
        def DescribeYarnApplications(request)
          body = send_request('DescribeYarnApplications', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeYarnApplicationsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取资源调度中的队列信息

        # @param request: Request instance for DescribeYarnQueue.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeYarnQueueRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeYarnQueueResponse`
        def DescribeYarnQueue(request)
          body = send_request('DescribeYarnQueue', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeYarnQueueResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看yarn资源调度的调度历史。废弃，请使用流程中心查看历史记录。

        # @param request: Request instance for DescribeYarnScheduleHistory.
        # @type request: :class:`Tencentcloud::emr::V20190103::DescribeYarnScheduleHistoryRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::DescribeYarnScheduleHistoryResponse`
        def DescribeYarnScheduleHistory(request)
          body = send_request('DescribeYarnScheduleHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeYarnScheduleHistoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 集群续费询价。

        # @param request: Request instance for InquirePriceRenewEmr.
        # @type request: :class:`Tencentcloud::emr::V20190103::InquirePriceRenewEmrRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::InquirePriceRenewEmrResponse`
        def InquirePriceRenewEmr(request)
          body = send_request('InquirePriceRenewEmr', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquirePriceRenewEmrResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建实例询价

        # @param request: Request instance for InquiryPriceCreateInstance.
        # @type request: :class:`Tencentcloud::emr::V20190103::InquiryPriceCreateInstanceRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::InquiryPriceCreateInstanceResponse`
        def InquiryPriceCreateInstance(request)
          body = send_request('InquiryPriceCreateInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceCreateInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 续费询价。

        # @param request: Request instance for InquiryPriceRenewInstance.
        # @type request: :class:`Tencentcloud::emr::V20190103::InquiryPriceRenewInstanceRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::InquiryPriceRenewInstanceResponse`
        def InquiryPriceRenewInstance(request)
          body = send_request('InquiryPriceRenewInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceRenewInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 扩容询价. 当扩容时候，请通过该接口查询价格。

        # @param request: Request instance for InquiryPriceScaleOutInstance.
        # @type request: :class:`Tencentcloud::emr::V20190103::InquiryPriceScaleOutInstanceRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::InquiryPriceScaleOutInstanceResponse`
        def InquiryPriceScaleOutInstance(request)
          body = send_request('InquiryPriceScaleOutInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceScaleOutInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 变配询价

        # @param request: Request instance for InquiryPriceUpdateInstance.
        # @type request: :class:`Tencentcloud::emr::V20190103::InquiryPriceUpdateInstanceRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::InquiryPriceUpdateInstanceResponse`
        def InquiryPriceUpdateInstance(request)
          body = send_request('InquiryPriceUpdateInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceUpdateInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 前提：预付费集群
        # 资源级别开启或关闭自动续费

        # @param request: Request instance for ModifyAutoRenewFlag.
        # @type request: :class:`Tencentcloud::emr::V20190103::ModifyAutoRenewFlagRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::ModifyAutoRenewFlagResponse`
        def ModifyAutoRenewFlag(request)
          body = send_request('ModifyAutoRenewFlag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAutoRenewFlagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改自动扩缩容规则

        # @param request: Request instance for ModifyAutoScaleStrategy.
        # @type request: :class:`Tencentcloud::emr::V20190103::ModifyAutoScaleStrategyRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::ModifyAutoScaleStrategyResponse`
        def ModifyAutoScaleStrategy(request)
          body = send_request('ModifyAutoScaleStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAutoScaleStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改YARN资源调度的全局配置

        # @param request: Request instance for ModifyGlobalConfig.
        # @type request: :class:`Tencentcloud::emr::V20190103::ModifyGlobalConfigRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::ModifyGlobalConfigResponse`
        def ModifyGlobalConfig(request)
          body = send_request('ModifyGlobalConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyGlobalConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置巡检任务配置

        # @param request: Request instance for ModifyInspectionSettings.
        # @type request: :class:`Tencentcloud::emr::V20190103::ModifyInspectionSettingsRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::ModifyInspectionSettingsResponse`
        def ModifyInspectionSettings(request)
          body = send_request('ModifyInspectionSettings', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInspectionSettingsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # @param request: Request instance for ModifyInstanceBasic.
        # @type request: :class:`Tencentcloud::emr::V20190103::ModifyInstanceBasicRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::ModifyInstanceBasicResponse`
        def ModifyInstanceBasic(request)
          body = send_request('ModifyInstanceBasic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceBasicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 调整Pod数量

        # @param request: Request instance for ModifyPodNum.
        # @type request: :class:`Tencentcloud::emr::V20190103::ModifyPodNumRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::ModifyPodNumResponse`
        def ModifyPodNum(request)
          body = send_request('ModifyPodNum', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPodNumResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 变配实例

        # @param request: Request instance for ModifyResource.
        # @type request: :class:`Tencentcloud::emr::V20190103::ModifyResourceRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::ModifyResourceResponse`
        def ModifyResource(request)
          body = send_request('ModifyResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 已废弃，请使用DeployYarnConf\\n，近一年未被调用

        # 刷新YARN的动态资源池。已废弃，请使用`DeployYarnConf`

        # @param request: Request instance for ModifyResourcePools.
        # @type request: :class:`Tencentcloud::emr::V20190103::ModifyResourcePoolsRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::ModifyResourcePoolsResponse`
        def ModifyResourcePools(request)
          body = send_request('ModifyResourcePools', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyResourcePoolsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 已废弃，请使用ModifyYarnQueueV2来修改队列配置，近一年无相关日志

        # 修改YARN资源调度的资源配置。已废弃，请使用`ModifyYarnQueueV2`来修改队列配置

        # @param request: Request instance for ModifyResourceScheduleConfig.
        # @type request: :class:`Tencentcloud::emr::V20190103::ModifyResourceScheduleConfigRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::ModifyResourceScheduleConfigResponse`
        def ModifyResourceScheduleConfig(request)
          body = send_request('ModifyResourceScheduleConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyResourceScheduleConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改了yarn的资源调度器，点击部署生效。

        # @param request: Request instance for ModifyResourceScheduler.
        # @type request: :class:`Tencentcloud::emr::V20190103::ModifyResourceSchedulerRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::ModifyResourceSchedulerResponse`
        def ModifyResourceScheduler(request)
          body = send_request('ModifyResourceScheduler', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyResourceSchedulerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 强制修改标签

        # @param request: Request instance for ModifyResourcesTags.
        # @type request: :class:`Tencentcloud::emr::V20190103::ModifyResourcesTagsRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::ModifyResourcesTagsResponse`
        def ModifyResourcesTags(request)
          body = send_request('ModifyResourcesTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyResourcesTagsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifySLInstance）用于Serverless HBase变配实例。
        # - 接口调用成功，会创建Serverless HBase实例，创建实例请求成功会返回请求的 RequestID。
        # - 接口为异步接口，接口返回时操作并未立即完成，实例操作结果可以通过调用DescribeInstancesList查看当前实例的StatusDesc状态。

        # @param request: Request instance for ModifySLInstance.
        # @type request: :class:`Tencentcloud::emr::V20190103::ModifySLInstanceRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::ModifySLInstanceResponse`
        def ModifySLInstance(request)
          body = send_request('ModifySLInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySLInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # serverless hbase修改实例名称

        # @param request: Request instance for ModifySLInstanceBasic.
        # @type request: :class:`Tencentcloud::emr::V20190103::ModifySLInstanceBasicRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::ModifySLInstanceBasicResponse`
        def ModifySLInstanceBasic(request)
          body = send_request('ModifySLInstanceBasic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySLInstanceBasicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用户管理-修改用户组

        # @param request: Request instance for ModifyUserGroup.
        # @type request: :class:`Tencentcloud::emr::V20190103::ModifyUserGroupRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::ModifyUserGroupResponse`
        def ModifyUserGroup(request)
          body = send_request('ModifyUserGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUserGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改用户密码（用户管理）

        # @param request: Request instance for ModifyUserManagerPwd.
        # @type request: :class:`Tencentcloud::emr::V20190103::ModifyUserManagerPwdRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::ModifyUserManagerPwdResponse`
        def ModifyUserManagerPwd(request)
          body = send_request('ModifyUserManagerPwd', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUserManagerPwdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 变更用户组用户信息

        # @param request: Request instance for ModifyUsersOfGroupSTD.
        # @type request: :class:`Tencentcloud::emr::V20190103::ModifyUsersOfGroupSTDRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::ModifyUsersOfGroupSTDResponse`
        def ModifyUsersOfGroupSTD(request)
          body = send_request('ModifyUsersOfGroupSTD', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUsersOfGroupSTDResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口已废弃，请使用DeployYarnConf完成部署生效

        # 部署生效。已废弃，请使用`DeployYarnConf`接口进行部署生效

        # @param request: Request instance for ModifyYarnDeploy.
        # @type request: :class:`Tencentcloud::emr::V20190103::ModifyYarnDeployRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::ModifyYarnDeployResponse`
        def ModifyYarnDeploy(request)
          body = send_request('ModifyYarnDeploy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyYarnDeployResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改资源调度中队列信息

        # @param request: Request instance for ModifyYarnQueueV2.
        # @type request: :class:`Tencentcloud::emr::V20190103::ModifyYarnQueueV2Request`
        # @rtype: :class:`Tencentcloud::emr::V20190103::ModifyYarnQueueV2Response`
        def ModifyYarnQueueV2(request)
          body = send_request('ModifyYarnQueueV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyYarnQueueV2Response.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改YARN资源调度的资源配置

        # @param request: Request instance for ResetYarnConfig.
        # @type request: :class:`Tencentcloud::emr::V20190103::ResetYarnConfigRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::ResetYarnConfigResponse`
        def ResetYarnConfig(request)
          body = send_request('ResetYarnConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetYarnConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 云数据盘扩容

        # @param request: Request instance for ResizeDataDisks.
        # @type request: :class:`Tencentcloud::emr::V20190103::ResizeDataDisksRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::ResizeDataDisksResponse`
        def ResizeDataDisks(request)
          body = send_request('ResizeDataDisks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResizeDataDisksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建流程作业

        # @param request: Request instance for RunJobFlow.
        # @type request: :class:`Tencentcloud::emr::V20190103::RunJobFlowRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::RunJobFlowResponse`
        def RunJobFlow(request)
          body = send_request('RunJobFlow', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunJobFlowResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 扩容集群节点

        # @param request: Request instance for ScaleOutCluster.
        # @type request: :class:`Tencentcloud::emr::V20190103::ScaleOutClusterRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::ScaleOutClusterResponse`
        def ScaleOutCluster(request)
          body = send_request('ScaleOutCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScaleOutClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 扩容节点

        # @param request: Request instance for ScaleOutInstance.
        # @type request: :class:`Tencentcloud::emr::V20190103::ScaleOutInstanceRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::ScaleOutInstanceResponse`
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

        # 设置当前集群的某个节点规格配置为默认或取消默认

        # @param request: Request instance for SetNodeResourceConfigDefault.
        # @type request: :class:`Tencentcloud::emr::V20190103::SetNodeResourceConfigDefaultRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::SetNodeResourceConfigDefaultResponse`
        def SetNodeResourceConfigDefault(request)
          body = send_request('SetNodeResourceConfigDefault', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetNodeResourceConfigDefaultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于启停服务 重启服务等功能

        # @param request: Request instance for StartStopServiceOrMonitor.
        # @type request: :class:`Tencentcloud::emr::V20190103::StartStopServiceOrMonitorRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::StartStopServiceOrMonitorResponse`
        def StartStopServiceOrMonitor(request)
          body = send_request('StartStopServiceOrMonitor', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartStopServiceOrMonitorResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # EMR同步TKE中POD状态

        # @param request: Request instance for SyncPodState.
        # @type request: :class:`Tencentcloud::emr::V20190103::SyncPodStateRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::SyncPodStateResponse`
        def SyncPodState(request)
          body = send_request('SyncPodState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SyncPodStateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 销毁集群节点

        # @param request: Request instance for TerminateClusterNodes.
        # @type request: :class:`Tencentcloud::emr::V20190103::TerminateClusterNodesRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::TerminateClusterNodesResponse`
        def TerminateClusterNodes(request)
          body = send_request('TerminateClusterNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TerminateClusterNodesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 销毁EMR实例。此接口仅支持弹性MapReduce正式计费版本。

        # @param request: Request instance for TerminateInstance.
        # @type request: :class:`Tencentcloud::emr::V20190103::TerminateInstanceRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::TerminateInstanceResponse`
        def TerminateInstance(request)
          body = send_request('TerminateInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TerminateInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（TerminateSLInstance）用于销毁Serverless HBase实例

        # @param request: Request instance for TerminateSLInstance.
        # @type request: :class:`Tencentcloud::emr::V20190103::TerminateSLInstanceRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::TerminateSLInstanceResponse`
        def TerminateSLInstance(request)
          body = send_request('TerminateSLInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TerminateSLInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 缩容Task节点

        # @param request: Request instance for TerminateTasks.
        # @type request: :class:`Tencentcloud::emr::V20190103::TerminateTasksRequest`
        # @rtype: :class:`Tencentcloud::emr::V20190103::TerminateTasksResponse`
        def TerminateTasks(request)
          body = send_request('TerminateTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TerminateTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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