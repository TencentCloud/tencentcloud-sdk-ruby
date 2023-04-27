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
      # CreateProductSecret请求参数结构体
      class CreateProductSecretRequest < TencentCloud::Common::AbstractModel
        # @param SecretName: 凭据名称，同一region内不可重复，最长128字节，使用字母、数字或者 - _ 的组合，第一个字符必须为字母或者数字。
        # @type SecretName: String
        # @param UserNamePrefix: 用户账号名前缀，由用户自行指定，长度限定在8个字符以内，
        # 可选字符集包括：
        # 数字字符：[0, 9]，
        # 小写字符：[a, z]，
        # 大写字符：[A, Z]，
        # 特殊字符(全英文符号)：下划线(_)，
        # 前缀必须以大写或小写字母开头。
        # @type UserNamePrefix: String
        # @param ProductName: 凭据所绑定的云产品名称，如Mysql，可以通过DescribeSupportedProducts接口获取所支持的云产品名称。
        # @type ProductName: String
        # @param InstanceID: 云产品实例ID。
        # @type InstanceID: String
        # @param Domains: 账号的域名，IP形式，支持填入%。
        # @type Domains: Array
        # @param PrivilegesList: 将凭据与云产品实例绑定时，需要授予的权限列表。
        # @type PrivilegesList: Array
        # @param Description: 描述信息，用于详细描述用途等，最大支持2048字节。
        # @type Description: String
        # @param KmsKeyId: 指定对凭据进行加密的KMS CMK。
        # 如果为空则表示使用Secrets Manager为您默认创建的CMK进行加密。
        # 您也可以指定在同region 下自行创建的KMS CMK进行加密。
        # @type KmsKeyId: String
        # @param Tags: 标签列表。
        # @type Tags: Array
        # @param RotationBeginTime: 用户自定义的开始轮转时间，格式：2006-01-02 15:04:05。
        # 当EnableRotation为True时，此参数必填。
        # @type RotationBeginTime: String
        # @param EnableRotation: 是否开启轮转
        # True -- 开启
        # False -- 不开启
        # 如果不指定，默认为False。
        # @type EnableRotation: Boolean
        # @param RotationFrequency: 轮转周期，以天为单位，默认为1天。
        # @type RotationFrequency: Integer

        attr_accessor :SecretName, :UserNamePrefix, :ProductName, :InstanceID, :Domains, :PrivilegesList, :Description, :KmsKeyId, :Tags, :RotationBeginTime, :EnableRotation, :RotationFrequency
        
        def initialize(secretname=nil, usernameprefix=nil, productname=nil, instanceid=nil, domains=nil, privilegeslist=nil, description=nil, kmskeyid=nil, tags=nil, rotationbegintime=nil, enablerotation=nil, rotationfrequency=nil)
          @SecretName = secretname
          @UserNamePrefix = usernameprefix
          @ProductName = productname
          @InstanceID = instanceid
          @Domains = domains
          @PrivilegesList = privilegeslist
          @Description = description
          @KmsKeyId = kmskeyid
          @Tags = tags
          @RotationBeginTime = rotationbegintime
          @EnableRotation = enablerotation
          @RotationFrequency = rotationfrequency
        end

        def deserialize(params)
          @SecretName = params['SecretName']
          @UserNamePrefix = params['UserNamePrefix']
          @ProductName = params['ProductName']
          @InstanceID = params['InstanceID']
          @Domains = params['Domains']
          unless params['PrivilegesList'].nil?
            @PrivilegesList = []
            params['PrivilegesList'].each do |i|
              productprivilegeunit_tmp = ProductPrivilegeUnit.new
              productprivilegeunit_tmp.deserialize(i)
              @PrivilegesList << productprivilegeunit_tmp
            end
          end
          @Description = params['Description']
          @KmsKeyId = params['KmsKeyId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @RotationBeginTime = params['RotationBeginTime']
          @EnableRotation = params['EnableRotation']
          @RotationFrequency = params['RotationFrequency']
        end
      end

      # CreateProductSecret返回参数结构体
      class CreateProductSecretResponse < TencentCloud::Common::AbstractModel
        # @param SecretName: 创建的凭据名称。
        # @type SecretName: String
        # @param TagCode: 标签操作的返回码. 0: 成功；1: 内部错误；2: 业务处理错误。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagCode: Integer
        # @param TagMsg: 标签操作的返回信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagMsg: String
        # @param FlowID: 创建云产品凭据异步任务ID号。
        # @type FlowID: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecretName, :TagCode, :TagMsg, :FlowID, :RequestId
        
        def initialize(secretname=nil, tagcode=nil, tagmsg=nil, flowid=nil, requestid=nil)
          @SecretName = secretname
          @TagCode = tagcode
          @TagMsg = tagmsg
          @FlowID = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @SecretName = params['SecretName']
          @TagCode = params['TagCode']
          @TagMsg = params['TagMsg']
          @FlowID = params['FlowID']
          @RequestId = params['RequestId']
        end
      end

      # CreateSSHKeyPairSecret请求参数结构体
      class CreateSSHKeyPairSecretRequest < TencentCloud::Common::AbstractModel
        # @param SecretName: 凭据名称，同一region内不可重复，最长128字节，使用字母、数字或者 - _ 的组合，第一个字符必须为字母或者数字。
        # @type SecretName: String
        # @param ProjectId: 密钥对创建后所属的项目ID。
        # @type ProjectId: Integer
        # @param Description: 描述信息，用于详细描述用途等，最大支持2048字节。
        # @type Description: String
        # @param KmsKeyId: 指定对凭据进行加密的KMS CMK。
        # 如果为空则表示使用Secrets Manager为您默认创建的CMK进行加密。
        # 您也可以指定在同region 下自行创建的KMS CMK进行加密。
        # @type KmsKeyId: String
        # @param Tags: 标签列表。
        # @type Tags: Array
        # @param SSHKeyName: 用户自定义输入的SSH密钥对的名称，可由数字，字母和下划线组成，只能以数字和字母开头，长度不超过25个字符。
        # @type SSHKeyName: String

        attr_accessor :SecretName, :ProjectId, :Description, :KmsKeyId, :Tags, :SSHKeyName
        
        def initialize(secretname=nil, projectid=nil, description=nil, kmskeyid=nil, tags=nil, sshkeyname=nil)
          @SecretName = secretname
          @ProjectId = projectid
          @Description = description
          @KmsKeyId = kmskeyid
          @Tags = tags
          @SSHKeyName = sshkeyname
        end

        def deserialize(params)
          @SecretName = params['SecretName']
          @ProjectId = params['ProjectId']
          @Description = params['Description']
          @KmsKeyId = params['KmsKeyId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @SSHKeyName = params['SSHKeyName']
        end
      end

      # CreateSSHKeyPairSecret返回参数结构体
      class CreateSSHKeyPairSecretResponse < TencentCloud::Common::AbstractModel
        # @param SecretName: 创建的凭据名称。
        # @type SecretName: String
        # @param SSHKeyID: 创建的SSH密钥ID。
        # @type SSHKeyID: String
        # @param SSHKeyName: 创建的SSH密钥名称。
        # @type SSHKeyName: String
        # @param TagCode: 标签操作的返回码. 0: 成功；1: 内部错误；2: 业务处理错误。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagCode: Integer
        # @param TagMsg: 标签操作的返回信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecretName, :SSHKeyID, :SSHKeyName, :TagCode, :TagMsg, :RequestId
        
        def initialize(secretname=nil, sshkeyid=nil, sshkeyname=nil, tagcode=nil, tagmsg=nil, requestid=nil)
          @SecretName = secretname
          @SSHKeyID = sshkeyid
          @SSHKeyName = sshkeyname
          @TagCode = tagcode
          @TagMsg = tagmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @SecretName = params['SecretName']
          @SSHKeyID = params['SSHKeyID']
          @SSHKeyName = params['SSHKeyName']
          @TagCode = params['TagCode']
          @TagMsg = params['TagMsg']
          @RequestId = params['RequestId']
        end
      end

      # CreateSecret请求参数结构体
      class CreateSecretRequest < TencentCloud::Common::AbstractModel
        # @param SecretName: 凭据名称，同一region内不可重复，最长128字节，使用字母、数字或者 - _ 的组合，第一个字符必须为字母或者数字。一旦创建不可修改。
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
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
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
        # 当凭据类型为SSH密钥对凭据时，此字段只能取值只能为0。
        # @type RecoveryWindowInDays: Integer
        # @param CleanSSHKey: 当凭据类型为SSH密钥对凭据时，此字段有效，取值：
        # True -- 表示不仅仅清理此凭据中存储的SSH密钥信息，还会将SSH密钥对从CVM侧进行清理。注意，如果SSH密钥此时绑定了CVM实例，那么会清理失败。
        # False --  表示仅仅清理此凭据中存储的SSH密钥信息，不在CVM进侧进行清理。
        # @type CleanSSHKey: Boolean

        attr_accessor :SecretName, :RecoveryWindowInDays, :CleanSSHKey
        
        def initialize(secretname=nil, recoverywindowindays=nil, cleansshkey=nil)
          @SecretName = secretname
          @RecoveryWindowInDays = recoverywindowindays
          @CleanSSHKey = cleansshkey
        end

        def deserialize(params)
          @SecretName = params['SecretName']
          @RecoveryWindowInDays = params['RecoveryWindowInDays']
          @CleanSSHKey = params['CleanSSHKey']
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

      # DescribeAsyncRequestInfo请求参数结构体
      class DescribeAsyncRequestInfoRequest < TencentCloud::Common::AbstractModel
        # @param FlowID: 异步任务ID号。
        # @type FlowID: Integer

        attr_accessor :FlowID
        
        def initialize(flowid=nil)
          @FlowID = flowid
        end

        def deserialize(params)
          @FlowID = params['FlowID']
        end
      end

      # DescribeAsyncRequestInfo返回参数结构体
      class DescribeAsyncRequestInfoResponse < TencentCloud::Common::AbstractModel
        # @param TaskStatus: 0:处理中，1:处理成功，2:处理失败
        # @type TaskStatus: Integer
        # @param Description: 任务描述信息。
        # @type Description: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskStatus, :Description, :RequestId
        
        def initialize(taskstatus=nil, description=nil, requestid=nil)
          @TaskStatus = taskstatus
          @Description = description
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskStatus = params['TaskStatus']
          @Description = params['Description']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRotationDetail请求参数结构体
      class DescribeRotationDetailRequest < TencentCloud::Common::AbstractModel
        # @param SecretName: 指定需要获取凭据轮转详细信息的凭据名称。
        # @type SecretName: String

        attr_accessor :SecretName
        
        def initialize(secretname=nil)
          @SecretName = secretname
        end

        def deserialize(params)
          @SecretName = params['SecretName']
        end
      end

      # DescribeRotationDetail返回参数结构体
      class DescribeRotationDetailResponse < TencentCloud::Common::AbstractModel
        # @param EnableRotation: 否允许轮转，true表示开启轮转，false表示禁止轮转。
        # @type EnableRotation: Boolean
        # @param Frequency: 轮转的频率，以天为单位，默认为1天。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Frequency: Integer
        # @param LatestRotateTime: 最近一次轮转的时间，显式可见的时间字符串，格式 2006-01-02 15:04:05。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestRotateTime: String
        # @param NextRotateBeginTime: 下一次开始轮转的时间，显式可见的时间字符串，格式 2006-01-02 15:04:05。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextRotateBeginTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnableRotation, :Frequency, :LatestRotateTime, :NextRotateBeginTime, :RequestId
        
        def initialize(enablerotation=nil, frequency=nil, latestrotatetime=nil, nextrotatebegintime=nil, requestid=nil)
          @EnableRotation = enablerotation
          @Frequency = frequency
          @LatestRotateTime = latestrotatetime
          @NextRotateBeginTime = nextrotatebegintime
          @RequestId = requestid
        end

        def deserialize(params)
          @EnableRotation = params['EnableRotation']
          @Frequency = params['Frequency']
          @LatestRotateTime = params['LatestRotateTime']
          @NextRotateBeginTime = params['NextRotateBeginTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRotationHistory请求参数结构体
      class DescribeRotationHistoryRequest < TencentCloud::Common::AbstractModel
        # @param SecretName: 指定需要获取凭据轮转历史的凭据名称。
        # @type SecretName: String

        attr_accessor :SecretName
        
        def initialize(secretname=nil)
          @SecretName = secretname
        end

        def deserialize(params)
          @SecretName = params['SecretName']
        end
      end

      # DescribeRotationHistory返回参数结构体
      class DescribeRotationHistoryResponse < TencentCloud::Common::AbstractModel
        # @param VersionIDs: 版本号列表。
        # @type VersionIDs: Array
        # @param TotalCount: 版本号个数，可以给用户展示的版本号个数上限为10个。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VersionIDs, :TotalCount, :RequestId
        
        def initialize(versionids=nil, totalcount=nil, requestid=nil)
          @VersionIDs = versionids
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @VersionIDs = params['VersionIDs']
          @TotalCount = params['TotalCount']
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
        # @param Status: 凭据状态：Enabled、Disabled、PendingDelete, Creating, Failed。
        # @type Status: String
        # @param DeleteTime: 删除日期，uinx 时间戳，非计划删除状态的凭据为0。
        # @type DeleteTime: Integer
        # @param CreateTime: 创建日期。
        # @type CreateTime: Integer
        # @param SecretType: 0 --  用户自定义凭据类型；1 -- 数据库凭据类型；2 -- SSH密钥对凭据类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecretType: Integer
        # @param ProductName: 云产品名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductName: String
        # @param ResourceID: 云产品实例ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceID: String
        # @param RotationStatus: 是否开启轮转：True -- 开启轮转；False -- 关闭轮转。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RotationStatus: Boolean
        # @param RotationFrequency: 轮转周期，默认以天为单位。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RotationFrequency: Integer
        # @param ResourceName: 当凭据类型为SSH密钥对凭据时，此字段有效，用于表示SSH密钥对凭据的名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceName: String
        # @param ProjectID: 当凭据类型为SSH密钥对凭据时，此字段有效，用于表示SSH密钥对所属的项目ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectID: Integer
        # @param AssociatedInstanceIDs: 当凭据类型为SSH密钥对凭据时，此字段有效，用于表示SSH密钥对所关联的CVM实例ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssociatedInstanceIDs: Array
        # @param TargetUin: 当凭据类型为云API密钥对凭据时，此字段有效，用于表示此云API密钥对所属的用户UIN。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetUin: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecretName, :Description, :KmsKeyId, :CreateUin, :Status, :DeleteTime, :CreateTime, :SecretType, :ProductName, :ResourceID, :RotationStatus, :RotationFrequency, :ResourceName, :ProjectID, :AssociatedInstanceIDs, :TargetUin, :RequestId
        
        def initialize(secretname=nil, description=nil, kmskeyid=nil, createuin=nil, status=nil, deletetime=nil, createtime=nil, secrettype=nil, productname=nil, resourceid=nil, rotationstatus=nil, rotationfrequency=nil, resourcename=nil, projectid=nil, associatedinstanceids=nil, targetuin=nil, requestid=nil)
          @SecretName = secretname
          @Description = description
          @KmsKeyId = kmskeyid
          @CreateUin = createuin
          @Status = status
          @DeleteTime = deletetime
          @CreateTime = createtime
          @SecretType = secrettype
          @ProductName = productname
          @ResourceID = resourceid
          @RotationStatus = rotationstatus
          @RotationFrequency = rotationfrequency
          @ResourceName = resourcename
          @ProjectID = projectid
          @AssociatedInstanceIDs = associatedinstanceids
          @TargetUin = targetuin
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
          @SecretType = params['SecretType']
          @ProductName = params['ProductName']
          @ResourceID = params['ResourceID']
          @RotationStatus = params['RotationStatus']
          @RotationFrequency = params['RotationFrequency']
          @ResourceName = params['ResourceName']
          @ProjectID = params['ProjectID']
          @AssociatedInstanceIDs = params['AssociatedInstanceIDs']
          @TargetUin = params['TargetUin']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSupportedProducts请求参数结构体
      class DescribeSupportedProductsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeSupportedProducts返回参数结构体
      class DescribeSupportedProductsResponse < TencentCloud::Common::AbstractModel
        # @param Products: 支持的产品列表。
        # @type Products: Array
        # @param TotalCount: 支持的产品个数
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
          @Products = params['Products']
          @TotalCount = params['TotalCount']
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

      # GetSSHKeyPairValue请求参数结构体
      class GetSSHKeyPairValueRequest < TencentCloud::Common::AbstractModel
        # @param SecretName: 凭据名称，此凭据只能为SSH密钥对凭据类型。
        # @type SecretName: String
        # @param SSHKeyId: 密钥对ID，是云服务器中密钥对的唯一标识。
        # @type SSHKeyId: String

        attr_accessor :SecretName, :SSHKeyId
        
        def initialize(secretname=nil, sshkeyid=nil)
          @SecretName = secretname
          @SSHKeyId = sshkeyid
        end

        def deserialize(params)
          @SecretName = params['SecretName']
          @SSHKeyId = params['SSHKeyId']
        end
      end

      # GetSSHKeyPairValue返回参数结构体
      class GetSSHKeyPairValueResponse < TencentCloud::Common::AbstractModel
        # @param SSHKeyID: SSH密钥对ID。
        # @type SSHKeyID: String
        # @param PublicKey: 公钥明文，使用base64编码。
        # @type PublicKey: String
        # @param PrivateKey: 私钥明文，使用base64编码
        # @type PrivateKey: String
        # @param ProjectID: 此密钥对所属的项目ID。
        # @type ProjectID: Integer
        # @param SSHKeyDescription: SSH密钥对的描述信息。
        # 用户可以在CVM侧控制台对密钥对的描述信息进行修改。
        # @type SSHKeyDescription: String
        # @param SSHKeyName: SSH密钥对的名称。
        # 用户可以在CVM侧控制台对密钥对的名称进行修改。
        # @type SSHKeyName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SSHKeyID, :PublicKey, :PrivateKey, :ProjectID, :SSHKeyDescription, :SSHKeyName, :RequestId
        
        def initialize(sshkeyid=nil, publickey=nil, privatekey=nil, projectid=nil, sshkeydescription=nil, sshkeyname=nil, requestid=nil)
          @SSHKeyID = sshkeyid
          @PublicKey = publickey
          @PrivateKey = privatekey
          @ProjectID = projectid
          @SSHKeyDescription = sshkeydescription
          @SSHKeyName = sshkeyname
          @RequestId = requestid
        end

        def deserialize(params)
          @SSHKeyID = params['SSHKeyID']
          @PublicKey = params['PublicKey']
          @PrivateKey = params['PrivateKey']
          @ProjectID = params['ProjectID']
          @SSHKeyDescription = params['SSHKeyDescription']
          @SSHKeyName = params['SSHKeyName']
          @RequestId = params['RequestId']
        end
      end

      # GetSecretValue请求参数结构体
      class GetSecretValueRequest < TencentCloud::Common::AbstractModel
        # @param SecretName: 指定凭据的名称。
        # @type SecretName: String
        # @param VersionId: 指定对应凭据的版本号。
        # 对于云产品凭据如Mysql凭据，通过指定凭据名称和历史版本号来获取历史轮转凭据的明文信息，如果要获取当前正在使用的凭据版本的明文，需要将版本号指定为：SSM_Current。
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
        # @param SecretBinary: 在创建凭据(CreateSecret)时，如果指定的是二进制数据，则该字段为返回结果，并且使用base64进行编码，应用方需要进行base64解码后获取原始数据。
        # SecretBinary和SecretString只有一个不为空。
        # @type SecretBinary: String
        # @param SecretString: 在创建凭据(CreateSecret)时，如果指定的是普通文本数据，则该字段为返回结果。
        # SecretBinary和SecretString只有一个不为空。
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
        # @param AccessKeyEscrowEnabled: true表示用户已经可以使用密钥安全托管功能，
        # false表示用户暂时不能使用密钥安全托管功能。
        # @type AccessKeyEscrowEnabled: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceEnabled, :InvalidType, :AccessKeyEscrowEnabled, :RequestId
        
        def initialize(serviceenabled=nil, invalidtype=nil, accesskeyescrowenabled=nil, requestid=nil)
          @ServiceEnabled = serviceenabled
          @InvalidType = invalidtype
          @AccessKeyEscrowEnabled = accesskeyescrowenabled
          @RequestId = requestid
        end

        def deserialize(params)
          @ServiceEnabled = params['ServiceEnabled']
          @InvalidType = params['InvalidType']
          @AccessKeyEscrowEnabled = params['AccessKeyEscrowEnabled']
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
          unless params['Versions'].nil?
            @Versions = []
            params['Versions'].each do |i|
              versioninfo_tmp = VersionInfo.new
              versioninfo_tmp.deserialize(i)
              @Versions << versioninfo_tmp
            end
          end
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
        # @param State: 根据凭据状态进行过滤。
        # 默认为0表示查询全部。
        # 1 --  表示查询Enabled 凭据列表。
        # 2 --  表示查询Disabled 凭据列表。
        # 3 --  表示查询PendingDelete 凭据列表。
        # 4 --  表示PendingCreate。
        # 5 --  表示CreateFailed。
        # 其中状态PendingCreate和CreateFailed只有在SecretType为云产品凭据时生效
        # @type State: Integer
        # @param SearchSecretName: 根据凭据名称进行过滤，为空表示不过滤。
        # @type SearchSecretName: String
        # @param TagFilters: 标签过滤条件。
        # @type TagFilters: Array
        # @param SecretType: 0  -- 表示用户自定义凭据，默认为0。
        # 1  -- 表示用户云产品凭据。
        # 2 -- 表示SSH密钥对凭据。
        # 3 -- 表示云API密钥对凭据。
        # @type SecretType: Integer
        # @param ProductName: 此参数仅在SecretType参数值为1时生效，
        # 当SecretType值为1时：
        # 如果ProductName值为空，则表示查询所有类型的云产品凭据
        # 如果ProductName值为Mysql，则表示查询Mysql数据库凭据
        # 如果ProductName值为Tdsql-mysql，则表示查询Tdsql（Mysql版本）的凭据
        # @type ProductName: String

        attr_accessor :Offset, :Limit, :OrderType, :State, :SearchSecretName, :TagFilters, :SecretType, :ProductName
        
        def initialize(offset=nil, limit=nil, ordertype=nil, state=nil, searchsecretname=nil, tagfilters=nil, secrettype=nil, productname=nil)
          @Offset = offset
          @Limit = limit
          @OrderType = ordertype
          @State = state
          @SearchSecretName = searchsecretname
          @TagFilters = tagfilters
          @SecretType = secrettype
          @ProductName = productname
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderType = params['OrderType']
          @State = params['State']
          @SearchSecretName = params['SearchSecretName']
          unless params['TagFilters'].nil?
            @TagFilters = []
            params['TagFilters'].each do |i|
              tagfilter_tmp = TagFilter.new
              tagfilter_tmp.deserialize(i)
              @TagFilters << tagfilter_tmp
            end
          end
          @SecretType = params['SecretType']
          @ProductName = params['ProductName']
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
          unless params['SecretMetadatas'].nil?
            @SecretMetadatas = []
            params['SecretMetadatas'].each do |i|
              secretmetadata_tmp = SecretMetadata.new
              secretmetadata_tmp.deserialize(i)
              @SecretMetadatas << secretmetadata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 凭据关联产品时被赋予的权限
      class ProductPrivilegeUnit < TencentCloud::Common::AbstractModel
        # @param PrivilegeName: 权限名称，当前可选：
        # GlobalPrivileges
        # DatabasePrivileges
        # TablePrivileges
        # ColumnPrivileges

        # 当权限为DatabasePrivileges时，必须通过参数Database指定数据库名；

        # 当权限为TablePrivileges时，必须通过参数Database和TableName指定数据库名以及数据库中的表名；

        # 当权限为ColumnPrivileges时，必须通过参数Database、TableName和CoulmnName指定数据库、数据库中的表名以及表中的列名。
        # @type PrivilegeName: String
        # @param Privileges: 权限列表。
        # 对于Mysql产品来说，可选权限值为：

        # 1. GlobalPrivileges 中权限的可选值为："SELECT","INSERT","UPDATE","DELETE","CREATE", "PROCESS", "DROP","REFERENCES","INDEX","ALTER","SHOW DATABASES","CREATE TEMPORARY TABLES","LOCK TABLES","EXECUTE","CREATE VIEW","SHOW VIEW","CREATE ROUTINE","ALTER ROUTINE","EVENT","TRIGGER"。
        # 注意，不传该参数表示清除该权限。

        # 2. DatabasePrivileges 权限的可选值为："SELECT","INSERT","UPDATE","DELETE","CREATE", "DROP","REFERENCES","INDEX","ALTER","CREATE TEMPORARY TABLES","LOCK TABLES","EXECUTE","CREATE VIEW","SHOW VIEW","CREATE ROUTINE","ALTER ROUTINE","EVENT","TRIGGER"。
        # 注意，不传该参数表示清除该权限。

        # 3. TablePrivileges 权限的可选值为：权限的可选值为："SELECT","INSERT","UPDATE","DELETE","CREATE", "DROP","REFERENCES","INDEX","ALTER","CREATE VIEW","SHOW VIEW", "TRIGGER"。
        # 注意，不传该参数表示清除该权限。

        # 4. ColumnPrivileges 权限的可选值为："SELECT","INSERT","UPDATE","REFERENCES"。
        # 注意，不传该参数表示清除该权限。
        # @type Privileges: Array
        # @param Database: 仅当PrivilegeName为DatabasePrivileges时这个值才有效。
        # @type Database: String
        # @param TableName: 仅当PrivilegeName为TablePrivileges时这个值才有效，并且此时需要填充Database显式指明所在的数据库实例。
        # @type TableName: String
        # @param ColumnName: 仅当PrivilegeName为ColumnPrivileges时这个值才生效，并且此时必须填充：
        # Database - 显式指明所在的数据库实例。
        # TableName - 显式指明所在表
        # @type ColumnName: String

        attr_accessor :PrivilegeName, :Privileges, :Database, :TableName, :ColumnName
        
        def initialize(privilegename=nil, privileges=nil, database=nil, tablename=nil, columnname=nil)
          @PrivilegeName = privilegename
          @Privileges = privileges
          @Database = database
          @TableName = tablename
          @ColumnName = columnname
        end

        def deserialize(params)
          @PrivilegeName = params['PrivilegeName']
          @Privileges = params['Privileges']
          @Database = params['Database']
          @TableName = params['TableName']
          @ColumnName = params['ColumnName']
        end
      end

      # PutSecretValue请求参数结构体
      class PutSecretValueRequest < TencentCloud::Common::AbstractModel
        # @param SecretName: 指定需要增加版本的凭据名称。
        # @type SecretName: String
        # @param VersionId: 指定新增加的版本号，最长64 字节，使用字母、数字或者 - _ . 的组合并且以字母或数字开头。
        # @type VersionId: String
        # @param SecretBinary: 二进制凭据信息，使用base64编码。
        # SecretBinary 和 SecretString 必须且只能设置一个。
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

      # RotateProductSecret请求参数结构体
      class RotateProductSecretRequest < TencentCloud::Common::AbstractModel
        # @param SecretName: 需要轮转的凭据名。
        # @type SecretName: String

        attr_accessor :SecretName
        
        def initialize(secretname=nil)
          @SecretName = secretname
        end

        def deserialize(params)
          @SecretName = params['SecretName']
        end
      end

      # RotateProductSecret返回参数结构体
      class RotateProductSecretResponse < TencentCloud::Common::AbstractModel
        # @param FlowID: 当凭据类型为云产品凭据时（即SecretType为1，如MySQL、Tdsql等托管凭据）此字段有效，返回轮转异步任务ID号。
        # @type FlowID: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowID, :RequestId
        
        def initialize(flowid=nil, requestid=nil)
          @FlowID = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowID = params['FlowID']
          @RequestId = params['RequestId']
        end
      end

      # 凭据的基础信息
      class SecretMetadata < TencentCloud::Common::AbstractModel
        # @param SecretName: 凭据名称
        # @type SecretName: String
        # @param Description: 凭据的描述信息
        # @type Description: String
        # @param KmsKeyId: 用于加密凭据的KMS KeyId
        # @type KmsKeyId: String
        # @param CreateUin: 创建者UIN
        # @type CreateUin: Integer
        # @param Status: 凭据状态：Enabled、Disabled、PendingDelete、Creating、Failed
        # @type Status: String
        # @param DeleteTime: 凭据删除日期，对于status为PendingDelete 的有效，unix时间戳
        # @type DeleteTime: Integer
        # @param CreateTime: 凭据创建时间，unix时间戳
        # @type CreateTime: Integer
        # @param KmsKeyType: 用于加密凭据的KMS CMK类型，DEFAULT 表示SecretsManager 创建的默认密钥， CUSTOMER 表示用户指定的密钥
        # @type KmsKeyType: String
        # @param RotationStatus: 1:--开启轮转；0--禁止轮转
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RotationStatus: Integer
        # @param NextRotationTime: 下一次轮转开始时间，uinx 时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextRotationTime: Integer
        # @param SecretType: 0 -- 用户自定义凭据；
        # 1 -- 云产品凭据；
        # 2 -- SSH密钥对凭据；
        # 3 -- 云API密钥对凭据；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecretType: Integer
        # @param ProductName: 云产品名称，仅在SecretType为1，即凭据类型为云产品凭据时生效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductName: String
        # @param ResourceName: 当凭据类型为SSH密钥对凭据时，此字段有效，用于表示SSH密钥对凭据的名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceName: String
        # @param ProjectID: 当凭据类型为SSH密钥对凭据时，此字段有效，用于表示SSH密钥对所属的项目ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectID: Integer
        # @param AssociatedInstanceIDs: 当凭据类型为SSH密钥对凭据时，此字段有效，用于表示SSH密钥对所关联的CVM实例ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssociatedInstanceIDs: Array
        # @param TargetUin: 当凭据类型为云API密钥对凭据时，此字段有效，用于表示云API密钥对所属的用户UIN。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetUin: Integer
        # @param RotationFrequency: 轮转的频率，以天作为单位，在轮转开启状态下生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RotationFrequency: Integer
        # @param ResourceID: 云产品凭据对应的云产品实例 ID 号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceID: String
        # @param RotationBeginTime: 用户指定的轮转开始时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RotationBeginTime: String

        attr_accessor :SecretName, :Description, :KmsKeyId, :CreateUin, :Status, :DeleteTime, :CreateTime, :KmsKeyType, :RotationStatus, :NextRotationTime, :SecretType, :ProductName, :ResourceName, :ProjectID, :AssociatedInstanceIDs, :TargetUin, :RotationFrequency, :ResourceID, :RotationBeginTime
        
        def initialize(secretname=nil, description=nil, kmskeyid=nil, createuin=nil, status=nil, deletetime=nil, createtime=nil, kmskeytype=nil, rotationstatus=nil, nextrotationtime=nil, secrettype=nil, productname=nil, resourcename=nil, projectid=nil, associatedinstanceids=nil, targetuin=nil, rotationfrequency=nil, resourceid=nil, rotationbegintime=nil)
          @SecretName = secretname
          @Description = description
          @KmsKeyId = kmskeyid
          @CreateUin = createuin
          @Status = status
          @DeleteTime = deletetime
          @CreateTime = createtime
          @KmsKeyType = kmskeytype
          @RotationStatus = rotationstatus
          @NextRotationTime = nextrotationtime
          @SecretType = secrettype
          @ProductName = productname
          @ResourceName = resourcename
          @ProjectID = projectid
          @AssociatedInstanceIDs = associatedinstanceids
          @TargetUin = targetuin
          @RotationFrequency = rotationfrequency
          @ResourceID = resourceid
          @RotationBeginTime = rotationbegintime
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
          @RotationStatus = params['RotationStatus']
          @NextRotationTime = params['NextRotationTime']
          @SecretType = params['SecretType']
          @ProductName = params['ProductName']
          @ResourceName = params['ResourceName']
          @ProjectID = params['ProjectID']
          @AssociatedInstanceIDs = params['AssociatedInstanceIDs']
          @TargetUin = params['TargetUin']
          @RotationFrequency = params['RotationFrequency']
          @ResourceID = params['ResourceID']
          @RotationBeginTime = params['RotationBeginTime']
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

      # UpdateRotationStatus请求参数结构体
      class UpdateRotationStatusRequest < TencentCloud::Common::AbstractModel
        # @param SecretName: 云产品凭据名称。
        # @type SecretName: String
        # @param EnableRotation: 是否开启轮转。
        # true -- 开启轮转；
        # false -- 禁止轮转。
        # @type EnableRotation: Boolean
        # @param Frequency: 轮转周期，以天为单位，最小为30天，最大为365天。
        # @type Frequency: Integer
        # @param RotationBeginTime: 用户设置的期望开始轮转时间，格式为：2006-01-02 15:04:05。
        # 当EnableRotation为true时，如果不填RotationBeginTime，则默认填充为当前时间。
        # @type RotationBeginTime: String

        attr_accessor :SecretName, :EnableRotation, :Frequency, :RotationBeginTime
        
        def initialize(secretname=nil, enablerotation=nil, frequency=nil, rotationbegintime=nil)
          @SecretName = secretname
          @EnableRotation = enablerotation
          @Frequency = frequency
          @RotationBeginTime = rotationbegintime
        end

        def deserialize(params)
          @SecretName = params['SecretName']
          @EnableRotation = params['EnableRotation']
          @Frequency = params['Frequency']
          @RotationBeginTime = params['RotationBeginTime']
        end
      end

      # UpdateRotationStatus返回参数结构体
      class UpdateRotationStatusResponse < TencentCloud::Common::AbstractModel
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

      # UpdateSecret请求参数结构体
      class UpdateSecretRequest < TencentCloud::Common::AbstractModel
        # @param SecretName: 指定需要更新凭据内容的名称。
        # @type SecretName: String
        # @param VersionId: 指定需要更新凭据内容的版本号。
        # @type VersionId: String
        # @param SecretBinary: 新的凭据内容为二进制的场景使用该字段，并使用base64进行编码。
        # SecretBinary 和 SecretString 只能一个不为空。
        # @type SecretBinary: String
        # @param SecretString: 新的凭据内容为文本的场景使用该字段，不需要base64编码SecretBinary 和 SecretString 只能一个不为空。
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

