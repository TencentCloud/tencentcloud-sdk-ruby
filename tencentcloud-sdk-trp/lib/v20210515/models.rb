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
  module Trp
    module V20210515
      # 上链数据
      class ChainData < TencentCloud::Common::AbstractModel
        # @param BlockHash: 区块hash
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BlockHash: String
        # @param BlockHeight: 区块高度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BlockHeight: String
        # @param BlockTime: 区块时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BlockTime: String

        attr_accessor :BlockHash, :BlockHeight, :BlockTime
        
        def initialize(blockhash=nil, blockheight=nil, blocktime=nil)
          @BlockHash = blockhash
          @BlockHeight = blockheight
          @BlockTime = blocktime
        end

        def deserialize(params)
          @BlockHash = params['BlockHash']
          @BlockHeight = params['BlockHeight']
          @BlockTime = params['BlockTime']
        end
      end

      # 批次
      class CodeBatch < TencentCloud::Common::AbstractModel
        # @param BatchId: 批次号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchId: String
        # @param CorpId: 企业ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CorpId: Integer
        # @param BatchCode: 批次编码(未使用)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchCode: String
        # @param CodeCnt: 码数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeCnt: Integer
        # @param MerchantId: 所属商户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MerchantId: String
        # @param ProductId: 产品ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductId: String
        # @param BatchType: 批次类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchType: Integer
        # @param Remark: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param MpTpl: 微信模板
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MpTpl: String
        # @param Status: 批次状态 0: 未激活 1: 已激活 -1: 已冻结
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param MerchantName: 所属商户名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MerchantName: String
        # @param ProductName: 产品名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductName: String
        # @param Ext: 未使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ext: :class:`Tencentcloud::Trp.v20210515.models.Ext`
        # @param TplName: 模板名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TplName: String
        # @param Job: 调度任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Job: :class:`Tencentcloud::Trp.v20210515.models.Job`

        attr_accessor :BatchId, :CorpId, :BatchCode, :CodeCnt, :MerchantId, :ProductId, :BatchType, :Remark, :MpTpl, :Status, :CreateTime, :UpdateTime, :MerchantName, :ProductName, :Ext, :TplName, :Job
        
        def initialize(batchid=nil, corpid=nil, batchcode=nil, codecnt=nil, merchantid=nil, productid=nil, batchtype=nil, remark=nil, mptpl=nil, status=nil, createtime=nil, updatetime=nil, merchantname=nil, productname=nil, ext=nil, tplname=nil, job=nil)
          @BatchId = batchid
          @CorpId = corpid
          @BatchCode = batchcode
          @CodeCnt = codecnt
          @MerchantId = merchantid
          @ProductId = productid
          @BatchType = batchtype
          @Remark = remark
          @MpTpl = mptpl
          @Status = status
          @CreateTime = createtime
          @UpdateTime = updatetime
          @MerchantName = merchantname
          @ProductName = productname
          @Ext = ext
          @TplName = tplname
          @Job = job
        end

        def deserialize(params)
          @BatchId = params['BatchId']
          @CorpId = params['CorpId']
          @BatchCode = params['BatchCode']
          @CodeCnt = params['CodeCnt']
          @MerchantId = params['MerchantId']
          @ProductId = params['ProductId']
          @BatchType = params['BatchType']
          @Remark = params['Remark']
          @MpTpl = params['MpTpl']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @MerchantName = params['MerchantName']
          @ProductName = params['ProductName']
          unless params['Ext'].nil?
            @Ext = Ext.new
            @Ext.deserialize(params['Ext'])
          end
          @TplName = params['TplName']
          unless params['Job'].nil?
            @Job = Job.new
            @Job.deserialize(params['Job'])
          end
        end
      end

      # 码类型
      class CodeItem < TencentCloud::Common::AbstractModel
        # @param Code: 无
        # @type Code: String

        attr_accessor :Code
        
        def initialize(code=nil)
          @Code = code
        end

        def deserialize(params)
          @Code = params['Code']
        end
      end

      # 码包类型
      class CodePack < TencentCloud::Common::AbstractModel
        # @param PackId: 码id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackId: String
        # @param CorpId: 企业id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CorpId: Integer
        # @param MerchantId: 商户id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MerchantId: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param Status: 制码状态 init: 初始化, pending: 执行中, done: 完成, error: 失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Log: 执行日志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Log: String
        # @param CreateUser: 创建人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUser: String
        # @param Amount: 码数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Amount: Integer
        # @param CodeLength: 码长度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeLength: Integer
        # @param CodeType: 码类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeType: String
        # @param Cipher: 是否暗码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cipher: Integer
        # @param TextUrl: [弃用] 文字码地址，通过另一个接口查
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TextUrl: String
        # @param PackUrl: [弃用] 二维码地址，通过另一个接口查
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackUrl: String
        # @param MerchantName: 商户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MerchantName: String
        # @param RuleType: 码规则类型 0: 默认, 1: 自定义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleType: Integer
        # @param CustomId: 自定义码规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomId: String
        # @param PackType: 码包类型 0: 普通码包 1: 层级码包
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackType: Integer
        # @param PackLevel: 生码层级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackLevel: Integer
        # @param PackSpec: 层级码配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackSpec: Array

        attr_accessor :PackId, :CorpId, :MerchantId, :CreateTime, :UpdateTime, :Status, :Log, :CreateUser, :Amount, :CodeLength, :CodeType, :Cipher, :TextUrl, :PackUrl, :MerchantName, :RuleType, :CustomId, :PackType, :PackLevel, :PackSpec
        
        def initialize(packid=nil, corpid=nil, merchantid=nil, createtime=nil, updatetime=nil, status=nil, log=nil, createuser=nil, amount=nil, codelength=nil, codetype=nil, cipher=nil, texturl=nil, packurl=nil, merchantname=nil, ruletype=nil, customid=nil, packtype=nil, packlevel=nil, packspec=nil)
          @PackId = packid
          @CorpId = corpid
          @MerchantId = merchantid
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Status = status
          @Log = log
          @CreateUser = createuser
          @Amount = amount
          @CodeLength = codelength
          @CodeType = codetype
          @Cipher = cipher
          @TextUrl = texturl
          @PackUrl = packurl
          @MerchantName = merchantname
          @RuleType = ruletype
          @CustomId = customid
          @PackType = packtype
          @PackLevel = packlevel
          @PackSpec = packspec
        end

        def deserialize(params)
          @PackId = params['PackId']
          @CorpId = params['CorpId']
          @MerchantId = params['MerchantId']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Status = params['Status']
          @Log = params['Log']
          @CreateUser = params['CreateUser']
          @Amount = params['Amount']
          @CodeLength = params['CodeLength']
          @CodeType = params['CodeType']
          @Cipher = params['Cipher']
          @TextUrl = params['TextUrl']
          @PackUrl = params['PackUrl']
          @MerchantName = params['MerchantName']
          @RuleType = params['RuleType']
          @CustomId = params['CustomId']
          @PackType = params['PackType']
          @PackLevel = params['PackLevel']
          unless params['PackSpec'].nil?
            @PackSpec = []
            params['PackSpec'].each do |i|
              packspec_tmp = PackSpec.new
              packspec_tmp.deserialize(i)
              @PackSpec << packspec_tmp
            end
          end
        end
      end

      # 码段配置
      class CodePart < TencentCloud::Common::AbstractModel
        # @param Name: 码段名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Type: 码段类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Value: 码段内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Length: 码段长度
        # @type Length: Integer
        # @param Ext: 扩展字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ext: String

        attr_accessor :Name, :Type, :Value, :Length, :Ext
        
        def initialize(name=nil, type=nil, value=nil, length=nil, ext=nil)
          @Name = name
          @Type = type
          @Value = value
          @Length = length
          @Ext = ext
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @Value = params['Value']
          @Length = params['Length']
          @Ext = params['Ext']
        end
      end

      # CreateCodeBatch请求参数结构体
      class CreateCodeBatchRequest < TencentCloud::Common::AbstractModel
        # @param CorpId: 企业ID
        # @type CorpId: Integer
        # @param MerchantId: 商户ID
        # @type MerchantId: String
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param BatchType: 批次类型 0:溯源 1:营销
        # @type BatchType: Integer
        # @param BatchId: 批次ID，系统自动生成
        # @type BatchId: String
        # @param Remark: 备注
        # @type Remark: String
        # @param MpTpl: 模版ID，或者活动ID
        # @type MpTpl: String
        # @param CloneId: 克隆批次ID，同时会复制溯源信息
        # @type CloneId: String

        attr_accessor :CorpId, :MerchantId, :ProductId, :BatchType, :BatchId, :Remark, :MpTpl, :CloneId
        
        def initialize(corpid=nil, merchantid=nil, productid=nil, batchtype=nil, batchid=nil, remark=nil, mptpl=nil, cloneid=nil)
          @CorpId = corpid
          @MerchantId = merchantid
          @ProductId = productid
          @BatchType = batchtype
          @BatchId = batchid
          @Remark = remark
          @MpTpl = mptpl
          @CloneId = cloneid
        end

        def deserialize(params)
          @CorpId = params['CorpId']
          @MerchantId = params['MerchantId']
          @ProductId = params['ProductId']
          @BatchType = params['BatchType']
          @BatchId = params['BatchId']
          @Remark = params['Remark']
          @MpTpl = params['MpTpl']
          @CloneId = params['CloneId']
        end
      end

      # CreateCodeBatch返回参数结构体
      class CreateCodeBatchResponse < TencentCloud::Common::AbstractModel
        # @param BatchId: 批次ID
        # @type BatchId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BatchId, :RequestId
        
        def initialize(batchid=nil, requestid=nil)
          @BatchId = batchid
          @RequestId = requestid
        end

        def deserialize(params)
          @BatchId = params['BatchId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCodePack请求参数结构体
      class CreateCodePackRequest < TencentCloud::Common::AbstractModel
        # @param MerchantId: 商户ID
        # @type MerchantId: String
        # @param CodeLength: 码长度
        # @type CodeLength: Integer
        # @param CodeType: 码类型 alphabet 字母, number 数字, mixin 混合
        # @type CodeType: String
        # @param Amount: 生码数量 普通码包时必填
        # @type Amount: Integer
        # @param CorpId: 企业ID
        # @type CorpId: Integer
        # @param PackType: 码包类型 0: 普通码包 1: 层级码包
        # @type PackType: Integer
        # @param PackLevel: 码包层级
        # @type PackLevel: Integer
        # @param PackSpec: 码包规格
        # @type PackSpec: Array

        attr_accessor :MerchantId, :CodeLength, :CodeType, :Amount, :CorpId, :PackType, :PackLevel, :PackSpec
        
        def initialize(merchantid=nil, codelength=nil, codetype=nil, amount=nil, corpid=nil, packtype=nil, packlevel=nil, packspec=nil)
          @MerchantId = merchantid
          @CodeLength = codelength
          @CodeType = codetype
          @Amount = amount
          @CorpId = corpid
          @PackType = packtype
          @PackLevel = packlevel
          @PackSpec = packspec
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          @CodeLength = params['CodeLength']
          @CodeType = params['CodeType']
          @Amount = params['Amount']
          @CorpId = params['CorpId']
          @PackType = params['PackType']
          @PackLevel = params['PackLevel']
          unless params['PackSpec'].nil?
            @PackSpec = []
            params['PackSpec'].each do |i|
              packspec_tmp = PackSpec.new
              packspec_tmp.deserialize(i)
              @PackSpec << packspec_tmp
            end
          end
        end
      end

      # CreateCodePack返回参数结构体
      class CreateCodePackResponse < TencentCloud::Common::AbstractModel
        # @param PackId: 码包ID
        # @type PackId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PackId, :RequestId
        
        def initialize(packid=nil, requestid=nil)
          @PackId = packid
          @RequestId = requestid
        end

        def deserialize(params)
          @PackId = params['PackId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCorporationOrder请求参数结构体
      class CreateCorporationOrderRequest < TencentCloud::Common::AbstractModel
        # @param CorpName: 企业名称
        # @type CorpName: String
        # @param Owner: 所有者ID
        # @type Owner: String
        # @param CodeQuota: 溯源码额度
        # @type CodeQuota: Integer
        # @param ExpireTime: 额度过期时间
        # @type ExpireTime: String
        # @param Amount: 金额
        # @type Amount: Integer
        # @param CorpId: 企业ID
        # @type CorpId: Integer
        # @param ContactPerson: 联系人
        # @type ContactPerson: String
        # @param ContactNumber: 联系电话
        # @type ContactNumber: String
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :CorpName, :Owner, :CodeQuota, :ExpireTime, :Amount, :CorpId, :ContactPerson, :ContactNumber, :Remark
        
        def initialize(corpname=nil, owner=nil, codequota=nil, expiretime=nil, amount=nil, corpid=nil, contactperson=nil, contactnumber=nil, remark=nil)
          @CorpName = corpname
          @Owner = owner
          @CodeQuota = codequota
          @ExpireTime = expiretime
          @Amount = amount
          @CorpId = corpid
          @ContactPerson = contactperson
          @ContactNumber = contactnumber
          @Remark = remark
        end

        def deserialize(params)
          @CorpName = params['CorpName']
          @Owner = params['Owner']
          @CodeQuota = params['CodeQuota']
          @ExpireTime = params['ExpireTime']
          @Amount = params['Amount']
          @CorpId = params['CorpId']
          @ContactPerson = params['ContactPerson']
          @ContactNumber = params['ContactNumber']
          @Remark = params['Remark']
        end
      end

      # CreateCorporationOrder返回参数结构体
      class CreateCorporationOrderResponse < TencentCloud::Common::AbstractModel
        # @param CorpId: 企业ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CorpId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CorpId, :RequestId
        
        def initialize(corpid=nil, requestid=nil)
          @CorpId = corpid
          @RequestId = requestid
        end

        def deserialize(params)
          @CorpId = params['CorpId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCustomPack请求参数结构体
      class CreateCustomPackRequest < TencentCloud::Common::AbstractModel
        # @param MerchantId: 商户ID
        # @type MerchantId: String
        # @param Amount: 生码数量, 普通码包时必填
        # @type Amount: Integer
        # @param CorpId: 企业ID
        # @type CorpId: Integer
        # @param PackType: 码包类型 0: 普通码包 1: 层级码包
        # @type PackType: Integer
        # @param PackLevel: 码包层级
        # @type PackLevel: Integer
        # @param PackSpec: 层级码包规则
        # @type PackSpec: Array
        # @param CustomId: 码规则ID,  和CodeParts二选一必填
        # @type CustomId: String
        # @param CodeParts: 码段配置，和CustomId二选一必填
        # @type CodeParts: Array

        attr_accessor :MerchantId, :Amount, :CorpId, :PackType, :PackLevel, :PackSpec, :CustomId, :CodeParts
        
        def initialize(merchantid=nil, amount=nil, corpid=nil, packtype=nil, packlevel=nil, packspec=nil, customid=nil, codeparts=nil)
          @MerchantId = merchantid
          @Amount = amount
          @CorpId = corpid
          @PackType = packtype
          @PackLevel = packlevel
          @PackSpec = packspec
          @CustomId = customid
          @CodeParts = codeparts
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          @Amount = params['Amount']
          @CorpId = params['CorpId']
          @PackType = params['PackType']
          @PackLevel = params['PackLevel']
          unless params['PackSpec'].nil?
            @PackSpec = []
            params['PackSpec'].each do |i|
              packspec_tmp = PackSpec.new
              packspec_tmp.deserialize(i)
              @PackSpec << packspec_tmp
            end
          end
          @CustomId = params['CustomId']
          unless params['CodeParts'].nil?
            @CodeParts = []
            params['CodeParts'].each do |i|
              codepart_tmp = CodePart.new
              codepart_tmp.deserialize(i)
              @CodeParts << codepart_tmp
            end
          end
        end
      end

      # CreateCustomPack返回参数结构体
      class CreateCustomPackResponse < TencentCloud::Common::AbstractModel
        # @param PackId: 码包ID
        # @type PackId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PackId, :RequestId
        
        def initialize(packid=nil, requestid=nil)
          @PackId = packid
          @RequestId = requestid
        end

        def deserialize(params)
          @PackId = params['PackId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCustomRule请求参数结构体
      class CreateCustomRuleRequest < TencentCloud::Common::AbstractModel
        # @param Name: 规则名称
        # @type Name: String
        # @param MerchantId: 商户ID
        # @type MerchantId: String
        # @param CodeLength: 码长度
        # @type CodeLength: Integer
        # @param CodeParts: 码段配置
        # @type CodeParts: Array
        # @param CorpId: 企业ID
        # @type CorpId: Integer

        attr_accessor :Name, :MerchantId, :CodeLength, :CodeParts, :CorpId
        
        def initialize(name=nil, merchantid=nil, codelength=nil, codeparts=nil, corpid=nil)
          @Name = name
          @MerchantId = merchantid
          @CodeLength = codelength
          @CodeParts = codeparts
          @CorpId = corpid
        end

        def deserialize(params)
          @Name = params['Name']
          @MerchantId = params['MerchantId']
          @CodeLength = params['CodeLength']
          unless params['CodeParts'].nil?
            @CodeParts = []
            params['CodeParts'].each do |i|
              codepart_tmp = CodePart.new
              codepart_tmp.deserialize(i)
              @CodeParts << codepart_tmp
            end
          end
          @CorpId = params['CorpId']
        end
      end

      # CreateCustomRule返回参数结构体
      class CreateCustomRuleResponse < TencentCloud::Common::AbstractModel
        # @param CustomId: 码规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CustomId, :RequestId
        
        def initialize(customid=nil, requestid=nil)
          @CustomId = customid
          @RequestId = requestid
        end

        def deserialize(params)
          @CustomId = params['CustomId']
          @RequestId = params['RequestId']
        end
      end

      # CreateMerchant请求参数结构体
      class CreateMerchantRequest < TencentCloud::Common::AbstractModel
        # @param Name: 商户名称
        # @type Name: String
        # @param Remark: 备注
        # @type Remark: String
        # @param CorpId: 企业ID
        # @type CorpId: Integer
        # @param CodeType: 码包来源 0:自建, 1:第三发
        # @type CodeType: Integer
        # @param CodeUrl: 码包前缀地址 第三方码包时必填
        # @type CodeUrl: String

        attr_accessor :Name, :Remark, :CorpId, :CodeType, :CodeUrl
        
        def initialize(name=nil, remark=nil, corpid=nil, codetype=nil, codeurl=nil)
          @Name = name
          @Remark = remark
          @CorpId = corpid
          @CodeType = codetype
          @CodeUrl = codeurl
        end

        def deserialize(params)
          @Name = params['Name']
          @Remark = params['Remark']
          @CorpId = params['CorpId']
          @CodeType = params['CodeType']
          @CodeUrl = params['CodeUrl']
        end
      end

      # CreateMerchant返回参数结构体
      class CreateMerchantResponse < TencentCloud::Common::AbstractModel
        # @param MerchantId: 商户标识码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MerchantId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MerchantId, :RequestId
        
        def initialize(merchantid=nil, requestid=nil)
          @MerchantId = merchantid
          @RequestId = requestid
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          @RequestId = params['RequestId']
        end
      end

      # CreateProduct请求参数结构体
      class CreateProductRequest < TencentCloud::Common::AbstractModel
        # @param Name: 商品名称
        # @type Name: String
        # @param MerchantId: 商户ID
        # @type MerchantId: String
        # @param Remark: 备注
        # @type Remark: String
        # @param MerchantName: 商户名称
        # @type MerchantName: String
        # @param Specification: 商品规格
        # @type Specification: String
        # @param Logo: 商品图片
        # @type Logo: Array
        # @param CorpId: 企业ID
        # @type CorpId: Integer
        # @param Ext: 预留字段
        # @type Ext: :class:`Tencentcloud::Trp.v20210515.models.Ext`

        attr_accessor :Name, :MerchantId, :Remark, :MerchantName, :Specification, :Logo, :CorpId, :Ext
        
        def initialize(name=nil, merchantid=nil, remark=nil, merchantname=nil, specification=nil, logo=nil, corpid=nil, ext=nil)
          @Name = name
          @MerchantId = merchantid
          @Remark = remark
          @MerchantName = merchantname
          @Specification = specification
          @Logo = logo
          @CorpId = corpid
          @Ext = ext
        end

        def deserialize(params)
          @Name = params['Name']
          @MerchantId = params['MerchantId']
          @Remark = params['Remark']
          @MerchantName = params['MerchantName']
          @Specification = params['Specification']
          @Logo = params['Logo']
          @CorpId = params['CorpId']
          unless params['Ext'].nil?
            @Ext = Ext.new
            @Ext.deserialize(params['Ext'])
          end
        end
      end

      # CreateProduct返回参数结构体
      class CreateProductResponse < TencentCloud::Common::AbstractModel
        # @param ProductId: 商品ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProductId, :RequestId
        
        def initialize(productid=nil, requestid=nil)
          @ProductId = productid
          @RequestId = requestid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @RequestId = params['RequestId']
        end
      end

      # CreateTraceChain请求参数结构体
      class CreateTraceChainRequest < TencentCloud::Common::AbstractModel
        # @param CorpId: 企业ID
        # @type CorpId: Integer
        # @param TraceId: 溯源ID
        # @type TraceId: String

        attr_accessor :CorpId, :TraceId
        
        def initialize(corpid=nil, traceid=nil)
          @CorpId = corpid
          @TraceId = traceid
        end

        def deserialize(params)
          @CorpId = params['CorpId']
          @TraceId = params['TraceId']
        end
      end

      # CreateTraceChain返回参数结构体
      class CreateTraceChainResponse < TencentCloud::Common::AbstractModel
        # @param TraceId: 溯源ID
        # @type TraceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TraceId, :RequestId
        
        def initialize(traceid=nil, requestid=nil)
          @TraceId = traceid
          @RequestId = requestid
        end

        def deserialize(params)
          @TraceId = params['TraceId']
          @RequestId = params['RequestId']
        end
      end

      # CreateTraceCodesAsync请求参数结构体
      class CreateTraceCodesAsyncRequest < TencentCloud::Common::AbstractModel
        # @param CorpId: 企业ID
        # @type CorpId: Integer
        # @param BatchId: 批次ID
        # @type BatchId: String
        # @param FileKey: 上传文件Key，仅支持 csv 或者 zip 类型
        # @type FileKey: String

        attr_accessor :CorpId, :BatchId, :FileKey
        
        def initialize(corpid=nil, batchid=nil, filekey=nil)
          @CorpId = corpid
          @BatchId = batchid
          @FileKey = filekey
        end

        def deserialize(params)
          @CorpId = params['CorpId']
          @BatchId = params['BatchId']
          @FileKey = params['FileKey']
        end
      end

      # CreateTraceCodesAsync返回参数结构体
      class CreateTraceCodesAsyncResponse < TencentCloud::Common::AbstractModel
        # @param BatchId: 批次ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BatchId, :RequestId
        
        def initialize(batchid=nil, requestid=nil)
          @BatchId = batchid
          @RequestId = requestid
        end

        def deserialize(params)
          @BatchId = params['BatchId']
          @RequestId = params['RequestId']
        end
      end

      # CreateTraceCodes请求参数结构体
      class CreateTraceCodesRequest < TencentCloud::Common::AbstractModel
        # @param BatchId: 批次ID
        # @type BatchId: String
        # @param CorpId: 企业ID
        # @type CorpId: Integer
        # @param Codes: 码
        # @type Codes: Array

        attr_accessor :BatchId, :CorpId, :Codes
        
        def initialize(batchid=nil, corpid=nil, codes=nil)
          @BatchId = batchid
          @CorpId = corpid
          @Codes = codes
        end

        def deserialize(params)
          @BatchId = params['BatchId']
          @CorpId = params['CorpId']
          unless params['Codes'].nil?
            @Codes = []
            params['Codes'].each do |i|
              codeitem_tmp = CodeItem.new
              codeitem_tmp.deserialize(i)
              @Codes << codeitem_tmp
            end
          end
        end
      end

      # CreateTraceCodes返回参数结构体
      class CreateTraceCodesResponse < TencentCloud::Common::AbstractModel
        # @param BatchId: 批次ID
        # @type BatchId: String
        # @param ActiveCnt: 导入成功码数量
        # @type ActiveCnt: Integer
        # @param CodeCnt: 批次码数量
        # @type CodeCnt: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BatchId, :ActiveCnt, :CodeCnt, :RequestId
        
        def initialize(batchid=nil, activecnt=nil, codecnt=nil, requestid=nil)
          @BatchId = batchid
          @ActiveCnt = activecnt
          @CodeCnt = codecnt
          @RequestId = requestid
        end

        def deserialize(params)
          @BatchId = params['BatchId']
          @ActiveCnt = params['ActiveCnt']
          @CodeCnt = params['CodeCnt']
          @RequestId = params['RequestId']
        end
      end

      # CreateTraceData请求参数结构体
      class CreateTraceDataRequest < TencentCloud::Common::AbstractModel
        # @param CorpId: 企业ID
        # @type CorpId: Integer
        # @param BatchId: 批次ID
        # @type BatchId: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param Phase: 溯源阶段 0:商品 1:通用 2:生产溯源 3:销售溯源
        # @type Phase: Integer
        # @param PhaseName: 溯源阶段名称
        # @type PhaseName: String
        # @param ChainStatus: [无效] 上链状态
        # @type ChainStatus: Integer
        # @param Type: [无效] 码类型 0: 批次, 1: 码, 2: 生产任务, 3: 物流信息
        # @type Type: Integer
        # @param TraceId: [无效] 溯源ID
        # @type TraceId: String
        # @param TraceItems: 溯源信息
        # @type TraceItems: Array
        # @param Status: 溯源状态 0: 无效, 1: 有效
        # @type Status: Integer
        # @param PhaseData: 环节数据
        # @type PhaseData: :class:`Tencentcloud::Trp.v20210515.models.PhaseData`

        attr_accessor :CorpId, :BatchId, :TaskId, :Phase, :PhaseName, :ChainStatus, :Type, :TraceId, :TraceItems, :Status, :PhaseData
        
        def initialize(corpid=nil, batchid=nil, taskid=nil, phase=nil, phasename=nil, chainstatus=nil, type=nil, traceid=nil, traceitems=nil, status=nil, phasedata=nil)
          @CorpId = corpid
          @BatchId = batchid
          @TaskId = taskid
          @Phase = phase
          @PhaseName = phasename
          @ChainStatus = chainstatus
          @Type = type
          @TraceId = traceid
          @TraceItems = traceitems
          @Status = status
          @PhaseData = phasedata
        end

        def deserialize(params)
          @CorpId = params['CorpId']
          @BatchId = params['BatchId']
          @TaskId = params['TaskId']
          @Phase = params['Phase']
          @PhaseName = params['PhaseName']
          @ChainStatus = params['ChainStatus']
          @Type = params['Type']
          @TraceId = params['TraceId']
          unless params['TraceItems'].nil?
            @TraceItems = []
            params['TraceItems'].each do |i|
              traceitem_tmp = TraceItem.new
              traceitem_tmp.deserialize(i)
              @TraceItems << traceitem_tmp
            end
          end
          @Status = params['Status']
          unless params['PhaseData'].nil?
            @PhaseData = PhaseData.new
            @PhaseData.deserialize(params['PhaseData'])
          end
        end
      end

      # CreateTraceData返回参数结构体
      class CreateTraceDataResponse < TencentCloud::Common::AbstractModel
        # @param TraceId: 溯源ID
        # @type TraceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TraceId, :RequestId
        
        def initialize(traceid=nil, requestid=nil)
          @TraceId = traceid
          @RequestId = requestid
        end

        def deserialize(params)
          @TraceId = params['TraceId']
          @RequestId = params['RequestId']
        end
      end

      # 码规则
      class CustomRule < TencentCloud::Common::AbstractModel
        # @param CustomId: 码规则ID
        # @type CustomId: String
        # @param Name: 码规则名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param CorpId: 企业ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CorpId: Integer
        # @param MerchantId: 商户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MerchantId: String
        # @param CodeLength: 码ID长度
        # @type CodeLength: Integer
        # @param Status: 规则状态
        # @type Status: Integer
        # @param CodeParts: 码段配置
        # @type CodeParts: Array
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String

        attr_accessor :CustomId, :Name, :CorpId, :MerchantId, :CodeLength, :Status, :CodeParts, :CreateTime, :UpdateTime
        
        def initialize(customid=nil, name=nil, corpid=nil, merchantid=nil, codelength=nil, status=nil, codeparts=nil, createtime=nil, updatetime=nil)
          @CustomId = customid
          @Name = name
          @CorpId = corpid
          @MerchantId = merchantid
          @CodeLength = codelength
          @Status = status
          @CodeParts = codeparts
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @CustomId = params['CustomId']
          @Name = params['Name']
          @CorpId = params['CorpId']
          @MerchantId = params['MerchantId']
          @CodeLength = params['CodeLength']
          @Status = params['Status']
          unless params['CodeParts'].nil?
            @CodeParts = []
            params['CodeParts'].each do |i|
              codepart_tmp = CodePart.new
              codepart_tmp.deserialize(i)
              @CodeParts << codepart_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # DeleteCodeBatch请求参数结构体
      class DeleteCodeBatchRequest < TencentCloud::Common::AbstractModel
        # @param CorpId: 企业ID
        # @type CorpId: Integer
        # @param BatchId: 批次ID
        # @type BatchId: String

        attr_accessor :CorpId, :BatchId
        
        def initialize(corpid=nil, batchid=nil)
          @CorpId = corpid
          @BatchId = batchid
        end

        def deserialize(params)
          @CorpId = params['CorpId']
          @BatchId = params['BatchId']
        end
      end

      # DeleteCodeBatch返回参数结构体
      class DeleteCodeBatchResponse < TencentCloud::Common::AbstractModel
        # @param BatchId: 批次ID
        # @type BatchId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BatchId, :RequestId
        
        def initialize(batchid=nil, requestid=nil)
          @BatchId = batchid
          @RequestId = requestid
        end

        def deserialize(params)
          @BatchId = params['BatchId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteMerchant请求参数结构体
      class DeleteMerchantRequest < TencentCloud::Common::AbstractModel
        # @param MerchantId: 商户标识码
        # @type MerchantId: String
        # @param CorpId: 企业ID
        # @type CorpId: Integer

        attr_accessor :MerchantId, :CorpId
        
        def initialize(merchantid=nil, corpid=nil)
          @MerchantId = merchantid
          @CorpId = corpid
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          @CorpId = params['CorpId']
        end
      end

      # DeleteMerchant返回参数结构体
      class DeleteMerchantResponse < TencentCloud::Common::AbstractModel
        # @param MerchantId: 商户标识码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MerchantId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MerchantId, :RequestId
        
        def initialize(merchantid=nil, requestid=nil)
          @MerchantId = merchantid
          @RequestId = requestid
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteProduct请求参数结构体
      class DeleteProductRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 商品ID
        # @type ProductId: String
        # @param CorpId: 企业ID
        # @type CorpId: Integer

        attr_accessor :ProductId, :CorpId
        
        def initialize(productid=nil, corpid=nil)
          @ProductId = productid
          @CorpId = corpid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @CorpId = params['CorpId']
        end
      end

      # DeleteProduct返回参数结构体
      class DeleteProductResponse < TencentCloud::Common::AbstractModel
        # @param ProductId: 商品ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProductId, :RequestId
        
        def initialize(productid=nil, requestid=nil)
          @ProductId = productid
          @RequestId = requestid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteTraceData请求参数结构体
      class DeleteTraceDataRequest < TencentCloud::Common::AbstractModel
        # @param TraceId: 溯源ID
        # @type TraceId: String
        # @param CorpId: 企业ID
        # @type CorpId: Integer

        attr_accessor :TraceId, :CorpId
        
        def initialize(traceid=nil, corpid=nil)
          @TraceId = traceid
          @CorpId = corpid
        end

        def deserialize(params)
          @TraceId = params['TraceId']
          @CorpId = params['CorpId']
        end
      end

      # DeleteTraceData返回参数结构体
      class DeleteTraceDataResponse < TencentCloud::Common::AbstractModel
        # @param TraceId: 溯源id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TraceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TraceId, :RequestId
        
        def initialize(traceid=nil, requestid=nil)
          @TraceId = traceid
          @RequestId = requestid
        end

        def deserialize(params)
          @TraceId = params['TraceId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCodeBatchById请求参数结构体
      class DescribeCodeBatchByIdRequest < TencentCloud::Common::AbstractModel
        # @param CorpId: 企业ID
        # @type CorpId: Integer
        # @param BatchId: 批次ID
        # @type BatchId: String

        attr_accessor :CorpId, :BatchId
        
        def initialize(corpid=nil, batchid=nil)
          @CorpId = corpid
          @BatchId = batchid
        end

        def deserialize(params)
          @CorpId = params['CorpId']
          @BatchId = params['BatchId']
        end
      end

      # DescribeCodeBatchById返回参数结构体
      class DescribeCodeBatchByIdResponse < TencentCloud::Common::AbstractModel
        # @param CodeBatch: 批次
        # @type CodeBatch: :class:`Tencentcloud::Trp.v20210515.models.CodeBatch`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CodeBatch, :RequestId
        
        def initialize(codebatch=nil, requestid=nil)
          @CodeBatch = codebatch
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CodeBatch'].nil?
            @CodeBatch = CodeBatch.new
            @CodeBatch.deserialize(params['CodeBatch'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCodeBatchs请求参数结构体
      class DescribeCodeBatchsRequest < TencentCloud::Common::AbstractModel
        # @param MerchantId: 查询商户ID
        # @type MerchantId: String
        # @param ProductId: 查询商品ID
        # @type ProductId: String
        # @param Keyword: 查询关键字
        # @type Keyword: String
        # @param PageSize: 条数
        # @type PageSize: Integer
        # @param PageNumber: 页数
        # @type PageNumber: Integer
        # @param BatchType: 批次类型 0:溯源 1:营销
        # @type BatchType: String
        # @param CorpId: 企业ID
        # @type CorpId: Integer

        attr_accessor :MerchantId, :ProductId, :Keyword, :PageSize, :PageNumber, :BatchType, :CorpId
        
        def initialize(merchantid=nil, productid=nil, keyword=nil, pagesize=nil, pagenumber=nil, batchtype=nil, corpid=nil)
          @MerchantId = merchantid
          @ProductId = productid
          @Keyword = keyword
          @PageSize = pagesize
          @PageNumber = pagenumber
          @BatchType = batchtype
          @CorpId = corpid
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          @ProductId = params['ProductId']
          @Keyword = params['Keyword']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @BatchType = params['BatchType']
          @CorpId = params['CorpId']
        end
      end

      # DescribeCodeBatchs返回参数结构体
      class DescribeCodeBatchsResponse < TencentCloud::Common::AbstractModel
        # @param CodeBatchs: 批次列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeBatchs: Array
        # @param TotalCount: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CodeBatchs, :TotalCount, :RequestId
        
        def initialize(codebatchs=nil, totalcount=nil, requestid=nil)
          @CodeBatchs = codebatchs
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CodeBatchs'].nil?
            @CodeBatchs = []
            params['CodeBatchs'].each do |i|
              codebatch_tmp = CodeBatch.new
              codebatch_tmp.deserialize(i)
              @CodeBatchs << codebatch_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCodePackStatus请求参数结构体
      class DescribeCodePackStatusRequest < TencentCloud::Common::AbstractModel
        # @param PackId: 码包ID
        # @type PackId: String
        # @param CorpId: 企业ID
        # @type CorpId: Integer

        attr_accessor :PackId, :CorpId
        
        def initialize(packid=nil, corpid=nil)
          @PackId = packid
          @CorpId = corpid
        end

        def deserialize(params)
          @PackId = params['PackId']
          @CorpId = params['CorpId']
        end
      end

      # DescribeCodePackStatus返回参数结构体
      class DescribeCodePackStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 码包状态 init: 初始化, pending: 执行中, done: 完成, error: 失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId
        
        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCodePackUrl请求参数结构体
      class DescribeCodePackUrlRequest < TencentCloud::Common::AbstractModel
        # @param PackId: 码包ID
        # @type PackId: String
        # @param CorpId: 企业ID
        # @type CorpId: Integer

        attr_accessor :PackId, :CorpId
        
        def initialize(packid=nil, corpid=nil)
          @PackId = packid
          @CorpId = corpid
        end

        def deserialize(params)
          @PackId = params['PackId']
          @CorpId = params['CorpId']
        end
      end

      # DescribeCodePackUrl返回参数结构体
      class DescribeCodePackUrlResponse < TencentCloud::Common::AbstractModel
        # @param Url: 文字码包地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param ImgUrl: 图片码包地址，可能为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImgUrl: String
        # @param FileKey: 文字码包Key，用于上传导入
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileKey: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Url, :ImgUrl, :FileKey, :RequestId
        
        def initialize(url=nil, imgurl=nil, filekey=nil, requestid=nil)
          @Url = url
          @ImgUrl = imgurl
          @FileKey = filekey
          @RequestId = requestid
        end

        def deserialize(params)
          @Url = params['Url']
          @ImgUrl = params['ImgUrl']
          @FileKey = params['FileKey']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCodePacks请求参数结构体
      class DescribeCodePacksRequest < TencentCloud::Common::AbstractModel
        # @param PageSize: 每页数量
        # @type PageSize: Integer
        # @param PageNumber: 页数
        # @type PageNumber: Integer
        # @param Keyword: 查询关键字
        # @type Keyword: String
        # @param CorpId: 企业ID
        # @type CorpId: Integer

        attr_accessor :PageSize, :PageNumber, :Keyword, :CorpId
        
        def initialize(pagesize=nil, pagenumber=nil, keyword=nil, corpid=nil)
          @PageSize = pagesize
          @PageNumber = pagenumber
          @Keyword = keyword
          @CorpId = corpid
        end

        def deserialize(params)
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @Keyword = params['Keyword']
          @CorpId = params['CorpId']
        end
      end

      # DescribeCodePacks返回参数结构体
      class DescribeCodePacksResponse < TencentCloud::Common::AbstractModel
        # @param CodePacks: 码列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodePacks: Array
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CodePacks, :TotalCount, :RequestId
        
        def initialize(codepacks=nil, totalcount=nil, requestid=nil)
          @CodePacks = codepacks
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CodePacks'].nil?
            @CodePacks = []
            params['CodePacks'].each do |i|
              codepack_tmp = CodePack.new
              codepack_tmp.deserialize(i)
              @CodePacks << codepack_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCodesByPack请求参数结构体
      class DescribeCodesByPackRequest < TencentCloud::Common::AbstractModel
        # @param PackId: 码包ID
        # @type PackId: String
        # @param CorpId: 企业ID
        # @type CorpId: Integer

        attr_accessor :PackId, :CorpId
        
        def initialize(packid=nil, corpid=nil)
          @PackId = packid
          @CorpId = corpid
        end

        def deserialize(params)
          @PackId = params['PackId']
          @CorpId = params['CorpId']
        end
      end

      # DescribeCodesByPack返回参数结构体
      class DescribeCodesByPackResponse < TencentCloud::Common::AbstractModel
        # @param Codes: 码列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Codes: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Codes, :RequestId
        
        def initialize(codes=nil, requestid=nil)
          @Codes = codes
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Codes'].nil?
            @Codes = []
            params['Codes'].each do |i|
              codeitem_tmp = CodeItem.new
              codeitem_tmp.deserialize(i)
              @Codes << codeitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCustomRuleById请求参数结构体
      class DescribeCustomRuleByIdRequest < TencentCloud::Common::AbstractModel
        # @param CustomId: 码规则ID
        # @type CustomId: String
        # @param CorpId: 企业ID
        # @type CorpId: Integer

        attr_accessor :CustomId, :CorpId
        
        def initialize(customid=nil, corpid=nil)
          @CustomId = customid
          @CorpId = corpid
        end

        def deserialize(params)
          @CustomId = params['CustomId']
          @CorpId = params['CorpId']
        end
      end

      # DescribeCustomRuleById返回参数结构体
      class DescribeCustomRuleByIdResponse < TencentCloud::Common::AbstractModel
        # @param CustomRule: 码规则信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomRule: :class:`Tencentcloud::Trp.v20210515.models.CustomRule`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CustomRule, :RequestId
        
        def initialize(customrule=nil, requestid=nil)
          @CustomRule = customrule
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CustomRule'].nil?
            @CustomRule = CustomRule.new
            @CustomRule.deserialize(params['CustomRule'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCustomRules请求参数结构体
      class DescribeCustomRulesRequest < TencentCloud::Common::AbstractModel
        # @param Keyword: 搜索关键字
        # @type Keyword: String
        # @param PageSize: 条数
        # @type PageSize: Integer
        # @param PageNumber: 页数
        # @type PageNumber: Integer
        # @param CorpId: 企业ID
        # @type CorpId: Integer
        # @param Status: 码规则状态 0:未生效 1:已生效 -1:已失效
        # @type Status: Integer
        # @param MerchantId: 商户ID
        # @type MerchantId: String

        attr_accessor :Keyword, :PageSize, :PageNumber, :CorpId, :Status, :MerchantId
        
        def initialize(keyword=nil, pagesize=nil, pagenumber=nil, corpid=nil, status=nil, merchantid=nil)
          @Keyword = keyword
          @PageSize = pagesize
          @PageNumber = pagenumber
          @CorpId = corpid
          @Status = status
          @MerchantId = merchantid
        end

        def deserialize(params)
          @Keyword = params['Keyword']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @CorpId = params['CorpId']
          @Status = params['Status']
          @MerchantId = params['MerchantId']
        end
      end

      # DescribeCustomRules返回参数结构体
      class DescribeCustomRulesResponse < TencentCloud::Common::AbstractModel
        # @param CustomRules: 码规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomRules: Array
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CustomRules, :TotalCount, :RequestId
        
        def initialize(customrules=nil, totalcount=nil, requestid=nil)
          @CustomRules = customrules
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CustomRules'].nil?
            @CustomRules = []
            params['CustomRules'].each do |i|
              customrule_tmp = CustomRule.new
              customrule_tmp.deserialize(i)
              @CustomRules << customrule_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeJobFileUrl请求参数结构体
      class DescribeJobFileUrlRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 调度ID
        # @type JobId: Integer
        # @param CorpId: 企业ID
        # @type CorpId: Integer

        attr_accessor :JobId, :CorpId
        
        def initialize(jobid=nil, corpid=nil)
          @JobId = jobid
          @CorpId = corpid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @CorpId = params['CorpId']
        end
      end

      # DescribeJobFileUrl返回参数结构体
      class DescribeJobFileUrlResponse < TencentCloud::Common::AbstractModel
        # @param Url: 码包地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeMerchantById请求参数结构体
      class DescribeMerchantByIdRequest < TencentCloud::Common::AbstractModel
        # @param MerchantId: 商户标识码
        # @type MerchantId: String
        # @param CorpId: 企业ID
        # @type CorpId: Integer

        attr_accessor :MerchantId, :CorpId
        
        def initialize(merchantid=nil, corpid=nil)
          @MerchantId = merchantid
          @CorpId = corpid
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          @CorpId = params['CorpId']
        end
      end

      # DescribeMerchantById返回参数结构体
      class DescribeMerchantByIdResponse < TencentCloud::Common::AbstractModel
        # @param Merchant: 商户信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Merchant: :class:`Tencentcloud::Trp.v20210515.models.Merchant`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Merchant, :RequestId
        
        def initialize(merchant=nil, requestid=nil)
          @Merchant = merchant
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Merchant'].nil?
            @Merchant = Merchant.new
            @Merchant.deserialize(params['Merchant'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMerchants请求参数结构体
      class DescribeMerchantsRequest < TencentCloud::Common::AbstractModel
        # @param Name: 搜索商户名称
        # @type Name: String
        # @param PageSize: 条数
        # @type PageSize: Integer
        # @param PageNumber: 页数
        # @type PageNumber: Integer
        # @param CorpId: 企业ID
        # @type CorpId: Integer
        # @param CodeType: 码来源类型 0:自建, 1:第三方
        # @type CodeType: Integer

        attr_accessor :Name, :PageSize, :PageNumber, :CorpId, :CodeType
        
        def initialize(name=nil, pagesize=nil, pagenumber=nil, corpid=nil, codetype=nil)
          @Name = name
          @PageSize = pagesize
          @PageNumber = pagenumber
          @CorpId = corpid
          @CodeType = codetype
        end

        def deserialize(params)
          @Name = params['Name']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @CorpId = params['CorpId']
          @CodeType = params['CodeType']
        end
      end

      # DescribeMerchants返回参数结构体
      class DescribeMerchantsResponse < TencentCloud::Common::AbstractModel
        # @param Merchants: 商户列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Merchants: Array
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Merchants, :TotalCount, :RequestId
        
        def initialize(merchants=nil, totalcount=nil, requestid=nil)
          @Merchants = merchants
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Merchants'].nil?
            @Merchants = []
            params['Merchants'].each do |i|
              merchant_tmp = Merchant.new
              merchant_tmp.deserialize(i)
              @Merchants << merchant_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProductById请求参数结构体
      class DescribeProductByIdRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 商品ID
        # @type ProductId: String
        # @param CorpId: 企业ID
        # @type CorpId: Integer

        attr_accessor :ProductId, :CorpId
        
        def initialize(productid=nil, corpid=nil)
          @ProductId = productid
          @CorpId = corpid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @CorpId = params['CorpId']
        end
      end

      # DescribeProductById返回参数结构体
      class DescribeProductByIdResponse < TencentCloud::Common::AbstractModel
        # @param Product: 商品信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Product: :class:`Tencentcloud::Trp.v20210515.models.Product`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Product, :RequestId
        
        def initialize(product=nil, requestid=nil)
          @Product = product
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Product'].nil?
            @Product = Product.new
            @Product.deserialize(params['Product'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProducts请求参数结构体
      class DescribeProductsRequest < TencentCloud::Common::AbstractModel
        # @param Name: 商品名称
        # @type Name: String
        # @param PageSize: 条数
        # @type PageSize: Integer
        # @param PageNumber: 页数
        # @type PageNumber: Integer
        # @param MerchantId: 商品ID
        # @type MerchantId: String
        # @param CorpId: 企业ID
        # @type CorpId: Integer

        attr_accessor :Name, :PageSize, :PageNumber, :MerchantId, :CorpId
        
        def initialize(name=nil, pagesize=nil, pagenumber=nil, merchantid=nil, corpid=nil)
          @Name = name
          @PageSize = pagesize
          @PageNumber = pagenumber
          @MerchantId = merchantid
          @CorpId = corpid
        end

        def deserialize(params)
          @Name = params['Name']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @MerchantId = params['MerchantId']
          @CorpId = params['CorpId']
        end
      end

      # DescribeProducts返回参数结构体
      class DescribeProductsResponse < TencentCloud::Common::AbstractModel
        # @param Products: 商品列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Products: Array
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Products, :TotalCount, :RequestId
        
        def initialize(products=nil, totalcount=nil, requestid=nil)
          @Products = products
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Products'].nil?
            @Products = []
            params['Products'].each do |i|
              product_tmp = Product.new
              product_tmp.deserialize(i)
              @Products << product_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTmpToken请求参数结构体
      class DescribeTmpTokenRequest < TencentCloud::Common::AbstractModel
        # @param CorpId: 企业ID
        # @type CorpId: Integer

        attr_accessor :CorpId
        
        def initialize(corpid=nil)
          @CorpId = corpid
        end

        def deserialize(params)
          @CorpId = params['CorpId']
        end
      end

      # DescribeTmpToken返回参数结构体
      class DescribeTmpTokenResponse < TencentCloud::Common::AbstractModel
        # @param Token: 临时token
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Token: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Token, :RequestId
        
        def initialize(token=nil, requestid=nil)
          @Token = token
          @RequestId = requestid
        end

        def deserialize(params)
          @Token = params['Token']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTraceCodeById请求参数结构体
      class DescribeTraceCodeByIdRequest < TencentCloud::Common::AbstractModel
        # @param CorpId: 企业ID
        # @type CorpId: Integer
        # @param Code: 二维码
        # @type Code: String

        attr_accessor :CorpId, :Code
        
        def initialize(corpid=nil, code=nil)
          @CorpId = corpid
          @Code = code
        end

        def deserialize(params)
          @CorpId = params['CorpId']
          @Code = params['Code']
        end
      end

      # DescribeTraceCodeById返回参数结构体
      class DescribeTraceCodeByIdResponse < TencentCloud::Common::AbstractModel
        # @param TraceCode: 无
        # @type TraceCode: :class:`Tencentcloud::Trp.v20210515.models.TraceCode`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TraceCode, :RequestId
        
        def initialize(tracecode=nil, requestid=nil)
          @TraceCode = tracecode
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TraceCode'].nil?
            @TraceCode = TraceCode.new
            @TraceCode.deserialize(params['TraceCode'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTraceCodes请求参数结构体
      class DescribeTraceCodesRequest < TencentCloud::Common::AbstractModel
        # @param Keyword: 搜索关键字 码标识，或者批次ID
        # @type Keyword: String
        # @param PageNumber: 条数
        # @type PageNumber: Integer
        # @param PageSize: 页码
        # @type PageSize: Integer
        # @param BatchId: 批次ID，弃用
        # @type BatchId: String
        # @param CorpId: 企业ID
        # @type CorpId: Integer

        attr_accessor :Keyword, :PageNumber, :PageSize, :BatchId, :CorpId
        
        def initialize(keyword=nil, pagenumber=nil, pagesize=nil, batchid=nil, corpid=nil)
          @Keyword = keyword
          @PageNumber = pagenumber
          @PageSize = pagesize
          @BatchId = batchid
          @CorpId = corpid
        end

        def deserialize(params)
          @Keyword = params['Keyword']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @BatchId = params['BatchId']
          @CorpId = params['CorpId']
        end
      end

      # DescribeTraceCodes返回参数结构体
      class DescribeTraceCodesResponse < TencentCloud::Common::AbstractModel
        # @param TraceCodes: 标识列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TraceCodes: Array
        # @param TotalCount: 条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TraceCodes, :TotalCount, :RequestId
        
        def initialize(tracecodes=nil, totalcount=nil, requestid=nil)
          @TraceCodes = tracecodes
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TraceCodes'].nil?
            @TraceCodes = []
            params['TraceCodes'].each do |i|
              tracecode_tmp = TraceCode.new
              tracecode_tmp.deserialize(i)
              @TraceCodes << tracecode_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTraceDataList请求参数结构体
      class DescribeTraceDataListRequest < TencentCloud::Common::AbstractModel
        # @param CorpId: 企业ID
        # @type CorpId: Integer
        # @param BatchId: 批次ID
        # @type BatchId: String
        # @param TaskId: 任务ID 用于外部溯源
        # @type TaskId: String
        # @param PageNumber: 页数
        # @type PageNumber: Integer
        # @param Code: 二维码
        # @type Code: String
        # @param Phase: 溯源阶段 0:商品 1:通用 2:内部溯源 3:外部溯源
        # @type Phase: Integer
        # @param PageSize: 数量
        # @type PageSize: Integer

        attr_accessor :CorpId, :BatchId, :TaskId, :PageNumber, :Code, :Phase, :PageSize
        
        def initialize(corpid=nil, batchid=nil, taskid=nil, pagenumber=nil, code=nil, phase=nil, pagesize=nil)
          @CorpId = corpid
          @BatchId = batchid
          @TaskId = taskid
          @PageNumber = pagenumber
          @Code = code
          @Phase = phase
          @PageSize = pagesize
        end

        def deserialize(params)
          @CorpId = params['CorpId']
          @BatchId = params['BatchId']
          @TaskId = params['TaskId']
          @PageNumber = params['PageNumber']
          @Code = params['Code']
          @Phase = params['Phase']
          @PageSize = params['PageSize']
        end
      end

      # DescribeTraceDataList返回参数结构体
      class DescribeTraceDataListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 数量
        # @type TotalCount: Integer
        # @param TraceDataList: 无
        # @type TraceDataList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TraceDataList, :RequestId
        
        def initialize(totalcount=nil, tracedatalist=nil, requestid=nil)
          @TotalCount = totalcount
          @TraceDataList = tracedatalist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TraceDataList'].nil?
            @TraceDataList = []
            params['TraceDataList'].each do |i|
              tracedata_tmp = TraceData.new
              tracedata_tmp.deserialize(i)
              @TraceDataList << tracedata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 预留字段
      class Ext < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # 通用调度任务
      class Job < TencentCloud::Common::AbstractModel
        # @param JobId: 调度ID
        # @type JobId: Integer
        # @param Status: 执行状态 init:初始化, pending: 执行中, done: 执行成功, error: 执行失败
        # @type Status: String

        attr_accessor :JobId, :Status
        
        def initialize(jobid=nil, status=nil)
          @JobId = jobid
          @Status = status
        end

        def deserialize(params)
          @JobId = params['JobId']
          @Status = params['Status']
        end
      end

      # 商户信息
      class Merchant < TencentCloud::Common::AbstractModel
        # @param MerchantId: 商户标识码
        # @type MerchantId: String
        # @param CorpId: 企业id
        # @type CorpId: Integer
        # @param Name: 商户名称
        # @type Name: String
        # @param Remark: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param CodeRule: 商户码规则
        # @type CodeRule: String
        # @param CodeType: 码来源类型 0: 安心平台 1: 第三方码
        # @type CodeType: Integer
        # @param CodeUrl: 第三方码域名前缀
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeUrl: String

        attr_accessor :MerchantId, :CorpId, :Name, :Remark, :CreateTime, :UpdateTime, :CodeRule, :CodeType, :CodeUrl
        
        def initialize(merchantid=nil, corpid=nil, name=nil, remark=nil, createtime=nil, updatetime=nil, coderule=nil, codetype=nil, codeurl=nil)
          @MerchantId = merchantid
          @CorpId = corpid
          @Name = name
          @Remark = remark
          @CreateTime = createtime
          @UpdateTime = updatetime
          @CodeRule = coderule
          @CodeType = codetype
          @CodeUrl = codeurl
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          @CorpId = params['CorpId']
          @Name = params['Name']
          @Remark = params['Remark']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @CodeRule = params['CodeRule']
          @CodeType = params['CodeType']
          @CodeUrl = params['CodeUrl']
        end
      end

      # ModifyCodeBatch请求参数结构体
      class ModifyCodeBatchRequest < TencentCloud::Common::AbstractModel
        # @param BatchId: 批次ID
        # @type BatchId: String
        # @param CorpId: 企业ID
        # @type CorpId: Integer
        # @param Status: 状态 0: 未激活 1: 已激活 -1: 已冻结
        # @type Status: Integer
        # @param MpTpl: 模版ID，或者活动ID
        # @type MpTpl: String
        # @param MerchantId: 商户ID
        # @type MerchantId: String
        # @param ProductId: 商品ID
        # @type ProductId: String
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :BatchId, :CorpId, :Status, :MpTpl, :MerchantId, :ProductId, :Remark
        
        def initialize(batchid=nil, corpid=nil, status=nil, mptpl=nil, merchantid=nil, productid=nil, remark=nil)
          @BatchId = batchid
          @CorpId = corpid
          @Status = status
          @MpTpl = mptpl
          @MerchantId = merchantid
          @ProductId = productid
          @Remark = remark
        end

        def deserialize(params)
          @BatchId = params['BatchId']
          @CorpId = params['CorpId']
          @Status = params['Status']
          @MpTpl = params['MpTpl']
          @MerchantId = params['MerchantId']
          @ProductId = params['ProductId']
          @Remark = params['Remark']
        end
      end

      # ModifyCodeBatch返回参数结构体
      class ModifyCodeBatchResponse < TencentCloud::Common::AbstractModel
        # @param BatchId: 批次ID
        # @type BatchId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BatchId, :RequestId
        
        def initialize(batchid=nil, requestid=nil)
          @BatchId = batchid
          @RequestId = requestid
        end

        def deserialize(params)
          @BatchId = params['BatchId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyCustomRule请求参数结构体
      class ModifyCustomRuleRequest < TencentCloud::Common::AbstractModel
        # @param CustomId: 码规则ID
        # @type CustomId: String
        # @param Name: 规则名称
        # @type Name: String
        # @param CodeLength: 码长度
        # @type CodeLength: Integer
        # @param CodeParts: 码段配置
        # @type CodeParts: Array
        # @param CorpId: 企业ID
        # @type CorpId: Integer

        attr_accessor :CustomId, :Name, :CodeLength, :CodeParts, :CorpId
        
        def initialize(customid=nil, name=nil, codelength=nil, codeparts=nil, corpid=nil)
          @CustomId = customid
          @Name = name
          @CodeLength = codelength
          @CodeParts = codeparts
          @CorpId = corpid
        end

        def deserialize(params)
          @CustomId = params['CustomId']
          @Name = params['Name']
          @CodeLength = params['CodeLength']
          unless params['CodeParts'].nil?
            @CodeParts = []
            params['CodeParts'].each do |i|
              codepart_tmp = CodePart.new
              codepart_tmp.deserialize(i)
              @CodeParts << codepart_tmp
            end
          end
          @CorpId = params['CorpId']
        end
      end

      # ModifyCustomRule返回参数结构体
      class ModifyCustomRuleResponse < TencentCloud::Common::AbstractModel
        # @param CustomId: 码规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CustomId, :RequestId
        
        def initialize(customid=nil, requestid=nil)
          @CustomId = customid
          @RequestId = requestid
        end

        def deserialize(params)
          @CustomId = params['CustomId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyCustomRuleStatus请求参数结构体
      class ModifyCustomRuleStatusRequest < TencentCloud::Common::AbstractModel
        # @param CustomId: 码规则ID
        # @type CustomId: String
        # @param Status: 码规则状态 0:未生效 1:已生效 -1:已失效
        # @type Status: Integer

        attr_accessor :CustomId, :Status
        
        def initialize(customid=nil, status=nil)
          @CustomId = customid
          @Status = status
        end

        def deserialize(params)
          @CustomId = params['CustomId']
          @Status = params['Status']
        end
      end

      # ModifyCustomRuleStatus返回参数结构体
      class ModifyCustomRuleStatusResponse < TencentCloud::Common::AbstractModel
        # @param CustomId: 码规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CustomId, :RequestId
        
        def initialize(customid=nil, requestid=nil)
          @CustomId = customid
          @RequestId = requestid
        end

        def deserialize(params)
          @CustomId = params['CustomId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyMerchant请求参数结构体
      class ModifyMerchantRequest < TencentCloud::Common::AbstractModel
        # @param Name: 商户名称
        # @type Name: String
        # @param MerchantId: 商户标识码
        # @type MerchantId: String
        # @param Remark: 备注
        # @type Remark: String
        # @param CorpId: 企业ID
        # @type CorpId: Integer
        # @param CodeType: 码包来源 0:自建, 1:第三码包，暂不支持修改
        # @type CodeType: Integer
        # @param CodeUrl: 码包前缀地址 第三方码包时必填
        # @type CodeUrl: String

        attr_accessor :Name, :MerchantId, :Remark, :CorpId, :CodeType, :CodeUrl
        
        def initialize(name=nil, merchantid=nil, remark=nil, corpid=nil, codetype=nil, codeurl=nil)
          @Name = name
          @MerchantId = merchantid
          @Remark = remark
          @CorpId = corpid
          @CodeType = codetype
          @CodeUrl = codeurl
        end

        def deserialize(params)
          @Name = params['Name']
          @MerchantId = params['MerchantId']
          @Remark = params['Remark']
          @CorpId = params['CorpId']
          @CodeType = params['CodeType']
          @CodeUrl = params['CodeUrl']
        end
      end

      # ModifyMerchant返回参数结构体
      class ModifyMerchantResponse < TencentCloud::Common::AbstractModel
        # @param MerchantId: 商户标识码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MerchantId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MerchantId, :RequestId
        
        def initialize(merchantid=nil, requestid=nil)
          @MerchantId = merchantid
          @RequestId = requestid
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyProduct请求参数结构体
      class ModifyProductRequest < TencentCloud::Common::AbstractModel
        # @param Name: 商品名称
        # @type Name: String
        # @param ProductId: 商品ID
        # @type ProductId: String
        # @param Remark: 备注
        # @type Remark: String
        # @param Specification: 商品规格
        # @type Specification: String
        # @param Logo: 商品图片
        # @type Logo: Array
        # @param CorpId: 企业ID
        # @type CorpId: Integer
        # @param Ext: 预留字段
        # @type Ext: :class:`Tencentcloud::Trp.v20210515.models.Ext`

        attr_accessor :Name, :ProductId, :Remark, :Specification, :Logo, :CorpId, :Ext
        
        def initialize(name=nil, productid=nil, remark=nil, specification=nil, logo=nil, corpid=nil, ext=nil)
          @Name = name
          @ProductId = productid
          @Remark = remark
          @Specification = specification
          @Logo = logo
          @CorpId = corpid
          @Ext = ext
        end

        def deserialize(params)
          @Name = params['Name']
          @ProductId = params['ProductId']
          @Remark = params['Remark']
          @Specification = params['Specification']
          @Logo = params['Logo']
          @CorpId = params['CorpId']
          unless params['Ext'].nil?
            @Ext = Ext.new
            @Ext.deserialize(params['Ext'])
          end
        end
      end

      # ModifyProduct返回参数结构体
      class ModifyProductResponse < TencentCloud::Common::AbstractModel
        # @param ProductId: 商品ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProductId, :RequestId
        
        def initialize(productid=nil, requestid=nil)
          @ProductId = productid
          @RequestId = requestid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyTraceCode请求参数结构体
      class ModifyTraceCodeRequest < TencentCloud::Common::AbstractModel
        # @param Code: 二维码
        # @type Code: String
        # @param CorpId: 企业ID
        # @type CorpId: Integer
        # @param Status: 状态 0: 冻结 1: 激活
        # @type Status: Integer

        attr_accessor :Code, :CorpId, :Status
        
        def initialize(code=nil, corpid=nil, status=nil)
          @Code = code
          @CorpId = corpid
          @Status = status
        end

        def deserialize(params)
          @Code = params['Code']
          @CorpId = params['CorpId']
          @Status = params['Status']
        end
      end

      # ModifyTraceCode返回参数结构体
      class ModifyTraceCodeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTraceDataRanks请求参数结构体
      class ModifyTraceDataRanksRequest < TencentCloud::Common::AbstractModel
        # @param CorpId: 企业ID
        # @type CorpId: Integer
        # @param BatchId: 批次ID
        # @type BatchId: String
        # @param TaskId: 生产任务ID
        # @type TaskId: String
        # @param TraceIds: 溯源ID
        # @type TraceIds: Array

        attr_accessor :CorpId, :BatchId, :TaskId, :TraceIds
        
        def initialize(corpid=nil, batchid=nil, taskid=nil, traceids=nil)
          @CorpId = corpid
          @BatchId = batchid
          @TaskId = taskid
          @TraceIds = traceids
        end

        def deserialize(params)
          @CorpId = params['CorpId']
          @BatchId = params['BatchId']
          @TaskId = params['TaskId']
          @TraceIds = params['TraceIds']
        end
      end

      # ModifyTraceDataRanks返回参数结构体
      class ModifyTraceDataRanksResponse < TencentCloud::Common::AbstractModel
        # @param BatchId: 批次ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BatchId, :RequestId
        
        def initialize(batchid=nil, requestid=nil)
          @BatchId = batchid
          @RequestId = requestid
        end

        def deserialize(params)
          @BatchId = params['BatchId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyTraceData请求参数结构体
      class ModifyTraceDataRequest < TencentCloud::Common::AbstractModel
        # @param TraceId: 溯源ID
        # @type TraceId: String
        # @param BatchId: 批次ID
        # @type BatchId: String
        # @param TaskId: 生产溯源任务ID
        # @type TaskId: String
        # @param TraceItems: 溯源信息
        # @type TraceItems: Array
        # @param PhaseName: 溯源阶段名称
        # @type PhaseName: String
        # @param Type: [无效] 类型
        # @type Type: Integer
        # @param Code: [无效] 溯源码
        # @type Code: String
        # @param Rank: [无效] 排序
        # @type Rank: Integer
        # @param Phase: [无效] 溯源阶段 0:商品 1:通用 2:生产溯源 3:销售溯源
        # @type Phase: Integer
        # @param TraceTime: [无效] 溯源时间
        # @type TraceTime: String
        # @param CreateTime: [无效] 创建时间
        # @type CreateTime: String
        # @param ChainStatus: [无效] 上链状态
        # @type ChainStatus: Integer
        # @param ChainTime: [无效] 上链时间
        # @type ChainTime: String
        # @param ChainData: [无效] 上链数据
        # @type ChainData: :class:`Tencentcloud::Trp.v20210515.models.ChainData`
        # @param CorpId: 企业ID
        # @type CorpId: Integer
        # @param Status: 溯源状态 0: 无效, 1: 有效
        # @type Status: Integer
        # @param PhaseData: 环节数据
        # @type PhaseData: :class:`Tencentcloud::Trp.v20210515.models.PhaseData`

        attr_accessor :TraceId, :BatchId, :TaskId, :TraceItems, :PhaseName, :Type, :Code, :Rank, :Phase, :TraceTime, :CreateTime, :ChainStatus, :ChainTime, :ChainData, :CorpId, :Status, :PhaseData
        
        def initialize(traceid=nil, batchid=nil, taskid=nil, traceitems=nil, phasename=nil, type=nil, code=nil, rank=nil, phase=nil, tracetime=nil, createtime=nil, chainstatus=nil, chaintime=nil, chaindata=nil, corpid=nil, status=nil, phasedata=nil)
          @TraceId = traceid
          @BatchId = batchid
          @TaskId = taskid
          @TraceItems = traceitems
          @PhaseName = phasename
          @Type = type
          @Code = code
          @Rank = rank
          @Phase = phase
          @TraceTime = tracetime
          @CreateTime = createtime
          @ChainStatus = chainstatus
          @ChainTime = chaintime
          @ChainData = chaindata
          @CorpId = corpid
          @Status = status
          @PhaseData = phasedata
        end

        def deserialize(params)
          @TraceId = params['TraceId']
          @BatchId = params['BatchId']
          @TaskId = params['TaskId']
          unless params['TraceItems'].nil?
            @TraceItems = []
            params['TraceItems'].each do |i|
              traceitem_tmp = TraceItem.new
              traceitem_tmp.deserialize(i)
              @TraceItems << traceitem_tmp
            end
          end
          @PhaseName = params['PhaseName']
          @Type = params['Type']
          @Code = params['Code']
          @Rank = params['Rank']
          @Phase = params['Phase']
          @TraceTime = params['TraceTime']
          @CreateTime = params['CreateTime']
          @ChainStatus = params['ChainStatus']
          @ChainTime = params['ChainTime']
          unless params['ChainData'].nil?
            @ChainData = ChainData.new
            @ChainData.deserialize(params['ChainData'])
          end
          @CorpId = params['CorpId']
          @Status = params['Status']
          unless params['PhaseData'].nil?
            @PhaseData = PhaseData.new
            @PhaseData.deserialize(params['PhaseData'])
          end
        end
      end

      # ModifyTraceData返回参数结构体
      class ModifyTraceDataResponse < TencentCloud::Common::AbstractModel
        # @param TraceId: 溯源ID
        # @type TraceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TraceId, :RequestId
        
        def initialize(traceid=nil, requestid=nil)
          @TraceId = traceid
          @RequestId = requestid
        end

        def deserialize(params)
          @TraceId = params['TraceId']
          @RequestId = params['RequestId']
        end
      end

      # 层级码配置
      class PackSpec < TencentCloud::Common::AbstractModel
        # @param Level: 层级
        # @type Level: Integer
        # @param Rate: 比例
        # @type Rate: Integer
        # @param Amount: 数量
        # @type Amount: Integer
        # @param CustomId: 码规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomId: String
        # @param CodeParts: 码段配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeParts: Array

        attr_accessor :Level, :Rate, :Amount, :CustomId, :CodeParts
        
        def initialize(level=nil, rate=nil, amount=nil, customid=nil, codeparts=nil)
          @Level = level
          @Rate = rate
          @Amount = amount
          @CustomId = customid
          @CodeParts = codeparts
        end

        def deserialize(params)
          @Level = params['Level']
          @Rate = params['Rate']
          @Amount = params['Amount']
          @CustomId = params['CustomId']
          unless params['CodeParts'].nil?
            @CodeParts = []
            params['CodeParts'].each do |i|
              codepart_tmp = CodePart.new
              codepart_tmp.deserialize(i)
              @CodeParts << codepart_tmp
            end
          end
        end
      end

      # 环节数据
      class PhaseData < TencentCloud::Common::AbstractModel
        # @param HeadEnabled: 启用头
        # @type HeadEnabled: Boolean
        # @param HeadTitle: 标题
        # @type HeadTitle: String
        # @param Key: 标识符
        # @type Key: String
        # @param AppId: 小程序AppId
        # @type AppId: String
        # @param AppPath: 小程序AppPath
        # @type AppPath: String
        # @param AppName: 小程序名称AppName
        # @type AppName: String

        attr_accessor :HeadEnabled, :HeadTitle, :Key, :AppId, :AppPath, :AppName
        
        def initialize(headenabled=nil, headtitle=nil, key=nil, appid=nil, apppath=nil, appname=nil)
          @HeadEnabled = headenabled
          @HeadTitle = headtitle
          @Key = key
          @AppId = appid
          @AppPath = apppath
          @AppName = appname
        end

        def deserialize(params)
          @HeadEnabled = params['HeadEnabled']
          @HeadTitle = params['HeadTitle']
          @Key = params['Key']
          @AppId = params['AppId']
          @AppPath = params['AppPath']
          @AppName = params['AppName']
        end
      end

      # 商品信息
      class Product < TencentCloud::Common::AbstractModel
        # @param ProductId: 商品id
        # @type ProductId: String
        # @param CorpId: 企业id
        # @type CorpId: Integer
        # @param MerchantId: 商户标识码
        # @type MerchantId: String
        # @param ProductCode: 商品编号
        # @type ProductCode: String
        # @param Name: 商品名称
        # @type Name: String
        # @param Specification: 商品规格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Specification: String
        # @param Remark: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param Logo: 商品图片
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Logo: Array
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 修改时间
        # @type UpdateTime: String
        # @param Ext: 预留字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ext: :class:`Tencentcloud::Trp.v20210515.models.Ext`
        # @param MerchantName: 商户名称
        # @type MerchantName: String

        attr_accessor :ProductId, :CorpId, :MerchantId, :ProductCode, :Name, :Specification, :Remark, :Logo, :CreateTime, :UpdateTime, :Ext, :MerchantName
        
        def initialize(productid=nil, corpid=nil, merchantid=nil, productcode=nil, name=nil, specification=nil, remark=nil, logo=nil, createtime=nil, updatetime=nil, ext=nil, merchantname=nil)
          @ProductId = productid
          @CorpId = corpid
          @MerchantId = merchantid
          @ProductCode = productcode
          @Name = name
          @Specification = specification
          @Remark = remark
          @Logo = logo
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Ext = ext
          @MerchantName = merchantname
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @CorpId = params['CorpId']
          @MerchantId = params['MerchantId']
          @ProductCode = params['ProductCode']
          @Name = params['Name']
          @Specification = params['Specification']
          @Remark = params['Remark']
          @Logo = params['Logo']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          unless params['Ext'].nil?
            @Ext = Ext.new
            @Ext.deserialize(params['Ext'])
          end
          @MerchantName = params['MerchantName']
        end
      end

      # 溯源码
      class TraceCode < TencentCloud::Common::AbstractModel
        # @param Code: 二维码
        # @type Code: String
        # @param CorpId: 企业ID
        # @type CorpId: Integer
        # @param PackId: 码包ID
        # @type PackId: String
        # @param BatchId: 批次ID
        # @type BatchId: String
        # @param MerchantId: 所属商户ID
        # @type MerchantId: String
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param Status: 码状态 0: 冻结 1: 激活
        # @type Status: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 修改时间
        # @type UpdateTime: String
        # @param MerchantName: 商户名称
        # @type MerchantName: String
        # @param ProductName: 产品名称
        # @type ProductName: String

        attr_accessor :Code, :CorpId, :PackId, :BatchId, :MerchantId, :ProductId, :Status, :CreateTime, :UpdateTime, :MerchantName, :ProductName
        
        def initialize(code=nil, corpid=nil, packid=nil, batchid=nil, merchantid=nil, productid=nil, status=nil, createtime=nil, updatetime=nil, merchantname=nil, productname=nil)
          @Code = code
          @CorpId = corpid
          @PackId = packid
          @BatchId = batchid
          @MerchantId = merchantid
          @ProductId = productid
          @Status = status
          @CreateTime = createtime
          @UpdateTime = updatetime
          @MerchantName = merchantname
          @ProductName = productname
        end

        def deserialize(params)
          @Code = params['Code']
          @CorpId = params['CorpId']
          @PackId = params['PackId']
          @BatchId = params['BatchId']
          @MerchantId = params['MerchantId']
          @ProductId = params['ProductId']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @MerchantName = params['MerchantName']
          @ProductName = params['ProductName']
        end
      end

      # 溯源数据
      class TraceData < TencentCloud::Common::AbstractModel
        # @param TraceId: 溯源ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TraceId: String
        # @param CorpId: 企业ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CorpId: Integer
        # @param Type: 码类型 0: 批次, 1: 码, 2: 生产任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param Code: 码值，跟码类型一一对应
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: String
        # @param Rank: 排序，在Phase相同情况下，值越小排名靠前
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rank: Integer
        # @param Phase: 溯源阶段 0:商品 1:通用 2:生产溯源 3:销售溯源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Phase: Integer
        # @param PhaseName: 溯源环节名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhaseName: String
        # @param TraceTime: 溯源时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TraceTime: String
        # @param TraceItems: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TraceItems: Array
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ChainStatus: 上链状态 0: 未上链 1: 上链中 2: 已上链 -1: 异常
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChainStatus: Integer
        # @param ChainTime: 上链时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChainTime: String
        # @param ChainData: 上链数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChainData: :class:`Tencentcloud::Trp.v20210515.models.ChainData`
        # @param PhaseData: 溯源阶段配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhaseData: :class:`Tencentcloud::Trp.v20210515.models.PhaseData`
        # @param Status: 溯源阶段状态 0: 无效, 1: 有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer

        attr_accessor :TraceId, :CorpId, :Type, :Code, :Rank, :Phase, :PhaseName, :TraceTime, :TraceItems, :CreateTime, :ChainStatus, :ChainTime, :ChainData, :PhaseData, :Status
        
        def initialize(traceid=nil, corpid=nil, type=nil, code=nil, rank=nil, phase=nil, phasename=nil, tracetime=nil, traceitems=nil, createtime=nil, chainstatus=nil, chaintime=nil, chaindata=nil, phasedata=nil, status=nil)
          @TraceId = traceid
          @CorpId = corpid
          @Type = type
          @Code = code
          @Rank = rank
          @Phase = phase
          @PhaseName = phasename
          @TraceTime = tracetime
          @TraceItems = traceitems
          @CreateTime = createtime
          @ChainStatus = chainstatus
          @ChainTime = chaintime
          @ChainData = chaindata
          @PhaseData = phasedata
          @Status = status
        end

        def deserialize(params)
          @TraceId = params['TraceId']
          @CorpId = params['CorpId']
          @Type = params['Type']
          @Code = params['Code']
          @Rank = params['Rank']
          @Phase = params['Phase']
          @PhaseName = params['PhaseName']
          @TraceTime = params['TraceTime']
          unless params['TraceItems'].nil?
            @TraceItems = []
            params['TraceItems'].each do |i|
              traceitem_tmp = TraceItem.new
              traceitem_tmp.deserialize(i)
              @TraceItems << traceitem_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @ChainStatus = params['ChainStatus']
          @ChainTime = params['ChainTime']
          unless params['ChainData'].nil?
            @ChainData = ChainData.new
            @ChainData.deserialize(params['ChainData'])
          end
          unless params['PhaseData'].nil?
            @PhaseData = PhaseData.new
            @PhaseData.deserialize(params['PhaseData'])
          end
          @Status = params['Status']
        end
      end

      # 溯源数据
      class TraceItem < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Value: 单个值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Type: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param ReadOnly: 只读
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReadOnly: Boolean
        # @param Hidden: 扫码展示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Hidden: Boolean
        # @param Values: 多个值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Values: Array
        # @param Key: 类型标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Ext: 扩展字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ext: String

        attr_accessor :Name, :Value, :Type, :ReadOnly, :Hidden, :Values, :Key, :Ext
        
        def initialize(name=nil, value=nil, type=nil, readonly=nil, hidden=nil, values=nil, key=nil, ext=nil)
          @Name = name
          @Value = value
          @Type = type
          @ReadOnly = readonly
          @Hidden = hidden
          @Values = values
          @Key = key
          @Ext = ext
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
          @Type = params['Type']
          @ReadOnly = params['ReadOnly']
          @Hidden = params['Hidden']
          @Values = params['Values']
          @Key = params['Key']
          @Ext = params['Ext']
        end
      end

    end
  end
end

