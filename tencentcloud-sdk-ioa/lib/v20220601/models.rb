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
  module Ioa
    module V20220601
      # 自动划分规则数据
      class ComplexRule < TencentCloud::Common::AbstractModel
        # @param SimpleRules: 简单规则表达式
        # @type SimpleRules: Array
        # @param Relation: 表达式间逻辑关系
        # @type Relation: String

        attr_accessor :SimpleRules, :Relation

        def initialize(simplerules=nil, relation=nil)
          @SimpleRules = simplerules
          @Relation = relation
        end

        def deserialize(params)
          unless params['SimpleRules'].nil?
            @SimpleRules = []
            params['SimpleRules'].each do |i|
              simplerule_tmp = SimpleRule.new
              simplerule_tmp.deserialize(i)
              @SimpleRules << simplerule_tmp
            end
          end
          @Relation = params['Relation']
        end
      end

      # 这是一个多接口的公共数据结构，用于接口根据条件进行过滤和分页。具体支持哪些过滤条件，参考具体使用该结构的接口字段描述
      class Condition < TencentCloud::Common::AbstractModel
        # @param Filters: Filters 条件过滤
        # @type Filters: Array
        # @param FilterGroups: FilterGroups 条件过滤组
        # @type FilterGroups: Array
        # @param Sort: Sort 排序字段
        # @type Sort: :class:`Tencentcloud::Ioa.v20220601.models.Sort`
        # @param PageSize: PageSize 每页获取数(只支持32位)
        # @type PageSize: Integer
        # @param PageNum: PageNum 获取第几页(只支持32位)
        # @type PageNum: Integer

        attr_accessor :Filters, :FilterGroups, :Sort, :PageSize, :PageNum

        def initialize(filters=nil, filtergroups=nil, sort=nil, pagesize=nil, pagenum=nil)
          @Filters = filters
          @FilterGroups = filtergroups
          @Sort = sort
          @PageSize = pagesize
          @PageNum = pagenum
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['FilterGroups'].nil?
            @FilterGroups = []
            params['FilterGroups'].each do |i|
              filtergroup_tmp = FilterGroup.new
              filtergroup_tmp.deserialize(i)
              @FilterGroups << filtergroup_tmp
            end
          end
          unless params['Sort'].nil?
            @Sort = Sort.new
            @Sort.deserialize(params['Sort'])
          end
          @PageSize = params['PageSize']
          @PageNum = params['PageNum']
        end
      end

      # CreateDeviceVirtualGroup请求参数结构体
      class CreateDeviceVirtualGroupRequest < TencentCloud::Common::AbstractModel
        # @param DeviceVirtualGroupName: 必填，终端自定义分组名
        # @type DeviceVirtualGroupName: String
        # @param Description: 详情
        # @type Description: String
        # @param OsType: 必填，系统类型（0: win，1：linux，2: mac，3: win_srv，4：android，5：ios ）(只支持32位)
        # @type OsType: Integer
        # @param TimeType: 必填，分组类型（0:手动分组；非0为自动划分分组；具体枚举值为：1:自动每小时划分分组、2:自动每天划分分组、3:自定义时间划分分组）(只支持32位)
        # @type TimeType: Integer
        # @param AutoMinute: 选填，TimeType=3时的自动划分时间，其他情况为0（单位min）(只支持32位)
        # @type AutoMinute: Integer
        # @param AutoRules: 选填，手动分组不填，自动划分分组的划分规则数据
        # @type AutoRules: :class:`Tencentcloud::Ioa.v20220601.models.ComplexRule`

        attr_accessor :DeviceVirtualGroupName, :Description, :OsType, :TimeType, :AutoMinute, :AutoRules

        def initialize(devicevirtualgroupname=nil, description=nil, ostype=nil, timetype=nil, autominute=nil, autorules=nil)
          @DeviceVirtualGroupName = devicevirtualgroupname
          @Description = description
          @OsType = ostype
          @TimeType = timetype
          @AutoMinute = autominute
          @AutoRules = autorules
        end

        def deserialize(params)
          @DeviceVirtualGroupName = params['DeviceVirtualGroupName']
          @Description = params['Description']
          @OsType = params['OsType']
          @TimeType = params['TimeType']
          @AutoMinute = params['AutoMinute']
          unless params['AutoRules'].nil?
            @AutoRules = ComplexRule.new
            @AutoRules.deserialize(params['AutoRules'])
          end
        end
      end

      # CreateDeviceVirtualGroup返回参数结构体
      class CreateDeviceVirtualGroupResponse < TencentCloud::Common::AbstractModel
        # @param Data: 响应返回的data
        # @type Data: :class:`Tencentcloud::Ioa.v20220601.models.CreateDeviceVirtualGroupRspData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateDeviceVirtualGroupRspData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 响应返回的data
      class CreateDeviceVirtualGroupRspData < TencentCloud::Common::AbstractModel
        # @param Id: 返回的自定义分组id
        # @type Id: Integer

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # 账号分组信息
      class DescribeAccountGroupsData < TencentCloud::Common::AbstractModel
        # @param NamePath: 账号分组名全路径，点分格式
        # @type NamePath: String
        # @param IdPathArr: 账号分组ID全路径，数组格式
        # @type IdPathArr: Array
        # @param ExtraInfo: 扩展信息
        # @type ExtraInfo: String
        # @param Utime: 最后更新时间
        # @type Utime: String
        # @param ParentId: 父分组ID
        # @type ParentId: Integer
        # @param OrgId: 源账号组织ID。使用第三方导入用户源时，记录该分组在源组织架构下的分组ID
        # @type OrgId: String
        # @param Name: 分组名称
        # @type Name: String
        # @param Id: 分组ID
        # @type Id: Integer
        # @param Description: 分组描述
        # @type Description: String
        # @param Source: 同步数据源
        # @type Source: Integer
        # @param IdPath: 账号分组ID全路径，点分格式
        # @type IdPath: String
        # @param Itime: 创建时间
        # @type Itime: String
        # @param ParentOrgId: 父源账号组织ID。使用第三方导入用户源时，记录该分组在源组织架构下的分组ID
        # @type ParentOrgId: String
        # @param ImportType: 导入类型
        # @type ImportType: String
        # @param MiniIamId: miniIAM id
        # @type MiniIamId: String
        # @param UserTotal: 该分组下含子组的所有用户总数
        # @type UserTotal: Integer
        # @param IsLeaf: 是否叶子节点
        # @type IsLeaf: Boolean
        # @param ReadOnly: 是否该账户的直接权限
        # @type ReadOnly: Boolean
        # @param LatestSyncResult: 最新一次同步任务的结果
        # @type LatestSyncResult: String
        # @param LatestSyncTime: 最新一次同步任务的结束时间
        # @type LatestSyncTime: String

        attr_accessor :NamePath, :IdPathArr, :ExtraInfo, :Utime, :ParentId, :OrgId, :Name, :Id, :Description, :Source, :IdPath, :Itime, :ParentOrgId, :ImportType, :MiniIamId, :UserTotal, :IsLeaf, :ReadOnly, :LatestSyncResult, :LatestSyncTime

        def initialize(namepath=nil, idpatharr=nil, extrainfo=nil, utime=nil, parentid=nil, orgid=nil, name=nil, id=nil, description=nil, source=nil, idpath=nil, itime=nil, parentorgid=nil, importtype=nil, miniiamid=nil, usertotal=nil, isleaf=nil, readonly=nil, latestsyncresult=nil, latestsynctime=nil)
          @NamePath = namepath
          @IdPathArr = idpatharr
          @ExtraInfo = extrainfo
          @Utime = utime
          @ParentId = parentid
          @OrgId = orgid
          @Name = name
          @Id = id
          @Description = description
          @Source = source
          @IdPath = idpath
          @Itime = itime
          @ParentOrgId = parentorgid
          @ImportType = importtype
          @MiniIamId = miniiamid
          @UserTotal = usertotal
          @IsLeaf = isleaf
          @ReadOnly = readonly
          @LatestSyncResult = latestsyncresult
          @LatestSyncTime = latestsynctime
        end

        def deserialize(params)
          @NamePath = params['NamePath']
          @IdPathArr = params['IdPathArr']
          @ExtraInfo = params['ExtraInfo']
          @Utime = params['Utime']
          @ParentId = params['ParentId']
          @OrgId = params['OrgId']
          @Name = params['Name']
          @Id = params['Id']
          @Description = params['Description']
          @Source = params['Source']
          @IdPath = params['IdPath']
          @Itime = params['Itime']
          @ParentOrgId = params['ParentOrgId']
          @ImportType = params['ImportType']
          @MiniIamId = params['MiniIamId']
          @UserTotal = params['UserTotal']
          @IsLeaf = params['IsLeaf']
          @ReadOnly = params['ReadOnly']
          @LatestSyncResult = params['LatestSyncResult']
          @LatestSyncTime = params['LatestSyncTime']
        end
      end

      # 账户分组详情响应数据
      class DescribeAccountGroupsPageResp < TencentCloud::Common::AbstractModel
        # @param Items: 账户分响应对象集合
        # @type Items: Array
        # @param Page: 分页公共对象
        # @type Page: :class:`Tencentcloud::Ioa.v20220601.models.Paging`

        attr_accessor :Items, :Page

        def initialize(items=nil, page=nil)
          @Items = items
          @Page = page
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              describeaccountgroupsdata_tmp = DescribeAccountGroupsData.new
              describeaccountgroupsdata_tmp.deserialize(i)
              @Items << describeaccountgroupsdata_tmp
            end
          end
          unless params['Page'].nil?
            @Page = Paging.new
            @Page.deserialize(params['Page'])
          end
        end
      end

      # DescribeAccountGroups请求参数结构体
      class DescribeAccountGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Deepin: 搜索范围：0-仅当前分组的直接子组，1-当前分组的所有子组。默认为0。
        # @type Deepin: Integer
        # @param Condition: 查询条件

        # 过滤参数
        # 1、Name，string类型，按分组名过滤
        # 是否必填：否
        # 操作符: like

        # 排序条件
        # 1、Itime，string类型，按分组创建时间排序
        # 是否必填：否
        # 2、Utime，string类型，按分组更新时间排序
        # 是否必填：否
        # @type Condition: :class:`Tencentcloud::Ioa.v20220601.models.Condition`
        # @param ParentId: 父分组ID，获取该分组下的子组信息。默认查询全网根分组下子组信息。
        # @type ParentId: Integer

        attr_accessor :Deepin, :Condition, :ParentId

        def initialize(deepin=nil, condition=nil, parentid=nil)
          @Deepin = deepin
          @Condition = condition
          @ParentId = parentid
        end

        def deserialize(params)
          @Deepin = params['Deepin']
          unless params['Condition'].nil?
            @Condition = Condition.new
            @Condition.deserialize(params['Condition'])
          end
          @ParentId = params['ParentId']
        end
      end

      # DescribeAccountGroups返回参数结构体
      class DescribeAccountGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 账号分组详情响应数据
        # @type Data: :class:`Tencentcloud::Ioa.v20220601.models.DescribeAccountGroupsPageResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeAccountGroupsPageResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 分页的data数据
      class DescribeDevicesPageRsp < TencentCloud::Common::AbstractModel
        # @param Paging: 数据分页信息
        # @type Paging: :class:`Tencentcloud::Ioa.v20220601.models.Paging`
        # @param Items: 业务响应数据
        # @type Items: Array

        attr_accessor :Paging, :Items

        def initialize(paging=nil, items=nil)
          @Paging = paging
          @Items = items
        end

        def deserialize(params)
          unless params['Paging'].nil?
            @Paging = Paging.new
            @Paging.deserialize(params['Paging'])
          end
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              devicedetail_tmp = DeviceDetail.new
              devicedetail_tmp.deserialize(i)
              @Items << devicedetail_tmp
            end
          end
        end
      end

      # DescribeDevices请求参数结构体
      class DescribeDevicesRequest < TencentCloud::Common::AbstractModel
        # @param Condition: 过滤条件参数（字段含义请参考接口返回值）

        # - Mid, 类型String，支持操作：【eq，like，ilike】，支持排序
        # - Name, 类型String，支持操作：【eq，like，ilike】，支持排序
        # - Itime, 类型String，支持操作：【eq，like，ilike】，支持排序
        # - UserName, 类型String，支持操作：【eq，like，ilike】，支持排序
        # - MacAddr, 类型String，支持操作：【eq，like，ilike】，支持排序
        # - UserId, 类型String，支持操作：【eq，like，ilike】，支持排序
        # - Ip, 类型String，支持操作：【eq，like，ilike】，支持排序
        # - Tags，类型String，支持操作：【eq，like，ilike】，支持排序
        # - LocalIpList，类型String，支持操作：【eq，like，ilike】，支持排序
        # - SerialNum，类型String，支持操作：【eq，like，ilike】，支持排序
        # - Version，类型String，支持操作：【eq，like，ilike】，支持排序
        # - StrVersion，类型String，支持操作：【eq，like，ilike】，支持排序
        # - RtpStatus，类型String，支持操作：【eq，like，ilike】，**不支持排序**
        # - HostName，类型String，支持操作：【eq，like，ilike】，支持排序
        # - IoaUserName，类型String，支持操作：【eq，like，ilike】，支持排序
        # - GroupName，类型String，支持操作：【eq，like，ilike】，支持排序
        # - CriticalVulListCount，**类型Int**，支持操作：【eq】，**不支持排序**
        # - RiskCount，**类型Int**，支持操作：【eq】，**不支持排序**
        # - VulVersion，类型String，支持操作：【eq，like，ilike】，**不支持排序**
        # - Virusver，类型String，支持操作：【eq，like，ilike】，**不支持排序**
        # - SysRepver，类型String，支持操作：【eq，like，ilike】，**不支持排序**
        # - BaseBoardSn，类型String，支持操作：【eq，like，ilike】，支持排序
        # - Os，类型String，支持操作：【eq，like，ilike】，支持排序
        # - ConnActiveTime，类型String，支持操作：【eq，like，ilike】，**不支持排序**
        # - FirewallStatus，**类型Int**，支持操作：【eq】，**不支持排序**
        # - ProfileName，类型String，支持操作：【eq，like，ilike】，支持排序
        # - DomainName，类型String，支持操作：【eq，like，ilike】，支持排序
        # - SysRepVersion，类型String，支持操作：【eq，like，ilike】，支持排序
        # - VirusVer，类型String，支持操作：【eq，like，ilike】，支持排序
        # - Cpu，类型String，支持操作：【eq，like，ilike】，支持排序
        # - Memory，类型String，支持操作：【eq，like，ilike】，支持排序
        # - HardDiskSize，类型String，支持操作：【eq，like，ilike】，支持排序
        # - HardwareChangeCount，**类型Int**，支持操作：【eq】，支持排序
        # - AccountName，类型String，支持操作：【like.ilike】，支持排序
        # - AccountGroupName，类型String，支持操作：【like.ilike】，支持排序
        # - ScreenRecordingPermission，**类型Int**，支持操作：【eq】，支持排序
        # - DiskAccessPermission，**类型Int**，支持操作：【eq】，支持排序





        # 分页参数
        # - PageNum 从1开始，小于等于0时使用默认参数
        # - PageSize 最大值5000，最好不超过100
        # @type Condition: :class:`Tencentcloud::Ioa.v20220601.models.Condition`
        # @param GroupId: 【和GroupIds必须有一个填写】设备分组id（需要和OsType匹配），下面是私有化场景下默认id：
        # id-名称-操作系统
        # 1	全网终端	Win
        # 2	未分组终端	Win
        # 30000000	服务器	Win
        # 40000101	全网终端	Linux
        # 40000102	未分组终端	Linux
        # 40000103	服务器	Linux
        # 40000201	全网终端	macOS
        # 40000202	未分组终端	macOS
        # 40000203	服务器	macOS
        # 40000401	全网终端	Android
        # 40000402	未分组终端	Android
        # 40000501	全网终端	iOS
        # 40000502	未分组终端	iOS


        # SaaS需要调用分组接口DescribeDeviceChildGroups获取对应分组id
        # @type GroupId: Integer
        # @param OsType: 【必填】操作系统类型（0: win，1：linux，2: mac，4：android，5：ios   默认值0），需要和GroupId或者GroupIds匹配
        # @type OsType: Integer
        # @param OnlineStatus: 在线状态 （2表示在线，0或者1表示离线）
        # @type OnlineStatus: Integer
        # @param Filters: 过滤条件--兼容旧接口,参数同Condition
        # @type Filters: Array
        # @param Sort: 排序字段--兼容旧接口,参数同Condition
        # @type Sort: :class:`Tencentcloud::Ioa.v20220601.models.Sort`
        # @param PageNum: 获取第几页--兼容旧接口,参数同Condition
        # @type PageNum: Integer
        # @param PageSize: 每页获取数--兼容旧接口,参数同Condition
        # @type PageSize: Integer
        # @param Status: 授权状态： 4基础授权 5高级授权
        # @type Status: Integer
        # @param GroupIds: 【和GroupId必须有一个填写】设备分组id列表（需要和OsType匹配）
        # @type GroupIds: Array

        attr_accessor :Condition, :GroupId, :OsType, :OnlineStatus, :Filters, :Sort, :PageNum, :PageSize, :Status, :GroupIds

        def initialize(condition=nil, groupid=nil, ostype=nil, onlinestatus=nil, filters=nil, sort=nil, pagenum=nil, pagesize=nil, status=nil, groupids=nil)
          @Condition = condition
          @GroupId = groupid
          @OsType = ostype
          @OnlineStatus = onlinestatus
          @Filters = filters
          @Sort = sort
          @PageNum = pagenum
          @PageSize = pagesize
          @Status = status
          @GroupIds = groupids
        end

        def deserialize(params)
          unless params['Condition'].nil?
            @Condition = Condition.new
            @Condition.deserialize(params['Condition'])
          end
          @GroupId = params['GroupId']
          @OsType = params['OsType']
          @OnlineStatus = params['OnlineStatus']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['Sort'].nil?
            @Sort = Sort.new
            @Sort.deserialize(params['Sort'])
          end
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          @Status = params['Status']
          @GroupIds = params['GroupIds']
        end
      end

      # DescribeDevices返回参数结构体
      class DescribeDevicesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 分页的data数据
        # @type Data: :class:`Tencentcloud::Ioa.v20220601.models.DescribeDevicesPageRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeDevicesPageRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 所属组
      class DescribeLocalAccountAccountGroupsData < TencentCloud::Common::AbstractModel
        # @param AccountGroupId: 组Id(只支持32位)
        # @type AccountGroupId: Integer

        attr_accessor :AccountGroupId

        def initialize(accountgroupid=nil)
          @AccountGroupId = accountgroupid
        end

        def deserialize(params)
          @AccountGroupId = params['AccountGroupId']
        end
      end

      # 获取账号列表响应的单个对象
      class DescribeLocalAccountsData < TencentCloud::Common::AbstractModel
        # @param Id: uid，数据库中唯一
        # @type Id: Integer
        # @param UserId: 账号，登录账号
        # @type UserId: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param AccountId: 账号id，同Id字段
        # @type AccountId: Integer
        # @param GroupId: 账号所在的分组id
        # @type GroupId: Integer
        # @param GroupName: 账号所在的分组名称
        # @type GroupName: String
        # @param NamePath: 账号所在的分组名称路径，用英文.分割
        # @type NamePath: String
        # @param Source: 账号来源,0表示本地账号(只支持32位)
        # @type Source: Integer
        # @param Status: 账号状态,0禁用，1启用(只支持32位)
        # @type Status: Integer
        # @param Itime: 账号的创建时间
        # @type Itime: String
        # @param Utime: 账号的最后更新时间
        # @type Utime: String
        # @param ExtraInfo: 账号的扩展信息，包含邮箱、手机号、身份证、职位等信息
        # @type ExtraInfo: String
        # @param RiskLevel: 用户风险等级，枚举：none, low, middle, high
        # @type RiskLevel: String
        # @param AccountGroups: 所属组
        # @type AccountGroups: Array
        # @param MobileBindNum: 绑定手机端设备数
        # @type MobileBindNum: Integer
        # @param PcBindNum: 绑定Pc端设备数
        # @type PcBindNum: Integer
        # @param OnlineStatus: 账号在线状态 1：在线 2：离线
        # @type OnlineStatus: Integer
        # @param ActiveStatus: 账号活跃状态 1：活跃 2：非活跃
        # @type ActiveStatus: Integer
        # @param LoginTime: 账号登录时间
        # @type LoginTime: String
        # @param LogoutTime: 账号登出时间
        # @type LogoutTime: String

        attr_accessor :Id, :UserId, :UserName, :AccountId, :GroupId, :GroupName, :NamePath, :Source, :Status, :Itime, :Utime, :ExtraInfo, :RiskLevel, :AccountGroups, :MobileBindNum, :PcBindNum, :OnlineStatus, :ActiveStatus, :LoginTime, :LogoutTime

        def initialize(id=nil, userid=nil, username=nil, accountid=nil, groupid=nil, groupname=nil, namepath=nil, source=nil, status=nil, itime=nil, utime=nil, extrainfo=nil, risklevel=nil, accountgroups=nil, mobilebindnum=nil, pcbindnum=nil, onlinestatus=nil, activestatus=nil, logintime=nil, logouttime=nil)
          @Id = id
          @UserId = userid
          @UserName = username
          @AccountId = accountid
          @GroupId = groupid
          @GroupName = groupname
          @NamePath = namepath
          @Source = source
          @Status = status
          @Itime = itime
          @Utime = utime
          @ExtraInfo = extrainfo
          @RiskLevel = risklevel
          @AccountGroups = accountgroups
          @MobileBindNum = mobilebindnum
          @PcBindNum = pcbindnum
          @OnlineStatus = onlinestatus
          @ActiveStatus = activestatus
          @LoginTime = logintime
          @LogoutTime = logouttime
        end

        def deserialize(params)
          @Id = params['Id']
          @UserId = params['UserId']
          @UserName = params['UserName']
          @AccountId = params['AccountId']
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @NamePath = params['NamePath']
          @Source = params['Source']
          @Status = params['Status']
          @Itime = params['Itime']
          @Utime = params['Utime']
          @ExtraInfo = params['ExtraInfo']
          @RiskLevel = params['RiskLevel']
          unless params['AccountGroups'].nil?
            @AccountGroups = []
            params['AccountGroups'].each do |i|
              describelocalaccountaccountgroupsdata_tmp = DescribeLocalAccountAccountGroupsData.new
              describelocalaccountaccountgroupsdata_tmp.deserialize(i)
              @AccountGroups << describelocalaccountaccountgroupsdata_tmp
            end
          end
          @MobileBindNum = params['MobileBindNum']
          @PcBindNum = params['PcBindNum']
          @OnlineStatus = params['OnlineStatus']
          @ActiveStatus = params['ActiveStatus']
          @LoginTime = params['LoginTime']
          @LogoutTime = params['LogoutTime']
        end
      end

      # 获取账号列表响应的分页对象
      class DescribeLocalAccountsPage < TencentCloud::Common::AbstractModel
        # @param Page: 公共分页对象
        # @type Page: :class:`Tencentcloud::Ioa.v20220601.models.Paging`
        # @param Items: 获取账号列表响应的单个对象
        # @type Items: Array

        attr_accessor :Page, :Items

        def initialize(page=nil, items=nil)
          @Page = page
          @Items = items
        end

        def deserialize(params)
          unless params['Page'].nil?
            @Page = Paging.new
            @Page.deserialize(params['Page'])
          end
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              describelocalaccountsdata_tmp = DescribeLocalAccountsData.new
              describelocalaccountsdata_tmp.deserialize(i)
              @Items << describelocalaccountsdata_tmp
            end
          end
        end
      end

      # DescribeLocalAccounts请求参数结构体
      class DescribeLocalAccountsRequest < TencentCloud::Common::AbstractModel
        # @param Condition: 查询条件：过滤或排序
        # 1、UserName，string类型，姓名
        # 是否必填：否
        # 过滤支持：是，支持eq、like、ilike
        # 排序支持：否
        # 2、UserId，string类型，账户
        # 是否必填：否
        # 过滤支持：是，支持eq、like、ilike
        # 排序支持：否
        # 3、Phone，string类型，手机号
        # 是否必填：否
        # 过滤支持：是，支持eq、like、ilike
        # 排序支持：否
        # @type Condition: :class:`Tencentcloud::Ioa.v20220601.models.Condition`
        # @param AccountGroupId: 获取账号的分组ID，不传默认获取全网根账号组
        # @type AccountGroupId: Integer
        # @param ShowFlag: 是否仅展示当前目录下用户 1： 递归显示 2：仅显示当前目录下用户
        # @type ShowFlag: Integer

        attr_accessor :Condition, :AccountGroupId, :ShowFlag

        def initialize(condition=nil, accountgroupid=nil, showflag=nil)
          @Condition = condition
          @AccountGroupId = accountgroupid
          @ShowFlag = showflag
        end

        def deserialize(params)
          unless params['Condition'].nil?
            @Condition = Condition.new
            @Condition.deserialize(params['Condition'])
          end
          @AccountGroupId = params['AccountGroupId']
          @ShowFlag = params['ShowFlag']
        end
      end

      # DescribeLocalAccounts返回参数结构体
      class DescribeLocalAccountsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 获取账号列表响应的分页对象
        # @type Data: :class:`Tencentcloud::Ioa.v20220601.models.DescribeLocalAccountsPage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeLocalAccountsPage.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRootAccountGroup请求参数结构体
      class DescribeRootAccountGroupRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeRootAccountGroup返回参数结构体
      class DescribeRootAccountGroupResponse < TencentCloud::Common::AbstractModel
        # @param Data: 账号根分组响应详情
        # @type Data: :class:`Tencentcloud::Ioa.v20220601.models.GetAccountGroupData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = GetAccountGroupData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 业务响应数据
      class DeviceDetail < TencentCloud::Common::AbstractModel
        # @param Id: 设备ID
        # @type Id: Integer
        # @param Mid: 设备唯一标识码，在ioa中每个设备有唯一标识码
        # @type Mid: String
        # @param Name: 终端名（设备名）
        # @type Name: String
        # @param GroupId: 设备所在分组ID
        # @type GroupId: Integer
        # @param OsType: OS平台，0：Windows 、1： Linux、 2：macOS 、4： Android、 5: iOS。默认是0
        # @type OsType: Integer
        # @param Ip: 设备IP地址（出口IP）
        # @type Ip: String
        # @param OnlineStatus: 在线状态，2：在线、0或者1:离线
        # @type OnlineStatus: Integer
        # @param Version: 客户端版本号-大整数
        # @type Version: String
        # @param StrVersion: 客户端版本号-点分字符串
        # @type StrVersion: String
        # @param Itime: 首次在线时间
        # @type Itime: String
        # @param ConnActiveTime: 最后一次在线时间
        # @type ConnActiveTime: String
        # @param Locked: 设备是否加锁 ，1：锁定 0或者2：未锁定。
        # @type Locked: Integer
        # @param LocalIpList: 设备本地IP列表, 包括IP
        # @type LocalIpList: String
        # @param HostId: 宿主机id（需要宿主机也安装iOA才能显示）
        # @type HostId: Integer
        # @param GroupName: 设备所属分组名
        # @type GroupName: String
        # @param GroupNamePath: 设备所属分组路径
        # @type GroupNamePath: String
        # @param CriticalVulListCount: 未修复高危漏洞数(只支持32位)
        # @type CriticalVulListCount: Integer
        # @param ComputerName: 设备名，和Name相同
        # @type ComputerName: String
        # @param DomainName: 登录域名
        # @type DomainName: String
        # @param MacAddr: MAC地址
        # @type MacAddr: String
        # @param VulCount: 漏洞数
        # @type VulCount: Integer
        # @param RiskCount: 病毒风险数
        # @type RiskCount: Integer
        # @param VirusVer: 病毒库版本
        # @type VirusVer: String
        # @param VulVersion: 漏洞库版本
        # @type VulVersion: String
        # @param SysRepVersion: 系统修复引擎版本
        # @type SysRepVersion: String
        # @param VulCriticalList: 高危补丁列表
        # @type VulCriticalList: Array
        # @param Tags: 标签
        # @type Tags: String
        # @param UserName: 终端用户名
        # @type UserName: String
        # @param FirewallStatus: 防火墙状态，不等于0表示开启
        # @type FirewallStatus: Integer
        # @param SerialNum: SN序列号
        # @type SerialNum: String
        # @param DeviceStrategyVer: 设备管控策略版本
        # @type DeviceStrategyVer: String
        # @param NGNStrategyVer: NGN策略版本
        # @type NGNStrategyVer: String
        # @param IOAUserName: 最近登录账户的账号
        # @type IOAUserName: String
        # @param DeviceNewStrategyVer: 设备管控新策略
        # @type DeviceNewStrategyVer: String
        # @param NGNNewStrategyVer: NGN策略新版本
        # @type NGNNewStrategyVer: String
        # @param HostName: 宿主机名称（需要宿主机也安装iOA才能显示）
        # @type HostName: String
        # @param BaseBoardSn: 主板序列号
        # @type BaseBoardSn: String
        # @param AccountUsers: 绑定账户名称
        # @type AccountUsers: String
        # @param IdentityStrategyVer: 身份策略版本
        # @type IdentityStrategyVer: String
        # @param IdentityNewStrategyVer: 身份策略新版本
        # @type IdentityNewStrategyVer: String
        # @param AccountGroupName: 最近登录账号部门
        # @type AccountGroupName: String
        # @param AccountName: 最近登录账户的姓名
        # @type AccountName: String
        # @param AccountGroupId: 账号组id
        # @type AccountGroupId: Integer

        attr_accessor :Id, :Mid, :Name, :GroupId, :OsType, :Ip, :OnlineStatus, :Version, :StrVersion, :Itime, :ConnActiveTime, :Locked, :LocalIpList, :HostId, :GroupName, :GroupNamePath, :CriticalVulListCount, :ComputerName, :DomainName, :MacAddr, :VulCount, :RiskCount, :VirusVer, :VulVersion, :SysRepVersion, :VulCriticalList, :Tags, :UserName, :FirewallStatus, :SerialNum, :DeviceStrategyVer, :NGNStrategyVer, :IOAUserName, :DeviceNewStrategyVer, :NGNNewStrategyVer, :HostName, :BaseBoardSn, :AccountUsers, :IdentityStrategyVer, :IdentityNewStrategyVer, :AccountGroupName, :AccountName, :AccountGroupId

        def initialize(id=nil, mid=nil, name=nil, groupid=nil, ostype=nil, ip=nil, onlinestatus=nil, version=nil, strversion=nil, itime=nil, connactivetime=nil, locked=nil, localiplist=nil, hostid=nil, groupname=nil, groupnamepath=nil, criticalvullistcount=nil, computername=nil, domainname=nil, macaddr=nil, vulcount=nil, riskcount=nil, virusver=nil, vulversion=nil, sysrepversion=nil, vulcriticallist=nil, tags=nil, username=nil, firewallstatus=nil, serialnum=nil, devicestrategyver=nil, ngnstrategyver=nil, ioausername=nil, devicenewstrategyver=nil, ngnnewstrategyver=nil, hostname=nil, baseboardsn=nil, accountusers=nil, identitystrategyver=nil, identitynewstrategyver=nil, accountgroupname=nil, accountname=nil, accountgroupid=nil)
          @Id = id
          @Mid = mid
          @Name = name
          @GroupId = groupid
          @OsType = ostype
          @Ip = ip
          @OnlineStatus = onlinestatus
          @Version = version
          @StrVersion = strversion
          @Itime = itime
          @ConnActiveTime = connactivetime
          @Locked = locked
          @LocalIpList = localiplist
          @HostId = hostid
          @GroupName = groupname
          @GroupNamePath = groupnamepath
          @CriticalVulListCount = criticalvullistcount
          @ComputerName = computername
          @DomainName = domainname
          @MacAddr = macaddr
          @VulCount = vulcount
          @RiskCount = riskcount
          @VirusVer = virusver
          @VulVersion = vulversion
          @SysRepVersion = sysrepversion
          @VulCriticalList = vulcriticallist
          @Tags = tags
          @UserName = username
          @FirewallStatus = firewallstatus
          @SerialNum = serialnum
          @DeviceStrategyVer = devicestrategyver
          @NGNStrategyVer = ngnstrategyver
          @IOAUserName = ioausername
          @DeviceNewStrategyVer = devicenewstrategyver
          @NGNNewStrategyVer = ngnnewstrategyver
          @HostName = hostname
          @BaseBoardSn = baseboardsn
          @AccountUsers = accountusers
          @IdentityStrategyVer = identitystrategyver
          @IdentityNewStrategyVer = identitynewstrategyver
          @AccountGroupName = accountgroupname
          @AccountName = accountname
          @AccountGroupId = accountgroupid
        end

        def deserialize(params)
          @Id = params['Id']
          @Mid = params['Mid']
          @Name = params['Name']
          @GroupId = params['GroupId']
          @OsType = params['OsType']
          @Ip = params['Ip']
          @OnlineStatus = params['OnlineStatus']
          @Version = params['Version']
          @StrVersion = params['StrVersion']
          @Itime = params['Itime']
          @ConnActiveTime = params['ConnActiveTime']
          @Locked = params['Locked']
          @LocalIpList = params['LocalIpList']
          @HostId = params['HostId']
          @GroupName = params['GroupName']
          @GroupNamePath = params['GroupNamePath']
          @CriticalVulListCount = params['CriticalVulListCount']
          @ComputerName = params['ComputerName']
          @DomainName = params['DomainName']
          @MacAddr = params['MacAddr']
          @VulCount = params['VulCount']
          @RiskCount = params['RiskCount']
          @VirusVer = params['VirusVer']
          @VulVersion = params['VulVersion']
          @SysRepVersion = params['SysRepVersion']
          @VulCriticalList = params['VulCriticalList']
          @Tags = params['Tags']
          @UserName = params['UserName']
          @FirewallStatus = params['FirewallStatus']
          @SerialNum = params['SerialNum']
          @DeviceStrategyVer = params['DeviceStrategyVer']
          @NGNStrategyVer = params['NGNStrategyVer']
          @IOAUserName = params['IOAUserName']
          @DeviceNewStrategyVer = params['DeviceNewStrategyVer']
          @NGNNewStrategyVer = params['NGNNewStrategyVer']
          @HostName = params['HostName']
          @BaseBoardSn = params['BaseBoardSn']
          @AccountUsers = params['AccountUsers']
          @IdentityStrategyVer = params['IdentityStrategyVer']
          @IdentityNewStrategyVer = params['IdentityNewStrategyVer']
          @AccountGroupName = params['AccountGroupName']
          @AccountName = params['AccountName']
          @AccountGroupId = params['AccountGroupId']
        end
      end

      # Filters 条件过滤
      class Filter < TencentCloud::Common::AbstractModel
        # @param Field: 过滤字段
        # @type Field: String
        # @param Operator: 过滤方式： eq:等于,net:不等于,like,nlike,gt:大于,lt:小于,egt:大于等于,elt:小于等于。具体支持哪些过滤方式，结合具体接口字段描述来定
        # @type Operator: String
        # @param Values: 过滤条件
        # @type Values: Array

        attr_accessor :Field, :Operator, :Values

        def initialize(field=nil, operator=nil, values=nil)
          @Field = field
          @Operator = operator
          @Values = values
        end

        def deserialize(params)
          @Field = params['Field']
          @Operator = params['Operator']
          @Values = params['Values']
        end
      end

      # FilterGroups 条件过滤组
      class FilterGroup < TencentCloud::Common::AbstractModel
        # @param Filters: Filters 条件过滤
        # @type Filters: Array

        attr_accessor :Filters

        def initialize(filters=nil)
          @Filters = filters
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # 账号分组详情响应数据
      class GetAccountGroupData < TencentCloud::Common::AbstractModel
        # @param NamePath: 分组名称全路径，点分格式
        # @type NamePath: String
        # @param IdPathArr: 分组ID全路径，数组格式
        # @type IdPathArr: Array
        # @param ExtraInfo: 分组扩展信息
        # @type ExtraInfo: String
        # @param Utime: 最后更新时间
        # @type Utime: String
        # @param ParentId: 当前分组的父分组ID
        # @type ParentId: Integer
        # @param OrgId: 源账号组ID，该字段仅适用于第三方同步的组织架构，通过OrgId-Id构成源组织架构分组ID-现组织架构分组ID映射关系
        # @type OrgId: String
        # @param Name: 分组名称
        # @type Name: String
        # @param Id: 分组ID
        # @type Id: Integer
        # @param Description: 分组描述
        # @type Description: String
        # @param Source: 分组导入源(只支持32位)
        # @type Source: Integer
        # @param IdPath: 分组ID全路径，点分格式
        # @type IdPath: String
        # @param Itime: 创建时间
        # @type Itime: String
        # @param ParentOrgId: 父源账号组ID，该字段仅适用于第三方同步的组织架构
        # @type ParentOrgId: String
        # @param Import: 导入信息,json格式
        # @type Import: String
        # @param ImportEnable: 是否开启导入架构
        # @type ImportEnable: Boolean
        # @param ImportType: 导入类型
        # @type ImportType: String
        # @param MiniIamId: miniIAMId，MiniIAM源才有
        # @type MiniIamId: String

        attr_accessor :NamePath, :IdPathArr, :ExtraInfo, :Utime, :ParentId, :OrgId, :Name, :Id, :Description, :Source, :IdPath, :Itime, :ParentOrgId, :Import, :ImportEnable, :ImportType, :MiniIamId

        def initialize(namepath=nil, idpatharr=nil, extrainfo=nil, utime=nil, parentid=nil, orgid=nil, name=nil, id=nil, description=nil, source=nil, idpath=nil, itime=nil, parentorgid=nil, import=nil, importenable=nil, importtype=nil, miniiamid=nil)
          @NamePath = namepath
          @IdPathArr = idpatharr
          @ExtraInfo = extrainfo
          @Utime = utime
          @ParentId = parentid
          @OrgId = orgid
          @Name = name
          @Id = id
          @Description = description
          @Source = source
          @IdPath = idpath
          @Itime = itime
          @ParentOrgId = parentorgid
          @Import = import
          @ImportEnable = importenable
          @ImportType = importtype
          @MiniIamId = miniiamid
        end

        def deserialize(params)
          @NamePath = params['NamePath']
          @IdPathArr = params['IdPathArr']
          @ExtraInfo = params['ExtraInfo']
          @Utime = params['Utime']
          @ParentId = params['ParentId']
          @OrgId = params['OrgId']
          @Name = params['Name']
          @Id = params['Id']
          @Description = params['Description']
          @Source = params['Source']
          @IdPath = params['IdPath']
          @Itime = params['Itime']
          @ParentOrgId = params['ParentOrgId']
          @Import = params['Import']
          @ImportEnable = params['ImportEnable']
          @ImportType = params['ImportType']
          @MiniIamId = params['MiniIamId']
        end
      end

      # 页码
      class Paging < TencentCloud::Common::AbstractModel
        # @param PageSize: 每页条数
        # @type PageSize: Integer
        # @param PageNum: 页码
        # @type PageNum: Integer
        # @param PageCount: 总页数
        # @type PageCount: Integer
        # @param Total: 记录总数
        # @type Total: Integer

        attr_accessor :PageSize, :PageNum, :PageCount, :Total

        def initialize(pagesize=nil, pagenum=nil, pagecount=nil, total=nil)
          @PageSize = pagesize
          @PageNum = pagenum
          @PageCount = pagecount
          @Total = total
        end

        def deserialize(params)
          @PageSize = params['PageSize']
          @PageNum = params['PageNum']
          @PageCount = params['PageCount']
          @Total = params['Total']
        end
      end

      # 规则表达式
      class RuleExpression < TencentCloud::Common::AbstractModel
        # @param Items: 规则元数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param Relation: 关系
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Relation: String

        attr_accessor :Items, :Relation

        def initialize(items=nil, relation=nil)
          @Items = items
          @Relation = relation
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              ruleitem_tmp = RuleItem.new
              ruleitem_tmp.deserialize(i)
              @Items << ruleitem_tmp
            end
          end
          @Relation = params['Relation']
        end
      end

      # 规则元数据
      class RuleItem < TencentCloud::Common::AbstractModel
        # @param Key: 字段名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Operate: 操作关系（等于、不等于、包含、不包含）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operate: String
        # @param Value: 内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Values: 内容，v2多值版本使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Values: Array

        attr_accessor :Key, :Operate, :Value, :Values

        def initialize(key=nil, operate=nil, value=nil, values=nil)
          @Key = key
          @Operate = operate
          @Value = value
          @Values = values
        end

        def deserialize(params)
          @Key = params['Key']
          @Operate = params['Operate']
          @Value = params['Value']
          @Values = params['Values']
        end
      end

      # 简单规则表达式
      class SimpleRule < TencentCloud::Common::AbstractModel
        # @param Expressions: 规则表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Expressions: Array
        # @param Relation: 表达式间逻辑关系
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Relation: String

        attr_accessor :Expressions, :Relation

        def initialize(expressions=nil, relation=nil)
          @Expressions = expressions
          @Relation = relation
        end

        def deserialize(params)
          unless params['Expressions'].nil?
            @Expressions = []
            params['Expressions'].each do |i|
              ruleexpression_tmp = RuleExpression.new
              ruleexpression_tmp.deserialize(i)
              @Expressions << ruleexpression_tmp
            end
          end
          @Relation = params['Relation']
        end
      end

      # Sort 排序字段
      class Sort < TencentCloud::Common::AbstractModel
        # @param Field: 排序字段
        # @type Field: String
        # @param Order: 排序方式
        # @type Order: String

        attr_accessor :Field, :Order

        def initialize(field=nil, order=nil)
          @Field = field
          @Order = order
        end

        def deserialize(params)
          @Field = params['Field']
          @Order = params['Order']
        end
      end

    end
  end
end

