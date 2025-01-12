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
  module Trro
    module V20220325
      # BatchDeleteDevices请求参数结构体
      class BatchDeleteDevicesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 目标删除设备所属项目ID
        # @type ProjectId: String
        # @param DeviceIds: 目标删除设备的设备ID数组
        # @type DeviceIds: Array

        attr_accessor :ProjectId, :DeviceIds

        def initialize(projectid=nil, deviceids=nil)
          @ProjectId = projectid
          @DeviceIds = deviceids
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @DeviceIds = params['DeviceIds']
        end
      end

      # BatchDeleteDevices返回参数结构体
      class BatchDeleteDevicesResponse < TencentCloud::Common::AbstractModel
        # @param FailedDeviceIds: 删除失败的设备ID列表
        # @type FailedDeviceIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FailedDeviceIds, :RequestId

        def initialize(faileddeviceids=nil, requestid=nil)
          @FailedDeviceIds = faileddeviceids
          @RequestId = requestid
        end

        def deserialize(params)
          @FailedDeviceIds = params['FailedDeviceIds']
          @RequestId = params['RequestId']
        end
      end

      # BatchDeletePolicy请求参数结构体
      class BatchDeletePolicyRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 删除权限配置的项目ID
        # @type ProjectId: String
        # @param RemoteDeviceIds: 删除权限配置的远端设备ID列表
        # @type RemoteDeviceIds: Array
        # @param PolicyMode: 删除权限配置的权限模式, black为黑名单，white为白名单
        # @type PolicyMode: String

        attr_accessor :ProjectId, :RemoteDeviceIds, :PolicyMode

        def initialize(projectid=nil, remotedeviceids=nil, policymode=nil)
          @ProjectId = projectid
          @RemoteDeviceIds = remotedeviceids
          @PolicyMode = policymode
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @RemoteDeviceIds = params['RemoteDeviceIds']
          @PolicyMode = params['PolicyMode']
        end
      end

      # BatchDeletePolicy返回参数结构体
      class BatchDeletePolicyResponse < TencentCloud::Common::AbstractModel
        # @param FailedRemoteDeviceIds: 删除权限配置失败的远端设备ID列表
        # @type FailedRemoteDeviceIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FailedRemoteDeviceIds, :RequestId

        def initialize(failedremotedeviceids=nil, requestid=nil)
          @FailedRemoteDeviceIds = failedremotedeviceids
          @RequestId = requestid
        end

        def deserialize(params)
          @FailedRemoteDeviceIds = params['FailedRemoteDeviceIds']
          @RequestId = params['RequestId']
        end
      end

      # BoundLicenses请求参数结构体
      class BoundLicensesRequest < TencentCloud::Common::AbstractModel
        # @param Count: license数量
        # @type Count: Integer
        # @param DeviceId: 设备id
        # @type DeviceId: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String

        attr_accessor :Count, :DeviceId, :ProjectId

        def initialize(count=nil, deviceid=nil, projectid=nil)
          @Count = count
          @DeviceId = deviceid
          @ProjectId = projectid
        end

        def deserialize(params)
          @Count = params['Count']
          @DeviceId = params['DeviceId']
          @ProjectId = params['ProjectId']
        end
      end

      # BoundLicenses返回参数结构体
      class BoundLicensesResponse < TencentCloud::Common::AbstractModel
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

      # CreateDevice请求参数结构体
      class CreateDeviceRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 创建设备所归属的项目ID
        # @type ProjectId: String
        # @param DeviceId: 创建设备ID，项目内需要唯一，由小写英文字母、数字和下划线构成，长度不超过18
        # @type DeviceId: String
        # @param DeviceName: 创建设备名称，长度小于24, 可包含中文、数字、英文字母和下划线
        # @type DeviceName: String
        # @param DeviceType: 设备类型，field为现场设备（受控设备），remote为远端设备（操控设备），不填默认为field
        # @type DeviceType: String
        # @param DeviceToken: 设备认证口令，由大小写英文字母和数字构成，须为16位
        # @type DeviceToken: String

        attr_accessor :ProjectId, :DeviceId, :DeviceName, :DeviceType, :DeviceToken

        def initialize(projectid=nil, deviceid=nil, devicename=nil, devicetype=nil, devicetoken=nil)
          @ProjectId = projectid
          @DeviceId = deviceid
          @DeviceName = devicename
          @DeviceType = devicetype
          @DeviceToken = devicetoken
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @DeviceId = params['DeviceId']
          @DeviceName = params['DeviceName']
          @DeviceType = params['DeviceType']
          @DeviceToken = params['DeviceToken']
        end
      end

      # CreateDevice返回参数结构体
      class CreateDeviceResponse < TencentCloud::Common::AbstractModel
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

      # CreateProject请求参数结构体
      class CreateProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectName: 项目名称，长度不超过24个字符
        # @type ProjectName: String
        # @param ProjectDescription: 项目描述，长度不超过120个字符，不填默认为空
        # @type ProjectDescription: String
        # @param PolicyMode: 权限模式，black为黑名单，white为白名单，不填默认为black
        # @type PolicyMode: String

        attr_accessor :ProjectName, :ProjectDescription, :PolicyMode

        def initialize(projectname=nil, projectdescription=nil, policymode=nil)
          @ProjectName = projectname
          @ProjectDescription = projectdescription
          @PolicyMode = policymode
        end

        def deserialize(params)
          @ProjectName = params['ProjectName']
          @ProjectDescription = params['ProjectDescription']
          @PolicyMode = params['PolicyMode']
        end
      end

      # CreateProject返回参数结构体
      class CreateProjectResponse < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID，长度为16位
        # @type ProjectId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeDeviceInfo请求参数结构体
      class DescribeDeviceInfoRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 目标设备所属项目ID
        # @type ProjectId: String
        # @param DeviceId: 目标设备ID
        # @type DeviceId: String

        attr_accessor :ProjectId, :DeviceId

        def initialize(projectid=nil, deviceid=nil)
          @ProjectId = projectid
          @DeviceId = deviceid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @DeviceId = params['DeviceId']
        end
      end

      # DescribeDeviceInfo返回参数结构体
      class DescribeDeviceInfoResponse < TencentCloud::Common::AbstractModel
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param DeviceType: 设备类型，field为现场设备（被控方），remote为远端设备（操控方）
        # @type DeviceType: String
        # @param DeviceStatus: 设备状态，offline为离线，ready为在线准备，connected为会话中
        # @type DeviceStatus: String
        # @param LastReportTime: 设备状态最后更新时间
        # @type LastReportTime: String
        # @param ModifyTime: 设备信息最后修改时间
        # @type ModifyTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeviceName, :DeviceType, :DeviceStatus, :LastReportTime, :ModifyTime, :RequestId

        def initialize(devicename=nil, devicetype=nil, devicestatus=nil, lastreporttime=nil, modifytime=nil, requestid=nil)
          @DeviceName = devicename
          @DeviceType = devicetype
          @DeviceStatus = devicestatus
          @LastReportTime = lastreporttime
          @ModifyTime = modifytime
          @RequestId = requestid
        end

        def deserialize(params)
          @DeviceName = params['DeviceName']
          @DeviceType = params['DeviceType']
          @DeviceStatus = params['DeviceStatus']
          @LastReportTime = params['LastReportTime']
          @ModifyTime = params['ModifyTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceList请求参数结构体
      class DescribeDeviceListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 设备所属项目ID
        # @type ProjectId: String
        # @param DeviceType: 设备类型筛选，不填默认为全部设备类型
        # @type DeviceType: String
        # @param SearchWords: 对设备ID或Name按关键字进行模糊匹配，不填则不进行模糊匹配
        # @type SearchWords: String
        # @param PageSize: 每页返回的最大设备数，不填默认为10
        # @type PageSize: Integer
        # @param PageNumber: 当前页码，不填默认为1（首页）
        # @type PageNumber: Integer
        # @param DeviceStatus: 设备状态筛选，不填默认为不过滤。取值：["ready","connected","online"]，online代表ready或connected
        # @type DeviceStatus: String

        attr_accessor :ProjectId, :DeviceType, :SearchWords, :PageSize, :PageNumber, :DeviceStatus

        def initialize(projectid=nil, devicetype=nil, searchwords=nil, pagesize=nil, pagenumber=nil, devicestatus=nil)
          @ProjectId = projectid
          @DeviceType = devicetype
          @SearchWords = searchwords
          @PageSize = pagesize
          @PageNumber = pagenumber
          @DeviceStatus = devicestatus
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @DeviceType = params['DeviceType']
          @SearchWords = params['SearchWords']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @DeviceStatus = params['DeviceStatus']
        end
      end

      # DescribeDeviceList返回参数结构体
      class DescribeDeviceListResponse < TencentCloud::Common::AbstractModel
        # @param Devices: 设备信息列表
        # @type Devices: Array
        # @param Total: 设备总数
        # @type Total: Integer
        # @param Num: 本次返回的设备数
        # @type Num: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Devices, :Total, :Num, :RequestId

        def initialize(devices=nil, total=nil, num=nil, requestid=nil)
          @Devices = devices
          @Total = total
          @Num = num
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Devices'].nil?
            @Devices = []
            params['Devices'].each do |i|
              deviceinfo_tmp = DeviceInfo.new
              deviceinfo_tmp.deserialize(i)
              @Devices << deviceinfo_tmp
            end
          end
          @Total = params['Total']
          @Num = params['Num']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceSessionDetails请求参数结构体
      class DescribeDeviceSessionDetailsRequest < TencentCloud::Common::AbstractModel
        # @param SessionId: 会话ID
        # @type SessionId: String

        attr_accessor :SessionId

        def initialize(sessionid=nil)
          @SessionId = sessionid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
        end
      end

      # DescribeDeviceSessionDetails返回参数结构体
      class DescribeDeviceSessionDetailsResponse < TencentCloud::Common::AbstractModel
        # @param Details: 按设备区分的会话详细数据
        # @type Details: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Details, :RequestId

        def initialize(details=nil, requestid=nil)
          @Details = details
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              sessiondevicedetail_tmp = SessionDeviceDetail.new
              sessiondevicedetail_tmp.deserialize(i)
              @Details << sessiondevicedetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceSessionList请求参数结构体
      class DescribeDeviceSessionListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param PageNumber: 页码，从1开始
        # @type PageNumber: Integer
        # @param PageSize: 每页个数
        # @type PageSize: Integer
        # @param DeviceId: 设备ID
        # @type DeviceId: String
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer

        attr_accessor :ProjectId, :PageNumber, :PageSize, :DeviceId, :StartTime, :EndTime

        def initialize(projectid=nil, pagenumber=nil, pagesize=nil, deviceid=nil, starttime=nil, endtime=nil)
          @ProjectId = projectid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @DeviceId = deviceid
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @DeviceId = params['DeviceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeDeviceSessionList返回参数结构体
      class DescribeDeviceSessionListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总个数
        # @type Total: Integer
        # @param DeviceSessionList: 会话列表
        # @type DeviceSessionList: Array
        # @param Num: 本页数量
        # @type Num: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :DeviceSessionList, :Num, :RequestId

        def initialize(total=nil, devicesessionlist=nil, num=nil, requestid=nil)
          @Total = total
          @DeviceSessionList = devicesessionlist
          @Num = num
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['DeviceSessionList'].nil?
            @DeviceSessionList = []
            params['DeviceSessionList'].each do |i|
              sessioninfo_tmp = SessionInfo.new
              sessioninfo_tmp.deserialize(i)
              @DeviceSessionList << sessioninfo_tmp
            end
          end
          @Num = params['Num']
          @RequestId = params['RequestId']
        end
      end

      # DescribePolicy请求参数结构体
      class DescribePolicyRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 查看权限的项目ID
        # @type ProjectId: String
        # @param PolicyMode: 查看的权限模式，black为黑名单，white为白名单，不填默认为当前项目生效的权限模式
        # @type PolicyMode: String
        # @param SearchMode: 模糊匹配模式，remoteMatch为远端设备ID匹配，fieldMatch为现场ID匹配，不填默认为remoteMatch
        # @type SearchMode: String
        # @param SearchWords: 模糊匹配关键字，不填默认不进行模糊匹配
        # @type SearchWords: String
        # @param PageSize: 每页返回的最大数量，不填默认为10
        # @type PageSize: Integer
        # @param PageNumber: 当前页码，不填默认为1（首页）
        # @type PageNumber: Integer

        attr_accessor :ProjectId, :PolicyMode, :SearchMode, :SearchWords, :PageSize, :PageNumber

        def initialize(projectid=nil, policymode=nil, searchmode=nil, searchwords=nil, pagesize=nil, pagenumber=nil)
          @ProjectId = projectid
          @PolicyMode = policymode
          @SearchMode = searchmode
          @SearchWords = searchwords
          @PageSize = pagesize
          @PageNumber = pagenumber
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PolicyMode = params['PolicyMode']
          @SearchMode = params['SearchMode']
          @SearchWords = params['SearchWords']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
        end
      end

      # DescribePolicy返回参数结构体
      class DescribePolicyResponse < TencentCloud::Common::AbstractModel
        # @param PolicyMode: 权限模式
        # @type PolicyMode: String
        # @param PolicyEnabled: 返回的权限模式是否为当前生效的权限模式
        # @type PolicyEnabled: Boolean
        # @param PolicyInfo: 权限信息列表
        # @type PolicyInfo: Array
        # @param Num: 本次返回的权限信息数量
        # @type Num: Integer
        # @param Total: 权限信息总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PolicyMode, :PolicyEnabled, :PolicyInfo, :Num, :Total, :RequestId

        def initialize(policymode=nil, policyenabled=nil, policyinfo=nil, num=nil, total=nil, requestid=nil)
          @PolicyMode = policymode
          @PolicyEnabled = policyenabled
          @PolicyInfo = policyinfo
          @Num = num
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          @PolicyMode = params['PolicyMode']
          @PolicyEnabled = params['PolicyEnabled']
          unless params['PolicyInfo'].nil?
            @PolicyInfo = []
            params['PolicyInfo'].each do |i|
              policyinfo_tmp = PolicyInfo.new
              policyinfo_tmp.deserialize(i)
              @PolicyInfo << policyinfo_tmp
            end
          end
          @Num = params['Num']
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProjectInfo请求参数结构体
      class DescribeProjectInfoRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 目标项目ID，必填参数
        # @type ProjectId: String

        attr_accessor :ProjectId

        def initialize(projectid=nil)
          @ProjectId = projectid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeProjectInfo返回参数结构体
      class DescribeProjectInfoResponse < TencentCloud::Common::AbstractModel
        # @param ProjectName: 项目名称
        # @type ProjectName: String
        # @param ProjectDescription: 项目描述
        # @type ProjectDescription: String
        # @param PolicyMode: 项目权限模式，black为黑名单，white为白名单
        # @type PolicyMode: String
        # @param ModifyTime: 项目信息修改时间
        # @type ModifyTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProjectName, :ProjectDescription, :PolicyMode, :ModifyTime, :RequestId

        def initialize(projectname=nil, projectdescription=nil, policymode=nil, modifytime=nil, requestid=nil)
          @ProjectName = projectname
          @ProjectDescription = projectdescription
          @PolicyMode = policymode
          @ModifyTime = modifytime
          @RequestId = requestid
        end

        def deserialize(params)
          @ProjectName = params['ProjectName']
          @ProjectDescription = params['ProjectDescription']
          @PolicyMode = params['PolicyMode']
          @ModifyTime = params['ModifyTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProjectList请求参数结构体
      class DescribeProjectListRequest < TencentCloud::Common::AbstractModel
        # @param PageSize: 每页返回的最大项目数量，不填默认为10
        # @type PageSize: Integer
        # @param PageNumber: 当前页码，不填默认为1（首页）
        # @type PageNumber: Integer

        attr_accessor :PageSize, :PageNumber

        def initialize(pagesize=nil, pagenumber=nil)
          @PageSize = pagesize
          @PageNumber = pagenumber
        end

        def deserialize(params)
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
        end
      end

      # DescribeProjectList返回参数结构体
      class DescribeProjectListResponse < TencentCloud::Common::AbstractModel
        # @param Projects: 项目信息数组
        # @type Projects: Array
        # @param Total: 项目总数
        # @type Total: Integer
        # @param Num: 本次返回的项目数
        # @type Num: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Projects, :Total, :Num, :RequestId

        def initialize(projects=nil, total=nil, num=nil, requestid=nil)
          @Projects = projects
          @Total = total
          @Num = num
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Projects'].nil?
            @Projects = []
            params['Projects'].each do |i|
              projectinfo_tmp = ProjectInfo.new
              projectinfo_tmp.deserialize(i)
              @Projects << projectinfo_tmp
            end
          end
          @Total = params['Total']
          @Num = params['Num']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRecentSessionList请求参数结构体
      class DescribeRecentSessionListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param PageNumber: 页码，从1开始
        # @type PageNumber: Integer
        # @param PageSize: 每页个数
        # @type PageSize: Integer
        # @param DeviceId: 设备ID，支持过滤远端设备或现场设备
        # @type DeviceId: String
        # @param StartTime: 时间范围的起始时间。时间范围最大为最近两小时，若不传或超出范围，则起始时间按两小时前计算
        # @type StartTime: Integer
        # @param EndTime: 时间范围的结束时间。时间范围最大为最近两小时，若不传或超出范围，则结束时间按当前时间计算
        # @type EndTime: Integer

        attr_accessor :ProjectId, :PageNumber, :PageSize, :DeviceId, :StartTime, :EndTime

        def initialize(projectid=nil, pagenumber=nil, pagesize=nil, deviceid=nil, starttime=nil, endtime=nil)
          @ProjectId = projectid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @DeviceId = deviceid
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @DeviceId = params['DeviceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeRecentSessionList返回参数结构体
      class DescribeRecentSessionListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总个数
        # @type Total: Integer
        # @param RecentSessionList: 会话列表
        # @type RecentSessionList: Array
        # @param Num: 本页数量
        # @type Num: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :RecentSessionList, :Num, :RequestId

        def initialize(total=nil, recentsessionlist=nil, num=nil, requestid=nil)
          @Total = total
          @RecentSessionList = recentsessionlist
          @Num = num
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['RecentSessionList'].nil?
            @RecentSessionList = []
            params['RecentSessionList'].each do |i|
              recentsessioninfo_tmp = RecentSessionInfo.new
              recentsessioninfo_tmp.deserialize(i)
              @RecentSessionList << recentsessioninfo_tmp
            end
          end
          @Num = params['Num']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSessionStatisticsByInterval请求参数结构体
      class DescribeSessionStatisticsByIntervalRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param StatisticInterval: 统计时间间隔：hour|day|month
        # @type StatisticInterval: String
        # @param DeviceId: 设备ID
        # @type DeviceId: String
        # @param StartTime: 起始时间，单位：秒
        # @type StartTime: Integer
        # @param EndTime: 结束时间，单位：秒
        # @type EndTime: Integer

        attr_accessor :ProjectId, :StatisticInterval, :DeviceId, :StartTime, :EndTime

        def initialize(projectid=nil, statisticinterval=nil, deviceid=nil, starttime=nil, endtime=nil)
          @ProjectId = projectid
          @StatisticInterval = statisticinterval
          @DeviceId = deviceid
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @StatisticInterval = params['StatisticInterval']
          @DeviceId = params['DeviceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeSessionStatisticsByInterval返回参数结构体
      class DescribeSessionStatisticsByIntervalResponse < TencentCloud::Common::AbstractModel
        # @param SessionStatistics: 各时间段的会话统计数据
        # @type SessionStatistics: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SessionStatistics, :RequestId

        def initialize(sessionstatistics=nil, requestid=nil)
          @SessionStatistics = sessionstatistics
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SessionStatistics'].nil?
            @SessionStatistics = []
            params['SessionStatistics'].each do |i|
              sessionintervalstatistic_tmp = SessionIntervalStatistic.new
              sessionintervalstatistic_tmp.deserialize(i)
              @SessionStatistics << sessionintervalstatistic_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSessionStatistics请求参数结构体
      class DescribeSessionStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param DeviceId: 设备ID
        # @type DeviceId: String
        # @param StartTime: 起始时间，单位：秒
        # @type StartTime: Integer
        # @param EndTime: 结束时间，单位：秒
        # @type EndTime: Integer

        attr_accessor :ProjectId, :DeviceId, :StartTime, :EndTime

        def initialize(projectid=nil, deviceid=nil, starttime=nil, endtime=nil)
          @ProjectId = projectid
          @DeviceId = deviceid
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @DeviceId = params['DeviceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeSessionStatistics返回参数结构体
      class DescribeSessionStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param SessionNum: 会话数量
        # @type SessionNum: Integer
        # @param TotalDuration: 通话时长，单位：分钟
        # @type TotalDuration: Integer
        # @param ActiveFieldDeviceNum: 活跃现场设备数
        # @type ActiveFieldDeviceNum: Integer
        # @param ActiveRemoteDeviceNum: 活跃远端设备数
        # @type ActiveRemoteDeviceNum: Integer
        # @param NotBadSessionRatio: 优良会话占比，单位：%
        # @type NotBadSessionRatio: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SessionNum, :TotalDuration, :ActiveFieldDeviceNum, :ActiveRemoteDeviceNum, :NotBadSessionRatio, :RequestId

        def initialize(sessionnum=nil, totalduration=nil, activefielddevicenum=nil, activeremotedevicenum=nil, notbadsessionratio=nil, requestid=nil)
          @SessionNum = sessionnum
          @TotalDuration = totalduration
          @ActiveFieldDeviceNum = activefielddevicenum
          @ActiveRemoteDeviceNum = activeremotedevicenum
          @NotBadSessionRatio = notbadsessionratio
          @RequestId = requestid
        end

        def deserialize(params)
          @SessionNum = params['SessionNum']
          @TotalDuration = params['TotalDuration']
          @ActiveFieldDeviceNum = params['ActiveFieldDeviceNum']
          @ActiveRemoteDeviceNum = params['ActiveRemoteDeviceNum']
          @NotBadSessionRatio = params['NotBadSessionRatio']
          @RequestId = params['RequestId']
        end
      end

      # 查询用户设备的授权绑定情况
      class Device < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备ID
        # @type DeviceId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param LicenseCount: 已经绑定license数量
        # @type LicenseCount: Integer
        # @param RemainDay: 剩余天数：天
        # @type RemainDay: Integer
        # @param ExpireTime: 过期时间：s
        # @type ExpireTime: String
        # @param Duration: 服务时长：s
        # @type Duration: String
        # @param LicenseIds: 已经绑定licenseId列表
        # @type LicenseIds: Array
        # @param MonthlyRemainTime: 每月license的限定时长
        # @type MonthlyRemainTime: Integer
        # @param LimitedTime: 月封顶时长（分钟)
        # @type LimitedTime: Integer

        attr_accessor :DeviceId, :DeviceName, :LicenseCount, :RemainDay, :ExpireTime, :Duration, :LicenseIds, :MonthlyRemainTime, :LimitedTime

        def initialize(deviceid=nil, devicename=nil, licensecount=nil, remainday=nil, expiretime=nil, duration=nil, licenseids=nil, monthlyremaintime=nil, limitedtime=nil)
          @DeviceId = deviceid
          @DeviceName = devicename
          @LicenseCount = licensecount
          @RemainDay = remainday
          @ExpireTime = expiretime
          @Duration = duration
          @LicenseIds = licenseids
          @MonthlyRemainTime = monthlyremaintime
          @LimitedTime = limitedtime
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @DeviceName = params['DeviceName']
          @LicenseCount = params['LicenseCount']
          @RemainDay = params['RemainDay']
          @ExpireTime = params['ExpireTime']
          @Duration = params['Duration']
          @LicenseIds = params['LicenseIds']
          @MonthlyRemainTime = params['MonthlyRemainTime']
          @LimitedTime = params['LimitedTime']
        end
      end

      # 设备信息
      class DeviceInfo < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备ID
        # @type DeviceId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param DeviceStatus: 设备状态，offline为离线，ready为在线准备，connected为会话中
        # @type DeviceStatus: String
        # @param DeviceType: 设备类型，field为现场设备（受控方），remote为远端设备（操控方）
        # @type DeviceType: String
        # @param ModifyTime: 设备信息最近修改时间
        # @type ModifyTime: String
        # @param LastReportTime: 设备状态最近更新时间
        # @type LastReportTime: String
        # @param ProjectId: 设备所属项目Id
        # @type ProjectId: String

        attr_accessor :DeviceId, :DeviceName, :DeviceStatus, :DeviceType, :ModifyTime, :LastReportTime, :ProjectId

        def initialize(deviceid=nil, devicename=nil, devicestatus=nil, devicetype=nil, modifytime=nil, lastreporttime=nil, projectid=nil)
          @DeviceId = deviceid
          @DeviceName = devicename
          @DeviceStatus = devicestatus
          @DeviceType = devicetype
          @ModifyTime = modifytime
          @LastReportTime = lastreporttime
          @ProjectId = projectid
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @DeviceName = params['DeviceName']
          @DeviceStatus = params['DeviceStatus']
          @DeviceType = params['DeviceType']
          @ModifyTime = params['ModifyTime']
          @LastReportTime = params['LastReportTime']
          @ProjectId = params['ProjectId']
        end
      end

      # GetDeviceLicense请求参数结构体
      class GetDeviceLicenseRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 目标设备所属项目ID
        # @type ProjectId: String
        # @param DeviceId: 目标设备ID
        # @type DeviceId: String

        attr_accessor :ProjectId, :DeviceId

        def initialize(projectid=nil, deviceid=nil)
          @ProjectId = projectid
          @DeviceId = deviceid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @DeviceId = params['DeviceId']
        end
      end

      # GetDeviceLicense返回参数结构体
      class GetDeviceLicenseResponse < TencentCloud::Common::AbstractModel
        # @param AvailableCount: 指定设备已经绑定的可用license数量
        # @type AvailableCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AvailableCount, :RequestId

        def initialize(availablecount=nil, requestid=nil)
          @AvailableCount = availablecount
          @RequestId = requestid
        end

        def deserialize(params)
          @AvailableCount = params['AvailableCount']
          @RequestId = params['RequestId']
        end
      end

      # GetDevices请求参数结构体
      class GetDevicesRequest < TencentCloud::Common::AbstractModel
        # @param PageNum: 页码
        # @type PageNum: Integer
        # @param PageSize: 页面数量
        # @type PageSize: Integer
        # @param ProjectId: 项目 ID
        # @type ProjectId: String
        # @param DeviceId: 设备ID
        # @type DeviceId: String

        attr_accessor :PageNum, :PageSize, :ProjectId, :DeviceId

        def initialize(pagenum=nil, pagesize=nil, projectid=nil, deviceid=nil)
          @PageNum = pagenum
          @PageSize = pagesize
          @ProjectId = projectid
          @DeviceId = deviceid
        end

        def deserialize(params)
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          @ProjectId = params['ProjectId']
          @DeviceId = params['DeviceId']
        end
      end

      # GetDevices返回参数结构体
      class GetDevicesResponse < TencentCloud::Common::AbstractModel
        # @param Devices: 设备授权列表
        # @type Devices: Array
        # @param TotalCount: 列表数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Devices, :TotalCount, :RequestId

        def initialize(devices=nil, totalcount=nil, requestid=nil)
          @Devices = devices
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Devices'].nil?
            @Devices = []
            params['Devices'].each do |i|
              device_tmp = Device.new
              device_tmp.deserialize(i)
              @Devices << device_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # GetLicenseStat请求参数结构体
      class GetLicenseStatRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # GetLicenseStat返回参数结构体
      class GetLicenseStatResponse < TencentCloud::Common::AbstractModel
        # @param Valid: 有效授权
        # @type Valid: Integer
        # @param Bound: 已绑定授权
        # @type Bound: Integer
        # @param UnBound: 未绑定授权
        # @type UnBound: Integer
        # @param Expire: 过期授权
        # @type Expire: Integer
        # @param MonthlyExpire: 当月用量超时授权个数
        # @type MonthlyExpire: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Valid, :Bound, :UnBound, :Expire, :MonthlyExpire, :RequestId

        def initialize(valid=nil, bound=nil, unbound=nil, expire=nil, monthlyexpire=nil, requestid=nil)
          @Valid = valid
          @Bound = bound
          @UnBound = unbound
          @Expire = expire
          @MonthlyExpire = monthlyexpire
          @RequestId = requestid
        end

        def deserialize(params)
          @Valid = params['Valid']
          @Bound = params['Bound']
          @UnBound = params['UnBound']
          @Expire = params['Expire']
          @MonthlyExpire = params['MonthlyExpire']
          @RequestId = params['RequestId']
        end
      end

      # GetLicenses请求参数结构体
      class GetLicensesRequest < TencentCloud::Common::AbstractModel
        # @param PageNum: 页码
        # @type PageNum: Integer
        # @param PageSize: 页面数量
        # @type PageSize: Integer
        # @param ProjectId: projectId
        # @type ProjectId: String
        # @param DeviceId: DeviceId
        # @type DeviceId: String
        # @param Status: license状态：0:未绑定；1:已绑定；2:已停服；3:已退费
        # @type Status: Integer

        attr_accessor :PageNum, :PageSize, :ProjectId, :DeviceId, :Status

        def initialize(pagenum=nil, pagesize=nil, projectid=nil, deviceid=nil, status=nil)
          @PageNum = pagenum
          @PageSize = pagesize
          @ProjectId = projectid
          @DeviceId = deviceid
          @Status = status
        end

        def deserialize(params)
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          @ProjectId = params['ProjectId']
          @DeviceId = params['DeviceId']
          @Status = params['Status']
        end
      end

      # GetLicenses返回参数结构体
      class GetLicensesResponse < TencentCloud::Common::AbstractModel
        # @param Licenses: license列表
        # @type Licenses: Array
        # @param TotalCount: license列表项数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Licenses, :TotalCount, :RequestId

        def initialize(licenses=nil, totalcount=nil, requestid=nil)
          @Licenses = licenses
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Licenses'].nil?
            @Licenses = []
            params['Licenses'].each do |i|
              license_tmp = License.new
              license_tmp.deserialize(i)
              @Licenses << license_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 按授权查看的license列表
      class License < TencentCloud::Common::AbstractModel
        # @param Count: 该类型的license个数
        # @type Count: Integer
        # @param Status: license状态：0:未绑定；1:已绑定；2:已停服；3:已退费
        # @type Status: Integer
        # @param ExpireTime: 到期时间戳：s
        # @type ExpireTime: String
        # @param Duration: 服务时长：s
        # @type Duration: String
        # @param RemainDay: 剩余天数：天
        # @type RemainDay: Integer
        # @param LicenseIds: 该类型的licenseId列表
        # @type LicenseIds: Array

        attr_accessor :Count, :Status, :ExpireTime, :Duration, :RemainDay, :LicenseIds

        def initialize(count=nil, status=nil, expiretime=nil, duration=nil, remainday=nil, licenseids=nil)
          @Count = count
          @Status = status
          @ExpireTime = expiretime
          @Duration = duration
          @RemainDay = remainday
          @LicenseIds = licenseids
        end

        def deserialize(params)
          @Count = params['Count']
          @Status = params['Status']
          @ExpireTime = params['ExpireTime']
          @Duration = params['Duration']
          @RemainDay = params['RemainDay']
          @LicenseIds = params['LicenseIds']
        end
      end

      # ModifyDevice请求参数结构体
      class ModifyDeviceRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 要修改设备归属项目的项目ID
        # @type ProjectId: String
        # @param DeviceId: 要修改设备的设备ID
        # @type DeviceId: String
        # @param DeviceName: 修改后的设备名称，不填则不修改
        # @type DeviceName: String
        # @param DeviceToken: 修改后的设备认证口令，不填则不修改
        # @type DeviceToken: String

        attr_accessor :ProjectId, :DeviceId, :DeviceName, :DeviceToken

        def initialize(projectid=nil, deviceid=nil, devicename=nil, devicetoken=nil)
          @ProjectId = projectid
          @DeviceId = deviceid
          @DeviceName = devicename
          @DeviceToken = devicetoken
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @DeviceId = params['DeviceId']
          @DeviceName = params['DeviceName']
          @DeviceToken = params['DeviceToken']
        end
      end

      # ModifyDevice返回参数结构体
      class ModifyDeviceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyPolicy请求参数结构体
      class ModifyPolicyRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 修改权限配置的项目ID
        # @type ProjectId: String
        # @param RemoteDeviceId: 修改权限配置的远端设备ID
        # @type RemoteDeviceId: String
        # @param FieldDeviceIds: 权限修改涉及的现场设备ID数组
        # @type FieldDeviceIds: Array
        # @param PolicyMode: 修改的目标权限模式，black为黑名单，white为白名单
        # @type PolicyMode: String
        # @param ModifyMode: 修改模式，add为新增（添加现场设备I关联），remove为删除（解除现场设备关联），set为设置（更新现场设备关联）
        # @type ModifyMode: String

        attr_accessor :ProjectId, :RemoteDeviceId, :FieldDeviceIds, :PolicyMode, :ModifyMode

        def initialize(projectid=nil, remotedeviceid=nil, fielddeviceids=nil, policymode=nil, modifymode=nil)
          @ProjectId = projectid
          @RemoteDeviceId = remotedeviceid
          @FieldDeviceIds = fielddeviceids
          @PolicyMode = policymode
          @ModifyMode = modifymode
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @RemoteDeviceId = params['RemoteDeviceId']
          @FieldDeviceIds = params['FieldDeviceIds']
          @PolicyMode = params['PolicyMode']
          @ModifyMode = params['ModifyMode']
        end
      end

      # ModifyPolicy返回参数结构体
      class ModifyPolicyResponse < TencentCloud::Common::AbstractModel
        # @param FailedInsertIds: 添加关联失败的现场设备ID列表
        # @type FailedInsertIds: Array
        # @param FailedDeleteIds: 解除关联失败的现场设备ID列表
        # @type FailedDeleteIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FailedInsertIds, :FailedDeleteIds, :RequestId

        def initialize(failedinsertids=nil, faileddeleteids=nil, requestid=nil)
          @FailedInsertIds = failedinsertids
          @FailedDeleteIds = faileddeleteids
          @RequestId = requestid
        end

        def deserialize(params)
          @FailedInsertIds = params['FailedInsertIds']
          @FailedDeleteIds = params['FailedDeleteIds']
          @RequestId = params['RequestId']
        end
      end

      # ModifyProject请求参数结构体
      class ModifyProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 目标修改项目的项目ID
        # @type ProjectId: String
        # @param ProjectName: 修改后的项目名称，不填则不修改
        # @type ProjectName: String
        # @param ProjectDescription: 修改后的项目描述，不填则不修改
        # @type ProjectDescription: String
        # @param PolicyMode: 修改后的权限模式，black为黑名单，white为白名单,不填则不修改
        # @type PolicyMode: String

        attr_accessor :ProjectId, :ProjectName, :ProjectDescription, :PolicyMode

        def initialize(projectid=nil, projectname=nil, projectdescription=nil, policymode=nil)
          @ProjectId = projectid
          @ProjectName = projectname
          @ProjectDescription = projectdescription
          @PolicyMode = policymode
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @ProjectDescription = params['ProjectDescription']
          @PolicyMode = params['PolicyMode']
        end
      end

      # ModifyProject返回参数结构体
      class ModifyProjectResponse < TencentCloud::Common::AbstractModel
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

      # 多网的网卡状态信息
      class MultiNet < TencentCloud::Common::AbstractModel
        # @param NetId: 网卡序号
        # @type NetId: Integer
        # @param NetIp: 网卡IP
        # @type NetIp: String
        # @param Rtt: 时延，单位ms
        # @type Rtt: Array
        # @param Lost: 丢包率，单位%
        # @type Lost: Array
        # @param SendBps: 发送bps，单位kbps
        # @type SendBps: Array
        # @param RecvBps: 接收bps，单位kbps
        # @type RecvBps: Array

        attr_accessor :NetId, :NetIp, :Rtt, :Lost, :SendBps, :RecvBps

        def initialize(netid=nil, netip=nil, rtt=nil, lost=nil, sendbps=nil, recvbps=nil)
          @NetId = netid
          @NetIp = netip
          @Rtt = rtt
          @Lost = lost
          @SendBps = sendbps
          @RecvBps = recvbps
        end

        def deserialize(params)
          @NetId = params['NetId']
          @NetIp = params['NetIp']
          @Rtt = params['Rtt']
          @Lost = params['Lost']
          @SendBps = params['SendBps']
          @RecvBps = params['RecvBps']
        end
      end

      # 权限信息
      class PolicyInfo < TencentCloud::Common::AbstractModel
        # @param RemoteDeviceId: 远端设备ID
        # @type RemoteDeviceId: String
        # @param FieldDeviceIds: 关联的现场设备ID
        # @type FieldDeviceIds: Array
        # @param ModifyTime: 最近添加时间
        # @type ModifyTime: String

        attr_accessor :RemoteDeviceId, :FieldDeviceIds, :ModifyTime

        def initialize(remotedeviceid=nil, fielddeviceids=nil, modifytime=nil)
          @RemoteDeviceId = remotedeviceid
          @FieldDeviceIds = fielddeviceids
          @ModifyTime = modifytime
        end

        def deserialize(params)
          @RemoteDeviceId = params['RemoteDeviceId']
          @FieldDeviceIds = params['FieldDeviceIds']
          @ModifyTime = params['ModifyTime']
        end
      end

      # 项目信息
      class ProjectInfo < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ProjectName: 项目名称
        # @type ProjectName: String
        # @param ProjectDescription: 项目描述
        # @type ProjectDescription: String
        # @param PolicyMode: 项目权限模式，black为黑名单，white为白名单
        # @type PolicyMode: String
        # @param ModifyTime: 项目信息修改时间
        # @type ModifyTime: String

        attr_accessor :ProjectId, :ProjectName, :ProjectDescription, :PolicyMode, :ModifyTime

        def initialize(projectid=nil, projectname=nil, projectdescription=nil, policymode=nil, modifytime=nil)
          @ProjectId = projectid
          @ProjectName = projectname
          @ProjectDescription = projectdescription
          @PolicyMode = policymode
          @ModifyTime = modifytime
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @ProjectDescription = params['ProjectDescription']
          @PolicyMode = params['PolicyMode']
          @ModifyTime = params['ModifyTime']
        end
      end

      # 最新会话信息
      class RecentSessionInfo < TencentCloud::Common::AbstractModel
        # @param SessionId: 会话ID
        # @type SessionId: String
        # @param RemoteDeviceId: 远端设备ID
        # @type RemoteDeviceId: String
        # @param FieldDeviceId: 现场设备ID
        # @type FieldDeviceId: String
        # @param Resolution: 分辨率
        # @type Resolution: String
        # @param StartTime: 会话开始时间
        # @type StartTime: Integer
        # @param LatestUpdateTime: 最后更新时间
        # @type LatestUpdateTime: Integer

        attr_accessor :SessionId, :RemoteDeviceId, :FieldDeviceId, :Resolution, :StartTime, :LatestUpdateTime

        def initialize(sessionid=nil, remotedeviceid=nil, fielddeviceid=nil, resolution=nil, starttime=nil, latestupdatetime=nil)
          @SessionId = sessionid
          @RemoteDeviceId = remotedeviceid
          @FieldDeviceId = fielddeviceid
          @Resolution = resolution
          @StartTime = starttime
          @LatestUpdateTime = latestupdatetime
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @RemoteDeviceId = params['RemoteDeviceId']
          @FieldDeviceId = params['FieldDeviceId']
          @Resolution = params['Resolution']
          @StartTime = params['StartTime']
          @LatestUpdateTime = params['LatestUpdateTime']
        end
      end

      # 会话数据详单（按设备区分）
      class SessionDeviceDetail < TencentCloud::Common::AbstractModel
        # @param DeviceType: 设备类型：field或remote
        # @type DeviceType: String
        # @param StartTime: 起始点位时间，单位：秒
        # @type StartTime: Integer
        # @param EndTime: 结束点位时间，单位：秒
        # @type EndTime: Integer
        # @param SessionId: 会话ID
        # @type SessionId: String
        # @param Rate: 码率，单位：kbps
        # @type Rate: Array
        # @param Fps: 帧率
        # @type Fps: Array
        # @param Lost: 丢包率，单位：%
        # @type Lost: Array
        # @param NetworkLatency: 网络时延，单位：ms
        # @type NetworkLatency: Array
        # @param VideoLatency: 视频时延，单位：ms
        # @type VideoLatency: Array
        # @param CpuUsed: CPU使用率，单位：%
        # @type CpuUsed: Array
        # @param MemUsed: 内存使用率，单位：%
        # @type MemUsed: Array
        # @param TimeOffset: 时间偏移量，单位：秒
        # @type TimeOffset: Array
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param DeviceId: 设备ID
        # @type DeviceId: String
        # @param Ver: sdk版本
        # @type Ver: String
        # @param SdkMode: 模式(p2p/server)
        # @type SdkMode: String
        # @param DecodeCost: 解码耗时，单位：ms
        # @type DecodeCost: Array
        # @param RenderConst: 【已废弃，使用RenderCost】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenderConst: Array
        # @param K100: 卡顿k100
        # @type K100: Array
        # @param K150: 卡顿k150
        # @type K150: Array
        # @param NACK: nack请求数
        # @type NACK: Array
        # @param BitRateEstimate: 服务端调控码率,单位：kbps
        # @type BitRateEstimate: Array
        # @param Width: 宽度
        # @type Width: Integer
        # @param Height: 高度
        # @type Height: Integer
        # @param EncodeCost: 编码耗时，单位：ms
        # @type EncodeCost: Array
        # @param CaptureCost: 采集耗时，单位：ms
        # @type CaptureCost: Array
        # @param RenderCost: 渲染耗时，单位：ms
        # @type RenderCost: Array
        # @param ConfigWidth: 配置宽度
        # @type ConfigWidth: Integer
        # @param ConfigHeight: 配置高度
        # @type ConfigHeight: Integer
        # @param FrameDelta: 平均帧间隔
        # @type FrameDelta: Array
        # @param MaxFrameDelta: 最大帧间隔
        # @type MaxFrameDelta: Array
        # @param TotalBitrateEstimate: 总码率评估,单位：kbps
        # @type TotalBitrateEstimate: Array
        # @param Lag100Duration: 帧间隔大于100ms的卡顿时长
        # @type Lag100Duration: Array
        # @param Lag150Duration: 帧间隔大于150ms的卡顿时长
        # @type Lag150Duration: Array
        # @param MultiMode: 是否开启多网：0 单网，1 多网
        # @type MultiMode: Integer
        # @param MultiNet: 多网卡信息
        # @type MultiNet: Array

        attr_accessor :DeviceType, :StartTime, :EndTime, :SessionId, :Rate, :Fps, :Lost, :NetworkLatency, :VideoLatency, :CpuUsed, :MemUsed, :TimeOffset, :ProjectId, :DeviceId, :Ver, :SdkMode, :DecodeCost, :RenderConst, :K100, :K150, :NACK, :BitRateEstimate, :Width, :Height, :EncodeCost, :CaptureCost, :RenderCost, :ConfigWidth, :ConfigHeight, :FrameDelta, :MaxFrameDelta, :TotalBitrateEstimate, :Lag100Duration, :Lag150Duration, :MultiMode, :MultiNet
        extend Gem::Deprecate
        deprecate :RenderConst, :none, 2025, 1
        deprecate :RenderConst=, :none, 2025, 1

        def initialize(devicetype=nil, starttime=nil, endtime=nil, sessionid=nil, rate=nil, fps=nil, lost=nil, networklatency=nil, videolatency=nil, cpuused=nil, memused=nil, timeoffset=nil, projectid=nil, deviceid=nil, ver=nil, sdkmode=nil, decodecost=nil, renderconst=nil, k100=nil, k150=nil, nack=nil, bitrateestimate=nil, width=nil, height=nil, encodecost=nil, capturecost=nil, rendercost=nil, configwidth=nil, configheight=nil, framedelta=nil, maxframedelta=nil, totalbitrateestimate=nil, lag100duration=nil, lag150duration=nil, multimode=nil, multinet=nil)
          @DeviceType = devicetype
          @StartTime = starttime
          @EndTime = endtime
          @SessionId = sessionid
          @Rate = rate
          @Fps = fps
          @Lost = lost
          @NetworkLatency = networklatency
          @VideoLatency = videolatency
          @CpuUsed = cpuused
          @MemUsed = memused
          @TimeOffset = timeoffset
          @ProjectId = projectid
          @DeviceId = deviceid
          @Ver = ver
          @SdkMode = sdkmode
          @DecodeCost = decodecost
          @RenderConst = renderconst
          @K100 = k100
          @K150 = k150
          @NACK = nack
          @BitRateEstimate = bitrateestimate
          @Width = width
          @Height = height
          @EncodeCost = encodecost
          @CaptureCost = capturecost
          @RenderCost = rendercost
          @ConfigWidth = configwidth
          @ConfigHeight = configheight
          @FrameDelta = framedelta
          @MaxFrameDelta = maxframedelta
          @TotalBitrateEstimate = totalbitrateestimate
          @Lag100Duration = lag100duration
          @Lag150Duration = lag150duration
          @MultiMode = multimode
          @MultiNet = multinet
        end

        def deserialize(params)
          @DeviceType = params['DeviceType']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SessionId = params['SessionId']
          @Rate = params['Rate']
          @Fps = params['Fps']
          @Lost = params['Lost']
          @NetworkLatency = params['NetworkLatency']
          @VideoLatency = params['VideoLatency']
          @CpuUsed = params['CpuUsed']
          @MemUsed = params['MemUsed']
          @TimeOffset = params['TimeOffset']
          @ProjectId = params['ProjectId']
          @DeviceId = params['DeviceId']
          @Ver = params['Ver']
          @SdkMode = params['SdkMode']
          @DecodeCost = params['DecodeCost']
          @RenderConst = params['RenderConst']
          @K100 = params['K100']
          @K150 = params['K150']
          @NACK = params['NACK']
          @BitRateEstimate = params['BitRateEstimate']
          @Width = params['Width']
          @Height = params['Height']
          @EncodeCost = params['EncodeCost']
          @CaptureCost = params['CaptureCost']
          @RenderCost = params['RenderCost']
          @ConfigWidth = params['ConfigWidth']
          @ConfigHeight = params['ConfigHeight']
          @FrameDelta = params['FrameDelta']
          @MaxFrameDelta = params['MaxFrameDelta']
          @TotalBitrateEstimate = params['TotalBitrateEstimate']
          @Lag100Duration = params['Lag100Duration']
          @Lag150Duration = params['Lag150Duration']
          @MultiMode = params['MultiMode']
          unless params['MultiNet'].nil?
            @MultiNet = []
            params['MultiNet'].each do |i|
              multinet_tmp = MultiNet.new
              multinet_tmp.deserialize(i)
              @MultiNet << multinet_tmp
            end
          end
        end
      end

      # 会话信息
      class SessionInfo < TencentCloud::Common::AbstractModel
        # @param SessionId: 会话ID
        # @type SessionId: String
        # @param RemoteDeviceId: 远端设备ID
        # @type RemoteDeviceId: String
        # @param FieldDeviceId: 现场设备ID
        # @type FieldDeviceId: String
        # @param Resolution: 分辨率
        # @type Resolution: String
        # @param StartTime: 会话开始时间
        # @type StartTime: Integer
        # @param EndTime: 会话结束时间
        # @type EndTime: Integer
        # @param Quality: 通话质量：good|normal|bad，对应优良差
        # @type Quality: String

        attr_accessor :SessionId, :RemoteDeviceId, :FieldDeviceId, :Resolution, :StartTime, :EndTime, :Quality

        def initialize(sessionid=nil, remotedeviceid=nil, fielddeviceid=nil, resolution=nil, starttime=nil, endtime=nil, quality=nil)
          @SessionId = sessionid
          @RemoteDeviceId = remotedeviceid
          @FieldDeviceId = fielddeviceid
          @Resolution = resolution
          @StartTime = starttime
          @EndTime = endtime
          @Quality = quality
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @RemoteDeviceId = params['RemoteDeviceId']
          @FieldDeviceId = params['FieldDeviceId']
          @Resolution = params['Resolution']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Quality = params['Quality']
        end
      end

      # 单位时间间隔的会话统计数据
      class SessionIntervalStatistic < TencentCloud::Common::AbstractModel
        # @param ActiveFieldDeviceNum: 活跃现场设备数
        # @type ActiveFieldDeviceNum: Integer
        # @param ActiveRemoteDeviceNum: 活跃远端设备数
        # @type ActiveRemoteDeviceNum: Integer
        # @param SessionNum: 会话数量
        # @type SessionNum: Integer
        # @param TotalDuration: 会话时长，单位：分钟
        # @type TotalDuration: Integer
        # @param StartTime: 时间戳，单位：秒
        # @type StartTime: Integer
        # @param EndTime: 时间戳，单位：秒
        # @type EndTime: Integer
        # @param NotBadSessionRatio: 优良会话占比，单位：%
        # @type NotBadSessionRatio: Integer

        attr_accessor :ActiveFieldDeviceNum, :ActiveRemoteDeviceNum, :SessionNum, :TotalDuration, :StartTime, :EndTime, :NotBadSessionRatio

        def initialize(activefielddevicenum=nil, activeremotedevicenum=nil, sessionnum=nil, totalduration=nil, starttime=nil, endtime=nil, notbadsessionratio=nil)
          @ActiveFieldDeviceNum = activefielddevicenum
          @ActiveRemoteDeviceNum = activeremotedevicenum
          @SessionNum = sessionnum
          @TotalDuration = totalduration
          @StartTime = starttime
          @EndTime = endtime
          @NotBadSessionRatio = notbadsessionratio
        end

        def deserialize(params)
          @ActiveFieldDeviceNum = params['ActiveFieldDeviceNum']
          @ActiveRemoteDeviceNum = params['ActiveRemoteDeviceNum']
          @SessionNum = params['SessionNum']
          @TotalDuration = params['TotalDuration']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @NotBadSessionRatio = params['NotBadSessionRatio']
        end
      end

    end
  end
end

