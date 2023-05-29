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
  module Tiia
    module V20190529
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-05-29'
            api_endpoint = 'tiia.tencentcloudapi.com'
            sdk_version = 'TIIA_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 评估输入图片在视觉上的质量，从多个方面评估，并同时给出综合的、客观的清晰度评分，和主观的美观度评分。

        # >
        # - 可前往 [图像处理](https://cloud.tencent.com/document/product/1590) 产品文档中查看更多产品信息。
        # - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。

        # @param request: Request instance for AssessQuality.
        # @type request: :class:`Tencentcloud::tiia::V20190529::AssessQualityRequest`
        # @rtype: :class:`Tencentcloud::tiia::V20190529::AssessQualityResponse`
        def AssessQuality(request)
          body = send_request('AssessQuality', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssessQualityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于创建一个空的图片库，图片库主要用于存储在创建图片时提取的图片特征数据，如果图片库已存在则返回错误。不同的图片库类型对应不同的图像搜索服务类型，根据输入参数GroupType区分。

        # <table>
        #     <th>服务类型</th><th>GroupType</th><th>功能描述</th>
        #     <tr>
        #         <td>通用图像搜索</td>
        #         <td>4</td>
        #         <td>通用图像搜索1.0版。<br>在自建图片库中搜索相同原图或相似图片集，并给出相似度打分，可支持裁剪、翻转、调色、加水印等二次编辑后的图片搜索。适用于图片版权保护、原图查询等场景。</td>
        #     </tr>
        #     <tr>
        #         <td rowspan="2">商品图像搜索</td>
        #         <td>7</td><td>商品图像搜索2.0升级版。<br>
        #         在自建图库中搜索同款或相似商品，并给出相似度打分。对于服饰类商品可支持识别服饰类别、属性等信息。适用于商品分类、检索、推荐等电商场景。</td>
        #     </tr>
        #      <tr>
        #         <td>5</td>
        #         <td>商品图像搜索1.0版。<br>
        #         功能和2.0升级版类似。</td>
        #     </tr>
        #     <tr>
        #     <td>图案花纹搜索</td><td>6</td><td>图案花纹搜索1.0版。<br>
        #     在自建图库中搜索相似的图案、logo、纹理等图像元素或主体，并给出相似度打分。</td>
        #     </tr>
        # </table>

        # >
        # - 可前往 [图像搜索](https://cloud.tencent.com/document/product/1589) 产品文档中查看更多产品信息。

        # @param request: Request instance for CreateGroup.
        # @type request: :class:`Tencentcloud::tiia::V20190529::CreateGroupRequest`
        # @rtype: :class:`Tencentcloud::tiia::V20190529::CreateGroupResponse`
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

        # 创建图片，并添加对应图片的自定义信息。模型将在创建图片时自动提取图像特征并存储到指定的图片库中，每创建一张图片会对应提取和存储一条图片特征数据。

        # >
        # - 可前往 [图像搜索](https://cloud.tencent.com/document/product/1589) 产品文档中查看更多产品信息。


        # @param request: Request instance for CreateImage.
        # @type request: :class:`Tencentcloud::tiia::V20190529::CreateImageRequest`
        # @rtype: :class:`Tencentcloud::tiia::V20190529::CreateImageResponse`
        def CreateImage(request)
          body = send_request('CreateImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateImageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据输入的裁剪比例，智能判断一张图片的最佳裁剪区域，确保原图的主体区域不受影响，以适应不同平台、设备的展示要求，避免简单拉伸带来的变形。

        # >
        # - 可前往 [图像处理](https://cloud.tencent.com/document/product/1590) 产品文档中查看更多产品信息。
        # - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。

        # @param request: Request instance for CropImage.
        # @type request: :class:`Tencentcloud::tiia::V20190529::CropImageRequest`
        # @rtype: :class:`Tencentcloud::tiia::V20190529::CropImageResponse`
        def CropImage(request)
          body = send_request('CropImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CropImageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除图片。

        # >
        # - 可前往 [图像搜索](https://cloud.tencent.com/document/product/1589) 产品文档中查看更多产品信息。

        # @param request: Request instance for DeleteImages.
        # @type request: :class:`Tencentcloud::tiia::V20190529::DeleteImagesRequest`
        # @rtype: :class:`Tencentcloud::tiia::V20190529::DeleteImagesResponse`
        def DeleteImages(request)
          body = send_request('DeleteImages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteImagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询所有的图库信息。

        # >
        # - 可前往 [图像搜索](https://cloud.tencent.com/document/product/1589) 产品文档中查看更多产品信息。

        # @param request: Request instance for DescribeGroups.
        # @type request: :class:`Tencentcloud::tiia::V20190529::DescribeGroupsRequest`
        # @rtype: :class:`Tencentcloud::tiia::V20190529::DescribeGroupsResponse`
        def DescribeGroups(request)
          body = send_request('DescribeGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定图片库中的图片列表。

        # >
        # - 可前往 [图像搜索](https://cloud.tencent.com/document/product/1589) 产品文档中查看更多产品信息。

        # @param request: Request instance for DescribeImages.
        # @type request: :class:`Tencentcloud::tiia::V20190529::DescribeImagesRequest`
        # @rtype: :class:`Tencentcloud::tiia::V20190529::DescribeImagesResponse`
        def DescribeImages(request)
          body = send_request('DescribeImages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 可对图片中厨师穿戴进行识别，支持厨师服识别，厨师帽识别，赤膊识别和口罩识别,可应用于明厨亮灶场景。
        # "被优选过滤"标签值在人体优选开关开启时才会返回。
        # 厨师服：厨师服定义为白色上衣
        # 厨师服识别(酒店版)：厨师服定义为红色，白色，黑色上衣

        # |序号 | 标签名称 | 标签值 |
        # | :-----|  :----------   |:-----------------  |
        # | 1 | 厨师服识别<div style="width: 70pt"> |无厨师服、有厨师服、被优选过滤|
        # | 2 | 厨师服识别（酒店版）<div style="width: 70pt"> |无厨师服、有厨师服、被优选过滤|
        # | 3 | 厨师帽识别<div style="width: 70pt"> |无厨师帽、有厨师帽、被优选过滤	|
        # | 4 | 赤膊识别<div style="width: 70pt"> |非赤膊、赤膊、被优选过滤|
        # | 5 | 口罩识别<div style="width: 70pt"> |无口罩、有口罩、口罩不确定、被优选过滤	|

        # @param request: Request instance for DetectChefDress.
        # @type request: :class:`Tencentcloud::tiia::V20190529::DetectChefDressRequest`
        # @rtype: :class:`Tencentcloud::tiia::V20190529::DetectChefDressResponse`
        def DetectChefDress(request)
          body = send_request('DetectChefDress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetectChefDressResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 输入一张图片，返回AI针对一张图片是否是恶心的一系列判断值。

        # 通过恶心图片识别, 可以判断一张图片是否令人恶心, 同时给出它属于的潜在类别, 让您能够过滤掉使人不愉快的图片。
        # >
        # - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。

        # @param request: Request instance for DetectDisgust.
        # @type request: :class:`Tencentcloud::tiia::V20190529::DetectDisgustRequest`
        # @rtype: :class:`Tencentcloud::tiia::V20190529::DetectDisgustResponse`
        def DetectDisgust(request)
          body = send_request('DetectDisgust', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetectDisgustResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 文件封识别可检测图片中是否包含符合文件封（即文件、单据、资料等的袋状包装）特征的物品，覆盖顺丰快递文件封、文件袋、档案袋等多种文件封类型，可应用于物流行业对文件快递的包装审核等场景。

        # >?
        # - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。

        # @param request: Request instance for DetectEnvelope.
        # @type request: :class:`Tencentcloud::tiia::V20190529::DetectEnvelopeRequest`
        # @rtype: :class:`Tencentcloud::tiia::V20190529::DetectEnvelopeResponse`
        def DetectEnvelope(request)
          body = send_request('DetectEnvelope', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetectEnvelopeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 图像标签利用深度学习技术，可以对图片进行智能分类、物体识别等。

        # 目前支持八个大类、六十多个子类、数千个标签，涵盖各种日常场景、动植物、物品、美食等。

        # 图像标签提供四个版本供选择：

        # • 摄像头版：针对搜索、手机摄像头照片进行优化，涵盖大量卡证、日常物品、二维码条形码。

        # • 相册版：针对手机相册、网盘进行优化，去除相册和网盘中不常见的标签，针对相册常见图片类型（人像、日常活动、日常物品等）识别效果更好。

        # • 网络版：针对网络图片进行优化，涵盖标签更多，满足长尾识别需求。

        # • 新闻版：针对新闻、资讯、广电等行业进行优化，增加定制识别，支持万级图像标签。

        # 为了方便使用、减少图片传输次数，图像标签将不同版本包装成多合一接口，实际上是多个服务，分别计费。建议在接入初期，对四个版本进行对比评估后选择合适的版本使用。

        # >?
        # - 图像标签已升级服务，建议使用新版接口[通用图像标签](https://cloud.tencent.com/document/product/865/75196)。
        # - 图像标签摄像头版、相册版、网络版、新闻版分别按照各自的实际使用次数进行收费，例如一张图片同时使用相册版、摄像头版，则按照两次调用计费。建议测试对比后从中选择一个最合适的版本使用即可。

        # >
        # - 可前往 [图像标签](https://cloud.tencent.com/document/product/1588) 产品文档中查看更多产品信息。
        # - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。

        # @param request: Request instance for DetectLabel.
        # @type request: :class:`Tencentcloud::tiia::V20190529::DetectLabelRequest`
        # @rtype: :class:`Tencentcloud::tiia::V20190529::DetectLabelResponse`
        def DetectLabel(request)
          body = send_request('DetectLabel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetectLabelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 图像标签测试接口

        # >
        # - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。

        # @param request: Request instance for DetectLabelBeta.
        # @type request: :class:`Tencentcloud::tiia::V20190529::DetectLabelBetaRequest`
        # @rtype: :class:`Tencentcloud::tiia::V20190529::DetectLabelBetaResponse`
        def DetectLabelBeta(request)
          body = send_request('DetectLabelBeta', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetectLabelBetaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通用图像标签可识别数千种常见物体或场景，覆盖日常物品、场景、动物、植物、食物、饮品、交通工具等多个大类，返回主体的标签名称和所属细分类目等。

        # >
        # - 可前往 [图像标签](https://cloud.tencent.com/document/product/1588) 产品文档中查看更多产品信息。
        # - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。

        # @param request: Request instance for DetectLabelPro.
        # @type request: :class:`Tencentcloud::tiia::V20190529::DetectLabelProRequest`
        # @rtype: :class:`Tencentcloud::tiia::V20190529::DetectLabelProResponse`
        def DetectLabelPro(request)
          body = send_request('DetectLabelPro', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetectLabelProResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 可以识别输入的图片中是否包含不良行为，例如打架斗殴、赌博、抽烟等，可以应用于广告图、直播截图、短视频截图等审核，减少不良行为对平台内容质量的影响，维护健康向上的互联网环境。
        # >
        # - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。

        # @param request: Request instance for DetectMisbehavior.
        # @type request: :class:`Tencentcloud::tiia::V20190529::DetectMisbehaviorRequest`
        # @rtype: :class:`Tencentcloud::tiia::V20190529::DetectMisbehaviorResponse`
        def DetectMisbehavior(request)
          body = send_request('DetectMisbehavior', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetectMisbehaviorResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 传入一张图片，识别出图片中是否存在宠物
        # >
        # - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。

        # @param request: Request instance for DetectPet.
        # @type request: :class:`Tencentcloud::tiia::V20190529::DetectPetRequest`
        # @rtype: :class:`Tencentcloud::tiia::V20190529::DetectPetResponse`
        def DetectPet(request)
          body = send_request('DetectPet', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetectPetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口支持识别图片中包含的商品，能够输出商品的品类名称、类别，还可以输出商品在图片中的位置。支持一张图片多个商品的识别。
        # >?
        # - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。

        # @param request: Request instance for DetectProduct.
        # @type request: :class:`Tencentcloud::tiia::V20190529::DetectProductRequest`
        # @rtype: :class:`Tencentcloud::tiia::V20190529::DetectProductResponse`
        def DetectProduct(request)
          body = send_request('DetectProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetectProductResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 商品识别-微信识物版，基于人工智能技术、海量训练图片、亿级商品库，可以实现全覆盖、细粒度、高准确率的商品识别和商品推荐功能。
        # 本服务可以识别出图片中的主体位置、主体商品类型，覆盖亿级SKU，输出具体商品的价格、型号等详细信息。
        # 客户无需自建商品库，即可快速实现商品识别、拍照搜商品等功能。
        # >?
        # - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。

        # @param request: Request instance for DetectProductBeta.
        # @type request: :class:`Tencentcloud::tiia::V20190529::DetectProductBetaRequest`
        # @rtype: :class:`Tencentcloud::tiia::V20190529::DetectProductBetaResponse`
        def DetectProductBeta(request)
          body = send_request('DetectProductBeta', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetectProductBetaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 安全属性识别可对图片中人体安全防护属性进行识别，支持识别安全帽，反光衣，护目镜，工服，手套，工地安全带，口罩，抽烟，玩手机等多种属性。
        # "被优选过滤"标签值在人体优选开关开启时才会返回。

        # |序号 | 标签名称 | 标签值 |
        # | :-----|  :----------   |:-----------------  |
        # | 1 | 安全帽识别<div style="width: 70pt"> |无安全帽、有安全帽、被优选过滤|
        # | 2 | 玩手机识别<div style="width: 70pt"> |没有电话、打电话、玩手机、被优选过滤|
        # | 3 | 抽烟识别<div style="width: 70pt"> |没有抽烟、抽烟、被优选过滤	|
        # | 4 | 口罩识别<div style="width: 70pt"> |无口罩、有口罩、口罩不确定、被优选过滤|
        # | 5 | 工地安全带识别<div style="width: 70pt"> |无工地安全带、工地安全带、被优选过滤	|
        # | 6 | 手套识别<div style="width: 70pt"> |无手套、有手套、手套不确定、被优选过滤	|
        # | 7 | 工服识别<div style="width: 70pt"> |无工服、有工服、被优选过滤|
        # | 8 | 护目镜识别<div style="width: 70pt"> |无护目镜、有护目镜、被优选过滤|
        # | 9 | 反光衣识别<div style="width: 70pt"> |无反光衣、有反光衣、被优选过滤|

        # @param request: Request instance for DetectSecurity.
        # @type request: :class:`Tencentcloud::tiia::V20190529::DetectSecurityRequest`
        # @rtype: :class:`Tencentcloud::tiia::V20190529::DetectSecurityResponse`
        def DetectSecurity(request)
          body = send_request('DetectSecurity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetectSecurityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 传入一张图片，输出清晰度提升后的图片。

        # 可以消除图片有损压缩导致的噪声，和使用滤镜、拍摄失焦导致的模糊。让图片的边缘和细节更加清晰自然。

        # >
        # - 可前往 [图像处理](https://cloud.tencent.com/document/product/1590) 产品文档中查看更多产品信息。
        # - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。

        # @param request: Request instance for EnhanceImage.
        # @type request: :class:`Tencentcloud::tiia::V20190529::EnhanceImageRequest`
        # @rtype: :class:`Tencentcloud::tiia::V20190529::EnhanceImageResponse`
        def EnhanceImage(request)
          body = send_request('EnhanceImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnhanceImageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 车辆识别可对图片中车辆的车型进行识别，输出车辆的品牌（如路虎）、车系（如神行者2）、类型（如中型SUV）、颜色和车辆在图中的坐标等信息，覆盖轿车、SUV、大型客车等市面常见车，支持三千多种车辆型号。如果图片中存在多辆车，会分别输出每辆车的车型和坐标。

        # >?
        # - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。

        # @param request: Request instance for RecognizeCar.
        # @type request: :class:`Tencentcloud::tiia::V20190529::RecognizeCarRequest`
        # @rtype: :class:`Tencentcloud::tiia::V20190529::RecognizeCarResponse`
        def RecognizeCar(request)
          body = send_request('RecognizeCar', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RecognizeCarResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 车辆识别（增强版）在车辆识别的基础上**增加了车牌识别的功能，并升级了车型识别的效果**。可对图片中车辆的车型和车牌进行同时识别，输出车辆的车牌信息，以及车辆品牌（如路虎）、车系（如神行者2）、类型（如中型SUV）、颜色和车辆在图中的坐标等信息，覆盖轿车、SUV、大型客车等市面常见车，支持三千多种车辆型号。如果图片中存在多辆车，会分别输出每辆车的车型、车牌和坐标。

        # >?
        # - 公共参数中的签名方式必须指定为V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。

        # @param request: Request instance for RecognizeCarPro.
        # @type request: :class:`Tencentcloud::tiia::V20190529::RecognizeCarProRequest`
        # @rtype: :class:`Tencentcloud::tiia::V20190529::RecognizeCarProResponse`
        def RecognizeCarPro(request)
          body = send_request('RecognizeCarPro', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RecognizeCarProResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于对一张图片，在指定图片库中检索出与之相似的图片列表。

        # >
        # - 可前往 [图像搜索](https://cloud.tencent.com/document/product/1589) 产品文档中查看更多产品信息。


        # @param request: Request instance for SearchImage.
        # @type request: :class:`Tencentcloud::tiia::V20190529::SearchImageRequest`
        # @rtype: :class:`Tencentcloud::tiia::V20190529::SearchImageResponse`
        def SearchImage(request)
          body = send_request('SearchImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchImageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口支持根据图库ID、物品ID、图片名称来修改图片信息（暂仅支持修改Tags）

        # >
        # - 可前往 [图像搜索](https://cloud.tencent.com/document/product/1589) 产品文档中查看更多产品信息。


        # @param request: Request instance for UpdateImage.
        # @type request: :class:`Tencentcloud::tiia::V20190529::UpdateImageRequest`
        # @rtype: :class:`Tencentcloud::tiia::V20190529::UpdateImageResponse`
        def UpdateImage(request)
          body = send_request('UpdateImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateImageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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