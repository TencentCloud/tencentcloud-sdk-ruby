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
  module Bda
    module V20200324
      # 人体年龄信息。
      # AttributesType 不含 Age 或检测超过 5 个人体时，此参数仍返回，但不具备参考意义。
      class Age < TencentCloud::Common::AbstractModel
        # @param Type: 人体年龄信息，返回值为以下集合中的一个{小孩,青年,中年,老年}。
        # @type Type: String
        # @param Probability: Type识别概率值，[0.0,1.0],代表判断正确的概率。如0.8则代表有Type值有80%概率正确。
        # @type Probability: Float

        attr_accessor :Type, :Probability
        
        def initialize(type=nil, probability=nil)
          @Type = type
          @Probability = probability
        end

        def deserialize(params)
          @Type = params['Type']
          @Probability = params['Probability']
        end
      end

      # 返回人体属性选项，此值不填则为不需要返回，可以选择的值为以下六个。
      # Age、Bag、Gender、Orientation、UpperBodyCloth、LowerBodyCloth，详细的解释请看对象描述
      # 需注意本接口最多返回面积最大的 5 个人体属性信息，超过 5 个人体（第 6 个及以后的人体）的人体属性不具备参考意义。
      class AttributesOptions < TencentCloud::Common::AbstractModel
        # @param Age: 返回年龄信息
        # @type Age: Boolean
        # @param Bag: 返回随身挎包信息
        # @type Bag: Boolean
        # @param Gender: 返回性别信息
        # @type Gender: Boolean
        # @param Orientation: 返回朝向信息
        # @type Orientation: Boolean
        # @param UpperBodyCloth: 返回上装信息
        # @type UpperBodyCloth: Boolean
        # @param LowerBodyCloth: 返回下装信息
        # @type LowerBodyCloth: Boolean

        attr_accessor :Age, :Bag, :Gender, :Orientation, :UpperBodyCloth, :LowerBodyCloth
        
        def initialize(age=nil, bag=nil, gender=nil, orientation=nil, upperbodycloth=nil, lowerbodycloth=nil)
          @Age = age
          @Bag = bag
          @Gender = gender
          @Orientation = orientation
          @UpperBodyCloth = upperbodycloth
          @LowerBodyCloth = lowerbodycloth
        end

        def deserialize(params)
          @Age = params['Age']
          @Bag = params['Bag']
          @Gender = params['Gender']
          @Orientation = params['Orientation']
          @UpperBodyCloth = params['UpperBodyCloth']
          @LowerBodyCloth = params['LowerBodyCloth']
        end
      end

      # 人体是否挎包。
      # AttributesType 不含 Bag 或检测超过 5 个人体时，此参数仍返回，但不具备参考意义。
      class Bag < TencentCloud::Common::AbstractModel
        # @param Type: 挎包信息，返回值为以下集合中的一个{双肩包, 斜挎包, 手拎包, 无包}。
        # @type Type: String
        # @param Probability: Type识别概率值，[0.0,1.0],代表判断正确的概率。如0.8则代表有Type值有80%概率正确。
        # @type Probability: Float

        attr_accessor :Type, :Probability
        
        def initialize(type=nil, probability=nil)
          @Type = type
          @Probability = probability
        end

        def deserialize(params)
          @Type = params['Type']
          @Probability = params['Probability']
        end
      end

      # 图中检测出的人体属性信息。
      class BodyAttributeInfo < TencentCloud::Common::AbstractModel
        # @param Age: 人体年龄信息。
        # AttributesType 不含 Age 或检测超过 5 个人体时，此参数仍返回，但不具备参考意义。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Age: :class:`Tencentcloud::Bda.v20200324.models.Age`
        # @param Bag: 人体是否挎包。
        # AttributesType 不含 Bag 或检测超过 5 个人体时，此参数仍返回，但不具备参考意义。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bag: :class:`Tencentcloud::Bda.v20200324.models.Bag`
        # @param Gender: 人体性别信息。
        # AttributesType 不含 Gender 或检测超过 5 个人体时，此参数仍返回，但不具备参考意义。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Gender: :class:`Tencentcloud::Bda.v20200324.models.Gender`
        # @param Orientation: 人体朝向信息。
        # AttributesType 不含 UpperBodyCloth 或检测超过 5 个人体时，此参数仍返回，但不具备参考意义。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Orientation: :class:`Tencentcloud::Bda.v20200324.models.Orientation`
        # @param UpperBodyCloth: 人体上衣属性信息。
        # AttributesType 不含 Orientation 或检测超过 5 个人体时，此参数仍返回，但不具备参考意义。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpperBodyCloth: :class:`Tencentcloud::Bda.v20200324.models.UpperBodyCloth`
        # @param LowerBodyCloth: 人体下衣属性信息。
        # AttributesType 不含 LowerBodyCloth 或检测超过 5 个人体时，此参数仍返回，但不具备参考意义。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LowerBodyCloth: :class:`Tencentcloud::Bda.v20200324.models.LowerBodyCloth`

        attr_accessor :Age, :Bag, :Gender, :Orientation, :UpperBodyCloth, :LowerBodyCloth
        
        def initialize(age=nil, bag=nil, gender=nil, orientation=nil, upperbodycloth=nil, lowerbodycloth=nil)
          @Age = age
          @Bag = bag
          @Gender = gender
          @Orientation = orientation
          @UpperBodyCloth = upperbodycloth
          @LowerBodyCloth = lowerbodycloth
        end

        def deserialize(params)
          unless params['Age'].nil?
            @Age = Age.new.deserialize(params[Age])
          end
          unless params['Bag'].nil?
            @Bag = Bag.new.deserialize(params[Bag])
          end
          unless params['Gender'].nil?
            @Gender = Gender.new.deserialize(params[Gender])
          end
          unless params['Orientation'].nil?
            @Orientation = Orientation.new.deserialize(params[Orientation])
          end
          unless params['UpperBodyCloth'].nil?
            @UpperBodyCloth = UpperBodyCloth.new.deserialize(params[UpperBodyCloth])
          end
          unless params['LowerBodyCloth'].nil?
            @LowerBodyCloth = LowerBodyCloth.new.deserialize(params[LowerBodyCloth])
          end
        end
      end

      # 图中检测出来的人体框。
      class BodyDetectResult < TencentCloud::Common::AbstractModel
        # @param Confidence: 检测出的人体置信度。
        # 误识率百分之十对应的阈值是0.14；误识率百分之五对应的阈值是0.32；误识率百分之二对应的阈值是0.62；误识率百分之一对应的阈值是0.81。
        # 通常情况建议使用阈值0.32，可适用大多数情况。
        # @type Confidence: Float
        # @param BodyRect: 图中检测出来的人体框
        # @type BodyRect: :class:`Tencentcloud::Bda.v20200324.models.BodyRect`
        # @param BodyAttributeInfo: 图中检测出的人体属性信息。
        # @type BodyAttributeInfo: :class:`Tencentcloud::Bda.v20200324.models.BodyAttributeInfo`

        attr_accessor :Confidence, :BodyRect, :BodyAttributeInfo
        
        def initialize(confidence=nil, bodyrect=nil, bodyattributeinfo=nil)
          @Confidence = confidence
          @BodyRect = bodyrect
          @BodyAttributeInfo = bodyattributeinfo
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          unless params['BodyRect'].nil?
            @BodyRect = BodyRect.new.deserialize(params[BodyRect])
          end
          unless params['BodyAttributeInfo'].nil?
            @BodyAttributeInfo = BodyAttributeInfo.new.deserialize(params[BodyAttributeInfo])
          end
        end
      end

      # 人体框和人体关键点信息。
      class BodyJointsResult < TencentCloud::Common::AbstractModel
        # @param BoundBox: 图中检测出来的人体框。
        # @type BoundBox: :class:`Tencentcloud::Bda.v20200324.models.BoundRect`
        # @param BodyJoints: 14个人体关键点的坐标，人体关键点详见KeyPointInfo。
        # @type BodyJoints: Array
        # @param Confidence: 检测出的人体置信度，0-1之间，数值越高越准确。
        # @type Confidence: Float

        attr_accessor :BoundBox, :BodyJoints, :Confidence
        
        def initialize(boundbox=nil, bodyjoints=nil, confidence=nil)
          @BoundBox = boundbox
          @BodyJoints = bodyjoints
          @Confidence = confidence
        end

        def deserialize(params)
          unless params['BoundBox'].nil?
            @BoundBox = BoundRect.new.deserialize(params[BoundBox])
          end
          @BodyJoints = params['BodyJoints']
          @Confidence = params['Confidence']
        end
      end

      # 人体框
      class BodyRect < TencentCloud::Common::AbstractModel
        # @param X: 人体框左上角横坐标。
        # @type X: Integer
        # @param Y: 人体框左上角纵坐标。
        # @type Y: Integer
        # @param Width: 人体宽度。
        # @type Width: Integer
        # @param Height: 人体高度。
        # @type Height: Integer

        attr_accessor :X, :Y, :Width, :Height
        
        def initialize(x=nil, y=nil, width=nil, height=nil)
          @X = x
          @Y = y
          @Width = width
          @Height = height
        end

        def deserialize(params)
          @X = params['X']
          @Y = params['Y']
          @Width = params['Width']
          @Height = params['Height']
        end
      end

      # 人体框
      class BoundRect < TencentCloud::Common::AbstractModel
        # @param X: 人体框左上角横坐标。
        # @type X: Integer
        # @param Y: 人体框左上角纵坐标。
        # @type Y: Integer
        # @param Width: 人体宽度。
        # @type Width: Integer
        # @param Height: 人体高度。
        # @type Height: Integer

        attr_accessor :X, :Y, :Width, :Height
        
        def initialize(x=nil, y=nil, width=nil, height=nil)
          @X = x
          @Y = y
          @Width = width
          @Height = height
        end

        def deserialize(params)
          @X = params['X']
          @Y = params['Y']
          @Width = params['Width']
          @Height = params['Height']
        end
      end

      # 识别出的最相似候选人。
      class Candidate < TencentCloud::Common::AbstractModel
        # @param PersonId: 人员ID。
        # @type PersonId: String
        # @param TraceId: 人体轨迹ID。
        # @type TraceId: String
        # @param Score: 候选者的匹配得分。
        # 十万人体库下，误识率百分之五对应的分数为70分；误识率百分之二对应的分数为80分；误识率百分之一对应的分数为90分。

        # 二十万人体库下，误识率百分之五对应的分数为80分；误识率百分之二对应的分数为90分；误识率百分之一对应的分数为95分。

        # 通常情况建议使用分数80分（保召回）。若希望获得较高精度，建议使用分数90分（保准确）。
        # @type Score: Float

        attr_accessor :PersonId, :TraceId, :Score
        
        def initialize(personid=nil, traceid=nil, score=nil)
          @PersonId = personid
          @TraceId = traceid
          @Score = score
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @TraceId = params['TraceId']
          @Score = params['Score']
        end
      end

      # CreateGroup请求参数结构体
      class CreateGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupName: 人体库名称，[1,60]个字符，可修改，不可重复。
        # @type GroupName: String
        # @param GroupId: 人体库 ID，不可修改，不可重复。支持英文、数字、-%@#&_，长度限制64B。
        # @type GroupId: String
        # @param Tag: 人体库信息备注，[0，40]个字符。
        # @type Tag: String
        # @param BodyModelVersion: 人体识别所用的算法模型版本。
        # 目前入参仅支持 “1.0”1个输入。 默认为"1.0"。
        # 不同算法模型版本对应的人体识别算法不同，新版本的整体效果会优于旧版本，后续我们将推出更新版本。
        # @type BodyModelVersion: String

        attr_accessor :GroupName, :GroupId, :Tag, :BodyModelVersion
        
        def initialize(groupname=nil, groupid=nil, tag=nil, bodymodelversion=nil)
          @GroupName = groupname
          @GroupId = groupid
          @Tag = tag
          @BodyModelVersion = bodymodelversion
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @GroupId = params['GroupId']
          @Tag = params['Tag']
          @BodyModelVersion = params['BodyModelVersion']
        end
      end

      # CreateGroup返回参数结构体
      class CreateGroupResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # CreatePerson请求参数结构体
      class CreatePersonRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 待加入的人员库ID。
        # @type GroupId: String
        # @param PersonName: 人员名称。[1，60]个字符，可修改，可重复。
        # @type PersonName: String
        # @param PersonId: 人员ID，单个腾讯云账号下不可修改，不可重复。
        # 支持英文、数字、-%@#&_，，长度限制64B。
        # @type PersonId: String
        # @param Trace: 人体轨迹信息。
        # @type Trace: :class:`Tencentcloud::Bda.v20200324.models.Trace`

        attr_accessor :GroupId, :PersonName, :PersonId, :Trace
        
        def initialize(groupid=nil, personname=nil, personid=nil, trace=nil)
          @GroupId = groupid
          @PersonName = personname
          @PersonId = personid
          @Trace = trace
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @PersonName = params['PersonName']
          @PersonId = params['PersonId']
          unless params['Trace'].nil?
            @Trace = Trace.new.deserialize(params[Trace])
          end
        end
      end

      # CreatePerson返回参数结构体
      class CreatePersonResponse < TencentCloud::Common::AbstractModel
        # @param TraceId: 人员轨迹唯一标识。
        # @type TraceId: String
        # @param BodyModelVersion: 人体识别所用的算法模型版本。
        # @type BodyModelVersion: String
        # @param InputRetCode: 输入的人体轨迹图片中的合法性校验结果。
        # 只有为0时结果才有意义。
        # -1001: 输入图片不合法。-1002: 输入图片不能构成轨迹。
        # @type InputRetCode: Integer
        # @param InputRetCodeDetails: 输入的人体轨迹图片中的合法性校验结果详情。
        # -1101:图片无效，-1102:url不合法。-1103:图片过大。-1104:图片下载失败。-1105:图片解码失败。-1109:图片分辨率过高。-2023:轨迹中有非同人图片。-2024: 轨迹提取失败。-2025: 人体检测失败。
        # RetCode 的顺序和入参中Images 或 Urls 的顺序一致。
        # @type InputRetCodeDetails: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TraceId, :BodyModelVersion, :InputRetCode, :InputRetCodeDetails, :RequestId
        
        def initialize(traceid=nil, bodymodelversion=nil, inputretcode=nil, inputretcodedetails=nil, requestid=nil)
          @TraceId = traceid
          @BodyModelVersion = bodymodelversion
          @InputRetCode = inputretcode
          @InputRetCodeDetails = inputretcodedetails
          @RequestId = requestid
        end

        def deserialize(params)
          @TraceId = params['TraceId']
          @BodyModelVersion = params['BodyModelVersion']
          @InputRetCode = params['InputRetCode']
          @InputRetCodeDetails = params['InputRetCodeDetails']
          @RequestId = params['RequestId']
        end
      end

      # CreateSegmentationTask请求参数结构体
      class CreateSegmentationTaskRequest < TencentCloud::Common::AbstractModel
        # @param VideoUrl: 需要分割的视频URL，可外网访问。
        # @type VideoUrl: String
        # @param BackgroundImageUrl: 背景图片URL。
        # 可以将视频背景替换为输入的图片。
        # 如果不输入背景图片，则输出人像区域mask。
        # @type BackgroundImageUrl: String
        # @param Config: 预留字段，后期用于展示更多识别信息。
        # @type Config: String

        attr_accessor :VideoUrl, :BackgroundImageUrl, :Config
        
        def initialize(videourl=nil, backgroundimageurl=nil, config=nil)
          @VideoUrl = videourl
          @BackgroundImageUrl = backgroundimageurl
          @Config = config
        end

        def deserialize(params)
          @VideoUrl = params['VideoUrl']
          @BackgroundImageUrl = params['BackgroundImageUrl']
          @Config = params['Config']
        end
      end

      # CreateSegmentationTask返回参数结构体
      class CreateSegmentationTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskID: 任务标识ID,可以用与追溯任务状态，查看任务结果
        # @type TaskID: String
        # @param EstimatedProcessingTime: 预估处理时间，单位为秒
        # @type EstimatedProcessingTime: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskID, :EstimatedProcessingTime, :RequestId
        
        def initialize(taskid=nil, estimatedprocessingtime=nil, requestid=nil)
          @TaskID = taskid
          @EstimatedProcessingTime = estimatedprocessingtime
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskID = params['TaskID']
          @EstimatedProcessingTime = params['EstimatedProcessingTime']
          @RequestId = params['RequestId']
        end
      end

      # CreateTrace请求参数结构体
      class CreateTraceRequest < TencentCloud::Common::AbstractModel
        # @param PersonId: 人员ID。
        # @type PersonId: String
        # @param Trace: 人体轨迹信息。
        # @type Trace: :class:`Tencentcloud::Bda.v20200324.models.Trace`

        attr_accessor :PersonId, :Trace
        
        def initialize(personid=nil, trace=nil)
          @PersonId = personid
          @Trace = trace
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          unless params['Trace'].nil?
            @Trace = Trace.new.deserialize(params[Trace])
          end
        end
      end

      # CreateTrace返回参数结构体
      class CreateTraceResponse < TencentCloud::Common::AbstractModel
        # @param TraceId: 人员轨迹唯一标识。
        # @type TraceId: String
        # @param BodyModelVersion: 人体识别所用的算法模型版本。
        # @type BodyModelVersion: String
        # @param InputRetCode: 输入的人体轨迹图片中的合法性校验结果。
        # 只有为0时结果才有意义。
        # -1001: 输入图片不合法。-1002: 输入图片不能构成轨迹。
        # @type InputRetCode: Integer
        # @param InputRetCodeDetails: 输入的人体轨迹图片中的合法性校验结果详情。
        # -1101:图片无效，-1102:url不合法。-1103:图片过大。-1104:图片下载失败。-1105:图片解码失败。-1109:图片分辨率过高。-2023:轨迹中有非同人图片。-2024: 轨迹提取失败。-2025: 人体检测失败。
        # @type InputRetCodeDetails: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TraceId, :BodyModelVersion, :InputRetCode, :InputRetCodeDetails, :RequestId
        
        def initialize(traceid=nil, bodymodelversion=nil, inputretcode=nil, inputretcodedetails=nil, requestid=nil)
          @TraceId = traceid
          @BodyModelVersion = bodymodelversion
          @InputRetCode = inputretcode
          @InputRetCodeDetails = inputretcodedetails
          @RequestId = requestid
        end

        def deserialize(params)
          @TraceId = params['TraceId']
          @BodyModelVersion = params['BodyModelVersion']
          @InputRetCode = params['InputRetCode']
          @InputRetCodeDetails = params['InputRetCodeDetails']
          @RequestId = params['RequestId']
        end
      end

      # DeleteGroup请求参数结构体
      class DeleteGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 人体库ID。
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # DeleteGroup返回参数结构体
      class DeleteGroupResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeletePerson请求参数结构体
      class DeletePersonRequest < TencentCloud::Common::AbstractModel
        # @param PersonId: 人员ID。
        # @type PersonId: String

        attr_accessor :PersonId
        
        def initialize(personid=nil)
          @PersonId = personid
        end

        def deserialize(params)
          @PersonId = params['PersonId']
        end
      end

      # DeletePerson返回参数结构体
      class DeletePersonResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DescribeSegmentationTask请求参数结构体
      class DescribeSegmentationTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskID: 在提交分割任务成功时返回的任务标识ID。
        # @type TaskID: String

        attr_accessor :TaskID
        
        def initialize(taskid=nil)
          @TaskID = taskid
        end

        def deserialize(params)
          @TaskID = params['TaskID']
        end
      end

      # DescribeSegmentationTask返回参数结构体
      class DescribeSegmentationTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskStatus: 当前任务状态：
        # QUEUING 排队中
        # PROCESSING 处理中
        # FINISHED 处理完成
        # @type TaskStatus: String
        # @param ResultVideoUrl: 分割后视频URL, 存储于腾讯云COS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultVideoUrl: String
        # @param ResultVideoMD5: 分割后视频MD5，用于校验
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultVideoMD5: String
        # @param VideoBasicInformation: 视频基本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoBasicInformation: :class:`Tencentcloud::Bda.v20200324.models.VideoBasicInformation`
        # @param ErrorMsg: 分割任务错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskStatus, :ResultVideoUrl, :ResultVideoMD5, :VideoBasicInformation, :ErrorMsg, :RequestId
        
        def initialize(taskstatus=nil, resultvideourl=nil, resultvideomd5=nil, videobasicinformation=nil, errormsg=nil, requestid=nil)
          @TaskStatus = taskstatus
          @ResultVideoUrl = resultvideourl
          @ResultVideoMD5 = resultvideomd5
          @VideoBasicInformation = videobasicinformation
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskStatus = params['TaskStatus']
          @ResultVideoUrl = params['ResultVideoUrl']
          @ResultVideoMD5 = params['ResultVideoMD5']
          unless params['VideoBasicInformation'].nil?
            @VideoBasicInformation = VideoBasicInformation.new.deserialize(params[VideoBasicInformation])
          end
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DetectBodyJoints请求参数结构体
      class DetectBodyJointsRequest < TencentCloud::Common::AbstractModel
        # @param Image: 图片 base64 数据，base64 编码后大小不可超过5M。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Image: String
        # @param Url: 图片的 Url 。对应图片 base64 编码后大小不可超过5M。
        # Url、Image必须提供一个，如果都提供，只使用 Url。
        # 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Url: String

        attr_accessor :Image, :Url
        
        def initialize(image=nil, url=nil)
          @Image = image
          @Url = url
        end

        def deserialize(params)
          @Image = params['Image']
          @Url = params['Url']
        end
      end

      # DetectBodyJoints返回参数结构体
      class DetectBodyJointsResponse < TencentCloud::Common::AbstractModel
        # @param BodyJointsResults: 图中检测出的人体框和人体关键点， 包含14个人体关键点的坐标，建议根据人体框置信度筛选出合格的人体；
        # @type BodyJointsResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BodyJointsResults, :RequestId
        
        def initialize(bodyjointsresults=nil, requestid=nil)
          @BodyJointsResults = bodyjointsresults
          @RequestId = requestid
        end

        def deserialize(params)
          @BodyJointsResults = params['BodyJointsResults']
          @RequestId = params['RequestId']
        end
      end

      # DetectBody请求参数结构体
      class DetectBodyRequest < TencentCloud::Common::AbstractModel
        # @param Image: 人体图片 Base64 数据。
        # 图片 base64 编码后大小不可超过5M。
        # 图片分辨率不得超过 2048*2048。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Image: String
        # @param Url: 人体图片 Url 。
        # Url、Image必须提供一个，如果都提供，只使用 Url。
        # 图片 base64 编码后大小不可超过5M。
        # 图片分辨率不得超过 2048*2048。
        # 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Url: String
        # @param MaxBodyNum: 最多检测的人体数目，默认值为1（仅检测图片中面积最大的那个人体）； 最大值10 ，检测图片中面积最大的10个人体。
        # @type MaxBodyNum: Integer
        # @param AttributesOptions: 是否返回年龄、性别、朝向等属性。
        # 可选项有 Age、Bag、Gender、UpperBodyCloth、LowerBodyCloth、Orientation。
        # 如果此参数为空则为不需要返回。
        # 需要将属性组成一个用逗号分隔的字符串，属性之间的顺序没有要求。
        # 关于各属性的详细描述，参见下文出参。
        # 最多返回面积最大的 5 个人体属性信息，超过 5 个人体（第 6 个及以后的人体）的 BodyAttributesInfo 不具备参考意义。
        # @type AttributesOptions: :class:`Tencentcloud::Bda.v20200324.models.AttributesOptions`

        attr_accessor :Image, :Url, :MaxBodyNum, :AttributesOptions
        
        def initialize(image=nil, url=nil, maxbodynum=nil, attributesoptions=nil)
          @Image = image
          @Url = url
          @MaxBodyNum = maxbodynum
          @AttributesOptions = attributesoptions
        end

        def deserialize(params)
          @Image = params['Image']
          @Url = params['Url']
          @MaxBodyNum = params['MaxBodyNum']
          unless params['AttributesOptions'].nil?
            @AttributesOptions = AttributesOptions.new.deserialize(params[AttributesOptions])
          end
        end
      end

      # DetectBody返回参数结构体
      class DetectBodyResponse < TencentCloud::Common::AbstractModel
        # @param BodyDetectResults: 图中检测出来的人体框。
        # @type BodyDetectResults: Array
        # @param BodyModelVersion: 人体识别所用的算法模型版本。
        # @type BodyModelVersion: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BodyDetectResults, :BodyModelVersion, :RequestId
        
        def initialize(bodydetectresults=nil, bodymodelversion=nil, requestid=nil)
          @BodyDetectResults = bodydetectresults
          @BodyModelVersion = bodymodelversion
          @RequestId = requestid
        end

        def deserialize(params)
          @BodyDetectResults = params['BodyDetectResults']
          @BodyModelVersion = params['BodyModelVersion']
          @RequestId = params['RequestId']
        end
      end

      # 人体性别信息。
      # AttributesType 不含 Gender 或检测超过 5 个人体时，此参数仍返回，但不具备参考意义。
      class Gender < TencentCloud::Common::AbstractModel
        # @param Type: 性别信息，返回值为以下集合中的一个 {男性, 女性}
        # @type Type: String
        # @param Probability: Type识别概率值，[0.0,1.0],代表判断正确的概率。如0.8则代表有Type值有80%概率正确。
        # @type Probability: Float

        attr_accessor :Type, :Probability
        
        def initialize(type=nil, probability=nil)
          @Type = type
          @Probability = probability
        end

        def deserialize(params)
          @Type = params['Type']
          @Probability = params['Probability']
        end
      end

      # GetGroupList请求参数结构体
      class GetGroupListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 起始序号，默认值为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认值为10，最大值为1000。
        # @type Limit: Integer

        attr_accessor :Offset, :Limit
        
        def initialize(offset=nil, limit=nil)
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # GetGroupList返回参数结构体
      class GetGroupListResponse < TencentCloud::Common::AbstractModel
        # @param GroupInfos: 返回的人体库信息。
        # @type GroupInfos: Array
        # @param GroupNum: 人体库总数量。
        # @type GroupNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupInfos, :GroupNum, :RequestId
        
        def initialize(groupinfos=nil, groupnum=nil, requestid=nil)
          @GroupInfos = groupinfos
          @GroupNum = groupnum
          @RequestId = requestid
        end

        def deserialize(params)
          @GroupInfos = params['GroupInfos']
          @GroupNum = params['GroupNum']
          @RequestId = params['RequestId']
        end
      end

      # GetPersonList请求参数结构体
      class GetPersonListRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 人体库ID。
        # @type GroupId: String
        # @param Offset: 起始序号，默认值为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认值为10，最大值为1000。
        # @type Limit: Integer

        attr_accessor :GroupId, :Offset, :Limit
        
        def initialize(groupid=nil, offset=nil, limit=nil)
          @GroupId = groupid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # GetPersonList返回参数结构体
      class GetPersonListResponse < TencentCloud::Common::AbstractModel
        # @param PersonInfos: 返回的人员信息。
        # @type PersonInfos: Array
        # @param PersonNum: 该人体库的人员数量。
        # @type PersonNum: Integer
        # @param BodyModelVersion: 人体识别所用的算法模型版本。
        # @type BodyModelVersion: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PersonInfos, :PersonNum, :BodyModelVersion, :RequestId
        
        def initialize(personinfos=nil, personnum=nil, bodymodelversion=nil, requestid=nil)
          @PersonInfos = personinfos
          @PersonNum = personnum
          @BodyModelVersion = bodymodelversion
          @RequestId = requestid
        end

        def deserialize(params)
          @PersonInfos = params['PersonInfos']
          @PersonNum = params['PersonNum']
          @BodyModelVersion = params['BodyModelVersion']
          @RequestId = params['RequestId']
        end
      end

      # 返回的人员库信息。
      class GroupInfo < TencentCloud::Common::AbstractModel
        # @param GroupName: 人体库名称。
        # @type GroupName: String
        # @param GroupId: 人体库ID。
        # @type GroupId: String
        # @param Tag: 人体库信息备注。
        # @type Tag: String
        # @param BodyModelVersion: 人体识别所用的算法模型版本。
        # @type BodyModelVersion: String
        # @param CreationTimestamp: Group的创建时间和日期 CreationTimestamp。CreationTimestamp 的值是自 Unix 纪元时间到Group创建时间的毫秒数。
        # Unix 纪元时间是 1970 年 1 月 1 日星期四，协调世界时 (UTC) 。
        # @type CreationTimestamp: Integer

        attr_accessor :GroupName, :GroupId, :Tag, :BodyModelVersion, :CreationTimestamp
        
        def initialize(groupname=nil, groupid=nil, tag=nil, bodymodelversion=nil, creationtimestamp=nil)
          @GroupName = groupname
          @GroupId = groupid
          @Tag = tag
          @BodyModelVersion = bodymodelversion
          @CreationTimestamp = creationtimestamp
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @GroupId = params['GroupId']
          @Tag = params['Tag']
          @BodyModelVersion = params['BodyModelVersion']
          @CreationTimestamp = params['CreationTimestamp']
        end
      end

      # 人体关键点信息
      class KeyPointInfo < TencentCloud::Common::AbstractModel
        # @param KeyPointType: 代表不同位置的人体关键点信息，返回值为以下集合中的一个 [头部,颈部,右肩,右肘,右腕,左肩,左肘,左腕,右髋,右膝,右踝,左髋,左膝,左踝]
        # @type KeyPointType: String
        # @param X: 人体关键点横坐标
        # @type X: Float
        # @param Y: 人体关键点纵坐标
        # @type Y: Float

        attr_accessor :KeyPointType, :X, :Y
        
        def initialize(keypointtype=nil, x=nil, y=nil)
          @KeyPointType = keypointtype
          @X = x
          @Y = y
        end

        def deserialize(params)
          @KeyPointType = params['KeyPointType']
          @X = params['X']
          @Y = params['Y']
        end
      end

      # 下衣属性信息
      class LowerBodyCloth < TencentCloud::Common::AbstractModel
        # @param Color: 下衣颜色信息。
        # @type Color: :class:`Tencentcloud::Bda.v20200324.models.LowerBodyClothColor`
        # @param Length: 下衣长度信息 。
        # @type Length: :class:`Tencentcloud::Bda.v20200324.models.LowerBodyClothLength`
        # @param Type: 下衣类型信息。
        # @type Type: :class:`Tencentcloud::Bda.v20200324.models.LowerBodyClothType`

        attr_accessor :Color, :Length, :Type
        
        def initialize(color=nil, length=nil, type=nil)
          @Color = color
          @Length = length
          @Type = type
        end

        def deserialize(params)
          unless params['Color'].nil?
            @Color = LowerBodyClothColor.new.deserialize(params[Color])
          end
          unless params['Length'].nil?
            @Length = LowerBodyClothLength.new.deserialize(params[Length])
          end
          unless params['Type'].nil?
            @Type = LowerBodyClothType.new.deserialize(params[Type])
          end
        end
      end

      # 下衣颜色信息
      class LowerBodyClothColor < TencentCloud::Common::AbstractModel
        # @param Type: 下衣颜色信息，返回值为以下集合中的一个{ 黑色系, 灰白色系, 彩色} 。
        # @type Type: String
        # @param Probability: Type识别概率值，[0.0,1.0],代表判断正确的概率。如0.8则代表有Type值有80%概率正确。
        # @type Probability: Float

        attr_accessor :Type, :Probability
        
        def initialize(type=nil, probability=nil)
          @Type = type
          @Probability = probability
        end

        def deserialize(params)
          @Type = params['Type']
          @Probability = params['Probability']
        end
      end

      # 下衣长度信息
      class LowerBodyClothLength < TencentCloud::Common::AbstractModel
        # @param Type: 下衣长度信息，返回值为以下集合中的一个，{长, 短} 。
        # @type Type: String
        # @param Probability: Type识别概率值，[0.0,1.0],代表判断正确的概率。如0.8则代表有Type值有80%概率正确。
        # @type Probability: Float

        attr_accessor :Type, :Probability
        
        def initialize(type=nil, probability=nil)
          @Type = type
          @Probability = probability
        end

        def deserialize(params)
          @Type = params['Type']
          @Probability = params['Probability']
        end
      end

      # 下衣类型信息
      class LowerBodyClothType < TencentCloud::Common::AbstractModel
        # @param Type: 下衣类型，返回值为以下集合中的一个 {裤子,裙子} 。
        # @type Type: String
        # @param Probability: Type识别概率值，[0.0,1.0],代表判断正确的概率。如0.8则代表有Type值有80%概率正确。
        # @type Probability: Float

        attr_accessor :Type, :Probability
        
        def initialize(type=nil, probability=nil)
          @Type = type
          @Probability = probability
        end

        def deserialize(params)
          @Type = params['Type']
          @Probability = params['Probability']
        end
      end

      # ModifyGroup请求参数结构体
      class ModifyGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 人体库ID。
        # @type GroupId: String
        # @param GroupName: 人体库名称。
        # @type GroupName: String
        # @param Tag: 人体库信息备注。
        # @type Tag: String

        attr_accessor :GroupId, :GroupName, :Tag
        
        def initialize(groupid=nil, groupname=nil, tag=nil)
          @GroupId = groupid
          @GroupName = groupname
          @Tag = tag
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @Tag = params['Tag']
        end
      end

      # ModifyGroup返回参数结构体
      class ModifyGroupResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyPersonInfo请求参数结构体
      class ModifyPersonInfoRequest < TencentCloud::Common::AbstractModel
        # @param PersonId: 人员ID。
        # @type PersonId: String
        # @param PersonName: 人员名称。
        # @type PersonName: String

        attr_accessor :PersonId, :PersonName
        
        def initialize(personid=nil, personname=nil)
          @PersonId = personid
          @PersonName = personname
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @PersonName = params['PersonName']
        end
      end

      # ModifyPersonInfo返回参数结构体
      class ModifyPersonInfoResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 人体朝向信息。
      # AttributesType 不含 Orientation 或检测超过 5 个人体时，此参数仍返回，但不具备参考意义。
      class Orientation < TencentCloud::Common::AbstractModel
        # @param Type: 人体朝向信息，返回值为以下集合中的一个 {正向, 背向, 左, 右}。
        # @type Type: String
        # @param Probability: Type识别概率值，[0.0,1.0],代表判断正确的概率。如0.8则代表有Type值有80%概率正确。
        # @type Probability: Float

        attr_accessor :Type, :Probability
        
        def initialize(type=nil, probability=nil)
          @Type = type
          @Probability = probability
        end

        def deserialize(params)
          @Type = params['Type']
          @Probability = params['Probability']
        end
      end

      # 人员信息。
      class PersonInfo < TencentCloud::Common::AbstractModel
        # @param PersonName: 人员名称。
        # @type PersonName: String
        # @param PersonId: 人员ID。
        # @type PersonId: String
        # @param TraceInfos: 包含的人体轨迹图片信息列表。
        # @type TraceInfos: Array

        attr_accessor :PersonName, :PersonId, :TraceInfos
        
        def initialize(personname=nil, personid=nil, traceinfos=nil)
          @PersonName = personname
          @PersonId = personid
          @TraceInfos = traceinfos
        end

        def deserialize(params)
          @PersonName = params['PersonName']
          @PersonId = params['PersonId']
          @TraceInfos = params['TraceInfos']
        end
      end

      # SearchTrace请求参数结构体
      class SearchTraceRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 希望搜索的人体库ID。
        # @type GroupId: String
        # @param Trace: 人体轨迹信息。
        # @type Trace: :class:`Tencentcloud::Bda.v20200324.models.Trace`
        # @param MaxPersonNum: 单张被识别的人体轨迹返回的最相似人员数量。
        # 默认值为5，最大值为100。
        #  例，设MaxPersonNum为8，则返回Top8相似的人员信息。 值越大，需要处理的时间越长。建议不要超过10。
        # @type MaxPersonNum: Integer
        # @param TraceMatchThreshold: 出参Score中，只有超过TraceMatchThreshold值的结果才会返回。
        # 默认为0。范围[0, 100.0]。
        # @type TraceMatchThreshold: Float

        attr_accessor :GroupId, :Trace, :MaxPersonNum, :TraceMatchThreshold
        
        def initialize(groupid=nil, trace=nil, maxpersonnum=nil, tracematchthreshold=nil)
          @GroupId = groupid
          @Trace = trace
          @MaxPersonNum = maxpersonnum
          @TraceMatchThreshold = tracematchthreshold
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          unless params['Trace'].nil?
            @Trace = Trace.new.deserialize(params[Trace])
          end
          @MaxPersonNum = params['MaxPersonNum']
          @TraceMatchThreshold = params['TraceMatchThreshold']
        end
      end

      # SearchTrace返回参数结构体
      class SearchTraceResponse < TencentCloud::Common::AbstractModel
        # @param Candidates: 识别出的最相似候选人。
        # @type Candidates: Array
        # @param InputRetCode: 输入的人体轨迹图片中的合法性校验结果。
        # 只有为0时结果才有意义。
        # -1001: 输入图片不合法。-1002: 输入图片不能构成轨迹。
        # @type InputRetCode: Integer
        # @param InputRetCodeDetails: 输入的人体轨迹图片中的合法性校验结果详情。
        # -1101:图片无效，-1102:url不合法。-1103:图片过大。-1104:图片下载失败。-1105:图片解码失败。-1109:图片分辨率过高。-2023:轨迹中有非同人图片。-2024: 轨迹提取失败。-2025: 人体检测失败。
        # @type InputRetCodeDetails: Array
        # @param BodyModelVersion: 人体识别所用的算法模型版本。
        # @type BodyModelVersion: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Candidates, :InputRetCode, :InputRetCodeDetails, :BodyModelVersion, :RequestId
        
        def initialize(candidates=nil, inputretcode=nil, inputretcodedetails=nil, bodymodelversion=nil, requestid=nil)
          @Candidates = candidates
          @InputRetCode = inputretcode
          @InputRetCodeDetails = inputretcodedetails
          @BodyModelVersion = bodymodelversion
          @RequestId = requestid
        end

        def deserialize(params)
          @Candidates = params['Candidates']
          @InputRetCode = params['InputRetCode']
          @InputRetCodeDetails = params['InputRetCodeDetails']
          @BodyModelVersion = params['BodyModelVersion']
          @RequestId = params['RequestId']
        end
      end

      # SegmentCustomizedPortraitPic请求参数结构体
      class SegmentCustomizedPortraitPicRequest < TencentCloud::Common::AbstractModel
        # @param SegmentationOptions: 此参数为分割选项，请根据需要选择自己所想从图片中分割的部分。注意所有选项均为非必选，如未选择则值默认为false, 但是必须要保证多于一个选项的描述为true。
        # @type SegmentationOptions: :class:`Tencentcloud::Bda.v20200324.models.SegmentationOptions`
        # @param Image: 图片 base64 数据，base64 编码后大小不可超过5M。
        # 图片分辨率须小于2000*2000。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Image: String
        # @param Url: 图片的 Url 。
        # Url、Image必须提供一个，如果都提供，只使用 Url。
        # 图片分辨率须小于2000*2000 ，图片 base64 编码后大小不可超过5M。
        # 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Url: String

        attr_accessor :SegmentationOptions, :Image, :Url
        
        def initialize(segmentationoptions=nil, image=nil, url=nil)
          @SegmentationOptions = segmentationoptions
          @Image = image
          @Url = url
        end

        def deserialize(params)
          unless params['SegmentationOptions'].nil?
            @SegmentationOptions = SegmentationOptions.new.deserialize(params[SegmentationOptions])
          end
          @Image = params['Image']
          @Url = params['Url']
        end
      end

      # SegmentCustomizedPortraitPic返回参数结构体
      class SegmentCustomizedPortraitPicResponse < TencentCloud::Common::AbstractModel
        # @param PortraitImage: 根据指定标签分割输出的透明背景人像图片的 base64 数据。
        # @type PortraitImage: String
        # @param MaskImage: 指定标签处理后的Mask。一个通过 Base64 编码的文件，解码后文件由 Float 型浮点数组成。这些浮点数代表原图从左上角开始的每一行的每一个像素点，每一个浮点数的值是原图相应像素点位于人体轮廓内的置信度（0-1）转化的灰度值（0-255）
        # @type MaskImage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PortraitImage, :MaskImage, :RequestId
        
        def initialize(portraitimage=nil, maskimage=nil, requestid=nil)
          @PortraitImage = portraitimage
          @MaskImage = maskimage
          @RequestId = requestid
        end

        def deserialize(params)
          @PortraitImage = params['PortraitImage']
          @MaskImage = params['MaskImage']
          @RequestId = params['RequestId']
        end
      end

      # SegmentPortraitPic请求参数结构体
      class SegmentPortraitPicRequest < TencentCloud::Common::AbstractModel
        # @param Image: 图片 base64 数据，base64 编码后大小不可超过5M。
        # 图片分辨率须小于2000*2000。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Image: String
        # @param Url: 图片的 Url 。
        # Url、Image必须提供一个，如果都提供，只使用 Url。
        # 图片分辨率须小于2000*2000 ，图片 base64 编码后大小不可超过5M。
        # 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Url: String

        attr_accessor :Image, :Url
        
        def initialize(image=nil, url=nil)
          @Image = image
          @Url = url
        end

        def deserialize(params)
          @Image = params['Image']
          @Url = params['Url']
        end
      end

      # SegmentPortraitPic返回参数结构体
      class SegmentPortraitPicResponse < TencentCloud::Common::AbstractModel
        # @param ResultImage: 处理后的图片 base64 数据，透明背景图
        # @type ResultImage: String
        # @param ResultMask: 一个通过 Base64 编码的文件，解码后文件由 Float 型浮点数组成。这些浮点数代表原图从左上角开始的每一行的每一个像素点，每一个浮点数的值是原图相应像素点位于人体轮廓内的置信度（0-1）转化的灰度值（0-255）
        # @type ResultMask: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultImage, :ResultMask, :RequestId
        
        def initialize(resultimage=nil, resultmask=nil, requestid=nil)
          @ResultImage = resultimage
          @ResultMask = resultmask
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultImage = params['ResultImage']
          @ResultMask = params['ResultMask']
          @RequestId = params['RequestId']
        end
      end

      # 此参数为分割选项，请根据需要选择自己所想从图片中分割的部分。注意所有选项均为非必选，如未选择则值默认为false, 但是必须要保证多于一个选项的描述为true。
      class SegmentationOptions < TencentCloud::Common::AbstractModel
        # @param Background: 分割选项-背景
        # @type Background: Boolean
        # @param Hair: 分割选项-头发
        # @type Hair: Boolean
        # @param LeftEyebrow: 分割选项-左眉
        # @type LeftEyebrow: Boolean
        # @param RightEyebrow: 分割选项-右眉
        # @type RightEyebrow: Boolean
        # @param LeftEye: 分割选项-左眼
        # @type LeftEye: Boolean
        # @param RightEye: 分割选项-右眼
        # @type RightEye: Boolean
        # @param Nose: 分割选项-鼻子
        # @type Nose: Boolean
        # @param UpperLip: 分割选项-上唇
        # @type UpperLip: Boolean
        # @param LowerLip: 分割选项-下唇
        # @type LowerLip: Boolean
        # @param Tooth: 分割选项-牙齿
        # @type Tooth: Boolean
        # @param Mouth: 分割选项-口腔（不包含牙齿）
        # @type Mouth: Boolean
        # @param LeftEar: 分割选项-左耳
        # @type LeftEar: Boolean
        # @param RightEar: 分割选项-右耳
        # @type RightEar: Boolean
        # @param Face: 分割选项-面部(不包含眼、耳、口、鼻等五官及头发。)
        # @type Face: Boolean
        # @param Head: 复合分割选项-头部(包含所有的头部元素，相关装饰除外)
        # @type Head: Boolean
        # @param Body: 分割选项-身体（包含脖子）
        # @type Body: Boolean
        # @param Hat: 分割选项-帽子
        # @type Hat: Boolean
        # @param Headdress: 分割选项-头饰
        # @type Headdress: Boolean
        # @param Earrings: 分割选项-耳环
        # @type Earrings: Boolean
        # @param Necklace: 分割选项-项链
        # @type Necklace: Boolean
        # @param Belongings: 分割选项-随身物品（ 例如伞、包、手机等。 ）
        # @type Belongings: Boolean

        attr_accessor :Background, :Hair, :LeftEyebrow, :RightEyebrow, :LeftEye, :RightEye, :Nose, :UpperLip, :LowerLip, :Tooth, :Mouth, :LeftEar, :RightEar, :Face, :Head, :Body, :Hat, :Headdress, :Earrings, :Necklace, :Belongings
        
        def initialize(background=nil, hair=nil, lefteyebrow=nil, righteyebrow=nil, lefteye=nil, righteye=nil, nose=nil, upperlip=nil, lowerlip=nil, tooth=nil, mouth=nil, leftear=nil, rightear=nil, face=nil, head=nil, body=nil, hat=nil, headdress=nil, earrings=nil, necklace=nil, belongings=nil)
          @Background = background
          @Hair = hair
          @LeftEyebrow = lefteyebrow
          @RightEyebrow = righteyebrow
          @LeftEye = lefteye
          @RightEye = righteye
          @Nose = nose
          @UpperLip = upperlip
          @LowerLip = lowerlip
          @Tooth = tooth
          @Mouth = mouth
          @LeftEar = leftear
          @RightEar = rightear
          @Face = face
          @Head = head
          @Body = body
          @Hat = hat
          @Headdress = headdress
          @Earrings = earrings
          @Necklace = necklace
          @Belongings = belongings
        end

        def deserialize(params)
          @Background = params['Background']
          @Hair = params['Hair']
          @LeftEyebrow = params['LeftEyebrow']
          @RightEyebrow = params['RightEyebrow']
          @LeftEye = params['LeftEye']
          @RightEye = params['RightEye']
          @Nose = params['Nose']
          @UpperLip = params['UpperLip']
          @LowerLip = params['LowerLip']
          @Tooth = params['Tooth']
          @Mouth = params['Mouth']
          @LeftEar = params['LeftEar']
          @RightEar = params['RightEar']
          @Face = params['Face']
          @Head = params['Head']
          @Body = params['Body']
          @Hat = params['Hat']
          @Headdress = params['Headdress']
          @Earrings = params['Earrings']
          @Necklace = params['Necklace']
          @Belongings = params['Belongings']
        end
      end

      # TerminateSegmentationTask请求参数结构体
      class TerminateSegmentationTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskID: 在提交分割任务成功时返回的任务标识ID。
        # @type TaskID: String

        attr_accessor :TaskID
        
        def initialize(taskid=nil)
          @TaskID = taskid
        end

        def deserialize(params)
          @TaskID = params['TaskID']
        end
      end

      # TerminateSegmentationTask返回参数结构体
      class TerminateSegmentationTaskResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 人体轨迹信息
      class Trace < TencentCloud::Common::AbstractModel
        # @param Images: 人体轨迹图片 Base64 数组。
        # 数组长度最小为1最大为5。
        # 单个图片 base64 编码后大小不可超过2M。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Images: Array
        # @param Urls: 人体轨迹图片 Url 数组。
        # 数组长度最小为1最大为5。
        # 单个图片 base64 编码后大小不可超过2M。
        # Urls、Images必须提供一个，如果都提供，只使用 Urls。
        # 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Urls: Array
        # @param BodyRects: 若输入的Images 和 Urls 是已经裁剪后的人体小图，则可以忽略本参数。
        # 若否，或图片中包含多个人体，则需要通过本参数来指定图片中的人体框。
        # 顺序对应 Images 或 Urls 中的顺序。
        # 当不输入本参数时，我们将认为输入图片已是经过裁剪后的人体小图，不会进行人体检测而直接进行特征提取处理。
        # @type BodyRects: Array

        attr_accessor :Images, :Urls, :BodyRects
        
        def initialize(images=nil, urls=nil, bodyrects=nil)
          @Images = images
          @Urls = urls
          @BodyRects = bodyrects
        end

        def deserialize(params)
          @Images = params['Images']
          @Urls = params['Urls']
          @BodyRects = params['BodyRects']
        end
      end

      # 人体轨迹信息。
      class TraceInfo < TencentCloud::Common::AbstractModel
        # @param TraceId: 人体轨迹ID。
        # @type TraceId: String
        # @param BodyIds: 包含的人体轨迹图片Id列表。
        # @type BodyIds: Array

        attr_accessor :TraceId, :BodyIds
        
        def initialize(traceid=nil, bodyids=nil)
          @TraceId = traceid
          @BodyIds = bodyids
        end

        def deserialize(params)
          @TraceId = params['TraceId']
          @BodyIds = params['BodyIds']
        end
      end

      # 上衣属性信息
      class UpperBodyCloth < TencentCloud::Common::AbstractModel
        # @param Texture: 上衣纹理信息。
        # @type Texture: :class:`Tencentcloud::Bda.v20200324.models.UpperBodyClothTexture`
        # @param Color: 上衣颜色信息。
        # @type Color: :class:`Tencentcloud::Bda.v20200324.models.UpperBodyClothColor`
        # @param Sleeve: 上衣衣袖信息。
        # @type Sleeve: :class:`Tencentcloud::Bda.v20200324.models.UpperBodyClothSleeve`

        attr_accessor :Texture, :Color, :Sleeve
        
        def initialize(texture=nil, color=nil, sleeve=nil)
          @Texture = texture
          @Color = color
          @Sleeve = sleeve
        end

        def deserialize(params)
          unless params['Texture'].nil?
            @Texture = UpperBodyClothTexture.new.deserialize(params[Texture])
          end
          unless params['Color'].nil?
            @Color = UpperBodyClothColor.new.deserialize(params[Color])
          end
          unless params['Sleeve'].nil?
            @Sleeve = UpperBodyClothSleeve.new.deserialize(params[Sleeve])
          end
        end
      end

      # 上衣颜色信息。
      class UpperBodyClothColor < TencentCloud::Common::AbstractModel
        # @param Type: 上衣颜色信息，返回值为以下集合中的一个 {红色系, 黄色系, 绿色系, 蓝色系, 黑色系, 灰白色系。
        # @type Type: String
        # @param Probability: Type识别概率值，[0.0,1.0],代表判断正确的概率。如0.8则代表有Type值有80%概率正确。
        # @type Probability: Float

        attr_accessor :Type, :Probability
        
        def initialize(type=nil, probability=nil)
          @Type = type
          @Probability = probability
        end

        def deserialize(params)
          @Type = params['Type']
          @Probability = params['Probability']
        end
      end

      # 上衣衣袖信息。
      class UpperBodyClothSleeve < TencentCloud::Common::AbstractModel
        # @param Type: 上衣衣袖信息, 返回值为以下集合中的一个 {长袖, 短袖}。
        # @type Type: String
        # @param Probability: Type识别概率值，[0.0,1.0],代表判断正确的概率。如0.8则代表有Type值有80%概率正确。
        # @type Probability: Float

        attr_accessor :Type, :Probability
        
        def initialize(type=nil, probability=nil)
          @Type = type
          @Probability = probability
        end

        def deserialize(params)
          @Type = params['Type']
          @Probability = params['Probability']
        end
      end

      # 上衣纹理信息。
      class UpperBodyClothTexture < TencentCloud::Common::AbstractModel
        # @param Type: 上衣纹理信息，返回值为以下集合中的一个, {纯色, 格子, 大色块}。
        # @type Type: String
        # @param Probability: Type识别概率值，[0.0,1.0], 代表判断正确的概率。如0.8则代表有Type值有80%概率正确。
        # @type Probability: Float

        attr_accessor :Type, :Probability
        
        def initialize(type=nil, probability=nil)
          @Type = type
          @Probability = probability
        end

        def deserialize(params)
          @Type = params['Type']
          @Probability = params['Probability']
        end
      end

      # 视频基础信息
      class VideoBasicInformation < TencentCloud::Common::AbstractModel
        # @param FrameWidth: 视频宽度
        # @type FrameWidth: Integer
        # @param FrameHeight: 视频高度
        # @type FrameHeight: Integer
        # @param FramesPerSecond: 视频帧速率(FPS)
        # @type FramesPerSecond: Integer
        # @param Duration: 视频时长
        # @type Duration: Float
        # @param TotalFrames: 视频帧数
        # @type TotalFrames: Integer

        attr_accessor :FrameWidth, :FrameHeight, :FramesPerSecond, :Duration, :TotalFrames
        
        def initialize(framewidth=nil, frameheight=nil, framespersecond=nil, duration=nil, totalframes=nil)
          @FrameWidth = framewidth
          @FrameHeight = frameheight
          @FramesPerSecond = framespersecond
          @Duration = duration
          @TotalFrames = totalframes
        end

        def deserialize(params)
          @FrameWidth = params['FrameWidth']
          @FrameHeight = params['FrameHeight']
          @FramesPerSecond = params['FramesPerSecond']
          @Duration = params['Duration']
          @TotalFrames = params['TotalFrames']
        end
      end

    end
  end
end

