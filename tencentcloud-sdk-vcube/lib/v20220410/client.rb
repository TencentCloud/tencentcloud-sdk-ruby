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
  module Vcube
    module V20220410
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-04-10'
            api_endpoint = 'vcube.tencentcloudapi.com'
            sdk_version = 'VCUBE_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建活动license

        # @param request: Request instance for CreateActivityLicense.
        # @type request: :class:`Tencentcloud::vcube::V20220410::CreateActivityLicenseRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::CreateActivityLicenseResponse`
        def CreateActivityLicense(request)
          body = send_request('CreateActivityLicense', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateActivityLicenseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建应用并绑定license或者XMagic

        # @param request: Request instance for CreateApplicationAndBindLicense.
        # @type request: :class:`Tencentcloud::vcube::V20220410::CreateApplicationAndBindLicenseRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::CreateApplicationAndBindLicenseResponse`
        def CreateApplicationAndBindLicense(request)
          body = send_request('CreateApplicationAndBindLicense', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateApplicationAndBindLicenseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建应用和视频播放license 目前只有国际站可以用

        # @param request: Request instance for CreateApplicationAndVideo.
        # @type request: :class:`Tencentcloud::vcube::V20220410::CreateApplicationAndVideoRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::CreateApplicationAndVideoResponse`
        def CreateApplicationAndVideo(request)
          body = send_request('CreateApplicationAndVideo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateApplicationAndVideoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建 web 播放器基础版

        # @param request: Request instance for CreateApplicationAndWebPlayerLicense.
        # @type request: :class:`Tencentcloud::vcube::V20220410::CreateApplicationAndWebPlayerLicenseRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::CreateApplicationAndWebPlayerLicenseResponse`
        def CreateApplicationAndWebPlayerLicense(request)
          body = send_request('CreateApplicationAndWebPlayerLicense', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateApplicationAndWebPlayerLicenseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 绑定license

        # @param request: Request instance for CreateLicense.
        # @type request: :class:`Tencentcloud::vcube::V20220410::CreateLicenseRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::CreateLicenseResponse`
        def CreateLicense(request)
          body = send_request('CreateLicense', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLicenseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 申请开通测试版腾讯特效

        # @param request: Request instance for CreateTestXMagic.
        # @type request: :class:`Tencentcloud::vcube::V20220410::CreateTestXMagicRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::CreateTestXMagicResponse`
        def CreateTestXMagic(request)
          body = send_request('CreateTestXMagic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTestXMagicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建测试应用并开通测试 license

        # @param request: Request instance for CreateTrialApplicationAndLicense.
        # @type request: :class:`Tencentcloud::vcube::V20220410::CreateTrialApplicationAndLicenseRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::CreateTrialApplicationAndLicenseResponse`
        def CreateTrialApplicationAndLicense(request)
          body = send_request('CreateTrialApplicationAndLicense', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTrialApplicationAndLicenseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开通测试license

        # @param request: Request instance for CreateTrialLicense.
        # @type request: :class:`Tencentcloud::vcube::V20220410::CreateTrialLicenseRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::CreateTrialLicenseResponse`
        def CreateTrialLicense(request)
          body = send_request('CreateTrialLicense', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTrialLicenseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # x08开通正式版优图美视功能，针对已经有Application的情况

        # @param request: Request instance for CreateXMagic.
        # @type request: :class:`Tencentcloud::vcube::V20220410::CreateXMagicRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::CreateXMagicResponse`
        def CreateXMagic(request)
          body = send_request('CreateXMagic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateXMagicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询功能列表

        # @param request: Request instance for DescribeFeatureList.
        # @type request: :class:`Tencentcloud::vcube::V20220410::DescribeFeatureListRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::DescribeFeatureListResponse`
        def DescribeFeatureList(request)
          body = send_request('DescribeFeatureList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFeatureListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 总览页查询临期License列表，和统计数据

        # @param request: Request instance for DescribeLicenseList.
        # @type request: :class:`Tencentcloud::vcube::V20220410::DescribeLicenseListRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::DescribeLicenseListResponse`
        def DescribeLicenseList(request)
          body = send_request('DescribeLicenseList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLicenseListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询产品动态

        # @param request: Request instance for DescribeNews.
        # @type request: :class:`Tencentcloud::vcube::V20220410::DescribeNewsRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::DescribeNewsResponse`
        def DescribeNews(request)
          body = send_request('DescribeNews', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNewsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取临时秘钥，用于图片，特效包上传

        # @param request: Request instance for DescribeSTS.
        # @type request: :class:`Tencentcloud::vcube::V20220410::DescribeSTSRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::DescribeSTSResponse`
        def DescribeSTS(request)
          body = send_request('DescribeSTS', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSTSResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询测试应用可以开通的功能

        # @param request: Request instance for DescribeTrialFeature.
        # @type request: :class:`Tencentcloud::vcube::V20220410::DescribeTrialFeatureRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::DescribeTrialFeatureResponse`
        def DescribeTrialFeature(request)
          body = send_request('DescribeTrialFeature', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTrialFeatureResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户个性配置

        # @param request: Request instance for DescribeUserConfig.
        # @type request: :class:`Tencentcloud::vcube::V20220410::DescribeUserConfigRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::DescribeUserConfigResponse`
        def DescribeUserConfig(request)
          body = send_request('DescribeUserConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户license， 按照应用分类

        # @param request: Request instance for DescribeVcubeApplicationAndLicense.
        # @type request: :class:`Tencentcloud::vcube::V20220410::DescribeVcubeApplicationAndLicenseRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::DescribeVcubeApplicationAndLicenseResponse`
        def DescribeVcubeApplicationAndLicense(request)
          body = send_request('DescribeVcubeApplicationAndLicense', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVcubeApplicationAndLicenseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户点播直播等license， 按照应用分类,国际站专用

        # @param request: Request instance for DescribeVcubeApplicationAndPlayList.
        # @type request: :class:`Tencentcloud::vcube::V20220410::DescribeVcubeApplicationAndPlayListRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::DescribeVcubeApplicationAndPlayListResponse`
        def DescribeVcubeApplicationAndPlayList(request)
          body = send_request('DescribeVcubeApplicationAndPlayList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVcubeApplicationAndPlayListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户优图license， 按照应用分类

        # @param request: Request instance for DescribeVcubeApplicationAndXMagicList.
        # @type request: :class:`Tencentcloud::vcube::V20220410::DescribeVcubeApplicationAndXMagicListRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::DescribeVcubeApplicationAndXMagicListResponse`
        def DescribeVcubeApplicationAndXMagicList(request)
          body = send_request('DescribeVcubeApplicationAndXMagicList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVcubeApplicationAndXMagicListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询视立方 license 资源，所有的资源包

        # @param request: Request instance for DescribeVcubeResources.
        # @type request: :class:`Tencentcloud::vcube::V20220410::DescribeVcubeResourcesRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::DescribeVcubeResourcesResponse`
        def DescribeVcubeResources(request)
          body = send_request('DescribeVcubeResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVcubeResourcesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询视立方 license 资源，包括资源包赠送和直接购买的资源

        # @param request: Request instance for DescribeVcubeResourcesList.
        # @type request: :class:`Tencentcloud::vcube::V20220410::DescribeVcubeResourcesListRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::DescribeVcubeResourcesListResponse`
        def DescribeVcubeResourcesList(request)
          body = send_request('DescribeVcubeResourcesList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVcubeResourcesListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用途美视资源包用于开通正式优图美视

        # @param request: Request instance for DescribeXMagicResource.
        # @type request: :class:`Tencentcloud::vcube::V20220410::DescribeXMagicResourceRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::DescribeXMagicResourceResponse`
        def DescribeXMagicResource(request)
          body = send_request('DescribeXMagicResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeXMagicResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于优图美视资源列表展示

        # @param request: Request instance for DescribeXMagicResourceList.
        # @type request: :class:`Tencentcloud::vcube::V20220410::DescribeXMagicResourceListRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::DescribeXMagicResourceListResponse`
        def DescribeXMagicResourceList(request)
          body = send_request('DescribeXMagicResourceList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeXMagicResourceListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更改测试包名信息

        # @param request: Request instance for ModifyApplication.
        # @type request: :class:`Tencentcloud::vcube::V20220410::ModifyApplicationRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::ModifyApplicationResponse`
        def ModifyApplication(request)
          body = send_request('ModifyApplication', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyApplicationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改正式应用的包名称

        # @param request: Request instance for ModifyFormalApplication.
        # @type request: :class:`Tencentcloud::vcube::V20220410::ModifyFormalApplicationRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::ModifyFormalApplicationResponse`
        def ModifyFormalApplication(request)
          body = send_request('ModifyFormalApplication', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyFormalApplicationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 正式license 升降配，点播精简版、基础版

        # @param request: Request instance for ModifyLicense.
        # @type request: :class:`Tencentcloud::vcube::V20220410::ModifyLicenseRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::ModifyLicenseResponse`
        def ModifyLicense(request)
          body = send_request('ModifyLicense', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLicenseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改内置应用包名

        # @param request: Request instance for ModifyPresetApplication.
        # @type request: :class:`Tencentcloud::vcube::V20220410::ModifyPresetApplicationRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::ModifyPresetApplicationResponse`
        def ModifyPresetApplication(request)
          body = send_request('ModifyPresetApplication', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPresetApplicationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 续期测试license

        # @param request: Request instance for ModifyTrialLicense.
        # @type request: :class:`Tencentcloud::vcube::V20220410::ModifyTrialLicenseRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::ModifyTrialLicenseResponse`
        def ModifyTrialLicense(request)
          body = send_request('ModifyTrialLicense', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTrialLicenseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 使用一个腾讯特效资源，更新现在的腾讯特效license，license功能和到期时间会以新的资源为准，老资源会被替换下来

        # @param request: Request instance for ModifyXMagic.
        # @type request: :class:`Tencentcloud::vcube::V20220410::ModifyXMagicRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::ModifyXMagicResponse`
        def ModifyXMagic(request)
          body = send_request('ModifyXMagic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyXMagicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 正式license 续期与变更有效期

        # @param request: Request instance for RenewLicense.
        # @type request: :class:`Tencentcloud::vcube::V20220410::RenewLicenseRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::RenewLicenseResponse`
        def RenewLicense(request)
          body = send_request('RenewLicense', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewLicenseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 续期测试版优图美视

        # @param request: Request instance for RenewTestXMagic.
        # @type request: :class:`Tencentcloud::vcube::V20220410::RenewTestXMagicRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::RenewTestXMagicResponse`
        def RenewTestXMagic(request)
          body = send_request('RenewTestXMagic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewTestXMagicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 续期国际站视频播放功能和中国站web基础版

        # @param request: Request instance for RenewVideo.
        # @type request: :class:`Tencentcloud::vcube::V20220410::RenewVideoRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::RenewVideoResponse`
        def RenewVideo(request)
          body = send_request('RenewVideo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewVideoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 将测试xmagic升级到正式版

        # @param request: Request instance for UpdateTestXMagic.
        # @type request: :class:`Tencentcloud::vcube::V20220410::UpdateTestXMagicRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::UpdateTestXMagicResponse`
        def UpdateTestXMagic(request)
          body = send_request('UpdateTestXMagic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateTestXMagicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 测试 license 升级为正式 license

        # @param request: Request instance for UpdateTrialLicense.
        # @type request: :class:`Tencentcloud::vcube::V20220410::UpdateTrialLicenseRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::UpdateTrialLicenseResponse`
        def UpdateTrialLicense(request)
          body = send_request('UpdateTrialLicense', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateTrialLicenseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新优图美视的申请信息 Status 为2，3的时候可用

        # @param request: Request instance for UpdateXMagic.
        # @type request: :class:`Tencentcloud::vcube::V20220410::UpdateXMagicRequest`
        # @rtype: :class:`Tencentcloud::vcube::V20220410::UpdateXMagicResponse`
        def UpdateXMagic(request)
          body = send_request('UpdateXMagic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateXMagicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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