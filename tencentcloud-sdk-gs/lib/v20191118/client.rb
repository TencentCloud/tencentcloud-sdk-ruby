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
  module Gs
    module V20191118
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-11-18'
            api_endpoint = 'gs.tencentcloudapi.com'
            sdk_version = 'GS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 备份云手机到指定存储

        # @param request: Request instance for BackUpAndroidInstanceToStorage.
        # @type request: :class:`Tencentcloud::gs::V20191118::BackUpAndroidInstanceToStorageRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::BackUpAndroidInstanceToStorageResponse`
        def BackUpAndroidInstanceToStorage(request)
          body = send_request('BackUpAndroidInstanceToStorage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BackUpAndroidInstanceToStorageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 连接安卓实例

        # @param request: Request instance for ConnectAndroidInstance.
        # @type request: :class:`Tencentcloud::gs::V20191118::ConnectAndroidInstanceRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::ConnectAndroidInstanceResponse`
        def ConnectAndroidInstance(request)
          body = send_request('ConnectAndroidInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ConnectAndroidInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 复制安卓实例：
        # 1. 排除和包含文件只能指定/data下的文件，不指定时复制整个/data目录
        # 2. 源实例和目的实例必须在同一区域
        # 3. 复制时，源实例和目的实例都会停机，复制完后实例会自动启动
        # 4. 复制时会产生大量内网流量，请限制并发

        # @param request: Request instance for CopyAndroidInstance.
        # @type request: :class:`Tencentcloud::gs::V20191118::CopyAndroidInstanceRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::CopyAndroidInstanceResponse`
        def CopyAndroidInstance(request)
          body = send_request('CopyAndroidInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CopyAndroidInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建安卓应用

        # @param request: Request instance for CreateAndroidApp.
        # @type request: :class:`Tencentcloud::gs::V20191118::CreateAndroidAppRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::CreateAndroidAppResponse`
        def CreateAndroidApp(request)
          body = send_request('CreateAndroidApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAndroidAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建安卓应用版本

        # @param request: Request instance for CreateAndroidAppVersion.
        # @type request: :class:`Tencentcloud::gs::V20191118::CreateAndroidAppVersionRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::CreateAndroidAppVersionResponse`
        def CreateAndroidAppVersion(request)
          body = send_request('CreateAndroidAppVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAndroidAppVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建安卓实例镜像

        # @param request: Request instance for CreateAndroidInstanceImage.
        # @type request: :class:`Tencentcloud::gs::V20191118::CreateAndroidInstanceImageRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::CreateAndroidInstanceImageResponse`
        def CreateAndroidInstanceImage(request)
          body = send_request('CreateAndroidInstanceImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAndroidInstanceImageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建安卓实例

        # @param request: Request instance for CreateAndroidInstanceLabel.
        # @type request: :class:`Tencentcloud::gs::V20191118::CreateAndroidInstanceLabelRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::CreateAndroidInstanceLabelResponse`
        def CreateAndroidInstanceLabel(request)
          body = send_request('CreateAndroidInstanceLabel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAndroidInstanceLabelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建安卓实例 SSH 连接

        # @param request: Request instance for CreateAndroidInstanceSSH.
        # @type request: :class:`Tencentcloud::gs::V20191118::CreateAndroidInstanceSSHRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::CreateAndroidInstanceSSHResponse`
        def CreateAndroidInstanceSSH(request)
          body = send_request('CreateAndroidInstanceSSH', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAndroidInstanceSSHResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建安卓实例 WebShell 连接

        # @param request: Request instance for CreateAndroidInstanceWebShell.
        # @type request: :class:`Tencentcloud::gs::V20191118::CreateAndroidInstanceWebShellRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::CreateAndroidInstanceWebShellResponse`
        def CreateAndroidInstanceWebShell(request)
          body = send_request('CreateAndroidInstanceWebShell', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAndroidInstanceWebShellResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建安卓实例

        # @param request: Request instance for CreateAndroidInstances.
        # @type request: :class:`Tencentcloud::gs::V20191118::CreateAndroidInstancesRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::CreateAndroidInstancesResponse`
        def CreateAndroidInstances(request)
          body = send_request('CreateAndroidInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAndroidInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 安卓实例截图

        # @param request: Request instance for CreateAndroidInstancesScreenshot.
        # @type request: :class:`Tencentcloud::gs::V20191118::CreateAndroidInstancesScreenshotRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::CreateAndroidInstancesScreenshotResponse`
        def CreateAndroidInstancesScreenshot(request)
          body = send_request('CreateAndroidInstancesScreenshot', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAndroidInstancesScreenshotResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于创建 Cos 临时密钥

        # @param request: Request instance for CreateCosCredential.
        # @type request: :class:`Tencentcloud::gs::V20191118::CreateCosCredentialRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::CreateCosCredentialResponse`
        def CreateCosCredential(request)
          body = send_request('CreateCosCredential', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCosCredentialResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建会话

        # @param request: Request instance for CreateSession.
        # @type request: :class:`Tencentcloud::gs::V20191118::CreateSessionRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::CreateSessionResponse`
        def CreateSession(request)
          body = send_request('CreateSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSessionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除安卓应用

        # @param request: Request instance for DeleteAndroidApp.
        # @type request: :class:`Tencentcloud::gs::V20191118::DeleteAndroidAppRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::DeleteAndroidAppResponse`
        def DeleteAndroidApp(request)
          body = send_request('DeleteAndroidApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAndroidAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除安卓应用版本

        # @param request: Request instance for DeleteAndroidAppVersion.
        # @type request: :class:`Tencentcloud::gs::V20191118::DeleteAndroidAppVersionRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::DeleteAndroidAppVersionResponse`
        def DeleteAndroidAppVersion(request)
          body = send_request('DeleteAndroidAppVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAndroidAppVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除安卓实例镜像

        # @param request: Request instance for DeleteAndroidInstanceImages.
        # @type request: :class:`Tencentcloud::gs::V20191118::DeleteAndroidInstanceImagesRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::DeleteAndroidInstanceImagesResponse`
        def DeleteAndroidInstanceImages(request)
          body = send_request('DeleteAndroidInstanceImages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAndroidInstanceImagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建安卓实例

        # @param request: Request instance for DeleteAndroidInstanceLabel.
        # @type request: :class:`Tencentcloud::gs::V20191118::DeleteAndroidInstanceLabelRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::DeleteAndroidInstanceLabelResponse`
        def DeleteAndroidInstanceLabel(request)
          body = send_request('DeleteAndroidInstanceLabel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAndroidInstanceLabelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询安卓应用信息

        # @param request: Request instance for DescribeAndroidApps.
        # @type request: :class:`Tencentcloud::gs::V20191118::DescribeAndroidAppsRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::DescribeAndroidAppsResponse`
        def DescribeAndroidApps(request)
          body = send_request('DescribeAndroidApps', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAndroidAppsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询安卓实例应用

        # @param request: Request instance for DescribeAndroidInstanceApps.
        # @type request: :class:`Tencentcloud::gs::V20191118::DescribeAndroidInstanceAppsRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::DescribeAndroidInstanceAppsResponse`
        def DescribeAndroidInstanceApps(request)
          body = send_request('DescribeAndroidInstanceApps', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAndroidInstanceAppsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询安卓实例镜像

        # @param request: Request instance for DescribeAndroidInstanceImages.
        # @type request: :class:`Tencentcloud::gs::V20191118::DescribeAndroidInstanceImagesRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::DescribeAndroidInstanceImagesResponse`
        def DescribeAndroidInstanceImages(request)
          body = send_request('DescribeAndroidInstanceImages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAndroidInstanceImagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建安卓实例

        # @param request: Request instance for DescribeAndroidInstanceLabels.
        # @type request: :class:`Tencentcloud::gs::V20191118::DescribeAndroidInstanceLabelsRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::DescribeAndroidInstanceLabelsResponse`
        def DescribeAndroidInstanceLabels(request)
          body = send_request('DescribeAndroidInstanceLabels', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAndroidInstanceLabelsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询安卓实例任务状态

        # @param request: Request instance for DescribeAndroidInstanceTasksStatus.
        # @type request: :class:`Tencentcloud::gs::V20191118::DescribeAndroidInstanceTasksStatusRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::DescribeAndroidInstanceTasksStatusResponse`
        def DescribeAndroidInstanceTasksStatus(request)
          body = send_request('DescribeAndroidInstanceTasksStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAndroidInstanceTasksStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询安卓实例

        # @param request: Request instance for DescribeAndroidInstances.
        # @type request: :class:`Tencentcloud::gs::V20191118::DescribeAndroidInstancesRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::DescribeAndroidInstancesResponse`
        def DescribeAndroidInstances(request)
          body = send_request('DescribeAndroidInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAndroidInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取并发总数和运行数

        # @param request: Request instance for DescribeInstancesCount.
        # @type request: :class:`Tencentcloud::gs::V20191118::DescribeInstancesCountRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::DescribeInstancesCountResponse`
        def DescribeInstancesCount(request)
          body = send_request('DescribeInstancesCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstancesCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 销毁安卓实例

        # @param request: Request instance for DestroyAndroidInstances.
        # @type request: :class:`Tencentcloud::gs::V20191118::DestroyAndroidInstancesRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::DestroyAndroidInstancesResponse`
        def DestroyAndroidInstances(request)
          body = send_request('DestroyAndroidInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroyAndroidInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在安卓实例上异步执行命令，命令输出结果如果内容过长会被截断

        # @param request: Request instance for ExecuteCommandOnAndroidInstances.
        # @type request: :class:`Tencentcloud::gs::V20191118::ExecuteCommandOnAndroidInstancesRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::ExecuteCommandOnAndroidInstancesResponse`
        def ExecuteCommandOnAndroidInstances(request)
          body = send_request('ExecuteCommandOnAndroidInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExecuteCommandOnAndroidInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量获取安卓实例日志

        # @param request: Request instance for FetchAndroidInstancesLogs.
        # @type request: :class:`Tencentcloud::gs::V20191118::FetchAndroidInstancesLogsRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::FetchAndroidInstancesLogsResponse`
        def FetchAndroidInstancesLogs(request)
          body = send_request('FetchAndroidInstancesLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = FetchAndroidInstancesLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 安装安卓实例应用

        # @param request: Request instance for InstallAndroidInstancesApp.
        # @type request: :class:`Tencentcloud::gs::V20191118::InstallAndroidInstancesAppRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::InstallAndroidInstancesAppResponse`
        def InstallAndroidInstancesApp(request)
          body = send_request('InstallAndroidInstancesApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InstallAndroidInstancesAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改安卓应用信息

        # @param request: Request instance for ModifyAndroidApp.
        # @type request: :class:`Tencentcloud::gs::V20191118::ModifyAndroidAppRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::ModifyAndroidAppResponse`
        def ModifyAndroidApp(request)
          body = send_request('ModifyAndroidApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAndroidAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改安卓应用版本

        # @param request: Request instance for ModifyAndroidAppVersion.
        # @type request: :class:`Tencentcloud::gs::V20191118::ModifyAndroidAppVersionRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::ModifyAndroidAppVersionResponse`
        def ModifyAndroidAppVersion(request)
          body = send_request('ModifyAndroidAppVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAndroidAppVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改安卓实例的信息

        # @param request: Request instance for ModifyAndroidInstanceInformation.
        # @type request: :class:`Tencentcloud::gs::V20191118::ModifyAndroidInstanceInformationRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::ModifyAndroidInstanceInformationResponse`
        def ModifyAndroidInstanceInformation(request)
          body = send_request('ModifyAndroidInstanceInformation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAndroidInstanceInformationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改安卓实例分辨率。需要注意的是该接口可能导致正在运行的应用出现闪退，所以建议在实例维护时期才进行调用。

        # @param request: Request instance for ModifyAndroidInstanceResolution.
        # @type request: :class:`Tencentcloud::gs::V20191118::ModifyAndroidInstanceResolutionRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::ModifyAndroidInstanceResolutionResponse`
        def ModifyAndroidInstanceResolution(request)
          body = send_request('ModifyAndroidInstanceResolution', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAndroidInstanceResolutionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量修改安卓实例信息

        # @param request: Request instance for ModifyAndroidInstancesInformation.
        # @type request: :class:`Tencentcloud::gs::V20191118::ModifyAndroidInstancesInformationRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::ModifyAndroidInstancesInformationResponse`
        def ModifyAndroidInstancesInformation(request)
          body = send_request('ModifyAndroidInstancesInformation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAndroidInstancesInformationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改安卓实例分辨率。需要注意的是该接口可能导致正在运行的应用出现闪退，所以建议在实例维护时期才进行调用。

        # @param request: Request instance for ModifyAndroidInstancesLabels.
        # @type request: :class:`Tencentcloud::gs::V20191118::ModifyAndroidInstancesLabelsRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::ModifyAndroidInstancesLabelsResponse`
        def ModifyAndroidInstancesLabels(request)
          body = send_request('ModifyAndroidInstancesLabels', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAndroidInstancesLabelsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改安卓实例分辨率。需要注意的是该接口需要重启才能生效。

        # @param request: Request instance for ModifyAndroidInstancesResolution.
        # @type request: :class:`Tencentcloud::gs::V20191118::ModifyAndroidInstancesResolutionRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::ModifyAndroidInstancesResolutionResponse`
        def ModifyAndroidInstancesResolution(request)
          body = send_request('ModifyAndroidInstancesResolution', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAndroidInstancesResolutionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量修改安卓实例的用户ID

        # @param request: Request instance for ModifyAndroidInstancesUserId.
        # @type request: :class:`Tencentcloud::gs::V20191118::ModifyAndroidInstancesUserIdRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::ModifyAndroidInstancesUserIdResponse`
        def ModifyAndroidInstancesUserId(request)
          body = send_request('ModifyAndroidInstancesUserId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAndroidInstancesUserIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重启安卓实例宿主机。请注意：

        # - 当前每 15 分钟只能重启一次
        # - 一个宿主机可能有多个云手机实例，重启宿主机会影响运行在上面的所有实例，请确保该宿主机上的所有云手机实例未投入业务使用

        # @param request: Request instance for RebootAndroidInstanceHosts.
        # @type request: :class:`Tencentcloud::gs::V20191118::RebootAndroidInstanceHostsRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::RebootAndroidInstanceHostsResponse`
        def RebootAndroidInstanceHosts(request)
          body = send_request('RebootAndroidInstanceHosts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RebootAndroidInstanceHostsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重启安卓实例

        # @param request: Request instance for RebootAndroidInstances.
        # @type request: :class:`Tencentcloud::gs::V20191118::RebootAndroidInstancesRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::RebootAndroidInstancesResponse`
        def RebootAndroidInstances(request)
          body = send_request('RebootAndroidInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RebootAndroidInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重置安卓实例

        # @param request: Request instance for ResetAndroidInstances.
        # @type request: :class:`Tencentcloud::gs::V20191118::ResetAndroidInstancesRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::ResetAndroidInstancesResponse`
        def ResetAndroidInstances(request)
          body = send_request('ResetAndroidInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetAndroidInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 启动安卓实例应用

        # @param request: Request instance for RestartAndroidInstancesApp.
        # @type request: :class:`Tencentcloud::gs::V20191118::RestartAndroidInstancesAppRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::RestartAndroidInstancesAppResponse`
        def RestartAndroidInstancesApp(request)
          body = send_request('RestartAndroidInstancesApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestartAndroidInstancesAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 指定存储还原云手机

        # @param request: Request instance for RestoreAndroidInstanceFromStorage.
        # @type request: :class:`Tencentcloud::gs::V20191118::RestoreAndroidInstanceFromStorageRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::RestoreAndroidInstanceFromStorageResponse`
        def RestoreAndroidInstanceFromStorage(request)
          body = send_request('RestoreAndroidInstanceFromStorage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestoreAndroidInstanceFromStorageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 保存游戏存档

        # @param request: Request instance for SaveGameArchive.
        # @type request: :class:`Tencentcloud::gs::V20191118::SaveGameArchiveRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::SaveGameArchiveResponse`
        def SaveGameArchive(request)
          body = send_request('SaveGameArchive', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SaveGameArchiveResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重启安卓实例

        # @param request: Request instance for StartAndroidInstances.
        # @type request: :class:`Tencentcloud::gs::V20191118::StartAndroidInstancesRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::StartAndroidInstancesResponse`
        def StartAndroidInstances(request)
          body = send_request('StartAndroidInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartAndroidInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 启动安卓实例应用

        # @param request: Request instance for StartAndroidInstancesApp.
        # @type request: :class:`Tencentcloud::gs::V20191118::StartAndroidInstancesAppRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::StartAndroidInstancesAppResponse`
        def StartAndroidInstancesApp(request)
          body = send_request('StartAndroidInstancesApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartAndroidInstancesAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开始云端推流

        # @param request: Request instance for StartPublishStream.
        # @type request: :class:`Tencentcloud::gs::V20191118::StartPublishStreamRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::StartPublishStreamResponse`
        def StartPublishStream(request)
          body = send_request('StartPublishStream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartPublishStreamResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开始云端推流

        # @param request: Request instance for StartPublishStreamToCSS.
        # @type request: :class:`Tencentcloud::gs::V20191118::StartPublishStreamToCSSRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::StartPublishStreamToCSSResponse`
        def StartPublishStreamToCSS(request)
          body = send_request('StartPublishStreamToCSS', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartPublishStreamToCSSResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重启安卓实例

        # @param request: Request instance for StopAndroidInstances.
        # @type request: :class:`Tencentcloud::gs::V20191118::StopAndroidInstancesRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::StopAndroidInstancesResponse`
        def StopAndroidInstances(request)
          body = send_request('StopAndroidInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopAndroidInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止安卓实例应用

        # @param request: Request instance for StopAndroidInstancesApp.
        # @type request: :class:`Tencentcloud::gs::V20191118::StopAndroidInstancesAppRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::StopAndroidInstancesAppResponse`
        def StopAndroidInstancesApp(request)
          body = send_request('StopAndroidInstancesApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopAndroidInstancesAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 强制退出游戏

        # @param request: Request instance for StopGame.
        # @type request: :class:`Tencentcloud::gs::V20191118::StopGameRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::StopGameResponse`
        def StopGame(request)
          body = send_request('StopGame', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopGameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止云端推流

        # @param request: Request instance for StopPublishStream.
        # @type request: :class:`Tencentcloud::gs::V20191118::StopPublishStreamRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::StopPublishStreamResponse`
        def StopPublishStream(request)
          body = send_request('StopPublishStream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopPublishStreamResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 切换游戏存档

        # @param request: Request instance for SwitchGameArchive.
        # @type request: :class:`Tencentcloud::gs::V20191118::SwitchGameArchiveRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::SwitchGameArchiveResponse`
        def SwitchGameArchive(request)
          body = send_request('SwitchGameArchive', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SwitchGameArchiveResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 同步安卓实例镜像

        # @param request: Request instance for SyncAndroidInstanceImage.
        # @type request: :class:`Tencentcloud::gs::V20191118::SyncAndroidInstanceImageRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::SyncAndroidInstanceImageResponse`
        def SyncAndroidInstanceImage(request)
          body = send_request('SyncAndroidInstanceImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SyncAndroidInstanceImageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在安卓实例上同步执行命令，仅支持1秒内可以返回结果的命令，例如：ls、cd。同时执行的实例数量不能过多，否则可能云api返回超时。不支持超过1秒无法返回或无法自主结束的命令，例如：top、vim，执行结果最大1KB

        # @param request: Request instance for SyncExecuteCommandOnAndroidInstances.
        # @type request: :class:`Tencentcloud::gs::V20191118::SyncExecuteCommandOnAndroidInstancesRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::SyncExecuteCommandOnAndroidInstancesResponse`
        def SyncExecuteCommandOnAndroidInstances(request)
          body = send_request('SyncExecuteCommandOnAndroidInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SyncExecuteCommandOnAndroidInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 尝试锁定机器

        # @param request: Request instance for TrylockWorker.
        # @type request: :class:`Tencentcloud::gs::V20191118::TrylockWorkerRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::TrylockWorkerResponse`
        def TrylockWorker(request)
          body = send_request('TrylockWorker', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TrylockWorkerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 卸载安卓实例应用

        # @param request: Request instance for UninstallAndroidInstancesApp.
        # @type request: :class:`Tencentcloud::gs::V20191118::UninstallAndroidInstancesAppRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::UninstallAndroidInstancesAppResponse`
        def UninstallAndroidInstancesApp(request)
          body = send_request('UninstallAndroidInstancesApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UninstallAndroidInstancesAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 上传文件到安卓实例

        # @param request: Request instance for UploadFileToAndroidInstances.
        # @type request: :class:`Tencentcloud::gs::V20191118::UploadFileToAndroidInstancesRequest`
        # @rtype: :class:`Tencentcloud::gs::V20191118::UploadFileToAndroidInstancesResponse`
        def UploadFileToAndroidInstances(request)
          body = send_request('UploadFileToAndroidInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadFileToAndroidInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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