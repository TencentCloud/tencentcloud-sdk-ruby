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
  module Ecm
    module V20190719
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2019-07-19'
        @@endpoint = 'ecm.tencentcloudapi.com'
        @@sdk_version = 'ECM_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 申请一个或多个弹性公网IP（简称 EIP）

        # @param request: Request instance for AllocateAddresses.
        # @type request: :class:`Tencentcloud::ecm::V20190719::AllocateAddressesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::AllocateAddressesResponse`
        def AllocateAddresses(request)
          body = send_request('AllocateAddresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AllocateAddressesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 弹性网卡申请内网 IP

        # @param request: Request instance for AssignPrivateIpAddresses.
        # @type request: :class:`Tencentcloud::ecm::V20190719::AssignPrivateIpAddressesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::AssignPrivateIpAddressesResponse`
        def AssignPrivateIpAddresses(request)
          body = send_request('AssignPrivateIpAddresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssignPrivateIpAddressesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 将弹性公网IP（简称 EIP）绑定到实例或弹性网卡的指定内网 IP 上。
        # 将 EIP 绑定到实例（CVM）上，其本质是将 EIP 绑定到实例上主网卡的主内网 IP 上。
        # 将 EIP 绑定到主网卡的主内网IP上，绑定过程会把其上绑定的普通公网 IP 自动解绑并释放。
        # 将 EIP 绑定到指定网卡的内网 IP上（非主网卡的主内网IP），则必须先解绑该 EIP，才能再绑定新的。
        # 将 EIP 绑定到NAT网关，请使用接口EipBindNatGateway
        # EIP 如果欠费或被封堵，则不能被绑定。
        # 只有状态为 UNBIND 的 EIP 才能够被绑定。

        # @param request: Request instance for AssociateAddress.
        # @type request: :class:`Tencentcloud::ecm::V20190719::AssociateAddressRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::AssociateAddressResponse`
        def AssociateAddress(request)
          body = send_request('AssociateAddress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssociateAddressResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 弹性网卡绑定云主机

        # @param request: Request instance for AttachNetworkInterface.
        # @type request: :class:`Tencentcloud::ecm::V20190719::AttachNetworkInterfaceRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::AttachNetworkInterfaceResponse`
        def AttachNetworkInterface(request)
          body = send_request('AttachNetworkInterface', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AttachNetworkInterfaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建模块

        # @param request: Request instance for CreateModule.
        # @type request: :class:`Tencentcloud::ecm::V20190719::CreateModuleRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::CreateModuleResponse`
        def CreateModule(request)
          body = send_request('CreateModule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateModuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建弹性网卡

        # @param request: Request instance for CreateNetworkInterface.
        # @type request: :class:`Tencentcloud::ecm::V20190719::CreateNetworkInterfaceRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::CreateNetworkInterfaceResponse`
        def CreateNetworkInterface(request)
          body = send_request('CreateNetworkInterface', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNetworkInterfaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建安全组

        # @param request: Request instance for CreateSecurityGroup.
        # @type request: :class:`Tencentcloud::ecm::V20190719::CreateSecurityGroupRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::CreateSecurityGroupResponse`
        def CreateSecurityGroup(request)
          body = send_request('CreateSecurityGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSecurityGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建子网，若创建成功，则此子网会成为此可用区的默认子网。

        # @param request: Request instance for CreateSubnet.
        # @type request: :class:`Tencentcloud::ecm::V20190719::CreateSubnetRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::CreateSubnetResponse`
        def CreateSubnet(request)
          body = send_request('CreateSubnet', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSubnetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建私有网络

        # @param request: Request instance for CreateVpc.
        # @type request: :class:`Tencentcloud::ecm::V20190719::CreateVpcRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::CreateVpcResponse`
        def CreateVpc(request)
          body = send_request('CreateVpc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVpcResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除镜像

        # @param request: Request instance for DeleteImage.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DeleteImageRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DeleteImageResponse`
        def DeleteImage(request)
          body = send_request('DeleteImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteImageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除业务模块

        # @param request: Request instance for DeleteModule.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DeleteModuleRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DeleteModuleResponse`
        def DeleteModule(request)
          body = send_request('DeleteModule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteModuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除弹性网卡

        # @param request: Request instance for DeleteNetworkInterface.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DeleteNetworkInterfaceRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DeleteNetworkInterfaceResponse`
        def DeleteNetworkInterface(request)
          body = send_request('DeleteNetworkInterface', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNetworkInterfaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除子网，若子网为可用区下的默认子网，则默认子网会回退到系统自动创建的默认子网，非用户最新创建的子网。若默认子网不满足需求，可调用设置默认子网接口设置。

        # @param request: Request instance for DeleteSubnet.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DeleteSubnetRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DeleteSubnetResponse`
        def DeleteSubnet(request)
          body = send_request('DeleteSubnet', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSubnetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除私有网络

        # @param request: Request instance for DeleteVpc.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DeleteVpcRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DeleteVpcResponse`
        def DeleteVpc(request)
          body = send_request('DeleteVpc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteVpcResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询您账户的弹性公网IP（简称 EIP）在当前地域的配额信息

        # @param request: Request instance for DescribeAddressQuota.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeAddressQuotaRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeAddressQuotaResponse`
        def DescribeAddressQuota(request)
          body = send_request('DescribeAddressQuota', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAddressQuotaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询弹性公网IP列表

        # @param request: Request instance for DescribeAddresses.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeAddressesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeAddressesResponse`
        def DescribeAddresses(request)
          body = send_request('DescribeAddresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAddressesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取概览页统计的基本数据

        # @param request: Request instance for DescribeBaseOverview.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeBaseOverviewRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeBaseOverviewResponse`
        def DescribeBaseOverview(request)
          body = send_request('DescribeBaseOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaseOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取带宽硬盘等数据的限制

        # @param request: Request instance for DescribeConfig.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeConfigRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeConfigResponse`
        def DescribeConfig(request)
          body = send_request('DescribeConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询导入镜像任务

        # @param request: Request instance for DescribeCustomImageTask.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeCustomImageTaskRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeCustomImageTaskResponse`
        def DescribeCustomImageTask(request)
          body = send_request('DescribeCustomImageTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomImageTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询可用区的默认子网

        # @param request: Request instance for DescribeDefaultSubnet.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeDefaultSubnetRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeDefaultSubnetResponse`
        def DescribeDefaultSubnet(request)
          body = send_request('DescribeDefaultSubnet', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDefaultSubnetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 展示镜像列表

        # @param request: Request instance for DescribeImage.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeImageRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeImageResponse`
        def DescribeImage(request)
          body = send_request('DescribeImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询外部导入镜像支持的OS列表

        # @param request: Request instance for DescribeImportImageOs.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeImportImageOsRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeImportImageOsResponse`
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

        # 获取机型配置列表

        # @param request: Request instance for DescribeInstanceTypeConfig.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeInstanceTypeConfigRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeInstanceTypeConfigResponse`
        def DescribeInstanceTypeConfig(request)
          body = send_request('DescribeInstanceTypeConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceTypeConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例管理终端地址

        # @param request: Request instance for DescribeInstanceVncUrl.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeInstanceVncUrlRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeInstanceVncUrlResponse`
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

        # 获取实例的相关信息。

        # @param request: Request instance for DescribeInstances.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeInstancesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeInstancesResponse`
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

        # 通过实例id获取当前禁止的操作

        # @param request: Request instance for DescribeInstancesDeniedActions.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeInstancesDeniedActionsRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeInstancesDeniedActionsResponse`
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

        # 获取模块列表

        # @param request: Request instance for DescribeModule.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeModuleRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeModuleResponse`
        def DescribeModule(request)
          body = send_request('DescribeModule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 展示模块详细信息

        # @param request: Request instance for DescribeModuleDetail.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeModuleDetailRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeModuleDetailResponse`
        def DescribeModuleDetail(request)
          body = send_request('DescribeModuleDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModuleDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询弹性网卡列表

        # @param request: Request instance for DescribeNetworkInterfaces.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeNetworkInterfacesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeNetworkInterfacesResponse`
        def DescribeNetworkInterfaces(request)
          body = send_request('DescribeNetworkInterfaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNetworkInterfacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取节点列表

        # @param request: Request instance for DescribeNode.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeNodeRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeNodeResponse`
        def DescribeNode(request)
          body = send_request('DescribeNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # CPU 内存 硬盘等基础信息峰值数据

        # @param request: Request instance for DescribePeakBaseOverview.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribePeakBaseOverviewRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribePeakBaseOverviewResponse`
        def DescribePeakBaseOverview(request)
          body = send_request('DescribePeakBaseOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePeakBaseOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取网络峰值数据

        # @param request: Request instance for DescribePeakNetworkOverview.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribePeakNetworkOverviewRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribePeakNetworkOverviewResponse`
        def DescribePeakNetworkOverview(request)
          body = send_request('DescribePeakNetworkOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePeakNetworkOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询子网列表

        # @param request: Request instance for DescribeSubnets.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeSubnetsRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeSubnetsResponse`
        def DescribeSubnets(request)
          body = send_request('DescribeSubnets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSubnetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询EIP异步任务执行结果

        # @param request: Request instance for DescribeTaskResult.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeTaskResultRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeTaskResultResponse`
        def DescribeTaskResult(request)
          body = send_request('DescribeTaskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询私有网络列表

        # @param request: Request instance for DescribeVpcs.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeVpcsRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeVpcsResponse`
        def DescribeVpcs(request)
          body = send_request('DescribeVpcs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVpcsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 弹性网卡解绑云主机

        # @param request: Request instance for DetachNetworkInterface.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DetachNetworkInterfaceRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DetachNetworkInterfaceResponse`
        def DetachNetworkInterface(request)
          body = send_request('DetachNetworkInterface', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetachNetworkInterfaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 解绑弹性公网IP（简称 EIP）
        # 只有状态为 BIND 和 BIND_ENI 的 EIP 才能进行解绑定操作。
        # EIP 如果被封堵，则不能进行解绑定操作。

        # @param request: Request instance for DisassociateAddress.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DisassociateAddressRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DisassociateAddressResponse`
        def DisassociateAddress(request)
          body = send_request('DisassociateAddress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisassociateAddressResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导入自定义镜像，支持 RAW、VHD、QCOW2、VMDK 镜像格式

        # @param request: Request instance for ImportCustomImage.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ImportCustomImageRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ImportCustomImageResponse`
        def ImportCustomImage(request)
          body = send_request('ImportCustomImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImportCustomImageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 从CVM产品导入镜像到ECM

        # @param request: Request instance for ImportImage.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ImportImageRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ImportImageResponse`
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

        # 弹性网卡迁移

        # @param request: Request instance for MigrateNetworkInterface.
        # @type request: :class:`Tencentcloud::ecm::V20190719::MigrateNetworkInterfaceRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::MigrateNetworkInterfaceResponse`
        def MigrateNetworkInterface(request)
          body = send_request('MigrateNetworkInterface', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = MigrateNetworkInterfaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 弹性网卡内网IP迁移。
        # 该接口用于将一个内网IP从一个弹性网卡上迁移到另外一个弹性网卡，主IP地址不支持迁移。
        # 迁移前后的弹性网卡必须在同一个子网内。

        # @param request: Request instance for MigratePrivateIpAddress.
        # @type request: :class:`Tencentcloud::ecm::V20190719::MigratePrivateIpAddressRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::MigratePrivateIpAddressResponse`
        def MigratePrivateIpAddress(request)
          body = send_request('MigratePrivateIpAddress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = MigratePrivateIpAddressResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改弹性公网IP属性

        # @param request: Request instance for ModifyAddressAttribute.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifyAddressAttributeRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifyAddressAttributeResponse`
        def ModifyAddressAttribute(request)
          body = send_request('ModifyAddressAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAddressAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 调整弹性公网IP带宽

        # @param request: Request instance for ModifyAddressesBandwidth.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifyAddressesBandwidthRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifyAddressesBandwidthResponse`
        def ModifyAddressesBandwidth(request)
          body = send_request('ModifyAddressesBandwidth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAddressesBandwidthResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改在一个可用区下创建实例时使用的默认子网（创建实例时，未填写VPC参数时使用的sunbetId）

        # @param request: Request instance for ModifyDefaultSubnet.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifyDefaultSubnetRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifyDefaultSubnetResponse`
        def ModifyDefaultSubnet(request)
          body = send_request('ModifyDefaultSubnet', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDefaultSubnetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改实例的属性。

        # @param request: Request instance for ModifyInstancesAttribute.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifyInstancesAttributeRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifyInstancesAttributeResponse`
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

        # ModifyModuleImage

        # @param request: Request instance for ModifyModuleImage.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifyModuleImageRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifyModuleImageResponse`
        def ModifyModuleImage(request)
          body = send_request('ModifyModuleImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyModuleImageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改模块名称

        # @param request: Request instance for ModifyModuleName.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifyModuleNameRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifyModuleNameResponse`
        def ModifyModuleName(request)
          body = send_request('ModifyModuleName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyModuleNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改模块默认带宽上限

        # @param request: Request instance for ModifyModuleNetwork.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifyModuleNetworkRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifyModuleNetworkResponse`
        def ModifyModuleNetwork(request)
          body = send_request('ModifyModuleNetwork', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyModuleNetworkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改子网属性

        # @param request: Request instance for ModifySubnetAttribute.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifySubnetAttributeRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifySubnetAttributeResponse`
        def ModifySubnetAttribute(request)
          body = send_request('ModifySubnetAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySubnetAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改私有网络（VPC）的相关属性

        # @param request: Request instance for ModifyVpcAttribute.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifyVpcAttributeRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifyVpcAttributeResponse`
        def ModifyVpcAttribute(request)
          body = send_request('ModifyVpcAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVpcAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 只有状态为RUNNING的实例才可以进行此操作；接口调用成功时，实例会进入REBOOTING状态；重启实例成功时，实例会进入RUNNING状态；支持强制重启，强制重启的效果等同于关闭物理计算机的电源开关再重新启动。强制重启可能会导致数据丢失或文件系统损坏，请仅在服务器不能正常重启时使用。

        # @param request: Request instance for RebootInstances.
        # @type request: :class:`Tencentcloud::ecm::V20190719::RebootInstancesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::RebootInstancesResponse`
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

        # 释放一个或多个弹性公网IP（简称 EIP）。
        # 该操作不可逆，释放后 EIP 关联的 IP 地址将不再属于您的名下。
        # 只有状态为 UNBIND 的 EIP 才能进行释放操作。

        # @param request: Request instance for ReleaseAddresses.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ReleaseAddressesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ReleaseAddressesResponse`
        def ReleaseAddresses(request)
          body = send_request('ReleaseAddresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReleaseAddressesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 弹性网卡退还内网 IP。
        # 退还弹性网卡上的辅助内网IP，接口自动解关联弹性公网 IP。不能退还弹性网卡的主内网IP。

        # @param request: Request instance for RemovePrivateIpAddresses.
        # @type request: :class:`Tencentcloud::ecm::V20190719::RemovePrivateIpAddressesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::RemovePrivateIpAddressesResponse`
        def RemovePrivateIpAddresses(request)
          body = send_request('RemovePrivateIpAddresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemovePrivateIpAddressesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重装实例，若指定了ImageId参数，则使用指定的镜像重装；否则按照当前实例使用的镜像进行重装；若未指定密码，则密码通过站内信形式随后发送。

        # @param request: Request instance for ResetInstances.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ResetInstancesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ResetInstancesResponse`
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

        # 重置实例的最大带宽上限。

        # @param request: Request instance for ResetInstancesMaxBandwidth.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ResetInstancesMaxBandwidthRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ResetInstancesMaxBandwidthResponse`
        def ResetInstancesMaxBandwidth(request)
          body = send_request('ResetInstancesMaxBandwidth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetInstancesMaxBandwidthResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重置处于运行中状态的实例的密码，需要显式指定强制关机参数ForceStop。如果没有显式指定强制关机参数，则只有处于关机状态的实例才允许执行重置密码操作。

        # @param request: Request instance for ResetInstancesPassword.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ResetInstancesPasswordRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ResetInstancesPasswordResponse`
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

        # 创建ECM实例

        # @param request: Request instance for RunInstances.
        # @type request: :class:`Tencentcloud::ecm::V20190719::RunInstancesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::RunInstancesResponse`
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

        # 只有状态为STOPPED的实例才可以进行此操作；接口调用成功时，实例会进入STARTING状态；启动实例成功时，实例会进入RUNNING状态。

        # @param request: Request instance for StartInstances.
        # @type request: :class:`Tencentcloud::ecm::V20190719::StartInstancesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::StartInstancesResponse`
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

        # 只有处于"RUNNING"状态的实例才能够进行关机操作；
        # 调用成功时，实例会进入STOPPING状态；关闭实例成功时，实例会进入STOPPED状态；
        # 支持强制关闭，强制关机的效果等同于关闭物理计算机的电源开关，强制关机可能会导致数据丢失或文件系统损坏，请仅在服务器不能正常关机时使用。

        # @param request: Request instance for StopInstances.
        # @type request: :class:`Tencentcloud::ecm::V20190719::StopInstancesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::StopInstancesResponse`
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

        # 销毁实例

        # @param request: Request instance for TerminateInstances.
        # @type request: :class:`Tencentcloud::ecm::V20190719::TerminateInstancesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::TerminateInstancesResponse`
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