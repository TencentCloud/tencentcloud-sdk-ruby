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

        # 本接口（DescribeFirewallRulesTemplate）用于查询防火墙规则模版。

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

        # 本接口（DescribeInstanceVncUrl）用于查询实例管理终端地址，获取的地址可用于实例的 VNC 登录。

        # * 处于 RUNNING 状态的机器可使用此功能。
        # * 管理终端地址的有效期为 15 秒，调用接口成功后如果 15 秒内不使用该链接进行访问，管理终端地址自动失效，您需要重新查询。
        # * 管理终端地址一旦被访问，将自动失效，您需要重新查询。
        # * 如果连接断开，每分钟内重新连接的次数不能超过 30 次。

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

        # 查询重置实例的镜像信息

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

        # 本接口（InquirePriceCreateInstances）用于续费实例询价。

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
        # * “实例名称”仅为方便用户自己管理之用，腾讯云并不以此名称作为提交工单或是进行实例管理操作的依据。
        # * 支持批量操作。每次请求批量实例的上限为 100。
        # * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。

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
        # * 实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。

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

        # 本接口（ResetInstancesPassword）用于将实例操作系统的密码重置为用户指定的密码。
        # * 只修改管理员帐号的密码。实例的操作系统不同，管理员帐号也会不一样（Windows 为 Administrator，Ubuntu 为 ubuntu ，其它系统为 root）。
        # * 支持批量操作。将多个实例操作系统的密码重置为相同的密码。每次请求批量实例的上限为 100。
        # * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。

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

        # 本接口 (TerminateInstances) 用于退还实例。

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