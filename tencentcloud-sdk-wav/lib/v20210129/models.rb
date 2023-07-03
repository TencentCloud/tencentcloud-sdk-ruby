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

      # 发生过到店的潜客到店信息
      class ArrivalInfo < TencentCloud::Common::AbstractModel
        # @param ClueId: 线索id
        # @type ClueId: Integer
        # @param CustomerId: 客户id
        # @type CustomerId: Integer
        # @param UserName: 客户姓名
        # @type UserName: String
        # @param Phone: 客户的手机号
        # @type Phone: String
        # @param FirstArrival: 是否首次到店，0否，1是
        # @type FirstArrival: Integer
        # @param ArrivalTime: 到店时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ArrivalTime: Integer
        # @param EventType: 发生事件
        # @type EventType: Integer
        # @param EventTypeName: 发生事件名称
        # @type EventTypeName: String
        # @param FollowRecord: 跟进记录
        # @type FollowRecord: String

        attr_accessor :ClueId, :CustomerId, :UserName, :Phone, :FirstArrival, :ArrivalTime, :EventType, :EventTypeName, :FollowRecord

        def initialize(clueid=nil, customerid=nil, username=nil, phone=nil, firstarrival=nil, arrivaltime=nil, eventtype=nil, eventtypename=nil, followrecord=nil)
          @ClueId = clueid
          @CustomerId = customerid
          @UserName = username
          @Phone = phone
          @FirstArrival = firstarrival
          @ArrivalTime = arrivaltime
          @EventType = eventtype
          @EventTypeName = eventtypename
          @FollowRecord = followrecord
        end

        def deserialize(params)
          @ClueId = params['ClueId']
          @CustomerId = params['CustomerId']
          @UserName = params['UserName']
          @Phone = params['Phone']
          @FirstArrival = params['FirstArrival']
          @ArrivalTime = params['ArrivalTime']
          @EventType = params['EventType']
          @EventTypeName = params['EventTypeName']
          @FollowRecord = params['FollowRecord']
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

      # 客户渠道标签
      class ChannelTag < TencentCloud::Common::AbstractModel
        # @param TagName: 该客户档案当前已成功关联的渠道标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagName: String
        # @param TagId: 该客户档案当前已成功关联的渠道标签的id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagId: String

        attr_accessor :TagName, :TagId

        def initialize(tagname=nil, tagid=nil)
          @TagName = tagname
          @TagId = tagid
        end

        def deserialize(params)
          @TagName = params['TagName']
          @TagId = params['TagId']
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

      # 线索信息详情
      class ClueInfoDetail < TencentCloud::Common::AbstractModel
        # @param ClueId: 线索id，线索唯一识别编码
        # @type ClueId: String
        # @param DealerId: 接待客户经销商顾问所属经销商code
        # @type DealerId: String
        # @param EnquireTime: 线索获取时间，用户添加企业微信时间，单位是秒
        # @type EnquireTime: Integer
        # @param UnionId: 客户在微信生态中唯一识别码
        # @type UnionId: String
        # @param Name: 微信昵称
        # @type Name: String
        # @param Phone: 联系方式
        # @type Phone: String
        # @param SeriesCode: 车系编号
        # @type SeriesCode: String
        # @param ModelCode: 车型编号
        # @type ModelCode: String
        # @param ProvinceCode: 省份编号
        # @type ProvinceCode: String
        # @param CityCode: 城市编号
        # @type CityCode: String
        # @param SalesName: 顾问名称
        # @type SalesName: String
        # @param SalesPhone: 顾问电话
        # @type SalesPhone: String
        # @param Remark: 备注
        # @type Remark: String
        # @param TagList: 标签
        # @type TagList: Array
        # @param UserName: 客户姓名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param LeadUserType: 线索属性，0：个人，1：企业
        # @type LeadUserType: Integer
        # @param LeadType: 线索来源类型，1：线上，2：线下
        # @type LeadType: Integer
        # @param ChannelId: 线索渠道对应ID
        # @type ChannelId: Integer
        # @param ChannelName: 线索渠道类型，与线索来源对应的渠道名称
        # @type ChannelName: String
        # @param SourceChannelName: 线索渠道名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceChannelName: String
        # @param Gender: 0：未知，1：男，2：女
        # @type Gender: Integer
        # @param CreateTime: 线索创建时间戳，单位：秒
        # @type CreateTime: String
        # @param LeadStatus: 线索所处状态，101-待分配 201-待建档 301-已建档 401-已邀约 501-跟进中 601-已下订单 701-已成交 801-战败申请中 901-已战败 1001-未知状态 1101-转移申请中 1201-已完成
        # @type LeadStatus: Integer
        # @param LevelCode: 线索意向等级
        # @type LevelCode: String
        # @param ImportAtTime: 线索成功导入的时间戳，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImportAtTime: Integer
        # @param DistributeTime: 完成线索分配的时间戳，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DistributeTime: Integer
        # @param CreateAtTime: 获取线索的时间戳，单位：秒
        # @type CreateAtTime: Integer
        # @param WxId: 客户微信id
        # @type WxId: String
        # @param BrandCode: 意向车型对应品牌code
        # @type BrandCode: String
        # @param BuildTime: 建档时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BuildTime: Integer
        # @param OrderTime: 下订时间，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderTime: Integer
        # @param ArrivalTime: 到店时间，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ArrivalTime: Integer
        # @param DeliveryTime: 交车时间，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeliveryTime: Integer
        # @param FollowTime: 上次跟进时间，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FollowTime: Integer
        # @param NextFollowTime: 下次跟进时间，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextFollowTime: Integer
        # @param OrgId: 线索所属组织id
        # @type OrgId: Integer
        # @param OrgName: 线索所属组织名称
        # @type OrgName: String
        # @param Introducer: 介绍人姓名
        # @type Introducer: String
        # @param IntroducerPhone: 介绍人电话
        # @type IntroducerPhone: String
        # @param IsBindWx: 是否关联微信 1 是 0 否
        # @type IsBindWx: Integer
        # @param IsMerge: 是否经过合并 1 是 0 否
        # @type IsMerge: Integer
        # @param IsInvalid: 是否无效  1 是 0 否
        # @type IsInvalid: Integer
        # @param InvalidType: 无效类型
        # @type InvalidType: String
        # @param InvalidTypeName: 无效类型枚举：
        # 无意向购买、空错号、未接听、其他
        # @type InvalidTypeName: String
        # @param InvalidRemark: 由顾问手动输入的无效原因文字
        # @type InvalidRemark: String
        # @param InvalidTime: 无效时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvalidTime: Integer
        # @param DealerName: 经销商名称
        # @type DealerName: String
        # @param ShopId: 经销商下级门店ID
        # @type ShopId: Integer
        # @param ShopName: 经销商下级门店名称
        # @type ShopName: String
        # @param Position: 职位
        # @type Position: String

        attr_accessor :ClueId, :DealerId, :EnquireTime, :UnionId, :Name, :Phone, :SeriesCode, :ModelCode, :ProvinceCode, :CityCode, :SalesName, :SalesPhone, :Remark, :TagList, :UserName, :LeadUserType, :LeadType, :ChannelId, :ChannelName, :SourceChannelName, :Gender, :CreateTime, :LeadStatus, :LevelCode, :ImportAtTime, :DistributeTime, :CreateAtTime, :WxId, :BrandCode, :BuildTime, :OrderTime, :ArrivalTime, :DeliveryTime, :FollowTime, :NextFollowTime, :OrgId, :OrgName, :Introducer, :IntroducerPhone, :IsBindWx, :IsMerge, :IsInvalid, :InvalidType, :InvalidTypeName, :InvalidRemark, :InvalidTime, :DealerName, :ShopId, :ShopName, :Position

        def initialize(clueid=nil, dealerid=nil, enquiretime=nil, unionid=nil, name=nil, phone=nil, seriescode=nil, modelcode=nil, provincecode=nil, citycode=nil, salesname=nil, salesphone=nil, remark=nil, taglist=nil, username=nil, leadusertype=nil, leadtype=nil, channelid=nil, channelname=nil, sourcechannelname=nil, gender=nil, createtime=nil, leadstatus=nil, levelcode=nil, importattime=nil, distributetime=nil, createattime=nil, wxid=nil, brandcode=nil, buildtime=nil, ordertime=nil, arrivaltime=nil, deliverytime=nil, followtime=nil, nextfollowtime=nil, orgid=nil, orgname=nil, introducer=nil, introducerphone=nil, isbindwx=nil, ismerge=nil, isinvalid=nil, invalidtype=nil, invalidtypename=nil, invalidremark=nil, invalidtime=nil, dealername=nil, shopid=nil, shopname=nil, position=nil)
          @ClueId = clueid
          @DealerId = dealerid
          @EnquireTime = enquiretime
          @UnionId = unionid
          @Name = name
          @Phone = phone
          @SeriesCode = seriescode
          @ModelCode = modelcode
          @ProvinceCode = provincecode
          @CityCode = citycode
          @SalesName = salesname
          @SalesPhone = salesphone
          @Remark = remark
          @TagList = taglist
          @UserName = username
          @LeadUserType = leadusertype
          @LeadType = leadtype
          @ChannelId = channelid
          @ChannelName = channelname
          @SourceChannelName = sourcechannelname
          @Gender = gender
          @CreateTime = createtime
          @LeadStatus = leadstatus
          @LevelCode = levelcode
          @ImportAtTime = importattime
          @DistributeTime = distributetime
          @CreateAtTime = createattime
          @WxId = wxid
          @BrandCode = brandcode
          @BuildTime = buildtime
          @OrderTime = ordertime
          @ArrivalTime = arrivaltime
          @DeliveryTime = deliverytime
          @FollowTime = followtime
          @NextFollowTime = nextfollowtime
          @OrgId = orgid
          @OrgName = orgname
          @Introducer = introducer
          @IntroducerPhone = introducerphone
          @IsBindWx = isbindwx
          @IsMerge = ismerge
          @IsInvalid = isinvalid
          @InvalidType = invalidtype
          @InvalidTypeName = invalidtypename
          @InvalidRemark = invalidremark
          @InvalidTime = invalidtime
          @DealerName = dealername
          @ShopId = shopid
          @ShopName = shopname
          @Position = position
        end

        def deserialize(params)
          @ClueId = params['ClueId']
          @DealerId = params['DealerId']
          @EnquireTime = params['EnquireTime']
          @UnionId = params['UnionId']
          @Name = params['Name']
          @Phone = params['Phone']
          @SeriesCode = params['SeriesCode']
          @ModelCode = params['ModelCode']
          @ProvinceCode = params['ProvinceCode']
          @CityCode = params['CityCode']
          @SalesName = params['SalesName']
          @SalesPhone = params['SalesPhone']
          @Remark = params['Remark']
          @TagList = params['TagList']
          @UserName = params['UserName']
          @LeadUserType = params['LeadUserType']
          @LeadType = params['LeadType']
          @ChannelId = params['ChannelId']
          @ChannelName = params['ChannelName']
          @SourceChannelName = params['SourceChannelName']
          @Gender = params['Gender']
          @CreateTime = params['CreateTime']
          @LeadStatus = params['LeadStatus']
          @LevelCode = params['LevelCode']
          @ImportAtTime = params['ImportAtTime']
          @DistributeTime = params['DistributeTime']
          @CreateAtTime = params['CreateAtTime']
          @WxId = params['WxId']
          @BrandCode = params['BrandCode']
          @BuildTime = params['BuildTime']
          @OrderTime = params['OrderTime']
          @ArrivalTime = params['ArrivalTime']
          @DeliveryTime = params['DeliveryTime']
          @FollowTime = params['FollowTime']
          @NextFollowTime = params['NextFollowTime']
          @OrgId = params['OrgId']
          @OrgName = params['OrgName']
          @Introducer = params['Introducer']
          @IntroducerPhone = params['IntroducerPhone']
          @IsBindWx = params['IsBindWx']
          @IsMerge = params['IsMerge']
          @IsInvalid = params['IsInvalid']
          @InvalidType = params['InvalidType']
          @InvalidTypeName = params['InvalidTypeName']
          @InvalidRemark = params['InvalidRemark']
          @InvalidTime = params['InvalidTime']
          @DealerName = params['DealerName']
          @ShopId = params['ShopId']
          @ShopName = params['ShopName']
          @Position = params['Position']
        end
      end

      # 企业成员信息
      class CorpUserInfo < TencentCloud::Common::AbstractModel
        # @param UserId: 企业成员UserId
        # @type UserId: Integer
        # @param UserName: 企业成员在SaaS名片内填写的姓名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param UserOpenId: 企业成员在企微原生通讯录内的id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserOpenId: String
        # @param DealerId: 成员所属经销商id，可为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealerId: Integer
        # @param ShopId: 成员所属门店id，可为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShopId: Integer
        # @param Phone: 企业成员手机号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Phone: String
        # @param OrgIds: 成员所属部门id列表，仅返回该应用有查看权限的部门id；成员授权模式下，固定返回根部门id，即固定为1；多个部门使用逗号分割
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgIds: String
        # @param MainDepartment: 主部门，仅当应用对主部门有查看权限时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MainDepartment: String
        # @param IsLeaderInDept: 是否为部门负责人，第三方应用可为空。与orgIds值一一对应，多个部门使用逗号隔开，0-否， 1-是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsLeaderInDept: String
        # @param Status: 激活状态: 0=已激活，1=已禁用，-1=退出企业"
        # @type Status: Integer
        # @param JobNumber: 工号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobNumber: String

        attr_accessor :UserId, :UserName, :UserOpenId, :DealerId, :ShopId, :Phone, :OrgIds, :MainDepartment, :IsLeaderInDept, :Status, :JobNumber

        def initialize(userid=nil, username=nil, useropenid=nil, dealerid=nil, shopid=nil, phone=nil, orgids=nil, maindepartment=nil, isleaderindept=nil, status=nil, jobnumber=nil)
          @UserId = userid
          @UserName = username
          @UserOpenId = useropenid
          @DealerId = dealerid
          @ShopId = shopid
          @Phone = phone
          @OrgIds = orgids
          @MainDepartment = maindepartment
          @IsLeaderInDept = isleaderindept
          @Status = status
          @JobNumber = jobnumber
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserName = params['UserName']
          @UserOpenId = params['UserOpenId']
          @DealerId = params['DealerId']
          @ShopId = params['ShopId']
          @Phone = params['Phone']
          @OrgIds = params['OrgIds']
          @MainDepartment = params['MainDepartment']
          @IsLeaderInDept = params['IsLeaderInDept']
          @Status = params['Status']
          @JobNumber = params['JobNumber']
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

      # CreateLead请求参数结构体
      class CreateLeadRequest < TencentCloud::Common::AbstractModel
        # @param ChannelId: 来源ID
        # @type ChannelId: Integer
        # @param ChannelName: 来源名称
        # @type ChannelName: String
        # @param CreateTime: 创建时间， 单位毫秒
        # @type CreateTime: Integer
        # @param SourceType: 线索类型：1-400呼入，2-常规留资
        # @type SourceType: Integer
        # @param DealerId: 经销商id
        # @type DealerId: Integer
        # @param BrandId: 品牌id
        # @type BrandId: Integer
        # @param SeriesId: 车系id
        # @type SeriesId: Integer
        # @param CustomerName: 客户姓名
        # @type CustomerName: String
        # @param CustomerPhone: 客户手机号
        # @type CustomerPhone: String
        # @param ModelId: 车型id
        # @type ModelId: Integer
        # @param CustomerSex: 客户性别: 0-未知, 1-男, 2-女
        # @type CustomerSex: Integer
        # @param SalesName: 销售姓名
        # @type SalesName: String
        # @param SalesPhone: 销售手机号
        # @type SalesPhone: String
        # @param CcName: Cc坐席姓名
        # @type CcName: String
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :ChannelId, :ChannelName, :CreateTime, :SourceType, :DealerId, :BrandId, :SeriesId, :CustomerName, :CustomerPhone, :ModelId, :CustomerSex, :SalesName, :SalesPhone, :CcName, :Remark

        def initialize(channelid=nil, channelname=nil, createtime=nil, sourcetype=nil, dealerid=nil, brandid=nil, seriesid=nil, customername=nil, customerphone=nil, modelid=nil, customersex=nil, salesname=nil, salesphone=nil, ccname=nil, remark=nil)
          @ChannelId = channelid
          @ChannelName = channelname
          @CreateTime = createtime
          @SourceType = sourcetype
          @DealerId = dealerid
          @BrandId = brandid
          @SeriesId = seriesid
          @CustomerName = customername
          @CustomerPhone = customerphone
          @ModelId = modelid
          @CustomerSex = customersex
          @SalesName = salesname
          @SalesPhone = salesphone
          @CcName = ccname
          @Remark = remark
        end

        def deserialize(params)
          @ChannelId = params['ChannelId']
          @ChannelName = params['ChannelName']
          @CreateTime = params['CreateTime']
          @SourceType = params['SourceType']
          @DealerId = params['DealerId']
          @BrandId = params['BrandId']
          @SeriesId = params['SeriesId']
          @CustomerName = params['CustomerName']
          @CustomerPhone = params['CustomerPhone']
          @ModelId = params['ModelId']
          @CustomerSex = params['CustomerSex']
          @SalesName = params['SalesName']
          @SalesPhone = params['SalesPhone']
          @CcName = params['CcName']
          @Remark = params['Remark']
        end
      end

      # CreateLead返回参数结构体
      class CreateLeadResponse < TencentCloud::Common::AbstractModel
        # @param BusinessCode: 线索处理状态码： 0-表示创建成功， 1-表示线索合并，2-表示线索重复
        # @type BusinessCode: Integer
        # @param BusinessMsg: 线索处理结果描述
        # @type BusinessMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BusinessCode, :BusinessMsg, :RequestId

        def initialize(businesscode=nil, businessmsg=nil, requestid=nil)
          @BusinessCode = businesscode
          @BusinessMsg = businessmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @BusinessCode = params['BusinessCode']
          @BusinessMsg = params['BusinessMsg']
          @RequestId = params['RequestId']
        end
      end

      # CRM统计数据响应
      class CrmStatisticsData < TencentCloud::Common::AbstractModel
        # @param LeadCnt: 新增线索
        # @type LeadCnt: Integer
        # @param BuildCnt: 新增建档
        # @type BuildCnt: Integer
        # @param InvitedCnt: 新增到店
        # @type InvitedCnt: Integer
        # @param OrderedCnt: 新增下订
        # @type OrderedCnt: Integer
        # @param DeliveredCnt: 新增成交
        # @type DeliveredCnt: Integer
        # @param DefeatCnt: 新增战败
        # @type DefeatCnt: Integer
        # @param NewContactCnt: 新增好友
        # @type NewContactCnt: Integer
        # @param StatisticalTime: 统计时间, 单位：天
        # @type StatisticalTime: String

        attr_accessor :LeadCnt, :BuildCnt, :InvitedCnt, :OrderedCnt, :DeliveredCnt, :DefeatCnt, :NewContactCnt, :StatisticalTime

        def initialize(leadcnt=nil, buildcnt=nil, invitedcnt=nil, orderedcnt=nil, deliveredcnt=nil, defeatcnt=nil, newcontactcnt=nil, statisticaltime=nil)
          @LeadCnt = leadcnt
          @BuildCnt = buildcnt
          @InvitedCnt = invitedcnt
          @OrderedCnt = orderedcnt
          @DeliveredCnt = deliveredcnt
          @DefeatCnt = defeatcnt
          @NewContactCnt = newcontactcnt
          @StatisticalTime = statisticaltime
        end

        def deserialize(params)
          @LeadCnt = params['LeadCnt']
          @BuildCnt = params['BuildCnt']
          @InvitedCnt = params['InvitedCnt']
          @OrderedCnt = params['OrderedCnt']
          @DeliveredCnt = params['DeliveredCnt']
          @DefeatCnt = params['DefeatCnt']
          @NewContactCnt = params['NewContactCnt']
          @StatisticalTime = params['StatisticalTime']
        end
      end

      # 外部联系人SaaS使用明细数据
      class CustomerActionEventDetail < TencentCloud::Common::AbstractModel
        # @param EventCode: 事件码
        # @type EventCode: String
        # @param EventType: 事件类型
        # @type EventType: Integer
        # @param EventSource: 事件来源
        # @type EventSource: Integer
        # @param ExternalUserId: 外部联系人id
        # @type ExternalUserId: String
        # @param SalesId: 销售顾问id
        # @type SalesId: Integer
        # @param MaterialType: 素材类型
        # @type MaterialType: Integer
        # @param MaterialId: 素材编号id
        # @type MaterialId: Integer
        # @param EventTime: 事件上报时间，单位：秒
        # @type EventTime: Integer

        attr_accessor :EventCode, :EventType, :EventSource, :ExternalUserId, :SalesId, :MaterialType, :MaterialId, :EventTime

        def initialize(eventcode=nil, eventtype=nil, eventsource=nil, externaluserid=nil, salesid=nil, materialtype=nil, materialid=nil, eventtime=nil)
          @EventCode = eventcode
          @EventType = eventtype
          @EventSource = eventsource
          @ExternalUserId = externaluserid
          @SalesId = salesid
          @MaterialType = materialtype
          @MaterialId = materialid
          @EventTime = eventtime
        end

        def deserialize(params)
          @EventCode = params['EventCode']
          @EventType = params['EventType']
          @EventSource = params['EventSource']
          @ExternalUserId = params['ExternalUserId']
          @SalesId = params['SalesId']
          @MaterialType = params['MaterialType']
          @MaterialId = params['MaterialId']
          @EventTime = params['EventTime']
        end
      end

      # 潜客客户档案信息
      class CustomerProfile < TencentCloud::Common::AbstractModel
        # @param CustomerId: 客户档案id，客户唯一识别编码
        # @type CustomerId: Integer
        # @param DealerCode: 所属经销商id
        # @type DealerCode: String
        # @param UnionId: 客户在微信生态中唯一识别码
        # @type UnionId: String
        # @param CreateTime: 档案创建时间戳，单位：秒
        # @type CreateTime: String
        # @param UserName: 客户姓名
        # @type UserName: String
        # @param Gender: 0未知，1：男，2：女
        # @type Gender: Integer
        # @param Phone: 客户联系手机号
        # @type Phone: String
        # @param AgeRangeName: 客户年龄段名称
        # @type AgeRangeName: String
        # @param JobTypeName: 客户行业类型名称信息，如教师、医生
        # @type JobTypeName: String
        # @param Address: 客户居住地址
        # @type Address: String
        # @param LeadsProcessStatus: 客户所处状态
        #  0:已分配 1:未分配 1 待建档, 2 已建档， 3 已到店 4 已经试驾 5 战败申请中 6 已战败 7 已成交
        # @type LeadsProcessStatus: Integer
        # @param LeadType: 客户来源类型，1：线上，2：线下
        # @type LeadType: Integer
        # @param SourceName: 与客户来源类型对应的渠道名称
        # @type SourceName: String
        # @param LeadsLevelCode: 客户购车的意向等级
        # @type LeadsLevelCode: String
        # @param VehicleBrandCode: 客户意向品牌编号
        # @type VehicleBrandCode: String
        # @param VehicleSeriesCode: 客户意向车系编号
        # @type VehicleSeriesCode: String
        # @param VehicleTypeCode: 客户意向车型编号
        # @type VehicleTypeCode: String
        # @param VehiclePurpose: 购车用途信息
        # @type VehiclePurpose: :class:`Tencentcloud::Wav.v20210129.models.VehiclePurpose`
        # @param PurchaseConcern: 购车关注点信息
        # @type PurchaseConcern: Array
        # @param SalesName: 客户所属顾问姓名
        # @type SalesName: String
        # @param SalesPhone: 客户所属顾问手机号
        # @type SalesPhone: String
        # @param RealArrivalTime: 客户实际到店时间戳，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealArrivalTime: Integer
        # @param CompleteTestDriveTime: 客户到店完成试乘试驾时间戳，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompleteTestDriveTime: String
        # @param OrderTime: 客户完成下订的时间戳，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderTime: Integer
        # @param DeliveryTime: 客户成交的时间戳，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeliveryTime: Integer
        # @param InvoiceTime: 开票时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvoiceTime: Integer
        # @param LoseTime: 完成对此客户战败审批的时间戳，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoseTime: Integer
        # @param CreatedAtTime: 线索成功获取的时间戳，单位：秒
        # @type CreatedAtTime: Integer
        # @param ImportAtTime: 线索成功导入的时间戳，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImportAtTime: Integer
        # @param DistributeTime: 完成线索分配的时间戳，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DistributeTime: Integer
        # @param LeadCreateTime: 线索成功创建的时间戳，单位：秒
        # @type LeadCreateTime: Integer
        # @param Nickname: 线索关联微信昵称
        # @type Nickname: String
        # @param OrgIdList: 线索归属部门节点
        # @type OrgIdList: Array
        # @param Introducer: 客户的介绍人姓名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Introducer: String
        # @param IntroducerPhone: 客户的介绍人手机号码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntroducerPhone: String
        # @param FollowTime: 最近一次完成跟进的时间戳，单位：秒
        # @type FollowTime: Integer
        # @param NextFollowTime: 最近一次计划跟进的时间戳，单位：秒
        # @type NextFollowTime: Integer
        # @param EnterpriseTags: 已为该客户添加的企业标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnterpriseTags: Array
        # @param ChannelTags: 已为该客户添加的渠道标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChannelTags: Array

        attr_accessor :CustomerId, :DealerCode, :UnionId, :CreateTime, :UserName, :Gender, :Phone, :AgeRangeName, :JobTypeName, :Address, :LeadsProcessStatus, :LeadType, :SourceName, :LeadsLevelCode, :VehicleBrandCode, :VehicleSeriesCode, :VehicleTypeCode, :VehiclePurpose, :PurchaseConcern, :SalesName, :SalesPhone, :RealArrivalTime, :CompleteTestDriveTime, :OrderTime, :DeliveryTime, :InvoiceTime, :LoseTime, :CreatedAtTime, :ImportAtTime, :DistributeTime, :LeadCreateTime, :Nickname, :OrgIdList, :Introducer, :IntroducerPhone, :FollowTime, :NextFollowTime, :EnterpriseTags, :ChannelTags

        def initialize(customerid=nil, dealercode=nil, unionid=nil, createtime=nil, username=nil, gender=nil, phone=nil, agerangename=nil, jobtypename=nil, address=nil, leadsprocessstatus=nil, leadtype=nil, sourcename=nil, leadslevelcode=nil, vehiclebrandcode=nil, vehicleseriescode=nil, vehicletypecode=nil, vehiclepurpose=nil, purchaseconcern=nil, salesname=nil, salesphone=nil, realarrivaltime=nil, completetestdrivetime=nil, ordertime=nil, deliverytime=nil, invoicetime=nil, losetime=nil, createdattime=nil, importattime=nil, distributetime=nil, leadcreatetime=nil, nickname=nil, orgidlist=nil, introducer=nil, introducerphone=nil, followtime=nil, nextfollowtime=nil, enterprisetags=nil, channeltags=nil)
          @CustomerId = customerid
          @DealerCode = dealercode
          @UnionId = unionid
          @CreateTime = createtime
          @UserName = username
          @Gender = gender
          @Phone = phone
          @AgeRangeName = agerangename
          @JobTypeName = jobtypename
          @Address = address
          @LeadsProcessStatus = leadsprocessstatus
          @LeadType = leadtype
          @SourceName = sourcename
          @LeadsLevelCode = leadslevelcode
          @VehicleBrandCode = vehiclebrandcode
          @VehicleSeriesCode = vehicleseriescode
          @VehicleTypeCode = vehicletypecode
          @VehiclePurpose = vehiclepurpose
          @PurchaseConcern = purchaseconcern
          @SalesName = salesname
          @SalesPhone = salesphone
          @RealArrivalTime = realarrivaltime
          @CompleteTestDriveTime = completetestdrivetime
          @OrderTime = ordertime
          @DeliveryTime = deliverytime
          @InvoiceTime = invoicetime
          @LoseTime = losetime
          @CreatedAtTime = createdattime
          @ImportAtTime = importattime
          @DistributeTime = distributetime
          @LeadCreateTime = leadcreatetime
          @Nickname = nickname
          @OrgIdList = orgidlist
          @Introducer = introducer
          @IntroducerPhone = introducerphone
          @FollowTime = followtime
          @NextFollowTime = nextfollowtime
          @EnterpriseTags = enterprisetags
          @ChannelTags = channeltags
        end

        def deserialize(params)
          @CustomerId = params['CustomerId']
          @DealerCode = params['DealerCode']
          @UnionId = params['UnionId']
          @CreateTime = params['CreateTime']
          @UserName = params['UserName']
          @Gender = params['Gender']
          @Phone = params['Phone']
          @AgeRangeName = params['AgeRangeName']
          @JobTypeName = params['JobTypeName']
          @Address = params['Address']
          @LeadsProcessStatus = params['LeadsProcessStatus']
          @LeadType = params['LeadType']
          @SourceName = params['SourceName']
          @LeadsLevelCode = params['LeadsLevelCode']
          @VehicleBrandCode = params['VehicleBrandCode']
          @VehicleSeriesCode = params['VehicleSeriesCode']
          @VehicleTypeCode = params['VehicleTypeCode']
          unless params['VehiclePurpose'].nil?
            @VehiclePurpose = VehiclePurpose.new
            @VehiclePurpose.deserialize(params['VehiclePurpose'])
          end
          unless params['PurchaseConcern'].nil?
            @PurchaseConcern = []
            params['PurchaseConcern'].each do |i|
              purchaseconcern_tmp = PurchaseConcern.new
              purchaseconcern_tmp.deserialize(i)
              @PurchaseConcern << purchaseconcern_tmp
            end
          end
          @SalesName = params['SalesName']
          @SalesPhone = params['SalesPhone']
          @RealArrivalTime = params['RealArrivalTime']
          @CompleteTestDriveTime = params['CompleteTestDriveTime']
          @OrderTime = params['OrderTime']
          @DeliveryTime = params['DeliveryTime']
          @InvoiceTime = params['InvoiceTime']
          @LoseTime = params['LoseTime']
          @CreatedAtTime = params['CreatedAtTime']
          @ImportAtTime = params['ImportAtTime']
          @DistributeTime = params['DistributeTime']
          @LeadCreateTime = params['LeadCreateTime']
          @Nickname = params['Nickname']
          @OrgIdList = params['OrgIdList']
          @Introducer = params['Introducer']
          @IntroducerPhone = params['IntroducerPhone']
          @FollowTime = params['FollowTime']
          @NextFollowTime = params['NextFollowTime']
          unless params['EnterpriseTags'].nil?
            @EnterpriseTags = []
            params['EnterpriseTags'].each do |i|
              enterprisetag_tmp = EnterpriseTag.new
              enterprisetag_tmp.deserialize(i)
              @EnterpriseTags << enterprisetag_tmp
            end
          end
          unless params['ChannelTags'].nil?
            @ChannelTags = []
            params['ChannelTags'].each do |i|
              channeltag_tmp = ChannelTag.new
              channeltag_tmp.deserialize(i)
              @ChannelTags << channeltag_tmp
            end
          end
        end
      end

      # 经销商信息
      class DealerInfo < TencentCloud::Common::AbstractModel
        # @param DealerId: 企微SaaS平台经销商id
        # @type DealerId: Integer
        # @param DealerName: 经销商名称
        # @type DealerName: String
        # @param ProvinceCode: 所属省份编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProvinceCode: String
        # @param CityCodeList: 所属城市编号列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CityCodeList: Array
        # @param BrandIdList: 业务覆盖品牌id列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BrandIdList: Array

        attr_accessor :DealerId, :DealerName, :ProvinceCode, :CityCodeList, :BrandIdList

        def initialize(dealerid=nil, dealername=nil, provincecode=nil, citycodelist=nil, brandidlist=nil)
          @DealerId = dealerid
          @DealerName = dealername
          @ProvinceCode = provincecode
          @CityCodeList = citycodelist
          @BrandIdList = brandidlist
        end

        def deserialize(params)
          @DealerId = params['DealerId']
          @DealerName = params['DealerName']
          @ProvinceCode = params['ProvinceCode']
          @CityCodeList = params['CityCodeList']
          @BrandIdList = params['BrandIdList']
        end
      end

      # 客户企业标签
      class EnterpriseTag < TencentCloud::Common::AbstractModel
        # @param GroupName: 该客户档案当前已成功关联的企业标签分组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param TagName: 该客户档案当前已成功关联的企业标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagName: String
        # @param TagId: 该客户档案当前已成功关联的企业标签的id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagId: String

        attr_accessor :GroupName, :TagName, :TagId

        def initialize(groupname=nil, tagname=nil, tagid=nil)
          @GroupName = groupname
          @TagName = tagname
          @TagId = tagid
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @TagName = params['TagName']
          @TagId = params['TagId']
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

      # 具备更多信息的外部联系人详细信息
      class ExternalContactDetailPro < TencentCloud::Common::AbstractModel
        # @param Customer: 客户信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Customer: :class:`Tencentcloud::Wav.v20210129.models.ExternalContact`
        # @param FollowUser: 添加了此外部联系人的企业成员信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FollowUser: Array

        attr_accessor :Customer, :FollowUser

        def initialize(customer=nil, followuser=nil)
          @Customer = customer
          @FollowUser = followuser
        end

        def deserialize(params)
          unless params['Customer'].nil?
            @Customer = ExternalContact.new
            @Customer.deserialize(params['Customer'])
          end
          unless params['FollowUser'].nil?
            @FollowUser = []
            params['FollowUser'].each do |i|
              followuserpro_tmp = FollowUserPro.new
              followuserpro_tmp.deserialize(i)
              @FollowUser << followuserpro_tmp
            end
          end
        end
      end

      # 外部联系人简短信息
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

      # 外部联系人事件信息
      class ExternalUserEventInfo < TencentCloud::Common::AbstractModel
        # @param EventCode: 事件编码, 添加外部联系人(ADD_EXTERNAL_CUSTOMER)/成员删除外部联系人(DELETE_EXTERNAL_CUSTOMER)/外部联系人删除成员(DELETE_FOLLOW_USER)
        # @type EventCode: String
        # @param ExternalUserId: 外部联系人id
        # @type ExternalUserId: String
        # @param SalesId: 企微SaaS的成员id
        # @type SalesId: String
        # @param EventTime: 事件上报时间戳，单位：秒
        # @type EventTime: Integer

        attr_accessor :EventCode, :ExternalUserId, :SalesId, :EventTime

        def initialize(eventcode=nil, externaluserid=nil, salesid=nil, eventtime=nil)
          @EventCode = eventcode
          @ExternalUserId = externaluserid
          @SalesId = salesid
          @EventTime = eventtime
        end

        def deserialize(params)
          @EventCode = params['EventCode']
          @ExternalUserId = params['ExternalUserId']
          @SalesId = params['SalesId']
          @EventTime = params['EventTime']
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

      # 发生过跟进的潜客信息
      class FollowInfo < TencentCloud::Common::AbstractModel
        # @param ClueId: 线索id
        # @type ClueId: Integer
        # @param CustomerId: 客户档案id
        # @type CustomerId: Integer
        # @param UserName: 客户姓名
        # @type UserName: String
        # @param Phone: 客户的手机号
        # @type Phone: String
        # @param IsOverdue: 是否逾期
        # @type IsOverdue: Integer
        # @param OverdueTime: 逾期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OverdueTime: Integer
        # @param EventType: 发生事件
        # @type EventType: Integer
        # @param EventTypeName: 发生事件名称
        # @type EventTypeName: String
        # @param FollowWayType: 跟进方式
        # @type FollowWayType: String
        # @param FollowWayName: 跟进方式名称
        # @type FollowWayName: String
        # @param FollowTime: 本次跟进时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FollowTime: Integer
        # @param NextFollowTime: 下次跟进时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextFollowTime: Integer
        # @param FollowRecord: 跟进记录
        # @type FollowRecord: String

        attr_accessor :ClueId, :CustomerId, :UserName, :Phone, :IsOverdue, :OverdueTime, :EventType, :EventTypeName, :FollowWayType, :FollowWayName, :FollowTime, :NextFollowTime, :FollowRecord

        def initialize(clueid=nil, customerid=nil, username=nil, phone=nil, isoverdue=nil, overduetime=nil, eventtype=nil, eventtypename=nil, followwaytype=nil, followwayname=nil, followtime=nil, nextfollowtime=nil, followrecord=nil)
          @ClueId = clueid
          @CustomerId = customerid
          @UserName = username
          @Phone = phone
          @IsOverdue = isoverdue
          @OverdueTime = overduetime
          @EventType = eventtype
          @EventTypeName = eventtypename
          @FollowWayType = followwaytype
          @FollowWayName = followwayname
          @FollowTime = followtime
          @NextFollowTime = nextfollowtime
          @FollowRecord = followrecord
        end

        def deserialize(params)
          @ClueId = params['ClueId']
          @CustomerId = params['CustomerId']
          @UserName = params['UserName']
          @Phone = params['Phone']
          @IsOverdue = params['IsOverdue']
          @OverdueTime = params['OverdueTime']
          @EventType = params['EventType']
          @EventTypeName = params['EventTypeName']
          @FollowWayType = params['FollowWayType']
          @FollowWayName = params['FollowWayName']
          @FollowTime = params['FollowTime']
          @NextFollowTime = params['NextFollowTime']
          @FollowRecord = params['FollowRecord']
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

      # 具备更多信息的添加了此外部联系人的企业成员信息
      class FollowUserPro < TencentCloud::Common::AbstractModel
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
        # @param SalesName: 添加了此外部联系人的企业成员的姓名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SalesName: String
        # @param DepartmentIdList: 企业成员的归属部门id列表
        # @type DepartmentIdList: Array

        attr_accessor :UserId, :Remark, :Description, :CreateTime, :AddWay, :OperUserId, :Tags, :SalesName, :DepartmentIdList

        def initialize(userid=nil, remark=nil, description=nil, createtime=nil, addway=nil, operuserid=nil, tags=nil, salesname=nil, departmentidlist=nil)
          @UserId = userid
          @Remark = remark
          @Description = description
          @CreateTime = createtime
          @AddWay = addway
          @OperUserId = operuserid
          @Tags = tags
          @SalesName = salesname
          @DepartmentIdList = departmentidlist
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
          @SalesName = params['SalesName']
          @DepartmentIdList = params['DepartmentIdList']
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

      # 素材信息响应体
      class MaterialInfo < TencentCloud::Common::AbstractModel
        # @param MaterialId: 素材id
        # @type MaterialId: Integer
        # @param MaterialName: 素材名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaterialName: String
        # @param Status: 素材状态, -1: 删除 0: 启用 1: 禁用
        # @type Status: Integer

        attr_accessor :MaterialId, :MaterialName, :Status

        def initialize(materialid=nil, materialname=nil, status=nil)
          @MaterialId = materialid
          @MaterialName = materialname
          @Status = status
        end

        def deserialize(params)
          @MaterialId = params['MaterialId']
          @MaterialName = params['MaterialName']
          @Status = params['Status']
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

      # 购车关注点
      class PurchaseConcern < TencentCloud::Common::AbstractModel
        # @param Code: 购车关注点code
        # @type Code: String
        # @param Description: 购车关注点描述
        # @type Description: String

        attr_accessor :Code, :Description

        def initialize(code=nil, description=nil)
          @Code = code
          @Description = description
        end

        def deserialize(params)
          @Code = params['Code']
          @Description = params['Description']
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

      # QueryArrivalList请求参数结构体
      class QueryArrivalListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页，预期请求的数据量，取值范围 1 ~ 1000
        # @type Limit: Integer
        # @param BeginTime: 查询开始时间， 单位秒
        # @type BeginTime: Integer
        # @param EndTime: 查询结束时间， 单位秒
        # @type EndTime: Integer
        # @param Cursor: 用于分页查询的游标，字符串类型，由上一次调用返回，首次调用可不填
        # @type Cursor: String

        attr_accessor :Limit, :BeginTime, :EndTime, :Cursor

        def initialize(limit=nil, begintime=nil, endtime=nil, cursor=nil)
          @Limit = limit
          @BeginTime = begintime
          @EndTime = endtime
          @Cursor = cursor
        end

        def deserialize(params)
          @Limit = params['Limit']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @Cursor = params['Cursor']
        end
      end

      # QueryArrivalList返回参数结构体
      class QueryArrivalListResponse < TencentCloud::Common::AbstractModel
        # @param NextCursor: 分页游标，下次调用带上该值，则从当前的位置继续往后拉，以实现增量拉取。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextCursor: String
        # @param PageData: 潜客客户存档信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageData: Array
        # @param HasMore: 是否还有更多数据。0-否；1-是。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HasMore: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NextCursor, :PageData, :HasMore, :RequestId

        def initialize(nextcursor=nil, pagedata=nil, hasmore=nil, requestid=nil)
          @NextCursor = nextcursor
          @PageData = pagedata
          @HasMore = hasmore
          @RequestId = requestid
        end

        def deserialize(params)
          @NextCursor = params['NextCursor']
          unless params['PageData'].nil?
            @PageData = []
            params['PageData'].each do |i|
              arrivalinfo_tmp = ArrivalInfo.new
              arrivalinfo_tmp.deserialize(i)
              @PageData << arrivalinfo_tmp
            end
          end
          @HasMore = params['HasMore']
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

      # QueryClueInfoList请求参数结构体
      class QueryClueInfoListRequest < TencentCloud::Common::AbstractModel
        # @param Cursor: 用于分页查询的游标，字符串类型，由上一次调用返回，首次调用可不填
        # @type Cursor: String
        # @param Limit: 返回的最大记录数，整型，最大值100，默认值50，超过最大值时取最大值
        # @type Limit: Integer
        # @param BeginTime: 查询开始时间， 单位秒
        # @type BeginTime: Integer
        # @param EndTime: 查询结束时间， 单位秒
        # @type EndTime: Integer

        attr_accessor :Cursor, :Limit, :BeginTime, :EndTime

        def initialize(cursor=nil, limit=nil, begintime=nil, endtime=nil)
          @Cursor = cursor
          @Limit = limit
          @BeginTime = begintime
          @EndTime = endtime
        end

        def deserialize(params)
          @Cursor = params['Cursor']
          @Limit = params['Limit']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
        end
      end

      # QueryClueInfoList返回参数结构体
      class QueryClueInfoListResponse < TencentCloud::Common::AbstractModel
        # @param PageData: 线索信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageData: Array
        # @param NextCursor: 分页游标，下次调用带上该值，则从当前的位置继续往后拉，以实现增量拉取。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextCursor: String
        # @param HasMore: 是否还有更多数据。0-否；1-是。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HasMore: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PageData, :NextCursor, :HasMore, :RequestId

        def initialize(pagedata=nil, nextcursor=nil, hasmore=nil, requestid=nil)
          @PageData = pagedata
          @NextCursor = nextcursor
          @HasMore = hasmore
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PageData'].nil?
            @PageData = []
            params['PageData'].each do |i|
              clueinfodetail_tmp = ClueInfoDetail.new
              clueinfodetail_tmp.deserialize(i)
              @PageData << clueinfodetail_tmp
            end
          end
          @NextCursor = params['NextCursor']
          @HasMore = params['HasMore']
          @RequestId = params['RequestId']
        end
      end

      # QueryCrmStatistics请求参数结构体
      class QueryCrmStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param BeginTime: 查询开始时间， 单位秒
        # @type BeginTime: Integer
        # @param EndTime: 查询结束时间， 单位秒
        # @type EndTime: Integer
        # @param Cursor: 用于分页查询的游标，字符串类型，由上一次调用返回，首次调用可不填
        # @type Cursor: String
        # @param Limit: 返回的最大记录数，整型，最大值100，默认值50，超过最大值时取最大值
        # @type Limit: Integer
        # @param SalesId: 请求的企业成员id，为空时默认全租户
        # @type SalesId: String
        # @param OrgId: 请求的部门id，为空时默认全租户
        # @type OrgId: Integer

        attr_accessor :BeginTime, :EndTime, :Cursor, :Limit, :SalesId, :OrgId

        def initialize(begintime=nil, endtime=nil, cursor=nil, limit=nil, salesid=nil, orgid=nil)
          @BeginTime = begintime
          @EndTime = endtime
          @Cursor = cursor
          @Limit = limit
          @SalesId = salesid
          @OrgId = orgid
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @Cursor = params['Cursor']
          @Limit = params['Limit']
          @SalesId = params['SalesId']
          @OrgId = params['OrgId']
        end
      end

      # QueryCrmStatistics返回参数结构体
      class QueryCrmStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param NextCursor: 分页游标，再下次请求时填写以获取之后分页的记录，如果已经没有更多的数据则返回空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextCursor: String
        # @param PageData: CRM统计响应数据
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
              crmstatisticsdata_tmp = CrmStatisticsData.new
              crmstatisticsdata_tmp.deserialize(i)
              @PageData << crmstatisticsdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryCustomerEventDetailStatistics请求参数结构体
      class QueryCustomerEventDetailStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param BeginTime: 查询开始时间， 单位秒
        # @type BeginTime: Integer
        # @param EndTime: 查询结束时间， 单位秒
        # @type EndTime: Integer
        # @param Cursor: 用于分页查询的游标，字符串类型，由上一次调用返回，首次调用可不填
        # @type Cursor: String
        # @param Limit: 返回的最大记录数，整型，最大值100，默认值50，超过最大值时取最大值
        # @type Limit: Integer

        attr_accessor :BeginTime, :EndTime, :Cursor, :Limit

        def initialize(begintime=nil, endtime=nil, cursor=nil, limit=nil)
          @BeginTime = begintime
          @EndTime = endtime
          @Cursor = cursor
          @Limit = limit
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @Cursor = params['Cursor']
          @Limit = params['Limit']
        end
      end

      # QueryCustomerEventDetailStatistics返回参数结构体
      class QueryCustomerEventDetailStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param NextCursor: 分页游标，再下次请求时填写以获取之后分页的记录，如果已经没有更多的数据则返回空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextCursor: String
        # @param PageData: 外部联系人SaaS使用明细统计响应数据
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
              customeractioneventdetail_tmp = CustomerActionEventDetail.new
              customeractioneventdetail_tmp.deserialize(i)
              @PageData << customeractioneventdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryCustomerProfileList请求参数结构体
      class QueryCustomerProfileListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页，预期请求的数据量，取值范围 1 ~ 1000
        # @type Limit: Integer
        # @param BeginTime: 查询开始时间， 单位秒
        # @type BeginTime: Integer
        # @param EndTime: 查询结束时间， 单位秒
        # @type EndTime: Integer
        # @param Cursor: 用于分页查询的游标，字符串类型，由上一次调用返回，首次调用可不填
        # @type Cursor: String

        attr_accessor :Limit, :BeginTime, :EndTime, :Cursor

        def initialize(limit=nil, begintime=nil, endtime=nil, cursor=nil)
          @Limit = limit
          @BeginTime = begintime
          @EndTime = endtime
          @Cursor = cursor
        end

        def deserialize(params)
          @Limit = params['Limit']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @Cursor = params['Cursor']
        end
      end

      # QueryCustomerProfileList返回参数结构体
      class QueryCustomerProfileListResponse < TencentCloud::Common::AbstractModel
        # @param NextCursor: 分页游标，下次调用带上该值，则从当前的位置继续往后拉，以实现增量拉取。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextCursor: String
        # @param PageData: 潜客客户存档信息
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
              customerprofile_tmp = CustomerProfile.new
              customerprofile_tmp.deserialize(i)
              @PageData << customerprofile_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryDealerInfoList请求参数结构体
      class QueryDealerInfoListRequest < TencentCloud::Common::AbstractModel
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

      # QueryDealerInfoList返回参数结构体
      class QueryDealerInfoListResponse < TencentCloud::Common::AbstractModel
        # @param PageData: 经销商信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageData: Array
        # @param NextCursor: 分页游标，下次调用带上该值，则从当前的位置继续往后拉取新增的数据，以实现增量拉取。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextCursor: String
        # @param HasMore: 是否还有更多数据。0-否；1-是。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HasMore: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PageData, :NextCursor, :HasMore, :RequestId

        def initialize(pagedata=nil, nextcursor=nil, hasmore=nil, requestid=nil)
          @PageData = pagedata
          @NextCursor = nextcursor
          @HasMore = hasmore
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PageData'].nil?
            @PageData = []
            params['PageData'].each do |i|
              dealerinfo_tmp = DealerInfo.new
              dealerinfo_tmp.deserialize(i)
              @PageData << dealerinfo_tmp
            end
          end
          @NextCursor = params['NextCursor']
          @HasMore = params['HasMore']
          @RequestId = params['RequestId']
        end
      end

      # QueryExternalContactDetailByDate请求参数结构体
      class QueryExternalContactDetailByDateRequest < TencentCloud::Common::AbstractModel
        # @param BeginTime: 查询结束时间， 单位秒
        # @type BeginTime: Integer
        # @param EndTime: 查询结束时间， 单位秒
        # @type EndTime: Integer
        # @param Cursor: 用于分页查询的游标，字符串类型，由上一次调用返回，首次调用可不填
        # @type Cursor: String
        # @param Limit: 返回的最大记录数，整型，最大值100，默认值50，超过最大值时取最大值
        # @type Limit: Integer

        attr_accessor :BeginTime, :EndTime, :Cursor, :Limit

        def initialize(begintime=nil, endtime=nil, cursor=nil, limit=nil)
          @BeginTime = begintime
          @EndTime = endtime
          @Cursor = cursor
          @Limit = limit
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @Cursor = params['Cursor']
          @Limit = params['Limit']
        end
      end

      # QueryExternalContactDetailByDate返回参数结构体
      class QueryExternalContactDetailByDateResponse < TencentCloud::Common::AbstractModel
        # @param NextCursor: 分页游标，再下次请求时填写以获取之后分页的记录，如果已经没有更多的数据则返回空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextCursor: String
        # @param PageData: 外部联系人详细信息
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
              externalcontactdetailpro_tmp = ExternalContactDetailPro.new
              externalcontactdetailpro_tmp.deserialize(i)
              @PageData << externalcontactdetailpro_tmp
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

      # QueryExternalUserEventList请求参数结构体
      class QueryExternalUserEventListRequest < TencentCloud::Common::AbstractModel
        # @param BeginTime: 查询开始时间， 单位秒
        # @type BeginTime: Integer
        # @param EndTime: 查询结束时间， 单位秒
        # @type EndTime: Integer
        # @param Cursor: 用于分页查询的游标，字符串类型，由上一次调用返回，首次调用可不填
        # @type Cursor: String
        # @param Limit: 返回的最大记录数，整型，最大值100，默认值50，超过最大值时取最大值
        # @type Limit: Integer

        attr_accessor :BeginTime, :EndTime, :Cursor, :Limit

        def initialize(begintime=nil, endtime=nil, cursor=nil, limit=nil)
          @BeginTime = begintime
          @EndTime = endtime
          @Cursor = cursor
          @Limit = limit
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @Cursor = params['Cursor']
          @Limit = params['Limit']
        end
      end

      # QueryExternalUserEventList返回参数结构体
      class QueryExternalUserEventListResponse < TencentCloud::Common::AbstractModel
        # @param NextCursor: 分页游标，再下次请求时填写以获取之后分页的记录，如果已经没有更多的数据则返回空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextCursor: String
        # @param PageData: 外部联系人事件信息响应数据
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
              externalusereventinfo_tmp = ExternalUserEventInfo.new
              externalusereventinfo_tmp.deserialize(i)
              @PageData << externalusereventinfo_tmp
            end
          end
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

      # QueryFollowList请求参数结构体
      class QueryFollowListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页，预期请求的数据量，取值范围 1 ~ 1000
        # @type Limit: Integer
        # @param BeginTime: 查询开始时间， 单位秒
        # @type BeginTime: Integer
        # @param EndTime: 查询结束时间， 单位秒
        # @type EndTime: Integer
        # @param Cursor: 用于分页查询的游标，字符串类型，由上一次调用返回，首次调用可不填
        # @type Cursor: String

        attr_accessor :Limit, :BeginTime, :EndTime, :Cursor

        def initialize(limit=nil, begintime=nil, endtime=nil, cursor=nil)
          @Limit = limit
          @BeginTime = begintime
          @EndTime = endtime
          @Cursor = cursor
        end

        def deserialize(params)
          @Limit = params['Limit']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @Cursor = params['Cursor']
        end
      end

      # QueryFollowList返回参数结构体
      class QueryFollowListResponse < TencentCloud::Common::AbstractModel
        # @param NextCursor: 分页游标，下次调用带上该值，则从当前的位置继续往后拉，以实现增量拉取。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextCursor: String
        # @param PageData: 潜客客户存档信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageData: Array
        # @param HasMore: 是否还有更多数据。0-否；1-是。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HasMore: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NextCursor, :PageData, :HasMore, :RequestId

        def initialize(nextcursor=nil, pagedata=nil, hasmore=nil, requestid=nil)
          @NextCursor = nextcursor
          @PageData = pagedata
          @HasMore = hasmore
          @RequestId = requestid
        end

        def deserialize(params)
          @NextCursor = params['NextCursor']
          unless params['PageData'].nil?
            @PageData = []
            params['PageData'].each do |i|
              followinfo_tmp = FollowInfo.new
              followinfo_tmp.deserialize(i)
              @PageData << followinfo_tmp
            end
          end
          @HasMore = params['HasMore']
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

      # QueryMaterialList请求参数结构体
      class QueryMaterialListRequest < TencentCloud::Common::AbstractModel
        # @param MaterialType: 素材类型：0-图片，1-视频，3-文章，10-车型，11-名片
        # @type MaterialType: Integer
        # @param Cursor: 用于分页查询的游标，字符串类型，由上一次调用返回，首次调用可不填
        # @type Cursor: String
        # @param Limit: 返回的最大记录数，整型，最大值100，默认值50，超过最大值时取最大值
        # @type Limit: Integer

        attr_accessor :MaterialType, :Cursor, :Limit

        def initialize(materialtype=nil, cursor=nil, limit=nil)
          @MaterialType = materialtype
          @Cursor = cursor
          @Limit = limit
        end

        def deserialize(params)
          @MaterialType = params['MaterialType']
          @Cursor = params['Cursor']
          @Limit = params['Limit']
        end
      end

      # QueryMaterialList返回参数结构体
      class QueryMaterialListResponse < TencentCloud::Common::AbstractModel
        # @param NextCursor: 分页游标，再下次请求时填写以获取之后分页的记录，如果已经没有更多的数据则返回空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextCursor: String
        # @param PageData: 企业素材列表响应数据
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
              materialinfo_tmp = MaterialInfo.new
              materialinfo_tmp.deserialize(i)
              @PageData << materialinfo_tmp
            end
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

      # QueryStaffEventDetailStatistics请求参数结构体
      class QueryStaffEventDetailStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param BeginTime: 查询开始时间， 单位秒
        # @type BeginTime: Integer
        # @param EndTime: 查询结束时间， 单位秒
        # @type EndTime: Integer
        # @param Cursor: 用于分页查询的游标，字符串类型，由上一次调用返回，首次调用可不填
        # @type Cursor: String
        # @param Limit: 返回的最大记录数，整型，最大值100，默认值50，超过最大值时取最大值
        # @type Limit: Integer

        attr_accessor :BeginTime, :EndTime, :Cursor, :Limit

        def initialize(begintime=nil, endtime=nil, cursor=nil, limit=nil)
          @BeginTime = begintime
          @EndTime = endtime
          @Cursor = cursor
          @Limit = limit
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @Cursor = params['Cursor']
          @Limit = params['Limit']
        end
      end

      # QueryStaffEventDetailStatistics返回参数结构体
      class QueryStaffEventDetailStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param NextCursor: 分页游标，再下次请求时填写以获取之后分页的记录，如果已经没有更多的数据则返回空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextCursor: String
        # @param PageData: 企业成员SaaS使用明细统计响应数据
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
              salesactioneventdetail_tmp = SalesActionEventDetail.new
              salesactioneventdetail_tmp.deserialize(i)
              @PageData << salesactioneventdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryUserInfoList请求参数结构体
      class QueryUserInfoListRequest < TencentCloud::Common::AbstractModel
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

      # QueryUserInfoList返回参数结构体
      class QueryUserInfoListResponse < TencentCloud::Common::AbstractModel
        # @param NextCursor: 分页游标，再下次请求时填写以获取之后分页的记录，如果已经没有更多的数据则返回空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextCursor: String
        # @param PageData: 企业成员信息列表响应数据
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
              corpuserinfo_tmp = CorpUserInfo.new
              corpuserinfo_tmp.deserialize(i)
              @PageData << corpuserinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryVehicleInfoList请求参数结构体
      class QueryVehicleInfoListRequest < TencentCloud::Common::AbstractModel
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

      # QueryVehicleInfoList返回参数结构体
      class QueryVehicleInfoListResponse < TencentCloud::Common::AbstractModel
        # @param PageData: 车系车型信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageData: Array
        # @param NextCursor: 分页游标，下次调用带上该值，则从当前的位置继续往后拉取新增的数据，以实现增量拉取。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextCursor: String
        # @param HasMore: 是否还有更多数据。0-否；1-是。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HasMore: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PageData, :NextCursor, :HasMore, :RequestId

        def initialize(pagedata=nil, nextcursor=nil, hasmore=nil, requestid=nil)
          @PageData = pagedata
          @NextCursor = nextcursor
          @HasMore = hasmore
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PageData'].nil?
            @PageData = []
            params['PageData'].each do |i|
              vehicleinfo_tmp = VehicleInfo.new
              vehicleinfo_tmp.deserialize(i)
              @PageData << vehicleinfo_tmp
            end
          end
          @NextCursor = params['NextCursor']
          @HasMore = params['HasMore']
          @RequestId = params['RequestId']
        end
      end

      # 企业成员SaaS使用明细数据
      class SalesActionEventDetail < TencentCloud::Common::AbstractModel
        # @param EventCode: 事件码
        # @type EventCode: String
        # @param EventType: 事件类型
        # @type EventType: Integer
        # @param EventSource: 事件来源
        # @type EventSource: Integer
        # @param SalesId: 销售顾问id
        # @type SalesId: Integer
        # @param MaterialType: 素材类型
        # @type MaterialType: Integer
        # @param MaterialId: 素材编号id
        # @type MaterialId: Integer
        # @param EventTime: 事件上报时间，单位：秒
        # @type EventTime: Integer

        attr_accessor :EventCode, :EventType, :EventSource, :SalesId, :MaterialType, :MaterialId, :EventTime

        def initialize(eventcode=nil, eventtype=nil, eventsource=nil, salesid=nil, materialtype=nil, materialid=nil, eventtime=nil)
          @EventCode = eventcode
          @EventType = eventtype
          @EventSource = eventsource
          @SalesId = salesid
          @MaterialType = materialtype
          @MaterialId = materialid
          @EventTime = eventtime
        end

        def deserialize(params)
          @EventCode = params['EventCode']
          @EventType = params['EventType']
          @EventSource = params['EventSource']
          @SalesId = params['SalesId']
          @MaterialType = params['MaterialType']
          @MaterialId = params['MaterialId']
          @EventTime = params['EventTime']
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

      # 车型车系信息
      class VehicleInfo < TencentCloud::Common::AbstractModel
        # @param BrandId: 品牌id
        # @type BrandId: Integer
        # @param BrandName: 品牌名称
        # @type BrandName: String
        # @param SeriesId: 车系id
        # @type SeriesId: Integer
        # @param SeriesName: 车系名称
        # @type SeriesName: String
        # @param ModelId: 车型id
        # @type ModelId: Integer
        # @param ModelName: 车型名称
        # @type ModelName: String

        attr_accessor :BrandId, :BrandName, :SeriesId, :SeriesName, :ModelId, :ModelName

        def initialize(brandid=nil, brandname=nil, seriesid=nil, seriesname=nil, modelid=nil, modelname=nil)
          @BrandId = brandid
          @BrandName = brandname
          @SeriesId = seriesid
          @SeriesName = seriesname
          @ModelId = modelid
          @ModelName = modelname
        end

        def deserialize(params)
          @BrandId = params['BrandId']
          @BrandName = params['BrandName']
          @SeriesId = params['SeriesId']
          @SeriesName = params['SeriesName']
          @ModelId = params['ModelId']
          @ModelName = params['ModelName']
        end
      end

      # 购车用途详细信息
      class VehiclePurpose < TencentCloud::Common::AbstractModel
        # @param VehiclePurposeCode: 购车用途code
        # @type VehiclePurposeCode: String
        # @param VehiclePurposeName: 购车用途名称
        # @type VehiclePurposeName: String

        attr_accessor :VehiclePurposeCode, :VehiclePurposeName

        def initialize(vehiclepurposecode=nil, vehiclepurposename=nil)
          @VehiclePurposeCode = vehiclepurposecode
          @VehiclePurposeName = vehiclepurposename
        end

        def deserialize(params)
          @VehiclePurposeCode = params['VehiclePurposeCode']
          @VehiclePurposeName = params['VehiclePurposeName']
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

