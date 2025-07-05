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
  module Bda
    module V20200324
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-03-24'
            api_endpoint = 'bda.tencentcloudapi.com'
            sdk_version = 'BDA_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 用于创建一个空的人体库，如果人体库已存在返回错误。

        # 1个APPID下最多有2000W个人体动作轨迹（Trace），最多1W个人体库（Group）。

        # 单个人体库（Group）最多10W个人体动作轨迹（Trace）。

        # 单个人员（Person）最多添加 5 个人体动作轨迹（Trace）。

        # @param request: Request instance for CreateGroup.
        # @type request: :class:`Tencentcloud::bda::V20200324::CreateGroupRequest`
        # @rtype: :class:`Tencentcloud::bda::V20200324::CreateGroupResponse`
        def CreateGroup(request)
          body = send_request('CreateGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建人员，添加对应人员的人体动作轨迹信息。

        # 请注意：
        # - 我们希望您的输入为 严格符合动作轨迹图片 要求的图片。如果您输入的图片不符合动作轨迹图片要求，会对最终效果产生较大负面影响。请您尽量保证一个Trace中的图片人体清晰、无遮挡、连贯；
        # - 一个人体动作轨迹（Trace）可以包含1-5张人体图片。提供越多质量高的人体图片有助于提升最终识别结果；
        # - 无论您在单个Trace中提供了多少张人体图片，我们都将生成一个对应的动作轨迹（Trace）信息。即，Trace仅和本次输入的图片序列相关，和图片的个数无关；
        # - 输入的图片组中，若有部分图片输入不合法（如图片大小过大、分辨率过大、无法解码等），我们将舍弃这部分图片，确保合法图片被正确搜索。即，我们将尽可能保证请求成功，去除不合法的输入；
        # - 构成人体动作轨迹单张图片大小不得超过2M，分辨率不得超过1920*1080。

        # @param request: Request instance for CreatePerson.
        # @type request: :class:`Tencentcloud::bda::V20200324::CreatePersonRequest`
        # @rtype: :class:`Tencentcloud::bda::V20200324::CreatePersonResponse`
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

        # 本接口为人像分割在线处理接口组中的提交任务接口，可以对提交的资源进行处理视频流/图片流识别视频作品中的人像区域，进行一键抠像、背景替换、人像虚化等后期处理。

        # @param request: Request instance for CreateSegmentationTask.
        # @type request: :class:`Tencentcloud::bda::V20200324::CreateSegmentationTaskRequest`
        # @rtype: :class:`Tencentcloud::bda::V20200324::CreateSegmentationTaskResponse`
        def CreateSegmentationTask(request)
          body = send_request('CreateSegmentationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSegmentationTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 将一个人体动作轨迹添加到一个人员中。一个人员最多允许包含 5 个人体动作轨迹。同一人的人体动作轨迹越多，搜索识别效果越好。

        # >请注意：
        # - 我们希望您的输入为 严格符合动作轨迹图片 要求的图片。如果您输入的图片不符合动作轨迹图片要求，会对最终效果产生较大负面影响。请您尽量保证一个Trace中的图片人体清晰、无遮挡、连贯。
        # - 一个人体动作轨迹（Trace）可以包含1-5张人体图片。提供越多质量高的人体图片有助于提升最终识别结果。
        # - 无论您在单个Trace中提供了多少张人体图片，我们都将生成一个对应的动作轨迹（Trace）信息。即，Trace仅和本次输入的图片序列相关，和图片的个数无关。
        # - 输入的图片组中，若有部分图片输入不合法（如图片大小过大、分辨率过大、无法解码等），我们将舍弃这部分图片，确保合法图片被正确搜索。即，我们将尽可能保证请求成功，去除不合法的输入；
        # - 构成人体动作轨迹单张图片大小限制为2M，分辨率限制为1920*1080。

        # @param request: Request instance for CreateTrace.
        # @type request: :class:`Tencentcloud::bda::V20200324::CreateTraceRequest`
        # @rtype: :class:`Tencentcloud::bda::V20200324::CreateTraceResponse`
        def CreateTrace(request)
          body = send_request('CreateTrace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTraceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除该人体库及包含的所有的人员。

        # @param request: Request instance for DeleteGroup.
        # @type request: :class:`Tencentcloud::bda::V20200324::DeleteGroupRequest`
        # @rtype: :class:`Tencentcloud::bda::V20200324::DeleteGroupResponse`
        def DeleteGroup(request)
          body = send_request('DeleteGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除人员。

        # @param request: Request instance for DeletePerson.
        # @type request: :class:`Tencentcloud::bda::V20200324::DeletePersonRequest`
        # @rtype: :class:`Tencentcloud::bda::V20200324::DeletePersonResponse`
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

        # 可以查看单条任务的处理情况，包括处理状态，处理结果。

        # @param request: Request instance for DescribeSegmentationTask.
        # @type request: :class:`Tencentcloud::bda::V20200324::DescribeSegmentationTaskRequest`
        # @rtype: :class:`Tencentcloud::bda::V20200324::DescribeSegmentationTaskResponse`
        def DescribeSegmentationTask(request)
          body = send_request('DescribeSegmentationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSegmentationTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 检测给定图片中的人体（Body）的位置信息及属性信息。

        # @param request: Request instance for DetectBody.
        # @type request: :class:`Tencentcloud::bda::V20200324::DetectBodyRequest`
        # @rtype: :class:`Tencentcloud::bda::V20200324::DetectBodyResponse`
        def DetectBody(request)
          body = send_request('DetectBody', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetectBodyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 检测图片中人体的14个关键点。建议用于人体图像清晰、无遮挡的场景。支持一张图片中存在多个人体的识别。

        # @param request: Request instance for DetectBodyJoints.
        # @type request: :class:`Tencentcloud::bda::V20200324::DetectBodyJointsRequest`
        # @rtype: :class:`Tencentcloud::bda::V20200324::DetectBodyJointsResponse`
        def DetectBodyJoints(request)
          body = send_request('DetectBodyJoints', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetectBodyJointsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取人体库列表。

        # @param request: Request instance for GetGroupList.
        # @type request: :class:`Tencentcloud::bda::V20200324::GetGroupListRequest`
        # @rtype: :class:`Tencentcloud::bda::V20200324::GetGroupListResponse`
        def GetGroupList(request)
          body = send_request('GetGroupList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetGroupListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定人体库中的人员列表。

        # @param request: Request instance for GetPersonList.
        # @type request: :class:`Tencentcloud::bda::V20200324::GetPersonListRequest`
        # @rtype: :class:`Tencentcloud::bda::V20200324::GetPersonListResponse`
        def GetPersonList(request)
          body = send_request('GetPersonList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetPersonListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取人体库汇总信息。

        # @param request: Request instance for GetSummaryInfo.
        # @type request: :class:`Tencentcloud::bda::V20200324::GetSummaryInfoRequest`
        # @rtype: :class:`Tencentcloud::bda::V20200324::GetSummaryInfoResponse`
        def GetSummaryInfo(request)
          body = send_request('GetSummaryInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetSummaryInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改人体库名称、备注。

        # @param request: Request instance for ModifyGroup.
        # @type request: :class:`Tencentcloud::bda::V20200324::ModifyGroupRequest`
        # @rtype: :class:`Tencentcloud::bda::V20200324::ModifyGroupResponse`
        def ModifyGroup(request)
          body = send_request('ModifyGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改人员信息。

        # @param request: Request instance for ModifyPersonInfo.
        # @type request: :class:`Tencentcloud::bda::V20200324::ModifyPersonInfoRequest`
        # @rtype: :class:`Tencentcloud::bda::V20200324::ModifyPersonInfoResponse`
        def ModifyPersonInfo(request)
          body = send_request('ModifyPersonInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPersonInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于对一组待识别的人体动作轨迹（Trace）图片，在人体库中识别出最相似的 TopK 人体，按照相似度从大到小排列。

        # 人体动作轨迹（Trace）图片要求：图片中当且仅包含一个人体。人体完整、无遮挡。

        # > 请注意：
        # - 我们希望您的输入为严格符合动作轨迹图片要求的图片。如果您输入的图片不符合动作轨迹图片要求，会对最终效果产生较大负面影响；
        # - 人体动作轨迹，是一个包含1-5张图片的图片序列。您可以输入1张图片作为动作轨迹，也可以输入多张。单个动作轨迹中包含越多符合质量的图片，搜索效果越好。
        # - 构成人体动作轨迹单张图片大小不得超过2M，分辨率不得超过1920*1080。

        # @param request: Request instance for SearchTrace.
        # @type request: :class:`Tencentcloud::bda::V20200324::SearchTraceRequest`
        # @rtype: :class:`Tencentcloud::bda::V20200324::SearchTraceResponse`
        def SearchTrace(request)
          body = send_request('SearchTrace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchTraceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在前后景分割的基础上优化多分类分割，支持对头发、五官等的分割，既作为换发型、挂件等底层技术，也可用于抠人头、抠人脸等玩法

        # @param request: Request instance for SegmentCustomizedPortraitPic.
        # @type request: :class:`Tencentcloud::bda::V20200324::SegmentCustomizedPortraitPicRequest`
        # @rtype: :class:`Tencentcloud::bda::V20200324::SegmentCustomizedPortraitPicResponse`
        def SegmentCustomizedPortraitPic(request)
          body = send_request('SegmentCustomizedPortraitPic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SegmentCustomizedPortraitPicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 即二分类人像分割，识别传入图片中人体的完整轮廓，进行抠像。

        # @param request: Request instance for SegmentPortraitPic.
        # @type request: :class:`Tencentcloud::bda::V20200324::SegmentPortraitPicRequest`
        # @rtype: :class:`Tencentcloud::bda::V20200324::SegmentPortraitPicResponse`
        def SegmentPortraitPic(request)
          body = send_request('SegmentPortraitPic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SegmentPortraitPicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 终止指定视频人像分割处理任务

        # @param request: Request instance for TerminateSegmentationTask.
        # @type request: :class:`Tencentcloud::bda::V20200324::TerminateSegmentationTaskRequest`
        # @rtype: :class:`Tencentcloud::bda::V20200324::TerminateSegmentationTaskResponse`
        def TerminateSegmentationTask(request)
          body = send_request('TerminateSegmentationTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TerminateSegmentationTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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