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
  module Solar
    module V20181011
      # 活动详情
      class ActivityInfo < TencentCloud::Common::AbstractModel
        # @param TemplateId: 活动使用模板id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateId: String
        # @param ActivityTitle: 活动标题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActivityTitle: String
        # @param ActivityDesc: 活动描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActivityDesc: String
        # @param ActivityCover: 活动封面地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActivityCover: String
        # @param ActivityType: 活动类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActivityType: String
        # @param ActivityId: 活动id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActivityId: String
        # @param PersonalConfig: 活动模板自定义配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PersonalConfig: String

        attr_accessor :TemplateId, :ActivityTitle, :ActivityDesc, :ActivityCover, :ActivityType, :ActivityId, :PersonalConfig
        
        def initialize(templateid=nil, activitytitle=nil, activitydesc=nil, activitycover=nil, activitytype=nil, activityid=nil, personalconfig=nil)
          @TemplateId = templateid
          @ActivityTitle = activitytitle
          @ActivityDesc = activitydesc
          @ActivityCover = activitycover
          @ActivityType = activitytype
          @ActivityId = activityid
          @PersonalConfig = personalconfig
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @ActivityTitle = params['ActivityTitle']
          @ActivityDesc = params['ActivityDesc']
          @ActivityCover = params['ActivityCover']
          @ActivityType = params['ActivityType']
          @ActivityId = params['ActivityId']
          @PersonalConfig = params['PersonalConfig']
        end
      end

      # CheckStaffChUser请求参数结构体
      class CheckStaffChUserRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 员工ID
        # @type UserId: Array
        # @param OperateType: 渠道状态：checkpass审核通过, checkreject审核拒绝, enableoperate启用, stopoperate停用
        # @type OperateType: String

        attr_accessor :UserId, :OperateType
        
        def initialize(userid=nil, operatetype=nil)
          @UserId = userid
          @OperateType = operatetype
        end

        def deserialize(params)
          @UserId = params['UserId']
          @OperateType = params['OperateType']
        end
      end

      # CheckStaffChUser返回参数结构体
      class CheckStaffChUserResponse < TencentCloud::Common::AbstractModel
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

      # CopyActivityChannel请求参数结构体
      class CopyActivityChannelRequest < TencentCloud::Common::AbstractModel
        # @param ActivityId: 活动ID
        # @type ActivityId: String
        # @param ChannelFrom: 来源渠道ID
        # @type ChannelFrom: String
        # @param ChannelTo: 目的渠道id
        # @type ChannelTo: Array

        attr_accessor :ActivityId, :ChannelFrom, :ChannelTo
        
        def initialize(activityid=nil, channelfrom=nil, channelto=nil)
          @ActivityId = activityid
          @ChannelFrom = channelfrom
          @ChannelTo = channelto
        end

        def deserialize(params)
          @ActivityId = params['ActivityId']
          @ChannelFrom = params['ChannelFrom']
          @ChannelTo = params['ChannelTo']
        end
      end

      # CopyActivityChannel返回参数结构体
      class CopyActivityChannelResponse < TencentCloud::Common::AbstractModel
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

      # CreateProject请求参数结构体
      class CreateProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectName: 项目名称
        # @type ProjectName: String
        # @param ProjectOrg: 项目机构
        # @type ProjectOrg: String
        # @param ProjectBudget: 项目预算
        # @type ProjectBudget: String
        # @param ProjectIntroduction: 项目简介
        # @type ProjectIntroduction: String
        # @param ProjectOrgId: 所属部门ID
        # @type ProjectOrgId: String

        attr_accessor :ProjectName, :ProjectOrg, :ProjectBudget, :ProjectIntroduction, :ProjectOrgId
        
        def initialize(projectname=nil, projectorg=nil, projectbudget=nil, projectintroduction=nil, projectorgid=nil)
          @ProjectName = projectname
          @ProjectOrg = projectorg
          @ProjectBudget = projectbudget
          @ProjectIntroduction = projectintroduction
          @ProjectOrgId = projectorgid
        end

        def deserialize(params)
          @ProjectName = params['ProjectName']
          @ProjectOrg = params['ProjectOrg']
          @ProjectBudget = params['ProjectBudget']
          @ProjectIntroduction = params['ProjectIntroduction']
          @ProjectOrgId = params['ProjectOrgId']
        end
      end

      # CreateProject返回参数结构体
      class CreateProjectResponse < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProjectId, :RequestId
        
        def initialize(projectid=nil, requestid=nil)
          @ProjectId = projectid
          @RequestId = requestid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @RequestId = params['RequestId']
        end
      end

      # CreateSubProject请求参数结构体
      class CreateSubProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 所属项目id
        # @type ProjectId: String
        # @param SubProjectName: 子项目名称
        # @type SubProjectName: String

        attr_accessor :ProjectId, :SubProjectName
        
        def initialize(projectid=nil, subprojectname=nil)
          @ProjectId = projectid
          @SubProjectName = subprojectname
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @SubProjectName = params['SubProjectName']
        end
      end

      # CreateSubProject返回参数结构体
      class CreateSubProjectResponse < TencentCloud::Common::AbstractModel
        # @param SubProjectId: 子项目id
        # @type SubProjectId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SubProjectId, :RequestId
        
        def initialize(subprojectid=nil, requestid=nil)
          @SubProjectId = subprojectid
          @RequestId = requestid
        end

        def deserialize(params)
          @SubProjectId = params['SubProjectId']
          @RequestId = params['RequestId']
        end
      end

      # 客户档案
      class CustomerInfo < TencentCloud::Common::AbstractModel
        # @param Activity: 总活跃度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Activity: Integer
        # @param AudienceUserId: 客户ID
        # @type AudienceUserId: String
        # @param Avatar: 头像
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Avatar: String
        # @param City: 最近记录城市
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type City: String
        # @param LastActiveTime: 最活跃时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastActiveTime: String
        # @param MarkFlag: 是否星标客户
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MarkFlag: String
        # @param MonthActive: 30天活跃度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonthActive: Integer
        # @param MonthRecommend: 30天推荐度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonthRecommend: Integer
        # @param Phone: 手机号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Phone: String
        # @param Province: 最近记录省份
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Province: String
        # @param RealName: 姓名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealName: String
        # @param RelChannelFlag: 员工标识 0 未关联 1 已关联
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelChannelFlag: Integer
        # @param Sex: 性别 1男 2女
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sex: Integer
        # @param Spread: 传播力（好友数）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Spread: Integer
        # @param WeekActive: 7天活跃度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WeekActive: Integer
        # @param WeekRecommend: 7天推荐度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WeekRecommend: Integer
        # @param WxCity: 微信城市
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WxCity: String
        # @param WxCountry: 微信国家或地区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WxCountry: String
        # @param WxNickname: 微信呢称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WxNickname: String
        # @param WxProvince: 微信省份
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WxProvince: String

        attr_accessor :Activity, :AudienceUserId, :Avatar, :City, :LastActiveTime, :MarkFlag, :MonthActive, :MonthRecommend, :Phone, :Province, :RealName, :RelChannelFlag, :Sex, :Spread, :WeekActive, :WeekRecommend, :WxCity, :WxCountry, :WxNickname, :WxProvince
        
        def initialize(activity=nil, audienceuserid=nil, avatar=nil, city=nil, lastactivetime=nil, markflag=nil, monthactive=nil, monthrecommend=nil, phone=nil, province=nil, realname=nil, relchannelflag=nil, sex=nil, spread=nil, weekactive=nil, weekrecommend=nil, wxcity=nil, wxcountry=nil, wxnickname=nil, wxprovince=nil)
          @Activity = activity
          @AudienceUserId = audienceuserid
          @Avatar = avatar
          @City = city
          @LastActiveTime = lastactivetime
          @MarkFlag = markflag
          @MonthActive = monthactive
          @MonthRecommend = monthrecommend
          @Phone = phone
          @Province = province
          @RealName = realname
          @RelChannelFlag = relchannelflag
          @Sex = sex
          @Spread = spread
          @WeekActive = weekactive
          @WeekRecommend = weekrecommend
          @WxCity = wxcity
          @WxCountry = wxcountry
          @WxNickname = wxnickname
          @WxProvince = wxprovince
        end

        def deserialize(params)
          @Activity = params['Activity']
          @AudienceUserId = params['AudienceUserId']
          @Avatar = params['Avatar']
          @City = params['City']
          @LastActiveTime = params['LastActiveTime']
          @MarkFlag = params['MarkFlag']
          @MonthActive = params['MonthActive']
          @MonthRecommend = params['MonthRecommend']
          @Phone = params['Phone']
          @Province = params['Province']
          @RealName = params['RealName']
          @RelChannelFlag = params['RelChannelFlag']
          @Sex = params['Sex']
          @Spread = params['Spread']
          @WeekActive = params['WeekActive']
          @WeekRecommend = params['WeekRecommend']
          @WxCity = params['WxCity']
          @WxCountry = params['WxCountry']
          @WxNickname = params['WxNickname']
          @WxProvince = params['WxProvince']
        end
      end

      # DeleteProject请求参数结构体
      class DeleteProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String

        attr_accessor :ProjectId
        
        def initialize(projectid=nil)
          @ProjectId = projectid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
        end
      end

      # DeleteProject返回参数结构体
      class DeleteProjectResponse < TencentCloud::Common::AbstractModel
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

      # DescribeCustomer请求参数结构体
      class DescribeCustomerRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID
        # @type UserId: String

        attr_accessor :UserId
        
        def initialize(userid=nil)
          @UserId = userid
        end

        def deserialize(params)
          @UserId = params['UserId']
        end
      end

      # DescribeCustomer返回参数结构体
      class DescribeCustomerResponse < TencentCloud::Common::AbstractModel
        # @param AddressList: 地址列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddressList: Array
        # @param UserId: 用户id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param Avatar: 头像
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Avatar: String
        # @param Birthday: 生日
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Birthday: String
        # @param City: 城市
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type City: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param Device: 设备
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Device: String
        # @param Industrys: 行业
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Industrys: Array
        # @param LastActiveTime: 上次登录时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastActiveTime: String
        # @param MarkFlag: 是否星标 1是 0否
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MarkFlag: String
        # @param Model: 手机型号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Model: String
        # @param OpenId: 微信openid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpenId: String
        # @param PayFeature: 消费特点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayFeature: String
        # @param Phone: 手机号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Phone: String
        # @param PhoneList: 手机号码列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneList: String
        # @param Province: 最近记录省份
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Province: String
        # @param RealName: 姓名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealName: String
        # @param RelChannelFlag: 员工标识 0：非员工 1：员工
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelChannelFlag: String
        # @param Remark: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param Sex: 性别 1男 2女
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sex: String
        # @param SourceAudienceVo: 最初来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceAudienceVo: String
        # @param SubWechats: 关注公众号列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubWechats: Array
        # @param UnionId: 微信unionid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnionId: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param UserTypes: 用户类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserTypes: Array
        # @param WxCity: 城市
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WxCity: String
        # @param WxCountry: 国家
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WxCountry: String
        # @param WxNickname: 昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WxNickname: String
        # @param WxProvince: 省份
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WxProvince: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AddressList, :UserId, :Avatar, :Birthday, :City, :CreateTime, :Device, :Industrys, :LastActiveTime, :MarkFlag, :Model, :OpenId, :PayFeature, :Phone, :PhoneList, :Province, :RealName, :RelChannelFlag, :Remark, :Sex, :SourceAudienceVo, :SubWechats, :UnionId, :UpdateTime, :UserTypes, :WxCity, :WxCountry, :WxNickname, :WxProvince, :RequestId
        
        def initialize(addresslist=nil, userid=nil, avatar=nil, birthday=nil, city=nil, createtime=nil, device=nil, industrys=nil, lastactivetime=nil, markflag=nil, model=nil, openid=nil, payfeature=nil, phone=nil, phonelist=nil, province=nil, realname=nil, relchannelflag=nil, remark=nil, sex=nil, sourceaudiencevo=nil, subwechats=nil, unionid=nil, updatetime=nil, usertypes=nil, wxcity=nil, wxcountry=nil, wxnickname=nil, wxprovince=nil, requestid=nil)
          @AddressList = addresslist
          @UserId = userid
          @Avatar = avatar
          @Birthday = birthday
          @City = city
          @CreateTime = createtime
          @Device = device
          @Industrys = industrys
          @LastActiveTime = lastactivetime
          @MarkFlag = markflag
          @Model = model
          @OpenId = openid
          @PayFeature = payfeature
          @Phone = phone
          @PhoneList = phonelist
          @Province = province
          @RealName = realname
          @RelChannelFlag = relchannelflag
          @Remark = remark
          @Sex = sex
          @SourceAudienceVo = sourceaudiencevo
          @SubWechats = subwechats
          @UnionId = unionid
          @UpdateTime = updatetime
          @UserTypes = usertypes
          @WxCity = wxcity
          @WxCountry = wxcountry
          @WxNickname = wxnickname
          @WxProvince = wxprovince
          @RequestId = requestid
        end

        def deserialize(params)
          @AddressList = params['AddressList']
          @UserId = params['UserId']
          @Avatar = params['Avatar']
          @Birthday = params['Birthday']
          @City = params['City']
          @CreateTime = params['CreateTime']
          @Device = params['Device']
          @Industrys = params['Industrys']
          @LastActiveTime = params['LastActiveTime']
          @MarkFlag = params['MarkFlag']
          @Model = params['Model']
          @OpenId = params['OpenId']
          @PayFeature = params['PayFeature']
          @Phone = params['Phone']
          @PhoneList = params['PhoneList']
          @Province = params['Province']
          @RealName = params['RealName']
          @RelChannelFlag = params['RelChannelFlag']
          @Remark = params['Remark']
          @Sex = params['Sex']
          @SourceAudienceVo = params['SourceAudienceVo']
          @SubWechats = params['SubWechats']
          @UnionId = params['UnionId']
          @UpdateTime = params['UpdateTime']
          @UserTypes = params['UserTypes']
          @WxCity = params['WxCity']
          @WxCountry = params['WxCountry']
          @WxNickname = params['WxNickname']
          @WxProvince = params['WxProvince']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCustomers请求参数结构体
      class DescribeCustomersRequest < TencentCloud::Common::AbstractModel
        # @param QueryType: 查询类型，0.个人，1负责部门，2.指定部门
        # @type QueryType: String
        # @param GroupId: 分组ID
        # @type GroupId: String
        # @param MarkFlag: 是否星级标记 1是 0否
        # @type MarkFlag: Integer
        # @param TagIds: 客户标签，多个标签用逗号隔开
        # @type TagIds: String
        # @param RelChannelFlag: 员工标识筛选，0：非员工，1：员工
        # @type RelChannelFlag: String
        # @param NeedPhoneFlag: 必须存在手机 1是 0否
        # @type NeedPhoneFlag: Integer
        # @param Province: 省份
        # @type Province: String
        # @param City: 城市
        # @type City: String
        # @param Sex: 性别 1男 2女
        # @type Sex: String
        # @param KeyWord: 城市
        # @type KeyWord: String
        # @param Offset: 查询开始位置
        # @type Offset: Integer
        # @param Limit: 每页记录条数
        # @type Limit: Integer
        # @param SubProjectId: 子项目ID
        # @type SubProjectId: String

        attr_accessor :QueryType, :GroupId, :MarkFlag, :TagIds, :RelChannelFlag, :NeedPhoneFlag, :Province, :City, :Sex, :KeyWord, :Offset, :Limit, :SubProjectId
        
        def initialize(querytype=nil, groupid=nil, markflag=nil, tagids=nil, relchannelflag=nil, needphoneflag=nil, province=nil, city=nil, sex=nil, keyword=nil, offset=nil, limit=nil, subprojectid=nil)
          @QueryType = querytype
          @GroupId = groupid
          @MarkFlag = markflag
          @TagIds = tagids
          @RelChannelFlag = relchannelflag
          @NeedPhoneFlag = needphoneflag
          @Province = province
          @City = city
          @Sex = sex
          @KeyWord = keyword
          @Offset = offset
          @Limit = limit
          @SubProjectId = subprojectid
        end

        def deserialize(params)
          @QueryType = params['QueryType']
          @GroupId = params['GroupId']
          @MarkFlag = params['MarkFlag']
          @TagIds = params['TagIds']
          @RelChannelFlag = params['RelChannelFlag']
          @NeedPhoneFlag = params['NeedPhoneFlag']
          @Province = params['Province']
          @City = params['City']
          @Sex = params['Sex']
          @KeyWord = params['KeyWord']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SubProjectId = params['SubProjectId']
        end
      end

      # DescribeCustomers返回参数结构体
      class DescribeCustomersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总记录条数
        # @type TotalCount: Integer
        # @param UserList: 数据列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :UserList, :RequestId
        
        def initialize(totalcount=nil, userlist=nil, requestid=nil)
          @TotalCount = totalcount
          @UserList = userlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['UserList'].nil?
            @UserList = []
            params['UserList'].each do |i|
              @UserList << CustomerInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProject请求参数结构体
      class DescribeProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String

        attr_accessor :ProjectId
        
        def initialize(projectid=nil)
          @ProjectId = projectid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeProject返回参数结构体
      class DescribeProjectResponse < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param ProjectName: 项目名称
        # @type ProjectName: String
        # @param ProjectBudget: 项目预算
        # @type ProjectBudget: Float
        # @param ProjectOrg: 项目机构
        # @type ProjectOrg: String
        # @param ProjectIntroduction: 项目简介
        # @type ProjectIntroduction: String
        # @param SubProjectList: 子项目列表
        # @type SubProjectList: Array
        # @param ProjectStatus: 项目状态
        # @type ProjectStatus: String
        # @param ProjectOrgId: 项目机构Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectOrgId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProjectId, :ProjectName, :ProjectBudget, :ProjectOrg, :ProjectIntroduction, :SubProjectList, :ProjectStatus, :ProjectOrgId, :RequestId
        
        def initialize(projectid=nil, projectname=nil, projectbudget=nil, projectorg=nil, projectintroduction=nil, subprojectlist=nil, projectstatus=nil, projectorgid=nil, requestid=nil)
          @ProjectId = projectid
          @ProjectName = projectname
          @ProjectBudget = projectbudget
          @ProjectOrg = projectorg
          @ProjectIntroduction = projectintroduction
          @SubProjectList = subprojectlist
          @ProjectStatus = projectstatus
          @ProjectOrgId = projectorgid
          @RequestId = requestid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @ProjectBudget = params['ProjectBudget']
          @ProjectOrg = params['ProjectOrg']
          @ProjectIntroduction = params['ProjectIntroduction']
          unless params['SubProjectList'].nil?
            @SubProjectList = []
            params['SubProjectList'].each do |i|
              @SubProjectList << SubProjectInfo.new.deserialize(i)
            end
          end
          @ProjectStatus = params['ProjectStatus']
          @ProjectOrgId = params['ProjectOrgId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProjectStock请求参数结构体
      class DescribeProjectStockRequest < TencentCloud::Common::AbstractModel
        # @param SubProjectId: 子项目id
        # @type SubProjectId: String

        attr_accessor :SubProjectId
        
        def initialize(subprojectid=nil)
          @SubProjectId = subprojectid
        end

        def deserialize(params)
          @SubProjectId = params['SubProjectId']
        end
      end

      # DescribeProjectStock返回参数结构体
      class DescribeProjectStockResponse < TencentCloud::Common::AbstractModel
        # @param ProjectStocks: 项目库存列表
        # @type ProjectStocks: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProjectStocks, :RequestId
        
        def initialize(projectstocks=nil, requestid=nil)
          @ProjectStocks = projectstocks
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ProjectStocks'].nil?
            @ProjectStocks = []
            params['ProjectStocks'].each do |i|
              @ProjectStocks << ProjectStock.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProjects请求参数结构体
      class DescribeProjectsRequest < TencentCloud::Common::AbstractModel
        # @param PageNo: 页码
        # @type PageNo: Integer
        # @param PageSize: 页面大小
        # @type PageSize: Integer
        # @param SearchWord: 过滤规则
        # @type SearchWord: String
        # @param Filters: 部门范围过滤
        # @type Filters: :class:`Tencentcloud::Solar.v20181011.models.Filters`
        # @param ProjectStatus: 项目状态, 0:编辑中 1:运营中 2:已下线 3:已删除 4:审批中
        # @type ProjectStatus: Integer

        attr_accessor :PageNo, :PageSize, :SearchWord, :Filters, :ProjectStatus
        
        def initialize(pageno=nil, pagesize=nil, searchword=nil, filters=nil, projectstatus=nil)
          @PageNo = pageno
          @PageSize = pagesize
          @SearchWord = searchword
          @Filters = filters
          @ProjectStatus = projectstatus
        end

        def deserialize(params)
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
          @SearchWord = params['SearchWord']
          unless params['Filters'].nil?
            @Filters = Filters.new.deserialize(params['Filters'])
          end
          @ProjectStatus = params['ProjectStatus']
        end
      end

      # DescribeProjects返回参数结构体
      class DescribeProjectsResponse < TencentCloud::Common::AbstractModel
        # @param ProjectList: 项目列表
        # @type ProjectList: Array
        # @param TotalCount: 项目数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProjectList, :TotalCount, :RequestId
        
        def initialize(projectlist=nil, totalcount=nil, requestid=nil)
          @ProjectList = projectlist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ProjectList'].nil?
            @ProjectList = []
            params['ProjectList'].each do |i|
              @ProjectList << ProjectInfo.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceTemplateHeaders请求参数结构体
      class DescribeResourceTemplateHeadersRequest < TencentCloud::Common::AbstractModel
        # @param WxAppId: 微信公众号appId
        # @type WxAppId: String

        attr_accessor :WxAppId
        
        def initialize(wxappid=nil)
          @WxAppId = wxappid
        end

        def deserialize(params)
          @WxAppId = params['WxAppId']
        end
      end

      # DescribeResourceTemplateHeaders返回参数结构体
      class DescribeResourceTemplateHeadersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录条数
        # @type TotalCount: Integer
        # @param TmplList: 模板列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TmplList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TmplList, :RequestId
        
        def initialize(totalcount=nil, tmpllist=nil, requestid=nil)
          @TotalCount = totalcount
          @TmplList = tmpllist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TmplList'].nil?
            @TmplList = []
            params['TmplList'].each do |i|
              @TmplList << ResourceTemplateHeader.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSubProject请求参数结构体
      class DescribeSubProjectRequest < TencentCloud::Common::AbstractModel
        # @param SubProjectId: 子项目id
        # @type SubProjectId: String

        attr_accessor :SubProjectId
        
        def initialize(subprojectid=nil)
          @SubProjectId = subprojectid
        end

        def deserialize(params)
          @SubProjectId = params['SubProjectId']
        end
      end

      # DescribeSubProject返回参数结构体
      class DescribeSubProjectResponse < TencentCloud::Common::AbstractModel
        # @param ProductInfo: 作品信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductInfo: :class:`Tencentcloud::Solar.v20181011.models.ProductInfo`
        # @param ActivityInfo: 活动信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActivityInfo: :class:`Tencentcloud::Solar.v20181011.models.ActivityInfo`
        # @param ShareTitle: 分享标题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShareTitle: String
        # @param ShareDesc: 分享描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShareDesc: String
        # @param ShareImg: 分享图标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShareImg: String
        # @param HasStrategy: 是否已创建策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HasStrategy: Integer
        # @param SubProjectStatus: 子项目状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubProjectStatus: String
        # @param ShareAppId: 分享公众号的appId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShareAppId: String
        # @param ShareWsId: 分享公众号的wsId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShareWsId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProductInfo, :ActivityInfo, :ShareTitle, :ShareDesc, :ShareImg, :HasStrategy, :SubProjectStatus, :ShareAppId, :ShareWsId, :RequestId
        
        def initialize(productinfo=nil, activityinfo=nil, sharetitle=nil, sharedesc=nil, shareimg=nil, hasstrategy=nil, subprojectstatus=nil, shareappid=nil, sharewsid=nil, requestid=nil)
          @ProductInfo = productinfo
          @ActivityInfo = activityinfo
          @ShareTitle = sharetitle
          @ShareDesc = sharedesc
          @ShareImg = shareimg
          @HasStrategy = hasstrategy
          @SubProjectStatus = subprojectstatus
          @ShareAppId = shareappid
          @ShareWsId = sharewsid
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ProductInfo'].nil?
            @ProductInfo = ProductInfo.new.deserialize(params['ProductInfo'])
          end
          unless params['ActivityInfo'].nil?
            @ActivityInfo = ActivityInfo.new.deserialize(params['ActivityInfo'])
          end
          @ShareTitle = params['ShareTitle']
          @ShareDesc = params['ShareDesc']
          @ShareImg = params['ShareImg']
          @HasStrategy = params['HasStrategy']
          @SubProjectStatus = params['SubProjectStatus']
          @ShareAppId = params['ShareAppId']
          @ShareWsId = params['ShareWsId']
          @RequestId = params['RequestId']
        end
      end

      # ExpireFlow请求参数结构体
      class ExpireFlowRequest < TencentCloud::Common::AbstractModel
        # @param FlowId: 工单ID
        # @type FlowId: String

        attr_accessor :FlowId
        
        def initialize(flowid=nil)
          @FlowId = flowid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
        end
      end

      # ExpireFlow返回参数结构体
      class ExpireFlowResponse < TencentCloud::Common::AbstractModel
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

      # 可见范围过滤参数
      class Filters < TencentCloud::Common::AbstractModel
        # @param Type: 过滤类型, 0: 默认(可见部门+自创) 1: 自创 2: 指定部门(部门在可见范围内)
        # @type Type: Integer
        # @param DeptIds: 指定部门Id, 类型2使用
        # @type DeptIds: Array
        # @param UserIds: 用户Id列表
        # @type UserIds: Array

        attr_accessor :Type, :DeptIds, :UserIds
        
        def initialize(type=nil, deptids=nil, userids=nil)
          @Type = type
          @DeptIds = deptids
          @UserIds = userids
        end

        def deserialize(params)
          @Type = params['Type']
          @DeptIds = params['DeptIds']
          @UserIds = params['UserIds']
        end
      end

      # ModifyProject请求参数结构体
      class ModifyProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ProjectName: 项目名称
        # @type ProjectName: String
        # @param ProjectBudget: 项目预算
        # @type ProjectBudget: String
        # @param ProjectOrg: 项目机构
        # @type ProjectOrg: String
        # @param ProjectIntroduction: 项目简介
        # @type ProjectIntroduction: String
        # @param ProjectOrgId: 项目机构Id
        # @type ProjectOrgId: String

        attr_accessor :ProjectId, :ProjectName, :ProjectBudget, :ProjectOrg, :ProjectIntroduction, :ProjectOrgId
        
        def initialize(projectid=nil, projectname=nil, projectbudget=nil, projectorg=nil, projectintroduction=nil, projectorgid=nil)
          @ProjectId = projectid
          @ProjectName = projectname
          @ProjectBudget = projectbudget
          @ProjectOrg = projectorg
          @ProjectIntroduction = projectintroduction
          @ProjectOrgId = projectorgid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @ProjectBudget = params['ProjectBudget']
          @ProjectOrg = params['ProjectOrg']
          @ProjectIntroduction = params['ProjectIntroduction']
          @ProjectOrgId = params['ProjectOrgId']
        end
      end

      # ModifyProject返回参数结构体
      class ModifyProjectResponse < TencentCloud::Common::AbstractModel
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

      # OffLineProject请求参数结构体
      class OffLineProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String

        attr_accessor :ProjectId
        
        def initialize(projectid=nil)
          @ProjectId = projectid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
        end
      end

      # OffLineProject返回参数结构体
      class OffLineProjectResponse < TencentCloud::Common::AbstractModel
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

      # 内容页结构
      class ProductInfo < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateId: String
        # @param ProductTitle: 模板主题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductTitle: String
        # @param ProductDesc: 模板描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductDesc: String
        # @param ProductCover: 模板封面地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductCover: String
        # @param ProductId: 内容作品id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductId: String
        # @param ProductUrl: 作品预览链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductUrl: String
        # @param ProductName: 作品名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductName: String

        attr_accessor :TemplateId, :ProductTitle, :ProductDesc, :ProductCover, :ProductId, :ProductUrl, :ProductName
        
        def initialize(templateid=nil, producttitle=nil, productdesc=nil, productcover=nil, productid=nil, producturl=nil, productname=nil)
          @TemplateId = templateid
          @ProductTitle = producttitle
          @ProductDesc = productdesc
          @ProductCover = productcover
          @ProductId = productid
          @ProductUrl = producturl
          @ProductName = productname
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @ProductTitle = params['ProductTitle']
          @ProductDesc = params['ProductDesc']
          @ProductCover = params['ProductCover']
          @ProductId = params['ProductId']
          @ProductUrl = params['ProductUrl']
          @ProductName = params['ProductName']
        end
      end

      # 项目基础信息
      class ProjectInfo < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ProjectName: 项目名称
        # @type ProjectName: String
        # @param ProjectOrg: 项目所属机构
        # @type ProjectOrg: String
        # @param ProjectBudget: 项目预算
        # @type ProjectBudget: Float
        # @param ProjectStatus: 项目状态
        # @type ProjectStatus: String
        # @param CreateTime: 项目创建时间
        # @type CreateTime: String
        # @param ProjectIntroduction: 项目简介
        # @type ProjectIntroduction: String
        # @param ProjectOrgId: 项目所属机构Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectOrgId: String

        attr_accessor :ProjectId, :ProjectName, :ProjectOrg, :ProjectBudget, :ProjectStatus, :CreateTime, :ProjectIntroduction, :ProjectOrgId
        
        def initialize(projectid=nil, projectname=nil, projectorg=nil, projectbudget=nil, projectstatus=nil, createtime=nil, projectintroduction=nil, projectorgid=nil)
          @ProjectId = projectid
          @ProjectName = projectname
          @ProjectOrg = projectorg
          @ProjectBudget = projectbudget
          @ProjectStatus = projectstatus
          @CreateTime = createtime
          @ProjectIntroduction = projectintroduction
          @ProjectOrgId = projectorgid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @ProjectOrg = params['ProjectOrg']
          @ProjectBudget = params['ProjectBudget']
          @ProjectStatus = params['ProjectStatus']
          @CreateTime = params['CreateTime']
          @ProjectIntroduction = params['ProjectIntroduction']
          @ProjectOrgId = params['ProjectOrgId']
        end
      end

      # 项目奖品库存
      class ProjectStock < TencentCloud::Common::AbstractModel
        # @param PrizeId: 奖品id
        # @type PrizeId: String
        # @param PrizeBat: 奖品批次
        # @type PrizeBat: Integer
        # @param PrizeName: 奖品名称
        # @type PrizeName: String
        # @param UsedStock: 已分配奖品数量
        # @type UsedStock: Integer
        # @param RemainStock: 该奖品剩余库存数量
        # @type RemainStock: Integer
        # @param PoolIdx: 奖品所在奖池index
        # @type PoolIdx: Integer
        # @param PoolName: 奖品所在奖池名称
        # @type PoolName: String

        attr_accessor :PrizeId, :PrizeBat, :PrizeName, :UsedStock, :RemainStock, :PoolIdx, :PoolName
        
        def initialize(prizeid=nil, prizebat=nil, prizename=nil, usedstock=nil, remainstock=nil, poolidx=nil, poolname=nil)
          @PrizeId = prizeid
          @PrizeBat = prizebat
          @PrizeName = prizename
          @UsedStock = usedstock
          @RemainStock = remainstock
          @PoolIdx = poolidx
          @PoolName = poolname
        end

        def deserialize(params)
          @PrizeId = params['PrizeId']
          @PrizeBat = params['PrizeBat']
          @PrizeName = params['PrizeName']
          @UsedStock = params['UsedStock']
          @RemainStock = params['RemainStock']
          @PoolIdx = params['PoolIdx']
          @PoolName = params['PoolName']
        end
      end

      # ReplenishProjectStock请求参数结构体
      class ReplenishProjectStockRequest < TencentCloud::Common::AbstractModel
        # @param SubProjectId: 项目id
        # @type SubProjectId: String
        # @param PrizeId: 奖品id
        # @type PrizeId: String
        # @param PrizeNum: 奖品数量
        # @type PrizeNum: Integer
        # @param PoolIndex: 奖池索引
        # @type PoolIndex: Integer
        # @param PoolName: 奖池名称
        # @type PoolName: String

        attr_accessor :SubProjectId, :PrizeId, :PrizeNum, :PoolIndex, :PoolName
        
        def initialize(subprojectid=nil, prizeid=nil, prizenum=nil, poolindex=nil, poolname=nil)
          @SubProjectId = subprojectid
          @PrizeId = prizeid
          @PrizeNum = prizenum
          @PoolIndex = poolindex
          @PoolName = poolname
        end

        def deserialize(params)
          @SubProjectId = params['SubProjectId']
          @PrizeId = params['PrizeId']
          @PrizeNum = params['PrizeNum']
          @PoolIndex = params['PoolIndex']
          @PoolName = params['PoolName']
        end
      end

      # ReplenishProjectStock返回参数结构体
      class ReplenishProjectStockResponse < TencentCloud::Common::AbstractModel
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

      # 素材模板消息标题的样例列表
      class ResourceTemplateHeader < TencentCloud::Common::AbstractModel
        # @param Content: 模板预览区内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String
        # @param Example: 模板预览示例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Example: String
        # @param KeyArray: 模板预览区域键数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyArray: String
        # @param TemplateId: 模板id
        # @type TemplateId: String
        # @param Title: 模板标题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Title: String

        attr_accessor :Content, :Example, :KeyArray, :TemplateId, :Title
        
        def initialize(content=nil, example=nil, keyarray=nil, templateid=nil, title=nil)
          @Content = content
          @Example = example
          @KeyArray = keyarray
          @TemplateId = templateid
          @Title = title
        end

        def deserialize(params)
          @Content = params['Content']
          @Example = params['Example']
          @KeyArray = params['KeyArray']
          @TemplateId = params['TemplateId']
          @Title = params['Title']
        end
      end

      # SendWxTouchTask请求参数结构体
      class SendWxTouchTaskRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 客户分组ID
        # @type GroupId: String
        # @param DistinctFlag: 去除今日已发送的客户
        # @type DistinctFlag: Boolean
        # @param IsSendNow: 是否立马发送
        # @type IsSendNow: Boolean
        # @param SendDate: 发送时间，一般为0
        # @type SendDate: Integer
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param WxTouchType: 微信触达类型，text, news, smallapp, tmplmsg
        # @type WxTouchType: String
        # @param Title: 标题
        # @type Title: String
        # @param Content: 文本内容
        # @type Content: String
        # @param NewsId: 图文素材ID
        # @type NewsId: String
        # @param SmallProgramId: 小程序卡片ID
        # @type SmallProgramId: String
        # @param TemplateId: 模板消息ID
        # @type TemplateId: String
        # @param WxAppId: 微信公众号appId
        # @type WxAppId: String

        attr_accessor :GroupId, :DistinctFlag, :IsSendNow, :SendDate, :TaskName, :WxTouchType, :Title, :Content, :NewsId, :SmallProgramId, :TemplateId, :WxAppId
        
        def initialize(groupid=nil, distinctflag=nil, issendnow=nil, senddate=nil, taskname=nil, wxtouchtype=nil, title=nil, content=nil, newsid=nil, smallprogramid=nil, templateid=nil, wxappid=nil)
          @GroupId = groupid
          @DistinctFlag = distinctflag
          @IsSendNow = issendnow
          @SendDate = senddate
          @TaskName = taskname
          @WxTouchType = wxtouchtype
          @Title = title
          @Content = content
          @NewsId = newsid
          @SmallProgramId = smallprogramid
          @TemplateId = templateid
          @WxAppId = wxappid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @DistinctFlag = params['DistinctFlag']
          @IsSendNow = params['IsSendNow']
          @SendDate = params['SendDate']
          @TaskName = params['TaskName']
          @WxTouchType = params['WxTouchType']
          @Title = params['Title']
          @Content = params['Content']
          @NewsId = params['NewsId']
          @SmallProgramId = params['SmallProgramId']
          @TemplateId = params['TemplateId']
          @WxAppId = params['WxAppId']
        end
      end

      # SendWxTouchTask返回参数结构体
      class SendWxTouchTaskResponse < TencentCloud::Common::AbstractModel
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

      # 子项目信息
      class SubProjectInfo < TencentCloud::Common::AbstractModel
        # @param SubProjectId: 子项目id
        # @type SubProjectId: String
        # @param SubProjectName: 子项目名称
        # @type SubProjectName: String
        # @param SubProjectStatus: 子项目状态
        # @type SubProjectStatus: String

        attr_accessor :SubProjectId, :SubProjectName, :SubProjectStatus
        
        def initialize(subprojectid=nil, subprojectname=nil, subprojectstatus=nil)
          @SubProjectId = subprojectid
          @SubProjectName = subprojectname
          @SubProjectStatus = subprojectstatus
        end

        def deserialize(params)
          @SubProjectId = params['SubProjectId']
          @SubProjectName = params['SubProjectName']
          @SubProjectStatus = params['SubProjectStatus']
        end
      end

    end
  end
end

