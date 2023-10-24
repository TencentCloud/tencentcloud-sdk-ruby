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
  module Cdwpg
    module V20201230
      # 磁盘规格
      class CBSSpec < TencentCloud::Common::AbstractModel
        # @param DiskType: 盘类型
        # @type DiskType: String
        # @param DiskSize: 大小
        # @type DiskSize: Integer
        # @param DiskCount: 个数
        # @type DiskCount: Integer

        attr_accessor :DiskType, :DiskSize, :DiskCount

        def initialize(disktype=nil, disksize=nil, diskcount=nil)
          @DiskType = disktype
          @DiskSize = disksize
          @DiskCount = diskcount
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @DiskCount = params['DiskCount']
        end
      end

      # 磁盘信息
      class CBSSpecInfo < TencentCloud::Common::AbstractModel
        # @param DiskType: 盘类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskType: String
        # @param DiskSize: 大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskSize: Integer
        # @param DiskCount: 个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskCount: Integer

        attr_accessor :DiskType, :DiskSize, :DiskCount

        def initialize(disktype=nil, disksize=nil, diskcount=nil)
          @DiskType = disktype
          @DiskSize = disksize
          @DiskCount = diskcount
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @DiskCount = params['DiskCount']
        end
      end

      # 计费时间参数
      class ChargeProperties < TencentCloud::Common::AbstractModel
        # @param RenewFlag: 1-需要自动续期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: Integer
        # @param TimeSpan: 订单时间范围
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeSpan: Integer
        # @param TimeUnit: 时间单位，一般为h和m
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeUnit: String
        # @param PayMode: 计费类型0-按量计费，1-包年包月
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: Integer
        # @param ChargeType: PREPAID、POSTPAID_BY_HOUR
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChargeType: String

        attr_accessor :RenewFlag, :TimeSpan, :TimeUnit, :PayMode, :ChargeType

        def initialize(renewflag=nil, timespan=nil, timeunit=nil, paymode=nil, chargetype=nil)
          @RenewFlag = renewflag
          @TimeSpan = timespan
          @TimeUnit = timeunit
          @PayMode = paymode
          @ChargeType = chargetype
        end

        def deserialize(params)
          @RenewFlag = params['RenewFlag']
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
          @PayMode = params['PayMode']
          @ChargeType = params['ChargeType']
        end
      end

      # CreateInstanceByApi请求参数结构体
      class CreateInstanceByApiRequest < TencentCloud::Common::AbstractModel
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param UserVPCId: 私有网络
        # @type UserVPCId: String
        # @param UserSubnetId: 子网
        # @type UserSubnetId: String
        # @param ChargeProperties: 计费方式
        # @type ChargeProperties: :class:`Tencentcloud::Cdwpg.v20201230.models.ChargeProperties`
        # @param AdminPassword: 集群密码
        # @type AdminPassword: String
        # @param Resources: 资源信息
        # @type Resources: Array
        # @param Tags: 标签列表
        # @type Tags: :class:`Tencentcloud::Cdwpg.v20201230.models.Tag`

        attr_accessor :InstanceName, :Zone, :UserVPCId, :UserSubnetId, :ChargeProperties, :AdminPassword, :Resources, :Tags

        def initialize(instancename=nil, zone=nil, uservpcid=nil, usersubnetid=nil, chargeproperties=nil, adminpassword=nil, resources=nil, tags=nil)
          @InstanceName = instancename
          @Zone = zone
          @UserVPCId = uservpcid
          @UserSubnetId = usersubnetid
          @ChargeProperties = chargeproperties
          @AdminPassword = adminpassword
          @Resources = resources
          @Tags = tags
        end

        def deserialize(params)
          @InstanceName = params['InstanceName']
          @Zone = params['Zone']
          @UserVPCId = params['UserVPCId']
          @UserSubnetId = params['UserSubnetId']
          unless params['ChargeProperties'].nil?
            @ChargeProperties = ChargeProperties.new
            @ChargeProperties.deserialize(params['ChargeProperties'])
          end
          @AdminPassword = params['AdminPassword']
          unless params['Resources'].nil?
            @Resources = []
            params['Resources'].each do |i|
              resourcespecnew_tmp = ResourceSpecNew.new
              resourcespecnew_tmp.deserialize(i)
              @Resources << resourcespecnew_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = Tag.new
            @Tags.deserialize(params['Tags'])
          end
        end
      end

      # CreateInstanceByApi返回参数结构体
      class CreateInstanceByApiResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowId: String
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param ErrorMsg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :InstanceId, :ErrorMsg, :RequestId

        def initialize(flowid=nil, instanceid=nil, errormsg=nil, requestid=nil)
          @FlowId = flowid
          @InstanceId = instanceid
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @InstanceId = params['InstanceId']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceInfo请求参数结构体
      class DescribeInstanceInfoRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstanceInfo返回参数结构体
      class DescribeInstanceInfoResponse < TencentCloud::Common::AbstractModel
        # @param SimpleInstanceInfo: 1
        # @type SimpleInstanceInfo: :class:`Tencentcloud::Cdwpg.v20201230.models.SimpleInstanceInfo`
        # @param ErrorMsg: 1
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SimpleInstanceInfo, :ErrorMsg, :RequestId

        def initialize(simpleinstanceinfo=nil, errormsg=nil, requestid=nil)
          @SimpleInstanceInfo = simpleinstanceinfo
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SimpleInstanceInfo'].nil?
            @SimpleInstanceInfo = SimpleInstanceInfo.new
            @SimpleInstanceInfo.deserialize(params['SimpleInstanceInfo'])
          end
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstance请求参数结构体
      class DescribeInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstance返回参数结构体
      class DescribeInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceInfo: 实例描述信息
        # @type InstanceInfo: :class:`Tencentcloud::Cdwpg.v20201230.models.InstanceInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceInfo, :RequestId

        def initialize(instanceinfo=nil, requestid=nil)
          @InstanceInfo = instanceinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceInfo'].nil?
            @InstanceInfo = InstanceInfo.new
            @InstanceInfo.deserialize(params['InstanceInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceState请求参数结构体
      class DescribeInstanceStateRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例名称
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstanceState返回参数结构体
      class DescribeInstanceStateResponse < TencentCloud::Common::AbstractModel
        # @param InstanceState: 集群状态，例如：Serving
        # @type InstanceState: String
        # @param FlowCreateTime: 集群操作创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowCreateTime: String
        # @param FlowName: 集群操作名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowName: String
        # @param FlowProgress: 集群操作进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowProgress: Float
        # @param InstanceStateDesc: 集群状态描述，例如：运行中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceStateDesc: String
        # @param FlowMsg: 集群流程错误信息，例如：“创建失败，资源不足”
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowMsg: String
        # @param ProcessName: 当前步骤的名称，例如：”购买资源中“
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessName: String
        # @param BackupStatus: 集群备份任务开启状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupStatus: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceState, :FlowCreateTime, :FlowName, :FlowProgress, :InstanceStateDesc, :FlowMsg, :ProcessName, :BackupStatus, :RequestId

        def initialize(instancestate=nil, flowcreatetime=nil, flowname=nil, flowprogress=nil, instancestatedesc=nil, flowmsg=nil, processname=nil, backupstatus=nil, requestid=nil)
          @InstanceState = instancestate
          @FlowCreateTime = flowcreatetime
          @FlowName = flowname
          @FlowProgress = flowprogress
          @InstanceStateDesc = instancestatedesc
          @FlowMsg = flowmsg
          @ProcessName = processname
          @BackupStatus = backupstatus
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceState = params['InstanceState']
          @FlowCreateTime = params['FlowCreateTime']
          @FlowName = params['FlowName']
          @FlowProgress = params['FlowProgress']
          @InstanceStateDesc = params['InstanceStateDesc']
          @FlowMsg = params['FlowMsg']
          @ProcessName = params['ProcessName']
          @BackupStatus = params['BackupStatus']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param SearchInstanceId: 搜索的集群id名称
        # @type SearchInstanceId: String
        # @param SearchInstanceName: 搜索的集群name
        # @type SearchInstanceName: String
        # @param Offset: 分页参数，第一页为0，第二页为10
        # @type Offset: Integer
        # @param Limit: 分页参数，分页步长，默认为10
        # @type Limit: Integer
        # @param SearchTags: 搜索标签列表
        # @type SearchTags: Array

        attr_accessor :SearchInstanceId, :SearchInstanceName, :Offset, :Limit, :SearchTags

        def initialize(searchinstanceid=nil, searchinstancename=nil, offset=nil, limit=nil, searchtags=nil)
          @SearchInstanceId = searchinstanceid
          @SearchInstanceName = searchinstancename
          @Offset = offset
          @Limit = limit
          @SearchTags = searchtags
        end

        def deserialize(params)
          @SearchInstanceId = params['SearchInstanceId']
          @SearchInstanceName = params['SearchInstanceName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['SearchTags'].nil?
            @SearchTags = []
            params['SearchTags'].each do |i|
              searchtags_tmp = SearchTags.new
              searchtags_tmp.deserialize(i)
              @SearchTags << searchtags_tmp
            end
          end
        end
      end

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 实例总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param InstancesList: 实例数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstancesList: Array
        # @param ErrorMsg: -
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstancesList, :ErrorMsg, :RequestId

        def initialize(totalcount=nil, instanceslist=nil, errormsg=nil, requestid=nil)
          @TotalCount = totalcount
          @InstancesList = instanceslist
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstancesList'].nil?
            @InstancesList = []
            params['InstancesList'].each do |i|
              instanceinfo_tmp = InstanceInfo.new
              instanceinfo_tmp.deserialize(i)
              @InstancesList << instanceinfo_tmp
            end
          end
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSimpleInstances请求参数结构体
      class DescribeSimpleInstancesRequest < TencentCloud::Common::AbstractModel
        # @param SearchInstanceId: 11
        # @type SearchInstanceId: String
        # @param SearchInstanceName: 11
        # @type SearchInstanceName: String
        # @param Offset: 11
        # @type Offset: Integer
        # @param Limit: 11
        # @type Limit: Integer
        # @param SearchTags: 11
        # @type SearchTags: Array

        attr_accessor :SearchInstanceId, :SearchInstanceName, :Offset, :Limit, :SearchTags

        def initialize(searchinstanceid=nil, searchinstancename=nil, offset=nil, limit=nil, searchtags=nil)
          @SearchInstanceId = searchinstanceid
          @SearchInstanceName = searchinstancename
          @Offset = offset
          @Limit = limit
          @SearchTags = searchtags
        end

        def deserialize(params)
          @SearchInstanceId = params['SearchInstanceId']
          @SearchInstanceName = params['SearchInstanceName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchTags = params['SearchTags']
        end
      end

      # DescribeSimpleInstances返回参数结构体
      class DescribeSimpleInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param InstancesList: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstancesList: Array
        # @param ErrorMsg: -
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstancesList, :ErrorMsg, :RequestId

        def initialize(totalcount=nil, instanceslist=nil, errormsg=nil, requestid=nil)
          @TotalCount = totalcount
          @InstancesList = instanceslist
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstancesList'].nil?
            @InstancesList = []
            params['InstancesList'].each do |i|
              instancesimpleinfonew_tmp = InstanceSimpleInfoNew.new
              instancesimpleinfonew_tmp.deserialize(i)
              @InstancesList << instancesimpleinfonew_tmp
            end
          end
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DestroyInstanceByApi请求参数结构体
      class DestroyInstanceByApiRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例名称，例如"cdwpg-xxxx"
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DestroyInstanceByApi返回参数结构体
      class DestroyInstanceByApiResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 销毁流程Id
        # @type FlowId: String
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :ErrorMsg, :RequestId

        def initialize(flowid=nil, errormsg=nil, requestid=nil)
          @FlowId = flowid
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # 云原生实例详情
      class InstanceInfo < TencentCloud::Common::AbstractModel
        # @param ID: ID值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: Integer
        # @param InstanceType: cdwpg-cn或者其他
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param InstanceName: cdwpg-cn或者其他
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param Status: Running
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param StatusDesc: 运行中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusDesc: String
        # @param InstanceStateInfo: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceStateInfo: :class:`Tencentcloud::Cdwpg.v20201230.models.InstanceStateInfo`
        # @param InstanceID: -
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceID: String
        # @param CreateTime: 2022-09-05 20:00:01
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param Region: ap-chongqing
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Zone: ap
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param RegionDesc: region
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionDesc: String
        # @param ZoneDesc: zone
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneDesc: String
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Version: v3
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param Charset: 字符集
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Charset: String
        # @param EngineVersion: 引擎版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EngineVersion: String
        # @param GTMNodes: GTM节点列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GTMNodes: Array
        # @param CNNodes: CN节点列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CNNodes: Array
        # @param DNNodes: DN节点列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DNNodes: Array
        # @param BackupStorage: 备份存储
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupStorage: Array
        # @param FNNodes: FN节点列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FNNodes: Array

        attr_accessor :ID, :InstanceType, :InstanceName, :Status, :StatusDesc, :InstanceStateInfo, :InstanceID, :CreateTime, :Region, :Zone, :RegionDesc, :ZoneDesc, :Tags, :Version, :Charset, :EngineVersion, :GTMNodes, :CNNodes, :DNNodes, :BackupStorage, :FNNodes

        def initialize(id=nil, instancetype=nil, instancename=nil, status=nil, statusdesc=nil, instancestateinfo=nil, instanceid=nil, createtime=nil, region=nil, zone=nil, regiondesc=nil, zonedesc=nil, tags=nil, version=nil, charset=nil, engineversion=nil, gtmnodes=nil, cnnodes=nil, dnnodes=nil, backupstorage=nil, fnnodes=nil)
          @ID = id
          @InstanceType = instancetype
          @InstanceName = instancename
          @Status = status
          @StatusDesc = statusdesc
          @InstanceStateInfo = instancestateinfo
          @InstanceID = instanceid
          @CreateTime = createtime
          @Region = region
          @Zone = zone
          @RegionDesc = regiondesc
          @ZoneDesc = zonedesc
          @Tags = tags
          @Version = version
          @Charset = charset
          @EngineVersion = engineversion
          @GTMNodes = gtmnodes
          @CNNodes = cnnodes
          @DNNodes = dnnodes
          @BackupStorage = backupstorage
          @FNNodes = fnnodes
        end

        def deserialize(params)
          @ID = params['ID']
          @InstanceType = params['InstanceType']
          @InstanceName = params['InstanceName']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          unless params['InstanceStateInfo'].nil?
            @InstanceStateInfo = InstanceStateInfo.new
            @InstanceStateInfo.deserialize(params['InstanceStateInfo'])
          end
          @InstanceID = params['InstanceID']
          @CreateTime = params['CreateTime']
          @Region = params['Region']
          @Zone = params['Zone']
          @RegionDesc = params['RegionDesc']
          @ZoneDesc = params['ZoneDesc']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @Version = params['Version']
          @Charset = params['Charset']
          @EngineVersion = params['EngineVersion']
          unless params['GTMNodes'].nil?
            @GTMNodes = []
            params['GTMNodes'].each do |i|
              instancenodegroup_tmp = InstanceNodeGroup.new
              instancenodegroup_tmp.deserialize(i)
              @GTMNodes << instancenodegroup_tmp
            end
          end
          unless params['CNNodes'].nil?
            @CNNodes = []
            params['CNNodes'].each do |i|
              instancenodegroup_tmp = InstanceNodeGroup.new
              instancenodegroup_tmp.deserialize(i)
              @CNNodes << instancenodegroup_tmp
            end
          end
          unless params['DNNodes'].nil?
            @DNNodes = []
            params['DNNodes'].each do |i|
              instancenodegroup_tmp = InstanceNodeGroup.new
              instancenodegroup_tmp.deserialize(i)
              @DNNodes << instancenodegroup_tmp
            end
          end
          unless params['BackupStorage'].nil?
            @BackupStorage = []
            params['BackupStorage'].each do |i|
              instancenodegroup_tmp = InstanceNodeGroup.new
              instancenodegroup_tmp.deserialize(i)
              @BackupStorage << instancenodegroup_tmp
            end
          end
          unless params['FNNodes'].nil?
            @FNNodes = []
            params['FNNodes'].each do |i|
              instancenodegroup_tmp = InstanceNodeGroup.new
              instancenodegroup_tmp.deserialize(i)
              @FNNodes << instancenodegroup_tmp
            end
          end
        end
      end

      # 集群节点信息
      class InstanceNodeGroup < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # 精简集群信息
      class InstanceSimpleInfoNew < TencentCloud::Common::AbstractModel
        # @param ID: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: Integer
        # @param InstanceId: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceName: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param Version: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param Region: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param RegionId: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: Integer
        # @param RegionDesc: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionDesc: String
        # @param Zone: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param ZoneId: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: Integer
        # @param ZoneDesc: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneDesc: String
        # @param VpcId: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param CreateTime: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ExpireTime: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param AccessInfo: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessInfo: String
        # @param PayMode: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: String
        # @param RenewFlag: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: Boolean

        attr_accessor :ID, :InstanceId, :InstanceName, :Version, :Region, :RegionId, :RegionDesc, :Zone, :ZoneId, :ZoneDesc, :VpcId, :SubnetId, :CreateTime, :ExpireTime, :AccessInfo, :PayMode, :RenewFlag

        def initialize(id=nil, instanceid=nil, instancename=nil, version=nil, region=nil, regionid=nil, regiondesc=nil, zone=nil, zoneid=nil, zonedesc=nil, vpcid=nil, subnetid=nil, createtime=nil, expiretime=nil, accessinfo=nil, paymode=nil, renewflag=nil)
          @ID = id
          @InstanceId = instanceid
          @InstanceName = instancename
          @Version = version
          @Region = region
          @RegionId = regionid
          @RegionDesc = regiondesc
          @Zone = zone
          @ZoneId = zoneid
          @ZoneDesc = zonedesc
          @VpcId = vpcid
          @SubnetId = subnetid
          @CreateTime = createtime
          @ExpireTime = expiretime
          @AccessInfo = accessinfo
          @PayMode = paymode
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @ID = params['ID']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Version = params['Version']
          @Region = params['Region']
          @RegionId = params['RegionId']
          @RegionDesc = params['RegionDesc']
          @Zone = params['Zone']
          @ZoneId = params['ZoneId']
          @ZoneDesc = params['ZoneDesc']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
          @AccessInfo = params['AccessInfo']
          @PayMode = params['PayMode']
          @RenewFlag = params['RenewFlag']
        end
      end

      # 集群状态抽象后的结构体
      class InstanceStateInfo < TencentCloud::Common::AbstractModel
        # @param InstanceState: 集群状态，例如：Serving
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceState: String
        # @param FlowCreateTime: 集群操作创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowCreateTime: String
        # @param FlowName: 集群操作名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowName: String
        # @param FlowProgress: 集群操作进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowProgress: Integer
        # @param InstanceStateDesc: 集群状态描述，例如：运行中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceStateDesc: String
        # @param FlowMsg: 集群流程错误信息，例如：“创建失败，资源不足”
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowMsg: String
        # @param ProcessName: 当前步骤的名称，例如：”购买资源中“
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessName: String
        # @param BackupStatus: 集群是否有备份中任务，有为1,无为0
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupStatus: Integer
        # @param RequestId: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestId: String
        # @param BackupOpenStatus: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupOpenStatus: Integer

        attr_accessor :InstanceState, :FlowCreateTime, :FlowName, :FlowProgress, :InstanceStateDesc, :FlowMsg, :ProcessName, :BackupStatus, :RequestId, :BackupOpenStatus

        def initialize(instancestate=nil, flowcreatetime=nil, flowname=nil, flowprogress=nil, instancestatedesc=nil, flowmsg=nil, processname=nil, backupstatus=nil, requestid=nil, backupopenstatus=nil)
          @InstanceState = instancestate
          @FlowCreateTime = flowcreatetime
          @FlowName = flowname
          @FlowProgress = flowprogress
          @InstanceStateDesc = instancestatedesc
          @FlowMsg = flowmsg
          @ProcessName = processname
          @BackupStatus = backupstatus
          @RequestId = requestid
          @BackupOpenStatus = backupopenstatus
        end

        def deserialize(params)
          @InstanceState = params['InstanceState']
          @FlowCreateTime = params['FlowCreateTime']
          @FlowName = params['FlowName']
          @FlowProgress = params['FlowProgress']
          @InstanceStateDesc = params['InstanceStateDesc']
          @FlowMsg = params['FlowMsg']
          @ProcessName = params['ProcessName']
          @BackupStatus = params['BackupStatus']
          @RequestId = params['RequestId']
          @BackupOpenStatus = params['BackupOpenStatus']
        end
      end

      # ModifyInstance请求参数结构体
      class ModifyInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param InstanceName: 新修改的实例名称
        # @type InstanceName: String

        attr_accessor :InstanceId, :InstanceName

        def initialize(instanceid=nil, instancename=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
        end
      end

      # ModifyInstance返回参数结构体
      class ModifyInstanceResponse < TencentCloud::Common::AbstractModel
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

      # 资源信息
      class ResourceInfo < TencentCloud::Common::AbstractModel
        # @param SpecName: 资源名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecName: String
        # @param Count: 资源数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer
        # @param DiskSpec: 磁盘信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskSpec: :class:`Tencentcloud::Cdwpg.v20201230.models.CBSSpecInfo`
        # @param Type: 资源类型，DATA
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String

        attr_accessor :SpecName, :Count, :DiskSpec, :Type

        def initialize(specname=nil, count=nil, diskspec=nil, type=nil)
          @SpecName = specname
          @Count = count
          @DiskSpec = diskspec
          @Type = type
        end

        def deserialize(params)
          @SpecName = params['SpecName']
          @Count = params['Count']
          unless params['DiskSpec'].nil?
            @DiskSpec = CBSSpecInfo.new
            @DiskSpec.deserialize(params['DiskSpec'])
          end
          @Type = params['Type']
        end
      end

      # 资源规格
      class ResourceSpecNew < TencentCloud::Common::AbstractModel
        # @param SpecName: 资源名称
        # @type SpecName: String
        # @param Count: 资源数
        # @type Count: Integer
        # @param DiskSpec: 磁盘信息
        # @type DiskSpec: :class:`Tencentcloud::Cdwpg.v20201230.models.CBSSpec`
        # @param Type: 资源类型，DATA
        # @type Type: String

        attr_accessor :SpecName, :Count, :DiskSpec, :Type

        def initialize(specname=nil, count=nil, diskspec=nil, type=nil)
          @SpecName = specname
          @Count = count
          @DiskSpec = diskspec
          @Type = type
        end

        def deserialize(params)
          @SpecName = params['SpecName']
          @Count = params['Count']
          unless params['DiskSpec'].nil?
            @DiskSpec = CBSSpec.new
            @DiskSpec.deserialize(params['DiskSpec'])
          end
          @Type = params['Type']
        end
      end

      # 列表页搜索的标记列表
      class SearchTags < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签的键
        # @type TagKey: String
        # @param TagValue: 标签的值
        # @type TagValue: String
        # @param AllValue: 1表示只输入标签的键，没有输入值；0表示输入键时且输入值
        # @type AllValue: Integer

        attr_accessor :TagKey, :TagValue, :AllValue

        def initialize(tagkey=nil, tagvalue=nil, allvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
          @AllValue = allvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
          @AllValue = params['AllValue']
        end
      end

      # 集群信息
      class SimpleInstanceInfo < TencentCloud::Common::AbstractModel
        # @param ID: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: Integer
        # @param InstanceId: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceName: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param Version: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param Region: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Zone: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param UserVPCID: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserVPCID: String
        # @param UserSubnetID: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserSubnetID: String
        # @param CreateTime: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ExpireTime: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param AccessInfo: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessInfo: String
        # @param RenewFlag: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: Integer
        # @param ChargeProperties: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChargeProperties: :class:`Tencentcloud::Cdwpg.v20201230.models.ChargeProperties`
        # @param Resources: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resources: Array
        # @param Tags: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Status: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer

        attr_accessor :ID, :InstanceId, :InstanceName, :Version, :Region, :Zone, :UserVPCID, :UserSubnetID, :CreateTime, :ExpireTime, :AccessInfo, :RenewFlag, :ChargeProperties, :Resources, :Tags, :Status

        def initialize(id=nil, instanceid=nil, instancename=nil, version=nil, region=nil, zone=nil, uservpcid=nil, usersubnetid=nil, createtime=nil, expiretime=nil, accessinfo=nil, renewflag=nil, chargeproperties=nil, resources=nil, tags=nil, status=nil)
          @ID = id
          @InstanceId = instanceid
          @InstanceName = instancename
          @Version = version
          @Region = region
          @Zone = zone
          @UserVPCID = uservpcid
          @UserSubnetID = usersubnetid
          @CreateTime = createtime
          @ExpireTime = expiretime
          @AccessInfo = accessinfo
          @RenewFlag = renewflag
          @ChargeProperties = chargeproperties
          @Resources = resources
          @Tags = tags
          @Status = status
        end

        def deserialize(params)
          @ID = params['ID']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Version = params['Version']
          @Region = params['Region']
          @Zone = params['Zone']
          @UserVPCID = params['UserVPCID']
          @UserSubnetID = params['UserSubnetID']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
          @AccessInfo = params['AccessInfo']
          @RenewFlag = params['RenewFlag']
          unless params['ChargeProperties'].nil?
            @ChargeProperties = ChargeProperties.new
            @ChargeProperties.deserialize(params['ChargeProperties'])
          end
          unless params['Resources'].nil?
            @Resources = []
            params['Resources'].each do |i|
              resourceinfo_tmp = ResourceInfo.new
              resourceinfo_tmp.deserialize(i)
              @Resources << resourceinfo_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @Status = params['Status']
        end
      end

      # 标签描述
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签的键
        # @type TagKey: String
        # @param TagValue: 标签的值
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue

        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

    end
  end
end

