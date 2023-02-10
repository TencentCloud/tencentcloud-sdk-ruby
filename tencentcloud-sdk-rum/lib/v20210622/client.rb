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
  module Rum
    module V20210622
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-06-22'
            api_endpoint = 'rum.tencentcloudapi.com'
            sdk_version = 'RUM_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 接口请求域名： rum.tencentcloudapi.com 。

        # 本接口用于创建日志下载任务

        # 默认接口请求频率限制：20次/秒。

        # @param request: Request instance for CreateLogExport.
        # @type request: :class:`Tencentcloud::rum::V20210622::CreateLogExportRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::CreateLogExportResponse`
        def CreateLogExport(request)
          body = send_request('CreateLogExport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLogExportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建离线日志监听，对应用户的离线日志将上报

        # @param request: Request instance for CreateOfflineLogConfig.
        # @type request: :class:`Tencentcloud::rum::V20210622::CreateOfflineLogConfigRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::CreateOfflineLogConfigResponse`
        def CreateOfflineLogConfig(request)
          body = send_request('CreateOfflineLogConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOfflineLogConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建 RUM 应用（归属于某个团队）

        # @param request: Request instance for CreateProject.
        # @type request: :class:`Tencentcloud::rum::V20210622::CreateProjectRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::CreateProjectResponse`
        def CreateProject(request)
          body = send_request('CreateProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建对应项目的文件记录

        # @param request: Request instance for CreateReleaseFile.
        # @type request: :class:`Tencentcloud::rum::V20210622::CreateReleaseFileRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::CreateReleaseFileResponse`
        def CreateReleaseFile(request)
          body = send_request('CreateReleaseFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateReleaseFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 个人用户添加星标项目

        # @param request: Request instance for CreateStarProject.
        # @type request: :class:`Tencentcloud::rum::V20210622::CreateStarProjectRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::CreateStarProjectResponse`
        def CreateStarProject(request)
          body = send_request('CreateStarProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateStarProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建 RUM 业务系统

        # @param request: Request instance for CreateTawInstance.
        # @type request: :class:`Tencentcloud::rum::V20210622::CreateTawInstanceRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::CreateTawInstanceResponse`
        def CreateTawInstance(request)
          body = send_request('CreateTawInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTawInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建白名单

        # @param request: Request instance for CreateWhitelist.
        # @type request: :class:`Tencentcloud::rum::V20210622::CreateWhitelistRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::CreateWhitelistResponse`
        def CreateWhitelist(request)
          body = send_request('CreateWhitelist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWhitelistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除实例，谨慎操作，不可恢复

        # @param request: Request instance for DeleteInstance.
        # @type request: :class:`Tencentcloud::rum::V20210622::DeleteInstanceRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DeleteInstanceResponse`
        def DeleteInstance(request)
          body = send_request('DeleteInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 接口请求域名： rum.tencentcloudapi.com 。

        # 本接口用于删除日志下载任务

        # 默认接口请求频率限制：20次/秒。

        # @param request: Request instance for DeleteLogExport.
        # @type request: :class:`Tencentcloud::rum::V20210622::DeleteLogExportRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DeleteLogExportResponse`
        def DeleteLogExport(request)
          body = send_request('DeleteLogExport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLogExportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除 rum 离线日志监听 - 对应用户的离线日志将不会上报

        # @param request: Request instance for DeleteOfflineLogConfig.
        # @type request: :class:`Tencentcloud::rum::V20210622::DeleteOfflineLogConfigRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DeleteOfflineLogConfigResponse`
        def DeleteOfflineLogConfig(request)
          body = send_request('DeleteOfflineLogConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteOfflineLogConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除对应的离线日志记录

        # @param request: Request instance for DeleteOfflineLogRecord.
        # @type request: :class:`Tencentcloud::rum::V20210622::DeleteOfflineLogRecordRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DeleteOfflineLogRecordResponse`
        def DeleteOfflineLogRecord(request)
          body = send_request('DeleteOfflineLogRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteOfflineLogRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除给定的 rum 的项目

        # @param request: Request instance for DeleteProject.
        # @type request: :class:`Tencentcloud::rum::V20210622::DeleteProjectRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DeleteProjectResponse`
        def DeleteProject(request)
          body = send_request('DeleteProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 将对应 sourcemap 文件删除

        # @param request: Request instance for DeleteReleaseFile.
        # @type request: :class:`Tencentcloud::rum::V20210622::DeleteReleaseFileRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DeleteReleaseFileResponse`
        def DeleteReleaseFile(request)
          body = send_request('DeleteReleaseFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteReleaseFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除用户名下的星标项目

        # @param request: Request instance for DeleteStarProject.
        # @type request: :class:`Tencentcloud::rum::V20210622::DeleteStarProjectRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DeleteStarProjectResponse`
        def DeleteStarProject(request)
          body = send_request('DeleteStarProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteStarProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除白名单

        # @param request: Request instance for DeleteWhitelist.
        # @type request: :class:`Tencentcloud::rum::V20210622::DeleteWhitelistRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DeleteWhitelistResponse`
        def DeleteWhitelist(request)
          body = send_request('DeleteWhitelist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWhitelistResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 转发monitor查询

        # @param request: Request instance for DescribeData.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataResponse`
        def DescribeData(request)
          body = send_request('DescribeData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取DescribeDataCustomUrl信息

        # @param request: Request instance for DescribeDataCustomUrl.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataCustomUrlRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataCustomUrlResponse`
        def DescribeDataCustomUrl(request)
          body = send_request('DescribeDataCustomUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataCustomUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取DescribeDataEventUrl信息

        # @param request: Request instance for DescribeDataEventUrl.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataEventUrlRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataEventUrlResponse`
        def DescribeDataEventUrl(request)
          body = send_request('DescribeDataEventUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataEventUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取DescribeDataFetchProject信息。已下线，请使用DescribeDataFetchUrl

        # @param request: Request instance for DescribeDataFetchProject.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataFetchProjectRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataFetchProjectResponse`
        def DescribeDataFetchProject(request)
          body = send_request('DescribeDataFetchProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataFetchProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取DescribeDataFetchUrl信息

        # @param request: Request instance for DescribeDataFetchUrl.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataFetchUrlRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataFetchUrlResponse`
        def DescribeDataFetchUrl(request)
          body = send_request('DescribeDataFetchUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataFetchUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取DescribeDataFetchUrlInfo信息

        # @param request: Request instance for DescribeDataFetchUrlInfo.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataFetchUrlInfoRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataFetchUrlInfoResponse`
        def DescribeDataFetchUrlInfo(request)
          body = send_request('DescribeDataFetchUrlInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataFetchUrlInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取loginfo信息

        # @param request: Request instance for DescribeDataLogUrlInfo.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataLogUrlInfoRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataLogUrlInfoResponse`
        def DescribeDataLogUrlInfo(request)
          body = send_request('DescribeDataLogUrlInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataLogUrlInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取LogUrlStatistics信息

        # @param request: Request instance for DescribeDataLogUrlStatistics.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataLogUrlStatisticsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataLogUrlStatisticsResponse`
        def DescribeDataLogUrlStatistics(request)
          body = send_request('DescribeDataLogUrlStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataLogUrlStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取PerformancePage信息

        # @param request: Request instance for DescribeDataPerformancePage.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataPerformancePageRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataPerformancePageResponse`
        def DescribeDataPerformancePage(request)
          body = send_request('DescribeDataPerformancePage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataPerformancePageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取PerformanceProject信息

        # @param request: Request instance for DescribeDataPerformanceProject.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataPerformanceProjectRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataPerformanceProjectResponse`
        def DescribeDataPerformanceProject(request)
          body = send_request('DescribeDataPerformanceProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataPerformanceProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取PvUrlInfo信息

        # @param request: Request instance for DescribeDataPvUrlInfo.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataPvUrlInfoRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataPvUrlInfoResponse`
        def DescribeDataPvUrlInfo(request)
          body = send_request('DescribeDataPvUrlInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataPvUrlInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取DescribeDataPvUrlStatistics信息

        # @param request: Request instance for DescribeDataPvUrlStatistics.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataPvUrlStatisticsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataPvUrlStatisticsResponse`
        def DescribeDataPvUrlStatistics(request)
          body = send_request('DescribeDataPvUrlStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataPvUrlStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取项目上报量

        # @param request: Request instance for DescribeDataReportCount.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataReportCountRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataReportCountResponse`
        def DescribeDataReportCount(request)
          body = send_request('DescribeDataReportCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataReportCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取DescribeDataSetUrlStatistics信息

        # @param request: Request instance for DescribeDataSetUrlStatistics.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataSetUrlStatisticsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataSetUrlStatisticsResponse`
        def DescribeDataSetUrlStatistics(request)
          body = send_request('DescribeDataSetUrlStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataSetUrlStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取DescribeDataStaticProject信息

        # @param request: Request instance for DescribeDataStaticProject.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataStaticProjectRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataStaticProjectResponse`
        def DescribeDataStaticProject(request)
          body = send_request('DescribeDataStaticProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataStaticProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取DescribeDataStaticResource信息

        # @param request: Request instance for DescribeDataStaticResource.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataStaticResourceRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataStaticResourceResponse`
        def DescribeDataStaticResource(request)
          body = send_request('DescribeDataStaticResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataStaticResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取DescribeDataStaticUrl信息

        # @param request: Request instance for DescribeDataStaticUrl.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataStaticUrlRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataStaticUrlResponse`
        def DescribeDataStaticUrl(request)
          body = send_request('DescribeDataStaticUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataStaticUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取DescribeDataWebVitalsPage信息，用户核心活动信息
        # 页面加载性能之Web Vitals。性能关键点

        # @param request: Request instance for DescribeDataWebVitalsPage.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataWebVitalsPageRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataWebVitalsPageResponse`
        def DescribeDataWebVitalsPage(request)
          body = send_request('DescribeDataWebVitalsPage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataWebVitalsPageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取首页错误信息

        # @param request: Request instance for DescribeError.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeErrorRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeErrorResponse`
        def DescribeError(request)
          body = send_request('DescribeError', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeErrorResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 接口请求域名： rum.tencentcloudapi.com 。

        # 本接口用于获取日志下载任务列表

        # 默认接口请求频率限制：20次/秒

        # @param request: Request instance for DescribeLogExports.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeLogExportsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeLogExportsResponse`
        def DescribeLogExports(request)
          body = send_request('DescribeLogExports', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLogExportsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # (已下线，请用DescribeRumLogList)

        # @param request: Request instance for DescribeLogList.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeLogListRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeLogListResponse`
        def DescribeLogList(request)
          body = send_request('DescribeLogList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLogListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取设置的离线日志监听配置 - 返回设置的用户唯一标识

        # @param request: Request instance for DescribeOfflineLogConfigs.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeOfflineLogConfigsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeOfflineLogConfigsResponse`
        def DescribeOfflineLogConfigs(request)
          body = send_request('DescribeOfflineLogConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOfflineLogConfigsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取所有离线日志记录(最多100条)

        # @param request: Request instance for DescribeOfflineLogRecords.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeOfflineLogRecordsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeOfflineLogRecordsResponse`
        def DescribeOfflineLogRecords(request)
          body = send_request('DescribeOfflineLogRecords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOfflineLogRecordsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取对应离线日志

        # @param request: Request instance for DescribeOfflineLogs.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeOfflineLogsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeOfflineLogsResponse`
        def DescribeOfflineLogs(request)
          body = send_request('DescribeOfflineLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOfflineLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取应用上报抽样信息

        # @param request: Request instance for DescribeProjectLimits.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeProjectLimitsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeProjectLimitsResponse`
        def DescribeProjectLimits(request)
          body = send_request('DescribeProjectLimits', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProjectLimitsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取项目列表（实例创建的团队下的项目列表）

        # @param request: Request instance for DescribeProjects.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeProjectsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeProjectsResponse`
        def DescribeProjects(request)
          body = send_request('DescribeProjects', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProjectsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取项目下的PV列表

        # @param request: Request instance for DescribePvList.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribePvListRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribePvListResponse`
        def DescribePvList(request)
          body = send_request('DescribePvList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePvListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取上传文件存储的临时密钥

        # @param request: Request instance for DescribeReleaseFileSign.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeReleaseFileSignRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeReleaseFileSignResponse`
        def DescribeReleaseFileSign(request)
          body = send_request('DescribeReleaseFileSign', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReleaseFileSignResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取应用对应sourcemap文件列表

        # @param request: Request instance for DescribeReleaseFiles.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeReleaseFilesRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeReleaseFilesResponse`
        def DescribeReleaseFiles(request)
          body = send_request('DescribeReleaseFiles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReleaseFilesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取项目下的日志聚合信息

        # @param request: Request instance for DescribeRumGroupLog.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeRumGroupLogRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeRumGroupLogResponse`
        def DescribeRumGroupLog(request)
          body = send_request('DescribeRumGroupLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRumGroupLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取项目下的日志列表（实例创建的项目下的日志列表）

        # @param request: Request instance for DescribeRumLogExport.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeRumLogExportRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeRumLogExportResponse`
        def DescribeRumLogExport(request)
          body = send_request('DescribeRumLogExport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRumLogExportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取项目下的日志导出列表

        # @param request: Request instance for DescribeRumLogExports.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeRumLogExportsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeRumLogExportsResponse`
        def DescribeRumLogExports(request)
          body = send_request('DescribeRumLogExports', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRumLogExportsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取项目下的日志列表（实例创建的项目下的日志列表）

        # @param request: Request instance for DescribeRumLogList.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeRumLogListRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeRumLogListResponse`
        def DescribeRumLogList(request)
          body = send_request('DescribeRumLogList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRumLogListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取项目下的日志列表，分钟级

        # @param request: Request instance for DescribeRumStatsLogList.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeRumStatsLogListRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeRumStatsLogListResponse`
        def DescribeRumStatsLogList(request)
          body = send_request('DescribeRumStatsLogList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRumStatsLogListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取首页分数列表

        # @param request: Request instance for DescribeScores.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeScoresRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeScoresResponse`
        def DescribeScores(request)
          body = send_request('DescribeScores', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScoresResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询片区信息

        # @param request: Request instance for DescribeTawAreas.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTawAreasRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTawAreasResponse`
        def DescribeTawAreas(request)
          body = send_request('DescribeTawAreas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTawAreasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例信息

        # @param request: Request instance for DescribeTawInstances.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTawInstancesRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTawInstancesResponse`
        def DescribeTawInstances(request)
          body = send_request('DescribeTawInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTawInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取项目下的UV列表

        # @param request: Request instance for DescribeUvList.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeUvListRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeUvListResponse`
        def DescribeUvList(request)
          body = send_request('DescribeUvList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUvListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取白名单列表

        # @param request: Request instance for DescribeWhitelists.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeWhitelistsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeWhitelistsResponse`
        def DescribeWhitelists(request)
          body = send_request('DescribeWhitelists', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWhitelistsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改 RUM 业务系统

        # @param request: Request instance for ModifyInstance.
        # @type request: :class:`Tencentcloud::rum::V20210622::ModifyInstanceRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::ModifyInstanceResponse`
        def ModifyInstance(request)
          body = send_request('ModifyInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改 RUM 应用信息

        # @param request: Request instance for ModifyProject.
        # @type request: :class:`Tencentcloud::rum::V20210622::ModifyProjectRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::ModifyProjectResponse`
        def ModifyProject(request)
          body = send_request('ModifyProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增修改限流

        # @param request: Request instance for ModifyProjectLimit.
        # @type request: :class:`Tencentcloud::rum::V20210622::ModifyProjectLimitRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::ModifyProjectLimitResponse`
        def ModifyProjectLimit(request)
          body = send_request('ModifyProjectLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProjectLimitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 恢复 RUM 业务系统，恢复后，用户可以正常使用和上报数据

        # @param request: Request instance for ResumeInstance.
        # @type request: :class:`Tencentcloud::rum::V20210622::ResumeInstanceRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::ResumeInstanceResponse`
        def ResumeInstance(request)
          body = send_request('ResumeInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResumeInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 恢复应用使用与上报数据

        # @param request: Request instance for ResumeProject.
        # @type request: :class:`Tencentcloud::rum::V20210622::ResumeProjectRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::ResumeProjectResponse`
        def ResumeProject(request)
          body = send_request('ResumeProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResumeProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止实例

        # @param request: Request instance for StopInstance.
        # @type request: :class:`Tencentcloud::rum::V20210622::StopInstanceRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::StopInstanceResponse`
        def StopInstance(request)
          body = send_request('StopInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止项目使用与上报数据

        # @param request: Request instance for StopProject.
        # @type request: :class:`Tencentcloud::rum::V20210622::StopProjectRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::StopProjectResponse`
        def StopProject(request)
          body = send_request('StopProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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