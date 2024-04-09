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
  module Lcic
    module V20220817
      # AddGroupMember请求参数结构体
      class AddGroupMemberRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 群组ID
        # @type GroupId: String
        # @param SdkAppId: 低代码平台应用ID
        # @type SdkAppId: Integer
        # @param MemberIds: 成员列表，最大值200
        # @type MemberIds: Array

        attr_accessor :GroupId, :SdkAppId, :MemberIds

        def initialize(groupid=nil, sdkappid=nil, memberids=nil)
          @GroupId = groupid
          @SdkAppId = sdkappid
          @MemberIds = memberids
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @SdkAppId = params['SdkAppId']
          @MemberIds = params['MemberIds']
        end
      end

      # AddGroupMember返回参数结构体
      class AddGroupMemberResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 房间问答答案详情
      class AnswerInfo < TencentCloud::Common::AbstractModel
        # @param Name: 用户名
        # @type Name: String
        # @param Answer: 答案（按照位表示是否选择，如0x1表示选择A，0x11表示选择AB）
        # @type Answer: Integer
        # @param CostTime: 答题用时
        # @type CostTime: Integer
        # @param UserId: 用户ID
        # @type UserId: String
        # @param IsCorrect: 答案是否正确（1正确0错误）
        # @type IsCorrect: Integer

        attr_accessor :Name, :Answer, :CostTime, :UserId, :IsCorrect

        def initialize(name=nil, answer=nil, costtime=nil, userid=nil, iscorrect=nil)
          @Name = name
          @Answer = answer
          @CostTime = costtime
          @UserId = userid
          @IsCorrect = iscorrect
        end

        def deserialize(params)
          @Name = params['Name']
          @Answer = params['Answer']
          @CostTime = params['CostTime']
          @UserId = params['UserId']
          @IsCorrect = params['IsCorrect']
        end
      end

      # 每个选项答题人数统计
      class AnswerStat < TencentCloud::Common::AbstractModel
        # @param Answer: 选项（按照位表示是否选择，如0x1表示选择A，0x11表示选择AB）
        # @type Answer: Integer
        # @param Count: 答题人数
        # @type Count: Integer

        attr_accessor :Answer, :Count

        def initialize(answer=nil, count=nil)
          @Answer = answer
          @Count = count
        end

        def deserialize(params)
          @Answer = params['Answer']
          @Count = params['Count']
        end
      end

      # 应用配置信息
      class AppConfig < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID
        # @type ApplicationId: String
        # @param AppName: 应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppName: String
        # @param State: 应用状态 1正常 2停用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type State: Integer
        # @param AppVersion: 1试用 2轻量版 3标准版 4旗舰版
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppVersion: Integer
        # @param CreatedAt: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param Callback: 回调
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Callback: String
        # @param CallbackKey: 回调Key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CallbackKey: String

        attr_accessor :ApplicationId, :AppName, :State, :AppVersion, :CreatedAt, :Callback, :CallbackKey

        def initialize(applicationid=nil, appname=nil, state=nil, appversion=nil, createdat=nil, callback=nil, callbackkey=nil)
          @ApplicationId = applicationid
          @AppName = appname
          @State = state
          @AppVersion = appversion
          @CreatedAt = createdat
          @Callback = callback
          @CallbackKey = callbackkey
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @AppName = params['AppName']
          @State = params['State']
          @AppVersion = params['AppVersion']
          @CreatedAt = params['CreatedAt']
          @Callback = params['Callback']
          @CallbackKey = params['CallbackKey']
        end
      end

      # 应用自定义内容
      class AppCustomContent < TencentCloud::Common::AbstractModel
        # @param Scene: 场景参数，一个应用下可以设置多个不同场景。
        # @type Scene: String
        # @param LogoUrl: logo地址，用于上课时展示的课堂或平台图标，支持开发商自定义业务品牌展示。
        # @type LogoUrl: String
        # @param HomeUrl: HomeUrl：主页地址，用于上课结束后课堂跳转，支持跳转到自己的业务系统。如果配置为空则下课后关闭课堂页面。
        # @type HomeUrl: String
        # @param JsUrl: JsUrl ：自定义js。针对应用用于开发上自定义课堂界面、模块功能、监控操作，支持数据请求与响应处理。
        # @type JsUrl: String
        # @param CssUrl: Css : 自定义的css。针对应用用于支持课堂界面的、模块的UI渲染修改、皮肤配色修改、功能模块的隐藏和展示。
        # @type CssUrl: String

        attr_accessor :Scene, :LogoUrl, :HomeUrl, :JsUrl, :CssUrl

        def initialize(scene=nil, logourl=nil, homeurl=nil, jsurl=nil, cssurl=nil)
          @Scene = scene
          @LogoUrl = logourl
          @HomeUrl = homeurl
          @JsUrl = jsurl
          @CssUrl = cssurl
        end

        def deserialize(params)
          @Scene = params['Scene']
          @LogoUrl = params['LogoUrl']
          @HomeUrl = params['HomeUrl']
          @JsUrl = params['JsUrl']
          @CssUrl = params['CssUrl']
        end
      end

      # 背景图片配置
      class BackgroundPictureConfig < TencentCloud::Common::AbstractModel
        # @param Url: 背景图片的url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String

        attr_accessor :Url

        def initialize(url=nil)
          @Url = url
        end

        def deserialize(params)
          @Url = params['Url']
        end
      end

      # BatchAddGroupMember请求参数结构体
      class BatchAddGroupMemberRequest < TencentCloud::Common::AbstractModel
        # @param GroupIds: 待添加群组ID列表，最大值100
        # @type GroupIds: Array
        # @param SdkAppId: 低代码平台应用ID
        # @type SdkAppId: Integer
        # @param MemberIds: 待添加成员列表，最大值200
        # @type MemberIds: Array

        attr_accessor :GroupIds, :SdkAppId, :MemberIds

        def initialize(groupids=nil, sdkappid=nil, memberids=nil)
          @GroupIds = groupids
          @SdkAppId = sdkappid
          @MemberIds = memberids
        end

        def deserialize(params)
          @GroupIds = params['GroupIds']
          @SdkAppId = params['SdkAppId']
          @MemberIds = params['MemberIds']
        end
      end

      # BatchAddGroupMember返回参数结构体
      class BatchAddGroupMemberResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # BatchCreateGroupWithMembers请求参数结构体
      class BatchCreateGroupWithMembersRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 低代码平台应用ID
        # @type SdkAppId: Integer
        # @param GroupBaseInfos: 批量创建群组基础信息，最大长度限制256
        # @type GroupBaseInfos: Array
        # @param MemberIds: 群组绑定的成员列表，一次性最多200个
        # @type MemberIds: Array

        attr_accessor :SdkAppId, :GroupBaseInfos, :MemberIds

        def initialize(sdkappid=nil, groupbaseinfos=nil, memberids=nil)
          @SdkAppId = sdkappid
          @GroupBaseInfos = groupbaseinfos
          @MemberIds = memberids
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          unless params['GroupBaseInfos'].nil?
            @GroupBaseInfos = []
            params['GroupBaseInfos'].each do |i|
              groupbaseinfo_tmp = GroupBaseInfo.new
              groupbaseinfo_tmp.deserialize(i)
              @GroupBaseInfos << groupbaseinfo_tmp
            end
          end
          @MemberIds = params['MemberIds']
        end
      end

      # BatchCreateGroupWithMembers返回参数结构体
      class BatchCreateGroupWithMembersResponse < TencentCloud::Common::AbstractModel
        # @param GroupIds: 新创建群组ID列表，与输入创建参数顺序一致
        # @type GroupIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupIds, :RequestId

        def initialize(groupids=nil, requestid=nil)
          @GroupIds = groupids
          @RequestId = requestid
        end

        def deserialize(params)
          @GroupIds = params['GroupIds']
          @RequestId = params['RequestId']
        end
      end

      # BatchCreateRoom请求参数结构体
      class BatchCreateRoomRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 低代码平台的SdkAppId。
        # @type SdkAppId: Integer
        # @param RoomInfos: 创建房间ID列表
        # @type RoomInfos: Array

        attr_accessor :SdkAppId, :RoomInfos

        def initialize(sdkappid=nil, roominfos=nil)
          @SdkAppId = sdkappid
          @RoomInfos = roominfos
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          unless params['RoomInfos'].nil?
            @RoomInfos = []
            params['RoomInfos'].each do |i|
              roominfo_tmp = RoomInfo.new
              roominfo_tmp.deserialize(i)
              @RoomInfos << roominfo_tmp
            end
          end
        end
      end

      # BatchCreateRoom返回参数结构体
      class BatchCreateRoomResponse < TencentCloud::Common::AbstractModel
        # @param RoomIds: 创建成功课堂ID，与传入课堂信息顺序一致
        # @type RoomIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RoomIds, :RequestId

        def initialize(roomids=nil, requestid=nil)
          @RoomIds = roomids
          @RequestId = requestid
        end

        def deserialize(params)
          @RoomIds = params['RoomIds']
          @RequestId = params['RequestId']
        end
      end

      # BatchDeleteGroupMember请求参数结构体
      class BatchDeleteGroupMemberRequest < TencentCloud::Common::AbstractModel
        # @param GroupIds: 待添加群组ID列表，最大值100
        # @type GroupIds: Array
        # @param SdkAppId: 低代码平台应用ID
        # @type SdkAppId: Integer
        # @param MemberIds: 待添加成员列表，最大值256
        # @type MemberIds: Array

        attr_accessor :GroupIds, :SdkAppId, :MemberIds

        def initialize(groupids=nil, sdkappid=nil, memberids=nil)
          @GroupIds = groupids
          @SdkAppId = sdkappid
          @MemberIds = memberids
        end

        def deserialize(params)
          @GroupIds = params['GroupIds']
          @SdkAppId = params['SdkAppId']
          @MemberIds = params['MemberIds']
        end
      end

      # BatchDeleteGroupMember返回参数结构体
      class BatchDeleteGroupMemberResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # BatchDeleteRecord请求参数结构体
      class BatchDeleteRecordRequest < TencentCloud::Common::AbstractModel
        # @param RoomIds: 房间ID列表
        # @type RoomIds: Array
        # @param SdkAppId: 低代码互动课堂的SdkAppId。
        # @type SdkAppId: Integer

        attr_accessor :RoomIds, :SdkAppId

        def initialize(roomids=nil, sdkappid=nil)
          @RoomIds = roomids
          @SdkAppId = sdkappid
        end

        def deserialize(params)
          @RoomIds = params['RoomIds']
          @SdkAppId = params['SdkAppId']
        end
      end

      # BatchDeleteRecord返回参数结构体
      class BatchDeleteRecordResponse < TencentCloud::Common::AbstractModel
        # @param RoomIds: 本次操作删除成功的房间ID列表。如果入参列表中某个房间ID的录制文件已经删除，则出参列表中无对应的房间ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoomIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RoomIds, :RequestId

        def initialize(roomids=nil, requestid=nil)
          @RoomIds = roomids
          @RequestId = requestid
        end

        def deserialize(params)
          @RoomIds = params['RoomIds']
          @RequestId = params['RequestId']
        end
      end

      # BatchDescribeDocument请求参数结构体
      class BatchDescribeDocumentRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 低代码互动课堂的SdkAppId。
        # @type SdkAppId: Integer
        # @param Page: 分页查询当前页数，从1开始递增
        # @type Page: Integer
        # @param Limit: 每页数据量，最大1000
        # @type Limit: Integer
        # @param Permission: 课件权限。[0]：获取owner的私有课件；[1]：获取owner的公开课件; [0,1]：则获取owner的私有课件和公开课件；[2]：获取owner的私有课件和所有人(包括owner)的公开课件
        # @type Permission: Array
        # @param Owner: 课件所有者的user_id，不填默认获取SdkAppId下所有课件
        # @type Owner: String
        # @param Keyword: 课件名称搜索词
        # @type Keyword: String
        # @param DocumentId: 课件id列表，从列表中查询，忽略错误的id
        # @type DocumentId: Array

        attr_accessor :SdkAppId, :Page, :Limit, :Permission, :Owner, :Keyword, :DocumentId

        def initialize(sdkappid=nil, page=nil, limit=nil, permission=nil, owner=nil, keyword=nil, documentid=nil)
          @SdkAppId = sdkappid
          @Page = page
          @Limit = limit
          @Permission = permission
          @Owner = owner
          @Keyword = keyword
          @DocumentId = documentid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Page = params['Page']
          @Limit = params['Limit']
          @Permission = params['Permission']
          @Owner = params['Owner']
          @Keyword = params['Keyword']
          @DocumentId = params['DocumentId']
        end
      end

      # BatchDescribeDocument返回参数结构体
      class BatchDescribeDocumentResponse < TencentCloud::Common::AbstractModel
        # @param Total: 符合查询条件文档总数
        # @type Total: Integer
        # @param Documents: 文档信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Documents: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Documents, :RequestId

        def initialize(total=nil, documents=nil, requestid=nil)
          @Total = total
          @Documents = documents
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Documents'].nil?
            @Documents = []
            params['Documents'].each do |i|
              documentinfo_tmp = DocumentInfo.new
              documentinfo_tmp.deserialize(i)
              @Documents << documentinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # BatchRegister请求参数结构体
      class BatchRegisterRequest < TencentCloud::Common::AbstractModel
        # @param Users: 批量注册用户信息列表
        # @type Users: Array

        attr_accessor :Users

        def initialize(users=nil)
          @Users = users
        end

        def deserialize(params)
          unless params['Users'].nil?
            @Users = []
            params['Users'].each do |i|
              batchuserrequest_tmp = BatchUserRequest.new
              batchuserrequest_tmp.deserialize(i)
              @Users << batchuserrequest_tmp
            end
          end
        end
      end

      # BatchRegister返回参数结构体
      class BatchRegisterResponse < TencentCloud::Common::AbstractModel
        # @param Users: 注册成功的用户列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Users: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Users, :RequestId

        def initialize(users=nil, requestid=nil)
          @Users = users
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Users'].nil?
            @Users = []
            params['Users'].each do |i|
              batchuserinfo_tmp = BatchUserInfo.new
              batchuserinfo_tmp.deserialize(i)
              @Users << batchuserinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 批量注册用户信息
      class BatchUserInfo < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 低代码互动课堂的SdkAppId。
        # @type SdkAppId: Integer
        # @param UserId: 用户ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param OriginId: 用户在客户系统的Id。 若用户注册时该字段为空，则默认为 UserId 值一致。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginId: String

        attr_accessor :SdkAppId, :UserId, :OriginId

        def initialize(sdkappid=nil, userid=nil, originid=nil)
          @SdkAppId = sdkappid
          @UserId = userid
          @OriginId = originid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @UserId = params['UserId']
          @OriginId = params['OriginId']
        end
      end

      # 用户注册请求信息
      class BatchUserRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 低代码互动课堂的SdkAppId。
        # @type SdkAppId: Integer
        # @param Name: 用户名称。
        # @type Name: String
        # @param OriginId: 用户在客户系统的Id，需要在同一应用下唯一。入参为空时默认赋值为UserId
        # 。
        # @type OriginId: String
        # @param Avatar: 用户头像。
        # @type Avatar: String

        attr_accessor :SdkAppId, :Name, :OriginId, :Avatar

        def initialize(sdkappid=nil, name=nil, originid=nil, avatar=nil)
          @SdkAppId = sdkappid
          @Name = name
          @OriginId = originid
          @Avatar = avatar
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Name = params['Name']
          @OriginId = params['OriginId']
          @Avatar = params['Avatar']
        end
      end

      # BindDocumentToRoom请求参数结构体
      class BindDocumentToRoomRequest < TencentCloud::Common::AbstractModel
        # @param RoomId: 房间ID。
        # @type RoomId: Integer
        # @param DocumentId: 文档ID。
        # @type DocumentId: String
        # @param BindType: 绑定类型。后台可透传到客户端，默认为0。客户端可以根据这个字段实现业务逻辑。
        # @type BindType: Integer

        attr_accessor :RoomId, :DocumentId, :BindType

        def initialize(roomid=nil, documentid=nil, bindtype=nil)
          @RoomId = roomid
          @DocumentId = documentid
          @BindType = bindtype
        end

        def deserialize(params)
          @RoomId = params['RoomId']
          @DocumentId = params['DocumentId']
          @BindType = params['BindType']
        end
      end

      # BindDocumentToRoom返回参数结构体
      class BindDocumentToRoomResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 课堂评分字段
      class ClassScoreItem < TencentCloud::Common::AbstractModel
        # @param RoomId: 课堂iD
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoomId: Integer
        # @param UserId: 用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param CreateTime: 评分时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param Score: 课堂评分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Integer
        # @param ScoreMsg: 课堂评价
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScoreMsg: String

        attr_accessor :RoomId, :UserId, :CreateTime, :Score, :ScoreMsg

        def initialize(roomid=nil, userid=nil, createtime=nil, score=nil, scoremsg=nil)
          @RoomId = roomid
          @UserId = userid
          @CreateTime = createtime
          @Score = score
          @ScoreMsg = scoremsg
        end

        def deserialize(params)
          @RoomId = params['RoomId']
          @UserId = params['UserId']
          @CreateTime = params['CreateTime']
          @Score = params['Score']
          @ScoreMsg = params['ScoreMsg']
        end
      end

      # CreateDocument请求参数结构体
      class CreateDocumentRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 低代码互动课堂的SdkAppId。
        # @type SdkAppId: Integer
        # @param DocumentUrl: 文档地址。
        # @type DocumentUrl: String
        # @param DocumentName: 文档名称。
        # @type DocumentName: String
        # @param Owner: 文档所有者的Id
        # @type Owner: String
        # @param TranscodeType: 转码类型，可以有如下取值：
        # 0 无需转码（默认），bmp，jpg，jpeg，png，gif
        # 1 需要转码的文档，ppt，pptx，pdf，doc，docx，xls，xlsx
        # 2 需要转码的视频，mp4，3pg，mpeg，avi，flv，wmv，rm，h264等
        # 2 需要转码的音频，mp3，wav，wma，aac，flac，opus
        # @type TranscodeType: Integer
        # @param Permission: 权限，可以有如下取值：
        # 0 私有文档（默认）
        # 1 公共文档
        # @type Permission: Integer
        # @param DocumentType: 文档后缀名。
        # @type DocumentType: String
        # @param DocumentSize: 文档大小，单位 字节
        # @type DocumentSize: Integer
        # @param AutoHandleUnsupportedElement: 是否对不支持元素开启自动处理的功能。默认关闭。
        # 自动处理的元素如下：
        # 1. 墨迹：移除不支持的墨迹（例如WPS墨迹）
        # 2. 自动翻页：移除PPT上所有自动翻页设置，并设置为单击鼠标翻页
        # 3. 已损坏音视频：移除PPT上对损坏音视频的引用
        # @type AutoHandleUnsupportedElement: Boolean

        attr_accessor :SdkAppId, :DocumentUrl, :DocumentName, :Owner, :TranscodeType, :Permission, :DocumentType, :DocumentSize, :AutoHandleUnsupportedElement

        def initialize(sdkappid=nil, documenturl=nil, documentname=nil, owner=nil, transcodetype=nil, permission=nil, documenttype=nil, documentsize=nil, autohandleunsupportedelement=nil)
          @SdkAppId = sdkappid
          @DocumentUrl = documenturl
          @DocumentName = documentname
          @Owner = owner
          @TranscodeType = transcodetype
          @Permission = permission
          @DocumentType = documenttype
          @DocumentSize = documentsize
          @AutoHandleUnsupportedElement = autohandleunsupportedelement
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @DocumentUrl = params['DocumentUrl']
          @DocumentName = params['DocumentName']
          @Owner = params['Owner']
          @TranscodeType = params['TranscodeType']
          @Permission = params['Permission']
          @DocumentType = params['DocumentType']
          @DocumentSize = params['DocumentSize']
          @AutoHandleUnsupportedElement = params['AutoHandleUnsupportedElement']
        end
      end

      # CreateDocument返回参数结构体
      class CreateDocumentResponse < TencentCloud::Common::AbstractModel
        # @param DocumentId: 文档ID。
        # @type DocumentId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DocumentId, :RequestId

        def initialize(documentid=nil, requestid=nil)
          @DocumentId = documentid
          @RequestId = requestid
        end

        def deserialize(params)
          @DocumentId = params['DocumentId']
          @RequestId = params['RequestId']
        end
      end

      # CreateGroupWithMembers请求参数结构体
      class CreateGroupWithMembersRequest < TencentCloud::Common::AbstractModel
        # @param GroupName: 待创建群组名称
        # @type GroupName: String
        # @param SdkAppId: 低代码平台应用ID
        # @type SdkAppId: Integer
        # @param TeacherId: 默认绑定主讲老师ID
        # @type TeacherId: String
        # @param MemberIds: 群组成员列表,一次性最多200个
        # @type MemberIds: Array

        attr_accessor :GroupName, :SdkAppId, :TeacherId, :MemberIds

        def initialize(groupname=nil, sdkappid=nil, teacherid=nil, memberids=nil)
          @GroupName = groupname
          @SdkAppId = sdkappid
          @TeacherId = teacherid
          @MemberIds = memberids
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @SdkAppId = params['SdkAppId']
          @TeacherId = params['TeacherId']
          @MemberIds = params['MemberIds']
        end
      end

      # CreateGroupWithMembers返回参数结构体
      class CreateGroupWithMembersResponse < TencentCloud::Common::AbstractModel
        # @param GroupId: 创建成功群组ID
        # @type GroupId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupId, :RequestId

        def initialize(groupid=nil, requestid=nil)
          @GroupId = groupid
          @RequestId = requestid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateGroupWithSubGroup请求参数结构体
      class CreateGroupWithSubGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupName: 待创建的新群组名
        # @type GroupName: String
        # @param SdkAppId: 低代码平台应用ID
        # @type SdkAppId: Integer
        # @param SubGroupIds: 子群组ID列表，子群组ID不能重复，最多40个
        # @type SubGroupIds: Array
        # @param TeacherId: 群组默认主讲老师ID
        # @type TeacherId: String

        attr_accessor :GroupName, :SdkAppId, :SubGroupIds, :TeacherId

        def initialize(groupname=nil, sdkappid=nil, subgroupids=nil, teacherid=nil)
          @GroupName = groupname
          @SdkAppId = sdkappid
          @SubGroupIds = subgroupids
          @TeacherId = teacherid
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @SdkAppId = params['SdkAppId']
          @SubGroupIds = params['SubGroupIds']
          @TeacherId = params['TeacherId']
        end
      end

      # CreateGroupWithSubGroup返回参数结构体
      class CreateGroupWithSubGroupResponse < TencentCloud::Common::AbstractModel
        # @param GroupId: 新创建群组ID
        # @type GroupId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupId, :RequestId

        def initialize(groupid=nil, requestid=nil)
          @GroupId = groupid
          @RequestId = requestid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateRoom请求参数结构体
      class CreateRoomRequest < TencentCloud::Common::AbstractModel
        # @param Name: 房间名称。
        # @type Name: String
        # @param StartTime: 预定的房间开始时间，unix时间戳（秒）。
        # @type StartTime: Integer
        # @param EndTime: 预定的房间结束时间，unix时间戳（秒）。
        # @type EndTime: Integer
        # @param SdkAppId: 低代码互动课堂的SdkAppId。
        # @type SdkAppId: Integer
        # @param Resolution: 分辨率。可以有如下取值：
        # 1 标清
        # 2 高清
        # 3 全高清
        # @type Resolution: Integer
        # @param MaxMicNumber: 设置房间/课堂同时最大可与老师进行连麦互动的人数，该参数支持正式上课/开播前调用修改房间修改。取值范围[0,16]，当取值为0时表示当前课堂/直播，不支持连麦互动。
        # @type MaxMicNumber: Integer
        # @param SubType: 房间子类型，可以有以下取值：
        # videodoc 文档+视频
        # video 纯视频
        # @type SubType: String
        # @param TeacherId: 老师ID。通过[注册用户]接口获取的UserId。指定后该用户在房间内拥有老师权限。
        # @type TeacherId: String
        # @param AutoMic: 进入课堂时是否自动连麦。可以有以下取值：
        # 0 不自动连麦（需要手动申请上麦，默认值）
        # 1 自动连麦
        # @type AutoMic: Integer
        # @param TurnOffMic: 释放音视频权限后是否自动取消连麦。可以有以下取值：
        # 0 自动取消连麦（默认值）
        # 1 保持连麦状态
        # @type TurnOffMic: Integer
        # @param AudioQuality: 声音音质。可以有以下取值：
        # 0：流畅模式（默认值），占用更小的带宽、拥有更好的降噪效果，适用于1对1、小班教学、多人音视频会议等场景。
        # 1：高音质模式，适合需要高保真传输音乐的场景，但降噪效果会被削弱，适用于音乐教学场景。
        # @type AudioQuality: Integer
        # @param DisableRecord: 上课后是否禁止自动录制。可以有以下取值：
        # 0 不禁止录制（自动开启录制，默认值）
        # 1 禁止录制
        # 注：如果该配置取值为0，录制将从上课后开始，课堂结束后停止。
        # @type DisableRecord: Integer
        # @param Assistants: 助教Id列表。通过[注册用户]接口获取的UserId。指定后该用户在房间内拥有助教权限。
        # @type Assistants: Array
        # @param RTCAudienceNumber: rtc人数。
        # @type RTCAudienceNumber: Integer
        # @param AudienceType: 观看类型。互动观看 （默认）
        # @type AudienceType: Integer
        # @param RecordLayout: 录制模板。房间子类型为视频+白板（SubType=videodoc）时默认为3，房间子类型为纯视频（SubType=video）时默认为0。录制模板枚举值参考：https://cloud.tencent.com/document/product/1639/89744
        # @type RecordLayout: Integer
        # @param GroupId: 房间绑定的群组ID,非空时限制组成员进入
        # @type GroupId: String
        # @param EnableDirectControl: 是否允许老师/助教直接控制学生的摄像头/麦克风。可以有以下取值：
        # 0 不允许直接控制（需同意，默认值）
        # 1 允许直接控制（无需同意）
        # @type EnableDirectControl: Integer
        # @param InteractionMode: 开启专注模式。
        # 0 收看全部角色音视频(默认)
        # 1 只看老师和助教
        # @type InteractionMode: Integer
        # @param VideoOrientation: 横竖屏。0：横屏开播（默认值）; 1：竖屏开播，当前仅支持移动端的纯视频类型
        # @type VideoOrientation: Integer
        # @param IsGradingRequiredPostClass: 开启课后评分。 0：不开启(默认)  1：开启
        # @type IsGradingRequiredPostClass: Integer
        # @param RoomType: 房间类型: 0 小班课（默认值）; 1 大班课; 2 1V1 (预留参数，暂未开放)
        # 注：大班课的布局(layout)只有三分屏
        # @type RoomType: Integer
        # @param EndDelayTime: 拖堂时间：单位分钟，0为不限制(默认值), -1为不能拖堂，大于0为拖堂的时间，最大值120分钟
        # @type EndDelayTime: Integer
        # @param LiveType: 直播类型：0 常规（默认）1 伪直播
        # @type LiveType: Integer
        # @param RecordLiveUrl: 伪直播链接
        # @type RecordLiveUrl: String
        # @param EnableAutoStart: 是否自动开始上课：0 不自动上课（默认） 1 自动上课 live_type=1的时候有效
        # @type EnableAutoStart: Integer
        # @param RecordBackground: 录制文件背景图片，支持png、jpg、jpeg、bmp格式，暂不支持透明通道
        # @type RecordBackground: String
        # @param RecordScene: 录制自定义场景，仅recordlayout=9的时候此参数有效,数据内容为用户自定义场景参数，数据格式为json键值对方式，其中键值对的value为string类型。
        # @type RecordScene: String
        # @param RecordLang: 录制自定义语言，仅recordlayout=9的时候此参数有效
        # @type RecordLang: String

        attr_accessor :Name, :StartTime, :EndTime, :SdkAppId, :Resolution, :MaxMicNumber, :SubType, :TeacherId, :AutoMic, :TurnOffMic, :AudioQuality, :DisableRecord, :Assistants, :RTCAudienceNumber, :AudienceType, :RecordLayout, :GroupId, :EnableDirectControl, :InteractionMode, :VideoOrientation, :IsGradingRequiredPostClass, :RoomType, :EndDelayTime, :LiveType, :RecordLiveUrl, :EnableAutoStart, :RecordBackground, :RecordScene, :RecordLang
        extend Gem::Deprecate
        deprecate :RecordLang, :none, 2024, 4
        deprecate :RecordLang=, :none, 2024, 4

        def initialize(name=nil, starttime=nil, endtime=nil, sdkappid=nil, resolution=nil, maxmicnumber=nil, subtype=nil, teacherid=nil, automic=nil, turnoffmic=nil, audioquality=nil, disablerecord=nil, assistants=nil, rtcaudiencenumber=nil, audiencetype=nil, recordlayout=nil, groupid=nil, enabledirectcontrol=nil, interactionmode=nil, videoorientation=nil, isgradingrequiredpostclass=nil, roomtype=nil, enddelaytime=nil, livetype=nil, recordliveurl=nil, enableautostart=nil, recordbackground=nil, recordscene=nil, recordlang=nil)
          @Name = name
          @StartTime = starttime
          @EndTime = endtime
          @SdkAppId = sdkappid
          @Resolution = resolution
          @MaxMicNumber = maxmicnumber
          @SubType = subtype
          @TeacherId = teacherid
          @AutoMic = automic
          @TurnOffMic = turnoffmic
          @AudioQuality = audioquality
          @DisableRecord = disablerecord
          @Assistants = assistants
          @RTCAudienceNumber = rtcaudiencenumber
          @AudienceType = audiencetype
          @RecordLayout = recordlayout
          @GroupId = groupid
          @EnableDirectControl = enabledirectcontrol
          @InteractionMode = interactionmode
          @VideoOrientation = videoorientation
          @IsGradingRequiredPostClass = isgradingrequiredpostclass
          @RoomType = roomtype
          @EndDelayTime = enddelaytime
          @LiveType = livetype
          @RecordLiveUrl = recordliveurl
          @EnableAutoStart = enableautostart
          @RecordBackground = recordbackground
          @RecordScene = recordscene
          @RecordLang = recordlang
        end

        def deserialize(params)
          @Name = params['Name']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SdkAppId = params['SdkAppId']
          @Resolution = params['Resolution']
          @MaxMicNumber = params['MaxMicNumber']
          @SubType = params['SubType']
          @TeacherId = params['TeacherId']
          @AutoMic = params['AutoMic']
          @TurnOffMic = params['TurnOffMic']
          @AudioQuality = params['AudioQuality']
          @DisableRecord = params['DisableRecord']
          @Assistants = params['Assistants']
          @RTCAudienceNumber = params['RTCAudienceNumber']
          @AudienceType = params['AudienceType']
          @RecordLayout = params['RecordLayout']
          @GroupId = params['GroupId']
          @EnableDirectControl = params['EnableDirectControl']
          @InteractionMode = params['InteractionMode']
          @VideoOrientation = params['VideoOrientation']
          @IsGradingRequiredPostClass = params['IsGradingRequiredPostClass']
          @RoomType = params['RoomType']
          @EndDelayTime = params['EndDelayTime']
          @LiveType = params['LiveType']
          @RecordLiveUrl = params['RecordLiveUrl']
          @EnableAutoStart = params['EnableAutoStart']
          @RecordBackground = params['RecordBackground']
          @RecordScene = params['RecordScene']
          @RecordLang = params['RecordLang']
        end
      end

      # CreateRoom返回参数结构体
      class CreateRoomResponse < TencentCloud::Common::AbstractModel
        # @param RoomId: 房间ID。
        # @type RoomId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RoomId, :RequestId

        def initialize(roomid=nil, requestid=nil)
          @RoomId = roomid
          @RequestId = requestid
        end

        def deserialize(params)
          @RoomId = params['RoomId']
          @RequestId = params['RequestId']
        end
      end

      # CreateSupervisor请求参数结构体
      class CreateSupervisorRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用ID。
        # @type SdkAppId: Integer
        # @param Users: 用户ID列表。
        # @type Users: Array

        attr_accessor :SdkAppId, :Users

        def initialize(sdkappid=nil, users=nil)
          @SdkAppId = sdkappid
          @Users = users
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Users = params['Users']
        end
      end

      # CreateSupervisor返回参数结构体
      class CreateSupervisorResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 自定义消息
      class CustomMsgContent < TencentCloud::Common::AbstractModel
        # @param Data: 自定义消息数据。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param Desc: 自定义消息描述信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Desc: String
        # @param Ext: 扩展字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ext: String

        attr_accessor :Data, :Desc, :Ext

        def initialize(data=nil, desc=nil, ext=nil)
          @Data = data
          @Desc = desc
          @Ext = ext
        end

        def deserialize(params)
          @Data = params['Data']
          @Desc = params['Desc']
          @Ext = params['Ext']
        end
      end

      # DeleteAppCustomContent请求参数结构体
      class DeleteAppCustomContentRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用ID。
        # @type SdkAppId: Integer
        # @param Scenes: 指定需要删除的已设置的scene场景自定义元素，如果为空则删除应用下已设置的所有自定义元素。
        # @type Scenes: Array

        attr_accessor :SdkAppId, :Scenes

        def initialize(sdkappid=nil, scenes=nil)
          @SdkAppId = sdkappid
          @Scenes = scenes
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Scenes = params['Scenes']
        end
      end

      # DeleteAppCustomContent返回参数结构体
      class DeleteAppCustomContentResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteDocument请求参数结构体
      class DeleteDocumentRequest < TencentCloud::Common::AbstractModel
        # @param DocumentId: 文档ID。
        # @type DocumentId: String

        attr_accessor :DocumentId

        def initialize(documentid=nil)
          @DocumentId = documentid
        end

        def deserialize(params)
          @DocumentId = params['DocumentId']
        end
      end

      # DeleteDocument返回参数结构体
      class DeleteDocumentResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteGroupMember请求参数结构体
      class DeleteGroupMemberRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 群组ID，联合群组无法删除群组成员
        # @type GroupId: String
        # @param SdkAppId: 低代码平台应用ID
        # @type SdkAppId: Integer
        # @param MemberIds: 成员列表，最大值200
        # @type MemberIds: Array

        attr_accessor :GroupId, :SdkAppId, :MemberIds

        def initialize(groupid=nil, sdkappid=nil, memberids=nil)
          @GroupId = groupid
          @SdkAppId = sdkappid
          @MemberIds = memberids
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @SdkAppId = params['SdkAppId']
          @MemberIds = params['MemberIds']
        end
      end

      # DeleteGroupMember返回参数结构体
      class DeleteGroupMemberResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteGroup请求参数结构体
      class DeleteGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupIds: 待删除群组ID列表
        # @type GroupIds: Array
        # @param SdkAppId: 低代码平台应用ID
        # @type SdkAppId: Integer

        attr_accessor :GroupIds, :SdkAppId

        def initialize(groupids=nil, sdkappid=nil)
          @GroupIds = groupids
          @SdkAppId = sdkappid
        end

        def deserialize(params)
          @GroupIds = params['GroupIds']
          @SdkAppId = params['SdkAppId']
        end
      end

      # DeleteGroup返回参数结构体
      class DeleteGroupResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteRecord请求参数结构体
      class DeleteRecordRequest < TencentCloud::Common::AbstractModel
        # @param RoomId: 房间Id。
        # @type RoomId: Integer
        # @param SdkAppId: 低代码互动课堂的SdkAppId。
        # @type SdkAppId: Integer

        attr_accessor :RoomId, :SdkAppId

        def initialize(roomid=nil, sdkappid=nil)
          @RoomId = roomid
          @SdkAppId = sdkappid
        end

        def deserialize(params)
          @RoomId = params['RoomId']
          @SdkAppId = params['SdkAppId']
        end
      end

      # DeleteRecord返回参数结构体
      class DeleteRecordResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteRoom请求参数结构体
      class DeleteRoomRequest < TencentCloud::Common::AbstractModel
        # @param RoomId: 房间ID。
        # @type RoomId: Integer

        attr_accessor :RoomId

        def initialize(roomid=nil)
          @RoomId = roomid
        end

        def deserialize(params)
          @RoomId = params['RoomId']
        end
      end

      # DeleteRoom返回参数结构体
      class DeleteRoomResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteSupervisor请求参数结构体
      class DeleteSupervisorRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用ID
        # @type SdkAppId: Integer
        # @param Users: 用户ID列表
        # @type Users: Array

        attr_accessor :SdkAppId, :Users

        def initialize(sdkappid=nil, users=nil)
          @SdkAppId = sdkappid
          @Users = users
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Users = params['Users']
        end
      end

      # DeleteSupervisor返回参数结构体
      class DeleteSupervisorResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteUser请求参数结构体
      class DeleteUserRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 待删除用户的ID
        # @type UserId: String

        attr_accessor :UserId

        def initialize(userid=nil)
          @UserId = userid
        end

        def deserialize(params)
          @UserId = params['UserId']
        end
      end

      # DeleteUser返回参数结构体
      class DeleteUserResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DescribeAnswerList请求参数结构体
      class DescribeAnswerListRequest < TencentCloud::Common::AbstractModel
        # @param QuestionId: 问题ID
        # @type QuestionId: String
        # @param Page: 1
        # @type Page: Integer
        # @param Limit: 100
        # @type Limit: Integer

        attr_accessor :QuestionId, :Page, :Limit

        def initialize(questionid=nil, page=nil, limit=nil)
          @QuestionId = questionid
          @Page = page
          @Limit = limit
        end

        def deserialize(params)
          @QuestionId = params['QuestionId']
          @Page = params['Page']
          @Limit = params['Limit']
        end
      end

      # DescribeAnswerList返回参数结构体
      class DescribeAnswerListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 符合查询条件的房间答案总数
        # @type Total: Integer
        # @param AnswerInfo: 房间提问答案列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnswerInfo: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :AnswerInfo, :RequestId

        def initialize(total=nil, answerinfo=nil, requestid=nil)
          @Total = total
          @AnswerInfo = answerinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['AnswerInfo'].nil?
            @AnswerInfo = []
            params['AnswerInfo'].each do |i|
              answerinfo_tmp = AnswerInfo.new
              answerinfo_tmp.deserialize(i)
              @AnswerInfo << answerinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAppDetail请求参数结构体
      class DescribeAppDetailRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID。低代码互动课堂的SdkAppId。
        # @type ApplicationId: String
        # @param DeveloperId: 开发商ID
        # @type DeveloperId: String

        attr_accessor :ApplicationId, :DeveloperId

        def initialize(applicationid=nil, developerid=nil)
          @ApplicationId = applicationid
          @DeveloperId = developerid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @DeveloperId = params['DeveloperId']
        end
      end

      # DescribeAppDetail返回参数结构体
      class DescribeAppDetailResponse < TencentCloud::Common::AbstractModel
        # @param SdkAppId: SDK 对应的AppId
        # @type SdkAppId: String
        # @param AppConfig: 应用配置
        # @type AppConfig: :class:`Tencentcloud::Lcic.v20220817.models.AppConfig`
        # @param SceneConfig: 场景配置
        # @type SceneConfig: Array
        # @param TransferConfig: 转存配置
        # @type TransferConfig: :class:`Tencentcloud::Lcic.v20220817.models.TransferItem`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SdkAppId, :AppConfig, :SceneConfig, :TransferConfig, :RequestId

        def initialize(sdkappid=nil, appconfig=nil, sceneconfig=nil, transferconfig=nil, requestid=nil)
          @SdkAppId = sdkappid
          @AppConfig = appconfig
          @SceneConfig = sceneconfig
          @TransferConfig = transferconfig
          @RequestId = requestid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          unless params['AppConfig'].nil?
            @AppConfig = AppConfig.new
            @AppConfig.deserialize(params['AppConfig'])
          end
          unless params['SceneConfig'].nil?
            @SceneConfig = []
            params['SceneConfig'].each do |i|
              sceneitem_tmp = SceneItem.new
              sceneitem_tmp.deserialize(i)
              @SceneConfig << sceneitem_tmp
            end
          end
          unless params['TransferConfig'].nil?
            @TransferConfig = TransferItem.new
            @TransferConfig.deserialize(params['TransferConfig'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCurrentMemberList请求参数结构体
      class DescribeCurrentMemberListRequest < TencentCloud::Common::AbstractModel
        # @param RoomId: 房间Id。
        # @type RoomId: Integer
        # @param Page: 分页查询当前页数，从1开始递增。
        # @type Page: Integer
        # @param Limit: 每页数据量，最大1000。
        # @type Limit: Integer

        attr_accessor :RoomId, :Page, :Limit

        def initialize(roomid=nil, page=nil, limit=nil)
          @RoomId = roomid
          @Page = page
          @Limit = limit
        end

        def deserialize(params)
          @RoomId = params['RoomId']
          @Page = params['Page']
          @Limit = params['Limit']
        end
      end

      # DescribeCurrentMemberList返回参数结构体
      class DescribeCurrentMemberListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 记录总数。当前房间的总人数。
        # @type Total: Integer
        # @param MemberRecords: 成员记录列表。
        # @type MemberRecords: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :MemberRecords, :RequestId

        def initialize(total=nil, memberrecords=nil, requestid=nil)
          @Total = total
          @MemberRecords = memberrecords
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['MemberRecords'].nil?
            @MemberRecords = []
            params['MemberRecords'].each do |i|
              memberrecord_tmp = MemberRecord.new
              memberrecord_tmp.deserialize(i)
              @MemberRecords << memberrecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeveloper请求参数结构体
      class DescribeDeveloperRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeDeveloper返回参数结构体
      class DescribeDeveloperResponse < TencentCloud::Common::AbstractModel
        # @param DeveloperId: 开发商ID
        # @type DeveloperId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeveloperId, :RequestId

        def initialize(developerid=nil, requestid=nil)
          @DeveloperId = developerid
          @RequestId = requestid
        end

        def deserialize(params)
          @DeveloperId = params['DeveloperId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDocument请求参数结构体
      class DescribeDocumentRequest < TencentCloud::Common::AbstractModel
        # @param DocumentId: 文档Id（唯一id）
        # @type DocumentId: String

        attr_accessor :DocumentId

        def initialize(documentid=nil)
          @DocumentId = documentid
        end

        def deserialize(params)
          @DocumentId = params['DocumentId']
        end
      end

      # DescribeDocument返回参数结构体
      class DescribeDocumentResponse < TencentCloud::Common::AbstractModel
        # @param DocumentId: 文档Id
        # @type DocumentId: String
        # @param DocumentUrl: 文档原址url
        # @type DocumentUrl: String
        # @param DocumentName: 文档名称
        # @type DocumentName: String
        # @param Owner: 文档所有者UserId
        # @type Owner: String
        # @param SdkAppId: 应用Id
        # @type SdkAppId: Integer
        # @param Permission: 文档权限
        # @type Permission: Integer
        # @param TranscodeResult: 转码结果，无需转码为空，转码成功为结果url，转码失败为错误码
        # @type TranscodeResult: String
        # @param TranscodeType: 转码类型
        # @type TranscodeType: Integer
        # @param TranscodeProgress: 转码进度， 0 - 100 表示（0% - 100%）
        # @type TranscodeProgress: Integer
        # @param TranscodeState: 转码状态，0为无需转码，1为正在转码，2为转码失败，3为转码成功
        # @type TranscodeState: Integer
        # @param TranscodeInfo: 转码失败后的错误信息
        # @type TranscodeInfo: String
        # @param DocumentType: 文档类型
        # @type DocumentType: String
        # @param DocumentSize: 文档大小，单位：字节
        # @type DocumentSize: Integer
        # @param UpdateTime: 更新的UNIX时间戳
        # @type UpdateTime: Integer
        # @param Pages: 课件页数
        # @type Pages: Integer
        # @param Preview: 课件预览地址
        # @type Preview: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DocumentId, :DocumentUrl, :DocumentName, :Owner, :SdkAppId, :Permission, :TranscodeResult, :TranscodeType, :TranscodeProgress, :TranscodeState, :TranscodeInfo, :DocumentType, :DocumentSize, :UpdateTime, :Pages, :Preview, :RequestId

        def initialize(documentid=nil, documenturl=nil, documentname=nil, owner=nil, sdkappid=nil, permission=nil, transcoderesult=nil, transcodetype=nil, transcodeprogress=nil, transcodestate=nil, transcodeinfo=nil, documenttype=nil, documentsize=nil, updatetime=nil, pages=nil, preview=nil, requestid=nil)
          @DocumentId = documentid
          @DocumentUrl = documenturl
          @DocumentName = documentname
          @Owner = owner
          @SdkAppId = sdkappid
          @Permission = permission
          @TranscodeResult = transcoderesult
          @TranscodeType = transcodetype
          @TranscodeProgress = transcodeprogress
          @TranscodeState = transcodestate
          @TranscodeInfo = transcodeinfo
          @DocumentType = documenttype
          @DocumentSize = documentsize
          @UpdateTime = updatetime
          @Pages = pages
          @Preview = preview
          @RequestId = requestid
        end

        def deserialize(params)
          @DocumentId = params['DocumentId']
          @DocumentUrl = params['DocumentUrl']
          @DocumentName = params['DocumentName']
          @Owner = params['Owner']
          @SdkAppId = params['SdkAppId']
          @Permission = params['Permission']
          @TranscodeResult = params['TranscodeResult']
          @TranscodeType = params['TranscodeType']
          @TranscodeProgress = params['TranscodeProgress']
          @TranscodeState = params['TranscodeState']
          @TranscodeInfo = params['TranscodeInfo']
          @DocumentType = params['DocumentType']
          @DocumentSize = params['DocumentSize']
          @UpdateTime = params['UpdateTime']
          @Pages = params['Pages']
          @Preview = params['Preview']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDocumentsByRoom请求参数结构体
      class DescribeDocumentsByRoomRequest < TencentCloud::Common::AbstractModel
        # @param RoomId: 房间ID。
        # @type RoomId: Integer
        # @param SdkAppId: 低代码互动课堂的SdkAppId
        # @type SdkAppId: Integer
        # @param Page: 分页查询当前页数，从1开始递增，默认值为1
        # @type Page: Integer
        # @param Limit: 每页数据量，最大1000，默认值为100
        # @type Limit: Integer
        # @param Permission: 课件权限。
        # [0]：获取owner的私有课件；
        # [1]：获取owner的公开课件;
        # [0,1]：则获取owner的私有课件和公开课件；
        # [2]：获取owner的私有课件和所有人(包括owner)的公开课件。
        # 默认值为[2]
        # @type Permission: Array
        # @param Owner: 文档所有者的user_id，不填默认获取SdkAppId下所有课件
        # @type Owner: String

        attr_accessor :RoomId, :SdkAppId, :Page, :Limit, :Permission, :Owner

        def initialize(roomid=nil, sdkappid=nil, page=nil, limit=nil, permission=nil, owner=nil)
          @RoomId = roomid
          @SdkAppId = sdkappid
          @Page = page
          @Limit = limit
          @Permission = permission
          @Owner = owner
        end

        def deserialize(params)
          @RoomId = params['RoomId']
          @SdkAppId = params['SdkAppId']
          @Page = params['Page']
          @Limit = params['Limit']
          @Permission = params['Permission']
          @Owner = params['Owner']
        end
      end

      # DescribeDocumentsByRoom返回参数结构体
      class DescribeDocumentsByRoomResponse < TencentCloud::Common::AbstractModel
        # @param Documents: 文档信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Documents: Array
        # @param Total: 符合查询条件文档总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Documents, :Total, :RequestId

        def initialize(documents=nil, total=nil, requestid=nil)
          @Documents = documents
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Documents'].nil?
            @Documents = []
            params['Documents'].each do |i|
              documentinfo_tmp = DocumentInfo.new
              documentinfo_tmp.deserialize(i)
              @Documents << documentinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDocuments请求参数结构体
      class DescribeDocumentsRequest < TencentCloud::Common::AbstractModel
        # @param SchoolId: 学校id
        # @type SchoolId: Integer
        # @param Page: 分页查询当前页数，从1开始递增
        # @type Page: Integer
        # @param Limit: 每页数据量，最大1000
        # @type Limit: Integer
        # @param Permission: 课件权限。[0]：获取owner的私有课件；[1]：获取owner的公开课件; [0,1]：则获取owner的私有课件和公开课件；[2]：获取owner的私有课件和所有人(包括owner)的公开课件
        # @type Permission: Array
        # @param Owner: 课件所有者的user_id，不填默认获取school_id下所有课件
        # @type Owner: String
        # @param Keyword: 课件名称搜索词
        # @type Keyword: String
        # @param DocumentId: 课件id列表，从列表中查询，忽略错误的id
        # @type DocumentId: Array

        attr_accessor :SchoolId, :Page, :Limit, :Permission, :Owner, :Keyword, :DocumentId

        def initialize(schoolid=nil, page=nil, limit=nil, permission=nil, owner=nil, keyword=nil, documentid=nil)
          @SchoolId = schoolid
          @Page = page
          @Limit = limit
          @Permission = permission
          @Owner = owner
          @Keyword = keyword
          @DocumentId = documentid
        end

        def deserialize(params)
          @SchoolId = params['SchoolId']
          @Page = params['Page']
          @Limit = params['Limit']
          @Permission = params['Permission']
          @Owner = params['Owner']
          @Keyword = params['Keyword']
          @DocumentId = params['DocumentId']
        end
      end

      # DescribeDocuments返回参数结构体
      class DescribeDocumentsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 符合查询条件文档总数
        # @type Total: Integer
        # @param Documents: 文档信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Documents: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Documents, :RequestId

        def initialize(total=nil, documents=nil, requestid=nil)
          @Total = total
          @Documents = documents
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Documents'].nil?
            @Documents = []
            params['Documents'].each do |i|
              documentinfo_tmp = DocumentInfo.new
              documentinfo_tmp.deserialize(i)
              @Documents << documentinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGroupList请求参数结构体
      class DescribeGroupListRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 低代码平台应用ID
        # @type SdkAppId: Integer
        # @param Page: 分页查询当前页数，默认从1开始递增。
        # @type Page: Integer
        # @param Limit: 每页数据量，默认20，最大1000。
        # @type Limit: Integer
        # @param TeacherId: 主讲人ID筛选群组，与MemberId有且只有一个,都传时以此字段获取
        # @type TeacherId: String
        # @param MemberId: 成员ID刷选群组，与TeacherId有且只有一个
        # @type MemberId: String

        attr_accessor :SdkAppId, :Page, :Limit, :TeacherId, :MemberId

        def initialize(sdkappid=nil, page=nil, limit=nil, teacherid=nil, memberid=nil)
          @SdkAppId = sdkappid
          @Page = page
          @Limit = limit
          @TeacherId = teacherid
          @MemberId = memberid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Page = params['Page']
          @Limit = params['Limit']
          @TeacherId = params['TeacherId']
          @MemberId = params['MemberId']
        end
      end

      # DescribeGroupList返回参数结构体
      class DescribeGroupListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 记录总数。当前匹配群组总数。
        # @type Total: Integer
        # @param GroupInfos: 群组信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupInfos: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :GroupInfos, :RequestId

        def initialize(total=nil, groupinfos=nil, requestid=nil)
          @Total = total
          @GroupInfos = groupinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['GroupInfos'].nil?
            @GroupInfos = []
            params['GroupInfos'].each do |i|
              groupinfo_tmp = GroupInfo.new
              groupinfo_tmp.deserialize(i)
              @GroupInfos << groupinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGroupMemberList请求参数结构体
      class DescribeGroupMemberListRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 群组ID
        # @type GroupId: String
        # @param SdkAppId: 低代码平台应用ID
        # @type SdkAppId: Integer
        # @param Page: 分页值，默认1
        # @type Page: Integer
        # @param Limit: 每页数据量，默认20，最大1000
        # @type Limit: Integer

        attr_accessor :GroupId, :SdkAppId, :Page, :Limit

        def initialize(groupid=nil, sdkappid=nil, page=nil, limit=nil)
          @GroupId = groupid
          @SdkAppId = sdkappid
          @Page = page
          @Limit = limit
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @SdkAppId = params['SdkAppId']
          @Page = params['Page']
          @Limit = params['Limit']
        end
      end

      # DescribeGroupMemberList返回参数结构体
      class DescribeGroupMemberListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 符合查询条件总条数
        # @type Total: Integer
        # @param MemberIds: 查询成员列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :MemberIds, :RequestId

        def initialize(total=nil, memberids=nil, requestid=nil)
          @Total = total
          @MemberIds = memberids
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          @MemberIds = params['MemberIds']
          @RequestId = params['RequestId']
        end
      end

      # DescribeGroup请求参数结构体
      class DescribeGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 群组ID
        # @type GroupId: String
        # @param SdkAppId: 低代码平台应用ID
        # @type SdkAppId: Integer

        attr_accessor :GroupId, :SdkAppId

        def initialize(groupid=nil, sdkappid=nil)
          @GroupId = groupid
          @SdkAppId = sdkappid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @SdkAppId = params['SdkAppId']
        end
      end

      # DescribeGroup返回参数结构体
      class DescribeGroupResponse < TencentCloud::Common::AbstractModel
        # @param GroupId: 群组ID
        # @type GroupId: String
        # @param GroupName: 群组名称
        # @type GroupName: String
        # @param TeacherId: 群主主讲人ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TeacherId: String
        # @param GroupType: 群组类型
        # 0-基础群组
        # 1-组合群组，若为1时会返回子群组ID
        # @type GroupType: Integer
        # @param SubGroupIds: 子群组ID列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubGroupIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupId, :GroupName, :TeacherId, :GroupType, :SubGroupIds, :RequestId

        def initialize(groupid=nil, groupname=nil, teacherid=nil, grouptype=nil, subgroupids=nil, requestid=nil)
          @GroupId = groupid
          @GroupName = groupname
          @TeacherId = teacherid
          @GroupType = grouptype
          @SubGroupIds = subgroupids
          @RequestId = requestid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @TeacherId = params['TeacherId']
          @GroupType = params['GroupType']
          @SubGroupIds = params['SubGroupIds']
          @RequestId = params['RequestId']
        end
      end

      # DescribeQuestionList请求参数结构体
      class DescribeQuestionListRequest < TencentCloud::Common::AbstractModel
        # @param RoomId: 房间ID
        # @type RoomId: Integer
        # @param Page: 分页查询当前页数，从1开始递增，默认值为1
        # @type Page: Integer
        # @param Limit: 分页查询当前页数，从1开始递增，默认值为1
        # @type Limit: Integer

        attr_accessor :RoomId, :Page, :Limit

        def initialize(roomid=nil, page=nil, limit=nil)
          @RoomId = roomid
          @Page = page
          @Limit = limit
        end

        def deserialize(params)
          @RoomId = params['RoomId']
          @Page = params['Page']
          @Limit = params['Limit']
        end
      end

      # DescribeQuestionList返回参数结构体
      class DescribeQuestionListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 符合查询条件的房间问答问题总数
        # @type Total: Integer
        # @param QuestionInfo: 房间问答问题列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QuestionInfo: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :QuestionInfo, :RequestId

        def initialize(total=nil, questioninfo=nil, requestid=nil)
          @Total = total
          @QuestionInfo = questioninfo
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['QuestionInfo'].nil?
            @QuestionInfo = []
            params['QuestionInfo'].each do |i|
              questioninfo_tmp = QuestionInfo.new
              questioninfo_tmp.deserialize(i)
              @QuestionInfo << questioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRoomForbiddenUser请求参数结构体
      class DescribeRoomForbiddenUserRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 低代码互动课堂的SdkAppId。
        # @type SdkAppId: Integer
        # @param RoomId: 房间ID。
        # @type RoomId: Integer

        attr_accessor :SdkAppId, :RoomId

        def initialize(sdkappid=nil, roomid=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
        end
      end

      # DescribeRoomForbiddenUser返回参数结构体
      class DescribeRoomForbiddenUserResponse < TencentCloud::Common::AbstractModel
        # @param MutedAccountList: 禁言用户信息数组，内容包括被禁言的成员 ID，及其被禁言到的时间（使用 UTC 时间，即世界协调时间）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MutedAccountList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MutedAccountList, :RequestId

        def initialize(mutedaccountlist=nil, requestid=nil)
          @MutedAccountList = mutedaccountlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MutedAccountList'].nil?
            @MutedAccountList = []
            params['MutedAccountList'].each do |i|
              mutedaccountlist_tmp = MutedAccountList.new
              mutedaccountlist_tmp.deserialize(i)
              @MutedAccountList << mutedaccountlist_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRoom请求参数结构体
      class DescribeRoomRequest < TencentCloud::Common::AbstractModel
        # @param RoomId: 房间Id。
        # @type RoomId: Integer
        # @param RTMPStreamingURL: 请求RTMP推流链接，0：否，1：是，默认为0。
        # @type RTMPStreamingURL: Integer

        attr_accessor :RoomId, :RTMPStreamingURL

        def initialize(roomid=nil, rtmpstreamingurl=nil)
          @RoomId = roomid
          @RTMPStreamingURL = rtmpstreamingurl
        end

        def deserialize(params)
          @RoomId = params['RoomId']
          @RTMPStreamingURL = params['RTMPStreamingURL']
        end
      end

      # DescribeRoom返回参数结构体
      class DescribeRoomResponse < TencentCloud::Common::AbstractModel
        # @param Name: 房间名称。
        # @type Name: String
        # @param StartTime: 预定的房间开始时间，unix时间戳（秒）。
        # @type StartTime: Integer
        # @param EndTime: 预定的房间结束时间，unix时间戳（秒）。
        # @type EndTime: Integer
        # @param TeacherId: 老师的UserId。
        # @type TeacherId: String
        # @param SdkAppId: 低代码互动课堂的SdkAppId。
        # @type SdkAppId: Integer
        # @param AudienceType: 观看类型。互动观看 （默认）
        # @type AudienceType: Integer
        # @param Resolution: 分辨率。可以有如下取值：
        # 1 标清
        # 2 高清
        # 3 全高清
        # @type Resolution: Integer
        # @param MaxMicNumber: 最大连麦人数（不包括老师）。取值范围[0, 16]
        # @type MaxMicNumber: Integer
        # @param AutoMic: 进入课堂时是否自动连麦。可以有以下取值：
        # 0 不自动连麦（需要手动申请上麦，默认值）
        # 1 自动连麦
        # @type AutoMic: Integer
        # @param AudioQuality: 高音质模式。可以有以下取值：
        # 0 不开启高音质（默认值）
        # 1 开启高音质
        # @type AudioQuality: Integer
        # @param SubType: 房间子类型，可以有以下取值：
        # videodoc 文档+视频
        # video 纯视频
        # @type SubType: String
        # @param DisableRecord: 上课后是否禁止自动录制。可以有以下取值：
        # 0 不禁止录制（自动开启录制，默认值）
        # 1 禁止录制
        # 注：如果该配置取值为0，录制将从上课后开始，课堂结束后停止。
        # @type DisableRecord: Integer
        # @param Assistants: 助教UserId列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Assistants: Array
        # @param RecordUrl: 录制地址（协议为https)。仅在房间结束后存在。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordUrl: String
        # @param Status: 课堂状态。0为未开始，1为已开始，2为已结束，3为已过期。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param GroupId: 房间绑定的群组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String
        # @param EnableDirectControl: 打开学生麦克风/摄像头的授权开关
        # @type EnableDirectControl: Integer
        # @param InteractionMode: 开启专注模式。
        # 0 收看全部角色音视频(默认)
        # 1 只看老师和助教
        # @type InteractionMode: Integer
        # @param VideoOrientation: 横竖屏。0：横屏开播（默认值）; 1：竖屏开播，当前仅支持移动端的纯视频类型
        # @type VideoOrientation: Integer
        # @param IsGradingRequiredPostClass: 该房间是否开启了课后评分功能。0：未开启  1：开启
        # @type IsGradingRequiredPostClass: Integer
        # @param RoomType: 房间类型: 0 小班课（默认值）; 1 大班课; 2 1V1 (后续扩展)
        # 注：大班课的布局(layout)只有三分屏
        # @type RoomType: Integer
        # @param VideoDuration: 录制时长
        # @type VideoDuration: Integer
        # @param EndDelayTime: 拖堂时间：单位分钟，0为不限制(默认值), -1为不能拖堂，大于0为拖堂的时间，最大值120分钟
        # @type EndDelayTime: Integer
        # @param LiveType: 直播类型：0 常规（默认）1 伪直播
        # @type LiveType: Integer
        # @param RecordLiveUrl: 伪直播链接
        # @type RecordLiveUrl: String
        # @param EnableAutoStart: 是否自动开始上课：0 不自动上课（默认） 1 自动上课 live_type=1的时候有效
        # @type EnableAutoStart: Integer
        # @param RecordBackground: 录制文件背景图片，支持png、jpg、jpeg、bmp格式，暂不支持透明通道
        # @type RecordBackground: String
        # @param RTMPStreamingURL: RTMP推流链接
        # @type RTMPStreamingURL: String
        # @param RecordScene: 录制自定义场景，仅recordlayout=9的时候此参数有效
        # @type RecordScene: String
        # @param RecordLang: 录制自定义语言，仅recordlayout=9的时候此参数有效
        # @type RecordLang: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :StartTime, :EndTime, :TeacherId, :SdkAppId, :AudienceType, :Resolution, :MaxMicNumber, :AutoMic, :AudioQuality, :SubType, :DisableRecord, :Assistants, :RecordUrl, :Status, :GroupId, :EnableDirectControl, :InteractionMode, :VideoOrientation, :IsGradingRequiredPostClass, :RoomType, :VideoDuration, :EndDelayTime, :LiveType, :RecordLiveUrl, :EnableAutoStart, :RecordBackground, :RTMPStreamingURL, :RecordScene, :RecordLang, :RequestId

        def initialize(name=nil, starttime=nil, endtime=nil, teacherid=nil, sdkappid=nil, audiencetype=nil, resolution=nil, maxmicnumber=nil, automic=nil, audioquality=nil, subtype=nil, disablerecord=nil, assistants=nil, recordurl=nil, status=nil, groupid=nil, enabledirectcontrol=nil, interactionmode=nil, videoorientation=nil, isgradingrequiredpostclass=nil, roomtype=nil, videoduration=nil, enddelaytime=nil, livetype=nil, recordliveurl=nil, enableautostart=nil, recordbackground=nil, rtmpstreamingurl=nil, recordscene=nil, recordlang=nil, requestid=nil)
          @Name = name
          @StartTime = starttime
          @EndTime = endtime
          @TeacherId = teacherid
          @SdkAppId = sdkappid
          @AudienceType = audiencetype
          @Resolution = resolution
          @MaxMicNumber = maxmicnumber
          @AutoMic = automic
          @AudioQuality = audioquality
          @SubType = subtype
          @DisableRecord = disablerecord
          @Assistants = assistants
          @RecordUrl = recordurl
          @Status = status
          @GroupId = groupid
          @EnableDirectControl = enabledirectcontrol
          @InteractionMode = interactionmode
          @VideoOrientation = videoorientation
          @IsGradingRequiredPostClass = isgradingrequiredpostclass
          @RoomType = roomtype
          @VideoDuration = videoduration
          @EndDelayTime = enddelaytime
          @LiveType = livetype
          @RecordLiveUrl = recordliveurl
          @EnableAutoStart = enableautostart
          @RecordBackground = recordbackground
          @RTMPStreamingURL = rtmpstreamingurl
          @RecordScene = recordscene
          @RecordLang = recordlang
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @TeacherId = params['TeacherId']
          @SdkAppId = params['SdkAppId']
          @AudienceType = params['AudienceType']
          @Resolution = params['Resolution']
          @MaxMicNumber = params['MaxMicNumber']
          @AutoMic = params['AutoMic']
          @AudioQuality = params['AudioQuality']
          @SubType = params['SubType']
          @DisableRecord = params['DisableRecord']
          @Assistants = params['Assistants']
          @RecordUrl = params['RecordUrl']
          @Status = params['Status']
          @GroupId = params['GroupId']
          @EnableDirectControl = params['EnableDirectControl']
          @InteractionMode = params['InteractionMode']
          @VideoOrientation = params['VideoOrientation']
          @IsGradingRequiredPostClass = params['IsGradingRequiredPostClass']
          @RoomType = params['RoomType']
          @VideoDuration = params['VideoDuration']
          @EndDelayTime = params['EndDelayTime']
          @LiveType = params['LiveType']
          @RecordLiveUrl = params['RecordLiveUrl']
          @EnableAutoStart = params['EnableAutoStart']
          @RecordBackground = params['RecordBackground']
          @RTMPStreamingURL = params['RTMPStreamingURL']
          @RecordScene = params['RecordScene']
          @RecordLang = params['RecordLang']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRoomStatistics请求参数结构体
      class DescribeRoomStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param RoomId: 房间Id。
        # @type RoomId: Integer
        # @param Page: 分页查询当前页数，从1开始递增。
        # @type Page: Integer
        # @param Limit: 每页数据量，最大1000。
        # @type Limit: Integer

        attr_accessor :RoomId, :Page, :Limit

        def initialize(roomid=nil, page=nil, limit=nil)
          @RoomId = roomid
          @Page = page
          @Limit = limit
        end

        def deserialize(params)
          @RoomId = params['RoomId']
          @Page = params['Page']
          @Limit = params['Limit']
        end
      end

      # DescribeRoomStatistics返回参数结构体
      class DescribeRoomStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param PeakMemberNumber: 峰值在线成员人数。
        # @type PeakMemberNumber: Integer
        # @param MemberNumber: 累计在线人数。
        # @type MemberNumber: Integer
        # @param Total: 记录总数。包含进入房间或者应到未到的。
        # @type Total: Integer
        # @param MemberRecords: 成员记录列表。
        # @type MemberRecords: Array
        # @param RealStartTime: 秒级unix时间戳，实际房间开始时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealStartTime: Integer
        # @param RealEndTime: 秒级unix时间戳，实际房间结束时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealEndTime: Integer
        # @param MessageCount: 房间消息总数。
        # @type MessageCount: Integer
        # @param MicCount: 房间连麦总数。
        # @type MicCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PeakMemberNumber, :MemberNumber, :Total, :MemberRecords, :RealStartTime, :RealEndTime, :MessageCount, :MicCount, :RequestId

        def initialize(peakmembernumber=nil, membernumber=nil, total=nil, memberrecords=nil, realstarttime=nil, realendtime=nil, messagecount=nil, miccount=nil, requestid=nil)
          @PeakMemberNumber = peakmembernumber
          @MemberNumber = membernumber
          @Total = total
          @MemberRecords = memberrecords
          @RealStartTime = realstarttime
          @RealEndTime = realendtime
          @MessageCount = messagecount
          @MicCount = miccount
          @RequestId = requestid
        end

        def deserialize(params)
          @PeakMemberNumber = params['PeakMemberNumber']
          @MemberNumber = params['MemberNumber']
          @Total = params['Total']
          unless params['MemberRecords'].nil?
            @MemberRecords = []
            params['MemberRecords'].each do |i|
              memberrecord_tmp = MemberRecord.new
              memberrecord_tmp.deserialize(i)
              @MemberRecords << memberrecord_tmp
            end
          end
          @RealStartTime = params['RealStartTime']
          @RealEndTime = params['RealEndTime']
          @MessageCount = params['MessageCount']
          @MicCount = params['MicCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeScoreList请求参数结构体
      class DescribeScoreListRequest < TencentCloud::Common::AbstractModel
        # @param RoomId: 课堂ID
        # @type RoomId: Integer
        # @param Page: 分页查询当前页数，从1开始递增
        # @type Page: Integer
        # @param Limit: 默认是10条
        # @type Limit: Integer

        attr_accessor :RoomId, :Page, :Limit

        def initialize(roomid=nil, page=nil, limit=nil)
          @RoomId = roomid
          @Page = page
          @Limit = limit
        end

        def deserialize(params)
          @RoomId = params['RoomId']
          @Page = params['Page']
          @Limit = params['Limit']
        end
      end

      # DescribeScoreList返回参数结构体
      class DescribeScoreListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param Scores: 课堂评分列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Scores: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Scores, :RequestId

        def initialize(total=nil, scores=nil, requestid=nil)
          @Total = total
          @Scores = scores
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Scores'].nil?
            @Scores = []
            params['Scores'].each do |i|
              classscoreitem_tmp = ClassScoreItem.new
              classscoreitem_tmp.deserialize(i)
              @Scores << classscoreitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSdkAppIdUsers请求参数结构体
      class DescribeSdkAppIdUsersRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用ID
        # @type SdkAppId: Integer
        # @param Page: 分页，默认值为1
        # @type Page: Integer
        # @param Limit: 分页数据限制，默认值为20
        # @type Limit: Integer

        attr_accessor :SdkAppId, :Page, :Limit

        def initialize(sdkappid=nil, page=nil, limit=nil)
          @SdkAppId = sdkappid
          @Page = page
          @Limit = limit
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Page = params['Page']
          @Limit = params['Limit']
        end
      end

      # DescribeSdkAppIdUsers返回参数结构体
      class DescribeSdkAppIdUsersResponse < TencentCloud::Common::AbstractModel
        # @param Total: 用户总数
        # @type Total: Integer
        # @param Users: 当前获取用户信息数组列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Users: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Users, :RequestId

        def initialize(total=nil, users=nil, requestid=nil)
          @Total = total
          @Users = users
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Users'].nil?
            @Users = []
            params['Users'].each do |i|
              userinfo_tmp = UserInfo.new
              userinfo_tmp.deserialize(i)
              @Users << userinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSupervisors请求参数结构体
      class DescribeSupervisorsRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 低代码互动课堂的SdkAppId。
        # @type SdkAppId: Integer
        # @param Limit: 每页数据量，最大100。 不填默认20.
        # @type Limit: Integer
        # @param Page: 分页查询当前页数，从1开始递增，不填默认为1。
        # @type Page: Integer

        attr_accessor :SdkAppId, :Limit, :Page

        def initialize(sdkappid=nil, limit=nil, page=nil)
          @SdkAppId = sdkappid
          @Limit = limit
          @Page = page
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Limit = params['Limit']
          @Page = params['Page']
        end
      end

      # DescribeSupervisors返回参数结构体
      class DescribeSupervisorsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 数据总量
        # @type Total: Integer
        # @param Page: 分页查询当前页数
        # @type Page: Integer
        # @param Limit: 当前页数据量
        # @type Limit: Integer
        # @param UserIds: 巡课列表
        # @type UserIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Page, :Limit, :UserIds, :RequestId

        def initialize(total=nil, page=nil, limit=nil, userids=nil, requestid=nil)
          @Total = total
          @Page = page
          @Limit = limit
          @UserIds = userids
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          @Page = params['Page']
          @Limit = params['Limit']
          @UserIds = params['UserIds']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUser请求参数结构体
      class DescribeUserRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 用户Id。
        # @type UserId: String

        attr_accessor :UserId

        def initialize(userid=nil)
          @UserId = userid
        end

        def deserialize(params)
          @UserId = params['UserId']
        end
      end

      # DescribeUser返回参数结构体
      class DescribeUserResponse < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用Id。
        # @type SdkAppId: Integer
        # @param UserId: 用户Id。
        # @type UserId: String
        # @param Name: 用户昵称。
        # @type Name: String
        # @param Avatar: 用户头像Url。
        # @type Avatar: String
        # @param OriginId: 用户在客户系统的Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SdkAppId, :UserId, :Name, :Avatar, :OriginId, :RequestId

        def initialize(sdkappid=nil, userid=nil, name=nil, avatar=nil, originid=nil, requestid=nil)
          @SdkAppId = sdkappid
          @UserId = userid
          @Name = name
          @Avatar = avatar
          @OriginId = originid
          @RequestId = requestid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @UserId = params['UserId']
          @Name = params['Name']
          @Avatar = params['Avatar']
          @OriginId = params['OriginId']
          @RequestId = params['RequestId']
        end
      end

      # 文档信息
      class DocumentInfo < TencentCloud::Common::AbstractModel
        # @param DocumentId: 文档Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DocumentId: String
        # @param DocumentUrl: 文档原址url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DocumentUrl: String
        # @param DocumentName: 文档名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DocumentName: String
        # @param Owner: 文档所有者UserId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Owner: String
        # @param SdkAppId: 应用Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SdkAppId: Integer
        # @param Permission: 文档权限，0：私有课件 1：公共课件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Permission: Integer
        # @param TranscodeResult: 转码结果，无需转码为空，转码成功为结果url，转码失败为错误码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranscodeResult: String
        # @param TranscodeType: 转码类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranscodeType: Integer
        # @param TranscodeProgress: 转码进度， 0 - 100 表示（0% - 100%）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranscodeProgress: Integer
        # @param TranscodeState: 转码状态，0为无需转码，1为正在转码，2为转码失败，3为转码成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranscodeState: Integer
        # @param TranscodeInfo: 转码失败后的错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranscodeInfo: String
        # @param DocumentType: 文档类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DocumentType: String
        # @param DocumentSize: 文档大小，单位：字节
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DocumentSize: Integer
        # @param UpdateTime: 更新的UNIX时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: Integer
        # @param Pages: 课件页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pages: Integer
        # @param Width: 宽，仅在静态转码的课件有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Width: Integer
        # @param Height: 高，仅在静态转码的课件有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Height: Integer
        # @param Cover: 封面，仅转码的课件会生成封面
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cover: String
        # @param Preview: 课件预览地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Preview: String

        attr_accessor :DocumentId, :DocumentUrl, :DocumentName, :Owner, :SdkAppId, :Permission, :TranscodeResult, :TranscodeType, :TranscodeProgress, :TranscodeState, :TranscodeInfo, :DocumentType, :DocumentSize, :UpdateTime, :Pages, :Width, :Height, :Cover, :Preview

        def initialize(documentid=nil, documenturl=nil, documentname=nil, owner=nil, sdkappid=nil, permission=nil, transcoderesult=nil, transcodetype=nil, transcodeprogress=nil, transcodestate=nil, transcodeinfo=nil, documenttype=nil, documentsize=nil, updatetime=nil, pages=nil, width=nil, height=nil, cover=nil, preview=nil)
          @DocumentId = documentid
          @DocumentUrl = documenturl
          @DocumentName = documentname
          @Owner = owner
          @SdkAppId = sdkappid
          @Permission = permission
          @TranscodeResult = transcoderesult
          @TranscodeType = transcodetype
          @TranscodeProgress = transcodeprogress
          @TranscodeState = transcodestate
          @TranscodeInfo = transcodeinfo
          @DocumentType = documenttype
          @DocumentSize = documentsize
          @UpdateTime = updatetime
          @Pages = pages
          @Width = width
          @Height = height
          @Cover = cover
          @Preview = preview
        end

        def deserialize(params)
          @DocumentId = params['DocumentId']
          @DocumentUrl = params['DocumentUrl']
          @DocumentName = params['DocumentName']
          @Owner = params['Owner']
          @SdkAppId = params['SdkAppId']
          @Permission = params['Permission']
          @TranscodeResult = params['TranscodeResult']
          @TranscodeType = params['TranscodeType']
          @TranscodeProgress = params['TranscodeProgress']
          @TranscodeState = params['TranscodeState']
          @TranscodeInfo = params['TranscodeInfo']
          @DocumentType = params['DocumentType']
          @DocumentSize = params['DocumentSize']
          @UpdateTime = params['UpdateTime']
          @Pages = params['Pages']
          @Width = params['Width']
          @Height = params['Height']
          @Cover = params['Cover']
          @Preview = params['Preview']
        end
      end

      # EndRoom请求参数结构体
      class EndRoomRequest < TencentCloud::Common::AbstractModel
        # @param RoomId: 房间ID。
        # @type RoomId: Integer

        attr_accessor :RoomId

        def initialize(roomid=nil)
          @RoomId = roomid
        end

        def deserialize(params)
          @RoomId = params['RoomId']
        end
      end

      # EndRoom返回参数结构体
      class EndRoomResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 房间事件对应的信息。
      class EventDataInfo < TencentCloud::Common::AbstractModel
        # @param RoomId: 事件发生的房间号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoomId: Integer
        # @param UserId: 事件发生的用户。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param Device: 用户设备类型。0: Unknown; 1: Windows; 2: macOS; 3: Android; 4: iOS; 5: Web; 6: Mobile webpage; 7: Weixin Mini Program.
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Device: Integer
        # @param Duration: 录制时长。单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duration: Integer
        # @param RecordSize: 录制文件大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordSize: Integer
        # @param RecordUrl: 录制url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordUrl: String

        attr_accessor :RoomId, :UserId, :Device, :Duration, :RecordSize, :RecordUrl

        def initialize(roomid=nil, userid=nil, device=nil, duration=nil, recordsize=nil, recordurl=nil)
          @RoomId = roomid
          @UserId = userid
          @Device = device
          @Duration = duration
          @RecordSize = recordsize
          @RecordUrl = recordurl
        end

        def deserialize(params)
          @RoomId = params['RoomId']
          @UserId = params['UserId']
          @Device = params['Device']
          @Duration = params['Duration']
          @RecordSize = params['RecordSize']
          @RecordUrl = params['RecordUrl']
        end
      end

      # 房间事件信息。
      class EventInfo < TencentCloud::Common::AbstractModel
        # @param Timestamp: 事件发生的秒级unix时间戳。
        # @type Timestamp: Integer
        # @param EventType: 事件类型,有以下值:
        # RoomStart:房间开始 RoomEnd:房间结束 MemberJoin:成员加入 MemberQuit:成员退出 RecordFinish:录制结束
        # CameraOn: 摄像头打开
        # CameraOff: 摄像头关闭
        # MicOn: 麦克风打开
        # MicOff: 麦克风关闭
        # ScreenOn: 屏幕共享打开
        # ScreenOff: 屏幕共享关闭
        # VisibleOn: 页面可见
        # VisibleOff: 页面不可见
        # @type EventType: String
        # @param EventData: 事件详细内容，包含房间号,成员类型事件包含用户Id。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventData: :class:`Tencentcloud::Lcic.v20220817.models.EventDataInfo`

        attr_accessor :Timestamp, :EventType, :EventData

        def initialize(timestamp=nil, eventtype=nil, eventdata=nil)
          @Timestamp = timestamp
          @EventType = eventtype
          @EventData = eventdata
        end

        def deserialize(params)
          @Timestamp = params['Timestamp']
          @EventType = params['EventType']
          unless params['EventData'].nil?
            @EventData = EventDataInfo.new
            @EventData.deserialize(params['EventData'])
          end
        end
      end

      # 表情消息
      class FaceMsgContent < TencentCloud::Common::AbstractModel
        # @param Index: 表情索引，用户自定义。
        # @type Index: Integer
        # @param Data: 额外数据。
        # @type Data: String

        attr_accessor :Index, :Data

        def initialize(index=nil, data=nil)
          @Index = index
          @Data = data
        end

        def deserialize(params)
          @Index = params['Index']
          @Data = params['Data']
        end
      end

      # ForbidSendMsg请求参数结构体
      class ForbidSendMsgRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 低代码互动课堂的SdkAppId。
        # @type SdkAppId: Integer
        # @param RoomId: 房间ID。
        # @type RoomId: Integer
        # @param MembersAccount: 需要禁言的用户账号，最多支持500个账号
        # @type MembersAccount: Array
        # @param MuteTime: 需禁言时间，单位为秒，为0时表示取消禁言，4294967295为永久禁言。
        # @type MuteTime: Integer

        attr_accessor :SdkAppId, :RoomId, :MembersAccount, :MuteTime

        def initialize(sdkappid=nil, roomid=nil, membersaccount=nil, mutetime=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @MembersAccount = membersaccount
          @MuteTime = mutetime
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          @MembersAccount = params['MembersAccount']
          @MuteTime = params['MuteTime']
        end
      end

      # ForbidSendMsg返回参数结构体
      class ForbidSendMsgResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # GetRoomEvent请求参数结构体
      class GetRoomEventRequest < TencentCloud::Common::AbstractModel
        # @param RoomId: 房间Id。
        # @type RoomId: Integer
        # @param SdkAppId: 应用Id。
        # @type SdkAppId: Integer
        # @param Page: 起始页，1开始。keyword为空时有效。
        # @type Page: Integer
        # @param Limit: 每页个数。keyword为空时有效。一次性最多200条。
        # @type Limit: Integer
        # @param Keyword: 搜索事件类型。有以下事件类型:
        # RoomStart:房间开始
        # RoomEnd:房间结束
        # MemberJoin:成员加入
        # MemberQuit:成员退出
        # RecordFinish:录制结束
        # CameraOn: 摄像头打开
        # CameraOff: 摄像头关闭
        # MicOn: 麦克风打开
        # MicOff: 麦克风关闭
        # ScreenOn: 屏幕共享打开
        # ScreenOff: 屏幕共享关闭
        # VisibleOn: 页面可见
        # VisibleOff: 页面不可见
        # @type Keyword: String

        attr_accessor :RoomId, :SdkAppId, :Page, :Limit, :Keyword

        def initialize(roomid=nil, sdkappid=nil, page=nil, limit=nil, keyword=nil)
          @RoomId = roomid
          @SdkAppId = sdkappid
          @Page = page
          @Limit = limit
          @Keyword = keyword
        end

        def deserialize(params)
          @RoomId = params['RoomId']
          @SdkAppId = params['SdkAppId']
          @Page = params['Page']
          @Limit = params['Limit']
          @Keyword = params['Keyword']
        end
      end

      # GetRoomEvent返回参数结构体
      class GetRoomEventResponse < TencentCloud::Common::AbstractModel
        # @param Total: 该房间的事件总数，keyword搜索不影响该值。
        # @type Total: Integer
        # @param Events: 详细事件内容。包含相应的类型、发生的时间戳。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Events: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Events, :RequestId

        def initialize(total=nil, events=nil, requestid=nil)
          @Total = total
          @Events = events
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Events'].nil?
            @Events = []
            params['Events'].each do |i|
              eventinfo_tmp = EventInfo.new
              eventinfo_tmp.deserialize(i)
              @Events << eventinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetRoomMessage请求参数结构体
      class GetRoomMessageRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 低代码互动课堂的SdkAppId。
        # @type SdkAppId: Integer
        # @param RoomId: 房间Id。
        # @type RoomId: Integer
        # @param Seq: 消息序列。获取该序列以前的消息(不包含该seq消息)
        # @type Seq: Integer
        # @param Limit: 消息拉取的条数。最大数量不能超过套餐包限制。
        # @type Limit: Integer

        attr_accessor :SdkAppId, :RoomId, :Seq, :Limit

        def initialize(sdkappid=nil, roomid=nil, seq=nil, limit=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @Seq = seq
          @Limit = limit
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          @Seq = params['Seq']
          @Limit = params['Limit']
        end
      end

      # GetRoomMessage返回参数结构体
      class GetRoomMessageResponse < TencentCloud::Common::AbstractModel
        # @param Messages: 消息列表
        # @type Messages: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Messages, :RequestId

        def initialize(messages=nil, requestid=nil)
          @Messages = messages
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Messages'].nil?
            @Messages = []
            params['Messages'].each do |i|
              messagelist_tmp = MessageList.new
              messagelist_tmp.deserialize(i)
              @Messages << messagelist_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetRooms请求参数结构体
      class GetRoomsRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 低代码平台的SdkAppId。
        # @type SdkAppId: Integer
        # @param StartTime: 开始时间。默认以当前时间减去半小时作为开始时间。
        # @type StartTime: Integer
        # @param EndTime: 结束时间。默认以当前时间加上半小时作为结束时间。
        # @type EndTime: Integer
        # @param Page: 分页查询当前页数，从1开始递增
        # @type Page: Integer
        # @param Limit: 默认是10条
        # @type Limit: Integer
        # @param Status: 课堂状态。默认展示所有课堂，0为未开始，1为正在上课，2为已结束，3为已过期
        # @type Status: Array

        attr_accessor :SdkAppId, :StartTime, :EndTime, :Page, :Limit, :Status

        def initialize(sdkappid=nil, starttime=nil, endtime=nil, page=nil, limit=nil, status=nil)
          @SdkAppId = sdkappid
          @StartTime = starttime
          @EndTime = endtime
          @Page = page
          @Limit = limit
          @Status = status
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Page = params['Page']
          @Limit = params['Limit']
          @Status = params['Status']
        end
      end

      # GetRooms返回参数结构体
      class GetRoomsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param Rooms: 房间列表
        # @type Rooms: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Rooms, :RequestId

        def initialize(total=nil, rooms=nil, requestid=nil)
          @Total = total
          @Rooms = rooms
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Rooms'].nil?
            @Rooms = []
            params['Rooms'].each do |i|
              roomitem_tmp = RoomItem.new
              roomitem_tmp.deserialize(i)
              @Rooms << roomitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetWatermark请求参数结构体
      class GetWatermarkRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 低代码互动课堂的SdkAppId。
        # @type SdkAppId: Integer

        attr_accessor :SdkAppId

        def initialize(sdkappid=nil)
          @SdkAppId = sdkappid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
        end
      end

      # GetWatermark返回参数结构体
      class GetWatermarkResponse < TencentCloud::Common::AbstractModel
        # @param TeacherLogo: 老师视频区域的水印参数配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TeacherLogo: :class:`Tencentcloud::Lcic.v20220817.models.WatermarkConfig`
        # @param BoardLogo: 白板区域的水印参数配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BoardLogo: :class:`Tencentcloud::Lcic.v20220817.models.WatermarkConfig`
        # @param BackgroundPicture: 背景图片配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackgroundPicture: :class:`Tencentcloud::Lcic.v20220817.models.BackgroundPictureConfig`
        # @param Text: 文字水印配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: :class:`Tencentcloud::Lcic.v20220817.models.TextMarkConfig`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TeacherLogo, :BoardLogo, :BackgroundPicture, :Text, :RequestId

        def initialize(teacherlogo=nil, boardlogo=nil, backgroundpicture=nil, text=nil, requestid=nil)
          @TeacherLogo = teacherlogo
          @BoardLogo = boardlogo
          @BackgroundPicture = backgroundpicture
          @Text = text
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TeacherLogo'].nil?
            @TeacherLogo = WatermarkConfig.new
            @TeacherLogo.deserialize(params['TeacherLogo'])
          end
          unless params['BoardLogo'].nil?
            @BoardLogo = WatermarkConfig.new
            @BoardLogo.deserialize(params['BoardLogo'])
          end
          unless params['BackgroundPicture'].nil?
            @BackgroundPicture = BackgroundPictureConfig.new
            @BackgroundPicture.deserialize(params['BackgroundPicture'])
          end
          unless params['Text'].nil?
            @Text = TextMarkConfig.new
            @Text.deserialize(params['Text'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 批量创建群组基础信息
      class GroupBaseInfo < TencentCloud::Common::AbstractModel
        # @param GroupName: 待创建群组名
        # @type GroupName: String
        # @param TeacherId: 群组主讲人ID
        # @type TeacherId: String

        attr_accessor :GroupName, :TeacherId

        def initialize(groupname=nil, teacherid=nil)
          @GroupName = groupname
          @TeacherId = teacherid
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @TeacherId = params['TeacherId']
        end
      end

      # 获取群组列表返回的群组信息
      class GroupInfo < TencentCloud::Common::AbstractModel
        # @param GroupId: 群组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String
        # @param GroupName: 群组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param TeacherId: 群组主讲人ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TeacherId: String
        # @param GroupType: 群组类型
        # 0-基础群组
        # 1-组合群组，若为1时会返回子群组ID列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupType: Integer
        # @param SubGroupIds: 子群组ID列表，如有。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubGroupIds: String

        attr_accessor :GroupId, :GroupName, :TeacherId, :GroupType, :SubGroupIds

        def initialize(groupid=nil, groupname=nil, teacherid=nil, grouptype=nil, subgroupids=nil)
          @GroupId = groupid
          @GroupName = groupname
          @TeacherId = teacherid
          @GroupType = grouptype
          @SubGroupIds = subgroupids
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @TeacherId = params['TeacherId']
          @GroupType = params['GroupType']
          @SubGroupIds = params['SubGroupIds']
        end
      end

      # 单张图片信息
      class ImageInfo < TencentCloud::Common::AbstractModel
        # @param Type: 图片类型：
        # 1-原图
        # 2-大图
        # 3-缩略图
        # @type Type: Integer
        # @param Size: 图片数据大小，单位：字节。
        # @type Size: Integer
        # @param Width: 图片宽度，单位为像素。
        # @type Width: Integer
        # @param Height: 图片高度，单位为像素。
        # @type Height: Integer
        # @param URL: 图片下载地址。
        # @type URL: String

        attr_accessor :Type, :Size, :Width, :Height, :URL

        def initialize(type=nil, size=nil, width=nil, height=nil, url=nil)
          @Type = type
          @Size = size
          @Width = width
          @Height = height
          @URL = url
        end

        def deserialize(params)
          @Type = params['Type']
          @Size = params['Size']
          @Width = params['Width']
          @Height = params['Height']
          @URL = params['URL']
        end
      end

      # 图片消息
      class ImageMsgContent < TencentCloud::Common::AbstractModel
        # @param UUID: 图片的唯一标识，客户端用于索引图片的键值。
        # @type UUID: String
        # @param ImageFormat: 图片格式。
        # JPG = 1
        # GIF = 2
        # PNG = 3
        # BMP = 4
        # 其他 = 255
        # @type ImageFormat: Integer
        # @param ImageInfoList: 图片信息
        # @type ImageInfoList: Array

        attr_accessor :UUID, :ImageFormat, :ImageInfoList

        def initialize(uuid=nil, imageformat=nil, imageinfolist=nil)
          @UUID = uuid
          @ImageFormat = imageformat
          @ImageInfoList = imageinfolist
        end

        def deserialize(params)
          @UUID = params['UUID']
          @ImageFormat = params['ImageFormat']
          unless params['ImageInfoList'].nil?
            @ImageInfoList = []
            params['ImageInfoList'].each do |i|
              imageinfo_tmp = ImageInfo.new
              imageinfo_tmp.deserialize(i)
              @ImageInfoList << imageinfo_tmp
            end
          end
        end
      end

      # KickUserFromRoom请求参数结构体
      class KickUserFromRoomRequest < TencentCloud::Common::AbstractModel
        # @param RoomId: 房间Id。
        # @type RoomId: Integer
        # @param SdkAppId: 低代码平台的SdkAppId。
        # @type SdkAppId: Integer
        # @param UserId: 需要踢出成员Id
        # @type UserId: String
        # @param KickType: 踢出类型：
        # 1：临时踢出，可以使用Duration参数指定污点时间，污点时间间隔内用户无法进入房间。
        # 2：永久踢出
        # @type KickType: Integer
        # @param Duration: 污点时间(单位秒)，KickType = 1时生效，默认为0
        # @type Duration: Integer

        attr_accessor :RoomId, :SdkAppId, :UserId, :KickType, :Duration

        def initialize(roomid=nil, sdkappid=nil, userid=nil, kicktype=nil, duration=nil)
          @RoomId = roomid
          @SdkAppId = sdkappid
          @UserId = userid
          @KickType = kicktype
          @Duration = duration
        end

        def deserialize(params)
          @RoomId = params['RoomId']
          @SdkAppId = params['SdkAppId']
          @UserId = params['UserId']
          @KickType = params['KickType']
          @Duration = params['Duration']
        end
      end

      # KickUserFromRoom返回参数结构体
      class KickUserFromRoomResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # LoginOriginId请求参数结构体
      class LoginOriginIdRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 低代码互动课堂的SdkAppId。
        # @type SdkAppId: Integer
        # @param OriginId: 用户在客户系统的Id，需要在同一应用下唯一。
        # @type OriginId: String

        attr_accessor :SdkAppId, :OriginId

        def initialize(sdkappid=nil, originid=nil)
          @SdkAppId = sdkappid
          @OriginId = originid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @OriginId = params['OriginId']
        end
      end

      # LoginOriginId返回参数结构体
      class LoginOriginIdResponse < TencentCloud::Common::AbstractModel
        # @param UserId: 用户Id。
        # @type UserId: String
        # @param Token: 登录/注册成功后返回登录态token。有效期7天。
        # @type Token: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserId, :Token, :RequestId

        def initialize(userid=nil, token=nil, requestid=nil)
          @UserId = userid
          @Token = token
          @RequestId = requestid
        end

        def deserialize(params)
          @UserId = params['UserId']
          @Token = params['Token']
          @RequestId = params['RequestId']
        end
      end

      # LoginUser请求参数结构体
      class LoginUserRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 注册获取的用户id。
        # @type UserId: String

        attr_accessor :UserId

        def initialize(userid=nil)
          @UserId = userid
        end

        def deserialize(params)
          @UserId = params['UserId']
        end
      end

      # LoginUser返回参数结构体
      class LoginUserResponse < TencentCloud::Common::AbstractModel
        # @param UserId: 用户Id。
        # @type UserId: String
        # @param Token: 注册成功后返回登录态token，有效期7天。token过期后可以通过调用“登录”或“源账号登录”进行更新。
        # @type Token: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserId, :Token, :RequestId

        def initialize(userid=nil, token=nil, requestid=nil)
          @UserId = userid
          @Token = token
          @RequestId = requestid
        end

        def deserialize(params)
          @UserId = params['UserId']
          @Token = params['Token']
          @RequestId = params['RequestId']
        end
      end

      # 成员记录信息。
      class MemberRecord < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID。
        # @type UserId: String
        # @param UserName: 用户名称。
        # @type UserName: String
        # @param PresentTime: 在线时长，单位秒。
        # @type PresentTime: Integer
        # @param Camera: 是否开启摄像头。
        # @type Camera: Integer
        # @param Mic: 是否开启麦克风。
        # @type Mic: Integer
        # @param Silence: 是否禁言。
        # @type Silence: Integer
        # @param AnswerQuestions: 回答问题数量。
        # @type AnswerQuestions: Integer
        # @param HandUps: 举手数量。
        # @type HandUps: Integer
        # @param FirstJoinTimestamp: 首次进入房间的unix时间戳。
        # @type FirstJoinTimestamp: Integer
        # @param LastQuitTimestamp: 最后一次退出房间的unix时间戳。
        # @type LastQuitTimestamp: Integer
        # @param Rewords: 奖励次数。
        # @type Rewords: Integer
        # @param IPAddress: 用户IP。
        # @type IPAddress: String
        # @param Location: 用户位置信息。
        # @type Location: String
        # @param Device: 用户设备平台信息。0:unknown  1:windows  2:mac  3:android  4:ios  5:web   6:h5   7:miniprogram （小程序）
        # @type Device: Integer
        # @param PerMemberMicCount: 每个成员上麦次数。
        # @type PerMemberMicCount: Integer
        # @param PerMemberMessageCount: 每个成员发送消息数量。
        # @type PerMemberMessageCount: Integer
        # @param Role: 用户角色。0代表学生；1代表老师； 2助教；3巡课。
        # @type Role: Integer
        # @param GroupId: 上课班号
        # @type GroupId: String
        # @param SubGroupId: 子上课班号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubGroupId: Array
        # @param Stage: 用户的上台状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Stage: Integer
        # @param CurrentState: 用户状态。0为未到，1为在线，2为离线，3为被踢，4为永久被踢，5为暂时掉线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentState: Integer

        attr_accessor :UserId, :UserName, :PresentTime, :Camera, :Mic, :Silence, :AnswerQuestions, :HandUps, :FirstJoinTimestamp, :LastQuitTimestamp, :Rewords, :IPAddress, :Location, :Device, :PerMemberMicCount, :PerMemberMessageCount, :Role, :GroupId, :SubGroupId, :Stage, :CurrentState

        def initialize(userid=nil, username=nil, presenttime=nil, camera=nil, mic=nil, silence=nil, answerquestions=nil, handups=nil, firstjointimestamp=nil, lastquittimestamp=nil, rewords=nil, ipaddress=nil, location=nil, device=nil, permembermiccount=nil, permembermessagecount=nil, role=nil, groupid=nil, subgroupid=nil, stage=nil, currentstate=nil)
          @UserId = userid
          @UserName = username
          @PresentTime = presenttime
          @Camera = camera
          @Mic = mic
          @Silence = silence
          @AnswerQuestions = answerquestions
          @HandUps = handups
          @FirstJoinTimestamp = firstjointimestamp
          @LastQuitTimestamp = lastquittimestamp
          @Rewords = rewords
          @IPAddress = ipaddress
          @Location = location
          @Device = device
          @PerMemberMicCount = permembermiccount
          @PerMemberMessageCount = permembermessagecount
          @Role = role
          @GroupId = groupid
          @SubGroupId = subgroupid
          @Stage = stage
          @CurrentState = currentstate
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserName = params['UserName']
          @PresentTime = params['PresentTime']
          @Camera = params['Camera']
          @Mic = params['Mic']
          @Silence = params['Silence']
          @AnswerQuestions = params['AnswerQuestions']
          @HandUps = params['HandUps']
          @FirstJoinTimestamp = params['FirstJoinTimestamp']
          @LastQuitTimestamp = params['LastQuitTimestamp']
          @Rewords = params['Rewords']
          @IPAddress = params['IPAddress']
          @Location = params['Location']
          @Device = params['Device']
          @PerMemberMicCount = params['PerMemberMicCount']
          @PerMemberMessageCount = params['PerMemberMessageCount']
          @Role = params['Role']
          @GroupId = params['GroupId']
          @SubGroupId = params['SubGroupId']
          @Stage = params['Stage']
          @CurrentState = params['CurrentState']
        end
      end

      # 单条消息体内容
      class MessageItem < TencentCloud::Common::AbstractModel
        # @param MessageType: 消息类型。0表示文本消息，1表示图片消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MessageType: Integer
        # @param TextMessage: 文本消息内容。message type为0时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TextMessage: String
        # @param ImageMessage: 图片消息URL。 message type为1时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageMessage: String
        # @param CustomMessage: 自定义消息内容。message type为2时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomMessage: :class:`Tencentcloud::Lcic.v20220817.models.CustomMsgContent`

        attr_accessor :MessageType, :TextMessage, :ImageMessage, :CustomMessage

        def initialize(messagetype=nil, textmessage=nil, imagemessage=nil, custommessage=nil)
          @MessageType = messagetype
          @TextMessage = textmessage
          @ImageMessage = imagemessage
          @CustomMessage = custommessage
        end

        def deserialize(params)
          @MessageType = params['MessageType']
          @TextMessage = params['TextMessage']
          @ImageMessage = params['ImageMessage']
          unless params['CustomMessage'].nil?
            @CustomMessage = CustomMsgContent.new
            @CustomMessage.deserialize(params['CustomMessage'])
          end
        end
      end

      # 历史消息列表
      class MessageList < TencentCloud::Common::AbstractModel
        # @param Timestamp: 消息时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timestamp: Integer
        # @param FromAccount: 消息发送者
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FromAccount: String
        # @param Seq: 消息序列号，当前课堂内唯一且单调递增
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Seq: Integer
        # @param MessageBody: 历史消息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MessageBody: Array

        attr_accessor :Timestamp, :FromAccount, :Seq, :MessageBody

        def initialize(timestamp=nil, fromaccount=nil, seq=nil, messagebody=nil)
          @Timestamp = timestamp
          @FromAccount = fromaccount
          @Seq = seq
          @MessageBody = messagebody
        end

        def deserialize(params)
          @Timestamp = params['Timestamp']
          @FromAccount = params['FromAccount']
          @Seq = params['Seq']
          unless params['MessageBody'].nil?
            @MessageBody = []
            params['MessageBody'].each do |i|
              messageitem_tmp = MessageItem.new
              messageitem_tmp.deserialize(i)
              @MessageBody << messageitem_tmp
            end
          end
        end
      end

      # ModifyApp请求参数结构体
      class ModifyAppRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 低代码互动课堂的SdkAppId。
        # @type SdkAppId: Integer
        # @param Callback: 回调地址。
        # @type Callback: String
        # @param CallbackKey: 回调key。
        # @type CallbackKey: String
        # @param TransferId: 转存id
        # @type TransferId: String
        # @param TransferUrl: 转存地址
        # @type TransferUrl: String

        attr_accessor :SdkAppId, :Callback, :CallbackKey, :TransferId, :TransferUrl

        def initialize(sdkappid=nil, callback=nil, callbackkey=nil, transferid=nil, transferurl=nil)
          @SdkAppId = sdkappid
          @Callback = callback
          @CallbackKey = callbackkey
          @TransferId = transferid
          @TransferUrl = transferurl
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Callback = params['Callback']
          @CallbackKey = params['CallbackKey']
          @TransferId = params['TransferId']
          @TransferUrl = params['TransferUrl']
        end
      end

      # ModifyApp返回参数结构体
      class ModifyAppResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyGroup请求参数结构体
      class ModifyGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 需要修改的群组ID
        # @type GroupId: String
        # @param SdkAppId: 低代码平台应用ID
        # @type SdkAppId: Integer
        # @param TeacherId: 默认绑定主讲老师ID
        # @type TeacherId: String
        # @param GroupName: 待修改的群组名称
        # @type GroupName: String

        attr_accessor :GroupId, :SdkAppId, :TeacherId, :GroupName

        def initialize(groupid=nil, sdkappid=nil, teacherid=nil, groupname=nil)
          @GroupId = groupid
          @SdkAppId = sdkappid
          @TeacherId = teacherid
          @GroupName = groupname
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @SdkAppId = params['SdkAppId']
          @TeacherId = params['TeacherId']
          @GroupName = params['GroupName']
        end
      end

      # ModifyGroup返回参数结构体
      class ModifyGroupResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyRoom请求参数结构体
      class ModifyRoomRequest < TencentCloud::Common::AbstractModel
        # @param RoomId: 房间ID。
        # @type RoomId: Integer
        # @param SdkAppId: 低代码互动课堂的SdkAppId
        # @type SdkAppId: Integer
        # @param StartTime: 预定的房间开始时间，unix时间戳（秒）。直播开始后不允许修改。
        # @type StartTime: Integer
        # @param EndTime: 预定的房间结束时间，unix时间戳（秒）。直播开始后不允许修改。
        # @type EndTime: Integer
        # @param TeacherId: 老师ID。直播开始后不允许修改。
        # @type TeacherId: String
        # @param Name: 房间名称。
        # @type Name: String
        # @param Resolution: 分辨率。可以有如下取值：
        # 1 标清
        # 2 高清
        # 3 全高清
        # 直播开始后不允许修改。
        # @type Resolution: Integer
        # @param MaxMicNumber: 设置房间/课堂同时最大可与老师进行连麦互动的人数，该参数支持正式上课/开播前调用修改房间修改。
        # 取值范围[0,16]，当取值为0时表示当前课堂/直播，不支持连麦互动。
        # @type MaxMicNumber: Integer
        # @param AutoMic: 进入房间时是否自动连麦。可以有以下取值：
        # 0 不自动连麦（默认值）
        # 1 自动连麦
        # 直播开始后不允许修改。
        # @type AutoMic: Integer
        # @param AudioQuality: 高音质模式。可以有以下取值：
        # 0 不开启高音质（默认值）
        # 1 开启高音质
        # 直播开始后不允许修改。
        # @type AudioQuality: Integer
        # @param SubType: 房间子类型，可以有以下取值：
        # videodoc 文档+视频
        # video 纯视频
        # 直播开始后不允许修改。
        # @type SubType: String
        # @param DisableRecord: 禁止录制。可以有以下取值：
        # 0 不禁止录制（默认值）
        # 1 禁止录制
        # 直播开始后不允许修改。
        # @type DisableRecord: Integer
        # @param Assistants: 助教Id列表。直播开始后不允许修改。
        # @type Assistants: Array
        # @param GroupId: 房间绑定的群组ID。直播开始后不允许修改。
        # @type GroupId: String
        # @param EnableDirectControl: 打开学生麦克风/摄像头的授权开关。直播开始后不允许修改。
        # @type EnableDirectControl: Integer
        # @param InteractionMode: 开启专注模式。
        # 0 收看全部角色音视频(默认)
        # 1 只看老师和助教
        # @type InteractionMode: Integer
        # @param VideoOrientation: 横竖屏。0：横屏开播（默认值）; 1：竖屏开播，当前仅支持移动端的纯视频类型
        # @type VideoOrientation: Integer
        # @param IsGradingRequiredPostClass: 开启课后评分。 0：不开启(默认)  1：开启
        # @type IsGradingRequiredPostClass: Integer
        # @param RoomType: 房间类型: 0 小班课（默认值）; 1 大班课; 2 1V1 （预留参数、暂未开放)
        # 注：大班课的布局(layout)只有三分屏
        # @type RoomType: Integer
        # @param RecordLayout: 录制模板。仅可修改还未开始的房间。录制模板枚举值参考：https://cloud.tencent.com/document/product/1639/89744
        # @type RecordLayout: Integer
        # @param EndDelayTime: 拖堂时间：单位分钟，0为不限制(默认值), -1为不能拖堂，大于0为拖堂的时间，最大值120分钟
        # @type EndDelayTime: Integer
        # @param LiveType: 直播方式：0 常规模式（默认）1 回放直播模式（伪直播）
        # @type LiveType: Integer
        # @param RecordLiveUrl: 伪直播链接
        # @type RecordLiveUrl: String
        # @param EnableAutoStart: 是否自动开始上课：0 不自动上课（默认） 1 自动上课 live_type=1的时候有效
        # @type EnableAutoStart: Integer
        # @param RecordScene: 录制自定义场景，仅recordlayout=9的时候此参数有效,数据内容为用户自定义场景参数，数据格式为json键值对方式，其中键值对的value为string类型。
        # @type RecordScene: String
        # @param RecordLang: 录制自定义语言，仅recordlayout=9的时候此参数有效
        # @type RecordLang: String

        attr_accessor :RoomId, :SdkAppId, :StartTime, :EndTime, :TeacherId, :Name, :Resolution, :MaxMicNumber, :AutoMic, :AudioQuality, :SubType, :DisableRecord, :Assistants, :GroupId, :EnableDirectControl, :InteractionMode, :VideoOrientation, :IsGradingRequiredPostClass, :RoomType, :RecordLayout, :EndDelayTime, :LiveType, :RecordLiveUrl, :EnableAutoStart, :RecordScene, :RecordLang
        extend Gem::Deprecate
        deprecate :RecordLang, :none, 2024, 4
        deprecate :RecordLang=, :none, 2024, 4

        def initialize(roomid=nil, sdkappid=nil, starttime=nil, endtime=nil, teacherid=nil, name=nil, resolution=nil, maxmicnumber=nil, automic=nil, audioquality=nil, subtype=nil, disablerecord=nil, assistants=nil, groupid=nil, enabledirectcontrol=nil, interactionmode=nil, videoorientation=nil, isgradingrequiredpostclass=nil, roomtype=nil, recordlayout=nil, enddelaytime=nil, livetype=nil, recordliveurl=nil, enableautostart=nil, recordscene=nil, recordlang=nil)
          @RoomId = roomid
          @SdkAppId = sdkappid
          @StartTime = starttime
          @EndTime = endtime
          @TeacherId = teacherid
          @Name = name
          @Resolution = resolution
          @MaxMicNumber = maxmicnumber
          @AutoMic = automic
          @AudioQuality = audioquality
          @SubType = subtype
          @DisableRecord = disablerecord
          @Assistants = assistants
          @GroupId = groupid
          @EnableDirectControl = enabledirectcontrol
          @InteractionMode = interactionmode
          @VideoOrientation = videoorientation
          @IsGradingRequiredPostClass = isgradingrequiredpostclass
          @RoomType = roomtype
          @RecordLayout = recordlayout
          @EndDelayTime = enddelaytime
          @LiveType = livetype
          @RecordLiveUrl = recordliveurl
          @EnableAutoStart = enableautostart
          @RecordScene = recordscene
          @RecordLang = recordlang
        end

        def deserialize(params)
          @RoomId = params['RoomId']
          @SdkAppId = params['SdkAppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @TeacherId = params['TeacherId']
          @Name = params['Name']
          @Resolution = params['Resolution']
          @MaxMicNumber = params['MaxMicNumber']
          @AutoMic = params['AutoMic']
          @AudioQuality = params['AudioQuality']
          @SubType = params['SubType']
          @DisableRecord = params['DisableRecord']
          @Assistants = params['Assistants']
          @GroupId = params['GroupId']
          @EnableDirectControl = params['EnableDirectControl']
          @InteractionMode = params['InteractionMode']
          @VideoOrientation = params['VideoOrientation']
          @IsGradingRequiredPostClass = params['IsGradingRequiredPostClass']
          @RoomType = params['RoomType']
          @RecordLayout = params['RecordLayout']
          @EndDelayTime = params['EndDelayTime']
          @LiveType = params['LiveType']
          @RecordLiveUrl = params['RecordLiveUrl']
          @EnableAutoStart = params['EnableAutoStart']
          @RecordScene = params['RecordScene']
          @RecordLang = params['RecordLang']
        end
      end

      # ModifyRoom返回参数结构体
      class ModifyRoomResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyUserProfile请求参数结构体
      class ModifyUserProfileRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 待修改用户ID
        # @type UserId: String
        # @param Nickname: 待修改的用户名
        # @type Nickname: String
        # @param Avatar: 待修改头像url
        # @type Avatar: String

        attr_accessor :UserId, :Nickname, :Avatar

        def initialize(userid=nil, nickname=nil, avatar=nil)
          @UserId = userid
          @Nickname = nickname
          @Avatar = avatar
        end

        def deserialize(params)
          @UserId = params['UserId']
          @Nickname = params['Nickname']
          @Avatar = params['Avatar']
        end
      end

      # ModifyUserProfile返回参数结构体
      class ModifyUserProfileResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 自定义消息结构
      class MsgBody < TencentCloud::Common::AbstractModel
        # @param MsgType: TIM 消息对象类型，目前支持的消息对象包括：
        # TIMTextElem（文本消息）
        # TIMFaceElem（表情消息）
        # TIMImageElem（图像消息）
        # TIMCustomElem（自定义消息）
        # @type MsgType: String
        # @param TextMsgContent: 文本消息，当MsgType 为TIMTextElem（文本消息）必选。
        # @type TextMsgContent: :class:`Tencentcloud::Lcic.v20220817.models.TextMsgContent`
        # @param FaceMsgContent: 表情消息，当MsgType 为TIMFaceElem（表情消息）必选。
        # @type FaceMsgContent: :class:`Tencentcloud::Lcic.v20220817.models.FaceMsgContent`
        # @param ImageMsgContent: 图像消息，当MsgType为TIMImageElem（图像消息）必选。
        # @type ImageMsgContent: :class:`Tencentcloud::Lcic.v20220817.models.ImageMsgContent`
        # @param CustomMsgContent: 自定义消息，TIMCustomElem（自定义消息）必选。
        # @type CustomMsgContent: :class:`Tencentcloud::Lcic.v20220817.models.CustomMsgContent`

        attr_accessor :MsgType, :TextMsgContent, :FaceMsgContent, :ImageMsgContent, :CustomMsgContent

        def initialize(msgtype=nil, textmsgcontent=nil, facemsgcontent=nil, imagemsgcontent=nil, custommsgcontent=nil)
          @MsgType = msgtype
          @TextMsgContent = textmsgcontent
          @FaceMsgContent = facemsgcontent
          @ImageMsgContent = imagemsgcontent
          @CustomMsgContent = custommsgcontent
        end

        def deserialize(params)
          @MsgType = params['MsgType']
          unless params['TextMsgContent'].nil?
            @TextMsgContent = TextMsgContent.new
            @TextMsgContent.deserialize(params['TextMsgContent'])
          end
          unless params['FaceMsgContent'].nil?
            @FaceMsgContent = FaceMsgContent.new
            @FaceMsgContent.deserialize(params['FaceMsgContent'])
          end
          unless params['ImageMsgContent'].nil?
            @ImageMsgContent = ImageMsgContent.new
            @ImageMsgContent.deserialize(params['ImageMsgContent'])
          end
          unless params['CustomMsgContent'].nil?
            @CustomMsgContent = CustomMsgContent.new
            @CustomMsgContent.deserialize(params['CustomMsgContent'])
          end
        end
      end

      # 禁言用户信息数组，内容包括被禁言的成员 ID，及其被禁言到的时间（使用 UTC 时间，即世界协调时间）
      class MutedAccountList < TencentCloud::Common::AbstractModel
        # @param MemberAccount: 用户 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberAccount: String
        # @param MutedUntil: 禁言到的时间（使用 UTC 时间，即世界协调时间）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MutedUntil: Integer

        attr_accessor :MemberAccount, :MutedUntil

        def initialize(memberaccount=nil, muteduntil=nil)
          @MemberAccount = memberaccount
          @MutedUntil = muteduntil
        end

        def deserialize(params)
          @MemberAccount = params['MemberAccount']
          @MutedUntil = params['MutedUntil']
        end
      end

      # 房间问答问题详情
      class QuestionInfo < TencentCloud::Common::AbstractModel
        # @param QuestionId: 问题ID
        # @type QuestionId: String
        # @param QuestionContent: 问题内容
        # @type QuestionContent: String
        # @param Duration: 倒计时答题设置的秒数（0 表示不计时）
        # @type Duration: Integer
        # @param CorrectAnswer: 正确答案（按照位表示是否选择，如0x1表示选择A，0x11表示选择AB）
        # @type CorrectAnswer: Integer
        # @param AnswerStats: 每个选项答题人数统计
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnswerStats: Array

        attr_accessor :QuestionId, :QuestionContent, :Duration, :CorrectAnswer, :AnswerStats

        def initialize(questionid=nil, questioncontent=nil, duration=nil, correctanswer=nil, answerstats=nil)
          @QuestionId = questionid
          @QuestionContent = questioncontent
          @Duration = duration
          @CorrectAnswer = correctanswer
          @AnswerStats = answerstats
        end

        def deserialize(params)
          @QuestionId = params['QuestionId']
          @QuestionContent = params['QuestionContent']
          @Duration = params['Duration']
          @CorrectAnswer = params['CorrectAnswer']
          unless params['AnswerStats'].nil?
            @AnswerStats = []
            params['AnswerStats'].each do |i|
              answerstat_tmp = AnswerStat.new
              answerstat_tmp.deserialize(i)
              @AnswerStats << answerstat_tmp
            end
          end
        end
      end

      # RegisterUser请求参数结构体
      class RegisterUserRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 低代码互动课堂的SdkAppId。
        # @type SdkAppId: Integer
        # @param Name: 用户名称。
        # @type Name: String
        # @param OriginId: 用户在客户系统的Id，需要在同一应用下唯一。
        # @type OriginId: String
        # @param Avatar: 用户头像。
        # @type Avatar: String

        attr_accessor :SdkAppId, :Name, :OriginId, :Avatar

        def initialize(sdkappid=nil, name=nil, originid=nil, avatar=nil)
          @SdkAppId = sdkappid
          @Name = name
          @OriginId = originid
          @Avatar = avatar
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Name = params['Name']
          @OriginId = params['OriginId']
          @Avatar = params['Avatar']
        end
      end

      # RegisterUser返回参数结构体
      class RegisterUserResponse < TencentCloud::Common::AbstractModel
        # @param UserId: 用户Id。
        # @type UserId: String
        # @param Token: 登录/注册成功后返回登录态token。有效期7天。
        # @type Token: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserId, :Token, :RequestId

        def initialize(userid=nil, token=nil, requestid=nil)
          @UserId = userid
          @Token = token
          @RequestId = requestid
        end

        def deserialize(params)
          @UserId = params['UserId']
          @Token = params['Token']
          @RequestId = params['RequestId']
        end
      end

      # 批量创建房间的房间信息
      class RoomInfo < TencentCloud::Common::AbstractModel
        # @param Name: 房间名称。
        # @type Name: String
        # @param StartTime: 预定的房间开始时间，unix时间戳。
        # @type StartTime: Integer
        # @param EndTime: 预定的房间结束时间，unix时间戳。
        # @type EndTime: Integer
        # @param Resolution: 分辨率。可以有如下取值： 1 标清 2 高清 3 全高清
        # @type Resolution: Integer
        # @param MaxMicNumber: 最大连麦人数（不包括老师）。取值范围[0, 16]
        # @type MaxMicNumber: Integer
        # @param SubType: 房间子类型，可以有以下取值： videodoc 文档+视频 video 纯视频
        # @type SubType: String
        # @param TeacherId: 老师ID。通过[注册用户]接口获取的UserId。
        # @type TeacherId: String
        # @param AutoMic: 进入课堂时是否自动连麦。可以有以下取值： 0 不自动连麦（需要手动申请上麦，默认值） 1 自动连麦
        # @type AutoMic: Integer
        # @param TurnOffMic: 释放音视频权限后是否自动取消连麦。可以有以下取值： 0 自动取消连麦（默认值） 1 保持连麦状态
        # @type TurnOffMic: Integer
        # @param AudioQuality: 高音质模式。可以有以下取值： 0 不开启高音质（默认值） 1 开启高音质
        # @type AudioQuality: Integer
        # @param DisableRecord: 上课后是否禁止自动录制。可以有以下取值： 0 不禁止录制（自动开启录制，默认值） 1 禁止录制 注：如果该配置取值为0，录制将从上课后开始，课堂结束后停止。
        # @type DisableRecord: Integer
        # @param Assistants: 助教Id列表。通过[注册用户]接口获取的UserId。
        # @type Assistants: Array
        # @param RTCAudienceNumber: rtc人数。
        # @type RTCAudienceNumber: Integer
        # @param AudienceType: 观看类型。
        # @type AudienceType: Integer
        # @param RecordLayout: 录制布局。
        # @type RecordLayout: Integer
        # @param GroupId: 房间绑定的群组ID
        # @type GroupId: String
        # @param EnableDirectControl: 打开学生麦克风/摄像头的授权开关
        # @type EnableDirectControl: Integer
        # @param InteractionMode: 开启专注模式。 0 收看全部角色音视频(默认) 1 只看老师和助教
        # @type InteractionMode: Integer
        # @param VideoOrientation: 横竖屏。0：横屏开播（默认值）; 1：竖屏开播，当前仅支持移动端的纯视频类型
        # @type VideoOrientation: Integer
        # @param IsGradingRequiredPostClass: 开启课后评分。 0：不开启(默认)  1：开启
        # @type IsGradingRequiredPostClass: Integer
        # @param RoomType: 房间类型: 0 小班课（默认值）; 1 大班课; 2 1V1 (后续扩展)
        # 注：大班课的布局(layout)只有三分屏
        # @type RoomType: Integer
        # @param EndDelayTime: 拖堂时间：单位分钟，0为不限制(默认值), -1为不能拖堂，大于0为拖堂的时间，最大值120分钟
        # @type EndDelayTime: Integer
        # @param LiveType: 直播类型：0 常规（默认）1 伪直播
        # @type LiveType: Integer
        # @param RecordLiveUrl: 伪直播回放链接
        # @type RecordLiveUrl: String
        # @param EnableAutoStart: 是否自动开始上课：0 不自动上课（默认） 1 自动上课 live_type=1的时候有效
        # @type EnableAutoStart: Integer
        # @param RecordBackground: 录制文件背景图片，支持png、jpg、jpeg、bmp格式，暂不支持透明通道
        # @type RecordBackground: String
        # @param RecordScene: 录制自定义场景，仅recordlayout=9的时候此参数有效,数据内容为用户自定义场景参数，数据格式为json键值对方式，其中键值对的value为string类型。
        # @type RecordScene: String
        # @param RecordLang: 录制自定义语言，仅recordlayout=9的时候此参数有效
        # @type RecordLang: String

        attr_accessor :Name, :StartTime, :EndTime, :Resolution, :MaxMicNumber, :SubType, :TeacherId, :AutoMic, :TurnOffMic, :AudioQuality, :DisableRecord, :Assistants, :RTCAudienceNumber, :AudienceType, :RecordLayout, :GroupId, :EnableDirectControl, :InteractionMode, :VideoOrientation, :IsGradingRequiredPostClass, :RoomType, :EndDelayTime, :LiveType, :RecordLiveUrl, :EnableAutoStart, :RecordBackground, :RecordScene, :RecordLang
        extend Gem::Deprecate
        deprecate :RecordLang, :none, 2024, 4
        deprecate :RecordLang=, :none, 2024, 4

        def initialize(name=nil, starttime=nil, endtime=nil, resolution=nil, maxmicnumber=nil, subtype=nil, teacherid=nil, automic=nil, turnoffmic=nil, audioquality=nil, disablerecord=nil, assistants=nil, rtcaudiencenumber=nil, audiencetype=nil, recordlayout=nil, groupid=nil, enabledirectcontrol=nil, interactionmode=nil, videoorientation=nil, isgradingrequiredpostclass=nil, roomtype=nil, enddelaytime=nil, livetype=nil, recordliveurl=nil, enableautostart=nil, recordbackground=nil, recordscene=nil, recordlang=nil)
          @Name = name
          @StartTime = starttime
          @EndTime = endtime
          @Resolution = resolution
          @MaxMicNumber = maxmicnumber
          @SubType = subtype
          @TeacherId = teacherid
          @AutoMic = automic
          @TurnOffMic = turnoffmic
          @AudioQuality = audioquality
          @DisableRecord = disablerecord
          @Assistants = assistants
          @RTCAudienceNumber = rtcaudiencenumber
          @AudienceType = audiencetype
          @RecordLayout = recordlayout
          @GroupId = groupid
          @EnableDirectControl = enabledirectcontrol
          @InteractionMode = interactionmode
          @VideoOrientation = videoorientation
          @IsGradingRequiredPostClass = isgradingrequiredpostclass
          @RoomType = roomtype
          @EndDelayTime = enddelaytime
          @LiveType = livetype
          @RecordLiveUrl = recordliveurl
          @EnableAutoStart = enableautostart
          @RecordBackground = recordbackground
          @RecordScene = recordscene
          @RecordLang = recordlang
        end

        def deserialize(params)
          @Name = params['Name']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Resolution = params['Resolution']
          @MaxMicNumber = params['MaxMicNumber']
          @SubType = params['SubType']
          @TeacherId = params['TeacherId']
          @AutoMic = params['AutoMic']
          @TurnOffMic = params['TurnOffMic']
          @AudioQuality = params['AudioQuality']
          @DisableRecord = params['DisableRecord']
          @Assistants = params['Assistants']
          @RTCAudienceNumber = params['RTCAudienceNumber']
          @AudienceType = params['AudienceType']
          @RecordLayout = params['RecordLayout']
          @GroupId = params['GroupId']
          @EnableDirectControl = params['EnableDirectControl']
          @InteractionMode = params['InteractionMode']
          @VideoOrientation = params['VideoOrientation']
          @IsGradingRequiredPostClass = params['IsGradingRequiredPostClass']
          @RoomType = params['RoomType']
          @EndDelayTime = params['EndDelayTime']
          @LiveType = params['LiveType']
          @RecordLiveUrl = params['RecordLiveUrl']
          @EnableAutoStart = params['EnableAutoStart']
          @RecordBackground = params['RecordBackground']
          @RecordScene = params['RecordScene']
          @RecordLang = params['RecordLang']
        end
      end

      # 房间列表
      class RoomItem < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param RoomId: 房间ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoomId: Integer
        # @param Status: 房间状态。0 未开始 ；1进行中  ；2 已结束；3已过期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param StartTime: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: Integer
        # @param EndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: Integer
        # @param RealStartTime: 实际开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealStartTime: Integer
        # @param RealEndTime: 实际结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealEndTime: Integer
        # @param Resolution: 分辨率。1 标清
        # 2 高清
        # 3 全高清
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resolution: Integer
        # @param MaxRTCMember: 最大允许连麦人数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxRTCMember: Integer
        # @param ReplayUrl: 房间录制地址。已废弃，使用新字段 RecordUrl
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReplayUrl: String
        # @param RecordUrl: 录制地址（协议为https)。仅在房间结束后存在。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordUrl: String
        # @param MaxMicNumber: 最高房间内人数（不包括老师），0表示不限制，默认为0
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxMicNumber: Integer
        # @param EnableDirectControl: 打开学生麦克风/摄像头的授权开关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableDirectControl: Integer
        # @param InteractionMode: 开启专注模式。 0 收看全部角色音视频(默认) 1 只看老师和助教
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InteractionMode: Integer
        # @param VideoOrientation: 横竖屏。0：横屏开播（默认值）; 1：竖屏开播，当前仅支持移动端的纯视频类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoOrientation: Integer
        # @param IsGradingRequiredPostClass: 开启课后评分。 0：不开启(默认)  1：开启
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsGradingRequiredPostClass: Integer
        # @param RoomType: 房间类型。0:小班课（默认值）；1:大班课；2:1V1（后续扩展）
        # 注：大班课的布局(layout)只有三分屏
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoomType: Integer
        # @param EndDelayTime: 拖堂时间：单位分钟，0为不限制(默认值), -1为不能拖堂，大于0为拖堂的时间，最大值120分钟
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndDelayTime: Integer
        # @param LiveType: 直播类型：0 常规（默认）1 伪直播
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LiveType: Integer
        # @param RecordLiveUrl: 伪直播回放链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordLiveUrl: String
        # @param EnableAutoStart: 是否自动开始上课：0 不自动上课（默认） 1 自动上课 live_type=1的时候有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableAutoStart: Integer
        # @param RecordBackground: 录制文件背景图片，支持png、jpg、jpeg、bmp格式，暂不支持透明通道
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordBackground: String
        # @param RecordScene: 录制自定义场景，仅recordlayout=9的时候此参数有效,数据内容为用户自定义场景参数，数据格式为json键值对方式，其中键值对的value为string类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordScene: String
        # @param RecordLang: 录制自定义语言，仅recordlayout=9的时候此参数有效
        # @type RecordLang: String

        attr_accessor :Name, :RoomId, :Status, :StartTime, :EndTime, :RealStartTime, :RealEndTime, :Resolution, :MaxRTCMember, :ReplayUrl, :RecordUrl, :MaxMicNumber, :EnableDirectControl, :InteractionMode, :VideoOrientation, :IsGradingRequiredPostClass, :RoomType, :EndDelayTime, :LiveType, :RecordLiveUrl, :EnableAutoStart, :RecordBackground, :RecordScene, :RecordLang

        def initialize(name=nil, roomid=nil, status=nil, starttime=nil, endtime=nil, realstarttime=nil, realendtime=nil, resolution=nil, maxrtcmember=nil, replayurl=nil, recordurl=nil, maxmicnumber=nil, enabledirectcontrol=nil, interactionmode=nil, videoorientation=nil, isgradingrequiredpostclass=nil, roomtype=nil, enddelaytime=nil, livetype=nil, recordliveurl=nil, enableautostart=nil, recordbackground=nil, recordscene=nil, recordlang=nil)
          @Name = name
          @RoomId = roomid
          @Status = status
          @StartTime = starttime
          @EndTime = endtime
          @RealStartTime = realstarttime
          @RealEndTime = realendtime
          @Resolution = resolution
          @MaxRTCMember = maxrtcmember
          @ReplayUrl = replayurl
          @RecordUrl = recordurl
          @MaxMicNumber = maxmicnumber
          @EnableDirectControl = enabledirectcontrol
          @InteractionMode = interactionmode
          @VideoOrientation = videoorientation
          @IsGradingRequiredPostClass = isgradingrequiredpostclass
          @RoomType = roomtype
          @EndDelayTime = enddelaytime
          @LiveType = livetype
          @RecordLiveUrl = recordliveurl
          @EnableAutoStart = enableautostart
          @RecordBackground = recordbackground
          @RecordScene = recordscene
          @RecordLang = recordlang
        end

        def deserialize(params)
          @Name = params['Name']
          @RoomId = params['RoomId']
          @Status = params['Status']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @RealStartTime = params['RealStartTime']
          @RealEndTime = params['RealEndTime']
          @Resolution = params['Resolution']
          @MaxRTCMember = params['MaxRTCMember']
          @ReplayUrl = params['ReplayUrl']
          @RecordUrl = params['RecordUrl']
          @MaxMicNumber = params['MaxMicNumber']
          @EnableDirectControl = params['EnableDirectControl']
          @InteractionMode = params['InteractionMode']
          @VideoOrientation = params['VideoOrientation']
          @IsGradingRequiredPostClass = params['IsGradingRequiredPostClass']
          @RoomType = params['RoomType']
          @EndDelayTime = params['EndDelayTime']
          @LiveType = params['LiveType']
          @RecordLiveUrl = params['RecordLiveUrl']
          @EnableAutoStart = params['EnableAutoStart']
          @RecordBackground = params['RecordBackground']
          @RecordScene = params['RecordScene']
          @RecordLang = params['RecordLang']
        end
      end

      # 场景配置
      class SceneItem < TencentCloud::Common::AbstractModel
        # @param Scene: 场景名称
        # @type Scene: String
        # @param LogoUrl: logo地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogoUrl: String
        # @param HomeUrl: 主页地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HomeUrl: String
        # @param JSUrl: 自定义的js
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JSUrl: String
        # @param CSSUrl: 自定义的css
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CSSUrl: String

        attr_accessor :Scene, :LogoUrl, :HomeUrl, :JSUrl, :CSSUrl

        def initialize(scene=nil, logourl=nil, homeurl=nil, jsurl=nil, cssurl=nil)
          @Scene = scene
          @LogoUrl = logourl
          @HomeUrl = homeurl
          @JSUrl = jsurl
          @CSSUrl = cssurl
        end

        def deserialize(params)
          @Scene = params['Scene']
          @LogoUrl = params['LogoUrl']
          @HomeUrl = params['HomeUrl']
          @JSUrl = params['JSUrl']
          @CSSUrl = params['CSSUrl']
        end
      end

      # SendRoomNormalMessage请求参数结构体
      class SendRoomNormalMessageRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 低代码互动课堂的SdkAppId。
        # @type SdkAppId: Integer
        # @param RoomId: 房间ID。
        # @type RoomId: Integer
        # @param FromAccount: 管理员指定消息发送方账号（若需设置 FromAccount 信息，则该参数取值不能为空）
        # @type FromAccount: String
        # @param MsgBody: 自定义消息
        # @type MsgBody: Array
        # @param CloudCustomData: 消息自定义数据（云端保存，会发送到对端，程序卸载重装后还能拉取到）。
        # @type CloudCustomData: String
        # @param NickName: 昵称，当FromAccount没有在房间中，需要填写NickName，当FromAccount在房间中，填写NickName无意义
        # @type NickName: String

        attr_accessor :SdkAppId, :RoomId, :FromAccount, :MsgBody, :CloudCustomData, :NickName

        def initialize(sdkappid=nil, roomid=nil, fromaccount=nil, msgbody=nil, cloudcustomdata=nil, nickname=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @FromAccount = fromaccount
          @MsgBody = msgbody
          @CloudCustomData = cloudcustomdata
          @NickName = nickname
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          @FromAccount = params['FromAccount']
          unless params['MsgBody'].nil?
            @MsgBody = []
            params['MsgBody'].each do |i|
              msgbody_tmp = MsgBody.new
              msgbody_tmp.deserialize(i)
              @MsgBody << msgbody_tmp
            end
          end
          @CloudCustomData = params['CloudCustomData']
          @NickName = params['NickName']
        end
      end

      # SendRoomNormalMessage返回参数结构体
      class SendRoomNormalMessageResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # SendRoomNotificationMessage请求参数结构体
      class SendRoomNotificationMessageRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 低代码互动课堂的SdkAppId。
        # @type SdkAppId: Integer
        # @param RoomId: 房间ID。
        # @type RoomId: Integer
        # @param MsgContent: 消息。
        # @type MsgContent: String

        attr_accessor :SdkAppId, :RoomId, :MsgContent

        def initialize(sdkappid=nil, roomid=nil, msgcontent=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @MsgContent = msgcontent
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          @MsgContent = params['MsgContent']
        end
      end

      # SendRoomNotificationMessage返回参数结构体
      class SendRoomNotificationMessageResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # SetAppCustomContent请求参数结构体
      class SetAppCustomContentRequest < TencentCloud::Common::AbstractModel
        # @param CustomContent: 自定义内容。
        # @type CustomContent: Array
        # @param SdkAppId: 应用ID。
        # @type SdkAppId: Integer

        attr_accessor :CustomContent, :SdkAppId

        def initialize(customcontent=nil, sdkappid=nil)
          @CustomContent = customcontent
          @SdkAppId = sdkappid
        end

        def deserialize(params)
          unless params['CustomContent'].nil?
            @CustomContent = []
            params['CustomContent'].each do |i|
              appcustomcontent_tmp = AppCustomContent.new
              appcustomcontent_tmp.deserialize(i)
              @CustomContent << appcustomcontent_tmp
            end
          end
          @SdkAppId = params['SdkAppId']
        end
      end

      # SetAppCustomContent返回参数结构体
      class SetAppCustomContentResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # SetWatermark请求参数结构体
      class SetWatermarkRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 低代码互动课堂的SdkAppId。
        # @type SdkAppId: Integer
        # @param TeacherUrl: 老师视频区域的水印参数地址，设置为空字符串表示删除
        # @type TeacherUrl: String
        # @param BoardUrl: 白板视频区域的水印参数地址，设置为空字符串表示删除
        # @type BoardUrl: String
        # @param VideoUrl: 视频默认图片（在没有视频流的时候显示），设置为空字符串表示删除
        # @type VideoUrl: String
        # @param BoardW: 白板区域水印的宽度，取值:0-100，默认为0，表示区域X方向的百分比
        # @type BoardW: Float
        # @param BoardH: 白板区域水印的高度，取值:0-100，默认为0, 表示区域Y方向的百分比
        # @type BoardH: Float
        # @param BoardX: 白板区域水印X偏移, 取值:0-100, 表示区域X方向的百分比。比如50，则表示位于X轴中间
        # @type BoardX: Float
        # @param BoardY: 白板区域水印Y偏移, 取值:0-100, 表示区域X方向的百分比。比如50，则表示位于X轴中间
        # @type BoardY: Float
        # @param TeacherW: 老师视频区域水印的宽度，取值:0-100，默认为0，表示区域X方向的百分比
        # @type TeacherW: Float
        # @param TeacherH: 老师视频区域水印的高度，取值:0-100，默认为0, 表示区域Y方向的百分比
        # @type TeacherH: Float
        # @param TeacherX: 老师视频区域水印X偏移, 取值:0-100, 表示区域X方向的百分比。比如50，则表示位于X轴中间
        # @type TeacherX: Float
        # @param TeacherY: 老师视频区域水印Y偏移, 取值:0-100, 表示区域X方向的百分比。比如50，则表示位于X轴中间
        # @type TeacherY: Float
        # @param Text: 文字水印内容，设置为空字符串表示删除
        # @type Text: String
        # @param TextColor: 文字水印颜色
        # @type TextColor: String

        attr_accessor :SdkAppId, :TeacherUrl, :BoardUrl, :VideoUrl, :BoardW, :BoardH, :BoardX, :BoardY, :TeacherW, :TeacherH, :TeacherX, :TeacherY, :Text, :TextColor

        def initialize(sdkappid=nil, teacherurl=nil, boardurl=nil, videourl=nil, boardw=nil, boardh=nil, boardx=nil, boardy=nil, teacherw=nil, teacherh=nil, teacherx=nil, teachery=nil, text=nil, textcolor=nil)
          @SdkAppId = sdkappid
          @TeacherUrl = teacherurl
          @BoardUrl = boardurl
          @VideoUrl = videourl
          @BoardW = boardw
          @BoardH = boardh
          @BoardX = boardx
          @BoardY = boardy
          @TeacherW = teacherw
          @TeacherH = teacherh
          @TeacherX = teacherx
          @TeacherY = teachery
          @Text = text
          @TextColor = textcolor
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @TeacherUrl = params['TeacherUrl']
          @BoardUrl = params['BoardUrl']
          @VideoUrl = params['VideoUrl']
          @BoardW = params['BoardW']
          @BoardH = params['BoardH']
          @BoardX = params['BoardX']
          @BoardY = params['BoardY']
          @TeacherW = params['TeacherW']
          @TeacherH = params['TeacherH']
          @TeacherX = params['TeacherX']
          @TeacherY = params['TeacherY']
          @Text = params['Text']
          @TextColor = params['TextColor']
        end
      end

      # SetWatermark返回参数结构体
      class SetWatermarkResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # StartRoom请求参数结构体
      class StartRoomRequest < TencentCloud::Common::AbstractModel
        # @param RoomId: 房间ID。
        # @type RoomId: Integer

        attr_accessor :RoomId

        def initialize(roomid=nil)
          @RoomId = roomid
        end

        def deserialize(params)
          @RoomId = params['RoomId']
        end
      end

      # StartRoom返回参数结构体
      class StartRoomResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 文字水印配置
      class TextMarkConfig < TencentCloud::Common::AbstractModel
        # @param Text: 文字水印内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param Color: 文字水印颜色
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Color: String

        attr_accessor :Text, :Color

        def initialize(text=nil, color=nil)
          @Text = text
          @Color = color
        end

        def deserialize(params)
          @Text = params['Text']
          @Color = params['Color']
        end
      end

      # 文本消息
      class TextMsgContent < TencentCloud::Common::AbstractModel
        # @param Text: 文本消息。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # 转存配置
      class TransferItem < TencentCloud::Common::AbstractModel
        # @param State: 转存状态， 1正常 2停用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type State: Integer

        attr_accessor :State

        def initialize(state=nil)
          @State = state
        end

        def deserialize(params)
          @State = params['State']
        end
      end

      # UnbindDocumentFromRoom请求参数结构体
      class UnbindDocumentFromRoomRequest < TencentCloud::Common::AbstractModel
        # @param RoomId: 房间ID。
        # @type RoomId: Integer
        # @param DocumentId: 文档ID。
        # @type DocumentId: String

        attr_accessor :RoomId, :DocumentId

        def initialize(roomid=nil, documentid=nil)
          @RoomId = roomid
          @DocumentId = documentid
        end

        def deserialize(params)
          @RoomId = params['RoomId']
          @DocumentId = params['DocumentId']
        end
      end

      # UnbindDocumentFromRoom返回参数结构体
      class UnbindDocumentFromRoomResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 用户信息结构体
      class UserInfo < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用Id。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SdkAppId: Integer
        # @param UserId: 用户Id。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param Name: 用户昵称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Avatar: 用户头像Url。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Avatar: String
        # @param OriginId: 用户在客户系统的Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginId: String

        attr_accessor :SdkAppId, :UserId, :Name, :Avatar, :OriginId

        def initialize(sdkappid=nil, userid=nil, name=nil, avatar=nil, originid=nil)
          @SdkAppId = sdkappid
          @UserId = userid
          @Name = name
          @Avatar = avatar
          @OriginId = originid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @UserId = params['UserId']
          @Name = params['Name']
          @Avatar = params['Avatar']
          @OriginId = params['OriginId']
        end
      end

      # 水印配置
      class WatermarkConfig < TencentCloud::Common::AbstractModel
        # @param Url: 水印图片的url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param Width: 水印宽。为比例值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Width: Float
        # @param Height: 水印高。为比例值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Height: Float
        # @param LocationX: 水印X偏移, 取值:0-100, 表示区域X方向的百分比。比如50，则表示位于X轴中间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocationX: Float
        # @param LocationY: 水印Y偏移, 取值:0-100, 表示区域Y方向的百分比。比如50，则表示位于Y轴中间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocationY: Float

        attr_accessor :Url, :Width, :Height, :LocationX, :LocationY

        def initialize(url=nil, width=nil, height=nil, locationx=nil, locationy=nil)
          @Url = url
          @Width = width
          @Height = height
          @LocationX = locationx
          @LocationY = locationy
        end

        def deserialize(params)
          @Url = params['Url']
          @Width = params['Width']
          @Height = params['Height']
          @LocationX = params['LocationX']
          @LocationY = params['LocationY']
        end
      end

    end
  end
end

