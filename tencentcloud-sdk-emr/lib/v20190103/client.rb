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

        #  yarn application 统计接口查询

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

        # 查询YARN资源调度数据信息

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

        # 刷新YARN的动态资源池

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

        # 修改YARN资源调度的资源配置

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

        # 修改了yarn的资源调度器，点击部署生效

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