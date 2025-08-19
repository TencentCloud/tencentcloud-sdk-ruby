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
  module Ctem
    module V20231128
      # CreateCustomer请求参数结构体
      class CreateCustomerRequest < TencentCloud::Common::AbstractModel
        # @param Name: 企业名称
        # @type Name: String
        # @param ScanType: 资产收集、漏洞信息、弱口令、目录爆破、暗网泄露、Github泄露、文库网盘泄露、敏感信息泄露，其中资产收集必包含，多个用英文逗号隔离，例如：资产收集,漏洞信息
        # @type ScanType: String
        # @param Percent: 百分比取值范围为30-100
        # @type Percent: Integer
        # @param ScanCron: 周期测绘时间
        # @type ScanCron: String
        # @param IsScanNow: 是否立即启动
        # @type IsScanNow: Boolean
        # @param EnableCron: 是否启用周期测绘
        # @type EnableCron: Boolean
        # @param EnableScanSubEnterprise: 是否扫描子公司
        # @type EnableScanSubEnterprise: Boolean
        # @param EnableAuth: 是否授权
        # @type EnableAuth: Boolean
        # @param AuthStartAt: 授权开始时间
        # @type AuthStartAt: String
        # @param AuthEndAt: 授权结束时间
        # @type AuthEndAt: String
        # @param AuthFile: 授权文件id
        # @type AuthFile: String
        # @param ScanTime: 测绘时间配置项，采用json字符串格式
        # @type ScanTime: String
        # @param Keywords: 企业相关的关键字
        # @type Keywords: String
        # @param Icon: 图标
        # @type Icon: String
        # @param Qps: 并发设置
        # @type Qps: Integer
        # @param SubCompanyLevel: 限制子公司层级，-1表示不限制
        # @type SubCompanyLevel: Integer
        # @param IsIncludeFullScan: 是否以企业名称为起点做完整扫描(包含手动上传),如只想扫描特定的某几个域名，则传false。
        # @type IsIncludeFullScan: Boolean

        attr_accessor :Name, :ScanType, :Percent, :ScanCron, :IsScanNow, :EnableCron, :EnableScanSubEnterprise, :EnableAuth, :AuthStartAt, :AuthEndAt, :AuthFile, :ScanTime, :Keywords, :Icon, :Qps, :SubCompanyLevel, :IsIncludeFullScan

        def initialize(name=nil, scantype=nil, percent=nil, scancron=nil, isscannow=nil, enablecron=nil, enablescansubenterprise=nil, enableauth=nil, authstartat=nil, authendat=nil, authfile=nil, scantime=nil, keywords=nil, icon=nil, qps=nil, subcompanylevel=nil, isincludefullscan=nil)
          @Name = name
          @ScanType = scantype
          @Percent = percent
          @ScanCron = scancron
          @IsScanNow = isscannow
          @EnableCron = enablecron
          @EnableScanSubEnterprise = enablescansubenterprise
          @EnableAuth = enableauth
          @AuthStartAt = authstartat
          @AuthEndAt = authendat
          @AuthFile = authfile
          @ScanTime = scantime
          @Keywords = keywords
          @Icon = icon
          @Qps = qps
          @SubCompanyLevel = subcompanylevel
          @IsIncludeFullScan = isincludefullscan
        end

        def deserialize(params)
          @Name = params['Name']
          @ScanType = params['ScanType']
          @Percent = params['Percent']
          @ScanCron = params['ScanCron']
          @IsScanNow = params['IsScanNow']
          @EnableCron = params['EnableCron']
          @EnableScanSubEnterprise = params['EnableScanSubEnterprise']
          @EnableAuth = params['EnableAuth']
          @AuthStartAt = params['AuthStartAt']
          @AuthEndAt = params['AuthEndAt']
          @AuthFile = params['AuthFile']
          @ScanTime = params['ScanTime']
          @Keywords = params['Keywords']
          @Icon = params['Icon']
          @Qps = params['Qps']
          @SubCompanyLevel = params['SubCompanyLevel']
          @IsIncludeFullScan = params['IsIncludeFullScan']
        end
      end

      # CreateCustomer返回参数结构体
      class CreateCustomerResponse < TencentCloud::Common::AbstractModel
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

      # CreateJobRecord请求参数结构体
      class CreateJobRecordRequest < TencentCloud::Common::AbstractModel
        # @param CustomerId: 企业ID
        # @type CustomerId: Integer
        # @param TaskType: 任务类型：即时任务
        # @type TaskType: String
        # @param ScanType: 资产收集、漏洞信息、弱口令、目录爆破、暗网泄露、Github泄露、文库网盘泄露、敏感信息泄露，其中资产收集必包含，多个用英文逗号隔离，例如：资产收集,漏洞信息
        # @type ScanType: String
        # @param Qps: qps设置
        # @type Qps: Integer
        # @param IsIncludeFullScan: 是否包含完整扫描
        # @type IsIncludeFullScan: Boolean

        attr_accessor :CustomerId, :TaskType, :ScanType, :Qps, :IsIncludeFullScan

        def initialize(customerid=nil, tasktype=nil, scantype=nil, qps=nil, isincludefullscan=nil)
          @CustomerId = customerid
          @TaskType = tasktype
          @ScanType = scantype
          @Qps = qps
          @IsIncludeFullScan = isincludefullscan
        end

        def deserialize(params)
          @CustomerId = params['CustomerId']
          @TaskType = params['TaskType']
          @ScanType = params['ScanType']
          @Qps = params['Qps']
          @IsIncludeFullScan = params['IsIncludeFullScan']
        end
      end

      # CreateJobRecord返回参数结构体
      class CreateJobRecordResponse < TencentCloud::Common::AbstractModel
        # @param Id: 任务Id
        # @type Id: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :RequestId

        def initialize(id=nil, requestid=nil)
          @Id = id
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @RequestId = params['RequestId']
        end
      end

      # 企业详情
      class Customer < TencentCloud::Common::AbstractModel
        # @param Id: 企业ID
        # @type Id: Integer
        # @param Name: 企业名称
        # @type Name: String
        # @param Percent: 股权占比
        # @type Percent: Integer
        # @param ScanType: 资产收集、漏洞信息、弱口令、目录爆破、暗网泄露、Github泄露、文库网盘泄露、敏感信息泄露，其中资产收集必包含，多个用英文逗号隔离，例如：资产收集,漏洞信息
        # @type ScanType: String
        # @param Creator: 创建账号
        # @type Creator: String
        # @param AppId: 腾讯云客户AppId
        # @type AppId: Integer
        # @param Uin: 腾讯云客户Uin
        # @type Uin: String
        # @param CreateAt: 创建时间
        # @type CreateAt: String
        # @param UpdateAt: 更新时间
        # @type UpdateAt: String
        # @param ScanCron: 周期测绘时间
        # @type ScanCron: String
        # @param EnableCron: 是否启用周期测绘
        # @type EnableCron: Boolean
        # @param EnableScanSubEnterprise: 是否扫描子公司
        # @type EnableScanSubEnterprise: Boolean
        # @param EnableAuth: 是否授权
        # @type EnableAuth: Boolean
        # @param AuthStartAt: 授权开始时间
        # @type AuthStartAt: String
        # @param AuthEndAt: 授权结束时间
        # @type AuthEndAt: String
        # @param AuthFile: 授权文件id
        # @type AuthFile: String
        # @param ScanTime: 测绘时间配置项
        # @type ScanTime: String
        # @param Icon: 图标
        # @type Icon: String
        # @param Keywords: 关键字
        # @type Keywords: String
        # @param Qps: Qps设置，10-500，默认100
        # @type Qps: Integer
        # @param SubCompanyLevel: 子公司拓展层次
        # @type SubCompanyLevel: Integer
        # @param IsIncludeFullScan: 是否包含完整扫描
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsIncludeFullScan: Boolean
        # @param EnableGroupMemberDiscovered: 是否识别集团成员
        # @type EnableGroupMemberDiscovered: Boolean

        attr_accessor :Id, :Name, :Percent, :ScanType, :Creator, :AppId, :Uin, :CreateAt, :UpdateAt, :ScanCron, :EnableCron, :EnableScanSubEnterprise, :EnableAuth, :AuthStartAt, :AuthEndAt, :AuthFile, :ScanTime, :Icon, :Keywords, :Qps, :SubCompanyLevel, :IsIncludeFullScan, :EnableGroupMemberDiscovered

        def initialize(id=nil, name=nil, percent=nil, scantype=nil, creator=nil, appid=nil, uin=nil, createat=nil, updateat=nil, scancron=nil, enablecron=nil, enablescansubenterprise=nil, enableauth=nil, authstartat=nil, authendat=nil, authfile=nil, scantime=nil, icon=nil, keywords=nil, qps=nil, subcompanylevel=nil, isincludefullscan=nil, enablegroupmemberdiscovered=nil)
          @Id = id
          @Name = name
          @Percent = percent
          @ScanType = scantype
          @Creator = creator
          @AppId = appid
          @Uin = uin
          @CreateAt = createat
          @UpdateAt = updateat
          @ScanCron = scancron
          @EnableCron = enablecron
          @EnableScanSubEnterprise = enablescansubenterprise
          @EnableAuth = enableauth
          @AuthStartAt = authstartat
          @AuthEndAt = authendat
          @AuthFile = authfile
          @ScanTime = scantime
          @Icon = icon
          @Keywords = keywords
          @Qps = qps
          @SubCompanyLevel = subcompanylevel
          @IsIncludeFullScan = isincludefullscan
          @EnableGroupMemberDiscovered = enablegroupmemberdiscovered
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Percent = params['Percent']
          @ScanType = params['ScanType']
          @Creator = params['Creator']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @CreateAt = params['CreateAt']
          @UpdateAt = params['UpdateAt']
          @ScanCron = params['ScanCron']
          @EnableCron = params['EnableCron']
          @EnableScanSubEnterprise = params['EnableScanSubEnterprise']
          @EnableAuth = params['EnableAuth']
          @AuthStartAt = params['AuthStartAt']
          @AuthEndAt = params['AuthEndAt']
          @AuthFile = params['AuthFile']
          @ScanTime = params['ScanTime']
          @Icon = params['Icon']
          @Keywords = params['Keywords']
          @Qps = params['Qps']
          @SubCompanyLevel = params['SubCompanyLevel']
          @IsIncludeFullScan = params['IsIncludeFullScan']
          @EnableGroupMemberDiscovered = params['EnableGroupMemberDiscovered']
        end
      end

      # DescribeApps请求参数结构体
      class DescribeAppsRequest < TencentCloud::Common::AbstractModel
        # @param CustomerIdList: 企业ID列表，可多选
        # @type CustomerIdList: Array
        # @param EnterpriseUidList: 子公司ID列表
        # @type EnterpriseUidList: Array
        # @param IsNew: 是否新增数据
        # @type IsNew: Boolean
        # @param CustomerId: 企业ID
        # @type CustomerId: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param Format: 数据输出格式：json、file，默认不填为json
        # @type Format: String
        # @param CreateAtStart: 创建时间-开始
        # @type CreateAtStart: String
        # @param CreateAtEnd: 创建时间-结束
        # @type CreateAtEnd: String
        # @param UpdateAtStart: 更新时间-开始
        # @type UpdateAtStart: String
        # @param UpdateAtEnd: 更新时间-结束
        # @type UpdateAtEnd: String
        # @param Filters: 查询数组
        # @type Filters: Array
        # @param Ignored: 是否显示被忽略的数据
        # @type Ignored: Boolean

        attr_accessor :CustomerIdList, :EnterpriseUidList, :IsNew, :CustomerId, :Limit, :Offset, :Format, :CreateAtStart, :CreateAtEnd, :UpdateAtStart, :UpdateAtEnd, :Filters, :Ignored

        def initialize(customeridlist=nil, enterpriseuidlist=nil, isnew=nil, customerid=nil, limit=nil, offset=nil, format=nil, createatstart=nil, createatend=nil, updateatstart=nil, updateatend=nil, filters=nil, ignored=nil)
          @CustomerIdList = customeridlist
          @EnterpriseUidList = enterpriseuidlist
          @IsNew = isnew
          @CustomerId = customerid
          @Limit = limit
          @Offset = offset
          @Format = format
          @CreateAtStart = createatstart
          @CreateAtEnd = createatend
          @UpdateAtStart = updateatstart
          @UpdateAtEnd = updateatend
          @Filters = filters
          @Ignored = ignored
        end

        def deserialize(params)
          @CustomerIdList = params['CustomerIdList']
          @EnterpriseUidList = params['EnterpriseUidList']
          @IsNew = params['IsNew']
          @CustomerId = params['CustomerId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Format = params['Format']
          @CreateAtStart = params['CreateAtStart']
          @CreateAtEnd = params['CreateAtEnd']
          @UpdateAtStart = params['UpdateAtStart']
          @UpdateAtEnd = params['UpdateAtEnd']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Ignored = params['Ignored']
        end
      end

      # DescribeApps返回参数结构体
      class DescribeAppsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 移动资产数组
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              displayapp_tmp = DisplayApp.new
              displayapp_tmp.deserialize(i)
              @List << displayapp_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssets请求参数结构体
      class DescribeAssetsRequest < TencentCloud::Common::AbstractModel
        # @param CustomerIdList: 企业ID列表，可多选
        # @type CustomerIdList: Array
        # @param IsNew: 是否新增数据
        # @type IsNew: Boolean
        # @param CustomerId: 企业ID
        # @type CustomerId: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param EnterpriseUidList: 子公司ID列表
        # @type EnterpriseUidList: Array
        # @param Format: 数据输出格式：json、file，默认不填为json
        # @type Format: String
        # @param CreateAtStart: 创建时间-开始
        # @type CreateAtStart: String
        # @param CreateAtEnd: 创建时间-结束
        # @type CreateAtEnd: String
        # @param UpdateAtStart: 更新时间-开始
        # @type UpdateAtStart: String
        # @param UpdateAtEnd: 更新时间-结束
        # @type UpdateAtEnd: String
        # @param Filters: 查询数组
        # @type Filters: Array
        # @param Ignored: 是否显示被忽略的数据
        # @type Ignored: Boolean

        attr_accessor :CustomerIdList, :IsNew, :CustomerId, :Limit, :Offset, :EnterpriseUidList, :Format, :CreateAtStart, :CreateAtEnd, :UpdateAtStart, :UpdateAtEnd, :Filters, :Ignored

        def initialize(customeridlist=nil, isnew=nil, customerid=nil, limit=nil, offset=nil, enterpriseuidlist=nil, format=nil, createatstart=nil, createatend=nil, updateatstart=nil, updateatend=nil, filters=nil, ignored=nil)
          @CustomerIdList = customeridlist
          @IsNew = isnew
          @CustomerId = customerid
          @Limit = limit
          @Offset = offset
          @EnterpriseUidList = enterpriseuidlist
          @Format = format
          @CreateAtStart = createatstart
          @CreateAtEnd = createatend
          @UpdateAtStart = updateatstart
          @UpdateAtEnd = updateatend
          @Filters = filters
          @Ignored = ignored
        end

        def deserialize(params)
          @CustomerIdList = params['CustomerIdList']
          @IsNew = params['IsNew']
          @CustomerId = params['CustomerId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @EnterpriseUidList = params['EnterpriseUidList']
          @Format = params['Format']
          @CreateAtStart = params['CreateAtStart']
          @CreateAtEnd = params['CreateAtEnd']
          @UpdateAtStart = params['UpdateAtStart']
          @UpdateAtEnd = params['UpdateAtEnd']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Ignored = params['Ignored']
        end
      end

      # DescribeAssets返回参数结构体
      class DescribeAssetsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 主机资产数组
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              displayasset_tmp = DisplayAsset.new
              displayasset_tmp.deserialize(i)
              @List << displayasset_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfigs请求参数结构体
      class DescribeConfigsRequest < TencentCloud::Common::AbstractModel
        # @param CustomerIdList: 企业ID列表，可多选
        # @type CustomerIdList: Array
        # @param IsAggregation: 是否聚合数据
        # @type IsAggregation: Boolean
        # @param IsNew: 是否新增数据
        # @type IsNew: Boolean
        # @param CustomerId: 企业ID
        # @type CustomerId: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param EnterpriseUidList: 子公司ID列表
        # @type EnterpriseUidList: Array
        # @param Format: 数据输出格式：json、file，默认不填为json
        # @type Format: String
        # @param CreateAtStart: 创建时间-开始
        # @type CreateAtStart: String
        # @param CreateAtEnd: 创建时间-结束
        # @type CreateAtEnd: String
        # @param UpdateAtStart: 更新时间-开始
        # @type UpdateAtStart: String
        # @param UpdateAtEnd: 更新时间-结束
        # @type UpdateAtEnd: String
        # @param Filters: 查询数组
        # @type Filters: Array
        # @param Ignored: 是否显示被忽略的数据
        # @type Ignored: Boolean
        # @param OrderBy: 支持按照响应长度排序，例如：+ContentLength或-ContentLength，+是递增，-是递减
        # @type OrderBy: String

        attr_accessor :CustomerIdList, :IsAggregation, :IsNew, :CustomerId, :Limit, :Offset, :EnterpriseUidList, :Format, :CreateAtStart, :CreateAtEnd, :UpdateAtStart, :UpdateAtEnd, :Filters, :Ignored, :OrderBy

        def initialize(customeridlist=nil, isaggregation=nil, isnew=nil, customerid=nil, limit=nil, offset=nil, enterpriseuidlist=nil, format=nil, createatstart=nil, createatend=nil, updateatstart=nil, updateatend=nil, filters=nil, ignored=nil, orderby=nil)
          @CustomerIdList = customeridlist
          @IsAggregation = isaggregation
          @IsNew = isnew
          @CustomerId = customerid
          @Limit = limit
          @Offset = offset
          @EnterpriseUidList = enterpriseuidlist
          @Format = format
          @CreateAtStart = createatstart
          @CreateAtEnd = createatend
          @UpdateAtStart = updateatstart
          @UpdateAtEnd = updateatend
          @Filters = filters
          @Ignored = ignored
          @OrderBy = orderby
        end

        def deserialize(params)
          @CustomerIdList = params['CustomerIdList']
          @IsAggregation = params['IsAggregation']
          @IsNew = params['IsNew']
          @CustomerId = params['CustomerId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @EnterpriseUidList = params['EnterpriseUidList']
          @Format = params['Format']
          @CreateAtStart = params['CreateAtStart']
          @CreateAtEnd = params['CreateAtEnd']
          @UpdateAtStart = params['UpdateAtStart']
          @UpdateAtEnd = params['UpdateAtEnd']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Ignored = params['Ignored']
          @OrderBy = params['OrderBy']
        end
      end

      # DescribeConfigs返回参数结构体
      class DescribeConfigsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 数组
        # @type List: Array
        # @param AllConfigNum: 全部路径数量
        # @type AllConfigNum: Integer
        # @param HighRiskConfigNum: 高风险路径数量
        # @type HighRiskConfigNum: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :AllConfigNum, :HighRiskConfigNum, :RequestId

        def initialize(total=nil, list=nil, allconfignum=nil, highriskconfignum=nil, requestid=nil)
          @Total = total
          @List = list
          @AllConfigNum = allconfignum
          @HighRiskConfigNum = highriskconfignum
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              displayconfig_tmp = DisplayConfig.new
              displayconfig_tmp.deserialize(i)
              @List << displayconfig_tmp
            end
          end
          @AllConfigNum = params['AllConfigNum']
          @HighRiskConfigNum = params['HighRiskConfigNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCustomers请求参数结构体
      class DescribeCustomersRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param Filters: 查询数组
        # @type Filters: Array
        # @param Keyword: 企业名称模糊搜索
        # @type Keyword: String

        attr_accessor :Limit, :Offset, :Filters, :Keyword

        def initialize(limit=nil, offset=nil, filters=nil, keyword=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @Keyword = keyword
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Keyword = params['Keyword']
        end
      end

      # DescribeCustomers返回参数结构体
      class DescribeCustomersResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 企业列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              customer_tmp = Customer.new
              customer_tmp.deserialize(i)
              @List << customer_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDarkWebs请求参数结构体
      class DescribeDarkWebsRequest < TencentCloud::Common::AbstractModel
        # @param CustomerIdList: 企业ID列表，可多选
        # @type CustomerIdList: Array
        # @param IsNew: 是否新增数据
        # @type IsNew: Boolean
        # @param CustomerId: 企业ID
        # @type CustomerId: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param EnterpriseUidList: 子公司ID列表
        # @type EnterpriseUidList: Array
        # @param Format: 数据输出格式：json、file，默认不填为json
        # @type Format: String
        # @param CreateAtStart: 创建时间-开始
        # @type CreateAtStart: String
        # @param CreateAtEnd: 创建时间-结束
        # @type CreateAtEnd: String
        # @param UpdateAtStart: 更新时间-开始
        # @type UpdateAtStart: String
        # @param UpdateAtEnd: 更新时间-结束
        # @type UpdateAtEnd: String
        # @param Filters: 查询数组
        # @type Filters: Array
        # @param Ignored: 是否显示被忽略的数据
        # @type Ignored: Boolean

        attr_accessor :CustomerIdList, :IsNew, :CustomerId, :Limit, :Offset, :EnterpriseUidList, :Format, :CreateAtStart, :CreateAtEnd, :UpdateAtStart, :UpdateAtEnd, :Filters, :Ignored

        def initialize(customeridlist=nil, isnew=nil, customerid=nil, limit=nil, offset=nil, enterpriseuidlist=nil, format=nil, createatstart=nil, createatend=nil, updateatstart=nil, updateatend=nil, filters=nil, ignored=nil)
          @CustomerIdList = customeridlist
          @IsNew = isnew
          @CustomerId = customerid
          @Limit = limit
          @Offset = offset
          @EnterpriseUidList = enterpriseuidlist
          @Format = format
          @CreateAtStart = createatstart
          @CreateAtEnd = createatend
          @UpdateAtStart = updateatstart
          @UpdateAtEnd = updateatend
          @Filters = filters
          @Ignored = ignored
        end

        def deserialize(params)
          @CustomerIdList = params['CustomerIdList']
          @IsNew = params['IsNew']
          @CustomerId = params['CustomerId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @EnterpriseUidList = params['EnterpriseUidList']
          @Format = params['Format']
          @CreateAtStart = params['CreateAtStart']
          @CreateAtEnd = params['CreateAtEnd']
          @UpdateAtStart = params['UpdateAtStart']
          @UpdateAtEnd = params['UpdateAtEnd']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Ignored = params['Ignored']
        end
      end

      # DescribeDarkWebs返回参数结构体
      class DescribeDarkWebsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 数组
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              displaydarkweb_tmp = DisplayDarkWeb.new
              displaydarkweb_tmp.deserialize(i)
              @List << displaydarkweb_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomains请求参数结构体
      class DescribeDomainsRequest < TencentCloud::Common::AbstractModel
        # @param CustomerIdList: 企业ID列表，可多选
        # @type CustomerIdList: Array
        # @param IsNew: 是否新增数据
        # @type IsNew: Boolean
        # @param CustomerId: 企业ID
        # @type CustomerId: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param EnterpriseUidList: 子公司ID列表
        # @type EnterpriseUidList: Array
        # @param Format: 数据输出格式：json、file，默认不填为json
        # @type Format: String
        # @param CreateAtStart: 创建时间-开始
        # @type CreateAtStart: String
        # @param CreateAtEnd: 创建时间-结束
        # @type CreateAtEnd: String
        # @param UpdateAtStart: 更新时间-开始
        # @type UpdateAtStart: String
        # @param UpdateAtEnd: 更新时间-结束
        # @type UpdateAtEnd: String
        # @param Filters: 查询数组
        # @type Filters: Array
        # @param Ignored: 是否显示被忽略的数据
        # @type Ignored: Boolean

        attr_accessor :CustomerIdList, :IsNew, :CustomerId, :Limit, :Offset, :EnterpriseUidList, :Format, :CreateAtStart, :CreateAtEnd, :UpdateAtStart, :UpdateAtEnd, :Filters, :Ignored

        def initialize(customeridlist=nil, isnew=nil, customerid=nil, limit=nil, offset=nil, enterpriseuidlist=nil, format=nil, createatstart=nil, createatend=nil, updateatstart=nil, updateatend=nil, filters=nil, ignored=nil)
          @CustomerIdList = customeridlist
          @IsNew = isnew
          @CustomerId = customerid
          @Limit = limit
          @Offset = offset
          @EnterpriseUidList = enterpriseuidlist
          @Format = format
          @CreateAtStart = createatstart
          @CreateAtEnd = createatend
          @UpdateAtStart = updateatstart
          @UpdateAtEnd = updateatend
          @Filters = filters
          @Ignored = ignored
        end

        def deserialize(params)
          @CustomerIdList = params['CustomerIdList']
          @IsNew = params['IsNew']
          @CustomerId = params['CustomerId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @EnterpriseUidList = params['EnterpriseUidList']
          @Format = params['Format']
          @CreateAtStart = params['CreateAtStart']
          @CreateAtEnd = params['CreateAtEnd']
          @UpdateAtStart = params['UpdateAtStart']
          @UpdateAtEnd = params['UpdateAtEnd']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Ignored = params['Ignored']
        end
      end

      # DescribeDomains返回参数结构体
      class DescribeDomainsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 数组
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              displaydomain_tmp = DisplayDomain.new
              displaydomain_tmp.deserialize(i)
              @List << displaydomain_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEnterprises请求参数结构体
      class DescribeEnterprisesRequest < TencentCloud::Common::AbstractModel
        # @param CustomerIdList: 企业ID列表，可多选
        # @type CustomerIdList: Array
        # @param IsNew: 是否新增数据
        # @type IsNew: Boolean
        # @param CustomerId: 企业ID
        # @type CustomerId: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param EnterpriseUidList: 子公司ID列表
        # @type EnterpriseUidList: Array
        # @param Format: 数据输出格式：json、file，默认不填为json
        # @type Format: String
        # @param CreateAtStart: 创建时间-开始
        # @type CreateAtStart: String
        # @param CreateAtEnd: 创建时间-结束
        # @type CreateAtEnd: String
        # @param UpdateAtStart: 更新时间-开始
        # @type UpdateAtStart: String
        # @param UpdateAtEnd: 更新时间-结束
        # @type UpdateAtEnd: String
        # @param Filters: 查询数组
        # @type Filters: Array
        # @param Ignored: 是否显示被忽略的数据
        # @type Ignored: Boolean
        # @param IsShowStatistics: 是否展示统计数据
        # @type IsShowStatistics: Boolean

        attr_accessor :CustomerIdList, :IsNew, :CustomerId, :Limit, :Offset, :EnterpriseUidList, :Format, :CreateAtStart, :CreateAtEnd, :UpdateAtStart, :UpdateAtEnd, :Filters, :Ignored, :IsShowStatistics

        def initialize(customeridlist=nil, isnew=nil, customerid=nil, limit=nil, offset=nil, enterpriseuidlist=nil, format=nil, createatstart=nil, createatend=nil, updateatstart=nil, updateatend=nil, filters=nil, ignored=nil, isshowstatistics=nil)
          @CustomerIdList = customeridlist
          @IsNew = isnew
          @CustomerId = customerid
          @Limit = limit
          @Offset = offset
          @EnterpriseUidList = enterpriseuidlist
          @Format = format
          @CreateAtStart = createatstart
          @CreateAtEnd = createatend
          @UpdateAtStart = updateatstart
          @UpdateAtEnd = updateatend
          @Filters = filters
          @Ignored = ignored
          @IsShowStatistics = isshowstatistics
        end

        def deserialize(params)
          @CustomerIdList = params['CustomerIdList']
          @IsNew = params['IsNew']
          @CustomerId = params['CustomerId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @EnterpriseUidList = params['EnterpriseUidList']
          @Format = params['Format']
          @CreateAtStart = params['CreateAtStart']
          @CreateAtEnd = params['CreateAtEnd']
          @UpdateAtStart = params['UpdateAtStart']
          @UpdateAtEnd = params['UpdateAtEnd']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Ignored = params['Ignored']
          @IsShowStatistics = params['IsShowStatistics']
        end
      end

      # DescribeEnterprises返回参数结构体
      class DescribeEnterprisesResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 数组
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              displayenterprise_tmp = DisplayEnterprise.new
              displayenterprise_tmp.deserialize(i)
              @List << displayenterprise_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFakeApps请求参数结构体
      class DescribeFakeAppsRequest < TencentCloud::Common::AbstractModel
        # @param CustomerIdList: 企业ID列表，可多选
        # @type CustomerIdList: Array
        # @param IsNew: 是否新增数据
        # @type IsNew: Boolean
        # @param CustomerId: 企业ID
        # @type CustomerId: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param EnterpriseUidList: 子公司ID列表
        # @type EnterpriseUidList: Array
        # @param Format: 数据输出格式：json、file，默认不填为json
        # @type Format: String
        # @param CreateAtStart: 创建时间-开始
        # @type CreateAtStart: String
        # @param CreateAtEnd: 创建时间-结束
        # @type CreateAtEnd: String
        # @param UpdateAtStart: 更新时间-开始
        # @type UpdateAtStart: String
        # @param UpdateAtEnd: 更新时间-结束
        # @type UpdateAtEnd: String
        # @param Filters: 查询数组
        # @type Filters: Array
        # @param Ignored: 是否显示被忽略的数据
        # @type Ignored: Boolean

        attr_accessor :CustomerIdList, :IsNew, :CustomerId, :Limit, :Offset, :EnterpriseUidList, :Format, :CreateAtStart, :CreateAtEnd, :UpdateAtStart, :UpdateAtEnd, :Filters, :Ignored

        def initialize(customeridlist=nil, isnew=nil, customerid=nil, limit=nil, offset=nil, enterpriseuidlist=nil, format=nil, createatstart=nil, createatend=nil, updateatstart=nil, updateatend=nil, filters=nil, ignored=nil)
          @CustomerIdList = customeridlist
          @IsNew = isnew
          @CustomerId = customerid
          @Limit = limit
          @Offset = offset
          @EnterpriseUidList = enterpriseuidlist
          @Format = format
          @CreateAtStart = createatstart
          @CreateAtEnd = createatend
          @UpdateAtStart = updateatstart
          @UpdateAtEnd = updateatend
          @Filters = filters
          @Ignored = ignored
        end

        def deserialize(params)
          @CustomerIdList = params['CustomerIdList']
          @IsNew = params['IsNew']
          @CustomerId = params['CustomerId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @EnterpriseUidList = params['EnterpriseUidList']
          @Format = params['Format']
          @CreateAtStart = params['CreateAtStart']
          @CreateAtEnd = params['CreateAtEnd']
          @UpdateAtStart = params['UpdateAtStart']
          @UpdateAtEnd = params['UpdateAtEnd']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Ignored = params['Ignored']
        end
      end

      # DescribeFakeApps返回参数结构体
      class DescribeFakeAppsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 仿冒应用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              displayfakeapp_tmp = DisplayFakeApp.new
              displayfakeapp_tmp.deserialize(i)
              @List << displayfakeapp_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFakeMiniPrograms请求参数结构体
      class DescribeFakeMiniProgramsRequest < TencentCloud::Common::AbstractModel
        # @param CustomerIdList: 企业ID列表，可多选
        # @type CustomerIdList: Array
        # @param IsNew: 是否新增数据
        # @type IsNew: Boolean
        # @param CustomerId: 企业ID
        # @type CustomerId: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param EnterpriseUidList: 子公司ID列表
        # @type EnterpriseUidList: Array
        # @param Format: 数据输出格式：json、file，默认不填为json
        # @type Format: String
        # @param CreateAtStart: 创建时间-开始
        # @type CreateAtStart: String
        # @param CreateAtEnd: 创建时间-结束
        # @type CreateAtEnd: String
        # @param UpdateAtStart: 更新时间-开始
        # @type UpdateAtStart: String
        # @param UpdateAtEnd: 更新时间-结束
        # @type UpdateAtEnd: String
        # @param Filters: 查询数组
        # @type Filters: Array
        # @param Ignored: 是否显示被忽略的数据
        # @type Ignored: Boolean

        attr_accessor :CustomerIdList, :IsNew, :CustomerId, :Limit, :Offset, :EnterpriseUidList, :Format, :CreateAtStart, :CreateAtEnd, :UpdateAtStart, :UpdateAtEnd, :Filters, :Ignored

        def initialize(customeridlist=nil, isnew=nil, customerid=nil, limit=nil, offset=nil, enterpriseuidlist=nil, format=nil, createatstart=nil, createatend=nil, updateatstart=nil, updateatend=nil, filters=nil, ignored=nil)
          @CustomerIdList = customeridlist
          @IsNew = isnew
          @CustomerId = customerid
          @Limit = limit
          @Offset = offset
          @EnterpriseUidList = enterpriseuidlist
          @Format = format
          @CreateAtStart = createatstart
          @CreateAtEnd = createatend
          @UpdateAtStart = updateatstart
          @UpdateAtEnd = updateatend
          @Filters = filters
          @Ignored = ignored
        end

        def deserialize(params)
          @CustomerIdList = params['CustomerIdList']
          @IsNew = params['IsNew']
          @CustomerId = params['CustomerId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @EnterpriseUidList = params['EnterpriseUidList']
          @Format = params['Format']
          @CreateAtStart = params['CreateAtStart']
          @CreateAtEnd = params['CreateAtEnd']
          @UpdateAtStart = params['UpdateAtStart']
          @UpdateAtEnd = params['UpdateAtEnd']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Ignored = params['Ignored']
        end
      end

      # DescribeFakeMiniPrograms返回参数结构体
      class DescribeFakeMiniProgramsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 仿冒小程序
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              displayfakeminiprogram_tmp = DisplayFakeMiniProgram.new
              displayfakeminiprogram_tmp.deserialize(i)
              @List << displayfakeminiprogram_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFakeWebsites请求参数结构体
      class DescribeFakeWebsitesRequest < TencentCloud::Common::AbstractModel
        # @param CustomerIdList: 企业ID列表，可多选
        # @type CustomerIdList: Array
        # @param IsNew: 是否新增数据
        # @type IsNew: Boolean
        # @param CustomerId: 企业ID
        # @type CustomerId: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param EnterpriseUidList: 子公司ID列表
        # @type EnterpriseUidList: Array
        # @param Format: 数据输出格式：json、file，默认不填为json
        # @type Format: String
        # @param CreateAtStart: 创建时间-开始
        # @type CreateAtStart: String
        # @param CreateAtEnd: 创建时间-结束
        # @type CreateAtEnd: String
        # @param UpdateAtStart: 更新时间-开始
        # @type UpdateAtStart: String
        # @param UpdateAtEnd: 更新时间-结束
        # @type UpdateAtEnd: String
        # @param Filters: 查询数组
        # @type Filters: Array
        # @param Ignored: 是否显示被忽略的数据
        # @type Ignored: Boolean

        attr_accessor :CustomerIdList, :IsNew, :CustomerId, :Limit, :Offset, :EnterpriseUidList, :Format, :CreateAtStart, :CreateAtEnd, :UpdateAtStart, :UpdateAtEnd, :Filters, :Ignored

        def initialize(customeridlist=nil, isnew=nil, customerid=nil, limit=nil, offset=nil, enterpriseuidlist=nil, format=nil, createatstart=nil, createatend=nil, updateatstart=nil, updateatend=nil, filters=nil, ignored=nil)
          @CustomerIdList = customeridlist
          @IsNew = isnew
          @CustomerId = customerid
          @Limit = limit
          @Offset = offset
          @EnterpriseUidList = enterpriseuidlist
          @Format = format
          @CreateAtStart = createatstart
          @CreateAtEnd = createatend
          @UpdateAtStart = updateatstart
          @UpdateAtEnd = updateatend
          @Filters = filters
          @Ignored = ignored
        end

        def deserialize(params)
          @CustomerIdList = params['CustomerIdList']
          @IsNew = params['IsNew']
          @CustomerId = params['CustomerId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @EnterpriseUidList = params['EnterpriseUidList']
          @Format = params['Format']
          @CreateAtStart = params['CreateAtStart']
          @CreateAtEnd = params['CreateAtEnd']
          @UpdateAtStart = params['UpdateAtStart']
          @UpdateAtEnd = params['UpdateAtEnd']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Ignored = params['Ignored']
        end
      end

      # DescribeFakeWebsites返回参数结构体
      class DescribeFakeWebsitesResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 仿冒网站
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              displayfakewebsite_tmp = DisplayFakeWebsite.new
              displayfakewebsite_tmp.deserialize(i)
              @List << displayfakewebsite_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFakeWechatOfficials请求参数结构体
      class DescribeFakeWechatOfficialsRequest < TencentCloud::Common::AbstractModel
        # @param CustomerIdList: 企业ID列表，可多选
        # @type CustomerIdList: Array
        # @param IsNew: 是否新增数据
        # @type IsNew: Boolean
        # @param CustomerId: 企业ID
        # @type CustomerId: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param EnterpriseUidList: 子公司ID列表
        # @type EnterpriseUidList: Array
        # @param Format: 数据输出格式：json、file，默认不填为json
        # @type Format: String
        # @param CreateAtStart: 创建时间-开始
        # @type CreateAtStart: String
        # @param CreateAtEnd: 创建时间-结束
        # @type CreateAtEnd: String
        # @param UpdateAtStart: 更新时间-开始
        # @type UpdateAtStart: String
        # @param UpdateAtEnd: 更新时间-结束
        # @type UpdateAtEnd: String
        # @param Filters: 查询数组
        # @type Filters: Array
        # @param Ignored: 是否显示被忽略的数据
        # @type Ignored: Boolean

        attr_accessor :CustomerIdList, :IsNew, :CustomerId, :Limit, :Offset, :EnterpriseUidList, :Format, :CreateAtStart, :CreateAtEnd, :UpdateAtStart, :UpdateAtEnd, :Filters, :Ignored

        def initialize(customeridlist=nil, isnew=nil, customerid=nil, limit=nil, offset=nil, enterpriseuidlist=nil, format=nil, createatstart=nil, createatend=nil, updateatstart=nil, updateatend=nil, filters=nil, ignored=nil)
          @CustomerIdList = customeridlist
          @IsNew = isnew
          @CustomerId = customerid
          @Limit = limit
          @Offset = offset
          @EnterpriseUidList = enterpriseuidlist
          @Format = format
          @CreateAtStart = createatstart
          @CreateAtEnd = createatend
          @UpdateAtStart = updateatstart
          @UpdateAtEnd = updateatend
          @Filters = filters
          @Ignored = ignored
        end

        def deserialize(params)
          @CustomerIdList = params['CustomerIdList']
          @IsNew = params['IsNew']
          @CustomerId = params['CustomerId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @EnterpriseUidList = params['EnterpriseUidList']
          @Format = params['Format']
          @CreateAtStart = params['CreateAtStart']
          @CreateAtEnd = params['CreateAtEnd']
          @UpdateAtStart = params['UpdateAtStart']
          @UpdateAtEnd = params['UpdateAtEnd']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Ignored = params['Ignored']
        end
      end

      # DescribeFakeWechatOfficials返回参数结构体
      class DescribeFakeWechatOfficialsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 仿冒公众号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              displayfakewechatofficial_tmp = DisplayFakeWechatOfficial.new
              displayfakewechatofficial_tmp.deserialize(i)
              @List << displayfakewechatofficial_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGithubs请求参数结构体
      class DescribeGithubsRequest < TencentCloud::Common::AbstractModel
        # @param IsNew: 是否新增数据
        # @type IsNew: Boolean
        # @param CustomerId: 企业ID
        # @type CustomerId: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param EnterpriseUidList: 子公司ID列表
        # @type EnterpriseUidList: Array
        # @param Format: 数据输出格式：json、file，默认不填为json
        # @type Format: String
        # @param CreateAtStart: 创建时间-开始
        # @type CreateAtStart: String
        # @param CreateAtEnd: 创建时间-结束
        # @type CreateAtEnd: String
        # @param UpdateAtStart: 更新时间-开始
        # @type UpdateAtStart: String
        # @param UpdateAtEnd: 更新时间-结束
        # @type UpdateAtEnd: String
        # @param Filters: 查询数组
        # @type Filters: Array
        # @param Ignored: 是否显示被忽略的数据
        # @type Ignored: Boolean

        attr_accessor :IsNew, :CustomerId, :Limit, :Offset, :EnterpriseUidList, :Format, :CreateAtStart, :CreateAtEnd, :UpdateAtStart, :UpdateAtEnd, :Filters, :Ignored

        def initialize(isnew=nil, customerid=nil, limit=nil, offset=nil, enterpriseuidlist=nil, format=nil, createatstart=nil, createatend=nil, updateatstart=nil, updateatend=nil, filters=nil, ignored=nil)
          @IsNew = isnew
          @CustomerId = customerid
          @Limit = limit
          @Offset = offset
          @EnterpriseUidList = enterpriseuidlist
          @Format = format
          @CreateAtStart = createatstart
          @CreateAtEnd = createatend
          @UpdateAtStart = updateatstart
          @UpdateAtEnd = updateatend
          @Filters = filters
          @Ignored = ignored
        end

        def deserialize(params)
          @IsNew = params['IsNew']
          @CustomerId = params['CustomerId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @EnterpriseUidList = params['EnterpriseUidList']
          @Format = params['Format']
          @CreateAtStart = params['CreateAtStart']
          @CreateAtEnd = params['CreateAtEnd']
          @UpdateAtStart = params['UpdateAtStart']
          @UpdateAtEnd = params['UpdateAtEnd']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Ignored = params['Ignored']
        end
      end

      # DescribeGithubs返回参数结构体
      class DescribeGithubsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 数组
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              displaygithub_tmp = DisplayGithub.new
              displaygithub_tmp.deserialize(i)
              @List << displaygithub_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeHttps请求参数结构体
      class DescribeHttpsRequest < TencentCloud::Common::AbstractModel
        # @param CustomerIdList: 企业ID列表，可多选
        # @type CustomerIdList: Array
        # @param IsAggregation: 是否聚合数据
        # @type IsAggregation: Boolean
        # @param IsNew: 是否新增数据
        # @type IsNew: Boolean
        # @param CustomerId: 企业ID
        # @type CustomerId: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param EnterpriseUidList: 子公司ID列表
        # @type EnterpriseUidList: Array
        # @param Format: 数据输出格式：json、file，默认不填为json
        # @type Format: String
        # @param CreateAtStart: 创建时间-开始
        # @type CreateAtStart: String
        # @param CreateAtEnd: 创建时间-结束
        # @type CreateAtEnd: String
        # @param UpdateAtStart: 更新时间-开始
        # @type UpdateAtStart: String
        # @param UpdateAtEnd: 更新时间-结束
        # @type UpdateAtEnd: String
        # @param Filters: 查询数组
        # @type Filters: Array
        # @param Ignored: 是否显示被忽略的数据
        # @type Ignored: Boolean
        # @param IsShowChange: 是否显示变更
        # @type IsShowChange: Boolean
        # @param HasExpirationRisk: 是否仅显示过期风险资产
        # @type HasExpirationRisk: Boolean

        attr_accessor :CustomerIdList, :IsAggregation, :IsNew, :CustomerId, :Limit, :Offset, :EnterpriseUidList, :Format, :CreateAtStart, :CreateAtEnd, :UpdateAtStart, :UpdateAtEnd, :Filters, :Ignored, :IsShowChange, :HasExpirationRisk

        def initialize(customeridlist=nil, isaggregation=nil, isnew=nil, customerid=nil, limit=nil, offset=nil, enterpriseuidlist=nil, format=nil, createatstart=nil, createatend=nil, updateatstart=nil, updateatend=nil, filters=nil, ignored=nil, isshowchange=nil, hasexpirationrisk=nil)
          @CustomerIdList = customeridlist
          @IsAggregation = isaggregation
          @IsNew = isnew
          @CustomerId = customerid
          @Limit = limit
          @Offset = offset
          @EnterpriseUidList = enterpriseuidlist
          @Format = format
          @CreateAtStart = createatstart
          @CreateAtEnd = createatend
          @UpdateAtStart = updateatstart
          @UpdateAtEnd = updateatend
          @Filters = filters
          @Ignored = ignored
          @IsShowChange = isshowchange
          @HasExpirationRisk = hasexpirationrisk
        end

        def deserialize(params)
          @CustomerIdList = params['CustomerIdList']
          @IsAggregation = params['IsAggregation']
          @IsNew = params['IsNew']
          @CustomerId = params['CustomerId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @EnterpriseUidList = params['EnterpriseUidList']
          @Format = params['Format']
          @CreateAtStart = params['CreateAtStart']
          @CreateAtEnd = params['CreateAtEnd']
          @UpdateAtStart = params['UpdateAtStart']
          @UpdateAtEnd = params['UpdateAtEnd']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Ignored = params['Ignored']
          @IsShowChange = params['IsShowChange']
          @HasExpirationRisk = params['HasExpirationRisk']
        end
      end

      # DescribeHttps返回参数结构体
      class DescribeHttpsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 数组
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              displayhttp_tmp = DisplayHttp.new
              displayhttp_tmp.deserialize(i)
              @List << displayhttp_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeJobRecordDetails请求参数结构体
      class DescribeJobRecordDetailsRequest < TencentCloud::Common::AbstractModel
        # @param Module: 数据类型，包括：enterprise(企业架构)，domain(主域名)，sub_domain(子域名)，asset(主机资产)，port(端口服务)，http(网站资产)，vul(漏洞信息)，app(APP)，wechat_applet(微信小程序)，wechat_official_account(微信公众号)，github(Github泄露)，manage(后台识别)，config(目录爆破)，dark_web(暗网泄露)，net_disk(文库网盘泄露)，social_engineering(员工信息)，supply_chain(供应链信息)，weak_password(弱口令)，sensitive_info(敏感信息泄露)，suspicious_asset(影子资产)
        # @type Module: String
        # @param Id: 结果id
        # @type Id: Integer
        # @param JobRecordId: 任务id
        # @type JobRecordId: Integer

        attr_accessor :Module, :Id, :JobRecordId

        def initialize(_module=nil, id=nil, jobrecordid=nil)
          @Module = _module
          @Id = id
          @JobRecordId = jobrecordid
        end

        def deserialize(params)
          @Module = params['Module']
          @Id = params['Id']
          @JobRecordId = params['JobRecordId']
        end
      end

      # DescribeJobRecordDetails返回参数结构体
      class DescribeJobRecordDetailsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 数组
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              displayjobrecorddetail_tmp = DisplayJobRecordDetail.new
              displayjobrecorddetail_tmp.deserialize(i)
              @List << displayjobrecorddetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeJobRecords请求参数结构体
      class DescribeJobRecordsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param Filters: 查询数组
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters

        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeJobRecords返回参数结构体
      class DescribeJobRecordsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 数组
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              displayjobrecord_tmp = DisplayJobRecord.new
              displayjobrecord_tmp.deserialize(i)
              @List << displayjobrecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLeakageCodes请求参数结构体
      class DescribeLeakageCodesRequest < TencentCloud::Common::AbstractModel
        # @param CustomerIdList: 企业ID列表，可多选
        # @type CustomerIdList: Array
        # @param IsAggregation: 是否聚合数据
        # @type IsAggregation: Boolean
        # @param IsNew: 是否新增数据
        # @type IsNew: Boolean
        # @param CustomerId: 企业ID
        # @type CustomerId: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param EnterpriseUidList: 子公司ID列表
        # @type EnterpriseUidList: Array
        # @param Format: 数据输出格式：json、file，默认不填为json
        # @type Format: String
        # @param CreateAtStart: 创建时间-开始
        # @type CreateAtStart: String
        # @param CreateAtEnd: 创建时间-结束
        # @type CreateAtEnd: String
        # @param UpdateAtStart: 更新时间-开始
        # @type UpdateAtStart: String
        # @param UpdateAtEnd: 更新时间-结束
        # @type UpdateAtEnd: String
        # @param Filters: 查询数组
        # @type Filters: Array
        # @param Ignored: 是否显示被忽略的数据
        # @type Ignored: Boolean

        attr_accessor :CustomerIdList, :IsAggregation, :IsNew, :CustomerId, :Limit, :Offset, :EnterpriseUidList, :Format, :CreateAtStart, :CreateAtEnd, :UpdateAtStart, :UpdateAtEnd, :Filters, :Ignored

        def initialize(customeridlist=nil, isaggregation=nil, isnew=nil, customerid=nil, limit=nil, offset=nil, enterpriseuidlist=nil, format=nil, createatstart=nil, createatend=nil, updateatstart=nil, updateatend=nil, filters=nil, ignored=nil)
          @CustomerIdList = customeridlist
          @IsAggregation = isaggregation
          @IsNew = isnew
          @CustomerId = customerid
          @Limit = limit
          @Offset = offset
          @EnterpriseUidList = enterpriseuidlist
          @Format = format
          @CreateAtStart = createatstart
          @CreateAtEnd = createatend
          @UpdateAtStart = updateatstart
          @UpdateAtEnd = updateatend
          @Filters = filters
          @Ignored = ignored
        end

        def deserialize(params)
          @CustomerIdList = params['CustomerIdList']
          @IsAggregation = params['IsAggregation']
          @IsNew = params['IsNew']
          @CustomerId = params['CustomerId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @EnterpriseUidList = params['EnterpriseUidList']
          @Format = params['Format']
          @CreateAtStart = params['CreateAtStart']
          @CreateAtEnd = params['CreateAtEnd']
          @UpdateAtStart = params['UpdateAtStart']
          @UpdateAtEnd = params['UpdateAtEnd']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Ignored = params['Ignored']
        end
      end

      # DescribeLeakageCodes返回参数结构体
      class DescribeLeakageCodesResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              displayleakagecode_tmp = DisplayLeakageCode.new
              displayleakagecode_tmp.deserialize(i)
              @List << displayleakagecode_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLeakageDatas请求参数结构体
      class DescribeLeakageDatasRequest < TencentCloud::Common::AbstractModel
        # @param CustomerIdList: 企业ID列表，可多选
        # @type CustomerIdList: Array
        # @param IsAggregation: 是否聚合数据
        # @type IsAggregation: Boolean
        # @param IsNew: 是否新增数据
        # @type IsNew: Boolean
        # @param CustomerId: 企业ID
        # @type CustomerId: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param EnterpriseUidList: 子公司ID列表
        # @type EnterpriseUidList: Array
        # @param Format: 数据输出格式：json、file，默认不填为json
        # @type Format: String
        # @param CreateAtStart: 创建时间-开始
        # @type CreateAtStart: String
        # @param CreateAtEnd: 创建时间-结束
        # @type CreateAtEnd: String
        # @param UpdateAtStart: 更新时间-开始
        # @type UpdateAtStart: String
        # @param UpdateAtEnd: 更新时间-结束
        # @type UpdateAtEnd: String
        # @param Filters: 查询数组
        # @type Filters: Array
        # @param Ignored: 是否显示被忽略的数据
        # @type Ignored: Boolean

        attr_accessor :CustomerIdList, :IsAggregation, :IsNew, :CustomerId, :Limit, :Offset, :EnterpriseUidList, :Format, :CreateAtStart, :CreateAtEnd, :UpdateAtStart, :UpdateAtEnd, :Filters, :Ignored

        def initialize(customeridlist=nil, isaggregation=nil, isnew=nil, customerid=nil, limit=nil, offset=nil, enterpriseuidlist=nil, format=nil, createatstart=nil, createatend=nil, updateatstart=nil, updateatend=nil, filters=nil, ignored=nil)
          @CustomerIdList = customeridlist
          @IsAggregation = isaggregation
          @IsNew = isnew
          @CustomerId = customerid
          @Limit = limit
          @Offset = offset
          @EnterpriseUidList = enterpriseuidlist
          @Format = format
          @CreateAtStart = createatstart
          @CreateAtEnd = createatend
          @UpdateAtStart = updateatstart
          @UpdateAtEnd = updateatend
          @Filters = filters
          @Ignored = ignored
        end

        def deserialize(params)
          @CustomerIdList = params['CustomerIdList']
          @IsAggregation = params['IsAggregation']
          @IsNew = params['IsNew']
          @CustomerId = params['CustomerId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @EnterpriseUidList = params['EnterpriseUidList']
          @Format = params['Format']
          @CreateAtStart = params['CreateAtStart']
          @CreateAtEnd = params['CreateAtEnd']
          @UpdateAtStart = params['UpdateAtStart']
          @UpdateAtEnd = params['UpdateAtEnd']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Ignored = params['Ignored']
        end
      end

      # DescribeLeakageDatas返回参数结构体
      class DescribeLeakageDatasResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              displayleakagedata_tmp = DisplayLeakageData.new
              displayleakagedata_tmp.deserialize(i)
              @List << displayleakagedata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLeakageEmails请求参数结构体
      class DescribeLeakageEmailsRequest < TencentCloud::Common::AbstractModel
        # @param CustomerIdList: 企业ID列表，可多选
        # @type CustomerIdList: Array
        # @param IsAggregation: 是否聚合数据
        # @type IsAggregation: Boolean
        # @param IsNew: 是否新增数据
        # @type IsNew: Boolean
        # @param CustomerId: 企业ID
        # @type CustomerId: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param EnterpriseUidList: 子公司ID列表
        # @type EnterpriseUidList: Array
        # @param Format: 数据输出格式：json、file，默认不填为json
        # @type Format: String
        # @param CreateAtStart: 创建时间-开始
        # @type CreateAtStart: String
        # @param CreateAtEnd: 创建时间-结束
        # @type CreateAtEnd: String
        # @param UpdateAtStart: 更新时间-开始
        # @type UpdateAtStart: String
        # @param UpdateAtEnd: 更新时间-结束
        # @type UpdateAtEnd: String
        # @param Filters: 查询数组
        # @type Filters: Array
        # @param Ignored: 是否显示被忽略的数据
        # @type Ignored: Boolean

        attr_accessor :CustomerIdList, :IsAggregation, :IsNew, :CustomerId, :Limit, :Offset, :EnterpriseUidList, :Format, :CreateAtStart, :CreateAtEnd, :UpdateAtStart, :UpdateAtEnd, :Filters, :Ignored

        def initialize(customeridlist=nil, isaggregation=nil, isnew=nil, customerid=nil, limit=nil, offset=nil, enterpriseuidlist=nil, format=nil, createatstart=nil, createatend=nil, updateatstart=nil, updateatend=nil, filters=nil, ignored=nil)
          @CustomerIdList = customeridlist
          @IsAggregation = isaggregation
          @IsNew = isnew
          @CustomerId = customerid
          @Limit = limit
          @Offset = offset
          @EnterpriseUidList = enterpriseuidlist
          @Format = format
          @CreateAtStart = createatstart
          @CreateAtEnd = createatend
          @UpdateAtStart = updateatstart
          @UpdateAtEnd = updateatend
          @Filters = filters
          @Ignored = ignored
        end

        def deserialize(params)
          @CustomerIdList = params['CustomerIdList']
          @IsAggregation = params['IsAggregation']
          @IsNew = params['IsNew']
          @CustomerId = params['CustomerId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @EnterpriseUidList = params['EnterpriseUidList']
          @Format = params['Format']
          @CreateAtStart = params['CreateAtStart']
          @CreateAtEnd = params['CreateAtEnd']
          @UpdateAtStart = params['UpdateAtStart']
          @UpdateAtEnd = params['UpdateAtEnd']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Ignored = params['Ignored']
        end
      end

      # DescribeLeakageEmails返回参数结构体
      class DescribeLeakageEmailsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              displayleakageemail_tmp = DisplayLeakageEmail.new
              displayleakageemail_tmp.deserialize(i)
              @List << displayleakageemail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeManages请求参数结构体
      class DescribeManagesRequest < TencentCloud::Common::AbstractModel
        # @param CustomerIdList: 企业ID列表，可多选
        # @type CustomerIdList: Array
        # @param IsAggregation: 是否聚合数据
        # @type IsAggregation: Boolean
        # @param IsNew: 是否新增数据
        # @type IsNew: Boolean
        # @param CustomerId: 企业ID
        # @type CustomerId: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param EnterpriseUidList: 子公司ID列表
        # @type EnterpriseUidList: Array
        # @param Format: 数据输出格式：json、file，默认不填为json
        # @type Format: String
        # @param CreateAtStart: 创建时间-开始
        # @type CreateAtStart: String
        # @param CreateAtEnd: 创建时间-结束
        # @type CreateAtEnd: String
        # @param UpdateAtStart: 更新时间-开始
        # @type UpdateAtStart: String
        # @param UpdateAtEnd: 更新时间-结束
        # @type UpdateAtEnd: String
        # @param Filters: 查询数组
        # @type Filters: Array
        # @param Ignored: 是否显示被忽略的数据
        # @type Ignored: Boolean

        attr_accessor :CustomerIdList, :IsAggregation, :IsNew, :CustomerId, :Limit, :Offset, :EnterpriseUidList, :Format, :CreateAtStart, :CreateAtEnd, :UpdateAtStart, :UpdateAtEnd, :Filters, :Ignored

        def initialize(customeridlist=nil, isaggregation=nil, isnew=nil, customerid=nil, limit=nil, offset=nil, enterpriseuidlist=nil, format=nil, createatstart=nil, createatend=nil, updateatstart=nil, updateatend=nil, filters=nil, ignored=nil)
          @CustomerIdList = customeridlist
          @IsAggregation = isaggregation
          @IsNew = isnew
          @CustomerId = customerid
          @Limit = limit
          @Offset = offset
          @EnterpriseUidList = enterpriseuidlist
          @Format = format
          @CreateAtStart = createatstart
          @CreateAtEnd = createatend
          @UpdateAtStart = updateatstart
          @UpdateAtEnd = updateatend
          @Filters = filters
          @Ignored = ignored
        end

        def deserialize(params)
          @CustomerIdList = params['CustomerIdList']
          @IsAggregation = params['IsAggregation']
          @IsNew = params['IsNew']
          @CustomerId = params['CustomerId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @EnterpriseUidList = params['EnterpriseUidList']
          @Format = params['Format']
          @CreateAtStart = params['CreateAtStart']
          @CreateAtEnd = params['CreateAtEnd']
          @UpdateAtStart = params['UpdateAtStart']
          @UpdateAtEnd = params['UpdateAtEnd']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Ignored = params['Ignored']
        end
      end

      # DescribeManages返回参数结构体
      class DescribeManagesResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 数组
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              displaymanage_tmp = DisplayManage.new
              displaymanage_tmp.deserialize(i)
              @List << displaymanage_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNetDisks请求参数结构体
      class DescribeNetDisksRequest < TencentCloud::Common::AbstractModel
        # @param CustomerIdList: 企业ID列表，可多选
        # @type CustomerIdList: Array
        # @param IsNew: 是否新增数据
        # @type IsNew: Boolean
        # @param CustomerId: 企业ID
        # @type CustomerId: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param EnterpriseUidList: 子公司ID列表
        # @type EnterpriseUidList: Array
        # @param Format: 数据输出格式：json、file，默认不填为json
        # @type Format: String
        # @param CreateAtStart: 创建时间-开始
        # @type CreateAtStart: String
        # @param CreateAtEnd: 创建时间-结束
        # @type CreateAtEnd: String
        # @param UpdateAtStart: 更新时间-开始
        # @type UpdateAtStart: String
        # @param UpdateAtEnd: 更新时间-结束
        # @type UpdateAtEnd: String
        # @param Filters: 查询数组
        # @type Filters: Array
        # @param Ignored: 是否显示被忽略的数据
        # @type Ignored: Boolean

        attr_accessor :CustomerIdList, :IsNew, :CustomerId, :Limit, :Offset, :EnterpriseUidList, :Format, :CreateAtStart, :CreateAtEnd, :UpdateAtStart, :UpdateAtEnd, :Filters, :Ignored

        def initialize(customeridlist=nil, isnew=nil, customerid=nil, limit=nil, offset=nil, enterpriseuidlist=nil, format=nil, createatstart=nil, createatend=nil, updateatstart=nil, updateatend=nil, filters=nil, ignored=nil)
          @CustomerIdList = customeridlist
          @IsNew = isnew
          @CustomerId = customerid
          @Limit = limit
          @Offset = offset
          @EnterpriseUidList = enterpriseuidlist
          @Format = format
          @CreateAtStart = createatstart
          @CreateAtEnd = createatend
          @UpdateAtStart = updateatstart
          @UpdateAtEnd = updateatend
          @Filters = filters
          @Ignored = ignored
        end

        def deserialize(params)
          @CustomerIdList = params['CustomerIdList']
          @IsNew = params['IsNew']
          @CustomerId = params['CustomerId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @EnterpriseUidList = params['EnterpriseUidList']
          @Format = params['Format']
          @CreateAtStart = params['CreateAtStart']
          @CreateAtEnd = params['CreateAtEnd']
          @UpdateAtStart = params['UpdateAtStart']
          @UpdateAtEnd = params['UpdateAtEnd']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Ignored = params['Ignored']
        end
      end

      # DescribeNetDisks返回参数结构体
      class DescribeNetDisksResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 数组
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              displaynetdisk_tmp = DisplayNetDisk.new
              displaynetdisk_tmp.deserialize(i)
              @List << displaynetdisk_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePorts请求参数结构体
      class DescribePortsRequest < TencentCloud::Common::AbstractModel
        # @param CustomerIdList: 企业ID列表，可多选
        # @type CustomerIdList: Array
        # @param IsAggregation: 是否聚合数据
        # @type IsAggregation: Boolean
        # @param IsNew: 是否新增数据
        # @type IsNew: Boolean
        # @param CustomerId: 企业ID
        # @type CustomerId: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param EnterpriseUidList: 子公司ID列表
        # @type EnterpriseUidList: Array
        # @param Format: 数据输出格式：json、file，默认不填为json
        # @type Format: String
        # @param CreateAtStart: 创建时间-开始
        # @type CreateAtStart: String
        # @param CreateAtEnd: 创建时间-结束
        # @type CreateAtEnd: String
        # @param UpdateAtStart: 更新时间-开始
        # @type UpdateAtStart: String
        # @param UpdateAtEnd: 更新时间-结束
        # @type UpdateAtEnd: String
        # @param Filters: 查询数组
        # @type Filters: Array
        # @param Ignored: 是否显示被忽略的数据
        # @type Ignored: Boolean

        attr_accessor :CustomerIdList, :IsAggregation, :IsNew, :CustomerId, :Limit, :Offset, :EnterpriseUidList, :Format, :CreateAtStart, :CreateAtEnd, :UpdateAtStart, :UpdateAtEnd, :Filters, :Ignored

        def initialize(customeridlist=nil, isaggregation=nil, isnew=nil, customerid=nil, limit=nil, offset=nil, enterpriseuidlist=nil, format=nil, createatstart=nil, createatend=nil, updateatstart=nil, updateatend=nil, filters=nil, ignored=nil)
          @CustomerIdList = customeridlist
          @IsAggregation = isaggregation
          @IsNew = isnew
          @CustomerId = customerid
          @Limit = limit
          @Offset = offset
          @EnterpriseUidList = enterpriseuidlist
          @Format = format
          @CreateAtStart = createatstart
          @CreateAtEnd = createatend
          @UpdateAtStart = updateatstart
          @UpdateAtEnd = updateatend
          @Filters = filters
          @Ignored = ignored
        end

        def deserialize(params)
          @CustomerIdList = params['CustomerIdList']
          @IsAggregation = params['IsAggregation']
          @IsNew = params['IsNew']
          @CustomerId = params['CustomerId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @EnterpriseUidList = params['EnterpriseUidList']
          @Format = params['Format']
          @CreateAtStart = params['CreateAtStart']
          @CreateAtEnd = params['CreateAtEnd']
          @UpdateAtStart = params['UpdateAtStart']
          @UpdateAtEnd = params['UpdateAtEnd']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Ignored = params['Ignored']
        end
      end

      # DescribePorts返回参数结构体
      class DescribePortsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 数组
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              displayport_tmp = DisplayPort.new
              displayport_tmp.deserialize(i)
              @List << displayport_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSensitiveInfos请求参数结构体
      class DescribeSensitiveInfosRequest < TencentCloud::Common::AbstractModel
        # @param CustomerIdList: 企业ID列表，可多选
        # @type CustomerIdList: Array
        # @param IsAggregation: 是否聚合数据
        # @type IsAggregation: Boolean
        # @param IsNew: 是否新增数据
        # @type IsNew: Boolean
        # @param CustomerId: 企业ID
        # @type CustomerId: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param EnterpriseUidList: 子公司ID列表
        # @type EnterpriseUidList: Array
        # @param Format: 数据输出格式：json、file，默认不填为json
        # @type Format: String
        # @param CreateAtStart: 创建时间-开始
        # @type CreateAtStart: String
        # @param CreateAtEnd: 创建时间-结束
        # @type CreateAtEnd: String
        # @param UpdateAtStart: 更新时间-开始
        # @type UpdateAtStart: String
        # @param UpdateAtEnd: 更新时间-结束
        # @type UpdateAtEnd: String
        # @param Filters: 查询数组
        # @type Filters: Array
        # @param Ignored: 是否显示被忽略的数据
        # @type Ignored: Boolean

        attr_accessor :CustomerIdList, :IsAggregation, :IsNew, :CustomerId, :Limit, :Offset, :EnterpriseUidList, :Format, :CreateAtStart, :CreateAtEnd, :UpdateAtStart, :UpdateAtEnd, :Filters, :Ignored

        def initialize(customeridlist=nil, isaggregation=nil, isnew=nil, customerid=nil, limit=nil, offset=nil, enterpriseuidlist=nil, format=nil, createatstart=nil, createatend=nil, updateatstart=nil, updateatend=nil, filters=nil, ignored=nil)
          @CustomerIdList = customeridlist
          @IsAggregation = isaggregation
          @IsNew = isnew
          @CustomerId = customerid
          @Limit = limit
          @Offset = offset
          @EnterpriseUidList = enterpriseuidlist
          @Format = format
          @CreateAtStart = createatstart
          @CreateAtEnd = createatend
          @UpdateAtStart = updateatstart
          @UpdateAtEnd = updateatend
          @Filters = filters
          @Ignored = ignored
        end

        def deserialize(params)
          @CustomerIdList = params['CustomerIdList']
          @IsAggregation = params['IsAggregation']
          @IsNew = params['IsNew']
          @CustomerId = params['CustomerId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @EnterpriseUidList = params['EnterpriseUidList']
          @Format = params['Format']
          @CreateAtStart = params['CreateAtStart']
          @CreateAtEnd = params['CreateAtEnd']
          @UpdateAtStart = params['UpdateAtStart']
          @UpdateAtEnd = params['UpdateAtEnd']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Ignored = params['Ignored']
        end
      end

      # DescribeSensitiveInfos返回参数结构体
      class DescribeSensitiveInfosResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 数组
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              displaysensitiveinfo_tmp = DisplaySensitiveInfo.new
              displaysensitiveinfo_tmp.deserialize(i)
              @List << displaysensitiveinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSubDomains请求参数结构体
      class DescribeSubDomainsRequest < TencentCloud::Common::AbstractModel
        # @param CustomerIdList: 企业ID列表，可多选
        # @type CustomerIdList: Array
        # @param IsNew: 是否新增数据
        # @type IsNew: Boolean
        # @param CustomerId: 企业ID
        # @type CustomerId: Integer
        # @param IsAggregation: 是否聚合数据
        # @type IsAggregation: Boolean
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param EnterpriseUidList: 子公司ID列表
        # @type EnterpriseUidList: Array
        # @param Format: 数据输出格式：json、file，默认不填为json
        # @type Format: String
        # @param CreateAtStart: 创建时间-开始
        # @type CreateAtStart: String
        # @param CreateAtEnd: 创建时间-结束
        # @type CreateAtEnd: String
        # @param UpdateAtStart: 更新时间-开始
        # @type UpdateAtStart: String
        # @param UpdateAtEnd: 更新时间-结束
        # @type UpdateAtEnd: String
        # @param Filters: 查询数组
        # @type Filters: Array
        # @param Ignored: 是否显示被忽略的数据
        # @type Ignored: Boolean

        attr_accessor :CustomerIdList, :IsNew, :CustomerId, :IsAggregation, :Limit, :Offset, :EnterpriseUidList, :Format, :CreateAtStart, :CreateAtEnd, :UpdateAtStart, :UpdateAtEnd, :Filters, :Ignored

        def initialize(customeridlist=nil, isnew=nil, customerid=nil, isaggregation=nil, limit=nil, offset=nil, enterpriseuidlist=nil, format=nil, createatstart=nil, createatend=nil, updateatstart=nil, updateatend=nil, filters=nil, ignored=nil)
          @CustomerIdList = customeridlist
          @IsNew = isnew
          @CustomerId = customerid
          @IsAggregation = isaggregation
          @Limit = limit
          @Offset = offset
          @EnterpriseUidList = enterpriseuidlist
          @Format = format
          @CreateAtStart = createatstart
          @CreateAtEnd = createatend
          @UpdateAtStart = updateatstart
          @UpdateAtEnd = updateatend
          @Filters = filters
          @Ignored = ignored
        end

        def deserialize(params)
          @CustomerIdList = params['CustomerIdList']
          @IsNew = params['IsNew']
          @CustomerId = params['CustomerId']
          @IsAggregation = params['IsAggregation']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @EnterpriseUidList = params['EnterpriseUidList']
          @Format = params['Format']
          @CreateAtStart = params['CreateAtStart']
          @CreateAtEnd = params['CreateAtEnd']
          @UpdateAtStart = params['UpdateAtStart']
          @UpdateAtEnd = params['UpdateAtEnd']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Ignored = params['Ignored']
        end
      end

      # DescribeSubDomains返回参数结构体
      class DescribeSubDomainsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 数组
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              displaysubdomain_tmp = DisplaySubDomain.new
              displaysubdomain_tmp.deserialize(i)
              @List << displaysubdomain_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSuspiciousAssets请求参数结构体
      class DescribeSuspiciousAssetsRequest < TencentCloud::Common::AbstractModel
        # @param CustomerIdList: 企业ID列表，可多选
        # @type CustomerIdList: Array
        # @param IsAggregation: 是否聚合数据
        # @type IsAggregation: Boolean
        # @param IsNew: 是否新增数据
        # @type IsNew: Boolean
        # @param CustomerId: 企业ID
        # @type CustomerId: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param EnterpriseUidList: 子公司ID列表
        # @type EnterpriseUidList: Array
        # @param Format: 数据输出格式：json、file，默认不填为json
        # @type Format: String
        # @param CreateAtStart: 创建时间-开始
        # @type CreateAtStart: String
        # @param CreateAtEnd: 创建时间-结束
        # @type CreateAtEnd: String
        # @param UpdateAtStart: 更新时间-开始
        # @type UpdateAtStart: String
        # @param UpdateAtEnd: 更新时间-结束
        # @type UpdateAtEnd: String
        # @param Filters: 查询数组
        # @type Filters: Array
        # @param Ignored: 是否显示被忽略的数据
        # @type Ignored: Boolean

        attr_accessor :CustomerIdList, :IsAggregation, :IsNew, :CustomerId, :Limit, :Offset, :EnterpriseUidList, :Format, :CreateAtStart, :CreateAtEnd, :UpdateAtStart, :UpdateAtEnd, :Filters, :Ignored

        def initialize(customeridlist=nil, isaggregation=nil, isnew=nil, customerid=nil, limit=nil, offset=nil, enterpriseuidlist=nil, format=nil, createatstart=nil, createatend=nil, updateatstart=nil, updateatend=nil, filters=nil, ignored=nil)
          @CustomerIdList = customeridlist
          @IsAggregation = isaggregation
          @IsNew = isnew
          @CustomerId = customerid
          @Limit = limit
          @Offset = offset
          @EnterpriseUidList = enterpriseuidlist
          @Format = format
          @CreateAtStart = createatstart
          @CreateAtEnd = createatend
          @UpdateAtStart = updateatstart
          @UpdateAtEnd = updateatend
          @Filters = filters
          @Ignored = ignored
        end

        def deserialize(params)
          @CustomerIdList = params['CustomerIdList']
          @IsAggregation = params['IsAggregation']
          @IsNew = params['IsNew']
          @CustomerId = params['CustomerId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @EnterpriseUidList = params['EnterpriseUidList']
          @Format = params['Format']
          @CreateAtStart = params['CreateAtStart']
          @CreateAtEnd = params['CreateAtEnd']
          @UpdateAtStart = params['UpdateAtStart']
          @UpdateAtEnd = params['UpdateAtEnd']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Ignored = params['Ignored']
        end
      end

      # DescribeSuspiciousAssets返回参数结构体
      class DescribeSuspiciousAssetsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 数组
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              displaysuspiciousasset_tmp = DisplaySuspiciousAsset.new
              displaysuspiciousasset_tmp.deserialize(i)
              @List << displaysuspiciousasset_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVuls请求参数结构体
      class DescribeVulsRequest < TencentCloud::Common::AbstractModel
        # @param CustomerIdList: 企业ID列表，可多选
        # @type CustomerIdList: Array
        # @param IsNew: 是否新增数据
        # @type IsNew: Boolean
        # @param CustomerId: 企业ID
        # @type CustomerId: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param EnterpriseUidList: 子公司ID列表
        # @type EnterpriseUidList: Array
        # @param Format: 数据输出格式：json、file，默认不填为json
        # @type Format: String
        # @param CreateAtStart: 创建时间-开始
        # @type CreateAtStart: String
        # @param CreateAtEnd: 创建时间-结束
        # @type CreateAtEnd: String
        # @param UpdateAtStart: 更新时间-开始
        # @type UpdateAtStart: String
        # @param UpdateAtEnd: 更新时间-结束
        # @type UpdateAtEnd: String
        # @param Filters: 查询数组
        # @type Filters: Array
        # @param Ignored: 是否显示被忽略的数据
        # @type Ignored: Boolean

        attr_accessor :CustomerIdList, :IsNew, :CustomerId, :Limit, :Offset, :EnterpriseUidList, :Format, :CreateAtStart, :CreateAtEnd, :UpdateAtStart, :UpdateAtEnd, :Filters, :Ignored

        def initialize(customeridlist=nil, isnew=nil, customerid=nil, limit=nil, offset=nil, enterpriseuidlist=nil, format=nil, createatstart=nil, createatend=nil, updateatstart=nil, updateatend=nil, filters=nil, ignored=nil)
          @CustomerIdList = customeridlist
          @IsNew = isnew
          @CustomerId = customerid
          @Limit = limit
          @Offset = offset
          @EnterpriseUidList = enterpriseuidlist
          @Format = format
          @CreateAtStart = createatstart
          @CreateAtEnd = createatend
          @UpdateAtStart = updateatstart
          @UpdateAtEnd = updateatend
          @Filters = filters
          @Ignored = ignored
        end

        def deserialize(params)
          @CustomerIdList = params['CustomerIdList']
          @IsNew = params['IsNew']
          @CustomerId = params['CustomerId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @EnterpriseUidList = params['EnterpriseUidList']
          @Format = params['Format']
          @CreateAtStart = params['CreateAtStart']
          @CreateAtEnd = params['CreateAtEnd']
          @UpdateAtStart = params['UpdateAtStart']
          @UpdateAtEnd = params['UpdateAtEnd']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Ignored = params['Ignored']
        end
      end

      # DescribeVuls返回参数结构体
      class DescribeVulsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 数组
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              displayvul_tmp = DisplayVul.new
              displayvul_tmp.deserialize(i)
              @List << displayvul_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWeakPasswords请求参数结构体
      class DescribeWeakPasswordsRequest < TencentCloud::Common::AbstractModel
        # @param CustomerIdList: 企业ID列表，可多选
        # @type CustomerIdList: Array
        # @param IsNew: 是否新增数据
        # @type IsNew: Boolean
        # @param CustomerId: 企业ID
        # @type CustomerId: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param EnterpriseUidList: 子公司ID列表
        # @type EnterpriseUidList: Array
        # @param Format: 数据输出格式：json、file，默认不填为json
        # @type Format: String
        # @param CreateAtStart: 创建时间-开始
        # @type CreateAtStart: String
        # @param CreateAtEnd: 创建时间-结束
        # @type CreateAtEnd: String
        # @param UpdateAtStart: 更新时间-开始
        # @type UpdateAtStart: String
        # @param UpdateAtEnd: 更新时间-结束
        # @type UpdateAtEnd: String
        # @param Filters: 查询数组
        # @type Filters: Array
        # @param Ignored: 是否显示被忽略的数据
        # @type Ignored: Boolean

        attr_accessor :CustomerIdList, :IsNew, :CustomerId, :Limit, :Offset, :EnterpriseUidList, :Format, :CreateAtStart, :CreateAtEnd, :UpdateAtStart, :UpdateAtEnd, :Filters, :Ignored

        def initialize(customeridlist=nil, isnew=nil, customerid=nil, limit=nil, offset=nil, enterpriseuidlist=nil, format=nil, createatstart=nil, createatend=nil, updateatstart=nil, updateatend=nil, filters=nil, ignored=nil)
          @CustomerIdList = customeridlist
          @IsNew = isnew
          @CustomerId = customerid
          @Limit = limit
          @Offset = offset
          @EnterpriseUidList = enterpriseuidlist
          @Format = format
          @CreateAtStart = createatstart
          @CreateAtEnd = createatend
          @UpdateAtStart = updateatstart
          @UpdateAtEnd = updateatend
          @Filters = filters
          @Ignored = ignored
        end

        def deserialize(params)
          @CustomerIdList = params['CustomerIdList']
          @IsNew = params['IsNew']
          @CustomerId = params['CustomerId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @EnterpriseUidList = params['EnterpriseUidList']
          @Format = params['Format']
          @CreateAtStart = params['CreateAtStart']
          @CreateAtEnd = params['CreateAtEnd']
          @UpdateAtStart = params['UpdateAtStart']
          @UpdateAtEnd = params['UpdateAtEnd']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Ignored = params['Ignored']
        end
      end

      # DescribeWeakPasswords返回参数结构体
      class DescribeWeakPasswordsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 数组
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              displayweakpassword_tmp = DisplayWeakPassword.new
              displayweakpassword_tmp.deserialize(i)
              @List << displayweakpassword_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWechatApplets请求参数结构体
      class DescribeWechatAppletsRequest < TencentCloud::Common::AbstractModel
        # @param CustomerIdList: 企业ID列表，可多选
        # @type CustomerIdList: Array
        # @param CustomerId: 企业ID
        # @type CustomerId: Integer
        # @param IsNew: 是否新增数据
        # @type IsNew: Boolean
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param EnterpriseUidList: 子公司ID列表
        # @type EnterpriseUidList: Array
        # @param Format: 数据输出格式：json、file，默认不填为json
        # @type Format: String
        # @param CreateAtStart: 创建时间-开始
        # @type CreateAtStart: String
        # @param CreateAtEnd: 创建时间-结束
        # @type CreateAtEnd: String
        # @param UpdateAtStart: 更新时间-开始
        # @type UpdateAtStart: String
        # @param UpdateAtEnd: 更新时间-结束
        # @type UpdateAtEnd: String
        # @param Filters: 查询数组
        # @type Filters: Array
        # @param Ignored: 是否显示被忽略的数据
        # @type Ignored: Boolean

        attr_accessor :CustomerIdList, :CustomerId, :IsNew, :Limit, :Offset, :EnterpriseUidList, :Format, :CreateAtStart, :CreateAtEnd, :UpdateAtStart, :UpdateAtEnd, :Filters, :Ignored

        def initialize(customeridlist=nil, customerid=nil, isnew=nil, limit=nil, offset=nil, enterpriseuidlist=nil, format=nil, createatstart=nil, createatend=nil, updateatstart=nil, updateatend=nil, filters=nil, ignored=nil)
          @CustomerIdList = customeridlist
          @CustomerId = customerid
          @IsNew = isnew
          @Limit = limit
          @Offset = offset
          @EnterpriseUidList = enterpriseuidlist
          @Format = format
          @CreateAtStart = createatstart
          @CreateAtEnd = createatend
          @UpdateAtStart = updateatstart
          @UpdateAtEnd = updateatend
          @Filters = filters
          @Ignored = ignored
        end

        def deserialize(params)
          @CustomerIdList = params['CustomerIdList']
          @CustomerId = params['CustomerId']
          @IsNew = params['IsNew']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @EnterpriseUidList = params['EnterpriseUidList']
          @Format = params['Format']
          @CreateAtStart = params['CreateAtStart']
          @CreateAtEnd = params['CreateAtEnd']
          @UpdateAtStart = params['UpdateAtStart']
          @UpdateAtEnd = params['UpdateAtEnd']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Ignored = params['Ignored']
        end
      end

      # DescribeWechatApplets返回参数结构体
      class DescribeWechatAppletsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 数组
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              displaywechatapplet_tmp = DisplayWechatApplet.new
              displaywechatapplet_tmp.deserialize(i)
              @List << displaywechatapplet_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWechatOfficialAccounts请求参数结构体
      class DescribeWechatOfficialAccountsRequest < TencentCloud::Common::AbstractModel
        # @param CustomerIdList: 企业ID列表，可多选
        # @type CustomerIdList: Array
        # @param IsNew: 是否新增数据
        # @type IsNew: Boolean
        # @param CustomerId: 企业ID
        # @type CustomerId: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param EnterpriseUidList: 子公司ID列表
        # @type EnterpriseUidList: Array
        # @param Format: 数据输出格式：json、file，默认不填为json
        # @type Format: String
        # @param CreateAtStart: 创建时间-开始
        # @type CreateAtStart: String
        # @param CreateAtEnd: 创建时间-结束
        # @type CreateAtEnd: String
        # @param UpdateAtStart: 更新时间-开始
        # @type UpdateAtStart: String
        # @param UpdateAtEnd: 更新时间-结束
        # @type UpdateAtEnd: String
        # @param Filters: 查询数组
        # @type Filters: Array
        # @param Ignored: 是否显示被忽略的数据
        # @type Ignored: Boolean

        attr_accessor :CustomerIdList, :IsNew, :CustomerId, :Limit, :Offset, :EnterpriseUidList, :Format, :CreateAtStart, :CreateAtEnd, :UpdateAtStart, :UpdateAtEnd, :Filters, :Ignored

        def initialize(customeridlist=nil, isnew=nil, customerid=nil, limit=nil, offset=nil, enterpriseuidlist=nil, format=nil, createatstart=nil, createatend=nil, updateatstart=nil, updateatend=nil, filters=nil, ignored=nil)
          @CustomerIdList = customeridlist
          @IsNew = isnew
          @CustomerId = customerid
          @Limit = limit
          @Offset = offset
          @EnterpriseUidList = enterpriseuidlist
          @Format = format
          @CreateAtStart = createatstart
          @CreateAtEnd = createatend
          @UpdateAtStart = updateatstart
          @UpdateAtEnd = updateatend
          @Filters = filters
          @Ignored = ignored
        end

        def deserialize(params)
          @CustomerIdList = params['CustomerIdList']
          @IsNew = params['IsNew']
          @CustomerId = params['CustomerId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @EnterpriseUidList = params['EnterpriseUidList']
          @Format = params['Format']
          @CreateAtStart = params['CreateAtStart']
          @CreateAtEnd = params['CreateAtEnd']
          @UpdateAtStart = params['UpdateAtStart']
          @UpdateAtEnd = params['UpdateAtEnd']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Ignored = params['Ignored']
        end
      end

      # DescribeWechatOfficialAccounts返回参数结构体
      class DescribeWechatOfficialAccountsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 数组
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              displaywechatofficialaccount_tmp = DisplayWechatOfficialAccount.new
              displaywechatofficialaccount_tmp.deserialize(i)
              @List << displaywechatofficialaccount_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 移动资产详情
      class DisplayApp < TencentCloud::Common::AbstractModel
        # @param Id: 主键ID
        # @type Id: Integer
        # @param DisplayToolCommon: 公共字段
        # @type DisplayToolCommon: :class:`Tencentcloud::Ctem.v20231128.models.DisplayToolCommon`
        # @param Name: APP名称
        # @type Name: String
        # @param Description: 描述
        # @type Description: String
        # @param Developer: 开发者
        # @type Developer: String
        # @param DownloadUrl: 下载地址
        # @type DownloadUrl: String
        # @param Logo: 图片
        # @type Logo: String
        # @param PackageName: 包名
        # @type PackageName: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ServerUrl: 服务端地址
        # @type ServerUrl: String
        # @param AppVersion: app版本
        # @type AppVersion: String

        attr_accessor :Id, :DisplayToolCommon, :Name, :Description, :Developer, :DownloadUrl, :Logo, :PackageName, :Platform, :ServerUrl, :AppVersion

        def initialize(id=nil, displaytoolcommon=nil, name=nil, description=nil, developer=nil, downloadurl=nil, logo=nil, packagename=nil, platform=nil, serverurl=nil, appversion=nil)
          @Id = id
          @DisplayToolCommon = displaytoolcommon
          @Name = name
          @Description = description
          @Developer = developer
          @DownloadUrl = downloadurl
          @Logo = logo
          @PackageName = packagename
          @Platform = platform
          @ServerUrl = serverurl
          @AppVersion = appversion
        end

        def deserialize(params)
          @Id = params['Id']
          unless params['DisplayToolCommon'].nil?
            @DisplayToolCommon = DisplayToolCommon.new
            @DisplayToolCommon.deserialize(params['DisplayToolCommon'])
          end
          @Name = params['Name']
          @Description = params['Description']
          @Developer = params['Developer']
          @DownloadUrl = params['DownloadUrl']
          @Logo = params['Logo']
          @PackageName = params['PackageName']
          @Platform = params['Platform']
          @ServerUrl = params['ServerUrl']
          @AppVersion = params['AppVersion']
        end
      end

      # 主机资产详情
      class DisplayAsset < TencentCloud::Common::AbstractModel
        # @param Id: 主机资产Id
        # @type Id: Integer
        # @param Os: 操作系统类型
        # @type Os: String
        # @param Ip: 主机地址
        # @type Ip: String
        # @param Country: 国家
        # @type Country: String
        # @param Province: 省份
        # @type Province: String
        # @param City: 地域
        # @type City: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param DisplayToolCommon: 公共字段
        # @type DisplayToolCommon: :class:`Tencentcloud::Ctem.v20231128.models.DisplayToolCommon`

        attr_accessor :Id, :Os, :Ip, :Country, :Province, :City, :Isp, :DisplayToolCommon

        def initialize(id=nil, os=nil, ip=nil, country=nil, province=nil, city=nil, isp=nil, displaytoolcommon=nil)
          @Id = id
          @Os = os
          @Ip = ip
          @Country = country
          @Province = province
          @City = city
          @Isp = isp
          @DisplayToolCommon = displaytoolcommon
        end

        def deserialize(params)
          @Id = params['Id']
          @Os = params['Os']
          @Ip = params['Ip']
          @Country = params['Country']
          @Province = params['Province']
          @City = params['City']
          @Isp = params['Isp']
          unless params['DisplayToolCommon'].nil?
            @DisplayToolCommon = DisplayToolCommon.new
            @DisplayToolCommon.deserialize(params['DisplayToolCommon'])
          end
        end
      end

      # 目录爆破详情
      class DisplayConfig < TencentCloud::Common::AbstractModel
        # @param Id: 主键Id
        # @type Id: Integer
        # @param Url: 地址
        # @type Url: String
        # @param Title: 站点标题
        # @type Title: String
        # @param Code: 状态码
        # @type Code: Integer
        # @param ContentLength: 响应长度
        # @type ContentLength: Integer
        # @param DisplayToolCommon: 公共字段
        # @type DisplayToolCommon: :class:`Tencentcloud::Ctem.v20231128.models.DisplayToolCommon`
        # @param Ip: Ip数据
        # @type Ip: String
        # @param AIRating: AI评分
        # @type AIRating: Integer
        # @param AIAnalysis: AI分析
        # @type AIAnalysis: String
        # @param RiskLevel: 风险等级: 1-低危, 2-中危, 3-高危, 4-危级, 5-误报
        # @type RiskLevel: Integer
        # @param Suggestion: 建议
        # @type Suggestion: String

        attr_accessor :Id, :Url, :Title, :Code, :ContentLength, :DisplayToolCommon, :Ip, :AIRating, :AIAnalysis, :RiskLevel, :Suggestion

        def initialize(id=nil, url=nil, title=nil, code=nil, contentlength=nil, displaytoolcommon=nil, ip=nil, airating=nil, aianalysis=nil, risklevel=nil, suggestion=nil)
          @Id = id
          @Url = url
          @Title = title
          @Code = code
          @ContentLength = contentlength
          @DisplayToolCommon = displaytoolcommon
          @Ip = ip
          @AIRating = airating
          @AIAnalysis = aianalysis
          @RiskLevel = risklevel
          @Suggestion = suggestion
        end

        def deserialize(params)
          @Id = params['Id']
          @Url = params['Url']
          @Title = params['Title']
          @Code = params['Code']
          @ContentLength = params['ContentLength']
          unless params['DisplayToolCommon'].nil?
            @DisplayToolCommon = DisplayToolCommon.new
            @DisplayToolCommon.deserialize(params['DisplayToolCommon'])
          end
          @Ip = params['Ip']
          @AIRating = params['AIRating']
          @AIAnalysis = params['AIAnalysis']
          @RiskLevel = params['RiskLevel']
          @Suggestion = params['Suggestion']
        end
      end

      # 暗网详情
      class DisplayDarkWeb < TencentCloud::Common::AbstractModel
        # @param Id: 主键ID
        # @type Id: Integer
        # @param Content: 内容
        # @type Content: String
        # @param MatchedKeywords: 命中关键字
        # @type MatchedKeywords: String
        # @param Url: APP地址
        # @type Url: String
        # @param DisplayToolCommon: 公共字段
        # @type DisplayToolCommon: :class:`Tencentcloud::Ctem.v20231128.models.DisplayToolCommon`
        # @param Status: 状态：unrepaired:未修复，repaired:已修复，ignore:已忽略
        # @type Status: String

        attr_accessor :Id, :Content, :MatchedKeywords, :Url, :DisplayToolCommon, :Status

        def initialize(id=nil, content=nil, matchedkeywords=nil, url=nil, displaytoolcommon=nil, status=nil)
          @Id = id
          @Content = content
          @MatchedKeywords = matchedkeywords
          @Url = url
          @DisplayToolCommon = displaytoolcommon
          @Status = status
        end

        def deserialize(params)
          @Id = params['Id']
          @Content = params['Content']
          @MatchedKeywords = params['MatchedKeywords']
          @Url = params['Url']
          unless params['DisplayToolCommon'].nil?
            @DisplayToolCommon = DisplayToolCommon.new
            @DisplayToolCommon.deserialize(params['DisplayToolCommon'])
          end
          @Status = params['Status']
        end
      end

      # 主域名详情
      class DisplayDomain < TencentCloud::Common::AbstractModel
        # @param Id: 主键ID
        # @type Id: Integer
        # @param Domain: 主域名
        # @type Domain: String
        # @param ICP: ICP
        # @type ICP: String
        # @param RegisteredTime: 注册时间
        # @type RegisteredTime: String
        # @param ExpiredTime: 过期时间
        # @type ExpiredTime: String
        # @param Company: 公司
        # @type Company: String
        # @param DisplayToolCommon: 公共字段
        # @type DisplayToolCommon: :class:`Tencentcloud::Ctem.v20231128.models.DisplayToolCommon`

        attr_accessor :Id, :Domain, :ICP, :RegisteredTime, :ExpiredTime, :Company, :DisplayToolCommon

        def initialize(id=nil, domain=nil, icp=nil, registeredtime=nil, expiredtime=nil, company=nil, displaytoolcommon=nil)
          @Id = id
          @Domain = domain
          @ICP = icp
          @RegisteredTime = registeredtime
          @ExpiredTime = expiredtime
          @Company = company
          @DisplayToolCommon = displaytoolcommon
        end

        def deserialize(params)
          @Id = params['Id']
          @Domain = params['Domain']
          @ICP = params['ICP']
          @RegisteredTime = params['RegisteredTime']
          @ExpiredTime = params['ExpiredTime']
          @Company = params['Company']
          unless params['DisplayToolCommon'].nil?
            @DisplayToolCommon = DisplayToolCommon.new
            @DisplayToolCommon.deserialize(params['DisplayToolCommon'])
          end
        end
      end

      # 企业架构详情
      class DisplayEnterprise < TencentCloud::Common::AbstractModel
        # @param Id: 主键Id
        # @type Id: Integer
        # @param DisplayToolCommon: 公共字段
        # @type DisplayToolCommon: :class:`Tencentcloud::Ctem.v20231128.models.DisplayToolCommon`
        # @param ParentEnterpriseUid: 子公司上级
        # @type ParentEnterpriseUid: String
        # @param Name: 企业名称
        # @type Name: String
        # @param Abbreviation: 公司简称
        # @type Abbreviation: String
        # @param CreditCode: 统一社会信用代码
        # @type CreditCode: String
        # @param Status: 企业状态
        # @type Status: String
        # @param RegisteredCapital: 注册资本
        # @type RegisteredCapital: String
        # @param ShareholdingRatio: 持股比例
        # @type ShareholdingRatio: String
        # @param LegalPerson: 法人代表
        # @type LegalPerson: String
        # @param Type: 类型
        # @type Type: String
        # @param Industry: 行业类型
        # @type Industry: String
        # @param EnterpriseUid: 子公司唯一uid
        # @type EnterpriseUid: String
        # @param DomainCount: 主域名数量
        # @type DomainCount: Integer
        # @param SubDomainCount: 子域名数量
        # @type SubDomainCount: Integer
        # @param HttpCount: 网站数量
        # @type HttpCount: Integer
        # @param VulCount: 漏洞数量
        # @type VulCount: Integer

        attr_accessor :Id, :DisplayToolCommon, :ParentEnterpriseUid, :Name, :Abbreviation, :CreditCode, :Status, :RegisteredCapital, :ShareholdingRatio, :LegalPerson, :Type, :Industry, :EnterpriseUid, :DomainCount, :SubDomainCount, :HttpCount, :VulCount

        def initialize(id=nil, displaytoolcommon=nil, parententerpriseuid=nil, name=nil, abbreviation=nil, creditcode=nil, status=nil, registeredcapital=nil, shareholdingratio=nil, legalperson=nil, type=nil, industry=nil, enterpriseuid=nil, domaincount=nil, subdomaincount=nil, httpcount=nil, vulcount=nil)
          @Id = id
          @DisplayToolCommon = displaytoolcommon
          @ParentEnterpriseUid = parententerpriseuid
          @Name = name
          @Abbreviation = abbreviation
          @CreditCode = creditcode
          @Status = status
          @RegisteredCapital = registeredcapital
          @ShareholdingRatio = shareholdingratio
          @LegalPerson = legalperson
          @Type = type
          @Industry = industry
          @EnterpriseUid = enterpriseuid
          @DomainCount = domaincount
          @SubDomainCount = subdomaincount
          @HttpCount = httpcount
          @VulCount = vulcount
        end

        def deserialize(params)
          @Id = params['Id']
          unless params['DisplayToolCommon'].nil?
            @DisplayToolCommon = DisplayToolCommon.new
            @DisplayToolCommon.deserialize(params['DisplayToolCommon'])
          end
          @ParentEnterpriseUid = params['ParentEnterpriseUid']
          @Name = params['Name']
          @Abbreviation = params['Abbreviation']
          @CreditCode = params['CreditCode']
          @Status = params['Status']
          @RegisteredCapital = params['RegisteredCapital']
          @ShareholdingRatio = params['ShareholdingRatio']
          @LegalPerson = params['LegalPerson']
          @Type = params['Type']
          @Industry = params['Industry']
          @EnterpriseUid = params['EnterpriseUid']
          @DomainCount = params['DomainCount']
          @SubDomainCount = params['SubDomainCount']
          @HttpCount = params['HttpCount']
          @VulCount = params['VulCount']
        end
      end

      # 仿冒应用详情
      class DisplayFakeApp < TencentCloud::Common::AbstractModel
        # @param Id: 主键ID
        # @type Id: Integer
        # @param DisplayToolCommon: 公共字段
        # @type DisplayToolCommon: :class:`Tencentcloud::Ctem.v20231128.models.DisplayToolCommon`
        # @param AppName: 仿冒应用名称
        # @type AppName: String
        # @param PackageName: 仿冒应用包名称
        # @type PackageName: String
        # @param DownloadUrl: 下载链接
        # @type DownloadUrl: String
        # @param HandlingStatus: 处置状态：0-待处理 1-处理中 2-已处理
        # @type HandlingStatus: Integer
        # @param ShutdownStatus: 关停状态：0-(默认状态) 1-关停审核中 2-已拦截 3-已拒绝 4-下线流程中 5-已下线 6-下线失败
        # @type ShutdownStatus: Integer
        # @param ShutdownTime: 关停时间
        # @type ShutdownTime: String

        attr_accessor :Id, :DisplayToolCommon, :AppName, :PackageName, :DownloadUrl, :HandlingStatus, :ShutdownStatus, :ShutdownTime

        def initialize(id=nil, displaytoolcommon=nil, appname=nil, packagename=nil, downloadurl=nil, handlingstatus=nil, shutdownstatus=nil, shutdowntime=nil)
          @Id = id
          @DisplayToolCommon = displaytoolcommon
          @AppName = appname
          @PackageName = packagename
          @DownloadUrl = downloadurl
          @HandlingStatus = handlingstatus
          @ShutdownStatus = shutdownstatus
          @ShutdownTime = shutdowntime
        end

        def deserialize(params)
          @Id = params['Id']
          unless params['DisplayToolCommon'].nil?
            @DisplayToolCommon = DisplayToolCommon.new
            @DisplayToolCommon.deserialize(params['DisplayToolCommon'])
          end
          @AppName = params['AppName']
          @PackageName = params['PackageName']
          @DownloadUrl = params['DownloadUrl']
          @HandlingStatus = params['HandlingStatus']
          @ShutdownStatus = params['ShutdownStatus']
          @ShutdownTime = params['ShutdownTime']
        end
      end

      # 仿冒小程序详情
      class DisplayFakeMiniProgram < TencentCloud::Common::AbstractModel
        # @param Id: 主键ID
        # @type Id: Integer
        # @param DisplayToolCommon: 公共字段
        # @type DisplayToolCommon: :class:`Tencentcloud::Ctem.v20231128.models.DisplayToolCommon`
        # @param ProgramName: 仿冒小程序名称
        # @type ProgramName: String
        # @param ProgramId: 小程序ID
        # @type ProgramId: String
        # @param Category: 类别
        # @type Category: String
        # @param QrCode: 二维码
        # @type QrCode: String
        # @param HandlingStatus: 处置状态：0-待处理 1-处理中 2-已处理
        # @type HandlingStatus: Integer
        # @param ShutdownStatus: 关停状态：0-(默认状态) 1-关停审核中 2-已拦截 3-已拒绝 4-下线流程中 5-已下线 6-下线失败
        # @type ShutdownStatus: Integer
        # @param ShutdownTime: 关停时间
        # @type ShutdownTime: String

        attr_accessor :Id, :DisplayToolCommon, :ProgramName, :ProgramId, :Category, :QrCode, :HandlingStatus, :ShutdownStatus, :ShutdownTime

        def initialize(id=nil, displaytoolcommon=nil, programname=nil, programid=nil, category=nil, qrcode=nil, handlingstatus=nil, shutdownstatus=nil, shutdowntime=nil)
          @Id = id
          @DisplayToolCommon = displaytoolcommon
          @ProgramName = programname
          @ProgramId = programid
          @Category = category
          @QrCode = qrcode
          @HandlingStatus = handlingstatus
          @ShutdownStatus = shutdownstatus
          @ShutdownTime = shutdowntime
        end

        def deserialize(params)
          @Id = params['Id']
          unless params['DisplayToolCommon'].nil?
            @DisplayToolCommon = DisplayToolCommon.new
            @DisplayToolCommon.deserialize(params['DisplayToolCommon'])
          end
          @ProgramName = params['ProgramName']
          @ProgramId = params['ProgramId']
          @Category = params['Category']
          @QrCode = params['QrCode']
          @HandlingStatus = params['HandlingStatus']
          @ShutdownStatus = params['ShutdownStatus']
          @ShutdownTime = params['ShutdownTime']
        end
      end

      # 仿冒网站详情
      class DisplayFakeWebsite < TencentCloud::Common::AbstractModel
        # @param Id: 主键ID
        # @type Id: Integer
        # @param DisplayToolCommon: 公共字段
        # @type DisplayToolCommon: :class:`Tencentcloud::Ctem.v20231128.models.DisplayToolCommon`
        # @param Website: 仿冒网站
        # @type Website: String
        # @param IPLocation: ip位置
        # @type IPLocation: String
        # @param Screenshot: 截图
        # @type Screenshot: String
        # @param HandlingStatus: 处置状态：0-待处理 1-处理中 2-已处理
        # @type HandlingStatus: Integer
        # @param ShutdownStatus: 关停状态：0-(默认状态) 1-关停审核中 2-已拦截 3-已拒绝 4-下线流程中 5-已下线 6-下线失败
        # @type ShutdownStatus: Integer
        # @param ShutdownTime: 关停时间
        # @type ShutdownTime: String

        attr_accessor :Id, :DisplayToolCommon, :Website, :IPLocation, :Screenshot, :HandlingStatus, :ShutdownStatus, :ShutdownTime

        def initialize(id=nil, displaytoolcommon=nil, website=nil, iplocation=nil, screenshot=nil, handlingstatus=nil, shutdownstatus=nil, shutdowntime=nil)
          @Id = id
          @DisplayToolCommon = displaytoolcommon
          @Website = website
          @IPLocation = iplocation
          @Screenshot = screenshot
          @HandlingStatus = handlingstatus
          @ShutdownStatus = shutdownstatus
          @ShutdownTime = shutdowntime
        end

        def deserialize(params)
          @Id = params['Id']
          unless params['DisplayToolCommon'].nil?
            @DisplayToolCommon = DisplayToolCommon.new
            @DisplayToolCommon.deserialize(params['DisplayToolCommon'])
          end
          @Website = params['Website']
          @IPLocation = params['IPLocation']
          @Screenshot = params['Screenshot']
          @HandlingStatus = params['HandlingStatus']
          @ShutdownStatus = params['ShutdownStatus']
          @ShutdownTime = params['ShutdownTime']
        end
      end

      # 仿冒公众号详情
      class DisplayFakeWechatOfficial < TencentCloud::Common::AbstractModel
        # @param Id: 主键ID
        # @type Id: Integer
        # @param DisplayToolCommon: 公共字段
        # @type DisplayToolCommon: :class:`Tencentcloud::Ctem.v20231128.models.DisplayToolCommon`
        # @param AccountName: 仿冒公众号名称
        # @type AccountName: String
        # @param WechatId: 公众号ID
        # @type WechatId: String
        # @param Avatar: 头像
        # @type Avatar: String
        # @param QrCode: 二维码
        # @type QrCode: String
        # @param HandlingStatus: 处置状态：0-待处理 1-处理中 2-已处理
        # @type HandlingStatus: Integer
        # @param ShutdownStatus: 关停状态：0-(默认状态) 1-关停审核中 2-已拦截 3-已拒绝 4-下线流程中 5-已下线 6-下线失败
        # @type ShutdownStatus: Integer
        # @param ShutdownTime: 关停时间
        # @type ShutdownTime: String

        attr_accessor :Id, :DisplayToolCommon, :AccountName, :WechatId, :Avatar, :QrCode, :HandlingStatus, :ShutdownStatus, :ShutdownTime

        def initialize(id=nil, displaytoolcommon=nil, accountname=nil, wechatid=nil, avatar=nil, qrcode=nil, handlingstatus=nil, shutdownstatus=nil, shutdowntime=nil)
          @Id = id
          @DisplayToolCommon = displaytoolcommon
          @AccountName = accountname
          @WechatId = wechatid
          @Avatar = avatar
          @QrCode = qrcode
          @HandlingStatus = handlingstatus
          @ShutdownStatus = shutdownstatus
          @ShutdownTime = shutdowntime
        end

        def deserialize(params)
          @Id = params['Id']
          unless params['DisplayToolCommon'].nil?
            @DisplayToolCommon = DisplayToolCommon.new
            @DisplayToolCommon.deserialize(params['DisplayToolCommon'])
          end
          @AccountName = params['AccountName']
          @WechatId = params['WechatId']
          @Avatar = params['Avatar']
          @QrCode = params['QrCode']
          @HandlingStatus = params['HandlingStatus']
          @ShutdownStatus = params['ShutdownStatus']
          @ShutdownTime = params['ShutdownTime']
        end
      end

      # Github泄露详情
      class DisplayGithub < TencentCloud::Common::AbstractModel
        # @param Id: 主键ID
        # @type Id: Integer
        # @param Content: 内容
        # @type Content: String
        # @param MatchedKeywords: 命中关键字
        # @type MatchedKeywords: String
        # @param Url: 泄露地址
        # @type Url: String
        # @param Status: 状态
        # @type Status: String
        # @param DisplayToolCommon: 公共字段
        # @type DisplayToolCommon: :class:`Tencentcloud::Ctem.v20231128.models.DisplayToolCommon`

        attr_accessor :Id, :Content, :MatchedKeywords, :Url, :Status, :DisplayToolCommon

        def initialize(id=nil, content=nil, matchedkeywords=nil, url=nil, status=nil, displaytoolcommon=nil)
          @Id = id
          @Content = content
          @MatchedKeywords = matchedkeywords
          @Url = url
          @Status = status
          @DisplayToolCommon = displaytoolcommon
        end

        def deserialize(params)
          @Id = params['Id']
          @Content = params['Content']
          @MatchedKeywords = params['MatchedKeywords']
          @Url = params['Url']
          @Status = params['Status']
          unless params['DisplayToolCommon'].nil?
            @DisplayToolCommon = DisplayToolCommon.new
            @DisplayToolCommon.deserialize(params['DisplayToolCommon'])
          end
        end
      end

      # Http详情
      class DisplayHttp < TencentCloud::Common::AbstractModel
        # @param Id: 主键ID
        # @type Id: Integer
        # @param DisplayToolCommon: 公共字段
        # @type DisplayToolCommon: :class:`Tencentcloud::Ctem.v20231128.models.DisplayToolCommon`
        # @param Url: Url
        # @type Url: String
        # @param Title: 标题
        # @type Title: String
        # @param ContentLength: 报文长度
        # @type ContentLength: Integer
        # @param Content: 报文内容
        # @type Content: String
        # @param ScreenshotThumbUrl: 截图缩略图URL
        # @type ScreenshotThumbUrl: String
        # @param ScreenshotUrl: 截图URL
        # @type ScreenshotUrl: String
        # @param Code: 状态码
        # @type Code: Integer
        # @param Api: Api地址
        # @type Api: String
        # @param Ip: 解析的IP
        # @type Ip: String
        # @param Ssl: 证书信息
        # @type Ssl: String
        # @param SslExpiredTime: ssl证书过期时间
        # @type SslExpiredTime: String
        # @param IsChange: 资产是否发生变动
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsChange: Boolean

        attr_accessor :Id, :DisplayToolCommon, :Url, :Title, :ContentLength, :Content, :ScreenshotThumbUrl, :ScreenshotUrl, :Code, :Api, :Ip, :Ssl, :SslExpiredTime, :IsChange

        def initialize(id=nil, displaytoolcommon=nil, url=nil, title=nil, contentlength=nil, content=nil, screenshotthumburl=nil, screenshoturl=nil, code=nil, api=nil, ip=nil, ssl=nil, sslexpiredtime=nil, ischange=nil)
          @Id = id
          @DisplayToolCommon = displaytoolcommon
          @Url = url
          @Title = title
          @ContentLength = contentlength
          @Content = content
          @ScreenshotThumbUrl = screenshotthumburl
          @ScreenshotUrl = screenshoturl
          @Code = code
          @Api = api
          @Ip = ip
          @Ssl = ssl
          @SslExpiredTime = sslexpiredtime
          @IsChange = ischange
        end

        def deserialize(params)
          @Id = params['Id']
          unless params['DisplayToolCommon'].nil?
            @DisplayToolCommon = DisplayToolCommon.new
            @DisplayToolCommon.deserialize(params['DisplayToolCommon'])
          end
          @Url = params['Url']
          @Title = params['Title']
          @ContentLength = params['ContentLength']
          @Content = params['Content']
          @ScreenshotThumbUrl = params['ScreenshotThumbUrl']
          @ScreenshotUrl = params['ScreenshotUrl']
          @Code = params['Code']
          @Api = params['Api']
          @Ip = params['Ip']
          @Ssl = params['Ssl']
          @SslExpiredTime = params['SslExpiredTime']
          @IsChange = params['IsChange']
        end
      end

      # 任务详情
      class DisplayJobRecord < TencentCloud::Common::AbstractModel
        # @param Id: 任务Id
        # @type Id: Integer
        # @param CustomerId: 企业ID
        # @type CustomerId: Integer
        # @param CustomerName: 企业名称
        # @type CustomerName: String
        # @param Crontab: 周期任务详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Crontab: String
        # @param Status: 状态：2-错误/已停止，3-进行中，1-已完成, 4-停止
        # @type Status: Integer
        # @param NewCount: 新增数据
        # @type NewCount: Integer
        # @param CreateAt: 创建时间
        # @type CreateAt: String
        # @param UpdateAt: 更新时间
        # @type UpdateAt: String
        # @param Progress: 子任务进度
        # @type Progress: :class:`Tencentcloud::Ctem.v20231128.models.JobRecordProgress`
        # @param Qps: 并发设置
        # @type Qps: Integer
        # @param TaskType: 任务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskType: String
        # @param Uin: 客户Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param AppId: 客户appid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer

        attr_accessor :Id, :CustomerId, :CustomerName, :Crontab, :Status, :NewCount, :CreateAt, :UpdateAt, :Progress, :Qps, :TaskType, :Uin, :AppId

        def initialize(id=nil, customerid=nil, customername=nil, crontab=nil, status=nil, newcount=nil, createat=nil, updateat=nil, progress=nil, qps=nil, tasktype=nil, uin=nil, appid=nil)
          @Id = id
          @CustomerId = customerid
          @CustomerName = customername
          @Crontab = crontab
          @Status = status
          @NewCount = newcount
          @CreateAt = createat
          @UpdateAt = updateat
          @Progress = progress
          @Qps = qps
          @TaskType = tasktype
          @Uin = uin
          @AppId = appid
        end

        def deserialize(params)
          @Id = params['Id']
          @CustomerId = params['CustomerId']
          @CustomerName = params['CustomerName']
          @Crontab = params['Crontab']
          @Status = params['Status']
          @NewCount = params['NewCount']
          @CreateAt = params['CreateAt']
          @UpdateAt = params['UpdateAt']
          unless params['Progress'].nil?
            @Progress = JobRecordProgress.new
            @Progress.deserialize(params['Progress'])
          end
          @Qps = params['Qps']
          @TaskType = params['TaskType']
          @Uin = params['Uin']
          @AppId = params['AppId']
        end
      end

      # 链路详情
      class DisplayJobRecordDetail < TencentCloud::Common::AbstractModel
        # @param TimeAt: 发现时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeAt: String
        # @param Module: 模块
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Module: String
        # @param ModuleName: 模块名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModuleName: String
        # @param JobRecordId: 任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobRecordId: Integer
        # @param Data: 目标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array

        attr_accessor :TimeAt, :Module, :ModuleName, :JobRecordId, :Data

        def initialize(timeat=nil, _module=nil, modulename=nil, jobrecordid=nil, data=nil)
          @TimeAt = timeat
          @Module = _module
          @ModuleName = modulename
          @JobRecordId = jobrecordid
          @Data = data
        end

        def deserialize(params)
          @TimeAt = params['TimeAt']
          @Module = params['Module']
          @ModuleName = params['ModuleName']
          @JobRecordId = params['JobRecordId']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              idndvalue_tmp = IdndValue.new
              idndvalue_tmp.deserialize(i)
              @Data << idndvalue_tmp
            end
          end
        end
      end

      # 代码泄露详情
      class DisplayLeakageCode < TencentCloud::Common::AbstractModel
        # @param Id: 主键ID
        # @type Id: Integer
        # @param Url: 链接
        # @type Url: String

        attr_accessor :Id, :Url

        def initialize(id=nil, url=nil)
          @Id = id
          @Url = url
        end

        def deserialize(params)
          @Id = params['Id']
          @Url = params['Url']
        end
      end

      # 数据泄露详情
      class DisplayLeakageData < TencentCloud::Common::AbstractModel
        # @param Id: 主键ID
        # @type Id: Integer
        # @param Url: 链接
        # @type Url: String

        attr_accessor :Id, :Url

        def initialize(id=nil, url=nil)
          @Id = id
          @Url = url
        end

        def deserialize(params)
          @Id = params['Id']
          @Url = params['Url']
        end
      end

      # 邮箱泄露详情
      class DisplayLeakageEmail < TencentCloud::Common::AbstractModel
        # @param Id: 主键ID
        # @type Id: Integer
        # @param Email: 邮箱
        # @type Email: String

        attr_accessor :Id, :Email

        def initialize(id=nil, email=nil)
          @Id = id
          @Email = email
        end

        def deserialize(params)
          @Id = params['Id']
          @Email = params['Email']
        end
      end

      # 后台详情
      class DisplayManage < TencentCloud::Common::AbstractModel
        # @param Id: 主键ID
        # @type Id: Integer
        # @param DisplayToolCommon: 公共字段
        # @type DisplayToolCommon: :class:`Tencentcloud::Ctem.v20231128.models.DisplayToolCommon`
        # @param Url: Url
        # @type Url: String
        # @param Title: 标题
        # @type Title: String
        # @param Icon: Icon
        # @type Icon: String
        # @param Screenshot: 缩略图
        # @type Screenshot: String
        # @param Code: 状态码
        # @type Code: Integer
        # @param Host: 后台Host
        # @type Host: String
        # @param Status: 状态：not_converged:未收敛, converged:已收敛, ignore:已忽略
        # @type Status: String

        attr_accessor :Id, :DisplayToolCommon, :Url, :Title, :Icon, :Screenshot, :Code, :Host, :Status

        def initialize(id=nil, displaytoolcommon=nil, url=nil, title=nil, icon=nil, screenshot=nil, code=nil, host=nil, status=nil)
          @Id = id
          @DisplayToolCommon = displaytoolcommon
          @Url = url
          @Title = title
          @Icon = icon
          @Screenshot = screenshot
          @Code = code
          @Host = host
          @Status = status
        end

        def deserialize(params)
          @Id = params['Id']
          unless params['DisplayToolCommon'].nil?
            @DisplayToolCommon = DisplayToolCommon.new
            @DisplayToolCommon.deserialize(params['DisplayToolCommon'])
          end
          @Url = params['Url']
          @Title = params['Title']
          @Icon = params['Icon']
          @Screenshot = params['Screenshot']
          @Code = params['Code']
          @Host = params['Host']
          @Status = params['Status']
        end
      end

      # 网盘泄露详情
      class DisplayNetDisk < TencentCloud::Common::AbstractModel
        # @param Id: 主键ID
        # @type Id: Integer
        # @param Content: 内容
        # @type Content: String
        # @param MatchedKeywords: 命中关键字
        # @type MatchedKeywords: String
        # @param Url: 泄露地址
        # @type Url: String
        # @param Status: 状态
        # @type Status: String
        # @param DisplayToolCommon: 公共字段
        # @type DisplayToolCommon: :class:`Tencentcloud::Ctem.v20231128.models.DisplayToolCommon`
        # @param Platform: 泄露平台
        # @type Platform: String

        attr_accessor :Id, :Content, :MatchedKeywords, :Url, :Status, :DisplayToolCommon, :Platform

        def initialize(id=nil, content=nil, matchedkeywords=nil, url=nil, status=nil, displaytoolcommon=nil, platform=nil)
          @Id = id
          @Content = content
          @MatchedKeywords = matchedkeywords
          @Url = url
          @Status = status
          @DisplayToolCommon = displaytoolcommon
          @Platform = platform
        end

        def deserialize(params)
          @Id = params['Id']
          @Content = params['Content']
          @MatchedKeywords = params['MatchedKeywords']
          @Url = params['Url']
          @Status = params['Status']
          unless params['DisplayToolCommon'].nil?
            @DisplayToolCommon = DisplayToolCommon.new
            @DisplayToolCommon.deserialize(params['DisplayToolCommon'])
          end
          @Platform = params['Platform']
        end
      end

      # 端口详情
      class DisplayPort < TencentCloud::Common::AbstractModel
        # @param Id: 主键ID
        # @type Id: Integer
        # @param DisplayToolCommon: 公共字段
        # @type DisplayToolCommon: :class:`Tencentcloud::Ctem.v20231128.models.DisplayToolCommon`
        # @param Asset: IP或域名地址
        # @type Asset: String
        # @param Ip: 解析的IP
        # @type Ip: String
        # @param Port: 端口
        # @type Port: Integer
        # @param IsHighRisk: 是否高危
        # @type IsHighRisk: Boolean
        # @param App: 组件名称
        # @type App: String
        # @param Service: 服务名称
        # @type Service: String
        # @param Banner: 端口响应详情
        # @type Banner: String
        # @param LastCheckTime: 上次检测时间
        # @type LastCheckTime: String
        # @param Status: 状态，close:连接超时，端口可能已关闭，open:端口开放, checking:复测中, ignore:已忽略
        # @type Status: String

        attr_accessor :Id, :DisplayToolCommon, :Asset, :Ip, :Port, :IsHighRisk, :App, :Service, :Banner, :LastCheckTime, :Status

        def initialize(id=nil, displaytoolcommon=nil, asset=nil, ip=nil, port=nil, ishighrisk=nil, app=nil, service=nil, banner=nil, lastchecktime=nil, status=nil)
          @Id = id
          @DisplayToolCommon = displaytoolcommon
          @Asset = asset
          @Ip = ip
          @Port = port
          @IsHighRisk = ishighrisk
          @App = app
          @Service = service
          @Banner = banner
          @LastCheckTime = lastchecktime
          @Status = status
        end

        def deserialize(params)
          @Id = params['Id']
          unless params['DisplayToolCommon'].nil?
            @DisplayToolCommon = DisplayToolCommon.new
            @DisplayToolCommon.deserialize(params['DisplayToolCommon'])
          end
          @Asset = params['Asset']
          @Ip = params['Ip']
          @Port = params['Port']
          @IsHighRisk = params['IsHighRisk']
          @App = params['App']
          @Service = params['Service']
          @Banner = params['Banner']
          @LastCheckTime = params['LastCheckTime']
          @Status = params['Status']
        end
      end

      # 敏感信息泄露数据
      class DisplaySensitiveInfo < TencentCloud::Common::AbstractModel
        # @param Id: 主键Id
        # @type Id: Integer
        # @param Type: 类型
        # @type Type: String
        # @param Source: 来源
        # @type Source: String
        # @param Value: 值
        # @type Value: String
        # @param DisplayToolCommon: 公共字段
        # @type DisplayToolCommon: :class:`Tencentcloud::Ctem.v20231128.models.DisplayToolCommon`

        attr_accessor :Id, :Type, :Source, :Value, :DisplayToolCommon

        def initialize(id=nil, type=nil, source=nil, value=nil, displaytoolcommon=nil)
          @Id = id
          @Type = type
          @Source = source
          @Value = value
          @DisplayToolCommon = displaytoolcommon
        end

        def deserialize(params)
          @Id = params['Id']
          @Type = params['Type']
          @Source = params['Source']
          @Value = params['Value']
          unless params['DisplayToolCommon'].nil?
            @DisplayToolCommon = DisplayToolCommon.new
            @DisplayToolCommon.deserialize(params['DisplayToolCommon'])
          end
        end
      end

      # 子域名详情
      class DisplaySubDomain < TencentCloud::Common::AbstractModel
        # @param Id: 主键ID
        # @type Id: Integer
        # @param SubDomain: 子域名
        # @type SubDomain: String
        # @param Ip: Ip
        # @type Ip: String
        # @param Country: 国家
        # @type Country: String
        # @param Province: 省份
        # @type Province: String
        # @param City: 城市
        # @type City: String
        # @param Isp: 互联网服务提供商
        # @type Isp: String
        # @param DisplayToolCommon: 公共字段
        # @type DisplayToolCommon: :class:`Tencentcloud::Ctem.v20231128.models.DisplayToolCommon`

        attr_accessor :Id, :SubDomain, :Ip, :Country, :Province, :City, :Isp, :DisplayToolCommon

        def initialize(id=nil, subdomain=nil, ip=nil, country=nil, province=nil, city=nil, isp=nil, displaytoolcommon=nil)
          @Id = id
          @SubDomain = subdomain
          @Ip = ip
          @Country = country
          @Province = province
          @City = city
          @Isp = isp
          @DisplayToolCommon = displaytoolcommon
        end

        def deserialize(params)
          @Id = params['Id']
          @SubDomain = params['SubDomain']
          @Ip = params['Ip']
          @Country = params['Country']
          @Province = params['Province']
          @City = params['City']
          @Isp = params['Isp']
          unless params['DisplayToolCommon'].nil?
            @DisplayToolCommon = DisplayToolCommon.new
            @DisplayToolCommon.deserialize(params['DisplayToolCommon'])
          end
        end
      end

      # 影子资产详情
      class DisplaySuspiciousAsset < TencentCloud::Common::AbstractModel
        # @param Id: 主键ID
        # @type Id: Integer
        # @param DisplayToolCommon: 公共字段
        # @type DisplayToolCommon: :class:`Tencentcloud::Ctem.v20231128.models.DisplayToolCommon`
        # @param Url: Url
        # @type Url: String
        # @param Title: 标题
        # @type Title: String
        # @param ContentLength: 报文长度
        # @type ContentLength: Integer
        # @param Content: 报文内容
        # @type Content: String
        # @param ScreenshotThumbUrl: 截图缩略图URL
        # @type ScreenshotThumbUrl: String
        # @param ScreenshotUrl: 截图URL
        # @type ScreenshotUrl: String
        # @param Code: 状态码
        # @type Code: Integer
        # @param Api: Api
        # @type Api: String
        # @param Ip: 解析的IP
        # @type Ip: String
        # @param Ssl: 证书信息
        # @type Ssl: String
        # @param SslExpiredTime: ssl证书过期时间
        # @type SslExpiredTime: String
        # @param SourceType: 来源类型
        # @type SourceType: String
        # @param SourceValue: 来源值
        # @type SourceValue: String
        # @param Trusted: 是否信任
        # @type Trusted: Boolean
        # @param Owner: 所属者
        # @type Owner: String
        # @param RootDomain: 根域名
        # @type RootDomain: String

        attr_accessor :Id, :DisplayToolCommon, :Url, :Title, :ContentLength, :Content, :ScreenshotThumbUrl, :ScreenshotUrl, :Code, :Api, :Ip, :Ssl, :SslExpiredTime, :SourceType, :SourceValue, :Trusted, :Owner, :RootDomain

        def initialize(id=nil, displaytoolcommon=nil, url=nil, title=nil, contentlength=nil, content=nil, screenshotthumburl=nil, screenshoturl=nil, code=nil, api=nil, ip=nil, ssl=nil, sslexpiredtime=nil, sourcetype=nil, sourcevalue=nil, trusted=nil, owner=nil, rootdomain=nil)
          @Id = id
          @DisplayToolCommon = displaytoolcommon
          @Url = url
          @Title = title
          @ContentLength = contentlength
          @Content = content
          @ScreenshotThumbUrl = screenshotthumburl
          @ScreenshotUrl = screenshoturl
          @Code = code
          @Api = api
          @Ip = ip
          @Ssl = ssl
          @SslExpiredTime = sslexpiredtime
          @SourceType = sourcetype
          @SourceValue = sourcevalue
          @Trusted = trusted
          @Owner = owner
          @RootDomain = rootdomain
        end

        def deserialize(params)
          @Id = params['Id']
          unless params['DisplayToolCommon'].nil?
            @DisplayToolCommon = DisplayToolCommon.new
            @DisplayToolCommon.deserialize(params['DisplayToolCommon'])
          end
          @Url = params['Url']
          @Title = params['Title']
          @ContentLength = params['ContentLength']
          @Content = params['Content']
          @ScreenshotThumbUrl = params['ScreenshotThumbUrl']
          @ScreenshotUrl = params['ScreenshotUrl']
          @Code = params['Code']
          @Api = params['Api']
          @Ip = params['Ip']
          @Ssl = params['Ssl']
          @SslExpiredTime = params['SslExpiredTime']
          @SourceType = params['SourceType']
          @SourceValue = params['SourceValue']
          @Trusted = params['Trusted']
          @Owner = params['Owner']
          @RootDomain = params['RootDomain']
        end
      end

      # 数据管理公共字段
      class DisplayToolCommon < TencentCloud::Common::AbstractModel
        # @param EnterpriseUid: 子公司ID
        # @type EnterpriseUid: String
        # @param EnterpriseName: 子公司名称
        # @type EnterpriseName: String
        # @param JobId: 主任务ID
        # @type JobId: Integer
        # @param JobStageId: 单任务ID
        # @type JobStageId: Integer
        # @param Ignored: 是否忽略
        # @type Ignored: Boolean
        # @param JobRecordId: 子任务ID
        # @type JobRecordId: Integer
        # @param CustomerId: 企业ID
        # @type CustomerId: Integer
        # @param CustomerName: 企业名称
        # @type CustomerName: String
        # @param Detail: 详情
        # @type Detail: String
        # @param Md5: Md5值
        # @type Md5: String
        # @param CreateAt: 创建时间
        # @type CreateAt: String
        # @param UpdateAt: 更新时间
        # @type UpdateAt: String
        # @param Labels: 标签列表，json格式：{\"tag1\":[\"责任人xxx\"],\"tag2\":[\"测试站\"]}
        # @type Labels: String

        attr_accessor :EnterpriseUid, :EnterpriseName, :JobId, :JobStageId, :Ignored, :JobRecordId, :CustomerId, :CustomerName, :Detail, :Md5, :CreateAt, :UpdateAt, :Labels

        def initialize(enterpriseuid=nil, enterprisename=nil, jobid=nil, jobstageid=nil, ignored=nil, jobrecordid=nil, customerid=nil, customername=nil, detail=nil, md5=nil, createat=nil, updateat=nil, labels=nil)
          @EnterpriseUid = enterpriseuid
          @EnterpriseName = enterprisename
          @JobId = jobid
          @JobStageId = jobstageid
          @Ignored = ignored
          @JobRecordId = jobrecordid
          @CustomerId = customerid
          @CustomerName = customername
          @Detail = detail
          @Md5 = md5
          @CreateAt = createat
          @UpdateAt = updateat
          @Labels = labels
        end

        def deserialize(params)
          @EnterpriseUid = params['EnterpriseUid']
          @EnterpriseName = params['EnterpriseName']
          @JobId = params['JobId']
          @JobStageId = params['JobStageId']
          @Ignored = params['Ignored']
          @JobRecordId = params['JobRecordId']
          @CustomerId = params['CustomerId']
          @CustomerName = params['CustomerName']
          @Detail = params['Detail']
          @Md5 = params['Md5']
          @CreateAt = params['CreateAt']
          @UpdateAt = params['UpdateAt']
          @Labels = params['Labels']
        end
      end

      # 漏洞详情
      class DisplayVul < TencentCloud::Common::AbstractModel
        # @param Id: 主键ID
        # @type Id: Integer
        # @param DisplayToolCommon: 公共字段
        # @type DisplayToolCommon: :class:`Tencentcloud::Ctem.v20231128.models.DisplayToolCommon`
        # @param Ip: 解析的IP
        # @type Ip: String
        # @param Port: 端口
        # @type Port: Integer
        # @param Url: Url地址
        # @type Url: String
        # @param Level: 风险等级：1：提示, 2:低危, 3:中危, 4:高危, 5: 严重
        # @type Level: Integer
        # @param Name: 漏洞名称
        # @type Name: String
        # @param RepairStatus: 是否修复，0:未修复，1:已修复
        # @type RepairStatus: Integer
        # @param Suggestion: 建议
        # @type Suggestion: String
        # @param DiscoverTime: 发现时间
        # @type DiscoverTime: String
        # @param AiJudge: AI研判
        # @type AiJudge: String
        # @param Status: 状态：unrepaired:未修复，repaired:已修复, offline:资产已下线, ignore:已忽略
        # @type Status: String
        # @param LastCheckTime: 上次复测时间
        # @type LastCheckTime: String

        attr_accessor :Id, :DisplayToolCommon, :Ip, :Port, :Url, :Level, :Name, :RepairStatus, :Suggestion, :DiscoverTime, :AiJudge, :Status, :LastCheckTime

        def initialize(id=nil, displaytoolcommon=nil, ip=nil, port=nil, url=nil, level=nil, name=nil, repairstatus=nil, suggestion=nil, discovertime=nil, aijudge=nil, status=nil, lastchecktime=nil)
          @Id = id
          @DisplayToolCommon = displaytoolcommon
          @Ip = ip
          @Port = port
          @Url = url
          @Level = level
          @Name = name
          @RepairStatus = repairstatus
          @Suggestion = suggestion
          @DiscoverTime = discovertime
          @AiJudge = aijudge
          @Status = status
          @LastCheckTime = lastchecktime
        end

        def deserialize(params)
          @Id = params['Id']
          unless params['DisplayToolCommon'].nil?
            @DisplayToolCommon = DisplayToolCommon.new
            @DisplayToolCommon.deserialize(params['DisplayToolCommon'])
          end
          @Ip = params['Ip']
          @Port = params['Port']
          @Url = params['Url']
          @Level = params['Level']
          @Name = params['Name']
          @RepairStatus = params['RepairStatus']
          @Suggestion = params['Suggestion']
          @DiscoverTime = params['DiscoverTime']
          @AiJudge = params['AiJudge']
          @Status = params['Status']
          @LastCheckTime = params['LastCheckTime']
        end
      end

      # 弱口令详情
      class DisplayWeakPassword < TencentCloud::Common::AbstractModel
        # @param Id: 主键ID
        # @type Id: Integer
        # @param DisplayToolCommon: 公共字段
        # @type DisplayToolCommon: :class:`Tencentcloud::Ctem.v20231128.models.DisplayToolCommon`
        # @param Ip: 解析的IP
        # @type Ip: String
        # @param Port: 端口
        # @type Port: Integer
        # @param Url: Url地址
        # @type Url: String
        # @param Type: 弱口令类型
        # @type Type: String
        # @param Account: 弱口令账号
        # @type Account: String
        # @param Password: 弱口令密码
        # @type Password: String
        # @param IsHoneypot: 是否蜜罐
        # @type IsHoneypot: Boolean
        # @param ScreenshotUrl: 截图
        # @type ScreenshotUrl: String
        # @param Status: 状态：unrepaired:未修复，repaired:已修复, offline:资产已下线, ignore:已忽略, checking:复测中
        # @type Status: String
        # @param LastCheckTime: 上次复测时间
        # @type LastCheckTime: String

        attr_accessor :Id, :DisplayToolCommon, :Ip, :Port, :Url, :Type, :Account, :Password, :IsHoneypot, :ScreenshotUrl, :Status, :LastCheckTime

        def initialize(id=nil, displaytoolcommon=nil, ip=nil, port=nil, url=nil, type=nil, account=nil, password=nil, ishoneypot=nil, screenshoturl=nil, status=nil, lastchecktime=nil)
          @Id = id
          @DisplayToolCommon = displaytoolcommon
          @Ip = ip
          @Port = port
          @Url = url
          @Type = type
          @Account = account
          @Password = password
          @IsHoneypot = ishoneypot
          @ScreenshotUrl = screenshoturl
          @Status = status
          @LastCheckTime = lastchecktime
        end

        def deserialize(params)
          @Id = params['Id']
          unless params['DisplayToolCommon'].nil?
            @DisplayToolCommon = DisplayToolCommon.new
            @DisplayToolCommon.deserialize(params['DisplayToolCommon'])
          end
          @Ip = params['Ip']
          @Port = params['Port']
          @Url = params['Url']
          @Type = params['Type']
          @Account = params['Account']
          @Password = params['Password']
          @IsHoneypot = params['IsHoneypot']
          @ScreenshotUrl = params['ScreenshotUrl']
          @Status = params['Status']
          @LastCheckTime = params['LastCheckTime']
        end
      end

      # 微信小程序详情
      class DisplayWechatApplet < TencentCloud::Common::AbstractModel
        # @param Id: 主键ID
        # @type Id: Integer
        # @param DisplayToolCommon: 公共字段
        # @type DisplayToolCommon: :class:`Tencentcloud::Ctem.v20231128.models.DisplayToolCommon`
        # @param Name: 名称
        # @type Name: String
        # @param Logo: 图片地址
        # @type Logo: String
        # @param AccountId: 账号
        # @type AccountId: String
        # @param QrCode: 二维码
        # @type QrCode: String
        # @param Description: 描述
        # @type Description: String

        attr_accessor :Id, :DisplayToolCommon, :Name, :Logo, :AccountId, :QrCode, :Description

        def initialize(id=nil, displaytoolcommon=nil, name=nil, logo=nil, accountid=nil, qrcode=nil, description=nil)
          @Id = id
          @DisplayToolCommon = displaytoolcommon
          @Name = name
          @Logo = logo
          @AccountId = accountid
          @QrCode = qrcode
          @Description = description
        end

        def deserialize(params)
          @Id = params['Id']
          unless params['DisplayToolCommon'].nil?
            @DisplayToolCommon = DisplayToolCommon.new
            @DisplayToolCommon.deserialize(params['DisplayToolCommon'])
          end
          @Name = params['Name']
          @Logo = params['Logo']
          @AccountId = params['AccountId']
          @QrCode = params['QrCode']
          @Description = params['Description']
        end
      end

      # 微信公众号详情
      class DisplayWechatOfficialAccount < TencentCloud::Common::AbstractModel
        # @param Id: 主键ID
        # @type Id: Integer
        # @param DisplayToolCommon: 公共字段
        # @type DisplayToolCommon: :class:`Tencentcloud::Ctem.v20231128.models.DisplayToolCommon`
        # @param Name: 名称
        # @type Name: String
        # @param Logo: 图片地址
        # @type Logo: String
        # @param AccountId: 账号
        # @type AccountId: String
        # @param QrCode: 二维码
        # @type QrCode: String
        # @param Description: 描述
        # @type Description: String

        attr_accessor :Id, :DisplayToolCommon, :Name, :Logo, :AccountId, :QrCode, :Description

        def initialize(id=nil, displaytoolcommon=nil, name=nil, logo=nil, accountid=nil, qrcode=nil, description=nil)
          @Id = id
          @DisplayToolCommon = displaytoolcommon
          @Name = name
          @Logo = logo
          @AccountId = accountid
          @QrCode = qrcode
          @Description = description
        end

        def deserialize(params)
          @Id = params['Id']
          unless params['DisplayToolCommon'].nil?
            @DisplayToolCommon = DisplayToolCommon.new
            @DisplayToolCommon.deserialize(params['DisplayToolCommon'])
          end
          @Name = params['Name']
          @Logo = params['Logo']
          @AccountId = params['AccountId']
          @QrCode = params['QrCode']
          @Description = params['Description']
        end
      end

      # 支持按照各字段过滤
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 要搜索的字段
        # @type Name: String
        # @param Values: 目标值列表
        # @type Values: Array

        attr_accessor :Name, :Values

        def initialize(name=nil, values=nil)
          @Name = name
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
        end
      end

      # 链路详情扫描目标和ID
      class IdndValue < TencentCloud::Common::AbstractModel
        # @param Id: 详情ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Value: 目标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Id, :Value

        def initialize(id=nil, value=nil)
          @Id = id
          @Value = value
        end

        def deserialize(params)
          @Id = params['Id']
          @Value = params['Value']
        end
      end

      # 子任务进度
      class JobRecordProgress < TencentCloud::Common::AbstractModel
        # @param Doing: 正在执行的任务数
        # @type Doing: Integer
        # @param Done: 已完成的任务数
        # @type Done: Integer
        # @param Error: 发生错误的任务数
        # @type Error: Integer
        # @param Timeout: 超时
        # @type Timeout: Integer
        # @param Stop: 停止
        # @type Stop: Integer
        # @param Todo: 暂停
        # @type Todo: Integer

        attr_accessor :Doing, :Done, :Error, :Timeout, :Stop, :Todo

        def initialize(doing=nil, done=nil, error=nil, timeout=nil, stop=nil, todo=nil)
          @Doing = doing
          @Done = done
          @Error = error
          @Timeout = timeout
          @Stop = stop
          @Todo = todo
        end

        def deserialize(params)
          @Doing = params['Doing']
          @Done = params['Done']
          @Error = params['Error']
          @Timeout = params['Timeout']
          @Stop = params['Stop']
          @Todo = params['Todo']
        end
      end

      # ModifyCustomer请求参数结构体
      class ModifyCustomerRequest < TencentCloud::Common::AbstractModel
        # @param Name: 企业名称
        # @type Name: String
        # @param Percent: 百分比取值范围为30-100
        # @type Percent: Integer
        # @param ScanType: 资产收集、漏洞信息、弱口令、目录爆破、暗网泄露、Github泄露、文库网盘泄露、敏感信息泄露，其中资产收集必包含，多个用英文逗号隔离，例如：资产收集,漏洞信息
        # @type ScanType: String
        # @param Id: 企业ID
        # @type Id: Integer
        # @param ScanCron: 周期测绘时间
        # @type ScanCron: String
        # @param IsScanNow: 是否立即启动
        # @type IsScanNow: Boolean
        # @param EnableCron: 是否启用周期测绘
        # @type EnableCron: Boolean
        # @param EnableScanSubEnterprise: 是否扫描子公司
        # @type EnableScanSubEnterprise: Boolean
        # @param EnableAuth: 是否授权
        # @type EnableAuth: Boolean
        # @param AuthStartAt: 授权开始时间
        # @type AuthStartAt: String
        # @param AuthEndAt: 授权结束时间
        # @type AuthEndAt: String
        # @param AuthFile: 授权文件id
        # @type AuthFile: String
        # @param ScanTime: 测绘时间配置项，采用json字符串格式
        # @type ScanTime: String
        # @param Icon: 企业图标
        # @type Icon: String
        # @param Qps: 并发
        # @type Qps: Integer
        # @param SubCompanyLevel: 子公司拓展层次
        # @type SubCompanyLevel: Integer
        # @param IsIncludeFullScan: 是否包含完整的扫描
        # @type IsIncludeFullScan: Boolean

        attr_accessor :Name, :Percent, :ScanType, :Id, :ScanCron, :IsScanNow, :EnableCron, :EnableScanSubEnterprise, :EnableAuth, :AuthStartAt, :AuthEndAt, :AuthFile, :ScanTime, :Icon, :Qps, :SubCompanyLevel, :IsIncludeFullScan

        def initialize(name=nil, percent=nil, scantype=nil, id=nil, scancron=nil, isscannow=nil, enablecron=nil, enablescansubenterprise=nil, enableauth=nil, authstartat=nil, authendat=nil, authfile=nil, scantime=nil, icon=nil, qps=nil, subcompanylevel=nil, isincludefullscan=nil)
          @Name = name
          @Percent = percent
          @ScanType = scantype
          @Id = id
          @ScanCron = scancron
          @IsScanNow = isscannow
          @EnableCron = enablecron
          @EnableScanSubEnterprise = enablescansubenterprise
          @EnableAuth = enableauth
          @AuthStartAt = authstartat
          @AuthEndAt = authendat
          @AuthFile = authfile
          @ScanTime = scantime
          @Icon = icon
          @Qps = qps
          @SubCompanyLevel = subcompanylevel
          @IsIncludeFullScan = isincludefullscan
        end

        def deserialize(params)
          @Name = params['Name']
          @Percent = params['Percent']
          @ScanType = params['ScanType']
          @Id = params['Id']
          @ScanCron = params['ScanCron']
          @IsScanNow = params['IsScanNow']
          @EnableCron = params['EnableCron']
          @EnableScanSubEnterprise = params['EnableScanSubEnterprise']
          @EnableAuth = params['EnableAuth']
          @AuthStartAt = params['AuthStartAt']
          @AuthEndAt = params['AuthEndAt']
          @AuthFile = params['AuthFile']
          @ScanTime = params['ScanTime']
          @Icon = params['Icon']
          @Qps = params['Qps']
          @SubCompanyLevel = params['SubCompanyLevel']
          @IsIncludeFullScan = params['IsIncludeFullScan']
        end
      end

      # ModifyCustomer返回参数结构体
      class ModifyCustomerResponse < TencentCloud::Common::AbstractModel
        # @param Id: 企业ID
        # @type Id: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :RequestId

        def initialize(id=nil, requestid=nil)
          @Id = id
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @RequestId = params['RequestId']
        end
      end

      # ModifyLabel请求参数结构体
      class ModifyLabelRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块，包括：enterprise：企业架构，domain：主域名，sub_domain：子域名，asset：IP资产，port：端口服务，http：HTTP资产，vul：漏洞信息，app：APP，wechat_applet：微信小程序，wechat_official_account：微信公众号，github：Github信息泄露，manage：管理后台暴露，config：目录爆破，dark_web：暗网泄露，net_disk：文库网盘泄露，supply_chain：供应链，weak_password：弱口令，sensitive_info：敏感信息泄露
        # @type Module: String
        # @param CustomerIdList: 企业ID列表，可多选
        # @type CustomerIdList: Array
        # @param Id: 资产或风险主键ID
        # @type Id: Integer
        # @param CustomerId: 企业ID，在企业管理页面查看
        # @type CustomerId: Integer
        # @param IsAggregation: 是否聚合数据
        # @type IsAggregation: Boolean
        # @param Labels: 标签详情
        # @type Labels: String
        # @param Ids: 资产或风险主键ID列表
        # @type Ids: Array

        attr_accessor :Module, :CustomerIdList, :Id, :CustomerId, :IsAggregation, :Labels, :Ids

        def initialize(_module=nil, customeridlist=nil, id=nil, customerid=nil, isaggregation=nil, labels=nil, ids=nil)
          @Module = _module
          @CustomerIdList = customeridlist
          @Id = id
          @CustomerId = customerid
          @IsAggregation = isaggregation
          @Labels = labels
          @Ids = ids
        end

        def deserialize(params)
          @Module = params['Module']
          @CustomerIdList = params['CustomerIdList']
          @Id = params['Id']
          @CustomerId = params['CustomerId']
          @IsAggregation = params['IsAggregation']
          @Labels = params['Labels']
          @Ids = params['Ids']
        end
      end

      # ModifyLabel返回参数结构体
      class ModifyLabelResponse < TencentCloud::Common::AbstractModel
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

      # StopJobRecord请求参数结构体
      class StopJobRecordRequest < TencentCloud::Common::AbstractModel
        # @param CustomerId: 企业ID
        # @type CustomerId: Integer
        # @param JobRecordId: 任务ID
        # @type JobRecordId: Integer

        attr_accessor :CustomerId, :JobRecordId

        def initialize(customerid=nil, jobrecordid=nil)
          @CustomerId = customerid
          @JobRecordId = jobrecordid
        end

        def deserialize(params)
          @CustomerId = params['CustomerId']
          @JobRecordId = params['JobRecordId']
        end
      end

      # StopJobRecord返回参数结构体
      class StopJobRecordResponse < TencentCloud::Common::AbstractModel
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

    end
  end
end

