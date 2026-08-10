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
  module Cds
    module V20180420
      # 资产列表数组
      class AssetsInfo < TencentCloud::Common::AbstractModel
        # @param AddTime: <p>创建时间</p>
        # @type AddTime: Integer
        # @param Aid: <p>资产 ID</p>
        # @type Aid: Integer
        # @param AssetsIp: <p>数据资产 IP</p>
        # @type AssetsIp: String
        # @param AssetsName: <p>数据资产名称</p>
        # @type AssetsName: String
        # @param AssetsPort: <p>数据资产端口</p>
        # @type AssetsPort: Integer
        # @param AssetsType: <p>数据资产类型</p>
        # @type AssetsType: String
        # @param AssetsVersion: <p>资产版本</p>
        # @type AssetsVersion: String
        # @param AssetsAddType: <p>是否动态</p>
        # @type AssetsAddType: Integer
        # @param Status: <p>是否删除</p>
        # @type Status: Integer
        # @param UpdateTime: <p>最后一次修改时间</p>
        # @type UpdateTime: Integer
        # @param VpcId: <p>资产的vpc</p>
        # @type VpcId: String
        # @param RegionId: <p>地域</p>
        # @type RegionId: String
        # @param Permission: <p>审计权限</p>
        # @type Permission: Integer
        # @param InstanceId: <p>实例ID</p>
        # @type InstanceId: String
        # @param InstanceName: <p>实例名称</p>
        # @type InstanceName: String
        # @param AddType: <p>用来区分自建资产是已通过cvm还是添加ip的方式</p>
        # @type AddType: Integer
        # @param AssetSubnetId: <p>子网Id</p>
        # @type AssetSubnetId: String
        # @param UploadPem: <p>是否已上传数据库私钥（0 否，1 是）</p>
        # @type UploadPem: Integer
        # @param AliveStatus: <p>资产状态栏 0:正常 1:已删除（目前仅对tencentDB有效）</p>
        # @type AliveStatus: Integer
        # @param AgentOn: <p>开启agent(0:关闭;1:开启)</p>
        # @type AgentOn: Integer
        # @param CasbOn: <p>开启agent(0:关闭;1:开启)</p>
        # @type CasbOn: Integer
        # @param GroupId: <p>只读组/集群ID</p>
        # @type GroupId: String
        # @param Available: <p>PROXY_OFF: 未开启Casb代理;PROXY_ERROR:Casb代理接口返回异常;PROXY_BOUND:已绑定;PROXY_UNBOUND:未绑定;UNPAID:未购买;UNSUPPORTED:类型不支持;METADATA_NOT_FOUND:元数据不存在;QUOTA_EXCEEDED:Casb额度不足</p>
        # @type Available: String
        # @param CdbOn: <p>cdbOn</p>
        # @type CdbOn: Integer
        # @param DbPlatform: <p>平台位数 32位 64位</p>
        # @type DbPlatform: String
        # @param DbCharset: <p>编码</p>
        # @type DbCharset: String
        # @param OsPolicy: <p>操作系统</p>
        # @type OsPolicy: String
        # @param BidirectionOn: <p>是否开启双向审计</p>
        # @type BidirectionOn: Integer
        # @param BidirectionMaxLine: <p>最大返回行数</p>
        # @type BidirectionMaxLine: Integer
        # @param BidirectionMaxStorage: <p>最大返回大小</p>
        # @type BidirectionMaxStorage: Integer
        # @param BidirectionAllow: <p>是否允许开通双向审计(1.允许；0不允许)</p>
        # @type BidirectionAllow: Integer
        # @param BidirectionDelivery: <p>启双向审计的日志投递(1.开启;0.关闭)</p>
        # @type BidirectionDelivery: Integer
        # @param RoStatus: <p>只读状态</p>
        # @type RoStatus: String
        # @param AgentBound: <p>当前资产是否开启了对当前Agent的采集策略</p>
        # @type AgentBound: Boolean
        # @param CdbErrorMsg: <p>错误信息</p>
        # @type CdbErrorMsg: String
        # @param DsgcBindingInfo: <p>资产 DSGC 绑定信息</p>
        # @type DsgcBindingInfo: :class:`Tencentcloud::Cds.v20180420.models.DsgcBindingInfo`
        # @param BindingRules: <p>绑定的规则Ids</p>
        # @type BindingRules: Array
        # @param BindingModels: <p>绑定的模型Ids</p>
        # @type BindingModels: Array
        # @param GroupName: <p>所属组名</p>
        # @type GroupName: String
        # @param AssetGroupId: <p>资产组Id</p>
        # @type AssetGroupId: Integer
        # @param IsNewCloudAudit: <p>是否是新云原生审计流程</p>
        # @type IsNewCloudAudit: Boolean
        # @param AuditCapability: <p>审计功能支持说明</p>
        # @type AuditCapability: Array
        # @param TrafficMirrorOn: <p>1</p><p>取值范围：[0, 1]</p>
        # @type TrafficMirrorOn: Integer
        # @param AuditScope: <p>流量镜像审计范围</p><p>枚举值：</p><ul><li>ALL： 全地域</li><li>REGION： 资产所在地域</li><li>VPC： 资产所在VPC</li></ul><p>默认值：REGION</p>
        # @type AuditScope: String
        # @param InstanceGroupId: <p>实例集群ID</p>
        # @type InstanceGroupId: String

        attr_accessor :AddTime, :Aid, :AssetsIp, :AssetsName, :AssetsPort, :AssetsType, :AssetsVersion, :AssetsAddType, :Status, :UpdateTime, :VpcId, :RegionId, :Permission, :InstanceId, :InstanceName, :AddType, :AssetSubnetId, :UploadPem, :AliveStatus, :AgentOn, :CasbOn, :GroupId, :Available, :CdbOn, :DbPlatform, :DbCharset, :OsPolicy, :BidirectionOn, :BidirectionMaxLine, :BidirectionMaxStorage, :BidirectionAllow, :BidirectionDelivery, :RoStatus, :AgentBound, :CdbErrorMsg, :DsgcBindingInfo, :BindingRules, :BindingModels, :GroupName, :AssetGroupId, :IsNewCloudAudit, :AuditCapability, :TrafficMirrorOn, :AuditScope, :InstanceGroupId

        def initialize(addtime=nil, aid=nil, assetsip=nil, assetsname=nil, assetsport=nil, assetstype=nil, assetsversion=nil, assetsaddtype=nil, status=nil, updatetime=nil, vpcid=nil, regionid=nil, permission=nil, instanceid=nil, instancename=nil, addtype=nil, assetsubnetid=nil, uploadpem=nil, alivestatus=nil, agenton=nil, casbon=nil, groupid=nil, available=nil, cdbon=nil, dbplatform=nil, dbcharset=nil, ospolicy=nil, bidirectionon=nil, bidirectionmaxline=nil, bidirectionmaxstorage=nil, bidirectionallow=nil, bidirectiondelivery=nil, rostatus=nil, agentbound=nil, cdberrormsg=nil, dsgcbindinginfo=nil, bindingrules=nil, bindingmodels=nil, groupname=nil, assetgroupid=nil, isnewcloudaudit=nil, auditcapability=nil, trafficmirroron=nil, auditscope=nil, instancegroupid=nil)
          @AddTime = addtime
          @Aid = aid
          @AssetsIp = assetsip
          @AssetsName = assetsname
          @AssetsPort = assetsport
          @AssetsType = assetstype
          @AssetsVersion = assetsversion
          @AssetsAddType = assetsaddtype
          @Status = status
          @UpdateTime = updatetime
          @VpcId = vpcid
          @RegionId = regionid
          @Permission = permission
          @InstanceId = instanceid
          @InstanceName = instancename
          @AddType = addtype
          @AssetSubnetId = assetsubnetid
          @UploadPem = uploadpem
          @AliveStatus = alivestatus
          @AgentOn = agenton
          @CasbOn = casbon
          @GroupId = groupid
          @Available = available
          @CdbOn = cdbon
          @DbPlatform = dbplatform
          @DbCharset = dbcharset
          @OsPolicy = ospolicy
          @BidirectionOn = bidirectionon
          @BidirectionMaxLine = bidirectionmaxline
          @BidirectionMaxStorage = bidirectionmaxstorage
          @BidirectionAllow = bidirectionallow
          @BidirectionDelivery = bidirectiondelivery
          @RoStatus = rostatus
          @AgentBound = agentbound
          @CdbErrorMsg = cdberrormsg
          @DsgcBindingInfo = dsgcbindinginfo
          @BindingRules = bindingrules
          @BindingModels = bindingmodels
          @GroupName = groupname
          @AssetGroupId = assetgroupid
          @IsNewCloudAudit = isnewcloudaudit
          @AuditCapability = auditcapability
          @TrafficMirrorOn = trafficmirroron
          @AuditScope = auditscope
          @InstanceGroupId = instancegroupid
        end

        def deserialize(params)
          @AddTime = params['AddTime']
          @Aid = params['Aid']
          @AssetsIp = params['AssetsIp']
          @AssetsName = params['AssetsName']
          @AssetsPort = params['AssetsPort']
          @AssetsType = params['AssetsType']
          @AssetsVersion = params['AssetsVersion']
          @AssetsAddType = params['AssetsAddType']
          @Status = params['Status']
          @UpdateTime = params['UpdateTime']
          @VpcId = params['VpcId']
          @RegionId = params['RegionId']
          @Permission = params['Permission']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @AddType = params['AddType']
          @AssetSubnetId = params['AssetSubnetId']
          @UploadPem = params['UploadPem']
          @AliveStatus = params['AliveStatus']
          @AgentOn = params['AgentOn']
          @CasbOn = params['CasbOn']
          @GroupId = params['GroupId']
          @Available = params['Available']
          @CdbOn = params['CdbOn']
          @DbPlatform = params['DbPlatform']
          @DbCharset = params['DbCharset']
          @OsPolicy = params['OsPolicy']
          @BidirectionOn = params['BidirectionOn']
          @BidirectionMaxLine = params['BidirectionMaxLine']
          @BidirectionMaxStorage = params['BidirectionMaxStorage']
          @BidirectionAllow = params['BidirectionAllow']
          @BidirectionDelivery = params['BidirectionDelivery']
          @RoStatus = params['RoStatus']
          @AgentBound = params['AgentBound']
          @CdbErrorMsg = params['CdbErrorMsg']
          unless params['DsgcBindingInfo'].nil?
            @DsgcBindingInfo = DsgcBindingInfo.new
            @DsgcBindingInfo.deserialize(params['DsgcBindingInfo'])
          end
          unless params['BindingRules'].nil?
            @BindingRules = []
            params['BindingRules'].each do |i|
              idwithname_tmp = IdWithName.new
              idwithname_tmp.deserialize(i)
              @BindingRules << idwithname_tmp
            end
          end
          unless params['BindingModels'].nil?
            @BindingModels = []
            params['BindingModels'].each do |i|
              idwithname_tmp = IdWithName.new
              idwithname_tmp.deserialize(i)
              @BindingModels << idwithname_tmp
            end
          end
          @GroupName = params['GroupName']
          @AssetGroupId = params['AssetGroupId']
          @IsNewCloudAudit = params['IsNewCloudAudit']
          unless params['AuditCapability'].nil?
            @AuditCapability = []
            params['AuditCapability'].each do |i|
              auditcapability_tmp = AuditCapability.new
              auditcapability_tmp.deserialize(i)
              @AuditCapability << auditcapability_tmp
            end
          end
          @TrafficMirrorOn = params['TrafficMirrorOn']
          @AuditScope = params['AuditScope']
          @InstanceGroupId = params['InstanceGroupId']
        end
      end

      # 资产支持的审计能力
      class AuditCapability < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # 数据安全产品实例信息
      class CdsAuditInstance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param AppId: 用户AppId
        # @type AppId: String
        # @param Uin: 用户Uin
        # @type Uin: String
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param RenewFlag: 续费标识
        # @type RenewFlag: Integer
        # @param Region: 所属地域
        # @type Region: String
        # @param PayMode: 付费模式（数据安全审计只支持预付费：1）
        # @type PayMode: Integer
        # @param Status: 实例状态： 0，未生效；1：正常运行； 2：被隔离； 3，已过期
        # @type Status: Integer
        # @param IsolatedTimestamp: 实例被隔离时间，格式：yyyy-mm-dd HH:ii:ss
        # @type IsolatedTimestamp: String
        # @param CreateTime: 实例创建时间，格式： yyyy-mm-dd HH:ii:ss
        # @type CreateTime: String
        # @param ExpireTime: 实例过期时间，格式：yyyy-mm-dd HH:ii:ss
        # @type ExpireTime: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param PublicIp: 实例公网IP
        # @type PublicIp: String
        # @param PrivateIp: 实例私网IP
        # @type PrivateIp: String
        # @param InstanceType: 实例类型（版本）
        # @type InstanceType: String
        # @param Pdomain: 实例域名
        # @type Pdomain: String

        attr_accessor :InstanceId, :AppId, :Uin, :ProjectId, :RenewFlag, :Region, :PayMode, :Status, :IsolatedTimestamp, :CreateTime, :ExpireTime, :InstanceName, :PublicIp, :PrivateIp, :InstanceType, :Pdomain

        def initialize(instanceid=nil, appid=nil, uin=nil, projectid=nil, renewflag=nil, region=nil, paymode=nil, status=nil, isolatedtimestamp=nil, createtime=nil, expiretime=nil, instancename=nil, publicip=nil, privateip=nil, instancetype=nil, pdomain=nil)
          @InstanceId = instanceid
          @AppId = appid
          @Uin = uin
          @ProjectId = projectid
          @RenewFlag = renewflag
          @Region = region
          @PayMode = paymode
          @Status = status
          @IsolatedTimestamp = isolatedtimestamp
          @CreateTime = createtime
          @ExpireTime = expiretime
          @InstanceName = instancename
          @PublicIp = publicip
          @PrivateIp = privateip
          @InstanceType = instancetype
          @Pdomain = pdomain
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @ProjectId = params['ProjectId']
          @RenewFlag = params['RenewFlag']
          @Region = params['Region']
          @PayMode = params['PayMode']
          @Status = params['Status']
          @IsolatedTimestamp = params['IsolatedTimestamp']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
          @InstanceName = params['InstanceName']
          @PublicIp = params['PublicIp']
          @PrivateIp = params['PrivateIp']
          @InstanceType = params['InstanceType']
          @Pdomain = params['Pdomain']
        end
      end

      # CreateReportPdf请求参数结构体
      class CreateReportPdfRequest < TencentCloud::Common::AbstractModel
        # @param Id: 报表 Id
        # @type Id: Integer

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # CreateReportPdf返回参数结构体
      class CreateReportPdfResponse < TencentCloud::Common::AbstractModel
        # @param Url: 下载地址
        # @type Url: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Url, :RequestId

        def initialize(url=nil, requestid=nil)
          @Url = url
          @RequestId = requestid
        end

        def deserialize(params)
          @Url = params['Url']
          @RequestId = params['RequestId']
        end
      end

      # CreateTimerReport请求参数结构体
      class CreateTimerReportRequest < TencentCloud::Common::AbstractModel
        # @param TplName: 任务名称 不变更为""
        # @type TplName: String
        # @param CntTime: 执行日期 重复周期为天：无意义周：星期几1-7月每月几号 1-31
        # @type CntTime: Integer
        # @param CntCycle: 重复周期
        # @type CntCycle: Integer
        # @param Receivers: 发送目标
        # @type Receivers: String
        # @param CntDay: 时间范围 1:24小时 7:近一周 30:近30天 90:近90天 180:近180天 不变更为0
        # @type CntDay: Integer
        # @param CntDate: 执行时间 格式15:04 到分钟
        # @type CntDate: String
        # @param Remark: 报告说明
        # @type Remark: String
        # @param TemplateId: 模版Id
        # @type TemplateId: Integer
        # @param ReportType: 报表类型
        # @type ReportType: Integer
        # @param AssetsId: 关联的资产数组
        # @type AssetsId: Array
        # @param Notification: 报表通知 1关闭 2开启 不变更为0
        # @type Notification: Integer
        # @param MissionStart: 任务起停 1:关闭 2:开启 单次报表默认为2
        # @type MissionStart: Integer

        attr_accessor :TplName, :CntTime, :CntCycle, :Receivers, :CntDay, :CntDate, :Remark, :TemplateId, :ReportType, :AssetsId, :Notification, :MissionStart

        def initialize(tplname=nil, cnttime=nil, cntcycle=nil, receivers=nil, cntday=nil, cntdate=nil, remark=nil, templateid=nil, reporttype=nil, assetsid=nil, notification=nil, missionstart=nil)
          @TplName = tplname
          @CntTime = cnttime
          @CntCycle = cntcycle
          @Receivers = receivers
          @CntDay = cntday
          @CntDate = cntdate
          @Remark = remark
          @TemplateId = templateid
          @ReportType = reporttype
          @AssetsId = assetsid
          @Notification = notification
          @MissionStart = missionstart
        end

        def deserialize(params)
          @TplName = params['TplName']
          @CntTime = params['CntTime']
          @CntCycle = params['CntCycle']
          @Receivers = params['Receivers']
          @CntDay = params['CntDay']
          @CntDate = params['CntDate']
          @Remark = params['Remark']
          @TemplateId = params['TemplateId']
          @ReportType = params['ReportType']
          @AssetsId = params['AssetsId']
          @Notification = params['Notification']
          @MissionStart = params['MissionStart']
        end
      end

      # CreateTimerReport返回参数结构体
      class CreateTimerReportResponse < TencentCloud::Common::AbstractModel
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

      # 数据安全审计产品规格信息
      class DbauditTypesInfo < TencentCloud::Common::AbstractModel
        # @param InstanceVersionName: 规格描述
        # @type InstanceVersionName: String
        # @param InstanceVersionKey: 规格名称
        # @type InstanceVersionKey: String
        # @param Qps: 最大吞吐量
        # @type Qps: Integer
        # @param MaxInstances: 最大实例数
        # @type MaxInstances: Integer
        # @param InsertSpeed: 入库速率（每小时）
        # @type InsertSpeed: Integer
        # @param OnlineStorageCapacity: 最大在线存储量，单位：条
        # @type OnlineStorageCapacity: Integer
        # @param ArchivingStorageCapacity: 最大归档存储量，单位：条
        # @type ArchivingStorageCapacity: Integer

        attr_accessor :InstanceVersionName, :InstanceVersionKey, :Qps, :MaxInstances, :InsertSpeed, :OnlineStorageCapacity, :ArchivingStorageCapacity

        def initialize(instanceversionname=nil, instanceversionkey=nil, qps=nil, maxinstances=nil, insertspeed=nil, onlinestoragecapacity=nil, archivingstoragecapacity=nil)
          @InstanceVersionName = instanceversionname
          @InstanceVersionKey = instanceversionkey
          @Qps = qps
          @MaxInstances = maxinstances
          @InsertSpeed = insertspeed
          @OnlineStorageCapacity = onlinestoragecapacity
          @ArchivingStorageCapacity = archivingstoragecapacity
        end

        def deserialize(params)
          @InstanceVersionName = params['InstanceVersionName']
          @InstanceVersionKey = params['InstanceVersionKey']
          @Qps = params['Qps']
          @MaxInstances = params['MaxInstances']
          @InsertSpeed = params['InsertSpeed']
          @OnlineStorageCapacity = params['OnlineStorageCapacity']
          @ArchivingStorageCapacity = params['ArchivingStorageCapacity']
        end
      end

      # DescribeAssetsList请求参数结构体
      class DescribeAssetsListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: <p>限制数目</p>
        # @type Limit: Integer
        # @param Offset: <p>偏移量</p>
        # @type Offset: Integer
        # @param SearchValues: <p>实例Id/实例名称/资产名称</p>
        # @type SearchValues: Array
        # @param AssetsType: <p>数据资产类型</p>
        # @type AssetsType: String
        # @param AssetsAddType: <p>查询的资产类型（1:cdb、2:cvm、3:others）</p>
        # @type AssetsAddType: Integer
        # @param RegionId: <p>地域</p>
        # @type RegionId: String
        # @param Permission: <p>审计权限</p>
        # @type Permission: Integer
        # @param AliveStatus: <p>状态</p>
        # @type AliveStatus: Integer
        # @param CasbOn: <p>1.代理开启 0.代理关闭 -1.全查</p>
        # @type CasbOn: Integer
        # @param AgentOn: <p>1.Agent开启 0.Agent关闭 -1.全查</p>
        # @type AgentOn: Integer
        # @param CdbOn: <p>0.关闭，1.开启，2.关闭中，3.开启中 -1.全查</p>
        # @type CdbOn: Integer
        # @param ExtendCategory: <p>扩展分类，如sensitive，指定查询支持敏感数据识别的资产</p>
        # @type ExtendCategory: String
        # @param GroupIds: <p>资产组Id（Id=0 暂未分组；id&gt;0 组Id）</p>
        # @type GroupIds: Array
        # @param Aids: <p>资产Id</p>
        # @type Aids: Array
        # @param BindingState: <p>查询绑定状态（1:查询规则绑定数量；2:查询模型绑定数量）</p>
        # @type BindingState: Integer
        # @param TrafficMirrorOn: <p>网卡是否开启流量审计</p><p>取值范围：[-1, 1]</p>
        # @type TrafficMirrorOn: Integer

        attr_accessor :Limit, :Offset, :SearchValues, :AssetsType, :AssetsAddType, :RegionId, :Permission, :AliveStatus, :CasbOn, :AgentOn, :CdbOn, :ExtendCategory, :GroupIds, :Aids, :BindingState, :TrafficMirrorOn

        def initialize(limit=nil, offset=nil, searchvalues=nil, assetstype=nil, assetsaddtype=nil, regionid=nil, permission=nil, alivestatus=nil, casbon=nil, agenton=nil, cdbon=nil, extendcategory=nil, groupids=nil, aids=nil, bindingstate=nil, trafficmirroron=nil)
          @Limit = limit
          @Offset = offset
          @SearchValues = searchvalues
          @AssetsType = assetstype
          @AssetsAddType = assetsaddtype
          @RegionId = regionid
          @Permission = permission
          @AliveStatus = alivestatus
          @CasbOn = casbon
          @AgentOn = agenton
          @CdbOn = cdbon
          @ExtendCategory = extendcategory
          @GroupIds = groupids
          @Aids = aids
          @BindingState = bindingstate
          @TrafficMirrorOn = trafficmirroron
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['SearchValues'].nil?
            @SearchValues = []
            params['SearchValues'].each do |i|
              namevaluestring_tmp = NameValueString.new
              namevaluestring_tmp.deserialize(i)
              @SearchValues << namevaluestring_tmp
            end
          end
          @AssetsType = params['AssetsType']
          @AssetsAddType = params['AssetsAddType']
          @RegionId = params['RegionId']
          @Permission = params['Permission']
          @AliveStatus = params['AliveStatus']
          @CasbOn = params['CasbOn']
          @AgentOn = params['AgentOn']
          @CdbOn = params['CdbOn']
          @ExtendCategory = params['ExtendCategory']
          @GroupIds = params['GroupIds']
          @Aids = params['Aids']
          @BindingState = params['BindingState']
          @TrafficMirrorOn = params['TrafficMirrorOn']
        end
      end

      # DescribeAssetsList返回参数结构体
      class DescribeAssetsListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>总数目</p>
        # @type TotalCount: Integer
        # @param List: <p>数据列表</p>
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :List, :RequestId

        def initialize(totalcount=nil, list=nil, requestid=nil)
          @TotalCount = totalcount
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              assetsinfo_tmp = AssetsInfo.new
              assetsinfo_tmp.deserialize(i)
              @List << assetsinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDbauditInstanceType请求参数结构体
      class DescribeDbauditInstanceTypeRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeDbauditInstanceType返回参数结构体
      class DescribeDbauditInstanceTypeResponse < TencentCloud::Common::AbstractModel
        # @param DbauditTypesSet: 数据安全审计产品规格信息列表
        # @type DbauditTypesSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DbauditTypesSet, :RequestId

        def initialize(dbaudittypesset=nil, requestid=nil)
          @DbauditTypesSet = dbaudittypesset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DbauditTypesSet'].nil?
            @DbauditTypesSet = []
            params['DbauditTypesSet'].each do |i|
              dbaudittypesinfo_tmp = DbauditTypesInfo.new
              dbaudittypesinfo_tmp.deserialize(i)
              @DbauditTypesSet << dbaudittypesinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDbauditInstances请求参数结构体
      class DescribeDbauditInstancesRequest < TencentCloud::Common::AbstractModel
        # @param SearchRegion: 查询条件地域
        # @type SearchRegion: String
        # @param Limit: 限制数目，默认10， 最大50
        # @type Limit: Integer
        # @param Offset: 偏移量，默认1
        # @type Offset: Integer

        attr_accessor :SearchRegion, :Limit, :Offset

        def initialize(searchregion=nil, limit=nil, offset=nil)
          @SearchRegion = searchregion
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @SearchRegion = params['SearchRegion']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeDbauditInstances返回参数结构体
      class DescribeDbauditInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总实例数
        # @type TotalCount: Integer
        # @param CdsAuditInstanceSet: 数据安全审计实例信息列表
        # @type CdsAuditInstanceSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :CdsAuditInstanceSet, :RequestId

        def initialize(totalcount=nil, cdsauditinstanceset=nil, requestid=nil)
          @TotalCount = totalcount
          @CdsAuditInstanceSet = cdsauditinstanceset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['CdsAuditInstanceSet'].nil?
            @CdsAuditInstanceSet = []
            params['CdsAuditInstanceSet'].each do |i|
              cdsauditinstance_tmp = CdsAuditInstance.new
              cdsauditinstance_tmp.deserialize(i)
              @CdsAuditInstanceSet << cdsauditinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDbauditUsedRegions请求参数结构体
      class DescribeDbauditUsedRegionsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeDbauditUsedRegions返回参数结构体
      class DescribeDbauditUsedRegionsResponse < TencentCloud::Common::AbstractModel
        # @param RegionSet: 可售卖地域信息列表
        # @type RegionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegionSet, :RequestId

        def initialize(regionset=nil, requestid=nil)
          @RegionSet = regionset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RegionSet'].nil?
            @RegionSet = []
            params['RegionSet'].each do |i|
              regioninfo_tmp = RegionInfo.new
              regioninfo_tmp.deserialize(i)
              @RegionSet << regioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeReportList请求参数结构体
      class DescribeReportListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 限制数目
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Name: 报告名称
        # @type Name: String
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ReportType: 报告类型
        # @type ReportType: Integer
        # @param ReportStatus: 报告状态
        # @type ReportStatus: Integer
        # @param TemplateId: 报表模版id
        # @type TemplateId: Integer
        # @param Field: 需要排序的字段
        # @type Field: String
        # @param Sort: 排序顺序 asc desc
        # @type Sort: String
        # @param CntDay: 时间范围 1:24小时 7:近一周 30:近30天 90:近90天 180:近180天 不变更为0
        # @type CntDay: Integer

        attr_accessor :Limit, :Offset, :Name, :StartTime, :EndTime, :ReportType, :ReportStatus, :TemplateId, :Field, :Sort, :CntDay

        def initialize(limit=nil, offset=nil, name=nil, starttime=nil, endtime=nil, reporttype=nil, reportstatus=nil, templateid=nil, field=nil, sort=nil, cntday=nil)
          @Limit = limit
          @Offset = offset
          @Name = name
          @StartTime = starttime
          @EndTime = endtime
          @ReportType = reporttype
          @ReportStatus = reportstatus
          @TemplateId = templateid
          @Field = field
          @Sort = sort
          @CntDay = cntday
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Name = params['Name']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ReportType = params['ReportType']
          @ReportStatus = params['ReportStatus']
          @TemplateId = params['TemplateId']
          @Field = params['Field']
          @Sort = params['Sort']
          @CntDay = params['CntDay']
        end
      end

      # DescribeReportList返回参数结构体
      class DescribeReportListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数目
        # @type TotalCount: Integer
        # @param List: 数据列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :List, :RequestId

        def initialize(totalcount=nil, list=nil, requestid=nil)
          @TotalCount = totalcount
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              reports_tmp = Reports.new
              reports_tmp.deserialize(i)
              @List << reports_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeReportMissionList请求参数结构体
      class DescribeReportMissionListRequest < TencentCloud::Common::AbstractModel
        # @param TplName: 报表名 可模糊查询
        # @type TplName: String
        # @param ReportType: 报表类型 1:单次报表 2:周期报表 0全查
        # @type ReportType: Integer
        # @param TemplateId: 报表模板 1:综合分析报告 2:等保合规报告 0全查
        # @type TemplateId: Integer
        # @param MissionStatus: 任务状态0全查 1:生成中 2:待生成 3:已生成 4:生成失败 5:已暂停
        # @type MissionStatus: Integer
        # @param Field: 排序字段 支持“NextStartTime” 与 “MissionStatus”
        # @type Field: String
        # @param Sort: ‘desc' | 'asc'
        # @type Sort: String
        # @param Limit: 限制条数
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer

        attr_accessor :TplName, :ReportType, :TemplateId, :MissionStatus, :Field, :Sort, :Limit, :Offset

        def initialize(tplname=nil, reporttype=nil, templateid=nil, missionstatus=nil, field=nil, sort=nil, limit=nil, offset=nil)
          @TplName = tplname
          @ReportType = reporttype
          @TemplateId = templateid
          @MissionStatus = missionstatus
          @Field = field
          @Sort = sort
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @TplName = params['TplName']
          @ReportType = params['ReportType']
          @TemplateId = params['TemplateId']
          @MissionStatus = params['MissionStatus']
          @Field = params['Field']
          @Sort = params['Sort']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeReportMissionList返回参数结构体
      class DescribeReportMissionListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param List: 报表列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :List, :RequestId

        def initialize(totalcount=nil, list=nil, requestid=nil)
          @TotalCount = totalcount
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              reportmission_tmp = ReportMission.new
              reportmission_tmp.deserialize(i)
              @List << reportmission_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 资产 DSGC 绑定信息
      class DsgcBindingInfo < TencentCloud::Common::AbstractModel
        # @param DspaId: dspa实例id
        # @type DspaId: String
        # @param DspaCgId: dspa绑定模板/合规组 id ComplianceGroupId
        # @type DspaCgId: Integer
        # @param DspaCgName: dspa绑定模板/合规组名称
        # @type DspaCgName: String
        # @param DspaStatus: dspa实例状态 0 正常 1 隔离 2 销毁
        # @type DspaStatus: Integer
        # @param DspaCgStatus: 模板状态 0: 正常   1: 已删除
        # @type DspaCgStatus: Integer

        attr_accessor :DspaId, :DspaCgId, :DspaCgName, :DspaStatus, :DspaCgStatus

        def initialize(dspaid=nil, dspacgid=nil, dspacgname=nil, dspastatus=nil, dspacgstatus=nil)
          @DspaId = dspaid
          @DspaCgId = dspacgid
          @DspaCgName = dspacgname
          @DspaStatus = dspastatus
          @DspaCgStatus = dspacgstatus
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @DspaCgId = params['DspaCgId']
          @DspaCgName = params['DspaCgName']
          @DspaStatus = params['DspaStatus']
          @DspaCgStatus = params['DspaCgStatus']
        end
      end

      # IdWithName
      class IdWithName < TencentCloud::Common::AbstractModel
        # @param Id: id
        # @type Id: Integer
        # @param Name: 名称
        # @type Name: String

        attr_accessor :Id, :Name

        def initialize(id=nil, name=nil)
          @Id = id
          @Name = name
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
        end
      end

      # InquiryPriceDbauditInstance请求参数结构体
      class InquiryPriceDbauditInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceVersion: 实例规格，取值范围： cdsaudit，cdsaudit_adv， cdsaudit_ent 分别为合规版，高级版，企业版
        # @type InstanceVersion: String
        # @param InquiryType: 询价类型： renew，续费；newbuy，新购
        # @type InquiryType: String
        # @param TimeSpan: 购买实例的时长。取值范围：1（y/m），2（y/m）,，3（y/m），4（m）， 5（m），6（m）， 7（m），8（m），9（m）， 10（m）
        # @type TimeSpan: Integer
        # @param TimeUnit: 购买时长单位，y：年；m：月
        # @type TimeUnit: String
        # @param ServiceRegion: 实例所在地域
        # @type ServiceRegion: String

        attr_accessor :InstanceVersion, :InquiryType, :TimeSpan, :TimeUnit, :ServiceRegion

        def initialize(instanceversion=nil, inquirytype=nil, timespan=nil, timeunit=nil, serviceregion=nil)
          @InstanceVersion = instanceversion
          @InquiryType = inquirytype
          @TimeSpan = timespan
          @TimeUnit = timeunit
          @ServiceRegion = serviceregion
        end

        def deserialize(params)
          @InstanceVersion = params['InstanceVersion']
          @InquiryType = params['InquiryType']
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
          @ServiceRegion = params['ServiceRegion']
        end
      end

      # InquiryPriceDbauditInstance返回参数结构体
      class InquiryPriceDbauditInstanceResponse < TencentCloud::Common::AbstractModel
        # @param TotalPrice: 总价，单位：元
        # @type TotalPrice: Float
        # @param RealTotalCost: 真实价钱，预支费用的折扣价，单位：元
        # @type RealTotalCost: Float
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalPrice, :RealTotalCost, :RequestId

        def initialize(totalprice=nil, realtotalcost=nil, requestid=nil)
          @TotalPrice = totalprice
          @RealTotalCost = realtotalcost
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalPrice = params['TotalPrice']
          @RealTotalCost = params['RealTotalCost']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDbauditInstancesRenewFlag请求参数结构体
      class ModifyDbauditInstancesRenewFlagRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param AutoRenewFlag: 0，表示默认状态(用户未设置，即初始状态)；1，表示自动续费；2，表示明确不自动续费
        # @type AutoRenewFlag: Integer

        attr_accessor :InstanceId, :AutoRenewFlag

        def initialize(instanceid=nil, autorenewflag=nil)
          @InstanceId = instanceid
          @AutoRenewFlag = autorenewflag
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AutoRenewFlag = params['AutoRenewFlag']
        end
      end

      # ModifyDbauditInstancesRenewFlag返回参数结构体
      class ModifyDbauditInstancesRenewFlagResponse < TencentCloud::Common::AbstractModel
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

      # Name and String Value
      class NameValueString < TencentCloud::Common::AbstractModel
        # @param Name: <p>名称</p>
        # @type Name: String
        # @param Value: <p>值</p>
        # @type Value: String

        attr_accessor :Name, :Value

        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # 数盾地域信息
      class RegionInfo < TencentCloud::Common::AbstractModel
        # @param RegionId: 地域ID
        # @type RegionId: Integer
        # @param Region: 地域名称
        # @type Region: String
        # @param RegionName: 地域描述
        # @type RegionName: String
        # @param RegionState: 地域可用状态
        # @type RegionState: Integer

        attr_accessor :RegionId, :Region, :RegionName, :RegionState

        def initialize(regionid=nil, region=nil, regionname=nil, regionstate=nil)
          @RegionId = regionid
          @Region = region
          @RegionName = regionname
          @RegionState = regionstate
        end

        def deserialize(params)
          @RegionId = params['RegionId']
          @Region = params['Region']
          @RegionName = params['RegionName']
          @RegionState = params['RegionState']
        end
      end

      # 任务对象
      class ReportMission < TencentCloud::Common::AbstractModel
        # @param Id: 报表任务id
        # @type Id: Integer
        # @param TplName: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TplName: String
        # @param ReportType: 报表类型 1:单次报表 2:周期报表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportType: Integer
        # @param Remark: 报告说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param TemplateId: 报表模板 1:综合分析报告 2:等保合规报告
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateId: Integer
        # @param AssetsList: 包含资产
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetsList: Array
        # @param NextStartTime: 下次启动时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextStartTime: Integer
        # @param MissionStatus: 任务状态 1:生成中 2:待生成3:已生成4:生成失败5:已暂停
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MissionStatus: Integer
        # @param MissionStatusMessage: 任务状态说明 仅生成中和生成失败有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MissionStatusMessage: String
        # @param ReportCount: 已生成报表数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportCount: Integer
        # @param MissionStart: 任务起停 1:关闭 2:开启 仅周期报表有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MissionStart: Integer
        # @param CntDay: 统计周期 1:24小时 7:近一周 30:近30天 90:近90天 180:
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CntDay: Integer
        # @param CntCycle: 重复周期 1:每天 2:每周 3:每月
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CntCycle: Integer
        # @param CntTime: 执行日期 重复周期为天：无意义 周：星期几 1-7  月每月
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CntTime: Integer
        # @param CntDate: 执行时间 格式15:04 到分钟
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CntDate: String
        # @param Receivers: 创建者 0:内置 其余存放用户(uin)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Receivers: String
        # @param Notification: Notification  int  1关闭 2开启 不变更为0
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Notification: Integer

        attr_accessor :Id, :TplName, :ReportType, :Remark, :TemplateId, :AssetsList, :NextStartTime, :MissionStatus, :MissionStatusMessage, :ReportCount, :MissionStart, :CntDay, :CntCycle, :CntTime, :CntDate, :Receivers, :Notification

        def initialize(id=nil, tplname=nil, reporttype=nil, remark=nil, templateid=nil, assetslist=nil, nextstarttime=nil, missionstatus=nil, missionstatusmessage=nil, reportcount=nil, missionstart=nil, cntday=nil, cntcycle=nil, cnttime=nil, cntdate=nil, receivers=nil, notification=nil)
          @Id = id
          @TplName = tplname
          @ReportType = reporttype
          @Remark = remark
          @TemplateId = templateid
          @AssetsList = assetslist
          @NextStartTime = nextstarttime
          @MissionStatus = missionstatus
          @MissionStatusMessage = missionstatusmessage
          @ReportCount = reportcount
          @MissionStart = missionstart
          @CntDay = cntday
          @CntCycle = cntcycle
          @CntTime = cnttime
          @CntDate = cntdate
          @Receivers = receivers
          @Notification = notification
        end

        def deserialize(params)
          @Id = params['Id']
          @TplName = params['TplName']
          @ReportType = params['ReportType']
          @Remark = params['Remark']
          @TemplateId = params['TemplateId']
          unless params['AssetsList'].nil?
            @AssetsList = []
            params['AssetsList'].each do |i|
              assetsinfo_tmp = AssetsInfo.new
              assetsinfo_tmp.deserialize(i)
              @AssetsList << assetsinfo_tmp
            end
          end
          @NextStartTime = params['NextStartTime']
          @MissionStatus = params['MissionStatus']
          @MissionStatusMessage = params['MissionStatusMessage']
          @ReportCount = params['ReportCount']
          @MissionStart = params['MissionStart']
          @CntDay = params['CntDay']
          @CntCycle = params['CntCycle']
          @CntTime = params['CntTime']
          @CntDate = params['CntDate']
          @Receivers = params['Receivers']
          @Notification = params['Notification']
        end
      end

      # 报表列表字段数组
      class Reports < TencentCloud::Common::AbstractModel
        # @param AddTime: 生成时间
        # @type AddTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param Id: 报告 ID
        # @type Id: Integer
        # @param InstanceId: 审计 ID
        # @type InstanceId: Integer
        # @param IsDelete: 是否已删除
        # @type IsDelete: Integer
        # @param Receivers: 发送目标
        # @type Receivers: String
        # @param Remark: 报告说明
        # @type Remark: String
        # @param ReportFile: 报告文件
        # @type ReportFile: String
        # @param ReportStatus: 状态
        # @type ReportStatus: Integer
        # @param ReportTmpStatus: 状态
        # @type ReportTmpStatus: Integer
        # @param ReportType: 报告类型
        # @type ReportType: Integer
        # @param SendResult: 发送结果
        # @type SendResult: String
        # @param SendType: 发送类型
        # @type SendType: String
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Title: 报告名称
        # @type Title: String
        # @param TemplateId: 报表模板
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateId: Integer
        # @param AssetsList: 包含资产
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetsList: Array
        # @param CntDay: 时间范围 1:24小时 7:近一周 30:近30天 90:近90天 180:近180天 不变更为0
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CntDay: Integer

        attr_accessor :AddTime, :EndTime, :Id, :InstanceId, :IsDelete, :Receivers, :Remark, :ReportFile, :ReportStatus, :ReportTmpStatus, :ReportType, :SendResult, :SendType, :StartTime, :Title, :TemplateId, :AssetsList, :CntDay

        def initialize(addtime=nil, endtime=nil, id=nil, instanceid=nil, isdelete=nil, receivers=nil, remark=nil, reportfile=nil, reportstatus=nil, reporttmpstatus=nil, reporttype=nil, sendresult=nil, sendtype=nil, starttime=nil, title=nil, templateid=nil, assetslist=nil, cntday=nil)
          @AddTime = addtime
          @EndTime = endtime
          @Id = id
          @InstanceId = instanceid
          @IsDelete = isdelete
          @Receivers = receivers
          @Remark = remark
          @ReportFile = reportfile
          @ReportStatus = reportstatus
          @ReportTmpStatus = reporttmpstatus
          @ReportType = reporttype
          @SendResult = sendresult
          @SendType = sendtype
          @StartTime = starttime
          @Title = title
          @TemplateId = templateid
          @AssetsList = assetslist
          @CntDay = cntday
        end

        def deserialize(params)
          @AddTime = params['AddTime']
          @EndTime = params['EndTime']
          @Id = params['Id']
          @InstanceId = params['InstanceId']
          @IsDelete = params['IsDelete']
          @Receivers = params['Receivers']
          @Remark = params['Remark']
          @ReportFile = params['ReportFile']
          @ReportStatus = params['ReportStatus']
          @ReportTmpStatus = params['ReportTmpStatus']
          @ReportType = params['ReportType']
          @SendResult = params['SendResult']
          @SendType = params['SendType']
          @StartTime = params['StartTime']
          @Title = params['Title']
          @TemplateId = params['TemplateId']
          unless params['AssetsList'].nil?
            @AssetsList = []
            params['AssetsList'].each do |i|
              assetsinfo_tmp = AssetsInfo.new
              assetsinfo_tmp.deserialize(i)
              @AssetsList << assetsinfo_tmp
            end
          end
          @CntDay = params['CntDay']
        end
      end

    end
  end
end

