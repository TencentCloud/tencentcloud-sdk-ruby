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
  module Privatedns
    module V20201028
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-10-28'
            api_endpoint = 'privatedns.tencentcloudapi.com'
            sdk_version = 'PRIVATEDNS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 追加与私有域关联的VPC

        # @param request: Request instance for AddSpecifyPrivateZoneVpc.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::AddSpecifyPrivateZoneVpcRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::AddSpecifyPrivateZoneVpcResponse`
        def AddSpecifyPrivateZoneVpc(request)
          body = send_request('AddSpecifyPrivateZoneVpc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddSpecifyPrivateZoneVpcResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建终端节点

        # @param request: Request instance for CreateEndPoint.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::CreateEndPointRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::CreateEndPointResponse`
        def CreateEndPoint(request)
          body = send_request('CreateEndPoint', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEndPointResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 同时创建终端节点和终端节点服务

        # @param request: Request instance for CreateEndPointAndEndPointService.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::CreateEndPointAndEndPointServiceRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::CreateEndPointAndEndPointServiceResponse`
        def CreateEndPointAndEndPointService(request)
          body = send_request('CreateEndPointAndEndPointService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEndPointAndEndPointServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建自定义转发规则

        # @param request: Request instance for CreateForwardRule.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::CreateForwardRuleRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::CreateForwardRuleResponse`
        def CreateForwardRule(request)
          body = send_request('CreateForwardRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateForwardRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建私有域解析账号

        # @param request: Request instance for CreatePrivateDNSAccount.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::CreatePrivateDNSAccountRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::CreatePrivateDNSAccountResponse`
        def CreatePrivateDNSAccount(request)
          body = send_request('CreatePrivateDNSAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePrivateDNSAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建私有域

        # @param request: Request instance for CreatePrivateZone.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::CreatePrivateZoneRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::CreatePrivateZoneResponse`
        def CreatePrivateZone(request)
          body = send_request('CreatePrivateZone', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePrivateZoneResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加私有域解析记录

        # @param request: Request instance for CreatePrivateZoneRecord.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::CreatePrivateZoneRecordRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::CreatePrivateZoneRecordResponse`
        def CreatePrivateZoneRecord(request)
          body = send_request('CreatePrivateZoneRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePrivateZoneRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除终端节点

        # @param request: Request instance for DeleteEndPoint.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::DeleteEndPointRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::DeleteEndPointResponse`
        def DeleteEndPoint(request)
          body = send_request('DeleteEndPoint', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEndPointResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除转发规则并停止转发

        # @param request: Request instance for DeleteForwardRule.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::DeleteForwardRuleRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::DeleteForwardRuleResponse`
        def DeleteForwardRule(request)
          body = send_request('DeleteForwardRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteForwardRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除私有域解析账号

        # @param request: Request instance for DeletePrivateDNSAccount.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::DeletePrivateDNSAccountRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::DeletePrivateDNSAccountResponse`
        def DeletePrivateDNSAccount(request)
          body = send_request('DeletePrivateDNSAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePrivateDNSAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除私有域并停止解析

        # @param request: Request instance for DeletePrivateZone.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::DeletePrivateZoneRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::DeletePrivateZoneResponse`
        def DeletePrivateZone(request)
          body = send_request('DeletePrivateZone', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePrivateZoneResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除私有域解析记录

        # @param request: Request instance for DeletePrivateZoneRecord.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::DeletePrivateZoneRecordRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::DeletePrivateZoneRecordResponse`
        def DeletePrivateZoneRecord(request)
          body = send_request('DeletePrivateZoneRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePrivateZoneRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除与私有域关联的VPC

        # @param request: Request instance for DeleteSpecifyPrivateZoneVpc.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::DeleteSpecifyPrivateZoneVpcRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::DeleteSpecifyPrivateZoneVpcResponse`
        def DeleteSpecifyPrivateZoneVpc(request)
          body = send_request('DeleteSpecifyPrivateZoneVpc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSpecifyPrivateZoneVpcResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取私有域解析账号的VPC列表

        # @param request: Request instance for DescribeAccountVpcList.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::DescribeAccountVpcListRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::DescribeAccountVpcListResponse`
        def DescribeAccountVpcList(request)
          body = send_request('DescribeAccountVpcList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccountVpcListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取操作日志列表

        # @param request: Request instance for DescribeAuditLog.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::DescribeAuditLogRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::DescribeAuditLogResponse`
        def DescribeAuditLog(request)
          body = send_request('DescribeAuditLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAuditLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取私有域解析概览

        # @param request: Request instance for DescribeDashboard.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::DescribeDashboardRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::DescribeDashboardResponse`
        def DescribeDashboard(request)
          body = send_request('DescribeDashboard', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDashboardResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取终端节点列表

        # @param request: Request instance for DescribeEndPointList.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::DescribeEndPointListRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::DescribeEndPointListResponse`
        def DescribeEndPointList(request)
          body = send_request('DescribeEndPointList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEndPointListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询终端节点已经启用了的地域

        # @param request: Request instance for DescribeEndPointRegion.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::DescribeEndPointRegionRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::DescribeEndPointRegionResponse`
        def DescribeEndPointRegion(request)
          body = send_request('DescribeEndPointRegion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEndPointRegionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询转发规则

        # @param request: Request instance for DescribeForwardRule.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::DescribeForwardRuleRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::DescribeForwardRuleResponse`
        def DescribeForwardRule(request)
          body = send_request('DescribeForwardRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeForwardRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询转发规则列表

        # @param request: Request instance for DescribeForwardRuleList.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::DescribeForwardRuleListRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::DescribeForwardRuleListResponse`
        def DescribeForwardRuleList(request)
          body = send_request('DescribeForwardRuleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeForwardRuleListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取私有域解析账号列表

        # @param request: Request instance for DescribePrivateDNSAccountList.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::DescribePrivateDNSAccountListRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::DescribePrivateDNSAccountListResponse`
        def DescribePrivateDNSAccountList(request)
          body = send_request('DescribePrivateDNSAccountList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrivateDNSAccountListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取私有域信息

        # @param request: Request instance for DescribePrivateZone.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::DescribePrivateZoneRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::DescribePrivateZoneResponse`
        def DescribePrivateZone(request)
          body = send_request('DescribePrivateZone', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrivateZoneResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取私有域列表

        # @param request: Request instance for DescribePrivateZoneList.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::DescribePrivateZoneListRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::DescribePrivateZoneListResponse`
        def DescribePrivateZoneList(request)
          body = send_request('DescribePrivateZoneList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrivateZoneListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取私有域记录列表

        # @param request: Request instance for DescribePrivateZoneRecordList.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::DescribePrivateZoneRecordListRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::DescribePrivateZoneRecordListResponse`
        def DescribePrivateZoneRecordList(request)
          body = send_request('DescribePrivateZoneRecordList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrivateZoneRecordListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询私有域解析开通状态

        # @param request: Request instance for DescribePrivateZoneService.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::DescribePrivateZoneServiceRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::DescribePrivateZoneServiceResponse`
        def DescribePrivateZoneService(request)
          body = send_request('DescribePrivateZoneService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrivateZoneServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询额度使用情况

        # @param request: Request instance for DescribeQuotaUsage.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::DescribeQuotaUsageRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::DescribeQuotaUsageResponse`
        def DescribeQuotaUsage(request)
          body = send_request('DescribeQuotaUsage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeQuotaUsageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取私有域解析请求量

        # @param request: Request instance for DescribeRequestData.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::DescribeRequestDataRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::DescribeRequestDataResponse`
        def DescribeRequestData(request)
          body = send_request('DescribeRequestData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRequestDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改转发规则

        # @param request: Request instance for ModifyForwardRule.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::ModifyForwardRuleRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::ModifyForwardRuleResponse`
        def ModifyForwardRule(request)
          body = send_request('ModifyForwardRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyForwardRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改私有域信息

        # @param request: Request instance for ModifyPrivateZone.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::ModifyPrivateZoneRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::ModifyPrivateZoneResponse`
        def ModifyPrivateZone(request)
          body = send_request('ModifyPrivateZone', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPrivateZoneResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改私有域解析记录

        # @param request: Request instance for ModifyPrivateZoneRecord.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::ModifyPrivateZoneRecordRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::ModifyPrivateZoneRecordResponse`
        def ModifyPrivateZoneRecord(request)
          body = send_request('ModifyPrivateZoneRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPrivateZoneRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改私有域关联的VPC

        # @param request: Request instance for ModifyPrivateZoneVpc.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::ModifyPrivateZoneVpcRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::ModifyPrivateZoneVpcResponse`
        def ModifyPrivateZoneVpc(request)
          body = send_request('ModifyPrivateZoneVpc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPrivateZoneVpcResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改解析记录状态

        # @param request: Request instance for ModifyRecordsStatus.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::ModifyRecordsStatusRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::ModifyRecordsStatusResponse`
        def ModifyRecordsStatus(request)
          body = send_request('ModifyRecordsStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRecordsStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询异步绑定vpc操作状态

        # @param request: Request instance for QueryAsyncBindVpcStatus.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::QueryAsyncBindVpcStatusRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::QueryAsyncBindVpcStatusResponse`
        def QueryAsyncBindVpcStatus(request)
          body = send_request('QueryAsyncBindVpcStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryAsyncBindVpcStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开通私有域解析

        # @param request: Request instance for SubscribePrivateZoneService.
        # @type request: :class:`Tencentcloud::privatedns::V20201028::SubscribePrivateZoneServiceRequest`
        # @rtype: :class:`Tencentcloud::privatedns::V20201028::SubscribePrivateZoneServiceResponse`
        def SubscribePrivateZoneService(request)
          body = send_request('SubscribePrivateZoneService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubscribePrivateZoneServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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