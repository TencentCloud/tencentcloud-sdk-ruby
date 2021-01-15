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
  module Apcas
    module V20201127
      # 调用明细结构体
      class CallDetailItem < TencentCloud::Common::AbstractModel
        # @param DataType: 数据类型 0 imei 1 qimei 2 qq 3 phone 7:IDFA 8:MD5(imei)
        # @type DataType: Integer
        # @param ValidAmount: 有效数据量
        # @type ValidAmount: Integer
        # @param Date: 调用时间
        # @type Date: String

        attr_accessor :DataType, :ValidAmount, :Date
        
        def initialize(datatype=nil, validamount=nil, date=nil)
          @DataType = datatype
          @ValidAmount = validamount
          @Date = date
        end

        def deserialize(params)
          @DataType = params['DataType']
          @ValidAmount = params['ValidAmount']
          @Date = params['Date']
        end
      end

      # 调用明细返回数据体
      class CallDetails < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的总条数
        # @type TotalCount: Integer
        # @param CallDetailSet: 调用明细数组
        # @type CallDetailSet: Array

        attr_accessor :TotalCount, :CallDetailSet
        
        def initialize(totalcount=nil, calldetailset=nil)
          @TotalCount = totalcount
          @CallDetailSet = calldetailset
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @CallDetailSet = params['CallDetailSet']
        end
      end

      # 调用量统计item
      class CallStatItem < TencentCloud::Common::AbstractModel
        # @param Date: 当前统计量的时间段
        # @type Date: String
        # @param Amount: 当前时间段的调用量
        # @type Amount: Integer

        attr_accessor :Date, :Amount
        
        def initialize(date=nil, amount=nil)
          @Date = date
          @Amount = amount
        end

        def deserialize(params)
          @Date = params['Date']
          @Amount = params['Amount']
        end
      end

      # 调用量统计信息，包括周/日/月/总调用量
      class GeneralStat < TencentCloud::Common::AbstractModel
        # @param TodayAmount: 今日调用量
        # @type TodayAmount: Integer
        # @param WeekAmount: 本周调用量
        # @type WeekAmount: Integer
        # @param MonthAmount: 本月调用量
        # @type MonthAmount: Integer
        # @param TotalAmount: 总调用量
        # @type TotalAmount: Integer

        attr_accessor :TodayAmount, :WeekAmount, :MonthAmount, :TotalAmount
        
        def initialize(todayamount=nil, weekamount=nil, monthamount=nil, totalamount=nil)
          @TodayAmount = todayamount
          @WeekAmount = weekamount
          @MonthAmount = monthamount
          @TotalAmount = totalamount
        end

        def deserialize(params)
          @TodayAmount = params['TodayAmount']
          @WeekAmount = params['WeekAmount']
          @MonthAmount = params['MonthAmount']
          @TotalAmount = params['TotalAmount']
        end
      end

      # GetTaskDetail请求参数结构体
      class GetTaskDetailRequest < TencentCloud::Common::AbstractModel
        # @param Id: 任务ID
        # @type Id: Integer

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # GetTaskDetail返回参数结构体
      class GetTaskDetailResponse < TencentCloud::Common::AbstractModel
        # @param TaskDetailDataList: 画像洞察任务TAG详细数据列表
        # @type TaskDetailDataList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskDetailDataList, :RequestId
        
        def initialize(taskdetaildatalist=nil, requestid=nil)
          @TaskDetailDataList = taskdetaildatalist
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskDetailDataList = params['TaskDetailDataList']
          @RequestId = params['RequestId']
        end
      end

      # GetTaskList请求参数结构体
      class GetTaskListRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 查询分页页码
        # @type PageNumber: Integer
        # @param PageSize: 查询分页大小
        # @type PageSize: Integer
        # @param StartTime: 查询起始时间（13位数字的UNIX时间戳，单位毫秒 ）
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间（13位数字的UNIX时间戳，单位毫秒 ）
        # @type EndTime: Integer
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param TaskStatus: 查询任务状态 0:默认状态 1:任务正在运行 2:任务运行成功 3:任务运行失败
        # @type TaskStatus: Integer

        attr_accessor :PageNumber, :PageSize, :StartTime, :EndTime, :TaskName, :TaskStatus
        
        def initialize(pagenumber=nil, pagesize=nil, starttime=nil, endtime=nil, taskname=nil, taskstatus=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @StartTime = starttime
          @EndTime = endtime
          @TaskName = taskname
          @TaskStatus = taskstatus
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @TaskName = params['TaskName']
          @TaskStatus = params['TaskStatus']
        end
      end

      # GetTaskList返回参数结构体
      class GetTaskListResponse < TencentCloud::Common::AbstractModel
        # @param TaskListData: 任务列表对象
        # @type TaskListData: :class:`Tencentcloud::Apcas.v20201127.models.TaskListData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskListData, :RequestId
        
        def initialize(tasklistdata=nil, requestid=nil)
          @TaskListData = tasklistdata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskListData'].nil?
            @TaskListData = TaskListData.new.deserialize(params[TaskListData])
          end
          @RequestId = params['RequestId']
        end
      end

      # 画像标签详情数据对象
      class LabelDetailData < TencentCloud::Common::AbstractModel
        # @param Value: 标签数据对象
        # @type Value: :class:`Tencentcloud::Apcas.v20201127.models.LabelValue`
        # @param Label: 标签表述，如"汽车资讯"、"游戏#手游"等
        # @type Label: String

        attr_accessor :Value, :Label
        
        def initialize(value=nil, label=nil)
          @Value = value
          @Label = label
        end

        def deserialize(params)
          unless params['Value'].nil?
            @Value = LabelValue.new.deserialize(params[Value])
          end
          @Label = params['Label']
        end
      end

      # 标签数据
      class LabelValue < TencentCloud::Common::AbstractModel
        # @param Proportion: 标签覆盖率占比（在整个上传的ID列表中的覆盖率）
        # @type Proportion: Float
        # @param Market: 标签大盘覆盖率占比
        # @type Market: Float
        # @param Tgi: TGI指数，由Proportion除以Market得到
        # @type Tgi: Float

        attr_accessor :Proportion, :Market, :Tgi
        
        def initialize(proportion=nil, market=nil, tgi=nil)
          @Proportion = proportion
          @Market = market
          @Tgi = tgi
        end

        def deserialize(params)
          @Proportion = params['Proportion']
          @Market = params['Market']
          @Tgi = params['Tgi']
        end
      end

      # 任务列表项Model
      class ListModel < TencentCloud::Common::AbstractModel
        # @param ID: 任务ID
        # @type ID: Integer
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param StartTime: 任务起始时间（13位数字的UNIX 时间戳，单位毫秒 ）
        # @type StartTime: Integer
        # @param Status: 任务状态 0:默认状态 1:任务正在运行 2:任务运行成功 3:任务运行失败
        # @type Status: Integer
        # @param Available: 画像覆盖人数
        # @type Available: Integer
        # @param ErrMsg: 任务失败描述信息
        # @type ErrMsg: String

        attr_accessor :ID, :TaskName, :StartTime, :Status, :Available, :ErrMsg
        
        def initialize(id=nil, taskname=nil, starttime=nil, status=nil, available=nil, errmsg=nil)
          @ID = id
          @TaskName = taskname
          @StartTime = starttime
          @Status = status
          @Available = available
          @ErrMsg = errmsg
        end

        def deserialize(params)
          @ID = params['ID']
          @TaskName = params['TaskName']
          @StartTime = params['StartTime']
          @Status = params['Status']
          @Available = params['Available']
          @ErrMsg = params['ErrMsg']
        end
      end

      # PredictRating请求参数结构体
      class PredictRatingRequest < TencentCloud::Common::AbstractModel
        # @param Type: ID标志的类型，0:IMEI 7:IDFA 8:MD5(imei) 100: 手机号明文 101: 手机号md5加密
        # @type Type: Integer
        # @param Id: 请求唯一标志ID
        # @type Id: String

        attr_accessor :Type, :Id
        
        def initialize(type=nil, id=nil)
          @Type = type
          @Id = id
        end

        def deserialize(params)
          @Type = params['Type']
          @Id = params['Id']
        end
      end

      # PredictRating返回参数结构体
      class PredictRatingResponse < TencentCloud::Common::AbstractModel
        # @param RatingData: 意向评级
        # @type RatingData: :class:`Tencentcloud::Apcas.v20201127.models.RatingData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RatingData, :RequestId
        
        def initialize(ratingdata=nil, requestid=nil)
          @RatingData = ratingdata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RatingData'].nil?
            @RatingData = RatingData.new.deserialize(params[RatingData])
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryCallDetails请求参数结构体
      class QueryCallDetailsRequest < TencentCloud::Common::AbstractModel
        # @param Type: 请求类型:1,人群特征洞察统计 2购车意向预测统计
        # @type Type: Integer
        # @param StartTime: 开始时间戳（毫秒）
        # @type StartTime: Integer
        # @param EndTime: 结束时间戳(毫秒）
        # @type EndTime: Integer
        # @param PageNumber: 页数
        # @type PageNumber: Integer
        # @param PageSize: 每页个数
        # @type PageSize: Integer

        attr_accessor :Type, :StartTime, :EndTime, :PageNumber, :PageSize
        
        def initialize(type=nil, starttime=nil, endtime=nil, pagenumber=nil, pagesize=nil)
          @Type = type
          @StartTime = starttime
          @EndTime = endtime
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @Type = params['Type']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # QueryCallDetails返回参数结构体
      class QueryCallDetailsResponse < TencentCloud::Common::AbstractModel
        # @param CallDetails: 调用明细
        # @type CallDetails: :class:`Tencentcloud::Apcas.v20201127.models.CallDetails`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CallDetails, :RequestId
        
        def initialize(calldetails=nil, requestid=nil)
          @CallDetails = calldetails
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CallDetails'].nil?
            @CallDetails = CallDetails.new.deserialize(params[CallDetails])
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryCallStat请求参数结构体
      class QueryCallStatRequest < TencentCloud::Common::AbstractModel
        # @param Type: 请求类型:1,人群特征洞察统计 2购车意向预测统计
        # @type Type: Integer
        # @param StartTime: 开始时间戳（毫秒）
        # @type StartTime: Integer
        # @param EndTime: 结束时间戳(毫秒）
        # @type EndTime: Integer

        attr_accessor :Type, :StartTime, :EndTime
        
        def initialize(type=nil, starttime=nil, endtime=nil)
          @Type = type
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Type = params['Type']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # QueryCallStat返回参数结构体
      class QueryCallStatResponse < TencentCloud::Common::AbstractModel
        # @param CallSet: 调用量数组
        # @type CallSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CallSet, :RequestId
        
        def initialize(callset=nil, requestid=nil)
          @CallSet = callset
          @RequestId = requestid
        end

        def deserialize(params)
          @CallSet = params['CallSet']
          @RequestId = params['RequestId']
        end
      end

      # QueryGeneralStat请求参数结构体
      class QueryGeneralStatRequest < TencentCloud::Common::AbstractModel
        # @param Type: 请求类型:1,人群特征洞察统计 2购车意向预测统计
        # @type Type: Integer

        attr_accessor :Type
        
        def initialize(type=nil)
          @Type = type
        end

        def deserialize(params)
          @Type = params['Type']
        end
      end

      # QueryGeneralStat返回参数结构体
      class QueryGeneralStatResponse < TencentCloud::Common::AbstractModel
        # @param GeneralStat: 调用量信息
        # @type GeneralStat: :class:`Tencentcloud::Apcas.v20201127.models.GeneralStat`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GeneralStat, :RequestId
        
        def initialize(generalstat=nil, requestid=nil)
          @GeneralStat = generalstat
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GeneralStat'].nil?
            @GeneralStat = GeneralStat.new.deserialize(params[GeneralStat])
          end
          @RequestId = params['RequestId']
        end
      end

      # 返回购车意向评级
      class RatingData < TencentCloud::Common::AbstractModel
        # @param Rank: 线索评级（取值：0、1、2、3分别代表无、低、中、高意愿）
        # @type Rank: Integer

        attr_accessor :Rank
        
        def initialize(rank=nil)
          @Rank = rank
        end

        def deserialize(params)
          @Rank = params['Rank']
        end
      end

      # 任务ID信息
      class TaskData < TencentCloud::Common::AbstractModel
        # @param Id: 画像洞察任务ID
        # @type Id: Integer

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # 画像任务详情对象
      class TaskDetailData < TencentCloud::Common::AbstractModel
        # @param TagId: 画像TAG ID
        # @type TagId: Integer
        # @param TagDesc: 画像TAG描述（如“省份分布”）
        # @type TagDesc: String
        # @param LabelDetailDataList: 画像Label对象列表（一个TAG对于N个Label，例如“省份分布”TAG对应“广东省”、“浙江省”等多个Label）
        # @type LabelDetailDataList: Array

        attr_accessor :TagId, :TagDesc, :LabelDetailDataList
        
        def initialize(tagid=nil, tagdesc=nil, labeldetaildatalist=nil)
          @TagId = tagid
          @TagDesc = tagdesc
          @LabelDetailDataList = labeldetaildatalist
        end

        def deserialize(params)
          @TagId = params['TagId']
          @TagDesc = params['TagDesc']
          @LabelDetailDataList = params['LabelDetailDataList']
        end
      end

      # 任务列表对象
      class TaskListData < TencentCloud::Common::AbstractModel
        # @param PageNumber: 查询分页页码
        # @type PageNumber: Integer
        # @param PageSize: 查询分页大小
        # @type PageSize: Integer
        # @param TotalCount: 任务列表总记录数
        # @type TotalCount: Integer
        # @param TaskList: 任务列表
        # @type TaskList: Array

        attr_accessor :PageNumber, :PageSize, :TotalCount, :TaskList
        
        def initialize(pagenumber=nil, pagesize=nil, totalcount=nil, tasklist=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalCount = totalcount
          @TaskList = tasklist
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          @TaskList = params['TaskList']
        end
      end

      # UploadId请求参数结构体
      class UploadIdRequest < TencentCloud::Common::AbstractModel
        # @param Type: id标志的类型: 0:imei 7:IDFA 8:MD5(imei)
        # @type Type: Integer
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param IdListBase64: ID列表（ID间使用换行符分割、然后使用Base64编码）
        # @type IdListBase64: String

        attr_accessor :Type, :TaskName, :IdListBase64
        
        def initialize(type=nil, taskname=nil, idlistbase64=nil)
          @Type = type
          @TaskName = taskname
          @IdListBase64 = idlistbase64
        end

        def deserialize(params)
          @Type = params['Type']
          @TaskName = params['TaskName']
          @IdListBase64 = params['IdListBase64']
        end
      end

      # UploadId返回参数结构体
      class UploadIdResponse < TencentCloud::Common::AbstractModel
        # @param TaskData: 画像洞察任务ID等信息
        # @type TaskData: :class:`Tencentcloud::Apcas.v20201127.models.TaskData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskData, :RequestId
        
        def initialize(taskdata=nil, requestid=nil)
          @TaskData = taskdata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskData'].nil?
            @TaskData = TaskData.new.deserialize(params[TaskData])
          end
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

