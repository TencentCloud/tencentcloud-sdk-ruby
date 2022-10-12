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
  module Cvm
    module V20170312
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2017-03-12'
            api_endpoint = 'cvm.tencentcloudapi.com'
            sdk_version = 'CVM_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口 (AllocateHosts) 用于创建一个或多个指定配置的CDH实例。
        # * 当HostChargeType为PREPAID时，必须指定HostChargePrepaid参数。

        # @param request: Request instance for AllocateHosts.
        # @type request: :class:`Tencentcloud::cvm::V20170312::AllocateHostsRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::AllocateHostsResponse`
        def AllocateHosts(request)
          body = send_request('AllocateHosts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AllocateHostsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (AssociateInstancesKeyPairs) 用于将密钥绑定到实例上。

        # * 将密钥的公钥写入到实例的`SSH`配置当中，用户就可以通过该密钥的私钥来登录实例。
        # * 如果实例原来绑定过密钥，那么原来的密钥将失效。
        # * 如果实例原来是通过密码登录，绑定密钥后无法使用密码登录。
        # * 支持批量操作。每次请求批量实例的上限为100。如果批量实例存在不允许操作的实例，操作会以特定错误码返回。

        # @param request: Request instance for AssociateInstancesKeyPairs.
        # @type request: :class:`Tencentcloud::cvm::V20170312::AssociateInstancesKeyPairsRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::AssociateInstancesKeyPairsResponse`
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

        # 本接口 (AssociateSecurityGroups) 用于绑定安全组到指定实例。
        # * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。

        # @param request: Request instance for AssociateSecurityGroups.
        # @type request: :class:`Tencentcloud::cvm::V20170312::AssociateSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::AssociateSecurityGroupsResponse`
        def AssociateSecurityGroups(request)
          body = send_request('AssociateSecurityGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssociateSecurityGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 配置CHC物理服务器的带外和部署网络。传入带外网络和部署网络信息

        # @param request: Request instance for ConfigureChcAssistVpc.
        # @type request: :class:`Tencentcloud::cvm::V20170312::ConfigureChcAssistVpcRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::ConfigureChcAssistVpcResponse`
        def ConfigureChcAssistVpc(request)
          body = send_request('ConfigureChcAssistVpc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ConfigureChcAssistVpcResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 配置CHC物理服务器部署网络

        # @param request: Request instance for ConfigureChcDeployVpc.
        # @type request: :class:`Tencentcloud::cvm::V20170312::ConfigureChcDeployVpcRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::ConfigureChcDeployVpcResponse`
        def ConfigureChcDeployVpc(request)
          body = send_request('ConfigureChcDeployVpc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ConfigureChcDeployVpcResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (CreateDisasterRecoverGroup)用于创建[分散置放群组](https://cloud.tencent.com/document/product/213/15486)。创建好的置放群组，可在[创建实例](https://cloud.tencent.com/document/api/213/15730)时指定。

        # @param request: Request instance for CreateDisasterRecoverGroup.
        # @type request: :class:`Tencentcloud::cvm::V20170312::CreateDisasterRecoverGroupRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::CreateDisasterRecoverGroupResponse`
        def CreateDisasterRecoverGroup(request)
          body = send_request('CreateDisasterRecoverGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDisasterRecoverGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(CreateImage)用于将实例的系统盘制作为新镜像，创建后的镜像可以用于创建实例。

        # @param request: Request instance for CreateImage.
        # @type request: :class:`Tencentcloud::cvm::V20170312::CreateImageRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::CreateImageResponse`
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

        # 本接口 (CreateKeyPair) 用于创建一个 `OpenSSH RSA` 密钥对，可以用于登录 `Linux` 实例。

        # * 开发者只需指定密钥对名称，即可由系统自动创建密钥对，并返回所生成的密钥对的 `ID` 及其公钥、私钥的内容。
        # * 密钥对名称不能和已经存在的密钥对的名称重复。
        # * 私钥的内容可以保存到文件中作为 `SSH` 的一种认证方式。
        # * 腾讯云不会保存用户的私钥，请妥善保管。

        # @param request: Request instance for CreateKeyPair.
        # @type request: :class:`Tencentcloud::cvm::V20170312::CreateKeyPairRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::CreateKeyPairResponse`
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

        # 本接口（CreateLaunchTemplate）用于创建实例启动模板。

        # 实例启动模板是一种配置数据并可用于创建实例，其内容包含创建实例所需的配置，比如实例类型，数据盘和系统盘的类型和大小，以及安全组等信息。

        # 初次创建实例模板后，其模板版本为默认版本1，新版本的创建可使用CreateLaunchTemplateVersion创建，版本号递增。默认情况下，在RunInstances中指定实例启动模板，若不指定模板版本号，则使用默认版本。

        # @param request: Request instance for CreateLaunchTemplate.
        # @type request: :class:`Tencentcloud::cvm::V20170312::CreateLaunchTemplateRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::CreateLaunchTemplateResponse`
        def CreateLaunchTemplate(request)
          body = send_request('CreateLaunchTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLaunchTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateLaunchTemplateVersion）根据指定的实例模板ID以及对应的模板版本号创建新的实例启动模板，若未指定模板版本号则使用默认版本号。每个实例启动模板最多创建30个版本。

        # @param request: Request instance for CreateLaunchTemplateVersion.
        # @type request: :class:`Tencentcloud::cvm::V20170312::CreateLaunchTemplateVersionRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::CreateLaunchTemplateVersionResponse`
        def CreateLaunchTemplateVersion(request)
          body = send_request('CreateLaunchTemplateVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLaunchTemplateVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DeleteDisasterRecoverGroups)用于删除[分散置放群组](https://cloud.tencent.com/document/product/213/15486)。只有空的置放群组才能被删除，非空的群组需要先销毁组内所有云服务器，才能执行删除操作，不然会产生删除置放群组失败的错误。

        # @param request: Request instance for DeleteDisasterRecoverGroups.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DeleteDisasterRecoverGroupsRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DeleteDisasterRecoverGroupsResponse`
        def DeleteDisasterRecoverGroups(request)
          body = send_request('DeleteDisasterRecoverGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDisasterRecoverGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteImages）用于删除一个或多个镜像。

        # * 当[镜像状态](https://cloud.tencent.com/document/product/213/15753#Image)为`创建中`和`使用中`时, 不允许删除。镜像状态可以通过[DescribeImages](https://cloud.tencent.com/document/api/213/9418)获取。
        # * 每个地域最多只支持创建10个自定义镜像，删除镜像可以释放账户的配额。
        # * 当镜像正在被其它账户分享时，不允许删除。

        # @param request: Request instance for DeleteImages.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DeleteImagesRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DeleteImagesResponse`
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

        # 本接口 (DeleteKeyPairs) 用于删除已在腾讯云托管的密钥对。

        # * 可以同时删除多个密钥对。
        # * 不能删除已被实例或镜像引用的密钥对，所以需要独立判断是否所有密钥对都被成功删除。

        # @param request: Request instance for DeleteKeyPairs.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DeleteKeyPairsRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DeleteKeyPairsResponse`
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

        # 本接口（DeleteLaunchTemplate）用于删除一个实例启动模板。

        # @param request: Request instance for DeleteLaunchTemplate.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DeleteLaunchTemplateRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DeleteLaunchTemplateResponse`
        def DeleteLaunchTemplate(request)
          body = send_request('DeleteLaunchTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLaunchTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteLaunchTemplateVersions）用于删除一个或者多个实例启动模板版本。

        # @param request: Request instance for DeleteLaunchTemplateVersions.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DeleteLaunchTemplateVersionsRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DeleteLaunchTemplateVersionsResponse`
        def DeleteLaunchTemplateVersions(request)
          body = send_request('DeleteLaunchTemplateVersions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLaunchTemplateVersionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeAccountQuota)用于查询用户配额详情。

        # @param request: Request instance for DescribeAccountQuota.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DescribeAccountQuotaRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DescribeAccountQuotaResponse`
        def DescribeAccountQuota(request)
          body = send_request('DescribeAccountQuota', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccountQuotaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询CHC物理服务器禁止做的操作，返回给用户

        # @param request: Request instance for DescribeChcDeniedActions.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DescribeChcDeniedActionsRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DescribeChcDeniedActionsResponse`
        def DescribeChcDeniedActions(request)
          body = send_request('DescribeChcDeniedActions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeChcDeniedActionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeChcHosts) 用于查询一个或多个CHC物理服务器详细信息。

        # * 可以根据实例`ID`、实例名称或者设备类型等信息来查询实例的详细信息。过滤信息详细请见过滤器`Filter`。
        # * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的实例。

        # @param request: Request instance for DescribeChcHosts.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DescribeChcHostsRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DescribeChcHostsResponse`
        def DescribeChcHosts(request)
          body = send_request('DescribeChcHosts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeChcHostsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeDisasterRecoverGroupQuota)用于查询[分散置放群组](https://cloud.tencent.com/document/product/213/15486)配额。

        # @param request: Request instance for DescribeDisasterRecoverGroupQuota.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DescribeDisasterRecoverGroupQuotaRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DescribeDisasterRecoverGroupQuotaResponse`
        def DescribeDisasterRecoverGroupQuota(request)
          body = send_request('DescribeDisasterRecoverGroupQuota', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDisasterRecoverGroupQuotaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeDisasterRecoverGroups)用于查询[分散置放群组](https://cloud.tencent.com/document/product/213/15486)信息。

        # @param request: Request instance for DescribeDisasterRecoverGroups.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DescribeDisasterRecoverGroupsRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DescribeDisasterRecoverGroupsResponse`
        def DescribeDisasterRecoverGroups(request)
          body = send_request('DescribeDisasterRecoverGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDisasterRecoverGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeHosts) 用于获取一个或多个CDH实例的详细信息。

        # @param request: Request instance for DescribeHosts.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DescribeHostsRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DescribeHostsResponse`
        def DescribeHosts(request)
          body = send_request('DescribeHosts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeImageQuota)用于查询用户帐号的镜像配额。

        # @param request: Request instance for DescribeImageQuota.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DescribeImageQuotaRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DescribeImageQuotaResponse`
        def DescribeImageQuota(request)
          body = send_request('DescribeImageQuota', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageQuotaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeImageSharePermission）用于查询镜像分享信息。

        # @param request: Request instance for DescribeImageSharePermission.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DescribeImageSharePermissionRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DescribeImageSharePermissionResponse`
        def DescribeImageSharePermission(request)
          body = send_request('DescribeImageSharePermission', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageSharePermissionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeImages) 用于查看镜像列表。

        # * 可以通过指定镜像ID来查询指定镜像的详细信息，或通过设定过滤器来查询满足过滤条件的镜像的详细信息。
        # * 指定偏移(Offset)和限制(Limit)来选择结果中的一部分，默认返回满足条件的前20个镜像信息。

        # @param request: Request instance for DescribeImages.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DescribeImagesRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DescribeImagesResponse`
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

        # 查看可以导入的镜像操作系统信息。

        # @param request: Request instance for DescribeImportImageOs.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DescribeImportImageOsRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DescribeImportImageOsResponse`
        def DescribeImportImageOs(request)
          body = send_request('DescribeImportImageOs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImportImageOsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeInstanceFamilyConfigs）查询当前用户和地域所支持的机型族列表信息。

        # @param request: Request instance for DescribeInstanceFamilyConfigs.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DescribeInstanceFamilyConfigsRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DescribeInstanceFamilyConfigsResponse`
        def DescribeInstanceFamilyConfigs(request)
          body = send_request('DescribeInstanceFamilyConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceFamilyConfigsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeInstanceInternetBandwidthConfigs) 用于查询实例带宽配置。

        # * 只支持查询`BANDWIDTH_PREPAID`（ 预付费按带宽结算 ）计费模式的带宽配置。
        # * 接口返回实例的所有带宽配置信息（包含历史的带宽配置信息）。

        # @param request: Request instance for DescribeInstanceInternetBandwidthConfigs.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DescribeInstanceInternetBandwidthConfigsRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DescribeInstanceInternetBandwidthConfigsResponse`
        def DescribeInstanceInternetBandwidthConfigs(request)
          body = send_request('DescribeInstanceInternetBandwidthConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceInternetBandwidthConfigsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeInstanceTypeConfigs) 用于查询实例机型配置。

        # * 可以根据`zone`、`instance-family`来查询实例机型配置。过滤条件详见过滤器[`Filter`](https://cloud.tencent.com/document/api/213/15753#Filter)。
        # * 如果参数为空，返回指定地域的所有实例机型配置。

        # @param request: Request instance for DescribeInstanceTypeConfigs.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DescribeInstanceTypeConfigsRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DescribeInstanceTypeConfigsResponse`
        def DescribeInstanceTypeConfigs(request)
          body = send_request('DescribeInstanceTypeConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceTypeConfigsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # 获取到 `InstanceVncUrl` 后，您需要在链接 `https://img.qcloud.com/qcloud/app/active_vnc/index.html?` 末尾加上参数 `InstanceVncUrl=xxxx`。

        #   - 参数 `InstanceVncUrl` ：调用接口成功后会返回的 `InstanceVncUrl` 的值。

        #     最后组成的 URL 格式如下：

        # ```
        # https://img.qcloud.com/qcloud/app/active_vnc/index.html?InstanceVncUrl=wss%3A%2F%2Fbjvnc.qcloud.com%3A26789%2Fvnc%3Fs%3DaHpjWnRVMFNhYmxKdDM5MjRHNlVTSVQwajNUSW0wb2tBbmFtREFCTmFrcy8vUUNPMG0wSHZNOUUxRm5PMmUzWmFDcWlOdDJIbUJxSTZDL0RXcHZxYnZZMmRkWWZWcEZia2lyb09XMzdKNmM9
        # ```

        # @param request: Request instance for DescribeInstanceVncUrl.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DescribeInstanceVncUrlRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DescribeInstanceVncUrlResponse`
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

        # 本接口 (DescribeInstances) 用于查询一个或多个实例的详细信息。

        # * 可以根据实例`ID`、实例名称或者实例计费模式等信息来查询实例的详细信息。过滤信息详细请见过滤器`Filter`。
        # * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的实例。
        # * 支持查询实例的最新操作（LatestOperation）以及最新操作状态(LatestOperationState)。

        # @param request: Request instance for DescribeInstances.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DescribeInstancesRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DescribeInstancesResponse`
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

        # 本接口 (DescribeInstancesModification) 用于查询指定实例支持调整的机型配置。

        # @param request: Request instance for DescribeInstancesModification.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DescribeInstancesModificationRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DescribeInstancesModificationResponse`
        def DescribeInstancesModification(request)
          body = send_request('DescribeInstancesModification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstancesModificationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeInstancesOperationLimit）用于查询实例操作限制。

        # * 目前支持调整配置操作限制次数查询。

        # @param request: Request instance for DescribeInstancesOperationLimit.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DescribeInstancesOperationLimitRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DescribeInstancesOperationLimitResponse`
        def DescribeInstancesOperationLimit(request)
          body = send_request('DescribeInstancesOperationLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstancesOperationLimitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeInstancesStatus) 用于查询一个或多个实例的状态。

        # * 可以根据实例`ID`来查询实例的状态。
        # * 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的实例状态。

        # @param request: Request instance for DescribeInstancesStatus.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DescribeInstancesStatusRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DescribeInstancesStatusResponse`
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

        # 本接口（DescribeInternetChargeTypeConfigs）用于查询网络的计费类型。

        # @param request: Request instance for DescribeInternetChargeTypeConfigs.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DescribeInternetChargeTypeConfigsRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DescribeInternetChargeTypeConfigsResponse`
        def DescribeInternetChargeTypeConfigs(request)
          body = send_request('DescribeInternetChargeTypeConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInternetChargeTypeConfigsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (DescribeKeyPairs) 用于查询密钥对信息。

        # * 密钥对是通过一种算法生成的一对密钥，在生成的密钥对中，一个向外界公开，称为公钥；另一个用户自己保留，称为私钥。密钥对的公钥内容可以通过这个接口查询，但私钥内容系统不保留。

        # @param request: Request instance for DescribeKeyPairs.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DescribeKeyPairsRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DescribeKeyPairsResponse`
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

        # 本接口（DescribeLaunchTemplateVersions）用于查询实例模板版本信息。

        # @param request: Request instance for DescribeLaunchTemplateVersions.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DescribeLaunchTemplateVersionsRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DescribeLaunchTemplateVersionsResponse`
        def DescribeLaunchTemplateVersions(request)
          body = send_request('DescribeLaunchTemplateVersions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLaunchTemplateVersionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeLaunchTemplates）用于查询一个或者多个实例启动模板。

        # @param request: Request instance for DescribeLaunchTemplates.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DescribeLaunchTemplatesRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DescribeLaunchTemplatesResponse`
        def DescribeLaunchTemplates(request)
          body = send_request('DescribeLaunchTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLaunchTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeRegions)用于查询地域信息。因平台策略原因，该接口暂时停止更新，为确保您正常调用，可切换至新链接：https://cloud.tencent.com/document/product/1596/77929。

        # @param request: Request instance for DescribeRegions.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DescribeRegionsRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DescribeRegionsResponse`
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

        # 本接口(DescribeReservedInstances)可提供列出用户已购买的预留实例

        # @param request: Request instance for DescribeReservedInstances.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DescribeReservedInstancesRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DescribeReservedInstancesResponse`
        def DescribeReservedInstances(request)
          body = send_request('DescribeReservedInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReservedInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeReservedInstancesConfigInfos)供用户列出可购买预留实例机型配置。预留实例当前只针对国际站白名单用户开放。

        # @param request: Request instance for DescribeReservedInstancesConfigInfos.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DescribeReservedInstancesConfigInfosRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DescribeReservedInstancesConfigInfosResponse`
        def DescribeReservedInstancesConfigInfos(request)
          body = send_request('DescribeReservedInstancesConfigInfos', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReservedInstancesConfigInfosResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeReservedInstancesOfferings)供用户列出可购买的预留实例配置

        # @param request: Request instance for DescribeReservedInstancesOfferings.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DescribeReservedInstancesOfferingsRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DescribeReservedInstancesOfferingsResponse`
        def DescribeReservedInstancesOfferings(request)
          body = send_request('DescribeReservedInstancesOfferings', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReservedInstancesOfferingsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeZoneInstanceConfigInfos) 获取可用区的机型信息。

        # @param request: Request instance for DescribeZoneInstanceConfigInfos.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DescribeZoneInstanceConfigInfosRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DescribeZoneInstanceConfigInfosResponse`
        def DescribeZoneInstanceConfigInfos(request)
          body = send_request('DescribeZoneInstanceConfigInfos', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeZoneInstanceConfigInfosResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeZones)用于查询可用区信息。

        # @param request: Request instance for DescribeZones.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DescribeZonesRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DescribeZonesResponse`
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

        # 本接口 (DisassociateInstancesKeyPairs) 用于解除实例的密钥绑定关系。

        # * 只支持[`STOPPED`](https://cloud.tencent.com/document/product/213/15753#InstanceStatus)状态的`Linux`操作系统的实例。
        # * 解绑密钥后，实例可以通过原来设置的密码登录。
        # * 如果原来没有设置密码，解绑后将无法使用 `SSH` 登录。可以调用 [ResetInstancesPassword](https://cloud.tencent.com/document/api/213/15736) 接口来设置登录密码。
        # * 支持批量操作。每次请求批量实例的上限为100。如果批量实例存在不允许操作的实例，操作会以特定错误码返回。

        # @param request: Request instance for DisassociateInstancesKeyPairs.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DisassociateInstancesKeyPairsRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DisassociateInstancesKeyPairsResponse`
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

        # 本接口 (DisassociateSecurityGroups) 用于解绑实例的指定安全组。
        # * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。

        # @param request: Request instance for DisassociateSecurityGroups.
        # @type request: :class:`Tencentcloud::cvm::V20170312::DisassociateSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::DisassociateSecurityGroupsResponse`
        def DisassociateSecurityGroups(request)
          body = send_request('DisassociateSecurityGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisassociateSecurityGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提供导出自定义镜像到指定COS存储桶的能力

        # @param request: Request instance for ExportImages.
        # @type request: :class:`Tencentcloud::cvm::V20170312::ExportImagesRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::ExportImagesResponse`
        def ExportImages(request)
          body = send_request('ExportImages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportImagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ImportImage)用于导入镜像，导入后的镜像可用于创建实例。目前支持 RAW、VHD、QCOW2、VMDK 镜像格式。

        # @param request: Request instance for ImportImage.
        # @type request: :class:`Tencentcloud::cvm::V20170312::ImportImageRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::ImportImageResponse`
        def ImportImage(request)
          body = send_request('ImportImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImportImageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (ImportKeyPair) 用于导入密钥对。

        # * 本接口的功能是将密钥对导入到用户账户，并不会自动绑定到实例。如需绑定可以使用[AssociasteInstancesKeyPair](https://cloud.tencent.com/document/api/213/9404)接口。
        # * 需指定密钥对名称以及该密钥对的公钥文本。
        # * 如果用户只有私钥，可以通过 `SSL` 工具将私钥转换成公钥后再导入。

        # @param request: Request instance for ImportKeyPair.
        # @type request: :class:`Tencentcloud::cvm::V20170312::ImportKeyPairRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::ImportKeyPairResponse`
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

        # 本接口(InquirePricePurchaseReservedInstancesOffering)用于创建预留实例询价。本接口仅允许针对购买限制范围内的预留实例配置进行询价。预留实例当前只针对国际站白名单用户开放。

        # @param request: Request instance for InquirePricePurchaseReservedInstancesOffering.
        # @type request: :class:`Tencentcloud::cvm::V20170312::InquirePricePurchaseReservedInstancesOfferingRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::InquirePricePurchaseReservedInstancesOfferingResponse`
        def InquirePricePurchaseReservedInstancesOffering(request)
          body = send_request('InquirePricePurchaseReservedInstancesOffering', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquirePricePurchaseReservedInstancesOfferingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (InquiryPriceModifyInstancesChargeType) 用于切换实例的计费模式询价。

        # * 只支持从 `POSTPAID_BY_HOUR` 计费模式切换为`PREPAID`计费模式。
        # * 关机不收费的实例、`BC1`和`BS1`机型族的实例、设置定时销毁的实例、竞价实例不支持该操作。

        # @param request: Request instance for InquiryPriceModifyInstancesChargeType.
        # @type request: :class:`Tencentcloud::cvm::V20170312::InquiryPriceModifyInstancesChargeTypeRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::InquiryPriceModifyInstancesChargeTypeResponse`
        def InquiryPriceModifyInstancesChargeType(request)
          body = send_request('InquiryPriceModifyInstancesChargeType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceModifyInstancesChargeTypeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (InquiryPriceRenewInstances) 用于续费包年包月实例询价。

        # * 只支持查询包年包月实例的续费价格。

        # @param request: Request instance for InquiryPriceRenewInstances.
        # @type request: :class:`Tencentcloud::cvm::V20170312::InquiryPriceRenewInstancesRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::InquiryPriceRenewInstancesResponse`
        def InquiryPriceRenewInstances(request)
          body = send_request('InquiryPriceRenewInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceRenewInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (InquiryPriceResetInstance) 用于重装实例询价。

        # * 如果指定了`ImageId`参数，则使用指定的镜像进行重装询价；否则按照当前实例使用的镜像进行重装询价。
        # * 目前只支持[系统盘类型](https://cloud.tencent.com/document/api/213/15753#SystemDisk)是`CLOUD_BASIC`、`CLOUD_PREMIUM`、`CLOUD_SSD`类型的实例使用该接口实现`Linux`和`Windows`操作系统切换的重装询价。
        # * 目前不支持境外地域的实例使用该接口实现`Linux`和`Windows`操作系统切换的重装询价。

        # @param request: Request instance for InquiryPriceResetInstance.
        # @type request: :class:`Tencentcloud::cvm::V20170312::InquiryPriceResetInstanceRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::InquiryPriceResetInstanceResponse`
        def InquiryPriceResetInstance(request)
          body = send_request('InquiryPriceResetInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceResetInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (InquiryPriceResetInstancesInternetMaxBandwidth) 用于调整实例公网带宽上限询价。

        # * 不同机型带宽上限范围不一致，具体限制详见[公网带宽上限](https://cloud.tencent.com/document/product/213/12523)。
        # * 对于`BANDWIDTH_PREPAID`计费方式的带宽，目前不支持调小带宽，且需要输入参数`StartTime`和`EndTime`，指定调整后的带宽的生效时间段。在这种场景下会涉及扣费，请确保账户余额充足。可通过[`DescribeAccountBalance`](https://cloud.tencent.com/document/product/555/20253)接口查询账户余额。
        # * 对于 `TRAFFIC_POSTPAID_BY_HOUR`、 `BANDWIDTH_POSTPAID_BY_HOUR` 和 `BANDWIDTH_PACKAGE` 计费方式的带宽，使用该接口调整带宽上限是实时生效的，可以在带宽允许的范围内调大或者调小带宽，不支持输入参数 `StartTime` 和 `EndTime` 。
        # * 接口不支持调整`BANDWIDTH_POSTPAID_BY_MONTH`计费方式的带宽。
        # * 接口不支持批量调整 `BANDWIDTH_PREPAID` 和 `BANDWIDTH_POSTPAID_BY_HOUR` 计费方式的带宽。
        # * 接口不支持批量调整混合计费方式的带宽。例如不支持同时调整`TRAFFIC_POSTPAID_BY_HOUR`和`BANDWIDTH_PACKAGE`计费方式的带宽。

        # @param request: Request instance for InquiryPriceResetInstancesInternetMaxBandwidth.
        # @type request: :class:`Tencentcloud::cvm::V20170312::InquiryPriceResetInstancesInternetMaxBandwidthRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::InquiryPriceResetInstancesInternetMaxBandwidthResponse`
        def InquiryPriceResetInstancesInternetMaxBandwidth(request)
          body = send_request('InquiryPriceResetInstancesInternetMaxBandwidth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceResetInstancesInternetMaxBandwidthResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (InquiryPriceResetInstancesType) 用于调整实例的机型询价。

        # * 目前只支持[系统盘类型](https://cloud.tencent.com/document/product/213/15753#SystemDisk)是`CLOUD_BASIC`、`CLOUD_PREMIUM`、`CLOUD_SSD`类型的实例使用该接口进行调整机型询价。
        # * 目前不支持[CDH](https://cloud.tencent.com/document/product/416)实例使用该接口调整机型询价。
        # * 对于包年包月实例，使用该接口会涉及扣费，请确保账户余额充足。可通过[`DescribeAccountBalance`](https://cloud.tencent.com/document/product/555/20253)接口查询账户余额。

        # @param request: Request instance for InquiryPriceResetInstancesType.
        # @type request: :class:`Tencentcloud::cvm::V20170312::InquiryPriceResetInstancesTypeRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::InquiryPriceResetInstancesTypeResponse`
        def InquiryPriceResetInstancesType(request)
          body = send_request('InquiryPriceResetInstancesType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceResetInstancesTypeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (InquiryPriceResizeInstanceDisks) 用于扩容实例的数据盘询价。

        # * 目前只支持扩容非弹性数据盘（[`DescribeDisks`](https://cloud.tencent.com/document/api/362/16315)接口返回值中的`Portable`为`false`表示非弹性）询价，且[数据盘类型](https://cloud.tencent.com/document/product/213/15753#DataDisk)为：`CLOUD_BASIC`、`CLOUD_PREMIUM`、`CLOUD_SSD`。
        # * 目前不支持[CDH](https://cloud.tencent.com/document/product/416)实例使用该接口扩容数据盘询价。* 仅支持包年包月实例随机器购买的数据盘。* 目前只支持扩容一块数据盘询价。

        # @param request: Request instance for InquiryPriceResizeInstanceDisks.
        # @type request: :class:`Tencentcloud::cvm::V20170312::InquiryPriceResizeInstanceDisksRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::InquiryPriceResizeInstanceDisksResponse`
        def InquiryPriceResizeInstanceDisks(request)
          body = send_request('InquiryPriceResizeInstanceDisks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceResizeInstanceDisksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(InquiryPriceRunInstances)用于创建实例询价。本接口仅允许针对购买限制范围内的实例配置进行询价, 详见：[创建实例](https://cloud.tencent.com/document/api/213/15730)。

        # @param request: Request instance for InquiryPriceRunInstances.
        # @type request: :class:`Tencentcloud::cvm::V20170312::InquiryPriceRunInstancesRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::InquiryPriceRunInstancesResponse`
        def InquiryPriceRunInstances(request)
          body = send_request('InquiryPriceRunInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceRunInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (InquiryPriceTerminateInstances) 用于退还实例询价。

        # * 查询退还实例可以返还的费用。
        # * 支持批量操作，每次请求批量实例的上限为100。如果批量实例存在不允许操作的实例，操作会以特定[错误码](#4.-.E9.94.99.E8.AF.AF.E7.A0.81)返回。

        # @param request: Request instance for InquiryPriceTerminateInstances.
        # @type request: :class:`Tencentcloud::cvm::V20170312::InquiryPriceTerminateInstancesRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::InquiryPriceTerminateInstancesResponse`
        def InquiryPriceTerminateInstances(request)
          body = send_request('InquiryPriceTerminateInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceTerminateInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改CHC物理服务器的属性

        # @param request: Request instance for ModifyChcAttribute.
        # @type request: :class:`Tencentcloud::cvm::V20170312::ModifyChcAttributeRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::ModifyChcAttributeResponse`
        def ModifyChcAttribute(request)
          body = send_request('ModifyChcAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyChcAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (ModifyDisasterRecoverGroupAttribute)用于修改[分散置放群组](https://cloud.tencent.com/document/product/213/15486)属性。

        # @param request: Request instance for ModifyDisasterRecoverGroupAttribute.
        # @type request: :class:`Tencentcloud::cvm::V20170312::ModifyDisasterRecoverGroupAttributeRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::ModifyDisasterRecoverGroupAttributeResponse`
        def ModifyDisasterRecoverGroupAttribute(request)
          body = send_request('ModifyDisasterRecoverGroupAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDisasterRecoverGroupAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyHostsAttribute）用于修改CDH实例的属性，如实例名称和续费标记等。参数HostName和RenewFlag必须设置其中一个，但不能同时设置。

        # @param request: Request instance for ModifyHostsAttribute.
        # @type request: :class:`Tencentcloud::cvm::V20170312::ModifyHostsAttributeRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::ModifyHostsAttributeResponse`
        def ModifyHostsAttribute(request)
          body = send_request('ModifyHostsAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyHostsAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyImageAttribute）用于修改镜像属性。

        # * 已分享的镜像无法修改属性。

        # @param request: Request instance for ModifyImageAttribute.
        # @type request: :class:`Tencentcloud::cvm::V20170312::ModifyImageAttributeRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::ModifyImageAttributeResponse`
        def ModifyImageAttribute(request)
          body = send_request('ModifyImageAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyImageAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyImageSharePermission）用于修改镜像分享信息。

        # * 分享镜像后，被分享账户可以通过该镜像创建实例。
        # * 每个自定义镜像最多可共享给50个账户。
        # * 分享镜像无法更改名称，描述，仅可用于创建实例。
        # * 只支持分享到对方账户相同地域。

        # @param request: Request instance for ModifyImageSharePermission.
        # @type request: :class:`Tencentcloud::cvm::V20170312::ModifyImageSharePermissionRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::ModifyImageSharePermissionResponse`
        def ModifyImageSharePermission(request)
          body = send_request('ModifyImageSharePermission', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyImageSharePermissionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (ModifyInstanceDiskType) 用于修改实例硬盘介质类型。

        # * 只支持实例的本地系统盘、本地数据盘转化成指定云硬盘介质。
        # * 只支持实例在关机状态下转换成指定云硬盘介质。
        # * 不支持竞价实例类型。
        # * 修改前请确保账户余额充足。可通过[`DescribeAccountBalance`](https://cloud.tencent.com/document/product/378/4397)接口查询账户余额。

        # @param request: Request instance for ModifyInstanceDiskType.
        # @type request: :class:`Tencentcloud::cvm::V20170312::ModifyInstanceDiskTypeRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::ModifyInstanceDiskTypeResponse`
        def ModifyInstanceDiskType(request)
          body = send_request('ModifyInstanceDiskType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceDiskTypeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (ModifyInstancesAttribute) 用于修改实例的属性（目前只支持修改实例的名称和关联的安全组）。

        # * 每次请求必须指定实例的一种属性用于修改。
        # * “实例名称”仅为方便用户自己管理之用，腾讯云并不以此名称作为在线支持或是进行实例管理操作的依据。
        # * 支持批量操作。每次请求批量实例的上限为100。
        # * 修改关联安全组时，子机原来关联的安全组会被解绑。
        # * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。

        # @param request: Request instance for ModifyInstancesAttribute.
        # @type request: :class:`Tencentcloud::cvm::V20170312::ModifyInstancesAttributeRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::ModifyInstancesAttributeResponse`
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

        # 本接口 (ModifyInstancesChargeType) 用于切换实例的计费模式。

        # * 关机不收费的实例、`BC1`和`BS1`机型族的实例、设置定时销毁的实例不支持该操作。
        # * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。

        # @param request: Request instance for ModifyInstancesChargeType.
        # @type request: :class:`Tencentcloud::cvm::V20170312::ModifyInstancesChargeTypeRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::ModifyInstancesChargeTypeResponse`
        def ModifyInstancesChargeType(request)
          body = send_request('ModifyInstancesChargeType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstancesChargeTypeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (ModifyInstancesProject) 用于修改实例所属项目。

        # * 项目为一个虚拟概念，用户可以在一个账户下面建立多个项目，每个项目中管理不同的资源；将多个不同实例分属到不同项目中，后续使用 [`DescribeInstances`](https://cloud.tencent.com/document/api/213/15728)接口查询实例，项目ID可用于过滤结果。
        # * 绑定负载均衡的实例不支持修改实例所属项目，请先使用[`DeregisterInstancesFromLoadBalancer`](https://cloud.tencent.com/document/api/214/1258)接口解绑负载均衡。
        # * 支持批量操作。每次请求批量实例的上限为100。
        # * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。

        # @param request: Request instance for ModifyInstancesProject.
        # @type request: :class:`Tencentcloud::cvm::V20170312::ModifyInstancesProjectRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::ModifyInstancesProjectResponse`
        def ModifyInstancesProject(request)
          body = send_request('ModifyInstancesProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstancesProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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
        # * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。

        # @param request: Request instance for ModifyInstancesRenewFlag.
        # @type request: :class:`Tencentcloud::cvm::V20170312::ModifyInstancesRenewFlagRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::ModifyInstancesRenewFlagResponse`
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

        # 本接口(ModifyInstancesVpcAttribute)用于修改实例vpc属性，如私有网络ip。
        # * 此操作默认会关闭实例，完成后再启动。
        # * 当指定私有网络ID和子网ID（子网必须在实例所在的可用区）与指定实例所在私有网络不一致时，会将实例迁移至指定的私有网络的子网下。执行此操作前请确保指定的实例上没有绑定[弹性网卡](https://cloud.tencent.com/document/product/576)和[负载均衡](https://cloud.tencent.com/document/product/214)。
        # * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。

        # @param request: Request instance for ModifyInstancesVpcAttribute.
        # @type request: :class:`Tencentcloud::cvm::V20170312::ModifyInstancesVpcAttributeRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::ModifyInstancesVpcAttributeResponse`
        def ModifyInstancesVpcAttribute(request)
          body = send_request('ModifyInstancesVpcAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstancesVpcAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (ModifyKeyPairAttribute) 用于修改密钥对属性。

        # * 修改密钥对ID所指定的密钥对的名称和描述信息。
        # * 密钥对名称不能和已经存在的密钥对的名称重复。
        # * 密钥对ID是密钥对的唯一标识，不可修改。

        # @param request: Request instance for ModifyKeyPairAttribute.
        # @type request: :class:`Tencentcloud::cvm::V20170312::ModifyKeyPairAttributeRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::ModifyKeyPairAttributeResponse`
        def ModifyKeyPairAttribute(request)
          body = send_request('ModifyKeyPairAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyKeyPairAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyLaunchTemplateDefaultVersion）用于修改实例启动模板默认版本。

        # @param request: Request instance for ModifyLaunchTemplateDefaultVersion.
        # @type request: :class:`Tencentcloud::cvm::V20170312::ModifyLaunchTemplateDefaultVersionRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::ModifyLaunchTemplateDefaultVersionResponse`
        def ModifyLaunchTemplateDefaultVersion(request)
          body = send_request('ModifyLaunchTemplateDefaultVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLaunchTemplateDefaultVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ProgramFpgaImage)用于在线烧录由客户提供的FPGA镜像文件到指定实例的指定FPGA卡上。
        # * 只支持对单个实例发起在线烧录FPGA镜像的操作。
        # * 支持对单个实例的多块FPGA卡同时烧录FPGA镜像，DBDFs参数为空时，默认对指定实例的所有FPGA卡进行烧录。

        # @param request: Request instance for ProgramFpgaImage.
        # @type request: :class:`Tencentcloud::cvm::V20170312::ProgramFpgaImageRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::ProgramFpgaImageResponse`
        def ProgramFpgaImage(request)
          body = send_request('ProgramFpgaImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ProgramFpgaImageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(PurchaseReservedInstancesOffering)用于用户购买一个或者多个指定配置的预留实例

        # @param request: Request instance for PurchaseReservedInstancesOffering.
        # @type request: :class:`Tencentcloud::cvm::V20170312::PurchaseReservedInstancesOfferingRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::PurchaseReservedInstancesOfferingResponse`
        def PurchaseReservedInstancesOffering(request)
          body = send_request('PurchaseReservedInstancesOffering', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PurchaseReservedInstancesOfferingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (RebootInstances) 用于重启实例。

        # * 只有状态为`RUNNING`的实例才可以进行此操作。
        # * 接口调用成功时，实例会进入`REBOOTING`状态；重启实例成功时，实例会进入`RUNNING`状态。
        # * 支持强制重启。强制重启的效果等同于关闭物理计算机的电源开关再重新启动。强制重启可能会导致数据丢失或文件系统损坏，请仅在服务器不能正常重启时使用。
        # * 支持批量操作，每次请求批量实例的上限为100。
        # * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。

        # @param request: Request instance for RebootInstances.
        # @type request: :class:`Tencentcloud::cvm::V20170312::RebootInstancesRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::RebootInstancesResponse`
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

        # 清理CHC物理服务器的带外网络和部署网络

        # @param request: Request instance for RemoveChcAssistVpc.
        # @type request: :class:`Tencentcloud::cvm::V20170312::RemoveChcAssistVpcRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::RemoveChcAssistVpcResponse`
        def RemoveChcAssistVpc(request)
          body = send_request('RemoveChcAssistVpc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveChcAssistVpcResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 清理CHC物理服务器的部署网络

        # @param request: Request instance for RemoveChcDeployVpc.
        # @type request: :class:`Tencentcloud::cvm::V20170312::RemoveChcDeployVpcRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::RemoveChcDeployVpcResponse`
        def RemoveChcDeployVpc(request)
          body = send_request('RemoveChcDeployVpc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveChcDeployVpcResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (RenewHosts) 用于续费包年包月CDH实例。

        # * 只支持操作包年包月实例，否则操作会以特定[错误码](#6.-.E9.94.99.E8.AF.AF.E7.A0.81)返回。
        # * 续费时请确保账户余额充足。可通过[`DescribeAccountBalance`](https://cloud.tencent.com/document/product/555/20253)接口查询账户余额。

        # @param request: Request instance for RenewHosts.
        # @type request: :class:`Tencentcloud::cvm::V20170312::RenewHostsRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::RenewHostsResponse`
        def RenewHosts(request)
          body = send_request('RenewHosts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewHostsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (RenewInstances) 用于续费包年包月实例。

        # * 只支持操作包年包月实例。
        # * 续费时请确保账户余额充足。可通过[`DescribeAccountBalance`](https://cloud.tencent.com/document/product/555/20253)接口查询账户余额。
        # * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。

        # @param request: Request instance for RenewInstances.
        # @type request: :class:`Tencentcloud::cvm::V20170312::RenewInstancesRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::RenewInstancesResponse`
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

        # 本接口 (ResetInstance) 用于重装指定实例上的操作系统。

        # * 如果指定了`ImageId`参数，则使用指定的镜像重装；否则按照当前实例使用的镜像进行重装。
        # * 系统盘将会被格式化，并重置；请确保系统盘中无重要文件。
        # * `Linux`和`Windows`系统互相切换时，该实例系统盘`ID`将发生变化，系统盘关联快照将无法回滚、恢复数据。
        # * 密码不指定将会通过站内信下发随机密码。
        # * 目前只支持[系统盘类型](https://cloud.tencent.com/document/api/213/9452#SystemDisk)是`CLOUD_BASIC`、`CLOUD_PREMIUM`、`CLOUD_SSD`类型的实例使用该接口实现`Linux`和`Windows`操作系统切换。
        # * 目前不支持境外地域的实例使用该接口实现`Linux`和`Windows`操作系统切换。
        # * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。

        # @param request: Request instance for ResetInstance.
        # @type request: :class:`Tencentcloud::cvm::V20170312::ResetInstanceRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::ResetInstanceResponse`
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

        # 本接口 (ResetInstancesInternetMaxBandwidth) 用于调整实例公网带宽上限。

        # * 不同机型带宽上限范围不一致，具体限制详见[公网带宽上限](https://cloud.tencent.com/document/product/213/12523)。
        # * 对于 `BANDWIDTH_PREPAID` 计费方式的带宽，需要输入参数 `StartTime` 和 `EndTime` ，指定调整后的带宽的生效时间段。在这种场景下目前不支持调小带宽，会涉及扣费，请确保账户余额充足。可通过 [`DescribeAccountBalance`](https://cloud.tencent.com/document/product/555/20253) 接口查询账户余额。
        # * 对于 `TRAFFIC_POSTPAID_BY_HOUR` 、 `BANDWIDTH_POSTPAID_BY_HOUR` 和 `BANDWIDTH_PACKAGE` 计费方式的带宽，使用该接口调整带宽上限是实时生效的，可以在带宽允许的范围内调大或者调小带宽，不支持输入参数 `StartTime` 和 `EndTime` 。
        # * 接口不支持调整 `BANDWIDTH_POSTPAID_BY_MONTH` 计费方式的带宽。
        # * 接口不支持批量调整 `BANDWIDTH_PREPAID` 和 `BANDWIDTH_POSTPAID_BY_HOUR` 计费方式的带宽。
        # * 接口不支持批量调整混合计费方式的带宽。例如不支持同时调整 `TRAFFIC_POSTPAID_BY_HOUR` 和 `BANDWIDTH_PACKAGE` 计费方式的带宽。
        # * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。

        # @param request: Request instance for ResetInstancesInternetMaxBandwidth.
        # @type request: :class:`Tencentcloud::cvm::V20170312::ResetInstancesInternetMaxBandwidthRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::ResetInstancesInternetMaxBandwidthResponse`
        def ResetInstancesInternetMaxBandwidth(request)
          body = send_request('ResetInstancesInternetMaxBandwidth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetInstancesInternetMaxBandwidthResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (ResetInstancesPassword) 用于将实例操作系统的密码重置为用户指定的密码。

        # *如果是修改系统管理云密码：实例的操作系统不同，管理员帐号也会不一样(`Windows`为`Administrator`，`Ubuntu`为`ubuntu`，其它系统为`root`)。
        # * 重置处于运行中状态的实例密码，需要设置关机参数`ForceStop`为`TRUE`。如果没有显式指定强制关机参数，则只有处于关机状态的实例才允许执行重置密码操作。
        # * 支持批量操作。将多个实例操作系统的密码重置为相同的密码。每次请求批量实例的上限为100。
        # * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。

        # @param request: Request instance for ResetInstancesPassword.
        # @type request: :class:`Tencentcloud::cvm::V20170312::ResetInstancesPasswordRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::ResetInstancesPasswordResponse`
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

        # 本接口 (ResetInstancesType) 用于调整实例的机型。

        # * 目前只支持[系统盘类型](/document/api/213/9452#block_device)是CLOUD_BASIC、CLOUD_PREMIUM、CLOUD_SSD类型的实例使用该接口进行机型调整。
        # * 目前不支持[CDH](https://cloud.tencent.com/document/product/416)实例使用该接口调整机型。对于包年包月实例，使用该接口会涉及扣费，请确保账户余额充足。可通过[`DescribeAccountBalance`](https://cloud.tencent.com/document/product/555/20253)接口查询账户余额。
        # * 本接口为异步接口，调整实例配置请求发送成功后会返回一个RequestId，此时操作并未立即完成。实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表调整实例配置操作成功。

        # @param request: Request instance for ResetInstancesType.
        # @type request: :class:`Tencentcloud::cvm::V20170312::ResetInstancesTypeRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::ResetInstancesTypeResponse`
        def ResetInstancesType(request)
          body = send_request('ResetInstancesType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetInstancesTypeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (ResizeInstanceDisks) 用于扩容实例的数据盘。

        # * 目前只支持扩容非弹性盘（[`DescribeDisks`](https://cloud.tencent.com/document/api/362/16315)接口返回值中的`Portable`为`false`表示非弹性），且[数据盘类型](https://cloud.tencent.com/document/api/213/15753#DataDisk)为：`CLOUD_BASIC`、`CLOUD_PREMIUM`、`CLOUD_SSD`和[CDH](https://cloud.tencent.com/document/product/416)实例的`LOCAL_BASIC`、`LOCAL_SSD`类型数据盘。
        # * 对于包年包月实例，使用该接口会涉及扣费，请确保账户余额充足。可通过[`DescribeAccountBalance`](https://cloud.tencent.com/document/product/555/20253)接口查询账户余额。
        # * 目前只支持扩容一块数据盘。
        # * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。
        # * 如果是系统盘，目前只支持扩容，不支持缩容。

        # @param request: Request instance for ResizeInstanceDisks.
        # @type request: :class:`Tencentcloud::cvm::V20170312::ResizeInstanceDisksRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::ResizeInstanceDisksResponse`
        def ResizeInstanceDisks(request)
          body = send_request('ResizeInstanceDisks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResizeInstanceDisksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (RunInstances) 用于创建一个或多个指定配置的实例。

        # * 实例创建成功后将自动开机启动，[实例状态](https://cloud.tencent.com/document/product/213/15753#InstanceStatus)变为“运行中”。
        # * 预付费实例的购买会预先扣除本次实例购买所需金额，按小时后付费实例购买会预先冻结本次实例购买一小时内所需金额，在调用本接口前请确保账户余额充足。
        # * 调用本接口创建实例，支持代金券自动抵扣（注意，代金券不可用于抵扣后付费冻结金额），详情请参考[代金券选用规则](https://cloud.tencent.com/document/product/555/7428)。
        # * 本接口允许购买的实例数量遵循[CVM实例购买限制](https://cloud.tencent.com/document/product/213/2664)，所创建的实例和官网入口创建的实例共用配额。
        # * 本接口为异步接口，当创建实例请求下发成功后会返回一个实例`ID`列表和一个`RequestId`，此时创建实例操作并未立即完成。在此期间实例的状态将会处于“PENDING”，实例创建结果可以通过调用 [DescribeInstancesStatus](https://cloud.tencent.com/document/product/213/15738)  接口查询，如果实例状态(InstanceState)由“PENDING(创建中)”变为“RUNNING(运行中)”，则代表实例创建成功，“LAUNCH_FAILED”代表实例创建失败。

        # @param request: Request instance for RunInstances.
        # @type request: :class:`Tencentcloud::cvm::V20170312::RunInstancesRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::RunInstancesResponse`
        def RunInstances(request)
          body = send_request('RunInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (StartInstances) 用于启动一个或多个实例。

        # * 只有状态为`STOPPED`的实例才可以进行此操作。
        # * 接口调用成功时，实例会进入`STARTING`状态；启动实例成功时，实例会进入`RUNNING`状态。
        # * 支持批量操作。每次请求批量实例的上限为100。
        # * 本接口为异步接口，启动实例请求发送成功后会返回一个RequestId，此时操作并未立即完成。实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表启动实例操作成功。

        # @param request: Request instance for StartInstances.
        # @type request: :class:`Tencentcloud::cvm::V20170312::StartInstancesRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::StartInstancesResponse`
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

        # 本接口 (StopInstances) 用于关闭一个或多个实例。

        # * 只有状态为`RUNNING`的实例才可以进行此操作。
        # * 接口调用成功时，实例会进入`STOPPING`状态；关闭实例成功时，实例会进入`STOPPED`状态。
        # * 支持强制关闭。强制关机的效果等同于关闭物理计算机的电源开关。强制关机可能会导致数据丢失或文件系统损坏，请仅在服务器不能正常关机时使用。
        # * 支持批量操作。每次请求批量实例的上限为100。
        # * 本接口为异步接口，关闭实例请求发送成功后会返回一个RequestId，此时操作并未立即完成。实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表关闭实例操作成功。

        # @param request: Request instance for StopInstances.
        # @type request: :class:`Tencentcloud::cvm::V20170312::StopInstancesRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::StopInstancesResponse`
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

        # 本接口（SyncImages）用于将自定义镜像同步到其它地区。

        # * 该接口每次调用只支持同步一个镜像。
        # * 该接口支持多个同步地域。
        # * 单个帐号在每个地域最多支持存在10个自定义镜像。

        # @param request: Request instance for SyncImages.
        # @type request: :class:`Tencentcloud::cvm::V20170312::SyncImagesRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::SyncImagesResponse`
        def SyncImages(request)
          body = send_request('SyncImages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SyncImagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口 (TerminateInstances) 用于主动退还实例。

        # * 不再使用的实例，可通过本接口主动退还。
        # * 按量计费的实例通过本接口可直接退还；包年包月实例如符合[退还规则](https://cloud.tencent.com/document/product/213/9711)，也可通过本接口主动退还。
        # * 包年包月实例首次调用本接口，实例将被移至回收站，再次调用本接口，实例将被销毁，且不可恢复。按量计费实例调用本接口将被直接销毁。
        # * 支持批量操作，每次请求批量实例的上限为100。
        # * 批量操作时，所有实例的付费类型必须一致。

        # @param request: Request instance for TerminateInstances.
        # @type request: :class:`Tencentcloud::cvm::V20170312::TerminateInstancesRequest`
        # @rtype: :class:`Tencentcloud::cvm::V20170312::TerminateInstancesResponse`
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