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
  module Ivld
    module V20210903
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-09-03'
            api_endpoint = 'ivld.tencentcloudapi.com'
            sdk_version = 'IVLD_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 增加自定义人脸图片，每个自定义人物最多可包含10张人脸图片

        # 请注意，与创建自定义人物一样，图片数据优先级优于图片URL优先级

        # @param request: Request instance for AddCustomPersonImage.
        # @type request: :class:`Tencentcloud::ivld::V20210903::AddCustomPersonImageRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::AddCustomPersonImageResponse`
        def AddCustomPersonImage(request)
          body = send_request('AddCustomPersonImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddCustomPersonImageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建自定义人物分类信息

        # 当L2Category为空时，将创建一级自定义分类。
        # 当L1Category与L2Category均不为空时，将创建二级自定义分类。请注意，**只有当一级自定义分类存在时，才可创建二级自定义分类**。

        # @param request: Request instance for CreateCustomCategory.
        # @type request: :class:`Tencentcloud::ivld::V20210903::CreateCustomCategoryRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::CreateCustomCategoryResponse`
        def CreateCustomCategory(request)
          body = send_request('CreateCustomCategory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCustomCategoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建自定义人物库

        # Bucket的格式参考为 `bucketName-123456.cos.ap-shanghai.myqcloud.com`

        # 在调用CreateCustomPerson和AddCustomPersonImage接口之前，请先确保本接口成功调用。当前每个用户只支持一个自定义人物库，一旦自定义人物库创建成功，后续接口调用均会返回人物库已存在错误。

        # 由于人脸图片对于自定义人物识别至关重要，因此自定义人物识别功能需要用户显式指定COS存储桶方可使用。具体来说，自定义人物识别功能接口(主要是CreateCustomPerson和AddCustomPersonImage)会在此COS桶下面新建IVLDCustomPersonImage目录，并在此目录下存储自定义人物图片数据以支持后续潜在的特征更新。

        # 请注意：本接口指定的COS桶仅用于**备份存储自定义人物图片**，CreateCustomPerson和AddCustomPersonImage接口入参URL可使用任意COS存储桶下的任意图片。

        # **重要**：请务必确保本接口指定的COS存储桶存在(不要手动删除COS桶)。COS存储桶一旦指定，将不能修改。

        # @param request: Request instance for CreateCustomGroup.
        # @type request: :class:`Tencentcloud::ivld::V20210903::CreateCustomGroupRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::CreateCustomGroupResponse`
        def CreateCustomGroup(request)
          body = send_request('CreateCustomGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCustomGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建自定义人物。

        # 输入人物名称，基本信息，分类信息与人脸图片，创建自定义人物

        # 人脸图片可使用图片数据(base64编码的图片数据)或者图片URL(推荐使用COS以减少下载时间，其他地址也支持)，原始图片优先，也即如果同时指定了图片数据和图片URL，接口将仅使用图片数据

        # @param request: Request instance for CreateCustomPerson.
        # @type request: :class:`Tencentcloud::ivld::V20210903::CreateCustomPersonRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::CreateCustomPersonResponse`
        def CreateCustomPerson(request)
          body = send_request('CreateCustomPerson', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCustomPersonResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建默认自定义人物类型

        # @param request: Request instance for CreateDefaultCategories.
        # @type request: :class:`Tencentcloud::ivld::V20210903::CreateDefaultCategoriesRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::CreateDefaultCategoriesResponse`
        def CreateDefaultCategories(request)
          body = send_request('CreateDefaultCategories', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDefaultCategoriesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建智能标签任务。

        # 请注意，本接口为异步接口，**返回TaskId只代表任务创建成功，不代表任务执行成功**。

        # @param request: Request instance for CreateTask.
        # @type request: :class:`Tencentcloud::ivld::V20210903::CreateTaskRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::CreateTaskResponse`
        def CreateTask(request)
          body = send_request('CreateTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除自定义分类信息

        # @param request: Request instance for DeleteCustomCategory.
        # @type request: :class:`Tencentcloud::ivld::V20210903::DeleteCustomCategoryRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::DeleteCustomCategoryResponse`
        def DeleteCustomCategory(request)
          body = send_request('DeleteCustomCategory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCustomCategoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除自定义人物

        # @param request: Request instance for DeleteCustomPerson.
        # @type request: :class:`Tencentcloud::ivld::V20210903::DeleteCustomPersonRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::DeleteCustomPersonResponse`
        def DeleteCustomPerson(request)
          body = send_request('DeleteCustomPerson', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCustomPersonResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除自定义人脸数据

        # @param request: Request instance for DeleteCustomPersonImage.
        # @type request: :class:`Tencentcloud::ivld::V20210903::DeleteCustomPersonImageRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::DeleteCustomPersonImageResponse`
        def DeleteCustomPersonImage(request)
          body = send_request('DeleteCustomPersonImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCustomPersonImageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 将MediaId对应的媒资文件从系统中删除。

        # **请注意，本接口仅删除媒资文件，媒资文件对应的视频分析结果不会被删除**。如您需要删除结构化分析结果，请调用DeleteTask接口。

        # @param request: Request instance for DeleteMedia.
        # @type request: :class:`Tencentcloud::ivld::V20210903::DeleteMediaRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::DeleteMediaResponse`
        def DeleteMedia(request)
          body = send_request('DeleteMedia', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMediaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除任务信息

        # 请注意，本接口**不会**删除媒资文件

        # 只有已完成(成功或者失败)的任务可以删除，**正在执行中的任务不支持删除**

        # @param request: Request instance for DeleteTask.
        # @type request: :class:`Tencentcloud::ivld::V20210903::DeleteTaskRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::DeleteTaskResponse`
        def DeleteTask(request)
          body = send_request('DeleteTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量描述自定义人物分类信息

        # @param request: Request instance for DescribeCustomCategories.
        # @type request: :class:`Tencentcloud::ivld::V20210903::DescribeCustomCategoriesRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::DescribeCustomCategoriesResponse`
        def DescribeCustomCategories(request)
          body = send_request('DescribeCustomCategories', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomCategoriesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 描述自定义人物库信息，当前库大小(库中有多少人脸)，以及库中的存储桶

        # @param request: Request instance for DescribeCustomGroup.
        # @type request: :class:`Tencentcloud::ivld::V20210903::DescribeCustomGroupRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::DescribeCustomGroupResponse`
        def DescribeCustomGroup(request)
          body = send_request('DescribeCustomGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 描述自定义人物详细信息，包括人物信息与人物信息

        # @param request: Request instance for DescribeCustomPersonDetail.
        # @type request: :class:`Tencentcloud::ivld::V20210903::DescribeCustomPersonDetailRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::DescribeCustomPersonDetailResponse`
        def DescribeCustomPersonDetail(request)
          body = send_request('DescribeCustomPersonDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomPersonDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量描述自定义人物


        # @param request: Request instance for DescribeCustomPersons.
        # @type request: :class:`Tencentcloud::ivld::V20210903::DescribeCustomPersonsRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::DescribeCustomPersonsResponse`
        def DescribeCustomPersons(request)
          body = send_request('DescribeCustomPersons', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomPersonsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 描述媒资文件信息，包括媒资状态，分辨率，帧率等。

        # 如果媒资文件未完成导入，本接口将仅输出媒资文件的状态信息；导入完成后，本接口还将输出媒资文件的其他元信息。

        # @param request: Request instance for DescribeMedia.
        # @type request: :class:`Tencentcloud::ivld::V20210903::DescribeMediaRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::DescribeMediaResponse`
        def DescribeMedia(request)
          body = send_request('DescribeMedia', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMediaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 依照输入条件，描述命中的媒资文件信息，包括媒资状态，分辨率，帧率等。

        # 请注意，本接口最多支持同时描述**50**个媒资文件

        # 如果媒资文件未完成导入，本接口将仅输出媒资文件的状态信息；导入完成后，本接口还将输出媒资文件的其他元信息。

        # @param request: Request instance for DescribeMedias.
        # @type request: :class:`Tencentcloud::ivld::V20210903::DescribeMediasRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::DescribeMediasResponse`
        def DescribeMedias(request)
          body = send_request('DescribeMedias', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMediasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 描述智能标签任务进度。

        # 请注意，**此接口仅返回任务执行状态信息，不返回任务执行结果**


        # @param request: Request instance for DescribeTask.
        # @type request: :class:`Tencentcloud::ivld::V20210903::DescribeTaskRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::DescribeTaskResponse`
        def DescribeTask(request)
          body = send_request('DescribeTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 描述任务信息，如果任务成功完成，还将返回任务结果

        # @param request: Request instance for DescribeTaskDetail.
        # @type request: :class:`Tencentcloud::ivld::V20210903::DescribeTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::DescribeTaskDetailResponse`
        def DescribeTaskDetail(request)
          body = send_request('DescribeTaskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 依照输入条件，描述命中的任务信息，包括任务创建时间，处理时间信息等。

        # 请注意，本接口最多支持同时描述**50**个任务信息

        # @param request: Request instance for DescribeTasks.
        # @type request: :class:`Tencentcloud::ivld::V20210903::DescribeTasksRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::DescribeTasksResponse`
        def DescribeTasks(request)
          body = send_request('DescribeTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 将URL指向的媒资视频文件导入系统之中。

        # **请注意，本接口为异步接口**。接口返回MediaId仅代表导入视频任务发起，不代表任务完成，您可调用读接口(DescribeMedia/DescribeMedias)接口查询MediaId对应的媒资文件的状态。

        # 当前URL只支持COS地址，其形式为`https://${Bucket}-${AppId}.cos.${Region}.myqcloud.com/${ObjectKey}`，其中`${Bucket}`为您的COS桶名称，Region为COS桶所在[可用区](https://cloud.tencent.com/document/product/213/6091)，`${ObjectKey}`为指向存储在COS桶内的待分析的视频的[ObjectKey](https://cloud.tencent.com/document/product/436/13324)

        # 分析完成后，本产品将在您的`${Bucket}`桶内创建名为`${ObjectKey}-${task-start-time}`的目录(`task-start-time`形式为1970-01-01T08:08:08)并将分析结果将回传回该目录，也即，结构化分析结果(包括图片，JSON等数据)将会写回`https://${Bucket}-${AppId}.cos.${Region}.myqcloud.com/${ObjectKey}-${task-start-time}`目录

        # @param request: Request instance for ImportMedia.
        # @type request: :class:`Tencentcloud::ivld::V20210903::ImportMediaRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::ImportMediaResponse`
        def ImportMedia(request)
          body = send_request('ImportMedia', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImportMediaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用户设置对应事件的回调地址

        # ### 回调事件消息通知协议

        # #### 网络协议
        # - 回调接口协议目前仅支持http/https协议；
        # - 请求：HTTP POST 请求，包体内容为 JSON，每一种消息的具体包体内容参见后文。
        # - 应答：HTTP STATUS CODE = 200，服务端忽略应答包具体内容，为了协议友好，建议客户应答内容携带 JSON： `{"code":0}`

        # #### 通知可靠性

        # 事件通知服务具备重试能力，事件通知失败后会总计重试3次；
        # 为了避免重试对您的服务器以及网络带宽造成冲击，请保持正常回包。触发重试条件如下：
        # - 长时间（20 秒）未回包应答。
        # - 应答 HTTP STATUS 不为200。


        # #### 回调接口协议

        # ##### 分析任务完成消息回调
        # | 参数名称 | 必选 | 类型 | 描述 |
        # |---------|---------|---------|---------|
        # | EventType | 是 | int | 回调时间类型，1-任务分析完成，2-媒资导入完成 |
        # | TaskId | 是 | String | 任务ID |
        # | TaskStatus | 是 | [TaskStatus](/document/product/1611/63373?!preview&preview_docmenu=1&lang=cn&!document=1#TaskStatus) | 任务执行状态 |
        # | FailedReason | 是 | String | 若任务失败，该字段为失败原因 |


        # ##### 导入媒资完成消息回调
        # | 参数名称 | 必选 | 类型 | 描述 |
        # |---------|---------|---------|---------|
        # | EventType | 是 | int | 回调时间类型，1-任务分析完成，2-媒资导入完成 |
        # | MediaId | 是 | String | 媒资ID |
        # | MediaStatus | 是 | [MediaStatus](/document/product/1611/63373?!preview&preview_docmenu=1&lang=cn&!document=1#MediaStatus) | 媒资导入状态|
        # | FailedReason | 是 | String | 若任务失败，该字段为失败原因 |

        # @param request: Request instance for ModifyCallback.
        # @type request: :class:`Tencentcloud::ivld::V20210903::ModifyCallbackRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::ModifyCallbackResponse`
        def ModifyCallback(request)
          body = send_request('ModifyCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCallbackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户回调设置

        # @param request: Request instance for QueryCallback.
        # @type request: :class:`Tencentcloud::ivld::V20210903::QueryCallbackRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::QueryCallbackResponse`
        def QueryCallback(request)
          body = send_request('QueryCallback', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryCallbackResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新自定义人物分类

        # 当L2Category为空时，代表更新CategoryId对应的一级自定义人物类型以及所有二级自定义人物类型所从属的一级自定义人物类型；
        # 当L2Category非空时，仅更新CategoryId对应的二级自定义人物类型

        # @param request: Request instance for UpdateCustomCategory.
        # @type request: :class:`Tencentcloud::ivld::V20210903::UpdateCustomCategoryRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::UpdateCustomCategoryResponse`
        def UpdateCustomCategory(request)
          body = send_request('UpdateCustomCategory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCustomCategoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新自定义人物信息，包括姓名，简要信息，分类信息等

        # @param request: Request instance for UpdateCustomPerson.
        # @type request: :class:`Tencentcloud::ivld::V20210903::UpdateCustomPersonRequest`
        # @rtype: :class:`Tencentcloud::ivld::V20210903::UpdateCustomPersonResponse`
        def UpdateCustomPerson(request)
          body = send_request('UpdateCustomPerson', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCustomPersonResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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