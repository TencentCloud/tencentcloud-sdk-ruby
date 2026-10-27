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
  module Cvd
    module V20201104
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-11-04'
            api_endpoint = 'cvd.tencentcloudapi.com'
            sdk_version = 'CVD_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 安全组批量关联云桌面

        # @param request: Request instance for AssociateSecurityGroup.
        # @type request: :class:`Tencentcloud::cvd::V20201104::AssociateSecurityGroupRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::AssociateSecurityGroupResponse`
        def AssociateSecurityGroup(request)
          body = send_request('AssociateSecurityGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssociateSecurityGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 绑定桌面

        # @param request: Request instance for BindInstances.
        # @type request: :class:`Tencentcloud::cvd::V20201104::BindInstancesRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::BindInstancesResponse`
        def BindInstances(request)
          body = send_request('BindInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建批量脚本任务

        # @param request: Request instance for CreateCommandTask.
        # @type request: :class:`Tencentcloud::cvd::V20201104::CreateCommandTaskRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::CreateCommandTaskResponse`
        def CreateCommandTask(request)
          body = send_request('CreateCommandTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCommandTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 实例新增数据盘

        # @param request: Request instance for CreateDataDisk.
        # @type request: :class:`Tencentcloud::cvd::V20201104::CreateDataDiskRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::CreateDataDiskResponse`
        def CreateDataDisk(request)
          body = send_request('CreateDataDisk', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDataDiskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新建域名访问控制策略

        # @param request: Request instance for CreateDomainControlPolicy.
        # @type request: :class:`Tencentcloud::cvd::V20201104::CreateDomainControlPolicyRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::CreateDomainControlPolicyResponse`
        def CreateDomainControlPolicy(request)
          body = send_request('CreateDomainControlPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDomainControlPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建自定义镜像。

        # @param request: Request instance for CreateImage.
        # @type request: :class:`Tencentcloud::cvd::V20201104::CreateImageRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::CreateImageResponse`
        def CreateImage(request)
          body = send_request('CreateImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateImageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建云桌面实例

        # @param request: Request instance for CreateInstances.
        # @type request: :class:`Tencentcloud::cvd::V20201104::CreateInstancesRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::CreateInstancesResponse`
        def CreateInstances(request)
          body = send_request('CreateInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建策略

        # @param request: Request instance for CreatePolicy.
        # @type request: :class:`Tencentcloud::cvd::V20201104::CreatePolicyRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::CreatePolicyResponse`
        def CreatePolicy(request)
          body = send_request('CreatePolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除命令任务

        # @param request: Request instance for DeleteCommandTasks.
        # @type request: :class:`Tencentcloud::cvd::V20201104::DeleteCommandTasksRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::DeleteCommandTasksResponse`
        def DeleteCommandTasks(request)
          body = send_request('DeleteCommandTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCommandTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除域名访问控制策略

        # @param request: Request instance for DeleteDomainControlPolicy.
        # @type request: :class:`Tencentcloud::cvd::V20201104::DeleteDomainControlPolicyRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::DeleteDomainControlPolicyResponse`
        def DeleteDomainControlPolicy(request)
          body = send_request('DeleteDomainControlPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDomainControlPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于删除一个或多个自定义镜像。单次最大删除5个。

        # @param request: Request instance for DeleteImages.
        # @type request: :class:`Tencentcloud::cvd::V20201104::DeleteImagesRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::DeleteImagesResponse`
        def DeleteImages(request)
          body = send_request('DeleteImages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteImagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 拉取命令任务详情

        # @param request: Request instance for DescribeCommandTasks.
        # @type request: :class:`Tencentcloud::cvd::V20201104::DescribeCommandTasksRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::DescribeCommandTasksResponse`
        def DescribeCommandTasks(request)
          body = send_request('DescribeCommandTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCommandTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取云桌面镜像详细信息

        # @param request: Request instance for DescribeImages.
        # @type request: :class:`Tencentcloud::cvd::V20201104::DescribeImagesRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::DescribeImagesResponse`
        def DescribeImages(request)
          body = send_request('DescribeImages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定实例的登录Fetch信息

        # @param request: Request instance for DescribeInstanceFetchMsg.
        # @type request: :class:`Tencentcloud::cvd::V20201104::DescribeInstanceFetchMsgRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::DescribeInstanceFetchMsgResponse`
        def DescribeInstanceFetchMsg(request)
          body = send_request('DescribeInstanceFetchMsg', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceFetchMsgResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取实例磁盘分区监控数据

        # @param request: Request instance for DescribeInstanceGraphData.
        # @type request: :class:`Tencentcloud::cvd::V20201104::DescribeInstanceGraphDataRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::DescribeInstanceGraphDataResponse`
        def DescribeInstanceGraphData(request)
          body = send_request('DescribeInstanceGraphData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceGraphDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定实例的登录login信息

        # @param request: Request instance for DescribeInstanceLoginMsg.
        # @type request: :class:`Tencentcloud::cvd::V20201104::DescribeInstanceLoginMsgRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::DescribeInstanceLoginMsgResponse`
        def DescribeInstanceLoginMsg(request)
          body = send_request('DescribeInstanceLoginMsg', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceLoginMsgResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例监控数据

        # @param request: Request instance for DescribeInstanceMonitorData.
        # @type request: :class:`Tencentcloud::cvd::V20201104::DescribeInstanceMonitorDataRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::DescribeInstanceMonitorDataResponse`
        def DescribeInstanceMonitorData(request)
          body = send_request('DescribeInstanceMonitorData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceMonitorDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户在各个区域云桌面实例个数

        # @param request: Request instance for DescribeInstanceRegionDistribution.
        # @type request: :class:`Tencentcloud::cvd::V20201104::DescribeInstanceRegionDistributionRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::DescribeInstanceRegionDistributionResponse`
        def DescribeInstanceRegionDistribution(request)
          body = send_request('DescribeInstanceRegionDistribution', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceRegionDistributionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取云桌面实例详细信息

        # @param request: Request instance for DescribeInstances.
        # @type request: :class:`Tencentcloud::cvd::V20201104::DescribeInstancesRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::DescribeInstancesResponse`
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

        # 获取桌面实例绑定状态

        # @param request: Request instance for DescribeInstancesBindStatus.
        # @type request: :class:`Tencentcloud::cvd::V20201104::DescribeInstancesBindStatusRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::DescribeInstancesBindStatusResponse`
        def DescribeInstancesBindStatus(request)
          body = send_request('DescribeInstancesBindStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstancesBindStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取桌面实例状态

        # @param request: Request instance for DescribeInstancesStatus.
        # @type request: :class:`Tencentcloud::cvd::V20201104::DescribeInstancesStatusRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::DescribeInstancesStatusResponse`
        def DescribeInstancesStatus(request)
          body = send_request('DescribeInstancesStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstancesStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询脚本任务执行的详细情况。

        # @param request: Request instance for DescribeInvocationDetail.
        # @type request: :class:`Tencentcloud::cvd::V20201104::DescribeInvocationDetailRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::DescribeInvocationDetailResponse`
        def DescribeInvocationDetail(request)
          body = send_request('DescribeInvocationDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInvocationDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定云桌面上的任务列表。

        # @param request: Request instance for DescribeInvocations.
        # @type request: :class:`Tencentcloud::cvd::V20201104::DescribeInvocationsRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::DescribeInvocationsResponse`
        def DescribeInvocations(request)
          body = send_request('DescribeInvocations', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInvocationsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 拉取租户策略列表

        # @param request: Request instance for DescribePolicyDetail.
        # @type request: :class:`Tencentcloud::cvd::V20201104::DescribePolicyDetailRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::DescribePolicyDetailResponse`
        def DescribePolicyDetail(request)
          body = send_request('DescribePolicyDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePolicyDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 拉取云桌面关联的安全组信息

        # @param request: Request instance for DescribeSecurityGroups.
        # @type request: :class:`Tencentcloud::cvd::V20201104::DescribeSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::DescribeSecurityGroupsResponse`
        def DescribeSecurityGroups(request)
          body = send_request('DescribeSecurityGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 拉取快照列表

        # @param request: Request instance for DescribeSnapshots.
        # @type request: :class:`Tencentcloud::cvd::V20201104::DescribeSnapshotsRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::DescribeSnapshotsResponse`
        def DescribeSnapshots(request)
          body = send_request('DescribeSnapshots', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSnapshotsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 拉取实例使用时长详情

        # @param request: Request instance for DescribeUsage.
        # @type request: :class:`Tencentcloud::cvd::V20201104::DescribeUsageRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::DescribeUsageResponse`
        def DescribeUsage(request)
          body = send_request('DescribeUsage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUsageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 拉取用户列表

        # @param request: Request instance for DescribeUsers.
        # @type request: :class:`Tencentcloud::cvd::V20201104::DescribeUsersRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::DescribeUsersResponse`
        def DescribeUsers(request)
          body = send_request('DescribeUsers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUsersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 安全组批量解关联云桌面

        # @param request: Request instance for DisassociateSecurityGroup.
        # @type request: :class:`Tencentcloud::cvd::V20201104::DisassociateSecurityGroupRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::DisassociateSecurityGroupResponse`
        def DisassociateSecurityGroup(request)
          body = send_request('DisassociateSecurityGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisassociateSecurityGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 实例硬盘扩容

        # @param request: Request instance for ModifyDiskConfiguration.
        # @type request: :class:`Tencentcloud::cvd::V20201104::ModifyDiskConfigurationRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::ModifyDiskConfigurationResponse`
        def ModifyDiskConfiguration(request)
          body = send_request('ModifyDiskConfiguration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDiskConfigurationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改镜像属性

        # @param request: Request instance for ModifyImageAttrs.
        # @type request: :class:`Tencentcloud::cvd::V20201104::ModifyImageAttrsRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::ModifyImageAttrsResponse`
        def ModifyImageAttrs(request)
          body = send_request('ModifyImageAttrs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyImageAttrsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改桌面实例属性

        # @param request: Request instance for ModifyInstanceBasicAttribute.
        # @type request: :class:`Tencentcloud::cvd::V20201104::ModifyInstanceBasicAttributeRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::ModifyInstanceBasicAttributeResponse`
        def ModifyInstanceBasicAttribute(request)
          body = send_request('ModifyInstanceBasicAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceBasicAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 调整实例机型配置

        # @param request: Request instance for ModifyInstancesType.
        # @type request: :class:`Tencentcloud::cvd::V20201104::ModifyInstancesTypeRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::ModifyInstancesTypeResponse`
        def ModifyInstancesType(request)
          body = send_request('ModifyInstancesType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstancesTypeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 调整实例私有网络

        # @param request: Request instance for ModifyInstancesVpc.
        # @type request: :class:`Tencentcloud::cvd::V20201104::ModifyInstancesVpcRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::ModifyInstancesVpcResponse`
        def ModifyInstancesVpc(request)
          body = send_request('ModifyInstancesVpc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstancesVpcResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重启实例

        # @param request: Request instance for RebootInstances.
        # @type request: :class:`Tencentcloud::cvd::V20201104::RebootInstancesRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::RebootInstancesResponse`
        def RebootInstances(request)
          body = send_request('RebootInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RebootInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 卸载实例数据盘

        # @param request: Request instance for RemoveDataDisks.
        # @type request: :class:`Tencentcloud::cvd::V20201104::RemoveDataDisksRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::RemoveDataDisksResponse`
        def RemoveDataDisks(request)
          body = send_request('RemoveDataDisks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveDataDisksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除策略

        # @param request: Request instance for RemovePolicy.
        # @type request: :class:`Tencentcloud::cvd::V20201104::RemovePolicyRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::RemovePolicyResponse`
        def RemovePolicy(request)
          body = send_request('RemovePolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemovePolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 实例续费

        # @param request: Request instance for RenewInstances.
        # @type request: :class:`Tencentcloud::cvd::V20201104::RenewInstancesRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::RenewInstancesResponse`
        def RenewInstances(request)
          body = send_request('RenewInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 实例重置

        # @param request: Request instance for ResetInstances.
        # @type request: :class:`Tencentcloud::cvd::V20201104::ResetInstancesRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::ResetInstancesResponse`
        def ResetInstances(request)
          body = send_request('ResetInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在指定的云桌面实例上执行脚本任务。

        # @param request: Request instance for RunCommand.
        # @type request: :class:`Tencentcloud::cvd::V20201104::RunCommandRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::RunCommandResponse`
        def RunCommand(request)
          body = send_request('RunCommand', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunCommandResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开启实例

        # @param request: Request instance for StartInstances.
        # @type request: :class:`Tencentcloud::cvd::V20201104::StartInstancesRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::StartInstancesResponse`
        def StartInstances(request)
          body = send_request('StartInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止命令任务

        # @param request: Request instance for StopCommandTasks.
        # @type request: :class:`Tencentcloud::cvd::V20201104::StopCommandTasksRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::StopCommandTasksResponse`
        def StopCommandTasks(request)
          body = send_request('StopCommandTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopCommandTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 关闭实例

        # @param request: Request instance for StopInstances.
        # @type request: :class:`Tencentcloud::cvd::V20201104::StopInstancesRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::StopInstancesResponse`
        def StopInstances(request)
          body = send_request('StopInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止脚本任务的执行。

        # @param request: Request instance for StopInvocation.
        # @type request: :class:`Tencentcloud::cvd::V20201104::StopInvocationRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::StopInvocationResponse`
        def StopInvocation(request)
          body = send_request('StopInvocation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopInvocationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 注销或者断开机器当前会话

        # @param request: Request instance for StopSession.
        # @type request: :class:`Tencentcloud::cvd::V20201104::StopSessionRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::StopSessionResponse`
        def StopSession(request)
          body = send_request('StopSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopSessionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 主动退还、销毁退还实例。
        # <li>包年包月实例首次调用本接口，且参数DestroyImmediately为false时，实例进入隔离期，再次调用本接口，实例将被销毁，且不可恢复。</li>
        # <li>包年包月实例，如果参数DestroyImmediately为true来调用此接口，则实例将被直接销毁，且不可恢复。</li>
        # <li>按量计费实例调用本接口将被直接销毁，且不可恢复。</li>

        # @param request: Request instance for TerminateInstances.
        # @type request: :class:`Tencentcloud::cvd::V20201104::TerminateInstancesRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::TerminateInstancesResponse`
        def TerminateInstances(request)
          body = send_request('TerminateInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TerminateInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 解除用户和机器绑定关系

        # @param request: Request instance for UnbindInstances.
        # @type request: :class:`Tencentcloud::cvd::V20201104::UnbindInstancesRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::UnbindInstancesResponse`
        def UnbindInstances(request)
          body = send_request('UnbindInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新策略

        # @param request: Request instance for UpdatePolicy.
        # @type request: :class:`Tencentcloud::cvd::V20201104::UpdatePolicyRequest`
        # @rtype: :class:`Tencentcloud::cvd::V20201104::UpdatePolicyResponse`
        def UpdatePolicy(request)
          body = send_request('UpdatePolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdatePolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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