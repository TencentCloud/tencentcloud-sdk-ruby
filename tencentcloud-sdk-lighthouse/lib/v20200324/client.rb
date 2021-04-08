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
  module Lighthouse
    module V20200324
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2020-03-24'
        @@endpoint = 'lighthouse.tencentcloudapi.com'
        @@sdk_version = 'LIGHTHOUSE_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 本接口（ApplyInstanceSnapshot）用于回滚指定实例的系统盘快照。
        # <li>仅支持回滚到原系统盘。</li>
        # <li>用于回滚的快照必须处于 NORMAL 状态。快照状态可以通 DescribeSnapshots 接口查询，见输出参数中 SnapshotState 字段解释。</li>
        # <li>回滚快照时，实例的状态必须为 STOPPED 或 RUNNING，可通过 DescribeInstances 接口查询实例状态。处于 RUNNING 状态的实例会强制关机，然后回滚快照。</li>

        # @param request: Request instance for ApplyInstanceSnapshot.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::ApplyInstanceSnapshotRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::ApplyInstanceSnapshotResponse`
        def ApplyInstanceSnapshot(request)
          body = send_request('ApplyInstanceSnapshot', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyInstanceSnapshotResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (CreateBlueprint) 用于创建镜像。

        # @param request: Request instance for CreateBlueprint.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::CreateBlueprintRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::CreateBlueprintResponse`
        def CreateBlueprint(request)
          body = send_request('CreateBlueprint', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBlueprintResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateFirewallRules）用于在实例上添加防火墙规则。


        # * FirewallVersion 为防火墙版本号，用户每次更新防火墙规则版本会自动加1，防止您更新的规则已过期，不填不考虑冲突。

        # 在 FirewallRules 参数中：
        # * Protocol 字段支持输入 TCP，UDP，ICMP，ALL。
        # * Port 字段允许输入 ALL，或者一个单独的端口号，或者用逗号分隔的离散端口号，或者用减号分隔的两个端口号代表的端口范围。当 Port 为范围时，减号分隔的第一个端口号小于第二个端口号。当 Protocol 字段不是 TCP 或 UDP 时，Port 字段只能为空或 ALL。Port 字段长度不得超过 64。
        # * CidrBlock 字段允许输入符合 cidr 格式标准的任意字符串。租户之间网络隔离规则优先于防火墙中的内网规则。
        # * Action 字段只允许输入 ACCEPT 或 DROP。
        # * FirewallRuleDescription 字段长度不得超过 64。

        # @param request: Request instance for CreateFirewallRules.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::CreateFirewallRulesRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::CreateFirewallRulesResponse`
        def CreateFirewallRules(request)
          body = send_request('CreateFirewallRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFirewallRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateInstanceSnapshot）用于创建指定实例的系统盘快照。

        # @param request: Request instance for CreateInstanceSnapshot.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::CreateInstanceSnapshotRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::CreateInstanceSnapshotResponse`
        def CreateInstanceSnapshot(request)
          body = send_request('CreateInstanceSnapshot', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateInstanceSnapshotResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DeleteBlueprints) 用于删除镜像。

        # @param request: Request instance for DeleteBlueprints.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DeleteBlueprintsRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DeleteBlueprintsResponse`
        def DeleteBlueprints(request)
          body = send_request('DeleteBlueprints', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBlueprintsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteFirewallRules）用于删除实例的防火墙规则。

        # * FirewallVersion 用于指定要操作的防火墙的版本。传入 FirewallVersion 版本号若不等于当前防火墙的最新版本，将返回失败；若不传 FirewallVersion 则直接删除指定的规则。

        # 在 FirewallRules 参数中：
        # * Protocol 字段支持输入 TCP，UDP，ICMP，ALL。
        # * Port 字段允许输入 ALL，或者一个单独的端口号，或者用逗号分隔的离散端口号，或者用减号分隔的两个端口号代表的端口范围。当 Port 为范围时，减号分隔的第一个端口号小于第二个端口号。当 Protocol 字段不是 TCP 或 UDP 时，Port 字段只能为空或 ALL。Port 字段长度不得超过 64。
        # * CidrBlock 字段允许输入符合 cidr 格式标准的任意字符串。租户之间网络隔离规则优先于防火墙中的内网规则。
        # * Action 字段只允许输入 ACCEPT 或 DROP。
        # * FirewallRuleDescription 字段长度不得超过 64。

        # @param request: Request instance for DeleteFirewallRules.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DeleteFirewallRulesRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DeleteFirewallRulesResponse`
        def DeleteFirewallRules(request)
          body = send_request('DeleteFirewallRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteFirewallRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteSnapshots）用于删除快照。
        # 快照必须处于 NORMAL 状态，快照状态可以通过 DescribeSnapshots 接口查询，见输出参数中 SnapshotState 字段解释。

        # @param request: Request instance for DeleteSnapshots.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DeleteSnapshotsRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DeleteSnapshotsResponse`
        def DeleteSnapshots(request)
          body = send_request('DeleteSnapshots', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSnapshotsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeBlueprints）用于查询镜像信息。

        # @param request: Request instance for DescribeBlueprints.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeBlueprintsRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeBlueprintsResponse`
        def DescribeBlueprints(request)
          body = send_request('DescribeBlueprints', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBlueprintsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeBundles）用于查询套餐信息。

        # @param request: Request instance for DescribeBundles.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeBundlesRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeBundlesResponse`
        def DescribeBundles(request)
          body = send_request('DescribeBundles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBundlesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeFirewallRules）用于查询实例的防火墙规则。

        # @param request: Request instance for DescribeFirewallRules.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeFirewallRulesRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeFirewallRulesResponse`
        def DescribeFirewallRules(request)
          body = send_request('DescribeFirewallRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFirewallRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeInstances）用于查询一个或多个实例的详细信息。

        # * 可以根据实例 ID、实例名称或者实例的内网 IP 查询实例的详细信息。
        # * 过滤信息详细请见过滤器 [Filters](https://cloud.tencent.com/document/product/1207/47576#Filter) 。
        # * 如果参数为空，返回当前用户一定数量（Limit 所指定的数量，默认为 20）的实例。
        # * 支持查询实例的最新操作（LatestOperation）以及最新操作状态（LatestOperationState）。

        # @param request: Request instance for DescribeInstances.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeInstancesRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeInstancesResponse`
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

        # 本接口（DescribeInstancesTrafficPackages）用于查询一个或多个实例的流量包详情。

        # @param request: Request instance for DescribeInstancesTrafficPackages.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeInstancesTrafficPackagesRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeInstancesTrafficPackagesResponse`
        def DescribeInstancesTrafficPackages(request)
          body = send_request('DescribeInstancesTrafficPackages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstancesTrafficPackagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeSnapshots）用于查询快照的详细信息。

        # @param request: Request instance for DescribeSnapshots.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeSnapshotsRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeSnapshotsResponse`
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

        # 本接口 (ModifyBlueprintAttribute) 用于修改镜像属性。

        # @param request: Request instance for ModifyBlueprintAttribute.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::ModifyBlueprintAttributeRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::ModifyBlueprintAttributeResponse`
        def ModifyBlueprintAttribute(request)
          body = send_request('ModifyBlueprintAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBlueprintAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifySnapshotAttribute）用于修改指定快照的属性。
        # <li>“快照名称”仅为方便用户自己管理之用，腾讯云并不以此名称作为提交工单或是进行快照管理操作的依据。</li>

        # @param request: Request instance for ModifySnapshotAttribute.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::ModifySnapshotAttributeRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::ModifySnapshotAttributeResponse`
        def ModifySnapshotAttribute(request)
          body = send_request('ModifySnapshotAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySnapshotAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（RebootInstances）用于重启实例。

        # * 只有状态为 RUNNING 的实例才可以进行此操作。
        # * 接口调用成功时，实例会进入 REBOOTING 状态；重启实例成功时，实例会进入 RUNNING 状态。
        # * 支持批量操作，每次请求批量实例的上限为 100。
        # * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。

        # @param request: Request instance for RebootInstances.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::RebootInstancesRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::RebootInstancesResponse`
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

        # 本接口（ResetInstance）用于重装指定实例上的镜像。

        # * 如果指定了 BlueprintId 参数，则使用指定的镜像重装；否则按照当前实例使用的镜像进行重装。
        # * 系统盘将会被格式化，并重置；请确保系统盘中无重要文件。
        # * 目前不支持实例使用该接口实现 LINUX_UNIX 和 WINDOWS 操作系统切换。
        # * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。

        # @param request: Request instance for ResetInstance.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::ResetInstanceRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::ResetInstanceResponse`
        def ResetInstance(request)
          body = send_request('ResetInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（StartInstances）用于启动一个或多个实例。

        # * 只有状态为 STOPPED 的实例才可以进行此操作。
        # * 接口调用成功时，实例会进入 STARTING 状态；启动实例成功时，实例会进入 RUNNING 状态。
        # * 支持批量操作。每次请求批量实例的上限为 100。
        # * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。

        # @param request: Request instance for StartInstances.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::StartInstancesRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::StartInstancesResponse`
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

        # 本接口（StopInstances）用于关闭一个或多个实例。
        # * 只有状态为 RUNNING 的实例才可以进行此操作。
        # * 接口调用成功时，实例会进入 STOPPING 状态；关闭实例成功时，实例会进入 STOPPED 状态。
        # * 支持批量操作。每次请求批量实例的上限为 100。
        # * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。

        # @param request: Request instance for StopInstances.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::StopInstancesRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::StopInstancesResponse`
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


      end
    end
  end
end