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
  module Btoe
    module V20210303
      # CreateAudioDeposit请求参数结构体
      class CreateAudioDepositRequest < TencentCloud::Common::AbstractModel
        # @param EvidenceName: 存证名称(长度最大30)
        # @type EvidenceName: String
        # @param FileName: 对应数据Base64文件名称
        # @type FileName: String
        # @param EvidenceHash: 文件hash
        # @type EvidenceHash: String
        # @param BusinessId: 业务ID 透传 长度最大不超过64
        # @type BusinessId: String
        # @param FileContent: 数据Base64编码，大小不超过5M
        # @type FileContent: String
        # @param FileUrl: 资源访问链接 与fileContent必须二选一
        # @type FileUrl: String
        # @param HashType: 算法类型 0 SM3, 1 SHA256, 2 SHA384 默认0
        # @type HashType: Integer
        # @param EvidenceDescription: 存证描述
        # @type EvidenceDescription: String

        attr_accessor :EvidenceName, :FileName, :EvidenceHash, :BusinessId, :FileContent, :FileUrl, :HashType, :EvidenceDescription

        def initialize(evidencename=nil, filename=nil, evidencehash=nil, businessid=nil, filecontent=nil, fileurl=nil, hashtype=nil, evidencedescription=nil)
          @EvidenceName = evidencename
          @FileName = filename
          @EvidenceHash = evidencehash
          @BusinessId = businessid
          @FileContent = filecontent
          @FileUrl = fileurl
          @HashType = hashtype
          @EvidenceDescription = evidencedescription
        end

        def deserialize(params)
          @EvidenceName = params['EvidenceName']
          @FileName = params['FileName']
          @EvidenceHash = params['EvidenceHash']
          @BusinessId = params['BusinessId']
          @FileContent = params['FileContent']
          @FileUrl = params['FileUrl']
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
        # @param EvidenceHash: 数据hash
        # @type EvidenceHash: String
        # @param BusinessId: 业务ID 透传 长度最大不超过64
        # @type BusinessId: String
        # @param HashType: 算法类型 0 SM3, 1 SHA256, 2 SHA384 默认0
        # @type HashType: Integer
        # @param EvidenceDescription: 存证描述
        # @type EvidenceDescription: String

        attr_accessor :EvidenceInfo, :EvidenceName, :EvidenceHash, :BusinessId, :HashType, :EvidenceDescription

        def initialize(evidenceinfo=nil, evidencename=nil, evidencehash=nil, businessid=nil, hashtype=nil, evidencedescription=nil)
          @EvidenceInfo = evidenceinfo
          @EvidenceName = evidencename
          @EvidenceHash = evidencehash
          @BusinessId = businessid
          @HashType = hashtype
          @EvidenceDescription = evidencedescription
        end

        def deserialize(params)
          @EvidenceInfo = params['EvidenceInfo']
          @EvidenceName = params['EvidenceName']
          @EvidenceHash = params['EvidenceHash']
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
        # @param FileName: 对应数据Base64文件名称
        # @type FileName: String
        # @param EvidenceHash: 文件hash
        # @type EvidenceHash: String
        # @param BusinessId: 业务ID 透传 长度最大不超过64
        # @type BusinessId: String
        # @param FileContent: 数据Base64编码，大小不超过5M
        # @type FileContent: String
        # @param FileUrl: 资源访问链接 与fileContent必须二选一
        # @type FileUrl: String
        # @param HashType: 算法类型 0 SM3, 1 SHA256, 2 SHA384 默认0
        # @type HashType: Integer
        # @param EvidenceDescription: 存证描述
        # @type EvidenceDescription: String

        attr_accessor :EvidenceName, :FileName, :EvidenceHash, :BusinessId, :FileContent, :FileUrl, :HashType, :EvidenceDescription

        def initialize(evidencename=nil, filename=nil, evidencehash=nil, businessid=nil, filecontent=nil, fileurl=nil, hashtype=nil, evidencedescription=nil)
          @EvidenceName = evidencename
          @FileName = filename
          @EvidenceHash = evidencehash
          @BusinessId = businessid
          @FileContent = filecontent
          @FileUrl = fileurl
          @HashType = hashtype
          @EvidenceDescription = evidencedescription
        end

        def deserialize(params)
          @EvidenceName = params['EvidenceName']
          @FileName = params['FileName']
          @EvidenceHash = params['EvidenceHash']
          @BusinessId = params['BusinessId']
          @FileContent = params['FileContent']
          @FileUrl = params['FileUrl']
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
        # @param HashType: 算法类型 0 SM3, 1 SHA256, 2 SHA384 默认0
        # @type HashType: Integer
        # @param EvidenceInfo: 业务扩展信息
        # @type EvidenceInfo: String

        attr_accessor :EvidenceHash, :BusinessId, :HashType, :EvidenceInfo

        def initialize(evidencehash=nil, businessid=nil, hashtype=nil, evidenceinfo=nil)
          @EvidenceHash = evidencehash
          @BusinessId = businessid
          @HashType = hashtype
          @EvidenceInfo = evidenceinfo
        end

        def deserialize(params)
          @EvidenceHash = params['EvidenceHash']
          @BusinessId = params['BusinessId']
          @HashType = params['HashType']
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
        # @param EvidenceTime: 上链时间
        # @type EvidenceTime: String
        # @param EvidenceTxHash: 区块链交易哈希
        # @type EvidenceTxHash: String
        # @param BlockchainHeight: 区块高度
        # @type BlockchainHeight: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BusinessId, :EvidenceId, :EvidenceTime, :EvidenceTxHash, :BlockchainHeight, :RequestId

        def initialize(businessid=nil, evidenceid=nil, evidencetime=nil, evidencetxhash=nil, blockchainheight=nil, requestid=nil)
          @BusinessId = businessid
          @EvidenceId = evidenceid
          @EvidenceTime = evidencetime
          @EvidenceTxHash = evidencetxhash
          @BlockchainHeight = blockchainheight
          @RequestId = requestid
        end

        def deserialize(params)
          @BusinessId = params['BusinessId']
          @EvidenceId = params['EvidenceId']
          @EvidenceTime = params['EvidenceTime']
          @EvidenceTxHash = params['EvidenceTxHash']
          @BlockchainHeight = params['BlockchainHeight']
          @RequestId = params['RequestId']
        end
      end

      # CreateHashDepositNoSeal请求参数结构体
      class CreateHashDepositNoSealRequest < TencentCloud::Common::AbstractModel
        # @param EvidenceHash: 数据hash
        # @type EvidenceHash: String
        # @param BusinessId: 该字段为透传字段，方便调用方做业务处理， 长度最大不超过64
        # @type BusinessId: String
        # @param HashType: 算法类型 0 SM3, 1 SHA256, 2 SHA384 默认0
        # @type HashType: Integer
        # @param EvidenceInfo: 业务扩展信息
        # @type EvidenceInfo: String

        attr_accessor :EvidenceHash, :BusinessId, :HashType, :EvidenceInfo

        def initialize(evidencehash=nil, businessid=nil, hashtype=nil, evidenceinfo=nil)
          @EvidenceHash = evidencehash
          @BusinessId = businessid
          @HashType = hashtype
          @EvidenceInfo = evidenceinfo
        end

        def deserialize(params)
          @EvidenceHash = params['EvidenceHash']
          @BusinessId = params['BusinessId']
          @HashType = params['HashType']
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
        # @param EvidenceTime: 上链时间
        # @type EvidenceTime: String
        # @param EvidenceTxHash: 区块链交易哈希
        # @type EvidenceTxHash: String
        # @param BlockchainHeight: 区块高度
        # @type BlockchainHeight: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BusinessId, :EvidenceId, :EvidenceTime, :EvidenceTxHash, :BlockchainHeight, :RequestId

        def initialize(businessid=nil, evidenceid=nil, evidencetime=nil, evidencetxhash=nil, blockchainheight=nil, requestid=nil)
          @BusinessId = businessid
          @EvidenceId = evidenceid
          @EvidenceTime = evidencetime
          @EvidenceTxHash = evidencetxhash
          @BlockchainHeight = blockchainheight
          @RequestId = requestid
        end

        def deserialize(params)
          @BusinessId = params['BusinessId']
          @EvidenceId = params['EvidenceId']
          @EvidenceTime = params['EvidenceTime']
          @EvidenceTxHash = params['EvidenceTxHash']
          @BlockchainHeight = params['BlockchainHeight']
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
        # @param HashType: 算法类型 0 SM3, 1 SHA256, 2 SHA384 默认0
        # @type HashType: Integer
        # @param EvidenceDescription: 存证描述
        # @type EvidenceDescription: String

        attr_accessor :EvidenceName, :EvidenceHash, :BusinessId, :HashType, :EvidenceDescription

        def initialize(evidencename=nil, evidencehash=nil, businessid=nil, hashtype=nil, evidencedescription=nil)
          @EvidenceName = evidencename
          @EvidenceHash = evidencehash
          @BusinessId = businessid
          @HashType = hashtype
          @EvidenceDescription = evidencedescription
        end

        def deserialize(params)
          @EvidenceName = params['EvidenceName']
          @EvidenceHash = params['EvidenceHash']
          @BusinessId = params['BusinessId']
          @HashType = params['HashType']
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
        # @param FileName: 对应数据Base64文件名称 test.png
        # @type FileName: String
        # @param EvidenceHash: 文件hash
        # @type EvidenceHash: String
        # @param BusinessId: 业务ID 透传 长度最大不超过64
        # @type BusinessId: String
        # @param FileContent: 数据Base64编码，大小不超过5M
        # @type FileContent: String
        # @param FileUrl: 资源访问链接 与fileContent必须二选一
        # @type FileUrl: String
        # @param HashType: 算法类型 0 SM3, 1 SHA256, 2 SHA384 默认0
        # @type HashType: Integer
        # @param EvidenceDescription: 存证描述
        # @type EvidenceDescription: String

        attr_accessor :EvidenceName, :FileName, :EvidenceHash, :BusinessId, :FileContent, :FileUrl, :HashType, :EvidenceDescription

        def initialize(evidencename=nil, filename=nil, evidencehash=nil, businessid=nil, filecontent=nil, fileurl=nil, hashtype=nil, evidencedescription=nil)
          @EvidenceName = evidencename
          @FileName = filename
          @EvidenceHash = evidencehash
          @BusinessId = businessid
          @FileContent = filecontent
          @FileUrl = fileurl
          @HashType = hashtype
          @EvidenceDescription = evidencedescription
        end

        def deserialize(params)
          @EvidenceName = params['EvidenceName']
          @FileName = params['FileName']
          @EvidenceHash = params['EvidenceHash']
          @BusinessId = params['BusinessId']
          @FileContent = params['FileContent']
          @FileUrl = params['FileUrl']
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
        # @param FileName: 对应数据Base64文件名称
        # @type FileName: String
        # @param EvidenceHash: 文件hash
        # @type EvidenceHash: String
        # @param BusinessId: 业务ID 透传 长度最大不超过64
        # @type BusinessId: String
        # @param FileContent: 数据Base64编码，大小不超过5M
        # @type FileContent: String
        # @param FileUrl: 资源访问链接 与fileContent必须二选一
        # @type FileUrl: String
        # @param HashType: 算法类型 0 SM3, 1 SHA256, 2 SHA384 默认0
        # @type HashType: Integer
        # @param EvidenceDescription: 存证描述
        # @type EvidenceDescription: String

        attr_accessor :EvidenceName, :FileName, :EvidenceHash, :BusinessId, :FileContent, :FileUrl, :HashType, :EvidenceDescription

        def initialize(evidencename=nil, filename=nil, evidencehash=nil, businessid=nil, filecontent=nil, fileurl=nil, hashtype=nil, evidencedescription=nil)
          @EvidenceName = evidencename
          @FileName = filename
          @EvidenceHash = evidencehash
          @BusinessId = businessid
          @FileContent = filecontent
          @FileUrl = fileurl
          @HashType = hashtype
          @EvidenceDescription = evidencedescription
        end

        def deserialize(params)
          @EvidenceName = params['EvidenceName']
          @FileName = params['FileName']
          @EvidenceHash = params['EvidenceHash']
          @BusinessId = params['BusinessId']
          @FileContent = params['FileContent']
          @FileUrl = params['FileUrl']
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

      # CreateWebpageDeposit请求参数结构体
      class CreateWebpageDepositRequest < TencentCloud::Common::AbstractModel
        # @param EvidenceName: 存证名称(长度最大30)
        # @type EvidenceName: String
        # @param EvidenceUrl: 网页链接
        # @type EvidenceUrl: String
        # @param BusinessId: 业务ID 透传 长度最大不超过64
        # @type BusinessId: String
        # @param HashType: 算法类型 0 SM3, 1 SHA256, 2 SHA384 默认0
        # @type HashType: Integer
        # @param EvidenceDescription: 存证描述
        # @type EvidenceDescription: String

        attr_accessor :EvidenceName, :EvidenceUrl, :BusinessId, :HashType, :EvidenceDescription

        def initialize(evidencename=nil, evidenceurl=nil, businessid=nil, hashtype=nil, evidencedescription=nil)
          @EvidenceName = evidencename
          @EvidenceUrl = evidenceurl
          @BusinessId = businessid
          @HashType = hashtype
          @EvidenceDescription = evidencedescription
        end

        def deserialize(params)
          @EvidenceName = params['EvidenceName']
          @EvidenceUrl = params['EvidenceUrl']
          @BusinessId = params['BusinessId']
          @HashType = params['HashType']
          @EvidenceDescription = params['EvidenceDescription']
        end
      end

      # CreateWebpageDeposit返回参数结构体
      class CreateWebpageDepositResponse < TencentCloud::Common::AbstractModel
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
        # @param BlockchainHeight: 区块高度
        # @type BlockchainHeight: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EvidenceId, :EvidenceTime, :EvidenceTxHash, :BlockchainHeight, :RequestId

        def initialize(evidenceid=nil, evidencetime=nil, evidencetxhash=nil, blockchainheight=nil, requestid=nil)
          @EvidenceId = evidenceid
          @EvidenceTime = evidencetime
          @EvidenceTxHash = evidencetxhash
          @BlockchainHeight = blockchainheight
          @RequestId = requestid
        end

        def deserialize(params)
          @EvidenceId = params['EvidenceId']
          @EvidenceTime = params['EvidenceTime']
          @EvidenceTxHash = params['EvidenceTxHash']
          @BlockchainHeight = params['BlockchainHeight']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

