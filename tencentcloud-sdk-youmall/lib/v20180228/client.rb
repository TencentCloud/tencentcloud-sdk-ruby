# frozen_string_literal: true

# Copyright (c) 2017-2025 Tencent. All Rights Reserved.
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
  module Youmall
    module V20180228
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-02-28'
            api_endpoint = 'youmall.tencentcloudapi.com'
            sdk_version = 'YOUMALL_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建集团门店管理员账号

        # @param request: Request instance for CreateAccount.
        # @type request: :class:`Tencentcloud::youmall::V20180228::CreateAccountRequest`
        # @rtype: :class:`Tencentcloud::youmall::V20180228::CreateAccountResponse`
        def CreateAccount(request)
          body = send_request('CreateAccount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAccountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过上传指定规格的人脸图片，创建黑名单用户或者白名单用户。

        # @param request: Request instance for CreateFacePicture.
        # @type request: :class:`Tencentcloud::youmall::V20180228::CreateFacePictureRequest`
        # @rtype: :class:`Tencentcloud::youmall::V20180228::CreateFacePictureResponse`
        def CreateFacePicture(request)
          body = send_request('CreateFacePicture', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFacePictureResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除顾客特征，仅支持删除黑名单或者白名单用户特征。

        # @param request: Request instance for DeletePersonFeature.
        # @type request: :class:`Tencentcloud::youmall::V20180228::DeletePersonFeatureRequest`
        # @rtype: :class:`Tencentcloud::youmall::V20180228::DeletePersonFeatureResponse`
        def DeletePersonFeature(request)
          body = send_request('DeletePersonFeature', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePersonFeatureResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过指定设备ID和指定时段，获取该时段内中收银台摄像设备抓取到顾客头像及身份ID

        # @param request: Request instance for DescribeCameraPerson.
        # @type request: :class:`Tencentcloud::youmall::V20180228::DescribeCameraPersonRequest`
        # @rtype: :class:`Tencentcloud::youmall::V20180228::DescribeCameraPersonResponse`
        def DescribeCameraPerson(request)
          body = send_request('DescribeCameraPerson', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCameraPersonResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 输出开始时间到结束时间段内的进出场数据。按天聚合的情况下，每天多次进出场算一次，以最初进场时间为进场时间，最后离场时间为离场时间。停留时间为多次进出场的停留时间之和。

        # @param request: Request instance for DescribeClusterPersonArrivedMall.
        # @type request: :class:`Tencentcloud::youmall::V20180228::DescribeClusterPersonArrivedMallRequest`
        # @rtype: :class:`Tencentcloud::youmall::V20180228::DescribeClusterPersonArrivedMallResponse`
        def DescribeClusterPersonArrivedMall(request)
          body = send_request('DescribeClusterPersonArrivedMall', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterPersonArrivedMallResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 输出开始时间到结束时间段内的进出场数据。按天聚合的情况下，每天多次进出场算一次，以最初进场时间为进场时间，最后离场时间为离场时间。

        # @param request: Request instance for DescribeClusterPersonTrace.
        # @type request: :class:`Tencentcloud::youmall::V20180228::DescribeClusterPersonTraceRequest`
        # @rtype: :class:`Tencentcloud::youmall::V20180228::DescribeClusterPersonTraceResponse`
        def DescribeClusterPersonTrace(request)
          body = send_request('DescribeClusterPersonTrace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterPersonTraceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过DescribeCameraPerson接口上报的收银台身份ID查询顾客的FaceID。查询最佳时间为收银台上报的次日1点后。

        # @param request: Request instance for DescribeFaceIdByTempId.
        # @type request: :class:`Tencentcloud::youmall::V20180228::DescribeFaceIdByTempIdRequest`
        # @rtype: :class:`Tencentcloud::youmall::V20180228::DescribeFaceIdByTempIdResponse`
        def DescribeFaceIdByTempId(request)
          body = send_request('DescribeFaceIdByTempId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFaceIdByTempIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 返回当前门店历史网络状态数据

        # @param request: Request instance for DescribeHistoryNetworkInfo.
        # @type request: :class:`Tencentcloud::youmall::V20180228::DescribeHistoryNetworkInfoRequest`
        # @rtype: :class:`Tencentcloud::youmall::V20180228::DescribeHistoryNetworkInfoResponse`
        def DescribeHistoryNetworkInfo(request)
          body = send_request('DescribeHistoryNetworkInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHistoryNetworkInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 返回当前门店最新网络状态数据

        # @param request: Request instance for DescribeNetworkInfo.
        # @type request: :class:`Tencentcloud::youmall::V20180228::DescribeNetworkInfoRequest`
        # @rtype: :class:`Tencentcloud::youmall::V20180228::DescribeNetworkInfoResponse`
        def DescribeNetworkInfo(request)
          body = send_request('DescribeNetworkInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNetworkInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定某一卖场的用户信息

        # @param request: Request instance for DescribePerson.
        # @type request: :class:`Tencentcloud::youmall::V20180228::DescribePersonRequest`
        # @rtype: :class:`Tencentcloud::youmall::V20180228::DescribePersonResponse`
        def DescribePerson(request)
          body = send_request('DescribePerson', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePersonResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 输出开始时间到结束时间段内的进出场数据。不做按天聚合的情况下，每次进出场，产生一条进出场数据。


        # @param request: Request instance for DescribePersonArrivedMall.
        # @type request: :class:`Tencentcloud::youmall::V20180228::DescribePersonArrivedMallRequest`
        # @rtype: :class:`Tencentcloud::youmall::V20180228::DescribePersonArrivedMallResponse`
        def DescribePersonArrivedMall(request)
          body = send_request('DescribePersonArrivedMall', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePersonArrivedMallResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 指定门店获取所有顾客详情列表，包含客户ID、图片、年龄、性别

        # @param request: Request instance for DescribePersonInfo.
        # @type request: :class:`Tencentcloud::youmall::V20180228::DescribePersonInfoRequest`
        # @rtype: :class:`Tencentcloud::youmall::V20180228::DescribePersonInfoResponse`
        def DescribePersonInfo(request)
          body = send_request('DescribePersonInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePersonInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过上传人脸图片检索系统face id、顾客身份信息及底图

        # @param request: Request instance for DescribePersonInfoByFacePicture.
        # @type request: :class:`Tencentcloud::youmall::V20180228::DescribePersonInfoByFacePictureRequest`
        # @rtype: :class:`Tencentcloud::youmall::V20180228::DescribePersonInfoByFacePictureResponse`
        def DescribePersonInfoByFacePicture(request)
          body = send_request('DescribePersonInfoByFacePicture', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePersonInfoByFacePictureResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 输出开始时间到结束时间段内的进出场数据。

        # @param request: Request instance for DescribePersonTrace.
        # @type request: :class:`Tencentcloud::youmall::V20180228::DescribePersonTraceRequest`
        # @rtype: :class:`Tencentcloud::youmall::V20180228::DescribePersonTraceResponse`
        def DescribePersonTrace(request)
          body = send_request('DescribePersonTrace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePersonTraceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询客户单次到场轨迹明细

        # @param request: Request instance for DescribePersonTraceDetail.
        # @type request: :class:`Tencentcloud::youmall::V20180228::DescribePersonTraceDetailRequest`
        # @rtype: :class:`Tencentcloud::youmall::V20180228::DescribePersonTraceDetailResponse`
        def DescribePersonTraceDetail(request)
          body = send_request('DescribePersonTraceDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePersonTraceDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取门店指定时间范围内的所有用户到访信息记录，支持的时间范围：过去365天，含当天。

        # @param request: Request instance for DescribePersonVisitInfo.
        # @type request: :class:`Tencentcloud::youmall::V20180228::DescribePersonVisitInfoRequest`
        # @rtype: :class:`Tencentcloud::youmall::V20180228::DescribePersonVisitInfoResponse`
        def DescribePersonVisitInfo(request)
          body = send_request('DescribePersonVisitInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePersonVisitInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按小时提供查询日期范围内门店的每天每小时累计客流人数数据，支持的时间范围：过去365天，含当天。

        # @param request: Request instance for DescribeShopHourTrafficInfo.
        # @type request: :class:`Tencentcloud::youmall::V20180228::DescribeShopHourTrafficInfoRequest`
        # @rtype: :class:`Tencentcloud::youmall::V20180228::DescribeShopHourTrafficInfoResponse`
        def DescribeShopHourTrafficInfo(request)
          body = send_request('DescribeShopHourTrafficInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeShopHourTrafficInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据客户身份标识获取客户下所有的门店信息列表

        # @param request: Request instance for DescribeShopInfo.
        # @type request: :class:`Tencentcloud::youmall::V20180228::DescribeShopInfoRequest`
        # @rtype: :class:`Tencentcloud::youmall::V20180228::DescribeShopInfoResponse`
        def DescribeShopInfo(request)
          body = send_request('DescribeShopInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeShopInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按天提供查询日期范围内门店的单日累计客流人数，支持的时间范围：过去365天，含当天。

        # @param request: Request instance for DescribeShopTrafficInfo.
        # @type request: :class:`Tencentcloud::youmall::V20180228::DescribeShopTrafficInfoRequest`
        # @rtype: :class:`Tencentcloud::youmall::V20180228::DescribeShopTrafficInfoResponse`
        def DescribeShopTrafficInfo(request)
          body = send_request('DescribeShopTrafficInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeShopTrafficInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取动线轨迹信息

        # @param request: Request instance for DescribeTrajectoryData.
        # @type request: :class:`Tencentcloud::youmall::V20180228::DescribeTrajectoryDataRequest`
        # @rtype: :class:`Tencentcloud::youmall::V20180228::DescribeTrajectoryDataResponse`
        def DescribeTrajectoryData(request)
          body = send_request('DescribeTrajectoryData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTrajectoryDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定区域人流各年龄占比

        # @param request: Request instance for DescribeZoneFlowAgeInfoByZoneId.
        # @type request: :class:`Tencentcloud::youmall::V20180228::DescribeZoneFlowAgeInfoByZoneIdRequest`
        # @rtype: :class:`Tencentcloud::youmall::V20180228::DescribeZoneFlowAgeInfoByZoneIdResponse`
        def DescribeZoneFlowAgeInfoByZoneId(request)
          body = send_request('DescribeZoneFlowAgeInfoByZoneId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeZoneFlowAgeInfoByZoneIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取区域人流和停留时间

        # @param request: Request instance for DescribeZoneFlowAndStayTime.
        # @type request: :class:`Tencentcloud::youmall::V20180228::DescribeZoneFlowAndStayTimeRequest`
        # @rtype: :class:`Tencentcloud::youmall::V20180228::DescribeZoneFlowAndStayTimeResponse`
        def DescribeZoneFlowAndStayTime(request)
          body = send_request('DescribeZoneFlowAndStayTime', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeZoneFlowAndStayTimeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定区域每日客流量

        # @param request: Request instance for DescribeZoneFlowDailyByZoneId.
        # @type request: :class:`Tencentcloud::youmall::V20180228::DescribeZoneFlowDailyByZoneIdRequest`
        # @rtype: :class:`Tencentcloud::youmall::V20180228::DescribeZoneFlowDailyByZoneIdResponse`
        def DescribeZoneFlowDailyByZoneId(request)
          body = send_request('DescribeZoneFlowDailyByZoneId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeZoneFlowDailyByZoneIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定区域不同年龄段男女平均停留时间

        # @param request: Request instance for DescribeZoneFlowGenderAvrStayTimeByZoneId.
        # @type request: :class:`Tencentcloud::youmall::V20180228::DescribeZoneFlowGenderAvrStayTimeByZoneIdRequest`
        # @rtype: :class:`Tencentcloud::youmall::V20180228::DescribeZoneFlowGenderAvrStayTimeByZoneIdResponse`
        def DescribeZoneFlowGenderAvrStayTimeByZoneId(request)
          body = send_request('DescribeZoneFlowGenderAvrStayTimeByZoneId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeZoneFlowGenderAvrStayTimeByZoneIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定区域性别占比

        # @param request: Request instance for DescribeZoneFlowGenderInfoByZoneId.
        # @type request: :class:`Tencentcloud::youmall::V20180228::DescribeZoneFlowGenderInfoByZoneIdRequest`
        # @rtype: :class:`Tencentcloud::youmall::V20180228::DescribeZoneFlowGenderInfoByZoneIdResponse`
        def DescribeZoneFlowGenderInfoByZoneId(request)
          body = send_request('DescribeZoneFlowGenderInfoByZoneId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeZoneFlowGenderInfoByZoneIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定区域分时客流量

        # @param request: Request instance for DescribeZoneFlowHourlyByZoneId.
        # @type request: :class:`Tencentcloud::youmall::V20180228::DescribeZoneFlowHourlyByZoneIdRequest`
        # @rtype: :class:`Tencentcloud::youmall::V20180228::DescribeZoneFlowHourlyByZoneIdResponse`
        def DescribeZoneFlowHourlyByZoneId(request)
          body = send_request('DescribeZoneFlowHourlyByZoneId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeZoneFlowHourlyByZoneIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按天提供查询日期范围内，客户指定门店下的所有区域（优Mall部署时已配置区域）的累计客流人次和平均停留时间。支持的时间范围：过去365天，含当天。

        # @param request: Request instance for DescribeZoneTrafficInfo.
        # @type request: :class:`Tencentcloud::youmall::V20180228::DescribeZoneTrafficInfoRequest`
        # @rtype: :class:`Tencentcloud::youmall::V20180228::DescribeZoneTrafficInfoResponse`
        def DescribeZoneTrafficInfo(request)
          body = send_request('DescribeZoneTrafficInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeZoneTrafficInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 支持修改黑白名单类型的顾客特征

        # @param request: Request instance for ModifyPersonFeatureInfo.
        # @type request: :class:`Tencentcloud::youmall::V20180228::ModifyPersonFeatureInfoRequest`
        # @rtype: :class:`Tencentcloud::youmall::V20180228::ModifyPersonFeatureInfoResponse`
        def ModifyPersonFeatureInfo(request)
          body = send_request('ModifyPersonFeatureInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPersonFeatureInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 标记到店顾客的身份类型，例如黑名单、白名单等

        # @param request: Request instance for ModifyPersonTagInfo.
        # @type request: :class:`Tencentcloud::youmall::V20180228::ModifyPersonTagInfoRequest`
        # @rtype: :class:`Tencentcloud::youmall::V20180228::ModifyPersonTagInfoResponse`
        def ModifyPersonTagInfo(request)
          body = send_request('ModifyPersonTagInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPersonTagInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改顾客身份类型接口

        # @param request: Request instance for ModifyPersonType.
        # @type request: :class:`Tencentcloud::youmall::V20180228::ModifyPersonTypeRequest`
        # @rtype: :class:`Tencentcloud::youmall::V20180228::ModifyPersonTypeResponse`
        def ModifyPersonType(request)
          body = send_request('ModifyPersonType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPersonTypeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 调用本接口在优Mall中注册自己集团的到店通知回调接口地址，接口协议为HTTP或HTTPS。注册后，若集团有特殊身份（例如老客）到店通知，优Mall后台将主动将到店信息push给该接口

        # @param request: Request instance for RegisterCallback.
        # @type request: :class:`Tencentcloud::youmall::V20180228::RegisterCallbackRequest`
        # @rtype: :class:`Tencentcloud::youmall::V20180228::RegisterCallbackResponse`
        def RegisterCallback(request)
          body = send_request('RegisterCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RegisterCallbackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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