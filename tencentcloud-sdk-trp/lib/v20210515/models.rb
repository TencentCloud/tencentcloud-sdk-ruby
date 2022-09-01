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
        # @param BatchCode: 码
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
        # @param Status: 状态
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

        attr_accessor :BatchId, :CorpId, :BatchCode, :CodeCnt, :MerchantId, :ProductId, :BatchType, :Remark, :MpTpl, :Status, :CreateTime, :UpdateTime, :MerchantName, :ProductName, :Ext, :TplName
        
        def initialize(batchid=nil, corpid=nil, batchcode=nil, codecnt=nil, merchantid=nil, productid=nil, batchtype=nil, remark=nil, mptpl=nil, status=nil, createtime=nil, updatetime=nil, merchantname=nil, productname=nil, ext=nil, tplname=nil)
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
        # @param MpTpl: 活动ID
        # @type MpTpl: String

        attr_accessor :CorpId, :MerchantId, :ProductId, :BatchType, :BatchId, :Remark, :MpTpl
        
        def initialize(corpid=nil, merchantid=nil, productid=nil, batchtype=nil, batchid=nil, remark=nil, mptpl=nil)
          @CorpId = corpid
          @MerchantId = merchantid
          @ProductId = productid
          @BatchType = batchtype
          @BatchId = batchid
          @Remark = remark
          @MpTpl = mptpl
        end

        def deserialize(params)
          @CorpId = params['CorpId']
          @MerchantId = params['MerchantId']
          @ProductId = params['ProductId']
          @BatchType = params['BatchType']
          @BatchId = params['BatchId']
          @Remark = params['Remark']
          @MpTpl = params['MpTpl']
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

      # CreateMerchant请求参数结构体
      class CreateMerchantRequest < TencentCloud::Common::AbstractModel
        # @param Name: 商户名称
        # @type Name: String
        # @param Remark: 备注
        # @type Remark: String
        # @param CorpId: 企业ID
        # @type CorpId: Integer

        attr_accessor :Name, :Remark, :CorpId
        
        def initialize(name=nil, remark=nil, corpid=nil)
          @Name = name
          @Remark = remark
          @CorpId = corpid
        end

        def deserialize(params)
          @Name = params['Name']
          @Remark = params['Remark']
          @CorpId = params['CorpId']
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
        # @param Phase: 溯源阶段 0:商品 1:通用 2:内部溯源 3:外部溯源
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

        attr_accessor :Name, :PageSize, :PageNumber, :CorpId
        
        def initialize(name=nil, pagesize=nil, pagenumber=nil, corpid=nil)
          @Name = name
          @PageSize = pagesize
          @PageNumber = pagenumber
          @CorpId = corpid
        end

        def deserialize(params)
          @Name = params['Name']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @CorpId = params['CorpId']
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

        attr_accessor :MerchantId, :CorpId, :Name, :Remark, :CreateTime, :UpdateTime, :CodeRule
        
        def initialize(merchantid=nil, corpid=nil, name=nil, remark=nil, createtime=nil, updatetime=nil, coderule=nil)
          @MerchantId = merchantid
          @CorpId = corpid
          @Name = name
          @Remark = remark
          @CreateTime = createtime
          @UpdateTime = updatetime
          @CodeRule = coderule
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          @CorpId = params['CorpId']
          @Name = params['Name']
          @Remark = params['Remark']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @CodeRule = params['CodeRule']
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
        # @param MpTpl: 模板ID
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

        attr_accessor :Name, :MerchantId, :Remark, :CorpId
        
        def initialize(name=nil, merchantid=nil, remark=nil, corpid=nil)
          @Name = name
          @MerchantId = merchantid
          @Remark = remark
          @CorpId = corpid
        end

        def deserialize(params)
          @Name = params['Name']
          @MerchantId = params['MerchantId']
          @Remark = params['Remark']
          @CorpId = params['CorpId']
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
        # @param Phase: [无效] 溯源阶段 0:商品 1:通用 2:物流
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

      # 数组
      class PackSpec < TencentCloud::Common::AbstractModel
        # @param Level: 层级
        # @type Level: Integer
        # @param Rate: 比例
        # @type Rate: Integer
        # @param Amount: 数量
        # @type Amount: Integer

        attr_accessor :Level, :Rate, :Amount
        
        def initialize(level=nil, rate=nil, amount=nil)
          @Level = level
          @Rate = rate
          @Amount = amount
        end

        def deserialize(params)
          @Level = params['Level']
          @Rate = params['Rate']
          @Amount = params['Amount']
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
        # @param Code: 码
        # @type Code: String
        # @param CorpId: 企业ID
        # @type CorpId: Integer
        # @param PackId: 包ID
        # @type PackId: String
        # @param BatchId: 批次ID
        # @type BatchId: String
        # @param MerchantId: 所属商户ID
        # @type MerchantId: String
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param Status: 状态
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
        # @param Type: 0
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param Code: 码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: String
        # @param Rank: 排序
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rank: Integer
        # @param Phase: 溯源阶段 0:商品 1:通用 2:物流
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Phase: Integer
        # @param PhaseName: 环节名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhaseName: String
        # @param TraceTime: 时间
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
        # @param ChainData: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChainData: :class:`Tencentcloud::Trp.v20210515.models.ChainData`

        attr_accessor :TraceId, :CorpId, :Type, :Code, :Rank, :Phase, :PhaseName, :TraceTime, :TraceItems, :CreateTime, :ChainStatus, :ChainTime, :ChainData
        
        def initialize(traceid=nil, corpid=nil, type=nil, code=nil, rank=nil, phase=nil, phasename=nil, tracetime=nil, traceitems=nil, createtime=nil, chainstatus=nil, chaintime=nil, chaindata=nil)
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

        attr_accessor :Name, :Value, :Type, :ReadOnly, :Hidden, :Values, :Key
        
        def initialize(name=nil, value=nil, type=nil, readonly=nil, hidden=nil, values=nil, key=nil)
          @Name = name
          @Value = value
          @Type = type
          @ReadOnly = readonly
          @Hidden = hidden
          @Values = values
          @Key = key
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
          @Type = params['Type']
          @ReadOnly = params['ReadOnly']
          @Hidden = params['Hidden']
          @Values = params['Values']
          @Key = params['Key']
        end
      end

    end
  end
end

