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
  module Tci
    module V20190318
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-03-18'
            api_endpoint = 'tci.tencentcloudapi.com'
            sdk_version = 'TCI_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 提供 AI 助教基础版本功能接口

        # @param request: Request instance for AIAssistant.
        # @type request: :class:`Tencentcloud::tci::V20190318::AIAssistantRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::AIAssistantResponse`
        def AIAssistant(request)
          body = send_request('AIAssistant', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AIAssistantResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于取消已经提交的任务，目前只支持图像任务。

        # @param request: Request instance for CancelTask.
        # @type request: :class:`Tencentcloud::tci::V20190318::CancelTaskRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::CancelTaskResponse`
        def CancelTask(request)
          body = send_request('CancelTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 检查人脸图片是否合法

        # @param request: Request instance for CheckFacePhoto.
        # @type request: :class:`Tencentcloud::tci::V20190318::CheckFacePhotoRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::CheckFacePhotoResponse`
        def CheckFacePhoto(request)
          body = send_request('CheckFacePhoto', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckFacePhotoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建人脸

        # @param request: Request instance for CreateFace.
        # @type request: :class:`Tencentcloud::tci::V20190318::CreateFaceRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::CreateFaceResponse`
        def CreateFace(request)
          body = send_request('CreateFace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建人员库

        # @param request: Request instance for CreateLibrary.
        # @type request: :class:`Tencentcloud::tci::V20190318::CreateLibraryRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::CreateLibraryResponse`
        def CreateLibrary(request)
          body = send_request('CreateLibrary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLibraryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建人员

        # @param request: Request instance for CreatePerson.
        # @type request: :class:`Tencentcloud::tci::V20190318::CreatePersonRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::CreatePersonResponse`
        def CreatePerson(request)
          body = send_request('CreatePerson', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePersonResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建词汇

        # @param request: Request instance for CreateVocab.
        # @type request: :class:`Tencentcloud::tci::V20190318::CreateVocabRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::CreateVocabResponse`
        def CreateVocab(request)
          body = send_request('CreateVocab', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVocabResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 建立词汇库

        # @param request: Request instance for CreateVocabLib.
        # @type request: :class:`Tencentcloud::tci::V20190318::CreateVocabLibRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::CreateVocabLibResponse`
        def CreateVocabLib(request)
          body = send_request('CreateVocabLib', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVocabLibResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除人脸

        # @param request: Request instance for DeleteFace.
        # @type request: :class:`Tencentcloud::tci::V20190318::DeleteFaceRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::DeleteFaceResponse`
        def DeleteFace(request)
          body = send_request('DeleteFace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteFaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除人员库

        # @param request: Request instance for DeleteLibrary.
        # @type request: :class:`Tencentcloud::tci::V20190318::DeleteLibraryRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::DeleteLibraryResponse`
        def DeleteLibrary(request)
          body = send_request('DeleteLibrary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLibraryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除人员

        # @param request: Request instance for DeletePerson.
        # @type request: :class:`Tencentcloud::tci::V20190318::DeletePersonRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::DeletePersonResponse`
        def DeletePerson(request)
          body = send_request('DeletePerson', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePersonResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除词汇

        # @param request: Request instance for DeleteVocab.
        # @type request: :class:`Tencentcloud::tci::V20190318::DeleteVocabRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::DeleteVocabResponse`
        def DeleteVocab(request)
          body = send_request('DeleteVocab', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteVocabResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除词汇库

        # @param request: Request instance for DeleteVocabLib.
        # @type request: :class:`Tencentcloud::tci::V20190318::DeleteVocabLibRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::DeleteVocabLibResponse`
        def DeleteVocabLib(request)
          body = send_request('DeleteVocabLib', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteVocabLibResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取标准化接口任务结果

        # @param request: Request instance for DescribeAITaskResult.
        # @type request: :class:`Tencentcloud::tci::V20190318::DescribeAITaskResultRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::DescribeAITaskResultResponse`
        def DescribeAITaskResult(request)
          body = send_request('DescribeAITaskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAITaskResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 人脸考勤查询结果

        # @param request: Request instance for DescribeAttendanceResult.
        # @type request: :class:`Tencentcloud::tci::V20190318::DescribeAttendanceResultRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::DescribeAttendanceResultResponse`
        def DescribeAttendanceResult(request)
          body = send_request('DescribeAttendanceResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAttendanceResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 音频评估任务信息查询接口，异步查询客户提交的请求的结果。

        # @param request: Request instance for DescribeAudioTask.
        # @type request: :class:`Tencentcloud::tci::V20190318::DescribeAudioTaskRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::DescribeAudioTaskResponse`
        def DescribeAudioTask(request)
          body = send_request('DescribeAudioTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAudioTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 音频对话任务评估任务信息查询接口，异步查询客户提交的请求的结果。

        # @param request: Request instance for DescribeConversationTask.
        # @type request: :class:`Tencentcloud::tci::V20190318::DescribeConversationTaskRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::DescribeConversationTaskResponse`
        def DescribeConversationTask(request)
          body = send_request('DescribeConversationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConversationTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 视频精彩集锦结果查询接口，异步查询客户提交的请求的结果。

        # @param request: Request instance for DescribeHighlightResult.
        # @type request: :class:`Tencentcloud::tci::V20190318::DescribeHighlightResultRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::DescribeHighlightResultResponse`
        def DescribeHighlightResult(request)
          body = send_request('DescribeHighlightResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHighlightResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 拉取任务详情

        # @param request: Request instance for DescribeImageTask.
        # @type request: :class:`Tencentcloud::tci::V20190318::DescribeImageTaskRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::DescribeImageTaskResponse`
        def DescribeImageTask(request)
          body = send_request('DescribeImageTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取图像任务统计信息

        # @param request: Request instance for DescribeImageTaskStatistic.
        # @type request: :class:`Tencentcloud::tci::V20190318::DescribeImageTaskStatisticRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::DescribeImageTaskStatisticResponse`
        def DescribeImageTaskStatistic(request)
          body = send_request('DescribeImageTaskStatistic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageTaskStatisticResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取人员库列表

        # @param request: Request instance for DescribeLibraries.
        # @type request: :class:`Tencentcloud::tci::V20190318::DescribeLibrariesRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::DescribeLibrariesResponse`
        def DescribeLibraries(request)
          body = send_request('DescribeLibraries', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLibrariesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取人员详情

        # @param request: Request instance for DescribePerson.
        # @type request: :class:`Tencentcloud::tci::V20190318::DescribePersonRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::DescribePersonResponse`
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

        # 拉取人员列表

        # @param request: Request instance for DescribePersons.
        # @type request: :class:`Tencentcloud::tci::V20190318::DescribePersonsRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::DescribePersonsResponse`
        def DescribePersons(request)
          body = send_request('DescribePersons', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePersonsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询词汇

        # @param request: Request instance for DescribeVocab.
        # @type request: :class:`Tencentcloud::tci::V20190318::DescribeVocabRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::DescribeVocabResponse`
        def DescribeVocab(request)
          body = send_request('DescribeVocab', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVocabResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询词汇库

        # @param request: Request instance for DescribeVocabLib.
        # @type request: :class:`Tencentcloud::tci::V20190318::DescribeVocabLibRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::DescribeVocabLibResponse`
        def DescribeVocabLib(request)
          body = send_request('DescribeVocabLib', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVocabLibResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改人员库信息

        # @param request: Request instance for ModifyLibrary.
        # @type request: :class:`Tencentcloud::tci::V20190318::ModifyLibraryRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::ModifyLibraryResponse`
        def ModifyLibrary(request)
          body = send_request('ModifyLibrary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLibraryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改人员信息

        # @param request: Request instance for ModifyPerson.
        # @type request: :class:`Tencentcloud::tci::V20190318::ModifyPersonRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::ModifyPersonResponse`
        def ModifyPerson(request)
          body = send_request('ModifyPerson', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPersonResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 音频任务提交接口

        # @param request: Request instance for SubmitAudioTask.
        # @type request: :class:`Tencentcloud::tci::V20190318::SubmitAudioTaskRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::SubmitAudioTaskResponse`
        def SubmitAudioTask(request)
          body = send_request('SubmitAudioTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitAudioTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提交人员考勤任务，支持包括点播和直播资源；支持通过DescribeAttendanceResult查询结果，也支持通过NoticeUrl设置考勤回调结果，回调结果结构如下：
        # ##### 回调事件结构
        #  | 参数名称 | 类型 | 描述 |
        #  | ----  | ---  | ------  |
        #  | jobid | Integer | 任务ID |
        #  | person_info | array of PersonInfo | 识别到的人员列表 |
        # #####子结构PersonInfo
        #  | 参数名称 | 类型 | 描述 |
        #  | ----  | ---  | ------  |
        #  | traceid | String | 可用于区分同一路视频流下的不同陌生人 |
        #  | personid | String | 识别到的人员ID，如果是陌生人则返回空串 |
        #  | libid | String | 识别到的人员所在的库ID，如果是陌生人则返回空串 |
        #  | timestamp | uint64 | 识别到人脸的绝对时间戳，单位ms |
        #  | image_url | string | 识别到人脸的事件抓图的下载地址，不长期保存，需要请及时下载 |

        # @param request: Request instance for SubmitCheckAttendanceTask.
        # @type request: :class:`Tencentcloud::tci::V20190318::SubmitCheckAttendanceTaskRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::SubmitCheckAttendanceTaskResponse`
        def SubmitCheckAttendanceTask(request)
          body = send_request('SubmitCheckAttendanceTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitCheckAttendanceTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 支持多路视频流，提交高级人员考勤任务

        # @param request: Request instance for SubmitCheckAttendanceTaskPlus.
        # @type request: :class:`Tencentcloud::tci::V20190318::SubmitCheckAttendanceTaskPlusRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::SubmitCheckAttendanceTaskPlusResponse`
        def SubmitCheckAttendanceTaskPlus(request)
          body = send_request('SubmitCheckAttendanceTaskPlus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitCheckAttendanceTaskPlusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 对话任务分析接口

        # @param request: Request instance for SubmitConversationTask.
        # @type request: :class:`Tencentcloud::tci::V20190318::SubmitConversationTaskRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::SubmitConversationTaskResponse`
        def SubmitConversationTask(request)
          body = send_request('SubmitConversationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitConversationTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发起双路视频生成精彩集锦接口。该接口可以通过客户传入的学生音视频及老师视频两路Url，自动生成一堂课程的精彩集锦。需要通过DescribeHighlightResult
        # 接口获取生成结果。

        # @param request: Request instance for SubmitDoubleVideoHighlights.
        # @type request: :class:`Tencentcloud::tci::V20190318::SubmitDoubleVideoHighlightsRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::SubmitDoubleVideoHighlightsResponse`
        def SubmitDoubleVideoHighlights(request)
          body = send_request('SubmitDoubleVideoHighlights', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitDoubleVideoHighlightsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # **传统课堂授课任务**：在此场景中，老师为站立授课，有白板或投影供老师展示课程内容，摄像头可以拍摄到老师的半身或者全身。拍摄视频为一路全局画面，且背景不动，要求画面稳定清晰。通过此接口可分析老师授课的行为及语音，以支持AI评教。

        # **提供的功能接口有：**老师人脸识别、老师表情识别、老师肢体动作识别、语音识别。  可分析的指标维度包括：身份识别、正脸、侧脸、人脸坐标、人脸尺寸、高兴、中性、高兴、中性、惊讶、厌恶、恐惧、愤怒、蔑视、悲伤、正面讲解、写板书、指黑板、语音转文字、发音时长、非发音时长、音量、语速、指定关键词的使用等

        # **对场景的要求为：**真实场景老师1人出现在画面中，全局画面且背景不动；人脸上下角度在20度以内，左右角度在15度以内，歪头角度在15度以内；光照均匀，无遮挡，人脸清晰可见；像素最好在 100X100 像素以上，但是图像整体质量不能超过1080p。

        # **结果查询方式：**图像任务直接返回结果，点播及直播任务通过DescribeAITaskResult查询结果。

        # @param request: Request instance for SubmitFullBodyClassTask.
        # @type request: :class:`Tencentcloud::tci::V20190318::SubmitFullBodyClassTaskRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::SubmitFullBodyClassTaskResponse`
        def SubmitFullBodyClassTask(request)
          body = send_request('SubmitFullBodyClassTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitFullBodyClassTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发起视频生成精彩集锦接口。该接口可以通过客户传入的课程音频数据及相关策略（如微笑抽取，专注抽取等），自动生成一堂课程的精彩集锦。需要通过QueryHighlightResult接口获取生成结果。

        # @param request: Request instance for SubmitHighlights.
        # @type request: :class:`Tencentcloud::tci::V20190318::SubmitHighlightsRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::SubmitHighlightsResponse`
        def SubmitHighlights(request)
          body = send_request('SubmitHighlights', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitHighlightsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提交图像分析任务

        # @param request: Request instance for SubmitImageTask.
        # @type request: :class:`Tencentcloud::tci::V20190318::SubmitImageTaskRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::SubmitImageTaskResponse`
        def SubmitImageTask(request)
          body = send_request('SubmitImageTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitImageTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 高级图像分析任务，开放了图像任务里的所有开关，可以根据场景深度定制图像分析任务。支持的图像类别有，图片链接、图片二进制数据、点播链接和直播链接。

        # @param request: Request instance for SubmitImageTaskPlus.
        # @type request: :class:`Tencentcloud::tci::V20190318::SubmitImageTaskPlusRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::SubmitImageTaskPlusResponse`
        def SubmitImageTaskPlus(request)
          body = send_request('SubmitImageTaskPlus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitImageTaskPlusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # **提交在线1对1课堂任务**
        # 对于在线1对1课堂，老师通过视频向学生授课，并且学生人数为1人。通过上传学生端的图像信息，可以获取学生的听课情况分析。 具体指一路全局画面且背景不动，有1位学生的头像或上半身的画面，要求画面稳定清晰。

        # **提供的功能接口有：**学生人脸识别、学生表情识别、语音识别。可分析的指标维度包括：学生身份识别、正脸、侧脸、抬头、低头、人脸坐标、人脸尺寸、高兴、中性、高兴、中性、惊讶、厌恶、恐惧、愤怒、蔑视、悲伤、语音转文字、发音时长、非发音时长、音量、语速等。

        # **对场景的要求为：**真实常规1v1授课场景，学生2人以下，全局画面且背景不动；人脸上下角度在20度以内，左右角度在15度以内，歪头角度在15度以内；光照均匀，无遮挡，人脸清晰可见；像素最好在 100X100 像素以上，但是图像整体质量不能超过1080p。

        # **结果查询方式：**图像任务直接返回结果，点播及直播任务通过DescribeAITaskResult查询结果。

        # @param request: Request instance for SubmitOneByOneClassTask.
        # @type request: :class:`Tencentcloud::tci::V20190318::SubmitOneByOneClassTaskRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::SubmitOneByOneClassTaskResponse`
        def SubmitOneByOneClassTask(request)
          body = send_request('SubmitOneByOneClassTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitOneByOneClassTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # **提交线下小班（无课桌）课任务**
        # 线下小班课是指有学生无课桌的课堂，满座15人以下，全局画面且背景不动，能清晰看到。

        # **提供的功能接口有：**学生人脸识别、学生表情识别、学生肢体动作识别。  可分析的指标维度包括：身份识别、正脸、侧脸、抬头、低头、高兴、中性、高兴、中性、惊讶、厌恶、恐惧、愤怒、蔑视、悲伤、站立、举手、坐着等。

        # **对场景的要求为：**真实常规教室，满座15人以下，全局画面且背景不动；人脸上下角度在20度以内，左右角度在15度以内，歪头角度在15度以内；光照均匀，无遮挡，人脸清晰可见；像素最好在 100X100 像素以上但是图像整体质量不能超过1080p。

        # **结果查询方式：**图像任务直接返回结果，点播及直播任务通过DescribeAITaskResult查询结果。

        # @param request: Request instance for SubmitOpenClassTask.
        # @type request: :class:`Tencentcloud::tci::V20190318::SubmitOpenClassTaskRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::SubmitOpenClassTaskResponse`
        def SubmitOpenClassTask(request)
          body = send_request('SubmitOpenClassTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitOpenClassTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # **在线小班课任务**：此场景是在线授课场景，老师一般为坐着授课，摄像头可以拍摄到老师的头部及上半身。拍摄视频为一路全局画面，且背景不动，要求画面稳定清晰。通过此接口可分析老师授课的行为及语音，以支持AI评教。

        # **提供的功能接口有：**老师人脸识别、老师表情识别、老师手势识别、光线识别、语音识别。 可分析的指标维度包括：身份识别、正脸、侧脸、人脸坐标、人脸尺寸、高兴、中性、高兴、中性、惊讶、厌恶、恐惧、愤怒、蔑视、悲伤、点赞手势、听你说手势、听我说手势、拿教具行为、语音转文字、发音时长、非发音时长、音量、语速、指定关键词的使用等

        # **对场景的要求为：**在线常规授课场景，全局画面且背景不动；人脸上下角度在20度以内，左右角度在15度以内，歪头角度在15度以内；光照均匀，无遮挡，人脸清晰可见；像素最好在 100X100 像素以上，但是图像整体质量不能超过1080p。

        # **结果查询方式：**图像任务直接返回结果，点播及直播任务通过DescribeAITaskResult查询结果。

        # @param request: Request instance for SubmitPartialBodyClassTask.
        # @type request: :class:`Tencentcloud::tci::V20190318::SubmitPartialBodyClassTaskRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::SubmitPartialBodyClassTaskResponse`
        def SubmitPartialBodyClassTask(request)
          body = send_request('SubmitPartialBodyClassTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitPartialBodyClassTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # **提交线下传统面授大班课（含课桌）任务。**
        # 传统教室课堂是指有学生课堂有课桌的课堂，满座20-50人，全局画面且背景不动。

        # **提供的功能接口有：**学生人脸识别、学生表情识别、学生肢体动作识别。可分析的指标维度包括：学生身份识别、正脸、侧脸、抬头、低头、高兴、中性、高兴、中性、惊讶、厌恶、恐惧、愤怒、蔑视、悲伤、举手、站立、坐着、趴桌子、玩手机等

        # **对场景的要求为：**传统的学生上课教室，满座20-50人，全局画面且背景不动；人脸上下角度在20度以内，左右角度在15度以内，歪头角度在15度以内；光照均匀，无遮挡，人脸清晰可见；像素最好在 100X100 像素以上，但是图像整体质量不能超过1080p。

        # **结果查询方式：**图像任务直接返回结果，点播及直播任务通过DescribeAITaskResult查询结果。


        # @param request: Request instance for SubmitTraditionalClassTask.
        # @type request: :class:`Tencentcloud::tci::V20190318::SubmitTraditionalClassTaskRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::SubmitTraditionalClassTaskResponse`
        def SubmitTraditionalClassTask(request)
          body = send_request('SubmitTraditionalClassTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitTraditionalClassTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 分析音频信息

        # @param request: Request instance for TransmitAudioStream.
        # @type request: :class:`Tencentcloud::tci::V20190318::TransmitAudioStreamRequest`
        # @rtype: :class:`Tencentcloud::tci::V20190318::TransmitAudioStreamResponse`
        def TransmitAudioStream(request)
          body = send_request('TransmitAudioStream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TransmitAudioStreamResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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