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
  module Bmeip
    module V20180625
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-06-25'
            api_endpoint = 'bmeip.tencentcloudapi.com'
            sdk_version = 'BMEIP_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 此接口用于为某个 EIP 关联 ACL。

        # @param request: Request instance for BindEipAcls.
        # @type request: :class:`Tencentcloud::bmeip::V20180625::BindEipAclsRequest`
        # @rtype: :class:`Tencentcloud::bmeip::V20180625::BindEipAclsResponse`
        def BindEipAcls(request)
          body = send_request('BindEipAcls', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindEipAclsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # BindHosted接口用于绑定黑石弹性公网IP到黑石托管机器上

        # @param request: Request instance for BindHosted.
        # @type request: :class:`Tencentcloud::bmeip::V20180625::BindHostedRequest`
        # @rtype: :class:`Tencentcloud::bmeip::V20180625::BindHostedResponse`
        def BindHosted(request)
          body = send_request('BindHosted', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindHostedResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 绑定黑石EIP

        # @param request: Request instance for BindRs.
        # @type request: :class:`Tencentcloud::bmeip::V20180625::BindRsRequest`
        # @rtype: :class:`Tencentcloud::bmeip::V20180625::BindRsResponse`
        def BindRs(request)
          body = send_request('BindRs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindRsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 黑石EIP绑定VPCIP

        # @param request: Request instance for BindVpcIp.
        # @type request: :class:`Tencentcloud::bmeip::V20180625::BindVpcIpRequest`
        # @rtype: :class:`Tencentcloud::bmeip::V20180625::BindVpcIpResponse`
        def BindVpcIp(request)
          body = send_request('BindVpcIp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindVpcIpResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建黑石弹性公网IP

        # @param request: Request instance for CreateEip.
        # @type request: :class:`Tencentcloud::bmeip::V20180625::CreateEipRequest`
        # @rtype: :class:`Tencentcloud::bmeip::V20180625::CreateEipResponse`
        def CreateEip(request)
          body = send_request('CreateEip', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEipResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建黑石弹性公网 EIPACL

        # @param request: Request instance for CreateEipAcl.
        # @type request: :class:`Tencentcloud::bmeip::V20180625::CreateEipAclRequest`
        # @rtype: :class:`Tencentcloud::bmeip::V20180625::CreateEipAclResponse`
        def CreateEipAcl(request)
          body = send_request('CreateEipAcl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEipAclResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 释放黑石弹性公网IP

        # @param request: Request instance for DeleteEip.
        # @type request: :class:`Tencentcloud::bmeip::V20180625::DeleteEipRequest`
        # @rtype: :class:`Tencentcloud::bmeip::V20180625::DeleteEipResponse`
        def DeleteEip(request)
          body = send_request('DeleteEip', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEipResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除弹性公网IP ACL

        # @param request: Request instance for DeleteEipAcl.
        # @type request: :class:`Tencentcloud::bmeip::V20180625::DeleteEipAclRequest`
        # @rtype: :class:`Tencentcloud::bmeip::V20180625::DeleteEipAclResponse`
        def DeleteEipAcl(request)
          body = send_request('DeleteEipAcl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEipAclResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询弹性公网IP ACL

        # @param request: Request instance for DescribeEipAcls.
        # @type request: :class:`Tencentcloud::bmeip::V20180625::DescribeEipAclsRequest`
        # @rtype: :class:`Tencentcloud::bmeip::V20180625::DescribeEipAclsResponse`
        def DescribeEipAcls(request)
          body = send_request('DescribeEipAcls', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEipAclsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询黑石EIP 限额

        # @param request: Request instance for DescribeEipQuota.
        # @type request: :class:`Tencentcloud::bmeip::V20180625::DescribeEipQuotaRequest`
        # @rtype: :class:`Tencentcloud::bmeip::V20180625::DescribeEipQuotaResponse`
        def DescribeEipQuota(request)
          body = send_request('DescribeEipQuota', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEipQuotaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 黑石EIP查询任务状态

        # @param request: Request instance for DescribeEipTask.
        # @type request: :class:`Tencentcloud::bmeip::V20180625::DescribeEipTaskRequest`
        # @rtype: :class:`Tencentcloud::bmeip::V20180625::DescribeEipTaskResponse`
        def DescribeEipTask(request)
          body = send_request('DescribeEipTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEipTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 黑石EIP查询接口

        # @param request: Request instance for DescribeEips.
        # @type request: :class:`Tencentcloud::bmeip::V20180625::DescribeEipsRequest`
        # @rtype: :class:`Tencentcloud::bmeip::V20180625::DescribeEipsResponse`
        def DescribeEips(request)
          body = send_request('DescribeEips', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEipsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改弹性公网IP ACL

        # @param request: Request instance for ModifyEipAcl.
        # @type request: :class:`Tencentcloud::bmeip::V20180625::ModifyEipAclRequest`
        # @rtype: :class:`Tencentcloud::bmeip::V20180625::ModifyEipAclResponse`
        def ModifyEipAcl(request)
          body = send_request('ModifyEipAcl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEipAclResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 黑石EIP修改计费方式

        # @param request: Request instance for ModifyEipCharge.
        # @type request: :class:`Tencentcloud::bmeip::V20180625::ModifyEipChargeRequest`
        # @rtype: :class:`Tencentcloud::bmeip::V20180625::ModifyEipChargeResponse`
        def ModifyEipCharge(request)
          body = send_request('ModifyEipCharge', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEipChargeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新黑石EIP名称

        # @param request: Request instance for ModifyEipName.
        # @type request: :class:`Tencentcloud::bmeip::V20180625::ModifyEipNameRequest`
        # @rtype: :class:`Tencentcloud::bmeip::V20180625::ModifyEipNameResponse`
        def ModifyEipName(request)
          body = send_request('ModifyEipName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEipNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 解绑弹性公网IP ACL

        # @param request: Request instance for UnbindEipAcls.
        # @type request: :class:`Tencentcloud::bmeip::V20180625::UnbindEipAclsRequest`
        # @rtype: :class:`Tencentcloud::bmeip::V20180625::UnbindEipAclsResponse`
        def UnbindEipAcls(request)
          body = send_request('UnbindEipAcls', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindEipAclsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # UnbindHosted接口用于解绑托管机器上的EIP

        # @param request: Request instance for UnbindHosted.
        # @type request: :class:`Tencentcloud::bmeip::V20180625::UnbindHostedRequest`
        # @rtype: :class:`Tencentcloud::bmeip::V20180625::UnbindHostedResponse`
        def UnbindHosted(request)
          body = send_request('UnbindHosted', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindHostedResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 解绑黑石EIP

        # @param request: Request instance for UnbindRs.
        # @type request: :class:`Tencentcloud::bmeip::V20180625::UnbindRsRequest`
        # @rtype: :class:`Tencentcloud::bmeip::V20180625::UnbindRsResponse`
        def UnbindRs(request)
          body = send_request('UnbindRs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindRsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量解绑物理机弹性公网IP接口

        # @param request: Request instance for UnbindRsList.
        # @type request: :class:`Tencentcloud::bmeip::V20180625::UnbindRsListRequest`
        # @rtype: :class:`Tencentcloud::bmeip::V20180625::UnbindRsListResponse`
        def UnbindRsList(request)
          body = send_request('UnbindRsList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindRsListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 黑石EIP解绑VPCIP

        # @param request: Request instance for UnbindVpcIp.
        # @type request: :class:`Tencentcloud::bmeip::V20180625::UnbindVpcIpRequest`
        # @rtype: :class:`Tencentcloud::bmeip::V20180625::UnbindVpcIpResponse`
        def UnbindVpcIp(request)
          body = send_request('UnbindVpcIp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindVpcIpResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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