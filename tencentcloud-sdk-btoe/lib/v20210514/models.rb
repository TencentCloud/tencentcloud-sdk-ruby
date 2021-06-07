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
  module Btoe
    module V20210514
      # CreateAudioDeposit请求参数结构体
      class CreateAudioDepositRequest < TencentCloud::Common::AbstractModel
        # @param EvidenceName: 存证名称(长度最大30)
        # @type EvidenceName: String
        # @param FileContent: 数据Base64编码，大小不超过5M
        # @type FileContent: String
        # @param FileName: 对应数据Base64文件名称
        # @type FileName: String
        # @param EvidenceHash: 文件hash
        # @type EvidenceHash: String
        # @param BusinessId: 业务ID 透传 长度最大不超过64
        # @type BusinessId: String
        # @param HashType: 算法类型 0 SM3, 1 SHA256, 2 SHA384 默认0
        # @type HashType: Integer
        # @param EvidenceDescription: 存证描述
        # @type EvidenceDescription: String

        attr_accessor :EvidenceName, :FileContent, :FileName, :EvidenceHash, :BusinessId, :HashType, :EvidenceDescription
        
        def initialize(evidencename=nil, filecontent=nil, filename=nil, evidencehash=nil, businessid=nil, hashtype=nil, evidencedescription=nil)
          @EvidenceName = evidencename
          @FileContent = filecontent
          @FileName = filename
          @EvidenceHash = evidencehash
          @BusinessId = businessid
          @HashType = hashtype
          @EvidenceDescription = evidencedescription
        end

        def deserialize(params)
          @EvidenceName = params['EvidenceName']
          @FileContent = params['FileContent']
          @FileName = params['FileName']
          @EvidenceHash = params['EvidenceHash']
          @BusinessId = params['BusinessId']
          @HashType = params['HashType']
          @EvidenceDescription = params['EvidenceDescription']
        end
      end

      # CreateAudioDeposit返回参数结构体
      class CreateAudioDepositResponse < TencentCloud::Common::AbstractModel
        # @param BusinessId: 业务ID 透传 长度最大不超过64
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessId: String
        # @param EvidenceId: 请求成功，返回存证编码,用于查询存证后续业务数据
        # @type EvidenceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BusinessId, :EvidenceId, :RequestId
        
        def initialize(businessid=nil, evidenceid=nil, requestid=nil)
          @BusinessId = businessid
          @EvidenceId = evidenceid
          @RequestId = requestid
        end

        def deserialize(params)
          @BusinessId = params['BusinessId']
          @EvidenceId = params['EvidenceId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDataDeposit请求参数结构体
      class CreateDataDepositRequest < TencentCloud::Common::AbstractModel
        # @param EvidenceInfo: 业务数据明文(json格式字符串)，最大256kb
        # @type EvidenceInfo: String
        # @param EvidenceName: 存证名称(长度最大30)
        # @type EvidenceName: String
        # @param BusinessId: 业务ID 透传 长度最大不超过64
        # @type BusinessId: String
        # @param HashType: 算法类型 0 SM3, 1 SHA256, 2 SHA384 默认0
        # @type HashType: Integer
        # @param EvidenceDescription: 存证描述
        # @type EvidenceDescription: String

        attr_accessor :EvidenceInfo, :EvidenceName, :BusinessId, :HashType, :EvidenceDescription
        
        def initialize(evidenceinfo=nil, evidencename=nil, businessid=nil, hashtype=nil, evidencedescription=nil)
          @EvidenceInfo = evidenceinfo
          @EvidenceName = evidencename
          @BusinessId = businessid
          @HashType = hashtype
          @EvidenceDescription = evidencedescription
        end

        def deserialize(params)
          @EvidenceInfo = params['EvidenceInfo']
          @EvidenceName = params['EvidenceName']
          @BusinessId = params['BusinessId']
          @HashType = params['HashType']
          @EvidenceDescription = params['EvidenceDescription']
        end
      end

      # CreateDataDeposit返回参数结构体
      class CreateDataDepositResponse < TencentCloud::Common::AbstractModel
        # @param BusinessId: 业务ID 透传 长度最大不超过64
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessId: String
        # @param EvidenceId: 请求成功，返回存证编码,用于查询存证后续业务数据
        # @type EvidenceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BusinessId, :EvidenceId, :RequestId
        
        def initialize(businessid=nil, evidenceid=nil, requestid=nil)
          @BusinessId = businessid
          @EvidenceId = evidenceid
          @RequestId = requestid
        end

        def deserialize(params)
          @BusinessId = params['BusinessId']
          @EvidenceId = params['EvidenceId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDocDeposit请求参数结构体
      class CreateDocDepositRequest < TencentCloud::Common::AbstractModel
        # @param EvidenceName: 存证名称(长度最大30)
        # @type EvidenceName: String
        # @param FileContent: 数据Base64编码，大小不超过5M
        # @type FileContent: String
        # @param FileName: 对应数据Base64文件名称
        # @type FileName: String
        # @param EvidenceHash: 文件hash
        # @type EvidenceHash: String
        # @param BusinessId: 业务ID 透传 长度最大不超过64
        # @type BusinessId: String
        # @param HashType: 算法类型 0 SM3, 1 SHA256, 2 SHA384 默认0
        # @type HashType: Integer
        # @param EvidenceDescription: 存证描述
        # @type EvidenceDescription: String

        attr_accessor :EvidenceName, :FileContent, :FileName, :EvidenceHash, :BusinessId, :HashType, :EvidenceDescription
        
        def initialize(evidencename=nil, filecontent=nil, filename=nil, evidencehash=nil, businessid=nil, hashtype=nil, evidencedescription=nil)
          @EvidenceName = evidencename
          @FileContent = filecontent
          @FileName = filename
          @EvidenceHash = evidencehash
          @BusinessId = businessid
          @HashType = hashtype
          @EvidenceDescription = evidencedescription
        end

        def deserialize(params)
          @EvidenceName = params['EvidenceName']
          @FileContent = params['FileContent']
          @FileName = params['FileName']
          @EvidenceHash = params['EvidenceHash']
          @BusinessId = params['BusinessId']
          @HashType = params['HashType']
          @EvidenceDescription = params['EvidenceDescription']
        end
      end

      # CreateDocDeposit返回参数结构体
      class CreateDocDepositResponse < TencentCloud::Common::AbstractModel
        # @param BusinessId: 业务ID 透传 长度最大不超过64
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessId: String
        # @param EvidenceId: 请求成功，返回存证编码,用于查询存证后续业务数据
        # @type EvidenceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BusinessId, :EvidenceId, :RequestId
        
        def initialize(businessid=nil, evidenceid=nil, requestid=nil)
          @BusinessId = businessid
          @EvidenceId = evidenceid
          @RequestId = requestid
        end

        def deserialize(params)
          @BusinessId = params['BusinessId']
          @EvidenceId = params['EvidenceId']
          @RequestId = params['RequestId']
        end
      end

      # CreateHashDepositNoCert请求参数结构体
      class CreateHashDepositNoCertRequest < TencentCloud::Common::AbstractModel
        # @param EvidenceHash: 数据hash
        # @type EvidenceHash: String
        # @param BusinessId: 该字段为透传字段，方便调用方做业务处理， 长度最大不超过64
        # @type BusinessId: String
        # @param EvidenceInfo: 业务扩展信息
        # @type EvidenceInfo: String

        attr_accessor :EvidenceHash, :BusinessId, :EvidenceInfo
        
        def initialize(evidencehash=nil, businessid=nil, evidenceinfo=nil)
          @EvidenceHash = evidencehash
          @BusinessId = businessid
          @EvidenceInfo = evidenceinfo
        end

        def deserialize(params)
          @EvidenceHash = params['EvidenceHash']
          @BusinessId = params['BusinessId']
          @EvidenceInfo = params['EvidenceInfo']
        end
      end

      # CreateHashDepositNoCert返回参数结构体
      class CreateHashDepositNoCertResponse < TencentCloud::Common::AbstractModel
        # @param BusinessId: 透传字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessId: String
        # @param EvidenceId: 存证编码
        # @type EvidenceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BusinessId, :EvidenceId, :RequestId
        
        def initialize(businessid=nil, evidenceid=nil, requestid=nil)
          @BusinessId = businessid
          @EvidenceId = evidenceid
          @RequestId = requestid
        end

        def deserialize(params)
          @BusinessId = params['BusinessId']
          @EvidenceId = params['EvidenceId']
          @RequestId = params['RequestId']
        end
      end

      # CreateHashDepositNoSeal请求参数结构体
      class CreateHashDepositNoSealRequest < TencentCloud::Common::AbstractModel
        # @param EvidenceHash: 数据hash
        # @type EvidenceHash: String
        # @param BusinessId: 该字段为透传字段，方便调用方做业务处理， 长度最大不超过64
        # @type BusinessId: String
        # @param EvidenceInfo: 业务扩展信息
        # @type EvidenceInfo: String

        attr_accessor :EvidenceHash, :BusinessId, :EvidenceInfo
        
        def initialize(evidencehash=nil, businessid=nil, evidenceinfo=nil)
          @EvidenceHash = evidencehash
          @BusinessId = businessid
          @EvidenceInfo = evidenceinfo
        end

        def deserialize(params)
          @EvidenceHash = params['EvidenceHash']
          @BusinessId = params['BusinessId']
          @EvidenceInfo = params['EvidenceInfo']
        end
      end

      # CreateHashDepositNoSeal返回参数结构体
      class CreateHashDepositNoSealResponse < TencentCloud::Common::AbstractModel
        # @param BusinessId: 透传字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessId: String
        # @param EvidenceId: 存证编码
        # @type EvidenceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BusinessId, :EvidenceId, :RequestId
        
        def initialize(businessid=nil, evidenceid=nil, requestid=nil)
          @BusinessId = businessid
          @EvidenceId = evidenceid
          @RequestId = requestid
        end

        def deserialize(params)
          @BusinessId = params['BusinessId']
          @EvidenceId = params['EvidenceId']
          @RequestId = params['RequestId']
        end
      end

      # CreateHashDeposit请求参数结构体
      class CreateHashDepositRequest < TencentCloud::Common::AbstractModel
        # @param EvidenceName: 存证名称(长度最大30)
        # @type EvidenceName: String
        # @param EvidenceHash: 数据hash
        # @type EvidenceHash: String
        # @param BusinessId: 该字段为透传字段，方便调用方做业务处理， 长度最大不超过64
        # @type BusinessId: String
        # @param EvidenceDescription: 存证描述
        # @type EvidenceDescription: String

        attr_accessor :EvidenceName, :EvidenceHash, :BusinessId, :EvidenceDescription
        
        def initialize(evidencename=nil, evidencehash=nil, businessid=nil, evidencedescription=nil)
          @EvidenceName = evidencename
          @EvidenceHash = evidencehash
          @BusinessId = businessid
          @EvidenceDescription = evidencedescription
        end

        def deserialize(params)
          @EvidenceName = params['EvidenceName']
          @EvidenceHash = params['EvidenceHash']
          @BusinessId = params['BusinessId']
          @EvidenceDescription = params['EvidenceDescription']
        end
      end

      # CreateHashDeposit返回参数结构体
      class CreateHashDepositResponse < TencentCloud::Common::AbstractModel
        # @param BusinessId: 透传字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessId: String
        # @param EvidenceId: 存证编码
        # @type EvidenceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BusinessId, :EvidenceId, :RequestId
        
        def initialize(businessid=nil, evidenceid=nil, requestid=nil)
          @BusinessId = businessid
          @EvidenceId = evidenceid
          @RequestId = requestid
        end

        def deserialize(params)
          @BusinessId = params['BusinessId']
          @EvidenceId = params['EvidenceId']
          @RequestId = params['RequestId']
        end
      end

      # CreateImageDeposit请求参数结构体
      class CreateImageDepositRequest < TencentCloud::Common::AbstractModel
        # @param EvidenceName: 存证名称(长度最大30)
        # @type EvidenceName: String
        # @param FileContent: 数据Base64编码，大小不超过5M
        # @type FileContent: String
        # @param FileName: 对应数据Base64文件名称 test.png
        # @type FileName: String
        # @param EvidenceHash: 文件hash
        # @type EvidenceHash: String
        # @param BusinessId: 业务ID 透传 长度最大不超过64
        # @type BusinessId: String
        # @param HashType: 算法类型 0 SM3, 1 SHA256, 2 SHA384 默认0
        # @type HashType: Integer
        # @param EvidenceDescription: 存证描述
        # @type EvidenceDescription: String

        attr_accessor :EvidenceName, :FileContent, :FileName, :EvidenceHash, :BusinessId, :HashType, :EvidenceDescription
        
        def initialize(evidencename=nil, filecontent=nil, filename=nil, evidencehash=nil, businessid=nil, hashtype=nil, evidencedescription=nil)
          @EvidenceName = evidencename
          @FileContent = filecontent
          @FileName = filename
          @EvidenceHash = evidencehash
          @BusinessId = businessid
          @HashType = hashtype
          @EvidenceDescription = evidencedescription
        end

        def deserialize(params)
          @EvidenceName = params['EvidenceName']
          @FileContent = params['FileContent']
          @FileName = params['FileName']
          @EvidenceHash = params['EvidenceHash']
          @BusinessId = params['BusinessId']
          @HashType = params['HashType']
          @EvidenceDescription = params['EvidenceDescription']
        end
      end

      # CreateImageDeposit返回参数结构体
      class CreateImageDepositResponse < TencentCloud::Common::AbstractModel
        # @param BusinessId: 业务ID 透传 长度最大不超过64
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessId: String
        # @param EvidenceId: 请求成功，返回存证编码,用于查询存证后续业务数据
        # @type EvidenceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BusinessId, :EvidenceId, :RequestId
        
        def initialize(businessid=nil, evidenceid=nil, requestid=nil)
          @BusinessId = businessid
          @EvidenceId = evidenceid
          @RequestId = requestid
        end

        def deserialize(params)
          @BusinessId = params['BusinessId']
          @EvidenceId = params['EvidenceId']
          @RequestId = params['RequestId']
        end
      end

      # CreateVideoDeposit请求参数结构体
      class CreateVideoDepositRequest < TencentCloud::Common::AbstractModel
        # @param EvidenceName: 存证名称(长度最大30)
        # @type EvidenceName: String
        # @param FileContent: 数据Base64编码，大小不超过5M
        # @type FileContent: String
        # @param FileName: 对应数据Base64文件名称
        # @type FileName: String
        # @param EvidenceHash: 文件hash
        # @type EvidenceHash: String
        # @param BusinessId: 业务ID 透传 长度最大不超过64
        # @type BusinessId: String
        # @param HashType: 算法类型 0 SM3, 1 SHA256, 2 SHA384 默认0
        # @type HashType: Integer
        # @param EvidenceDescription: 存证描述
        # @type EvidenceDescription: String

        attr_accessor :EvidenceName, :FileContent, :FileName, :EvidenceHash, :BusinessId, :HashType, :EvidenceDescription
        
        def initialize(evidencename=nil, filecontent=nil, filename=nil, evidencehash=nil, businessid=nil, hashtype=nil, evidencedescription=nil)
          @EvidenceName = evidencename
          @FileContent = filecontent
          @FileName = filename
          @EvidenceHash = evidencehash
          @BusinessId = businessid
          @HashType = hashtype
          @EvidenceDescription = evidencedescription
        end

        def deserialize(params)
          @EvidenceName = params['EvidenceName']
          @FileContent = params['FileContent']
          @FileName = params['FileName']
          @EvidenceHash = params['EvidenceHash']
          @BusinessId = params['BusinessId']
          @HashType = params['HashType']
          @EvidenceDescription = params['EvidenceDescription']
        end
      end

      # CreateVideoDeposit返回参数结构体
      class CreateVideoDepositResponse < TencentCloud::Common::AbstractModel
        # @param BusinessId: 业务ID 透传 长度最大不超过64
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessId: String
        # @param EvidenceId: 请求成功，返回存证编码,用于查询存证后续业务数据
        # @type EvidenceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BusinessId, :EvidenceId, :RequestId
        
        def initialize(businessid=nil, evidenceid=nil, requestid=nil)
          @BusinessId = businessid
          @EvidenceId = evidenceid
          @RequestId = requestid
        end

        def deserialize(params)
          @BusinessId = params['BusinessId']
          @EvidenceId = params['EvidenceId']
          @RequestId = params['RequestId']
        end
      end

      # GetDepositCert请求参数结构体
      class GetDepositCertRequest < TencentCloud::Common::AbstractModel
        # @param EvidenceId: 存证编码
        # @type EvidenceId: String

        attr_accessor :EvidenceId
        
        def initialize(evidenceid=nil)
          @EvidenceId = evidenceid
        end

        def deserialize(params)
          @EvidenceId = params['EvidenceId']
        end
      end

      # GetDepositCert返回参数结构体
      class GetDepositCertResponse < TencentCloud::Common::AbstractModel
        # @param EvidenceId: 存证编码
        # @type EvidenceId: String
        # @param EvidenceCert: 存证证书文件临时链接
        # @type EvidenceCert: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EvidenceId, :EvidenceCert, :RequestId
        
        def initialize(evidenceid=nil, evidencecert=nil, requestid=nil)
          @EvidenceId = evidenceid
          @EvidenceCert = evidencecert
          @RequestId = requestid
        end

        def deserialize(params)
          @EvidenceId = params['EvidenceId']
          @EvidenceCert = params['EvidenceCert']
          @RequestId = params['RequestId']
        end
      end

      # GetDepositFile请求参数结构体
      class GetDepositFileRequest < TencentCloud::Common::AbstractModel
        # @param EvidenceId: 存证编码
        # @type EvidenceId: String

        attr_accessor :EvidenceId
        
        def initialize(evidenceid=nil)
          @EvidenceId = evidenceid
        end

        def deserialize(params)
          @EvidenceId = params['EvidenceId']
        end
      end

      # GetDepositFile返回参数结构体
      class GetDepositFileResponse < TencentCloud::Common::AbstractModel
        # @param EvidenceId: 存证编号
        # @type EvidenceId: String
        # @param EvidenceFile: 存证文件临时链接
        # @type EvidenceFile: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EvidenceId, :EvidenceFile, :RequestId
        
        def initialize(evidenceid=nil, evidencefile=nil, requestid=nil)
          @EvidenceId = evidenceid
          @EvidenceFile = evidencefile
          @RequestId = requestid
        end

        def deserialize(params)
          @EvidenceId = params['EvidenceId']
          @EvidenceFile = params['EvidenceFile']
          @RequestId = params['RequestId']
        end
      end

      # GetDepositInfo请求参数结构体
      class GetDepositInfoRequest < TencentCloud::Common::AbstractModel
        # @param EvidenceId: 存证编码
        # @type EvidenceId: String

        attr_accessor :EvidenceId
        
        def initialize(evidenceid=nil)
          @EvidenceId = evidenceid
        end

        def deserialize(params)
          @EvidenceId = params['EvidenceId']
        end
      end

      # GetDepositInfo返回参数结构体
      class GetDepositInfoResponse < TencentCloud::Common::AbstractModel
        # @param EvidenceId: 存证编号
        # @type EvidenceId: String
        # @param EvidenceTime: 上链时间
        # @type EvidenceTime: String
        # @param EvidenceTxHash: 区块链交易哈希
        # @type EvidenceTxHash: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EvidenceId, :EvidenceTime, :EvidenceTxHash, :RequestId
        
        def initialize(evidenceid=nil, evidencetime=nil, evidencetxhash=nil, requestid=nil)
          @EvidenceId = evidenceid
          @EvidenceTime = evidencetime
          @EvidenceTxHash = evidencetxhash
          @RequestId = requestid
        end

        def deserialize(params)
          @EvidenceId = params['EvidenceId']
          @EvidenceTime = params['EvidenceTime']
          @EvidenceTxHash = params['EvidenceTxHash']
          @RequestId = params['RequestId']
        end
      end

      # VerifyEvidenceBlockChainTxHash请求参数结构体
      class VerifyEvidenceBlockChainTxHashRequest < TencentCloud::Common::AbstractModel
        # @param EvidenceTxHash: 区块链交易 hash，在“存证基本信息查询（GetDepositInfo）”接口中可以获取。
        # @type EvidenceTxHash: String

        attr_accessor :EvidenceTxHash
        
        def initialize(evidencetxhash=nil)
          @EvidenceTxHash = evidencetxhash
        end

        def deserialize(params)
          @EvidenceTxHash = params['EvidenceTxHash']
        end
      end

      # VerifyEvidenceBlockChainTxHash返回参数结构体
      class VerifyEvidenceBlockChainTxHashResponse < TencentCloud::Common::AbstractModel
        # @param Result: 核验结果，true为核验成功，fals为核验失败
        # @type Result: Boolean
        # @param EvidenceTime: 存证时间，仅当核验结果为true时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EvidenceTime: String
        # @param EvidenceId: 存证编码，仅当核验结果为true时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EvidenceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :EvidenceTime, :EvidenceId, :RequestId
        
        def initialize(result=nil, evidencetime=nil, evidenceid=nil, requestid=nil)
          @Result = result
          @EvidenceTime = evidencetime
          @EvidenceId = evidenceid
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @EvidenceTime = params['EvidenceTime']
          @EvidenceId = params['EvidenceId']
          @RequestId = params['RequestId']
        end
      end

      # VerifyEvidenceHash请求参数结构体
      class VerifyEvidenceHashRequest < TencentCloud::Common::AbstractModel
        # @param EvidenceHash: 存证内容hash，hash类型即为用户在存证时所用或所选的hash类型
        # @type EvidenceHash: String

        attr_accessor :EvidenceHash
        
        def initialize(evidencehash=nil)
          @EvidenceHash = evidencehash
        end

        def deserialize(params)
          @EvidenceHash = params['EvidenceHash']
        end
      end

      # VerifyEvidenceHash返回参数结构体
      class VerifyEvidenceHashResponse < TencentCloud::Common::AbstractModel
        # @param Result: 核验结果，true为核验成功，false为核验失败
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

