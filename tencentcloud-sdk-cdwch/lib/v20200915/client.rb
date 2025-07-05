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
  module Cdwch
    module V20200915
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-09-15'
            api_endpoint = 'cdwch.tencentcloudapi.com'
            sdk_version = 'CDWCH_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 新增和修改用户接口

        # @param request: Request instance for ActionAlterCkUser.
        # @type request: :class:`Tencentcloud::cdwch::V20200915::ActionAlterCkUserRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::ActionAlterCkUserResponse`
        def ActionAlterCkUser(request)
          body = send_request('ActionAlterCkUser', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ActionAlterCkUserResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::cdwch::V20200915::CreateBackUpScheduleRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::CreateBackUpScheduleResponse`
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

        # 创建集群

        # @param request: Request instance for CreateInstanceNew.
        # @type request: :class:`Tencentcloud::cdwch::V20200915::CreateInstanceNewRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::CreateInstanceNewResponse`
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

        # 删除备份数据

        # @param request: Request instance for DeleteBackUpData.
        # @type request: :class:`Tencentcloud::cdwch::V20200915::DeleteBackUpDataRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::DeleteBackUpDataResponse`
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

        # 查询备份任务列表

        # @param request: Request instance for DescribeBackUpJob.
        # @type request: :class:`Tencentcloud::cdwch::V20200915::DescribeBackUpJobRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::DescribeBackUpJobResponse`
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
        # @type request: :class:`Tencentcloud::cdwch::V20200915::DescribeBackUpJobDetailRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::DescribeBackUpJobDetailResponse`
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

        # 查询备份策略信息

        # @param request: Request instance for DescribeBackUpSchedule.
        # @type request: :class:`Tencentcloud::cdwch::V20200915::DescribeBackUpScheduleRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::DescribeBackUpScheduleResponse`
        def DescribeBackUpSchedule(request)
          body = send_request('DescribeBackUpSchedule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackUpScheduleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::cdwch::V20200915::DescribeBackUpTablesRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::DescribeBackUpTablesResponse`
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

        # 获取云原生实例列表

        # @param request: Request instance for DescribeCNInstances.
        # @type request: :class:`Tencentcloud::cdwch::V20200915::DescribeCNInstancesRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::DescribeCNInstancesResponse`
        def DescribeCNInstances(request)
          body = send_request('DescribeCNInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCNInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集群用户、集群表，数据库等相关信息

        # @param request: Request instance for DescribeCkSqlApis.
        # @type request: :class:`Tencentcloud::cdwch::V20200915::DescribeCkSqlApisRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::DescribeCkSqlApisResponse`
        def DescribeCkSqlApis(request)
          body = send_request('DescribeCkSqlApis', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCkSqlApisResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::cdwch::V20200915::DescribeClusterConfigsRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::DescribeClusterConfigsResponse`
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

        # 根据实例ID查询某个实例的具体信息

        # @param request: Request instance for DescribeInstance.
        # @type request: :class:`Tencentcloud::cdwch::V20200915::DescribeInstanceRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::DescribeInstanceResponse`
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

        # 集群vcluster列表

        # @param request: Request instance for DescribeInstanceClusters.
        # @type request: :class:`Tencentcloud::cdwch::V20200915::DescribeInstanceClustersRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::DescribeInstanceClustersResponse`
        def DescribeInstanceClusters(request)
          body = send_request('DescribeInstanceClusters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceClustersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在集群详情页面获取所有参数列表

        # @param request: Request instance for DescribeInstanceKeyValConfigs.
        # @type request: :class:`Tencentcloud::cdwch::V20200915::DescribeInstanceKeyValConfigsRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::DescribeInstanceKeyValConfigsResponse`
        def DescribeInstanceKeyValConfigs(request)
          body = send_request('DescribeInstanceKeyValConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceKeyValConfigsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取实例节点信息列表

        # @param request: Request instance for DescribeInstanceNodes.
        # @type request: :class:`Tencentcloud::cdwch::V20200915::DescribeInstanceNodesRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::DescribeInstanceNodesResponse`
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

        # 获取实例shard信息列表

        # @param request: Request instance for DescribeInstanceShards.
        # @type request: :class:`Tencentcloud::cdwch::V20200915::DescribeInstanceShardsRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::DescribeInstanceShardsResponse`
        def DescribeInstanceShards(request)
          body = send_request('DescribeInstanceShards', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceShardsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::cdwch::V20200915::DescribeInstanceStateRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::DescribeInstanceStateResponse`
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

        # 获取实例列表，供外部sdk使用

        # @param request: Request instance for DescribeInstancesNew.
        # @type request: :class:`Tencentcloud::cdwch::V20200915::DescribeInstancesNewRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::DescribeInstancesNewResponse`
        def DescribeInstancesNew(request)
          body = send_request('DescribeInstancesNew', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstancesNewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 购买页拉取集群的数据节点和zookeeper节点的规格列表

        # @param request: Request instance for DescribeSpec.
        # @type request: :class:`Tencentcloud::cdwch::V20200915::DescribeSpecRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::DescribeSpecResponse`
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

        # 销毁集群 open api

        # @param request: Request instance for DestroyInstance.
        # @type request: :class:`Tencentcloud::cdwch::V20200915::DestroyInstanceRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::DestroyInstanceResponse`
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
        # @type request: :class:`Tencentcloud::cdwch::V20200915::ModifyClusterConfigsRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::ModifyClusterConfigsResponse`
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

        # KV模式修改配置接口

        # @param request: Request instance for ModifyInstanceKeyValConfigs.
        # @type request: :class:`Tencentcloud::cdwch::V20200915::ModifyInstanceKeyValConfigsRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::ModifyInstanceKeyValConfigsResponse`
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

        # 针对集群账号的权限做管控（新版）

        # @param request: Request instance for ModifyUserNewPrivilege.
        # @type request: :class:`Tencentcloud::cdwch::V20200915::ModifyUserNewPrivilegeRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::ModifyUserNewPrivilegeResponse`
        def ModifyUserNewPrivilege(request)
          body = send_request('ModifyUserNewPrivilege', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUserNewPrivilegeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开启或者关闭策略

        # @param request: Request instance for OpenBackUp.
        # @type request: :class:`Tencentcloud::cdwch::V20200915::OpenBackUpRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::OpenBackUpResponse`
        def OpenBackUp(request)
          body = send_request('OpenBackUp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenBackUpResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # @type request: :class:`Tencentcloud::cdwch::V20200915::RecoverBackUpJobRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::RecoverBackUpJobResponse`
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

        # 扩容磁盘，包含扩容数据节点，zk节点

        # @param request: Request instance for ResizeDisk.
        # @type request: :class:`Tencentcloud::cdwch::V20200915::ResizeDiskRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::ResizeDiskResponse`
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

        # open-api接口提供弹性伸缩云原生集群能力

        # @param request: Request instance for ScaleCNOutUpInstance.
        # @type request: :class:`Tencentcloud::cdwch::V20200915::ScaleCNOutUpInstanceRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::ScaleCNOutUpInstanceResponse`
        def ScaleCNOutUpInstance(request)
          body = send_request('ScaleCNOutUpInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScaleCNOutUpInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 调整clickhouse节点数量

        # @param request: Request instance for ScaleOutInstance.
        # @type request: :class:`Tencentcloud::cdwch::V20200915::ScaleOutInstanceRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::ScaleOutInstanceResponse`
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

        # 垂直扩缩容节点规格，修改节点cvm的规格cpu，内存。 规格变化阶段，服务不可用。

        # @param request: Request instance for ScaleUpInstance.
        # @type request: :class:`Tencentcloud::cdwch::V20200915::ScaleUpInstanceRequest`
        # @rtype: :class:`Tencentcloud::cdwch::V20200915::ScaleUpInstanceResponse`
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


      end
    end
  end
end