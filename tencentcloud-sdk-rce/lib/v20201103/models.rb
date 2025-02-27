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
  module Rce
    module V20201103
      # 账号信息。
      class AccountInfo < TencentCloud::Common::AbstractModel
        # @param AccountType: 用户账号类型；默认开通QQOpenId、手机号MD5权限；如果需要使用微信OpenId入参，则需要"提交工单"或联系对接人进行资格审核，审核通过后方可正常使用微信开放账号。
        # 1：QQ开放账号
        # 2：微信开放账号
        # 10004：手机号MD5，中国大陆11位手机号进行MD5加密，取32位小写值
        # 10005：手机号SHA256，中国大陆11位手机号进行SHA256加密，取64位小写值
        # @type AccountType: Integer
        # @param QQAccount: QQ账号信息，AccountType是"1"时，该字段必填。
        # @type QQAccount: :class:`Tencentcloud::Rce.v20201103.models.QQAccountInfo`
        # @param WeChatAccount: 微信账号信息，AccountType是"2"时，该字段必填。
        # @type WeChatAccount: :class:`Tencentcloud::Rce.v20201103.models.WeChatAccountInfo`
        # @param OtherAccount: 其它账号信息，AccountType是10004或10005时，该字段必填。
        # @type OtherAccount: :class:`Tencentcloud::Rce.v20201103.models.OtherAccountInfo`

        attr_accessor :AccountType, :QQAccount, :WeChatAccount, :OtherAccount

        def initialize(accounttype=nil, qqaccount=nil, wechataccount=nil, otheraccount=nil)
          @AccountType = accounttype
          @QQAccount = qqaccount
          @WeChatAccount = wechataccount
          @OtherAccount = otheraccount
        end

        def deserialize(params)
          @AccountType = params['AccountType']
          unless params['QQAccount'].nil?
            @QQAccount = QQAccountInfo.new
            @QQAccount.deserialize(params['QQAccount'])
          end
          unless params['WeChatAccount'].nil?
            @WeChatAccount = WeChatAccountInfo.new
            @WeChatAccount.deserialize(params['WeChatAccount'])
          end
          unless params['OtherAccount'].nil?
            @OtherAccount = OtherAccountInfo.new
            @OtherAccount.deserialize(params['OtherAccount'])
          end
        end
      end

      # CreateNameList请求参数结构体
      class CreateNameListRequest < TencentCloud::Common::AbstractModel
        # @param BusinessSecurityData: 业务入参
        # @type BusinessSecurityData: :class:`Tencentcloud::Rce.v20201103.models.InputCreateNameListFront`

        attr_accessor :BusinessSecurityData

        def initialize(businesssecuritydata=nil)
          @BusinessSecurityData = businesssecuritydata
        end

        def deserialize(params)
          unless params['BusinessSecurityData'].nil?
            @BusinessSecurityData = InputCreateNameListFront.new
            @BusinessSecurityData.deserialize(params['BusinessSecurityData'])
          end
        end
      end

      # CreateNameList返回参数结构体
      class CreateNameListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 业务出参
        # @type Data: :class:`Tencentcloud::Rce.v20201103.models.OutputCreateNameListFront`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OutputCreateNameListFront.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 数据授权信息
      class DataAuthorizationInfo < TencentCloud::Common::AbstractModel
        # @param DataProviderName: 数据委托方、需求方：客户主体名称。
        # @type DataProviderName: String
        # @param DataRecipientName: 数据受托方、提供方：腾讯云主体名称。

        # 固定填：腾讯云计算（北京）有限责任公司
        # @type DataRecipientName: String
        # @param UserDataType: 客户请求RCE所提供的用户数据类型，支持多选。实际以接口请求传参为准。

        # 1-手机号；

        # 2-微信开放账号；

        # 3-QQ开放账号；

        # 4-IP地址；

        # 999-其它；
        # @type UserDataType: Array
        # @param IsAuthorize: 客户是否已按[合规指南](https://rule.tencent.com/rule/202409130001)要求获取用户授权，同意客户委托腾讯云处理入参信息
        # 1-已授权；其它值为未授权。
        # @type IsAuthorize: Integer
        # @param IsOrderHandling: 客户是否已按[合规指南](https://rule.tencent.com/rule/202409130001)要求获取用户授权，同意腾讯云结合客户提供的信息，对已合法收集的用户数据进行必要处理得出服务结果，并返回给客户。
        # 1-已授权；其它值为未授权。
        # @type IsOrderHandling: Integer
        # @param AuthorizationTerm: 客户获得的用户授权期限时间戳（单位秒）。

        # 不填默认无固定期限。
        # @type AuthorizationTerm: Integer
        # @param PrivacyPolicyLink: 客户获得用户授权所依赖的协议地址。
        # @type PrivacyPolicyLink: String
        # @param IsPersonalData: 是否是用户个人敏感数据（不推荐使用）。

        # 固定填：1。
        # @type IsPersonalData: Integer

        attr_accessor :DataProviderName, :DataRecipientName, :UserDataType, :IsAuthorize, :IsOrderHandling, :AuthorizationTerm, :PrivacyPolicyLink, :IsPersonalData

        def initialize(dataprovidername=nil, datarecipientname=nil, userdatatype=nil, isauthorize=nil, isorderhandling=nil, authorizationterm=nil, privacypolicylink=nil, ispersonaldata=nil)
          @DataProviderName = dataprovidername
          @DataRecipientName = datarecipientname
          @UserDataType = userdatatype
          @IsAuthorize = isauthorize
          @IsOrderHandling = isorderhandling
          @AuthorizationTerm = authorizationterm
          @PrivacyPolicyLink = privacypolicylink
          @IsPersonalData = ispersonaldata
        end

        def deserialize(params)
          @DataProviderName = params['DataProviderName']
          @DataRecipientName = params['DataRecipientName']
          @UserDataType = params['UserDataType']
          @IsAuthorize = params['IsAuthorize']
          @IsOrderHandling = params['IsOrderHandling']
          @AuthorizationTerm = params['AuthorizationTerm']
          @PrivacyPolicyLink = params['PrivacyPolicyLink']
          @IsPersonalData = params['IsPersonalData']
        end
      end

      # 黑白名单导入名单数据的业务入参数据结构
      class DataContentInfo < TencentCloud::Common::AbstractModel
        # @param DataContent: 名单数据内容
        # @type DataContent: String
        # @param DataRemark: 名单数据描述
        # @type DataRemark: String
        # @param StartTime: 名单数据开始时间
        # @type StartTime: String
        # @param EndTime: 名单数据结束时间
        # @type EndTime: String

        attr_accessor :DataContent, :DataRemark, :StartTime, :EndTime

        def initialize(datacontent=nil, dataremark=nil, starttime=nil, endtime=nil)
          @DataContent = datacontent
          @DataRemark = dataremark
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @DataContent = params['DataContent']
          @DataRemark = params['DataRemark']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DeleteNameListData请求参数结构体
      class DeleteNameListDataRequest < TencentCloud::Common::AbstractModel
        # @param BusinessSecurityData: 业务入参
        # @type BusinessSecurityData: :class:`Tencentcloud::Rce.v20201103.models.InputDeleteNameListData`

        attr_accessor :BusinessSecurityData

        def initialize(businesssecuritydata=nil)
          @BusinessSecurityData = businesssecuritydata
        end

        def deserialize(params)
          unless params['BusinessSecurityData'].nil?
            @BusinessSecurityData = InputDeleteNameListData.new
            @BusinessSecurityData.deserialize(params['BusinessSecurityData'])
          end
        end
      end

      # DeleteNameListData返回参数结构体
      class DeleteNameListDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: 业务出参
        # @type Data: :class:`Tencentcloud::Rce.v20201103.models.OutputDeleteNameListData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OutputDeleteNameListData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteNameList请求参数结构体
      class DeleteNameListRequest < TencentCloud::Common::AbstractModel
        # @param BusinessSecurityData: 业务入参
        # @type BusinessSecurityData: :class:`Tencentcloud::Rce.v20201103.models.InputDeleteNameListFront`

        attr_accessor :BusinessSecurityData

        def initialize(businesssecuritydata=nil)
          @BusinessSecurityData = businesssecuritydata
        end

        def deserialize(params)
          unless params['BusinessSecurityData'].nil?
            @BusinessSecurityData = InputDeleteNameListFront.new
            @BusinessSecurityData.deserialize(params['BusinessSecurityData'])
          end
        end
      end

      # DeleteNameList返回参数结构体
      class DeleteNameListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 业务出参
        # @type Data: :class:`Tencentcloud::Rce.v20201103.models.OutputDeleteNameListFront`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OutputDeleteNameListFront.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNameListDataList请求参数结构体
      class DescribeNameListDataListRequest < TencentCloud::Common::AbstractModel
        # @param BusinessSecurityData: 业务入参
        # @type BusinessSecurityData: :class:`Tencentcloud::Rce.v20201103.models.InputDescribeDataListFront`

        attr_accessor :BusinessSecurityData

        def initialize(businesssecuritydata=nil)
          @BusinessSecurityData = businesssecuritydata
        end

        def deserialize(params)
          unless params['BusinessSecurityData'].nil?
            @BusinessSecurityData = InputDescribeDataListFront.new
            @BusinessSecurityData.deserialize(params['BusinessSecurityData'])
          end
        end
      end

      # DescribeNameListDataList返回参数结构体
      class DescribeNameListDataListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 业务出参
        # @type Data: :class:`Tencentcloud::Rce.v20201103.models.OutputDescribeDataListFrontData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OutputDescribeDataListFrontData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNameListDetail请求参数结构体
      class DescribeNameListDetailRequest < TencentCloud::Common::AbstractModel
        # @param BusinessSecurityData: 业务入参
        # @type BusinessSecurityData: :class:`Tencentcloud::Rce.v20201103.models.InputDescribeNameListDetail`

        attr_accessor :BusinessSecurityData

        def initialize(businesssecuritydata=nil)
          @BusinessSecurityData = businesssecuritydata
        end

        def deserialize(params)
          unless params['BusinessSecurityData'].nil?
            @BusinessSecurityData = InputDescribeNameListDetail.new
            @BusinessSecurityData.deserialize(params['BusinessSecurityData'])
          end
        end
      end

      # DescribeNameListDetail返回参数结构体
      class DescribeNameListDetailResponse < TencentCloud::Common::AbstractModel
        # @param Data: 黑白名单列表详情业务出参
        # @type Data: :class:`Tencentcloud::Rce.v20201103.models.OutputDescribeNameListDetailFront`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OutputDescribeNameListDetailFront.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNameList请求参数结构体
      class DescribeNameListRequest < TencentCloud::Common::AbstractModel
        # @param BusinessSecurityData: 业务入参
        # @type BusinessSecurityData: :class:`Tencentcloud::Rce.v20201103.models.InputDescribeNameListFront`

        attr_accessor :BusinessSecurityData

        def initialize(businesssecuritydata=nil)
          @BusinessSecurityData = businesssecuritydata
        end

        def deserialize(params)
          unless params['BusinessSecurityData'].nil?
            @BusinessSecurityData = InputDescribeNameListFront.new
            @BusinessSecurityData.deserialize(params['BusinessSecurityData'])
          end
        end
      end

      # DescribeNameList返回参数结构体
      class DescribeNameListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 业务出参
        # @type Data: :class:`Tencentcloud::Rce.v20201103.models.OutputDescribeNameListFrontFixListData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OutputDescribeNameListFrontFixListData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserUsageCnt请求参数结构体
      class DescribeUserUsageCntRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeUserUsageCnt返回参数结构体
      class DescribeUserUsageCntResponse < TencentCloud::Common::AbstractModel
        # @param Data: 业务出参
        # @type Data: :class:`Tencentcloud::Rce.v20201103.models.OutputDescribeUserUsageCntData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OutputDescribeUserUsageCntData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ImportNameListData请求参数结构体
      class ImportNameListDataRequest < TencentCloud::Common::AbstractModel
        # @param BusinessSecurityData: 业务入参
        # @type BusinessSecurityData: :class:`Tencentcloud::Rce.v20201103.models.InputImportNameListDataFront`

        attr_accessor :BusinessSecurityData

        def initialize(businesssecuritydata=nil)
          @BusinessSecurityData = businesssecuritydata
        end

        def deserialize(params)
          unless params['BusinessSecurityData'].nil?
            @BusinessSecurityData = InputImportNameListDataFront.new
            @BusinessSecurityData.deserialize(params['BusinessSecurityData'])
          end
        end
      end

      # ImportNameListData返回参数结构体
      class ImportNameListDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: 业务出参
        # @type Data: :class:`Tencentcloud::Rce.v20201103.models.OutputImportNameListDataFront`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OutputImportNameListDataFront.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 创建黑白名单入参
      class InputCreateNameListFront < TencentCloud::Common::AbstractModel
        # @param ListName: 名单名称
        # @type ListName: String
        # @param ListType: 名单类型 [1 黑名单 2白名单]
        # @type ListType: Integer
        # @param DataType: 数据类型[1 手机号 2 qqOpenId 3 2echatOpenId 4 ip 6 idfa 7 imei]
        # @type DataType: Integer
        # @param Remark: 描述
        # @type Remark: String
        # @param EncryptionType: 加密类型[0 无需加密 1 MD5加密 2 SHA256加密]
        # @type EncryptionType: Integer
        # @param SceneCode: 场景Code，all_scene代表全部场景
        # @type SceneCode: String

        attr_accessor :ListName, :ListType, :DataType, :Remark, :EncryptionType, :SceneCode

        def initialize(listname=nil, listtype=nil, datatype=nil, remark=nil, encryptiontype=nil, scenecode=nil)
          @ListName = listname
          @ListType = listtype
          @DataType = datatype
          @Remark = remark
          @EncryptionType = encryptiontype
          @SceneCode = scenecode
        end

        def deserialize(params)
          @ListName = params['ListName']
          @ListType = params['ListType']
          @DataType = params['DataType']
          @Remark = params['Remark']
          @EncryptionType = params['EncryptionType']
          @SceneCode = params['SceneCode']
        end
      end

      # 全栈式风控引擎入参
      class InputCryptoManageMarketingRisk < TencentCloud::Common::AbstractModel
        # @param IsAuthorized: 是否授权：1已授权，否则未授权。
        #  调用全栈式风控引擎接口服务时，客户需先明确授权

        # @type IsAuthorized: String
        # @param CryptoType: 加密类型：1AES加密
        # @type CryptoType: String
        # @param CryptoContent: 加密内容，非空时接口采用加密模式。
        # @type CryptoContent: String

        attr_accessor :IsAuthorized, :CryptoType, :CryptoContent

        def initialize(isauthorized=nil, cryptotype=nil, cryptocontent=nil)
          @IsAuthorized = isauthorized
          @CryptoType = cryptotype
          @CryptoContent = cryptocontent
        end

        def deserialize(params)
          @IsAuthorized = params['IsAuthorized']
          @CryptoType = params['CryptoType']
          @CryptoContent = params['CryptoContent']
        end
      end

      # 删除黑白名单数据业务入参
      class InputDeleteNameListData < TencentCloud::Common::AbstractModel
        # @param NameListDataIdList: 黑白名单数据ID集合
        # @type NameListDataIdList: Array

        attr_accessor :NameListDataIdList

        def initialize(namelistdataidlist=nil)
          @NameListDataIdList = namelistdataidlist
        end

        def deserialize(params)
          @NameListDataIdList = params['NameListDataIdList']
        end
      end

      # 删除黑白名单入参
      class InputDeleteNameListFront < TencentCloud::Common::AbstractModel
        # @param NameListId: 名单ID
        # @type NameListId: Integer

        attr_accessor :NameListId

        def initialize(namelistid=nil)
          @NameListId = namelistid
        end

        def deserialize(params)
          @NameListId = params['NameListId']
        end
      end

      # 查询黑白名单数据入参
      class InputDescribeDataListFront < TencentCloud::Common::AbstractModel
        # @param NameListId: 名单ID
        # @type NameListId: Integer
        # @param PageNumber: 当前页数
        # @type PageNumber: Integer
        # @param PageSize: 每页显示条数
        # @type PageSize: Integer
        # @param KeyWord: 搜索关键字，按照名单数据名称或加密名单数据名称搜索
        # @type KeyWord: String
        # @param Status: 黑白名单列表状态[1 启用 2 停用]
        # @type Status: Integer

        attr_accessor :NameListId, :PageNumber, :PageSize, :KeyWord, :Status

        def initialize(namelistid=nil, pagenumber=nil, pagesize=nil, keyword=nil, status=nil)
          @NameListId = namelistid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @KeyWord = keyword
          @Status = status
        end

        def deserialize(params)
          @NameListId = params['NameListId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @KeyWord = params['KeyWord']
          @Status = params['Status']
        end
      end

      # 查询黑白名单详情入参
      class InputDescribeNameListDetail < TencentCloud::Common::AbstractModel
        # @param NameListId: 名单ID
        # @type NameListId: Integer

        attr_accessor :NameListId

        def initialize(namelistid=nil)
          @NameListId = namelistid
        end

        def deserialize(params)
          @NameListId = params['NameListId']
        end
      end

      # 查询黑白名单入参
      class InputDescribeNameListFront < TencentCloud::Common::AbstractModel
        # @param PageNumber: 当前页数
        # @type PageNumber: Integer
        # @param PageSize: 每页显示条数
        # @type PageSize: Integer
        # @param ListType: 名单类型 [1 黑名单 2 白名单]
        # @type ListType: Integer
        # @param DataType: 数据类型[1 手机号 2 qqOpenId 3 wechatOpenId 4 ip 6 idfa 7 imei]
        # @type DataType: Integer
        # @param KeyWord: 关键字，按照名单名称搜索
        # @type KeyWord: String
        # @param Status: 记录状态[1 启用 2 停用]
        # @type Status: Integer

        attr_accessor :PageNumber, :PageSize, :ListType, :DataType, :KeyWord, :Status

        def initialize(pagenumber=nil, pagesize=nil, listtype=nil, datatype=nil, keyword=nil, status=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @ListType = listtype
          @DataType = datatype
          @KeyWord = keyword
          @Status = status
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @ListType = params['ListType']
          @DataType = params['DataType']
          @KeyWord = params['KeyWord']
          @Status = params['Status']
        end
      end

      # 入参的详细参数信息
      class InputDetails < TencentCloud::Common::AbstractModel
        # @param FieldName: 字段名称
        # @type FieldName: String
        # @param FieldValue: 字段值
        # @type FieldValue: String

        attr_accessor :FieldName, :FieldValue

        def initialize(fieldname=nil, fieldvalue=nil)
          @FieldName = fieldname
          @FieldValue = fieldvalue
        end

        def deserialize(params)
          @FieldName = params['FieldName']
          @FieldValue = params['FieldValue']
        end
      end

      # 添加名单数据入参
      class InputImportNameListDataFront < TencentCloud::Common::AbstractModel
        # @param NameListId: 名单ID
        # @type NameListId: Integer
        # @param DataSource: 数据来源，固定传2（手工录入）
        # @type DataSource: Integer
        # @param DataContentInfo: 黑白名单数据内容
        # @type DataContentInfo: Array

        attr_accessor :NameListId, :DataSource, :DataContentInfo

        def initialize(namelistid=nil, datasource=nil, datacontentinfo=nil)
          @NameListId = namelistid
          @DataSource = datasource
          @DataContentInfo = datacontentinfo
        end

        def deserialize(params)
          @NameListId = params['NameListId']
          @DataSource = params['DataSource']
          unless params['DataContentInfo'].nil?
            @DataContentInfo = []
            params['DataContentInfo'].each do |i|
              datacontentinfo_tmp = DataContentInfo.new
              datacontentinfo_tmp.deserialize(i)
              @DataContentInfo << datacontentinfo_tmp
            end
          end
        end
      end

      # 全栈式风控引擎入参
      class InputManageMarketingRisk < TencentCloud::Common::AbstractModel
        # @param Account: 用户账号类型；默认开通QQOpenId、手机号MD5权限；如果需要使用微信OpenId入参，则需要"提交工单"或联系对接人进行资格审核，审核通过后方可正常使用微信开放账号。
        # 1：QQ开放账号
        # 2：微信开放账号
        # 10004：手机号MD5，中国大陆11位手机号进行MD5加密，取32位小写值
        # 10005：手机号SHA256，中国大陆11位手机号进行SHA256加密，取64位小写值
        # @type Account: :class:`Tencentcloud::Rce.v20201103.models.AccountInfo`
        # @param SceneCode: 场景码，用于识别和区分不同的业务场景，可在控制台上新建和管理
        # 控制台链接：https://console.cloud.tencent.com/rce/risk/strategy/scene-root
        # 活动防刷默认场景码：e_activity_antirush
        # 登录保护默认场景码：e_login_protection
        # 注册保护默认场景码：e_register_protection
        # @type SceneCode: String
        # @param UserIp: 用户外网ip（传入用户非外网ip会影响判断结果）。
        # @type UserIp: String
        # @param PostTime: 用户操作时间戳，精确到秒。
        # @type PostTime: Integer
        # @param UserId: 业务平台用户唯一标识，支持自定义。
        # @type UserId: String
        # @param DeviceToken: 设备指纹DeviceToken值，集成设备指纹后获取；如果集成了相应的设备指纹，该字段必填。
        # @type DeviceToken: String
        # @param DeviceBusinessId: 设备指纹 BusinessId。
        # @type DeviceBusinessId: Integer
        # @param BusinessId: 业务ID。网站或应用在多个业务中使用此服务，通过此ID区分统计数据。
        # @type BusinessId: Integer
        # @param Nickname: 昵称，UTF-8 编码。
        # @type Nickname: String
        # @param EmailAddress: 用户邮箱地址。
        # @type EmailAddress: String
        # @param CheckDevice: 是否识别设备异常：
        # 0：不识别。
        # 1：识别。
        # @type CheckDevice: Integer
        # @param CookieHash: 用户HTTP请求中的Cookie进行2次hash的值，只要保证相同Cookie的hash值一致即可。
        # @type CookieHash: String
        # @param Referer: 用户HTTP请求的Referer值。
        # @type Referer: String
        # @param UserAgent: 用户HTTP请求的User-Agent值。
        # @type UserAgent: String
        # @param XForwardedFor: 用户HTTP请求的X-Forwarded-For值。
        # @type XForwardedFor: String
        # @param MacAddress: MAC地址或设备唯一标识。
        # @type MacAddress: String
        # @param VendorId: 手机制造商ID，如果手机注册，请带上此信息。
        # @type VendorId: String
        # @param DeviceType: 设备类型(已不推荐使用)。
        # @type DeviceType: Integer
        # @param Details: 扩展字段。
        # @type Details: Array
        # @param Sponsor: 邀请助力场景相关信息。
        # @type Sponsor: :class:`Tencentcloud::Rce.v20201103.models.SponsorInfo`
        # @param OnlineScam: 详情请跳转至OnlineScamInfo查看。
        # @type OnlineScam: :class:`Tencentcloud::Rce.v20201103.models.OnlineScamInfo`
        # @param Platform: 1：Android
        # 2：iOS
        # 3：H5
        # 4：小程序
        # @type Platform: String
        # @param DataAuthorization: 数据授权信息。
        # @type DataAuthorization: :class:`Tencentcloud::Rce.v20201103.models.DataAuthorizationInfo`

        attr_accessor :Account, :SceneCode, :UserIp, :PostTime, :UserId, :DeviceToken, :DeviceBusinessId, :BusinessId, :Nickname, :EmailAddress, :CheckDevice, :CookieHash, :Referer, :UserAgent, :XForwardedFor, :MacAddress, :VendorId, :DeviceType, :Details, :Sponsor, :OnlineScam, :Platform, :DataAuthorization

        def initialize(account=nil, scenecode=nil, userip=nil, posttime=nil, userid=nil, devicetoken=nil, devicebusinessid=nil, businessid=nil, nickname=nil, emailaddress=nil, checkdevice=nil, cookiehash=nil, referer=nil, useragent=nil, xforwardedfor=nil, macaddress=nil, vendorid=nil, devicetype=nil, details=nil, sponsor=nil, onlinescam=nil, platform=nil, dataauthorization=nil)
          @Account = account
          @SceneCode = scenecode
          @UserIp = userip
          @PostTime = posttime
          @UserId = userid
          @DeviceToken = devicetoken
          @DeviceBusinessId = devicebusinessid
          @BusinessId = businessid
          @Nickname = nickname
          @EmailAddress = emailaddress
          @CheckDevice = checkdevice
          @CookieHash = cookiehash
          @Referer = referer
          @UserAgent = useragent
          @XForwardedFor = xforwardedfor
          @MacAddress = macaddress
          @VendorId = vendorid
          @DeviceType = devicetype
          @Details = details
          @Sponsor = sponsor
          @OnlineScam = onlinescam
          @Platform = platform
          @DataAuthorization = dataauthorization
        end

        def deserialize(params)
          unless params['Account'].nil?
            @Account = AccountInfo.new
            @Account.deserialize(params['Account'])
          end
          @SceneCode = params['SceneCode']
          @UserIp = params['UserIp']
          @PostTime = params['PostTime']
          @UserId = params['UserId']
          @DeviceToken = params['DeviceToken']
          @DeviceBusinessId = params['DeviceBusinessId']
          @BusinessId = params['BusinessId']
          @Nickname = params['Nickname']
          @EmailAddress = params['EmailAddress']
          @CheckDevice = params['CheckDevice']
          @CookieHash = params['CookieHash']
          @Referer = params['Referer']
          @UserAgent = params['UserAgent']
          @XForwardedFor = params['XForwardedFor']
          @MacAddress = params['MacAddress']
          @VendorId = params['VendorId']
          @DeviceType = params['DeviceType']
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              inputdetails_tmp = InputDetails.new
              inputdetails_tmp.deserialize(i)
              @Details << inputdetails_tmp
            end
          end
          unless params['Sponsor'].nil?
            @Sponsor = SponsorInfo.new
            @Sponsor.deserialize(params['Sponsor'])
          end
          unless params['OnlineScam'].nil?
            @OnlineScam = OnlineScamInfo.new
            @OnlineScam.deserialize(params['OnlineScam'])
          end
          @Platform = params['Platform']
          unless params['DataAuthorization'].nil?
            @DataAuthorization = DataAuthorizationInfo.new
            @DataAuthorization.deserialize(params['DataAuthorization'])
          end
        end
      end

      # 修改黑白名单入参
      class InputModifyNameFront < TencentCloud::Common::AbstractModel
        # @param NameListId: 名单ID
        # @type NameListId: Integer
        # @param ListName: 名单名称
        # @type ListName: String
        # @param Status: 名单状态 [1 启用 2 停用]
        # @type Status: Integer
        # @param Remark: 描述
        # @type Remark: String

        attr_accessor :NameListId, :ListName, :Status, :Remark

        def initialize(namelistid=nil, listname=nil, status=nil, remark=nil)
          @NameListId = namelistid
          @ListName = listname
          @Status = status
          @Remark = remark
        end

        def deserialize(params)
          @NameListId = params['NameListId']
          @ListName = params['ListName']
          @Status = params['Status']
          @Remark = params['Remark']
        end
      end

      # 名单数据集合
      class InputModifyNameListDataFront < TencentCloud::Common::AbstractModel
        # @param NameListDataId: 名单数据ID
        # @type NameListDataId: Integer
        # @param DataContent: 名单数据内容
        # @type DataContent: String
        # @param StartTime: 名单数据开始时间
        # @type StartTime: String
        # @param EndTime: 名单数据结束时间
        # @type EndTime: String
        # @param Status: 记录状态 [1 启用 2 停用]
        # @type Status: Integer
        # @param Remark: 名单数据描述
        # @type Remark: String

        attr_accessor :NameListDataId, :DataContent, :StartTime, :EndTime, :Status, :Remark

        def initialize(namelistdataid=nil, datacontent=nil, starttime=nil, endtime=nil, status=nil, remark=nil)
          @NameListDataId = namelistdataid
          @DataContent = datacontent
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
          @Remark = remark
        end

        def deserialize(params)
          @NameListDataId = params['NameListDataId']
          @DataContent = params['DataContent']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          @Remark = params['Remark']
        end
      end

      # 修改黑白名单数据入参
      class InputModifyNameListDataFrontListData < TencentCloud::Common::AbstractModel
        # @param DataList: 名单数据集合
        # @type DataList: Array

        attr_accessor :DataList

        def initialize(datalist=nil)
          @DataList = datalist
        end

        def deserialize(params)
          unless params['DataList'].nil?
            @DataList = []
            params['DataList'].each do |i|
              inputmodifynamelistdatafront_tmp = InputModifyNameListDataFront.new
              inputmodifynamelistdatafront_tmp.deserialize(i)
              @DataList << inputmodifynamelistdatafront_tmp
            end
          end
        end
      end

      # ManageMarketingRisk请求参数结构体
      class ManageMarketingRiskRequest < TencentCloud::Common::AbstractModel
        # @param BusinessSecurityData: 业务入参
        # @type BusinessSecurityData: :class:`Tencentcloud::Rce.v20201103.models.InputManageMarketingRisk`
        # @param BusinessCryptoData: 业务入参
        # @type BusinessCryptoData: :class:`Tencentcloud::Rce.v20201103.models.InputCryptoManageMarketingRisk`

        attr_accessor :BusinessSecurityData, :BusinessCryptoData

        def initialize(businesssecuritydata=nil, businesscryptodata=nil)
          @BusinessSecurityData = businesssecuritydata
          @BusinessCryptoData = businesscryptodata
        end

        def deserialize(params)
          unless params['BusinessSecurityData'].nil?
            @BusinessSecurityData = InputManageMarketingRisk.new
            @BusinessSecurityData.deserialize(params['BusinessSecurityData'])
          end
          unless params['BusinessCryptoData'].nil?
            @BusinessCryptoData = InputCryptoManageMarketingRisk.new
            @BusinessCryptoData.deserialize(params['BusinessCryptoData'])
          end
        end
      end

      # ManageMarketingRisk返回参数结构体
      class ManageMarketingRiskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 业务出参
        # @type Data: :class:`Tencentcloud::Rce.v20201103.models.OutputManageMarketingRisk`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OutputManageMarketingRisk.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyNameListData请求参数结构体
      class ModifyNameListDataRequest < TencentCloud::Common::AbstractModel
        # @param BusinessSecurityData: 业务入参
        # @type BusinessSecurityData: :class:`Tencentcloud::Rce.v20201103.models.InputModifyNameListDataFrontListData`

        attr_accessor :BusinessSecurityData

        def initialize(businesssecuritydata=nil)
          @BusinessSecurityData = businesssecuritydata
        end

        def deserialize(params)
          unless params['BusinessSecurityData'].nil?
            @BusinessSecurityData = InputModifyNameListDataFrontListData.new
            @BusinessSecurityData.deserialize(params['BusinessSecurityData'])
          end
        end
      end

      # ModifyNameListData返回参数结构体
      class ModifyNameListDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: 业务出参
        # @type Data: :class:`Tencentcloud::Rce.v20201103.models.OutputModifyNameListFront`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OutputModifyNameListFront.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyNameList请求参数结构体
      class ModifyNameListRequest < TencentCloud::Common::AbstractModel
        # @param BusinessSecurityData: 业务入参
        # @type BusinessSecurityData: :class:`Tencentcloud::Rce.v20201103.models.InputModifyNameFront`

        attr_accessor :BusinessSecurityData

        def initialize(businesssecuritydata=nil)
          @BusinessSecurityData = businesssecuritydata
        end

        def deserialize(params)
          unless params['BusinessSecurityData'].nil?
            @BusinessSecurityData = InputModifyNameFront.new
            @BusinessSecurityData.deserialize(params['BusinessSecurityData'])
          end
        end
      end

      # ModifyNameList返回参数结构体
      class ModifyNameListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 业务出参
        # @type Data: :class:`Tencentcloud::Rce.v20201103.models.OutputModifyNameFront`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OutputModifyNameFront.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 诈骗信息。
      class OnlineScamInfo < TencentCloud::Common::AbstractModel
        # @param ContentLabel: 内容标签。
        # @type ContentLabel: String
        # @param ContentRiskLevel: 内容风险等级：
        # 0：正常。
        # 1：可疑。
        # @type ContentRiskLevel: Integer
        # @param ContentType: 内容产生形式：
        # 0：对话。
        # 1：广播。
        # @type ContentType: Integer
        # @param FraudType: 账号类型
        # 1：手机号
        # 2：uin账号
        # @type FraudType: Integer
        # @param FraudAccount: 账号
        # @type FraudAccount: String

        attr_accessor :ContentLabel, :ContentRiskLevel, :ContentType, :FraudType, :FraudAccount

        def initialize(contentlabel=nil, contentrisklevel=nil, contenttype=nil, fraudtype=nil, fraudaccount=nil)
          @ContentLabel = contentlabel
          @ContentRiskLevel = contentrisklevel
          @ContentType = contenttype
          @FraudType = fraudtype
          @FraudAccount = fraudaccount
        end

        def deserialize(params)
          @ContentLabel = params['ContentLabel']
          @ContentRiskLevel = params['ContentRiskLevel']
          @ContentType = params['ContentType']
          @FraudType = params['FraudType']
          @FraudAccount = params['FraudAccount']
        end
      end

      # 其它账号信息。
      class OtherAccountInfo < TencentCloud::Common::AbstractModel
        # @param AccountId: 其他账号信息；
        # AccountType是10004时，填入中国大陆标准11位手机号的MD5值
        # AccountType是10005时，填入中国大陆标准11位手机号的SHA256值
        # 注释：
        # MD5手机号加密方式，使用中国大陆11位手机号进行MD5加密，加密后取32位小写值。
        # SHA256手机号加密方式，使用中国大陆11位手机号进行SHA256加密，加密后取64位小写值。
        # @type AccountId: String
        # @param MobilePhone: 账号绑定的MD5或SHA256加密的手机号（该字段已不推荐使用）。
        # 注释：支持标准中国大陆11位手机号MD5加密后位的32位小写字符串；
        #      支持标准中国大陆11位手机号SHA256加密后位的64位小写字符串。
        # @type MobilePhone: String
        # @param DeviceId: 用户设备号（该字段已不推荐使用）。
        # @type DeviceId: String

        attr_accessor :AccountId, :MobilePhone, :DeviceId

        def initialize(accountid=nil, mobilephone=nil, deviceid=nil)
          @AccountId = accountid
          @MobilePhone = mobilephone
          @DeviceId = deviceid
        end

        def deserialize(params)
          @AccountId = params['AccountId']
          @MobilePhone = params['MobilePhone']
          @DeviceId = params['DeviceId']
        end
      end

      # 黑白名单数据列表信息
      class OuntputDescribeDataListInfo < TencentCloud::Common::AbstractModel
        # @param Count: 数量
        # @type Count: Integer
        # @param List: 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array

        attr_accessor :Count, :List

        def initialize(count=nil, list=nil)
          @Count = count
          @List = list
        end

        def deserialize(params)
          @Count = params['Count']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              outputdescribedatalistfront_tmp = OutputDescribeDataListFront.new
              outputdescribedatalistfront_tmp.deserialize(i)
              @List << outputdescribedatalistfront_tmp
            end
          end
        end
      end

      # 创建黑白名单出参
      class OutputCreateNameListFront < TencentCloud::Common::AbstractModel
        # @param Code: 错误码，0 表示成功，非0表示失败错误码。 0：成功 1002：参数错误 4300：未开通服务 6000：系统内部错误
        # @type Code: Integer
        # @param Message: 错误信息
        # @type Message: String
        # @param Value: 空数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: Array

        attr_accessor :Code, :Message, :Value

        def initialize(code=nil, message=nil, value=nil)
          @Code = code
          @Message = message
          @Value = value
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          @Value = params['Value']
        end
      end

      # 删除黑白名单出参
      class OutputDeleteNameListData < TencentCloud::Common::AbstractModel
        # @param Code: 错误码，0 表示成功，非0表示失败错误码。 0：成功 1002：参数错误 4300：未开通服务 6000：系统内部错误
        # @type Code: Integer
        # @param Message: 错误信息
        # @type Message: String
        # @param Value: 空数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: Array

        attr_accessor :Code, :Message, :Value

        def initialize(code=nil, message=nil, value=nil)
          @Code = code
          @Message = message
          @Value = value
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          @Value = params['Value']
        end
      end

      # 删除黑白名单出参
      class OutputDeleteNameListFront < TencentCloud::Common::AbstractModel
        # @param Code: 错误码，0 表示成功，非0表示失败错误码。 0：成功 1002：参数错误 4300：未开通服务 6000：系统内部错误
        # @type Code: Integer
        # @param Message: 错误信息
        # @type Message: String
        # @param Value: 空数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: Array

        attr_accessor :Code, :Message, :Value

        def initialize(code=nil, message=nil, value=nil)
          @Code = code
          @Message = message
          @Value = value
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          @Value = params['Value']
        end
      end

      # 黑白名单数据信息
      class OutputDescribeDataListFront < TencentCloud::Common::AbstractModel
        # @param NameListDataId: 名单数据ID
        # @type NameListDataId: Integer
        # @param NameListId: 名单ID
        # @type NameListId: Integer
        # @param DataContent: 名单数据内容
        # @type DataContent: String
        # @param DataSource: 数据来源，固定传2（手工录入）
        # @type DataSource: Integer
        # @param StartTime: 名单数据开始时间
        # @type StartTime: String
        # @param EndTime: 名单数据结束时间
        # @type EndTime: String
        # @param Status: 名单数据状态 [1 启用 2 停用]
        # @type Status: Integer
        # @param Remark: 名单数据描述
        # @type Remark: String
        # @param CreateTime: 名单数据创建时间
        # @type CreateTime: String
        # @param UpdateTime: 名单数据更新时间
        # @type UpdateTime: String
        # @param EncryptDataContent: 加密名单数据内容
        # @type EncryptDataContent: String

        attr_accessor :NameListDataId, :NameListId, :DataContent, :DataSource, :StartTime, :EndTime, :Status, :Remark, :CreateTime, :UpdateTime, :EncryptDataContent

        def initialize(namelistdataid=nil, namelistid=nil, datacontent=nil, datasource=nil, starttime=nil, endtime=nil, status=nil, remark=nil, createtime=nil, updatetime=nil, encryptdatacontent=nil)
          @NameListDataId = namelistdataid
          @NameListId = namelistid
          @DataContent = datacontent
          @DataSource = datasource
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
          @Remark = remark
          @CreateTime = createtime
          @UpdateTime = updatetime
          @EncryptDataContent = encryptdatacontent
        end

        def deserialize(params)
          @NameListDataId = params['NameListDataId']
          @NameListId = params['NameListId']
          @DataContent = params['DataContent']
          @DataSource = params['DataSource']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          @Remark = params['Remark']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @EncryptDataContent = params['EncryptDataContent']
        end
      end

      # 查询黑白名单数据出参
      class OutputDescribeDataListFrontData < TencentCloud::Common::AbstractModel
        # @param Code: 错误码，0 表示成功，非0表示失败错误码。 0：成功 1002：参数错误 4300：未开通服务 6000：系统内部错误
        # @type Code: Integer
        # @param Message: 错误信息
        # @type Message: String
        # @param Value: 黑白名单数据信息
        # @type Value: :class:`Tencentcloud::Rce.v20201103.models.OuntputDescribeDataListInfo`

        attr_accessor :Code, :Message, :Value

        def initialize(code=nil, message=nil, value=nil)
          @Code = code
          @Message = message
          @Value = value
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          unless params['Value'].nil?
            @Value = OuntputDescribeDataListInfo.new
            @Value.deserialize(params['Value'])
          end
        end
      end

      # 黑白名单详情出参
      class OutputDescribeNameListDetail < TencentCloud::Common::AbstractModel
        # @param NameListId: 名单ID
        # @type NameListId: Integer
        # @param ListName: 名单名称
        # @type ListName: String
        # @param ListType: 名单类型 [1 黑名单 2 白名单]
        # @type ListType: Integer
        # @param DataType: 数据类型[1 手机号 2 qqOpenId 3 2echatOpenId 4 ip 6 idfa 7 imei]
        # @type DataType: Integer
        # @param SceneCode: 场景Code
        # @type SceneCode: String
        # @param Status: 名单列表状态 [1 启用 2 停用]
        # @type Status: Integer
        # @param Remark: 描述
        # @type Remark: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param EncryptionType: 加密类型 [0 无需加密，1 MD5加密，2 SHA256加密]
        # @type EncryptionType: Integer

        attr_accessor :NameListId, :ListName, :ListType, :DataType, :SceneCode, :Status, :Remark, :CreateTime, :UpdateTime, :EncryptionType

        def initialize(namelistid=nil, listname=nil, listtype=nil, datatype=nil, scenecode=nil, status=nil, remark=nil, createtime=nil, updatetime=nil, encryptiontype=nil)
          @NameListId = namelistid
          @ListName = listname
          @ListType = listtype
          @DataType = datatype
          @SceneCode = scenecode
          @Status = status
          @Remark = remark
          @CreateTime = createtime
          @UpdateTime = updatetime
          @EncryptionType = encryptiontype
        end

        def deserialize(params)
          @NameListId = params['NameListId']
          @ListName = params['ListName']
          @ListType = params['ListType']
          @DataType = params['DataType']
          @SceneCode = params['SceneCode']
          @Status = params['Status']
          @Remark = params['Remark']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @EncryptionType = params['EncryptionType']
        end
      end

      # 查询列表详情出参
      class OutputDescribeNameListDetailFront < TencentCloud::Common::AbstractModel
        # @param Code: 错误码，0 表示成功，非0表示失败错误码。 0：成功 1002：参数错误 4300：未开通服务 6000：系统内部错误
        # @type Code: Integer
        # @param Message: 错误信息
        # @type Message: String
        # @param Value: 列表详情信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: :class:`Tencentcloud::Rce.v20201103.models.OutputDescribeNameListDetail`

        attr_accessor :Code, :Message, :Value

        def initialize(code=nil, message=nil, value=nil)
          @Code = code
          @Message = message
          @Value = value
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          unless params['Value'].nil?
            @Value = OutputDescribeNameListDetail.new
            @Value.deserialize(params['Value'])
          end
        end
      end

      # 黑白名单信息
      class OutputDescribeNameListFrontFix < TencentCloud::Common::AbstractModel
        # @param NameListId: 名单ID
        # @type NameListId: Integer
        # @param ListName: 名单名称
        # @type ListName: String
        # @param ListType: 名单类型 [1 黑名单 2 白名单]
        # @type ListType: Integer
        # @param DataType: 数据类型[1 手机号 2 qqOpenId 3 2echatOpenId 4 ip 6 idfa 7 imei]
        # @type DataType: Integer
        # @param Status: 记录状态 [1 启用 2 停用]
        # @type Status: Integer
        # @param Remark: 描述
        # @type Remark: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param EffectCount: 有效数据/数据总数
        # @type EffectCount: String
        # @param EncryptionType: 加密类型[0 无需加密 1 MD5加密 2 SHA256加密]
        # @type EncryptionType: Integer
        # @param SceneCode: 场景Code，all_scene代表全部场景
        # @type SceneCode: String

        attr_accessor :NameListId, :ListName, :ListType, :DataType, :Status, :Remark, :CreateTime, :UpdateTime, :EffectCount, :EncryptionType, :SceneCode

        def initialize(namelistid=nil, listname=nil, listtype=nil, datatype=nil, status=nil, remark=nil, createtime=nil, updatetime=nil, effectcount=nil, encryptiontype=nil, scenecode=nil)
          @NameListId = namelistid
          @ListName = listname
          @ListType = listtype
          @DataType = datatype
          @Status = status
          @Remark = remark
          @CreateTime = createtime
          @UpdateTime = updatetime
          @EffectCount = effectcount
          @EncryptionType = encryptiontype
          @SceneCode = scenecode
        end

        def deserialize(params)
          @NameListId = params['NameListId']
          @ListName = params['ListName']
          @ListType = params['ListType']
          @DataType = params['DataType']
          @Status = params['Status']
          @Remark = params['Remark']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @EffectCount = params['EffectCount']
          @EncryptionType = params['EncryptionType']
          @SceneCode = params['SceneCode']
        end
      end

      # 查询黑白名单出参
      class OutputDescribeNameListFrontFixListData < TencentCloud::Common::AbstractModel
        # @param Code: 错误码，0 表示成功，非0表示失败错误码。 0：成功 1002：参数错误 4300：未开通服务 6000：系统内部错误
        # @type Code: Integer
        # @param Message: 错误信息
        # @type Message: String
        # @param Value: 黑白名单列表信息
        # @type Value: :class:`Tencentcloud::Rce.v20201103.models.OutputDescribeNameListInfo`

        attr_accessor :Code, :Message, :Value

        def initialize(code=nil, message=nil, value=nil)
          @Code = code
          @Message = message
          @Value = value
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          unless params['Value'].nil?
            @Value = OutputDescribeNameListInfo.new
            @Value.deserialize(params['Value'])
          end
        end
      end

      # 黑白名单信息
      class OutputDescribeNameListInfo < TencentCloud::Common::AbstractModel
        # @param Count: 总数
        # @type Count: Integer
        # @param List: 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array

        attr_accessor :Count, :List

        def initialize(count=nil, list=nil)
          @Count = count
          @List = list
        end

        def deserialize(params)
          @Count = params['Count']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              outputdescribenamelistfrontfix_tmp = OutputDescribeNameListFrontFix.new
              outputdescribenamelistfrontfix_tmp.deserialize(i)
              @List << outputdescribenamelistfrontfix_tmp
            end
          end
        end
      end

      # 预付费 后付费 总数显示接口出参
      class OutputDescribeUserUsageCnt < TencentCloud::Common::AbstractModel
        # @param PayMode: 当前付费模式，0 后付费 1 预付费
        # @type PayMode: Integer
        # @param AfterPayModeThisMonthUsedCnt: 后付费本月使用量
        # @type AfterPayModeThisMonthUsedCnt: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ExpireTime: 超出时间
        # @type ExpireTime: String
        # @param AfterPayModeLastMonthUsedCnt: 后付费上月使用量
        # @type AfterPayModeLastMonthUsedCnt: Integer
        # @param BeforePayModeTotalUsedCnt: 预付费总量
        # @type BeforePayModeTotalUsedCnt: Integer
        # @param BeforePayModeRemainUsedCnt: 预付费剩余用量
        # @type BeforePayModeRemainUsedCnt: Integer

        attr_accessor :PayMode, :AfterPayModeThisMonthUsedCnt, :CreateTime, :ExpireTime, :AfterPayModeLastMonthUsedCnt, :BeforePayModeTotalUsedCnt, :BeforePayModeRemainUsedCnt

        def initialize(paymode=nil, afterpaymodethismonthusedcnt=nil, createtime=nil, expiretime=nil, afterpaymodelastmonthusedcnt=nil, beforepaymodetotalusedcnt=nil, beforepaymoderemainusedcnt=nil)
          @PayMode = paymode
          @AfterPayModeThisMonthUsedCnt = afterpaymodethismonthusedcnt
          @CreateTime = createtime
          @ExpireTime = expiretime
          @AfterPayModeLastMonthUsedCnt = afterpaymodelastmonthusedcnt
          @BeforePayModeTotalUsedCnt = beforepaymodetotalusedcnt
          @BeforePayModeRemainUsedCnt = beforepaymoderemainusedcnt
        end

        def deserialize(params)
          @PayMode = params['PayMode']
          @AfterPayModeThisMonthUsedCnt = params['AfterPayModeThisMonthUsedCnt']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
          @AfterPayModeLastMonthUsedCnt = params['AfterPayModeLastMonthUsedCnt']
          @BeforePayModeTotalUsedCnt = params['BeforePayModeTotalUsedCnt']
          @BeforePayModeRemainUsedCnt = params['BeforePayModeRemainUsedCnt']
        end
      end

      # RCE控制台预付费和后付费次数展示出参数据
      class OutputDescribeUserUsageCntData < TencentCloud::Common::AbstractModel
        # @param Code: 错误码，0 表示成功，非0表示失败错误码。 0：成功 4300：未开通服务
        # @type Code: Integer
        # @param Message: 错误信息
        # @type Message: String
        # @param Value: 业务详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: :class:`Tencentcloud::Rce.v20201103.models.OutputDescribeUserUsageCnt`

        attr_accessor :Code, :Message, :Value

        def initialize(code=nil, message=nil, value=nil)
          @Code = code
          @Message = message
          @Value = value
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          unless params['Value'].nil?
            @Value = OutputDescribeUserUsageCnt.new
            @Value.deserialize(params['Value'])
          end
        end
      end

      # 添加黑白名单数据出参
      class OutputImportNameListDataFront < TencentCloud::Common::AbstractModel
        # @param Code: 错误码，0 表示成功，非0表示失败错误码。 0：成功 1002：参数错误 4300：未开通服务 6000：系统内部错误
        # @type Code: Integer
        # @param Message: 错误信息
        # @type Message: String
        # @param Value: 空数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: Array

        attr_accessor :Code, :Message, :Value

        def initialize(code=nil, message=nil, value=nil)
          @Code = code
          @Message = message
          @Value = value
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          @Value = params['Value']
        end
      end

      # 全栈式风控引擎出参
      class OutputManageMarketingRisk < TencentCloud::Common::AbstractModel
        # @param Code: 错误码，0 表示成功，非0表示失败错误码。
        # 0：成功
        # 1：错误
        # 1002：参数错误
        # 4300：未开通服务
        # 4301：后端未创建对应产品
        # @type Code: Integer
        # @param Message: UTF-8编码，出错消息。
        # @type Message: String
        # @param Value: 业务详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: :class:`Tencentcloud::Rce.v20201103.models.OutputManageMarketingRiskValue`
        # @param UUid: 控制台显示的req_id。
        # @type UUid: String

        attr_accessor :Code, :Message, :Value, :UUid

        def initialize(code=nil, message=nil, value=nil, uuid=nil)
          @Code = code
          @Message = message
          @Value = value
          @UUid = uuid
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          unless params['Value'].nil?
            @Value = OutputManageMarketingRiskValue.new
            @Value.deserialize(params['Value'])
          end
          @UUid = params['UUid']
        end
      end

      # 全栈式风控引擎出参值
      class OutputManageMarketingRiskValue < TencentCloud::Common::AbstractModel
        # @param UserId: 账号ID：对应输入参数。
        # 当AccountType为1时，对应QQ的OpenId；
        # 当AccountType为2时，对应微信的OpenId/UnionId；
        # 当AccountType为10004时，对应手机号的MD5值；
        # 当AccountType为10005时，对应手机号的SHA256值。
        # @type UserId: String
        # @param PostTime: 操作时间戳，单位秒（对应输入参数）。
        # @type PostTime: Integer
        # @param AssociateAccount: 业务预留参数（暂无实际业务含义， 无需关注返回值）
        # @type AssociateAccount: String
        # @param UserIp: 操作来源的外网IP（对应输入参数）。
        # @type UserIp: String
        # @param RiskLevel: 风险等级
        # pass：无恶意
        # review：低风险，需要人工审核
        # reject：高风险，建议拦截
        # @type RiskLevel: String
        # @param RiskType: 风险类型，可能同时命中多个风险类型
        # 1: 账号信用低，账号近期存在因恶意被处罚历史，网络低活跃，被举报等因素。
        # 11: 疑似低活跃账号，账号活跃度与正常用户有差异。
        # 2: 垃圾账号，疑似批量注册小号，近期存在严重违规或大量举报。
        # 21: 疑似小号，账号有疑似线上养号，小号等行为。
        # 22: 疑似违规账号，账号曾有违规行为、曾被举报过、曾因违规被处罚过等。
        # 3: 无效账号，送检账号参数无法成功解析，请检查微信 OpenId 是否有误/AppId 与 QQ OpenId 无法关联/微信 OpenId 权限是否开通/手机号是否为中国大陆手机号；
        # 4: 黑名单，该账号在业务侧有过拉黑记录。
        # 5: 白名单，业务自行有添加过白名单记录。
        # 101: 批量操作，存在 IP/设备/环境等因素的聚集性异常。
        # 1011: 疑似 IP 属性聚集，出现 IP 聚集。
        # 1012: 疑似设备属性聚集，出现设备聚集。
        # 102: 自动机，疑似自动机批量请求。
        # 103: 恶意行为-网赚，疑似网赚。
        # 104: 微信登录态无效，检查 WeChatAccessToken 参数，是否已经失效。
        # 201: 环境风险，环境异常操作 IP/设备/环境存在异常。当前 IP 为非常用 IP 或恶意 IP 段。
        # 2011: 疑似非常用IP，请求当前请求 IP 非该账号常用 IP。
        # 2012: 疑似 IP 异常，使用 IDC 机房 IP 或使用代理 IP 或使用恶意 IP 等。
        # 205: 非公网有效 IP，传进来的 IP 地址为内网 IP 地址或者 IP 保留地址。
        # @type RiskType: Array
        # @param ConstId: 设备指纹ID，如果集成了设备指纹，并传入了正确的DeviceToken和Platform，该字段正常输出；如果DeviceToken异常（校验不通过），则会在RiskType中返回"-1"标签，ConstId字段为空；如果没有集成设备指纹ConstId字段默认为空。
        # @type ConstId: String
        # @param RiskInformation: 风险扩展数据。
        # @type RiskInformation: String

        attr_accessor :UserId, :PostTime, :AssociateAccount, :UserIp, :RiskLevel, :RiskType, :ConstId, :RiskInformation

        def initialize(userid=nil, posttime=nil, associateaccount=nil, userip=nil, risklevel=nil, risktype=nil, constid=nil, riskinformation=nil)
          @UserId = userid
          @PostTime = posttime
          @AssociateAccount = associateaccount
          @UserIp = userip
          @RiskLevel = risklevel
          @RiskType = risktype
          @ConstId = constid
          @RiskInformation = riskinformation
        end

        def deserialize(params)
          @UserId = params['UserId']
          @PostTime = params['PostTime']
          @AssociateAccount = params['AssociateAccount']
          @UserIp = params['UserIp']
          @RiskLevel = params['RiskLevel']
          @RiskType = params['RiskType']
          @ConstId = params['ConstId']
          @RiskInformation = params['RiskInformation']
        end
      end

      # 修改黑白名单出参
      class OutputModifyNameFront < TencentCloud::Common::AbstractModel
        # @param Code: 错误码，0 表示成功，非0表示失败错误码。 0：成功 1002：参数错误 4300：未开通服务 6000：系统内部错误
        # @type Code: Integer
        # @param Message: 错误信息
        # @type Message: String
        # @param Value: 空数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: Array

        attr_accessor :Code, :Message, :Value

        def initialize(code=nil, message=nil, value=nil)
          @Code = code
          @Message = message
          @Value = value
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          @Value = params['Value']
        end
      end

      # 修改黑白名单数据出参
      class OutputModifyNameListFront < TencentCloud::Common::AbstractModel
        # @param Code: 错误码，0 表示成功，非0表示失败错误码。 0：成功 1002：参数错误 4300：未开通服务 6000：系统内部错误
        # @type Code: Integer
        # @param Message: 错误信息
        # @type Message: String
        # @param Value: 空数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: Array

        attr_accessor :Code, :Message, :Value

        def initialize(code=nil, message=nil, value=nil)
          @Code = code
          @Message = message
          @Value = value
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          @Value = params['Value']
        end
      end

      # QQ账号信息。
      class QQAccountInfo < TencentCloud::Common::AbstractModel
        # @param QQOpenId: QQ的OpenId。
        # @type QQOpenId: String
        # @param AppIdUser: QQ分配给网站或应用的AppId，用来唯一标识网站或应用。
        # @type AppIdUser: String
        # @param AssociateAccount: 用于标识QQ用户登录后所关联业务自身的账号ID。
        # @type AssociateAccount: String
        # @param MobilePhone: 账号绑定的MD5或SHA256加密的手机号。
        # 注释：支持标准中国大陆11位手机号MD5加密后位的32位小写字符串；
        #      支持标准中国大陆11位手机号SHA256加密后位的64位小写字符串。
        # @type MobilePhone: String
        # @param DeviceId: 用户设备号（已不推荐使用）。
        # @type DeviceId: String

        attr_accessor :QQOpenId, :AppIdUser, :AssociateAccount, :MobilePhone, :DeviceId

        def initialize(qqopenid=nil, appiduser=nil, associateaccount=nil, mobilephone=nil, deviceid=nil)
          @QQOpenId = qqopenid
          @AppIdUser = appiduser
          @AssociateAccount = associateaccount
          @MobilePhone = mobilephone
          @DeviceId = deviceid
        end

        def deserialize(params)
          @QQOpenId = params['QQOpenId']
          @AppIdUser = params['AppIdUser']
          @AssociateAccount = params['AssociateAccount']
          @MobilePhone = params['MobilePhone']
          @DeviceId = params['DeviceId']
        end
      end

      # 网赚防刷相关参数
      class SponsorInfo < TencentCloud::Common::AbstractModel
        # @param SponsorOpenId: 助力场景建议填写：活动发起人微信OpenId。
        # @type SponsorOpenId: String
        # @param SponsorDeviceNumber: 助力场景建议填写：发起人设备号
        # @type SponsorDeviceNumber: String
        # @param SponsorPhone: 助力场景建议填写：发起人的MD5手机号
        # @type SponsorPhone: String
        # @param SponsorIp: 助力场景建议填写：发起人IP
        # @type SponsorIp: String
        # @param CampaignUrl: 助力场景建议填写：活动链接
        # @type CampaignUrl: String

        attr_accessor :SponsorOpenId, :SponsorDeviceNumber, :SponsorPhone, :SponsorIp, :CampaignUrl

        def initialize(sponsoropenid=nil, sponsordevicenumber=nil, sponsorphone=nil, sponsorip=nil, campaignurl=nil)
          @SponsorOpenId = sponsoropenid
          @SponsorDeviceNumber = sponsordevicenumber
          @SponsorPhone = sponsorphone
          @SponsorIp = sponsorip
          @CampaignUrl = campaignurl
        end

        def deserialize(params)
          @SponsorOpenId = params['SponsorOpenId']
          @SponsorDeviceNumber = params['SponsorDeviceNumber']
          @SponsorPhone = params['SponsorPhone']
          @SponsorIp = params['SponsorIp']
          @CampaignUrl = params['CampaignUrl']
        end
      end

      # 微信账号信息。
      class WeChatAccountInfo < TencentCloud::Common::AbstractModel
        # @param WeChatOpenId: 微信的OpenId/UnionId。
        # @type WeChatOpenId: String
        # @param WeChatSubType: 微信开放账号类型：
        # 1：微信公众号/微信第三方登录。
        # 2：微信小程序。
        # @type WeChatSubType: Integer
        # @param RandStr: 随机串。如果WeChatSubType是2，该字段必填。Token签名随机数，建议16个字符。
        # @type RandStr: String
        # @param WeChatAccessToken: 如果WeChatSubType 是1，填入授权的 access_token（注意：不是普通 access_token，详情请参阅官方说明文档。获取网页版本的 access_token 时，scope 字段必需填写snsapi_userinfo
        # 如果WeChatSubType是2，填入以session_key 为密钥签名随机数RandStr（hmac_sha256签名算法）得到的字符串。
        # @type WeChatAccessToken: String
        # @param AssociateAccount: 用于标识微信用户登录后所关联业务自身的账号ID。
        # @type AssociateAccount: String
        # @param MobilePhone: 账号绑定的MD5或SHA256加密的手机号。
        # 注释：支持标准中国大陆11位手机号MD5加密后位的32位小写字符串；
        #      支持标准中国大陆11位手机号SHA256加密后位的64位小写字符串。
        # @type MobilePhone: String
        # @param DeviceId: 用户设备号（已不推荐使用）。
        # @type DeviceId: String

        attr_accessor :WeChatOpenId, :WeChatSubType, :RandStr, :WeChatAccessToken, :AssociateAccount, :MobilePhone, :DeviceId

        def initialize(wechatopenid=nil, wechatsubtype=nil, randstr=nil, wechataccesstoken=nil, associateaccount=nil, mobilephone=nil, deviceid=nil)
          @WeChatOpenId = wechatopenid
          @WeChatSubType = wechatsubtype
          @RandStr = randstr
          @WeChatAccessToken = wechataccesstoken
          @AssociateAccount = associateaccount
          @MobilePhone = mobilephone
          @DeviceId = deviceid
        end

        def deserialize(params)
          @WeChatOpenId = params['WeChatOpenId']
          @WeChatSubType = params['WeChatSubType']
          @RandStr = params['RandStr']
          @WeChatAccessToken = params['WeChatAccessToken']
          @AssociateAccount = params['AssociateAccount']
          @MobilePhone = params['MobilePhone']
          @DeviceId = params['DeviceId']
        end
      end

    end
  end
end

