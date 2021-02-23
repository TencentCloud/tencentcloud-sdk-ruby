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
  module Cloudaudit
    module V20190319
      # AttributeKey值详情
      class AttributeKeyDetail < TencentCloud::Common::AbstractModel
        # @param Label: 中文标签
        # @type Label: String
        # @param LabelType: 输入框类型
        # @type LabelType: String
        # @param Order: 展示排序
        # @type Order: Integer
        # @param Starter: 初始化展示
        # @type Starter: String
        # @param Value: AttributeKey值
        # @type Value: String

        attr_accessor :Label, :LabelType, :Order, :Starter, :Value
        
        def initialize(label=nil, labeltype=nil, order=nil, starter=nil, value=nil)
          @Label = label
          @LabelType = labeltype
          @Order = order
          @Starter = starter
          @Value = value
        end

        def deserialize(params)
          @Label = params['Label']
          @LabelType = params['LabelType']
          @Order = params['Order']
          @Starter = params['Starter']
          @Value = params['Value']
        end
      end

      # 跟踪集概览
      class AuditSummary < TencentCloud::Common::AbstractModel
        # @param AuditName: 跟踪集名称
        # @type AuditName: String
        # @param AuditStatus: 跟踪集状态，1：开启，0：关闭
        # @type AuditStatus: Integer
        # @param CosBucketName: COS存储桶名称
        # @type CosBucketName: String
        # @param LogFilePrefix: 日志前缀
        # @type LogFilePrefix: String

        attr_accessor :AuditName, :AuditStatus, :CosBucketName, :LogFilePrefix
        
        def initialize(auditname=nil, auditstatus=nil, cosbucketname=nil, logfileprefix=nil)
          @AuditName = auditname
          @AuditStatus = auditstatus
          @CosBucketName = cosbucketname
          @LogFilePrefix = logfileprefix
        end

        def deserialize(params)
          @AuditName = params['AuditName']
          @AuditStatus = params['AuditStatus']
          @CosBucketName = params['CosBucketName']
          @LogFilePrefix = params['LogFilePrefix']
        end
      end

      # cmq地域信息
      class CmqRegionInfo < TencentCloud::Common::AbstractModel
        # @param CmqRegion: cmq地域
        # @type CmqRegion: String
        # @param CmqRegionName: 地域描述
        # @type CmqRegionName: String

        attr_accessor :CmqRegion, :CmqRegionName
        
        def initialize(cmqregion=nil, cmqregionname=nil)
          @CmqRegion = cmqregion
          @CmqRegionName = cmqregionname
        end

        def deserialize(params)
          @CmqRegion = params['CmqRegion']
          @CmqRegionName = params['CmqRegionName']
        end
      end

      # cos地域信息
      class CosRegionInfo < TencentCloud::Common::AbstractModel
        # @param CosRegion: cos地域
        # @type CosRegion: String
        # @param CosRegionName: 地域描述
        # @type CosRegionName: String

        attr_accessor :CosRegion, :CosRegionName
        
        def initialize(cosregion=nil, cosregionname=nil)
          @CosRegion = cosregion
          @CosRegionName = cosregionname
        end

        def deserialize(params)
          @CosRegion = params['CosRegion']
          @CosRegionName = params['CosRegionName']
        end
      end

      # CreateAudit请求参数结构体
      class CreateAuditRequest < TencentCloud::Common::AbstractModel
        # @param AuditName: 跟踪集名称。3-128字符，只能包含 ASCII 编码字母 a-z，A-Z，数字 0-9，下划线 _。
        # @type AuditName: String
        # @param CosBucketName: cos的存储桶名称。仅支持小写英文字母和数字即[a-z，0-9]、中划线“-”及其组合。用户自定义的字符串支持1 - 40个字符。存储桶命名不能以“-”开头或结尾。如果不是新创建的存储桶，云审计不会去校验该存储桶是否真的存在，请谨慎填写，避免日志投递不成功，导致您的数据丢失。
        # @type CosBucketName: String
        # @param CosRegion: cos地域。目前支持的地域可以使用ListCosEnableRegion来获取。
        # @type CosRegion: String
        # @param IsCreateNewBucket: 是否创建新的cos存储桶。1：是，0：否。
        # @type IsCreateNewBucket: Integer
        # @param IsEnableCmqNotify: 是否开启cmq消息通知。1：是，0：否。目前仅支持cmq的队列服务。如果开启cmq消息通知服务，云审计会将您的日志内容实时投递到您指定地域的指定队列中。
        # @type IsEnableCmqNotify: Integer
        # @param ReadWriteAttribute: 管理事件的读写属性。1：只读，2：只写，3：全部。
        # @type ReadWriteAttribute: Integer
        # @param CmqQueueName: 队列名称。队列名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。如果IsEnableCmqNotify值是1的话，此值属于必填字段。如果不是新创建的队列，云审计不会去校验该队列是否真的存在，请谨慎填写，避免日志通知不成功，导致您的数据丢失。
        # @type CmqQueueName: String
        # @param CmqRegion: 队列所在的地域。可以通过ListCmqEnableRegion获取支持的cmq地域。如果IsEnableCmqNotify值是1的话，此值属于必填字段。
        # @type CmqRegion: String
        # @param IsCreateNewQueue: 是否创建新的队列。1：是，0：否。如果IsEnableCmqNotify值是1的话，此值属于必填字段。
        # @type IsCreateNewQueue: Integer
        # @param IsEnableKmsEncry: 是否开启kms加密。1：是，0：否。如果开启KMS加密，数据在投递到cos时，会将数据加密。
        # @type IsEnableKmsEncry: Integer
        # @param KeyId: CMK的全局唯一标识符，如果不是新创建的kms，该值是必填值。可以通过ListKeyAliasByRegion来获取。云审计不会校验KeyId的合法性，请您谨慎填写，避免给您的数据造成损失。
        # @type KeyId: String
        # @param KmsRegion: kms地域。目前支持的地域可以使用ListKmsEnableRegion来获取。必须要和cos的地域保持一致。
        # @type KmsRegion: String
        # @param LogFilePrefix: 日志文件前缀。3-40个字符，只能包含 ASCII 编码字母 a-z，A-Z，数字 0-9。可以不填，默认以账号ID作为日志前缀。
        # @type LogFilePrefix: String

        attr_accessor :AuditName, :CosBucketName, :CosRegion, :IsCreateNewBucket, :IsEnableCmqNotify, :ReadWriteAttribute, :CmqQueueName, :CmqRegion, :IsCreateNewQueue, :IsEnableKmsEncry, :KeyId, :KmsRegion, :LogFilePrefix
        
        def initialize(auditname=nil, cosbucketname=nil, cosregion=nil, iscreatenewbucket=nil, isenablecmqnotify=nil, readwriteattribute=nil, cmqqueuename=nil, cmqregion=nil, iscreatenewqueue=nil, isenablekmsencry=nil, keyid=nil, kmsregion=nil, logfileprefix=nil)
          @AuditName = auditname
          @CosBucketName = cosbucketname
          @CosRegion = cosregion
          @IsCreateNewBucket = iscreatenewbucket
          @IsEnableCmqNotify = isenablecmqnotify
          @ReadWriteAttribute = readwriteattribute
          @CmqQueueName = cmqqueuename
          @CmqRegion = cmqregion
          @IsCreateNewQueue = iscreatenewqueue
          @IsEnableKmsEncry = isenablekmsencry
          @KeyId = keyid
          @KmsRegion = kmsregion
          @LogFilePrefix = logfileprefix
        end

        def deserialize(params)
          @AuditName = params['AuditName']
          @CosBucketName = params['CosBucketName']
          @CosRegion = params['CosRegion']
          @IsCreateNewBucket = params['IsCreateNewBucket']
          @IsEnableCmqNotify = params['IsEnableCmqNotify']
          @ReadWriteAttribute = params['ReadWriteAttribute']
          @CmqQueueName = params['CmqQueueName']
          @CmqRegion = params['CmqRegion']
          @IsCreateNewQueue = params['IsCreateNewQueue']
          @IsEnableKmsEncry = params['IsEnableKmsEncry']
          @KeyId = params['KeyId']
          @KmsRegion = params['KmsRegion']
          @LogFilePrefix = params['LogFilePrefix']
        end
      end

      # CreateAudit返回参数结构体
      class CreateAuditResponse < TencentCloud::Common::AbstractModel
        # @param IsSuccess: 是否创建成功。
        # @type IsSuccess: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsSuccess, :RequestId
        
        def initialize(issuccess=nil, requestid=nil)
          @IsSuccess = issuccess
          @RequestId = requestid
        end

        def deserialize(params)
          @IsSuccess = params['IsSuccess']
          @RequestId = params['RequestId']
        end
      end

      # DeleteAudit请求参数结构体
      class DeleteAuditRequest < TencentCloud::Common::AbstractModel
        # @param AuditName: 跟踪集名称
        # @type AuditName: String

        attr_accessor :AuditName
        
        def initialize(auditname=nil)
          @AuditName = auditname
        end

        def deserialize(params)
          @AuditName = params['AuditName']
        end
      end

      # DeleteAudit返回参数结构体
      class DeleteAuditResponse < TencentCloud::Common::AbstractModel
        # @param IsSuccess: 是否删除成功
        # @type IsSuccess: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsSuccess, :RequestId
        
        def initialize(issuccess=nil, requestid=nil)
          @IsSuccess = issuccess
          @RequestId = requestid
        end

        def deserialize(params)
          @IsSuccess = params['IsSuccess']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAudit请求参数结构体
      class DescribeAuditRequest < TencentCloud::Common::AbstractModel
        # @param AuditName: 跟踪集名称
        # @type AuditName: String

        attr_accessor :AuditName
        
        def initialize(auditname=nil)
          @AuditName = auditname
        end

        def deserialize(params)
          @AuditName = params['AuditName']
        end
      end

      # DescribeAudit返回参数结构体
      class DescribeAuditResponse < TencentCloud::Common::AbstractModel
        # @param AuditName: 跟踪集名称。
        # @type AuditName: String
        # @param AuditStatus: 跟踪集状态，1：开启，0：停止。
        # @type AuditStatus: Integer
        # @param CmqQueueName: 队列名称。
        # @type CmqQueueName: String
        # @param CmqRegion: 队列所在地域。
        # @type CmqRegion: String
        # @param CosBucketName: cos存储桶名称。
        # @type CosBucketName: String
        # @param CosRegion: cos存储桶所在地域。
        # @type CosRegion: String
        # @param IsEnableCmqNotify: 是否开启cmq消息通知。1：是，0：否。
        # @type IsEnableCmqNotify: Integer
        # @param IsEnableKmsEncry: 是否开启kms加密。1：是，0：否。如果开启KMS加密，数据在投递到cos时，会将数据加密。
        # @type IsEnableKmsEncry: Integer
        # @param KeyId: CMK的全局唯一标识符。
        # @type KeyId: String
        # @param KmsAlias: CMK别名。
        # @type KmsAlias: String
        # @param KmsRegion: kms地域。
        # @type KmsRegion: String
        # @param LogFilePrefix: 日志前缀。
        # @type LogFilePrefix: String
        # @param ReadWriteAttribute: 管理事件读写属性，1：只读，2：只写，3：全部
        # @type ReadWriteAttribute: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AuditName, :AuditStatus, :CmqQueueName, :CmqRegion, :CosBucketName, :CosRegion, :IsEnableCmqNotify, :IsEnableKmsEncry, :KeyId, :KmsAlias, :KmsRegion, :LogFilePrefix, :ReadWriteAttribute, :RequestId
        
        def initialize(auditname=nil, auditstatus=nil, cmqqueuename=nil, cmqregion=nil, cosbucketname=nil, cosregion=nil, isenablecmqnotify=nil, isenablekmsencry=nil, keyid=nil, kmsalias=nil, kmsregion=nil, logfileprefix=nil, readwriteattribute=nil, requestid=nil)
          @AuditName = auditname
          @AuditStatus = auditstatus
          @CmqQueueName = cmqqueuename
          @CmqRegion = cmqregion
          @CosBucketName = cosbucketname
          @CosRegion = cosregion
          @IsEnableCmqNotify = isenablecmqnotify
          @IsEnableKmsEncry = isenablekmsencry
          @KeyId = keyid
          @KmsAlias = kmsalias
          @KmsRegion = kmsregion
          @LogFilePrefix = logfileprefix
          @ReadWriteAttribute = readwriteattribute
          @RequestId = requestid
        end

        def deserialize(params)
          @AuditName = params['AuditName']
          @AuditStatus = params['AuditStatus']
          @CmqQueueName = params['CmqQueueName']
          @CmqRegion = params['CmqRegion']
          @CosBucketName = params['CosBucketName']
          @CosRegion = params['CosRegion']
          @IsEnableCmqNotify = params['IsEnableCmqNotify']
          @IsEnableKmsEncry = params['IsEnableKmsEncry']
          @KeyId = params['KeyId']
          @KmsAlias = params['KmsAlias']
          @KmsRegion = params['KmsRegion']
          @LogFilePrefix = params['LogFilePrefix']
          @ReadWriteAttribute = params['ReadWriteAttribute']
          @RequestId = params['RequestId']
        end
      end

      # 日志详情
      class Event < TencentCloud::Common::AbstractModel
        # @param Resources: 资源对
        # @type Resources: :class:`Tencentcloud::Cloudaudit.v20190319.models.Resource`
        # @param AccountID: 主账号ID
        # @type AccountID: Integer
        # @param CloudAuditEvent: 日志详情
        # @type CloudAuditEvent: String
        # @param ErrorCode: 鉴权错误码
        # @type ErrorCode: Integer
        # @param EventId: 日志ID
        # @type EventId: String
        # @param EventName: 事件名称
        # @type EventName: String
        # @param EventNameCn: 事件名称中文描述（此字段请按需使用，如果您是其他语言使用者，可以忽略该字段描述）
        # @type EventNameCn: String
        # @param EventRegion: 事件地域
        # @type EventRegion: String
        # @param EventSource: 请求来源
        # @type EventSource: String
        # @param EventTime: 事件时间
        # @type EventTime: String
        # @param RequestID: 请求ID
        # @type RequestID: String
        # @param ResourceRegion: 资源地域
        # @type ResourceRegion: String
        # @param ResourceTypeCn: 资源类型中文描述（此字段请按需使用，如果您是其他语言使用者，可以忽略该字段描述）
        # @type ResourceTypeCn: String
        # @param SecretId: 证书ID
        # @type SecretId: String
        # @param SourceIPAddress: 源IP
        # @type SourceIPAddress: String
        # @param Username: 用户名
        # @type Username: String

        attr_accessor :Resources, :AccountID, :CloudAuditEvent, :ErrorCode, :EventId, :EventName, :EventNameCn, :EventRegion, :EventSource, :EventTime, :RequestID, :ResourceRegion, :ResourceTypeCn, :SecretId, :SourceIPAddress, :Username
        
        def initialize(resources=nil, accountid=nil, cloudauditevent=nil, errorcode=nil, eventid=nil, eventname=nil, eventnamecn=nil, eventregion=nil, eventsource=nil, eventtime=nil, requestid=nil, resourceregion=nil, resourcetypecn=nil, secretid=nil, sourceipaddress=nil, username=nil)
          @Resources = resources
          @AccountID = accountid
          @CloudAuditEvent = cloudauditevent
          @ErrorCode = errorcode
          @EventId = eventid
          @EventName = eventname
          @EventNameCn = eventnamecn
          @EventRegion = eventregion
          @EventSource = eventsource
          @EventTime = eventtime
          @RequestID = requestid
          @ResourceRegion = resourceregion
          @ResourceTypeCn = resourcetypecn
          @SecretId = secretid
          @SourceIPAddress = sourceipaddress
          @Username = username
        end

        def deserialize(params)
          unless params['Resources'].nil?
            @Resources = Resource.new.deserialize(params['Resources'])
          end
          @AccountID = params['AccountID']
          @CloudAuditEvent = params['CloudAuditEvent']
          @ErrorCode = params['ErrorCode']
          @EventId = params['EventId']
          @EventName = params['EventName']
          @EventNameCn = params['EventNameCn']
          @EventRegion = params['EventRegion']
          @EventSource = params['EventSource']
          @EventTime = params['EventTime']
          @RequestID = params['RequestID']
          @ResourceRegion = params['ResourceRegion']
          @ResourceTypeCn = params['ResourceTypeCn']
          @SecretId = params['SecretId']
          @SourceIPAddress = params['SourceIPAddress']
          @Username = params['Username']
        end
      end

      # GetAttributeKey请求参数结构体
      class GetAttributeKeyRequest < TencentCloud::Common::AbstractModel
        # @param WebsiteType: 网站类型，取值范围是zh和en。如果不传值默认zh
        # @type WebsiteType: String

        attr_accessor :WebsiteType
        
        def initialize(websitetype=nil)
          @WebsiteType = websitetype
        end

        def deserialize(params)
          @WebsiteType = params['WebsiteType']
        end
      end

      # GetAttributeKey返回参数结构体
      class GetAttributeKeyResponse < TencentCloud::Common::AbstractModel
        # @param AttributeKeyDetails: AttributeKey的有效取值范围
        # @type AttributeKeyDetails: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AttributeKeyDetails, :RequestId
        
        def initialize(attributekeydetails=nil, requestid=nil)
          @AttributeKeyDetails = attributekeydetails
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AttributeKeyDetails'].nil?
            @AttributeKeyDetails = []
            params['AttributeKeyDetails'].each do |i|
              @AttributeKeyDetails << AttributeKeyDetail.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # InquireAuditCredit请求参数结构体
      class InquireAuditCreditRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # InquireAuditCredit返回参数结构体
      class InquireAuditCreditResponse < TencentCloud::Common::AbstractModel
        # @param AuditAmount: 可创建跟踪集的数量
        # @type AuditAmount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AuditAmount, :RequestId
        
        def initialize(auditamount=nil, requestid=nil)
          @AuditAmount = auditamount
          @RequestId = requestid
        end

        def deserialize(params)
          @AuditAmount = params['AuditAmount']
          @RequestId = params['RequestId']
        end
      end

      # CMK属性
      class KeyMetadata < TencentCloud::Common::AbstractModel
        # @param Alias: 作为密钥更容易辨识，更容易被人看懂的别名
        # @type Alias: String
        # @param KeyId: CMK的全局唯一标识
        # @type KeyId: String

        attr_accessor :Alias, :KeyId
        
        def initialize(_alias=nil, keyid=nil)
          @Alias = _alias
          @KeyId = keyid
        end

        def deserialize(params)
          @Alias = params['Alias']
          @KeyId = params['KeyId']
        end
      end

      # ListAudits请求参数结构体
      class ListAuditsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # ListAudits返回参数结构体
      class ListAuditsResponse < TencentCloud::Common::AbstractModel
        # @param AuditSummarys: 查询跟踪集概要集合
        # @type AuditSummarys: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AuditSummarys, :RequestId
        
        def initialize(auditsummarys=nil, requestid=nil)
          @AuditSummarys = auditsummarys
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AuditSummarys'].nil?
            @AuditSummarys = []
            params['AuditSummarys'].each do |i|
              @AuditSummarys << AuditSummary.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListCmqEnableRegion请求参数结构体
      class ListCmqEnableRegionRequest < TencentCloud::Common::AbstractModel
        # @param WebsiteType: 站点类型。zh表示中国区，en表示国际区。默认中国区。
        # @type WebsiteType: String

        attr_accessor :WebsiteType
        
        def initialize(websitetype=nil)
          @WebsiteType = websitetype
        end

        def deserialize(params)
          @WebsiteType = params['WebsiteType']
        end
      end

      # ListCmqEnableRegion返回参数结构体
      class ListCmqEnableRegionResponse < TencentCloud::Common::AbstractModel
        # @param EnableRegions: 云审计支持的cmq的可用区
        # @type EnableRegions: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnableRegions, :RequestId
        
        def initialize(enableregions=nil, requestid=nil)
          @EnableRegions = enableregions
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EnableRegions'].nil?
            @EnableRegions = []
            params['EnableRegions'].each do |i|
              @EnableRegions << CmqRegionInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListCosEnableRegion请求参数结构体
      class ListCosEnableRegionRequest < TencentCloud::Common::AbstractModel
        # @param WebsiteType: 站点类型。zh表示中国区，en表示国际区。默认中国区。
        # @type WebsiteType: String

        attr_accessor :WebsiteType
        
        def initialize(websitetype=nil)
          @WebsiteType = websitetype
        end

        def deserialize(params)
          @WebsiteType = params['WebsiteType']
        end
      end

      # ListCosEnableRegion返回参数结构体
      class ListCosEnableRegionResponse < TencentCloud::Common::AbstractModel
        # @param EnableRegions: 云审计支持的cos可用区
        # @type EnableRegions: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnableRegions, :RequestId
        
        def initialize(enableregions=nil, requestid=nil)
          @EnableRegions = enableregions
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EnableRegions'].nil?
            @EnableRegions = []
            params['EnableRegions'].each do |i|
              @EnableRegions << CosRegionInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListKeyAliasByRegion请求参数结构体
      class ListKeyAliasByRegionRequest < TencentCloud::Common::AbstractModel
        # @param KmsRegion: Kms地域
        # @type KmsRegion: String
        # @param Limit: 含义跟 SQL 查询的 Limit 一致，表示本次获最多获取 Limit 个元素。缺省值为10，最大值为200
        # @type Limit: Integer
        # @param Offset: 含义跟 SQL 查询的 Offset 一致，表示本次获取从按一定顺序排列数组的第 Offset 个元素开始，缺省为0
        # @type Offset: Integer

        attr_accessor :KmsRegion, :Limit, :Offset
        
        def initialize(kmsregion=nil, limit=nil, offset=nil)
          @KmsRegion = kmsregion
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @KmsRegion = params['KmsRegion']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # ListKeyAliasByRegion返回参数结构体
      class ListKeyAliasByRegionResponse < TencentCloud::Common::AbstractModel
        # @param KeyMetadatas: 密钥别名
        # @type KeyMetadatas: Array
        # @param TotalCount: CMK的总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyMetadatas, :TotalCount, :RequestId
        
        def initialize(keymetadatas=nil, totalcount=nil, requestid=nil)
          @KeyMetadatas = keymetadatas
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['KeyMetadatas'].nil?
            @KeyMetadatas = []
            params['KeyMetadatas'].each do |i|
              @KeyMetadatas << KeyMetadata.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # LookUpEvents请求参数结构体
      class LookUpEventsRequest < TencentCloud::Common::AbstractModel
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param LookupAttributes: 检索条件
        # @type LookupAttributes: Array
        # @param MaxResults: 返回日志的最大条数
        # @type MaxResults: Integer
        # @param Mode: 云审计模式，有效值：standard | quick，其中standard是标准模式，quick是极速模式。默认为标准模式
        # @type Mode: String
        # @param NextToken: 查看更多日志的凭证
        # @type NextToken: String

        attr_accessor :EndTime, :StartTime, :LookupAttributes, :MaxResults, :Mode, :NextToken
        
        def initialize(endtime=nil, starttime=nil, lookupattributes=nil, maxresults=nil, mode=nil, nexttoken=nil)
          @EndTime = endtime
          @StartTime = starttime
          @LookupAttributes = lookupattributes
          @MaxResults = maxresults
          @Mode = mode
          @NextToken = nexttoken
        end

        def deserialize(params)
          @EndTime = params['EndTime']
          @StartTime = params['StartTime']
          unless params['LookupAttributes'].nil?
            @LookupAttributes = []
            params['LookupAttributes'].each do |i|
              @LookupAttributes << LookupAttribute.new.deserialize(i)
            end
          end
          @MaxResults = params['MaxResults']
          @Mode = params['Mode']
          @NextToken = params['NextToken']
        end
      end

      # LookUpEvents返回参数结构体
      class LookUpEventsResponse < TencentCloud::Common::AbstractModel
        # @param Events: 日志集合
        # @type Events: Array
        # @param ListOver: 日志集合是否结束
        # @type ListOver: Boolean
        # @param NextToken: 查看更多日志的凭证
        # @type NextToken: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Events, :ListOver, :NextToken, :RequestId
        
        def initialize(events=nil, listover=nil, nexttoken=nil, requestid=nil)
          @Events = events
          @ListOver = listover
          @NextToken = nexttoken
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Events'].nil?
            @Events = []
            params['Events'].each do |i|
              @Events << Event.new.deserialize(i)
            end
          end
          @ListOver = params['ListOver']
          @NextToken = params['NextToken']
          @RequestId = params['RequestId']
        end
      end

      # 检索条件
      class LookupAttribute < TencentCloud::Common::AbstractModel
        # @param AttributeKey: AttributeKey的有效取值范围是:RequestId、EventName、ReadOnly、Username、ResourceType、ResourceName和AccessKeyId，EventId
        # @type AttributeKey: String
        # @param AttributeValue: AttributeValue
        # @type AttributeValue: String

        attr_accessor :AttributeKey, :AttributeValue
        
        def initialize(attributekey=nil, attributevalue=nil)
          @AttributeKey = attributekey
          @AttributeValue = attributevalue
        end

        def deserialize(params)
          @AttributeKey = params['AttributeKey']
          @AttributeValue = params['AttributeValue']
        end
      end

      # 资源类型
      class Resource < TencentCloud::Common::AbstractModel
        # @param ResourceName: 资源名称
        # @type ResourceName: String
        # @param ResourceType: 资源类型
        # @type ResourceType: String

        attr_accessor :ResourceName, :ResourceType
        
        def initialize(resourcename=nil, resourcetype=nil)
          @ResourceName = resourcename
          @ResourceType = resourcetype
        end

        def deserialize(params)
          @ResourceName = params['ResourceName']
          @ResourceType = params['ResourceType']
        end
      end

      # StartLogging请求参数结构体
      class StartLoggingRequest < TencentCloud::Common::AbstractModel
        # @param AuditName: 跟踪集名称
        # @type AuditName: String

        attr_accessor :AuditName
        
        def initialize(auditname=nil)
          @AuditName = auditname
        end

        def deserialize(params)
          @AuditName = params['AuditName']
        end
      end

      # StartLogging返回参数结构体
      class StartLoggingResponse < TencentCloud::Common::AbstractModel
        # @param IsSuccess: 是否开启成功
        # @type IsSuccess: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsSuccess, :RequestId
        
        def initialize(issuccess=nil, requestid=nil)
          @IsSuccess = issuccess
          @RequestId = requestid
        end

        def deserialize(params)
          @IsSuccess = params['IsSuccess']
          @RequestId = params['RequestId']
        end
      end

      # StopLogging请求参数结构体
      class StopLoggingRequest < TencentCloud::Common::AbstractModel
        # @param AuditName: 跟踪集名称
        # @type AuditName: String

        attr_accessor :AuditName
        
        def initialize(auditname=nil)
          @AuditName = auditname
        end

        def deserialize(params)
          @AuditName = params['AuditName']
        end
      end

      # StopLogging返回参数结构体
      class StopLoggingResponse < TencentCloud::Common::AbstractModel
        # @param IsSuccess: 是否关闭成功
        # @type IsSuccess: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsSuccess, :RequestId
        
        def initialize(issuccess=nil, requestid=nil)
          @IsSuccess = issuccess
          @RequestId = requestid
        end

        def deserialize(params)
          @IsSuccess = params['IsSuccess']
          @RequestId = params['RequestId']
        end
      end

      # UpdateAudit请求参数结构体
      class UpdateAuditRequest < TencentCloud::Common::AbstractModel
        # @param AuditName: 跟踪集名称
        # @type AuditName: String
        # @param CmqQueueName: 队列名称。队列名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。如果IsEnableCmqNotify值是1的话，此值属于必填字段。如果不是新创建的队列，云审计不会去校验该队列是否真的存在，请谨慎填写，避免日志通知不成功，导致您的数据丢失。
        # @type CmqQueueName: String
        # @param CmqRegion: 队列所在的地域。可以通过ListCmqEnableRegion获取支持的cmq地域。如果IsEnableCmqNotify值是1的话，此值属于必填字段。
        # @type CmqRegion: String
        # @param CosBucketName: cos的存储桶名称。仅支持小写英文字母和数字即[a-z，0-9]、中划线“-”及其组合。用户自定义的字符串支持1 - 40个字符。存储桶命名不能以“-”开头或结尾。如果不是新创建的存储桶，云审计不会去校验该存储桶是否真的存在，请谨慎填写，避免日志投递不成功，导致您的数据丢失。
        # @type CosBucketName: String
        # @param CosRegion: cos地域。目前支持的地域可以使用ListCosEnableRegion来获取。
        # @type CosRegion: String
        # @param IsCreateNewBucket: 是否创建新的cos存储桶。1：是，0：否。
        # @type IsCreateNewBucket: Integer
        # @param IsCreateNewQueue: 是否创建新的队列。1：是，0：否。如果IsEnableCmqNotify值是1的话，此值属于必填字段。
        # @type IsCreateNewQueue: Integer
        # @param IsEnableCmqNotify: 是否开启cmq消息通知。1：是，0：否。目前仅支持cmq的队列服务。如果开启cmq消息通知服务，云审计会将您的日志内容实时投递到您指定地域的指定队列中。
        # @type IsEnableCmqNotify: Integer
        # @param IsEnableKmsEncry: 是否开启kms加密。1：是，0：否。如果开启KMS加密，数据在投递到cos时，会将数据加密。
        # @type IsEnableKmsEncry: Integer
        # @param KeyId: CMK的全局唯一标识符，如果不是新创建的kms，该值是必填值。可以通过ListKeyAliasByRegion来获取。云审计不会校验KeyId的合法性，请您谨慎填写，避免给您的数据造成损失。
        # @type KeyId: String
        # @param KmsRegion: kms地域。目前支持的地域可以使用ListKmsEnableRegion来获取。必须要和cos的地域保持一致。
        # @type KmsRegion: String
        # @param LogFilePrefix: 日志文件前缀。3-40个字符，只能包含 ASCII 编码字母 a-z，A-Z，数字 0-9。
        # @type LogFilePrefix: String
        # @param ReadWriteAttribute: 管理事件的读写属性。1：只读，2：只写，3：全部。
        # @type ReadWriteAttribute: Integer

        attr_accessor :AuditName, :CmqQueueName, :CmqRegion, :CosBucketName, :CosRegion, :IsCreateNewBucket, :IsCreateNewQueue, :IsEnableCmqNotify, :IsEnableKmsEncry, :KeyId, :KmsRegion, :LogFilePrefix, :ReadWriteAttribute
        
        def initialize(auditname=nil, cmqqueuename=nil, cmqregion=nil, cosbucketname=nil, cosregion=nil, iscreatenewbucket=nil, iscreatenewqueue=nil, isenablecmqnotify=nil, isenablekmsencry=nil, keyid=nil, kmsregion=nil, logfileprefix=nil, readwriteattribute=nil)
          @AuditName = auditname
          @CmqQueueName = cmqqueuename
          @CmqRegion = cmqregion
          @CosBucketName = cosbucketname
          @CosRegion = cosregion
          @IsCreateNewBucket = iscreatenewbucket
          @IsCreateNewQueue = iscreatenewqueue
          @IsEnableCmqNotify = isenablecmqnotify
          @IsEnableKmsEncry = isenablekmsencry
          @KeyId = keyid
          @KmsRegion = kmsregion
          @LogFilePrefix = logfileprefix
          @ReadWriteAttribute = readwriteattribute
        end

        def deserialize(params)
          @AuditName = params['AuditName']
          @CmqQueueName = params['CmqQueueName']
          @CmqRegion = params['CmqRegion']
          @CosBucketName = params['CosBucketName']
          @CosRegion = params['CosRegion']
          @IsCreateNewBucket = params['IsCreateNewBucket']
          @IsCreateNewQueue = params['IsCreateNewQueue']
          @IsEnableCmqNotify = params['IsEnableCmqNotify']
          @IsEnableKmsEncry = params['IsEnableKmsEncry']
          @KeyId = params['KeyId']
          @KmsRegion = params['KmsRegion']
          @LogFilePrefix = params['LogFilePrefix']
          @ReadWriteAttribute = params['ReadWriteAttribute']
        end
      end

      # UpdateAudit返回参数结构体
      class UpdateAuditResponse < TencentCloud::Common::AbstractModel
        # @param IsSuccess: 是否更新成功
        # @type IsSuccess: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsSuccess, :RequestId
        
        def initialize(issuccess=nil, requestid=nil)
          @IsSuccess = issuccess
          @RequestId = requestid
        end

        def deserialize(params)
          @IsSuccess = params['IsSuccess']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

