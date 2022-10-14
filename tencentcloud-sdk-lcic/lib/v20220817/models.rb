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
      # 应用自定义内容
      class AppCustomContent < TencentCloud::Common::AbstractModel
        # @param Scene: 场景参数，一个应用下可以设置多个不同场景。
        # @type Scene: String
        # @param LogoUrl: logo地址。
        # @type LogoUrl: String
        # @param HomeUrl: 主页地址，可设置用于跳转。
        # @type HomeUrl: String
        # @param JsUrl: 自定义的js。
        # @type JsUrl: String
        # @param CssUrl: 自定义的css。
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
        # 0 无需转码（默认）
        # 1 需要转码的文档，ppt，pptx，pdf，doc，docx
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

        attr_accessor :SdkAppId, :DocumentUrl, :DocumentName, :Owner, :TranscodeType, :Permission, :DocumentType, :DocumentSize
        
        def initialize(sdkappid=nil, documenturl=nil, documentname=nil, owner=nil, transcodetype=nil, permission=nil, documenttype=nil, documentsize=nil)
          @SdkAppId = sdkappid
          @DocumentUrl = documenturl
          @DocumentName = documentname
          @Owner = owner
          @TranscodeType = transcodetype
          @Permission = permission
          @DocumentType = documenttype
          @DocumentSize = documentsize
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
        end
      end

      # CreateDocument返回参数结构体
      class CreateDocumentResponse < TencentCloud::Common::AbstractModel
        # @param DocumentId: 文档ID。
        # @type DocumentId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # CreateRoom请求参数结构体
      class CreateRoomRequest < TencentCloud::Common::AbstractModel
        # @param Name: 房间名称。
        # @type Name: String
        # @param StartTime: 预定的房间开始时间，unix时间戳。
        # @type StartTime: Integer
        # @param EndTime: 预定的房间结束时间，unix时间戳。
        # @type EndTime: Integer
        # @param SdkAppId: 低代码互动课堂的SdkAppId。
        # @type SdkAppId: Integer
        # @param Resolution: 分辨率。可以有如下取值：
        # 1 标清
        # 2 高清
        # 3 全高清
        # @type Resolution: Integer
        # @param MaxMicNumber: 最大连麦人数（不包括老师）。取值范围[0, 17)
        # @type MaxMicNumber: Integer
        # @param SubType: 房间子类型，可以有以下取值：
        # videodoc 文档+视频
        # video 纯视频
        # coteaching 双师
        # @type SubType: String
        # @param TeacherId: 老师ID。
        # @type TeacherId: String
        # @param AutoMic: 进入房间时是否自动连麦。可以有以下取值：
        # 0 不自动连麦（默认值）
        # 1 自动连麦
        # @type AutoMic: Integer
        # @param AudioQuality: 高音质模式。可以有以下取值：
        # 0 不开启高音质（默认值）
        # 1 开启高音质
        # @type AudioQuality: Integer
        # @param DisableRecord: 禁止录制。可以有以下取值：
        # 0 不禁止录制（默认值）
        # 1 禁止录制
        # @type DisableRecord: Integer
        # @param Assistants: 助教Id列表。
        # @type Assistants: Array
        # @param RecordLayout: 录制布局。
        # @type RecordLayout: Integer

        attr_accessor :Name, :StartTime, :EndTime, :SdkAppId, :Resolution, :MaxMicNumber, :SubType, :TeacherId, :AutoMic, :AudioQuality, :DisableRecord, :Assistants, :RecordLayout
        
        def initialize(name=nil, starttime=nil, endtime=nil, sdkappid=nil, resolution=nil, maxmicnumber=nil, subtype=nil, teacherid=nil, automic=nil, audioquality=nil, disablerecord=nil, assistants=nil, recordlayout=nil)
          @Name = name
          @StartTime = starttime
          @EndTime = endtime
          @SdkAppId = sdkappid
          @Resolution = resolution
          @MaxMicNumber = maxmicnumber
          @SubType = subtype
          @TeacherId = teacherid
          @AutoMic = automic
          @AudioQuality = audioquality
          @DisableRecord = disablerecord
          @Assistants = assistants
          @RecordLayout = recordlayout
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
          @AudioQuality = params['AudioQuality']
          @DisableRecord = params['DisableRecord']
          @Assistants = params['Assistants']
          @RecordLayout = params['RecordLayout']
        end
      end

      # CreateRoom返回参数结构体
      class CreateRoomResponse < TencentCloud::Common::AbstractModel
        # @param RoomId: 房间ID。
        # @type RoomId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # CreateSupervisor返回参数结构体
      class CreateSupervisorResponse < TencentCloud::Common::AbstractModel
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

      # DescribeRoom请求参数结构体
      class DescribeRoomRequest < TencentCloud::Common::AbstractModel
        # @param RoomId: 房间Id。
        # @type RoomId: Integer

        attr_accessor :RoomId
        
        def initialize(roomid=nil)
          @RoomId = roomid
        end

        def deserialize(params)
          @RoomId = params['RoomId']
        end
      end

      # DescribeRoom返回参数结构体
      class DescribeRoomResponse < TencentCloud::Common::AbstractModel
        # @param Name: 房间名称。
        # @type Name: String
        # @param StartTime: 预定的房间开始时间，unix时间戳。
        # @type StartTime: Integer
        # @param EndTime: 预定的房间结束时间，unix时间戳。
        # @type EndTime: Integer
        # @param TeacherId: 老师ID。
        # @type TeacherId: String
        # @param SdkAppId: 低代码互动课堂的SdkAppId。
        # @type SdkAppId: Integer
        # @param Resolution: 分辨率。可以有如下取值：
        # 1 标清
        # 2 高清
        # 3 全高清
        # @type Resolution: Integer
        # @param MaxMicNumber: 最大连麦人数（不包括老师）。取值范围[0, 17)
        # @type MaxMicNumber: Integer
        # @param AutoMic: 进入房间时是否自动连麦。可以有以下取值：
        # 0 不自动连麦（默认值）
        # 1 自动连麦
        # @type AutoMic: Integer
        # @param AudioQuality: 高音质模式。可以有以下取值：
        # 0 不开启高音质（默认值）
        # 1 开启高音质
        # @type AudioQuality: Integer
        # @param SubType: 房间子类型，可以有以下取值：
        # videodoc 文档+视频
        # video 纯视频
        # coteaching 双师
        # @type SubType: String
        # @param DisableRecord: 禁止录制。可以有以下取值：
        # 0 不禁止录制（默认值）
        # 1 禁止录制
        # @type DisableRecord: Integer
        # @param Assistants: 助教Id列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Assistants: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :StartTime, :EndTime, :TeacherId, :SdkAppId, :Resolution, :MaxMicNumber, :AutoMic, :AudioQuality, :SubType, :DisableRecord, :Assistants, :RequestId
        
        def initialize(name=nil, starttime=nil, endtime=nil, teacherid=nil, sdkappid=nil, resolution=nil, maxmicnumber=nil, automic=nil, audioquality=nil, subtype=nil, disablerecord=nil, assistants=nil, requestid=nil)
          @Name = name
          @StartTime = starttime
          @EndTime = endtime
          @TeacherId = teacherid
          @SdkAppId = sdkappid
          @Resolution = resolution
          @MaxMicNumber = maxmicnumber
          @AutoMic = automic
          @AudioQuality = audioquality
          @SubType = subtype
          @DisableRecord = disablerecord
          @Assistants = assistants
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @TeacherId = params['TeacherId']
          @SdkAppId = params['SdkAppId']
          @Resolution = params['Resolution']
          @MaxMicNumber = params['MaxMicNumber']
          @AutoMic = params['AutoMic']
          @AudioQuality = params['AudioQuality']
          @SubType = params['SubType']
          @DisableRecord = params['DisableRecord']
          @Assistants = params['Assistants']
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SdkAppId, :UserId, :Name, :Avatar, :RequestId
        
        def initialize(sdkappid=nil, userid=nil, name=nil, avatar=nil, requestid=nil)
          @SdkAppId = sdkappid
          @UserId = userid
          @Name = name
          @Avatar = avatar
          @RequestId = requestid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @UserId = params['UserId']
          @Name = params['Name']
          @Avatar = params['Avatar']
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param Token: 登录/注册成功后返回登录态token。有效期7天。
        # @type Token: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

    end
  end
end

