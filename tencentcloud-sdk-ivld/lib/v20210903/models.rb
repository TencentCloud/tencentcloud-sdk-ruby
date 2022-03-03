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
  module Ivld
    module V20210903
      # AddCustomPersonImage请求参数结构体
      class AddCustomPersonImageRequest < TencentCloud::Common::AbstractModel
        # @param PersonId: 自定义人物Id
        # @type PersonId: String
        # @param ImageURL: 自定义人物图片地址
        # @type ImageURL: String
        # @param Image: 图片数据base64之后的结果
        # @type Image: String

        attr_accessor :PersonId, :ImageURL, :Image
        
        def initialize(personid=nil, imageurl=nil, image=nil)
          @PersonId = personid
          @ImageURL = imageurl
          @Image = image
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @ImageURL = params['ImageURL']
          @Image = params['Image']
        end
      end

      # AddCustomPersonImage返回参数结构体
      class AddCustomPersonImageResponse < TencentCloud::Common::AbstractModel
        # @param PersonId: 自定义人物Id
        # @type PersonId: String
        # @param ImageInfo: 自定义人脸图片信息
        # @type ImageInfo: :class:`Tencentcloud::Ivld.v20210903.models.PersonImageInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PersonId, :ImageInfo, :RequestId
        
        def initialize(personid=nil, imageinfo=nil, requestid=nil)
          @PersonId = personid
          @ImageInfo = imageinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          unless params['ImageInfo'].nil?
            @ImageInfo = PersonImageInfo.new
            @ImageInfo.deserialize(params['ImageInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 出现信息索引对

      # AppearIndex可选值定义如下：

      # | AppearIndex名称 | AppearIndex取值 | AppearIndex描述 |
      # |---|---|---|
      # | APPEAR_INDEX_INVALID | 0 | 非法的任务状态 |
      # | APPEAR_INDEX_AUDIO | 1 | 音频出现信息|
      # | APPEAR_INDEX_TEXT | 2 | 可视文本出现信息|
      # | APPEAR_INDEX_VIDEO | 3 | 视频出现信息|

      # 例如，当AppearIndex=1，Index=15，则意味着目标关键词出现在第16个(Index计数从0开始)音频文字识别结果之中
      class AppearIndexPair < TencentCloud::Common::AbstractModel
        # @param AppearIndex: 出现信息，取值范围为[1，3]
        # @type AppearIndex: Integer
        # @param Index: AppearInfo中AppearIndex对应元素的第Index元素，从0开始技术
        # @type Index: Integer

        attr_accessor :AppearIndex, :Index
        
        def initialize(appearindex=nil, index=nil)
          @AppearIndex = appearindex
          @Index = index
        end

        def deserialize(params)
          @AppearIndex = params['AppearIndex']
          @Index = params['Index']
        end
      end

      # 出现信息结构

      # 包含关键词在音频转文字(ASR)，图片转文字(OCR)以及视频结果中的出现信息
      class AppearInfo < TencentCloud::Common::AbstractModel
        # @param AudioAppearSet: 关键词在音频文本结果中的出现位置数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AudioAppearSet: Array
        # @param TextAppearSet: 关键词在可视文本结果中的出现位置数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TextAppearSet: Array
        # @param VideoAppearSet: 关键词在视频信息中的出现位置数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoAppearSet: Array

        attr_accessor :AudioAppearSet, :TextAppearSet, :VideoAppearSet
        
        def initialize(audioappearset=nil, textappearset=nil, videoappearset=nil)
          @AudioAppearSet = audioappearset
          @TextAppearSet = textappearset
          @VideoAppearSet = videoappearset
        end

        def deserialize(params)
          unless params['AudioAppearSet'].nil?
            @AudioAppearSet = []
            params['AudioAppearSet'].each do |i|
              textappearinfo_tmp = TextAppearInfo.new
              textappearinfo_tmp.deserialize(i)
              @AudioAppearSet << textappearinfo_tmp
            end
          end
          unless params['TextAppearSet'].nil?
            @TextAppearSet = []
            params['TextAppearSet'].each do |i|
              textappearinfo_tmp = TextAppearInfo.new
              textappearinfo_tmp.deserialize(i)
              @TextAppearSet << textappearinfo_tmp
            end
          end
          unless params['VideoAppearSet'].nil?
            @VideoAppearSet = []
            params['VideoAppearSet'].each do |i|
              videoappearinfo_tmp = VideoAppearInfo.new
              videoappearinfo_tmp.deserialize(i)
              @VideoAppearSet << videoappearinfo_tmp
            end
          end
        end
      end

      # 音频识别结果信息
      class AudioInfo < TencentCloud::Common::AbstractModel
        # @param Content: ASR提取的文字信息
        # @type Content: String
        # @param StartTimeStamp: ASR起始时间戳，从0开始
        # @type StartTimeStamp: Float
        # @param EndTimeStamp: ASR结束时间戳，从0开始
        # @type EndTimeStamp: Float
        # @param Tag: ASR提取的音频标签
        # @type Tag: String

        attr_accessor :Content, :StartTimeStamp, :EndTimeStamp, :Tag
        
        def initialize(content=nil, starttimestamp=nil, endtimestamp=nil, tag=nil)
          @Content = content
          @StartTimeStamp = starttimestamp
          @EndTimeStamp = endtimestamp
          @Tag = tag
        end

        def deserialize(params)
          @Content = params['Content']
          @StartTimeStamp = params['StartTimeStamp']
          @EndTimeStamp = params['EndTimeStamp']
          @Tag = params['Tag']
        end
      end

      # CreateCustomCategory请求参数结构体
      class CreateCustomCategoryRequest < TencentCloud::Common::AbstractModel
        # @param L1Category: 自定义一级类型
        # @type L1Category: String
        # @param L2Category: 自定义二级类型
        # @type L2Category: String

        attr_accessor :L1Category, :L2Category
        
        def initialize(l1category=nil, l2category=nil)
          @L1Category = l1category
          @L2Category = l2category
        end

        def deserialize(params)
          @L1Category = params['L1Category']
          @L2Category = params['L2Category']
        end
      end

      # CreateCustomCategory返回参数结构体
      class CreateCustomCategoryResponse < TencentCloud::Common::AbstractModel
        # @param CategoryId: 自定义分类信息ID
        # @type CategoryId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CategoryId, :RequestId
        
        def initialize(categoryid=nil, requestid=nil)
          @CategoryId = categoryid
          @RequestId = requestid
        end

        def deserialize(params)
          @CategoryId = params['CategoryId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCustomGroup请求参数结构体
      class CreateCustomGroupRequest < TencentCloud::Common::AbstractModel
        # @param Bucket: 人脸图片COS存储桶Host地址
        # @type Bucket: String

        attr_accessor :Bucket
        
        def initialize(bucket=nil)
          @Bucket = bucket
        end

        def deserialize(params)
          @Bucket = params['Bucket']
        end
      end

      # CreateCustomGroup返回参数结构体
      class CreateCustomGroupResponse < TencentCloud::Common::AbstractModel
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

      # CreateCustomPerson请求参数结构体
      class CreateCustomPersonRequest < TencentCloud::Common::AbstractModel
        # @param Name: 自定义人物姓名
        # @type Name: String
        # @param BasicInfo: 自定义人物简要信息(仅用于标记，不支持检索)
        # @type BasicInfo: String
        # @param CategoryId: 自定义分类ID，如不存在接口会报错
        # @type CategoryId: String
        # @param ImageURL: 自定义人物图片URL，可支持任意地址，推荐使用COS
        # @type ImageURL: String
        # @param Image: 原始图片base64编码后的数据
        # @type Image: String

        attr_accessor :Name, :BasicInfo, :CategoryId, :ImageURL, :Image
        
        def initialize(name=nil, basicinfo=nil, categoryid=nil, imageurl=nil, image=nil)
          @Name = name
          @BasicInfo = basicinfo
          @CategoryId = categoryid
          @ImageURL = imageurl
          @Image = image
        end

        def deserialize(params)
          @Name = params['Name']
          @BasicInfo = params['BasicInfo']
          @CategoryId = params['CategoryId']
          @ImageURL = params['ImageURL']
          @Image = params['Image']
        end
      end

      # CreateCustomPerson返回参数结构体
      class CreateCustomPersonResponse < TencentCloud::Common::AbstractModel
        # @param PersonId: 自定义人物Id
        # @type PersonId: String
        # @param ImageInfo: 自定义人脸信息
        # @type ImageInfo: :class:`Tencentcloud::Ivld.v20210903.models.PersonImageInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PersonId, :ImageInfo, :RequestId
        
        def initialize(personid=nil, imageinfo=nil, requestid=nil)
          @PersonId = personid
          @ImageInfo = imageinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          unless params['ImageInfo'].nil?
            @ImageInfo = PersonImageInfo.new
            @ImageInfo.deserialize(params['ImageInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateDefaultCategories请求参数结构体
      class CreateDefaultCategoriesRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # CreateDefaultCategories返回参数结构体
      class CreateDefaultCategoriesResponse < TencentCloud::Common::AbstractModel
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

      # CreateTask请求参数结构体
      class CreateTaskRequest < TencentCloud::Common::AbstractModel
        # @param MediaId: 媒资文件ID，最长32B
        # @type MediaId: String
        # @param MediaPreknownInfo: 媒资素材先验知识，相关限制参考MediaPreknownInfo
        # @type MediaPreknownInfo: :class:`Tencentcloud::Ivld.v20210903.models.MediaPreknownInfo`
        # @param TaskName: 任务名称，最长100个中文字符
        # @type TaskName: String
        # @param UploadVideo: 是否上传转码后的视频，仅设置true时上传，默认为false
        # @type UploadVideo: Boolean
        # @param Label: 自定义标签，可用于查询
        # @type Label: String
        # @param CallbackURL: 任务分析完成的回调地址，该设置优先级高于控制台全局的设置；
        # @type CallbackURL: String

        attr_accessor :MediaId, :MediaPreknownInfo, :TaskName, :UploadVideo, :Label, :CallbackURL
        
        def initialize(mediaid=nil, mediapreknowninfo=nil, taskname=nil, uploadvideo=nil, label=nil, callbackurl=nil)
          @MediaId = mediaid
          @MediaPreknownInfo = mediapreknowninfo
          @TaskName = taskname
          @UploadVideo = uploadvideo
          @Label = label
          @CallbackURL = callbackurl
        end

        def deserialize(params)
          @MediaId = params['MediaId']
          unless params['MediaPreknownInfo'].nil?
            @MediaPreknownInfo = MediaPreknownInfo.new
            @MediaPreknownInfo.deserialize(params['MediaPreknownInfo'])
          end
          @TaskName = params['TaskName']
          @UploadVideo = params['UploadVideo']
          @Label = params['Label']
          @CallbackURL = params['CallbackURL']
        end
      end

      # CreateTask返回参数结构体
      class CreateTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 智能标签视频分析任务ID
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 自定义分类信息
      class CustomCategory < TencentCloud::Common::AbstractModel
        # @param CategoryId: 自定义分类ID
        # @type CategoryId: String
        # @param L1Category: 一级自定义类型
        # @type L1Category: String
        # @param L2Category: 二级自定义类型
        # @type L2Category: String

        attr_accessor :CategoryId, :L1Category, :L2Category
        
        def initialize(categoryid=nil, l1category=nil, l2category=nil)
          @CategoryId = categoryid
          @L1Category = l1category
          @L2Category = l2category
        end

        def deserialize(params)
          @CategoryId = params['CategoryId']
          @L1Category = params['L1Category']
          @L2Category = params['L2Category']
        end
      end

      # 自定义人物批量查询过滤条件
      class CustomPersonFilter < TencentCloud::Common::AbstractModel
        # @param Name: 待查询的人物姓名
        # @type Name: String
        # @param CategoryIdSet: 待过滤的自定义类型Id数组
        # @type CategoryIdSet: Array
        # @param PersonIdSet: 待过滤的自定义人物Id数组
        # @type PersonIdSet: Array
        # @param L1CategorySet: 一级自定义人物类型数组
        # @type L1CategorySet: Array

        attr_accessor :Name, :CategoryIdSet, :PersonIdSet, :L1CategorySet
        
        def initialize(name=nil, categoryidset=nil, personidset=nil, l1categoryset=nil)
          @Name = name
          @CategoryIdSet = categoryidset
          @PersonIdSet = personidset
          @L1CategorySet = l1categoryset
        end

        def deserialize(params)
          @Name = params['Name']
          @CategoryIdSet = params['CategoryIdSet']
          @PersonIdSet = params['PersonIdSet']
          @L1CategorySet = params['L1CategorySet']
        end
      end

      # 自定义人物信息
      class CustomPersonInfo < TencentCloud::Common::AbstractModel
        # @param PersonId: 自定义人物Id
        # @type PersonId: String
        # @param Name: 自定义人物姓名
        # @type Name: String
        # @param BasicInfo: 自定义人物简介信息
        # @type BasicInfo: String
        # @param L1Category: 一级自定义人物类型
        # @type L1Category: String
        # @param L2Category: 二级自定义人物类型
        # @type L2Category: String
        # @param ImageInfoSet: 自定义人物图片信息
        # @type ImageInfoSet: Array
        # @param CreateTime: 自定义人物创建时间
        # @type CreateTime: String

        attr_accessor :PersonId, :Name, :BasicInfo, :L1Category, :L2Category, :ImageInfoSet, :CreateTime
        
        def initialize(personid=nil, name=nil, basicinfo=nil, l1category=nil, l2category=nil, imageinfoset=nil, createtime=nil)
          @PersonId = personid
          @Name = name
          @BasicInfo = basicinfo
          @L1Category = l1category
          @L2Category = l2category
          @ImageInfoSet = imageinfoset
          @CreateTime = createtime
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @Name = params['Name']
          @BasicInfo = params['BasicInfo']
          @L1Category = params['L1Category']
          @L2Category = params['L2Category']
          unless params['ImageInfoSet'].nil?
            @ImageInfoSet = []
            params['ImageInfoSet'].each do |i|
              personimageinfo_tmp = PersonImageInfo.new
              personimageinfo_tmp.deserialize(i)
              @ImageInfoSet << personimageinfo_tmp
            end
          end
          @CreateTime = params['CreateTime']
        end
      end

      # 任务结果数据
      class Data < TencentCloud::Common::AbstractModel
        # @param ShowInfo: 节目粒度结构化结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShowInfo: :class:`Tencentcloud::Ivld.v20210903.models.ShowInfo`

        attr_accessor :ShowInfo
        
        def initialize(showinfo=nil)
          @ShowInfo = showinfo
        end

        def deserialize(params)
          unless params['ShowInfo'].nil?
            @ShowInfo = ShowInfo.new
            @ShowInfo.deserialize(params['ShowInfo'])
          end
        end
      end

      # DeleteCustomCategory请求参数结构体
      class DeleteCustomCategoryRequest < TencentCloud::Common::AbstractModel
        # @param CategoryId: 自定义分类ID
        # @type CategoryId: String

        attr_accessor :CategoryId
        
        def initialize(categoryid=nil)
          @CategoryId = categoryid
        end

        def deserialize(params)
          @CategoryId = params['CategoryId']
        end
      end

      # DeleteCustomCategory返回参数结构体
      class DeleteCustomCategoryResponse < TencentCloud::Common::AbstractModel
        # @param CategoryId: 123
        # @type CategoryId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CategoryId, :RequestId
        
        def initialize(categoryid=nil, requestid=nil)
          @CategoryId = categoryid
          @RequestId = requestid
        end

        def deserialize(params)
          @CategoryId = params['CategoryId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteCustomPersonImage请求参数结构体
      class DeleteCustomPersonImageRequest < TencentCloud::Common::AbstractModel
        # @param PersonId: 自定义人物Id
        # @type PersonId: String
        # @param ImageId: 自定义人脸图片Id
        # @type ImageId: String

        attr_accessor :PersonId, :ImageId
        
        def initialize(personid=nil, imageid=nil)
          @PersonId = personid
          @ImageId = imageid
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @ImageId = params['ImageId']
        end
      end

      # DeleteCustomPersonImage返回参数结构体
      class DeleteCustomPersonImageResponse < TencentCloud::Common::AbstractModel
        # @param PersonId: 自定义人物Id
        # @type PersonId: String
        # @param ImageId: 已删除的人物图片Id
        # @type ImageId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PersonId, :ImageId, :RequestId
        
        def initialize(personid=nil, imageid=nil, requestid=nil)
          @PersonId = personid
          @ImageId = imageid
          @RequestId = requestid
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @ImageId = params['ImageId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteCustomPerson请求参数结构体
      class DeleteCustomPersonRequest < TencentCloud::Common::AbstractModel
        # @param PersonId: 待删除的自定义人物ID
        # @type PersonId: String

        attr_accessor :PersonId
        
        def initialize(personid=nil)
          @PersonId = personid
        end

        def deserialize(params)
          @PersonId = params['PersonId']
        end
      end

      # DeleteCustomPerson返回参数结构体
      class DeleteCustomPersonResponse < TencentCloud::Common::AbstractModel
        # @param PersonId: 已删除的自定义人物Id
        # @type PersonId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PersonId, :RequestId
        
        def initialize(personid=nil, requestid=nil)
          @PersonId = personid
          @RequestId = requestid
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteMedia请求参数结构体
      class DeleteMediaRequest < TencentCloud::Common::AbstractModel
        # @param MediaId: 媒资文件在系统中的ID
        # @type MediaId: String

        attr_accessor :MediaId
        
        def initialize(mediaid=nil)
          @MediaId = mediaid
        end

        def deserialize(params)
          @MediaId = params['MediaId']
        end
      end

      # DeleteMedia返回参数结构体
      class DeleteMediaResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTask请求参数结构体
      class DeleteTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id
        # @type TaskId: String

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DeleteTask返回参数结构体
      class DeleteTaskResponse < TencentCloud::Common::AbstractModel
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

      # DescribeCustomCategories请求参数结构体
      class DescribeCustomCategoriesRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeCustomCategories返回参数结构体
      class DescribeCustomCategoriesResponse < TencentCloud::Common::AbstractModel
        # @param CategorySet: 自定义人物类型数组
        # @type CategorySet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CategorySet, :RequestId
        
        def initialize(categoryset=nil, requestid=nil)
          @CategorySet = categoryset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CategorySet'].nil?
            @CategorySet = []
            params['CategorySet'].each do |i|
              customcategory_tmp = CustomCategory.new
              customcategory_tmp.deserialize(i)
              @CategorySet << customcategory_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCustomGroup请求参数结构体
      class DescribeCustomGroupRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeCustomGroup返回参数结构体
      class DescribeCustomGroupResponse < TencentCloud::Common::AbstractModel
        # @param GroupSize: 自定义人物库所包含的人物个数
        # @type GroupSize: Integer
        # @param Bucket: 自定义人物库图片后续所在的存储桶
        # @type Bucket: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupSize, :Bucket, :RequestId
        
        def initialize(groupsize=nil, bucket=nil, requestid=nil)
          @GroupSize = groupsize
          @Bucket = bucket
          @RequestId = requestid
        end

        def deserialize(params)
          @GroupSize = params['GroupSize']
          @Bucket = params['Bucket']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCustomPersonDetail请求参数结构体
      class DescribeCustomPersonDetailRequest < TencentCloud::Common::AbstractModel
        # @param PersonId: 自定义人物Id
        # @type PersonId: String

        attr_accessor :PersonId
        
        def initialize(personid=nil)
          @PersonId = personid
        end

        def deserialize(params)
          @PersonId = params['PersonId']
        end
      end

      # DescribeCustomPersonDetail返回参数结构体
      class DescribeCustomPersonDetailResponse < TencentCloud::Common::AbstractModel
        # @param PersonInfo: 自定义人物信息
        # @type PersonInfo: :class:`Tencentcloud::Ivld.v20210903.models.CustomPersonInfo`
        # @param TaskIdSet: 出现该自定义人物的所有分析人物Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskIdSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PersonInfo, :TaskIdSet, :RequestId
        
        def initialize(personinfo=nil, taskidset=nil, requestid=nil)
          @PersonInfo = personinfo
          @TaskIdSet = taskidset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PersonInfo'].nil?
            @PersonInfo = CustomPersonInfo.new
            @PersonInfo.deserialize(params['PersonInfo'])
          end
          @TaskIdSet = params['TaskIdSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCustomPersons请求参数结构体
      class DescribeCustomPersonsRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 分页序号，从1开始
        # @type PageNumber: Integer
        # @param PageSize: 分页数据行数，最多50
        # @type PageSize: Integer
        # @param SortBy: 排序信息，默认倒序
        # @type SortBy: :class:`Tencentcloud::Ivld.v20210903.models.SortBy`
        # @param Filter: 自定义人物过滤条件
        # @type Filter: :class:`Tencentcloud::Ivld.v20210903.models.CustomPersonFilter`

        attr_accessor :PageNumber, :PageSize, :SortBy, :Filter
        
        def initialize(pagenumber=nil, pagesize=nil, sortby=nil, filter=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @SortBy = sortby
          @Filter = filter
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['SortBy'].nil?
            @SortBy = SortBy.new
            @SortBy.deserialize(params['SortBy'])
          end
          unless params['Filter'].nil?
            @Filter = CustomPersonFilter.new
            @Filter.deserialize(params['Filter'])
          end
        end
      end

      # DescribeCustomPersons返回参数结构体
      class DescribeCustomPersonsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 满足过滤条件的自定义人物数量
        # @type TotalCount: Integer
        # @param PersonInfoSet: 自定义人物信息
        # @type PersonInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :PersonInfoSet, :RequestId
        
        def initialize(totalcount=nil, personinfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @PersonInfoSet = personinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['PersonInfoSet'].nil?
            @PersonInfoSet = []
            params['PersonInfoSet'].each do |i|
              custompersoninfo_tmp = CustomPersonInfo.new
              custompersoninfo_tmp.deserialize(i)
              @PersonInfoSet << custompersoninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMedia请求参数结构体
      class DescribeMediaRequest < TencentCloud::Common::AbstractModel
        # @param MediaId: 导入媒资返回的媒资ID，最长32B
        # @type MediaId: String

        attr_accessor :MediaId
        
        def initialize(mediaid=nil)
          @MediaId = mediaid
        end

        def deserialize(params)
          @MediaId = params['MediaId']
        end
      end

      # DescribeMedia返回参数结构体
      class DescribeMediaResponse < TencentCloud::Common::AbstractModel
        # @param MediaInfo: 媒资信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MediaInfo: :class:`Tencentcloud::Ivld.v20210903.models.MediaInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MediaInfo, :RequestId
        
        def initialize(mediainfo=nil, requestid=nil)
          @MediaInfo = mediainfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MediaInfo'].nil?
            @MediaInfo = MediaInfo.new
            @MediaInfo.deserialize(params['MediaInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMedias请求参数结构体
      class DescribeMediasRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 分页序号，从1开始
        # @type PageNumber: Integer
        # @param PageSize: 每个分页所包含的元素数量，最大为50
        # @type PageSize: Integer
        # @param MediaFilter: 列举过滤条件，相关限制相见MediaFilter
        # @type MediaFilter: :class:`Tencentcloud::Ivld.v20210903.models.MediaFilter`
        # @param SortBy: 返回结果排序信息，By字段只支持CreateTime
        # @type SortBy: :class:`Tencentcloud::Ivld.v20210903.models.SortBy`

        attr_accessor :PageNumber, :PageSize, :MediaFilter, :SortBy
        
        def initialize(pagenumber=nil, pagesize=nil, mediafilter=nil, sortby=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @MediaFilter = mediafilter
          @SortBy = sortby
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['MediaFilter'].nil?
            @MediaFilter = MediaFilter.new
            @MediaFilter.deserialize(params['MediaFilter'])
          end
          unless params['SortBy'].nil?
            @SortBy = SortBy.new
            @SortBy.deserialize(params['SortBy'])
          end
        end
      end

      # DescribeMedias返回参数结构体
      class DescribeMediasResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 满足过滤条件的媒资视频总数量
        # @type TotalCount: Integer
        # @param MediaInfoSet: 满足过滤条件的媒资信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MediaInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :MediaInfoSet, :RequestId
        
        def initialize(totalcount=nil, mediainfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @MediaInfoSet = mediainfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['MediaInfoSet'].nil?
            @MediaInfoSet = []
            params['MediaInfoSet'].each do |i|
              mediainfo_tmp = MediaInfo.new
              mediainfo_tmp.deserialize(i)
              @MediaInfoSet << mediainfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskDetail请求参数结构体
      class DescribeTaskDetailRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 创建任务返回的TaskId
        # @type TaskId: String

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeTaskDetail返回参数结构体
      class DescribeTaskDetailResponse < TencentCloud::Common::AbstractModel
        # @param TaskInfo: 任务信息，不包含任务结果
        # @type TaskInfo: :class:`Tencentcloud::Ivld.v20210903.models.TaskInfo`
        # @param TaskData: 任务结果数据，只在任务结束时返回
        # @type TaskData: :class:`Tencentcloud::Ivld.v20210903.models.Data`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskInfo, :TaskData, :RequestId
        
        def initialize(taskinfo=nil, taskdata=nil, requestid=nil)
          @TaskInfo = taskinfo
          @TaskData = taskdata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskInfo'].nil?
            @TaskInfo = TaskInfo.new
            @TaskInfo.deserialize(params['TaskInfo'])
          end
          unless params['TaskData'].nil?
            @TaskData = Data.new
            @TaskData.deserialize(params['TaskData'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTask请求参数结构体
      class DescribeTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: CreateTask返回的任务ID，最长32B
        # @type TaskId: String

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeTask返回参数结构体
      class DescribeTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskInfo: 任务信息，详情参见TaskInfo的定义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskInfo: :class:`Tencentcloud::Ivld.v20210903.models.TaskInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskInfo, :RequestId
        
        def initialize(taskinfo=nil, requestid=nil)
          @TaskInfo = taskinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskInfo'].nil?
            @TaskInfo = TaskInfo.new
            @TaskInfo.deserialize(params['TaskInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTasks请求参数结构体
      class DescribeTasksRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 分页序号，从1开始
        # @type PageNumber: Integer
        # @param PageSize: 每个分页所包含的元素数量，最大为50
        # @type PageSize: Integer
        # @param TaskFilter: 任务过滤条件，相关限制参见TaskFilter
        # @type TaskFilter: :class:`Tencentcloud::Ivld.v20210903.models.TaskFilter`
        # @param SortBy: 返回结果排序信息，By字段只支持CreateTimeStamp
        # @type SortBy: :class:`Tencentcloud::Ivld.v20210903.models.SortBy`

        attr_accessor :PageNumber, :PageSize, :TaskFilter, :SortBy
        
        def initialize(pagenumber=nil, pagesize=nil, taskfilter=nil, sortby=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TaskFilter = taskfilter
          @SortBy = sortby
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['TaskFilter'].nil?
            @TaskFilter = TaskFilter.new
            @TaskFilter.deserialize(params['TaskFilter'])
          end
          unless params['SortBy'].nil?
            @SortBy = SortBy.new
            @SortBy.deserialize(params['SortBy'])
          end
        end
      end

      # DescribeTasks返回参数结构体
      class DescribeTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 满足过滤条件的任务总数量
        # @type TotalCount: Integer
        # @param TaskInfoSet: 满足过滤条件的任务数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TaskInfoSet, :RequestId
        
        def initialize(totalcount=nil, taskinfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @TaskInfoSet = taskinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TaskInfoSet'].nil?
            @TaskInfoSet = []
            params['TaskInfoSet'].each do |i|
              taskinfo_tmp = TaskInfo.new
              taskinfo_tmp.deserialize(i)
              @TaskInfoSet << taskinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ImportMedia请求参数结构体
      class ImportMediaRequest < TencentCloud::Common::AbstractModel
        # @param URL: 待分析视频的URL，目前只支持*不带签名的*COS地址，长度最长1KB
        # @type URL: String
        # @param MD5: 待分析视频的MD5，为空时不做校验，否则会做MD5校验，长度必须为32B
        # @type MD5: String
        # @param Name: 待分析视频的名称，指定后可支持筛选，最多100个中文字符
        # @type Name: String
        # @param WriteBackCosPath: 当非本人外部视频地址导入时，该字段为转存的cos桶地址且不可为空; 示例：https://${Bucket}-${AppId}.cos.${Region}.myqcloud.com/${PathPrefix}/  (注意，cos路径需要以/分隔符结尾)
        # @type WriteBackCosPath: String
        # @param Label: 自定义标签，可用于查询
        # @type Label: String
        # @param CallbackURL: 媒资导入完成的回调地址，该设置优先级高于控制台全局的设置；
        # @type CallbackURL: String

        attr_accessor :URL, :MD5, :Name, :WriteBackCosPath, :Label, :CallbackURL
        
        def initialize(url=nil, md5=nil, name=nil, writebackcospath=nil, label=nil, callbackurl=nil)
          @URL = url
          @MD5 = md5
          @Name = name
          @WriteBackCosPath = writebackcospath
          @Label = label
          @CallbackURL = callbackurl
        end

        def deserialize(params)
          @URL = params['URL']
          @MD5 = params['MD5']
          @Name = params['Name']
          @WriteBackCosPath = params['WriteBackCosPath']
          @Label = params['Label']
          @CallbackURL = params['CallbackURL']
        end
      end

      # ImportMedia返回参数结构体
      class ImportMediaResponse < TencentCloud::Common::AbstractModel
        # @param MediaId: 媒资文件在系统中的ID
        # @type MediaId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MediaId, :RequestId
        
        def initialize(mediaid=nil, requestid=nil)
          @MediaId = mediaid
          @RequestId = requestid
        end

        def deserialize(params)
          @MediaId = params['MediaId']
          @RequestId = params['RequestId']
        end
      end

      # 一级标签信息

      # 请注意，一级标签信息可能不包含二级标签(此时L2TagSet为空)。在这种情况下，一级标签可直接包含出现信息。
      class L1Tag < TencentCloud::Common::AbstractModel
        # @param Name: 一级标签名
        # @type Name: String
        # @param L2TagSet: 二级标签数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type L2TagSet: Array
        # @param AppearIndexPairSet: 一级标签出现信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppearIndexPairSet: Array
        # @param FirstAppear: 一级标签首次出现信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstAppear: Integer

        attr_accessor :Name, :L2TagSet, :AppearIndexPairSet, :FirstAppear
        
        def initialize(name=nil, l2tagset=nil, appearindexpairset=nil, firstappear=nil)
          @Name = name
          @L2TagSet = l2tagset
          @AppearIndexPairSet = appearindexpairset
          @FirstAppear = firstappear
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['L2TagSet'].nil?
            @L2TagSet = []
            params['L2TagSet'].each do |i|
              l2tag_tmp = L2Tag.new
              l2tag_tmp.deserialize(i)
              @L2TagSet << l2tag_tmp
            end
          end
          unless params['AppearIndexPairSet'].nil?
            @AppearIndexPairSet = []
            params['AppearIndexPairSet'].each do |i|
              appearindexpair_tmp = AppearIndexPair.new
              appearindexpair_tmp.deserialize(i)
              @AppearIndexPairSet << appearindexpair_tmp
            end
          end
          @FirstAppear = params['FirstAppear']
        end
      end

      # 二级标签信息

      # 请注意，二级标签信息可能不包含三级标签(此时L3TagSet为空)。
      class L2Tag < TencentCloud::Common::AbstractModel
        # @param Name: 二级标签名
        # @type Name: String
        # @param L3TagSet: 从属于此二级标签的三级标签数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type L3TagSet: Array
        # @param AppearIndexPairSet: 二级标签出现信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppearIndexPairSet: Array
        # @param FirstAppear: 二级标签首次出现信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstAppear: Integer

        attr_accessor :Name, :L3TagSet, :AppearIndexPairSet, :FirstAppear
        
        def initialize(name=nil, l3tagset=nil, appearindexpairset=nil, firstappear=nil)
          @Name = name
          @L3TagSet = l3tagset
          @AppearIndexPairSet = appearindexpairset
          @FirstAppear = firstappear
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['L3TagSet'].nil?
            @L3TagSet = []
            params['L3TagSet'].each do |i|
              l3tag_tmp = L3Tag.new
              l3tag_tmp.deserialize(i)
              @L3TagSet << l3tag_tmp
            end
          end
          unless params['AppearIndexPairSet'].nil?
            @AppearIndexPairSet = []
            params['AppearIndexPairSet'].each do |i|
              appearindexpair_tmp = AppearIndexPair.new
              appearindexpair_tmp.deserialize(i)
              @AppearIndexPairSet << appearindexpair_tmp
            end
          end
          @FirstAppear = params['FirstAppear']
        end
      end

      # 三级标签信息。

      # 三级标签不再包含任何子标签。所有三级标签都对应着识别结果中的出现信息，出现信息使用AppearIndexPairSet定位。
      class L3Tag < TencentCloud::Common::AbstractModel
        # @param Name: 三级标签名
        # @type Name: String
        # @param AppearIndexPairSet: 三级标签出现信息索引数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppearIndexPairSet: Array
        # @param FirstAppear: 三级标签首次出现信息，可选值为[1,3]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstAppear: Integer

        attr_accessor :Name, :AppearIndexPairSet, :FirstAppear
        
        def initialize(name=nil, appearindexpairset=nil, firstappear=nil)
          @Name = name
          @AppearIndexPairSet = appearindexpairset
          @FirstAppear = firstappear
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['AppearIndexPairSet'].nil?
            @AppearIndexPairSet = []
            params['AppearIndexPairSet'].each do |i|
              appearindexpair_tmp = AppearIndexPair.new
              appearindexpair_tmp.deserialize(i)
              @AppearIndexPairSet << appearindexpair_tmp
            end
          end
          @FirstAppear = params['FirstAppear']
        end
      end

      # 媒资过滤条件

      class MediaFilter < TencentCloud::Common::AbstractModel
        # @param MediaNameSet: 媒资名称过滤条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MediaNameSet: Array
        # @param StatusSet: 媒资状态数组，媒资状态可选值参见MediaInfo
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusSet: Array
        # @param MediaIdSet: 媒资ID数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MediaIdSet: Array
        # @param LabelSet: 媒资自定义标签数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelSet: Array

        attr_accessor :MediaNameSet, :StatusSet, :MediaIdSet, :LabelSet
        
        def initialize(medianameset=nil, statusset=nil, mediaidset=nil, labelset=nil)
          @MediaNameSet = medianameset
          @StatusSet = statusset
          @MediaIdSet = mediaidset
          @LabelSet = labelset
        end

        def deserialize(params)
          @MediaNameSet = params['MediaNameSet']
          @StatusSet = params['StatusSet']
          @MediaIdSet = params['MediaIdSet']
          @LabelSet = params['LabelSet']
        end
      end

      # 媒资信息结构体

      # 媒资状态定义如下：

      # | 状态名 | 状态值 | 状态描述 |
      # |---|---|---|
      # | MEDIA_STATUS_INVALID | 0 | 非法状态|
      # | MEDIA_STATUS_WAITING| 1 | 等待中 |
      # | MEDIA_STATUS_DOWNLOADING | 2 | 下载中 |
      # | MEDIA_STATUS_DOWNLOADED | 3 | 下载完成 |
      # | MEDIA_STATUS_DOWNLOAD_FAILED | 4 | 下载失败 |
      # | MEDIA_STATUS_TRANSCODING | 5 | 转码中 |
      # | MEDIA_STATUS_TRANSCODED | 6 | 转码完成 |
      # | MEDIA_STATUS_TRANCODE_FAILED | 7 | 转码失败 |
      # | MEDIA_STATUS_SUCCESS | 8 | 媒资文件状态就绪，可发起任务 |
      # | MEDIA_STATUS_EXPIRED | 9 | 媒资文件已过期 |
      class MediaInfo < TencentCloud::Common::AbstractModel
        # @param MediaId: 媒资ID
        # @type MediaId: String
        # @param Name: 媒资名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param DownLoadURL: 媒资下载地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownLoadURL: String
        # @param Status: 媒资状态，取值参看上方表格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param FailedReason: 若状态为失败，表示失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedReason: String
        # @param Metadata: 媒资视频元信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metadata: :class:`Tencentcloud::Ivld.v20210903.models.MediaMetadata`
        # @param Progress: 导入视频进度，取值范围为[0,100]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Progress: Float
        # @param Label: 媒资自定义标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String

        attr_accessor :MediaId, :Name, :DownLoadURL, :Status, :FailedReason, :Metadata, :Progress, :Label
        
        def initialize(mediaid=nil, name=nil, downloadurl=nil, status=nil, failedreason=nil, metadata=nil, progress=nil, label=nil)
          @MediaId = mediaid
          @Name = name
          @DownLoadURL = downloadurl
          @Status = status
          @FailedReason = failedreason
          @Metadata = metadata
          @Progress = progress
          @Label = label
        end

        def deserialize(params)
          @MediaId = params['MediaId']
          @Name = params['Name']
          @DownLoadURL = params['DownLoadURL']
          @Status = params['Status']
          @FailedReason = params['FailedReason']
          unless params['Metadata'].nil?
            @Metadata = MediaMetadata.new
            @Metadata.deserialize(params['Metadata'])
          end
          @Progress = params['Progress']
          @Label = params['Label']
        end
      end

      # 媒资文件视频元信息，包括分辨率，帧率，码率等
      class MediaMetadata < TencentCloud::Common::AbstractModel
        # @param FileSize: 媒资视频文件大小
        # @type FileSize: Integer
        # @param MD5: 媒资视频文件MD5
        # @type MD5: String
        # @param Duration: 媒资视频时长，单位为秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duration: Float
        # @param NumFrames: 媒资视频总帧数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NumFrames: Integer
        # @param Width: 媒资视频宽度，单位为像素
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Width: Integer
        # @param Height: 媒资视频高度，单位为像素
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Height: Integer
        # @param FPS: 媒资视频帧率，单位为Hz
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FPS: Float
        # @param BitRate: 媒资视频比特率，单位为kbps
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BitRate: Integer

        attr_accessor :FileSize, :MD5, :Duration, :NumFrames, :Width, :Height, :FPS, :BitRate
        
        def initialize(filesize=nil, md5=nil, duration=nil, numframes=nil, width=nil, height=nil, fps=nil, bitrate=nil)
          @FileSize = filesize
          @MD5 = md5
          @Duration = duration
          @NumFrames = numframes
          @Width = width
          @Height = height
          @FPS = fps
          @BitRate = bitrate
        end

        def deserialize(params)
          @FileSize = params['FileSize']
          @MD5 = params['MD5']
          @Duration = params['Duration']
          @NumFrames = params['NumFrames']
          @Width = params['Width']
          @Height = params['Height']
          @FPS = params['FPS']
          @BitRate = params['BitRate']
        end
      end

      # 描述输入媒资的先验知识，例如文件类型(视频)，媒体类型(新闻/综艺等)

      # MediaPreknownInfo.MediaType:

      # | MediaType 名称|  MediaType取值 | MediaType描述 |
      # |---|---|---|
      # | MEDIA_TYPE_INVALID | 0 | 非法的媒资文件类型 |
      # | MEDIA_TYPE_IMAGE | 1 | 图片，当前不支持 |
      # | MEDIA_TYPE_VIDEO | 2 | 视频，当前只支持此类型媒资文件 |

      # MediaPreknownInfo.MediaLabel:

      # | MediaLabel名称 | MediaLabel取值 | MediaLabel描述 |
      # |---|---|---|
      # | MEDIA_LABEL_INVALID | 0 | 非法的一级媒资素材类型 |
      # | MEDIA_LABEL_NEWS | 1 | 新闻 |
      # | MEDIA_LABEL_ENTERTAINMENT | 2 | 综艺|
      # | MEDIA_LABEL_INTERNET_INFO | 3 | 互联网资讯 |
      # | MEDIA_LABEL_MOVIE | 4 | 电影 |
      # | MEDIA_LABEL_SERIES | 5 | 电视连续剧 |
      # | MEDIA_LABEL_SPECIAL | 6 | 专题 |
      # | MEDIA_LABEL_SPORT | 7 | 体育 |

      # MediaPreknownInfo.MediaSecondLabel
      # 请注意：**当且仅当MediaLabel=2(综艺)时MediaSecondLabel才有意义**

      # | MediaSecondLabel名称 | MediaSecondLabel取值 | MediaSecondLabel 描述|
      # |---|---|---|
      # | MEDIA_SECOND_LABEL_INVALID |  0  | 非法的MediaSecondLabel |
      # | MEDIA_SECOND_LABEL_EVENING | 1 | 综艺晚会 |
      # | MEDIA_SECOND_LABEL_OTHERS | 2 | 其他 |

      # MediaMeta.MediaLang

      # | MediaLang名称 | MediaLang取值 | MediaLang描述 |
      # |---|---|---|
      # | MEDIA_LANG_INVALID | 0 | 非法的MediaLang |
      # | MEDIA_LANG_MANDARIN | 1 | 普通话 |
      # | MEDIA_LANG_CANTONESE | 2 | 粤语 |
      class MediaPreknownInfo < TencentCloud::Common::AbstractModel
        # @param MediaType: 媒资文件类型，参见MediaPreknownInfo结构体定义
        # @type MediaType: Integer
        # @param MediaLabel: 媒资素材一级类型，参见MediaPreknownInfo结构体定义
        # @type MediaLabel: Integer
        # @param MediaSecondLabel: 媒资素材二级类型，参见MediaPreknownInfo结构体定义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MediaSecondLabel: Integer
        # @param MediaLang: 媒资音频类型，参见MediaPreknownInfo结构体定义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MediaLang: Integer

        attr_accessor :MediaType, :MediaLabel, :MediaSecondLabel, :MediaLang
        
        def initialize(mediatype=nil, medialabel=nil, mediasecondlabel=nil, medialang=nil)
          @MediaType = mediatype
          @MediaLabel = medialabel
          @MediaSecondLabel = mediasecondlabel
          @MediaLang = medialang
        end

        def deserialize(params)
          @MediaType = params['MediaType']
          @MediaLabel = params['MediaLabel']
          @MediaSecondLabel = params['MediaSecondLabel']
          @MediaLang = params['MediaLang']
        end
      end

      # ModifyCallback请求参数结构体
      class ModifyCallbackRequest < TencentCloud::Common::AbstractModel
        # @param TaskFinishNotifyURL: 任务分析完成后回调地址
        # @type TaskFinishNotifyURL: String
        # @param MediaFinishNotifyURL: 媒体导入完成后回调地址
        # @type MediaFinishNotifyURL: String

        attr_accessor :TaskFinishNotifyURL, :MediaFinishNotifyURL
        
        def initialize(taskfinishnotifyurl=nil, mediafinishnotifyurl=nil)
          @TaskFinishNotifyURL = taskfinishnotifyurl
          @MediaFinishNotifyURL = mediafinishnotifyurl
        end

        def deserialize(params)
          @TaskFinishNotifyURL = params['TaskFinishNotifyURL']
          @MediaFinishNotifyURL = params['MediaFinishNotifyURL']
        end
      end

      # ModifyCallback返回参数结构体
      class ModifyCallbackResponse < TencentCloud::Common::AbstractModel
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

      # 标签信息结构体

      # 包含多级(最多三级)标签结果，以及这些标签在识别结果中的出现位置
      class MultiLevelTag < TencentCloud::Common::AbstractModel
        # @param TagSet: 树状标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagSet: Array
        # @param AppearInfo: 标签在识别结果中的定位信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppearInfo: :class:`Tencentcloud::Ivld.v20210903.models.AppearInfo`

        attr_accessor :TagSet, :AppearInfo
        
        def initialize(tagset=nil, appearinfo=nil)
          @TagSet = tagset
          @AppearInfo = appearinfo
        end

        def deserialize(params)
          unless params['TagSet'].nil?
            @TagSet = []
            params['TagSet'].each do |i|
              l1tag_tmp = L1Tag.new
              l1tag_tmp.deserialize(i)
              @TagSet << l1tag_tmp
            end
          end
          unless params['AppearInfo'].nil?
            @AppearInfo = AppearInfo.new
            @AppearInfo.deserialize(params['AppearInfo'])
          end
        end
      end

      # 自定义人物人脸图片信息
      class PersonImageInfo < TencentCloud::Common::AbstractModel
        # @param ImageId: 人脸图片ID
        # @type ImageId: String
        # @param ImageURL: 自定义人脸图片的URL，存储在IVLDCustomPreson存储桶内
        # @type ImageURL: String
        # @param ErrorCode: 自定义人脸图片处理错误码
        # @type ErrorCode: String
        # @param ErrorMsg: 自定义人脸图片处理错误信息
        # @type ErrorMsg: String

        attr_accessor :ImageId, :ImageURL, :ErrorCode, :ErrorMsg
        
        def initialize(imageid=nil, imageurl=nil, errorcode=nil, errormsg=nil)
          @ImageId = imageid
          @ImageURL = imageurl
          @ErrorCode = errorcode
          @ErrorMsg = errormsg
        end

        def deserialize(params)
          @ImageId = params['ImageId']
          @ImageURL = params['ImageURL']
          @ErrorCode = params['ErrorCode']
          @ErrorMsg = params['ErrorMsg']
        end
      end

      # QueryCallback请求参数结构体
      class QueryCallbackRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # QueryCallback返回参数结构体
      class QueryCallbackResponse < TencentCloud::Common::AbstractModel
        # @param TaskFinishNotifyURL: 任务分析完成后回调地址
        # @type TaskFinishNotifyURL: String
        # @param MediaFinishNotifyURL: 媒体导入完成后回调地址
        # @type MediaFinishNotifyURL: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskFinishNotifyURL, :MediaFinishNotifyURL, :RequestId
        
        def initialize(taskfinishnotifyurl=nil, mediafinishnotifyurl=nil, requestid=nil)
          @TaskFinishNotifyURL = taskfinishnotifyurl
          @MediaFinishNotifyURL = mediafinishnotifyurl
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskFinishNotifyURL = params['TaskFinishNotifyURL']
          @MediaFinishNotifyURL = params['MediaFinishNotifyURL']
          @RequestId = params['RequestId']
        end
      end

      # 视频结构化结果
      class ShowInfo < TencentCloud::Common::AbstractModel
        # @param Date: 节目日期(只在新闻有效)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Date: String
        # @param Logo: 台标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Logo: String
        # @param Column: 节目名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Column: String
        # @param Source: 来源信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: String
        # @param CoverImageURL: 节目封面
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CoverImageURL: String
        # @param SummarySet: 节目内容概要列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SummarySet: Array
        # @param TitleSet: 节目片段标题列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TitleSet: Array
        # @param AudioInfoSet: 音频识别结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AudioInfoSet: Array
        # @param TextInfoSet: 可视文字识别结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TextInfoSet: Array
        # @param TextTagSet: 文本标签列表，包含标签内容和出现信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TextTagSet: :class:`Tencentcloud::Ivld.v20210903.models.MultiLevelTag`
        # @param FrameTagSet: 帧标签列表，包括人物信息，场景信息等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrameTagSet: :class:`Tencentcloud::Ivld.v20210903.models.MultiLevelTag`
        # @param WebMediaURL: 视频下载地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebMediaURL: String
        # @param MediaClassifierSet: 媒资分类信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MediaClassifierSet: Array
        # @param SummaryTagSet: 概要标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SummaryTagSet: Array

        attr_accessor :Date, :Logo, :Column, :Source, :CoverImageURL, :SummarySet, :TitleSet, :AudioInfoSet, :TextInfoSet, :TextTagSet, :FrameTagSet, :WebMediaURL, :MediaClassifierSet, :SummaryTagSet
        
        def initialize(date=nil, logo=nil, column=nil, source=nil, coverimageurl=nil, summaryset=nil, titleset=nil, audioinfoset=nil, textinfoset=nil, texttagset=nil, frametagset=nil, webmediaurl=nil, mediaclassifierset=nil, summarytagset=nil)
          @Date = date
          @Logo = logo
          @Column = column
          @Source = source
          @CoverImageURL = coverimageurl
          @SummarySet = summaryset
          @TitleSet = titleset
          @AudioInfoSet = audioinfoset
          @TextInfoSet = textinfoset
          @TextTagSet = texttagset
          @FrameTagSet = frametagset
          @WebMediaURL = webmediaurl
          @MediaClassifierSet = mediaclassifierset
          @SummaryTagSet = summarytagset
        end

        def deserialize(params)
          @Date = params['Date']
          @Logo = params['Logo']
          @Column = params['Column']
          @Source = params['Source']
          @CoverImageURL = params['CoverImageURL']
          @SummarySet = params['SummarySet']
          @TitleSet = params['TitleSet']
          unless params['AudioInfoSet'].nil?
            @AudioInfoSet = []
            params['AudioInfoSet'].each do |i|
              audioinfo_tmp = AudioInfo.new
              audioinfo_tmp.deserialize(i)
              @AudioInfoSet << audioinfo_tmp
            end
          end
          unless params['TextInfoSet'].nil?
            @TextInfoSet = []
            params['TextInfoSet'].each do |i|
              textinfo_tmp = TextInfo.new
              textinfo_tmp.deserialize(i)
              @TextInfoSet << textinfo_tmp
            end
          end
          unless params['TextTagSet'].nil?
            @TextTagSet = MultiLevelTag.new
            @TextTagSet.deserialize(params['TextTagSet'])
          end
          unless params['FrameTagSet'].nil?
            @FrameTagSet = MultiLevelTag.new
            @FrameTagSet.deserialize(params['FrameTagSet'])
          end
          @WebMediaURL = params['WebMediaURL']
          @MediaClassifierSet = params['MediaClassifierSet']
          @SummaryTagSet = params['SummaryTagSet']
        end
      end

      # 排序条件
      class SortBy < TencentCloud::Common::AbstractModel
        # @param By: 排序字段，默认为CreateTime
        # @type By: String
        # @param Descend: true表示降序，false表示升序
        # @type Descend: Boolean

        attr_accessor :By, :Descend
        
        def initialize(by=nil, descend=nil)
          @By = by
          @Descend = descend
        end

        def deserialize(params)
          @By = params['By']
          @Descend = params['Descend']
        end
      end

      # 任务筛选条件结构体
      class TaskFilter < TencentCloud::Common::AbstractModel
        # @param MediaTypeSet: 媒资文件类型
        # @type MediaTypeSet: Array
        # @param TaskStatusSet: 待筛选的任务状态列表
        # @type TaskStatusSet: Array
        # @param TaskNameSet: 待筛选的任务名称数组
        # @type TaskNameSet: Array
        # @param TaskIdSet: TaskId数组
        # @type TaskIdSet: Array
        # @param MediaNameSet: 媒资文件名数组
        # @type MediaNameSet: Array
        # @param MediaLangSet: 媒资语言类型
        # @type MediaLangSet: Array
        # @param MediaLabelSet: 媒资素材一级类型
        # @type MediaLabelSet: Array
        # @param LabelSet: 媒资自定义标签数组
        # @type LabelSet: Array

        attr_accessor :MediaTypeSet, :TaskStatusSet, :TaskNameSet, :TaskIdSet, :MediaNameSet, :MediaLangSet, :MediaLabelSet, :LabelSet
        
        def initialize(mediatypeset=nil, taskstatusset=nil, tasknameset=nil, taskidset=nil, medianameset=nil, medialangset=nil, medialabelset=nil, labelset=nil)
          @MediaTypeSet = mediatypeset
          @TaskStatusSet = taskstatusset
          @TaskNameSet = tasknameset
          @TaskIdSet = taskidset
          @MediaNameSet = medianameset
          @MediaLangSet = medialangset
          @MediaLabelSet = medialabelset
          @LabelSet = labelset
        end

        def deserialize(params)
          @MediaTypeSet = params['MediaTypeSet']
          @TaskStatusSet = params['TaskStatusSet']
          @TaskNameSet = params['TaskNameSet']
          @TaskIdSet = params['TaskIdSet']
          @MediaNameSet = params['MediaNameSet']
          @MediaLangSet = params['MediaLangSet']
          @MediaLabelSet = params['MediaLabelSet']
          @LabelSet = params['LabelSet']
        end
      end

      # 任务信息

      # TaskStatus定义如下:

      # | TaskStatus名称 | TaskStatus取值 | TaskStatus描述 |
      # |---|---|---|
      # | TASK_STATUS_INVALID | 0 | 非法的任务状态 |
      # | TASK_STATUS_WAITING | 1 | 排队中 |
      # | TASK_STATUS_ANALYSING | 2 | 任务分析中 |
      # | TASK_STATUS_ANALYSED | 3 | 任务分析完成 |
      # | TASK_STATUS_SNAPSHOT_CREATING | 4 | 任务结果快照生成中 |
      # | TASK_STATUS_SNAPSHOT_CREATED | 5 | 任务结果快照生成完成 |
      # | TASK_STATUS_RESULT_UPLOADING | 6 | 任务结果快照上传中 |
      # | TASK_STATUS_RESULT_UPLOADED | 7 | 任务结果快照上传完成 |
      # | TASK_STATUS_SUCCESS | 8 | 任务执行完成 |
      # | TASK_STATUS_FAILED | 9 | 任务执行失败 |
      class TaskInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param TaskName: 描述任务名称，指定后可根据名称筛选
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param MediaId: 媒资文件ID
        # @type MediaId: String
        # @param TaskStatus: 任务执行状态
        # @type TaskStatus: Integer
        # @param TaskProgress: 任务进度，范围为[0，100]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskProgress: Float
        # @param TaskTimeCost: 任务执行时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTimeCost: Integer
        # @param TaskCreateTime: 任务创建时间
        # @type TaskCreateTime: String
        # @param TaskStartTime: 任务开始执行时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskStartTime: String
        # @param FailedReason: 任务失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedReason: String
        # @param MediaPreknownInfo: 任务执行时指定的先验知识
        # @type MediaPreknownInfo: :class:`Tencentcloud::Ivld.v20210903.models.MediaPreknownInfo`
        # @param MediaName: 媒资文件名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MediaName: String
        # @param Label: 媒资自定义标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String

        attr_accessor :TaskId, :TaskName, :MediaId, :TaskStatus, :TaskProgress, :TaskTimeCost, :TaskCreateTime, :TaskStartTime, :FailedReason, :MediaPreknownInfo, :MediaName, :Label
        
        def initialize(taskid=nil, taskname=nil, mediaid=nil, taskstatus=nil, taskprogress=nil, tasktimecost=nil, taskcreatetime=nil, taskstarttime=nil, failedreason=nil, mediapreknowninfo=nil, medianame=nil, label=nil)
          @TaskId = taskid
          @TaskName = taskname
          @MediaId = mediaid
          @TaskStatus = taskstatus
          @TaskProgress = taskprogress
          @TaskTimeCost = tasktimecost
          @TaskCreateTime = taskcreatetime
          @TaskStartTime = taskstarttime
          @FailedReason = failedreason
          @MediaPreknownInfo = mediapreknowninfo
          @MediaName = medianame
          @Label = label
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @MediaId = params['MediaId']
          @TaskStatus = params['TaskStatus']
          @TaskProgress = params['TaskProgress']
          @TaskTimeCost = params['TaskTimeCost']
          @TaskCreateTime = params['TaskCreateTime']
          @TaskStartTime = params['TaskStartTime']
          @FailedReason = params['FailedReason']
          unless params['MediaPreknownInfo'].nil?
            @MediaPreknownInfo = MediaPreknownInfo.new
            @MediaPreknownInfo.deserialize(params['MediaPreknownInfo'])
          end
          @MediaName = params['MediaName']
          @Label = params['Label']
        end
      end

      # 关键词在文本中的定位信息

      # Position为关键词在文本中的偏移量，从0开始。例如，给定文本结果"欢迎收看新闻三十分”，以及关键词"新闻三十分"，那么StartPosition的值为4，EndPosition的值为9
      class TextAppearInfo < TencentCloud::Common::AbstractModel
        # @param Index: 文本结果数组中的下标
        # @type Index: Integer
        # @param StartPosition: 关键词在文本中出现的起始偏移量(包含)
        # @type StartPosition: Integer
        # @param EndPosition: 关键词在文本中出现的结束偏移量(不包含)
        # @type EndPosition: Integer

        attr_accessor :Index, :StartPosition, :EndPosition
        
        def initialize(index=nil, startposition=nil, endposition=nil)
          @Index = index
          @StartPosition = startposition
          @EndPosition = endposition
        end

        def deserialize(params)
          @Index = params['Index']
          @StartPosition = params['StartPosition']
          @EndPosition = params['EndPosition']
        end
      end

      # 可视文本识别结果信息(OCR)
      class TextInfo < TencentCloud::Common::AbstractModel
        # @param Content: OCR提取的内容
        # @type Content: String
        # @param StartTimeStamp: OCR起始时间戳，从0开始
        # @type StartTimeStamp: Float
        # @param EndTimeStamp: OCR结束时间戳，从0开始
        # @type EndTimeStamp: Float
        # @param Tag: OCR标签信息
        # @type Tag: String

        attr_accessor :Content, :StartTimeStamp, :EndTimeStamp, :Tag
        
        def initialize(content=nil, starttimestamp=nil, endtimestamp=nil, tag=nil)
          @Content = content
          @StartTimeStamp = starttimestamp
          @EndTimeStamp = endtimestamp
          @Tag = tag
        end

        def deserialize(params)
          @Content = params['Content']
          @StartTimeStamp = params['StartTimeStamp']
          @EndTimeStamp = params['EndTimeStamp']
          @Tag = params['Tag']
        end
      end

      # UpdateCustomCategory请求参数结构体
      class UpdateCustomCategoryRequest < TencentCloud::Common::AbstractModel
        # @param CategoryId: 自定义人物类型Id
        # @type CategoryId: String
        # @param L1Category: 一级自定义人物类型
        # @type L1Category: String
        # @param L2Category: 二级自定义人物类型
        # @type L2Category: String

        attr_accessor :CategoryId, :L1Category, :L2Category
        
        def initialize(categoryid=nil, l1category=nil, l2category=nil)
          @CategoryId = categoryid
          @L1Category = l1category
          @L2Category = l2category
        end

        def deserialize(params)
          @CategoryId = params['CategoryId']
          @L1Category = params['L1Category']
          @L2Category = params['L2Category']
        end
      end

      # UpdateCustomCategory返回参数结构体
      class UpdateCustomCategoryResponse < TencentCloud::Common::AbstractModel
        # @param CategoryId: 成功更新的自定义人物类型Id
        # @type CategoryId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CategoryId, :RequestId
        
        def initialize(categoryid=nil, requestid=nil)
          @CategoryId = categoryid
          @RequestId = requestid
        end

        def deserialize(params)
          @CategoryId = params['CategoryId']
          @RequestId = params['RequestId']
        end
      end

      # UpdateCustomPerson请求参数结构体
      class UpdateCustomPersonRequest < TencentCloud::Common::AbstractModel
        # @param PersonId: 待更新的自定义人物Id
        # @type PersonId: String
        # @param Name: 更新后的自定义人物名称，如为空则不更新
        # @type Name: String
        # @param BasicInfo: 更新后的自定义人物简介，如为空则不更新
        # @type BasicInfo: String
        # @param CategoryId: 更新后的分类信息，如为空则不更新
        # @type CategoryId: String

        attr_accessor :PersonId, :Name, :BasicInfo, :CategoryId
        
        def initialize(personid=nil, name=nil, basicinfo=nil, categoryid=nil)
          @PersonId = personid
          @Name = name
          @BasicInfo = basicinfo
          @CategoryId = categoryid
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @Name = params['Name']
          @BasicInfo = params['BasicInfo']
          @CategoryId = params['CategoryId']
        end
      end

      # UpdateCustomPerson返回参数结构体
      class UpdateCustomPersonResponse < TencentCloud::Common::AbstractModel
        # @param PersonId: 成功更新的自定义人物Id
        # @type PersonId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PersonId, :RequestId
        
        def initialize(personid=nil, requestid=nil)
          @PersonId = personid
          @RequestId = requestid
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @RequestId = params['RequestId']
        end
      end

      # 关键词在视觉结果中的定位信息
      class VideoAppearInfo < TencentCloud::Common::AbstractModel
        # @param StartTimeStamp: 视觉信息起始时间戳，从0开始
        # @type StartTimeStamp: Float
        # @param EndTimeStamp: 视觉信息终止时间戳，从0开始
        # 关键词在视觉信息中的区间为[StartTimeStamp, EndTimeStamp)
        # @type EndTimeStamp: Float
        # @param ImageURL: 关键词在视觉信息中的封面图片
        # @type ImageURL: String

        attr_accessor :StartTimeStamp, :EndTimeStamp, :ImageURL
        
        def initialize(starttimestamp=nil, endtimestamp=nil, imageurl=nil)
          @StartTimeStamp = starttimestamp
          @EndTimeStamp = endtimestamp
          @ImageURL = imageurl
        end

        def deserialize(params)
          @StartTimeStamp = params['StartTimeStamp']
          @EndTimeStamp = params['EndTimeStamp']
          @ImageURL = params['ImageURL']
        end
      end

    end
  end
end

