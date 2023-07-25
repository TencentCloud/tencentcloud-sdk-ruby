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

        def initialize(credential, region, profile = nil)
            api_version = '2020-03-24'
            api_endpoint = 'lighthouse.tencentcloudapi.com'
            sdk_version = 'LIGHTHOUSE_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口（ApplyDiskBackup）用于回滚指定云硬盘的备份点。
        # * 仅支持回滚到原云硬盘。
        # * 用于回滚的云硬盘备份点必须处于 NORMAL 状态。
        #   云硬盘备份点状态可以通过  [DescribeDiskBackups](https://cloud.tencent.com/document/api/1207/84379) 接口查询。
        # * 回滚云硬盘备份点时，云硬盘的状态必须为 UNATTACHED或ATTACHED。
        #   云硬盘状态可通过 [DescribeDisks](https://cloud.tencent.com/document/api/1207/66093) 接口查询。
        # * 如果云硬盘处于 ATTACHED状态，相关RUNNING 状态的实例会强制关机，然后回滚云硬盘备份点。

        # @param request: Request instance for ApplyDiskBackup.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::ApplyDiskBackupRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::ApplyDiskBackupResponse`
        def ApplyDiskBackup(request)
          body = send_request('ApplyDiskBackup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyDiskBackupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ApplyInstanceSnapshot）用于回滚指定实例的系统盘快照。
        # <li>仅支持回滚到原系统盘。</li>
        # <li>用于回滚的快照必须处于 NORMAL 状态。快照状态可以通过 DescribeSnapshots 接口查询，见输出参数中 SnapshotState 字段解释。</li>
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

        # 本接口（AssociateInstancesKeyPairs）用于绑定用户指定密钥对到实例。
        # * 只支持 [RUNNING, STOPPED] 状态的 LINUX_UNIX 操作系统的实例。处于 RUNNING 状态的实例会强制关机，然后绑定。
        # * 将密钥的公钥写入到实例的 SSH 配置当中，用户就可以通过该密钥的私钥来登录实例。
        # * 如果实例原来绑定过密钥，那么原来的密钥将失效。
        # * 如果实例原来是通过密码登录，绑定密钥后无法使用密码登录。
        # * 支持批量操作。每次请求批量实例的上限为 100。如果批量实例存在不允许操作的实例，操作会以特定错误码返回。
        # * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。

        # @param request: Request instance for AssociateInstancesKeyPairs.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::AssociateInstancesKeyPairsRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::AssociateInstancesKeyPairsResponse`
        def AssociateInstancesKeyPairs(request)
          body = send_request('AssociateInstancesKeyPairs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssociateInstancesKeyPairsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (AttachCcn) 用于建立与云联网的关联。

        # @param request: Request instance for AttachCcn.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::AttachCcnRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::AttachCcnResponse`
        def AttachCcn(request)
          body = send_request('AttachCcn', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AttachCcnResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（AttachDisks）用于挂载一个或多个云硬盘。

        # @param request: Request instance for AttachDisks.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::AttachDisksRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::AttachDisksResponse`
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

        # 本接口 ( CreateDiskBackup  ) 用于创建指定云硬盘（当前只支持数据盘）的备份点。

        # @param request: Request instance for CreateDiskBackup.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::CreateDiskBackupRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::CreateDiskBackupResponse`
        def CreateDiskBackup(request)
          body = send_request('CreateDiskBackup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDiskBackupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(CreateDisks)用于创建一个或多个云硬盘。

        # @param request: Request instance for CreateDisks.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::CreateDisksRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::CreateDisksResponse`
        def CreateDisks(request)
          body = send_request('CreateDisks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDisksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口(CreateInstances)用于创建一个或多个指定套餐的轻量应用服务器实例。

        # @param request: Request instance for CreateInstances.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::CreateInstancesRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::CreateInstancesResponse`
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

        # 本接口（CreateKeyPair）用于创建一个密钥对。

        # @param request: Request instance for CreateKeyPair.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::CreateKeyPairRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::CreateKeyPairResponse`
        def CreateKeyPair(request)
          body = send_request('CreateKeyPair', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateKeyPairResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口（DeleteDiskBackups）用于删除云硬盘备份点。
        # 云硬盘备份点必须处于 NORMAL 状态，云硬盘备份点状态可以通过 [DescribeDiskBackups](https://cloud.tencent.com/document/api/1207/84379)接口查询，见输出参数中 DiskBackupState 字段解释。

        # @param request: Request instance for DeleteDiskBackups.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DeleteDiskBackupsRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DeleteDiskBackupsResponse`
        def DeleteDiskBackups(request)
          body = send_request('DeleteDiskBackups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDiskBackupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口（DeleteKeyPairs）用于删除密钥对。

        # @param request: Request instance for DeleteKeyPairs.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DeleteKeyPairsRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DeleteKeyPairsResponse`
        def DeleteKeyPairs(request)
          body = send_request('DeleteKeyPairs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteKeyPairsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口(DescribeAllScenes)用于查询全地域使用场景列表。

        # @param request: Request instance for DescribeAllScenes.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeAllScenesRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeAllScenesResponse`
        def DescribeAllScenes(request)
          body = send_request('DescribeAllScenes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAllScenesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeBlueprintInstances）用于查询镜像实例信息。

        # @param request: Request instance for DescribeBlueprintInstances.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeBlueprintInstancesRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeBlueprintInstancesResponse`
        def DescribeBlueprintInstances(request)
          body = send_request('DescribeBlueprintInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBlueprintInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口（DescribeBundleDiscount）用于查询套餐折扣信息。

        # @param request: Request instance for DescribeBundleDiscount.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeBundleDiscountRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeBundleDiscountResponse`
        def DescribeBundleDiscount(request)
          body = send_request('DescribeBundleDiscount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBundleDiscountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口 (DescribeCcnAttachedInstances) 用于查询云联网关联的实例信息。

        # @param request: Request instance for DescribeCcnAttachedInstances.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeCcnAttachedInstancesRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeCcnAttachedInstancesResponse`
        def DescribeCcnAttachedInstances(request)
          body = send_request('DescribeCcnAttachedInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCcnAttachedInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDiskBackups）用于查询云硬盘备份点的详细信息。

        # @param request: Request instance for DescribeDiskBackups.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeDiskBackupsRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeDiskBackupsResponse`
        def DescribeDiskBackups(request)
          body = send_request('DescribeDiskBackups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDiskBackupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDiskBackupsDeniedActions）用于查询一个或多个云硬盘备份点的操作限制列表信息。

        # @param request: Request instance for DescribeDiskBackupsDeniedActions.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeDiskBackupsDeniedActionsRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeDiskBackupsDeniedActionsResponse`
        def DescribeDiskBackupsDeniedActions(request)
          body = send_request('DescribeDiskBackupsDeniedActions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDiskBackupsDeniedActionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDiskConfigs）用于查询云硬盘配置。

        # @param request: Request instance for DescribeDiskConfigs.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeDiskConfigsRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeDiskConfigsResponse`
        def DescribeDiskConfigs(request)
          body = send_request('DescribeDiskConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDiskConfigsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeDiskDiscount)用于查询云硬盘折扣信息。

        # @param request: Request instance for DescribeDiskDiscount.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeDiskDiscountRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeDiskDiscountResponse`
        def DescribeDiskDiscount(request)
          body = send_request('DescribeDiskDiscount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDiskDiscountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDisks）用于查询云硬盘信息。

        # @param request: Request instance for DescribeDisks.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeDisksRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeDisksResponse`
        def DescribeDisks(request)
          body = send_request('DescribeDisks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDisksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDisksDeniedActions）用于查询一个或多个云硬盘的操作限制列表信息。

        # @param request: Request instance for DescribeDisksDeniedActions.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeDisksDeniedActionsRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeDisksDeniedActionsResponse`
        def DescribeDisksDeniedActions(request)
          body = send_request('DescribeDisksDeniedActions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDisksDeniedActionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDisksReturnable）用于查询云硬盘是否可退还。

        # @param request: Request instance for DescribeDisksReturnable.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeDisksReturnableRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeDisksReturnableResponse`
        def DescribeDisksReturnable(request)
          body = send_request('DescribeDisksReturnable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDisksReturnableResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例内的Docker活动列表。

        # @param request: Request instance for DescribeDockerActivities.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeDockerActivitiesRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeDockerActivitiesResponse`
        def DescribeDockerActivities(request)
          body = send_request('DescribeDockerActivities', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDockerActivitiesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例内的Docker容器配置信息

        # @param request: Request instance for DescribeDockerContainerConfiguration.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeDockerContainerConfigurationRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeDockerContainerConfigurationResponse`
        def DescribeDockerContainerConfiguration(request)
          body = send_request('DescribeDockerContainerConfiguration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDockerContainerConfigurationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例内的Docker容器详情

        # @param request: Request instance for DescribeDockerContainerDetail.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeDockerContainerDetailRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeDockerContainerDetailResponse`
        def DescribeDockerContainerDetail(request)
          body = send_request('DescribeDockerContainerDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDockerContainerDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例内的容器列表。

        # @param request: Request instance for DescribeDockerContainers.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeDockerContainersRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeDockerContainersResponse`
        def DescribeDockerContainers(request)
          body = send_request('DescribeDockerContainers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDockerContainersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口（DescribeFirewallRulesTemplate）用于查询防火墙规则模板。

        # @param request: Request instance for DescribeFirewallRulesTemplate.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeFirewallRulesTemplateRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeFirewallRulesTemplateResponse`
        def DescribeFirewallRulesTemplate(request)
          body = send_request('DescribeFirewallRulesTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFirewallRulesTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeGeneralResourceQuotas）用于查询通用资源配额信息。

        # @param request: Request instance for DescribeGeneralResourceQuotas.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeGeneralResourceQuotasRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeGeneralResourceQuotasResponse`
        def DescribeGeneralResourceQuotas(request)
          body = send_request('DescribeGeneralResourceQuotas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGeneralResourceQuotasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于查询实例默认登录密钥属性。

        # @param request: Request instance for DescribeInstanceLoginKeyPairAttribute.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeInstanceLoginKeyPairAttributeRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeInstanceLoginKeyPairAttributeResponse`
        def DescribeInstanceLoginKeyPairAttribute(request)
          body = send_request('DescribeInstanceLoginKeyPairAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceLoginKeyPairAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 ( DescribeInstanceVncUrl ) 用于查询实例管理终端地址，获取的地址可用于实例的 VNC 登录。

        # * 处于 `STOPPED` 状态的机器无法使用此功能。
        # * 管理终端地址的有效期为 15 秒，调用接口成功后如果 15 秒内不使用该链接进行访问，管理终端地址自动失效，您需要重新查询。
        # * 管理终端地址一旦被访问，将自动失效，您需要重新查询。
        # * 如果连接断开，每分钟内重新连接的次数不能超过 30 次。
        # * 参数 `InstanceVncUrl` ：调用接口成功后会返回的 `InstanceVncUrl` 的值。
        # 获取到 `InstanceVncUrl` 后，您需要在链接 `https://img.qcloud.com/qcloud/app/active_vnc/index.html?` 末尾加上参数 `InstanceVncUrl=xxxx`。
        #  最后组成的 URL 格式如下：

        # ```
        # https://img.qcloud.com/qcloud/app/active_vnc/index.html?InstanceVncUrl=wss%3A%2F%2Fbjvnc.qcloud.com%3A26789%2Fvnc%3Fs%3DaHpjWnRVMFNhYmxKdDM5MjRHNlVTSVQwajNUSW0wb2tBbmFtREFCTmFrcy8vUUNPMG0wSHZNOUUxRm5PMmUzWmFDcWlOdDJIbUJxSTZDL0RXcHZxYnZZMmRkWWZWcEZia2lyb09XMzdKNmM9
        # ```

        # @param request: Request instance for DescribeInstanceVncUrl.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeInstanceVncUrlRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeInstanceVncUrlResponse`
        def DescribeInstanceVncUrl(request)
          body = send_request('DescribeInstanceVncUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceVncUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口（DescribeInstancesDeniedActions）用于查询一个或多个实例的操作限制列表信息。

        # @param request: Request instance for DescribeInstancesDeniedActions.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeInstancesDeniedActionsRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeInstancesDeniedActionsResponse`
        def DescribeInstancesDeniedActions(request)
          body = send_request('DescribeInstancesDeniedActions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstancesDeniedActionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeInstancesDiskNum)用于查询实例挂载云硬盘数量。

        # @param request: Request instance for DescribeInstancesDiskNum.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeInstancesDiskNumRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeInstancesDiskNumResponse`
        def DescribeInstancesDiskNum(request)
          body = send_request('DescribeInstancesDiskNum', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstancesDiskNumResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeInstancesReturnable）用于查询实例是否可退还。

        # @param request: Request instance for DescribeInstancesReturnable.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeInstancesReturnableRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeInstancesReturnableResponse`
        def DescribeInstancesReturnable(request)
          body = send_request('DescribeInstancesReturnable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstancesReturnableResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口 (DescribeKeyPairs) 用于查询用户密钥对信息。

        # @param request: Request instance for DescribeKeyPairs.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeKeyPairsRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeKeyPairsResponse`
        def DescribeKeyPairs(request)
          body = send_request('DescribeKeyPairs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeKeyPairsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeModifyInstanceBundles）用于查询实例可变更套餐列表。

        # @param request: Request instance for DescribeModifyInstanceBundles.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeModifyInstanceBundlesRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeModifyInstanceBundlesResponse`
        def DescribeModifyInstanceBundles(request)
          body = send_request('DescribeModifyInstanceBundles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModifyInstanceBundlesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeRegions）用于查询地域信息。

        # @param request: Request instance for DescribeRegions.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeRegionsRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeRegionsResponse`
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

        # 本接口（DescribeResetInstanceBlueprints）查询重置实例的镜像信息。

        # @param request: Request instance for DescribeResetInstanceBlueprints.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeResetInstanceBlueprintsRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeResetInstanceBlueprintsResponse`
        def DescribeResetInstanceBlueprints(request)
          body = send_request('DescribeResetInstanceBlueprints', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResetInstanceBlueprintsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeScenes)用于查看使用场景列表。

        # @param request: Request instance for DescribeScenes.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeScenesRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeScenesResponse`
        def DescribeScenes(request)
          body = send_request('DescribeScenes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScenesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口（DescribeSnapshotsDeniedActions）用于查询一个或多个快照的操作限制列表信息。

        # @param request: Request instance for DescribeSnapshotsDeniedActions.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeSnapshotsDeniedActionsRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeSnapshotsDeniedActionsResponse`
        def DescribeSnapshotsDeniedActions(request)
          body = send_request('DescribeSnapshotsDeniedActions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSnapshotsDeniedActionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询地域下可用区

        # @param request: Request instance for DescribeZones.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DescribeZonesRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DescribeZonesResponse`
        def DescribeZones(request)
          body = send_request('DescribeZones', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeZonesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DetachCcn) 用于解除与云联网的关联。

        # @param request: Request instance for DetachCcn.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DetachCcnRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DetachCcnResponse`
        def DetachCcn(request)
          body = send_request('DetachCcn', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetachCcnResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DetachDisks）用于卸载一个或多个云硬盘。

        # @param request: Request instance for DetachDisks.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DetachDisksRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DetachDisksResponse`
        def DetachDisks(request)
          body = send_request('DetachDisks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetachDisksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DisassociateInstancesKeyPairs）用于解除实例与指定密钥对的绑定关系。

        # * 只支持 [RUNNING, STOPPED] 状态的 LINUX_UNIX 操作系统的实例。处于 RUNNING 状态的实例会强制关机，然后解绑。
        # * 解绑密钥后，实例可以通过原来设置的密码登录。
        # * 如果原来没有设置密码，解绑后将无法使用 SSH 登录。可以调用 ResetInstancesPassword 接口来设置登录密码。
        # * 支持批量操作。每次请求批量实例的上限为 100。
        # * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。

        # @param request: Request instance for DisassociateInstancesKeyPairs.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::DisassociateInstancesKeyPairsRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::DisassociateInstancesKeyPairsResponse`
        def DisassociateInstancesKeyPairs(request)
          body = send_request('DisassociateInstancesKeyPairs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisassociateInstancesKeyPairsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ImportKeyPair）用于导入用户指定密钥对。

        # @param request: Request instance for ImportKeyPair.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::ImportKeyPairRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::ImportKeyPairResponse`
        def ImportKeyPair(request)
          body = send_request('ImportKeyPair', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImportKeyPairResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (InquirePriceCreateBlueprint) 用于创建镜像询价。

        # @param request: Request instance for InquirePriceCreateBlueprint.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::InquirePriceCreateBlueprintRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::InquirePriceCreateBlueprintResponse`
        def InquirePriceCreateBlueprint(request)
          body = send_request('InquirePriceCreateBlueprint', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquirePriceCreateBlueprintResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（InquirePriceCreateDisks）用于新购云硬盘询价。

        # @param request: Request instance for InquirePriceCreateDisks.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::InquirePriceCreateDisksRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::InquirePriceCreateDisksResponse`
        def InquirePriceCreateDisks(request)
          body = send_request('InquirePriceCreateDisks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquirePriceCreateDisksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（InquiryPriceCreateInstances）用于创建实例询价。

        # @param request: Request instance for InquirePriceCreateInstances.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::InquirePriceCreateInstancesRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::InquirePriceCreateInstancesResponse`
        def InquirePriceCreateInstances(request)
          body = send_request('InquirePriceCreateInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquirePriceCreateInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（InquirePriceRenewDisks）用于续费云硬盘询价。

        # @param request: Request instance for InquirePriceRenewDisks.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::InquirePriceRenewDisksRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::InquirePriceRenewDisksResponse`
        def InquirePriceRenewDisks(request)
          body = send_request('InquirePriceRenewDisks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquirePriceRenewDisksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（InquirePriceRenewInstances）用于续费实例询价。

        # @param request: Request instance for InquirePriceRenewInstances.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::InquirePriceRenewInstancesRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::InquirePriceRenewInstancesResponse`
        def InquirePriceRenewInstances(request)
          body = send_request('InquirePriceRenewInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquirePriceRenewInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(IsolateDisks)用于退还一个或多个轻量应用服务器云硬盘。

        # 只有状态为 UNATTACHED 的数据盘才可以进行此操作。
        # 接口调用成功后，云硬盘会进入SHUTDOWN 状态。
        # 支持批量操作。每次请求批量资源的上限为 20。
        # 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。云硬盘操作结果可以通过调用 [DescribeDisks](https://cloud.tencent.com/document/product/1207/66093) 接口查询，如果云硬盘的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。

        # @param request: Request instance for IsolateDisks.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::IsolateDisksRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::IsolateDisksResponse`
        def IsolateDisks(request)
          body = send_request('IsolateDisks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IsolateDisksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(IsolateInstances)用于退还一个或多个轻量应用服务器实例。
        # * 只有状态为 RUNNING 或 STOPPED 的实例才可以进行此操作。
        # * 接口调用成功后，实例会进入SHUTDOWN 状态。
        # * 支持批量操作。每次请求批量资源（包括实例与数据盘）的上限为 20。
        # * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。

        # @param request: Request instance for IsolateInstances.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::IsolateInstancesRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::IsolateInstancesResponse`
        def IsolateInstances(request)
          body = send_request('IsolateInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IsolateInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口 (ModifyDiskBackupsAttribute) 用于修改云硬盘备份点属性。

        # @param request: Request instance for ModifyDiskBackupsAttribute.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::ModifyDiskBackupsAttributeRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::ModifyDiskBackupsAttributeResponse`
        def ModifyDiskBackupsAttribute(request)
          body = send_request('ModifyDiskBackupsAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDiskBackupsAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ModifyDisksAttribute)用于修改云硬盘属性。

        # @param request: Request instance for ModifyDisksAttribute.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::ModifyDisksAttributeRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::ModifyDisksAttributeResponse`
        def ModifyDisksAttribute(request)
          body = send_request('ModifyDisksAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDisksAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyDisksRenewFlag）用于修改云硬盘续费标识。

        # @param request: Request instance for ModifyDisksRenewFlag.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::ModifyDisksRenewFlagRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::ModifyDisksRenewFlagResponse`
        def ModifyDisksRenewFlag(request)
          body = send_request('ModifyDisksRenewFlag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDisksRenewFlagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改实例内的Docker容器，之后可以通过返回的ActivityId调用DescribeDockerActivities接口查询重建情况。
        # 请注意：本接口会重新创建并运行实例内的Docker容器。

        # @param request: Request instance for ModifyDockerContainer.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::ModifyDockerContainerRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::ModifyDockerContainerResponse`
        def ModifyDockerContainer(request)
          body = send_request('ModifyDockerContainer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDockerContainerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyFirewallRuleDescription）用于修改单条防火墙规则描述。

        # * FirewallVersion 用于指定要操作的防火墙的版本。传入 FirewallVersion 版本号若不等于当前防火墙的最新版本，将返回失败；若不传 FirewallVersion 则直接修改防火墙规则备注。

        # 在 FirewallRule 参数中：
        # * Protocol 字段支持输入 TCP，UDP，ICMP，ALL。
        # * Port 字段允许输入 ALL，或者一个单独的端口号，或者用逗号分隔的离散端口号，或者用减号分隔的两个端口号代表的端口范围。当 Port 为范围时，减号分隔的第一个端口号小于第二个端口号。当 Protocol 字段不是 TCP 或 UDP 时，Port 字段只能为空或 ALL。Port 字段长度不得超过 64。
        # * CidrBlock 字段允许输入符合 cidr 格式标准的任意字符串。租户之间网络隔离规则优先于防火墙中的内网规则。
        # * Action 字段只允许输入 ACCEPT 或 DROP。
        # * FirewallRuleDescription 字段长度不得超过 64。

        # @param request: Request instance for ModifyFirewallRuleDescription.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::ModifyFirewallRuleDescriptionRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::ModifyFirewallRuleDescriptionResponse`
        def ModifyFirewallRuleDescription(request)
          body = send_request('ModifyFirewallRuleDescription', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyFirewallRuleDescriptionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyFirewallRules）用于重置实例防火墙规则。

        # 本接口先删除当前实例的所有防火墙规则，然后添加新的规则。

        # * FirewallVersion 用于指定要操作的防火墙的版本。传入 FirewallVersion 版本号若不等于当前防火墙的最新版本，将返回失败；若不传 FirewallVersion 则直接重置防火墙规则。

        # 在 FirewallRules 参数中：
        # * Protocol 字段支持输入 TCP，UDP，ICMP，ALL。
        # * Port 字段允许输入 ALL，或者一个单独的端口号，或者用逗号分隔的离散端口号，或者用减号分隔的两个端口号代表的端口范围。当 Port 为范围时，减号分隔的第一个端口号小于第二个端口号。当 Protocol 字段不是 TCP 或 UDP 时，Port 字段只能为空或 ALL。Port 字段长度不得超过 64。
        # * CidrBlock 字段允许输入符合 cidr 格式标准的任意字符串。租户之间网络隔离规则优先于防火墙中的内网规则。
        # * Action 字段只允许输入 ACCEPT 或 DROP。
        # * FirewallRuleDescription 字段长度不得超过 64。

        # @param request: Request instance for ModifyFirewallRules.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::ModifyFirewallRulesRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::ModifyFirewallRulesResponse`
        def ModifyFirewallRules(request)
          body = send_request('ModifyFirewallRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyFirewallRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyInstancesAttribute）用于修改实例的属性。
        # * “实例名称”仅为方便用户自己管理之用。
        # * 支持批量操作。每次请求批量实例的上限为 100。

        # @param request: Request instance for ModifyInstancesAttribute.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::ModifyInstancesAttributeRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::ModifyInstancesAttributeResponse`
        def ModifyInstancesAttribute(request)
          body = send_request('ModifyInstancesAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstancesAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ModifyInstancesBundle)用于变更一个或多个轻量应用服务器实例套餐。
        # * 只有状态为 RUNNING，STOPPED的实例才可以进行此操作。
        # * 支持批量操作。每次请求批量实例的上限为 30。
        # * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。

        # @param request: Request instance for ModifyInstancesBundle.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::ModifyInstancesBundleRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::ModifyInstancesBundleResponse`
        def ModifyInstancesBundle(request)
          body = send_request('ModifyInstancesBundle', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstancesBundleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于设置实例默认登录密钥对属性。


        # @param request: Request instance for ModifyInstancesLoginKeyPairAttribute.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::ModifyInstancesLoginKeyPairAttributeRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::ModifyInstancesLoginKeyPairAttributeResponse`
        def ModifyInstancesLoginKeyPairAttribute(request)
          body = send_request('ModifyInstancesLoginKeyPairAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstancesLoginKeyPairAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (ModifyInstancesRenewFlag) 用于修改包年包月实例续费标识。

        # * 实例被标识为自动续费后，每次在实例到期时，会自动续费一个月。
        # * 支持批量操作。每次请求批量实例的上限为100。

        # @param request: Request instance for ModifyInstancesRenewFlag.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::ModifyInstancesRenewFlagRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::ModifyInstancesRenewFlagResponse`
        def ModifyInstancesRenewFlag(request)
          body = send_request('ModifyInstancesRenewFlag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstancesRenewFlagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # <li>“快照名称”仅为方便用户自己管理之用。</li>

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

        # 删除实例内的Docker容器，之后可以通过返回的ActivityId调用DescribeDockerActivities接口查询删除情况。

        # @param request: Request instance for RemoveDockerContainers.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::RemoveDockerContainersRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::RemoveDockerContainersResponse`
        def RemoveDockerContainers(request)
          body = send_request('RemoveDockerContainers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveDockerContainersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重命名实例内的Docker容器，之后可以通过返回的ActivityId调用DescribeDockerActivities接口查询重命名情况。

        # @param request: Request instance for RenameDockerContainer.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::RenameDockerContainerRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::RenameDockerContainerResponse`
        def RenameDockerContainer(request)
          body = send_request('RenameDockerContainer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenameDockerContainerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(RenewDisks)用于续费一个或多个轻量应用服务器云硬盘。

        # 只有状态为 ATTACHED，UNATTACHED 或 SHUTDOWN 的数据盘才可以进行此操作。
        # 支持批量操作。每次请求批量云硬盘的上限为 50。
        # 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。云硬盘操作结果可以通过调用 [DescribeDisks](https://cloud.tencent.com/document/product/1207/66093) 接口查询，如果云硬盘的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。

        # @param request: Request instance for RenewDisks.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::RenewDisksRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::RenewDisksResponse`
        def RenewDisks(request)
          body = send_request('RenewDisks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewDisksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(RenewInstances)用于续费一个或多个轻量应用服务器实例。
        # * 只有状态为 RUNNING，STOPPED 或 SHUTDOWN 的实例才可以进行此操作。
        # * 支持批量操作。每次请求批量实例的上限为 100。
        # * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。

        # @param request: Request instance for RenewInstances.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::RenewInstancesRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::RenewInstancesResponse`
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

        # 重新创建并运行实例内的Docker容器，之后可以通过返回的ActivityId调用DescribeDockerActivities接口查询重建情况。

        # @param request: Request instance for RerunDockerContainer.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::RerunDockerContainerRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::RerunDockerContainerResponse`
        def RerunDockerContainer(request)
          body = send_request('RerunDockerContainer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RerunDockerContainerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (ResetAttachCcn) 用于关联云联网实例申请过期时，重新申请关联操作。

        # @param request: Request instance for ResetAttachCcn.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::ResetAttachCcnRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::ResetAttachCcnResponse`
        def ResetAttachCcn(request)
          body = send_request('ResetAttachCcn', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetAttachCcnResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口（ResetInstancesPassword）用于将实例操作系统的密码重置为用户指定的密码。
        # * 只修改管理员帐号的密码。实例的操作系统不同，管理员帐号也会不一样（Windows 为 Administrator，Ubuntu 为 ubuntu ，其它系统为 root）。
        # * 支持批量操作。将多个实例操作系统的密码重置为相同的密码。每次请求批量实例的上限为 100。
        # * 建议对运行中的实例先手动关机，然后再进行密码重置。如实例处于运行中状态，本接口操作过程中会对实例进行关机操作，尝试正常关机失败后进行强制关机。
        # * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。
        # 注意：强制关机的效果等同于关闭物理计算机的电源开关。强制关机可能会导致数据丢失或文件系统损坏。

        # @param request: Request instance for ResetInstancesPassword.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::ResetInstancesPasswordRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::ResetInstancesPasswordResponse`
        def ResetInstancesPassword(request)
          body = send_request('ResetInstancesPassword', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetInstancesPasswordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重启实例内的Docker容器，之后可以通过返回的ActivityId调用DescribeDockerActivities接口查询重启情况。

        # @param request: Request instance for RestartDockerContainers.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::RestartDockerContainersRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::RestartDockerContainersResponse`
        def RestartDockerContainers(request)
          body = send_request('RestartDockerContainers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestartDockerContainersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建并运行多个Docker容器，之后可以通过返回的ActivityIds调用DescribeDockerActivities接口查询创建情况。

        # @param request: Request instance for RunDockerContainers.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::RunDockerContainersRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::RunDockerContainersResponse`
        def RunDockerContainers(request)
          body = send_request('RunDockerContainers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunDockerContainersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 启动实例内的Docker容器，之后可以通过返回的ActivityId调用DescribeDockerActivities接口查询启动情况。

        # @param request: Request instance for StartDockerContainers.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::StartDockerContainersRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::StartDockerContainersResponse`
        def StartDockerContainers(request)
          body = send_request('StartDockerContainers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartDockerContainersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 停止实例内的Docker容器，之后可以通过返回的ActivityId调用DescribeDockerActivities接口查询停止情况。

        # @param request: Request instance for StopDockerContainers.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::StopDockerContainersRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::StopDockerContainersResponse`
        def StopDockerContainers(request)
          body = send_request('StopDockerContainers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopDockerContainersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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

        # 本接口（TerminateDisks）用于销毁一个或多个云硬盘。

        # @param request: Request instance for TerminateDisks.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::TerminateDisksRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::TerminateDisksResponse`
        def TerminateDisks(request)
          body = send_request('TerminateDisks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TerminateDisksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (TerminateInstances) 用于销毁实例。

        # * 处于 SHUTDOWN 状态的实例，可通过本接口销毁，且不可恢复。
        # * 支持批量操作，每次请求批量实例的上限为100。
        # * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态 (LatestOperationState) 为“SUCCESS”，则代表操作成功。

        # @param request: Request instance for TerminateInstances.
        # @type request: :class:`Tencentcloud::lighthouse::V20200324::TerminateInstancesRequest`
        # @rtype: :class:`Tencentcloud::lighthouse::V20200324::TerminateInstancesResponse`
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


      end
    end
  end
end