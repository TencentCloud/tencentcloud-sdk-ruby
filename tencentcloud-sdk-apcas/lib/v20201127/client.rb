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
  module Apcas
    module V20201127
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2020-11-27'
        @@endpoint = 'apcas.tencentcloudapi.com'
        @@sdk_version = 'APCAS_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 查询画像洞察任务详情

        # @param request: Request instance for GetTaskDetail.
        # @type request: :class:`Tencentcloud::apcas::V20201127::GetTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::apcas::V20201127::GetTaskDetailResponse`
        def GetTaskDetail(request)
          body = send_request('GetTaskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTaskDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询当前账号AppID下的画像洞察任务列表

        # @param request: Request instance for GetTaskList.
        # @type request: :class:`Tencentcloud::apcas::V20201127::GetTaskListRequest`
        # @rtype: :class:`Tencentcloud::apcas::V20201127::GetTaskListResponse`
        def GetTaskList(request)
          body = send_request('GetTaskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTaskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据传入的设备号（IMEI、IDFA、手机号、手机号MD5），返回意向评级结果

        # @param request: Request instance for PredictRating.
        # @type request: :class:`Tencentcloud::apcas::V20201127::PredictRatingRequest`
        # @rtype: :class:`Tencentcloud::apcas::V20201127::PredictRatingResponse`
        def PredictRating(request)
          body = send_request('PredictRating', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PredictRatingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询调用明细

        # @param request: Request instance for QueryCallDetails.
        # @type request: :class:`Tencentcloud::apcas::V20201127::QueryCallDetailsRequest`
        # @rtype: :class:`Tencentcloud::apcas::V20201127::QueryCallDetailsResponse`
        def QueryCallDetails(request)
          body = send_request('QueryCallDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryCallDetailsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按时间维度获取调用量统计

        # @param request: Request instance for QueryCallStat.
        # @type request: :class:`Tencentcloud::apcas::V20201127::QueryCallStatRequest`
        # @rtype: :class:`Tencentcloud::apcas::V20201127::QueryCallStatResponse`
        def QueryCallStat(request)
          body = send_request('QueryCallStat', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryCallStatResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取日/月/周/总调用量统计数据

        # @param request: Request instance for QueryGeneralStat.
        # @type request: :class:`Tencentcloud::apcas::V20201127::QueryGeneralStatRequest`
        # @rtype: :class:`Tencentcloud::apcas::V20201127::QueryGeneralStatResponse`
        def QueryGeneralStat(request)
          body = send_request('QueryGeneralStat', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryGeneralStatResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 上传群体画像的ID列表（支持的ID类型：0:imei 7:IDFA 8:MD5(imei)），后台返回生成的画像分析任务ID

        # @param request: Request instance for UploadId.
        # @type request: :class:`Tencentcloud::apcas::V20201127::UploadIdRequest`
        # @rtype: :class:`Tencentcloud::apcas::V20201127::UploadIdResponse`
        def UploadId(request)
          body = send_request('UploadId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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