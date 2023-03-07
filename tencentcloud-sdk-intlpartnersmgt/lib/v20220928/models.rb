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
  module Intlpartnersmgt
    module V20220928
      # AllocateCustomerCredit请求参数结构体
      class AllocateCustomerCreditRequest < TencentCloud::Common::AbstractModel
        # @param AddedCredit: 分配客户信用的具体值
        # @type AddedCredit: Float
        # @param ClientUin: 客户uin
        # @type ClientUin: Integer

        attr_accessor :AddedCredit, :ClientUin
        
        def initialize(addedcredit=nil, clientuin=nil)
          @AddedCredit = addedcredit
          @ClientUin = clientuin
        end

        def deserialize(params)
          @AddedCredit = params['AddedCredit']
          @ClientUin = params['ClientUin']
        end
      end

      # AllocateCustomerCredit返回参数结构体
      class AllocateCustomerCreditResponse < TencentCloud::Common::AbstractModel
        # @param TotalCredit: 更新后的信用总额
        # @type TotalCredit: Float
        # @param RemainingCredit: 更新后的信用余额
        # @type RemainingCredit: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCredit, :RemainingCredit, :RequestId
        
        def initialize(totalcredit=nil, remainingcredit=nil, requestid=nil)
          @TotalCredit = totalcredit
          @RemainingCredit = remainingcredit
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCredit = params['TotalCredit']
          @RemainingCredit = params['RemainingCredit']
          @RequestId = params['RequestId']
        end
      end

      # 获取国家码接口的一个元素类型
      class CountryCodeItem < TencentCloud::Common::AbstractModel
        # @param EnName: 国家英文名
        # @type EnName: String
        # @param Name: 国家中文名
        # @type Name: String
        # @param IOS2: ISO2标准国家/地区代码
        # @type IOS2: String
        # @param IOS3: ISO3标准国家/地区代码
        # @type IOS3: String
        # @param Code: 电话代码
        # @type Code: String

        attr_accessor :EnName, :Name, :IOS2, :IOS3, :Code
        
        def initialize(enname=nil, name=nil, ios2=nil, ios3=nil, code=nil)
          @EnName = enname
          @Name = name
          @IOS2 = ios2
          @IOS3 = ios3
          @Code = code
        end

        def deserialize(params)
          @EnName = params['EnName']
          @Name = params['Name']
          @IOS2 = params['IOS2']
          @IOS3 = params['IOS3']
          @Code = params['Code']
        end
      end

      # CreateAccount请求参数结构体
      class CreateAccountRequest < TencentCloud::Common::AbstractModel
        # @param AccountType: 新建客户的账户类型标识。本接口取值为：personal或company
        # @type AccountType: String
        # @param Mail: 注册邮件地址。需要调用方保证邮件地址的有效性和正确性。
        # 需要满足邮件的格式。如：account@qq.com
        # @type Mail: String
        # @param Password: 账户密码。
        # 长度限制：[8,20]。
        # 需同时包含数字、字母以及特殊符号（!@#$%^&*()等非空格）
        # @type Password: String
        # @param ConfirmPassword: 二次确认密码。必须和Password值相同
        # @type ConfirmPassword: String
        # @param PhoneNum: 客户手机号码。需要调用方保证手机号码的有效性和正确性。
        # 长度限制：[1,32]。支持全球手机号。如18888888888
        # @type PhoneNum: String
        # @param CountryCode: 客户的国家/地区代码。取值参考获取国家/地区码接口GetCountryCodes。如852
        # @type CountryCode: String
        # @param Area: 客户的IOS2标准国家/地区代码。参考获取国家/地区码接口GetCountryCodes。需要与CountryCode值对应。如HK
        # @type Area: String
        # @param Extended: 拓展字段，默认为空
        # @type Extended: String

        attr_accessor :AccountType, :Mail, :Password, :ConfirmPassword, :PhoneNum, :CountryCode, :Area, :Extended
        
        def initialize(accounttype=nil, mail=nil, password=nil, confirmpassword=nil, phonenum=nil, countrycode=nil, area=nil, extended=nil)
          @AccountType = accounttype
          @Mail = mail
          @Password = password
          @ConfirmPassword = confirmpassword
          @PhoneNum = phonenum
          @CountryCode = countrycode
          @Area = area
          @Extended = extended
        end

        def deserialize(params)
          @AccountType = params['AccountType']
          @Mail = params['Mail']
          @Password = params['Password']
          @ConfirmPassword = params['ConfirmPassword']
          @PhoneNum = params['PhoneNum']
          @CountryCode = params['CountryCode']
          @Area = params['Area']
          @Extended = params['Extended']
        end
      end

      # CreateAccount返回参数结构体
      class CreateAccountResponse < TencentCloud::Common::AbstractModel
        # @param Uin: 账号的uin
        # @type Uin: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Uin, :RequestId
        
        def initialize(uin=nil, requestid=nil)
          @Uin = uin
          @RequestId = requestid
        end

        def deserialize(params)
          @Uin = params['Uin']
          @RequestId = params['RequestId']
        end
      end

      # GetCountryCodes请求参数结构体
      class GetCountryCodesRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # GetCountryCodes返回参数结构体
      class GetCountryCodesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 国家地区代码列表
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              countrycodeitem_tmp = CountryCodeItem.new
              countrycodeitem_tmp.deserialize(i)
              @Data << countrycodeitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询子客授信历史记录返回信息
      class QueryCreditAllocationHistoryData < TencentCloud::Common::AbstractModel
        # @param AllocatedTime: 分配时间
        # @type AllocatedTime: String
        # @param Operator: 操作员
        # @type Operator: String
        # @param Credit: 分配的信用值
        # @type Credit: Float
        # @param AllocatedCredit: 分配的总金额
        # @type AllocatedCredit: Float

        attr_accessor :AllocatedTime, :Operator, :Credit, :AllocatedCredit
        
        def initialize(allocatedtime=nil, operator=nil, credit=nil, allocatedcredit=nil)
          @AllocatedTime = allocatedtime
          @Operator = operator
          @Credit = credit
          @AllocatedCredit = allocatedcredit
        end

        def deserialize(params)
          @AllocatedTime = params['AllocatedTime']
          @Operator = params['Operator']
          @Credit = params['Credit']
          @AllocatedCredit = params['AllocatedCredit']
        end
      end

      # QueryCreditAllocationHistory请求参数结构体
      class QueryCreditAllocationHistoryRequest < TencentCloud::Common::AbstractModel
        # @param ClientUin: 客户uin
        # @type ClientUin: Integer
        # @param Page: 翻页参数，所在页数
        # @type Page: Integer
        # @param PageSize: 翻页参数，每页数据量
        # @type PageSize: Integer

        attr_accessor :ClientUin, :Page, :PageSize
        
        def initialize(clientuin=nil, page=nil, pagesize=nil)
          @ClientUin = clientuin
          @Page = page
          @PageSize = pagesize
        end

        def deserialize(params)
          @ClientUin = params['ClientUin']
          @Page = params['Page']
          @PageSize = params['PageSize']
        end
      end

      # QueryCreditAllocationHistory返回参数结构体
      class QueryCreditAllocationHistoryResponse < TencentCloud::Common::AbstractModel
        # @param Total: 历史信息总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param History: 历史信息详细列表数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type History: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :History, :RequestId
        
        def initialize(total=nil, history=nil, requestid=nil)
          @Total = total
          @History = history
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['History'].nil?
            @History = []
            params['History'].each do |i|
              querycreditallocationhistorydata_tmp = QueryCreditAllocationHistoryData.new
              querycreditallocationhistorydata_tmp.deserialize(i)
              @History << querycreditallocationhistorydata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryCreditByUinList请求参数结构体
      class QueryCreditByUinListRequest < TencentCloud::Common::AbstractModel
        # @param UinList: 用户列表
        # @type UinList: Array

        attr_accessor :UinList
        
        def initialize(uinlist=nil)
          @UinList = uinlist
        end

        def deserialize(params)
          @UinList = params['UinList']
        end
      end

      # QueryCreditByUinList返回参数结构体
      class QueryCreditByUinListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 用户信息列表
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              querydirectcustomerscreditdata_tmp = QueryDirectCustomersCreditData.new
              querydirectcustomerscreditdata_tmp.deserialize(i)
              @Data << querydirectcustomerscreditdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询客户信用额度出参复杂类型
      class QueryCustomersCreditData < TencentCloud::Common::AbstractModel
        # @param Name: 名字
        # @type Name: String
        # @param Type: 类型
        # @type Type: String
        # @param Mobile: 电话
        # @type Mobile: String
        # @param Email: 邮箱
        # @type Email: String
        # @param Arrears: 欠费标记
        # @type Arrears: String
        # @param AssociationTime: 绑定时间
        # @type AssociationTime: String
        # @param RecentExpiry: 最近到期时间
        # @type RecentExpiry: String
        # @param ClientUin: 子客uin
        # @type ClientUin: Integer
        # @param Credit: 子客授信额度
        # @type Credit: Float
        # @param RemainingCredit: 子客剩余额度
        # @type RemainingCredit: Float
        # @param IdentifyType: 0：未实名 1: 个人实名 2：企业实名
        # @type IdentifyType: Integer
        # @param Remark: 客户备注
        # @type Remark: String
        # @param Force: 强制状态
        # @type Force: Integer

        attr_accessor :Name, :Type, :Mobile, :Email, :Arrears, :AssociationTime, :RecentExpiry, :ClientUin, :Credit, :RemainingCredit, :IdentifyType, :Remark, :Force
        
        def initialize(name=nil, type=nil, mobile=nil, email=nil, arrears=nil, associationtime=nil, recentexpiry=nil, clientuin=nil, credit=nil, remainingcredit=nil, identifytype=nil, remark=nil, force=nil)
          @Name = name
          @Type = type
          @Mobile = mobile
          @Email = email
          @Arrears = arrears
          @AssociationTime = associationtime
          @RecentExpiry = recentexpiry
          @ClientUin = clientuin
          @Credit = credit
          @RemainingCredit = remainingcredit
          @IdentifyType = identifytype
          @Remark = remark
          @Force = force
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @Mobile = params['Mobile']
          @Email = params['Email']
          @Arrears = params['Arrears']
          @AssociationTime = params['AssociationTime']
          @RecentExpiry = params['RecentExpiry']
          @ClientUin = params['ClientUin']
          @Credit = params['Credit']
          @RemainingCredit = params['RemainingCredit']
          @IdentifyType = params['IdentifyType']
          @Remark = params['Remark']
          @Force = params['Force']
        end
      end

      # QueryCustomersCredit请求参数结构体
      class QueryCustomersCreditRequest < TencentCloud::Common::AbstractModel
        # @param FilterType: 搜索条件类型，只能是：ClientUin|Name|Remark|Email四选一
        # @type FilterType: String
        # @param Filter: 查询条件值
        # @type Filter: String
        # @param Page: 分页参数：当前页数，从1开始
        # @type Page: Integer
        # @param PageSize: 分页参数：每页条数
        # @type PageSize: Integer
        # @param Order: 排序参数，根据AssociationTime按照空或者desc：逆序，asc：顺序的方式进行排序
        # @type Order: String

        attr_accessor :FilterType, :Filter, :Page, :PageSize, :Order
        
        def initialize(filtertype=nil, filter=nil, page=nil, pagesize=nil, order=nil)
          @FilterType = filtertype
          @Filter = filter
          @Page = page
          @PageSize = pagesize
          @Order = order
        end

        def deserialize(params)
          @FilterType = params['FilterType']
          @Filter = params['Filter']
          @Page = params['Page']
          @PageSize = params['PageSize']
          @Order = params['Order']
        end
      end

      # QueryCustomersCredit返回参数结构体
      class QueryCustomersCreditResponse < TencentCloud::Common::AbstractModel
        # @param Data: 查询客户列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param Total: 客户数量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Total, :RequestId
        
        def initialize(data=nil, total=nil, requestid=nil)
          @Data = data
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              querycustomerscreditdata_tmp = QueryCustomersCreditData.new
              querycustomerscreditdata_tmp.deserialize(i)
              @Data << querycustomerscreditdata_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # 直接子客信用信息
      class QueryDirectCustomersCreditData < TencentCloud::Common::AbstractModel
        # @param Uin: 用户Uin
        # @type Uin: Integer
        # @param TotalCredit: 总信用值
        # @type TotalCredit: Float
        # @param RemainingCredit: 剩余信用值
        # @type RemainingCredit: Float

        attr_accessor :Uin, :TotalCredit, :RemainingCredit
        
        def initialize(uin=nil, totalcredit=nil, remainingcredit=nil)
          @Uin = uin
          @TotalCredit = totalcredit
          @RemainingCredit = remainingcredit
        end

        def deserialize(params)
          @Uin = params['Uin']
          @TotalCredit = params['TotalCredit']
          @RemainingCredit = params['RemainingCredit']
        end
      end

      # QueryDirectCustomersCredit请求参数结构体
      class QueryDirectCustomersCreditRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # QueryDirectCustomersCredit返回参数结构体
      class QueryDirectCustomersCreditResponse < TencentCloud::Common::AbstractModel
        # @param Data: 直接子客信息列表
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              querydirectcustomerscreditdata_tmp = QueryDirectCustomersCreditData.new
              querydirectcustomerscreditdata_tmp.deserialize(i)
              @Data << querydirectcustomerscreditdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryPartnerCredit请求参数结构体
      class QueryPartnerCreditRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # QueryPartnerCredit返回参数结构体
      class QueryPartnerCreditResponse < TencentCloud::Common::AbstractModel
        # @param AllocatedCredit: 已分配额度
        # @type AllocatedCredit: Float
        # @param TotalCredit: 额度总数
        # @type TotalCredit: Float
        # @param RemainingCredit: 剩余额度
        # @type RemainingCredit: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AllocatedCredit, :TotalCredit, :RemainingCredit, :RequestId
        
        def initialize(allocatedcredit=nil, totalcredit=nil, remainingcredit=nil, requestid=nil)
          @AllocatedCredit = allocatedcredit
          @TotalCredit = totalcredit
          @RemainingCredit = remainingcredit
          @RequestId = requestid
        end

        def deserialize(params)
          @AllocatedCredit = params['AllocatedCredit']
          @TotalCredit = params['TotalCredit']
          @RemainingCredit = params['RemainingCredit']
          @RequestId = params['RequestId']
        end
      end

      # 子客代金券额度
      class QueryVoucherAmountByUinItem < TencentCloud::Common::AbstractModel
        # @param ClientUin: 子客uin
        # @type ClientUin: Integer
        # @param TotalAmount: 代金券额度
        # @type TotalAmount: Float
        # @param RemainAmount: 代金券余额
        # @type RemainAmount: Float

        attr_accessor :ClientUin, :TotalAmount, :RemainAmount
        
        def initialize(clientuin=nil, totalamount=nil, remainamount=nil)
          @ClientUin = clientuin
          @TotalAmount = totalamount
          @RemainAmount = remainamount
        end

        def deserialize(params)
          @ClientUin = params['ClientUin']
          @TotalAmount = params['TotalAmount']
          @RemainAmount = params['RemainAmount']
        end
      end

      # QueryVoucherAmountByUin请求参数结构体
      class QueryVoucherAmountByUinRequest < TencentCloud::Common::AbstractModel
        # @param ClientUins: 子客uin列表
        # @type ClientUins: Array

        attr_accessor :ClientUins
        
        def initialize(clientuins=nil)
          @ClientUins = clientuins
        end

        def deserialize(params)
          @ClientUins = params['ClientUins']
        end
      end

      # QueryVoucherAmountByUin返回参数结构体
      class QueryVoucherAmountByUinResponse < TencentCloud::Common::AbstractModel
        # @param Data: 子客代金券额度数据
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              queryvoucheramountbyuinitem_tmp = QueryVoucherAmountByUinItem.new
              queryvoucheramountbyuinitem_tmp.deserialize(i)
              @Data << queryvoucheramountbyuinitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 单个客户代金券数据
      class QueryVoucherListByUinItem < TencentCloud::Common::AbstractModel
        # @param ClientUin: 子客uin
        # @type ClientUin: Integer
        # @param TotalCount: 券总数量
        # @type TotalCount: Integer
        # @param Data: 券详情
        # @type Data: Array

        attr_accessor :ClientUin, :TotalCount, :Data
        
        def initialize(clientuin=nil, totalcount=nil, data=nil)
          @ClientUin = clientuin
          @TotalCount = totalcount
          @Data = data
        end

        def deserialize(params)
          @ClientUin = params['ClientUin']
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              queryvoucherlistbyuinvoucheritem_tmp = QueryVoucherListByUinVoucherItem.new
              queryvoucherlistbyuinvoucheritem_tmp.deserialize(i)
              @Data << queryvoucherlistbyuinvoucheritem_tmp
            end
          end
        end
      end

      # QueryVoucherListByUin请求参数结构体
      class QueryVoucherListByUinRequest < TencentCloud::Common::AbstractModel
        # @param ClientUins: 子客uin列表
        # @type ClientUins: Array
        # @param Status: 状态，不传时默认查询所有状态。Unused,Used,Expired
        # @type Status: String

        attr_accessor :ClientUins, :Status
        
        def initialize(clientuins=nil, status=nil)
          @ClientUins = clientuins
          @Status = status
        end

        def deserialize(params)
          @ClientUins = params['ClientUins']
          @Status = params['Status']
        end
      end

      # QueryVoucherListByUin返回参数结构体
      class QueryVoucherListByUinResponse < TencentCloud::Common::AbstractModel
        # @param Data: 子客代金券数据
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              queryvoucherlistbyuinitem_tmp = QueryVoucherListByUinItem.new
              queryvoucherlistbyuinitem_tmp.deserialize(i)
              @Data << queryvoucherlistbyuinitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 子客代金券数据
      class QueryVoucherListByUinVoucherItem < TencentCloud::Common::AbstractModel
        # @param VoucherId: 券号
        # @type VoucherId: String
        # @param VoucherStatus: 状态
        # @type VoucherStatus: String
        # @param TotalAmount: 面额
        # @type TotalAmount: Float
        # @param RemainAmount: 余额
        # @type RemainAmount: Float

        attr_accessor :VoucherId, :VoucherStatus, :TotalAmount, :RemainAmount
        
        def initialize(voucherid=nil, voucherstatus=nil, totalamount=nil, remainamount=nil)
          @VoucherId = voucherid
          @VoucherStatus = voucherstatus
          @TotalAmount = totalamount
          @RemainAmount = remainamount
        end

        def deserialize(params)
          @VoucherId = params['VoucherId']
          @VoucherStatus = params['VoucherStatus']
          @TotalAmount = params['TotalAmount']
          @RemainAmount = params['RemainAmount']
        end
      end

      # QueryVoucherPool请求参数结构体
      class QueryVoucherPoolRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # QueryVoucherPool返回参数结构体
      class QueryVoucherPoolResponse < TencentCloud::Common::AbstractModel
        # @param AgentName: 经销商姓名
        # @type AgentName: String
        # @param AccountType: 经销商角色类型：1:经销商 2:总经销商 3:二级经销商
        # @type AccountType: Integer
        # @param TotalQuota: 总额度
        # @type TotalQuota: Float
        # @param RemainingQuota: 剩余额度
        # @type RemainingQuota: Float
        # @param IssuedNum: 已发放的代金券数量
        # @type IssuedNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AgentName, :AccountType, :TotalQuota, :RemainingQuota, :IssuedNum, :RequestId
        
        def initialize(agentname=nil, accounttype=nil, totalquota=nil, remainingquota=nil, issuednum=nil, requestid=nil)
          @AgentName = agentname
          @AccountType = accounttype
          @TotalQuota = totalquota
          @RemainingQuota = remainingquota
          @IssuedNum = issuednum
          @RequestId = requestid
        end

        def deserialize(params)
          @AgentName = params['AgentName']
          @AccountType = params['AccountType']
          @TotalQuota = params['TotalQuota']
          @RemainingQuota = params['RemainingQuota']
          @IssuedNum = params['IssuedNum']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

