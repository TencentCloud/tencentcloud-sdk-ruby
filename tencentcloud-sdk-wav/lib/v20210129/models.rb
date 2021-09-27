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
  module Wav
    module V20210129
      # 活动详情
      class ActivityDetail < TencentCloud::Common::AbstractModel
        # @param ActivityId: 活动id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActivityId: Integer
        # @param ActivityName: 活动名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActivityName: String
        # @param ActivityState: 活动状态，10:未开始状态、20:已开始（进行中）状态、30:已结束状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActivityState: Integer
        # @param ActivityType: 活动类型，100:留资活动
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActivityType: Integer
        # @param StartTime: 活动开始时间戳，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: Integer
        # @param EndTime: 活动结束时间戳，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: Integer
        # @param MainPhoto: 活动主图
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MainPhoto: String
        # @param PrivacyAgreementId: 协议编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivacyAgreementId: String
        # @param UpdateTime: 活动更新时间戳，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: Integer
        # @param ActivityDataList: 活动数据列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActivityDataList: String

        attr_accessor :ActivityId, :ActivityName, :ActivityState, :ActivityType, :StartTime, :EndTime, :MainPhoto, :PrivacyAgreementId, :UpdateTime, :ActivityDataList
        
        def initialize(activityid=nil, activityname=nil, activitystate=nil, activitytype=nil, starttime=nil, endtime=nil, mainphoto=nil, privacyagreementid=nil, updatetime=nil, activitydatalist=nil)
          @ActivityId = activityid
          @ActivityName = activityname
          @ActivityState = activitystate
          @ActivityType = activitytype
          @StartTime = starttime
          @EndTime = endtime
          @MainPhoto = mainphoto
          @PrivacyAgreementId = privacyagreementid
          @UpdateTime = updatetime
          @ActivityDataList = activitydatalist
        end

        def deserialize(params)
          @ActivityId = params['ActivityId']
          @ActivityName = params['ActivityName']
          @ActivityState = params['ActivityState']
          @ActivityType = params['ActivityType']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MainPhoto = params['MainPhoto']
          @PrivacyAgreementId = params['PrivacyAgreementId']
          @UpdateTime = params['UpdateTime']
          @ActivityDataList = params['ActivityDataList']
        end
      end

      # 活动参与详情
      class ActivityJoinDetail < TencentCloud::Common::AbstractModel
        # @param ActivityId: 活动id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActivityId: Integer
        # @param ActivityName: 活动名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActivityName: String
        # @param SalesName: 销售姓名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SalesName: String
        # @param SalesPhone: 销售电话
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SalesPhone: String
        # @param JoinId: 参与id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JoinId: Integer
        # @param LiveCodeId: 活码id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LiveCodeId: Integer
        # @param UserPhone: 用户电话
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserPhone: String
        # @param UserName: 用户姓名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param ActivityData: 活动数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActivityData: String
        # @param LeadId: 线索id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LeadId: Integer
        # @param JoinTime: 参与时间戳，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JoinTime: Integer
        # @param Duplicate: 线索是否是重复创建， 0 ：新建、 1：合并、 2：重复， 默认为0
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duplicate: Integer
        # @param DuplicateLeadId: 重复线索id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DuplicateLeadId: Integer
        # @param JoinState: 是否为参与多次活动， 1：参与一次、2、参与多次，默认为0
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JoinState: Integer
        # @param CreateTime: 创建时间戳，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间戳，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: Integer

        attr_accessor :ActivityId, :ActivityName, :SalesName, :SalesPhone, :JoinId, :LiveCodeId, :UserPhone, :UserName, :ActivityData, :LeadId, :JoinTime, :Duplicate, :DuplicateLeadId, :JoinState, :CreateTime, :UpdateTime
        
        def initialize(activityid=nil, activityname=nil, salesname=nil, salesphone=nil, joinid=nil, livecodeid=nil, userphone=nil, username=nil, activitydata=nil, leadid=nil, jointime=nil, duplicate=nil, duplicateleadid=nil, joinstate=nil, createtime=nil, updatetime=nil)
          @ActivityId = activityid
          @ActivityName = activityname
          @SalesName = salesname
          @SalesPhone = salesphone
          @JoinId = joinid
          @LiveCodeId = livecodeid
          @UserPhone = userphone
          @UserName = username
          @ActivityData = activitydata
          @LeadId = leadid
          @JoinTime = jointime
          @Duplicate = duplicate
          @DuplicateLeadId = duplicateleadid
          @JoinState = joinstate
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @ActivityId = params['ActivityId']
          @ActivityName = params['ActivityName']
          @SalesName = params['SalesName']
          @SalesPhone = params['SalesPhone']
          @JoinId = params['JoinId']
          @LiveCodeId = params['LiveCodeId']
          @UserPhone = params['UserPhone']
          @UserName = params['UserName']
          @ActivityData = params['ActivityData']
          @LeadId = params['LeadId']
          @JoinTime = params['JoinTime']
          @Duplicate = params['Duplicate']
          @DuplicateLeadId = params['DuplicateLeadId']
          @JoinState = params['JoinState']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 渠道活码详情
      class ChannelCodeInnerDetail < TencentCloud::Common::AbstractModel
        # @param Id: 渠道活码id
        # @type Id: Integer
        # @param Type: 欢迎语类型，0：普通欢迎语、1:渠道欢迎语
        # @type Type: Integer
        # @param Source: 渠道来源
        # @type Source: String
        # @param SourceName: 渠道来源名称
        # @type SourceName: String
        # @param Name: 二维码名称
        # @type Name: String
        # @param UseUserIdList: 使用成员用户id集
        # @type UseUserIdList: Array
        # @param UseUserOpenIdList: 使用成员企微账号id集
        # @type UseUserOpenIdList: Array
        # @param TagList: 标签
        # @type TagList: Array
        # @param SkipVerify: 自动通过好友，0：开启、1：关闭，默认0开启
        # @type SkipVerify: Integer
        # @param Friends: 添加好友人数
        # @type Friends: Integer
        # @param Remark: 备注
        # @type Remark: String
        # @param MsgId: 欢迎语id（通过欢迎语新增返回的id）
        # @type MsgId: Integer
        # @param ConfigId: 联系我config_id
        # @type ConfigId: String
        # @param QrCodeUrl: 联系我二维码地址
        # @type QrCodeUrl: String
        # @param RecStatus: 记录状态， 0：有效、1：无效
        # @type RecStatus: Integer
        # @param AppId: 应用ID
        # @type AppId: String

        attr_accessor :Id, :Type, :Source, :SourceName, :Name, :UseUserIdList, :UseUserOpenIdList, :TagList, :SkipVerify, :Friends, :Remark, :MsgId, :ConfigId, :QrCodeUrl, :RecStatus, :AppId
        
        def initialize(id=nil, type=nil, source=nil, sourcename=nil, name=nil, useuseridlist=nil, useuseropenidlist=nil, taglist=nil, skipverify=nil, friends=nil, remark=nil, msgid=nil, configid=nil, qrcodeurl=nil, recstatus=nil, appid=nil)
          @Id = id
          @Type = type
          @Source = source
          @SourceName = sourcename
          @Name = name
          @UseUserIdList = useuseridlist
          @UseUserOpenIdList = useuseropenidlist
          @TagList = taglist
          @SkipVerify = skipverify
          @Friends = friends
          @Remark = remark
          @MsgId = msgid
          @ConfigId = configid
          @QrCodeUrl = qrcodeurl
          @RecStatus = recstatus
          @AppId = appid
        end

        def deserialize(params)
          @Id = params['Id']
          @Type = params['Type']
          @Source = params['Source']
          @SourceName = params['SourceName']
          @Name = params['Name']
          @UseUserIdList = params['UseUserIdList']
          @UseUserOpenIdList = params['UseUserOpenIdList']
          unless params['TagList'].nil?
            @TagList = []
            params['TagList'].each do |i|
              wecomtagdetail_tmp = WeComTagDetail.new
              wecomtagdetail_tmp.deserialize(i)
              @TagList << wecomtagdetail_tmp
            end
          end
          @SkipVerify = params['SkipVerify']
          @Friends = params['Friends']
          @Remark = params['Remark']
          @MsgId = params['MsgId']
          @ConfigId = params['ConfigId']
          @QrCodeUrl = params['QrCodeUrl']
          @RecStatus = params['RecStatus']
          @AppId = params['AppId']
        end
      end

      # 会话存档数据详情
      class ChatArchivingDetail < TencentCloud::Common::AbstractModel
        # @param MsgId: 消息id
        # @type MsgId: String
        # @param Action: 动作名称，switch表示切换企微账号，send表示企微普通消息
        # @type Action: String
        # @param MsgType: 消息类型，当Action != "switch"时存在，例如video, text, voice 等，和企微开放文档一一对应
        # https://open.work.weixin.qq.com/api/doc/90000/90135/91774
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgType: String
        # @param From: 消息发送人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type From: String
        # @param ToList: 消息接收人列表，注意接收人可能只有一个
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ToList: Array
        # @param RoomId: 如果是群消息，则不为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoomId: String
        # @param MsgTime: 消息发送的时间戳，单位为秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgTime: Integer
        # @param Video: MsgType=video时的消息体，忽略此字段，见BodyJson字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Video: :class:`Tencentcloud::Wav.v20210129.models.ChatArchivingMsgTypeVideo`
        # @param BodyJson: 根据MsgType的不同取值，解析内容不同，参考：https://open.work.weixin.qq.com/api/doc/90000/90135/91774
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BodyJson: String

        attr_accessor :MsgId, :Action, :MsgType, :From, :ToList, :RoomId, :MsgTime, :Video, :BodyJson
        
        def initialize(msgid=nil, action=nil, msgtype=nil, from=nil, tolist=nil, roomid=nil, msgtime=nil, video=nil, bodyjson=nil)
          @MsgId = msgid
          @Action = action
          @MsgType = msgtype
          @From = from
          @ToList = tolist
          @RoomId = roomid
          @MsgTime = msgtime
          @Video = video
          @BodyJson = bodyjson
        end

        def deserialize(params)
          @MsgId = params['MsgId']
          @Action = params['Action']
          @MsgType = params['MsgType']
          @From = params['From']
          @ToList = params['ToList']
          @RoomId = params['RoomId']
          @MsgTime = params['MsgTime']
          unless params['Video'].nil?
            @Video = ChatArchivingMsgTypeVideo.new
            @Video.deserialize(params['Video'])
          end
          @BodyJson = params['BodyJson']
        end
      end

      # 会话存档的视频消息类型
      class ChatArchivingMsgTypeVideo < TencentCloud::Common::AbstractModel
        # @param PlayLength: 视频时长，单位秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlayLength: Integer
        # @param FileSize: 文件大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileSize: Integer
        # @param CosKey: 视频资源对象Cos下载地址
        # @type CosKey: String

        attr_accessor :PlayLength, :FileSize, :CosKey
        
        def initialize(playlength=nil, filesize=nil, coskey=nil)
          @PlayLength = playlength
          @FileSize = filesize
          @CosKey = coskey
        end

        def deserialize(params)
          @PlayLength = params['PlayLength']
          @FileSize = params['FileSize']
          @CosKey = params['CosKey']
        end
      end

      # CreateChannelCode请求参数结构体
      class CreateChannelCodeRequest < TencentCloud::Common::AbstractModel
        # @param Type: 欢迎语类型:0普通欢迎语,1渠道欢迎语
        # @type Type: Integer
        # @param UseUserId: 使用成员用户id集
        # @type UseUserId: Array
        # @param UseUserOpenId: 使用成员企微账号id集
        # @type UseUserOpenId: Array
        # @param AppIds: 应用ID,字典表中的APP_TYPE值,多个已逗号分隔
        # @type AppIds: String
        # @param Source: 渠道来源
        # @type Source: String
        # @param SourceName: 渠道来源名称
        # @type SourceName: String
        # @param Name: 二维码名称
        # @type Name: String
        # @param Tag: 标签
        # @type Tag: Array
        # @param SkipVerify: 自动通过好友：0开启 1关闭, 默认开启
        # @type SkipVerify: Integer
        # @param MsgId: 欢迎语id（通过欢迎语新增返回的id）
        # @type MsgId: Integer
        # @param Remark: 备注
        # @type Remark: String
        # @param SourceType: 渠道类型 0 未知 1 公域 2私域
        # @type SourceType: Integer

        attr_accessor :Type, :UseUserId, :UseUserOpenId, :AppIds, :Source, :SourceName, :Name, :Tag, :SkipVerify, :MsgId, :Remark, :SourceType
        
        def initialize(type=nil, useuserid=nil, useuseropenid=nil, appids=nil, source=nil, sourcename=nil, name=nil, tag=nil, skipverify=nil, msgid=nil, remark=nil, sourcetype=nil)
          @Type = type
          @UseUserId = useuserid
          @UseUserOpenId = useuseropenid
          @AppIds = appids
          @Source = source
          @SourceName = sourcename
          @Name = name
          @Tag = tag
          @SkipVerify = skipverify
          @MsgId = msgid
          @Remark = remark
          @SourceType = sourcetype
        end

        def deserialize(params)
          @Type = params['Type']
          @UseUserId = params['UseUserId']
          @UseUserOpenId = params['UseUserOpenId']
          @AppIds = params['AppIds']
          @Source = params['Source']
          @SourceName = params['SourceName']
          @Name = params['Name']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              wecomtagdetail_tmp = WeComTagDetail.new
              wecomtagdetail_tmp.deserialize(i)
              @Tag << wecomtagdetail_tmp
            end
          end
          @SkipVerify = params['SkipVerify']
          @MsgId = params['MsgId']
          @Remark = params['Remark']
          @SourceType = params['SourceType']
        end
      end

      # CreateChannelCode返回参数结构体
      class CreateChannelCodeResponse < TencentCloud::Common::AbstractModel
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

      # CreateCorpTag请求参数结构体
      class CreateCorpTagRequest < TencentCloud::Common::AbstractModel
        # @param GroupName: 标签组名称，最长为15个字符
        # @type GroupName: String
        # @param Tags: 标签信息数组
        # @type Tags: Array
        # @param Sort: 标签组次序值。sort值大的排序靠前。有效的值范围是[0, 2^32)
        # @type Sort: Integer

        attr_accessor :GroupName, :Tags, :Sort
        
        def initialize(groupname=nil, tags=nil, sort=nil)
          @GroupName = groupname
          @Tags = tags
          @Sort = sort
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @Sort = params['Sort']
        end
      end

      # CreateCorpTag返回参数结构体
      class CreateCorpTagResponse < TencentCloud::Common::AbstractModel
        # @param TagGroup: 标签组信息
        # @type TagGroup: :class:`Tencentcloud::Wav.v20210129.models.TagGroup`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TagGroup, :RequestId
        
        def initialize(taggroup=nil, requestid=nil)
          @TagGroup = taggroup
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TagGroup'].nil?
            @TagGroup = TagGroup.new
            @TagGroup.deserialize(params['TagGroup'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 客户信息
      class ExternalContact < TencentCloud::Common::AbstractModel
        # @param ExternalUserId: 外部联系人的userId
        # @type ExternalUserId: String
        # @param Gender: 外部联系人性别 0-未知 1-男性 2-女性
        # @type Gender: Integer
        # @param Name: 外部联系人的名称
        # @type Name: String
        # @param Type: 外部联系人的类型，1表示该外部联系人是微信用户，2表示该外部联系人是企业微信用户
        # @type Type: Integer
        # @param UnionId: 外部联系人在微信开放平台的唯一身份标识（微信unionid），通过此字段企业可将外部联系人与公众号/小程序用户关联起来。仅当联系人类型是微信用户，且企业或第三方服务商绑定了微信开发者ID有此字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnionId: String
        # @param Phone: 外部联系人联系电话
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Phone: String

        attr_accessor :ExternalUserId, :Gender, :Name, :Type, :UnionId, :Phone
        
        def initialize(externaluserid=nil, gender=nil, name=nil, type=nil, unionid=nil, phone=nil)
          @ExternalUserId = externaluserid
          @Gender = gender
          @Name = name
          @Type = type
          @UnionId = unionid
          @Phone = phone
        end

        def deserialize(params)
          @ExternalUserId = params['ExternalUserId']
          @Gender = params['Gender']
          @Name = params['Name']
          @Type = params['Type']
          @UnionId = params['UnionId']
          @Phone = params['Phone']
        end
      end

      # 列部联系人简短信息
      class ExternalContactSimpleInfo < TencentCloud::Common::AbstractModel
        # @param ExternalUserId: 外部联系人的userId
        # @type ExternalUserId: String
        # @param UserId: 添加了此外部联系人的企业成员userId
        # @type UserId: String
        # @param SalesName: 添加了此外部联系人的企业成员的姓名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SalesName: String
        # @param DepartmentIdList: 添加了此外部联系人的企业成员的归属部门id列表
        # @type DepartmentIdList: Array

        attr_accessor :ExternalUserId, :UserId, :SalesName, :DepartmentIdList
        
        def initialize(externaluserid=nil, userid=nil, salesname=nil, departmentidlist=nil)
          @ExternalUserId = externaluserid
          @UserId = userid
          @SalesName = salesname
          @DepartmentIdList = departmentidlist
        end

        def deserialize(params)
          @ExternalUserId = params['ExternalUserId']
          @UserId = params['UserId']
          @SalesName = params['SalesName']
          @DepartmentIdList = params['DepartmentIdList']
        end
      end

      # 外部联系人标签
      class ExternalContactTag < TencentCloud::Common::AbstractModel
        # @param GroupName: 该成员添加此外部联系人所打标签的分组名称（标签功能需要企业微信升级到2.7.5及以上版本）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param TagName: 该成员添加此外部联系人所打标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagName: String
        # @param Type: 该成员添加此外部联系人所打标签类型, 1-企业设置, 2-用户自定义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param TagId: 该成员添加此外部联系人所打企业标签的id，仅企业设置（type为1）的标签返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagId: String

        attr_accessor :GroupName, :TagName, :Type, :TagId
        
        def initialize(groupname=nil, tagname=nil, type=nil, tagid=nil)
          @GroupName = groupname
          @TagName = tagname
          @Type = type
          @TagId = tagid
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @TagName = params['TagName']
          @Type = params['Type']
          @TagId = params['TagId']
        end
      end

      # 外部联系人映射信息
      class ExternalUserMappingInfo < TencentCloud::Common::AbstractModel
        # @param CorpExternalUserId: 企业主体对应的外部联系人userId
        # @type CorpExternalUserId: String
        # @param ExternalUserId: 乐销车应用主体对应的外部联系人, 当不存在好友关系时，该字段值为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalUserId: String

        attr_accessor :CorpExternalUserId, :ExternalUserId
        
        def initialize(corpexternaluserid=nil, externaluserid=nil)
          @CorpExternalUserId = corpexternaluserid
          @ExternalUserId = externaluserid
        end

        def deserialize(params)
          @CorpExternalUserId = params['CorpExternalUserId']
          @ExternalUserId = params['ExternalUserId']
        end
      end

      # 添加了此外部联系人的企业成员信息
      class FollowUser < TencentCloud::Common::AbstractModel
        # @param UserId: 添加了此外部联系人的企业成员userid
        # @type UserId: String
        # @param Remark: 该成员对此外部联系人的备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param Description: 该成员对此外部联系人的描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CreateTime: 该成员添加此外部联系人的时间戳，单位为秒
        # @type CreateTime: Integer
        # @param AddWay: 该成员添加此客户的来源，具体含义详见<a href="https://work.weixin.qq.com/api/doc/90000/90135/92114#%E6%9D%A5%E6%BA%90%E5%AE%9A%E4%B9%89">来源定义</a>
        # @type AddWay: Integer
        # @param OperUserId: 发起添加的userid，如果成员主动添加，为成员的userid；如果是客户主动添加，则为客户的外部联系人userid；如果是内部成员共享/管理员分配，则为对应的成员/管理员userid
        # @type OperUserId: String
        # @param Tags: 该成员添加此外部联系人所打标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :UserId, :Remark, :Description, :CreateTime, :AddWay, :OperUserId, :Tags
        
        def initialize(userid=nil, remark=nil, description=nil, createtime=nil, addway=nil, operuserid=nil, tags=nil)
          @UserId = userid
          @Remark = remark
          @Description = description
          @CreateTime = createtime
          @AddWay = addway
          @OperUserId = operuserid
          @Tags = tags
        end

        def deserialize(params)
          @UserId = params['UserId']
          @Remark = params['Remark']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @AddWay = params['AddWay']
          @OperUserId = params['OperUserId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              externalcontacttag_tmp = ExternalContactTag.new
              externalcontacttag_tmp.deserialize(i)
              @Tags << externalcontacttag_tmp
            end
          end
        end
      end

      # license相关信息
      class LicenseInfo < TencentCloud::Common::AbstractModel
        # @param License: license编号
        # @type License: String
        # @param LicenseEdition: license版本；1-基础版，2-标准版，3-增值版
        # @type LicenseEdition: Integer
        # @param ResourceStartTime: 生效开始时间, 格式yyyy-MM-dd HH:mm:ss
        # @type ResourceStartTime: String
        # @param ResourceEndTime: 生效结束时间, 格式yyyy-MM-dd HH:mm:ss
        # @type ResourceEndTime: String
        # @param IsolationDeadline: 隔离截止时间, 格式yyyy-MM-dd HH:mm:ss
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsolationDeadline: String
        # @param DestroyTime: 资源计划销毁时间, 格式yyyy-MM-dd HH:mm:ss
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DestroyTime: String
        # @param Status: 资源状态，1.正常，2.隔离，3.销毁
        # @type Status: Integer
        # @param Extra: 扩展信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String

        attr_accessor :License, :LicenseEdition, :ResourceStartTime, :ResourceEndTime, :IsolationDeadline, :DestroyTime, :Status, :Extra
        
        def initialize(license=nil, licenseedition=nil, resourcestarttime=nil, resourceendtime=nil, isolationdeadline=nil, destroytime=nil, status=nil, extra=nil)
          @License = license
          @LicenseEdition = licenseedition
          @ResourceStartTime = resourcestarttime
          @ResourceEndTime = resourceendtime
          @IsolationDeadline = isolationdeadline
          @DestroyTime = destroytime
          @Status = status
          @Extra = extra
        end

        def deserialize(params)
          @License = params['License']
          @LicenseEdition = params['LicenseEdition']
          @ResourceStartTime = params['ResourceStartTime']
          @ResourceEndTime = params['ResourceEndTime']
          @IsolationDeadline = params['IsolationDeadline']
          @DestroyTime = params['DestroyTime']
          @Status = params['Status']
          @Extra = params['Extra']
        end
      end

      # 活动活码详情
      class LiveCodeDetail < TencentCloud::Common::AbstractModel
        # @param LiveCodeId: 活码id
        # @type LiveCodeId: Integer
        # @param LiveCodeName: 活码名称
        # @type LiveCodeName: String
        # @param ShortChainAddress: 短链url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShortChainAddress: String
        # @param LiveCodePreview: 活码二维码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LiveCodePreview: String
        # @param ActivityId: 活动id
        # @type ActivityId: Integer
        # @param ActivityName: 活动名称
        # @type ActivityName: String
        # @param LiveCodeState: 活码状态，-1：删除，0：启用，1禁用，默认为0
        # @type LiveCodeState: Integer
        # @param LiveCodeData: 活码参数，每个活码参数都是不一样的， 这个的值对应的是字符串json类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LiveCodeData: String
        # @param CreateTime: 创建时间戳，单位为秒
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间戳，单位为秒
        # @type UpdateTime: Integer

        attr_accessor :LiveCodeId, :LiveCodeName, :ShortChainAddress, :LiveCodePreview, :ActivityId, :ActivityName, :LiveCodeState, :LiveCodeData, :CreateTime, :UpdateTime
        
        def initialize(livecodeid=nil, livecodename=nil, shortchainaddress=nil, livecodepreview=nil, activityid=nil, activityname=nil, livecodestate=nil, livecodedata=nil, createtime=nil, updatetime=nil)
          @LiveCodeId = livecodeid
          @LiveCodeName = livecodename
          @ShortChainAddress = shortchainaddress
          @LiveCodePreview = livecodepreview
          @ActivityId = activityid
          @ActivityName = activityname
          @LiveCodeState = livecodestate
          @LiveCodeData = livecodedata
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @LiveCodeId = params['LiveCodeId']
          @LiveCodeName = params['LiveCodeName']
          @ShortChainAddress = params['ShortChainAddress']
          @LiveCodePreview = params['LiveCodePreview']
          @ActivityId = params['ActivityId']
          @ActivityName = params['ActivityName']
          @LiveCodeState = params['LiveCodeState']
          @LiveCodeData = params['LiveCodeData']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 小程序码信息
      class MiniAppCodeInfo < TencentCloud::Common::AbstractModel
        # @param Id: 主键id
        # @type Id: Integer
        # @param MiniAppName: 小程序名称
        # @type MiniAppName: String
        # @param MiniAppLogo: 小程序logo
        # @type MiniAppLogo: String
        # @param MiniAdminUrl: 小程序管理端地址
        # @type MiniAdminUrl: String
        # @param State: 状态：0正常，1删除
        # @type State: Integer
        # @param CreateTime: 创建时间戳，单位为秒
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间戳，单位为秒
        # @type UpdateTime: Integer

        attr_accessor :Id, :MiniAppName, :MiniAppLogo, :MiniAdminUrl, :State, :CreateTime, :UpdateTime
        
        def initialize(id=nil, miniappname=nil, miniapplogo=nil, miniadminurl=nil, state=nil, createtime=nil, updatetime=nil)
          @Id = id
          @MiniAppName = miniappname
          @MiniAppLogo = miniapplogo
          @MiniAdminUrl = miniadminurl
          @State = state
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Id = params['Id']
          @MiniAppName = params['MiniAppName']
          @MiniAppLogo = params['MiniAppLogo']
          @MiniAdminUrl = params['MiniAdminUrl']
          @State = params['State']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # QueryActivityJoinList请求参数结构体
      class QueryActivityJoinListRequest < TencentCloud::Common::AbstractModel
        # @param ActivityId: 活动id
        # @type ActivityId: Integer
        # @param Cursor: 分页游标，对应结果返回的NextCursor,首次请求保持为空
        # @type Cursor: String
        # @param Limit: 单页数据限制
        # @type Limit: Integer

        attr_accessor :ActivityId, :Cursor, :Limit
        
        def initialize(activityid=nil, cursor=nil, limit=nil)
          @ActivityId = activityid
          @Cursor = cursor
          @Limit = limit
        end

        def deserialize(params)
          @ActivityId = params['ActivityId']
          @Cursor = params['Cursor']
          @Limit = params['Limit']
        end
      end

      # QueryActivityJoinList返回参数结构体
      class QueryActivityJoinListResponse < TencentCloud::Common::AbstractModel
        # @param NextCursor: 分页游标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextCursor: String
        # @param PageData: 活码列表响应参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageData: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NextCursor, :PageData, :RequestId
        
        def initialize(nextcursor=nil, pagedata=nil, requestid=nil)
          @NextCursor = nextcursor
          @PageData = pagedata
          @RequestId = requestid
        end

        def deserialize(params)
          @NextCursor = params['NextCursor']
          unless params['PageData'].nil?
            @PageData = []
            params['PageData'].each do |i|
              activityjoindetail_tmp = ActivityJoinDetail.new
              activityjoindetail_tmp.deserialize(i)
              @PageData << activityjoindetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryActivityList请求参数结构体
      class QueryActivityListRequest < TencentCloud::Common::AbstractModel
        # @param Cursor: 分页游标，对应结果返回的NextCursor,首次请求保持为空
        # @type Cursor: String
        # @param Limit: 单页数据限制
        # @type Limit: Integer

        attr_accessor :Cursor, :Limit
        
        def initialize(cursor=nil, limit=nil)
          @Cursor = cursor
          @Limit = limit
        end

        def deserialize(params)
          @Cursor = params['Cursor']
          @Limit = params['Limit']
        end
      end

      # QueryActivityList返回参数结构体
      class QueryActivityListResponse < TencentCloud::Common::AbstractModel
        # @param NextCursor: 分页游标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextCursor: String
        # @param PageData: 活码列表响应参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageData: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NextCursor, :PageData, :RequestId
        
        def initialize(nextcursor=nil, pagedata=nil, requestid=nil)
          @NextCursor = nextcursor
          @PageData = pagedata
          @RequestId = requestid
        end

        def deserialize(params)
          @NextCursor = params['NextCursor']
          unless params['PageData'].nil?
            @PageData = []
            params['PageData'].each do |i|
              activitydetail_tmp = ActivityDetail.new
              activitydetail_tmp.deserialize(i)
              @PageData << activitydetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryActivityLiveCodeList请求参数结构体
      class QueryActivityLiveCodeListRequest < TencentCloud::Common::AbstractModel
        # @param Cursor: 用于分页查询的游标，字符串类型，由上一次调用返回，首次调用可不填
        # @type Cursor: String
        # @param Limit: 返回的最大记录数，整型，最大值100，默认值50，超过最大值时取最大值
        # @type Limit: Integer

        attr_accessor :Cursor, :Limit
        
        def initialize(cursor=nil, limit=nil)
          @Cursor = cursor
          @Limit = limit
        end

        def deserialize(params)
          @Cursor = params['Cursor']
          @Limit = params['Limit']
        end
      end

      # QueryActivityLiveCodeList返回参数结构体
      class QueryActivityLiveCodeListResponse < TencentCloud::Common::AbstractModel
        # @param NextCursor: 分页游标，再下次请求时填写以获取之后分页的记录，如果已经没有更多的数据则返回空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextCursor: String
        # @param PageData: 活码列表响应参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageData: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NextCursor, :PageData, :RequestId
        
        def initialize(nextcursor=nil, pagedata=nil, requestid=nil)
          @NextCursor = nextcursor
          @PageData = pagedata
          @RequestId = requestid
        end

        def deserialize(params)
          @NextCursor = params['NextCursor']
          unless params['PageData'].nil?
            @PageData = []
            params['PageData'].each do |i|
              livecodedetail_tmp = LiveCodeDetail.new
              livecodedetail_tmp.deserialize(i)
              @PageData << livecodedetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryChannelCodeList请求参数结构体
      class QueryChannelCodeListRequest < TencentCloud::Common::AbstractModel
        # @param Cursor: 用于分页查询的游标，字符串类型，由上一次调用返回，首次调用可不填
        # @type Cursor: String
        # @param Limit: 返回的最大记录数，整型，最大值100，默认值50，超过最大值时取最大值
        # @type Limit: Integer

        attr_accessor :Cursor, :Limit
        
        def initialize(cursor=nil, limit=nil)
          @Cursor = cursor
          @Limit = limit
        end

        def deserialize(params)
          @Cursor = params['Cursor']
          @Limit = params['Limit']
        end
      end

      # QueryChannelCodeList返回参数结构体
      class QueryChannelCodeListResponse < TencentCloud::Common::AbstractModel
        # @param NextCursor: 分页游标，再下次请求时填写以获取之后分页的记录，如果已经没有更多的数据则返回空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextCursor: String
        # @param PageData: 活码列表响应参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageData: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NextCursor, :PageData, :RequestId
        
        def initialize(nextcursor=nil, pagedata=nil, requestid=nil)
          @NextCursor = nextcursor
          @PageData = pagedata
          @RequestId = requestid
        end

        def deserialize(params)
          @NextCursor = params['NextCursor']
          unless params['PageData'].nil?
            @PageData = []
            params['PageData'].each do |i|
              channelcodeinnerdetail_tmp = ChannelCodeInnerDetail.new
              channelcodeinnerdetail_tmp.deserialize(i)
              @PageData << channelcodeinnerdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryChatArchivingList请求参数结构体
      class QueryChatArchivingListRequest < TencentCloud::Common::AbstractModel
        # @param Cursor: 用于分页查询的游标，字符串类型，由上一次调用返回，首次调用可不填
        # @type Cursor: String
        # @param Limit: 返回的最大记录数，整型，最大值100，默认值50，超过最大值时取最大值
        # @type Limit: Integer

        attr_accessor :Cursor, :Limit
        
        def initialize(cursor=nil, limit=nil)
          @Cursor = cursor
          @Limit = limit
        end

        def deserialize(params)
          @Cursor = params['Cursor']
          @Limit = params['Limit']
        end
      end

      # QueryChatArchivingList返回参数结构体
      class QueryChatArchivingListResponse < TencentCloud::Common::AbstractModel
        # @param NextCursor: 分页游标，再下次请求时填写以获取之后分页的记录，如果已经没有更多的数据则返回空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextCursor: String
        # @param PageData: 会话存档列表响应参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageData: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NextCursor, :PageData, :RequestId
        
        def initialize(nextcursor=nil, pagedata=nil, requestid=nil)
          @NextCursor = nextcursor
          @PageData = pagedata
          @RequestId = requestid
        end

        def deserialize(params)
          @NextCursor = params['NextCursor']
          unless params['PageData'].nil?
            @PageData = []
            params['PageData'].each do |i|
              chatarchivingdetail_tmp = ChatArchivingDetail.new
              chatarchivingdetail_tmp.deserialize(i)
              @PageData << chatarchivingdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryExternalContactDetail请求参数结构体
      class QueryExternalContactDetailRequest < TencentCloud::Common::AbstractModel
        # @param ExternalUserId: 外部联系人的userid，注意不是企业成员的帐号
        # @type ExternalUserId: String
        # @param Cursor: 用于分页查询的游标，字符串类型，由上一次调用返回，首次调用可不填。当客户在企业内的跟进人超过500人时需要使用cursor参数进行分页获取
        # @type Cursor: String
        # @param Limit: 当前接口Limit不需要传参， 保留Limit只是为了保持向后兼容性， Limit默认值为500，当返回结果超过500时， NextCursor才有返回值
        # @type Limit: Integer

        attr_accessor :ExternalUserId, :Cursor, :Limit
        
        def initialize(externaluserid=nil, cursor=nil, limit=nil)
          @ExternalUserId = externaluserid
          @Cursor = cursor
          @Limit = limit
        end

        def deserialize(params)
          @ExternalUserId = params['ExternalUserId']
          @Cursor = params['Cursor']
          @Limit = params['Limit']
        end
      end

      # QueryExternalContactDetail返回参数结构体
      class QueryExternalContactDetailResponse < TencentCloud::Common::AbstractModel
        # @param NextCursor: 分页游标，再下次请求时填写以获取之后分页的记录，如果已经没有更多的数据则返回空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextCursor: String
        # @param Customer: 客户信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Customer: :class:`Tencentcloud::Wav.v20210129.models.ExternalContact`
        # @param FollowUser: 添加了此外部联系人的企业成员信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FollowUser: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NextCursor, :Customer, :FollowUser, :RequestId
        
        def initialize(nextcursor=nil, customer=nil, followuser=nil, requestid=nil)
          @NextCursor = nextcursor
          @Customer = customer
          @FollowUser = followuser
          @RequestId = requestid
        end

        def deserialize(params)
          @NextCursor = params['NextCursor']
          unless params['Customer'].nil?
            @Customer = ExternalContact.new
            @Customer.deserialize(params['Customer'])
          end
          unless params['FollowUser'].nil?
            @FollowUser = []
            params['FollowUser'].each do |i|
              followuser_tmp = FollowUser.new
              followuser_tmp.deserialize(i)
              @FollowUser << followuser_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryExternalContactList请求参数结构体
      class QueryExternalContactListRequest < TencentCloud::Common::AbstractModel
        # @param Cursor: 用于分页查询的游标，字符串类型，由上一次调用返回，首次调用可不填
        # @type Cursor: String
        # @param Limit: 返回的最大记录数，整型，最大值100，默认值50，超过最大值时取最大值
        # @type Limit: Integer

        attr_accessor :Cursor, :Limit
        
        def initialize(cursor=nil, limit=nil)
          @Cursor = cursor
          @Limit = limit
        end

        def deserialize(params)
          @Cursor = params['Cursor']
          @Limit = params['Limit']
        end
      end

      # QueryExternalContactList返回参数结构体
      class QueryExternalContactListResponse < TencentCloud::Common::AbstractModel
        # @param PageData: 外部联系人信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageData: Array
        # @param NextCursor: 分页游标，再下次请求时填写以获取之后分页的记录，如果已经没有更多的数据则返回空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextCursor: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PageData, :NextCursor, :RequestId
        
        def initialize(pagedata=nil, nextcursor=nil, requestid=nil)
          @PageData = pagedata
          @NextCursor = nextcursor
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PageData'].nil?
            @PageData = []
            params['PageData'].each do |i|
              externalcontactsimpleinfo_tmp = ExternalContactSimpleInfo.new
              externalcontactsimpleinfo_tmp.deserialize(i)
              @PageData << externalcontactsimpleinfo_tmp
            end
          end
          @NextCursor = params['NextCursor']
          @RequestId = params['RequestId']
        end
      end

      # QueryExternalUserMappingInfo请求参数结构体
      class QueryExternalUserMappingInfoRequest < TencentCloud::Common::AbstractModel
        # @param CorpExternalUserIdList: 企业主体对应的外部联系人id列表，列表长度限制最大为50。
        # @type CorpExternalUserIdList: Array

        attr_accessor :CorpExternalUserIdList
        
        def initialize(corpexternaluseridlist=nil)
          @CorpExternalUserIdList = corpexternaluseridlist
        end

        def deserialize(params)
          @CorpExternalUserIdList = params['CorpExternalUserIdList']
        end
      end

      # QueryExternalUserMappingInfo返回参数结构体
      class QueryExternalUserMappingInfoResponse < TencentCloud::Common::AbstractModel
        # @param ExternalUserIdMapping: 外部联系人映射信息, 只返回映射成功的记录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalUserIdMapping: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ExternalUserIdMapping, :RequestId
        
        def initialize(externaluseridmapping=nil, requestid=nil)
          @ExternalUserIdMapping = externaluseridmapping
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ExternalUserIdMapping'].nil?
            @ExternalUserIdMapping = []
            params['ExternalUserIdMapping'].each do |i|
              externalusermappinginfo_tmp = ExternalUserMappingInfo.new
              externalusermappinginfo_tmp.deserialize(i)
              @ExternalUserIdMapping << externalusermappinginfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryLicenseInfo请求参数结构体
      class QueryLicenseInfoRequest < TencentCloud::Common::AbstractModel
        # @param License: license编号
        # @type License: String

        attr_accessor :License
        
        def initialize(license=nil)
          @License = license
        end

        def deserialize(params)
          @License = params['License']
        end
      end

      # QueryLicenseInfo返回参数结构体
      class QueryLicenseInfoResponse < TencentCloud::Common::AbstractModel
        # @param LicenseInfo: license响应信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LicenseInfo: :class:`Tencentcloud::Wav.v20210129.models.LicenseInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LicenseInfo, :RequestId
        
        def initialize(licenseinfo=nil, requestid=nil)
          @LicenseInfo = licenseinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LicenseInfo'].nil?
            @LicenseInfo = LicenseInfo.new
            @LicenseInfo.deserialize(params['LicenseInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryMiniAppCodeList请求参数结构体
      class QueryMiniAppCodeListRequest < TencentCloud::Common::AbstractModel
        # @param Cursor: 用于分页查询的游标，字符串类型，由上一次调用返回，首次调用可不填
        # @type Cursor: String
        # @param Limit: 返回的最大记录数，整型，最大值100，默认值50，超过最大值时取最大值
        # @type Limit: Integer

        attr_accessor :Cursor, :Limit
        
        def initialize(cursor=nil, limit=nil)
          @Cursor = cursor
          @Limit = limit
        end

        def deserialize(params)
          @Cursor = params['Cursor']
          @Limit = params['Limit']
        end
      end

      # QueryMiniAppCodeList返回参数结构体
      class QueryMiniAppCodeListResponse < TencentCloud::Common::AbstractModel
        # @param NextCursor: 分页游标，再下次请求时填写以获取之后分页的记录，如果已经没有更多的数据则返回空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextCursor: String
        # @param PageData: 小程序码列表响应数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageData: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NextCursor, :PageData, :RequestId
        
        def initialize(nextcursor=nil, pagedata=nil, requestid=nil)
          @NextCursor = nextcursor
          @PageData = pagedata
          @RequestId = requestid
        end

        def deserialize(params)
          @NextCursor = params['NextCursor']
          unless params['PageData'].nil?
            @PageData = []
            params['PageData'].each do |i|
              miniappcodeinfo_tmp = MiniAppCodeInfo.new
              miniappcodeinfo_tmp.deserialize(i)
              @PageData << miniappcodeinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 标签详细信息
      class TagDetailInfo < TencentCloud::Common::AbstractModel
        # @param TagName: 标签名称
        # @type TagName: String
        # @param BizTagId: 标签业务ID
        # @type BizTagId: String
        # @param TagId: 企微标签ID
        # @type TagId: String
        # @param Sort: 标签排序的次序值，sort值大的排序靠前。有效的值范围是[0, 2^32)
        # @type Sort: Integer
        # @param CreateTime: 标签创建时间,单位为秒
        # @type CreateTime: Integer

        attr_accessor :TagName, :BizTagId, :TagId, :Sort, :CreateTime
        
        def initialize(tagname=nil, biztagid=nil, tagid=nil, sort=nil, createtime=nil)
          @TagName = tagname
          @BizTagId = biztagid
          @TagId = tagid
          @Sort = sort
          @CreateTime = createtime
        end

        def deserialize(params)
          @TagName = params['TagName']
          @BizTagId = params['BizTagId']
          @TagId = params['TagId']
          @Sort = params['Sort']
          @CreateTime = params['CreateTime']
        end
      end

      # 标签组信息
      class TagGroup < TencentCloud::Common::AbstractModel
        # @param GroupId: 企微标签组id
        # @type GroupId: String
        # @param BizGroupId: 标签组业务id
        # @type BizGroupId: String
        # @param GroupName: 企微标签组名称，不能超过15个字符
        # @type GroupName: String
        # @param Sort: 标签组次序值。sort值大的排序靠前。有效的值范围是[0, 2^32)
        # @type Sort: Integer
        # @param CreateTime: 标签组创建时间,单位为秒
        # @type CreateTime: Integer
        # @param Tags: 标签组内的标签列表, 上限为20
        # @type Tags: Array

        attr_accessor :GroupId, :BizGroupId, :GroupName, :Sort, :CreateTime, :Tags
        
        def initialize(groupid=nil, bizgroupid=nil, groupname=nil, sort=nil, createtime=nil, tags=nil)
          @GroupId = groupid
          @BizGroupId = bizgroupid
          @GroupName = groupname
          @Sort = sort
          @CreateTime = createtime
          @Tags = tags
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @BizGroupId = params['BizGroupId']
          @GroupName = params['GroupName']
          @Sort = params['Sort']
          @CreateTime = params['CreateTime']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tagdetailinfo_tmp = TagDetailInfo.new
              tagdetailinfo_tmp.deserialize(i)
              @Tags << tagdetailinfo_tmp
            end
          end
        end
      end

      # 标签信息
      class TagInfo < TencentCloud::Common::AbstractModel
        # @param TagName: 标签名称, 最大长度限制15个字符
        # @type TagName: String
        # @param Sort: 标签组排序,值越大,排序越靠前
        # @type Sort: Integer

        attr_accessor :TagName, :Sort
        
        def initialize(tagname=nil, sort=nil)
          @TagName = tagname
          @Sort = sort
        end

        def deserialize(params)
          @TagName = params['TagName']
          @Sort = params['Sort']
        end
      end

      # 企微个人标签信息,渠道活码使用
      class WeComTagDetail < TencentCloud::Common::AbstractModel
        # @param GroupName: 标签分组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param BizGroupId: 标签分组业务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BizGroupId: String
        # @param TagName: 标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagName: String
        # @param TagId: 标签ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagId: String
        # @param BizTagId: 标签业务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BizTagId: String
        # @param Type: 标签分类，1：企业设置、2：用户自定义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param BizTagIdStr: 标签业务ID字符串格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BizTagIdStr: String

        attr_accessor :GroupName, :BizGroupId, :TagName, :TagId, :BizTagId, :Type, :BizTagIdStr
        
        def initialize(groupname=nil, bizgroupid=nil, tagname=nil, tagid=nil, biztagid=nil, type=nil, biztagidstr=nil)
          @GroupName = groupname
          @BizGroupId = bizgroupid
          @TagName = tagname
          @TagId = tagid
          @BizTagId = biztagid
          @Type = type
          @BizTagIdStr = biztagidstr
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @BizGroupId = params['BizGroupId']
          @TagName = params['TagName']
          @TagId = params['TagId']
          @BizTagId = params['BizTagId']
          @Type = params['Type']
          @BizTagIdStr = params['BizTagIdStr']
        end
      end

    end
  end
end

