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
  module Ccc
    module V20200210
      # BindStaffSkillGroupList请求参数结构体
      class BindStaffSkillGroupListRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 实例ID
        # @type SdkAppId: Integer
        # @param StaffEmail: 坐席邮箱
        # @type StaffEmail: String
        # @param SkillGroupList: 绑定技能组列表
        # @type SkillGroupList: Array

        attr_accessor :SdkAppId, :StaffEmail, :SkillGroupList
        
        def initialize(sdkappid=nil, staffemail=nil, skillgrouplist=nil)
          @SdkAppId = sdkappid
          @StaffEmail = staffemail
          @SkillGroupList = skillgrouplist
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StaffEmail = params['StaffEmail']
          @SkillGroupList = params['SkillGroupList']
        end
      end

      # BindStaffSkillGroupList返回参数结构体
      class BindStaffSkillGroupListResponse < TencentCloud::Common::AbstractModel
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

      # 呼入实时指标
      class CallInMetrics < TencentCloud::Common::AbstractModel
        # @param IvrCount: IVR驻留数量
        # @type IvrCount: Integer
        # @param QueueCount: 排队中数量
        # @type QueueCount: Integer
        # @param RingCount: 振铃中数量
        # @type RingCount: Integer
        # @param AcceptCount: 接通中数量
        # @type AcceptCount: Integer
        # @param TransferOuterCount: 客服转接外线中数量
        # @type TransferOuterCount: Integer
        # @param MaxQueueDuration: 最大排队时长
        # @type MaxQueueDuration: Integer
        # @param AvgQueueDuration: 平均排队时长
        # @type AvgQueueDuration: Integer
        # @param MaxRingDuration: 最大振铃时长
        # @type MaxRingDuration: Integer
        # @param AvgRingDuration: 平均振铃时长
        # @type AvgRingDuration: Integer
        # @param MaxAcceptDuration: 最大接通时长
        # @type MaxAcceptDuration: Integer
        # @param AvgAcceptDuration: 平均接通时长
        # @type AvgAcceptDuration: Integer

        attr_accessor :IvrCount, :QueueCount, :RingCount, :AcceptCount, :TransferOuterCount, :MaxQueueDuration, :AvgQueueDuration, :MaxRingDuration, :AvgRingDuration, :MaxAcceptDuration, :AvgAcceptDuration
        
        def initialize(ivrcount=nil, queuecount=nil, ringcount=nil, acceptcount=nil, transferoutercount=nil, maxqueueduration=nil, avgqueueduration=nil, maxringduration=nil, avgringduration=nil, maxacceptduration=nil, avgacceptduration=nil)
          @IvrCount = ivrcount
          @QueueCount = queuecount
          @RingCount = ringcount
          @AcceptCount = acceptcount
          @TransferOuterCount = transferoutercount
          @MaxQueueDuration = maxqueueduration
          @AvgQueueDuration = avgqueueduration
          @MaxRingDuration = maxringduration
          @AvgRingDuration = avgringduration
          @MaxAcceptDuration = maxacceptduration
          @AvgAcceptDuration = avgacceptduration
        end

        def deserialize(params)
          @IvrCount = params['IvrCount']
          @QueueCount = params['QueueCount']
          @RingCount = params['RingCount']
          @AcceptCount = params['AcceptCount']
          @TransferOuterCount = params['TransferOuterCount']
          @MaxQueueDuration = params['MaxQueueDuration']
          @AvgQueueDuration = params['AvgQueueDuration']
          @MaxRingDuration = params['MaxRingDuration']
          @AvgRingDuration = params['AvgRingDuration']
          @MaxAcceptDuration = params['MaxAcceptDuration']
          @AvgAcceptDuration = params['AvgAcceptDuration']
        end
      end

      # 呼入线路维度相关指标
      class CallInNumberMetrics < TencentCloud::Common::AbstractModel
        # @param Number: 线路号码
        # @type Number: String
        # @param Metrics: 线路相关指标
        # @type Metrics: :class:`Tencentcloud::Ccc.v20200210.models.CallInMetrics`
        # @param SkillGroupMetrics: 所属技能组相关指标
        # @type SkillGroupMetrics: Array

        attr_accessor :Number, :Metrics, :SkillGroupMetrics
        
        def initialize(number=nil, metrics=nil, skillgroupmetrics=nil)
          @Number = number
          @Metrics = metrics
          @SkillGroupMetrics = skillgroupmetrics
        end

        def deserialize(params)
          @Number = params['Number']
          unless params['Metrics'].nil?
            @Metrics = CallInMetrics.new
            @Metrics.deserialize(params['Metrics'])
          end
          unless params['SkillGroupMetrics'].nil?
            @SkillGroupMetrics = []
            params['SkillGroupMetrics'].each do |i|
              callinskillgroupmetrics_tmp = CallInSkillGroupMetrics.new
              callinskillgroupmetrics_tmp.deserialize(i)
              @SkillGroupMetrics << callinskillgroupmetrics_tmp
            end
          end
        end
      end

      # 呼入技能组相关指标
      class CallInSkillGroupMetrics < TencentCloud::Common::AbstractModel
        # @param SkillGroupId: 技能组ID
        # @type SkillGroupId: Integer
        # @param Metrics: 数据指标
        # @type Metrics: :class:`Tencentcloud::Ccc.v20200210.models.CallInMetrics`
        # @param Name: 技能组名称
        # @type Name: String

        attr_accessor :SkillGroupId, :Metrics, :Name
        
        def initialize(skillgroupid=nil, metrics=nil, name=nil)
          @SkillGroupId = skillgroupid
          @Metrics = metrics
          @Name = name
        end

        def deserialize(params)
          @SkillGroupId = params['SkillGroupId']
          unless params['Metrics'].nil?
            @Metrics = CallInMetrics.new
            @Metrics.deserialize(params['Metrics'])
          end
          @Name = params['Name']
        end
      end

      # CreateSDKLoginToken请求参数结构体
      class CreateSDKLoginTokenRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用ID。
        # @type SdkAppId: Integer
        # @param SeatUserId: 坐席账号。
        # @type SeatUserId: String

        attr_accessor :SdkAppId, :SeatUserId
        
        def initialize(sdkappid=nil, seatuserid=nil)
          @SdkAppId = sdkappid
          @SeatUserId = seatuserid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @SeatUserId = params['SeatUserId']
        end
      end

      # CreateSDKLoginToken返回参数结构体
      class CreateSDKLoginTokenResponse < TencentCloud::Common::AbstractModel
        # @param Token: SDK 登录 Token。
        # @type Token: String
        # @param ExpiredTime: 过期时间戳，Unix 时间戳。
        # @type ExpiredTime: Integer
        # @param SdkURL: SDK 加载路径会随着 SDK 的发布而变动。
        # @type SdkURL: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Token, :ExpiredTime, :SdkURL, :RequestId
        
        def initialize(token=nil, expiredtime=nil, sdkurl=nil, requestid=nil)
          @Token = token
          @ExpiredTime = expiredtime
          @SdkURL = sdkurl
          @RequestId = requestid
        end

        def deserialize(params)
          @Token = params['Token']
          @ExpiredTime = params['ExpiredTime']
          @SdkURL = params['SdkURL']
          @RequestId = params['RequestId']
        end
      end

      # CreateStaff请求参数结构体
      class CreateStaffRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用ID
        # @type SdkAppId: Integer
        # @param Staffs: 客服信息，个数不超过 10
        # @type Staffs: Array

        attr_accessor :SdkAppId, :Staffs
        
        def initialize(sdkappid=nil, staffs=nil)
          @SdkAppId = sdkappid
          @Staffs = staffs
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          unless params['Staffs'].nil?
            @Staffs = []
            params['Staffs'].each do |i|
              seatuserinfo_tmp = SeatUserInfo.new
              seatuserinfo_tmp.deserialize(i)
              @Staffs << seatuserinfo_tmp
            end
          end
        end
      end

      # CreateStaff返回参数结构体
      class CreateStaffResponse < TencentCloud::Common::AbstractModel
        # @param ErrorStaffList: 错误坐席列表及错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorStaffList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorStaffList, :RequestId
        
        def initialize(errorstafflist=nil, requestid=nil)
          @ErrorStaffList = errorstafflist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorStaffList'].nil?
            @ErrorStaffList = []
            params['ErrorStaffList'].each do |i|
              errstaffitem_tmp = ErrStaffItem.new
              errstaffitem_tmp.deserialize(i)
              @ErrorStaffList << errstaffitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateUserSig请求参数结构体
      class CreateUserSigRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID
        # @type SdkAppId: Integer
        # @param Uid: 用户 ID
        # @type Uid: String
        # @param ExpiredTime: 有效期，单位秒，不超过 1 小时
        # @type ExpiredTime: Integer
        # @param ClientData: 用户签名数据
        # @type ClientData: String

        attr_accessor :SdkAppId, :Uid, :ExpiredTime, :ClientData
        
        def initialize(sdkappid=nil, uid=nil, expiredtime=nil, clientdata=nil)
          @SdkAppId = sdkappid
          @Uid = uid
          @ExpiredTime = expiredtime
          @ClientData = clientdata
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Uid = params['Uid']
          @ExpiredTime = params['ExpiredTime']
          @ClientData = params['ClientData']
        end
      end

      # CreateUserSig返回参数结构体
      class CreateUserSigResponse < TencentCloud::Common::AbstractModel
        # @param UserSig: 签名结果
        # @type UserSig: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserSig, :RequestId
        
        def initialize(usersig=nil, requestid=nil)
          @UserSig = usersig
          @RequestId = requestid
        end

        def deserialize(params)
          @UserSig = params['UserSig']
          @RequestId = params['RequestId']
        end
      end

      # DeleteStaff请求参数结构体
      class DeleteStaffRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 实例ID
        # @type SdkAppId: Integer
        # @param StaffList: 待删除客服邮箱列表
        # @type StaffList: Array

        attr_accessor :SdkAppId, :StaffList
        
        def initialize(sdkappid=nil, stafflist=nil)
          @SdkAppId = sdkappid
          @StaffList = stafflist
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StaffList = params['StaffList']
        end
      end

      # DeleteStaff返回参数结构体
      class DeleteStaffResponse < TencentCloud::Common::AbstractModel
        # @param OnlineStaffList: 无法删除的状态为在线的客服列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OnlineStaffList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OnlineStaffList, :RequestId
        
        def initialize(onlinestafflist=nil, requestid=nil)
          @OnlineStaffList = onlinestafflist
          @RequestId = requestid
        end

        def deserialize(params)
          @OnlineStaffList = params['OnlineStaffList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCallInMetrics请求参数结构体
      class DescribeCallInMetricsRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 实例ID
        # @type SdkAppId: Integer
        # @param EnabledSkillGroup: 是否返回技能组维度信息，默认“是”
        # @type EnabledSkillGroup: Boolean
        # @param EnabledNumber: 是否返回线路维度信息，默认“否”
        # @type EnabledNumber: Boolean

        attr_accessor :SdkAppId, :EnabledSkillGroup, :EnabledNumber
        
        def initialize(sdkappid=nil, enabledskillgroup=nil, enablednumber=nil)
          @SdkAppId = sdkappid
          @EnabledSkillGroup = enabledskillgroup
          @EnabledNumber = enablednumber
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @EnabledSkillGroup = params['EnabledSkillGroup']
          @EnabledNumber = params['EnabledNumber']
        end
      end

      # DescribeCallInMetrics返回参数结构体
      class DescribeCallInMetricsResponse < TencentCloud::Common::AbstractModel
        # @param Timestamp: 时间戳
        # @type Timestamp: Integer
        # @param TotalMetrics: 总体指标
        # @type TotalMetrics: :class:`Tencentcloud::Ccc.v20200210.models.CallInMetrics`
        # @param NumberMetrics: 线路维度指标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NumberMetrics: Array
        # @param SkillGroupMetrics: 技能组维度指标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SkillGroupMetrics: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Timestamp, :TotalMetrics, :NumberMetrics, :SkillGroupMetrics, :RequestId
        
        def initialize(timestamp=nil, totalmetrics=nil, numbermetrics=nil, skillgroupmetrics=nil, requestid=nil)
          @Timestamp = timestamp
          @TotalMetrics = totalmetrics
          @NumberMetrics = numbermetrics
          @SkillGroupMetrics = skillgroupmetrics
          @RequestId = requestid
        end

        def deserialize(params)
          @Timestamp = params['Timestamp']
          unless params['TotalMetrics'].nil?
            @TotalMetrics = CallInMetrics.new
            @TotalMetrics.deserialize(params['TotalMetrics'])
          end
          unless params['NumberMetrics'].nil?
            @NumberMetrics = []
            params['NumberMetrics'].each do |i|
              callinnumbermetrics_tmp = CallInNumberMetrics.new
              callinnumbermetrics_tmp.deserialize(i)
              @NumberMetrics << callinnumbermetrics_tmp
            end
          end
          unless params['SkillGroupMetrics'].nil?
            @SkillGroupMetrics = []
            params['SkillGroupMetrics'].each do |i|
              callinskillgroupmetrics_tmp = CallInSkillGroupMetrics.new
              callinskillgroupmetrics_tmp.deserialize(i)
              @SkillGroupMetrics << callinskillgroupmetrics_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeChatMessages请求参数结构体
      class DescribeChatMessagesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: Integer
        # @param SdkAppId: 应用ID
        # @type SdkAppId: Integer
        # @param CdrId: 服务记录ID
        # @type CdrId: String
        # @param Limit: 返回记录条数 最大为100默认20
        # @type Limit: Integer
        # @param Offset: 返回记录偏移 默认为0
        # @type Offset: Integer
        # @param Order: 1为从早到晚，2为从晚到早，默认为2
        # @type Order: Integer
        # @param SessionId: 服务记录SessionID
        # @type SessionId: String

        attr_accessor :InstanceId, :SdkAppId, :CdrId, :Limit, :Offset, :Order, :SessionId
        
        def initialize(instanceid=nil, sdkappid=nil, cdrid=nil, limit=nil, offset=nil, order=nil, sessionid=nil)
          @InstanceId = instanceid
          @SdkAppId = sdkappid
          @CdrId = cdrid
          @Limit = limit
          @Offset = offset
          @Order = order
          @SessionId = sessionid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SdkAppId = params['SdkAppId']
          @CdrId = params['CdrId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Order = params['Order']
          @SessionId = params['SessionId']
        end
      end

      # DescribeChatMessages返回参数结构体
      class DescribeChatMessagesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param Messages: 消息列表
        # @type Messages: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Messages, :RequestId
        
        def initialize(totalcount=nil, messages=nil, requestid=nil)
          @TotalCount = totalcount
          @Messages = messages
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Messages'].nil?
            @Messages = []
            params['Messages'].each do |i|
              messagebody_tmp = MessageBody.new
              messagebody_tmp.deserialize(i)
              @Messages << messagebody_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIMCdrs请求参数结构体
      class DescribeIMCdrsRequest < TencentCloud::Common::AbstractModel
        # @param StartTimestamp: 起始时间
        # @type StartTimestamp: Integer
        # @param EndTimestamp: 结束时间
        # @type EndTimestamp: Integer
        # @param InstanceId: 实例ID
        # @type InstanceId: Integer
        # @param SdkAppId: 应用ID
        # @type SdkAppId: Integer
        # @param Limit: 返回记录条数 最大为100默认20
        # @type Limit: Integer
        # @param Offset: 返回记录偏移 默认为0
        # @type Offset: Integer
        # @param Type: 1为全媒体，2为文本客服，不填则查询全部
        # @type Type: Integer

        attr_accessor :StartTimestamp, :EndTimestamp, :InstanceId, :SdkAppId, :Limit, :Offset, :Type
        
        def initialize(starttimestamp=nil, endtimestamp=nil, instanceid=nil, sdkappid=nil, limit=nil, offset=nil, type=nil)
          @StartTimestamp = starttimestamp
          @EndTimestamp = endtimestamp
          @InstanceId = instanceid
          @SdkAppId = sdkappid
          @Limit = limit
          @Offset = offset
          @Type = type
        end

        def deserialize(params)
          @StartTimestamp = params['StartTimestamp']
          @EndTimestamp = params['EndTimestamp']
          @InstanceId = params['InstanceId']
          @SdkAppId = params['SdkAppId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Type = params['Type']
        end
      end

      # DescribeIMCdrs返回参数结构体
      class DescribeIMCdrsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param IMCdrs: 服务记录列表
        # @type IMCdrs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :IMCdrs, :RequestId
        
        def initialize(totalcount=nil, imcdrs=nil, requestid=nil)
          @TotalCount = totalcount
          @IMCdrs = imcdrs
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['IMCdrs'].nil?
            @IMCdrs = []
            params['IMCdrs'].each do |i|
              imcdrinfo_tmp = IMCdrInfo.new
              imcdrinfo_tmp.deserialize(i)
              @IMCdrs << imcdrinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePSTNActiveSessionList请求参数结构体
      class DescribePSTNActiveSessionListRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID
        # @type SdkAppId: Integer
        # @param Offset: 数据偏移
        # @type Offset: Integer
        # @param Limit: 返回的数据条数，最大 25
        # @type Limit: Integer

        attr_accessor :SdkAppId, :Offset, :Limit
        
        def initialize(sdkappid=nil, offset=nil, limit=nil)
          @SdkAppId = sdkappid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribePSTNActiveSessionList返回参数结构体
      class DescribePSTNActiveSessionListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 列表总条数
        # @type Total: Integer
        # @param Sessions: 列表内容
        # @type Sessions: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Sessions, :RequestId
        
        def initialize(total=nil, sessions=nil, requestid=nil)
          @Total = total
          @Sessions = sessions
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Sessions'].nil?
            @Sessions = []
            params['Sessions'].each do |i|
              pstnsessioninfo_tmp = PSTNSessionInfo.new
              pstnsessioninfo_tmp.deserialize(i)
              @Sessions << pstnsessioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSeatUserList请求参数结构体
      class DescribeSeatUserListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 返回数量
        # @type Limit: Integer

        attr_accessor :InstanceId, :Offset, :Limit
        
        def initialize(instanceid=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeSeatUserList返回参数结构体
      class DescribeSeatUserListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 此实例的坐席用户总数
        # @type TotalCount: Integer
        # @param SeatUsers: 坐席用户信息列表
        # @type SeatUsers: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SeatUsers, :RequestId
        
        def initialize(totalcount=nil, seatusers=nil, requestid=nil)
          @TotalCount = totalcount
          @SeatUsers = seatusers
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SeatUsers'].nil?
            @SeatUsers = []
            params['SeatUsers'].each do |i|
              seatuserinfo_tmp = SeatUserInfo.new
              seatuserinfo_tmp.deserialize(i)
              @SeatUsers << seatuserinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSkillGroupInfoList请求参数结构体
      class DescribeSkillGroupInfoListRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用ID
        # @type SdkAppId: Integer
        # @param PageSize: 分页尺寸，上限 100
        # @type PageSize: Integer
        # @param PageNumber: 分页页码，从 0 开始
        # @type PageNumber: Integer
        # @param SkillGroupId: 技能组ID，查询单个技能组时使用
        # @type SkillGroupId: Integer
        # @param ModifiedTime: 查询修改时间大于等于ModifiedTime的技能组时使用
        # @type ModifiedTime: Integer

        attr_accessor :SdkAppId, :PageSize, :PageNumber, :SkillGroupId, :ModifiedTime
        
        def initialize(sdkappid=nil, pagesize=nil, pagenumber=nil, skillgroupid=nil, modifiedtime=nil)
          @SdkAppId = sdkappid
          @PageSize = pagesize
          @PageNumber = pagenumber
          @SkillGroupId = skillgroupid
          @ModifiedTime = modifiedtime
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @SkillGroupId = params['SkillGroupId']
          @ModifiedTime = params['ModifiedTime']
        end
      end

      # DescribeSkillGroupInfoList返回参数结构体
      class DescribeSkillGroupInfoListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 技能组总数
        # @type TotalCount: Integer
        # @param SkillGroupList: 技能组信息列表
        # @type SkillGroupList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SkillGroupList, :RequestId
        
        def initialize(totalcount=nil, skillgrouplist=nil, requestid=nil)
          @TotalCount = totalcount
          @SkillGroupList = skillgrouplist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SkillGroupList'].nil?
            @SkillGroupList = []
            params['SkillGroupList'].each do |i|
              skillgroupinfoitem_tmp = SkillGroupInfoItem.new
              skillgroupinfoitem_tmp.deserialize(i)
              @SkillGroupList << skillgroupinfoitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeStaffInfoList请求参数结构体
      class DescribeStaffInfoListRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用ID
        # @type SdkAppId: Integer
        # @param PageSize: 分页尺寸，上限 100
        # @type PageSize: Integer
        # @param PageNumber: 分页页码，从 0 开始
        # @type PageNumber: Integer
        # @param StaffMail: 坐席账号，查询单个坐席时使用
        # @type StaffMail: String
        # @param ModifiedTime: 查询修改时间大于等于ModifiedTime的坐席时使用
        # @type ModifiedTime: Integer

        attr_accessor :SdkAppId, :PageSize, :PageNumber, :StaffMail, :ModifiedTime
        
        def initialize(sdkappid=nil, pagesize=nil, pagenumber=nil, staffmail=nil, modifiedtime=nil)
          @SdkAppId = sdkappid
          @PageSize = pagesize
          @PageNumber = pagenumber
          @StaffMail = staffmail
          @ModifiedTime = modifiedtime
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @StaffMail = params['StaffMail']
          @ModifiedTime = params['ModifiedTime']
        end
      end

      # DescribeStaffInfoList返回参数结构体
      class DescribeStaffInfoListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 坐席用户总数
        # @type TotalCount: Integer
        # @param StaffList: 坐席用户信息列表
        # @type StaffList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :StaffList, :RequestId
        
        def initialize(totalcount=nil, stafflist=nil, requestid=nil)
          @TotalCount = totalcount
          @StaffList = stafflist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['StaffList'].nil?
            @StaffList = []
            params['StaffList'].each do |i|
              staffinfo_tmp = StaffInfo.new
              staffinfo_tmp.deserialize(i)
              @StaffList << staffinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeStaffStatusMetrics请求参数结构体
      class DescribeStaffStatusMetricsRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 实例ID
        # @type SdkAppId: Integer
        # @param StaffList: 筛选坐席列表，默认不传返回全部坐席信息
        # @type StaffList: Array

        attr_accessor :SdkAppId, :StaffList
        
        def initialize(sdkappid=nil, stafflist=nil)
          @SdkAppId = sdkappid
          @StaffList = stafflist
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StaffList = params['StaffList']
        end
      end

      # DescribeStaffStatusMetrics返回参数结构体
      class DescribeStaffStatusMetricsResponse < TencentCloud::Common::AbstractModel
        # @param Metrics: 坐席状态实时信息
        # @type Metrics: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Metrics, :RequestId
        
        def initialize(metrics=nil, requestid=nil)
          @Metrics = metrics
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Metrics'].nil?
            @Metrics = []
            params['Metrics'].each do |i|
              staffstatusmetrics_tmp = StaffStatusMetrics.new
              staffstatusmetrics_tmp.deserialize(i)
              @Metrics << staffstatusmetrics_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTelCallInfo请求参数结构体
      class DescribeTelCallInfoRequest < TencentCloud::Common::AbstractModel
        # @param StartTimeStamp: 起始时间戳，Unix 时间戳
        # @type StartTimeStamp: Integer
        # @param EndTimeStamp: 结束时间戳，Unix 时间戳，查询时间范围最大为90天
        # @type EndTimeStamp: Integer
        # @param SdkAppIdList: 应用ID列表，多个ID时，返回值为多个ID使用总和
        # @type SdkAppIdList: Array

        attr_accessor :StartTimeStamp, :EndTimeStamp, :SdkAppIdList
        
        def initialize(starttimestamp=nil, endtimestamp=nil, sdkappidlist=nil)
          @StartTimeStamp = starttimestamp
          @EndTimeStamp = endtimestamp
          @SdkAppIdList = sdkappidlist
        end

        def deserialize(params)
          @StartTimeStamp = params['StartTimeStamp']
          @EndTimeStamp = params['EndTimeStamp']
          @SdkAppIdList = params['SdkAppIdList']
        end
      end

      # DescribeTelCallInfo返回参数结构体
      class DescribeTelCallInfoResponse < TencentCloud::Common::AbstractModel
        # @param TelCallOutCount: 电话呼出统计分钟数
        # @type TelCallOutCount: Integer
        # @param TelCallInCount: 电话呼入统计分钟数
        # @type TelCallInCount: Integer
        # @param SeatUsedCount: 坐席使用统计个数
        # @type SeatUsedCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TelCallOutCount, :TelCallInCount, :SeatUsedCount, :RequestId
        
        def initialize(telcalloutcount=nil, telcallincount=nil, seatusedcount=nil, requestid=nil)
          @TelCallOutCount = telcalloutcount
          @TelCallInCount = telcallincount
          @SeatUsedCount = seatusedcount
          @RequestId = requestid
        end

        def deserialize(params)
          @TelCallOutCount = params['TelCallOutCount']
          @TelCallInCount = params['TelCallInCount']
          @SeatUsedCount = params['SeatUsedCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTelCdr请求参数结构体
      class DescribeTelCdrRequest < TencentCloud::Common::AbstractModel
        # @param StartTimeStamp: 起始时间戳，Unix 时间戳
        # @type StartTimeStamp: Integer
        # @param EndTimeStamp: 结束时间戳，Unix 时间戳
        # @type EndTimeStamp: Integer
        # @param Limit: 返回数据条数，上限（deprecated）
        # @type Limit: Integer
        # @param Offset: 偏移（deprecated）
        # @type Offset: Integer
        # @param InstanceId: 实例 ID（deprecated）
        # @type InstanceId: Integer
        # @param SdkAppId: 应用 ID
        # @type SdkAppId: Integer
        # @param PageSize: 分页尺寸，上限 100
        # @type PageSize: Integer
        # @param PageNumber: 分页页码，从 0 开始
        # @type PageNumber: Integer
        # @param Phones: 按手机号筛选
        # @type Phones: Array
        # @param SessionIds: 按SessionId筛选
        # @type SessionIds: Array

        attr_accessor :StartTimeStamp, :EndTimeStamp, :Limit, :Offset, :InstanceId, :SdkAppId, :PageSize, :PageNumber, :Phones, :SessionIds
        
        def initialize(starttimestamp=nil, endtimestamp=nil, limit=nil, offset=nil, instanceid=nil, sdkappid=nil, pagesize=nil, pagenumber=nil, phones=nil, sessionids=nil)
          @StartTimeStamp = starttimestamp
          @EndTimeStamp = endtimestamp
          @Limit = limit
          @Offset = offset
          @InstanceId = instanceid
          @SdkAppId = sdkappid
          @PageSize = pagesize
          @PageNumber = pagenumber
          @Phones = phones
          @SessionIds = sessionids
        end

        def deserialize(params)
          @StartTimeStamp = params['StartTimeStamp']
          @EndTimeStamp = params['EndTimeStamp']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @InstanceId = params['InstanceId']
          @SdkAppId = params['SdkAppId']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @Phones = params['Phones']
          @SessionIds = params['SessionIds']
        end
      end

      # DescribeTelCdr返回参数结构体
      class DescribeTelCdrResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 话单记录总数
        # @type TotalCount: Integer
        # @param TelCdrs: 话单记录
        # @type TelCdrs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TelCdrs, :RequestId
        
        def initialize(totalcount=nil, telcdrs=nil, requestid=nil)
          @TotalCount = totalcount
          @TelCdrs = telcdrs
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TelCdrs'].nil?
            @TelCdrs = []
            params['TelCdrs'].each do |i|
              telcdrinfo_tmp = TelCdrInfo.new
              telcdrinfo_tmp.deserialize(i)
              @TelCdrs << telcdrinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTelSession请求参数结构体
      class DescribeTelSessionRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用ID
        # @type SdkAppId: Integer
        # @param SessionId: 会话ID
        # @type SessionId: String

        attr_accessor :SdkAppId, :SessionId
        
        def initialize(sdkappid=nil, sessionid=nil)
          @SdkAppId = sdkappid
          @SessionId = sessionid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @SessionId = params['SessionId']
        end
      end

      # DescribeTelSession返回参数结构体
      class DescribeTelSessionResponse < TencentCloud::Common::AbstractModel
        # @param Session: 会话信息
        # @type Session: :class:`Tencentcloud::Ccc.v20200210.models.PSTNSession`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Session, :RequestId
        
        def initialize(session=nil, requestid=nil)
          @Session = session
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Session'].nil?
            @Session = PSTNSession.new
            @Session.deserialize(params['Session'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 批量添加客服时，返回出错客服的像个信息
      class ErrStaffItem < TencentCloud::Common::AbstractModel
        # @param StaffEmail: 坐席邮箱地址
        # @type StaffEmail: String
        # @param Code: 错误码
        # @type Code: String
        # @param Message: 错误描述
        # @type Message: String

        attr_accessor :StaffEmail, :Code, :Message
        
        def initialize(staffemail=nil, code=nil, message=nil)
          @StaffEmail = staffemail
          @Code = code
          @Message = message
        end

        def deserialize(params)
          @StaffEmail = params['StaffEmail']
          @Code = params['Code']
          @Message = params['Message']
        end
      end

      # 全媒体服务记录信息
      class IMCdrInfo < TencentCloud::Common::AbstractModel
        # @param Id: 服务记录ID
        # @type Id: String
        # @param Duration: 服务时长秒数
        # @type Duration: Integer
        # @param EndStatus: 结束状态
        # @type EndStatus: Integer
        # @param Nickname: 用户昵称
        # @type Nickname: String
        # @param Type: 服务类型 1为全媒体，2为文本客服
        # @type Type: Integer
        # @param StaffId: 客服ID
        # @type StaffId: String
        # @param Timestamp: 服务时间戳
        # @type Timestamp: Integer

        attr_accessor :Id, :Duration, :EndStatus, :Nickname, :Type, :StaffId, :Timestamp
        
        def initialize(id=nil, duration=nil, endstatus=nil, nickname=nil, type=nil, staffid=nil, timestamp=nil)
          @Id = id
          @Duration = duration
          @EndStatus = endstatus
          @Nickname = nickname
          @Type = type
          @StaffId = staffid
          @Timestamp = timestamp
        end

        def deserialize(params)
          @Id = params['Id']
          @Duration = params['Duration']
          @EndStatus = params['EndStatus']
          @Nickname = params['Nickname']
          @Type = params['Type']
          @StaffId = params['StaffId']
          @Timestamp = params['Timestamp']
        end
      end

      # ivr 按键信息
      class IVRKeyPressedElement < TencentCloud::Common::AbstractModel
        # @param Key: 按键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Label: 按键关联的标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String

        attr_accessor :Key, :Label
        
        def initialize(key=nil, label=nil)
          @Key = key
          @Label = label
        end

        def deserialize(params)
          @Key = params['Key']
          @Label = params['Label']
        end
      end

      # 单条消息
      class Message < TencentCloud::Common::AbstractModel
        # @param Type: 消息类型
        # @type Type: String
        # @param Content: 消息内容
        # @type Content: String

        attr_accessor :Type, :Content
        
        def initialize(type=nil, content=nil)
          @Type = type
          @Content = content
        end

        def deserialize(params)
          @Type = params['Type']
          @Content = params['Content']
        end
      end

      # 聊天消息
      class MessageBody < TencentCloud::Common::AbstractModel
        # @param Timestamp: 消息时间戳
        # @type Timestamp: Integer
        # @param From: 发消息的用户ID
        # @type From: String
        # @param Messages: 消息列表
        # @type Messages: Array

        attr_accessor :Timestamp, :From, :Messages
        
        def initialize(timestamp=nil, from=nil, messages=nil)
          @Timestamp = timestamp
          @From = from
          @Messages = messages
        end

        def deserialize(params)
          @Timestamp = params['Timestamp']
          @From = params['From']
          unless params['Messages'].nil?
            @Messages = []
            params['Messages'].each do |i|
              message_tmp = Message.new
              message_tmp.deserialize(i)
              @Messages << message_tmp
            end
          end
        end
      end

      # PSTN 会话类型。
      class PSTNSession < TencentCloud::Common::AbstractModel
        # @param SessionID: 会话 ID
        # @type SessionID: String
        # @param RoomID: 会话临时房间 ID
        # @type RoomID: String
        # @param Caller: 主叫
        # @type Caller: String
        # @param Callee: 被叫
        # @type Callee: String
        # @param StartTimestamp: 开始时间，Unix 时间戳
        # @type StartTimestamp: Integer
        # @param RingTimestamp: 振铃时间，Unix 时间戳
        # @type RingTimestamp: Integer
        # @param AcceptTimestamp: 接听时间，Unix 时间戳
        # @type AcceptTimestamp: Integer
        # @param StaffEmail: 坐席邮箱
        # @type StaffEmail: String
        # @param StaffNumber: 坐席工号
        # @type StaffNumber: String
        # @param SessionStatus: 会话状态
        # ringing 振铃中
        # seatJoining  等待坐席接听
        # inProgress 进行中
        # finished 已完成
        # @type SessionStatus: String
        # @param Direction: 会话呼叫方向， 0 呼入 | 1 - 呼出
        # @type Direction: Integer
        # @param OutBoundCaller: 转外线使用的号码（转外线主叫）
        # @type OutBoundCaller: String
        # @param OutBoundCallee: 转外线被叫
        # @type OutBoundCallee: String
        # @param ProtectedCaller: 主叫号码保护ID，开启号码保护映射功能时有效，且Caller字段置空
        # @type ProtectedCaller: String
        # @param ProtectedCallee: 被叫号码保护ID，开启号码保护映射功能时有效，且Callee字段置空
        # @type ProtectedCallee: String

        attr_accessor :SessionID, :RoomID, :Caller, :Callee, :StartTimestamp, :RingTimestamp, :AcceptTimestamp, :StaffEmail, :StaffNumber, :SessionStatus, :Direction, :OutBoundCaller, :OutBoundCallee, :ProtectedCaller, :ProtectedCallee
        
        def initialize(sessionid=nil, roomid=nil, caller=nil, callee=nil, starttimestamp=nil, ringtimestamp=nil, accepttimestamp=nil, staffemail=nil, staffnumber=nil, sessionstatus=nil, direction=nil, outboundcaller=nil, outboundcallee=nil, protectedcaller=nil, protectedcallee=nil)
          @SessionID = sessionid
          @RoomID = roomid
          @Caller = caller
          @Callee = callee
          @StartTimestamp = starttimestamp
          @RingTimestamp = ringtimestamp
          @AcceptTimestamp = accepttimestamp
          @StaffEmail = staffemail
          @StaffNumber = staffnumber
          @SessionStatus = sessionstatus
          @Direction = direction
          @OutBoundCaller = outboundcaller
          @OutBoundCallee = outboundcallee
          @ProtectedCaller = protectedcaller
          @ProtectedCallee = protectedcallee
        end

        def deserialize(params)
          @SessionID = params['SessionID']
          @RoomID = params['RoomID']
          @Caller = params['Caller']
          @Callee = params['Callee']
          @StartTimestamp = params['StartTimestamp']
          @RingTimestamp = params['RingTimestamp']
          @AcceptTimestamp = params['AcceptTimestamp']
          @StaffEmail = params['StaffEmail']
          @StaffNumber = params['StaffNumber']
          @SessionStatus = params['SessionStatus']
          @Direction = params['Direction']
          @OutBoundCaller = params['OutBoundCaller']
          @OutBoundCallee = params['OutBoundCallee']
          @ProtectedCaller = params['ProtectedCaller']
          @ProtectedCallee = params['ProtectedCallee']
        end
      end

      # PSTN 会话信息
      class PSTNSessionInfo < TencentCloud::Common::AbstractModel
        # @param SessionID: 会话 ID
        # @type SessionID: String
        # @param RoomID: 会话临时房间 ID
        # @type RoomID: String
        # @param Caller: 主叫
        # @type Caller: String
        # @param Callee: 被叫
        # @type Callee: String
        # @param StartTimestamp: 开始时间，Unix 时间戳
        # @type StartTimestamp: String
        # @param AcceptTimestamp: 接听时间，Unix 时间戳
        # @type AcceptTimestamp: String
        # @param StaffEmail: 坐席邮箱
        # @type StaffEmail: String
        # @param StaffNumber: 坐席工号
        # @type StaffNumber: String
        # @param SessionStatus: 坐席状态 inProgress 进行中
        # @type SessionStatus: String
        # @param Direction: 会话呼叫方向， 0 呼入 | 1 - 呼出
        # @type Direction: Integer
        # @param RingTimestamp: 振铃时间，Unix 时间戳
        # @type RingTimestamp: Integer
        # @param ProtectedCaller: 主叫号码保护ID，开启号码保护映射功能时有效，且Caller字段置空
        # @type ProtectedCaller: String
        # @param ProtectedCallee: 被叫号码保护ID，开启号码保护映射功能时有效，且Callee字段置空
        # @type ProtectedCallee: String

        attr_accessor :SessionID, :RoomID, :Caller, :Callee, :StartTimestamp, :AcceptTimestamp, :StaffEmail, :StaffNumber, :SessionStatus, :Direction, :RingTimestamp, :ProtectedCaller, :ProtectedCallee
        
        def initialize(sessionid=nil, roomid=nil, caller=nil, callee=nil, starttimestamp=nil, accepttimestamp=nil, staffemail=nil, staffnumber=nil, sessionstatus=nil, direction=nil, ringtimestamp=nil, protectedcaller=nil, protectedcallee=nil)
          @SessionID = sessionid
          @RoomID = roomid
          @Caller = caller
          @Callee = callee
          @StartTimestamp = starttimestamp
          @AcceptTimestamp = accepttimestamp
          @StaffEmail = staffemail
          @StaffNumber = staffnumber
          @SessionStatus = sessionstatus
          @Direction = direction
          @RingTimestamp = ringtimestamp
          @ProtectedCaller = protectedcaller
          @ProtectedCallee = protectedcallee
        end

        def deserialize(params)
          @SessionID = params['SessionID']
          @RoomID = params['RoomID']
          @Caller = params['Caller']
          @Callee = params['Callee']
          @StartTimestamp = params['StartTimestamp']
          @AcceptTimestamp = params['AcceptTimestamp']
          @StaffEmail = params['StaffEmail']
          @StaffNumber = params['StaffNumber']
          @SessionStatus = params['SessionStatus']
          @Direction = params['Direction']
          @RingTimestamp = params['RingTimestamp']
          @ProtectedCaller = params['ProtectedCaller']
          @ProtectedCallee = params['ProtectedCallee']
        end
      end

      # 坐席用户信息
      class SeatUserInfo < TencentCloud::Common::AbstractModel
        # @param Name: 坐席名称
        # @type Name: String
        # @param Mail: 坐席邮箱
        # @type Mail: String
        # @param Phone: 坐席电话号码（带0086前缀）
        # @type Phone: String
        # @param Nick: 坐席昵称
        # @type Nick: String
        # @param UserId: 用户ID
        # @type UserId: String
        # @param SkillGroupNameList: 坐席关联的技能组列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SkillGroupNameList: Array
        # @param StaffNumber: 工号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StaffNumber: String

        attr_accessor :Name, :Mail, :Phone, :Nick, :UserId, :SkillGroupNameList, :StaffNumber
        
        def initialize(name=nil, mail=nil, phone=nil, nick=nil, userid=nil, skillgroupnamelist=nil, staffnumber=nil)
          @Name = name
          @Mail = mail
          @Phone = phone
          @Nick = nick
          @UserId = userid
          @SkillGroupNameList = skillgroupnamelist
          @StaffNumber = staffnumber
        end

        def deserialize(params)
          @Name = params['Name']
          @Mail = params['Mail']
          @Phone = params['Phone']
          @Nick = params['Nick']
          @UserId = params['UserId']
          @SkillGroupNameList = params['SkillGroupNameList']
          @StaffNumber = params['StaffNumber']
        end
      end

      # 参与者信息
      class ServeParticipant < TencentCloud::Common::AbstractModel
        # @param Mail: 坐席邮箱
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mail: String
        # @param Phone: 坐席电话
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Phone: String
        # @param RingTimestamp: 振铃时间戳，Unix 秒级时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RingTimestamp: Integer
        # @param AcceptTimestamp: 接听时间戳，Unix 秒级时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AcceptTimestamp: Integer
        # @param EndedTimestamp: 结束时间戳，Unix 秒级时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndedTimestamp: Integer
        # @param RecordId: 录音 ID，能够索引到坐席侧的录音
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordId: String
        # @param Type: 参与者类型，"staffSeat", "outboundSeat", "staffPhoneSeat"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param TransferFrom: 转接来源坐席信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransferFrom: String
        # @param TransferTo: 转接去向坐席信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransferTo: String
        # @param TransferToType: 转接去向参与者类型，取值与 Type 一致
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransferToType: String
        # @param SkillGroupId: 技能组 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SkillGroupId: Integer
        # @param EndStatusString: 结束状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndStatusString: String
        # @param RecordURL: 录音 URL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordURL: String
        # @param Sequence: 参与者序号，从 0 开始
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sequence: Integer
        # @param StartTimestamp: 开始时间戳，Unix 秒级时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTimestamp: Integer
        # @param SkillGroupName: 技能组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SkillGroupName: String

        attr_accessor :Mail, :Phone, :RingTimestamp, :AcceptTimestamp, :EndedTimestamp, :RecordId, :Type, :TransferFrom, :TransferTo, :TransferToType, :SkillGroupId, :EndStatusString, :RecordURL, :Sequence, :StartTimestamp, :SkillGroupName
        
        def initialize(mail=nil, phone=nil, ringtimestamp=nil, accepttimestamp=nil, endedtimestamp=nil, recordid=nil, type=nil, transferfrom=nil, transferto=nil, transfertotype=nil, skillgroupid=nil, endstatusstring=nil, recordurl=nil, sequence=nil, starttimestamp=nil, skillgroupname=nil)
          @Mail = mail
          @Phone = phone
          @RingTimestamp = ringtimestamp
          @AcceptTimestamp = accepttimestamp
          @EndedTimestamp = endedtimestamp
          @RecordId = recordid
          @Type = type
          @TransferFrom = transferfrom
          @TransferTo = transferto
          @TransferToType = transfertotype
          @SkillGroupId = skillgroupid
          @EndStatusString = endstatusstring
          @RecordURL = recordurl
          @Sequence = sequence
          @StartTimestamp = starttimestamp
          @SkillGroupName = skillgroupname
        end

        def deserialize(params)
          @Mail = params['Mail']
          @Phone = params['Phone']
          @RingTimestamp = params['RingTimestamp']
          @AcceptTimestamp = params['AcceptTimestamp']
          @EndedTimestamp = params['EndedTimestamp']
          @RecordId = params['RecordId']
          @Type = params['Type']
          @TransferFrom = params['TransferFrom']
          @TransferTo = params['TransferTo']
          @TransferToType = params['TransferToType']
          @SkillGroupId = params['SkillGroupId']
          @EndStatusString = params['EndStatusString']
          @RecordURL = params['RecordURL']
          @Sequence = params['Sequence']
          @StartTimestamp = params['StartTimestamp']
          @SkillGroupName = params['SkillGroupName']
        end
      end

      # 技能组信息
      class SkillGroupInfoItem < TencentCloud::Common::AbstractModel
        # @param SkillGroupId: 技能组ID
        # @type SkillGroupId: Integer
        # @param SkillGroupName: 技能组名称
        # @type SkillGroupName: String
        # @param Type: 类型：IM、TEL、ALL（全媒体）
        # @type Type: String
        # @param RoutePolicy: 会话分配策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoutePolicy: String
        # @param UsingLastSeat: 会话分配是否优先上次服务坐席
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsingLastSeat: Integer
        # @param MaxConcurrency: 单客服最大并发数（电话类型默认1）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxConcurrency: Integer
        # @param LastModifyTimestamp: 最后修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastModifyTimestamp: Integer

        attr_accessor :SkillGroupId, :SkillGroupName, :Type, :RoutePolicy, :UsingLastSeat, :MaxConcurrency, :LastModifyTimestamp
        
        def initialize(skillgroupid=nil, skillgroupname=nil, type=nil, routepolicy=nil, usinglastseat=nil, maxconcurrency=nil, lastmodifytimestamp=nil)
          @SkillGroupId = skillgroupid
          @SkillGroupName = skillgroupname
          @Type = type
          @RoutePolicy = routepolicy
          @UsingLastSeat = usinglastseat
          @MaxConcurrency = maxconcurrency
          @LastModifyTimestamp = lastmodifytimestamp
        end

        def deserialize(params)
          @SkillGroupId = params['SkillGroupId']
          @SkillGroupName = params['SkillGroupName']
          @Type = params['Type']
          @RoutePolicy = params['RoutePolicy']
          @UsingLastSeat = params['UsingLastSeat']
          @MaxConcurrency = params['MaxConcurrency']
          @LastModifyTimestamp = params['LastModifyTimestamp']
        end
      end

      # 技能组信息
      class SkillGroupItem < TencentCloud::Common::AbstractModel
        # @param SkillGroupId: 技能组ID
        # @type SkillGroupId: Integer
        # @param SkillGroupName: 技能组名称
        # @type SkillGroupName: String
        # @param Priority: 优先级
        # @type Priority: Integer
        # @param Type: 类型：IM、TEL、ALL（全媒体）
        # @type Type: String

        attr_accessor :SkillGroupId, :SkillGroupName, :Priority, :Type
        
        def initialize(skillgroupid=nil, skillgroupname=nil, priority=nil, type=nil)
          @SkillGroupId = skillgroupid
          @SkillGroupName = skillgroupname
          @Priority = priority
          @Type = type
        end

        def deserialize(params)
          @SkillGroupId = params['SkillGroupId']
          @SkillGroupName = params['SkillGroupName']
          @Priority = params['Priority']
          @Type = params['Type']
        end
      end

      # 带有技能组优先级的坐席信息
      class StaffInfo < TencentCloud::Common::AbstractModel
        # @param Name: 坐席名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Mail: 坐席邮箱
        # @type Mail: String
        # @param Phone: 坐席电话号码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Phone: String
        # @param Nick: 坐席昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nick: String
        # @param StaffNumber: 坐席工号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StaffNumber: String
        # @param SkillGroupList: 所属技能组列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SkillGroupList: Array
        # @param LastModifyTimestamp: 最后修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastModifyTimestamp: Integer

        attr_accessor :Name, :Mail, :Phone, :Nick, :StaffNumber, :SkillGroupList, :LastModifyTimestamp
        
        def initialize(name=nil, mail=nil, phone=nil, nick=nil, staffnumber=nil, skillgrouplist=nil, lastmodifytimestamp=nil)
          @Name = name
          @Mail = mail
          @Phone = phone
          @Nick = nick
          @StaffNumber = staffnumber
          @SkillGroupList = skillgrouplist
          @LastModifyTimestamp = lastmodifytimestamp
        end

        def deserialize(params)
          @Name = params['Name']
          @Mail = params['Mail']
          @Phone = params['Phone']
          @Nick = params['Nick']
          @StaffNumber = params['StaffNumber']
          unless params['SkillGroupList'].nil?
            @SkillGroupList = []
            params['SkillGroupList'].each do |i|
              skillgroupitem_tmp = SkillGroupItem.new
              skillgroupitem_tmp.deserialize(i)
              @SkillGroupList << skillgroupitem_tmp
            end
          end
          @LastModifyTimestamp = params['LastModifyTimestamp']
        end
      end

      # 坐席状态补充信息
      class StaffStatusExtra < TencentCloud::Common::AbstractModel
        # @param Type: im - 文本 | tel - 电话 | all - 全媒体
        # @type Type: String
        # @param Direct: in - 呼入 | out - 呼出
        # @type Direct: String

        attr_accessor :Type, :Direct
        
        def initialize(type=nil, direct=nil)
          @Type = type
          @Direct = direct
        end

        def deserialize(params)
          @Type = params['Type']
          @Direct = params['Direct']
        end
      end

      # 坐席状态相关信息
      class StaffStatusMetrics < TencentCloud::Common::AbstractModel
        # @param Email: 坐席邮箱
        # @type Email: String
        # @param Status: 坐席状态 free 示闲 | busy 忙碌 | rest 小休 | notReady 示忙 | afterCallWork 话后调整 | offline 离线
        # @type Status: String
        # @param StatusExtra: 坐席状态补充信息
        # @type StatusExtra: :class:`Tencentcloud::Ccc.v20200210.models.StaffStatusExtra`
        # @param OnlineDuration: 当天在线总时长
        # @type OnlineDuration: Integer
        # @param FreeDuration: 当天示闲总时长
        # @type FreeDuration: Integer
        # @param BusyDuration: 当天忙碌总时长
        # @type BusyDuration: Integer
        # @param NotReadyDuration: 当天示忙总时长
        # @type NotReadyDuration: Integer
        # @param RestDuration: 当天小休总时长
        # @type RestDuration: Integer
        # @param AfterCallWorkDuration: 当天话后调整总时长
        # @type AfterCallWorkDuration: Integer
        # @param Reason: 小休原因
        # @type Reason: String
        # @param ReserveRest: 是否预约小休
        # @type ReserveRest: Boolean
        # @param ReserveNotReady: 是否预约示忙
        # @type ReserveNotReady: Boolean

        attr_accessor :Email, :Status, :StatusExtra, :OnlineDuration, :FreeDuration, :BusyDuration, :NotReadyDuration, :RestDuration, :AfterCallWorkDuration, :Reason, :ReserveRest, :ReserveNotReady
        
        def initialize(email=nil, status=nil, statusextra=nil, onlineduration=nil, freeduration=nil, busyduration=nil, notreadyduration=nil, restduration=nil, aftercallworkduration=nil, reason=nil, reserverest=nil, reservenotready=nil)
          @Email = email
          @Status = status
          @StatusExtra = statusextra
          @OnlineDuration = onlineduration
          @FreeDuration = freeduration
          @BusyDuration = busyduration
          @NotReadyDuration = notreadyduration
          @RestDuration = restduration
          @AfterCallWorkDuration = aftercallworkduration
          @Reason = reason
          @ReserveRest = reserverest
          @ReserveNotReady = reservenotready
        end

        def deserialize(params)
          @Email = params['Email']
          @Status = params['Status']
          unless params['StatusExtra'].nil?
            @StatusExtra = StaffStatusExtra.new
            @StatusExtra.deserialize(params['StatusExtra'])
          end
          @OnlineDuration = params['OnlineDuration']
          @FreeDuration = params['FreeDuration']
          @BusyDuration = params['BusyDuration']
          @NotReadyDuration = params['NotReadyDuration']
          @RestDuration = params['RestDuration']
          @AfterCallWorkDuration = params['AfterCallWorkDuration']
          @Reason = params['Reason']
          @ReserveRest = params['ReserveRest']
          @ReserveNotReady = params['ReserveNotReady']
        end
      end

      # 电话话单信息
      class TelCdrInfo < TencentCloud::Common::AbstractModel
        # @param Caller: 主叫号码
        # @type Caller: String
        # @param Callee: 被叫号码
        # @type Callee: String
        # @param Time: 呼叫发起时间戳，Unix 时间戳
        # @type Time: Integer
        # @param Direction: 呼入呼出方向 0 呼入 1 呼出
        # @type Direction: Integer
        # @param Duration: 通话时长
        # @type Duration: Integer
        # @param RecordURL: 录音信息
        # @type RecordURL: String
        # @param SeatUser: 坐席信息
        # @type SeatUser: :class:`Tencentcloud::Ccc.v20200210.models.SeatUserInfo`
        # @param EndStatus: 结束状态
        # 0	错误
        # 1	正常结束
        # 2	未接通
        # 17	坐席未接
        # 100	黑名单
        # 101	坐席转接
        # 102	IVR 期间用户放弃
        # 103	会话排队期间用户放弃
        # 104	会话振铃期间用户放弃
        # 105	无坐席在线
        # 106	非工作时间
        # 107	IVR后直接结束
        # 201	未知状态
        # 202	未接听
        # 203	拒接挂断
        # 204	关机
        # 205	空号
        # 206	通话中
        # 207	欠费
        # 208	运营商线路异常
        # 209	主叫取消
        # 210	不在服务区
        # @type EndStatus: Integer
        # @param SkillGroup: 技能组名称
        # @type SkillGroup: String
        # @param CallerLocation: 主叫归属地
        # @type CallerLocation: String
        # @param IVRDuration: IVR 阶段耗时
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IVRDuration: Integer
        # @param RingTimestamp: 振铃时间戳，UNIX 秒级时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RingTimestamp: Integer
        # @param AcceptTimestamp: 接听时间戳，UNIX 秒级时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AcceptTimestamp: Integer
        # @param EndedTimestamp: 结束时间戳，UNIX 秒级时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndedTimestamp: Integer
        # @param IVRKeyPressed: IVR 按键信息 ，e.g. ["1","2","3"]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IVRKeyPressed: Array
        # @param HungUpSide: 挂机方 seat 坐席 user 用户
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HungUpSide: String
        # @param ServeParticipants: 服务参与者列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServeParticipants: Array
        # @param SkillGroupId: 技能组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SkillGroupId: Integer
        # @param EndStatusString: error                   错误
        # ok                       正常结束
        # unconnected      未接通
        # seatGiveUp         坐席未接
        # blackList             黑名单
        # seatForward       坐席转接
        # ivrGiveUp           IVR 期间用户放弃
        # waitingGiveUp   会话排队期间用户放弃
        # ringingGiveUp   会话振铃期间用户放弃
        # noSeatOnline     无坐席在线
        # notWorkTime     非工作时间
        # ivrEnd                 IVR后直接结束
        # unknown            未知状态
        # notAnswer          未接听
        # userReject          拒接挂断
        # powerOff            关机
        # numberNotExist  空号
        # busy                    通话中
        # outOfCredit        欠费
        # operatorError     运营商线路异常
        # callerCancel        主叫取消
        # notInService       不在服务区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndStatusString: String
        # @param StartTimestamp: 会话开始时间戳，UNIX 秒级时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTimestamp: Integer
        # @param QueuedTimestamp: 进入排队时间，Unix 秒级时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueuedTimestamp: Integer
        # @param PostIVRKeyPressed: 后置IVR按键信息（e.g. [{"Key":"1","Label":"非常满意"}]）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PostIVRKeyPressed: Array
        # @param QueuedSkillGroupId: 排队技能组Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueuedSkillGroupId: Integer
        # @param SessionId: 会话 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionId: String
        # @param ProtectedCaller: 主叫号码保护ID，开启号码保护映射功能时有效，且Caller字段置空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProtectedCaller: String
        # @param ProtectedCallee: 被叫号码保护ID，开启号码保护映射功能时有效，且Callee字段置空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProtectedCallee: String

        attr_accessor :Caller, :Callee, :Time, :Direction, :Duration, :RecordURL, :SeatUser, :EndStatus, :SkillGroup, :CallerLocation, :IVRDuration, :RingTimestamp, :AcceptTimestamp, :EndedTimestamp, :IVRKeyPressed, :HungUpSide, :ServeParticipants, :SkillGroupId, :EndStatusString, :StartTimestamp, :QueuedTimestamp, :PostIVRKeyPressed, :QueuedSkillGroupId, :SessionId, :ProtectedCaller, :ProtectedCallee
        
        def initialize(caller=nil, callee=nil, time=nil, direction=nil, duration=nil, recordurl=nil, seatuser=nil, endstatus=nil, skillgroup=nil, callerlocation=nil, ivrduration=nil, ringtimestamp=nil, accepttimestamp=nil, endedtimestamp=nil, ivrkeypressed=nil, hungupside=nil, serveparticipants=nil, skillgroupid=nil, endstatusstring=nil, starttimestamp=nil, queuedtimestamp=nil, postivrkeypressed=nil, queuedskillgroupid=nil, sessionid=nil, protectedcaller=nil, protectedcallee=nil)
          @Caller = caller
          @Callee = callee
          @Time = time
          @Direction = direction
          @Duration = duration
          @RecordURL = recordurl
          @SeatUser = seatuser
          @EndStatus = endstatus
          @SkillGroup = skillgroup
          @CallerLocation = callerlocation
          @IVRDuration = ivrduration
          @RingTimestamp = ringtimestamp
          @AcceptTimestamp = accepttimestamp
          @EndedTimestamp = endedtimestamp
          @IVRKeyPressed = ivrkeypressed
          @HungUpSide = hungupside
          @ServeParticipants = serveparticipants
          @SkillGroupId = skillgroupid
          @EndStatusString = endstatusstring
          @StartTimestamp = starttimestamp
          @QueuedTimestamp = queuedtimestamp
          @PostIVRKeyPressed = postivrkeypressed
          @QueuedSkillGroupId = queuedskillgroupid
          @SessionId = sessionid
          @ProtectedCaller = protectedcaller
          @ProtectedCallee = protectedcallee
        end

        def deserialize(params)
          @Caller = params['Caller']
          @Callee = params['Callee']
          @Time = params['Time']
          @Direction = params['Direction']
          @Duration = params['Duration']
          @RecordURL = params['RecordURL']
          unless params['SeatUser'].nil?
            @SeatUser = SeatUserInfo.new
            @SeatUser.deserialize(params['SeatUser'])
          end
          @EndStatus = params['EndStatus']
          @SkillGroup = params['SkillGroup']
          @CallerLocation = params['CallerLocation']
          @IVRDuration = params['IVRDuration']
          @RingTimestamp = params['RingTimestamp']
          @AcceptTimestamp = params['AcceptTimestamp']
          @EndedTimestamp = params['EndedTimestamp']
          @IVRKeyPressed = params['IVRKeyPressed']
          @HungUpSide = params['HungUpSide']
          unless params['ServeParticipants'].nil?
            @ServeParticipants = []
            params['ServeParticipants'].each do |i|
              serveparticipant_tmp = ServeParticipant.new
              serveparticipant_tmp.deserialize(i)
              @ServeParticipants << serveparticipant_tmp
            end
          end
          @SkillGroupId = params['SkillGroupId']
          @EndStatusString = params['EndStatusString']
          @StartTimestamp = params['StartTimestamp']
          @QueuedTimestamp = params['QueuedTimestamp']
          unless params['PostIVRKeyPressed'].nil?
            @PostIVRKeyPressed = []
            params['PostIVRKeyPressed'].each do |i|
              ivrkeypressedelement_tmp = IVRKeyPressedElement.new
              ivrkeypressedelement_tmp.deserialize(i)
              @PostIVRKeyPressed << ivrkeypressedelement_tmp
            end
          end
          @QueuedSkillGroupId = params['QueuedSkillGroupId']
          @SessionId = params['SessionId']
          @ProtectedCaller = params['ProtectedCaller']
          @ProtectedCallee = params['ProtectedCallee']
        end
      end

      # UnbindStaffSkillGroupList请求参数结构体
      class UnbindStaffSkillGroupListRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 实例ID
        # @type SdkAppId: Integer
        # @param StaffEmail: 客服邮箱
        # @type StaffEmail: String
        # @param SkillGroupList: 解绑技能组列表
        # @type SkillGroupList: Array

        attr_accessor :SdkAppId, :StaffEmail, :SkillGroupList
        
        def initialize(sdkappid=nil, staffemail=nil, skillgrouplist=nil)
          @SdkAppId = sdkappid
          @StaffEmail = staffemail
          @SkillGroupList = skillgrouplist
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StaffEmail = params['StaffEmail']
          @SkillGroupList = params['SkillGroupList']
        end
      end

      # UnbindStaffSkillGroupList返回参数结构体
      class UnbindStaffSkillGroupListResponse < TencentCloud::Common::AbstractModel
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

