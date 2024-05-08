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

module TencentCloud
  module Hcm
    module V20181106
      # Evaluation请求参数结构体
      class EvaluationRequest < TencentCloud::Common::AbstractModel
        # @param SessionId: 图片唯一标识，一张图片一个SessionId；
        # @type SessionId: String
        # @param Image: 图片数据，需要使用base64对图片的二进制数据进行编码，与url参数二者填一即可；
        # @type Image: String
        # @param HcmAppid: 业务应用ID，与账号应用APPID无关，是用来方便客户管理服务的参数，新的 HcmAppid 可以在[控制台](https://console.cloud.tencent.com/hcm)【应用管理】下新建。
        # @type HcmAppid: String
        # @param Url: 图片url，与Image参数二者填一即可；
        # @type Url: String
        # @param SupportHorizontalImage: 横屏拍摄开关，若开启则支持传输横屏拍摄的图片；
        # @type SupportHorizontalImage: Boolean
        # @param RejectNonArithmeticImage: 拒绝非速算图（如风景图、人物图）开关，若开启，则遇到非速算图会快速返回拒绝的结果，但极端情况下可能会影响评估结果（比如算式截图贴到风景画里可能被判为非速算图直接返回了）。
        # @type RejectNonArithmeticImage: Boolean
        # @param IsAsync: 异步模式标识，0：同步模式，1：异步模式。默认为同步模式
        # @type IsAsync: Integer
        # @param EnableDispRelatedVertical: 是否展开耦合算式中的竖式计算
        # @type EnableDispRelatedVertical: Boolean
        # @param EnableDispMidresult: 是否展示竖式算式的中间结果和格式控制字符
        # @type EnableDispMidresult: Boolean
        # @param EnablePdfRecognize: 是否开启pdf识别，默认开启
        # @type EnablePdfRecognize: Boolean
        # @param PdfPageIndex: pdf页码，从0开始，默认为0
        # @type PdfPageIndex: Integer
        # @param LaTex: 是否返回LaTex，默认为0返回普通格式，设置成1返回LaTex格式
        # @type LaTex: Integer
        # @param RejectVagueArithmetic: 用于选择是否拒绝模糊题 目。打开则丢弃模糊题目， 不进行后续的判题返回结 果。
        # @type RejectVagueArithmetic: Boolean

        attr_accessor :SessionId, :Image, :HcmAppid, :Url, :SupportHorizontalImage, :RejectNonArithmeticImage, :IsAsync, :EnableDispRelatedVertical, :EnableDispMidresult, :EnablePdfRecognize, :PdfPageIndex, :LaTex, :RejectVagueArithmetic
        extend Gem::Deprecate
        deprecate :IsAsync, :none, 2024, 5
        deprecate :IsAsync=, :none, 2024, 5

        def initialize(sessionid=nil, image=nil, hcmappid=nil, url=nil, supporthorizontalimage=nil, rejectnonarithmeticimage=nil, isasync=nil, enabledisprelatedvertical=nil, enabledispmidresult=nil, enablepdfrecognize=nil, pdfpageindex=nil, latex=nil, rejectvaguearithmetic=nil)
          @SessionId = sessionid
          @Image = image
          @HcmAppid = hcmappid
          @Url = url
          @SupportHorizontalImage = supporthorizontalimage
          @RejectNonArithmeticImage = rejectnonarithmeticimage
          @IsAsync = isasync
          @EnableDispRelatedVertical = enabledisprelatedvertical
          @EnableDispMidresult = enabledispmidresult
          @EnablePdfRecognize = enablepdfrecognize
          @PdfPageIndex = pdfpageindex
          @LaTex = latex
          @RejectVagueArithmetic = rejectvaguearithmetic
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @Image = params['Image']
          @HcmAppid = params['HcmAppid']
          @Url = params['Url']
          @SupportHorizontalImage = params['SupportHorizontalImage']
          @RejectNonArithmeticImage = params['RejectNonArithmeticImage']
          @IsAsync = params['IsAsync']
          @EnableDispRelatedVertical = params['EnableDispRelatedVertical']
          @EnableDispMidresult = params['EnableDispMidresult']
          @EnablePdfRecognize = params['EnablePdfRecognize']
          @PdfPageIndex = params['PdfPageIndex']
          @LaTex = params['LaTex']
          @RejectVagueArithmetic = params['RejectVagueArithmetic']
        end
      end

      # Evaluation返回参数结构体
      class EvaluationResponse < TencentCloud::Common::AbstractModel
        # @param SessionId: 图片唯一标识，一张图片一个SessionId；
        # @type SessionId: String
        # @param Items: 识别出的算式信息；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param TaskId: 任务 id，用于查询接口
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SessionId, :Items, :TaskId, :RequestId
        extend Gem::Deprecate
        deprecate :TaskId, :none, 2024, 5
        deprecate :TaskId=, :none, 2024, 5

        def initialize(sessionid=nil, items=nil, taskid=nil, requestid=nil)
          @SessionId = sessionid
          @Items = items
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              item_tmp = Item.new
              item_tmp.deserialize(i)
              @Items << item_tmp
            end
          end
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 识别出的算术式信息及评估结果
      class Item < TencentCloud::Common::AbstractModel
        # @param Item: 识别的算式是否正确，算式运算结果:
        # ‘YES’:正确
        # ‘NO’: 错误
        # ‘NA’: 非法参数
        # ‘EMPTY’: 未作答
        # @type Item: String
        # @param ItemString: 识别出的算式，识别出的文本行字符串
        # @type ItemString: String
        # @param ItemCoord: 识别的算式在图片上的位置信息，文本行在旋转纠正之后的图像中的像素坐 标，表示为(左上角 x, 左上角 y，宽 width， 高 height)
        # @type ItemCoord: :class:`Tencentcloud::Hcm.v20181106.models.ItemCoord`
        # @param Answer: 错题推荐答案，算式运算结果正确返回为 ""，算式运算结果错误返回推荐答案 (注:暂不支持多个关系运算符(如 1<10<7)、 无关系运算符(如 frac(1,2)+frac(2,3))、单 位换算(如 1 元=100 角)错题的推荐答案 返回)
        # (注:使用@@标记答案填写区域)
        # @type Answer: String
        # @param ExpressionType: 算式题型编号，如加减乘除四则题型，具体题型及编号如下：1 加减乘除四则 2 加减乘除已知结果求运算因子3 判断大小 4 约等于估算 5 带余数除法 6 分数四则运算 7 单位换算 8 竖式加减法 9 竖式乘除法 10 脱式计算 11 解方程
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpressionType: String
        # @param ItemConf: 文本行置信度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ItemConf: Float
        # @param QuestionId: 用于标识题目 id，如果有若干算式属于同一 题，则其对应的 id 相同。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QuestionId: String

        attr_accessor :Item, :ItemString, :ItemCoord, :Answer, :ExpressionType, :ItemConf, :QuestionId

        def initialize(item=nil, itemstring=nil, itemcoord=nil, answer=nil, expressiontype=nil, itemconf=nil, questionid=nil)
          @Item = item
          @ItemString = itemstring
          @ItemCoord = itemcoord
          @Answer = answer
          @ExpressionType = expressiontype
          @ItemConf = itemconf
          @QuestionId = questionid
        end

        def deserialize(params)
          @Item = params['Item']
          @ItemString = params['ItemString']
          unless params['ItemCoord'].nil?
            @ItemCoord = ItemCoord.new
            @ItemCoord.deserialize(params['ItemCoord'])
          end
          @Answer = params['Answer']
          @ExpressionType = params['ExpressionType']
          @ItemConf = params['ItemConf']
          @QuestionId = params['QuestionId']
        end
      end

      # 目标算式在图片上的坐标信息
      class ItemCoord < TencentCloud::Common::AbstractModel
        # @param Height: 算式高度
        # @type Height: Integer
        # @param Width: 算式宽度
        # @type Width: Integer
        # @param X: 算式图的左上角横坐标
        # @type X: Integer
        # @param Y: 算式图的左上角纵坐标
        # @type Y: Integer

        attr_accessor :Height, :Width, :X, :Y

        def initialize(height=nil, width=nil, x=nil, y=nil)
          @Height = height
          @Width = width
          @X = x
          @Y = y
        end

        def deserialize(params)
          @Height = params['Height']
          @Width = params['Width']
          @X = params['X']
          @Y = params['Y']
        end
      end

    end
  end
end

