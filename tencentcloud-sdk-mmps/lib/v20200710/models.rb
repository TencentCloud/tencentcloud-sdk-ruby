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
  module Mmps
    module V20200710
      # 隐私合规应用信息
      class AppInfoItem < TencentCloud::Common::AbstractModel
        # @param AppPackage: 小程序apiiid
        # @type AppPackage: String
        # @param AppName: 小程序应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppName: String
        # @param AppVersion: 小程序应用版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppVersion: String
        # @param Platform: 应用平台, 0:android, 1:ios, 2:小程序
        # @type Platform: Integer
        # @param ReportUrl: 小程序隐私诊断报告下载链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportUrl: String
        # @param ReportTitle: 小程序隐私诊断报告名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportTitle: String
        # @param BehaviorUrl: 小程序隐私诊断堆栈报告下载链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BehaviorUrl: String
        # @param BehaviorTitle: 小程序隐私诊断堆栈报告名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BehaviorTitle: String
        # @param HighRiskCount: 诊断风险项数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HighRiskCount: Integer

        attr_accessor :AppPackage, :AppName, :AppVersion, :Platform, :ReportUrl, :ReportTitle, :BehaviorUrl, :BehaviorTitle, :HighRiskCount
        
        def initialize(apppackage=nil, appname=nil, appversion=nil, platform=nil, reporturl=nil, reporttitle=nil, behaviorurl=nil, behaviortitle=nil, highriskcount=nil)
          @AppPackage = apppackage
          @AppName = appname
          @AppVersion = appversion
          @Platform = platform
          @ReportUrl = reporturl
          @ReportTitle = reporttitle
          @BehaviorUrl = behaviorurl
          @BehaviorTitle = behaviortitle
          @HighRiskCount = highriskcount
        end

        def deserialize(params)
          @AppPackage = params['AppPackage']
          @AppName = params['AppName']
          @AppVersion = params['AppVersion']
          @Platform = params['Platform']
          @ReportUrl = params['ReportUrl']
          @ReportTitle = params['ReportTitle']
          @BehaviorUrl = params['BehaviorUrl']
          @BehaviorTitle = params['BehaviorTitle']
          @HighRiskCount = params['HighRiskCount']
        end
      end

      # 应用隐私合规诊断任务数据
      class AppTaskData < TencentCloud::Common::AbstractModel
        # @param TaskID: 任务id
        # @type TaskID: String
        # @param TaskType: 任务类型, 0:基础版, 1:专家版, 2:本地化
        # @type TaskType: Integer
        # @param TaskStatus: 0:默认值(待检测/待咨询), 1.检测中, 2:待评估, 3:评估中, 4:任务完成/咨询完成, 5:任务失败, 6:咨询中;
        # @type TaskStatus: Integer
        # @param TaskErrMsg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskErrMsg: String
        # @param Source: 任务来源,0:小程序诊断, 1:预留字段(暂未使用), 2:app诊断(android);
        # @type Source: Integer
        # @param AppInfo: 应用信息
        # @type AppInfo: :class:`Tencentcloud::Mmps.v20200710.models.AppInfoItem`
        # @param StartTime: 任务启动时间
        # @type StartTime: String
        # @param EndTime: 任务完成时间(更新时间)
        # @type EndTime: String

        attr_accessor :TaskID, :TaskType, :TaskStatus, :TaskErrMsg, :Source, :AppInfo, :StartTime, :EndTime
        
        def initialize(taskid=nil, tasktype=nil, taskstatus=nil, taskerrmsg=nil, source=nil, appinfo=nil, starttime=nil, endtime=nil)
          @TaskID = taskid
          @TaskType = tasktype
          @TaskStatus = taskstatus
          @TaskErrMsg = taskerrmsg
          @Source = source
          @AppInfo = appinfo
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @TaskID = params['TaskID']
          @TaskType = params['TaskType']
          @TaskStatus = params['TaskStatus']
          @TaskErrMsg = params['TaskErrMsg']
          @Source = params['Source']
          unless params['AppInfo'].nil?
            @AppInfo = AppInfoItem.new
            @AppInfo.deserialize(params['AppInfo'])
          end
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # CreateAppScanTaskRepeat请求参数结构体
      class CreateAppScanTaskRepeatRequest < TencentCloud::Common::AbstractModel
        # @param TaskType: 任务类型, 0:基础版, 1:专家版, 2:本地化
        # @type TaskType: Integer
        # @param Source: 任务来源, 0:小程序诊断, 1:预留字段(暂未使用), 2:app诊断(android);
        # @type Source: Integer
        # @param AppPackage: 小程序AppID
        # @type AppPackage: String
        # @param Platform: 应用平台, 0:android, 1:ios, 2:小程序
        # @type Platform: Integer
        # @param OrgTaskID: 原诊断任务ID
        # @type OrgTaskID: String

        attr_accessor :TaskType, :Source, :AppPackage, :Platform, :OrgTaskID
        
        def initialize(tasktype=nil, source=nil, apppackage=nil, platform=nil, orgtaskid=nil)
          @TaskType = tasktype
          @Source = source
          @AppPackage = apppackage
          @Platform = platform
          @OrgTaskID = orgtaskid
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          @Source = params['Source']
          @AppPackage = params['AppPackage']
          @Platform = params['Platform']
          @OrgTaskID = params['OrgTaskID']
        end
      end

      # CreateAppScanTaskRepeat返回参数结构体
      class CreateAppScanTaskRepeatResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值, 0:成功, 其他值请查看“返回值”定义
        # @type Result: Integer
        # @param TaskID: 任务id
        # @type TaskID: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :TaskID, :RequestId
        
        def initialize(result=nil, taskid=nil, requestid=nil)
          @Result = result
          @TaskID = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @TaskID = params['TaskID']
          @RequestId = params['RequestId']
        end
      end

      # CreateAppScanTask请求参数结构体
      class CreateAppScanTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskType: 任务类型, 0:基础版, 1:专家版, 2:本地化
        # @type TaskType: Integer
        # @param Source: 任务来源, 0:小程序诊断, 1:预留字段(暂未使用), 2:app诊断(android);
        # @type Source: Integer
        # @param AppPackage: 小程序AppID
        # @type AppPackage: String
        # @param Platform: 应用平台, 0:android, 1:ios, 2:小程序
        # @type Platform: Integer
        # @param AppName: 小程序名称
        # @type AppName: String
        # @param AppVersion: 小程序版本
        # @type AppVersion: String
        # @param ContactName: 联系人信息
        # @type ContactName: String
        # @param TelNumber: 联系电话
        # @type TelNumber: String
        # @param CorpName: 公司名称
        # @type CorpName: String
        # @param SalesPerson: 商务对接人员
        # @type SalesPerson: String
        # @param Email: 公司邮箱
        # @type Email: String

        attr_accessor :TaskType, :Source, :AppPackage, :Platform, :AppName, :AppVersion, :ContactName, :TelNumber, :CorpName, :SalesPerson, :Email
        
        def initialize(tasktype=nil, source=nil, apppackage=nil, platform=nil, appname=nil, appversion=nil, contactname=nil, telnumber=nil, corpname=nil, salesperson=nil, email=nil)
          @TaskType = tasktype
          @Source = source
          @AppPackage = apppackage
          @Platform = platform
          @AppName = appname
          @AppVersion = appversion
          @ContactName = contactname
          @TelNumber = telnumber
          @CorpName = corpname
          @SalesPerson = salesperson
          @Email = email
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          @Source = params['Source']
          @AppPackage = params['AppPackage']
          @Platform = params['Platform']
          @AppName = params['AppName']
          @AppVersion = params['AppVersion']
          @ContactName = params['ContactName']
          @TelNumber = params['TelNumber']
          @CorpName = params['CorpName']
          @SalesPerson = params['SalesPerson']
          @Email = params['Email']
        end
      end

      # CreateAppScanTask返回参数结构体
      class CreateAppScanTaskResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值, 0:成功, 其他值请查看“返回值”定义
        # @type Result: Integer
        # @param TaskID: 任务id
        # @type TaskID: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :TaskID, :RequestId
        
        def initialize(result=nil, taskid=nil, requestid=nil)
          @Result = result
          @TaskID = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @TaskID = params['TaskID']
          @RequestId = params['RequestId']
        end
      end

      # CreateFlySecMiniAppProfessionalScanTask请求参数结构体
      class CreateFlySecMiniAppProfessionalScanTaskRequest < TencentCloud::Common::AbstractModel
        # @param MiniAppID: 小程序AppID
        # @type MiniAppID: String
        # @param MiniAppName: 小程序名称
        # @type MiniAppName: String
        # @param Mode: 诊断模式 2:深度诊断
        # @type Mode: Integer
        # @param CorpName: 公司名称
        # @type CorpName: String
        # @param Mobile: 手机号码
        # @type Mobile: String
        # @param Email: 电子邮箱
        # @type Email: String
        # @param Remark: 备注信息
        # @type Remark: String

        attr_accessor :MiniAppID, :MiniAppName, :Mode, :CorpName, :Mobile, :Email, :Remark
        
        def initialize(miniappid=nil, miniappname=nil, mode=nil, corpname=nil, mobile=nil, email=nil, remark=nil)
          @MiniAppID = miniappid
          @MiniAppName = miniappname
          @Mode = mode
          @CorpName = corpname
          @Mobile = mobile
          @Email = email
          @Remark = remark
        end

        def deserialize(params)
          @MiniAppID = params['MiniAppID']
          @MiniAppName = params['MiniAppName']
          @Mode = params['Mode']
          @CorpName = params['CorpName']
          @Mobile = params['Mobile']
          @Email = params['Email']
          @Remark = params['Remark']
        end
      end

      # CreateFlySecMiniAppProfessionalScanTask返回参数结构体
      class CreateFlySecMiniAppProfessionalScanTaskResponse < TencentCloud::Common::AbstractModel
        # @param Ret: 返回值, 0:成功, 其他值请查看“返回值”定义
        # @type Ret: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ret, :RequestId
        
        def initialize(ret=nil, requestid=nil)
          @Ret = ret
          @RequestId = requestid
        end

        def deserialize(params)
          @Ret = params['Ret']
          @RequestId = params['RequestId']
        end
      end

      # CreateFlySecMiniAppScanTaskRepeat请求参数结构体
      class CreateFlySecMiniAppScanTaskRepeatRequest < TencentCloud::Common::AbstractModel
        # @param MiniAppID: 小程序AppID
        # @type MiniAppID: String
        # @param Mode: 诊断模式 1:基础诊断
        # @type Mode: Integer
        # @param OrgTaskID: 原任务id
        # @type OrgTaskID: String
        # @param MiniAppTestAccount: 小程序测试账号(自有账号体系需提供,其他情况不需要)
        # @type MiniAppTestAccount: String
        # @param MiniAppTestPwd: 小程序测试密码(自有账号体系需提供,其他情况不需要)
        # @type MiniAppTestPwd: String
        # @param ScanVersion: 诊断扫描版本 0:正式版 1:体验版
        # @type ScanVersion: Integer

        attr_accessor :MiniAppID, :Mode, :OrgTaskID, :MiniAppTestAccount, :MiniAppTestPwd, :ScanVersion
        
        def initialize(miniappid=nil, mode=nil, orgtaskid=nil, miniapptestaccount=nil, miniapptestpwd=nil, scanversion=nil)
          @MiniAppID = miniappid
          @Mode = mode
          @OrgTaskID = orgtaskid
          @MiniAppTestAccount = miniapptestaccount
          @MiniAppTestPwd = miniapptestpwd
          @ScanVersion = scanversion
        end

        def deserialize(params)
          @MiniAppID = params['MiniAppID']
          @Mode = params['Mode']
          @OrgTaskID = params['OrgTaskID']
          @MiniAppTestAccount = params['MiniAppTestAccount']
          @MiniAppTestPwd = params['MiniAppTestPwd']
          @ScanVersion = params['ScanVersion']
        end
      end

      # CreateFlySecMiniAppScanTaskRepeat返回参数结构体
      class CreateFlySecMiniAppScanTaskRepeatResponse < TencentCloud::Common::AbstractModel
        # @param Ret: 返回值, 0:成功, 其他值请查看“返回值”定义
        # @type Ret: Integer
        # @param TaskID: 任务id
        # @type TaskID: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ret, :TaskID, :RequestId
        
        def initialize(ret=nil, taskid=nil, requestid=nil)
          @Ret = ret
          @TaskID = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @Ret = params['Ret']
          @TaskID = params['TaskID']
          @RequestId = params['RequestId']
        end
      end

      # CreateFlySecMiniAppScanTask请求参数结构体
      class CreateFlySecMiniAppScanTaskRequest < TencentCloud::Common::AbstractModel
        # @param MiniAppID: 小程序AppID
        # @type MiniAppID: String
        # @param Mode: 诊断模式 1:基础诊断
        # @type Mode: Integer
        # @param MiniAppTestAccount: 小程序测试账号(自有账号体系需提供,其他情况不需要)
        # @type MiniAppTestAccount: String
        # @param MiniAppTestPwd: 小程序测试密码(自有账号体系需提供,其他情况不需要)
        # @type MiniAppTestPwd: String
        # @param Industry: 小程序所属行业
        # @type Industry: String
        # @param SurveyContent: 小程序调查问卷json字符串
        # @type SurveyContent: String
        # @param Mobile: 手机号码
        # @type Mobile: String
        # @param Email: 邮箱地址
        # @type Email: String
        # @param SalesPerson: 商务合作接口人
        # @type SalesPerson: String
        # @param ScanVersion: 诊断扫描版本 0:正式版 1:体验版
        # @type ScanVersion: Integer

        attr_accessor :MiniAppID, :Mode, :MiniAppTestAccount, :MiniAppTestPwd, :Industry, :SurveyContent, :Mobile, :Email, :SalesPerson, :ScanVersion
        
        def initialize(miniappid=nil, mode=nil, miniapptestaccount=nil, miniapptestpwd=nil, industry=nil, surveycontent=nil, mobile=nil, email=nil, salesperson=nil, scanversion=nil)
          @MiniAppID = miniappid
          @Mode = mode
          @MiniAppTestAccount = miniapptestaccount
          @MiniAppTestPwd = miniapptestpwd
          @Industry = industry
          @SurveyContent = surveycontent
          @Mobile = mobile
          @Email = email
          @SalesPerson = salesperson
          @ScanVersion = scanversion
        end

        def deserialize(params)
          @MiniAppID = params['MiniAppID']
          @Mode = params['Mode']
          @MiniAppTestAccount = params['MiniAppTestAccount']
          @MiniAppTestPwd = params['MiniAppTestPwd']
          @Industry = params['Industry']
          @SurveyContent = params['SurveyContent']
          @Mobile = params['Mobile']
          @Email = params['Email']
          @SalesPerson = params['SalesPerson']
          @ScanVersion = params['ScanVersion']
        end
      end

      # CreateFlySecMiniAppScanTask返回参数结构体
      class CreateFlySecMiniAppScanTaskResponse < TencentCloud::Common::AbstractModel
        # @param Ret: 返回值, 0:成功, 其他值请查看“返回值”定义
        # @type Ret: Integer
        # @param TaskID: 任务id
        # @type TaskID: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ret, :TaskID, :RequestId
        
        def initialize(ret=nil, taskid=nil, requestid=nil)
          @Ret = ret
          @TaskID = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @Ret = params['Ret']
          @TaskID = params['TaskID']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBasicDiagnosisResourceUsageInfo请求参数结构体
      class DescribeBasicDiagnosisResourceUsageInfoRequest < TencentCloud::Common::AbstractModel
        # @param Mode: 诊断模式 1:基础诊断，2:深度诊断
        # @type Mode: Integer

        attr_accessor :Mode
        
        def initialize(mode=nil)
          @Mode = mode
        end

        def deserialize(params)
          @Mode = params['Mode']
        end
      end

      # DescribeBasicDiagnosisResourceUsageInfo返回参数结构体
      class DescribeBasicDiagnosisResourceUsageInfoResponse < TencentCloud::Common::AbstractModel
        # @param Ret: 返回值, 0:成功, 其他值请查看“返回值”定义
        # @type Ret: Integer
        # @param ResourceName: 资源类型
        # @type ResourceName: String
        # @param Total: 资源总数
        # @type Total: Integer
        # @param UnusedCount: 资源未使用次数
        # @type UnusedCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ret, :ResourceName, :Total, :UnusedCount, :RequestId
        
        def initialize(ret=nil, resourcename=nil, total=nil, unusedcount=nil, requestid=nil)
          @Ret = ret
          @ResourceName = resourcename
          @Total = total
          @UnusedCount = unusedcount
          @RequestId = requestid
        end

        def deserialize(params)
          @Ret = params['Ret']
          @ResourceName = params['ResourceName']
          @Total = params['Total']
          @UnusedCount = params['UnusedCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFlySecMiniAppReportUrl请求参数结构体
      class DescribeFlySecMiniAppReportUrlRequest < TencentCloud::Common::AbstractModel
        # @param TaskID: 任务id
        # @type TaskID: String
        # @param MiniAppID: 小程序appid
        # @type MiniAppID: String
        # @param Mode: 诊断方式 1:基础诊断，2:深度诊断
        # @type Mode: Integer
        # @param ReportType: 诊断报告类型 0:基础诊断报告, 1:总裁版诊断报告
        # @type ReportType: Integer

        attr_accessor :TaskID, :MiniAppID, :Mode, :ReportType
        
        def initialize(taskid=nil, miniappid=nil, mode=nil, reporttype=nil)
          @TaskID = taskid
          @MiniAppID = miniappid
          @Mode = mode
          @ReportType = reporttype
        end

        def deserialize(params)
          @TaskID = params['TaskID']
          @MiniAppID = params['MiniAppID']
          @Mode = params['Mode']
          @ReportType = params['ReportType']
        end
      end

      # DescribeFlySecMiniAppReportUrl返回参数结构体
      class DescribeFlySecMiniAppReportUrlResponse < TencentCloud::Common::AbstractModel
        # @param Ret: 返回值, 0:成功, 其他值请查看“返回值”定义
        # @type Ret: Integer
        # @param Url: 诊断报告下载链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ret, :Url, :RequestId
        
        def initialize(ret=nil, url=nil, requestid=nil)
          @Ret = ret
          @Url = url
          @RequestId = requestid
        end

        def deserialize(params)
          @Ret = params['Ret']
          @Url = params['Url']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFlySecMiniAppScanReportList请求参数结构体
      class DescribeFlySecMiniAppScanReportListRequest < TencentCloud::Common::AbstractModel
        # @param MiniAppID: 小程序AppID
        # @type MiniAppID: String
        # @param Mode: 诊断方式 1:基础诊断，2:深度诊断
        # @type Mode: Integer
        # @param Status: 诊断状态 -1:查询全部, 0:排队中, 1:成功, 2:失败, 3:进行中
        # @type Status: Integer
        # @param Size: 查询数量, 0:查询所有, 其他值:最近几次的诊断数量
        # @type Size: Integer
        # @param MiniAppVersion: 小程序版本
        # @type MiniAppVersion: String

        attr_accessor :MiniAppID, :Mode, :Status, :Size, :MiniAppVersion
        
        def initialize(miniappid=nil, mode=nil, status=nil, size=nil, miniappversion=nil)
          @MiniAppID = miniappid
          @Mode = mode
          @Status = status
          @Size = size
          @MiniAppVersion = miniappversion
        end

        def deserialize(params)
          @MiniAppID = params['MiniAppID']
          @Mode = params['Mode']
          @Status = params['Status']
          @Size = params['Size']
          @MiniAppVersion = params['MiniAppVersion']
        end
      end

      # DescribeFlySecMiniAppScanReportList返回参数结构体
      class DescribeFlySecMiniAppScanReportListResponse < TencentCloud::Common::AbstractModel
        # @param Ret: 返回值, 0:成功, 其他值请查看“返回值”定义
        # @type Ret: Integer
        # @param Data: 诊断报告数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param Total: 诊断任务数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ret, :Data, :Total, :RequestId
        
        def initialize(ret=nil, data=nil, total=nil, requestid=nil)
          @Ret = ret
          @Data = data
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          @Ret = params['Ret']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              flysecminiappreportdata_tmp = FlySecMiniAppReportData.new
              flysecminiappreportdata_tmp.deserialize(i)
              @Data << flysecminiappreportdata_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFlySecMiniAppScanTaskList请求参数结构体
      class DescribeFlySecMiniAppScanTaskListRequest < TencentCloud::Common::AbstractModel
        # @param Mode: 诊断方式 1:基础诊断，2:深度诊断
        # @type Mode: Integer
        # @param Status: 诊断状态 -1:查询全部, 0:排队中, 1:成功, 2:失败, 3:进行中
        # @type Status: Integer
        # @param Size: 查询数量, 0:查询所有, 其他值:最近几次的诊断数量
        # @type Size: Integer
        # @param MiniAppID: 小程序appid(为空的时候,则查询当前用户诊断的所有小程序)
        # @type MiniAppID: String

        attr_accessor :Mode, :Status, :Size, :MiniAppID
        
        def initialize(mode=nil, status=nil, size=nil, miniappid=nil)
          @Mode = mode
          @Status = status
          @Size = size
          @MiniAppID = miniappid
        end

        def deserialize(params)
          @Mode = params['Mode']
          @Status = params['Status']
          @Size = params['Size']
          @MiniAppID = params['MiniAppID']
        end
      end

      # DescribeFlySecMiniAppScanTaskList返回参数结构体
      class DescribeFlySecMiniAppScanTaskListResponse < TencentCloud::Common::AbstractModel
        # @param Ret: 返回值, 0:成功, 其他值请查看“返回值”定义
        # @type Ret: Integer
        # @param Data: 诊断任务数据列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param Total: 诊断任务数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ret, :Data, :Total, :RequestId
        
        def initialize(ret=nil, data=nil, total=nil, requestid=nil)
          @Ret = ret
          @Data = data
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          @Ret = params['Ret']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              flysecminiapptaskdata_tmp = FlySecMiniAppTaskData.new
              flysecminiapptaskdata_tmp.deserialize(i)
              @Data << flysecminiapptaskdata_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFlySecMiniAppScanTaskParam请求参数结构体
      class DescribeFlySecMiniAppScanTaskParamRequest < TencentCloud::Common::AbstractModel
        # @param TaskID: 任务id
        # @type TaskID: String

        attr_accessor :TaskID
        
        def initialize(taskid=nil)
          @TaskID = taskid
        end

        def deserialize(params)
          @TaskID = params['TaskID']
        end
      end

      # DescribeFlySecMiniAppScanTaskParam返回参数结构体
      class DescribeFlySecMiniAppScanTaskParamResponse < TencentCloud::Common::AbstractModel
        # @param Ret: 返回值, 0:成功, 其他值请查看“返回值”定义
        # @type Ret: Integer
        # @param MiniAppID: 小程序AppID
        # @type MiniAppID: String
        # @param Mode: 诊断模式 1:基础诊断，2:深度诊断
        # @type Mode: Integer
        # @param MiniAppTestAccount: 小程序测试账号(自有账号体系需提供,其他情况不需要)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MiniAppTestAccount: String
        # @param MiniAppTestPwd: 小程序测试密码(自有账号体系需提供,其他情况不需要)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MiniAppTestPwd: String
        # @param ScanVersion: 诊断扫描版本 0:正式版 1:体验版
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanVersion: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ret, :MiniAppID, :Mode, :MiniAppTestAccount, :MiniAppTestPwd, :ScanVersion, :RequestId
        
        def initialize(ret=nil, miniappid=nil, mode=nil, miniapptestaccount=nil, miniapptestpwd=nil, scanversion=nil, requestid=nil)
          @Ret = ret
          @MiniAppID = miniappid
          @Mode = mode
          @MiniAppTestAccount = miniapptestaccount
          @MiniAppTestPwd = miniapptestpwd
          @ScanVersion = scanversion
          @RequestId = requestid
        end

        def deserialize(params)
          @Ret = params['Ret']
          @MiniAppID = params['MiniAppID']
          @Mode = params['Mode']
          @MiniAppTestAccount = params['MiniAppTestAccount']
          @MiniAppTestPwd = params['MiniAppTestPwd']
          @ScanVersion = params['ScanVersion']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFlySecMiniAppScanTaskStatus请求参数结构体
      class DescribeFlySecMiniAppScanTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param TaskID: 任务id
        # @type TaskID: String

        attr_accessor :TaskID
        
        def initialize(taskid=nil)
          @TaskID = taskid
        end

        def deserialize(params)
          @TaskID = params['TaskID']
        end
      end

      # DescribeFlySecMiniAppScanTaskStatus返回参数结构体
      class DescribeFlySecMiniAppScanTaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param Ret: 返回值, 0:成功, 其他值请查看“返回值”定义
        # @type Ret: Integer
        # @param Status: 诊断状态, 0:排队中, 1:成功, 2:失败, 3:进行中
        # @type Status: Integer
        # @param Errno: 诊断失败错误码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Errno: Integer
        # @param MiniAppName: 小程序名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MiniAppName: String
        # @param MiniAppVersion: 小程序版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MiniAppVersion: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ret, :Status, :Errno, :MiniAppName, :MiniAppVersion, :RequestId
        
        def initialize(ret=nil, status=nil, errno=nil, miniappname=nil, miniappversion=nil, requestid=nil)
          @Ret = ret
          @Status = status
          @Errno = errno
          @MiniAppName = miniappname
          @MiniAppVersion = miniappversion
          @RequestId = requestid
        end

        def deserialize(params)
          @Ret = params['Ret']
          @Status = params['Status']
          @Errno = params['Errno']
          @MiniAppName = params['MiniAppName']
          @MiniAppVersion = params['MiniAppVersion']
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceUsageInfo请求参数结构体
      class DescribeResourceUsageInfoRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeResourceUsageInfo返回参数结构体
      class DescribeResourceUsageInfoResponse < TencentCloud::Common::AbstractModel
        # @param Ret: 返回值, 0:成功, 其他值请查看“返回值”定义
        # @type Ret: Integer
        # @param Data: 安全资源数据列表
        # @type Data: Array
        # @param Total: 安全资源数量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ret, :Data, :Total, :RequestId
        
        def initialize(ret=nil, data=nil, total=nil, requestid=nil)
          @Ret = ret
          @Data = data
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          @Ret = params['Ret']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              resourceusageinfodata_tmp = ResourceUsageInfoData.new
              resourceusageinfodata_tmp.deserialize(i)
              @Data << resourceusageinfodata_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeScanTaskList请求参数结构体
      class DescribeScanTaskListRequest < TencentCloud::Common::AbstractModel
        # @param Source: 任务来源, -1:所有, 0:小程序诊断, 1:预留字段(暂未使用), 2:app诊断(android);
        # @type Source: Integer
        # @param Platform: 应用平台, 0:android, 1:ios, 2:小程序
        # @type Platform: Integer
        # @param TaskStatuses: 任务状态,可多值查询,例如:"1,2,3" 0:默认值(待检测/待咨询), 1.检测中, 2:待评估, 3:评估中, 4:任务完成/咨询完成, 5:任务失败, 6:咨询中;
        # @type TaskStatuses: String
        # @param TaskTypes: 任务类型,可多值查询,采用逗号分隔,例如:"0,1" 0:基础版, 1:专家版, 2:本地化
        # @type TaskTypes: String
        # @param PageNo: 页码
        # @type PageNo: Integer
        # @param PageSize: 页码大小
        # @type PageSize: Integer
        # @param AppName: 应用名称或小程序名称(可选参数)
        # @type AppName: String
        # @param StartTime: 查询时间范围, 查询开始时间(2021-09-30 或 2021-09-30 10:57:34)
        # @type StartTime: String
        # @param EndTime: 查询时间范围, 查询结束时间(2021-09-30 或 2021-09-30 10:57:34)
        # @type EndTime: String

        attr_accessor :Source, :Platform, :TaskStatuses, :TaskTypes, :PageNo, :PageSize, :AppName, :StartTime, :EndTime
        
        def initialize(source=nil, platform=nil, taskstatuses=nil, tasktypes=nil, pageno=nil, pagesize=nil, appname=nil, starttime=nil, endtime=nil)
          @Source = source
          @Platform = platform
          @TaskStatuses = taskstatuses
          @TaskTypes = tasktypes
          @PageNo = pageno
          @PageSize = pagesize
          @AppName = appname
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Source = params['Source']
          @Platform = params['Platform']
          @TaskStatuses = params['TaskStatuses']
          @TaskTypes = params['TaskTypes']
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
          @AppName = params['AppName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeScanTaskList返回参数结构体
      class DescribeScanTaskListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值, 0:成功, 其他值请查看“返回值”定义
        # @type Result: Integer
        # @param Data: 诊断任务数据列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param Total: 任务总数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :Data, :Total, :RequestId
        
        def initialize(result=nil, data=nil, total=nil, requestid=nil)
          @Result = result
          @Data = data
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              apptaskdata_tmp = AppTaskData.new
              apptaskdata_tmp.deserialize(i)
              @Data << apptaskdata_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeScanTaskReportUrl请求参数结构体
      class DescribeScanTaskReportUrlRequest < TencentCloud::Common::AbstractModel
        # @param Source: 任务来源, 0:小程序诊断, 1:预留字段(暂未使用), 2:app诊断(android);
        # @type Source: Integer
        # @param TaskID: 任务id
        # @type TaskID: String
        # @param Platform: 应用平台, 0:android, 1:ios, 2:小程序
        # @type Platform: Integer
        # @param ReportType: 报告类型, 0:诊断报告, 1:堆栈报告
        # @type ReportType: Integer
        # @param TaskType: 任务类型, 0:基础版, 1:专家版, 2:本地化
        # @type TaskType: Integer

        attr_accessor :Source, :TaskID, :Platform, :ReportType, :TaskType
        
        def initialize(source=nil, taskid=nil, platform=nil, reporttype=nil, tasktype=nil)
          @Source = source
          @TaskID = taskid
          @Platform = platform
          @ReportType = reporttype
          @TaskType = tasktype
        end

        def deserialize(params)
          @Source = params['Source']
          @TaskID = params['TaskID']
          @Platform = params['Platform']
          @ReportType = params['ReportType']
          @TaskType = params['TaskType']
        end
      end

      # DescribeScanTaskReportUrl返回参数结构体
      class DescribeScanTaskReportUrlResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值, 0:成功, 其他值请查看“返回值”定义
        # @type Result: Integer
        # @param ReportUrl: 诊断报告/堆栈信息下载链接
        # @type ReportUrl: String
        # @param ReportTitle: 诊断报告/堆栈名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportTitle: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ReportUrl, :ReportTitle, :RequestId
        
        def initialize(result=nil, reporturl=nil, reporttitle=nil, requestid=nil)
          @Result = result
          @ReportUrl = reporturl
          @ReportTitle = reporttitle
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ReportUrl = params['ReportUrl']
          @ReportTitle = params['ReportTitle']
          @RequestId = params['RequestId']
        end
      end

      # DescribeScanTaskStatus请求参数结构体
      class DescribeScanTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param TaskType: 任务类型, 0:基础版, 1:专家版, 2:本地化
        # @type TaskType: Integer
        # @param Source: 任务来源, 0:小程序诊断, 1:预留字段(暂未使用), 2:app诊断(android);
        # @type Source: Integer
        # @param TaskID: 任务id
        # @type TaskID: String
        # @param Platform: 应用平台, 0:android, 1:ios, 2:小程序
        # @type Platform: Integer

        attr_accessor :TaskType, :Source, :TaskID, :Platform
        
        def initialize(tasktype=nil, source=nil, taskid=nil, platform=nil)
          @TaskType = tasktype
          @Source = source
          @TaskID = taskid
          @Platform = platform
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          @Source = params['Source']
          @TaskID = params['TaskID']
          @Platform = params['Platform']
        end
      end

      # DescribeScanTaskStatus返回参数结构体
      class DescribeScanTaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值, 0:成功, 其他值请查看“返回值”定义
        # @type Result: Integer
        # @param Status: 0:默认值(待检测/待咨询), 1.检测中,  4:任务完成/咨询完成, 5:任务失败, 6:咨询中;
        # @type Status: Integer
        # @param ErrMsg: 诊断失败的错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMsg: String
        # @param FlowSteps: 任务流详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowSteps: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :Status, :ErrMsg, :FlowSteps, :RequestId
        
        def initialize(result=nil, status=nil, errmsg=nil, flowsteps=nil, requestid=nil)
          @Result = result
          @Status = status
          @ErrMsg = errmsg
          @FlowSteps = flowsteps
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @Status = params['Status']
          @ErrMsg = params['ErrMsg']
          unless params['FlowSteps'].nil?
            @FlowSteps = []
            params['FlowSteps'].each do |i|
              taskflowstepsinfo_tmp = TaskFlowStepsInfo.new
              taskflowstepsinfo_tmp.deserialize(i)
              @FlowSteps << taskflowstepsinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 翼扬诊断小程序报告数据
      class FlySecMiniAppReportData < TencentCloud::Common::AbstractModel
        # @param TaskID: 任务id
        # @type TaskID: String
        # @param MiniAppID: 小程序appid
        # @type MiniAppID: String
        # @param MiniAppName: 小程序名称
        # @type MiniAppName: String
        # @param MiniAppVersion: 小程序版本
        # @type MiniAppVersion: String
        # @param Mode: 诊断模式 1:基础诊断，2:深度诊断
        # @type Mode: Integer
        # @param Status: 诊断状态, 0:排队中, 1:成功, 2:失败, 3:进行中
        # @type Status: Integer
        # @param CreateTime: 诊断时间
        # @type CreateTime: Integer
        # @param RiskScore: 诊断得分
        # @type RiskScore: String
        # @param RiskLevel: 诊断风险等级 1:高风险 2:中风险 3:低风险
        # @type RiskLevel: Integer
        # @param RiskItems: 诊断8大维度得分情况(每项总分100分)
        # @type RiskItems: :class:`Tencentcloud::Mmps.v20200710.models.FlySecMiniAppRiskItems`

        attr_accessor :TaskID, :MiniAppID, :MiniAppName, :MiniAppVersion, :Mode, :Status, :CreateTime, :RiskScore, :RiskLevel, :RiskItems
        
        def initialize(taskid=nil, miniappid=nil, miniappname=nil, miniappversion=nil, mode=nil, status=nil, createtime=nil, riskscore=nil, risklevel=nil, riskitems=nil)
          @TaskID = taskid
          @MiniAppID = miniappid
          @MiniAppName = miniappname
          @MiniAppVersion = miniappversion
          @Mode = mode
          @Status = status
          @CreateTime = createtime
          @RiskScore = riskscore
          @RiskLevel = risklevel
          @RiskItems = riskitems
        end

        def deserialize(params)
          @TaskID = params['TaskID']
          @MiniAppID = params['MiniAppID']
          @MiniAppName = params['MiniAppName']
          @MiniAppVersion = params['MiniAppVersion']
          @Mode = params['Mode']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @RiskScore = params['RiskScore']
          @RiskLevel = params['RiskLevel']
          unless params['RiskItems'].nil?
            @RiskItems = FlySecMiniAppRiskItems.new
            @RiskItems.deserialize(params['RiskItems'])
          end
        end
      end

      # 翼扬诊断小程序的诊断报告风险数据
      class FlySecMiniAppRiskItems < TencentCloud::Common::AbstractModel
        # @param RiskItem1Score: 代码防护(基础诊断)
        # @type RiskItem1Score: Integer
        # @param RiskItem2Score: 开发测试信息泄露(基础诊断)
        # @type RiskItem2Score: Integer
        # @param RiskItem3Score: 编码规范(基础诊断)
        # @type RiskItem3Score: Integer
        # @param RiskItem4Score: 配置风险(基础诊断)
        # @type RiskItem4Score: Integer
        # @param RiskItem5Score: 账号安全(基础诊断)
        # @type RiskItem5Score: Integer
        # @param RiskItem6Score: 用户信息安全(基础诊断)
        # @type RiskItem6Score: Integer
        # @param RiskItem7Score: 内部信息泄露(基础诊断)
        # @type RiskItem7Score: Integer
        # @param RiskItem8Score: 其他安全(基础诊断)
        # @type RiskItem8Score: Integer

        attr_accessor :RiskItem1Score, :RiskItem2Score, :RiskItem3Score, :RiskItem4Score, :RiskItem5Score, :RiskItem6Score, :RiskItem7Score, :RiskItem8Score
        
        def initialize(riskitem1score=nil, riskitem2score=nil, riskitem3score=nil, riskitem4score=nil, riskitem5score=nil, riskitem6score=nil, riskitem7score=nil, riskitem8score=nil)
          @RiskItem1Score = riskitem1score
          @RiskItem2Score = riskitem2score
          @RiskItem3Score = riskitem3score
          @RiskItem4Score = riskitem4score
          @RiskItem5Score = riskitem5score
          @RiskItem6Score = riskitem6score
          @RiskItem7Score = riskitem7score
          @RiskItem8Score = riskitem8score
        end

        def deserialize(params)
          @RiskItem1Score = params['RiskItem1Score']
          @RiskItem2Score = params['RiskItem2Score']
          @RiskItem3Score = params['RiskItem3Score']
          @RiskItem4Score = params['RiskItem4Score']
          @RiskItem5Score = params['RiskItem5Score']
          @RiskItem6Score = params['RiskItem6Score']
          @RiskItem7Score = params['RiskItem7Score']
          @RiskItem8Score = params['RiskItem8Score']
        end
      end

      # 翼扬诊断小程序任务数据
      class FlySecMiniAppTaskData < TencentCloud::Common::AbstractModel
        # @param TaskID: 任务id
        # @type TaskID: String
        # @param MiniAppID: 小程序appid
        # @type MiniAppID: String
        # @param MiniAppName: 小程序名称
        # @type MiniAppName: String
        # @param MiniAppVersion: 小程序版本
        # @type MiniAppVersion: String
        # @param Mode: 诊断模式 1:基础诊断，2:深度诊断
        # @type Mode: Integer
        # @param CreateTime: 诊断时间
        # @type CreateTime: Integer
        # @param Status: 诊断状态, 0:排队中, 1:成功, 2:失败, 3:进行中
        # @type Status: Integer
        # @param Error: 诊断失败错误码
        # @type Error: Integer

        attr_accessor :TaskID, :MiniAppID, :MiniAppName, :MiniAppVersion, :Mode, :CreateTime, :Status, :Error
        
        def initialize(taskid=nil, miniappid=nil, miniappname=nil, miniappversion=nil, mode=nil, createtime=nil, status=nil, error=nil)
          @TaskID = taskid
          @MiniAppID = miniappid
          @MiniAppName = miniappname
          @MiniAppVersion = miniappversion
          @Mode = mode
          @CreateTime = createtime
          @Status = status
          @Error = error
        end

        def deserialize(params)
          @TaskID = params['TaskID']
          @MiniAppID = params['MiniAppID']
          @MiniAppName = params['MiniAppName']
          @MiniAppVersion = params['MiniAppVersion']
          @Mode = params['Mode']
          @CreateTime = params['CreateTime']
          @Status = params['Status']
          @Error = params['Error']
        end
      end

      # 翼扬安全资源使用情况
      class ResourceUsageInfoData < TencentCloud::Common::AbstractModel
        # @param ResourceName: 资源名称, 具体名称请查看产品配置
        # @type ResourceName: String
        # @param Total: 资源总数
        # @type Total: Integer
        # @param UnusedCount: 资源未使用次数
        # @type UnusedCount: Integer

        attr_accessor :ResourceName, :Total, :UnusedCount
        
        def initialize(resourcename=nil, total=nil, unusedcount=nil)
          @ResourceName = resourcename
          @Total = total
          @UnusedCount = unusedcount
        end

        def deserialize(params)
          @ResourceName = params['ResourceName']
          @Total = params['Total']
          @UnusedCount = params['UnusedCount']
        end
      end

      # 任务流步骤详情
      class TaskFlowStepsInfo < TencentCloud::Common::AbstractModel
        # @param FlowNo: 流程编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowNo: String
        # @param FlowName: 流程名称
        # @type FlowName: String
        # @param FlowStatus: 流程状态, 其他值:进行中, 2:成功, 3:失败
        # @type FlowStatus: Integer
        # @param FlowStateDesc: 流程状态描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowStateDesc: String
        # @param StartTime: 流程启动时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 流程完成时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String

        attr_accessor :FlowNo, :FlowName, :FlowStatus, :FlowStateDesc, :StartTime, :EndTime
        
        def initialize(flowno=nil, flowname=nil, flowstatus=nil, flowstatedesc=nil, starttime=nil, endtime=nil)
          @FlowNo = flowno
          @FlowName = flowname
          @FlowStatus = flowstatus
          @FlowStateDesc = flowstatedesc
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @FlowNo = params['FlowNo']
          @FlowName = params['FlowName']
          @FlowStatus = params['FlowStatus']
          @FlowStateDesc = params['FlowStateDesc']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

    end
  end
end

