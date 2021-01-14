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
  module Ssm
    module V20190923
      # CreateSecret请求参数结构体
      class CreateSecretRequest < TencentCloud::Common::AbstractModel
        # @param SecretName: 凭据名称，同一region内不可重复，最长128字节，使用字母、数字或者 - _ 的组合，第一个字符必须为字母或者数字。
        # @type SecretName: String
        # @param VersionId: 凭据版本，查询凭据信息时需要根据SecretName 和 VersionId进行查询，最长64 字节，使用字母、数字或者 - _ . 的组合并且以字母或数字开头。
        # @type VersionId: String
        # @param Description: 描述信息，用于详细描述用途等，最大支持2048字节。
        # @type Description: String
        # @param KmsKeyId: 指定对凭据进行加密的KMS CMK。如果为空则表示使用Secrets Manager为您默认创建的CMK进行加密。您也可以指定在同region 下自行创建的KMS CMK进行加密。
        # @type KmsKeyId: String
        # @param SecretBinary: 二进制凭据信息base64编码后的明文。SecretBinary 和 SecretString 必须且只能设置一个，最大支持4096字节。
        # @type SecretBinary: String
        # @param SecretString: 文本类型凭据信息明文（不需要进行base64编码）。SecretBinary 和 SecretString 必须且只能设置一个，，最大支持4096字节。
        # @type SecretString: String
        # @param Tags: 标签列表
        # @type Tags: Array

        attr_accessor :SecretName, :VersionId, :Description, :KmsKeyId, :SecretBinary, :SecretString, :Tags
        
        def initialize(secretname=nil, versionid=nil, description=nil, kmskeyid=nil, secretbinary=nil, secretstring=nil, tags=nil)
          @SecretName = secretname
          @VersionId = versionid
          @Description = description
          @KmsKeyId = kmskeyid
          @SecretBinary = secretbinary
          @SecretString = secretstring
          @Tags = tags
        end

        def deserialize(params)
          @SecretName = params['SecretName']
          @VersionId = params['VersionId']
          @Description = params['Description']
          @KmsKeyId = params['KmsKeyId']
          @SecretBinary = params['SecretBinary']
          @SecretString = params['SecretString']
          @Tags = params['Tags']
        end
      end

      # CreateSecret返回参数结构体
      class CreateSecretResponse < TencentCloud::Common::AbstractModel
        # @param SecretName: 新创建的凭据名称。
        # @type SecretName: String
        # @param VersionId: 新创建的凭据版本。
        # @type VersionId: String
        # @param TagCode: 标签操作的返回码. 0: 成功；1: 内部错误；2: 业务处理错误
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagCode: Integer
        # @param TagMsg: 标签操作的返回信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecretName, :VersionId, :TagCode, :TagMsg, :RequestId
        
        def initialize(secretname=nil, versionid=nil, tagcode=nil, tagmsg=nil, requestid=nil)
          @SecretName = secretname
          @VersionId = versionid
          @TagCode = tagcode
          @TagMsg = tagmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @SecretName = params['SecretName']
          @VersionId = params['VersionId']
          @TagCode = params['TagCode']
          @TagMsg = params['TagMsg']
          @RequestId = params['RequestId']
        end
      end

      # DeleteSecret请求参数结构体
      class DeleteSecretRequest < TencentCloud::Common::AbstractModel
        # @param SecretName: 指定需要删除的凭据名称。
        # @type SecretName: String
        # @param RecoveryWindowInDays: 指定计划删除日期，单位（天），0（默认）表示立即删除， 1-30 表示预留的天数，超出该日期之后彻底删除。
        # @type RecoveryWindowInDays: Integer

        attr_accessor :SecretName, :RecoveryWindowInDays
        
        def initialize(secretname=nil, recoverywindowindays=nil)
          @SecretName = secretname
          @RecoveryWindowInDays = recoverywindowindays
        end

        def deserialize(params)
          @SecretName = params['SecretName']
          @RecoveryWindowInDays = params['RecoveryWindowInDays']
        end
      end

      # DeleteSecret返回参数结构体
      class DeleteSecretResponse < TencentCloud::Common::AbstractModel
        # @param SecretName: 指定删除的凭据名称。
        # @type SecretName: String
        # @param DeleteTime: 凭据删除的日期，unix时间戳。
        # @type DeleteTime: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecretName, :DeleteTime, :RequestId
        
        def initialize(secretname=nil, deletetime=nil, requestid=nil)
          @SecretName = secretname
          @DeleteTime = deletetime
          @RequestId = requestid
        end

        def deserialize(params)
          @SecretName = params['SecretName']
          @DeleteTime = params['DeleteTime']
          @RequestId = params['RequestId']
        end
      end

      # DeleteSecretVersion请求参数结构体
      class DeleteSecretVersionRequest < TencentCloud::Common::AbstractModel
        # @param SecretName: 指定凭据名称。
        # @type SecretName: String
        # @param VersionId: 指定该名称下需要删除的凭据的版本号。
        # @type VersionId: String

        attr_accessor :SecretName, :VersionId
        
        def initialize(secretname=nil, versionid=nil)
          @SecretName = secretname
          @VersionId = versionid
        end

        def deserialize(params)
          @SecretName = params['SecretName']
          @VersionId = params['VersionId']
        end
      end

      # DeleteSecretVersion返回参数结构体
      class DeleteSecretVersionResponse < TencentCloud::Common::AbstractModel
        # @param SecretName: 凭据名称。
        # @type SecretName: String
        # @param VersionId: 凭据版本号。
        # @type VersionId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecretName, :VersionId, :RequestId
        
        def initialize(secretname=nil, versionid=nil, requestid=nil)
          @SecretName = secretname
          @VersionId = versionid
          @RequestId = requestid
        end

        def deserialize(params)
          @SecretName = params['SecretName']
          @VersionId = params['VersionId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecret请求参数结构体
      class DescribeSecretRequest < TencentCloud::Common::AbstractModel
        # @param SecretName: 指定需要获取凭据详细信息的凭据名称。
        # @type SecretName: String

        attr_accessor :SecretName
        
        def initialize(secretname=nil)
          @SecretName = secretname
        end

        def deserialize(params)
          @SecretName = params['SecretName']
        end
      end

      # DescribeSecret返回参数结构体
      class DescribeSecretResponse < TencentCloud::Common::AbstractModel
        # @param SecretName: 凭据名称。
        # @type SecretName: String
        # @param Description: 凭据描述信息。
        # @type Description: String
        # @param KmsKeyId: 用于加密的KMS CMK ID。
        # @type KmsKeyId: String
        # @param CreateUin: 创建者UIN。
        # @type CreateUin: Integer
        # @param Status: 凭据状态：Enabled、Disabled、PendingDelete
        # @type Status: String
        # @param DeleteTime: 删除日期，uinx 时间戳，非计划删除状态的凭据为0。
        # @type DeleteTime: Integer
        # @param CreateTime: 创建日期。
        # @type CreateTime: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecretName, :Description, :KmsKeyId, :CreateUin, :Status, :DeleteTime, :CreateTime, :RequestId
        
        def initialize(secretname=nil, description=nil, kmskeyid=nil, createuin=nil, status=nil, deletetime=nil, createtime=nil, requestid=nil)
          @SecretName = secretname
          @Description = description
          @KmsKeyId = kmskeyid
          @CreateUin = createuin
          @Status = status
          @DeleteTime = deletetime
          @CreateTime = createtime
          @RequestId = requestid
        end

        def deserialize(params)
          @SecretName = params['SecretName']
          @Description = params['Description']
          @KmsKeyId = params['KmsKeyId']
          @CreateUin = params['CreateUin']
          @Status = params['Status']
          @DeleteTime = params['DeleteTime']
          @CreateTime = params['CreateTime']
          @RequestId = params['RequestId']
        end
      end

      # DisableSecret请求参数结构体
      class DisableSecretRequest < TencentCloud::Common::AbstractModel
        # @param SecretName: 指定停用的凭据名称。
        # @type SecretName: String

        attr_accessor :SecretName
        
        def initialize(secretname=nil)
          @SecretName = secretname
        end

        def deserialize(params)
          @SecretName = params['SecretName']
        end
      end

      # DisableSecret返回参数结构体
      class DisableSecretResponse < TencentCloud::Common::AbstractModel
        # @param SecretName: 停用的凭据名称。
        # @type SecretName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecretName, :RequestId
        
        def initialize(secretname=nil, requestid=nil)
          @SecretName = secretname
          @RequestId = requestid
        end

        def deserialize(params)
          @SecretName = params['SecretName']
          @RequestId = params['RequestId']
        end
      end

      # EnableSecret请求参数结构体
      class EnableSecretRequest < TencentCloud::Common::AbstractModel
        # @param SecretName: 指定启用凭据的名称。
        # @type SecretName: String

        attr_accessor :SecretName
        
        def initialize(secretname=nil)
          @SecretName = secretname
        end

        def deserialize(params)
          @SecretName = params['SecretName']
        end
      end

      # EnableSecret返回参数结构体
      class EnableSecretResponse < TencentCloud::Common::AbstractModel
        # @param SecretName: 启用的凭据名称。
        # @type SecretName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecretName, :RequestId
        
        def initialize(secretname=nil, requestid=nil)
          @SecretName = secretname
          @RequestId = requestid
        end

        def deserialize(params)
          @SecretName = params['SecretName']
          @RequestId = params['RequestId']
        end
      end

      # GetRegions请求参数结构体
      class GetRegionsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # GetRegions返回参数结构体
      class GetRegionsResponse < TencentCloud::Common::AbstractModel
        # @param Regions: region列表。
        # @type Regions: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Regions, :RequestId
        
        def initialize(regions=nil, requestid=nil)
          @Regions = regions
          @RequestId = requestid
        end

        def deserialize(params)
          @Regions = params['Regions']
          @RequestId = params['RequestId']
        end
      end

      # GetSecretValue请求参数结构体
      class GetSecretValueRequest < TencentCloud::Common::AbstractModel
        # @param SecretName: 指定凭据的名称。
        # @type SecretName: String
        # @param VersionId: 指定对应凭据的版本号。
        # @type VersionId: String

        attr_accessor :SecretName, :VersionId
        
        def initialize(secretname=nil, versionid=nil)
          @SecretName = secretname
          @VersionId = versionid
        end

        def deserialize(params)
          @SecretName = params['SecretName']
          @VersionId = params['VersionId']
        end
      end

      # GetSecretValue返回参数结构体
      class GetSecretValueResponse < TencentCloud::Common::AbstractModel
        # @param SecretName: 凭据的名称。
        # @type SecretName: String
        # @param VersionId: 该凭据对应的版本号。
        # @type VersionId: String
        # @param SecretBinary: 在创建凭据(CreateSecret)时，如果指定的是二进制数据，则该字段为返回结果，并且使用base64进行编码，应用方需要进行base64解码后获取原始数据。SecretBinary和SecretString只有一个不为空。
        # @type SecretBinary: String
        # @param SecretString: 在创建凭据(CreateSecret)时，如果指定的是普通文本数据，则该字段为返回结果。SecretBinary和SecretString只有一个不为空。
        # @type SecretString: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecretName, :VersionId, :SecretBinary, :SecretString, :RequestId
        
        def initialize(secretname=nil, versionid=nil, secretbinary=nil, secretstring=nil, requestid=nil)
          @SecretName = secretname
          @VersionId = versionid
          @SecretBinary = secretbinary
          @SecretString = secretstring
          @RequestId = requestid
        end

        def deserialize(params)
          @SecretName = params['SecretName']
          @VersionId = params['VersionId']
          @SecretBinary = params['SecretBinary']
          @SecretString = params['SecretString']
          @RequestId = params['RequestId']
        end
      end

      # GetServiceStatus请求参数结构体
      class GetServiceStatusRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # GetServiceStatus返回参数结构体
      class GetServiceStatusResponse < TencentCloud::Common::AbstractModel
        # @param ServiceEnabled: true表示服务已开通，false 表示服务尚未开通。
        # @type ServiceEnabled: Boolean
        # @param InvalidType: 服务不可用类型： 0-未购买，1-正常， 2-欠费停服， 3-资源释放。
        # @type InvalidType: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceEnabled, :InvalidType, :RequestId
        
        def initialize(serviceenabled=nil, invalidtype=nil, requestid=nil)
          @ServiceEnabled = serviceenabled
          @InvalidType = invalidtype
          @RequestId = requestid
        end

        def deserialize(params)
          @ServiceEnabled = params['ServiceEnabled']
          @InvalidType = params['InvalidType']
          @RequestId = params['RequestId']
        end
      end

      # ListSecretVersionIds请求参数结构体
      class ListSecretVersionIdsRequest < TencentCloud::Common::AbstractModel
        # @param SecretName: 凭据名称。
        # @type SecretName: String

        attr_accessor :SecretName
        
        def initialize(secretname=nil)
          @SecretName = secretname
        end

        def deserialize(params)
          @SecretName = params['SecretName']
        end
      end

      # ListSecretVersionIds返回参数结构体
      class ListSecretVersionIdsResponse < TencentCloud::Common::AbstractModel
        # @param SecretName: 凭据名称。
        # @type SecretName: String
        # @param Versions: VersionId列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Versions: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecretName, :Versions, :RequestId
        
        def initialize(secretname=nil, versions=nil, requestid=nil)
          @SecretName = secretname
          @Versions = versions
          @RequestId = requestid
        end

        def deserialize(params)
          @SecretName = params['SecretName']
          @Versions = params['Versions']
          @RequestId = params['RequestId']
        end
      end

      # ListSecrets请求参数结构体
      class ListSecretsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 查询列表的起始位置，以0开始，不设置默认为0。
        # @type Offset: Integer
        # @param Limit: 单次查询返回的最大数量，0或不设置则使用默认值 20。
        # @type Limit: Integer
        # @param OrderType: 根据创建时间的排序方式，0或者不设置则使用降序排序， 1 表示升序排序。
        # @type OrderType: Integer
        # @param State: 根据凭据状态进行过滤，默认为0表示查询全部，1 表示查询Enabed 凭据列表，2表示查询Disabled 凭据列表， 3 表示查询PendingDelete 凭据列表。
        # @type State: Integer
        # @param SearchSecretName: 根据凭据名称进行过滤，为空表示不过滤。
        # @type SearchSecretName: String
        # @param TagFilters: 标签过滤条件
        # @type TagFilters: Array

        attr_accessor :Offset, :Limit, :OrderType, :State, :SearchSecretName, :TagFilters
        
        def initialize(offset=nil, limit=nil, ordertype=nil, state=nil, searchsecretname=nil, tagfilters=nil)
          @Offset = offset
          @Limit = limit
          @OrderType = ordertype
          @State = state
          @SearchSecretName = searchsecretname
          @TagFilters = tagfilters
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderType = params['OrderType']
          @State = params['State']
          @SearchSecretName = params['SearchSecretName']
          @TagFilters = params['TagFilters']
        end
      end

      # ListSecrets返回参数结构体
      class ListSecretsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 根据State和SearchSecretName 筛选的凭据总数。
        # @type TotalCount: Integer
        # @param SecretMetadatas: 返回凭据信息列表。
        # @type SecretMetadatas: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SecretMetadatas, :RequestId
        
        def initialize(totalcount=nil, secretmetadatas=nil, requestid=nil)
          @TotalCount = totalcount
          @SecretMetadatas = secretmetadatas
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @SecretMetadatas = params['SecretMetadatas']
          @RequestId = params['RequestId']
        end
      end

      # PutSecretValue请求参数结构体
      class PutSecretValueRequest < TencentCloud::Common::AbstractModel
        # @param SecretName: 指定需要增加版本的凭据名称。
        # @type SecretName: String
        # @param VersionId: 指定新增加的版本号，最长64 字节，使用字母、数字或者 - _ . 的组合并且以字母或数字开头。
        # @type VersionId: String
        # @param SecretBinary: 二进制凭据信息，使用base64编码。SecretBinary 和 SecretString 必须且只能设置一个。
        # @type SecretBinary: String
        # @param SecretString: 文本类型凭据信息明文（不需要进行base64编码），SecretBinary 和 SecretString 必须且只能设置一个。
        # @type SecretString: String

        attr_accessor :SecretName, :VersionId, :SecretBinary, :SecretString
        
        def initialize(secretname=nil, versionid=nil, secretbinary=nil, secretstring=nil)
          @SecretName = secretname
          @VersionId = versionid
          @SecretBinary = secretbinary
          @SecretString = secretstring
        end

        def deserialize(params)
          @SecretName = params['SecretName']
          @VersionId = params['VersionId']
          @SecretBinary = params['SecretBinary']
          @SecretString = params['SecretString']
        end
      end

      # PutSecretValue返回参数结构体
      class PutSecretValueResponse < TencentCloud::Common::AbstractModel
        # @param SecretName: 凭据名称。
        # @type SecretName: String
        # @param VersionId: 新增加的版本号。
        # @type VersionId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecretName, :VersionId, :RequestId
        
        def initialize(secretname=nil, versionid=nil, requestid=nil)
          @SecretName = secretname
          @VersionId = versionid
          @RequestId = requestid
        end

        def deserialize(params)
          @SecretName = params['SecretName']
          @VersionId = params['VersionId']
          @RequestId = params['RequestId']
        end
      end

      # RestoreSecret请求参数结构体
      class RestoreSecretRequest < TencentCloud::Common::AbstractModel
        # @param SecretName: 指定需要恢复的凭据名称。
        # @type SecretName: String

        attr_accessor :SecretName
        
        def initialize(secretname=nil)
          @SecretName = secretname
        end

        def deserialize(params)
          @SecretName = params['SecretName']
        end
      end

      # RestoreSecret返回参数结构体
      class RestoreSecretResponse < TencentCloud::Common::AbstractModel
        # @param SecretName: 凭据名称。
        # @type SecretName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecretName, :RequestId
        
        def initialize(secretname=nil, requestid=nil)
          @SecretName = secretname
          @RequestId = requestid
        end

        def deserialize(params)
          @SecretName = params['SecretName']
          @RequestId = params['RequestId']
        end
      end

      # 凭据的基础信息
      class SecretMetadata < TencentCloud::Common::AbstractModel
        # @param SecretName: 凭据名称。
        # @type SecretName: String
        # @param Description: 凭据的描述信息。
        # @type Description: String
        # @param KmsKeyId: 用于加密凭据的KMS KeyId。
        # @type KmsKeyId: String
        # @param CreateUin: 创建者UIN。
        # @type CreateUin: Integer
        # @param Status: 凭据状态：Enabled、Disabled、PendingDelete
        # @type Status: String
        # @param DeleteTime: 凭据删除日期，对于status为PendingDelete 的有效，unix时间戳。
        # @type DeleteTime: Integer
        # @param CreateTime: 凭据创建时间，unix时间戳。
        # @type CreateTime: Integer
        # @param KmsKeyType: 用于加密凭据的KMS CMK类型，DEFAULT 表示SecretsManager 创建的默认密钥， CUSTOMER 表示用户指定的密钥。
        # @type KmsKeyType: String

        attr_accessor :SecretName, :Description, :KmsKeyId, :CreateUin, :Status, :DeleteTime, :CreateTime, :KmsKeyType
        
        def initialize(secretname=nil, description=nil, kmskeyid=nil, createuin=nil, status=nil, deletetime=nil, createtime=nil, kmskeytype=nil)
          @SecretName = secretname
          @Description = description
          @KmsKeyId = kmskeyid
          @CreateUin = createuin
          @Status = status
          @DeleteTime = deletetime
          @CreateTime = createtime
          @KmsKeyType = kmskeytype
        end

        def deserialize(params)
          @SecretName = params['SecretName']
          @Description = params['Description']
          @KmsKeyId = params['KmsKeyId']
          @CreateUin = params['CreateUin']
          @Status = params['Status']
          @DeleteTime = params['DeleteTime']
          @CreateTime = params['CreateTime']
          @KmsKeyType = params['KmsKeyType']
        end
      end

      # 标签键和标签值
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue
        
        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # 标签过滤器
      class TagFilter < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: Array

        attr_accessor :TagKey, :TagValue
        
        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # UpdateDescription请求参数结构体
      class UpdateDescriptionRequest < TencentCloud::Common::AbstractModel
        # @param SecretName: 指定需要更新描述信息的凭据名。
        # @type SecretName: String
        # @param Description: 新的描述信息，最大长度2048个字节。
        # @type Description: String

        attr_accessor :SecretName, :Description
        
        def initialize(secretname=nil, description=nil)
          @SecretName = secretname
          @Description = description
        end

        def deserialize(params)
          @SecretName = params['SecretName']
          @Description = params['Description']
        end
      end

      # UpdateDescription返回参数结构体
      class UpdateDescriptionResponse < TencentCloud::Common::AbstractModel
        # @param SecretName: 凭据名称。
        # @type SecretName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecretName, :RequestId
        
        def initialize(secretname=nil, requestid=nil)
          @SecretName = secretname
          @RequestId = requestid
        end

        def deserialize(params)
          @SecretName = params['SecretName']
          @RequestId = params['RequestId']
        end
      end

      # UpdateSecret请求参数结构体
      class UpdateSecretRequest < TencentCloud::Common::AbstractModel
        # @param SecretName: 指定需要更新凭据内容的名称。
        # @type SecretName: String
        # @param VersionId: 指定需要更新凭据内容的版本号。
        # @type VersionId: String
        # @param SecretBinary: 新的凭据内容为二进制的场景使用该字段，并使用base64进行编码。SecretBinary 和 SecretString 只能一个不为空。
        # @type SecretBinary: String
        # @param SecretString: 新的凭据内容为文本的场景使用该字段，不需要base64编码。SecretBinary 和 SecretString 只能一个不为空。
        # @type SecretString: String

        attr_accessor :SecretName, :VersionId, :SecretBinary, :SecretString
        
        def initialize(secretname=nil, versionid=nil, secretbinary=nil, secretstring=nil)
          @SecretName = secretname
          @VersionId = versionid
          @SecretBinary = secretbinary
          @SecretString = secretstring
        end

        def deserialize(params)
          @SecretName = params['SecretName']
          @VersionId = params['VersionId']
          @SecretBinary = params['SecretBinary']
          @SecretString = params['SecretString']
        end
      end

      # UpdateSecret返回参数结构体
      class UpdateSecretResponse < TencentCloud::Common::AbstractModel
        # @param SecretName: 凭据名称。
        # @type SecretName: String
        # @param VersionId: 凭据版本号。
        # @type VersionId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecretName, :VersionId, :RequestId
        
        def initialize(secretname=nil, versionid=nil, requestid=nil)
          @SecretName = secretname
          @VersionId = versionid
          @RequestId = requestid
        end

        def deserialize(params)
          @SecretName = params['SecretName']
          @VersionId = params['VersionId']
          @RequestId = params['RequestId']
        end
      end

      # 凭据版本号列表信息
      class VersionInfo < TencentCloud::Common::AbstractModel
        # @param VersionId: 版本号。
        # @type VersionId: String
        # @param CreateTime: 创建时间，unix时间戳。
        # @type CreateTime: Integer

        attr_accessor :VersionId, :CreateTime
        
        def initialize(versionid=nil, createtime=nil)
          @VersionId = versionid
          @CreateTime = createtime
        end

        def deserialize(params)
          @VersionId = params['VersionId']
          @CreateTime = params['CreateTime']
        end
      end

    end
  end
end

