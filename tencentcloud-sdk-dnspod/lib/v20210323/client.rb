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
  module Dnspod
    module V20210323
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-03-23'
            api_endpoint = 'dnspod.tencentcloudapi.com'
            sdk_version = 'DNSPOD_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 回滚前检查单条记录

        # @param request: Request instance for CheckRecordSnapshotRollback.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::CheckRecordSnapshotRollbackRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::CheckRecordSnapshotRollbackResponse`
        def CheckRecordSnapshotRollback(request)
          body = send_request('CheckRecordSnapshotRollback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckRecordSnapshotRollbackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 快照回滚前检查

        # @param request: Request instance for CheckSnapshotRollback.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::CheckSnapshotRollbackRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::CheckSnapshotRollbackResponse`
        def CheckSnapshotRollback(request)
          body = send_request('CheckSnapshotRollback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckSnapshotRollbackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DNSPod商品下单

        # @param request: Request instance for CreateDeal.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::CreateDealRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::CreateDealResponse`
        def CreateDeal(request)
          body = send_request('CreateDeal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDealResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加域名

        # @param request: Request instance for CreateDomain.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::CreateDomainRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::CreateDomainResponse`
        def CreateDomain(request)
          body = send_request('CreateDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建域名别名

        # @param request: Request instance for CreateDomainAlias.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::CreateDomainAliasRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::CreateDomainAliasResponse`
        def CreateDomainAlias(request)
          body = send_request('CreateDomainAlias', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDomainAliasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量添加域名

        # @param request: Request instance for CreateDomainBatch.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::CreateDomainBatchRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::CreateDomainBatchResponse`
        def CreateDomainBatch(request)
          body = send_request('CreateDomainBatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDomainBatchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建域名分组

        # @param request: Request instance for CreateDomainGroup.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::CreateDomainGroupRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::CreateDomainGroupResponse`
        def CreateDomainGroup(request)
          body = send_request('CreateDomainGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDomainGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加记录

        # @param request: Request instance for CreateRecord.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::CreateRecordRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::CreateRecordResponse`
        def CreateRecord(request)
          body = send_request('CreateRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量添加记录

        # @param request: Request instance for CreateRecordBatch.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::CreateRecordBatchRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::CreateRecordBatchResponse`
        def CreateRecordBatch(request)
          body = send_request('CreateRecordBatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRecordBatchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加记录分组

        # @param request: Request instance for CreateRecordGroup.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::CreateRecordGroupRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::CreateRecordGroupResponse`
        def CreateRecordGroup(request)
          body = send_request('CreateRecordGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRecordGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建快照

        # @param request: Request instance for CreateSnapshot.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::CreateSnapshotRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::CreateSnapshotResponse`
        def CreateSnapshot(request)
          body = send_request('CreateSnapshot', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSnapshotResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除域名

        # @param request: Request instance for DeleteDomain.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DeleteDomainRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DeleteDomainResponse`
        def DeleteDomain(request)
          body = send_request('DeleteDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除域名别名

        # @param request: Request instance for DeleteDomainAlias.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DeleteDomainAliasRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DeleteDomainAliasResponse`
        def DeleteDomainAlias(request)
          body = send_request('DeleteDomainAlias', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDomainAliasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量删除域名

        # @param request: Request instance for DeleteDomainBatch.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DeleteDomainBatchRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DeleteDomainBatchResponse`
        def DeleteDomainBatch(request)
          body = send_request('DeleteDomainBatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDomainBatchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除记录

        # @param request: Request instance for DeleteRecord.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DeleteRecordRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DeleteRecordResponse`
        def DeleteRecord(request)
          body = send_request('DeleteRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除记录分组

        # @param request: Request instance for DeleteRecordGroup.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DeleteRecordGroupRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DeleteRecordGroupResponse`
        def DeleteRecordGroup(request)
          body = send_request('DeleteRecordGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRecordGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除域名共享

        # @param request: Request instance for DeleteShareDomain.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DeleteShareDomainRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DeleteShareDomainResponse`
        def DeleteShareDomain(request)
          body = send_request('DeleteShareDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteShareDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除快照

        # @param request: Request instance for DeleteSnapshot.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DeleteSnapshotRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DeleteSnapshotResponse`
        def DeleteSnapshot(request)
          body = send_request('DeleteSnapshot', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSnapshotResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取任务详情

        # @param request: Request instance for DescribeBatchTask.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DescribeBatchTaskRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DescribeBatchTaskResponse`
        def DescribeBatchTask(request)
          body = send_request('DescribeBatchTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBatchTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取域名信息

        # @param request: Request instance for DescribeDomain.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DescribeDomainRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DescribeDomainResponse`
        def DescribeDomain(request)
          body = send_request('DescribeDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取域名别名列表

        # @param request: Request instance for DescribeDomainAliasList.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DescribeDomainAliasListRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DescribeDomainAliasListResponse`
        def DescribeDomainAliasList(request)
          body = send_request('DescribeDomainAliasList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainAliasListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 统计各个域名的解析量，帮助您了解流量情况、时间段分布。支持查看近 3 个月内的统计情况

        # @param request: Request instance for DescribeDomainAnalytics.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DescribeDomainAnalyticsRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DescribeDomainAnalyticsResponse`
        def DescribeDomainAnalytics(request)
          body = send_request('DescribeDomainAnalytics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainAnalyticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取域名分组列表

        # @param request: Request instance for DescribeDomainGroupList.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DescribeDomainGroupListRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DescribeDomainGroupListResponse`
        def DescribeDomainGroupList(request)
          body = send_request('DescribeDomainGroupList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainGroupListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取域名列表

        # @param request: Request instance for DescribeDomainList.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DescribeDomainListRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DescribeDomainListResponse`
        def DescribeDomainList(request)
          body = send_request('DescribeDomainList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取域名日志

        # @param request: Request instance for DescribeDomainLogList.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DescribeDomainLogListRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DescribeDomainLogListResponse`
        def DescribeDomainLogList(request)
          body = send_request('DescribeDomainLogList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainLogListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取域名概览信息

        # @param request: Request instance for DescribeDomainPreview.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DescribeDomainPreviewRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DescribeDomainPreviewResponse`
        def DescribeDomainPreview(request)
          body = send_request('DescribeDomainPreview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainPreviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取域名权限

        # @param request: Request instance for DescribeDomainPurview.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DescribeDomainPurviewRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DescribeDomainPurviewResponse`
        def DescribeDomainPurview(request)
          body = send_request('DescribeDomainPurview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainPurviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取域名共享信息

        # @param request: Request instance for DescribeDomainShareInfo.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DescribeDomainShareInfoRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DescribeDomainShareInfoResponse`
        def DescribeDomainShareInfo(request)
          body = send_request('DescribeDomainShareInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainShareInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取域名Whois信息

        # @param request: Request instance for DescribeDomainWhois.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DescribeDomainWhoisRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DescribeDomainWhoisResponse`
        def DescribeDomainWhois(request)
          body = send_request('DescribeDomainWhois', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainWhoisResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取各套餐配置详情

        # @param request: Request instance for DescribePackageDetail.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DescribePackageDetailRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DescribePackageDetailResponse`
        def DescribePackageDetail(request)
          body = send_request('DescribePackageDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePackageDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取记录信息

        # @param request: Request instance for DescribeRecord.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DescribeRecordRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DescribeRecordResponse`
        def DescribeRecord(request)
          body = send_request('DescribeRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 判断是否有除系统默认的@-NS记录之外的记录存在

        # @param request: Request instance for DescribeRecordExistExceptDefaultNS.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DescribeRecordExistExceptDefaultNSRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DescribeRecordExistExceptDefaultNSResponse`
        def DescribeRecordExistExceptDefaultNS(request)
          body = send_request('DescribeRecordExistExceptDefaultNS', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRecordExistExceptDefaultNSResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询解析记录分组列表

        # @param request: Request instance for DescribeRecordGroupList.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DescribeRecordGroupListRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DescribeRecordGroupListResponse`
        def DescribeRecordGroupList(request)
          body = send_request('DescribeRecordGroupList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRecordGroupListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取等级允许的线路

        # @param request: Request instance for DescribeRecordLineList.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DescribeRecordLineListRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DescribeRecordLineListResponse`
        def DescribeRecordLineList(request)
          body = send_request('DescribeRecordLineList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRecordLineListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取某个域名下的解析记录列表

        # @param request: Request instance for DescribeRecordList.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DescribeRecordListRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DescribeRecordListResponse`
        def DescribeRecordList(request)
          body = send_request('DescribeRecordList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRecordListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询解析记录重新回滚的结果

        # @param request: Request instance for DescribeRecordSnapshotRollbackResult.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DescribeRecordSnapshotRollbackResultRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DescribeRecordSnapshotRollbackResultResponse`
        def DescribeRecordSnapshotRollbackResult(request)
          body = send_request('DescribeRecordSnapshotRollbackResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRecordSnapshotRollbackResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取等级允许的记录类型

        # @param request: Request instance for DescribeRecordType.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DescribeRecordTypeRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DescribeRecordTypeResponse`
        def DescribeRecordType(request)
          body = send_request('DescribeRecordType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRecordTypeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询解析快照配置

        # @param request: Request instance for DescribeSnapshotConfig.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DescribeSnapshotConfigRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DescribeSnapshotConfigResponse`
        def DescribeSnapshotConfig(request)
          body = send_request('DescribeSnapshotConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSnapshotConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询快照列表

        # @param request: Request instance for DescribeSnapshotList.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DescribeSnapshotListRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DescribeSnapshotListResponse`
        def DescribeSnapshotList(request)
          body = send_request('DescribeSnapshotList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSnapshotListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询快照回滚结果

        # @param request: Request instance for DescribeSnapshotRollbackResult.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DescribeSnapshotRollbackResultRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DescribeSnapshotRollbackResultResponse`
        def DescribeSnapshotRollbackResult(request)
          body = send_request('DescribeSnapshotRollbackResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSnapshotRollbackResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询最近一次回滚

        # @param request: Request instance for DescribeSnapshotRollbackTask.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DescribeSnapshotRollbackTaskRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DescribeSnapshotRollbackTaskResponse`
        def DescribeSnapshotRollbackTask(request)
          body = send_request('DescribeSnapshotRollbackTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSnapshotRollbackTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 统计子域名的解析量，帮助您了解流量情况、时间段分布。支持查看近 3 个月内的统计情况。仅付费套餐域名可用。

        # @param request: Request instance for DescribeSubdomainAnalytics.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DescribeSubdomainAnalyticsRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DescribeSubdomainAnalyticsResponse`
        def DescribeSubdomainAnalytics(request)
          body = send_request('DescribeSubdomainAnalytics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSubdomainAnalyticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取帐户信息

        # @param request: Request instance for DescribeUserDetail.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DescribeUserDetailRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DescribeUserDetailResponse`
        def DescribeUserDetail(request)
          body = send_request('DescribeUserDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取域名增值服务用量

        # @param request: Request instance for DescribeVASStatistic.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DescribeVASStatisticRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DescribeVASStatisticResponse`
        def DescribeVASStatistic(request)
          body = send_request('DescribeVASStatistic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVASStatisticResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 下载快照

        # @param request: Request instance for DownloadSnapshot.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::DownloadSnapshotRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::DownloadSnapshotResponse`
        def DownloadSnapshot(request)
          body = send_request('DownloadSnapshot', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DownloadSnapshotResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 锁定域名

        # @param request: Request instance for ModifyDomainLock.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::ModifyDomainLockRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::ModifyDomainLockResponse`
        def ModifyDomainLock(request)
          body = send_request('ModifyDomainLock', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDomainLockResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 域名过户

        # @param request: Request instance for ModifyDomainOwner.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::ModifyDomainOwnerRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::ModifyDomainOwnerResponse`
        def ModifyDomainOwner(request)
          body = send_request('ModifyDomainOwner', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDomainOwnerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置域名备注

        # @param request: Request instance for ModifyDomainRemark.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::ModifyDomainRemarkRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::ModifyDomainRemarkResponse`
        def ModifyDomainRemark(request)
          body = send_request('ModifyDomainRemark', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDomainRemarkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改域名状态

        # @param request: Request instance for ModifyDomainStatus.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::ModifyDomainStatusRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::ModifyDomainStatusResponse`
        def ModifyDomainStatus(request)
          body = send_request('ModifyDomainStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDomainStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 域名锁定解锁

        # @param request: Request instance for ModifyDomainUnlock.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::ModifyDomainUnlockRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::ModifyDomainUnlockResponse`
        def ModifyDomainUnlock(request)
          body = send_request('ModifyDomainUnlock', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDomainUnlockResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新动态 DNS 记录

        # @param request: Request instance for ModifyDynamicDNS.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::ModifyDynamicDNSRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::ModifyDynamicDNSResponse`
        def ModifyDynamicDNS(request)
          body = send_request('ModifyDynamicDNS', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDynamicDNSResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DNS 解析套餐自动续费设置

        # @param request: Request instance for ModifyPackageAutoRenew.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::ModifyPackageAutoRenewRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::ModifyPackageAutoRenewResponse`
        def ModifyPackageAutoRenew(request)
          body = send_request('ModifyPackageAutoRenew', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPackageAutoRenewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改记录

        # @param request: Request instance for ModifyRecord.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::ModifyRecordRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::ModifyRecordResponse`
        def ModifyRecord(request)
          body = send_request('ModifyRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量修改记录

        # @param request: Request instance for ModifyRecordBatch.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::ModifyRecordBatchRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::ModifyRecordBatchResponse`
        def ModifyRecordBatch(request)
          body = send_request('ModifyRecordBatch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRecordBatchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改记录可选字段

        # @param request: Request instance for ModifyRecordFields.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::ModifyRecordFieldsRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::ModifyRecordFieldsResponse`
        def ModifyRecordFields(request)
          body = send_request('ModifyRecordFields', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRecordFieldsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改记录分组

        # @param request: Request instance for ModifyRecordGroup.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::ModifyRecordGroupRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::ModifyRecordGroupResponse`
        def ModifyRecordGroup(request)
          body = send_request('ModifyRecordGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRecordGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置记录备注

        # @param request: Request instance for ModifyRecordRemark.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::ModifyRecordRemarkRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::ModifyRecordRemarkResponse`
        def ModifyRecordRemark(request)
          body = send_request('ModifyRecordRemark', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRecordRemarkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改解析记录的状态

        # @param request: Request instance for ModifyRecordStatus.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::ModifyRecordStatusRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::ModifyRecordStatusResponse`
        def ModifyRecordStatus(request)
          body = send_request('ModifyRecordStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRecordStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 将记录添加到分组

        # @param request: Request instance for ModifyRecordToGroup.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::ModifyRecordToGroupRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::ModifyRecordToGroupResponse`
        def ModifyRecordToGroup(request)
          body = send_request('ModifyRecordToGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRecordToGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改快照配置

        # @param request: Request instance for ModifySnapshotConfig.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::ModifySnapshotConfigRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::ModifySnapshotConfigResponse`
        def ModifySnapshotConfig(request)
          body = send_request('ModifySnapshotConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySnapshotConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 暂停子域名的解析记录

        # @param request: Request instance for ModifySubdomainStatus.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::ModifySubdomainStatusRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::ModifySubdomainStatusResponse`
        def ModifySubdomainStatus(request)
          body = send_request('ModifySubdomainStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySubdomainStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 增值服务自动续费设置

        # @param request: Request instance for ModifyVasAutoRenewStatus.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::ModifyVasAutoRenewStatusRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::ModifyVasAutoRenewStatusResponse`
        def ModifyVasAutoRenewStatus(request)
          body = send_request('ModifyVasAutoRenewStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVasAutoRenewStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DNSPod商品余额支付

        # @param request: Request instance for PayOrderWithBalance.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::PayOrderWithBalanceRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::PayOrderWithBalanceResponse`
        def PayOrderWithBalance(request)
          body = send_request('PayOrderWithBalance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PayOrderWithBalanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重新回滚指定解析记录快照

        # @param request: Request instance for RollbackRecordSnapshot.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::RollbackRecordSnapshotRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::RollbackRecordSnapshotResponse`
        def RollbackRecordSnapshot(request)
          body = send_request('RollbackRecordSnapshot', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RollbackRecordSnapshotResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 回滚快照

        # @param request: Request instance for RollbackSnapshot.
        # @type request: :class:`Tencentcloud::dnspod::V20210323::RollbackSnapshotRequest`
        # @rtype: :class:`Tencentcloud::dnspod::V20210323::RollbackSnapshotResponse`
        def RollbackSnapshot(request)
          body = send_request('RollbackSnapshot', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RollbackSnapshotResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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