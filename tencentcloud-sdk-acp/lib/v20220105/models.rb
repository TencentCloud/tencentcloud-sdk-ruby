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
  module Acp
    module V20220105
      # 应用合规隐私诊断任务应用数据信息
      class AppInfoItem < TencentCloud::Common::AbstractModel
        # @param AppPackage: App包名
        # @type AppPackage: String
        # @param AppName: App名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppName: String
        # @param AppVersion: App版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppVersion: String
        # @param Platform: 应用平台, 0:android, 1:ios, 2:小程序
        # @type Platform: Integer
        # @param ReportUrl: App隐私诊断报告下载链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportUrl: String
        # @param ReportTitle: App隐私诊断报告名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportTitle: String
        # @param BehaviorUrl: App诊断堆栈报告下载链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BehaviorUrl: String
        # @param BehaviorTitle: App诊断堆栈报告名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BehaviorTitle: String
        # @param HighRiskCount: 诊断高风险项数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HighRiskCount: Integer
        # @param PrivacyTextName: 隐私申明文件名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivacyTextName: String
        # @param SoftwareMD5: 软件MD5
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SoftwareMD5: String
        # @param PrivacyTextMD5: 隐私文本MD5
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivacyTextMD5: String

        attr_accessor :AppPackage, :AppName, :AppVersion, :Platform, :ReportUrl, :ReportTitle, :BehaviorUrl, :BehaviorTitle, :HighRiskCount, :PrivacyTextName, :SoftwareMD5, :PrivacyTextMD5

        def initialize(apppackage=nil, appname=nil, appversion=nil, platform=nil, reporturl=nil, reporttitle=nil, behaviorurl=nil, behaviortitle=nil, highriskcount=nil, privacytextname=nil, softwaremd5=nil, privacytextmd5=nil)
          @AppPackage = apppackage
          @AppName = appname
          @AppVersion = appversion
          @Platform = platform
          @ReportUrl = reporturl
          @ReportTitle = reporttitle
          @BehaviorUrl = behaviorurl
          @BehaviorTitle = behaviortitle
          @HighRiskCount = highriskcount
          @PrivacyTextName = privacytextname
          @SoftwareMD5 = softwaremd5
          @PrivacyTextMD5 = privacytextmd5
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
          @PrivacyTextName = params['PrivacyTextName']
          @SoftwareMD5 = params['SoftwareMD5']
          @PrivacyTextMD5 = params['PrivacyTextMD5']
        end
      end

      # 应用合规隐私诊断任务数据
      class AppTaskData < TencentCloud::Common::AbstractModel
        # @param TaskID: 任务ID
        # @type TaskID: String
        # @param TaskType: 任务类型, 0:基础版, 1:专家版, 2:本地化
        # @type TaskType: Integer
        # @param TaskStatus: 0:默认值(待检测/待咨询), 1.检测中, 2:待评估, 3:评估中, 4:任务完成/咨询完成, 5:任务失败, 6:咨询中;
        # @type TaskStatus: Integer
        # @param TaskErrMsg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskErrMsg: String
        # @param Source: 任务来源,0:小程序诊断, 1:预留字段(暂未使用), 2:app诊断(android)
        # @type Source: Integer
        # @param AppInfo: 应用信息
        # @type AppInfo: :class:`Tencentcloud::Acp.v20220105.models.AppInfoItem`
        # @param StartTime: 任务启动时间
        # @type StartTime: String
        # @param EndTime: 任务完成时间(更新时间)
        # @type EndTime: String
        # @param ContactName: 联系人信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContactName: String

        attr_accessor :TaskID, :TaskType, :TaskStatus, :TaskErrMsg, :Source, :AppInfo, :StartTime, :EndTime, :ContactName

        def initialize(taskid=nil, tasktype=nil, taskstatus=nil, taskerrmsg=nil, source=nil, appinfo=nil, starttime=nil, endtime=nil, contactname=nil)
          @TaskID = taskid
          @TaskType = tasktype
          @TaskStatus = taskstatus
          @TaskErrMsg = taskerrmsg
          @Source = source
          @AppInfo = appinfo
          @StartTime = starttime
          @EndTime = endtime
          @ContactName = contactname
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
          @ContactName = params['ContactName']
        end
      end

      # CreateAppScanTaskRepeat请求参数结构体
      class CreateAppScanTaskRepeatRequest < TencentCloud::Common::AbstractModel
        # @param Source: 任务来源, 0:小程序诊断, 1:预留字段(暂未使用), 2:app诊断(android), 3:app漏洞扫描;
        # @type Source: Integer
        # @param Platform: 应用平台, 0:android, 1:ios, 2:小程序
        # @type Platform: Integer
        # @param TaskType: 任务类型, 0:基础版, 1:专家版, 2:本地化
        # @type TaskType: Integer
        # @param OrgTaskID: 原诊断任务ID
        # @type OrgTaskID: String
        # @param AppPackage: App包名
        # @type AppPackage: String
        # @param FileID: 上传的文件ID(任务来源为1时必填)
        # @type FileID: String
        # @param AppDownloadUrl: 软件下载链接地址(任务来源为2时必填)
        # @type AppDownloadUrl: String
        # @param PrivacyTextUrl: 隐私文本下载地址(任务来源为2时必填)
        # @type PrivacyTextUrl: String
        # @param AppName: 应用名称
        # @type AppName: String
        # @param PrivacyTextName: 隐私申明文件名称
        # @type PrivacyTextName: String
        # @param AppSha1: 软件Sha1值(PrivacyTextMD5不为空时必填)
        # @type AppSha1: String
        # @param PrivacyTextMD5: 隐私申明文本md5(AppSha1不为空时必填)
        # @type PrivacyTextMD5: String

        attr_accessor :Source, :Platform, :TaskType, :OrgTaskID, :AppPackage, :FileID, :AppDownloadUrl, :PrivacyTextUrl, :AppName, :PrivacyTextName, :AppSha1, :PrivacyTextMD5

        def initialize(source=nil, platform=nil, tasktype=nil, orgtaskid=nil, apppackage=nil, fileid=nil, appdownloadurl=nil, privacytexturl=nil, appname=nil, privacytextname=nil, appsha1=nil, privacytextmd5=nil)
          @Source = source
          @Platform = platform
          @TaskType = tasktype
          @OrgTaskID = orgtaskid
          @AppPackage = apppackage
          @FileID = fileid
          @AppDownloadUrl = appdownloadurl
          @PrivacyTextUrl = privacytexturl
          @AppName = appname
          @PrivacyTextName = privacytextname
          @AppSha1 = appsha1
          @PrivacyTextMD5 = privacytextmd5
        end

        def deserialize(params)
          @Source = params['Source']
          @Platform = params['Platform']
          @TaskType = params['TaskType']
          @OrgTaskID = params['OrgTaskID']
          @AppPackage = params['AppPackage']
          @FileID = params['FileID']
          @AppDownloadUrl = params['AppDownloadUrl']
          @PrivacyTextUrl = params['PrivacyTextUrl']
          @AppName = params['AppName']
          @PrivacyTextName = params['PrivacyTextName']
          @AppSha1 = params['AppSha1']
          @PrivacyTextMD5 = params['PrivacyTextMD5']
        end
      end

      # CreateAppScanTaskRepeat返回参数结构体
      class CreateAppScanTaskRepeatResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值, 0:成功, 其他值请查看“返回值”定义
        # @type Result: Integer
        # @param TaskID: 任务id
        # @type TaskID: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param Source: 任务来源, 0:小程序诊断, 1:预留字段(暂未使用), 2:app诊断(android), 3:app漏洞扫描;
        # @type Source: Integer
        # @param Platform: 应用平台, 0:android, 1:ios, 2:小程序
        # @type Platform: Integer
        # @param AppPackage: App包名
        # @type AppPackage: String
        # @param AppName: App名称(任务来源为2时必填)
        # @type AppName: String
        # @param AppVersion: App版本
        # @type AppVersion: String
        # @param FileID: 上传的软件文件ID(任务来源为1时必填)
        # @type FileID: String
        # @param AppDownloadUrl: 软件下载链接地址(任务来源为2时必填)
        # @type AppDownloadUrl: String
        # @param PrivacyTextUrl: 隐私文本下载地址(任务来源为2时必填)
        # @type PrivacyTextUrl: String
        # @param ContactName: 联系人信息
        # @type ContactName: String
        # @param TelNumber: 联系电话
        # @type TelNumber: String
        # @param Email: 公司邮箱
        # @type Email: String
        # @param CorpName: 公司名称
        # @type CorpName: String
        # @param SalesPerson: 商务对接人员
        # @type SalesPerson: String
        # @param Remark: 备注信息
        # @type Remark: String
        # @param IsAgreePrivacy: 是否同意隐私条款，0:不同意(默认), 1:同意
        # @type IsAgreePrivacy: Integer
        # @param PrivacyTextName: 隐私申明文件名称
        # @type PrivacyTextName: String
        # @param AppSha1: 软件Sha1值(PrivacyTextMD5不为空时必填)
        # @type AppSha1: String
        # @param PrivacyTextMD5: 隐私申明文本md5(AppSha1不为空时必填)
        # @type PrivacyTextMD5: String

        attr_accessor :TaskType, :Source, :Platform, :AppPackage, :AppName, :AppVersion, :FileID, :AppDownloadUrl, :PrivacyTextUrl, :ContactName, :TelNumber, :Email, :CorpName, :SalesPerson, :Remark, :IsAgreePrivacy, :PrivacyTextName, :AppSha1, :PrivacyTextMD5

        def initialize(tasktype=nil, source=nil, platform=nil, apppackage=nil, appname=nil, appversion=nil, fileid=nil, appdownloadurl=nil, privacytexturl=nil, contactname=nil, telnumber=nil, email=nil, corpname=nil, salesperson=nil, remark=nil, isagreeprivacy=nil, privacytextname=nil, appsha1=nil, privacytextmd5=nil)
          @TaskType = tasktype
          @Source = source
          @Platform = platform
          @AppPackage = apppackage
          @AppName = appname
          @AppVersion = appversion
          @FileID = fileid
          @AppDownloadUrl = appdownloadurl
          @PrivacyTextUrl = privacytexturl
          @ContactName = contactname
          @TelNumber = telnumber
          @Email = email
          @CorpName = corpname
          @SalesPerson = salesperson
          @Remark = remark
          @IsAgreePrivacy = isagreeprivacy
          @PrivacyTextName = privacytextname
          @AppSha1 = appsha1
          @PrivacyTextMD5 = privacytextmd5
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          @Source = params['Source']
          @Platform = params['Platform']
          @AppPackage = params['AppPackage']
          @AppName = params['AppName']
          @AppVersion = params['AppVersion']
          @FileID = params['FileID']
          @AppDownloadUrl = params['AppDownloadUrl']
          @PrivacyTextUrl = params['PrivacyTextUrl']
          @ContactName = params['ContactName']
          @TelNumber = params['TelNumber']
          @Email = params['Email']
          @CorpName = params['CorpName']
          @SalesPerson = params['SalesPerson']
          @Remark = params['Remark']
          @IsAgreePrivacy = params['IsAgreePrivacy']
          @PrivacyTextName = params['PrivacyTextName']
          @AppSha1 = params['AppSha1']
          @PrivacyTextMD5 = params['PrivacyTextMD5']
        end
      end

      # CreateAppScanTask返回参数结构体
      class CreateAppScanTaskResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值, 0:成功, 其他值请查看“返回值”定义
        # @type Result: Integer
        # @param TaskID: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskID: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeChannelTaskReportUrl请求参数结构体
      class DescribeChannelTaskReportUrlRequest < TencentCloud::Common::AbstractModel
        # @param Source: 任务来源, 0:小程序诊断, 1:预留字段(暂未使用), 2:app诊断(android), 3:app漏洞扫描;
        # @type Source: Integer
        # @param Platform: 应用平台, 0:android, 1: iOS，2:小程序
        # @type Platform: Integer
        # @param TaskID: 任务id
        # @type TaskID: String
        # @param TaskType: 任务类型, 0:基础版, 1:专家版, 2:本地化
        # @type TaskType: Integer
        # @param ReportType: 报告类型, 0:诊断报告, 1:堆栈报告, 2:视频证据(预留), 3:报告json结果
        # @type ReportType: Integer
        # @param AppMD5: 子渠道APP MD5值
        # @type AppMD5: String

        attr_accessor :Source, :Platform, :TaskID, :TaskType, :ReportType, :AppMD5

        def initialize(source=nil, platform=nil, taskid=nil, tasktype=nil, reporttype=nil, appmd5=nil)
          @Source = source
          @Platform = platform
          @TaskID = taskid
          @TaskType = tasktype
          @ReportType = reporttype
          @AppMD5 = appmd5
        end

        def deserialize(params)
          @Source = params['Source']
          @Platform = params['Platform']
          @TaskID = params['TaskID']
          @TaskType = params['TaskType']
          @ReportType = params['ReportType']
          @AppMD5 = params['AppMD5']
        end
      end

      # DescribeChannelTaskReportUrl返回参数结构体
      class DescribeChannelTaskReportUrlResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值, 0:成功, 其他值请查看“返回值”定义
        # @type Result: Integer
        # @param ReportUrl: 诊断报告/堆栈信息/报告json结果下载链接
        # @type ReportUrl: String
        # @param ReportTitle: 诊断报告/堆栈/报告json结果的名称
        # @type ReportTitle: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeFileTicket请求参数结构体
      class DescribeFileTicketRequest < TencentCloud::Common::AbstractModel
        # @param Source: 任务来源, 0:小程序诊断, 1:预留字段(暂未使用), 2:app诊断(android), 3:app漏洞扫描;
        # @type Source: Integer
        # @param Platform: 应用平台, 0:android, 1:ios, 2:小程序
        # @type Platform: Integer

        attr_accessor :Source, :Platform

        def initialize(source=nil, platform=nil)
          @Source = source
          @Platform = platform
        end

        def deserialize(params)
          @Source = params['Source']
          @Platform = params['Platform']
        end
      end

      # DescribeFileTicket返回参数结构体
      class DescribeFileTicketResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值, 0:成功, 其他值请查看“返回值”定义
        # @type Result: Integer
        # @param UploadUrl: 上传url(任务来源为2时:Post方法（100:apk,101:txt）, 任务来源为1时:put方法)
        # @type UploadUrl: String
        # @param UploadSign: 上传url鉴权信息(任务来源为1时上传需要, Authorization参数值)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UploadSign: String
        # @param FildID: 上传文件ID(任务来源为1时提交诊断任务需要)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FildID: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :UploadUrl, :UploadSign, :FildID, :RequestId

        def initialize(result=nil, uploadurl=nil, uploadsign=nil, fildid=nil, requestid=nil)
          @Result = result
          @UploadUrl = uploadurl
          @UploadSign = uploadsign
          @FildID = fildid
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @UploadUrl = params['UploadUrl']
          @UploadSign = params['UploadSign']
          @FildID = params['FildID']
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceUsageInfo请求参数结构体
      class DescribeResourceUsageInfoRequest < TencentCloud::Common::AbstractModel
        # @param PriceName: 资源计费项名称(为空时，则根据Source，TaskType和Platform进行查询)
        # @type PriceName: String
        # @param TaskType: 任务类型, 0:基础版, 1:专家版
        # @type TaskType: Integer
        # @param Platform: 应用平台, 0:android
        # @type Platform: Integer
        # @param Source: 任务来源, 0:小程序诊断, 1:预留字段(暂未使用), 2:app诊断(android), 3:app漏洞扫描;
        # @type Source: Integer

        attr_accessor :PriceName, :TaskType, :Platform, :Source

        def initialize(pricename=nil, tasktype=nil, platform=nil, source=nil)
          @PriceName = pricename
          @TaskType = tasktype
          @Platform = platform
          @Source = source
        end

        def deserialize(params)
          @PriceName = params['PriceName']
          @TaskType = params['TaskType']
          @Platform = params['Platform']
          @Source = params['Source']
        end
      end

      # DescribeResourceUsageInfo返回参数结构体
      class DescribeResourceUsageInfoResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值, 0:成功, 其他值请查看“返回值”定义，暂时未定
        # @type Result: Integer
        # @param Data: 资源使用信息
        # @type Data: :class:`Tencentcloud::Acp.v20220105.models.ResourceUsageInfoData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :Data, :RequestId

        def initialize(result=nil, data=nil, requestid=nil)
          @Result = result
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          unless params['Data'].nil?
            @Data = ResourceUsageInfoData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeScanTaskList请求参数结构体
      class DescribeScanTaskListRequest < TencentCloud::Common::AbstractModel
        # @param Source: 任务来源, -1:所有, 0:小程序诊断, 1:预留字段(暂未使用), 2:app诊断(android), 3:app漏洞扫描;
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
        # @param Total: 任务总数量
        # @type Total: Integer
        # @param Data: 诊断任务数据列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :Total, :Data, :RequestId

        def initialize(result=nil, total=nil, data=nil, requestid=nil)
          @Result = result
          @Total = total
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @Total = params['Total']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              apptaskdata_tmp = AppTaskData.new
              apptaskdata_tmp.deserialize(i)
              @Data << apptaskdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeScanTaskReportUrl请求参数结构体
      class DescribeScanTaskReportUrlRequest < TencentCloud::Common::AbstractModel
        # @param Source: 任务来源, 0:小程序诊断, 1:预留字段(暂未使用), 2:app诊断(android), 3:app漏洞扫描;
        # @type Source: Integer
        # @param Platform: 应用平台, 0:android, 1:ios, 2:小程序
        # @type Platform: Integer
        # @param TaskID: 任务id
        # @type TaskID: String
        # @param TaskType: 任务类型, 0:基础版, 1:专家版, 2:本地化
        # @type TaskType: Integer
        # @param ReportType: 报告类型, 0:诊断报告, 1:堆栈报告, 2:视频证据(预留), 3:报告json结果
        # @type ReportType: Integer

        attr_accessor :Source, :Platform, :TaskID, :TaskType, :ReportType

        def initialize(source=nil, platform=nil, taskid=nil, tasktype=nil, reporttype=nil)
          @Source = source
          @Platform = platform
          @TaskID = taskid
          @TaskType = tasktype
          @ReportType = reporttype
        end

        def deserialize(params)
          @Source = params['Source']
          @Platform = params['Platform']
          @TaskID = params['TaskID']
          @TaskType = params['TaskType']
          @ReportType = params['ReportType']
        end
      end

      # DescribeScanTaskReportUrl返回参数结构体
      class DescribeScanTaskReportUrlResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值, 0:成功, 其他值请查看“返回值”定义
        # @type Result: Integer
        # @param ReportUrl: 诊断报告/堆栈信息/报告json结果下载链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportUrl: String
        # @param ReportTitle: 诊断报告/堆栈/报告json结果的名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportTitle: String
        # @param ReportResult: 诊断json结果内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportResult: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ReportUrl, :ReportTitle, :ReportResult, :RequestId

        def initialize(result=nil, reporturl=nil, reporttitle=nil, reportresult=nil, requestid=nil)
          @Result = result
          @ReportUrl = reporturl
          @ReportTitle = reporttitle
          @ReportResult = reportresult
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ReportUrl = params['ReportUrl']
          @ReportTitle = params['ReportTitle']
          @ReportResult = params['ReportResult']
          @RequestId = params['RequestId']
        end
      end

      # DescribeScanTaskStatus请求参数结构体
      class DescribeScanTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param Source: 任务来源, 0:小程序诊断, 1:预留字段(暂未使用), 2:app诊断(android), 3:app漏洞扫描;
        # @type Source: Integer
        # @param Platform: 应用平台, 0:android, 1:ios, 2:小程序
        # @type Platform: Integer
        # @param TaskID: 任务id
        # @type TaskID: String
        # @param TaskType: 任务类型, 0:基础版, 1:专家版, 2:本地化
        # @type TaskType: Integer

        attr_accessor :Source, :Platform, :TaskID, :TaskType

        def initialize(source=nil, platform=nil, taskid=nil, tasktype=nil)
          @Source = source
          @Platform = platform
          @TaskID = taskid
          @TaskType = tasktype
        end

        def deserialize(params)
          @Source = params['Source']
          @Platform = params['Platform']
          @TaskID = params['TaskID']
          @TaskType = params['TaskType']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 资源使用情况信息
      class ResourceUsageInfoData < TencentCloud::Common::AbstractModel
        # @param ResourceName: 资源计费项名称
        # @type ResourceName: String
        # @param Total: 资源总数
        # @type Total: Integer
        # @param UnusedCount: 未使用资源数
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

