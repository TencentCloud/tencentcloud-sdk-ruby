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
  module Wav
    module V20210129
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-01-29'
            api_endpoint = 'wav.tencentcloudapi.com'
            sdk_version = 'WAV_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 新增渠道活码接口

        # @param request: Request instance for CreateChannelCode.
        # @type request: :class:`Tencentcloud::wav::V20210129::CreateChannelCodeRequest`
        # @rtype: :class:`Tencentcloud::wav::V20210129::CreateChannelCodeResponse`
        def CreateChannelCode(request)
          body = send_request('CreateChannelCode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateChannelCodeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用户设置标签库, 每个企业最多可配置3000个企业标签。

        # @param request: Request instance for CreateCorpTag.
        # @type request: :class:`Tencentcloud::wav::V20210129::CreateCorpTagRequest`
        # @rtype: :class:`Tencentcloud::wav::V20210129::CreateCorpTagResponse`
        def CreateCorpTag(request)
          body = send_request('CreateCorpTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCorpTagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 线索回收接口

        # @param request: Request instance for CreateLead.
        # @type request: :class:`Tencentcloud::wav::V20210129::CreateLeadRequest`
        # @rtype: :class:`Tencentcloud::wav::V20210129::CreateLeadResponse`
        def CreateLead(request)
          body = send_request('CreateLead', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLeadResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据游标拉取活动参与列表信息

        # @param request: Request instance for QueryActivityJoinList.
        # @type request: :class:`Tencentcloud::wav::V20210129::QueryActivityJoinListRequest`
        # @rtype: :class:`Tencentcloud::wav::V20210129::QueryActivityJoinListResponse`
        def QueryActivityJoinList(request)
          body = send_request('QueryActivityJoinList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryActivityJoinListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据游标拉取活动列表信息

        # @param request: Request instance for QueryActivityList.
        # @type request: :class:`Tencentcloud::wav::V20210129::QueryActivityListRequest`
        # @rtype: :class:`Tencentcloud::wav::V20210129::QueryActivityListResponse`
        def QueryActivityList(request)
          body = send_request('QueryActivityList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryActivityListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据游标拉取活动活码列表信息

        # @param request: Request instance for QueryActivityLiveCodeList.
        # @type request: :class:`Tencentcloud::wav::V20210129::QueryActivityLiveCodeListRequest`
        # @rtype: :class:`Tencentcloud::wav::V20210129::QueryActivityLiveCodeListResponse`
        def QueryActivityLiveCodeList(request)
          body = send_request('QueryActivityLiveCodeList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryActivityLiveCodeListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定时间范围内发生过到店的潜客到店信息

        # @param request: Request instance for QueryArrivalList.
        # @type request: :class:`Tencentcloud::wav::V20210129::QueryArrivalListRequest`
        # @rtype: :class:`Tencentcloud::wav::V20210129::QueryArrivalListResponse`
        def QueryArrivalList(request)
          body = send_request('QueryArrivalList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryArrivalListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据游标拉取渠道活码列表信息

        # @param request: Request instance for QueryChannelCodeList.
        # @type request: :class:`Tencentcloud::wav::V20210129::QueryChannelCodeListRequest`
        # @rtype: :class:`Tencentcloud::wav::V20210129::QueryChannelCodeListResponse`
        def QueryChannelCodeList(request)
          body = send_request('QueryChannelCodeList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryChannelCodeListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据游标拉取会话存档列表信息

        # @param request: Request instance for QueryChatArchivingList.
        # @type request: :class:`Tencentcloud::wav::V20210129::QueryChatArchivingListRequest`
        # @rtype: :class:`Tencentcloud::wav::V20210129::QueryChatArchivingListResponse`
        def QueryChatArchivingList(request)
          body = send_request('QueryChatArchivingList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryChatArchivingListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 企业可通过此接口获取线索列表。

        # @param request: Request instance for QueryClueInfoList.
        # @type request: :class:`Tencentcloud::wav::V20210129::QueryClueInfoListRequest`
        # @rtype: :class:`Tencentcloud::wav::V20210129::QueryClueInfoListResponse`
        def QueryClueInfoList(request)
          body = send_request('QueryClueInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryClueInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过接口拉取租户/指定成员/部门在指定日期范围内的CRM跟进统计数据

        # @param request: Request instance for QueryCrmStatistics.
        # @type request: :class:`Tencentcloud::wav::V20210129::QueryCrmStatisticsRequest`
        # @rtype: :class:`Tencentcloud::wav::V20210129::QueryCrmStatisticsResponse`
        def QueryCrmStatistics(request)
          body = send_request('QueryCrmStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryCrmStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过接口拉取SaaS内C端外部联系人在指定时间范围内的行为事件明细。此接口提供的数据以天为维度，查询的时间范围为[start_time,end_time]，即前后均为闭区间，支持的最大查询跨度为365天。

        # @param request: Request instance for QueryCustomerEventDetailStatistics.
        # @type request: :class:`Tencentcloud::wav::V20210129::QueryCustomerEventDetailStatisticsRequest`
        # @rtype: :class:`Tencentcloud::wav::V20210129::QueryCustomerEventDetailStatisticsResponse`
        def QueryCustomerEventDetailStatistics(request)
          body = send_request('QueryCustomerEventDetailStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryCustomerEventDetailStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过接口拉取租户已有潜客客户档案列表信息

        # @param request: Request instance for QueryCustomerProfileList.
        # @type request: :class:`Tencentcloud::wav::V20210129::QueryCustomerProfileListRequest`
        # @rtype: :class:`Tencentcloud::wav::V20210129::QueryCustomerProfileListResponse`
        def QueryCustomerProfileList(request)
          body = send_request('QueryCustomerProfileList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryCustomerProfileListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 企业可通过此接口获取录入在企微SaaS平台上的经销商信息。

        # @param request: Request instance for QueryDealerInfoList.
        # @type request: :class:`Tencentcloud::wav::V20210129::QueryDealerInfoListRequest`
        # @rtype: :class:`Tencentcloud::wav::V20210129::QueryDealerInfoListResponse`
        def QueryDealerInfoList(request)
          body = send_request('QueryDealerInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryDealerInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 企业可通过此接口，根据外部联系人的userid，拉取外部联系人详情

        # @param request: Request instance for QueryExternalContactDetail.
        # @type request: :class:`Tencentcloud::wav::V20210129::QueryExternalContactDetailRequest`
        # @rtype: :class:`Tencentcloud::wav::V20210129::QueryExternalContactDetailResponse`
        def QueryExternalContactDetail(request)
          body = send_request('QueryExternalContactDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryExternalContactDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 企业可通过传入起始和结束时间，获取该时间段的外部联系人详情列表

        # @param request: Request instance for QueryExternalContactDetailByDate.
        # @type request: :class:`Tencentcloud::wav::V20210129::QueryExternalContactDetailByDateRequest`
        # @rtype: :class:`Tencentcloud::wav::V20210129::QueryExternalContactDetailByDateResponse`
        def QueryExternalContactDetailByDate(request)
          body = send_request('QueryExternalContactDetailByDate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryExternalContactDetailByDateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 企业可通过此接口基于外部联系人获取指定成员添加的客户列表。客户是指配置了客户联系功能的成员所添加的外部联系人。没有配置客户联系功能的成员，所添加的外部联系人将不会作为客户返回。

        # @param request: Request instance for QueryExternalContactList.
        # @type request: :class:`Tencentcloud::wav::V20210129::QueryExternalContactListRequest`
        # @rtype: :class:`Tencentcloud::wav::V20210129::QueryExternalContactListResponse`
        def QueryExternalContactList(request)
          body = send_request('QueryExternalContactList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryExternalContactListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过接口拉取租户在指定时间范围内的外部联系人添加/删除明细，此接口提供的数据以天为维度，查询的时间范围为[StarTime, EndTime]，即前后均为闭区间，支持的最大查询跨度为365天；

        # @param request: Request instance for QueryExternalUserEventList.
        # @type request: :class:`Tencentcloud::wav::V20210129::QueryExternalUserEventListRequest`
        # @rtype: :class:`Tencentcloud::wav::V20210129::QueryExternalUserEventListResponse`
        def QueryExternalUserEventList(request)
          body = send_request('QueryExternalUserEventList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryExternalUserEventListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 企业可通过此接口将企业主体对应的外部联系人id转换为乐销车应用主体对应的外部联系人。

        # @param request: Request instance for QueryExternalUserMappingInfo.
        # @type request: :class:`Tencentcloud::wav::V20210129::QueryExternalUserMappingInfoRequest`
        # @rtype: :class:`Tencentcloud::wav::V20210129::QueryExternalUserMappingInfoResponse`
        def QueryExternalUserMappingInfo(request)
          body = send_request('QueryExternalUserMappingInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryExternalUserMappingInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定时间范围内发生过跟进的潜客信息

        # @param request: Request instance for QueryFollowList.
        # @type request: :class:`Tencentcloud::wav::V20210129::QueryFollowListRequest`
        # @rtype: :class:`Tencentcloud::wav::V20210129::QueryFollowListResponse`
        def QueryFollowList(request)
          body = send_request('QueryFollowList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryFollowListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口获取license对应的详细信息

        # @param request: Request instance for QueryLicenseInfo.
        # @type request: :class:`Tencentcloud::wav::V20210129::QueryLicenseInfoRequest`
        # @rtype: :class:`Tencentcloud::wav::V20210129::QueryLicenseInfoResponse`
        def QueryLicenseInfo(request)
          body = send_request('QueryLicenseInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryLicenseInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过接口按类型拉取租户当前的素材列表及关键信息

        # @param request: Request instance for QueryMaterialList.
        # @type request: :class:`Tencentcloud::wav::V20210129::QueryMaterialListRequest`
        # @rtype: :class:`Tencentcloud::wav::V20210129::QueryMaterialListResponse`
        def QueryMaterialList(request)
          body = send_request('QueryMaterialList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryMaterialListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询小程序码列表接口

        # @param request: Request instance for QueryMiniAppCodeList.
        # @type request: :class:`Tencentcloud::wav::V20210129::QueryMiniAppCodeListRequest`
        # @rtype: :class:`Tencentcloud::wav::V20210129::QueryMiniAppCodeListResponse`
        def QueryMiniAppCodeList(request)
          body = send_request('QueryMiniAppCodeList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryMiniAppCodeListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过接口拉取SaaS内企业成员在指定时间范围内的行为事件明细。此接口提供的数据以天为维度，查询的时间范围为[start_time,end_time]，即前后均为闭区间，支持的最大查询跨度为365天。

        # @param request: Request instance for QueryStaffEventDetailStatistics.
        # @type request: :class:`Tencentcloud::wav::V20210129::QueryStaffEventDetailStatisticsRequest`
        # @rtype: :class:`Tencentcloud::wav::V20210129::QueryStaffEventDetailStatisticsResponse`
        def QueryStaffEventDetailStatistics(request)
          body = send_request('QueryStaffEventDetailStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryStaffEventDetailStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询企业成员信息列表接口

        # @param request: Request instance for QueryUserInfoList.
        # @type request: :class:`Tencentcloud::wav::V20210129::QueryUserInfoListRequest`
        # @rtype: :class:`Tencentcloud::wav::V20210129::QueryUserInfoListResponse`
        def QueryUserInfoList(request)
          body = send_request('QueryUserInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryUserInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 企业可通过此接口获取企微SaaS平台上的车系车型信息。

        # @param request: Request instance for QueryVehicleInfoList.
        # @type request: :class:`Tencentcloud::wav::V20210129::QueryVehicleInfoListRequest`
        # @rtype: :class:`Tencentcloud::wav::V20210129::QueryVehicleInfoListResponse`
        def QueryVehicleInfoList(request)
          body = send_request('QueryVehicleInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryVehicleInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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