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
  module Iai
    module V20180301
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-03-01'
            api_endpoint = 'iai.tencentcloudapi.com'
            sdk_version = 'IAI_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 对请求图片进行五官定位（也称人脸关键点定位），获得人脸的精准信息，返回多达888点关键信息，对五官和脸部轮廓进行精确定位。

        # @param request: Request instance for AnalyzeDenseLandmarks.
        # @type request: :class:`Tencentcloud::iai::V20180301::AnalyzeDenseLandmarksRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::AnalyzeDenseLandmarksResponse`
        def AnalyzeDenseLandmarks(request)
          body = send_request('AnalyzeDenseLandmarks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AnalyzeDenseLandmarksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 对请求图片进行五官定位（也称人脸关键点定位），计算构成人脸轮廓的 90 个点，包括眉毛（左右各 8 点）、眼睛（左右各 8 点）、鼻子（13 点）、嘴巴（22 点）、脸型轮廓（21 点）、眼珠[或瞳孔]（2点）。

        # >
        # - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。

        # @param request: Request instance for AnalyzeFace.
        # @type request: :class:`Tencentcloud::iai::V20180301::AnalyzeFaceRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::AnalyzeFaceResponse`
        def AnalyzeFace(request)
          body = send_request('AnalyzeFace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AnalyzeFaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 对两张图片中的人脸进行相似度比对，返回人脸相似度分数。

        # 若您需要判断 “此人是否是某人”，即验证某张图片中的人是否是已知身份的某人，如常见的人脸登录场景，建议使用[人脸验证](https://cloud.tencent.com/document/product/867/32806)或[人员验证](https://cloud.tencent.com/document/product/867/38879)接口。

        # >
        # - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。

        # @param request: Request instance for CompareFace.
        # @type request: :class:`Tencentcloud::iai::V20180301::CompareFaceRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::CompareFaceResponse`
        def CompareFace(request)
          body = send_request('CompareFace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CompareFaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 将已存在于某人员库的人员复制到其他人员库，该人员的描述信息不会被复制。单个人员最多只能同时存在100个人员库中。
        # >
        # - 注：若该人员创建时算法模型版本为2.0，复制到非2.0算法模型版本的Group中时，复制操作将会失败。

        # @param request: Request instance for CopyPerson.
        # @type request: :class:`Tencentcloud::iai::V20180301::CopyPersonRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::CopyPersonResponse`
        def CopyPerson(request)
          body = send_request('CopyPerson', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CopyPersonResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 将一组人脸图片添加到一个人员中。一个人员最多允许包含 5 张图片。若该人员存在多个人员库中，所有人员库中该人员图片均会增加。

        # >
        # - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。

        # @param request: Request instance for CreateFace.
        # @type request: :class:`Tencentcloud::iai::V20180301::CreateFaceRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::CreateFaceResponse`
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

        # 用于创建一个空的人员库，如果人员库已存在返回错误。
        # 可根据需要创建自定义描述字段，用于辅助描述该人员库下的人员信息。

        # 1个APPID下最多创建10万个人员库（Group）、最多包含5000万张人脸（Face）。

        # 不同算法模型版本（FaceModelVersion）的人员库（Group）最多可包含人脸（Face）数不同。算法模型版本为2.0的人员库最多包含100万张人脸，算法模型版本为3.0的人员库最多可包含300万张人脸。

        # @param request: Request instance for CreateGroup.
        # @type request: :class:`Tencentcloud::iai::V20180301::CreateGroupRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::CreateGroupResponse`
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

        # 创建人员，添加人脸、姓名、性别及其他相关信息。

        # >
        # - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。

        # @param request: Request instance for CreatePerson.
        # @type request: :class:`Tencentcloud::iai::V20180301::CreatePersonRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::CreatePersonResponse`
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

        # 删除一个人员下的人脸图片。如果该人员只有一张人脸图片，则返回错误。

        # @param request: Request instance for DeleteFace.
        # @type request: :class:`Tencentcloud::iai::V20180301::DeleteFaceRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::DeleteFaceResponse`
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

        # 删除该人员库及包含的所有的人员。同时，人员对应的所有人脸信息将被删除。若某人员同时存在多个人员库中，该人员不会被删除，但属于该人员库中的自定义描述字段信息会被删除，属于其他人员库的自定义描述字段信息不受影响。

        # @param request: Request instance for DeleteGroup.
        # @type request: :class:`Tencentcloud::iai::V20180301::DeleteGroupRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::DeleteGroupResponse`
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

        # 删除该人员信息，此操作会导致所有人员库均删除此人员。同时，该人员的所有人脸信息将被删除。

        # @param request: Request instance for DeletePerson.
        # @type request: :class:`Tencentcloud::iai::V20180301::DeletePersonRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::DeletePersonResponse`
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

        # 从某人员库中删除人员，此操作仅影响该人员库。若该人员仅存在于指定的人员库中，该人员将被删除，其所有的人脸信息也将被删除。

        # @param request: Request instance for DeletePersonFromGroup.
        # @type request: :class:`Tencentcloud::iai::V20180301::DeletePersonFromGroupRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::DeletePersonFromGroupResponse`
        def DeletePersonFromGroup(request)
          body = send_request('DeletePersonFromGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePersonFromGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 检测给定图片中的人脸（Face）的位置、相应的面部属性和人脸质量信息，位置包括 (x，y，w，h)，面部属性包括性别（gender）、年龄（age）、表情（expression）、魅力（beauty）、眼镜（glass）、发型（hair）、口罩（mask）和姿态 (pitch，roll，yaw)，人脸质量信息包括整体质量分（score）、模糊分（sharpness）、光照分（brightness）和五官遮挡分（completeness）。


        # 其中，人脸质量信息主要用于评价输入的人脸图片的质量。在使用人脸识别服务时，建议您对输入的人脸图片进行质量检测，提升后续业务处理的效果。该功能的应用场景包括：

        # 1） 人员库[创建人员](https://cloud.tencent.com/document/product/867/32793)/[增加人脸](https://cloud.tencent.com/document/product/867/32795)：保证人员人脸信息的质量，便于后续的业务处理。

        # 2） [人脸搜索](https://cloud.tencent.com/document/product/867/32798)：保证输入的图片质量，快速准确匹配到对应的人员。

        # 3） [人脸验证](https://cloud.tencent.com/document/product/867/32806)：保证人脸信息的质量，避免明明是本人却认证不通过的情况。

        # 4） [人脸融合](https://cloud.tencent.com/product/facefusion)：保证上传的人脸质量，人脸融合的效果更好。

        # >
        # - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。

        # @param request: Request instance for DetectFace.
        # @type request: :class:`Tencentcloud::iai::V20180301::DetectFaceRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::DetectFaceResponse`
        def DetectFace(request)
          body = send_request('DetectFace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetectFaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 检测给定图片中的人脸（Face）的位置、相应的面部属性和人脸质量信息，位置包括 (x，y，w，h)，面部属性包括性别（gender）、年龄（age）、表情（expression）、魅力（beauty）、眼镜（glass）、发型（hair）、口罩（mask）和姿态 (pitch，roll，yaw)，人脸质量信息包括整体质量分（score）、模糊分（sharpness）、光照分（brightness）和五官遮挡分（completeness）。


        # 其中，人脸质量信息主要用于评价输入的人脸图片的质量。在使用人脸识别服务时，建议您对输入的人脸图片进行质量检测，提升后续业务处理的效果。该功能的应用场景包括：

        # 1） 人员库[创建人员](https://cloud.tencent.com/document/product/867/32793)/[增加人脸](https://cloud.tencent.com/document/product/867/32795)：保证人员人脸信息的质量，便于后续的业务处理。

        # 2） [人脸搜索](https://cloud.tencent.com/document/product/867/32798)：保证输入的图片质量，快速准确匹配到对应的人员。

        # 3） [人脸验证](https://cloud.tencent.com/document/product/867/32806)：保证人脸信息的质量，避免明明是本人却认证不通过的情况。

        # 4） [人脸融合](https://cloud.tencent.com/product/facefusion)：保证上传的人脸质量，人脸融合的效果更好。

        # >
        # - 本接口是[人脸检测与分析](https://cloud.tencent.com/document/product/867/32800)的升级，具体在于：

        # 1.本接口可以指定需要计算返回的人脸属性，避免无效计算，降低耗时；

        # 2.本接口支持更多属性细项数，也会持续增加更多功能。

        # 请您使用本接口完成相应的人脸检测与属性分析需求。

        # - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。

        # @param request: Request instance for DetectFaceAttributes.
        # @type request: :class:`Tencentcloud::iai::V20180301::DetectFaceAttributesRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::DetectFaceAttributesResponse`
        def DetectFaceAttributes(request)
          body = send_request('DetectFaceAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetectFaceAttributesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于对用户上传的静态图片进行人脸活体检测。与动态活体检测的区别是：静态活体检测中，用户不需要通过唇语或摇头眨眼等动作来识别。

        # 静态活体检测适用于手机自拍的场景，或对防攻击要求不高的场景。如果对活体检测有更高安全性要求，请使用[人脸核身·云智慧眼](https://cloud.tencent.com/product/faceid)产品。

        # >
        # - 图片的宽高比请接近3：4，不符合宽高比的图片返回的分值不具备参考意义。本接口适用于类手机自拍场景，非类手机自拍照返回的分值不具备参考意义。

        # >
        # - 使用过程中建议正对摄像头，不要距离太远，使面部可以完整地显示在识别的框内，识别过程中不要移动设备或遮挡面部。不要选择光线过强或过弱的环境进行面部识别，识别时不要添加任何滤镜。

        # >
        # - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。

        # ## 调用次数计费（资源包）
        # |资源包规格|100万次|1000万次|5000万次|1亿次|
        # |-|-|-|-|-|
        # |人脸静态活体检测|1800元|17400元|75000元|110000元|

        # ## 调用次数计费（后付费）
        # |月接口调用总量|0<调用量≤300万|300万<调用量≤1500万|调用量>1500万|
        # |-|-|-|-|
        # |人脸静态活体检测|0.0019元/次|0.0017元/次|0.0013元/次|

        # @param request: Request instance for DetectLiveFace.
        # @type request: :class:`Tencentcloud::iai::V20180301::DetectLiveFaceRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::DetectLiveFaceResponse`
        def DetectLiveFace(request)
          body = send_request('DetectLiveFace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetectLiveFaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取人员库信息。

        # @param request: Request instance for GetGroupInfo.
        # @type request: :class:`Tencentcloud::iai::V20180301::GetGroupInfoRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::GetGroupInfoResponse`
        def GetGroupInfo(request)
          body = send_request('GetGroupInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetGroupInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取人员库列表。

        # @param request: Request instance for GetGroupList.
        # @type request: :class:`Tencentcloud::iai::V20180301::GetGroupListRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::GetGroupListResponse`
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

        # 获取指定人员的信息，包括姓名、性别、人脸等。

        # @param request: Request instance for GetPersonBaseInfo.
        # @type request: :class:`Tencentcloud::iai::V20180301::GetPersonBaseInfoRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::GetPersonBaseInfoResponse`
        def GetPersonBaseInfo(request)
          body = send_request('GetPersonBaseInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetPersonBaseInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定人员的信息，包括加入的人员库、描述内容等。

        # @param request: Request instance for GetPersonGroupInfo.
        # @type request: :class:`Tencentcloud::iai::V20180301::GetPersonGroupInfoRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::GetPersonGroupInfoResponse`
        def GetPersonGroupInfo(request)
          body = send_request('GetPersonGroupInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetPersonGroupInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定人员库中的人员列表。

        # @param request: Request instance for GetPersonList.
        # @type request: :class:`Tencentcloud::iai::V20180301::GetPersonListRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::GetPersonListResponse`
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

        # 获取指定人员库中人员数量。

        # @param request: Request instance for GetPersonListNum.
        # @type request: :class:`Tencentcloud::iai::V20180301::GetPersonListNumRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::GetPersonListNumResponse`
        def GetPersonListNum(request)
          body = send_request('GetPersonListNum', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetPersonListNumResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 避免官网歧义

        # 获取人员库升级任务列表

        # @param request: Request instance for GetUpgradeGroupFaceModelVersionJobList.
        # @type request: :class:`Tencentcloud::iai::V20180301::GetUpgradeGroupFaceModelVersionJobListRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::GetUpgradeGroupFaceModelVersionJobListResponse`
        def GetUpgradeGroupFaceModelVersionJobList(request)
          body = send_request('GetUpgradeGroupFaceModelVersionJobList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetUpgradeGroupFaceModelVersionJobListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 避免官网歧义

        # 人员库升级结果查询

        # @param request: Request instance for GetUpgradeGroupFaceModelVersionResult.
        # @type request: :class:`Tencentcloud::iai::V20180301::GetUpgradeGroupFaceModelVersionResultRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::GetUpgradeGroupFaceModelVersionResultResponse`
        def GetUpgradeGroupFaceModelVersionResult(request)
          body = send_request('GetUpgradeGroupFaceModelVersionResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetUpgradeGroupFaceModelVersionResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改人员库名称、备注、自定义描述字段名称。

        # @param request: Request instance for ModifyGroup.
        # @type request: :class:`Tencentcloud::iai::V20180301::ModifyGroupRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::ModifyGroupResponse`
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

        # 修改人员信息，包括名称、性别等。人员名称和性别修改会同步到包含该人员的所有人员库。

        # @param request: Request instance for ModifyPersonBaseInfo.
        # @type request: :class:`Tencentcloud::iai::V20180301::ModifyPersonBaseInfoRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::ModifyPersonBaseInfoResponse`
        def ModifyPersonBaseInfo(request)
          body = send_request('ModifyPersonBaseInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPersonBaseInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改指定人员库人员描述内容。

        # @param request: Request instance for ModifyPersonGroupInfo.
        # @type request: :class:`Tencentcloud::iai::V20180301::ModifyPersonGroupInfoRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::ModifyPersonGroupInfoResponse`
        def ModifyPersonGroupInfo(request)
          body = send_request('ModifyPersonGroupInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPersonGroupInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 此接口文档早已废弃，为了避免官网18版本存留歧义，需要下线

        # 本接口用于回滚人员库的人脸识别算法模型版本。单个人员库有且仅有一次回滚机会。

        # 回滚操作会在10s内生效，回滚操作中，您对人员库的操作可能会失效。

        # @param request: Request instance for RevertGroupFaceModelVersion.
        # @type request: :class:`Tencentcloud::iai::V20180301::RevertGroupFaceModelVersionRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::RevertGroupFaceModelVersionResponse`
        def RevertGroupFaceModelVersion(request)
          body = send_request('RevertGroupFaceModelVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RevertGroupFaceModelVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于对一张待识别的人脸图片，在一个或多个人员库中识别出最相似的 TopK 人员，识别结果按照相似度从大到小排序。

        # 支持一次性识别图片中的最多 10 张人脸，支持一次性跨 100 个人员库（Group）搜索。

        # 单次搜索的人员库人脸总数量和人员库的算法模型版本（FaceModelVersion）相关。算法模型版本为2.0的人员库，单次搜索人员库人脸总数量不得超过 100 万张；算法模型版本为3.0的人员库，单次搜索人员库人脸总数量不得超过 300 万张。

        # 与[人员搜索](https://cloud.tencent.com/document/product/867/38881)及[人员搜索按库返回](https://cloud.tencent.com/document/product/867/38880)接口不同的是，本接口将该人员（Person）下的每个人脸（Face）都作为单独个体进行验证，而人员搜索及人员搜索按库返回接口 会将该人员（Person）下的所有人脸（Face）进行融合特征处理，即若某个Person下有4张 Face，本接口会将4张 Face 的特征进行融合处理，生成对应这个 Person 的特征，使搜索更加准确。


        # 本接口需与[人员库管理相关接口](https://cloud.tencent.com/document/product/867/32794)结合使用。

        # >
        # - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。

        # @param request: Request instance for SearchFaces.
        # @type request: :class:`Tencentcloud::iai::V20180301::SearchFacesRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::SearchFacesResponse`
        def SearchFaces(request)
          body = send_request('SearchFaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchFacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于对一张待识别的人脸图片，在一个或多个人员库中识别出最相似的 TopK 人员，按照**人员库的维度**以人员相似度从大到小顺序排列。

        # 支持一次性识别图片中的最多 10 张人脸，支持跨人员库（Group）搜索。

        # 单次搜索的人员库人脸总数量和人员库的算法模型版本（FaceModelVersion）相关。算法模型版本为2.0的人员库，单次搜索人员库人脸总数量不得超过 100 万张；算法模型版本为3.0的人员库，单次搜索人员库人脸总数量不得超过 300 万张。

        # 与[人员搜索](https://cloud.tencent.com/document/product/867/38881)及[人员搜索按库返回](https://cloud.tencent.com/document/product/867/38880)接口不同的是，本接口将该人员（Person）下的每个人脸（Face）都作为单独个体进行验证，而[人员搜索](https://cloud.tencent.com/document/product/867/38881)及[人员搜索按库返回](https://cloud.tencent.com/document/product/867/38880)接口 会将该人员（Person）下的所有人脸（Face）进行融合特征处理，即若某个Person下有4张 Face，本接口会将4张 Face 的特征进行融合处理，生成对应这个 Person 的特征，使搜索更加准确。

        # 本接口需与[人员库管理相关接口](https://cloud.tencent.com/document/product/867/32794)结合使用。

        # >
        # - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。

        # @param request: Request instance for SearchFacesReturnsByGroup.
        # @type request: :class:`Tencentcloud::iai::V20180301::SearchFacesReturnsByGroupRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::SearchFacesReturnsByGroupResponse`
        def SearchFacesReturnsByGroup(request)
          body = send_request('SearchFacesReturnsByGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchFacesReturnsByGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于对一张待识别的人脸图片，在一个或多个人员库中识别出最相似的 TopK 人员，按照相似度从大到小排列。

        # 支持一次性识别图片中的最多 10 张人脸，支持一次性跨 100 个人员库（Group）搜索。

        # 单次搜索的人员库人脸总数量和人员库的算法模型版本（FaceModelVersion）相关。算法模型版本为2.0的人员库，单次搜索人员库人脸总数量不得超过 100 万张；算法模型版本为3.0的人员库，单次搜索人员库人脸总数量不得超过 300 万张。

        # 本接口会将该人员（Person）下的所有人脸（Face）进行融合特征处理，即若某个 Person 下有4张 Face ，本接口会将4张 Face 的特征进行融合处理，生成对应这个 Person 的特征，使人员搜索（确定待识别的人脸图片是某人）更加准确。而[人脸搜索](https://cloud.tencent.com/document/product/867/32798)及[人脸搜索按库返回接口](https://cloud.tencent.com/document/product/867/38882)将该人员（Person）下的每个人脸（Face）都作为单独个体进行搜索。

        # >
        # - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
        # - 仅支持算法模型版本（FaceModelVersion）为3.0的人员库。

        # @param request: Request instance for SearchPersons.
        # @type request: :class:`Tencentcloud::iai::V20180301::SearchPersonsRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::SearchPersonsResponse`
        def SearchPersons(request)
          body = send_request('SearchPersons', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchPersonsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于对一张待识别的人脸图片，在一个或多个人员库中识别出最相似的 TopK 人员，按照**人员库的维度**以人员相似度从大到小顺序排列。

        # 支持一次性识别图片中的最多 10 张人脸，支持跨人员库（Group）搜索。

        # 单次搜索的人员库人脸总数量和人员库的算法模型版本（FaceModelVersion）相关。算法模型版本为2.0的人员库，单次搜索人员库人脸总数量不得超过 100 万张；算法模型版本为3.0的人员库，单次搜索人员库人脸总数量不得超过 300 万张。

        # 本接口会将该人员（Person）下的所有人脸（Face）进行融合特征处理，即若某个 Person 下有4张 Face ，本接口会将4张 Face 的特征进行融合处理，生成对应这个 Person 的特征，使人员搜索（确定待识别的人脸图片是某人）更加准确。而[人脸搜索](https://cloud.tencent.com/document/product/867/32798)及[人脸搜索按库返回接口](https://cloud.tencent.com/document/product/867/38882)将该人员（Person）下的每个人脸（Face）都作为单独个体进行搜索。
        # >
        # - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
        # - 仅支持算法模型版本（FaceModelVersion）为3.0的人员库。

        # @param request: Request instance for SearchPersonsReturnsByGroup.
        # @type request: :class:`Tencentcloud::iai::V20180301::SearchPersonsReturnsByGroupRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::SearchPersonsReturnsByGroupResponse`
        def SearchPersonsReturnsByGroup(request)
          body = send_request('SearchPersonsReturnsByGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchPersonsReturnsByGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 接口已经不使用了，需要下线掉，以免留在官网产生歧义

        # 升级人员库。升级过程中，人员库仍然为原算法版本，人员库相关操作仍然支持。升级完成后，人员库为新算法版本。
        # 单个人员库有且仅支持一次回滚操作。
        # 注：此处QPS限制为10。

        # @param request: Request instance for UpgradeGroupFaceModelVersion.
        # @type request: :class:`Tencentcloud::iai::V20180301::UpgradeGroupFaceModelVersionRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::UpgradeGroupFaceModelVersionResponse`
        def UpgradeGroupFaceModelVersion(request)
          body = send_request('UpgradeGroupFaceModelVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeGroupFaceModelVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 给定一张人脸图片和一个 PersonId，判断图片中的人和 PersonId 对应的人是否为同一人。PersonId 请参考[人员库管理相关接口](https://cloud.tencent.com/document/product/867/32794)。

        # 与[人脸比对](https://cloud.tencent.com/document/product/867/32802)接口不同的是，人脸验证用于判断 “此人是否是此人”，“此人”的信息已存于人员库中，“此人”可能存在多张人脸图片；而[人脸比对](https://cloud.tencent.com/document/product/867/32802)用于判断两张人脸的相似度。

        # 与[人员验证](https://cloud.tencent.com/document/product/867/38879)接口不同的是，人脸验证将该人员（Person）下的每个人脸（Face）都作为单独个体进行验证，而[人员验证](https://cloud.tencent.com/document/product/867/38879)会将该人员（Person）下的所有人脸（Face）进行融合特征处理，即若某个 Person下有4张 Face，人员验证接口会将4张 Face 的特征进行融合处理，生成对应这个 Person 的特征，使人员验证（确定待识别的人脸图片是某人员）更加准确。

        # >
        # - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。

        # @param request: Request instance for VerifyFace.
        # @type request: :class:`Tencentcloud::iai::V20180301::VerifyFaceRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::VerifyFaceResponse`
        def VerifyFace(request)
          body = send_request('VerifyFace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifyFaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 给定一张人脸图片和一个 PersonId，判断图片中的人和 PersonId 对应的人是否为同一人。PersonId 请参考[人员库管理相关接口](https://cloud.tencent.com/document/product/867/32794)。
        # 本接口会将该人员（Person）下的所有人脸（Face）进行融合特征处理，即若某个Person下有4张 Face，本接口会将4张 Face 的特征进行融合处理，生成对应这个 Person 的特征，使人员验证（确定待识别的人脸图片是某人员）更加准确。

        #  和人脸比对相关接口不同的是，人脸验证相关接口用于判断 “此人是否是此人”，“此人”的信息已存于人员库中，“此人”可能存在多张人脸图片；而人脸比对相关接口用于判断两张人脸的相似度。


        # >
        # - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
        # - 仅支持算法模型版本（FaceModelVersion）为3.0的人员库。

        # @param request: Request instance for VerifyPerson.
        # @type request: :class:`Tencentcloud::iai::V20180301::VerifyPersonRequest`
        # @rtype: :class:`Tencentcloud::iai::V20180301::VerifyPersonResponse`
        def VerifyPerson(request)
          body = send_request('VerifyPerson', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifyPersonResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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