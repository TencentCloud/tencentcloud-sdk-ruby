# frozen_string_literal: true

# Copyright (c) 2017-2025 Tencent. All Rights Reserved.
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

      # 云端录制文件上传到云存储的参数（对象存储cos）
      class CloudStorage < TencentCloud::Common::AbstractModel
        # @param Vendor: 腾讯云对象存储COS以及第三方云存储账号信息
        # 0：腾讯云对象存储 COS
        # 1：AWS
        # 【注意】目前第三方云存储仅支持AWS，更多第三方云存储陆续支持中
        # 示例值：0
        # @type Vendor: Integer
        # @param Region: 腾讯云对象存储的[地域信息]（https://cloud.tencent.com/document/product/436/6224#.E5.9C.B0.E5.9F.9F）。
        # 示例值：cn-shanghai-1

        # AWS S3[地域信息]（https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-regions）
        # 示例值：ap-shanghai(cos, 具体参考云存储厂商支持的地域)
        # @type Region: String
        # @param Bucket: 云存储桶名称。
        # @type Bucket: String
        # @param AccessKey: 云存储的access_key账号信息。
        # 若存储至腾讯云对象存储COS，请前往https://console.cloud.tencent.com/cam/capi 查看或创建，对应链接中密钥字段的SecretId值。
        # @type AccessKey: String
        # @param SecretKey: 云存储的secret_key账号信息。
        # 若存储至腾讯云对象存储COS，请前往https://console.cloud.tencent.com/cam/capi 查看或创建，对应链接中密钥字段的SecretKey值。
        # @type SecretKey: String
        # @param FileNamePrefix: 云存储bucket 的指定位置，由字符串数组组成。合法的字符串范围az,AZ,0~9,'_'和'-'，举个例子，录制文件xxx.m3u8在 ["prefix1", "prefix2"]作用下，会变成prefix1/prefix2/TaskId/xxx.m3u8。
        # @type FileNamePrefix: Array

        attr_accessor :Vendor, :Region, :Bucket, :AccessKey, :SecretKey, :FileNamePrefix

        def initialize(vendor=nil, region=nil, bucket=nil, accesskey=nil, secretkey=nil, filenameprefix=nil)
          @Vendor = vendor
          @Region = region
          @Bucket = bucket
          @AccessKey = accesskey
          @SecretKey = secretkey
          @FileNamePrefix = filenameprefix
        end

        def deserialize(params)
          @Vendor = params['Vendor']
          @Region = params['Region']
          @Bucket = params['Bucket']
          @AccessKey = params['AccessKey']
          @SecretKey = params['SecretKey']
          @FileNamePrefix = params['FileNamePrefix']
        end
      end

      # CreateCloudRecording请求参数结构体
      class CreateCloudRecordingRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param DeviceId: 设备id
        # @type DeviceId: String
        # @param VideoStreamId: 视频流号
        # @type VideoStreamId: Integer
        # @param CloudStorage: 腾讯云对象存储COS以及第三方云存储的账号信息
        # @type CloudStorage: :class:`Tencentcloud::Trro.v20220325.models.CloudStorage`
        # @param MaxMediaFileDuration: 如果是aac或者mp4文件格式，超过长度限制后，系统会自动拆分视频文件。单位：分钟。默认为1440min（24h），取值范围为1-1440。【单文件限制最大为2G，满足文件大小 >2G 或录制时长度 > 24h任意一个条件，文件都会自动切分】 Hls 格式录制此参数不生效。
        # @type MaxMediaFileDuration: Integer
        # @param OutputFormat: 输出文件的格式（存储至COS等第三方存储时有效）。0：输出文件为hls格式。1：输出文件格式为hls+mp4。2：输出文件格式为hls+aac 。3：(默认)输出文件格式为mp4。4：输出文件格式为aac。
        # @type OutputFormat: Integer
        # @param MaxIdleTime: 房间内持续没有主播的状态超过MaxIdleTime的时长，自动停止录制，单位：秒。默认值为 30 秒，该值需大于等于 5秒，且小于等于 86400秒(24小时)。 示例值：30
        # @type MaxIdleTime: Integer

        attr_accessor :ProjectId, :DeviceId, :VideoStreamId, :CloudStorage, :MaxMediaFileDuration, :OutputFormat, :MaxIdleTime

        def initialize(projectid=nil, deviceid=nil, videostreamid=nil, cloudstorage=nil, maxmediafileduration=nil, outputformat=nil, maxidletime=nil)
          @ProjectId = projectid
          @DeviceId = deviceid
          @VideoStreamId = videostreamid
          @CloudStorage = cloudstorage
          @MaxMediaFileDuration = maxmediafileduration
          @OutputFormat = outputformat
          @MaxIdleTime = maxidletime
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @DeviceId = params['DeviceId']
          @VideoStreamId = params['VideoStreamId']
          unless params['CloudStorage'].nil?
            @CloudStorage = CloudStorage.new
            @CloudStorage.deserialize(params['CloudStorage'])
          end
          @MaxMediaFileDuration = params['MaxMediaFileDuration']
          @OutputFormat = params['OutputFormat']
          @MaxIdleTime = params['MaxIdleTime']
        end
      end

      # CreateCloudRecording返回参数结构体
      class CreateCloudRecordingResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 云录制服务分配的任务 ID。任务 ID 是对一次录制生命周期过程的唯一标识，结束录制时会失去意义。任务 ID需要业务保存下来，作为下次针对这个录制任务操作的参数。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
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

      # DeleteCloudRecording请求参数结构体
      class DeleteCloudRecordingRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 录制任务的唯一Id，在启动录制成功后会返回。
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DeleteCloudRecording返回参数结构体
      class DeleteCloudRecordingResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCallbackUrl请求参数结构体
      class ModifyCallbackUrlRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param CallbackUrl: 回调URL
        # @type CallbackUrl: String
        # @param SignKey: 回调签名密钥，用于校验回调信息的完整性
        # @type SignKey: String

        attr_accessor :ProjectId, :CallbackUrl, :SignKey

        def initialize(projectid=nil, callbackurl=nil, signkey=nil)
          @ProjectId = projectid
          @CallbackUrl = callbackurl
          @SignKey = signkey
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @CallbackUrl = params['CallbackUrl']
          @SignKey = params['SignKey']
        end
      end

      # ModifyCallbackUrl返回参数结构体
      class ModifyCallbackUrlResponse < TencentCloud::Common::AbstractModel
        # @param Code: 响应码，0：成功，其他：失败
        # @type Code: Integer
        # @param Msg: 响应消息，ok:成功，其他：失败
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Code, :Msg, :RequestId

        def initialize(code=nil, msg=nil, requestid=nil)
          @Code = code
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Code = params['Code']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
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

      # ModifyProjectSecMode请求参数结构体
      class ModifyProjectSecModeRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param Mode: 安全模式
        # 0：关闭项目共享密钥
        # 1：开启项目共享密钥
        # @type Mode: Integer
        # @param Key: 项目密钥 32位 小写英文+数字；  项目密钥模式必填
        # @type Key: String
        # @param AutoRegister: 自动注册方式
        # 0：关闭自动注册
        # 1：仅允许现场设备自动注册
        # 2：仅允许远端设备自动注册
        # 3：允许现场和远端设备均自动注册
        # @type AutoRegister: Integer
        # @param FieldListEnable: 是否允许远端获取现场设备列表（getGwList）
        # 0：不允许
        # 1：允许
        # @type FieldListEnable: Integer

        attr_accessor :ProjectId, :Mode, :Key, :AutoRegister, :FieldListEnable

        def initialize(projectid=nil, mode=nil, key=nil, autoregister=nil, fieldlistenable=nil)
          @ProjectId = projectid
          @Mode = mode
          @Key = key
          @AutoRegister = autoregister
          @FieldListEnable = fieldlistenable
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Mode = params['Mode']
          @Key = params['Key']
          @AutoRegister = params['AutoRegister']
          @FieldListEnable = params['FieldListEnable']
        end
      end

      # ModifyProjectSecMode返回参数结构体
      class ModifyProjectSecModeResponse < TencentCloud::Common::AbstractModel
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

      # 转推参数，一个任务最多支持10个推流URL。
      class PublishParams < TencentCloud::Common::AbstractModel
        # @param PublishUrl: 腾讯云直播推流地址url
        # @type PublishUrl: String
        # @param IsTencentUrl: 是否是腾讯云CDN，0为转推非腾讯云CDN，1为转推腾讯CDN，不携带该参数默认为1。
        # @type IsTencentUrl: Integer

        attr_accessor :PublishUrl, :IsTencentUrl

        def initialize(publishurl=nil, istencenturl=nil)
          @PublishUrl = publishurl
          @IsTencentUrl = istencenturl
        end

        def deserialize(params)
          @PublishUrl = params['PublishUrl']
          @IsTencentUrl = params['IsTencentUrl']
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
        deprecate :RenderConst, :none, 2025, 6
        deprecate :RenderConst=, :none, 2025, 6

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

      # StartPublishLiveStream请求参数结构体
      class StartPublishLiveStreamRequest < TencentCloud::Common::AbstractModel
        # @param WithTranscoding: 是否转码，0表示无需转码，1表示需要转码。是否收取转码费是由WithTranscoding参数决定的，WithTranscoding为0，表示旁路转推，不会收取转码费用，WithTranscoding为1，表示混流转推，会收取转码费用。 示例值：1
        # @type WithTranscoding: Integer
        # @param MaxIdleTime: 所有参与混流转推的主播持续离开TRTC房间或切换成观众超过MaxIdleTime的时长，自动停止转推，单位：秒。默认值为 30 秒，该值需大于等于 5秒，且小于等于 86400秒(24小时)。
        # @type MaxIdleTime: Integer
        # @param VideoParams: 转推视频参数
        # @type VideoParams: :class:`Tencentcloud::Trro.v20220325.models.VideoParams`
        # @param PublishParams: 转推的URL参数，一个任务最多支持10个推流URL
        # @type PublishParams: Array

        attr_accessor :WithTranscoding, :MaxIdleTime, :VideoParams, :PublishParams

        def initialize(withtranscoding=nil, maxidletime=nil, videoparams=nil, publishparams=nil)
          @WithTranscoding = withtranscoding
          @MaxIdleTime = maxidletime
          @VideoParams = videoparams
          @PublishParams = publishparams
        end

        def deserialize(params)
          @WithTranscoding = params['WithTranscoding']
          @MaxIdleTime = params['MaxIdleTime']
          unless params['VideoParams'].nil?
            @VideoParams = VideoParams.new
            @VideoParams.deserialize(params['VideoParams'])
          end
          unless params['PublishParams'].nil?
            @PublishParams = []
            params['PublishParams'].each do |i|
              publishparams_tmp = PublishParams.new
              publishparams_tmp.deserialize(i)
              @PublishParams << publishparams_tmp
            end
          end
        end
      end

      # StartPublishLiveStream返回参数结构体
      class StartPublishLiveStreamResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 用于唯一标识转推任务，由腾讯云服务端生成，后续停止请求需要携带TaskiD参数。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # StopPublishLiveStream请求参数结构体
      class StopPublishLiveStreamRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 唯一标识转推任务。
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # StopPublishLiveStream返回参数结构体
      class StopPublishLiveStreamResponse < TencentCloud::Common::AbstractModel
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

      # 原视频流参数列表
      class VideoList < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param DeviceId: 设备id
        # @type DeviceId: String
        # @param VideoStreamId: 流id
        # @type VideoStreamId: Integer
        # @param Width: 子画面在输出时的宽度，单位为像素值，不填默认为0。
        # @type Width: Integer
        # @param Height: 子画面在输出时的高度，单位为像素值，不填默认为0。
        # @type Height: Integer

        attr_accessor :ProjectId, :DeviceId, :VideoStreamId, :Width, :Height

        def initialize(projectid=nil, deviceid=nil, videostreamid=nil, width=nil, height=nil)
          @ProjectId = projectid
          @DeviceId = deviceid
          @VideoStreamId = videostreamid
          @Width = width
          @Height = height
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @DeviceId = params['DeviceId']
          @VideoStreamId = params['VideoStreamId']
          @Width = params['Width']
          @Height = params['Height']
        end
      end

      # 转推视频参数
      class VideoParams < TencentCloud::Common::AbstractModel
        # @param Width: 输出流宽，音视频输出时必填。取值范围[0,1920]，单位为像素值。
        # @type Width: Integer
        # @param Height: 输出流高，音视频输出时必填。取值范围[0,1080]，单位为像素值。
        # @type Height: Integer
        # @param Fps: 输出流帧率，音视频输出时必填。取值范围[1,60]，表示混流的输出帧率可选范围为1到60fps。
        # @type Fps: Integer
        # @param BitRate: 输出流码率，音视频输出时必填。取值范围[1,10000]，单位为kbps。
        # @type BitRate: Integer
        # @param Gop: 输出流gop，音视频输出时必填。取值范围[1,5]，单位为秒。
        # @type Gop: Integer
        # @param VideoList: 转推视频流列表
        # @type VideoList: Array

        attr_accessor :Width, :Height, :Fps, :BitRate, :Gop, :VideoList

        def initialize(width=nil, height=nil, fps=nil, bitrate=nil, gop=nil, videolist=nil)
          @Width = width
          @Height = height
          @Fps = fps
          @BitRate = bitrate
          @Gop = gop
          @VideoList = videolist
        end

        def deserialize(params)
          @Width = params['Width']
          @Height = params['Height']
          @Fps = params['Fps']
          @BitRate = params['BitRate']
          @Gop = params['Gop']
          unless params['VideoList'].nil?
            @VideoList = []
            params['VideoList'].each do |i|
              videolist_tmp = VideoList.new
              videolist_tmp.deserialize(i)
              @VideoList << videolist_tmp
            end
          end
        end
      end

    end
  end
end

