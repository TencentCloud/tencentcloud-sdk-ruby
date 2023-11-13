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
  module Weilingwith
    module V20230427
      # AddAlarmProcessRecord请求参数结构体
      class AddAlarmProcessRecordRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # AddAlarmProcessRecord返回参数结构体
      class AddAlarmProcessRecordResponse < TencentCloud::Common::AbstractModel
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

      # 应用描述
      class ApplicationInfo < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用分配的appId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param Name: 应用中文名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Address: 应用地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Address: String
        # @param ApplicationLogo: 应用logo
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationLogo: :class:`Tencentcloud::Weilingwith.v20230427.models.ApplicationLogo`
        # @param Type: 应用类型，0:saas应用 1:平台应用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param EnglishName: engine
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnglishName: String
        # @param Description: 能源管理应用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String

        attr_accessor :ApplicationId, :Name, :Address, :ApplicationLogo, :Type, :EnglishName, :Description

        def initialize(applicationid=nil, name=nil, address=nil, applicationlogo=nil, type=nil, englishname=nil, description=nil)
          @ApplicationId = applicationid
          @Name = name
          @Address = address
          @ApplicationLogo = applicationlogo
          @Type = type
          @EnglishName = englishname
          @Description = description
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @Name = params['Name']
          @Address = params['Address']
          unless params['ApplicationLogo'].nil?
            @ApplicationLogo = ApplicationLogo.new
            @ApplicationLogo.deserialize(params['ApplicationLogo'])
          end
          @Type = params['Type']
          @EnglishName = params['EnglishName']
          @Description = params['Description']
        end
      end

      # 应用列表
      class ApplicationList < TencentCloud::Common::AbstractModel
        # @param ApplicationInfoList: 应用列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationInfoList: Array
        # @param TotalCount: 当前查询条件命中的数据总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: String

        attr_accessor :ApplicationInfoList, :TotalCount

        def initialize(applicationinfolist=nil, totalcount=nil)
          @ApplicationInfoList = applicationinfolist
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['ApplicationInfoList'].nil?
            @ApplicationInfoList = []
            params['ApplicationInfoList'].each do |i|
              applicationinfo_tmp = ApplicationInfo.new
              applicationinfo_tmp.deserialize(i)
              @ApplicationInfoList << applicationinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # 应用logo
      class ApplicationLogo < TencentCloud::Common::AbstractModel
        # @param FileId: logo图片对应的fileId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileId: String
        # @param Url: logo图片地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String

        attr_accessor :FileId, :Url

        def initialize(fileid=nil, url=nil)
          @FileId = fileid
          @Url = url
        end

        def deserialize(params)
          @FileId = params['FileId']
          @Url = params['Url']
        end
      end

      # BatchCreateDevice请求参数结构体
      class BatchCreateDeviceRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # BatchCreateDevice返回参数结构体
      class BatchCreateDeviceResponse < TencentCloud::Common::AbstractModel
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

      # BatchKillAlarm请求参数结构体
      class BatchKillAlarmRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # BatchKillAlarm返回参数结构体
      class BatchKillAlarmResponse < TencentCloud::Common::AbstractModel
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

      # BatchReportAppMessage请求参数结构体
      class BatchReportAppMessageRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # BatchReportAppMessage返回参数结构体
      class BatchReportAppMessageResponse < TencentCloud::Common::AbstractModel
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

      # ChangeAlarmStatus请求参数结构体
      class ChangeAlarmStatusRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ChangeAlarmStatus返回参数结构体
      class ChangeAlarmStatusResponse < TencentCloud::Common::AbstractModel
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

      # ControlCameraPTZ请求参数结构体
      class ControlCameraPTZRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ControlCameraPTZ返回参数结构体
      class ControlCameraPTZResponse < TencentCloud::Common::AbstractModel
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

      # ControlDevice请求参数结构体
      class ControlDeviceRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ControlDevice返回参数结构体
      class ControlDeviceResponse < TencentCloud::Common::AbstractModel
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

      # CreateApplicationToken请求参数结构体
      class CreateApplicationTokenRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # CreateApplicationToken返回参数结构体
      class CreateApplicationTokenResponse < TencentCloud::Common::AbstractModel
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

      # DescribeActionList请求参数结构体
      class DescribeActionListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeActionList返回参数结构体
      class DescribeActionListResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAdministrationByTag请求参数结构体
      class DescribeAdministrationByTagRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAdministrationByTag返回参数结构体
      class DescribeAdministrationByTagResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAlarmLevelList请求参数结构体
      class DescribeAlarmLevelListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAlarmLevelList返回参数结构体
      class DescribeAlarmLevelListResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAlarmList请求参数结构体
      class DescribeAlarmListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAlarmList返回参数结构体
      class DescribeAlarmListResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAlarmStatusList请求参数结构体
      class DescribeAlarmStatusListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAlarmStatusList返回参数结构体
      class DescribeAlarmStatusListResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAlarmTypeList请求参数结构体
      class DescribeAlarmTypeListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAlarmTypeList返回参数结构体
      class DescribeAlarmTypeListResponse < TencentCloud::Common::AbstractModel
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

      # DescribeApplicationList请求参数结构体
      class DescribeApplicationListRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 项目空间id，本次查询返回的应用均关联至该空间
        # @type WorkspaceId: Integer
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param ApplicationId: 应用id数组，可选，填了则表示根据id批量查询
        # @type ApplicationId: Array
        # @param PageNumber: 请求页号
        # @type PageNumber: Integer
        # @param PageSize: 页容量，默认为10
        # @type PageSize: Integer

        attr_accessor :WorkspaceId, :ApplicationToken, :ApplicationId, :PageNumber, :PageSize

        def initialize(workspaceid=nil, applicationtoken=nil, applicationid=nil, pagenumber=nil, pagesize=nil)
          @WorkspaceId = workspaceid
          @ApplicationToken = applicationtoken
          @ApplicationId = applicationid
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @ApplicationToken = params['ApplicationToken']
          @ApplicationId = params['ApplicationId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeApplicationList返回参数结构体
      class DescribeApplicationListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 应用列表
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.ApplicationList`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ApplicationList.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBuildingList请求参数结构体
      class DescribeBuildingListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeBuildingList返回参数结构体
      class DescribeBuildingListResponse < TencentCloud::Common::AbstractModel
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

      # DescribeBuildingModel请求参数结构体
      class DescribeBuildingModelRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeBuildingModel返回参数结构体
      class DescribeBuildingModelResponse < TencentCloud::Common::AbstractModel
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

      # DescribeBuildingProfile请求参数结构体
      class DescribeBuildingProfileRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeBuildingProfile返回参数结构体
      class DescribeBuildingProfileResponse < TencentCloud::Common::AbstractModel
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

      # DescribeCameraExtendInfo请求参数结构体
      class DescribeCameraExtendInfoRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeCameraExtendInfo返回参数结构体
      class DescribeCameraExtendInfoResponse < TencentCloud::Common::AbstractModel
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

      # DescribeCityWorkspaceList请求参数结构体
      class DescribeCityWorkspaceListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeCityWorkspaceList返回参数结构体
      class DescribeCityWorkspaceListResponse < TencentCloud::Common::AbstractModel
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

      # DescribeDeviceList请求参数结构体
      class DescribeDeviceListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeDeviceList返回参数结构体
      class DescribeDeviceListResponse < TencentCloud::Common::AbstractModel
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

      # DescribeDeviceShadowList请求参数结构体
      class DescribeDeviceShadowListRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间id
        # @type WorkspaceId: Integer
        # @param WIDSet: WID
        # @type WIDSet: Array
        # @param PageNumber: 分页查询，第几页
        # @type PageNumber: Integer
        # @param PageSize: 每页条数
        # @type PageSize: Integer
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param DeviceTypeSet: 设备类型code
        # @type DeviceTypeSet: Array
        # @param ProductIdSet: 产品 pid
        # @type ProductIdSet: Array
        # @param SpaceCodeSet: 空间层级，（支持空间多层，比如具体建筑、具体楼层）
        # @type SpaceCodeSet: Array
        # @param DeviceTagSet: 设备标签名
        # @type DeviceTagSet: Array

        attr_accessor :WorkspaceId, :WIDSet, :PageNumber, :PageSize, :ApplicationToken, :DeviceTypeSet, :ProductIdSet, :SpaceCodeSet, :DeviceTagSet

        def initialize(workspaceid=nil, widset=nil, pagenumber=nil, pagesize=nil, applicationtoken=nil, devicetypeset=nil, productidset=nil, spacecodeset=nil, devicetagset=nil)
          @WorkspaceId = workspaceid
          @WIDSet = widset
          @PageNumber = pagenumber
          @PageSize = pagesize
          @ApplicationToken = applicationtoken
          @DeviceTypeSet = devicetypeset
          @ProductIdSet = productidset
          @SpaceCodeSet = spacecodeset
          @DeviceTagSet = devicetagset
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @WIDSet = params['WIDSet']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @ApplicationToken = params['ApplicationToken']
          @DeviceTypeSet = params['DeviceTypeSet']
          @ProductIdSet = params['ProductIdSet']
          @SpaceCodeSet = params['SpaceCodeSet']
          @DeviceTagSet = params['DeviceTagSet']
        end
      end

      # DescribeDeviceShadowList返回参数结构体
      class DescribeDeviceShadowListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 获取设备影子结果
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.DeviceShadowRes`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DeviceShadowRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceStatusList请求参数结构体
      class DescribeDeviceStatusListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeDeviceStatusList返回参数结构体
      class DescribeDeviceStatusListResponse < TencentCloud::Common::AbstractModel
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

      # DescribeDeviceStatusStat请求参数结构体
      class DescribeDeviceStatusStatRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeDeviceStatusStat返回参数结构体
      class DescribeDeviceStatusStatResponse < TencentCloud::Common::AbstractModel
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

      # DescribeDeviceTagList请求参数结构体
      class DescribeDeviceTagListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeDeviceTagList返回参数结构体
      class DescribeDeviceTagListResponse < TencentCloud::Common::AbstractModel
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

      # DescribeDeviceTypeList请求参数结构体
      class DescribeDeviceTypeListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeDeviceTypeList返回参数结构体
      class DescribeDeviceTypeListResponse < TencentCloud::Common::AbstractModel
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

      # DescribeEdgeApplicationToken请求参数结构体
      class DescribeEdgeApplicationTokenRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeEdgeApplicationToken返回参数结构体
      class DescribeEdgeApplicationTokenResponse < TencentCloud::Common::AbstractModel
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

      # DescribeElementProfilePage请求参数结构体
      class DescribeElementProfilePageRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeElementProfilePage返回参数结构体
      class DescribeElementProfilePageResponse < TencentCloud::Common::AbstractModel
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

      # DescribeElementProfileTree请求参数结构体
      class DescribeElementProfileTreeRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeElementProfileTree返回参数结构体
      class DescribeElementProfileTreeResponse < TencentCloud::Common::AbstractModel
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

      # DescribeEventList请求参数结构体
      class DescribeEventListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeEventList返回参数结构体
      class DescribeEventListResponse < TencentCloud::Common::AbstractModel
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

      # DescribeFileDownloadURL请求参数结构体
      class DescribeFileDownloadURLRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeFileDownloadURL返回参数结构体
      class DescribeFileDownloadURLResponse < TencentCloud::Common::AbstractModel
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

      # DescribeFileUploadURL请求参数结构体
      class DescribeFileUploadURLRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeFileUploadURL返回参数结构体
      class DescribeFileUploadURLResponse < TencentCloud::Common::AbstractModel
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

      # DescribeInterfaceList请求参数结构体
      class DescribeInterfaceListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeInterfaceList返回参数结构体
      class DescribeInterfaceListResponse < TencentCloud::Common::AbstractModel
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

      # DescribeLinkRuleList请求参数结构体
      class DescribeLinkRuleListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeLinkRuleList返回参数结构体
      class DescribeLinkRuleListResponse < TencentCloud::Common::AbstractModel
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

      # DescribeModelList请求参数结构体
      class DescribeModelListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeModelList返回参数结构体
      class DescribeModelListResponse < TencentCloud::Common::AbstractModel
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

      # DescribeProductList请求参数结构体
      class DescribeProductListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeProductList返回参数结构体
      class DescribeProductListResponse < TencentCloud::Common::AbstractModel
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

      # DescribePropertyList请求参数结构体
      class DescribePropertyListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribePropertyList返回参数结构体
      class DescribePropertyListResponse < TencentCloud::Common::AbstractModel
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

      # DescribeRuleDetail请求参数结构体
      class DescribeRuleDetailRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeRuleDetail返回参数结构体
      class DescribeRuleDetailResponse < TencentCloud::Common::AbstractModel
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

      # DescribeSceneList请求参数结构体
      class DescribeSceneListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeSceneList返回参数结构体
      class DescribeSceneListResponse < TencentCloud::Common::AbstractModel
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

      # DescribeSpaceDeviceIdList请求参数结构体
      class DescribeSpaceDeviceIdListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeSpaceDeviceIdList返回参数结构体
      class DescribeSpaceDeviceIdListResponse < TencentCloud::Common::AbstractModel
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

      # DescribeSpaceDeviceRelationList请求参数结构体
      class DescribeSpaceDeviceRelationListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeSpaceDeviceRelationList返回参数结构体
      class DescribeSpaceDeviceRelationListResponse < TencentCloud::Common::AbstractModel
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

      # DescribeSpaceInfoByDeviceId请求参数结构体
      class DescribeSpaceInfoByDeviceIdRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeSpaceInfoByDeviceId返回参数结构体
      class DescribeSpaceInfoByDeviceIdResponse < TencentCloud::Common::AbstractModel
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

      # DescribeSpaceRelationByDeviceId请求参数结构体
      class DescribeSpaceRelationByDeviceIdRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeSpaceRelationByDeviceId返回参数结构体
      class DescribeSpaceRelationByDeviceIdResponse < TencentCloud::Common::AbstractModel
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

      # DescribeSpaceTypeList请求参数结构体
      class DescribeSpaceTypeListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeSpaceTypeList返回参数结构体
      class DescribeSpaceTypeListResponse < TencentCloud::Common::AbstractModel
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

      # DescribeTenantBuildingCountAndArea请求参数结构体
      class DescribeTenantBuildingCountAndAreaRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeTenantBuildingCountAndArea返回参数结构体
      class DescribeTenantBuildingCountAndAreaResponse < TencentCloud::Common::AbstractModel
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

      # DescribeTenantDepartmentList请求参数结构体
      class DescribeTenantDepartmentListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 翻页页码
        # @type Offset: Integer
        # @param Limit: 翻页大小
        # @type Limit: Integer
        # @param ApplicationToken: token
        # @type ApplicationToken: String
        # @param TenantId: 租户ID
        # @type TenantId: String
        # @param UpdateAt: 更新时间戳，单位秒
        # @type UpdateAt: Integer
        # @param DepartmentId: 部门ID
        # @type DepartmentId: String
        # @param Cursor: 用户id
        # @type Cursor: String

        attr_accessor :Offset, :Limit, :ApplicationToken, :TenantId, :UpdateAt, :DepartmentId, :Cursor

        def initialize(offset=nil, limit=nil, applicationtoken=nil, tenantid=nil, updateat=nil, departmentid=nil, cursor=nil)
          @Offset = offset
          @Limit = limit
          @ApplicationToken = applicationtoken
          @TenantId = tenantid
          @UpdateAt = updateat
          @DepartmentId = departmentid
          @Cursor = cursor
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ApplicationToken = params['ApplicationToken']
          @TenantId = params['TenantId']
          @UpdateAt = params['UpdateAt']
          @DepartmentId = params['DepartmentId']
          @Cursor = params['Cursor']
        end
      end

      # DescribeTenantDepartmentList返回参数结构体
      class DescribeTenantDepartmentListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回数据
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.SsoDepartmentsResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = SsoDepartmentsResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTenantUserList请求参数结构体
      class DescribeTenantUserListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 翻页页码
        # @type Offset: Integer
        # @param Limit: 翻页大小
        # @type Limit: Integer
        # @param ApplicationToken: token
        # @type ApplicationToken: String
        # @param TenantId: 租户ID
        # @type TenantId: String
        # @param UpdateAt: 更新时间戳，单位秒
        # @type UpdateAt: Integer
        # @param DepartmentId: 部门ID
        # @type DepartmentId: String
        # @param Cursor: 用户id
        # @type Cursor: String
        # @param Status: 状态，0，获取所有数据，1正常启用，2禁用
        # @type Status: Integer
        # @param WorkspaceId: 项目空间id
        # @type WorkspaceId: String
        # @param Keyword: 关键词
        # @type Keyword: String
        # @param NoRecursive: 是否递归获取子级数据，0需要，1不需要，默认为0
        # @type NoRecursive: String

        attr_accessor :Offset, :Limit, :ApplicationToken, :TenantId, :UpdateAt, :DepartmentId, :Cursor, :Status, :WorkspaceId, :Keyword, :NoRecursive

        def initialize(offset=nil, limit=nil, applicationtoken=nil, tenantid=nil, updateat=nil, departmentid=nil, cursor=nil, status=nil, workspaceid=nil, keyword=nil, norecursive=nil)
          @Offset = offset
          @Limit = limit
          @ApplicationToken = applicationtoken
          @TenantId = tenantid
          @UpdateAt = updateat
          @DepartmentId = departmentid
          @Cursor = cursor
          @Status = status
          @WorkspaceId = workspaceid
          @Keyword = keyword
          @NoRecursive = norecursive
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ApplicationToken = params['ApplicationToken']
          @TenantId = params['TenantId']
          @UpdateAt = params['UpdateAt']
          @DepartmentId = params['DepartmentId']
          @Cursor = params['Cursor']
          @Status = params['Status']
          @WorkspaceId = params['WorkspaceId']
          @Keyword = params['Keyword']
          @NoRecursive = params['NoRecursive']
        end
      end

      # DescribeTenantUserList返回参数结构体
      class DescribeTenantUserListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回数据
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.SsoUserResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = SsoUserResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVideoCloudRecord请求参数结构体
      class DescribeVideoCloudRecordRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeVideoCloudRecord返回参数结构体
      class DescribeVideoCloudRecordResponse < TencentCloud::Common::AbstractModel
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

      # DescribeVideoLiveStream请求参数结构体
      class DescribeVideoLiveStreamRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeVideoLiveStream返回参数结构体
      class DescribeVideoLiveStreamResponse < TencentCloud::Common::AbstractModel
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

      # DescribeVideoRecordStream请求参数结构体
      class DescribeVideoRecordStreamRequest < TencentCloud::Common::AbstractModel
        # @param WID: 设备唯一标识
        # @type WID: String
        # @param Protocol: 枚举如下：
        # flvsh
        # rtmp
        # hls
        # webrtc
        # raw (视频原始帧)
        # @type Protocol: String
        # @param StartTime: 开始时间（精确到毫秒）
        # @type StartTime: Integer
        # @param EndTime: 结束时间（精确到毫秒）
        # @type EndTime: Integer
        # @param PlayBackRate: 倍速 0.5、1、2、4
        # @type PlayBackRate: Float
        # @param WorkspaceId: 工作空间id
        # @type WorkspaceId: Integer
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param Stream: 流的唯一标识，播放链接尾缀
        # @type Stream: String
        # @param Env: 公有云私有化项目传0或者不传；混合云项目一般传空间id
        # @type Env: String

        attr_accessor :WID, :Protocol, :StartTime, :EndTime, :PlayBackRate, :WorkspaceId, :ApplicationToken, :Stream, :Env

        def initialize(wid=nil, protocol=nil, starttime=nil, endtime=nil, playbackrate=nil, workspaceid=nil, applicationtoken=nil, stream=nil, env=nil)
          @WID = wid
          @Protocol = protocol
          @StartTime = starttime
          @EndTime = endtime
          @PlayBackRate = playbackrate
          @WorkspaceId = workspaceid
          @ApplicationToken = applicationtoken
          @Stream = stream
          @Env = env
        end

        def deserialize(params)
          @WID = params['WID']
          @Protocol = params['Protocol']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PlayBackRate = params['PlayBackRate']
          @WorkspaceId = params['WorkspaceId']
          @ApplicationToken = params['ApplicationToken']
          @Stream = params['Stream']
          @Env = params['Env']
        end
      end

      # DescribeVideoRecordStream返回参数结构体
      class DescribeVideoRecordStreamResponse < TencentCloud::Common::AbstractModel
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

      # DescribeWorkSpaceBuildingCountAndArea请求参数结构体
      class DescribeWorkSpaceBuildingCountAndAreaRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeWorkSpaceBuildingCountAndArea返回参数结构体
      class DescribeWorkSpaceBuildingCountAndAreaResponse < TencentCloud::Common::AbstractModel
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

      # DescribeWorkspaceList请求参数结构体
      class DescribeWorkspaceListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeWorkspaceList返回参数结构体
      class DescribeWorkspaceListResponse < TencentCloud::Common::AbstractModel
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

      # DescribeWorkspaceUserList请求参数结构体
      class DescribeWorkspaceUserListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 翻页页码
        # @type Offset: Integer
        # @param Limit: 翻页大小
        # @type Limit: Integer
        # @param WorkspaceId: 工作空间ID
        # @type WorkspaceId: String
        # @param ApplicationToken: token
        # @type ApplicationToken: String
        # @param TenantId: 租户ID
        # @type TenantId: String
        # @param UpdateAt: 更新时间戳，单位秒
        # @type UpdateAt: Integer

        attr_accessor :Offset, :Limit, :WorkspaceId, :ApplicationToken, :TenantId, :UpdateAt

        def initialize(offset=nil, limit=nil, workspaceid=nil, applicationtoken=nil, tenantid=nil, updateat=nil)
          @Offset = offset
          @Limit = limit
          @WorkspaceId = workspaceid
          @ApplicationToken = applicationtoken
          @TenantId = tenantid
          @UpdateAt = updateat
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @WorkspaceId = params['WorkspaceId']
          @ApplicationToken = params['ApplicationToken']
          @TenantId = params['TenantId']
          @UpdateAt = params['UpdateAt']
        end
      end

      # DescribeWorkspaceUserList返回参数结构体
      class DescribeWorkspaceUserListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回数据
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.SsoTeamUserResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = SsoTeamUserResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 设备影子信息
      class DeviceShadowInfo < TencentCloud::Common::AbstractModel
        # @param WID: 设备ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WID: String
        # @param DeviceShadow: 设备影子数据,返回有效数据为"x-json:"后字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceShadow: String
        # @param DeviceShadowUpdateTime: 设备影子更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceShadowUpdateTime: String

        attr_accessor :WID, :DeviceShadow, :DeviceShadowUpdateTime

        def initialize(wid=nil, deviceshadow=nil, deviceshadowupdatetime=nil)
          @WID = wid
          @DeviceShadow = deviceshadow
          @DeviceShadowUpdateTime = deviceshadowupdatetime
        end

        def deserialize(params)
          @WID = params['WID']
          @DeviceShadow = params['DeviceShadow']
          @DeviceShadowUpdateTime = params['DeviceShadowUpdateTime']
        end
      end

      # 设备影子查询列表
      class DeviceShadowRes < TencentCloud::Common::AbstractModel
        # @param PageNumber: 第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 每页条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param TotalPage: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPage: Integer
        # @param TotalRow: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalRow: Integer
        # @param Set: 设备影子列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Set: Array

        attr_accessor :PageNumber, :PageSize, :TotalPage, :TotalRow, :Set

        def initialize(pagenumber=nil, pagesize=nil, totalpage=nil, totalrow=nil, set=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalPage = totalpage
          @TotalRow = totalrow
          @Set = set
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalPage = params['TotalPage']
          @TotalRow = params['TotalRow']
          unless params['Set'].nil?
            @Set = []
            params['Set'].each do |i|
              deviceshadowinfo_tmp = DeviceShadowInfo.new
              deviceshadowinfo_tmp.deserialize(i)
              @Set << deviceshadowinfo_tmp
            end
          end
        end
      end

      # ModifyDeviceName请求参数结构体
      class ModifyDeviceNameRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ModifyDeviceName返回参数结构体
      class ModifyDeviceNameResponse < TencentCloud::Common::AbstractModel
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

      # ReportAppMessage请求参数结构体
      class ReportAppMessageRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ReportAppMessage返回参数结构体
      class ReportAppMessageResponse < TencentCloud::Common::AbstractModel
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

      # 部门用户
      class SsoDepartment < TencentCloud::Common::AbstractModel
        # @param DepartmentId: 部门ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DepartmentId: String
        # @param Name: 部门名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param ParentDepartmentId: 父级部门ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentDepartmentId: String

        attr_accessor :DepartmentId, :Name, :ParentDepartmentId

        def initialize(departmentid=nil, name=nil, parentdepartmentid=nil)
          @DepartmentId = departmentid
          @Name = name
          @ParentDepartmentId = parentdepartmentid
        end

        def deserialize(params)
          @DepartmentId = params['DepartmentId']
          @Name = params['Name']
          @ParentDepartmentId = params['ParentDepartmentId']
        end
      end

      # 部门用户结果
      class SsoDepartmentsResult < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Departments: 部门列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Departments: Array

        attr_accessor :Total, :Departments

        def initialize(total=nil, departments=nil)
          @Total = total
          @Departments = departments
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Departments'].nil?
            @Departments = []
            params['Departments'].each do |i|
              ssodepartment_tmp = SsoDepartment.new
              ssodepartment_tmp.deserialize(i)
              @Departments << ssodepartment_tmp
            end
          end
        end
      end

      # 部门用户
      class SsoTeamUser < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param RealName: 用户名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealName: String
        # @param UserType: 用户类型，1-超级管理员；2-1号管理员；3-普通管理员；99-普通用户
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserType: String
        # @param TenantId: 所属租户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TenantId: String
        # @param Email: 邮箱
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Email: String
        # @param Phone: 电话
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Phone: String
        # @param Status: 用户状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param CreateAt: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateAt: Integer
        # @param DepartmentId: 部门ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DepartmentId: String
        # @param DepartmentName: 部门名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DepartmentName: String
        # @param LinkFilter: 是否关联权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LinkFilter: Integer

        attr_accessor :UserId, :RealName, :UserType, :TenantId, :Email, :Phone, :Status, :CreateAt, :DepartmentId, :DepartmentName, :LinkFilter

        def initialize(userid=nil, realname=nil, usertype=nil, tenantid=nil, email=nil, phone=nil, status=nil, createat=nil, departmentid=nil, departmentname=nil, linkfilter=nil)
          @UserId = userid
          @RealName = realname
          @UserType = usertype
          @TenantId = tenantid
          @Email = email
          @Phone = phone
          @Status = status
          @CreateAt = createat
          @DepartmentId = departmentid
          @DepartmentName = departmentname
          @LinkFilter = linkfilter
        end

        def deserialize(params)
          @UserId = params['UserId']
          @RealName = params['RealName']
          @UserType = params['UserType']
          @TenantId = params['TenantId']
          @Email = params['Email']
          @Phone = params['Phone']
          @Status = params['Status']
          @CreateAt = params['CreateAt']
          @DepartmentId = params['DepartmentId']
          @DepartmentName = params['DepartmentName']
          @LinkFilter = params['LinkFilter']
        end
      end

      # 空间用户结果
      class SsoTeamUserResult < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Users: 部门用户列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Users: Array

        attr_accessor :Total, :Users

        def initialize(total=nil, users=nil)
          @Total = total
          @Users = users
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Users'].nil?
            @Users = []
            params['Users'].each do |i|
              ssoteamuser_tmp = SsoTeamUser.new
              ssoteamuser_tmp.deserialize(i)
              @Users << ssoteamuser_tmp
            end
          end
        end
      end

      # 用户结果
      class SsoUser < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param UserName: 用户昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param RealName: 用户名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealName: String
        # @param UserType: 用户类型，1-超级管理员；2-1号管理员；3-普通管理员；99-普通用户
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserType: String
        # @param TenantId: 所属租户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TenantId: String
        # @param UserGroup: 所属组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserGroup: String
        # @param Email: 邮箱
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Email: String
        # @param Phone: 电话
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Phone: String
        # @param Status: 用户状态，0待审核，1正常启用，2禁用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param CreateAt: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateAt: Integer
        # @param UpdateAt: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateAt: Integer
        # @param BelongTeam: 是否属于团队，0不可用，1属于，2不属
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BelongTeam: Integer
        # @param DepartmentId: 部门ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DepartmentId: String
        # @param DepartmentName: 部门名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DepartmentName: String
        # @param DepartmentUserId: 子账户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DepartmentUserId: Integer
        # @param Password: 密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String

        attr_accessor :UserId, :UserName, :RealName, :UserType, :TenantId, :UserGroup, :Email, :Phone, :Status, :CreateAt, :UpdateAt, :BelongTeam, :DepartmentId, :DepartmentName, :DepartmentUserId, :Password

        def initialize(userid=nil, username=nil, realname=nil, usertype=nil, tenantid=nil, usergroup=nil, email=nil, phone=nil, status=nil, createat=nil, updateat=nil, belongteam=nil, departmentid=nil, departmentname=nil, departmentuserid=nil, password=nil)
          @UserId = userid
          @UserName = username
          @RealName = realname
          @UserType = usertype
          @TenantId = tenantid
          @UserGroup = usergroup
          @Email = email
          @Phone = phone
          @Status = status
          @CreateAt = createat
          @UpdateAt = updateat
          @BelongTeam = belongteam
          @DepartmentId = departmentid
          @DepartmentName = departmentname
          @DepartmentUserId = departmentuserid
          @Password = password
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserName = params['UserName']
          @RealName = params['RealName']
          @UserType = params['UserType']
          @TenantId = params['TenantId']
          @UserGroup = params['UserGroup']
          @Email = params['Email']
          @Phone = params['Phone']
          @Status = params['Status']
          @CreateAt = params['CreateAt']
          @UpdateAt = params['UpdateAt']
          @BelongTeam = params['BelongTeam']
          @DepartmentId = params['DepartmentId']
          @DepartmentName = params['DepartmentName']
          @DepartmentUserId = params['DepartmentUserId']
          @Password = params['Password']
        end
      end

      # 租户人员结果
      class SsoUserResult < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Users: 租户人员数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Users: Array

        attr_accessor :Total, :Users

        def initialize(total=nil, users=nil)
          @Total = total
          @Users = users
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Users'].nil?
            @Users = []
            params['Users'].each do |i|
              ssouser_tmp = SsoUser.new
              ssouser_tmp.deserialize(i)
              @Users << ssouser_tmp
            end
          end
        end
      end

      # StopVideoStreaming请求参数结构体
      class StopVideoStreamingRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # StopVideoStreaming返回参数结构体
      class StopVideoStreamingResponse < TencentCloud::Common::AbstractModel
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

      # UpdateWorkspaceParkAttributes请求参数结构体
      class UpdateWorkspaceParkAttributesRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # UpdateWorkspaceParkAttributes返回参数结构体
      class UpdateWorkspaceParkAttributesResponse < TencentCloud::Common::AbstractModel
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

