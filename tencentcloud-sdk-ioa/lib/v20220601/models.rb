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
      # - [ ] 过滤条件<br>

      # <li>Name - String - 是否必填：否 - 操作符: ilike  - 排序支持：否- 根据分组名称进行查询。</li>
      # 分页参数<br>
      # <li>PageNum 从1开始，小于等于0时使用默认参数。</li>
      # <li>PageSize 最大值5000，最好不超过100。</li>
      class Condition < TencentCloud::Common::AbstractModel
        # @param Filters: Filters 条件过滤
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Filters: Array
        # @param FilterGroups: FilterGroups 条件过滤组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilterGroups: Array
        # @param Sort: Sort 排序字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sort: :class:`Tencentcloud::Ioa.v20220601.models.Sort`
        # @param PageSize: PageSize 每页获取数(只支持32位)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param PageNum: PageNum 获取第几页(只支持32位)
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 分组名称
      class DescribeAccountGroupsData < TencentCloud::Common::AbstractModel
        # @param NamePath: 名称path
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamePath: String
        # @param IdPathArr: id patch数组(只支持32位)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdPathArr: Array
        # @param ExtraInfo: 扩展信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraInfo: String
        # @param Utime: 最后更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Utime: String
        # @param ParentId: 父id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentId: Integer
        # @param OrgId: 组织id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgId: String
        # @param Name: 账户组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Id: id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Source: 同步数据源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: Integer
        # @param IdPath: id path
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdPath: String
        # @param Itime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Itime: String
        # @param ParentOrgId: 父组织id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentOrgId: String
        # @param ImportType: 导入类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImportType: String
        # @param MiniIamId: miniIAM id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MiniIamId: String
        # @param UserTotal: 该分组下用户总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserTotal: Integer
        # @param IsLeaf: 是否叶子节点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsLeaf: Boolean
        # @param ReadOnly: 是否该账户的直接权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReadOnly: Boolean
        # @param LatestSyncResult: 最新一次同步任务的结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestSyncResult: String
        # @param LatestSyncTime: 最新一次同步任务的结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param Page: 分页公共对象
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param Deepin: 搜索范围,0-仅搜直接子组,1-深层搜索(只支持32位)
        # @type Deepin: Integer
        # @param Condition: 滤条件、分页参数
        # <li>Name - String - 是否必填：否 - 操作符: like  - 排序支持：否- 按账号分组过滤。</li>
        # 排序条件
        # <li>Itime - string - 是否必填：否 - 排序支持：是 - 按账号分组创建时间排序。</li>
        # <li>Utime - string - 是否必填：否 - 排序支持：是 - 按账号分组更新时间排序。</li>
        # @type Condition: :class:`Tencentcloud::Ioa.v20220601.models.Condition`
        # @param ParentId: 父分组id
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
        # @param Data: 账户分组详情响应数据
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Paging: :class:`Tencentcloud::Ioa.v20220601.models.Paging`
        # @param Items: 业务响应数据
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param Condition: 过滤条件<br>
        # <li>Ip - String - 是否必填：否 - 操作符: eq  - 排序支持：否- 按照Ip进行过滤。</li>
        # <li>MacAddr - String - 是否必填：否 - 操作符: eq  - 排序支持：否- 按照mac地址进行过滤。</li>
        # <li>IoaUserName - String - 是否必填：否 - 操作符: eq  - 排序支持：否- 按照ioa用户名进行过滤。</li>
        # 分页参数<br>
        # <li>PageNum 从1开始，小于等于0时使用默认参数。</li>
        # <li>PageSize 最大值5000，最好不超过100。</li>
        # @type Condition: :class:`Tencentcloud::Ioa.v20220601.models.Condition`
        # @param GroupId: 私有化默认分组id-名称-操作系统
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
        # @type GroupId: Integer
        # @param OsType: 系统类型（0: win，1：linux，2: mac，3: win_srv，4：android，5：ios   默认值0）
        # @type OsType: Integer
        # @param OnlineStatus: 在线状态 2 在线 0，1 离线
        # @type OnlineStatus: Integer
        # @param Filters: 过滤条件--兼容旧接口,参数同Condition
        # @type Filters: Array
        # @param Sort: 排序字段--兼容旧接口,参数同Condition
        # @type Sort: :class:`Tencentcloud::Ioa.v20220601.models.Sort`
        # @param PageNum: 获取第几页--兼容旧接口,参数同Condition(只支持32位)
        # @type PageNum: Integer
        # @param PageSize: 每页获取数--兼容旧接口,参数同Condition(只支持32位)
        # @type PageSize: Integer
        # @param Status: 授权状态 4未授权 5已授权
        # @type Status: Integer

        attr_accessor :Condition, :GroupId, :OsType, :OnlineStatus, :Filters, :Sort, :PageNum, :PageSize, :Status

        def initialize(condition=nil, groupid=nil, ostype=nil, onlinestatus=nil, filters=nil, sort=nil, pagenum=nil, pagesize=nil, status=nil)
          @Condition = condition
          @GroupId = groupid
          @OsType = ostype
          @OnlineStatus = onlinestatus
          @Filters = filters
          @Sort = sort
          @PageNum = pagenum
          @PageSize = pagesize
          @Status = status
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
        end
      end

      # DescribeDevices返回参数结构体
      class DescribeDevicesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 分页的data数据
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param UserId: 账号，登录账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param UserName: 用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param AccountId: 账号id，同Id字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountId: Integer
        # @param GroupId: 账号所在的分组id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: Integer
        # @param GroupName: 账号所在的分组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param NamePath: 账号所在的分组名称路径，用英文.分割
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamePath: String
        # @param Source: 账号来源,0表示本地账号(只支持32位)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: Integer
        # @param Status: 账号状态,0禁用，1启用(只支持32位)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param Itime: 账号的创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Itime: String
        # @param Utime: 账号的最后更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Utime: String
        # @param ExtraInfo: 账号的扩展信息，包含邮箱、手机号、身份证、职位等信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraInfo: String
        # @param RiskLevel: 用户风险等级，枚举：none, low, middle, high
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskLevel: String
        # @param AccountGroups: 所属组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountGroups: Array
        # @param MobileBindNum: 绑定手机端设备数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MobileBindNum: Integer
        # @param PcBindNum: 绑定Pc端设备数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PcBindNum: Integer
        # @param OnlineStatus: 账号在线状态 1：在线 2：离线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OnlineStatus: Integer
        # @param ActiveStatus: 账号活跃状态 1：活跃 2：非活跃
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActiveStatus: Integer
        # @param LoginTime: 账号登录时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoginTime: String
        # @param LogoutTime: 账号登出时间
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: :class:`Tencentcloud::Ioa.v20220601.models.Paging`
        # @param Items: 获取账号列表响应的单个对象
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param Condition: 滤条件、分页参数
        # <li>UserName - String - 是否必填：否 - 操作符: eq,like  - 排序支持：否- 按账号UserName过滤。</li>
        # <li>UserId - string - 是否必填：否 - 操作符: eq,like  - 排序支持：否 - 按账号UserNd过滤。</li>
        # <li>Phone - string - 是否必填：否 - 操作符: eq,like - 排序支持：否 - 按手机号过滤。</li>
        # @type Condition: :class:`Tencentcloud::Ioa.v20220601.models.Condition`
        # @param AccountGroupId: 获取账号的分组Id，不传默认获取全部(只支持32位)
        # @type AccountGroupId: Integer
        # @param ShowFlag: 是否仅展示当前目录下用户 1： 递归显示 2：仅显示当前目录下用户(只支持32位)
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
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param Data: 账户分组详情响应数据
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Mid: 设备唯一标识码，在ioa中每个设备有唯一标识码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mid: String
        # @param Name: 终端名（设备名）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param GroupId: 设备所在分组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: Integer
        # @param OsType: OS平台，0：Windows 、1： Linux、 2：macOS 、4： Android、 5: iOS。默认是0
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OsType: Integer
        # @param Ip: 设备IP地址（出口IP）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ip: String
        # @param OnlineStatus: 在线状态，2：在线、0或者1:离线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OnlineStatus: Integer
        # @param Version: 客户端版本号-大整数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param StrVersion: 客户端版本号-点分字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrVersion: String
        # @param Itime: 首次在线时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Itime: String
        # @param ConnActiveTime: 最后一次在线时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConnActiveTime: String
        # @param Locked: 设备是否加锁 ，1：锁定 0或者2：未锁定。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Locked: Integer
        # @param LocalIpList: 设备本地IP列表, 包括IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocalIpList: String
        # @param HostId: 主机ID(只支持32位)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostId: Integer
        # @param GroupName: 设备所属分组名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param GroupNamePath: 设备所属分组路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupNamePath: String
        # @param CriticalVulListCount: 未修复高危漏洞数(只支持32位)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CriticalVulListCount: Integer
        # @param ComputerName: 设备名，和Name相同
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComputerName: String
        # @param DomainName: 登录域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainName: String
        # @param MacAddr: MAC地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MacAddr: String
        # @param VulCount: 漏洞数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulCount: Integer
        # @param RiskCount: 病毒风险数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskCount: Integer
        # @param VirusVer: 病毒库版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirusVer: String
        # @param VulVersion: 漏洞库版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulVersion: String
        # @param SysRepVersion: 系统修复引擎版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SysRepVersion: String
        # @param VulCriticalList: 高危补丁列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulCriticalList: Array
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: String
        # @param UserName: 终端用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param FirewallStatus: 防火墙状态，不等于0表示开启
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirewallStatus: Integer
        # @param SerialNum: SN序列号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SerialNum: String
        # @param DeviceStrategyVer: 设备管控策略版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceStrategyVer: String
        # @param NGNStrategyVer: NGN策略版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NGNStrategyVer: String
        # @param IOAUserName: 最近登录账户的账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IOAUserName: String
        # @param DeviceNewStrategyVer: 设备管控新策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceNewStrategyVer: String
        # @param NGNNewStrategyVer: NGN策略新版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NGNNewStrategyVer: String
        # @param HostName: 主机名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostName: String
        # @param BaseBoardSn: 主板序列号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BaseBoardSn: String
        # @param AccountUsers: 绑定账户只有名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountUsers: String
        # @param IdentityStrategyVer: 身份策略版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdentityStrategyVer: String
        # @param IdentityNewStrategyVer: 身份策略新版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdentityNewStrategyVer: String
        # @param AccountGroupName: 最近登录账号部门
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountGroupName: String
        # @param AccountName: 最近登录账户的姓名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountName: String
        # @param AccountGroupId: 账号组id
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Field: String
        # @param Operator: 过滤方式 eq:等于,net:不等于,like,nlike,gt:大于,lt:小于,egt:大于等于,elt:小于等于
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operator: String
        # @param Values: 过滤条件
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 账户分组详情响应数据
      class GetAccountGroupData < TencentCloud::Common::AbstractModel
        # @param NamePath: 分组Namepath
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamePath: String
        # @param IdPathArr: 分组Id path arr(只支持32位)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdPathArr: Array
        # @param ExtraInfo: 分组扩展信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraInfo: String
        # @param Utime: 最后更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Utime: String
        # @param ParentId: 父分组id(只支持32位)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentId: Integer
        # @param OrgId: 组织id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgId: String
        # @param Name: 分组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Id: 分组id(只支持32位)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Source: 分组导入源(只支持32位)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: Integer
        # @param IdPath: Id Path
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdPath: String
        # @param Itime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Itime: String
        # @param ParentOrgId: 父组织id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentOrgId: String
        # @param Import: 导入信息,json格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Import: String
        # @param ImportEnable: 是否开启导入架构
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImportEnable: Boolean
        # @param ImportType: 导入类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImportType: String
        # @param MiniIamId: miniIAMId，MiniIAM源才有
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param PageSize: 每页条数(只支持32位)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param PageNum: 页码(只支持32位)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNum: Integer
        # @param PageCount: 总页数(只支持32位)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageCount: Integer
        # @param Total: 记录总数
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # Sort 排序字段
      class Sort < TencentCloud::Common::AbstractModel
        # @param Field: 排序字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Field: String
        # @param Order: 排序方式
        # 注意：此字段可能返回 null，表示取不到有效值。
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

