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
  module Ckafka
    module V20190819
      # ACL对象实体
      class Acl < TencentCloud::Common::AbstractModel
        # @param ResourceType: Acl资源类型，（0:UNKNOWN，1:ANY，2:TOPIC，3:GROUP，4:CLUSTER，5:TRANSACTIONAL_ID）当前只有TOPIC，
        # @type ResourceType: Integer
        # @param ResourceName: 资源名称，和resourceType相关如当resourceType为TOPIC时，则该字段表示topic名称，当resourceType为GROUP时，该字段表示group名称
        # @type ResourceName: String
        # @param Principal: 用户列表，默认为User:*，表示任何user都可以访问，当前用户只能是用户列表中包含的用户
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Principal: String
        # @param Host: 默认\*,表示任何host都可以访问，当前ckafka不支持host为\*，但是后面开源kafka的产品化会直接支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Host: String
        # @param Operation: Acl操作方式(0:UNKNOWN，1:ANY，2:ALL，3:READ，4:WRITE，5:CREATE，6:DELETE，7:ALTER，8:DESCRIBE，9:CLUSTER_ACTION，10:DESCRIBE_CONFIGS，11:ALTER_CONFIGS，12:IDEMPOTEN_WRITE)
        # @type Operation: Integer
        # @param PermissionType: 权限类型(0:UNKNOWN，1:ANY，2:DENY，3:ALLOW)
        # @type PermissionType: Integer

        attr_accessor :ResourceType, :ResourceName, :Principal, :Host, :Operation, :PermissionType

        def initialize(resourcetype=nil, resourcename=nil, principal=nil, host=nil, operation=nil, permissiontype=nil)
          @ResourceType = resourcetype
          @ResourceName = resourcename
          @Principal = principal
          @Host = host
          @Operation = operation
          @PermissionType = permissiontype
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          @ResourceName = params['ResourceName']
          @Principal = params['Principal']
          @Host = params['Host']
          @Operation = params['Operation']
          @PermissionType = params['PermissionType']
        end
      end

      # ACL返回结果集
      class AclResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的总数据条数
        # @type TotalCount: Integer
        # @param AclList: ACL列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AclList: Array

        attr_accessor :TotalCount, :AclList

        def initialize(totalcount=nil, acllist=nil)
          @TotalCount = totalcount
          @AclList = acllist
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AclList'].nil?
            @AclList = []
            params['AclList'].each do |i|
              acl_tmp = Acl.new
              acl_tmp.deserialize(i)
              @AclList << acl_tmp
            end
          end
        end
      end

      # AclRule列表接口出参
      class AclRule < TencentCloud::Common::AbstractModel
        # @param RuleName: Acl规则名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleName: String
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param PatternType: 匹配类型，目前只支持前缀匹配，枚举值列表：PREFIXED
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PatternType: String
        # @param Pattern: 表示前缀匹配的前缀的值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pattern: String
        # @param ResourceType: Acl资源类型,目前只支持Topic,枚举值列表：Topic
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceType: String
        # @param AclList: 该规则所包含的ACL信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AclList: String
        # @param CreateTimeStamp: 规则所创建的时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTimeStamp: String
        # @param IsApplied: 预设ACL规则是否应用到新增的topic中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsApplied: Integer
        # @param UpdateTimeStamp: 规则更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTimeStamp: String
        # @param Comment: 规则的备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Comment: String
        # @param TopicName: 其中一个显示的对应的TopicName
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicName: String
        # @param TopicCount: 应用该ACL规则的Topic数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicCount: Integer
        # @param PatternTypeTitle: patternType的中文显示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PatternTypeTitle: String

        attr_accessor :RuleName, :InstanceId, :PatternType, :Pattern, :ResourceType, :AclList, :CreateTimeStamp, :IsApplied, :UpdateTimeStamp, :Comment, :TopicName, :TopicCount, :PatternTypeTitle

        def initialize(rulename=nil, instanceid=nil, patterntype=nil, pattern=nil, resourcetype=nil, acllist=nil, createtimestamp=nil, isapplied=nil, updatetimestamp=nil, comment=nil, topicname=nil, topiccount=nil, patterntypetitle=nil)
          @RuleName = rulename
          @InstanceId = instanceid
          @PatternType = patterntype
          @Pattern = pattern
          @ResourceType = resourcetype
          @AclList = acllist
          @CreateTimeStamp = createtimestamp
          @IsApplied = isapplied
          @UpdateTimeStamp = updatetimestamp
          @Comment = comment
          @TopicName = topicname
          @TopicCount = topiccount
          @PatternTypeTitle = patterntypetitle
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          @InstanceId = params['InstanceId']
          @PatternType = params['PatternType']
          @Pattern = params['Pattern']
          @ResourceType = params['ResourceType']
          @AclList = params['AclList']
          @CreateTimeStamp = params['CreateTimeStamp']
          @IsApplied = params['IsApplied']
          @UpdateTimeStamp = params['UpdateTimeStamp']
          @Comment = params['Comment']
          @TopicName = params['TopicName']
          @TopicCount = params['TopicCount']
          @PatternTypeTitle = params['PatternTypeTitle']
        end
      end

      # 表示ACL 规则的四元组信息
      class AclRuleInfo < TencentCloud::Common::AbstractModel
        # @param Operation: Acl操作方式，枚举值(所有操作: All, 读：Read，写：Write)
        # @type Operation: String
        # @param PermissionType: 权限类型，(Deny，Allow)
        # @type PermissionType: String
        # @param Host: 默认为\*，表示任何host都可以访问，当前ckafka不支持host为\* 和 ip网段
        # @type Host: String
        # @param Principal: 用户列表，默认为User:*，表示任何user都可以访问，当前用户只能是用户列表中包含的用户。传入格式需要带【User:】前缀。例如用户A，传入为User:A。
        # @type Principal: String

        attr_accessor :Operation, :PermissionType, :Host, :Principal

        def initialize(operation=nil, permissiontype=nil, host=nil, principal=nil)
          @Operation = operation
          @PermissionType = permissiontype
          @Host = host
          @Principal = principal
        end

        def deserialize(params)
          @Operation = params['Operation']
          @PermissionType = params['PermissionType']
          @Host = params['Host']
          @Principal = params['Principal']
        end
      end

      # AclRule列表接口返回结果
      class AclRuleResp < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数据条数
        # @type TotalCount: Integer
        # @param AclRuleList: AclRule列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AclRuleList: Array

        attr_accessor :TotalCount, :AclRuleList

        def initialize(totalcount=nil, aclrulelist=nil)
          @TotalCount = totalcount
          @AclRuleList = aclrulelist
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AclRuleList'].nil?
            @AclRuleList = []
            params['AclRuleList'].each do |i|
              aclrule_tmp = AclRule.new
              aclrule_tmp.deserialize(i)
              @AclRuleList << aclrule_tmp
            end
          end
        end
      end

      # 数据处理-解析参数
      class AnalyseParam < TencentCloud::Common::AbstractModel
        # @param Format: 解析格式，JSON，DELIMITER分隔符，REGULAR正则提取，SOURCE处理上层所有结果
        # @type Format: String
        # @param Regex: 分隔符、正则表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Regex: String
        # @param InputValueType: 需再次处理的KEY——模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InputValueType: String
        # @param InputValue: 需再次处理的KEY——KEY表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InputValue: String

        attr_accessor :Format, :Regex, :InputValueType, :InputValue

        def initialize(format=nil, regex=nil, inputvaluetype=nil, inputvalue=nil)
          @Format = format
          @Regex = regex
          @InputValueType = inputvaluetype
          @InputValue = inputvalue
        end

        def deserialize(params)
          @Format = params['Format']
          @Regex = params['Regex']
          @InputValueType = params['InputValueType']
          @InputValue = params['InputValue']
        end
      end

      # AppId的查询结果
      class AppIdResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合要求的所有AppId数量
        # @type TotalCount: Integer
        # @param AppIdList: 符合要求的App Id列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppIdList: Array

        attr_accessor :TotalCount, :AppIdList

        def initialize(totalcount=nil, appidlist=nil)
          @TotalCount = totalcount
          @AppIdList = appidlist
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @AppIdList = params['AppIdList']
        end
      end

      # 存储着分配给该消费者的 partition 信息
      class Assignment < TencentCloud::Common::AbstractModel
        # @param Version: assingment版本信息
        # @type Version: Integer
        # @param Topics: topic信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Topics: Array

        attr_accessor :Version, :Topics

        def initialize(version=nil, topics=nil)
          @Version = version
          @Topics = topics
        end

        def deserialize(params)
          @Version = params['Version']
          unless params['Topics'].nil?
            @Topics = []
            params['Topics'].each do |i|
              groupinfotopics_tmp = GroupInfoTopics.new
              groupinfotopics_tmp.deserialize(i)
              @Topics << groupinfotopics_tmp
            end
          end
        end
      end

      # AuthorizeToken请求参数结构体
      class AuthorizeTokenRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param User: 用户
        # @type User: String
        # @param Tokens: token串
        # @type Tokens: String

        attr_accessor :InstanceId, :User, :Tokens

        def initialize(instanceid=nil, user=nil, tokens=nil)
          @InstanceId = instanceid
          @User = user
          @Tokens = tokens
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @User = params['User']
          @Tokens = params['Tokens']
        end
      end

      # AuthorizeToken返回参数结构体
      class AuthorizeTokenResponse < TencentCloud::Common::AbstractModel
        # @param Result: 0 成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 批量解析
      class BatchAnalyseParam < TencentCloud::Common::AbstractModel
        # @param Format: ONE_BY_ONE单条输出，MERGE合并输出
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Format: String

        attr_accessor :Format

        def initialize(format=nil)
          @Format = format
        end

        def deserialize(params)
          @Format = params['Format']
        end
      end

      # 批量发送消息内容
      class BatchContent < TencentCloud::Common::AbstractModel
        # @param Body: 发送的消息体
        # @type Body: String
        # @param Key: 发送消息的键名
        # @type Key: String

        attr_accessor :Body, :Key

        def initialize(body=nil, key=nil)
          @Body = body
          @Key = key
        end

        def deserialize(params)
          @Body = params['Body']
          @Key = params['Key']
        end
      end

      # BatchCreateAcl请求参数结构体
      class BatchCreateAclRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ResourceType: Acl资源类型，(2:TOPIC）
        # @type ResourceType: Integer
        # @param ResourceNames: 资源列表数组
        # @type ResourceNames: Array
        # @param RuleList: 设置的ACL规则列表
        # @type RuleList: Array

        attr_accessor :InstanceId, :ResourceType, :ResourceNames, :RuleList

        def initialize(instanceid=nil, resourcetype=nil, resourcenames=nil, rulelist=nil)
          @InstanceId = instanceid
          @ResourceType = resourcetype
          @ResourceNames = resourcenames
          @RuleList = rulelist
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ResourceType = params['ResourceType']
          @ResourceNames = params['ResourceNames']
          unless params['RuleList'].nil?
            @RuleList = []
            params['RuleList'].each do |i|
              aclruleinfo_tmp = AclRuleInfo.new
              aclruleinfo_tmp.deserialize(i)
              @RuleList << aclruleinfo_tmp
            end
          end
        end
      end

      # BatchCreateAcl返回参数结构体
      class BatchCreateAclResponse < TencentCloud::Common::AbstractModel
        # @param Result: 状态码：0-修改成功，否则修改失败
        # @type Result: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # BatchModifyGroupOffsets请求参数结构体
      class BatchModifyGroupOffsetsRequest < TencentCloud::Common::AbstractModel
        # @param GroupName: 消费分组名称
        # @type GroupName: String
        # @param InstanceId: 实例名称
        # @type InstanceId: String
        # @param Partitions: partition信息
        # @type Partitions: Array
        # @param TopicName: 指定topic，默认所有topic
        # @type TopicName: Array

        attr_accessor :GroupName, :InstanceId, :Partitions, :TopicName

        def initialize(groupname=nil, instanceid=nil, partitions=nil, topicname=nil)
          @GroupName = groupname
          @InstanceId = instanceid
          @Partitions = partitions
          @TopicName = topicname
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @InstanceId = params['InstanceId']
          unless params['Partitions'].nil?
            @Partitions = []
            params['Partitions'].each do |i|
              partitions_tmp = Partitions.new
              partitions_tmp.deserialize(i)
              @Partitions << partitions_tmp
            end
          end
          @TopicName = params['TopicName']
        end
      end

      # BatchModifyGroupOffsets返回参数结构体
      class BatchModifyGroupOffsetsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # BatchModifyTopicAttributes请求参数结构体
      class BatchModifyTopicAttributesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param Topic: 主题属性列表
        # @type Topic: Array

        attr_accessor :InstanceId, :Topic

        def initialize(instanceid=nil, topic=nil)
          @InstanceId = instanceid
          @Topic = topic
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Topic'].nil?
            @Topic = []
            params['Topic'].each do |i|
              batchmodifytopicinfo_tmp = BatchModifyTopicInfo.new
              batchmodifytopicinfo_tmp.deserialize(i)
              @Topic << batchmodifytopicinfo_tmp
            end
          end
        end
      end

      # BatchModifyTopicAttributes返回参数结构体
      class BatchModifyTopicAttributesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              batchmodifytopicresultdto_tmp = BatchModifyTopicResultDTO.new
              batchmodifytopicresultdto_tmp.deserialize(i)
              @Result << batchmodifytopicresultdto_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 批量修改topic参数
      class BatchModifyTopicInfo < TencentCloud::Common::AbstractModel
        # @param TopicName: topic名称
        # @type TopicName: String
        # @param PartitionNum: 分区数
        # @type PartitionNum: Integer
        # @param Note: 备注
        # @type Note: String
        # @param ReplicaNum: 副本数
        # @type ReplicaNum: Integer
        # @param CleanUpPolicy: 消息删除策略，可以选择delete 或者compact
        # @type CleanUpPolicy: String
        # @param MinInsyncReplicas: 当producer设置request.required.acks为-1时，min.insync.replicas指定replicas的最小数目
        # @type MinInsyncReplicas: Integer
        # @param UncleanLeaderElectionEnable: 是否允许非ISR的副本成为Leader
        # @type UncleanLeaderElectionEnable: Boolean
        # @param RetentionMs: topic维度的消息保留时间（毫秒）范围1 分钟到90 天
        # @type RetentionMs: Integer
        # @param RetentionBytes: topic维度的消息保留大小，范围1 MB到1024 GB
        # @type RetentionBytes: Integer
        # @param SegmentMs: Segment分片滚动的时长（毫秒），范围1 到90 天
        # @type SegmentMs: Integer
        # @param MaxMessageBytes: 批次的消息大小，范围1 KB到12 MB
        # @type MaxMessageBytes: Integer

        attr_accessor :TopicName, :PartitionNum, :Note, :ReplicaNum, :CleanUpPolicy, :MinInsyncReplicas, :UncleanLeaderElectionEnable, :RetentionMs, :RetentionBytes, :SegmentMs, :MaxMessageBytes

        def initialize(topicname=nil, partitionnum=nil, note=nil, replicanum=nil, cleanuppolicy=nil, mininsyncreplicas=nil, uncleanleaderelectionenable=nil, retentionms=nil, retentionbytes=nil, segmentms=nil, maxmessagebytes=nil)
          @TopicName = topicname
          @PartitionNum = partitionnum
          @Note = note
          @ReplicaNum = replicanum
          @CleanUpPolicy = cleanuppolicy
          @MinInsyncReplicas = mininsyncreplicas
          @UncleanLeaderElectionEnable = uncleanleaderelectionenable
          @RetentionMs = retentionms
          @RetentionBytes = retentionbytes
          @SegmentMs = segmentms
          @MaxMessageBytes = maxmessagebytes
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @PartitionNum = params['PartitionNum']
          @Note = params['Note']
          @ReplicaNum = params['ReplicaNum']
          @CleanUpPolicy = params['CleanUpPolicy']
          @MinInsyncReplicas = params['MinInsyncReplicas']
          @UncleanLeaderElectionEnable = params['UncleanLeaderElectionEnable']
          @RetentionMs = params['RetentionMs']
          @RetentionBytes = params['RetentionBytes']
          @SegmentMs = params['SegmentMs']
          @MaxMessageBytes = params['MaxMessageBytes']
        end
      end

      # 批量修改topic属性结果
      class BatchModifyTopicResultDTO < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param TopicName: topic名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicName: String
        # @param ReturnCode: 状态码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReturnCode: String
        # @param Message: 状态消息
        # @type Message: String

        attr_accessor :InstanceId, :TopicName, :ReturnCode, :Message

        def initialize(instanceid=nil, topicname=nil, returncode=nil, message=nil)
          @InstanceId = instanceid
          @TopicName = topicname
          @ReturnCode = returncode
          @Message = message
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TopicName = params['TopicName']
          @ReturnCode = params['ReturnCode']
          @Message = params['Message']
        end
      end

      # 主题占用Broker磁盘大小
      class BrokerTopicData < TencentCloud::Common::AbstractModel
        # @param TopicName: 主题名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicName: String
        # @param TopicId: 主题ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicId: String
        # @param DataSize: 主题占用Broker 容量大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSize: Integer

        attr_accessor :TopicName, :TopicId, :DataSize

        def initialize(topicname=nil, topicid=nil, datasize=nil)
          @TopicName = topicname
          @TopicId = topicid
          @DataSize = datasize
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @TopicId = params['TopicId']
          @DataSize = params['DataSize']
        end
      end

      # broker维度topic 流量排行指标
      class BrokerTopicFlowData < TencentCloud::Common::AbstractModel
        # @param TopicName: Topic 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicName: String
        # @param TopicId: Topic Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicId: String
        # @param TopicTraffic: Topic 流量(MB)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicTraffic: String

        attr_accessor :TopicName, :TopicId, :TopicTraffic

        def initialize(topicname=nil, topicid=nil, topictraffic=nil)
          @TopicName = topicname
          @TopicId = topicid
          @TopicTraffic = topictraffic
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @TopicId = params['TopicId']
          @TopicTraffic = params['TopicTraffic']
        end
      end

      # CancelAuthorizationToken请求参数结构体
      class CancelAuthorizationTokenRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param User: 用户
        # @type User: String
        # @param Tokens: token串
        # @type Tokens: String

        attr_accessor :InstanceId, :User, :Tokens

        def initialize(instanceid=nil, user=nil, tokens=nil)
          @InstanceId = instanceid
          @User = user
          @Tokens = tokens
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @User = params['User']
          @Tokens = params['Tokens']
        end
      end

      # CancelAuthorizationToken返回参数结构体
      class CancelAuthorizationTokenResponse < TencentCloud::Common::AbstractModel
        # @param Result: 0 成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 创建CDC 标准版共享集群出参
      class CdcClusterResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: Integer

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # CheckCdcCluster请求参数结构体
      class CheckCdcClusterRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: Integer

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # CheckCdcCluster返回参数结构体
      class CheckCdcClusterResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果状态Success
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # ClickHouse连接源参数
      class ClickHouseConnectParam < TencentCloud::Common::AbstractModel
        # @param Port: ClickHouse的连接port
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param UserName: ClickHouse连接源的用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Password: ClickHouse连接源的密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param Resource: ClickHouse连接源的实例资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param SelfBuilt: ClickHouse连接源是否为自建集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelfBuilt: Boolean
        # @param ServiceVip: ClickHouse连接源的实例vip，当为腾讯云实例时，必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceVip: String
        # @param UniqVpcId: ClickHouse连接源的vpcId，当为腾讯云实例时，必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param IsUpdate: 是否更新到关联的Datahub任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUpdate: Boolean

        attr_accessor :Port, :UserName, :Password, :Resource, :SelfBuilt, :ServiceVip, :UniqVpcId, :IsUpdate

        def initialize(port=nil, username=nil, password=nil, resource=nil, selfbuilt=nil, servicevip=nil, uniqvpcid=nil, isupdate=nil)
          @Port = port
          @UserName = username
          @Password = password
          @Resource = resource
          @SelfBuilt = selfbuilt
          @ServiceVip = servicevip
          @UniqVpcId = uniqvpcid
          @IsUpdate = isupdate
        end

        def deserialize(params)
          @Port = params['Port']
          @UserName = params['UserName']
          @Password = params['Password']
          @Resource = params['Resource']
          @SelfBuilt = params['SelfBuilt']
          @ServiceVip = params['ServiceVip']
          @UniqVpcId = params['UniqVpcId']
          @IsUpdate = params['IsUpdate']
        end
      end

      # ClickHouse修改连接源参数
      class ClickHouseModifyConnectParam < TencentCloud::Common::AbstractModel
        # @param Resource: ClickHouse连接源的实例资源【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param Port: ClickHouse的连接port【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param ServiceVip: ClickHouse连接源的实例vip【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceVip: String
        # @param UniqVpcId: ClickHouse连接源的vpcId【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param UserName: ClickHouse连接源的用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Password: ClickHouse连接源的密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param SelfBuilt: ClickHouse连接源是否为自建集群【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelfBuilt: Boolean
        # @param IsUpdate: 是否更新到关联的Datahub任务，默认为true
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUpdate: Boolean

        attr_accessor :Resource, :Port, :ServiceVip, :UniqVpcId, :UserName, :Password, :SelfBuilt, :IsUpdate

        def initialize(resource=nil, port=nil, servicevip=nil, uniqvpcid=nil, username=nil, password=nil, selfbuilt=nil, isupdate=nil)
          @Resource = resource
          @Port = port
          @ServiceVip = servicevip
          @UniqVpcId = uniqvpcid
          @UserName = username
          @Password = password
          @SelfBuilt = selfbuilt
          @IsUpdate = isupdate
        end

        def deserialize(params)
          @Resource = params['Resource']
          @Port = params['Port']
          @ServiceVip = params['ServiceVip']
          @UniqVpcId = params['UniqVpcId']
          @UserName = params['UserName']
          @Password = params['Password']
          @SelfBuilt = params['SelfBuilt']
          @IsUpdate = params['IsUpdate']
        end
      end

      # ClickHouse类型入参
      class ClickHouseParam < TencentCloud::Common::AbstractModel
        # @param Cluster: ClickHouse的集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cluster: String
        # @param Database: ClickHouse的数据库名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Database: String
        # @param Table: ClickHouse的数据表名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Table: String
        # @param Schema: ClickHouse的schema
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Schema: Array
        # @param Resource: 实例资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param Ip: ClickHouse的连接ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ip: String
        # @param Port: ClickHouse的连接port
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param UserName: ClickHouse的用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Password: ClickHouse的密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param ServiceVip: 实例vip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceVip: String
        # @param UniqVpcId: 实例的vpcId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param SelfBuilt: 是否为自建集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelfBuilt: Boolean
        # @param DropInvalidMessage: ClickHouse是否抛弃解析失败的消息，默认为true
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DropInvalidMessage: Boolean
        # @param Type: ClickHouse 类型，emr-clickhouse : "emr";cdw-clickhouse : "cdwch";自建 : ""
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param DropCls: 当设置成员参数DropInvalidMessageToCls设置为true时,DropInvalidMessage参数失效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DropCls: :class:`Tencentcloud::Ckafka.v20190819.models.DropCls`
        # @param BatchSize: 每批次投递到 ClickHouse 表消息数量，默认为 1000 条。
        # 提高该参数值，有利于减少往  ClickHouse 投递的次数，但在错误消息过多及网络不稳定等极端情况下时，可能导致频繁重试影响效率。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchSize: Integer
        # @param ConsumerFetchMinBytes: 每次从 topic 中拉取消息大小，默认为 1MB，即至少要从 topic 中批量拉取 1MB 消息，才进行数据投递到 ClickHouse 操作。
        # 提高该参数值，有利于减少往  ClickHouse 投递的次数，但在错误消息过多及网络不稳定等极端情况下时，可能导致频繁重试影响效率。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsumerFetchMinBytes: Integer
        # @param ConsumerFetchMaxWaitMs: 每次从 topic 拉取消息最大等待时间，当超过当前最大等待时间时，即使没有拉取到 ConsumerFetchMinBytes 大小，也将进行 ClickHouse 投递操作。
        # 提高该参数值，有利于减少往  ClickHouse 投递的次数，但在错误消息过多及网络不稳定等极端情况下时，可能导致频繁重试影响效率。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsumerFetchMaxWaitMs: Integer

        attr_accessor :Cluster, :Database, :Table, :Schema, :Resource, :Ip, :Port, :UserName, :Password, :ServiceVip, :UniqVpcId, :SelfBuilt, :DropInvalidMessage, :Type, :DropCls, :BatchSize, :ConsumerFetchMinBytes, :ConsumerFetchMaxWaitMs

        def initialize(cluster=nil, database=nil, table=nil, schema=nil, resource=nil, ip=nil, port=nil, username=nil, password=nil, servicevip=nil, uniqvpcid=nil, selfbuilt=nil, dropinvalidmessage=nil, type=nil, dropcls=nil, batchsize=nil, consumerfetchminbytes=nil, consumerfetchmaxwaitms=nil)
          @Cluster = cluster
          @Database = database
          @Table = table
          @Schema = schema
          @Resource = resource
          @Ip = ip
          @Port = port
          @UserName = username
          @Password = password
          @ServiceVip = servicevip
          @UniqVpcId = uniqvpcid
          @SelfBuilt = selfbuilt
          @DropInvalidMessage = dropinvalidmessage
          @Type = type
          @DropCls = dropcls
          @BatchSize = batchsize
          @ConsumerFetchMinBytes = consumerfetchminbytes
          @ConsumerFetchMaxWaitMs = consumerfetchmaxwaitms
        end

        def deserialize(params)
          @Cluster = params['Cluster']
          @Database = params['Database']
          @Table = params['Table']
          unless params['Schema'].nil?
            @Schema = []
            params['Schema'].each do |i|
              clickhouseschema_tmp = ClickHouseSchema.new
              clickhouseschema_tmp.deserialize(i)
              @Schema << clickhouseschema_tmp
            end
          end
          @Resource = params['Resource']
          @Ip = params['Ip']
          @Port = params['Port']
          @UserName = params['UserName']
          @Password = params['Password']
          @ServiceVip = params['ServiceVip']
          @UniqVpcId = params['UniqVpcId']
          @SelfBuilt = params['SelfBuilt']
          @DropInvalidMessage = params['DropInvalidMessage']
          @Type = params['Type']
          unless params['DropCls'].nil?
            @DropCls = DropCls.new
            @DropCls.deserialize(params['DropCls'])
          end
          @BatchSize = params['BatchSize']
          @ConsumerFetchMinBytes = params['ConsumerFetchMinBytes']
          @ConsumerFetchMaxWaitMs = params['ConsumerFetchMaxWaitMs']
        end
      end

      # ClickHouse的Schema
      class ClickHouseSchema < TencentCloud::Common::AbstractModel
        # @param ColumnName: 表的列名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColumnName: String
        # @param JsonKey: 该列对应的jsonKey名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JsonKey: String
        # @param Type: 表列项的类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param AllowNull: 列项是否允许为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllowNull: Boolean

        attr_accessor :ColumnName, :JsonKey, :Type, :AllowNull

        def initialize(columnname=nil, jsonkey=nil, type=nil, allownull=nil)
          @ColumnName = columnname
          @JsonKey = jsonkey
          @Type = type
          @AllowNull = allownull
        end

        def deserialize(params)
          @ColumnName = params['ColumnName']
          @JsonKey = params['JsonKey']
          @Type = params['Type']
          @AllowNull = params['AllowNull']
        end
      end

      # Cls类型入参
      class ClsParam < TencentCloud::Common::AbstractModel
        # @param DecodeJson: 生产的信息是否为json格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DecodeJson: Boolean
        # @param Resource: cls日志主题id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param LogSet: cls日志集id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogSet: String
        # @param ContentKey: 当DecodeJson为false时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContentKey: String
        # @param TimeField: 指定消息中的某字段内容作为cls日志的时间。
        # 字段内容格式需要是秒级时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeField: String

        attr_accessor :DecodeJson, :Resource, :LogSet, :ContentKey, :TimeField

        def initialize(decodejson=nil, resource=nil, logset=nil, contentkey=nil, timefield=nil)
          @DecodeJson = decodejson
          @Resource = resource
          @LogSet = logset
          @ContentKey = contentkey
          @TimeField = timefield
        end

        def deserialize(params)
          @DecodeJson = params['DecodeJson']
          @Resource = params['Resource']
          @LogSet = params['LogSet']
          @ContentKey = params['ContentKey']
          @TimeField = params['TimeField']
        end
      end

      # 集群信息实体
      class ClusterInfo < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群Id
        # @type ClusterId: Integer
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param MaxDiskSize: 集群最大磁盘 单位GB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxDiskSize: Integer
        # @param MaxBandWidth: 集群最大带宽 单位MB/s
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxBandWidth: Integer
        # @param AvailableDiskSize: 集群当前可用磁盘  单位GB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AvailableDiskSize: Integer
        # @param AvailableBandWidth: 集群当前可用带宽 单位MB/s
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AvailableBandWidth: Integer
        # @param ZoneId: 集群所属可用区，表明集群归属的可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: Integer
        # @param ZoneIds: 集群节点所在的可用区，若该集群为跨可用区集群，则包含该集群节点所在的多个可用区。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneIds: Array

        attr_accessor :ClusterId, :ClusterName, :MaxDiskSize, :MaxBandWidth, :AvailableDiskSize, :AvailableBandWidth, :ZoneId, :ZoneIds

        def initialize(clusterid=nil, clustername=nil, maxdisksize=nil, maxbandwidth=nil, availabledisksize=nil, availablebandwidth=nil, zoneid=nil, zoneids=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @MaxDiskSize = maxdisksize
          @MaxBandWidth = maxbandwidth
          @AvailableDiskSize = availabledisksize
          @AvailableBandWidth = availablebandwidth
          @ZoneId = zoneid
          @ZoneIds = zoneids
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @MaxDiskSize = params['MaxDiskSize']
          @MaxBandWidth = params['MaxBandWidth']
          @AvailableDiskSize = params['AvailableDiskSize']
          @AvailableBandWidth = params['AvailableBandWidth']
          @ZoneId = params['ZoneId']
          @ZoneIds = params['ZoneIds']
        end
      end

      # 高级配置对象
      class Config < TencentCloud::Common::AbstractModel
        # @param Retention: 消息保留时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Retention: Integer
        # @param MinInsyncReplicas: 最小同步复制数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MinInsyncReplicas: Integer
        # @param CleanUpPolicy: 日志清理模式，默认 delete。
        # delete：日志按保存时间删除；compact：日志按 key 压缩；compact, delete：日志按 key 压缩且会保存时间删除。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CleanUpPolicy: String
        # @param SegmentMs: Segment 分片滚动的时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SegmentMs: Integer
        # @param UncleanLeaderElectionEnable: 0表示 false。 1表示 true。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UncleanLeaderElectionEnable: Integer
        # @param SegmentBytes: Segment 分片滚动的字节数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SegmentBytes: Integer
        # @param MaxMessageBytes: 最大消息字节数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxMessageBytes: Integer
        # @param RetentionBytes: 消息保留文件大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetentionBytes: Integer

        attr_accessor :Retention, :MinInsyncReplicas, :CleanUpPolicy, :SegmentMs, :UncleanLeaderElectionEnable, :SegmentBytes, :MaxMessageBytes, :RetentionBytes

        def initialize(retention=nil, mininsyncreplicas=nil, cleanuppolicy=nil, segmentms=nil, uncleanleaderelectionenable=nil, segmentbytes=nil, maxmessagebytes=nil, retentionbytes=nil)
          @Retention = retention
          @MinInsyncReplicas = mininsyncreplicas
          @CleanUpPolicy = cleanuppolicy
          @SegmentMs = segmentms
          @UncleanLeaderElectionEnable = uncleanleaderelectionenable
          @SegmentBytes = segmentbytes
          @MaxMessageBytes = maxmessagebytes
          @RetentionBytes = retentionbytes
        end

        def deserialize(params)
          @Retention = params['Retention']
          @MinInsyncReplicas = params['MinInsyncReplicas']
          @CleanUpPolicy = params['CleanUpPolicy']
          @SegmentMs = params['SegmentMs']
          @UncleanLeaderElectionEnable = params['UncleanLeaderElectionEnable']
          @SegmentBytes = params['SegmentBytes']
          @MaxMessageBytes = params['MaxMessageBytes']
          @RetentionBytes = params['RetentionBytes']
        end
      end

      # 返回连接源的Id
      class ConnectResourceResourceIdResp < TencentCloud::Common::AbstractModel
        # @param ResourceId: 连接源的Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: String

        attr_accessor :ResourceId

        def initialize(resourceid=nil)
          @ResourceId = resourceid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
        end
      end

      # Connection信息
      class Connection < TencentCloud::Common::AbstractModel
        # @param TopicName: Topic名称
        # @type TopicName: String
        # @param GroupId: 消费组ID
        # @type GroupId: String
        # @param TopicId: Topic的Id
        # @type TopicId: String

        attr_accessor :TopicName, :GroupId, :TopicId

        def initialize(topicname=nil, groupid=nil, topicid=nil)
          @TopicName = topicname
          @GroupId = groupid
          @TopicId = topicid
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @GroupId = params['GroupId']
          @TopicId = params['TopicId']
        end
      end

      # 用户组实体
      class ConsumerGroup < TencentCloud::Common::AbstractModel
        # @param ConsumerGroupName: 用户组名称
        # @type ConsumerGroupName: String
        # @param SubscribedInfo: 订阅信息实体
        # @type SubscribedInfo: Array

        attr_accessor :ConsumerGroupName, :SubscribedInfo

        def initialize(consumergroupname=nil, subscribedinfo=nil)
          @ConsumerGroupName = consumergroupname
          @SubscribedInfo = subscribedinfo
        end

        def deserialize(params)
          @ConsumerGroupName = params['ConsumerGroupName']
          unless params['SubscribedInfo'].nil?
            @SubscribedInfo = []
            params['SubscribedInfo'].each do |i|
              subscribedinfo_tmp = SubscribedInfo.new
              subscribedinfo_tmp.deserialize(i)
              @SubscribedInfo << subscribedinfo_tmp
            end
          end
        end
      end

      # 消费组返回结果实体
      class ConsumerGroupResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的消费组数量
        # @type TotalCount: Integer
        # @param TopicList: 主题列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicList: Array
        # @param GroupList: 消费分组List
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupList: Array
        # @param TotalPartition: 所有分区数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPartition: Integer
        # @param PartitionListForMonitor: 监控的分区列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PartitionListForMonitor: Array
        # @param TotalTopic: 主题总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalTopic: Integer
        # @param TopicListForMonitor: 监控的主题列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicListForMonitor: Array
        # @param GroupListForMonitor: 监控的组列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupListForMonitor: Array

        attr_accessor :TotalCount, :TopicList, :GroupList, :TotalPartition, :PartitionListForMonitor, :TotalTopic, :TopicListForMonitor, :GroupListForMonitor

        def initialize(totalcount=nil, topiclist=nil, grouplist=nil, totalpartition=nil, partitionlistformonitor=nil, totaltopic=nil, topiclistformonitor=nil, grouplistformonitor=nil)
          @TotalCount = totalcount
          @TopicList = topiclist
          @GroupList = grouplist
          @TotalPartition = totalpartition
          @PartitionListForMonitor = partitionlistformonitor
          @TotalTopic = totaltopic
          @TopicListForMonitor = topiclistformonitor
          @GroupListForMonitor = grouplistformonitor
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TopicList'].nil?
            @TopicList = []
            params['TopicList'].each do |i|
              consumergrouptopic_tmp = ConsumerGroupTopic.new
              consumergrouptopic_tmp.deserialize(i)
              @TopicList << consumergrouptopic_tmp
            end
          end
          unless params['GroupList'].nil?
            @GroupList = []
            params['GroupList'].each do |i|
              consumergroup_tmp = ConsumerGroup.new
              consumergroup_tmp.deserialize(i)
              @GroupList << consumergroup_tmp
            end
          end
          @TotalPartition = params['TotalPartition']
          unless params['PartitionListForMonitor'].nil?
            @PartitionListForMonitor = []
            params['PartitionListForMonitor'].each do |i|
              partition_tmp = Partition.new
              partition_tmp.deserialize(i)
              @PartitionListForMonitor << partition_tmp
            end
          end
          @TotalTopic = params['TotalTopic']
          unless params['TopicListForMonitor'].nil?
            @TopicListForMonitor = []
            params['TopicListForMonitor'].each do |i|
              consumergrouptopic_tmp = ConsumerGroupTopic.new
              consumergrouptopic_tmp.deserialize(i)
              @TopicListForMonitor << consumergrouptopic_tmp
            end
          end
          unless params['GroupListForMonitor'].nil?
            @GroupListForMonitor = []
            params['GroupListForMonitor'].each do |i|
              group_tmp = Group.new
              group_tmp.deserialize(i)
              @GroupListForMonitor << group_tmp
            end
          end
        end
      end

      # 消费者组消费速度排行
      class ConsumerGroupSpeed < TencentCloud::Common::AbstractModel
        # @param ConsumerGroupName: 消费者组名称
        # @type ConsumerGroupName: String
        # @param Speed: 消费速度 Count/Minute
        # @type Speed: Integer

        attr_accessor :ConsumerGroupName, :Speed

        def initialize(consumergroupname=nil, speed=nil)
          @ConsumerGroupName = consumergroupname
          @Speed = speed
        end

        def deserialize(params)
          @ConsumerGroupName = params['ConsumerGroupName']
          @Speed = params['Speed']
        end
      end

      # 消费组主题对象
      class ConsumerGroupTopic < TencentCloud::Common::AbstractModel
        # @param TopicId: 主题ID
        # @type TopicId: String
        # @param TopicName: 主题名称
        # @type TopicName: String

        attr_accessor :TopicId, :TopicName

        def initialize(topicid=nil, topicname=nil)
          @TopicId = topicid
          @TopicName = topicname
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @TopicName = params['TopicName']
        end
      end

      # 消息记录
      class ConsumerRecord < TencentCloud::Common::AbstractModel
        # @param Topic: 主题名
        # @type Topic: String
        # @param Partition: 分区id
        # @type Partition: Integer
        # @param Offset: 位点
        # @type Offset: Integer
        # @param Key: 消息key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: 消息value
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Timestamp: 消息时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timestamp: Integer
        # @param Headers: 消息headers
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Headers: String

        attr_accessor :Topic, :Partition, :Offset, :Key, :Value, :Timestamp, :Headers

        def initialize(topic=nil, partition=nil, offset=nil, key=nil, value=nil, timestamp=nil, headers=nil)
          @Topic = topic
          @Partition = partition
          @Offset = offset
          @Key = key
          @Value = value
          @Timestamp = timestamp
          @Headers = headers
        end

        def deserialize(params)
          @Topic = params['Topic']
          @Partition = params['Partition']
          @Offset = params['Offset']
          @Key = params['Key']
          @Value = params['Value']
          @Timestamp = params['Timestamp']
          @Headers = params['Headers']
        end
      end

      # Cos Datahub 任务接入参数
      class CosParam < TencentCloud::Common::AbstractModel
        # @param BucketName: cos 存储桶名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BucketName: String
        # @param Region: 地域代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param ObjectKey: 对象名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjectKey: String
        # @param AggregateBatchSize: 汇聚消息量的大小（单位：MB)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AggregateBatchSize: Integer
        # @param AggregateInterval: 汇聚的时间间隔（单位：小时）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AggregateInterval: Integer
        # @param FormatOutputType: 消息汇聚后的文件格式（支持csv, json）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FormatOutputType: String
        # @param ObjectKeyPrefix: 转储的对象目录前缀
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjectKeyPrefix: String
        # @param DirectoryTimeFormat: 根据strptime 时间格式化的分区格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DirectoryTimeFormat: String

        attr_accessor :BucketName, :Region, :ObjectKey, :AggregateBatchSize, :AggregateInterval, :FormatOutputType, :ObjectKeyPrefix, :DirectoryTimeFormat

        def initialize(bucketname=nil, region=nil, objectkey=nil, aggregatebatchsize=nil, aggregateinterval=nil, formatoutputtype=nil, objectkeyprefix=nil, directorytimeformat=nil)
          @BucketName = bucketname
          @Region = region
          @ObjectKey = objectkey
          @AggregateBatchSize = aggregatebatchsize
          @AggregateInterval = aggregateinterval
          @FormatOutputType = formatoutputtype
          @ObjectKeyPrefix = objectkeyprefix
          @DirectoryTimeFormat = directorytimeformat
        end

        def deserialize(params)
          @BucketName = params['BucketName']
          @Region = params['Region']
          @ObjectKey = params['ObjectKey']
          @AggregateBatchSize = params['AggregateBatchSize']
          @AggregateInterval = params['AggregateInterval']
          @FormatOutputType = params['FormatOutputType']
          @ObjectKeyPrefix = params['ObjectKeyPrefix']
          @DirectoryTimeFormat = params['DirectoryTimeFormat']
        end
      end

      # CreateAcl请求参数结构体
      class CreateAclRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id信息
        # @type InstanceId: String
        # @param ResourceType: Acl资源类型，(2:TOPIC，3:GROUP，4:CLUSTER)
        # @type ResourceType: Integer
        # @param Operation: Acl操作方式，(2:ALL，3:READ，4:WRITE，5:CREATE，6:DELETE，7:ALTER，8:DESCRIBE，9:CLUSTER_ACTION，10:DESCRIBE_CONFIGS，11:ALTER_CONFIGS，12:IDEMPOTENT_WRITE)
        # @type Operation: Integer
        # @param PermissionType: 权限类型，(2:DENY，3:ALLOW)，当前ckakfa支持ALLOW(相当于白名单)，其它用于后续兼容开源kafka的acl时使用
        # @type PermissionType: Integer
        # @param ResourceName: 资源名称，和resourceType相关，如当resourceType为TOPIC时，则该字段表示topic名称，当resourceType为GROUP时，该字段表示group名称，当resourceType为CLUSTER时，该字段可为空。
        # @type ResourceName: String
        # @param Host: 默认为*，表示任何host都可以访问。支持填写IP或网段，支持“;”分隔。
        # @type Host: String
        # @param Principal: 用户列表，默认为User:*，表示任何user都可以访问，当前用户只能是用户列表中包含的用户。传入时需要加 User: 前缀,如用户A则传入User:A。
        # @type Principal: String
        # @param ResourceNameList: 资源名称列表,Json字符串格式。ResourceName和resourceNameList只能指定其中一个。
        # @type ResourceNameList: String

        attr_accessor :InstanceId, :ResourceType, :Operation, :PermissionType, :ResourceName, :Host, :Principal, :ResourceNameList

        def initialize(instanceid=nil, resourcetype=nil, operation=nil, permissiontype=nil, resourcename=nil, host=nil, principal=nil, resourcenamelist=nil)
          @InstanceId = instanceid
          @ResourceType = resourcetype
          @Operation = operation
          @PermissionType = permissiontype
          @ResourceName = resourcename
          @Host = host
          @Principal = principal
          @ResourceNameList = resourcenamelist
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ResourceType = params['ResourceType']
          @Operation = params['Operation']
          @PermissionType = params['PermissionType']
          @ResourceName = params['ResourceName']
          @Host = params['Host']
          @Principal = params['Principal']
          @ResourceNameList = params['ResourceNameList']
        end
      end

      # CreateAcl返回参数结构体
      class CreateAclResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateAclRule请求参数结构体
      class CreateAclRuleRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id信息
        # @type InstanceId: String
        # @param ResourceType: Acl资源类型,目前只支持Topic,枚举值列表：Topic
        # @type ResourceType: String
        # @param PatternType: 匹配类型，目前支持前缀匹配与预设策略，枚举值列表：PREFIXED/PRESET
        # @type PatternType: String
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param RuleList: 设置的ACL规则列表
        # @type RuleList: Array
        # @param Pattern: 表示前缀匹配的前缀的值
        # @type Pattern: String
        # @param IsApplied: 预设ACL规则是否应用到新增的topic中
        # @type IsApplied: Integer
        # @param Comment: ACL规则的备注
        # @type Comment: String

        attr_accessor :InstanceId, :ResourceType, :PatternType, :RuleName, :RuleList, :Pattern, :IsApplied, :Comment

        def initialize(instanceid=nil, resourcetype=nil, patterntype=nil, rulename=nil, rulelist=nil, pattern=nil, isapplied=nil, comment=nil)
          @InstanceId = instanceid
          @ResourceType = resourcetype
          @PatternType = patterntype
          @RuleName = rulename
          @RuleList = rulelist
          @Pattern = pattern
          @IsApplied = isapplied
          @Comment = comment
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ResourceType = params['ResourceType']
          @PatternType = params['PatternType']
          @RuleName = params['RuleName']
          unless params['RuleList'].nil?
            @RuleList = []
            params['RuleList'].each do |i|
              aclruleinfo_tmp = AclRuleInfo.new
              aclruleinfo_tmp.deserialize(i)
              @RuleList << aclruleinfo_tmp
            end
          end
          @Pattern = params['Pattern']
          @IsApplied = params['IsApplied']
          @Comment = params['Comment']
        end
      end

      # CreateAclRule返回参数结构体
      class CreateAclRuleResponse < TencentCloud::Common::AbstractModel
        # @param Result: 规则的唯一表示Key
        # @type Result: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateCdcCluster请求参数结构体
      class CreateCdcClusterRequest < TencentCloud::Common::AbstractModel
        # @param CdcId: cdc的id
        # @type CdcId: String
        # @param CdcVpcId: vpcId,一个地域只有唯一一个vpcid用于CDC
        # @type CdcVpcId: String
        # @param CdcSubnetId: 每个CDC集群有唯一一个子网ID
        # @type CdcSubnetId: String
        # @param ZoneId: 所在可用区ID
        # @type ZoneId: Integer
        # @param Bandwidth: cdc集群的总带宽
        # @type Bandwidth: Integer
        # @param DiskSize: cdc集群的总磁盘
        # @type DiskSize: Integer
        # @param DiskType: 数据盘类型
        # @type DiskType: String
        # @param SystemDiskType: 系统盘类型
        # @type SystemDiskType: String

        attr_accessor :CdcId, :CdcVpcId, :CdcSubnetId, :ZoneId, :Bandwidth, :DiskSize, :DiskType, :SystemDiskType

        def initialize(cdcid=nil, cdcvpcid=nil, cdcsubnetid=nil, zoneid=nil, bandwidth=nil, disksize=nil, disktype=nil, systemdisktype=nil)
          @CdcId = cdcid
          @CdcVpcId = cdcvpcid
          @CdcSubnetId = cdcsubnetid
          @ZoneId = zoneid
          @Bandwidth = bandwidth
          @DiskSize = disksize
          @DiskType = disktype
          @SystemDiskType = systemdisktype
        end

        def deserialize(params)
          @CdcId = params['CdcId']
          @CdcVpcId = params['CdcVpcId']
          @CdcSubnetId = params['CdcSubnetId']
          @ZoneId = params['ZoneId']
          @Bandwidth = params['Bandwidth']
          @DiskSize = params['DiskSize']
          @DiskType = params['DiskType']
          @SystemDiskType = params['SystemDiskType']
        end
      end

      # CreateCdcCluster返回参数结构体
      class CreateCdcClusterResponse < TencentCloud::Common::AbstractModel
        # @param Result: 无
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.CdcClusterResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CdcClusterResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateConnectResource请求参数结构体
      class CreateConnectResourceRequest < TencentCloud::Common::AbstractModel
        # @param ResourceName: 连接源名称
        # @type ResourceName: String
        # @param Type: 连接源类型
        # @type Type: String
        # @param Description: 连接源描述
        # @type Description: String
        # @param DtsConnectParam: Dts配置，Type为DTS时必填
        # @type DtsConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.DtsConnectParam`
        # @param MongoDBConnectParam: MongoDB配置，Type为MONGODB时必填
        # @type MongoDBConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.MongoDBConnectParam`
        # @param EsConnectParam: Es配置，Type为ES时必填
        # @type EsConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.EsConnectParam`
        # @param ClickHouseConnectParam: ClickHouse配置，Type为CLICKHOUSE时必填
        # @type ClickHouseConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.ClickHouseConnectParam`
        # @param MySQLConnectParam: MySQL配置，Type为MYSQL或TDSQL_C_MYSQL时必填
        # @type MySQLConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.MySQLConnectParam`
        # @param PostgreSQLConnectParam: PostgreSQL配置，Type为POSTGRESQL或TDSQL_C_POSTGRESQL时必填
        # @type PostgreSQLConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.PostgreSQLConnectParam`
        # @param MariaDBConnectParam: MariaDB配置，Type为MARIADB时必填
        # @type MariaDBConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.MariaDBConnectParam`
        # @param SQLServerConnectParam: SQLServer配置，Type为SQLSERVER时必填
        # @type SQLServerConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.SQLServerConnectParam`
        # @param DorisConnectParam: Doris 配置，Type为 DORIS 时必填
        # @type DorisConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.DorisConnectParam`
        # @param KafkaConnectParam: Kafka配置，Type为 KAFKA 时必填
        # @type KafkaConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.KafkaConnectParam`
        # @param MqttConnectParam: MQTT配置，Type为 MQTT 时必填
        # @type MqttConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.MqttConnectParam`

        attr_accessor :ResourceName, :Type, :Description, :DtsConnectParam, :MongoDBConnectParam, :EsConnectParam, :ClickHouseConnectParam, :MySQLConnectParam, :PostgreSQLConnectParam, :MariaDBConnectParam, :SQLServerConnectParam, :DorisConnectParam, :KafkaConnectParam, :MqttConnectParam

        def initialize(resourcename=nil, type=nil, description=nil, dtsconnectparam=nil, mongodbconnectparam=nil, esconnectparam=nil, clickhouseconnectparam=nil, mysqlconnectparam=nil, postgresqlconnectparam=nil, mariadbconnectparam=nil, sqlserverconnectparam=nil, dorisconnectparam=nil, kafkaconnectparam=nil, mqttconnectparam=nil)
          @ResourceName = resourcename
          @Type = type
          @Description = description
          @DtsConnectParam = dtsconnectparam
          @MongoDBConnectParam = mongodbconnectparam
          @EsConnectParam = esconnectparam
          @ClickHouseConnectParam = clickhouseconnectparam
          @MySQLConnectParam = mysqlconnectparam
          @PostgreSQLConnectParam = postgresqlconnectparam
          @MariaDBConnectParam = mariadbconnectparam
          @SQLServerConnectParam = sqlserverconnectparam
          @DorisConnectParam = dorisconnectparam
          @KafkaConnectParam = kafkaconnectparam
          @MqttConnectParam = mqttconnectparam
        end

        def deserialize(params)
          @ResourceName = params['ResourceName']
          @Type = params['Type']
          @Description = params['Description']
          unless params['DtsConnectParam'].nil?
            @DtsConnectParam = DtsConnectParam.new
            @DtsConnectParam.deserialize(params['DtsConnectParam'])
          end
          unless params['MongoDBConnectParam'].nil?
            @MongoDBConnectParam = MongoDBConnectParam.new
            @MongoDBConnectParam.deserialize(params['MongoDBConnectParam'])
          end
          unless params['EsConnectParam'].nil?
            @EsConnectParam = EsConnectParam.new
            @EsConnectParam.deserialize(params['EsConnectParam'])
          end
          unless params['ClickHouseConnectParam'].nil?
            @ClickHouseConnectParam = ClickHouseConnectParam.new
            @ClickHouseConnectParam.deserialize(params['ClickHouseConnectParam'])
          end
          unless params['MySQLConnectParam'].nil?
            @MySQLConnectParam = MySQLConnectParam.new
            @MySQLConnectParam.deserialize(params['MySQLConnectParam'])
          end
          unless params['PostgreSQLConnectParam'].nil?
            @PostgreSQLConnectParam = PostgreSQLConnectParam.new
            @PostgreSQLConnectParam.deserialize(params['PostgreSQLConnectParam'])
          end
          unless params['MariaDBConnectParam'].nil?
            @MariaDBConnectParam = MariaDBConnectParam.new
            @MariaDBConnectParam.deserialize(params['MariaDBConnectParam'])
          end
          unless params['SQLServerConnectParam'].nil?
            @SQLServerConnectParam = SQLServerConnectParam.new
            @SQLServerConnectParam.deserialize(params['SQLServerConnectParam'])
          end
          unless params['DorisConnectParam'].nil?
            @DorisConnectParam = DorisConnectParam.new
            @DorisConnectParam.deserialize(params['DorisConnectParam'])
          end
          unless params['KafkaConnectParam'].nil?
            @KafkaConnectParam = KafkaConnectParam.new
            @KafkaConnectParam.deserialize(params['KafkaConnectParam'])
          end
          unless params['MqttConnectParam'].nil?
            @MqttConnectParam = MqttConnectParam.new
            @MqttConnectParam.deserialize(params['MqttConnectParam'])
          end
        end
      end

      # CreateConnectResource返回参数结构体
      class CreateConnectResourceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 连接源的Id
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.ConnectResourceResourceIdResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ConnectResourceResourceIdResp.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateConsumer请求参数结构体
      class CreateConsumerRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param GroupName: group名称
        # @type GroupName: String
        # @param TopicName: topic名称，TopicName、TopicNameList 需要显示指定一个存在的topic名称
        # @type TopicName: String
        # @param TopicNameList: topic名称数组
        # @type TopicNameList: Array

        attr_accessor :InstanceId, :GroupName, :TopicName, :TopicNameList

        def initialize(instanceid=nil, groupname=nil, topicname=nil, topicnamelist=nil)
          @InstanceId = instanceid
          @GroupName = groupname
          @TopicName = topicname
          @TopicNameList = topicnamelist
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @GroupName = params['GroupName']
          @TopicName = params['TopicName']
          @TopicNameList = params['TopicNameList']
        end
      end

      # CreateConsumer返回参数结构体
      class CreateConsumerResponse < TencentCloud::Common::AbstractModel
        # @param Result: 创建group描述
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateDatahubTask请求参数结构体
      class CreateDatahubTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param TaskType: 任务类型，SOURCE数据接入，SINK数据流出
        # @type TaskType: String
        # @param SourceResource: 数据源
        # @type SourceResource: :class:`Tencentcloud::Ckafka.v20190819.models.DatahubResource`
        # @param TargetResource: 数据目标
        # @type TargetResource: :class:`Tencentcloud::Ckafka.v20190819.models.DatahubResource`
        # @param TransformParam: 数据处理规则
        # @type TransformParam: :class:`Tencentcloud::Ckafka.v20190819.models.TransformParam`
        # @param PrivateLinkParam: 实例连接参数【已废弃】
        # @type PrivateLinkParam: :class:`Tencentcloud::Ckafka.v20190819.models.PrivateLinkParam`
        # @param SchemaId: 选择所要绑定的SchemaId
        # @type SchemaId: String
        # @param TransformsParam: 数据处理规则
        # @type TransformsParam: :class:`Tencentcloud::Ckafka.v20190819.models.TransformsParam`
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param Tags: 标签列表
        # @type Tags: Array

        attr_accessor :TaskName, :TaskType, :SourceResource, :TargetResource, :TransformParam, :PrivateLinkParam, :SchemaId, :TransformsParam, :TaskId, :Tags

        def initialize(taskname=nil, tasktype=nil, sourceresource=nil, targetresource=nil, transformparam=nil, privatelinkparam=nil, schemaid=nil, transformsparam=nil, taskid=nil, tags=nil)
          @TaskName = taskname
          @TaskType = tasktype
          @SourceResource = sourceresource
          @TargetResource = targetresource
          @TransformParam = transformparam
          @PrivateLinkParam = privatelinkparam
          @SchemaId = schemaid
          @TransformsParam = transformsparam
          @TaskId = taskid
          @Tags = tags
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @TaskType = params['TaskType']
          unless params['SourceResource'].nil?
            @SourceResource = DatahubResource.new
            @SourceResource.deserialize(params['SourceResource'])
          end
          unless params['TargetResource'].nil?
            @TargetResource = DatahubResource.new
            @TargetResource.deserialize(params['TargetResource'])
          end
          unless params['TransformParam'].nil?
            @TransformParam = TransformParam.new
            @TransformParam.deserialize(params['TransformParam'])
          end
          unless params['PrivateLinkParam'].nil?
            @PrivateLinkParam = PrivateLinkParam.new
            @PrivateLinkParam.deserialize(params['PrivateLinkParam'])
          end
          @SchemaId = params['SchemaId']
          unless params['TransformsParam'].nil?
            @TransformsParam = TransformsParam.new
            @TransformsParam.deserialize(params['TransformsParam'])
          end
          @TaskId = params['TaskId']
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

      # 创建数据转储返回值
      class CreateDatahubTaskRes < TencentCloud::Common::AbstractModel
        # @param TaskId: 转储任务id
        # @type TaskId: String
        # @param DatahubId: 数据转储Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatahubId: String

        attr_accessor :TaskId, :DatahubId

        def initialize(taskid=nil, datahubid=nil)
          @TaskId = taskid
          @DatahubId = datahubid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @DatahubId = params['DatahubId']
        end
      end

      # CreateDatahubTask返回参数结构体
      class CreateDatahubTaskResponse < TencentCloud::Common::AbstractModel
        # @param Result: 任务id
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.CreateDatahubTaskRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CreateDatahubTaskRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateDatahubTopic请求参数结构体
      class CreateDatahubTopicRequest < TencentCloud::Common::AbstractModel
        # @param Name: 名称，是一个不超过 128 个字符的字符串，必须以“AppId-”为首字符，剩余部分可以包含字母、数字和横划线(-)
        # @type Name: String
        # @param PartitionNum: Partition个数，大于0
        # @type PartitionNum: Integer
        # @param RetentionMs: 消息保留时间，单位ms，当前最小值为60000ms
        # @type RetentionMs: Integer
        # @param Note: 主题备注，是一个不超过 64 个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)
        # @type Note: String
        # @param Tags: 标签列表
        # @type Tags: Array

        attr_accessor :Name, :PartitionNum, :RetentionMs, :Note, :Tags

        def initialize(name=nil, partitionnum=nil, retentionms=nil, note=nil, tags=nil)
          @Name = name
          @PartitionNum = partitionnum
          @RetentionMs = retentionms
          @Note = note
          @Tags = tags
        end

        def deserialize(params)
          @Name = params['Name']
          @PartitionNum = params['PartitionNum']
          @RetentionMs = params['RetentionMs']
          @Note = params['Note']
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

      # CreateDatahubTopic返回参数结构体
      class CreateDatahubTopicResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回创建结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.DatahubTopicResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DatahubTopicResp.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 创建后付费接口返回的 Data 数据结构
      class CreateInstancePostData < TencentCloud::Common::AbstractModel
        # @param FlowId: CreateInstancePre返回固定为0，不能作为CheckTaskStatus的查询条件。只是为了保证和后台数据结构对齐。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowId: Integer
        # @param DealNames: 订单号列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealNames: Array
        # @param InstanceId: 实例Id，当购买多个实例时，默认返回购买的第一个实例 id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param DealNameInstanceIdMapping: 订单和购买实例对应映射列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealNameInstanceIdMapping: Array

        attr_accessor :FlowId, :DealNames, :InstanceId, :DealNameInstanceIdMapping

        def initialize(flowid=nil, dealnames=nil, instanceid=nil, dealnameinstanceidmapping=nil)
          @FlowId = flowid
          @DealNames = dealnames
          @InstanceId = instanceid
          @DealNameInstanceIdMapping = dealnameinstanceidmapping
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @DealNames = params['DealNames']
          @InstanceId = params['InstanceId']
          unless params['DealNameInstanceIdMapping'].nil?
            @DealNameInstanceIdMapping = []
            params['DealNameInstanceIdMapping'].each do |i|
              dealinstancedto_tmp = DealInstanceDTO.new
              dealinstancedto_tmp.deserialize(i)
              @DealNameInstanceIdMapping << dealinstancedto_tmp
            end
          end
        end
      end

      # CreateInstancePost请求参数结构体
      class CreateInstancePostRequest < TencentCloud::Common::AbstractModel
        # @param InstanceName: 实例名称，是一个不超过 64 个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)
        # @type InstanceName: String
        # @param VpcId: 创建的实例默认接入点所在的 vpc 对应 vpcId。目前不支持创建基础网络实例，因此该参数必填
        # @type VpcId: String
        # @param SubnetId: 子网id。创建实例默认接入点所在的子网对应的子网 id
        # @type SubnetId: String
        # @param BandWidth: 实例内网峰值带宽。单位 MB/s。标准版需传入当前实例规格所对应的峰值带宽。注意如果创建的实例为专业版实例，峰值带宽，分区数等参数配置需要满足专业版的计费规格。
        # @type BandWidth: Integer
        # @param InstanceType: 国际站标准版实例规格。目前只有国际站标准版使用当前字段区分规格，国内站标准版使用峰值带宽区分规格。除了国际站标准版外的所有实例填写 1 即可。国际站标准版实例：入门型(general)]填写1；[标准型(standard)]填写2；[进阶型(advanced)]填写3；[容量型(capacity)]填写4；[高阶型1(specialized-1)]填写5；[高阶型2(specialized-2)]填写6；[高阶型3(specialized-3)]填写7；[高阶型4(specialized-4)]填写8。
        # @type InstanceType: Integer
        # @param MsgRetentionTime: 实例日志的默认最长保留时间，单位分钟。不传入该参数时默认为 1440 分钟（1天），最大30天。当 topic 显式设置消息保留时间时，以 topic 保留时间为准
        # @type MsgRetentionTime: Integer
        # @param ClusterId: 创建实例时可以选择集群Id, 该入参表示集群Id。不指定实例所在集群则不传入该参数
        # @type ClusterId: Integer
        # @param KafkaVersion: 实例版本。目前支持 "0.10.2","1.1.1","2.4.1","2.4.2","2.8.1"。"2.4.1" 与 "2.4.2" 属于同一个版本，传任意一个均可。
        # @type KafkaVersion: String
        # @param SpecificationsType: 实例类型。"standard"：标准版，"profession"：专业版
        # @type SpecificationsType: String
        # @param DiskType: 专业版实例磁盘类型，标准版实例不需要填写。"CLOUD_SSD"：SSD云硬盘；"CLOUD_BASIC"：高性能云硬盘。不传默认值为 "CLOUD_BASIC"
        # @type DiskType: String
        # @param DiskSize: 实例硬盘大小，需要满足当前实例的计费规格
        # @type DiskSize: Integer
        # @param Partition: 实例最大分区数量，需要满足当前实例的计费规格
        # @type Partition: Integer
        # @param TopicNum: 实例最大 topic 数量，需要满足当前实例的计费规格
        # @type TopicNum: Integer
        # @param ZoneId: 实例所在的可用区。当创建多可用区实例时，该参数为创建的默认接入点所在子网的可用区 id
        # @type ZoneId: Integer
        # @param MultiZoneFlag: 当前实例是否为多可用区实例。
        # @type MultiZoneFlag: Boolean
        # @param ZoneIds: 当实例为多可用区实例时，多可用区 id 列表。注意参数 ZoneId 对应的多可用区需要包含在该参数数组中
        # @type ZoneIds: Array
        # @param InstanceNum: 购买实例数量。非必填，默认值为 1。当传入该参数时，会创建多个 instanceName 加后缀区分的实例
        # @type InstanceNum: Integer
        # @param PublicNetworkMonthly: 公网带宽大小，单位 Mbps。默认是没有加上免费 3Mbps 带宽。例如总共需要 3Mbps 公网带宽，此处传 0；总共需要 6Mbps 公网带宽，此处传 3。需要保证传入参数为 3 的整数倍
        # @type PublicNetworkMonthly: Integer
        # @param Tags: 标签
        # @type Tags: Array

        attr_accessor :InstanceName, :VpcId, :SubnetId, :BandWidth, :InstanceType, :MsgRetentionTime, :ClusterId, :KafkaVersion, :SpecificationsType, :DiskType, :DiskSize, :Partition, :TopicNum, :ZoneId, :MultiZoneFlag, :ZoneIds, :InstanceNum, :PublicNetworkMonthly, :Tags

        def initialize(instancename=nil, vpcid=nil, subnetid=nil, bandwidth=nil, instancetype=nil, msgretentiontime=nil, clusterid=nil, kafkaversion=nil, specificationstype=nil, disktype=nil, disksize=nil, partition=nil, topicnum=nil, zoneid=nil, multizoneflag=nil, zoneids=nil, instancenum=nil, publicnetworkmonthly=nil, tags=nil)
          @InstanceName = instancename
          @VpcId = vpcid
          @SubnetId = subnetid
          @BandWidth = bandwidth
          @InstanceType = instancetype
          @MsgRetentionTime = msgretentiontime
          @ClusterId = clusterid
          @KafkaVersion = kafkaversion
          @SpecificationsType = specificationstype
          @DiskType = disktype
          @DiskSize = disksize
          @Partition = partition
          @TopicNum = topicnum
          @ZoneId = zoneid
          @MultiZoneFlag = multizoneflag
          @ZoneIds = zoneids
          @InstanceNum = instancenum
          @PublicNetworkMonthly = publicnetworkmonthly
          @Tags = tags
        end

        def deserialize(params)
          @InstanceName = params['InstanceName']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @BandWidth = params['BandWidth']
          @InstanceType = params['InstanceType']
          @MsgRetentionTime = params['MsgRetentionTime']
          @ClusterId = params['ClusterId']
          @KafkaVersion = params['KafkaVersion']
          @SpecificationsType = params['SpecificationsType']
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @Partition = params['Partition']
          @TopicNum = params['TopicNum']
          @ZoneId = params['ZoneId']
          @MultiZoneFlag = params['MultiZoneFlag']
          @ZoneIds = params['ZoneIds']
          @InstanceNum = params['InstanceNum']
          @PublicNetworkMonthly = params['PublicNetworkMonthly']
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

      # 后付费实例相关接口返回结构
      class CreateInstancePostResp < TencentCloud::Common::AbstractModel
        # @param ReturnCode: 返回的code，0为正常，非0为错误
        # @type ReturnCode: String
        # @param ReturnMessage: 接口返回消息，当接口报错时提示错误信息
        # @type ReturnMessage: String
        # @param Data: 返回的Data数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Ckafka.v20190819.models.CreateInstancePostData`

        attr_accessor :ReturnCode, :ReturnMessage, :Data

        def initialize(returncode=nil, returnmessage=nil, data=nil)
          @ReturnCode = returncode
          @ReturnMessage = returnmessage
          @Data = data
        end

        def deserialize(params)
          @ReturnCode = params['ReturnCode']
          @ReturnMessage = params['ReturnMessage']
          unless params['Data'].nil?
            @Data = CreateInstancePostData.new
            @Data.deserialize(params['Data'])
          end
        end
      end

      # CreateInstancePost返回参数结构体
      class CreateInstancePostResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 创建预付费接口返回的Data
      class CreateInstancePreData < TencentCloud::Common::AbstractModel
        # @param FlowId: CreateInstancePre返回固定为0，不能作为CheckTaskStatus的查询条件。只是为了保证和后台数据结构对齐。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowId: Integer
        # @param DealNames: 订单号列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealNames: Array
        # @param InstanceId: 实例Id，当购买多个实例时，默认返回购买的第一个实例 id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param DealNameInstanceIdMapping: 订单和购买实例对应映射列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealNameInstanceIdMapping: Array

        attr_accessor :FlowId, :DealNames, :InstanceId, :DealNameInstanceIdMapping

        def initialize(flowid=nil, dealnames=nil, instanceid=nil, dealnameinstanceidmapping=nil)
          @FlowId = flowid
          @DealNames = dealnames
          @InstanceId = instanceid
          @DealNameInstanceIdMapping = dealnameinstanceidmapping
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @DealNames = params['DealNames']
          @InstanceId = params['InstanceId']
          unless params['DealNameInstanceIdMapping'].nil?
            @DealNameInstanceIdMapping = []
            params['DealNameInstanceIdMapping'].each do |i|
              dealinstancedto_tmp = DealInstanceDTO.new
              dealinstancedto_tmp.deserialize(i)
              @DealNameInstanceIdMapping << dealinstancedto_tmp
            end
          end
        end
      end

      # CreateInstancePre请求参数结构体
      class CreateInstancePreRequest < TencentCloud::Common::AbstractModel
        # @param InstanceName: 实例名称，是一个不超过 64 个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)
        # @type InstanceName: String
        # @param ZoneId: 可用区。当购买多可用区实例时，当前参数为主可用区。需要保证传入的参数和 SubnetId 所在子网属于同一个可用区
        # @type ZoneId: Integer
        # @param Period: 预付费购买时长，例如 "1m",就是一个月
        # @type Period: String
        # @param InstanceType: 国际站标准版实例规格。目前只有国际站标准版使用当前字段区分规格，国内站标准版使用峰值带宽区分规格。除了国际站标准版外的所有实例填写 1 即可。国际站标准版实例：入门型(general)]填写1；[标准型(standard)]填写2；[进阶型(advanced)]填写3；[容量型(capacity)]填写4；[高阶型1(specialized-1)]填写5；[高阶型2(specialized-2)]填写6；[高阶型3(specialized-3)]填写7；[高阶型4(specialized-4)]填写8。
        # @type InstanceType: Integer
        # @param VpcId: vpcId，必填
        # @type VpcId: String
        # @param SubnetId: 子网id，必填
        # @type SubnetId: String
        # @param MsgRetentionTime: 可选。实例日志的最长保留时间，单位分钟，默认为10080（7天），最大30天，不填默认0，代表不开启日志保留时间回收策略
        # @type MsgRetentionTime: Integer
        # @param ClusterId: 创建实例时可以选择集群Id, 该入参表示集群Id
        # @type ClusterId: Integer
        # @param RenewFlag: 预付费自动续费标记，0表示默认状态(用户未设置，即初始状态)， 1表示自动续费，2表示明确不自动续费(用户设置)
        # @type RenewFlag: Integer
        # @param KafkaVersion: CKafka版本号[0.10.2、1.1.1、2.4.1、2.4.2、2.8.1、3.2.3], 默认是1.1.1。2.4.1 与 2.4.2 属于同一个版本，传任意一个均可。
        # @type KafkaVersion: String
        # @param SpecificationsType: 实例类型: [标准版实例]填写 "standard" (默认), [专业版实例]填写 "profession",[高级版实例]填写"premium"
        # @type SpecificationsType: String
        # @param DiskSize: 磁盘大小，如果跟控制台规格配比不相符，则无法创建成功
        # @type DiskSize: Integer
        # @param BandWidth: 带宽，如果跟控制台规格配比不相符，则无法创建成功
        # @type BandWidth: Integer
        # @param Partition: 分区大小，如果跟控制台规格配比不相符，则无法创建成功
        # @type Partition: Integer
        # @param Tags: 标签
        # @type Tags: Array
        # @param DiskType: 专业版/高级版实例磁盘类型，标准版实例不需要填写。"CLOUD_SSD"：SSD云硬盘；"CLOUD_BASIC"：高性能云硬盘。不传默认为 "CLOUD_BASIC"
        # @type DiskType: String
        # @param MultiZoneFlag: 是否创建跨可用区实例，当前参数为 true 时，zoneIds必填
        # @type MultiZoneFlag: Boolean
        # @param ZoneIds: 可用区列表，购买多可用区实例时为必填项
        # @type ZoneIds: Array
        # @param PublicNetworkMonthly: 公网带宽大小，单位 Mbps。默认是没有加上免费 3Mbps 带宽。例如总共需要 3Mbps 公网带宽，此处传 0；总共需要 6Mbps 公网带宽，此处传 3。默认值为 0。需要保证传入参数为 3 的整数倍
        # @type PublicNetworkMonthly: Integer
        # @param InstanceNum: 购买实例数量。非必填，默认值为 1。当传入该参数时，会创建多个 instanceName 加后缀区分的实例
        # @type InstanceNum: Integer
        # @param AutoVoucher: 是否自动选择代金券:1-是;0否。默认为0
        # @type AutoVoucher: Integer

        attr_accessor :InstanceName, :ZoneId, :Period, :InstanceType, :VpcId, :SubnetId, :MsgRetentionTime, :ClusterId, :RenewFlag, :KafkaVersion, :SpecificationsType, :DiskSize, :BandWidth, :Partition, :Tags, :DiskType, :MultiZoneFlag, :ZoneIds, :PublicNetworkMonthly, :InstanceNum, :AutoVoucher

        def initialize(instancename=nil, zoneid=nil, period=nil, instancetype=nil, vpcid=nil, subnetid=nil, msgretentiontime=nil, clusterid=nil, renewflag=nil, kafkaversion=nil, specificationstype=nil, disksize=nil, bandwidth=nil, partition=nil, tags=nil, disktype=nil, multizoneflag=nil, zoneids=nil, publicnetworkmonthly=nil, instancenum=nil, autovoucher=nil)
          @InstanceName = instancename
          @ZoneId = zoneid
          @Period = period
          @InstanceType = instancetype
          @VpcId = vpcid
          @SubnetId = subnetid
          @MsgRetentionTime = msgretentiontime
          @ClusterId = clusterid
          @RenewFlag = renewflag
          @KafkaVersion = kafkaversion
          @SpecificationsType = specificationstype
          @DiskSize = disksize
          @BandWidth = bandwidth
          @Partition = partition
          @Tags = tags
          @DiskType = disktype
          @MultiZoneFlag = multizoneflag
          @ZoneIds = zoneids
          @PublicNetworkMonthly = publicnetworkmonthly
          @InstanceNum = instancenum
          @AutoVoucher = autovoucher
        end

        def deserialize(params)
          @InstanceName = params['InstanceName']
          @ZoneId = params['ZoneId']
          @Period = params['Period']
          @InstanceType = params['InstanceType']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @MsgRetentionTime = params['MsgRetentionTime']
          @ClusterId = params['ClusterId']
          @RenewFlag = params['RenewFlag']
          @KafkaVersion = params['KafkaVersion']
          @SpecificationsType = params['SpecificationsType']
          @DiskSize = params['DiskSize']
          @BandWidth = params['BandWidth']
          @Partition = params['Partition']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @DiskType = params['DiskType']
          @MultiZoneFlag = params['MultiZoneFlag']
          @ZoneIds = params['ZoneIds']
          @PublicNetworkMonthly = params['PublicNetworkMonthly']
          @InstanceNum = params['InstanceNum']
          @AutoVoucher = params['AutoVoucher']
        end
      end

      # 预付费实例相关接口返回结构
      class CreateInstancePreResp < TencentCloud::Common::AbstractModel
        # @param ReturnCode: 返回的code，0为正常，非0为错误
        # @type ReturnCode: String
        # @param ReturnMessage: 成功消息
        # @type ReturnMessage: String
        # @param Data: 操作型返回的Data数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Ckafka.v20190819.models.CreateInstancePreData`
        # @param DeleteRouteTimestamp: 删除时间。目前该参数字段已废弃，将会在未来被删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeleteRouteTimestamp: String

        attr_accessor :ReturnCode, :ReturnMessage, :Data, :DeleteRouteTimestamp
        extend Gem::Deprecate
        deprecate :DeleteRouteTimestamp, :none, 2024, 9
        deprecate :DeleteRouteTimestamp=, :none, 2024, 9

        def initialize(returncode=nil, returnmessage=nil, data=nil, deleteroutetimestamp=nil)
          @ReturnCode = returncode
          @ReturnMessage = returnmessage
          @Data = data
          @DeleteRouteTimestamp = deleteroutetimestamp
        end

        def deserialize(params)
          @ReturnCode = params['ReturnCode']
          @ReturnMessage = params['ReturnMessage']
          unless params['Data'].nil?
            @Data = CreateInstancePreData.new
            @Data.deserialize(params['Data'])
          end
          @DeleteRouteTimestamp = params['DeleteRouteTimestamp']
        end
      end

      # CreateInstancePre返回参数结构体
      class CreateInstancePreResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.CreateInstancePreResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CreateInstancePreResp.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreatePartition请求参数结构体
      class CreatePartitionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param TopicName: 主题名称
        # @type TopicName: String
        # @param PartitionNum: 主题分区个数
        # @type PartitionNum: Integer

        attr_accessor :InstanceId, :TopicName, :PartitionNum

        def initialize(instanceid=nil, topicname=nil, partitionnum=nil)
          @InstanceId = instanceid
          @TopicName = topicname
          @PartitionNum = partitionnum
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TopicName = params['TopicName']
          @PartitionNum = params['PartitionNum']
        end
      end

      # CreatePartition返回参数结构体
      class CreatePartitionResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的结果集
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreatePostPaidInstance请求参数结构体
      class CreatePostPaidInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceName: 实例名称，是一个不超过 64 个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)
        # @type InstanceName: String
        # @param VpcId: 创建的实例默认接入点所在的 vpc 对应 vpcId。目前不支持创建基础网络实例，因此该参数必填
        # @type VpcId: String
        # @param SubnetId: 子网id。创建实例默认接入点所在的子网对应的子网 id
        # @type SubnetId: String
        # @param InstanceType: 国际站标准版实例规格。目前只有国际站标准版使用当前字段区分规格，国内站标准版使用峰值带宽区分规格。除了国际站标准版外的所有实例填写 1 即可。国际站标准版实例：入门型(general)]填写1；[标准型(standard)]填写2；[进阶型(advanced)]填写3；[容量型(capacity)]填写4；[高阶型1(specialized-1)]填写5；[高阶型2(specialized-2)]填写6；[高阶型3(specialized-3)]填写7；[高阶型4(specialized-4)]填写8。
        # @type InstanceType: Integer
        # @param MsgRetentionTime: 实例日志的默认最长保留时间，单位分钟。不传入该参数时默认为 1440 分钟（1天），最大30天。当 topic 显式设置消息保留时间时，以 topic 保留时间为准
        # @type MsgRetentionTime: Integer
        # @param ClusterId: 创建实例时可以选择集群Id, 该入参表示集群Id。不指定实例所在集群则不传入该参数
        # @type ClusterId: Integer
        # @param KafkaVersion: 实例版本。目前支持 "0.10.2","1.1.1","2.4.1","2.4.2","2.8.1"。"2.4.1" 与 "2.4.2" 属于同一个版本，传任意一个均可。
        # @type KafkaVersion: String
        # @param SpecificationsType: 实例类型。"standard"：标准版，"profession"：专业版。  (标准版仅国际站支持，国内站目前支持专业版)
        # @type SpecificationsType: String
        # @param DiskType: 专业版实例磁盘类型，标准版实例不需要填写。"CLOUD_SSD"：SSD云硬盘；"CLOUD_BASIC"：高性能云硬盘。不传默认值为 "CLOUD_BASIC"
        # @type DiskType: String
        # @param BandWidth: 实例内网峰值带宽。单位 MB/s。标准版需传入当前实例规格所对应的峰值带宽。注意如果创建的实例为专业版实例，峰值带宽，分区数等参数配置需要满足专业版的计费规格。
        # @type BandWidth: Integer
        # @param DiskSize: 实例硬盘大小，需要满足当前实例的计费规格
        # @type DiskSize: Integer
        # @param Partition: 实例最大分区数量，需要满足当前实例的计费规格
        # @type Partition: Integer
        # @param TopicNum: 实例最大 topic 数量，需要满足当前实例的计费规格
        # @type TopicNum: Integer
        # @param ZoneId: 实例所在的可用区。当创建多可用区实例时，该参数为创建的默认接入点所在子网的可用区 id
        # @type ZoneId: Integer
        # @param MultiZoneFlag: 当前实例是否为多可用区实例。
        # @type MultiZoneFlag: Boolean
        # @param ZoneIds: 当实例为多可用区实例时，多可用区 id 列表。注意参数 ZoneId 对应的多可用区需要包含在该参数数组中
        # @type ZoneIds: Array
        # @param InstanceNum: 购买实例数量。非必填，默认值为 1。当传入该参数时，会创建多个 instanceName 加后缀区分的实例
        # @type InstanceNum: Integer
        # @param PublicNetworkMonthly: 公网带宽大小，单位 Mbps。默认是没有加上免费 3Mbps 带宽。例如总共需要 3Mbps 公网带宽，此处传 0；总共需要 6Mbps 公网带宽，此处传 3。需要保证传入参数为 3 的整数倍
        # @type PublicNetworkMonthly: Integer
        # @param Tags: 标签
        # @type Tags: Array

        attr_accessor :InstanceName, :VpcId, :SubnetId, :InstanceType, :MsgRetentionTime, :ClusterId, :KafkaVersion, :SpecificationsType, :DiskType, :BandWidth, :DiskSize, :Partition, :TopicNum, :ZoneId, :MultiZoneFlag, :ZoneIds, :InstanceNum, :PublicNetworkMonthly, :Tags

        def initialize(instancename=nil, vpcid=nil, subnetid=nil, instancetype=nil, msgretentiontime=nil, clusterid=nil, kafkaversion=nil, specificationstype=nil, disktype=nil, bandwidth=nil, disksize=nil, partition=nil, topicnum=nil, zoneid=nil, multizoneflag=nil, zoneids=nil, instancenum=nil, publicnetworkmonthly=nil, tags=nil)
          @InstanceName = instancename
          @VpcId = vpcid
          @SubnetId = subnetid
          @InstanceType = instancetype
          @MsgRetentionTime = msgretentiontime
          @ClusterId = clusterid
          @KafkaVersion = kafkaversion
          @SpecificationsType = specificationstype
          @DiskType = disktype
          @BandWidth = bandwidth
          @DiskSize = disksize
          @Partition = partition
          @TopicNum = topicnum
          @ZoneId = zoneid
          @MultiZoneFlag = multizoneflag
          @ZoneIds = zoneids
          @InstanceNum = instancenum
          @PublicNetworkMonthly = publicnetworkmonthly
          @Tags = tags
        end

        def deserialize(params)
          @InstanceName = params['InstanceName']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @InstanceType = params['InstanceType']
          @MsgRetentionTime = params['MsgRetentionTime']
          @ClusterId = params['ClusterId']
          @KafkaVersion = params['KafkaVersion']
          @SpecificationsType = params['SpecificationsType']
          @DiskType = params['DiskType']
          @BandWidth = params['BandWidth']
          @DiskSize = params['DiskSize']
          @Partition = params['Partition']
          @TopicNum = params['TopicNum']
          @ZoneId = params['ZoneId']
          @MultiZoneFlag = params['MultiZoneFlag']
          @ZoneIds = params['ZoneIds']
          @InstanceNum = params['InstanceNum']
          @PublicNetworkMonthly = params['PublicNetworkMonthly']
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

      # CreatePostPaidInstance返回参数结构体
      class CreatePostPaidInstanceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.CreateInstancePostResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CreateInstancePostResp.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreatePrometheus请求参数结构体
      class CreatePrometheusRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: ckafka实例id
        # @type InstanceId: String
        # @param VpcId: vpc地址
        # @type VpcId: String
        # @param SubnetId: 子网地址
        # @type SubnetId: String

        attr_accessor :InstanceId, :VpcId, :SubnetId

        def initialize(instanceid=nil, vpcid=nil, subnetid=nil)
          @InstanceId = instanceid
          @VpcId = vpcid
          @SubnetId = subnetid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
        end
      end

      # CreatePrometheus返回参数结构体
      class CreatePrometheusResponse < TencentCloud::Common::AbstractModel
        # @param Result: 打通普罗米修斯
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.PrometheusResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = PrometheusResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateRoute请求参数结构体
      class CreateRouteRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例唯一id
        # @type InstanceId: String
        # @param VipType: 路由网络类型(3:vpc路由;7:内部支撑路由)
        # @type VipType: Integer
        # @param VpcId: vpc网络Id
        # @type VpcId: String
        # @param SubnetId: vpc子网id
        # @type SubnetId: String
        # @param AccessType: 访问类型：0-plaintext；1-sasl_plaintext；2-ssl；3-sasl_ssl
        # @type AccessType: Integer
        # @param AuthFlag: 是否需要权限管理
        # @type AuthFlag: Integer
        # @param CallerAppid: 调用方appId
        # @type CallerAppid: Integer
        # @param PublicNetwork: 公网带宽
        # @type PublicNetwork: Integer
        # @param Ip: vip地址
        # @type Ip: String

        attr_accessor :InstanceId, :VipType, :VpcId, :SubnetId, :AccessType, :AuthFlag, :CallerAppid, :PublicNetwork, :Ip

        def initialize(instanceid=nil, viptype=nil, vpcid=nil, subnetid=nil, accesstype=nil, authflag=nil, callerappid=nil, publicnetwork=nil, ip=nil)
          @InstanceId = instanceid
          @VipType = viptype
          @VpcId = vpcid
          @SubnetId = subnetid
          @AccessType = accesstype
          @AuthFlag = authflag
          @CallerAppid = callerappid
          @PublicNetwork = publicnetwork
          @Ip = ip
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @VipType = params['VipType']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @AccessType = params['AccessType']
          @AuthFlag = params['AuthFlag']
          @CallerAppid = params['CallerAppid']
          @PublicNetwork = params['PublicNetwork']
          @Ip = params['Ip']
        end
      end

      # CreateRoute返回参数结构体
      class CreateRouteResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateToken请求参数结构体
      class CreateTokenRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param User: 用户名
        # @type User: String

        attr_accessor :InstanceId, :User

        def initialize(instanceid=nil, user=nil)
          @InstanceId = instanceid
          @User = user
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @User = params['User']
        end
      end

      # CreateToken返回参数结构体
      class CreateTokenResponse < TencentCloud::Common::AbstractModel
        # @param Result: token串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateTopicIpWhiteList请求参数结构体
      class CreateTopicIpWhiteListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param TopicName: 主题名称
        # @type TopicName: String
        # @param IpWhiteList: ip白名单列表
        # @type IpWhiteList: Array

        attr_accessor :InstanceId, :TopicName, :IpWhiteList

        def initialize(instanceid=nil, topicname=nil, ipwhitelist=nil)
          @InstanceId = instanceid
          @TopicName = topicname
          @IpWhiteList = ipwhitelist
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TopicName = params['TopicName']
          @IpWhiteList = params['IpWhiteList']
        end
      end

      # CreateTopicIpWhiteList返回参数结构体
      class CreateTopicIpWhiteListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 删除主题IP白名单结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateTopic请求参数结构体
      class CreateTopicRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param TopicName: 主题名称，是一个不超过 128 个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)
        # @type TopicName: String
        # @param PartitionNum: Partition个数，大于0
        # @type PartitionNum: Integer
        # @param ReplicaNum: 副本个数，不能多于 broker 数，最大为3
        # @type ReplicaNum: Integer
        # @param EnableWhiteList: ip白名单开关, 1:打开  0:关闭，默认不打开
        # @type EnableWhiteList: Integer
        # @param IpWhiteList: Ip白名单列表，配额限制，enableWhileList=1时必选
        # @type IpWhiteList: Array
        # @param CleanUpPolicy: 清理日志策略，日志清理模式，默认为"delete"。"delete"：日志按保存时间删除，"compact"：日志按 key 压缩，"compact, delete"：日志按 key 压缩且会按保存时间删除。
        # @type CleanUpPolicy: String
        # @param Note: 主题备注，是一个不超过 64 个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)
        # @type Note: String
        # @param MinInsyncReplicas: 默认为1
        # @type MinInsyncReplicas: Integer
        # @param UncleanLeaderElectionEnable: 是否允许未同步的副本选为leader，false:不允许，true:允许，默认不允许
        # @type UncleanLeaderElectionEnable: Integer
        # @param RetentionMs: 可选参数。消息保留时间，单位ms，当前最小值为60000ms
        # @type RetentionMs: Integer
        # @param SegmentMs: Segment分片滚动的时长，单位ms，当前最小为3600000ms
        # @type SegmentMs: Integer
        # @param MaxMessageBytes: 主题消息最大值，单位为 Byte，最小值1024Byte(即1KB)，最大值为8388608Byte（即8MB）。
        # @type MaxMessageBytes: Integer
        # @param EnableAclRule: 预设ACL规则, 1:打开  0:关闭，默认不打开
        # @type EnableAclRule: Integer
        # @param AclRuleName: 预设ACL规则的名称
        # @type AclRuleName: String
        # @param RetentionBytes: 可选, 保留文件大小. 默认为-1,单位bytes, 当前最小值为1048576B
        # @type RetentionBytes: Integer
        # @param Tags: 标签列表
        # @type Tags: Array

        attr_accessor :InstanceId, :TopicName, :PartitionNum, :ReplicaNum, :EnableWhiteList, :IpWhiteList, :CleanUpPolicy, :Note, :MinInsyncReplicas, :UncleanLeaderElectionEnable, :RetentionMs, :SegmentMs, :MaxMessageBytes, :EnableAclRule, :AclRuleName, :RetentionBytes, :Tags

        def initialize(instanceid=nil, topicname=nil, partitionnum=nil, replicanum=nil, enablewhitelist=nil, ipwhitelist=nil, cleanuppolicy=nil, note=nil, mininsyncreplicas=nil, uncleanleaderelectionenable=nil, retentionms=nil, segmentms=nil, maxmessagebytes=nil, enableaclrule=nil, aclrulename=nil, retentionbytes=nil, tags=nil)
          @InstanceId = instanceid
          @TopicName = topicname
          @PartitionNum = partitionnum
          @ReplicaNum = replicanum
          @EnableWhiteList = enablewhitelist
          @IpWhiteList = ipwhitelist
          @CleanUpPolicy = cleanuppolicy
          @Note = note
          @MinInsyncReplicas = mininsyncreplicas
          @UncleanLeaderElectionEnable = uncleanleaderelectionenable
          @RetentionMs = retentionms
          @SegmentMs = segmentms
          @MaxMessageBytes = maxmessagebytes
          @EnableAclRule = enableaclrule
          @AclRuleName = aclrulename
          @RetentionBytes = retentionbytes
          @Tags = tags
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TopicName = params['TopicName']
          @PartitionNum = params['PartitionNum']
          @ReplicaNum = params['ReplicaNum']
          @EnableWhiteList = params['EnableWhiteList']
          @IpWhiteList = params['IpWhiteList']
          @CleanUpPolicy = params['CleanUpPolicy']
          @Note = params['Note']
          @MinInsyncReplicas = params['MinInsyncReplicas']
          @UncleanLeaderElectionEnable = params['UncleanLeaderElectionEnable']
          @RetentionMs = params['RetentionMs']
          @SegmentMs = params['SegmentMs']
          @MaxMessageBytes = params['MaxMessageBytes']
          @EnableAclRule = params['EnableAclRule']
          @AclRuleName = params['AclRuleName']
          @RetentionBytes = params['RetentionBytes']
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

      # 创建主题返回
      class CreateTopicResp < TencentCloud::Common::AbstractModel
        # @param TopicId: 主题Id
        # @type TopicId: String

        attr_accessor :TopicId

        def initialize(topicid=nil)
          @TopicId = topicid
        end

        def deserialize(params)
          @TopicId = params['TopicId']
        end
      end

      # CreateTopic返回参数结构体
      class CreateTopicResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回创建结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.CreateTopicResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CreateTopicResp.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateUser请求参数结构体
      class CreateUserRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Name: 用户名称
        # @type Name: String
        # @param Password: 用户密码
        # @type Password: String

        attr_accessor :InstanceId, :Name, :Password

        def initialize(instanceid=nil, name=nil, password=nil)
          @InstanceId = instanceid
          @Name = name
          @Password = password
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @Password = params['Password']
        end
      end

      # CreateUser返回参数结构体
      class CreateUserResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # Ctsdb连接源参数
      class CtsdbConnectParam < TencentCloud::Common::AbstractModel
        # @param Port: Ctsdb的连接port
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param ServiceVip: Ctsdb连接源的实例vip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceVip: String
        # @param UniqVpcId: Ctsdb连接源的vpcId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param UserName: Ctsdb连接源的用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Password: Ctsdb连接源的密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param Resource: Ctsdb连接源的实例资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String

        attr_accessor :Port, :ServiceVip, :UniqVpcId, :UserName, :Password, :Resource

        def initialize(port=nil, servicevip=nil, uniqvpcid=nil, username=nil, password=nil, resource=nil)
          @Port = port
          @ServiceVip = servicevip
          @UniqVpcId = uniqvpcid
          @UserName = username
          @Password = password
          @Resource = resource
        end

        def deserialize(params)
          @Port = params['Port']
          @ServiceVip = params['ServiceVip']
          @UniqVpcId = params['UniqVpcId']
          @UserName = params['UserName']
          @Password = params['Password']
          @Resource = params['Resource']
        end
      end

      # Ctsdb连接源参数(更新)
      class CtsdbModifyConnectParam < TencentCloud::Common::AbstractModel
        # @param Port: Ctsdb的连接port
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param ServiceVip: Ctsdb连接源的实例vip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceVip: String
        # @param UniqVpcId: Ctsdb连接源的vpcId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param UserName: Ctsdb连接源的用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Password: Ctsdb连接源的密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param Resource: Ctsdb连接源的实例资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String

        attr_accessor :Port, :ServiceVip, :UniqVpcId, :UserName, :Password, :Resource

        def initialize(port=nil, servicevip=nil, uniqvpcid=nil, username=nil, password=nil, resource=nil)
          @Port = port
          @ServiceVip = servicevip
          @UniqVpcId = uniqvpcid
          @UserName = username
          @Password = password
          @Resource = resource
        end

        def deserialize(params)
          @Port = params['Port']
          @ServiceVip = params['ServiceVip']
          @UniqVpcId = params['UniqVpcId']
          @UserName = params['UserName']
          @Password = params['Password']
          @Resource = params['Resource']
        end
      end

      # Ctsdb类型入参
      class CtsdbParam < TencentCloud::Common::AbstractModel
        # @param Resource: 连接管理实例资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param CtsdbMetric: Ctsdb的metric
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CtsdbMetric: String

        attr_accessor :Resource, :CtsdbMetric

        def initialize(resource=nil, ctsdbmetric=nil)
          @Resource = resource
          @CtsdbMetric = ctsdbmetric
        end

        def deserialize(params)
          @Resource = params['Resource']
          @CtsdbMetric = params['CtsdbMetric']
        end
      end

      # Datahub资源配置
      class DatahubResource < TencentCloud::Common::AbstractModel
        # @param Type: 资源类型
        # @type Type: String
        # @param KafkaParam: ckafka配置，Type为KAFKA时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KafkaParam: :class:`Tencentcloud::Ckafka.v20190819.models.KafkaParam`
        # @param EventBusParam: EB配置，Type为EB时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventBusParam: :class:`Tencentcloud::Ckafka.v20190819.models.EventBusParam`
        # @param MongoDBParam: MongoDB配置，Type为MONGODB时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MongoDBParam: :class:`Tencentcloud::Ckafka.v20190819.models.MongoDBParam`
        # @param EsParam: Es配置，Type为ES时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EsParam: :class:`Tencentcloud::Ckafka.v20190819.models.EsParam`
        # @param TdwParam: Tdw配置，Type为TDW时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TdwParam: :class:`Tencentcloud::Ckafka.v20190819.models.TdwParam`
        # @param DtsParam: Dts配置，Type为DTS时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DtsParam: :class:`Tencentcloud::Ckafka.v20190819.models.DtsParam`
        # @param ClickHouseParam: ClickHouse配置，Type为CLICKHOUSE时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClickHouseParam: :class:`Tencentcloud::Ckafka.v20190819.models.ClickHouseParam`
        # @param ClsParam: Cls配置，Type为CLS时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClsParam: :class:`Tencentcloud::Ckafka.v20190819.models.ClsParam`
        # @param CosParam: Cos配置，Type为COS时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CosParam: :class:`Tencentcloud::Ckafka.v20190819.models.CosParam`
        # @param MySQLParam: MySQL配置，Type为MYSQL时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MySQLParam: :class:`Tencentcloud::Ckafka.v20190819.models.MySQLParam`
        # @param PostgreSQLParam: PostgreSQL配置，Type为POSTGRESQL或TDSQL_C_POSTGRESQL时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PostgreSQLParam: :class:`Tencentcloud::Ckafka.v20190819.models.PostgreSQLParam`
        # @param TopicParam: Topic配置，Type为Topic时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicParam: :class:`Tencentcloud::Ckafka.v20190819.models.TopicParam`
        # @param MariaDBParam: MariaDB配置，Type为MARIADB时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MariaDBParam: :class:`Tencentcloud::Ckafka.v20190819.models.MariaDBParam`
        # @param SQLServerParam: SQLServer配置，Type为SQLSERVER时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SQLServerParam: :class:`Tencentcloud::Ckafka.v20190819.models.SQLServerParam`
        # @param CtsdbParam: Ctsdb配置，Type为CTSDB时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CtsdbParam: :class:`Tencentcloud::Ckafka.v20190819.models.CtsdbParam`
        # @param ScfParam: Scf配置，Type为SCF时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScfParam: :class:`Tencentcloud::Ckafka.v20190819.models.ScfParam`
        # @param MqttParam: MQTT配置，Type为 MQTT 时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MqttParam: :class:`Tencentcloud::Ckafka.v20190819.models.MqttParam`

        attr_accessor :Type, :KafkaParam, :EventBusParam, :MongoDBParam, :EsParam, :TdwParam, :DtsParam, :ClickHouseParam, :ClsParam, :CosParam, :MySQLParam, :PostgreSQLParam, :TopicParam, :MariaDBParam, :SQLServerParam, :CtsdbParam, :ScfParam, :MqttParam

        def initialize(type=nil, kafkaparam=nil, eventbusparam=nil, mongodbparam=nil, esparam=nil, tdwparam=nil, dtsparam=nil, clickhouseparam=nil, clsparam=nil, cosparam=nil, mysqlparam=nil, postgresqlparam=nil, topicparam=nil, mariadbparam=nil, sqlserverparam=nil, ctsdbparam=nil, scfparam=nil, mqttparam=nil)
          @Type = type
          @KafkaParam = kafkaparam
          @EventBusParam = eventbusparam
          @MongoDBParam = mongodbparam
          @EsParam = esparam
          @TdwParam = tdwparam
          @DtsParam = dtsparam
          @ClickHouseParam = clickhouseparam
          @ClsParam = clsparam
          @CosParam = cosparam
          @MySQLParam = mysqlparam
          @PostgreSQLParam = postgresqlparam
          @TopicParam = topicparam
          @MariaDBParam = mariadbparam
          @SQLServerParam = sqlserverparam
          @CtsdbParam = ctsdbparam
          @ScfParam = scfparam
          @MqttParam = mqttparam
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['KafkaParam'].nil?
            @KafkaParam = KafkaParam.new
            @KafkaParam.deserialize(params['KafkaParam'])
          end
          unless params['EventBusParam'].nil?
            @EventBusParam = EventBusParam.new
            @EventBusParam.deserialize(params['EventBusParam'])
          end
          unless params['MongoDBParam'].nil?
            @MongoDBParam = MongoDBParam.new
            @MongoDBParam.deserialize(params['MongoDBParam'])
          end
          unless params['EsParam'].nil?
            @EsParam = EsParam.new
            @EsParam.deserialize(params['EsParam'])
          end
          unless params['TdwParam'].nil?
            @TdwParam = TdwParam.new
            @TdwParam.deserialize(params['TdwParam'])
          end
          unless params['DtsParam'].nil?
            @DtsParam = DtsParam.new
            @DtsParam.deserialize(params['DtsParam'])
          end
          unless params['ClickHouseParam'].nil?
            @ClickHouseParam = ClickHouseParam.new
            @ClickHouseParam.deserialize(params['ClickHouseParam'])
          end
          unless params['ClsParam'].nil?
            @ClsParam = ClsParam.new
            @ClsParam.deserialize(params['ClsParam'])
          end
          unless params['CosParam'].nil?
            @CosParam = CosParam.new
            @CosParam.deserialize(params['CosParam'])
          end
          unless params['MySQLParam'].nil?
            @MySQLParam = MySQLParam.new
            @MySQLParam.deserialize(params['MySQLParam'])
          end
          unless params['PostgreSQLParam'].nil?
            @PostgreSQLParam = PostgreSQLParam.new
            @PostgreSQLParam.deserialize(params['PostgreSQLParam'])
          end
          unless params['TopicParam'].nil?
            @TopicParam = TopicParam.new
            @TopicParam.deserialize(params['TopicParam'])
          end
          unless params['MariaDBParam'].nil?
            @MariaDBParam = MariaDBParam.new
            @MariaDBParam.deserialize(params['MariaDBParam'])
          end
          unless params['SQLServerParam'].nil?
            @SQLServerParam = SQLServerParam.new
            @SQLServerParam.deserialize(params['SQLServerParam'])
          end
          unless params['CtsdbParam'].nil?
            @CtsdbParam = CtsdbParam.new
            @CtsdbParam.deserialize(params['CtsdbParam'])
          end
          unless params['ScfParam'].nil?
            @ScfParam = ScfParam.new
            @ScfParam.deserialize(params['ScfParam'])
          end
          unless params['MqttParam'].nil?
            @MqttParam = MqttParam.new
            @MqttParam.deserialize(params['MqttParam'])
          end
        end
      end

      # Datahub请求的taskid
      class DatahubTaskIdRes < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # Datahub任务信息
      class DatahubTaskInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param TaskType: 任务类型，SOURCE数据接入，SINK数据流出
        # @type TaskType: String
        # @param Status: 状态，-1创建失败，0创建中，1运行中，2删除中，3已删除，4删除失败，5暂停中，6已暂停，7暂停失败，8恢复中，9恢复失败
        # @type Status: Integer
        # @param SourceResource: 数据源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceResource: :class:`Tencentcloud::Ckafka.v20190819.models.DatahubResource`
        # @param TargetResource: 数据目标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetResource: :class:`Tencentcloud::Ckafka.v20190819.models.DatahubResource`
        # @param CreateTime: 任务创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ErrorMessage: 异常信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param TaskProgress: 创建进度百分比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskProgress: Float
        # @param TaskCurrentStep: 任务当前处于的步骤
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskCurrentStep: String
        # @param DatahubId: Datahub转储Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatahubId: String
        # @param StepList: 步骤列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepList: Array

        attr_accessor :TaskId, :TaskName, :TaskType, :Status, :SourceResource, :TargetResource, :CreateTime, :ErrorMessage, :TaskProgress, :TaskCurrentStep, :DatahubId, :StepList

        def initialize(taskid=nil, taskname=nil, tasktype=nil, status=nil, sourceresource=nil, targetresource=nil, createtime=nil, errormessage=nil, taskprogress=nil, taskcurrentstep=nil, datahubid=nil, steplist=nil)
          @TaskId = taskid
          @TaskName = taskname
          @TaskType = tasktype
          @Status = status
          @SourceResource = sourceresource
          @TargetResource = targetresource
          @CreateTime = createtime
          @ErrorMessage = errormessage
          @TaskProgress = taskprogress
          @TaskCurrentStep = taskcurrentstep
          @DatahubId = datahubid
          @StepList = steplist
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @TaskType = params['TaskType']
          @Status = params['Status']
          unless params['SourceResource'].nil?
            @SourceResource = DatahubResource.new
            @SourceResource.deserialize(params['SourceResource'])
          end
          unless params['TargetResource'].nil?
            @TargetResource = DatahubResource.new
            @TargetResource.deserialize(params['TargetResource'])
          end
          @CreateTime = params['CreateTime']
          @ErrorMessage = params['ErrorMessage']
          @TaskProgress = params['TaskProgress']
          @TaskCurrentStep = params['TaskCurrentStep']
          @DatahubId = params['DatahubId']
          @StepList = params['StepList']
        end
      end

      # Datahub主题
      class DatahubTopicDTO < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param TopicName: Topic名称
        # @type TopicName: String
        # @param TopicId: Topic Id
        # @type TopicId: String
        # @param PartitionNum: 分区数
        # @type PartitionNum: Integer
        # @param RetentionMs: 过期时间
        # @type RetentionMs: Integer
        # @param Note: 备注
        # @type Note: String
        # @param Status: 状态，1使用中，2删除中
        # @type Status: Integer

        attr_accessor :Name, :TopicName, :TopicId, :PartitionNum, :RetentionMs, :Note, :Status

        def initialize(name=nil, topicname=nil, topicid=nil, partitionnum=nil, retentionms=nil, note=nil, status=nil)
          @Name = name
          @TopicName = topicname
          @TopicId = topicid
          @PartitionNum = partitionnum
          @RetentionMs = retentionms
          @Note = note
          @Status = status
        end

        def deserialize(params)
          @Name = params['Name']
          @TopicName = params['TopicName']
          @TopicId = params['TopicId']
          @PartitionNum = params['PartitionNum']
          @RetentionMs = params['RetentionMs']
          @Note = params['Note']
          @Status = params['Status']
        end
      end

      # Datahub Topic 响应
      class DatahubTopicResp < TencentCloud::Common::AbstractModel
        # @param TopicName: Topic名称
        # @type TopicName: String
        # @param TopicId: TopicId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicId: String

        attr_accessor :TopicName, :TopicId

        def initialize(topicname=nil, topicid=nil)
          @TopicName = topicname
          @TopicId = topicid
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @TopicId = params['TopicId']
        end
      end

      # 数据处理——Value处理参数——转换时间格式参数
      class DateParam < TencentCloud::Common::AbstractModel
        # @param Format: 时间格式
        # @type Format: String
        # @param TargetType: 输入类型，string，unix时间戳，默认string
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetType: String
        # @param TimeZone: 时区，默认GMT+8
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeZone: String

        attr_accessor :Format, :TargetType, :TimeZone

        def initialize(format=nil, targettype=nil, timezone=nil)
          @Format = format
          @TargetType = targettype
          @TimeZone = timezone
        end

        def deserialize(params)
          @Format = params['Format']
          @TargetType = params['TargetType']
          @TimeZone = params['TimeZone']
        end
      end

      # 预付费/后付费接口中，订单和 CKafka 实例映射数据结构
      class DealInstanceDTO < TencentCloud::Common::AbstractModel
        # @param DealName: 订单流水
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealName: String
        # @param InstanceIdList: 订单流水对应购买的 CKafka 实例 id 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceIdList: Array

        attr_accessor :DealName, :InstanceIdList

        def initialize(dealname=nil, instanceidlist=nil)
          @DealName = dealname
          @InstanceIdList = instanceidlist
        end

        def deserialize(params)
          @DealName = params['DealName']
          @InstanceIdList = params['InstanceIdList']
        end
      end

      # DeleteAcl请求参数结构体
      class DeleteAclRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id信息
        # @type InstanceId: String
        # @param ResourceType: Acl资源类型，(2:TOPIC，3:GROUP，4:CLUSTER)
        # @type ResourceType: Integer
        # @param ResourceName: 资源名称，和resourceType相关，如当resourceType为TOPIC时，则该字段表示topic名称，当resourceType为GROUP时，该字段表示group名称，当resourceType为CLUSTER时，该字段可为空。
        # @type ResourceName: String
        # @param Operation: Acl操作方式，(2:ALL，3:READ，4:WRITE，5:CREATE，6:DELETE，7:ALTER，8:DESCRIBE，9:CLUSTER_ACTION，10:DESCRIBE_CONFIGS，11:ALTER_CONFIGS，12:IDEMPOTENT_WRITE)
        # @type Operation: Integer
        # @param PermissionType: 权限类型，(2:DENY，3:ALLOW)，当前ckakfa支持ALLOW(相当于白名单)，其它用于后续兼容开源kafka的acl时使用
        # @type PermissionType: Integer
        # @param Host: 默认为\*，表示任何host都可以访问，当前ckafka不支持host为\*，但是后面开源kafka的产品化会直接支持
        # @type Host: String
        # @param Principal: 用户列表，默认为*，表示任何user都可以访问，当前用户只能是用户列表中包含的用户
        # @type Principal: String

        attr_accessor :InstanceId, :ResourceType, :ResourceName, :Operation, :PermissionType, :Host, :Principal

        def initialize(instanceid=nil, resourcetype=nil, resourcename=nil, operation=nil, permissiontype=nil, host=nil, principal=nil)
          @InstanceId = instanceid
          @ResourceType = resourcetype
          @ResourceName = resourcename
          @Operation = operation
          @PermissionType = permissiontype
          @Host = host
          @Principal = principal
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ResourceType = params['ResourceType']
          @ResourceName = params['ResourceName']
          @Operation = params['Operation']
          @PermissionType = params['PermissionType']
          @Host = params['Host']
          @Principal = params['Principal']
        end
      end

      # DeleteAcl返回参数结构体
      class DeleteAclResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteAclRule请求参数结构体
      class DeleteAclRuleRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id信息
        # @type InstanceId: String
        # @param RuleName: acl规则名称
        # @type RuleName: String

        attr_accessor :InstanceId, :RuleName

        def initialize(instanceid=nil, rulename=nil)
          @InstanceId = instanceid
          @RuleName = rulename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RuleName = params['RuleName']
        end
      end

      # DeleteAclRule返回参数结构体
      class DeleteAclRuleResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回被删除的规则的ID
        # @type Result: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DeleteConnectResource请求参数结构体
      class DeleteConnectResourceRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 连接源的Id
        # @type ResourceId: String

        attr_accessor :ResourceId

        def initialize(resourceid=nil)
          @ResourceId = resourceid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
        end
      end

      # DeleteConnectResource返回参数结构体
      class DeleteConnectResourceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 连接源的Id
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.ConnectResourceResourceIdResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ConnectResourceResourceIdResp.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteDatahubTask请求参数结构体
      class DeleteDatahubTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DeleteDatahubTask返回参数结构体
      class DeleteDatahubTaskResponse < TencentCloud::Common::AbstractModel
        # @param Result: 任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.DatahubTaskIdRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DatahubTaskIdRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteDatahubTopic请求参数结构体
      class DeleteDatahubTopicRequest < TencentCloud::Common::AbstractModel
        # @param Name: Topic名称
        # @type Name: String

        attr_accessor :Name

        def initialize(name=nil)
          @Name = name
        end

        def deserialize(params)
          @Name = params['Name']
        end
      end

      # DeleteDatahubTopic返回参数结构体
      class DeleteDatahubTopicResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的结果集
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteGroup请求参数结构体
      class DeleteGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Group: 消费分组
        # @type Group: String

        attr_accessor :InstanceId, :Group

        def initialize(instanceid=nil, group=nil)
          @InstanceId = instanceid
          @Group = group
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Group = params['Group']
        end
      end

      # DeleteGroup返回参数结构体
      class DeleteGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteInstancePost请求参数结构体
      class DeleteInstancePostRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DeleteInstancePost返回参数结构体
      class DeleteInstancePostResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的结果集
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.InstanceDeleteResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = InstanceDeleteResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteInstancePre请求参数结构体
      class DeleteInstancePreRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DeleteInstancePre返回参数结构体
      class DeleteInstancePreResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.CreateInstancePreResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CreateInstancePreResp.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteRoute请求参数结构体
      class DeleteRouteRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例唯一id
        # @type InstanceId: String
        # @param RouteId: 路由id
        # @type RouteId: Integer
        # @param CallerAppid: 调用方appId
        # @type CallerAppid: Integer
        # @param DeleteRouteTime: 删除路由时间
        # @type DeleteRouteTime: String

        attr_accessor :InstanceId, :RouteId, :CallerAppid, :DeleteRouteTime

        def initialize(instanceid=nil, routeid=nil, callerappid=nil, deleteroutetime=nil)
          @InstanceId = instanceid
          @RouteId = routeid
          @CallerAppid = callerappid
          @DeleteRouteTime = deleteroutetime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RouteId = params['RouteId']
          @CallerAppid = params['CallerAppid']
          @DeleteRouteTime = params['DeleteRouteTime']
        end
      end

      # DeleteRoute返回参数结构体
      class DeleteRouteResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteRouteTriggerTime请求参数结构体
      class DeleteRouteTriggerTimeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param DelayTime: 修改时间
        # @type DelayTime: String

        attr_accessor :InstanceId, :DelayTime

        def initialize(instanceid=nil, delaytime=nil)
          @InstanceId = instanceid
          @DelayTime = delaytime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DelayTime = params['DelayTime']
        end
      end

      # DeleteRouteTriggerTime返回参数结构体
      class DeleteRouteTriggerTimeResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTopicIpWhiteList请求参数结构体
      class DeleteTopicIpWhiteListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param TopicName: 主题名称
        # @type TopicName: String
        # @param IpWhiteList: ip白名单列表
        # @type IpWhiteList: Array

        attr_accessor :InstanceId, :TopicName, :IpWhiteList

        def initialize(instanceid=nil, topicname=nil, ipwhitelist=nil)
          @InstanceId = instanceid
          @TopicName = topicname
          @IpWhiteList = ipwhitelist
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TopicName = params['TopicName']
          @IpWhiteList = params['IpWhiteList']
        end
      end

      # DeleteTopicIpWhiteList返回参数结构体
      class DeleteTopicIpWhiteListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 删除主题IP白名单结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteTopic请求参数结构体
      class DeleteTopicRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: ckafka 实例Id
        # @type InstanceId: String
        # @param TopicName: ckafka 主题名称
        # @type TopicName: String

        attr_accessor :InstanceId, :TopicName

        def initialize(instanceid=nil, topicname=nil)
          @InstanceId = instanceid
          @TopicName = topicname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TopicName = params['TopicName']
        end
      end

      # DeleteTopic返回参数结构体
      class DeleteTopicResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的结果集
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteUser请求参数结构体
      class DeleteUserRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Name: 用户名称
        # @type Name: String

        attr_accessor :InstanceId, :Name

        def initialize(instanceid=nil, name=nil)
          @InstanceId = instanceid
          @Name = name
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
        end
      end

      # DeleteUser返回参数结构体
      class DeleteUserResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeACL请求参数结构体
      class DescribeACLRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param ResourceType: Acl资源类型，(2:TOPIC，3:GROUP，4:CLUSTER)
        # @type ResourceType: Integer
        # @param ResourceName: 资源名称，和resourceType相关，如当resourceType为TOPIC时，则该字段表示topic名称，当resourceType为GROUP时，该字段表示group名称，当resourceType为CLUSTER时，该字段可为空。
        # @type ResourceName: String
        # @param Offset: 偏移位置
        # @type Offset: Integer
        # @param Limit: 个数限制
        # @type Limit: Integer
        # @param SearchWord: 关键字匹配
        # @type SearchWord: String

        attr_accessor :InstanceId, :ResourceType, :ResourceName, :Offset, :Limit, :SearchWord

        def initialize(instanceid=nil, resourcetype=nil, resourcename=nil, offset=nil, limit=nil, searchword=nil)
          @InstanceId = instanceid
          @ResourceType = resourcetype
          @ResourceName = resourcename
          @Offset = offset
          @Limit = limit
          @SearchWord = searchword
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ResourceType = params['ResourceType']
          @ResourceName = params['ResourceName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchWord = params['SearchWord']
        end
      end

      # DescribeACL返回参数结构体
      class DescribeACLResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的ACL结果集对象
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.AclResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = AclResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAclRule请求参数结构体
      class DescribeAclRuleRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param RuleName: ACL规则名
        # @type RuleName: String
        # @param PatternType: ACL规则匹配类型
        # @type PatternType: String
        # @param IsSimplified: 是否读取简略的ACL规则
        # @type IsSimplified: Boolean

        attr_accessor :InstanceId, :RuleName, :PatternType, :IsSimplified

        def initialize(instanceid=nil, rulename=nil, patterntype=nil, issimplified=nil)
          @InstanceId = instanceid
          @RuleName = rulename
          @PatternType = patterntype
          @IsSimplified = issimplified
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RuleName = params['RuleName']
          @PatternType = params['PatternType']
          @IsSimplified = params['IsSimplified']
        end
      end

      # DescribeAclRule返回参数结构体
      class DescribeAclRuleResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的AclRule结果集对象
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.AclRuleResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = AclRuleResp.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAppInfo请求参数结构体
      class DescribeAppInfoRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移位置
        # @type Offset: Integer
        # @param Limit: 本次查询用户数目最大数量限制，最大值为50，默认50
        # @type Limit: Integer

        attr_accessor :Offset, :Limit

        def initialize(offset=nil, limit=nil)
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAppInfo返回参数结构体
      class DescribeAppInfoResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的符合要求的App Id列表
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.AppIdResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = AppIdResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCkafkaZone请求参数结构体
      class DescribeCkafkaZoneRequest < TencentCloud::Common::AbstractModel
        # @param CdcId: cdc专业集群业务参数
        # @type CdcId: String

        attr_accessor :CdcId

        def initialize(cdcid=nil)
          @CdcId = cdcid
        end

        def deserialize(params)
          @CdcId = params['CdcId']
        end
      end

      # DescribeCkafkaZone返回参数结构体
      class DescribeCkafkaZoneResponse < TencentCloud::Common::AbstractModel
        # @param Result: 查询结果复杂对象实体
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.ZoneResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ZoneResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # topic链接信息
      class DescribeConnectInfoResultDTO < TencentCloud::Common::AbstractModel
        # @param IpAddr: ip地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpAddr: String
        # @param Time: 连结时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Time: String
        # @param IsUnSupportVersion: 是否支持的版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUnSupportVersion: Boolean

        attr_accessor :IpAddr, :Time, :IsUnSupportVersion

        def initialize(ipaddr=nil, time=nil, isunsupportversion=nil)
          @IpAddr = ipaddr
          @Time = time
          @IsUnSupportVersion = isunsupportversion
        end

        def deserialize(params)
          @IpAddr = params['IpAddr']
          @Time = params['Time']
          @IsUnSupportVersion = params['IsUnSupportVersion']
        end
      end

      # 查询连接源具体数据的返参
      class DescribeConnectResource < TencentCloud::Common::AbstractModel
        # @param ResourceId: 连接源的Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: String
        # @param ResourceName: 连接源名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceName: String
        # @param Description: 连接源描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Type: 连接源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Status: 连接源的状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param CreateTime: 连接源的创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ErrorMessage: 连接源的异常信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param DatahubTaskCount: 该连接源关联的Datahub任务数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatahubTaskCount: Integer
        # @param CurrentStep: 连接源的当前所处步骤
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentStep: String
        # @param TaskProgress: 创建进度百分比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskProgress: Float
        # @param StepList: 步骤列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepList: Array
        # @param DtsConnectParam: Dts配置，Type为DTS时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DtsConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.DtsConnectParam`
        # @param MongoDBConnectParam: MongoDB配置，Type为MONGODB时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MongoDBConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.MongoDBConnectParam`
        # @param EsConnectParam: Es配置，Type为ES时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EsConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.EsConnectParam`
        # @param ClickHouseConnectParam: ClickHouse配置，Type为CLICKHOUSE时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClickHouseConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.ClickHouseConnectParam`
        # @param MySQLConnectParam: MySQL配置，Type为MYSQL或TDSQL_C_MYSQL时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MySQLConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.MySQLConnectParam`
        # @param PostgreSQLConnectParam: PostgreSQL配置，Type为POSTGRESQL或TDSQL_C_POSTGRESQL时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PostgreSQLConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.PostgreSQLConnectParam`
        # @param MariaDBConnectParam: MariaDB配置，Type为MARIADB时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MariaDBConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.MariaDBConnectParam`
        # @param SQLServerConnectParam: SQLServer配置，Type为SQLSERVER时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SQLServerConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.SQLServerConnectParam`
        # @param CtsdbConnectParam: Ctsdb配置，Type为CTSDB时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CtsdbConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.CtsdbConnectParam`
        # @param DorisConnectParam: Doris 配置，Type 为 DORIS 时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DorisConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.DorisConnectParam`
        # @param KafkaConnectParam: Kafka配置，Type 为 KAFKA 时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KafkaConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.KafkaConnectParam`
        # @param MqttConnectParam: MQTT配置，Type 为 MQTT 时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MqttConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.MqttConnectParam`

        attr_accessor :ResourceId, :ResourceName, :Description, :Type, :Status, :CreateTime, :ErrorMessage, :DatahubTaskCount, :CurrentStep, :TaskProgress, :StepList, :DtsConnectParam, :MongoDBConnectParam, :EsConnectParam, :ClickHouseConnectParam, :MySQLConnectParam, :PostgreSQLConnectParam, :MariaDBConnectParam, :SQLServerConnectParam, :CtsdbConnectParam, :DorisConnectParam, :KafkaConnectParam, :MqttConnectParam

        def initialize(resourceid=nil, resourcename=nil, description=nil, type=nil, status=nil, createtime=nil, errormessage=nil, datahubtaskcount=nil, currentstep=nil, taskprogress=nil, steplist=nil, dtsconnectparam=nil, mongodbconnectparam=nil, esconnectparam=nil, clickhouseconnectparam=nil, mysqlconnectparam=nil, postgresqlconnectparam=nil, mariadbconnectparam=nil, sqlserverconnectparam=nil, ctsdbconnectparam=nil, dorisconnectparam=nil, kafkaconnectparam=nil, mqttconnectparam=nil)
          @ResourceId = resourceid
          @ResourceName = resourcename
          @Description = description
          @Type = type
          @Status = status
          @CreateTime = createtime
          @ErrorMessage = errormessage
          @DatahubTaskCount = datahubtaskcount
          @CurrentStep = currentstep
          @TaskProgress = taskprogress
          @StepList = steplist
          @DtsConnectParam = dtsconnectparam
          @MongoDBConnectParam = mongodbconnectparam
          @EsConnectParam = esconnectparam
          @ClickHouseConnectParam = clickhouseconnectparam
          @MySQLConnectParam = mysqlconnectparam
          @PostgreSQLConnectParam = postgresqlconnectparam
          @MariaDBConnectParam = mariadbconnectparam
          @SQLServerConnectParam = sqlserverconnectparam
          @CtsdbConnectParam = ctsdbconnectparam
          @DorisConnectParam = dorisconnectparam
          @KafkaConnectParam = kafkaconnectparam
          @MqttConnectParam = mqttconnectparam
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceName = params['ResourceName']
          @Description = params['Description']
          @Type = params['Type']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @ErrorMessage = params['ErrorMessage']
          @DatahubTaskCount = params['DatahubTaskCount']
          @CurrentStep = params['CurrentStep']
          @TaskProgress = params['TaskProgress']
          @StepList = params['StepList']
          unless params['DtsConnectParam'].nil?
            @DtsConnectParam = DtsConnectParam.new
            @DtsConnectParam.deserialize(params['DtsConnectParam'])
          end
          unless params['MongoDBConnectParam'].nil?
            @MongoDBConnectParam = MongoDBConnectParam.new
            @MongoDBConnectParam.deserialize(params['MongoDBConnectParam'])
          end
          unless params['EsConnectParam'].nil?
            @EsConnectParam = EsConnectParam.new
            @EsConnectParam.deserialize(params['EsConnectParam'])
          end
          unless params['ClickHouseConnectParam'].nil?
            @ClickHouseConnectParam = ClickHouseConnectParam.new
            @ClickHouseConnectParam.deserialize(params['ClickHouseConnectParam'])
          end
          unless params['MySQLConnectParam'].nil?
            @MySQLConnectParam = MySQLConnectParam.new
            @MySQLConnectParam.deserialize(params['MySQLConnectParam'])
          end
          unless params['PostgreSQLConnectParam'].nil?
            @PostgreSQLConnectParam = PostgreSQLConnectParam.new
            @PostgreSQLConnectParam.deserialize(params['PostgreSQLConnectParam'])
          end
          unless params['MariaDBConnectParam'].nil?
            @MariaDBConnectParam = MariaDBConnectParam.new
            @MariaDBConnectParam.deserialize(params['MariaDBConnectParam'])
          end
          unless params['SQLServerConnectParam'].nil?
            @SQLServerConnectParam = SQLServerConnectParam.new
            @SQLServerConnectParam.deserialize(params['SQLServerConnectParam'])
          end
          unless params['CtsdbConnectParam'].nil?
            @CtsdbConnectParam = CtsdbConnectParam.new
            @CtsdbConnectParam.deserialize(params['CtsdbConnectParam'])
          end
          unless params['DorisConnectParam'].nil?
            @DorisConnectParam = DorisConnectParam.new
            @DorisConnectParam.deserialize(params['DorisConnectParam'])
          end
          unless params['KafkaConnectParam'].nil?
            @KafkaConnectParam = KafkaConnectParam.new
            @KafkaConnectParam.deserialize(params['KafkaConnectParam'])
          end
          unless params['MqttConnectParam'].nil?
            @MqttConnectParam = MqttConnectParam.new
            @MqttConnectParam.deserialize(params['MqttConnectParam'])
          end
        end
      end

      # DescribeConnectResource请求参数结构体
      class DescribeConnectResourceRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 连接源的Id
        # @type ResourceId: String

        attr_accessor :ResourceId

        def initialize(resourceid=nil)
          @ResourceId = resourceid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
        end
      end

      # 查询连接源具体数据的返参
      class DescribeConnectResourceResp < TencentCloud::Common::AbstractModel
        # @param ResourceId: 连接源的Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: String
        # @param ResourceName: 连接源名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceName: String
        # @param Description: 连接源描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Type: 连接源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Status: 连接源的状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param CreateTime: 连接源的创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ErrorMessage: 连接源的异常信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param CurrentStep: 连接源的当前所处步骤
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentStep: String
        # @param StepList: 步骤列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepList: Array
        # @param MySQLConnectParam: MySQL配置，Type为MYSQL或TDSQL_C_MYSQL时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MySQLConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.MySQLConnectParam`
        # @param PostgreSQLConnectParam: PostgreSQL配置，Type为POSTGRESQL或TDSQL_C_POSTGRESQL时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PostgreSQLConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.PostgreSQLConnectParam`
        # @param DtsConnectParam: Dts配置，Type为DTS时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DtsConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.DtsConnectParam`
        # @param MongoDBConnectParam: MongoDB配置，Type为MONGODB时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MongoDBConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.MongoDBConnectParam`
        # @param EsConnectParam: Es配置，Type为ES时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EsConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.EsConnectParam`
        # @param ClickHouseConnectParam: ClickHouse配置，Type为CLICKHOUSE时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClickHouseConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.ClickHouseConnectParam`
        # @param MariaDBConnectParam: MariaDB配置，Type为MARIADB时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MariaDBConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.MariaDBConnectParam`
        # @param SQLServerConnectParam: SQLServer配置，Type为SQLSERVER时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SQLServerConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.SQLServerConnectParam`
        # @param CtsdbConnectParam: Ctsdb配置，Type为CTSDB时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CtsdbConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.CtsdbConnectParam`
        # @param DorisConnectParam: Doris 配置，Type 为 DORIS 时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DorisConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.DorisConnectParam`
        # @param KafkaConnectParam: Kafka配置，Type 为 KAFKA 时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KafkaConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.KafkaConnectParam`
        # @param MqttConnectParam: MQTT配置，Type 为 MQTT 时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MqttConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.MqttConnectParam`

        attr_accessor :ResourceId, :ResourceName, :Description, :Type, :Status, :CreateTime, :ErrorMessage, :CurrentStep, :StepList, :MySQLConnectParam, :PostgreSQLConnectParam, :DtsConnectParam, :MongoDBConnectParam, :EsConnectParam, :ClickHouseConnectParam, :MariaDBConnectParam, :SQLServerConnectParam, :CtsdbConnectParam, :DorisConnectParam, :KafkaConnectParam, :MqttConnectParam

        def initialize(resourceid=nil, resourcename=nil, description=nil, type=nil, status=nil, createtime=nil, errormessage=nil, currentstep=nil, steplist=nil, mysqlconnectparam=nil, postgresqlconnectparam=nil, dtsconnectparam=nil, mongodbconnectparam=nil, esconnectparam=nil, clickhouseconnectparam=nil, mariadbconnectparam=nil, sqlserverconnectparam=nil, ctsdbconnectparam=nil, dorisconnectparam=nil, kafkaconnectparam=nil, mqttconnectparam=nil)
          @ResourceId = resourceid
          @ResourceName = resourcename
          @Description = description
          @Type = type
          @Status = status
          @CreateTime = createtime
          @ErrorMessage = errormessage
          @CurrentStep = currentstep
          @StepList = steplist
          @MySQLConnectParam = mysqlconnectparam
          @PostgreSQLConnectParam = postgresqlconnectparam
          @DtsConnectParam = dtsconnectparam
          @MongoDBConnectParam = mongodbconnectparam
          @EsConnectParam = esconnectparam
          @ClickHouseConnectParam = clickhouseconnectparam
          @MariaDBConnectParam = mariadbconnectparam
          @SQLServerConnectParam = sqlserverconnectparam
          @CtsdbConnectParam = ctsdbconnectparam
          @DorisConnectParam = dorisconnectparam
          @KafkaConnectParam = kafkaconnectparam
          @MqttConnectParam = mqttconnectparam
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceName = params['ResourceName']
          @Description = params['Description']
          @Type = params['Type']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @ErrorMessage = params['ErrorMessage']
          @CurrentStep = params['CurrentStep']
          @StepList = params['StepList']
          unless params['MySQLConnectParam'].nil?
            @MySQLConnectParam = MySQLConnectParam.new
            @MySQLConnectParam.deserialize(params['MySQLConnectParam'])
          end
          unless params['PostgreSQLConnectParam'].nil?
            @PostgreSQLConnectParam = PostgreSQLConnectParam.new
            @PostgreSQLConnectParam.deserialize(params['PostgreSQLConnectParam'])
          end
          unless params['DtsConnectParam'].nil?
            @DtsConnectParam = DtsConnectParam.new
            @DtsConnectParam.deserialize(params['DtsConnectParam'])
          end
          unless params['MongoDBConnectParam'].nil?
            @MongoDBConnectParam = MongoDBConnectParam.new
            @MongoDBConnectParam.deserialize(params['MongoDBConnectParam'])
          end
          unless params['EsConnectParam'].nil?
            @EsConnectParam = EsConnectParam.new
            @EsConnectParam.deserialize(params['EsConnectParam'])
          end
          unless params['ClickHouseConnectParam'].nil?
            @ClickHouseConnectParam = ClickHouseConnectParam.new
            @ClickHouseConnectParam.deserialize(params['ClickHouseConnectParam'])
          end
          unless params['MariaDBConnectParam'].nil?
            @MariaDBConnectParam = MariaDBConnectParam.new
            @MariaDBConnectParam.deserialize(params['MariaDBConnectParam'])
          end
          unless params['SQLServerConnectParam'].nil?
            @SQLServerConnectParam = SQLServerConnectParam.new
            @SQLServerConnectParam.deserialize(params['SQLServerConnectParam'])
          end
          unless params['CtsdbConnectParam'].nil?
            @CtsdbConnectParam = CtsdbConnectParam.new
            @CtsdbConnectParam.deserialize(params['CtsdbConnectParam'])
          end
          unless params['DorisConnectParam'].nil?
            @DorisConnectParam = DorisConnectParam.new
            @DorisConnectParam.deserialize(params['DorisConnectParam'])
          end
          unless params['KafkaConnectParam'].nil?
            @KafkaConnectParam = KafkaConnectParam.new
            @KafkaConnectParam.deserialize(params['KafkaConnectParam'])
          end
          unless params['MqttConnectParam'].nil?
            @MqttConnectParam = MqttConnectParam.new
            @MqttConnectParam.deserialize(params['MqttConnectParam'])
          end
        end
      end

      # DescribeConnectResource返回参数结构体
      class DescribeConnectResourceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 连接源的Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.DescribeConnectResourceResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribeConnectResourceResp.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeConnectResources请求参数结构体
      class DescribeConnectResourcesRequest < TencentCloud::Common::AbstractModel
        # @param Type: 连接源类型
        # @type Type: String
        # @param SearchWord: 连接源名称的关键字查询
        # @type SearchWord: String
        # @param Offset: 分页偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100
        # @type Limit: Integer
        # @param ResourceRegion: 连接源的关键字查询, 根据地域查询本地域内连接管理列表中的连接(仅支持包含region输入的连接源)
        # @type ResourceRegion: String

        attr_accessor :Type, :SearchWord, :Offset, :Limit, :ResourceRegion

        def initialize(type=nil, searchword=nil, offset=nil, limit=nil, resourceregion=nil)
          @Type = type
          @SearchWord = searchword
          @Offset = offset
          @Limit = limit
          @ResourceRegion = resourceregion
        end

        def deserialize(params)
          @Type = params['Type']
          @SearchWord = params['SearchWord']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ResourceRegion = params['ResourceRegion']
        end
      end

      # 查询连接源列表的返参
      class DescribeConnectResourcesResp < TencentCloud::Common::AbstractModel
        # @param TotalCount: 连接源个数
        # @type TotalCount: Integer
        # @param ConnectResourceList: 连接源数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConnectResourceList: Array

        attr_accessor :TotalCount, :ConnectResourceList

        def initialize(totalcount=nil, connectresourcelist=nil)
          @TotalCount = totalcount
          @ConnectResourceList = connectresourcelist
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ConnectResourceList'].nil?
            @ConnectResourceList = []
            params['ConnectResourceList'].each do |i|
              describeconnectresource_tmp = DescribeConnectResource.new
              describeconnectresource_tmp.deserialize(i)
              @ConnectResourceList << describeconnectresource_tmp
            end
          end
        end
      end

      # DescribeConnectResources返回参数结构体
      class DescribeConnectResourcesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 连接源列表
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.DescribeConnectResourcesResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribeConnectResourcesResp.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeConsumerGroup请求参数结构体
      class DescribeConsumerGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: ckafka实例id。
        # @type InstanceId: String
        # @param GroupName: 可选，用户需要查询的group名称。
        # @type GroupName: String
        # @param TopicName: 可选，用户需要查询的group中的对应的topic名称，如果指定了该参数，而group又未指定则忽略该参数。
        # @type TopicName: String
        # @param Limit: 本次返回个数限制，最大支持50
        # @type Limit: Integer
        # @param Offset: 偏移位置
        # @type Offset: Integer

        attr_accessor :InstanceId, :GroupName, :TopicName, :Limit, :Offset

        def initialize(instanceid=nil, groupname=nil, topicname=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @GroupName = groupname
          @TopicName = topicname
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @GroupName = params['GroupName']
          @TopicName = params['TopicName']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeConsumerGroup返回参数结构体
      class DescribeConsumerGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的消费分组信息
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.ConsumerGroupResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ConsumerGroupResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatahubGroupOffsets请求参数结构体
      class DescribeDatahubGroupOffsetsRequest < TencentCloud::Common::AbstractModel
        # @param Name: （过滤条件）按照实例 ID 过滤
        # @type Name: String
        # @param Group: Kafka 消费分组
        # @type Group: String
        # @param SearchWord: 模糊匹配 topicName
        # @type SearchWord: String
        # @param Offset: 本次查询的偏移位置，默认为0
        # @type Offset: Integer
        # @param Limit: 本次返回结果的最大个数，默认为50，最大值为50
        # @type Limit: Integer

        attr_accessor :Name, :Group, :SearchWord, :Offset, :Limit

        def initialize(name=nil, group=nil, searchword=nil, offset=nil, limit=nil)
          @Name = name
          @Group = group
          @SearchWord = searchword
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Name = params['Name']
          @Group = params['Group']
          @SearchWord = params['SearchWord']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeDatahubGroupOffsets返回参数结构体
      class DescribeDatahubGroupOffsetsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的结果对象
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.GroupOffsetResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = GroupOffsetResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatahubTask请求参数结构体
      class DescribeDatahubTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # 查询Datahub任务信息
      class DescribeDatahubTaskRes < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param TaskType: 任务类型，SOURCE数据接入，SINK数据流出
        # @type TaskType: String
        # @param Status: 状态，-1创建失败，0创建中，1运行中，2删除中，3已删除，4删除失败，5暂停中，6已暂停，7暂停失败，8恢复中，9恢复失败
        # @type Status: Integer
        # @param SourceResource: 数据源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceResource: :class:`Tencentcloud::Ckafka.v20190819.models.DatahubResource`
        # @param TargetResource: 数据目标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetResource: :class:`Tencentcloud::Ckafka.v20190819.models.DatahubResource`
        # @param Connections: Connection列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Connections: Array
        # @param CreateTime: 任务创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param TransformParam: 消息处理规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransformParam: :class:`Tencentcloud::Ckafka.v20190819.models.TransformParam`
        # @param DatahubId: 数据接入ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatahubId: String
        # @param SchemaId: 绑定的SchemaId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaId: String
        # @param SchemaName: 绑定的Schema名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaName: String
        # @param TransformsParam: 数据处理规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransformsParam: :class:`Tencentcloud::Ckafka.v20190819.models.TransformsParam`
        # @param ErrorMessage: 异常信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param Tags: 任务标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :TaskId, :TaskName, :TaskType, :Status, :SourceResource, :TargetResource, :Connections, :CreateTime, :TransformParam, :DatahubId, :SchemaId, :SchemaName, :TransformsParam, :ErrorMessage, :Tags

        def initialize(taskid=nil, taskname=nil, tasktype=nil, status=nil, sourceresource=nil, targetresource=nil, connections=nil, createtime=nil, transformparam=nil, datahubid=nil, schemaid=nil, schemaname=nil, transformsparam=nil, errormessage=nil, tags=nil)
          @TaskId = taskid
          @TaskName = taskname
          @TaskType = tasktype
          @Status = status
          @SourceResource = sourceresource
          @TargetResource = targetresource
          @Connections = connections
          @CreateTime = createtime
          @TransformParam = transformparam
          @DatahubId = datahubid
          @SchemaId = schemaid
          @SchemaName = schemaname
          @TransformsParam = transformsparam
          @ErrorMessage = errormessage
          @Tags = tags
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @TaskType = params['TaskType']
          @Status = params['Status']
          unless params['SourceResource'].nil?
            @SourceResource = DatahubResource.new
            @SourceResource.deserialize(params['SourceResource'])
          end
          unless params['TargetResource'].nil?
            @TargetResource = DatahubResource.new
            @TargetResource.deserialize(params['TargetResource'])
          end
          unless params['Connections'].nil?
            @Connections = []
            params['Connections'].each do |i|
              connection_tmp = Connection.new
              connection_tmp.deserialize(i)
              @Connections << connection_tmp
            end
          end
          @CreateTime = params['CreateTime']
          unless params['TransformParam'].nil?
            @TransformParam = TransformParam.new
            @TransformParam.deserialize(params['TransformParam'])
          end
          @DatahubId = params['DatahubId']
          @SchemaId = params['SchemaId']
          @SchemaName = params['SchemaName']
          unless params['TransformsParam'].nil?
            @TransformsParam = TransformsParam.new
            @TransformsParam.deserialize(params['TransformsParam'])
          end
          @ErrorMessage = params['ErrorMessage']
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

      # DescribeDatahubTask返回参数结构体
      class DescribeDatahubTaskResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.DescribeDatahubTaskRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribeDatahubTaskRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatahubTasks请求参数结构体
      class DescribeDatahubTasksRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为20，最大值为100
        # @type Limit: Integer
        # @param Offset: 分页偏移量，默认为0
        # @type Offset: Integer
        # @param SearchWord: 过滤条件，按照 TaskName 过滤，支持模糊查询
        # @type SearchWord: String
        # @param TargetType: 转储的目标类型
        # @type TargetType: String
        # @param TaskType: 任务类型，SOURCE数据接入，SINK数据流出
        # @type TaskType: String
        # @param SourceType: 转储的源类型
        # @type SourceType: String
        # @param Resource: 转储的资源
        # @type Resource: String

        attr_accessor :Limit, :Offset, :SearchWord, :TargetType, :TaskType, :SourceType, :Resource

        def initialize(limit=nil, offset=nil, searchword=nil, targettype=nil, tasktype=nil, sourcetype=nil, resource=nil)
          @Limit = limit
          @Offset = offset
          @SearchWord = searchword
          @TargetType = targettype
          @TaskType = tasktype
          @SourceType = sourcetype
          @Resource = resource
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @SearchWord = params['SearchWord']
          @TargetType = params['TargetType']
          @TaskType = params['TaskType']
          @SourceType = params['SourceType']
          @Resource = params['Resource']
        end
      end

      # 查询Datahub任务列表
      class DescribeDatahubTasksRes < TencentCloud::Common::AbstractModel
        # @param TotalCount: 任务总数
        # @type TotalCount: Integer
        # @param TaskList: Datahub任务信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskList: Array

        attr_accessor :TotalCount, :TaskList

        def initialize(totalcount=nil, tasklist=nil)
          @TotalCount = totalcount
          @TaskList = tasklist
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TaskList'].nil?
            @TaskList = []
            params['TaskList'].each do |i|
              datahubtaskinfo_tmp = DatahubTaskInfo.new
              datahubtaskinfo_tmp.deserialize(i)
              @TaskList << datahubtaskinfo_tmp
            end
          end
        end
      end

      # DescribeDatahubTasks返回参数结构体
      class DescribeDatahubTasksResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回任务查询结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.DescribeDatahubTasksRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribeDatahubTasksRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatahubTopic请求参数结构体
      class DescribeDatahubTopicRequest < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String

        attr_accessor :Name

        def initialize(name=nil)
          @Name = name
        end

        def deserialize(params)
          @Name = params['Name']
        end
      end

      # Datahub Topic详情
      class DescribeDatahubTopicResp < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param TopicName: Topic名称
        # @type TopicName: String
        # @param TopicId: Topic Id
        # @type TopicId: String
        # @param PartitionNum: 分区数
        # @type PartitionNum: Integer
        # @param RetentionMs: 过期时间
        # @type RetentionMs: Integer
        # @param Note: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Note: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param Password: 密码
        # @type Password: String
        # @param Status: 状态，1使用中，2删除中
        # @type Status: Integer
        # @param Address: 服务路由地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Address: String

        attr_accessor :Name, :TopicName, :TopicId, :PartitionNum, :RetentionMs, :Note, :UserName, :Password, :Status, :Address

        def initialize(name=nil, topicname=nil, topicid=nil, partitionnum=nil, retentionms=nil, note=nil, username=nil, password=nil, status=nil, address=nil)
          @Name = name
          @TopicName = topicname
          @TopicId = topicid
          @PartitionNum = partitionnum
          @RetentionMs = retentionms
          @Note = note
          @UserName = username
          @Password = password
          @Status = status
          @Address = address
        end

        def deserialize(params)
          @Name = params['Name']
          @TopicName = params['TopicName']
          @TopicId = params['TopicId']
          @PartitionNum = params['PartitionNum']
          @RetentionMs = params['RetentionMs']
          @Note = params['Note']
          @UserName = params['UserName']
          @Password = params['Password']
          @Status = params['Status']
          @Address = params['Address']
        end
      end

      # DescribeDatahubTopic返回参数结构体
      class DescribeDatahubTopicResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的结果对象
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.DescribeDatahubTopicResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribeDatahubTopicResp.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatahubTopics请求参数结构体
      class DescribeDatahubTopicsRequest < TencentCloud::Common::AbstractModel
        # @param SearchWord: 查询值
        # @type SearchWord: String
        # @param Offset: 本次查询的偏移位置，默认为0
        # @type Offset: Integer
        # @param Limit: 本次返回结果的最大个数，默认为50，最大值为50
        # @type Limit: Integer

        attr_accessor :SearchWord, :Offset, :Limit

        def initialize(searchword=nil, offset=nil, limit=nil)
          @SearchWord = searchword
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SearchWord = params['SearchWord']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # Datahub主题列表
      class DescribeDatahubTopicsResp < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param TopicList: Topic列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicList: Array

        attr_accessor :TotalCount, :TopicList

        def initialize(totalcount=nil, topiclist=nil)
          @TotalCount = totalcount
          @TopicList = topiclist
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TopicList'].nil?
            @TopicList = []
            params['TopicList'].each do |i|
              datahubtopicdto_tmp = DatahubTopicDTO.new
              datahubtopicdto_tmp.deserialize(i)
              @TopicList << datahubtopicdto_tmp
            end
          end
        end
      end

      # DescribeDatahubTopics返回参数结构体
      class DescribeDatahubTopicsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 主题列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.DescribeDatahubTopicsResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribeDatahubTopicsResp.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGroup返回实体
      class DescribeGroup < TencentCloud::Common::AbstractModel
        # @param Group: groupId
        # @type Group: String
        # @param Protocol: 该 group 使用的协议。
        # @type Protocol: String

        attr_accessor :Group, :Protocol

        def initialize(group=nil, protocol=nil)
          @Group = group
          @Protocol = protocol
        end

        def deserialize(params)
          @Group = params['Group']
          @Protocol = params['Protocol']
        end
      end

      # DescribeGroupInfo请求参数结构体
      class DescribeGroupInfoRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: （过滤条件）按照实例 ID 过滤。
        # @type InstanceId: String
        # @param GroupList: Kafka 消费分组，Consumer-group，这里是数组形式，示例：["xxx","yyy"]
        # @type GroupList: Array

        attr_accessor :InstanceId, :GroupList

        def initialize(instanceid=nil, grouplist=nil)
          @InstanceId = instanceid
          @GroupList = grouplist
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @GroupList = params['GroupList']
        end
      end

      # DescribeGroupInfo返回参数结构体
      class DescribeGroupInfoResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              groupinforesponse_tmp = GroupInfoResponse.new
              groupinforesponse_tmp.deserialize(i)
              @Result << groupinforesponse_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGroupOffsets请求参数结构体
      class DescribeGroupOffsetsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: （过滤条件）按照实例 ID 过滤
        # @type InstanceId: String
        # @param Group: Kafka 消费分组
        # @type Group: String
        # @param Topics: group 订阅的主题名称数组，如果没有该数组，则表示指定的 group 下所有 topic 信息
        # @type Topics: Array
        # @param SearchWord: 模糊匹配 topicName
        # @type SearchWord: String
        # @param Offset: 本次查询的偏移位置，默认为0
        # @type Offset: Integer
        # @param Limit: 本次返回结果的最大个数，默认为50，最大值为50
        # @type Limit: Integer

        attr_accessor :InstanceId, :Group, :Topics, :SearchWord, :Offset, :Limit

        def initialize(instanceid=nil, group=nil, topics=nil, searchword=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @Group = group
          @Topics = topics
          @SearchWord = searchword
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Group = params['Group']
          @Topics = params['Topics']
          @SearchWord = params['SearchWord']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeGroupOffsets返回参数结构体
      class DescribeGroupOffsetsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的结果对象
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.GroupOffsetResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = GroupOffsetResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGroup请求参数结构体
      class DescribeGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param SearchWord: 搜索关键字
        # @type SearchWord: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 最大返回数量
        # @type Limit: Integer

        attr_accessor :InstanceId, :SearchWord, :Offset, :Limit

        def initialize(instanceid=nil, searchword=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @SearchWord = searchword
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SearchWord = params['SearchWord']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeGroup返回参数结构体
      class DescribeGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果集列表
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.GroupResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = GroupResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceAttributes请求参数结构体
      class DescribeInstanceAttributesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstanceAttributes返回参数结构体
      class DescribeInstanceAttributesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 实例属性返回结果对象。
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.InstanceAttributesResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = InstanceAttributesResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstancesDetail请求参数结构体
      class DescribeInstancesDetailRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: （过滤条件）按照实例ID过滤
        # @type InstanceId: String
        # @param SearchWord: （过滤条件）按照实例名,实例Id,可用区,私有网络id,子网id 过滤，支持模糊查询
        # @type SearchWord: String
        # @param Status: （过滤条件）实例的状态。0：创建中，1：运行中，2：删除中，不填默认返回全部
        # @type Status: Array
        # @param Offset: 偏移量，不填默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，不填则默认10，最大值20。
        # @type Limit: Integer
        # @param TagKey: 匹配标签key值。
        # @type TagKey: String
        # @param Filters: 过滤器。filter.Name 支持('Ip', 'VpcId', 'SubNetId', 'InstanceType','InstanceId') ,filter.Values最多传递10个值.
        # @type Filters: Array
        # @param InstanceIds: 已经废弃， 使用InstanceIdList
        # @type InstanceIds: String
        # @param InstanceIdList: 按照实例ID过滤
        # @type InstanceIdList: Array
        # @param TagList: 根据标签列表过滤实例（取交集）
        # @type TagList: Array

        attr_accessor :InstanceId, :SearchWord, :Status, :Offset, :Limit, :TagKey, :Filters, :InstanceIds, :InstanceIdList, :TagList

        def initialize(instanceid=nil, searchword=nil, status=nil, offset=nil, limit=nil, tagkey=nil, filters=nil, instanceids=nil, instanceidlist=nil, taglist=nil)
          @InstanceId = instanceid
          @SearchWord = searchword
          @Status = status
          @Offset = offset
          @Limit = limit
          @TagKey = tagkey
          @Filters = filters
          @InstanceIds = instanceids
          @InstanceIdList = instanceidlist
          @TagList = taglist
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SearchWord = params['SearchWord']
          @Status = params['Status']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @TagKey = params['TagKey']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @InstanceIds = params['InstanceIds']
          @InstanceIdList = params['InstanceIdList']
          unless params['TagList'].nil?
            @TagList = []
            params['TagList'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagList << tag_tmp
            end
          end
        end
      end

      # DescribeInstancesDetail返回参数结构体
      class DescribeInstancesDetailResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的实例详情结果对象
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.InstanceDetailResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = InstanceDetailResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: （过滤条件）按照实例ID过滤
        # @type InstanceId: String
        # @param SearchWord: （过滤条件）按照实例名称过滤，支持模糊查询
        # @type SearchWord: String
        # @param Status: （过滤条件）实例的状态。0：创建中，1：运行中，2：删除中，不填默认返回全部
        # @type Status: Array
        # @param Offset: 偏移量，不填默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，不填则默认10，最大值100
        # @type Limit: Integer
        # @param TagKey: 已废弃。匹配标签key值。
        # @type TagKey: String
        # @param VpcId: 私有网络Id
        # @type VpcId: String

        attr_accessor :InstanceId, :SearchWord, :Status, :Offset, :Limit, :TagKey, :VpcId

        def initialize(instanceid=nil, searchword=nil, status=nil, offset=nil, limit=nil, tagkey=nil, vpcid=nil)
          @InstanceId = instanceid
          @SearchWord = searchword
          @Status = status
          @Offset = offset
          @Limit = limit
          @TagKey = tagkey
          @VpcId = vpcid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SearchWord = params['SearchWord']
          @Status = params['Status']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @TagKey = params['TagKey']
          @VpcId = params['VpcId']
        end
      end

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.InstanceResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = InstanceResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePrometheus请求参数结构体
      class DescribePrometheusRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: ckafka实例Id
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribePrometheus返回参数结构体
      class DescribePrometheusResponse < TencentCloud::Common::AbstractModel
        # @param Result: Prometheus监控映射列表
        # @type Result: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              prometheusdto_tmp = PrometheusDTO.new
              prometheusdto_tmp.deserialize(i)
              @Result << prometheusdto_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRegion请求参数结构体
      class DescribeRegionRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 返回最大结果数
        # @type Limit: Integer
        # @param Business: 业务字段，可忽略
        # @type Business: String
        # @param CdcId: cdc专有集群业务字段，可忽略
        # @type CdcId: String

        attr_accessor :Offset, :Limit, :Business, :CdcId

        def initialize(offset=nil, limit=nil, business=nil, cdcid=nil)
          @Offset = offset
          @Limit = limit
          @Business = business
          @CdcId = cdcid
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Business = params['Business']
          @CdcId = params['CdcId']
        end
      end

      # DescribeRegion返回参数结构体
      class DescribeRegionResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回地域枚举结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              region_tmp = Region.new
              region_tmp.deserialize(i)
              @Result << region_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRoute请求参数结构体
      class DescribeRouteRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例唯一id
        # @type InstanceId: String
        # @param RouteId: 路由id
        # @type RouteId: Integer

        attr_accessor :InstanceId, :RouteId

        def initialize(instanceid=nil, routeid=nil)
          @InstanceId = instanceid
          @RouteId = routeid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RouteId = params['RouteId']
        end
      end

      # DescribeRoute返回参数结构体
      class DescribeRouteResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的路由信息结果集
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.RouteResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = RouteResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskStatus请求参数结构体
      class DescribeTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务唯一标记
        # @type FlowId: Integer

        attr_accessor :FlowId

        def initialize(flowid=nil)
          @FlowId = flowid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
        end
      end

      # DescribeTaskStatus返回参数结构体
      class DescribeTaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.TaskStatusResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TaskStatusResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopicAttributes请求参数结构体
      class DescribeTopicAttributesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param TopicName: 主题名称
        # @type TopicName: String

        attr_accessor :InstanceId, :TopicName

        def initialize(instanceid=nil, topicname=nil)
          @InstanceId = instanceid
          @TopicName = topicname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TopicName = params['TopicName']
        end
      end

      # DescribeTopicAttributes返回参数结构体
      class DescribeTopicAttributesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的结果对象
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.TopicAttributesResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TopicAttributesResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopicDetail请求参数结构体
      class DescribeTopicDetailRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param SearchWord: （过滤条件）按照topicName过滤，支持模糊查询
        # @type SearchWord: String
        # @param Offset: 偏移量，不填默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，不填则默认 10，最大值20，取值要大于0
        # @type Limit: Integer
        # @param AclRuleName: Acl预设策略名称
        # @type AclRuleName: String

        attr_accessor :InstanceId, :SearchWord, :Offset, :Limit, :AclRuleName

        def initialize(instanceid=nil, searchword=nil, offset=nil, limit=nil, aclrulename=nil)
          @InstanceId = instanceid
          @SearchWord = searchword
          @Offset = offset
          @Limit = limit
          @AclRuleName = aclrulename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SearchWord = params['SearchWord']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @AclRuleName = params['AclRuleName']
        end
      end

      # DescribeTopicDetail返回参数结构体
      class DescribeTopicDetailResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的主题详情实体
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.TopicDetailResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TopicDetailResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopicFlowRanking请求参数结构体
      class DescribeTopicFlowRankingRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param RankingType: 排行类别(PRO-Topic生产流量/CON-Topic消费流量)
        # @type RankingType: String
        # @param BeginDate: 排行起始日期
        # @type BeginDate: String
        # @param EndDate: 排行结束日期
        # @type EndDate: String
        # @param BrokerIp: Broker IP 地址
        # @type BrokerIp: String

        attr_accessor :InstanceId, :RankingType, :BeginDate, :EndDate, :BrokerIp

        def initialize(instanceid=nil, rankingtype=nil, begindate=nil, enddate=nil, brokerip=nil)
          @InstanceId = instanceid
          @RankingType = rankingtype
          @BeginDate = begindate
          @EndDate = enddate
          @BrokerIp = brokerip
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RankingType = params['RankingType']
          @BeginDate = params['BeginDate']
          @EndDate = params['EndDate']
          @BrokerIp = params['BrokerIp']
        end
      end

      # DescribeTopicFlowRanking返回参数结构体
      class DescribeTopicFlowRankingResponse < TencentCloud::Common::AbstractModel
        # @param Result: 流量排行
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.TopicFlowRankingResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TopicFlowRankingResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopicProduceConnection请求参数结构体
      class DescribeTopicProduceConnectionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param TopicName: topic名称
        # @type TopicName: String

        attr_accessor :InstanceId, :TopicName

        def initialize(instanceid=nil, topicname=nil)
          @InstanceId = instanceid
          @TopicName = topicname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TopicName = params['TopicName']
        end
      end

      # DescribeTopicProduceConnection返回参数结构体
      class DescribeTopicProduceConnectionResponse < TencentCloud::Common::AbstractModel
        # @param Result: 链接信息返回结果集
        # @type Result: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              describeconnectinforesultdto_tmp = DescribeConnectInfoResultDTO.new
              describeconnectinforesultdto_tmp.deserialize(i)
              @Result << describeconnectinforesultdto_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopic请求参数结构体
      class DescribeTopicRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param SearchWord: 过滤条件，按照 topicName 过滤，支持模糊查询
        # @type SearchWord: String
        # @param Offset: 偏移量，不填默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，不填则默认为20，最大值为50
        # @type Limit: Integer
        # @param AclRuleName: Acl预设策略名称
        # @type AclRuleName: String

        attr_accessor :InstanceId, :SearchWord, :Offset, :Limit, :AclRuleName

        def initialize(instanceid=nil, searchword=nil, offset=nil, limit=nil, aclrulename=nil)
          @InstanceId = instanceid
          @SearchWord = searchword
          @Offset = offset
          @Limit = limit
          @AclRuleName = aclrulename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SearchWord = params['SearchWord']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @AclRuleName = params['AclRuleName']
        end
      end

      # DescribeTopic返回参数结构体
      class DescribeTopicResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回的结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.TopicResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TopicResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopicSubscribeGroup请求参数结构体
      class DescribeTopicSubscribeGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param TopicName: 主题名称
        # @type TopicName: String
        # @param Offset: 分页时的起始位置
        # @type Offset: Integer
        # @param Limit: 分页时的个数
        # @type Limit: Integer

        attr_accessor :InstanceId, :TopicName, :Offset, :Limit

        def initialize(instanceid=nil, topicname=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @TopicName = topicname
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TopicName = params['TopicName']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeTopicSubscribeGroup返回参数结构体
      class DescribeTopicSubscribeGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.TopicSubscribeGroup`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TopicSubscribeGroup.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopicSyncReplica请求参数结构体
      class DescribeTopicSyncReplicaRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param TopicName: 主题名称
        # @type TopicName: String
        # @param Offset: 偏移量，不填默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，不填则默认10，最大值20。
        # @type Limit: Integer
        # @param OutOfSyncReplicaOnly: 仅筛选未同步副本
        # @type OutOfSyncReplicaOnly: Boolean

        attr_accessor :InstanceId, :TopicName, :Offset, :Limit, :OutOfSyncReplicaOnly

        def initialize(instanceid=nil, topicname=nil, offset=nil, limit=nil, outofsyncreplicaonly=nil)
          @InstanceId = instanceid
          @TopicName = topicname
          @Offset = offset
          @Limit = limit
          @OutOfSyncReplicaOnly = outofsyncreplicaonly
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TopicName = params['TopicName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OutOfSyncReplicaOnly = params['OutOfSyncReplicaOnly']
        end
      end

      # DescribeTopicSyncReplica返回参数结构体
      class DescribeTopicSyncReplicaResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回topic 副本详情
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.TopicInSyncReplicaResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TopicInSyncReplicaResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUser请求参数结构体
      class DescribeUserRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param SearchWord: 按照名称过滤
        # @type SearchWord: String
        # @param Offset: 偏移
        # @type Offset: Integer
        # @param Limit: 本次返回个数
        # @type Limit: Integer

        attr_accessor :InstanceId, :SearchWord, :Offset, :Limit

        def initialize(instanceid=nil, searchword=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @SearchWord = searchword
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SearchWord = params['SearchWord']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeUser返回参数结构体
      class DescribeUserResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果列表
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.UserResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = UserResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # Doris 连接源参数
      class DorisConnectParam < TencentCloud::Common::AbstractModel
        # @param Port: Doris jdbc 负载均衡连接 port，通常映射到 fe 的 9030 端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param UserName: Doris 连接源的用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Password: Doris 连接源的密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param Resource: Doris 连接源的实例资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param ServiceVip: Doris 连接源的实例vip，当为腾讯云实例时，必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceVip: String
        # @param UniqVpcId: Doris 连接源的vpcId，当为腾讯云实例时，必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param IsUpdate: 是否更新到关联的Datahub任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUpdate: Boolean
        # @param SelfBuilt: Doris 连接源是否为自建集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelfBuilt: Boolean
        # @param BePort: Doris 的 http 负载均衡连接 port，通常映射到 be 的 8040 端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BePort: Integer

        attr_accessor :Port, :UserName, :Password, :Resource, :ServiceVip, :UniqVpcId, :IsUpdate, :SelfBuilt, :BePort

        def initialize(port=nil, username=nil, password=nil, resource=nil, servicevip=nil, uniqvpcid=nil, isupdate=nil, selfbuilt=nil, beport=nil)
          @Port = port
          @UserName = username
          @Password = password
          @Resource = resource
          @ServiceVip = servicevip
          @UniqVpcId = uniqvpcid
          @IsUpdate = isupdate
          @SelfBuilt = selfbuilt
          @BePort = beport
        end

        def deserialize(params)
          @Port = params['Port']
          @UserName = params['UserName']
          @Password = params['Password']
          @Resource = params['Resource']
          @ServiceVip = params['ServiceVip']
          @UniqVpcId = params['UniqVpcId']
          @IsUpdate = params['IsUpdate']
          @SelfBuilt = params['SelfBuilt']
          @BePort = params['BePort']
        end
      end

      # Doris 连接源修改参数
      class DorisModifyConnectParam < TencentCloud::Common::AbstractModel
        # @param Resource: Doris 连接源的实例资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param Port: Doris jdbc 负载均衡连接 port，通常映射到 fe 的 9030 端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param ServiceVip: Doris 连接源的实例vip，当为腾讯云实例时，必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceVip: String
        # @param UniqVpcId: Doris 连接源的vpcId，当为腾讯云实例时，必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param UserName: Doris 连接源的用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Password: Doris 连接源的密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param IsUpdate: 是否更新到关联的Datahub任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUpdate: Boolean
        # @param SelfBuilt: Doris 连接源是否为自建集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelfBuilt: Boolean
        # @param BePort: Doris 的 http 负载均衡连接 port，通常映射到 be 的 8040 端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BePort: Integer

        attr_accessor :Resource, :Port, :ServiceVip, :UniqVpcId, :UserName, :Password, :IsUpdate, :SelfBuilt, :BePort

        def initialize(resource=nil, port=nil, servicevip=nil, uniqvpcid=nil, username=nil, password=nil, isupdate=nil, selfbuilt=nil, beport=nil)
          @Resource = resource
          @Port = port
          @ServiceVip = servicevip
          @UniqVpcId = uniqvpcid
          @UserName = username
          @Password = password
          @IsUpdate = isupdate
          @SelfBuilt = selfbuilt
          @BePort = beport
        end

        def deserialize(params)
          @Resource = params['Resource']
          @Port = params['Port']
          @ServiceVip = params['ServiceVip']
          @UniqVpcId = params['UniqVpcId']
          @UserName = params['UserName']
          @Password = params['Password']
          @IsUpdate = params['IsUpdate']
          @SelfBuilt = params['SelfBuilt']
          @BePort = params['BePort']
        end
      end

      # dip失败消息写入cls的配置
      class DropCls < TencentCloud::Common::AbstractModel
        # @param DropInvalidMessageToCls: 是否投递到cls
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DropInvalidMessageToCls: Boolean
        # @param DropClsRegion: 投递cls的地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DropClsRegion: String
        # @param DropClsOwneruin: 投递cls的账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DropClsOwneruin: String
        # @param DropClsTopicId: 投递cls的主题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DropClsTopicId: String
        # @param DropClsLogSet: 投递cls的日志集id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DropClsLogSet: String

        attr_accessor :DropInvalidMessageToCls, :DropClsRegion, :DropClsOwneruin, :DropClsTopicId, :DropClsLogSet

        def initialize(dropinvalidmessagetocls=nil, dropclsregion=nil, dropclsowneruin=nil, dropclstopicid=nil, dropclslogset=nil)
          @DropInvalidMessageToCls = dropinvalidmessagetocls
          @DropClsRegion = dropclsregion
          @DropClsOwneruin = dropclsowneruin
          @DropClsTopicId = dropclstopicid
          @DropClsLogSet = dropclslogset
        end

        def deserialize(params)
          @DropInvalidMessageToCls = params['DropInvalidMessageToCls']
          @DropClsRegion = params['DropClsRegion']
          @DropClsOwneruin = params['DropClsOwneruin']
          @DropClsTopicId = params['DropClsTopicId']
          @DropClsLogSet = params['DropClsLogSet']
        end
      end

      # Dts连接源参数
      class DtsConnectParam < TencentCloud::Common::AbstractModel
        # @param Port: Dts的连接port
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param GroupId: Dts消费分组的Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String
        # @param UserName: Dts消费分组的账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Password: Dts消费分组的密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param Resource: Dts实例Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param Topic: Dts订阅的topic
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Topic: String
        # @param IsUpdate: 是否更新到关联的Datahub任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUpdate: Boolean

        attr_accessor :Port, :GroupId, :UserName, :Password, :Resource, :Topic, :IsUpdate

        def initialize(port=nil, groupid=nil, username=nil, password=nil, resource=nil, topic=nil, isupdate=nil)
          @Port = port
          @GroupId = groupid
          @UserName = username
          @Password = password
          @Resource = resource
          @Topic = topic
          @IsUpdate = isupdate
        end

        def deserialize(params)
          @Port = params['Port']
          @GroupId = params['GroupId']
          @UserName = params['UserName']
          @Password = params['Password']
          @Resource = params['Resource']
          @Topic = params['Topic']
          @IsUpdate = params['IsUpdate']
        end
      end

      # Dts修改连接源参数
      class DtsModifyConnectParam < TencentCloud::Common::AbstractModel
        # @param Resource: Dts实例Id【不支持修改】
        # @type Resource: String
        # @param Port: Dts的连接port【不支持修改】
        # @type Port: Integer
        # @param GroupId: Dts消费分组的Id
        # @type GroupId: String
        # @param UserName: Dts消费分组的账号
        # @type UserName: String
        # @param Password: Dts消费分组的密码
        # @type Password: String
        # @param IsUpdate: 是否更新到关联的Datahub任务，默认为true
        # @type IsUpdate: Boolean
        # @param Topic: Dts订阅的topic【不支持修改】
        # @type Topic: String

        attr_accessor :Resource, :Port, :GroupId, :UserName, :Password, :IsUpdate, :Topic

        def initialize(resource=nil, port=nil, groupid=nil, username=nil, password=nil, isupdate=nil, topic=nil)
          @Resource = resource
          @Port = port
          @GroupId = groupid
          @UserName = username
          @Password = password
          @IsUpdate = isupdate
          @Topic = topic
        end

        def deserialize(params)
          @Resource = params['Resource']
          @Port = params['Port']
          @GroupId = params['GroupId']
          @UserName = params['UserName']
          @Password = params['Password']
          @IsUpdate = params['IsUpdate']
          @Topic = params['Topic']
        end
      end

      # Dts类型入参
      class DtsParam < TencentCloud::Common::AbstractModel
        # @param Resource: Dts实例Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param Ip: Dts的连接ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ip: String
        # @param Port: Dts的连接port
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param Topic: Dts订阅的topic
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Topic: String
        # @param GroupId: Dts消费分组的Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String
        # @param GroupUser: Dts消费分组的账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupUser: String
        # @param GroupPassword: Dts消费分组的密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupPassword: String
        # @param TranSql: false同步原始数据，true同步解析后的json格式数据,默认true
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranSql: Boolean

        attr_accessor :Resource, :Ip, :Port, :Topic, :GroupId, :GroupUser, :GroupPassword, :TranSql

        def initialize(resource=nil, ip=nil, port=nil, topic=nil, groupid=nil, groupuser=nil, grouppassword=nil, transql=nil)
          @Resource = resource
          @Ip = ip
          @Port = port
          @Topic = topic
          @GroupId = groupid
          @GroupUser = groupuser
          @GroupPassword = grouppassword
          @TranSql = transql
        end

        def deserialize(params)
          @Resource = params['Resource']
          @Ip = params['Ip']
          @Port = params['Port']
          @Topic = params['Topic']
          @GroupId = params['GroupId']
          @GroupUser = params['GroupUser']
          @GroupPassword = params['GroupPassword']
          @TranSql = params['TranSql']
        end
      end

      # 动态硬盘扩容配置
      class DynamicDiskConfig < TencentCloud::Common::AbstractModel
        # @param Enable: 动态硬盘扩容配置开关（0: 关闭，1: 开启）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enable: Integer
        # @param StepForwardPercentage: 每次磁盘动态扩容大小百分比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepForwardPercentage: Integer
        # @param DiskQuotaPercentage: 磁盘配额百分比触发条件，即消息达到此值触发硬盘自动扩容事件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskQuotaPercentage: Integer
        # @param MaxDiskSpace: 最大扩容硬盘大小，以 GB 为单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxDiskSpace: Integer

        attr_accessor :Enable, :StepForwardPercentage, :DiskQuotaPercentage, :MaxDiskSpace

        def initialize(enable=nil, stepforwardpercentage=nil, diskquotapercentage=nil, maxdiskspace=nil)
          @Enable = enable
          @StepForwardPercentage = stepforwardpercentage
          @DiskQuotaPercentage = diskquotapercentage
          @MaxDiskSpace = maxdiskspace
        end

        def deserialize(params)
          @Enable = params['Enable']
          @StepForwardPercentage = params['StepForwardPercentage']
          @DiskQuotaPercentage = params['DiskQuotaPercentage']
          @MaxDiskSpace = params['MaxDiskSpace']
        end
      end

      # 动态消息保留时间配置
      class DynamicRetentionTime < TencentCloud::Common::AbstractModel
        # @param Enable: 动态消息保留时间配置开关（0: 关闭，1: 开启）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enable: Integer
        # @param DiskQuotaPercentage: 磁盘配额百分比触发条件，即消息达到此值触发消息保留时间变更事件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskQuotaPercentage: Integer
        # @param StepForwardPercentage: 每次向前调整消息保留时间百分比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepForwardPercentage: Integer
        # @param BottomRetention: 保底时长，单位分钟
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BottomRetention: Integer

        attr_accessor :Enable, :DiskQuotaPercentage, :StepForwardPercentage, :BottomRetention

        def initialize(enable=nil, diskquotapercentage=nil, stepforwardpercentage=nil, bottomretention=nil)
          @Enable = enable
          @DiskQuotaPercentage = diskquotapercentage
          @StepForwardPercentage = stepforwardpercentage
          @BottomRetention = bottomretention
        end

        def deserialize(params)
          @Enable = params['Enable']
          @DiskQuotaPercentage = params['DiskQuotaPercentage']
          @StepForwardPercentage = params['StepForwardPercentage']
          @BottomRetention = params['BottomRetention']
        end
      end

      # Es连接源参数
      class EsConnectParam < TencentCloud::Common::AbstractModel
        # @param Port: Es的连接port
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param UserName: Es连接源的用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Password: Es连接源的密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param Resource: Es连接源的实例资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param SelfBuilt: Es连接源是否为自建集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelfBuilt: Boolean
        # @param ServiceVip: Es连接源的实例vip，当为腾讯云实例时，必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceVip: String
        # @param UniqVpcId: Es连接源的vpcId，当为腾讯云实例时，必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param IsUpdate: 是否更新到关联的Datahub任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUpdate: Boolean

        attr_accessor :Port, :UserName, :Password, :Resource, :SelfBuilt, :ServiceVip, :UniqVpcId, :IsUpdate

        def initialize(port=nil, username=nil, password=nil, resource=nil, selfbuilt=nil, servicevip=nil, uniqvpcid=nil, isupdate=nil)
          @Port = port
          @UserName = username
          @Password = password
          @Resource = resource
          @SelfBuilt = selfbuilt
          @ServiceVip = servicevip
          @UniqVpcId = uniqvpcid
          @IsUpdate = isupdate
        end

        def deserialize(params)
          @Port = params['Port']
          @UserName = params['UserName']
          @Password = params['Password']
          @Resource = params['Resource']
          @SelfBuilt = params['SelfBuilt']
          @ServiceVip = params['ServiceVip']
          @UniqVpcId = params['UniqVpcId']
          @IsUpdate = params['IsUpdate']
        end
      end

      # Es修改连接源参数
      class EsModifyConnectParam < TencentCloud::Common::AbstractModel
        # @param Resource: Es连接源的实例资源【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param Port: Es的连接port【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param ServiceVip: Es连接源的实例vip【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceVip: String
        # @param UniqVpcId: Es连接源的vpcId【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param UserName: Es连接源的用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Password: Es连接源的密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param SelfBuilt: Es连接源是否为自建集群【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelfBuilt: Boolean
        # @param IsUpdate: 是否更新到关联的Datahub任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUpdate: Boolean

        attr_accessor :Resource, :Port, :ServiceVip, :UniqVpcId, :UserName, :Password, :SelfBuilt, :IsUpdate

        def initialize(resource=nil, port=nil, servicevip=nil, uniqvpcid=nil, username=nil, password=nil, selfbuilt=nil, isupdate=nil)
          @Resource = resource
          @Port = port
          @ServiceVip = servicevip
          @UniqVpcId = uniqvpcid
          @UserName = username
          @Password = password
          @SelfBuilt = selfbuilt
          @IsUpdate = isupdate
        end

        def deserialize(params)
          @Resource = params['Resource']
          @Port = params['Port']
          @ServiceVip = params['ServiceVip']
          @UniqVpcId = params['UniqVpcId']
          @UserName = params['UserName']
          @Password = params['Password']
          @SelfBuilt = params['SelfBuilt']
          @IsUpdate = params['IsUpdate']
        end
      end

      # Es类型入参
      class EsParam < TencentCloud::Common::AbstractModel
        # @param Resource: 实例资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param Port: Es的连接port
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param UserName: Es用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Password: Es密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param SelfBuilt: 是否为自建集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelfBuilt: Boolean
        # @param ServiceVip: 实例vip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceVip: String
        # @param UniqVpcId: 实例的vpcId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param DropInvalidMessage: Es是否抛弃解析失败的消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DropInvalidMessage: Boolean
        # @param Index: Es自定义index名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: String
        # @param DateFormat: Es自定义日期后缀
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DateFormat: String
        # @param ContentKey: 非json格式数据的自定义key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContentKey: String
        # @param DropInvalidJsonMessage: Es是否抛弃非json格式的消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DropInvalidJsonMessage: Boolean
        # @param DocumentIdField: 转储到Es中的文档ID取值字段名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DocumentIdField: String
        # @param IndexType: Es自定义index名称的类型，STRING，JSONPATH，默认为STRING
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexType: String
        # @param DropCls: 当设置成员参数DropInvalidMessageToCls设置为true时,DropInvalidMessage参数失效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DropCls: :class:`Tencentcloud::Ckafka.v20190819.models.DropCls`
        # @param DatabasePrimaryKey: 转储到ES的消息为Database的binlog时，如果需要同步数据库操作，即增删改的操作到ES时填写数据库表主键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabasePrimaryKey: String
        # @param DropDlq: 死信队列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DropDlq: :class:`Tencentcloud::Ckafka.v20190819.models.FailureParam`
        # @param RecordMappingList: 使用数据订阅格式导入 es 时，消息与 es 索引字段映射关系。不填默认为默认字段匹配
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordMappingList: Array
        # @param DateField: 消息要映射为 es 索引中 @timestamp 的字段，如果当前配置为空，则使用消息的时间戳进行映射
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DateField: String
        # @param RecordMappingMode: 用来区分当前索引映射，属于新建索引还是存量索引。"EXIST_MAPPING"：从存量索引中选择；"NEW_MAPPING"：新建索引
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordMappingMode: String

        attr_accessor :Resource, :Port, :UserName, :Password, :SelfBuilt, :ServiceVip, :UniqVpcId, :DropInvalidMessage, :Index, :DateFormat, :ContentKey, :DropInvalidJsonMessage, :DocumentIdField, :IndexType, :DropCls, :DatabasePrimaryKey, :DropDlq, :RecordMappingList, :DateField, :RecordMappingMode

        def initialize(resource=nil, port=nil, username=nil, password=nil, selfbuilt=nil, servicevip=nil, uniqvpcid=nil, dropinvalidmessage=nil, index=nil, dateformat=nil, contentkey=nil, dropinvalidjsonmessage=nil, documentidfield=nil, indextype=nil, dropcls=nil, databaseprimarykey=nil, dropdlq=nil, recordmappinglist=nil, datefield=nil, recordmappingmode=nil)
          @Resource = resource
          @Port = port
          @UserName = username
          @Password = password
          @SelfBuilt = selfbuilt
          @ServiceVip = servicevip
          @UniqVpcId = uniqvpcid
          @DropInvalidMessage = dropinvalidmessage
          @Index = index
          @DateFormat = dateformat
          @ContentKey = contentkey
          @DropInvalidJsonMessage = dropinvalidjsonmessage
          @DocumentIdField = documentidfield
          @IndexType = indextype
          @DropCls = dropcls
          @DatabasePrimaryKey = databaseprimarykey
          @DropDlq = dropdlq
          @RecordMappingList = recordmappinglist
          @DateField = datefield
          @RecordMappingMode = recordmappingmode
        end

        def deserialize(params)
          @Resource = params['Resource']
          @Port = params['Port']
          @UserName = params['UserName']
          @Password = params['Password']
          @SelfBuilt = params['SelfBuilt']
          @ServiceVip = params['ServiceVip']
          @UniqVpcId = params['UniqVpcId']
          @DropInvalidMessage = params['DropInvalidMessage']
          @Index = params['Index']
          @DateFormat = params['DateFormat']
          @ContentKey = params['ContentKey']
          @DropInvalidJsonMessage = params['DropInvalidJsonMessage']
          @DocumentIdField = params['DocumentIdField']
          @IndexType = params['IndexType']
          unless params['DropCls'].nil?
            @DropCls = DropCls.new
            @DropCls.deserialize(params['DropCls'])
          end
          @DatabasePrimaryKey = params['DatabasePrimaryKey']
          unless params['DropDlq'].nil?
            @DropDlq = FailureParam.new
            @DropDlq.deserialize(params['DropDlq'])
          end
          unless params['RecordMappingList'].nil?
            @RecordMappingList = []
            params['RecordMappingList'].each do |i|
              esrecordmapping_tmp = EsRecordMapping.new
              esrecordmapping_tmp.deserialize(i)
              @RecordMappingList << esrecordmapping_tmp
            end
          end
          @DateField = params['DateField']
          @RecordMappingMode = params['RecordMappingMode']
        end
      end

      # 消息字段与 es 索引的映射关系
      class EsRecordMapping < TencentCloud::Common::AbstractModel
        # @param ColumnName: es 索引成员名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColumnName: String
        # @param JsonKey: 消息字段名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JsonKey: String

        attr_accessor :ColumnName, :JsonKey

        def initialize(columnname=nil, jsonkey=nil)
          @ColumnName = columnname
          @JsonKey = jsonkey
        end

        def deserialize(params)
          @ColumnName = params['ColumnName']
          @JsonKey = params['JsonKey']
        end
      end

      # EventBus配置
      class EventBusParam < TencentCloud::Common::AbstractModel
        # @param Type: 资源类型。EB_COS/EB_ES/EB_CLS
        # @type Type: String
        # @param SelfBuilt: 是否为自建集群
        # @type SelfBuilt: Boolean
        # @param Resource: 实例资源
        # @type Resource: String
        # @param Namespace: SCF云函数命名空间
        # @type Namespace: String
        # @param FunctionName: SCF云函数函数名
        # @type FunctionName: String
        # @param Qualifier: SCF云函数版本及别名
        # @type Qualifier: String

        attr_accessor :Type, :SelfBuilt, :Resource, :Namespace, :FunctionName, :Qualifier

        def initialize(type=nil, selfbuilt=nil, resource=nil, namespace=nil, functionname=nil, qualifier=nil)
          @Type = type
          @SelfBuilt = selfbuilt
          @Resource = resource
          @Namespace = namespace
          @FunctionName = functionname
          @Qualifier = qualifier
        end

        def deserialize(params)
          @Type = params['Type']
          @SelfBuilt = params['SelfBuilt']
          @Resource = params['Resource']
          @Namespace = params['Namespace']
          @FunctionName = params['FunctionName']
          @Qualifier = params['Qualifier']
        end
      end

      # 数据处理规则失败处理
      class FailureParam < TencentCloud::Common::AbstractModel
        # @param Type: 类型，DLQ死信队列，IGNORE_ERROR保留，DROP废弃
        # @type Type: String
        # @param KafkaParam: Ckafka类型死信队列
        # @type KafkaParam: :class:`Tencentcloud::Ckafka.v20190819.models.KafkaParam`
        # @param RetryInterval: 重试间隔
        # @type RetryInterval: Integer
        # @param MaxRetryAttempts: 重试次数
        # @type MaxRetryAttempts: Integer
        # @param TopicParam: DIP Topic类型死信队列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicParam: :class:`Tencentcloud::Ckafka.v20190819.models.TopicParam`
        # @param DlqType: 死信队列类型，CKAFKA，TOPIC
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DlqType: String

        attr_accessor :Type, :KafkaParam, :RetryInterval, :MaxRetryAttempts, :TopicParam, :DlqType

        def initialize(type=nil, kafkaparam=nil, retryinterval=nil, maxretryattempts=nil, topicparam=nil, dlqtype=nil)
          @Type = type
          @KafkaParam = kafkaparam
          @RetryInterval = retryinterval
          @MaxRetryAttempts = maxretryattempts
          @TopicParam = topicparam
          @DlqType = dlqtype
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['KafkaParam'].nil?
            @KafkaParam = KafkaParam.new
            @KafkaParam.deserialize(params['KafkaParam'])
          end
          @RetryInterval = params['RetryInterval']
          @MaxRetryAttempts = params['MaxRetryAttempts']
          unless params['TopicParam'].nil?
            @TopicParam = TopicParam.new
            @TopicParam.deserialize(params['TopicParam'])
          end
          @DlqType = params['DlqType']
        end
      end

      # FetchDatahubMessageByOffset请求参数结构体
      class FetchDatahubMessageByOffsetRequest < TencentCloud::Common::AbstractModel
        # @param Name: 主题名
        # @type Name: String
        # @param Partition: 分区id
        # @type Partition: Integer
        # @param Offset: 位点信息，必填
        # @type Offset: Integer

        attr_accessor :Name, :Partition, :Offset

        def initialize(name=nil, partition=nil, offset=nil)
          @Name = name
          @Partition = partition
          @Offset = offset
        end

        def deserialize(params)
          @Name = params['Name']
          @Partition = params['Partition']
          @Offset = params['Offset']
        end
      end

      # FetchDatahubMessageByOffset返回参数结构体
      class FetchDatahubMessageByOffsetResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.ConsumerRecord`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ConsumerRecord.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # FetchLatestDatahubMessageList请求参数结构体
      class FetchLatestDatahubMessageListRequest < TencentCloud::Common::AbstractModel
        # @param Name: 主题名
        # @type Name: String
        # @param Partition: 分区id
        # @type Partition: Integer
        # @param Offset: 位点信息
        # @type Offset: Integer
        # @param MessageCount: 最大查询条数，最小1，最大100
        # @type MessageCount: Integer

        attr_accessor :Name, :Partition, :Offset, :MessageCount

        def initialize(name=nil, partition=nil, offset=nil, messagecount=nil)
          @Name = name
          @Partition = partition
          @Offset = offset
          @MessageCount = messagecount
        end

        def deserialize(params)
          @Name = params['Name']
          @Partition = params['Partition']
          @Offset = params['Offset']
          @MessageCount = params['MessageCount']
        end
      end

      # FetchLatestDatahubMessageList返回参数结构体
      class FetchLatestDatahubMessageListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果。
        # @type Result: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              consumerrecord_tmp = ConsumerRecord.new
              consumerrecord_tmp.deserialize(i)
              @Result << consumerrecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # FetchMessageByOffset请求参数结构体
      class FetchMessageByOffsetRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Topic: 主题名
        # @type Topic: String
        # @param Partition: 分区id
        # @type Partition: Integer
        # @param Offset: 位点信息，必填
        # @type Offset: Integer

        attr_accessor :InstanceId, :Topic, :Partition, :Offset

        def initialize(instanceid=nil, topic=nil, partition=nil, offset=nil)
          @InstanceId = instanceid
          @Topic = topic
          @Partition = partition
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Topic = params['Topic']
          @Partition = params['Partition']
          @Offset = params['Offset']
        end
      end

      # FetchMessageByOffset返回参数结构体
      class FetchMessageByOffsetResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.ConsumerRecord`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ConsumerRecord.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # FetchMessageListByOffset请求参数结构体
      class FetchMessageListByOffsetRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Topic: 主题名
        # @type Topic: String
        # @param Partition: 分区id
        # @type Partition: Integer
        # @param Offset: 位点信息
        # @type Offset: Integer
        # @param SinglePartitionRecordNumber: 最大查询条数，默认20，最大20
        # @type SinglePartitionRecordNumber: Integer

        attr_accessor :InstanceId, :Topic, :Partition, :Offset, :SinglePartitionRecordNumber

        def initialize(instanceid=nil, topic=nil, partition=nil, offset=nil, singlepartitionrecordnumber=nil)
          @InstanceId = instanceid
          @Topic = topic
          @Partition = partition
          @Offset = offset
          @SinglePartitionRecordNumber = singlepartitionrecordnumber
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Topic = params['Topic']
          @Partition = params['Partition']
          @Offset = params['Offset']
          @SinglePartitionRecordNumber = params['SinglePartitionRecordNumber']
        end
      end

      # FetchMessageListByOffset返回参数结构体
      class FetchMessageListByOffsetResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果。注意，列表中不返回具体的消息内容（key、value），如果需要查询具体消息内容，请使用FetchMessageByOffset接口
        # @type Result: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              consumerrecord_tmp = ConsumerRecord.new
              consumerrecord_tmp.deserialize(i)
              @Result << consumerrecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # FetchMessageListByTimestamp请求参数结构体
      class FetchMessageListByTimestampRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Topic: 主题名
        # @type Topic: String
        # @param Partition: 分区id
        # @type Partition: Integer
        # @param StartTime: 查询开始时间，13位时间戳
        # @type StartTime: Integer
        # @param SinglePartitionRecordNumber: 最大查询条数，默认20，最大20
        # @type SinglePartitionRecordNumber: Integer

        attr_accessor :InstanceId, :Topic, :Partition, :StartTime, :SinglePartitionRecordNumber

        def initialize(instanceid=nil, topic=nil, partition=nil, starttime=nil, singlepartitionrecordnumber=nil)
          @InstanceId = instanceid
          @Topic = topic
          @Partition = partition
          @StartTime = starttime
          @SinglePartitionRecordNumber = singlepartitionrecordnumber
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Topic = params['Topic']
          @Partition = params['Partition']
          @StartTime = params['StartTime']
          @SinglePartitionRecordNumber = params['SinglePartitionRecordNumber']
        end
      end

      # FetchMessageListByTimestamp返回参数结构体
      class FetchMessageListByTimestampResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果。注意，列表中不返回具体的消息内容（key、value），如果需要查询具体消息内容，请使用FetchMessageByOffset接口
        # @type Result: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              consumerrecord_tmp = ConsumerRecord.new
              consumerrecord_tmp.deserialize(i)
              @Result << consumerrecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 数据处理——处理链
      class FieldParam < TencentCloud::Common::AbstractModel
        # @param Analyse: 解析
        # @type Analyse: :class:`Tencentcloud::Ckafka.v20190819.models.AnalyseParam`
        # @param SecondaryAnalyse: 二次解析
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecondaryAnalyse: :class:`Tencentcloud::Ckafka.v20190819.models.SecondaryAnalyseParam`
        # @param SMT: 数据处理
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SMT: Array
        # @param Result: 测试结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
        # @param AnalyseResult: 解析结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnalyseResult: Array
        # @param SecondaryAnalyseResult: 二次解析结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecondaryAnalyseResult: Array
        # @param AnalyseJsonResult: JSON格式解析结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnalyseJsonResult: String
        # @param SecondaryAnalyseJsonResult: JSON格式二次解析结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecondaryAnalyseJsonResult: String

        attr_accessor :Analyse, :SecondaryAnalyse, :SMT, :Result, :AnalyseResult, :SecondaryAnalyseResult, :AnalyseJsonResult, :SecondaryAnalyseJsonResult

        def initialize(analyse=nil, secondaryanalyse=nil, smt=nil, result=nil, analyseresult=nil, secondaryanalyseresult=nil, analysejsonresult=nil, secondaryanalysejsonresult=nil)
          @Analyse = analyse
          @SecondaryAnalyse = secondaryanalyse
          @SMT = smt
          @Result = result
          @AnalyseResult = analyseresult
          @SecondaryAnalyseResult = secondaryanalyseresult
          @AnalyseJsonResult = analysejsonresult
          @SecondaryAnalyseJsonResult = secondaryanalysejsonresult
        end

        def deserialize(params)
          unless params['Analyse'].nil?
            @Analyse = AnalyseParam.new
            @Analyse.deserialize(params['Analyse'])
          end
          unless params['SecondaryAnalyse'].nil?
            @SecondaryAnalyse = SecondaryAnalyseParam.new
            @SecondaryAnalyse.deserialize(params['SecondaryAnalyse'])
          end
          unless params['SMT'].nil?
            @SMT = []
            params['SMT'].each do |i|
              smtparam_tmp = SMTParam.new
              smtparam_tmp.deserialize(i)
              @SMT << smtparam_tmp
            end
          end
          @Result = params['Result']
          unless params['AnalyseResult'].nil?
            @AnalyseResult = []
            params['AnalyseResult'].each do |i|
              smtparam_tmp = SMTParam.new
              smtparam_tmp.deserialize(i)
              @AnalyseResult << smtparam_tmp
            end
          end
          unless params['SecondaryAnalyseResult'].nil?
            @SecondaryAnalyseResult = []
            params['SecondaryAnalyseResult'].each do |i|
              smtparam_tmp = SMTParam.new
              smtparam_tmp.deserialize(i)
              @SecondaryAnalyseResult << smtparam_tmp
            end
          end
          @AnalyseJsonResult = params['AnalyseJsonResult']
          @SecondaryAnalyseJsonResult = params['SecondaryAnalyseJsonResult']
        end
      end

      # 查询过滤器
      # >描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等
      # > * 若存在多个`Filter`时，`Filter`间的关系为逻辑与（`AND`）关系。
      # > * 若同一个`Filter`存在多个`Values`，同一`Filter`下`Values`间的关系为逻辑或（`OR`）关系。
      # >
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 需要过滤的字段。
        # @type Name: String
        # @param Values: 字段的过滤值。
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

      # 过滤器参数
      class FilterMapParam < TencentCloud::Common::AbstractModel
        # @param Key: Key值
        # @type Key: String
        # @param MatchMode: 匹配模式，前缀匹配PREFIX，后缀匹配SUFFIX，包含匹配CONTAINS，EXCEPT除外匹配，数值匹配NUMBER，IP匹配IP
        # @type MatchMode: String
        # @param Value: Value值
        # @type Value: String
        # @param Type: 固定REGULAR
        # @type Type: String

        attr_accessor :Key, :MatchMode, :Value, :Type

        def initialize(key=nil, matchmode=nil, value=nil, type=nil)
          @Key = key
          @MatchMode = matchmode
          @Value = value
          @Type = type
        end

        def deserialize(params)
          @Key = params['Key']
          @MatchMode = params['MatchMode']
          @Value = params['Value']
          @Type = params['Type']
        end
      end

      # 组实体
      class Group < TencentCloud::Common::AbstractModel
        # @param GroupName: 组名称
        # @type GroupName: String

        attr_accessor :GroupName

        def initialize(groupname=nil)
          @GroupName = groupname
        end

        def deserialize(params)
          @GroupName = params['GroupName']
        end
      end

      # consumer信息
      class GroupInfoMember < TencentCloud::Common::AbstractModel
        # @param MemberId: coordinator 为消费分组中的消费者生成的唯一 ID
        # @type MemberId: String
        # @param ClientId: 客户消费者 SDK 自己设置的 client.id 信息
        # @type ClientId: String
        # @param ClientHost: 一般存储客户的 IP 地址
        # @type ClientHost: String
        # @param Assignment: 存储着分配给该消费者的 partition 信息
        # @type Assignment: :class:`Tencentcloud::Ckafka.v20190819.models.Assignment`

        attr_accessor :MemberId, :ClientId, :ClientHost, :Assignment

        def initialize(memberid=nil, clientid=nil, clienthost=nil, assignment=nil)
          @MemberId = memberid
          @ClientId = clientid
          @ClientHost = clienthost
          @Assignment = assignment
        end

        def deserialize(params)
          @MemberId = params['MemberId']
          @ClientId = params['ClientId']
          @ClientHost = params['ClientHost']
          unless params['Assignment'].nil?
            @Assignment = Assignment.new
            @Assignment.deserialize(params['Assignment'])
          end
        end
      end

      # GroupInfo返回数据的实体
      class GroupInfoResponse < TencentCloud::Common::AbstractModel
        # @param ErrorCode: 错误码，正常为0
        # @type ErrorCode: String
        # @param State: group 状态描述（常见的为 Empty、Stable、Dead 三种状态）：
        # Dead：消费分组不存在
        # Empty：消费分组，当前没有任何消费者订阅
        # PreparingRebalance：消费分组处于 rebalance 状态
        # CompletingRebalance：消费分组处于 rebalance 状态
        # Stable：消费分组中各个消费者已经加入，处于稳定状态
        # @type State: String
        # @param ProtocolType: 消费分组选择的协议类型正常的消费者一般为 consumer 但有些系统采用了自己的协议如 kafka-connect 用的就是 connect。只有标准的 consumer 协议，本接口才知道具体的分配方式的格式，才能解析到具体的 partition 的分配情况
        # @type ProtocolType: String
        # @param Protocol: 消费者 partition 分配算法常见的有如下几种(Kafka 消费者 SDK 默认的选择项为 range)：range、 roundrobin、 sticky
        # @type Protocol: String
        # @param Members: 仅当 state 为 Stable 且 protocol_type 为 consumer 时， 该数组才包含信息
        # @type Members: Array
        # @param Group: Kafka 消费分组
        # @type Group: String

        attr_accessor :ErrorCode, :State, :ProtocolType, :Protocol, :Members, :Group

        def initialize(errorcode=nil, state=nil, protocoltype=nil, protocol=nil, members=nil, group=nil)
          @ErrorCode = errorcode
          @State = state
          @ProtocolType = protocoltype
          @Protocol = protocol
          @Members = members
          @Group = group
        end

        def deserialize(params)
          @ErrorCode = params['ErrorCode']
          @State = params['State']
          @ProtocolType = params['ProtocolType']
          @Protocol = params['Protocol']
          unless params['Members'].nil?
            @Members = []
            params['Members'].each do |i|
              groupinfomember_tmp = GroupInfoMember.new
              groupinfomember_tmp.deserialize(i)
              @Members << groupinfomember_tmp
            end
          end
          @Group = params['Group']
        end
      end

      # GroupInfo内部topic对象
      class GroupInfoTopics < TencentCloud::Common::AbstractModel
        # @param Topic: 分配的 topic 名称
        # @type Topic: String
        # @param Partitions: 分配的 partition 信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Partitions: Array

        attr_accessor :Topic, :Partitions

        def initialize(topic=nil, partitions=nil)
          @Topic = topic
          @Partitions = partitions
        end

        def deserialize(params)
          @Topic = params['Topic']
          @Partitions = params['Partitions']
        end
      end

      # 组偏移量分区对象
      class GroupOffsetPartition < TencentCloud::Common::AbstractModel
        # @param Partition: topic 的 partitionId
        # @type Partition: Integer
        # @param Offset: consumer 提交的 offset 位置
        # @type Offset: Integer
        # @param Metadata: 支持消费者提交消息时，传入 metadata 作为它用，当前一般为空字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metadata: String
        # @param ErrorCode: 错误码
        # @type ErrorCode: Integer
        # @param LogEndOffset: 当前 partition 最新的 offset
        # @type LogEndOffset: Integer
        # @param Lag: 未消费的消息个数
        # @type Lag: Integer

        attr_accessor :Partition, :Offset, :Metadata, :ErrorCode, :LogEndOffset, :Lag

        def initialize(partition=nil, offset=nil, metadata=nil, errorcode=nil, logendoffset=nil, lag=nil)
          @Partition = partition
          @Offset = offset
          @Metadata = metadata
          @ErrorCode = errorcode
          @LogEndOffset = logendoffset
          @Lag = lag
        end

        def deserialize(params)
          @Partition = params['Partition']
          @Offset = params['Offset']
          @Metadata = params['Metadata']
          @ErrorCode = params['ErrorCode']
          @LogEndOffset = params['LogEndOffset']
          @Lag = params['Lag']
        end
      end

      # 消费组偏移量返回结果
      class GroupOffsetResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合调节的总结果数
        # @type TotalCount: Integer
        # @param TopicList: 该主题分区数组，其中每个元素为一个 json object
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicList: Array

        attr_accessor :TotalCount, :TopicList

        def initialize(totalcount=nil, topiclist=nil)
          @TotalCount = totalcount
          @TopicList = topiclist
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TopicList'].nil?
            @TopicList = []
            params['TopicList'].each do |i|
              groupoffsettopic_tmp = GroupOffsetTopic.new
              groupoffsettopic_tmp.deserialize(i)
              @TopicList << groupoffsettopic_tmp
            end
          end
        end
      end

      # 消费分组主题对象
      class GroupOffsetTopic < TencentCloud::Common::AbstractModel
        # @param Topic: 主题名称
        # @type Topic: String
        # @param Partitions: 该主题分区数组，其中每个元素为一个 json object
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Partitions: Array

        attr_accessor :Topic, :Partitions

        def initialize(topic=nil, partitions=nil)
          @Topic = topic
          @Partitions = partitions
        end

        def deserialize(params)
          @Topic = params['Topic']
          unless params['Partitions'].nil?
            @Partitions = []
            params['Partitions'].each do |i|
              groupoffsetpartition_tmp = GroupOffsetPartition.new
              groupoffsetpartition_tmp.deserialize(i)
              @Partitions << groupoffsetpartition_tmp
            end
          end
        end
      end

      # DescribeGroup的返回
      class GroupResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 计数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param GroupList: GroupList
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupList: Array
        # @param GroupCountQuota: 消费分组配额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupCountQuota: Integer

        attr_accessor :TotalCount, :GroupList, :GroupCountQuota

        def initialize(totalcount=nil, grouplist=nil, groupcountquota=nil)
          @TotalCount = totalcount
          @GroupList = grouplist
          @GroupCountQuota = groupcountquota
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['GroupList'].nil?
            @GroupList = []
            params['GroupList'].each do |i|
              describegroup_tmp = DescribeGroup.new
              describegroup_tmp.deserialize(i)
              @GroupList << describegroup_tmp
            end
          end
          @GroupCountQuota = params['GroupCountQuota']
        end
      end

      # InquireCkafkaPrice请求参数结构体
      class InquireCkafkaPriceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceType: 国内站标准版填写standards2, 国际站标准版填写standard,专业版填写profession,高级版填写premium
        # @type InstanceType: String
        # @param InstanceChargeParam: 购买/续费付费类型(购买时不填的话, 默认获取购买包年包月一个月的费用)
        # @type InstanceChargeParam: :class:`Tencentcloud::Ckafka.v20190819.models.InstanceChargeParam`
        # @param InstanceNum: 购买/续费时购买的实例数量(不填时, 默认为1个)
        # @type InstanceNum: Integer
        # @param Bandwidth: 实例内网带宽大小, 单位MB/s (购买时必填，专业版/高级版询价时带宽信息必填)
        # @type Bandwidth: Integer
        # @param InquiryDiskParam: 实例的硬盘购买类型以及大小 (购买时必填，专业版/高级版询价时磁盘信息必填)
        # @type InquiryDiskParam: :class:`Tencentcloud::Ckafka.v20190819.models.InquiryDiskParam`
        # @param MessageRetention: 实例消息保留时间大小, 单位小时 (购买时必填)
        # @type MessageRetention: Integer
        # @param Topic: 购买实例topic数, 单位个 (购买时必填)
        # @type Topic: Integer
        # @param Partition: 购买实例分区数, 单位个 (购买时必填，专业版/高级版询价时带宽信息必填)
        # @type Partition: Integer
        # @param ZoneIds: 购买地域, 可通过查看DescribeCkafkaZone这个接口获取ZoneId
        # @type ZoneIds: Array
        # @param CategoryAction: 标记操作, 新购填写purchase, 续费填写renew, (不填时, 默认为purchase)
        # @type CategoryAction: String
        # @param BillType: 国内站购买的版本, sv_ckafka_instance_s2_1(入门型), sv_ckafka_instance_s2_2(标准版), sv_ckafka_instance_s2_3(进阶型), 如果instanceType为standards2, 但该参数为空, 则默认值为sv_ckafka_instance_s2_1
        # @type BillType: String
        # @param PublicNetworkParam: 公网带宽计费模式, 目前只有专业版支持公网带宽 (购买公网带宽时必填)
        # @type PublicNetworkParam: :class:`Tencentcloud::Ckafka.v20190819.models.InquiryPublicNetworkParam`
        # @param InstanceId: 续费时的实例id, 续费时填写
        # @type InstanceId: String

        attr_accessor :InstanceType, :InstanceChargeParam, :InstanceNum, :Bandwidth, :InquiryDiskParam, :MessageRetention, :Topic, :Partition, :ZoneIds, :CategoryAction, :BillType, :PublicNetworkParam, :InstanceId

        def initialize(instancetype=nil, instancechargeparam=nil, instancenum=nil, bandwidth=nil, inquirydiskparam=nil, messageretention=nil, topic=nil, partition=nil, zoneids=nil, categoryaction=nil, billtype=nil, publicnetworkparam=nil, instanceid=nil)
          @InstanceType = instancetype
          @InstanceChargeParam = instancechargeparam
          @InstanceNum = instancenum
          @Bandwidth = bandwidth
          @InquiryDiskParam = inquirydiskparam
          @MessageRetention = messageretention
          @Topic = topic
          @Partition = partition
          @ZoneIds = zoneids
          @CategoryAction = categoryaction
          @BillType = billtype
          @PublicNetworkParam = publicnetworkparam
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceType = params['InstanceType']
          unless params['InstanceChargeParam'].nil?
            @InstanceChargeParam = InstanceChargeParam.new
            @InstanceChargeParam.deserialize(params['InstanceChargeParam'])
          end
          @InstanceNum = params['InstanceNum']
          @Bandwidth = params['Bandwidth']
          unless params['InquiryDiskParam'].nil?
            @InquiryDiskParam = InquiryDiskParam.new
            @InquiryDiskParam.deserialize(params['InquiryDiskParam'])
          end
          @MessageRetention = params['MessageRetention']
          @Topic = params['Topic']
          @Partition = params['Partition']
          @ZoneIds = params['ZoneIds']
          @CategoryAction = params['CategoryAction']
          @BillType = params['BillType']
          unless params['PublicNetworkParam'].nil?
            @PublicNetworkParam = InquiryPublicNetworkParam.new
            @PublicNetworkParam.deserialize(params['PublicNetworkParam'])
          end
          @InstanceId = params['InstanceId']
        end
      end

      # InquireCkafkaPrice接口询价返回值
      class InquireCkafkaPriceResp < TencentCloud::Common::AbstractModel
        # @param InstancePrice: 实例价格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstancePrice: :class:`Tencentcloud::Ckafka.v20190819.models.InquiryPrice`
        # @param PublicNetworkBandwidthPrice: 公网带宽价格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicNetworkBandwidthPrice: :class:`Tencentcloud::Ckafka.v20190819.models.InquiryPrice`

        attr_accessor :InstancePrice, :PublicNetworkBandwidthPrice

        def initialize(instanceprice=nil, publicnetworkbandwidthprice=nil)
          @InstancePrice = instanceprice
          @PublicNetworkBandwidthPrice = publicnetworkbandwidthprice
        end

        def deserialize(params)
          unless params['InstancePrice'].nil?
            @InstancePrice = InquiryPrice.new
            @InstancePrice.deserialize(params['InstancePrice'])
          end
          unless params['PublicNetworkBandwidthPrice'].nil?
            @PublicNetworkBandwidthPrice = InquiryPrice.new
            @PublicNetworkBandwidthPrice.deserialize(params['PublicNetworkBandwidthPrice'])
          end
        end
      end

      # InquireCkafkaPrice返回参数结构体
      class InquireCkafkaPriceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 出参
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.InquireCkafkaPriceResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = InquireCkafkaPriceResp.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 询价返回参数
      class InquiryBasePrice < TencentCloud::Common::AbstractModel
        # @param UnitPrice: 单位原价
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPrice: Float
        # @param UnitPriceDiscount: 折扣单位价格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPriceDiscount: Float
        # @param OriginalPrice: 合计原价
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalPrice: Float
        # @param DiscountPrice: 折扣合计价格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscountPrice: Float
        # @param Discount: 折扣(单位是%)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Discount: Float
        # @param GoodsNum: 商品数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GoodsNum: Integer
        # @param Currency: 付费货币
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Currency: String
        # @param DiskType: 硬盘专用返回参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskType: String
        # @param TimeSpan: 购买时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeSpan: Integer
        # @param TimeUnit: 购买时长单位("m"按月, "h"按小时)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeUnit: String
        # @param Value: 购买数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: Integer

        attr_accessor :UnitPrice, :UnitPriceDiscount, :OriginalPrice, :DiscountPrice, :Discount, :GoodsNum, :Currency, :DiskType, :TimeSpan, :TimeUnit, :Value

        def initialize(unitprice=nil, unitpricediscount=nil, originalprice=nil, discountprice=nil, discount=nil, goodsnum=nil, currency=nil, disktype=nil, timespan=nil, timeunit=nil, value=nil)
          @UnitPrice = unitprice
          @UnitPriceDiscount = unitpricediscount
          @OriginalPrice = originalprice
          @DiscountPrice = discountprice
          @Discount = discount
          @GoodsNum = goodsnum
          @Currency = currency
          @DiskType = disktype
          @TimeSpan = timespan
          @TimeUnit = timeunit
          @Value = value
        end

        def deserialize(params)
          @UnitPrice = params['UnitPrice']
          @UnitPriceDiscount = params['UnitPriceDiscount']
          @OriginalPrice = params['OriginalPrice']
          @DiscountPrice = params['DiscountPrice']
          @Discount = params['Discount']
          @GoodsNum = params['GoodsNum']
          @Currency = params['Currency']
          @DiskType = params['DiskType']
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
          @Value = params['Value']
        end
      end

      # 详细类别的价格
      class InquiryDetailPrice < TencentCloud::Common::AbstractModel
        # @param BandwidthPrice: 额外内网带宽价格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BandwidthPrice: :class:`Tencentcloud::Ckafka.v20190819.models.InquiryBasePrice`
        # @param DiskPrice: 硬盘价格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskPrice: :class:`Tencentcloud::Ckafka.v20190819.models.InquiryBasePrice`
        # @param PartitionPrice: 额外分区价格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PartitionPrice: :class:`Tencentcloud::Ckafka.v20190819.models.InquiryBasePrice`
        # @param TopicPrice: 额外Topic价格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicPrice: :class:`Tencentcloud::Ckafka.v20190819.models.InquiryBasePrice`
        # @param InstanceTypePrice: 实例套餐价格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceTypePrice: :class:`Tencentcloud::Ckafka.v20190819.models.InquiryBasePrice`

        attr_accessor :BandwidthPrice, :DiskPrice, :PartitionPrice, :TopicPrice, :InstanceTypePrice

        def initialize(bandwidthprice=nil, diskprice=nil, partitionprice=nil, topicprice=nil, instancetypeprice=nil)
          @BandwidthPrice = bandwidthprice
          @DiskPrice = diskprice
          @PartitionPrice = partitionprice
          @TopicPrice = topicprice
          @InstanceTypePrice = instancetypeprice
        end

        def deserialize(params)
          unless params['BandwidthPrice'].nil?
            @BandwidthPrice = InquiryBasePrice.new
            @BandwidthPrice.deserialize(params['BandwidthPrice'])
          end
          unless params['DiskPrice'].nil?
            @DiskPrice = InquiryBasePrice.new
            @DiskPrice.deserialize(params['DiskPrice'])
          end
          unless params['PartitionPrice'].nil?
            @PartitionPrice = InquiryBasePrice.new
            @PartitionPrice.deserialize(params['PartitionPrice'])
          end
          unless params['TopicPrice'].nil?
            @TopicPrice = InquiryBasePrice.new
            @TopicPrice.deserialize(params['TopicPrice'])
          end
          unless params['InstanceTypePrice'].nil?
            @InstanceTypePrice = InquiryBasePrice.new
            @InstanceTypePrice.deserialize(params['InstanceTypePrice'])
          end
        end
      end

      # 购买硬盘参数
      class InquiryDiskParam < TencentCloud::Common::AbstractModel
        # @param DiskType: 购买硬盘类型: SSD(SSD), CLOUD_SSD(SSD云硬盘), CLOUD_PREMIUM(高性能云硬盘), CLOUD_BASIC(云盘)
        # @type DiskType: String
        # @param DiskSize: 购买硬盘大小: 单位GB
        # @type DiskSize: Integer

        attr_accessor :DiskType, :DiskSize

        def initialize(disktype=nil, disksize=nil)
          @DiskType = disktype
          @DiskSize = disksize
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
        end
      end

      # 询价返回参数
      class InquiryPrice < TencentCloud::Common::AbstractModel
        # @param UnitPrice: 单位原价
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPrice: Float
        # @param UnitPriceDiscount: 折扣单位价格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPriceDiscount: Float
        # @param OriginalPrice: 合计原价
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalPrice: Float
        # @param DiscountPrice: 折扣合计价格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscountPrice: Float
        # @param Discount: 折扣(单位是%)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Discount: Float
        # @param GoodsNum: 商品数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GoodsNum: Integer
        # @param Currency: 付费货币
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Currency: String
        # @param DiskType: 硬盘专用返回参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskType: String
        # @param TimeSpan: 购买时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeSpan: Integer
        # @param TimeUnit: 购买时长单位("m"按月, "h"按小时)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeUnit: String
        # @param Value: 购买数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: Integer
        # @param DetailPrices: 详细类别的价格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DetailPrices: :class:`Tencentcloud::Ckafka.v20190819.models.InquiryDetailPrice`

        attr_accessor :UnitPrice, :UnitPriceDiscount, :OriginalPrice, :DiscountPrice, :Discount, :GoodsNum, :Currency, :DiskType, :TimeSpan, :TimeUnit, :Value, :DetailPrices

        def initialize(unitprice=nil, unitpricediscount=nil, originalprice=nil, discountprice=nil, discount=nil, goodsnum=nil, currency=nil, disktype=nil, timespan=nil, timeunit=nil, value=nil, detailprices=nil)
          @UnitPrice = unitprice
          @UnitPriceDiscount = unitpricediscount
          @OriginalPrice = originalprice
          @DiscountPrice = discountprice
          @Discount = discount
          @GoodsNum = goodsnum
          @Currency = currency
          @DiskType = disktype
          @TimeSpan = timespan
          @TimeUnit = timeunit
          @Value = value
          @DetailPrices = detailprices
        end

        def deserialize(params)
          @UnitPrice = params['UnitPrice']
          @UnitPriceDiscount = params['UnitPriceDiscount']
          @OriginalPrice = params['OriginalPrice']
          @DiscountPrice = params['DiscountPrice']
          @Discount = params['Discount']
          @GoodsNum = params['GoodsNum']
          @Currency = params['Currency']
          @DiskType = params['DiskType']
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
          @Value = params['Value']
          unless params['DetailPrices'].nil?
            @DetailPrices = InquiryDetailPrice.new
            @DetailPrices.deserialize(params['DetailPrices'])
          end
        end
      end

      # 公网带宽参数
      class InquiryPublicNetworkParam < TencentCloud::Common::AbstractModel
        # @param PublicNetworkChargeType: 公网计费模式: BANDWIDTH_PREPAID(包年包月), BANDWIDTH_POSTPAID_BY_HOUR(带宽按小时计费)
        # @type PublicNetworkChargeType: String
        # @param PublicNetworkMonthly: 公网带宽, 单位MB
        # @type PublicNetworkMonthly: Integer

        attr_accessor :PublicNetworkChargeType, :PublicNetworkMonthly

        def initialize(publicnetworkchargetype=nil, publicnetworkmonthly=nil)
          @PublicNetworkChargeType = publicnetworkchargetype
          @PublicNetworkMonthly = publicnetworkmonthly
        end

        def deserialize(params)
          @PublicNetworkChargeType = params['PublicNetworkChargeType']
          @PublicNetworkMonthly = params['PublicNetworkMonthly']
        end
      end

      # 实例对象
      class Instance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param Status: 实例的状态。0：创建中，1：运行中，2：删除中 ， 5 隔离中，-1 创建失败
        # @type Status: Integer
        # @param IfCommunity: 是否开源实例。开源：true，不开源：false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IfCommunity: Boolean

        attr_accessor :InstanceId, :InstanceName, :Status, :IfCommunity

        def initialize(instanceid=nil, instancename=nil, status=nil, ifcommunity=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Status = status
          @IfCommunity = ifcommunity
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Status = params['Status']
          @IfCommunity = params['IfCommunity']
        end
      end

      # 实例属性返回结果对象
      class InstanceAttributesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param VipList: 接入点 VIP 列表信息
        # @type VipList: Array
        # @param Vip: 虚拟IP
        # @type Vip: String
        # @param Vport: 虚拟端口
        # @type Vport: String
        # @param Status: 实例的状态。0：创建中，1：运行中，2：删除中
        # @type Status: Integer
        # @param Bandwidth: 实例带宽，单位：Mbps
        # @type Bandwidth: Integer
        # @param DiskSize: 实例的存储大小，单位：GB
        # @type DiskSize: Integer
        # @param ZoneId: 可用区
        # @type ZoneId: Integer
        # @param VpcId: VPC 的 ID，为空表示是基础网络
        # @type VpcId: String
        # @param SubnetId: 子网 ID， 为空表示基础网络
        # @type SubnetId: String
        # @param Healthy: 实例健康状态， 1：健康，2：告警，3：异常
        # @type Healthy: Integer
        # @param HealthyMessage: 实例健康信息，当前会展示磁盘利用率，最大长度为256
        # @type HealthyMessage: String
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param MsgRetentionTime: 消息保存时间,单位为分钟
        # @type MsgRetentionTime: Integer
        # @param Config: 自动创建 Topic 配置， 若该字段为空，则表示未开启自动创建
        # @type Config: :class:`Tencentcloud::Ckafka.v20190819.models.InstanceConfigDO`
        # @param RemainderPartitions: 剩余创建分区数
        # @type RemainderPartitions: Integer
        # @param RemainderTopics: 剩余创建主题数
        # @type RemainderTopics: Integer
        # @param CreatedPartitions: 当前创建分区数
        # @type CreatedPartitions: Integer
        # @param CreatedTopics: 当前创建主题数
        # @type CreatedTopics: Integer
        # @param Tags: 标签数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param ExpireTime: 过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: Integer
        # @param ZoneIds: 跨可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneIds: Array
        # @param Version: kafka版本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param MaxGroupNum: 最大分组数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxGroupNum: Integer
        # @param Cvm: 售卖类型,0:标准版,1:专业版
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cvm: Integer
        # @param InstanceType: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param Features: 表示该实例支持的特性。FEATURE_SUBNET_ACL:表示acl策略支持设置子网。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Features: Array
        # @param RetentionTimeConfig: 动态消息保留策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetentionTimeConfig: :class:`Tencentcloud::Ckafka.v20190819.models.DynamicRetentionTime`
        # @param MaxConnection: 最大连接数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxConnection: Integer
        # @param PublicNetwork: 公网带宽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicNetwork: Integer
        # @param DeleteRouteTimestamp: 时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeleteRouteTimestamp: String
        # @param RemainingPartitions: 剩余创建分区数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RemainingPartitions: Integer
        # @param RemainingTopics: 剩余创建主题数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RemainingTopics: Integer
        # @param DynamicDiskConfig: 动态硬盘扩容策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DynamicDiskConfig: :class:`Tencentcloud::Ckafka.v20190819.models.DynamicDiskConfig`
        # @param InstanceChargeType: 实例计费类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceChargeType: String

        attr_accessor :InstanceId, :InstanceName, :VipList, :Vip, :Vport, :Status, :Bandwidth, :DiskSize, :ZoneId, :VpcId, :SubnetId, :Healthy, :HealthyMessage, :CreateTime, :MsgRetentionTime, :Config, :RemainderPartitions, :RemainderTopics, :CreatedPartitions, :CreatedTopics, :Tags, :ExpireTime, :ZoneIds, :Version, :MaxGroupNum, :Cvm, :InstanceType, :Features, :RetentionTimeConfig, :MaxConnection, :PublicNetwork, :DeleteRouteTimestamp, :RemainingPartitions, :RemainingTopics, :DynamicDiskConfig, :InstanceChargeType

        def initialize(instanceid=nil, instancename=nil, viplist=nil, vip=nil, vport=nil, status=nil, bandwidth=nil, disksize=nil, zoneid=nil, vpcid=nil, subnetid=nil, healthy=nil, healthymessage=nil, createtime=nil, msgretentiontime=nil, config=nil, remainderpartitions=nil, remaindertopics=nil, createdpartitions=nil, createdtopics=nil, tags=nil, expiretime=nil, zoneids=nil, version=nil, maxgroupnum=nil, cvm=nil, instancetype=nil, features=nil, retentiontimeconfig=nil, maxconnection=nil, publicnetwork=nil, deleteroutetimestamp=nil, remainingpartitions=nil, remainingtopics=nil, dynamicdiskconfig=nil, instancechargetype=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @VipList = viplist
          @Vip = vip
          @Vport = vport
          @Status = status
          @Bandwidth = bandwidth
          @DiskSize = disksize
          @ZoneId = zoneid
          @VpcId = vpcid
          @SubnetId = subnetid
          @Healthy = healthy
          @HealthyMessage = healthymessage
          @CreateTime = createtime
          @MsgRetentionTime = msgretentiontime
          @Config = config
          @RemainderPartitions = remainderpartitions
          @RemainderTopics = remaindertopics
          @CreatedPartitions = createdpartitions
          @CreatedTopics = createdtopics
          @Tags = tags
          @ExpireTime = expiretime
          @ZoneIds = zoneids
          @Version = version
          @MaxGroupNum = maxgroupnum
          @Cvm = cvm
          @InstanceType = instancetype
          @Features = features
          @RetentionTimeConfig = retentiontimeconfig
          @MaxConnection = maxconnection
          @PublicNetwork = publicnetwork
          @DeleteRouteTimestamp = deleteroutetimestamp
          @RemainingPartitions = remainingpartitions
          @RemainingTopics = remainingtopics
          @DynamicDiskConfig = dynamicdiskconfig
          @InstanceChargeType = instancechargetype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          unless params['VipList'].nil?
            @VipList = []
            params['VipList'].each do |i|
              vipentity_tmp = VipEntity.new
              vipentity_tmp.deserialize(i)
              @VipList << vipentity_tmp
            end
          end
          @Vip = params['Vip']
          @Vport = params['Vport']
          @Status = params['Status']
          @Bandwidth = params['Bandwidth']
          @DiskSize = params['DiskSize']
          @ZoneId = params['ZoneId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Healthy = params['Healthy']
          @HealthyMessage = params['HealthyMessage']
          @CreateTime = params['CreateTime']
          @MsgRetentionTime = params['MsgRetentionTime']
          unless params['Config'].nil?
            @Config = InstanceConfigDO.new
            @Config.deserialize(params['Config'])
          end
          @RemainderPartitions = params['RemainderPartitions']
          @RemainderTopics = params['RemainderTopics']
          @CreatedPartitions = params['CreatedPartitions']
          @CreatedTopics = params['CreatedTopics']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @ExpireTime = params['ExpireTime']
          @ZoneIds = params['ZoneIds']
          @Version = params['Version']
          @MaxGroupNum = params['MaxGroupNum']
          @Cvm = params['Cvm']
          @InstanceType = params['InstanceType']
          @Features = params['Features']
          unless params['RetentionTimeConfig'].nil?
            @RetentionTimeConfig = DynamicRetentionTime.new
            @RetentionTimeConfig.deserialize(params['RetentionTimeConfig'])
          end
          @MaxConnection = params['MaxConnection']
          @PublicNetwork = params['PublicNetwork']
          @DeleteRouteTimestamp = params['DeleteRouteTimestamp']
          @RemainingPartitions = params['RemainingPartitions']
          @RemainingTopics = params['RemainingTopics']
          unless params['DynamicDiskConfig'].nil?
            @DynamicDiskConfig = DynamicDiskConfig.new
            @DynamicDiskConfig.deserialize(params['DynamicDiskConfig'])
          end
          @InstanceChargeType = params['InstanceChargeType']
        end
      end

      # 实例购买付费参数
      class InstanceChargeParam < TencentCloud::Common::AbstractModel
        # @param InstanceChargeType: 实例付费类型: PREPAID(包年包月), POSTPAID_BY_HOUR(按量付费)
        # @type InstanceChargeType: String
        # @param InstanceChargePeriod: 购买时长: 包年包月时需要填写, 按量计费无需填写
        # @type InstanceChargePeriod: Integer

        attr_accessor :InstanceChargeType, :InstanceChargePeriod

        def initialize(instancechargetype=nil, instancechargeperiod=nil)
          @InstanceChargeType = instancechargetype
          @InstanceChargePeriod = instancechargeperiod
        end

        def deserialize(params)
          @InstanceChargeType = params['InstanceChargeType']
          @InstanceChargePeriod = params['InstanceChargePeriod']
        end
      end

      # 实例配置实体
      class InstanceConfigDO < TencentCloud::Common::AbstractModel
        # @param AutoCreateTopicsEnable: 是否自动创建主题
        # @type AutoCreateTopicsEnable: Boolean
        # @param DefaultNumPartitions: 分区数
        # @type DefaultNumPartitions: Integer
        # @param DefaultReplicationFactor: 默认的复制Factor
        # @type DefaultReplicationFactor: Integer

        attr_accessor :AutoCreateTopicsEnable, :DefaultNumPartitions, :DefaultReplicationFactor

        def initialize(autocreatetopicsenable=nil, defaultnumpartitions=nil, defaultreplicationfactor=nil)
          @AutoCreateTopicsEnable = autocreatetopicsenable
          @DefaultNumPartitions = defaultnumpartitions
          @DefaultReplicationFactor = defaultreplicationfactor
        end

        def deserialize(params)
          @AutoCreateTopicsEnable = params['AutoCreateTopicsEnable']
          @DefaultNumPartitions = params['DefaultNumPartitions']
          @DefaultReplicationFactor = params['DefaultReplicationFactor']
        end
      end

      # 删除实例返回任务
      class InstanceDeleteResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 删除实例返回的任务Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowId: Integer

        attr_accessor :FlowId

        def initialize(flowid=nil)
          @FlowId = flowid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
        end
      end

      # 实例详情
      class InstanceDetail < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param Vip: 访问实例的vip 信息
        # @type Vip: String
        # @param Vport: 访问实例的端口信息
        # @type Vport: String
        # @param VipList: 虚拟IP列表
        # @type VipList: Array
        # @param Status: 实例的状态。0：创建中，1：运行中，2：删除中：5隔离中， -1 创建失败
        # @type Status: Integer
        # @param Bandwidth: 实例带宽，单位Mbps
        # @type Bandwidth: Integer
        # @param DiskSize: 实例的存储大小，单位GB
        # @type DiskSize: Integer
        # @param ZoneId: 可用区域ID
        # @type ZoneId: Integer
        # @param VpcId: vpcId，如果为空，说明是基础网络
        # @type VpcId: String
        # @param SubnetId: 子网id
        # @type SubnetId: String
        # @param RenewFlag: 实例是否续费，int  枚举值：1表示自动续费，2表示明确不自动续费
        # @type RenewFlag: Integer
        # @param Healthy: 实例状态 int：1表示健康，2表示告警，3 表示实例状态异常
        # @type Healthy: Integer
        # @param HealthyMessage: 实例状态信息
        # @type HealthyMessage: String
        # @param CreateTime: 实例创建时间
        # @type CreateTime: Integer
        # @param ExpireTime: 实例过期时间
        # @type ExpireTime: Integer
        # @param IsInternal: 是否为内部客户。值为1 表示内部客户
        # @type IsInternal: Integer
        # @param TopicNum: Topic个数
        # @type TopicNum: Integer
        # @param Tags: 标识tag
        # @type Tags: Array
        # @param Version: kafka版本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param ZoneIds: 跨可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneIds: Array
        # @param Cvm: ckafka售卖类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cvm: Integer
        # @param InstanceType: ckafka实例类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param DiskType: 磁盘类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskType: String
        # @param MaxTopicNumber: 当前规格最大Topic数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxTopicNumber: Integer
        # @param MaxPartitionNumber: 当前规格最大Partition数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxPartitionNumber: Integer
        # @param RebalanceTime: 计划升级配置时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RebalanceTime: String
        # @param PartitionNumber: 实例当前partition数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PartitionNumber: Integer
        # @param PublicNetworkChargeType: 公网带宽类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicNetworkChargeType: String
        # @param PublicNetwork: 公网带宽值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicNetwork: Integer
        # @param ClusterType: 实例类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterType: String
        # @param Features: 实例功能列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Features: Array

        attr_accessor :InstanceId, :InstanceName, :Vip, :Vport, :VipList, :Status, :Bandwidth, :DiskSize, :ZoneId, :VpcId, :SubnetId, :RenewFlag, :Healthy, :HealthyMessage, :CreateTime, :ExpireTime, :IsInternal, :TopicNum, :Tags, :Version, :ZoneIds, :Cvm, :InstanceType, :DiskType, :MaxTopicNumber, :MaxPartitionNumber, :RebalanceTime, :PartitionNumber, :PublicNetworkChargeType, :PublicNetwork, :ClusterType, :Features

        def initialize(instanceid=nil, instancename=nil, vip=nil, vport=nil, viplist=nil, status=nil, bandwidth=nil, disksize=nil, zoneid=nil, vpcid=nil, subnetid=nil, renewflag=nil, healthy=nil, healthymessage=nil, createtime=nil, expiretime=nil, isinternal=nil, topicnum=nil, tags=nil, version=nil, zoneids=nil, cvm=nil, instancetype=nil, disktype=nil, maxtopicnumber=nil, maxpartitionnumber=nil, rebalancetime=nil, partitionnumber=nil, publicnetworkchargetype=nil, publicnetwork=nil, clustertype=nil, features=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Vip = vip
          @Vport = vport
          @VipList = viplist
          @Status = status
          @Bandwidth = bandwidth
          @DiskSize = disksize
          @ZoneId = zoneid
          @VpcId = vpcid
          @SubnetId = subnetid
          @RenewFlag = renewflag
          @Healthy = healthy
          @HealthyMessage = healthymessage
          @CreateTime = createtime
          @ExpireTime = expiretime
          @IsInternal = isinternal
          @TopicNum = topicnum
          @Tags = tags
          @Version = version
          @ZoneIds = zoneids
          @Cvm = cvm
          @InstanceType = instancetype
          @DiskType = disktype
          @MaxTopicNumber = maxtopicnumber
          @MaxPartitionNumber = maxpartitionnumber
          @RebalanceTime = rebalancetime
          @PartitionNumber = partitionnumber
          @PublicNetworkChargeType = publicnetworkchargetype
          @PublicNetwork = publicnetwork
          @ClusterType = clustertype
          @Features = features
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Vip = params['Vip']
          @Vport = params['Vport']
          unless params['VipList'].nil?
            @VipList = []
            params['VipList'].each do |i|
              vipentity_tmp = VipEntity.new
              vipentity_tmp.deserialize(i)
              @VipList << vipentity_tmp
            end
          end
          @Status = params['Status']
          @Bandwidth = params['Bandwidth']
          @DiskSize = params['DiskSize']
          @ZoneId = params['ZoneId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @RenewFlag = params['RenewFlag']
          @Healthy = params['Healthy']
          @HealthyMessage = params['HealthyMessage']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
          @IsInternal = params['IsInternal']
          @TopicNum = params['TopicNum']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @Version = params['Version']
          @ZoneIds = params['ZoneIds']
          @Cvm = params['Cvm']
          @InstanceType = params['InstanceType']
          @DiskType = params['DiskType']
          @MaxTopicNumber = params['MaxTopicNumber']
          @MaxPartitionNumber = params['MaxPartitionNumber']
          @RebalanceTime = params['RebalanceTime']
          @PartitionNumber = params['PartitionNumber']
          @PublicNetworkChargeType = params['PublicNetworkChargeType']
          @PublicNetwork = params['PublicNetwork']
          @ClusterType = params['ClusterType']
          @Features = params['Features']
        end
      end

      # 实例详情返回结果
      class InstanceDetailResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例总数
        # @type TotalCount: Integer
        # @param InstanceList: 符合条件的实例详情列表
        # @type InstanceList: Array

        attr_accessor :TotalCount, :InstanceList

        def initialize(totalcount=nil, instancelist=nil)
          @TotalCount = totalcount
          @InstanceList = instancelist
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              instancedetail_tmp = InstanceDetail.new
              instancedetail_tmp.deserialize(i)
              @InstanceList << instancedetail_tmp
            end
          end
        end
      end

      # 实例 / topic 维度限流策略
      class InstanceQuotaConfigResp < TencentCloud::Common::AbstractModel
        # @param QuotaProducerByteRate: 生产限流大小，单位 MB/s
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QuotaProducerByteRate: Integer
        # @param QuotaConsumerByteRate: 消费限流大小，单位 MB/s
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QuotaConsumerByteRate: Integer

        attr_accessor :QuotaProducerByteRate, :QuotaConsumerByteRate

        def initialize(quotaproducerbyterate=nil, quotaconsumerbyterate=nil)
          @QuotaProducerByteRate = quotaproducerbyterate
          @QuotaConsumerByteRate = quotaconsumerbyterate
        end

        def deserialize(params)
          @QuotaProducerByteRate = params['QuotaProducerByteRate']
          @QuotaConsumerByteRate = params['QuotaConsumerByteRate']
        end
      end

      # 聚合的实例状态返回结果
      class InstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceList: 符合条件的实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceList: Array
        # @param TotalCount: 符合条件的结果总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer

        attr_accessor :InstanceList, :TotalCount

        def initialize(instancelist=nil, totalcount=nil)
          @InstanceList = instancelist
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              instance_tmp = Instance.new
              instance_tmp.deserialize(i)
              @InstanceList << instance_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # InstanceScalingDown请求参数结构体
      class InstanceScalingDownRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param UpgradeStrategy: 缩容模式  1:稳定变配
        # 2.高速变配
        # @type UpgradeStrategy: Integer
        # @param DiskSize: 磁盘大小 单位 GB
        # @type DiskSize: Integer
        # @param BandWidth: 峰值带宽 单位 MB/s
        # @type BandWidth: Integer
        # @param Partition: 分区上限
        # @type Partition: Integer

        attr_accessor :InstanceId, :UpgradeStrategy, :DiskSize, :BandWidth, :Partition

        def initialize(instanceid=nil, upgradestrategy=nil, disksize=nil, bandwidth=nil, partition=nil)
          @InstanceId = instanceid
          @UpgradeStrategy = upgradestrategy
          @DiskSize = disksize
          @BandWidth = bandwidth
          @Partition = partition
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UpgradeStrategy = params['UpgradeStrategy']
          @DiskSize = params['DiskSize']
          @BandWidth = params['BandWidth']
          @Partition = params['Partition']
        end
      end

      # InstanceScalingDown返回参数结构体
      class InstanceScalingDownResponse < TencentCloud::Common::AbstractModel
        # @param Result: 缩容应答
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.ScalingDownResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ScalingDownResp.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 操作型结果返回值
      class JgwOperateResponse < TencentCloud::Common::AbstractModel
        # @param ReturnCode: 返回的code，0为正常，非0为错误
        # @type ReturnCode: String
        # @param ReturnMessage: 成功消息
        # @type ReturnMessage: String
        # @param Data: 操作型返回的Data数据,可能有flowId等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Ckafka.v20190819.models.OperateResponseData`

        attr_accessor :ReturnCode, :ReturnMessage, :Data

        def initialize(returncode=nil, returnmessage=nil, data=nil)
          @ReturnCode = returncode
          @ReturnMessage = returnmessage
          @Data = data
        end

        def deserialize(params)
          @ReturnCode = params['ReturnCode']
          @ReturnMessage = params['ReturnMessage']
          unless params['Data'].nil?
            @Data = OperateResponseData.new
            @Data.deserialize(params['Data'])
          end
        end
      end

      # 数据处理——Value处理参数——Jsonpath替换参数
      class JsonPathReplaceParam < TencentCloud::Common::AbstractModel
        # @param OldValue: 被替换值，Jsonpath表达式
        # @type OldValue: String
        # @param NewValue: 替换值，Jsonpath表达式或字符串
        # @type NewValue: String

        attr_accessor :OldValue, :NewValue

        def initialize(oldvalue=nil, newvalue=nil)
          @OldValue = oldvalue
          @NewValue = newvalue
        end

        def deserialize(params)
          @OldValue = params['OldValue']
          @NewValue = params['NewValue']
        end
      end

      # key-value二次解析
      class KVParam < TencentCloud::Common::AbstractModel
        # @param Delimiter: 分隔符
        # @type Delimiter: String
        # @param Regex: key-value二次解析分隔符
        # @type Regex: String
        # @param KeepOriginalKey: 保留源Key，默认为false不保留
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeepOriginalKey: String

        attr_accessor :Delimiter, :Regex, :KeepOriginalKey

        def initialize(delimiter=nil, regex=nil, keeporiginalkey=nil)
          @Delimiter = delimiter
          @Regex = regex
          @KeepOriginalKey = keeporiginalkey
        end

        def deserialize(params)
          @Delimiter = params['Delimiter']
          @Regex = params['Regex']
          @KeepOriginalKey = params['KeepOriginalKey']
        end
      end

      # Kafka连接源参数
      class KafkaConnectParam < TencentCloud::Common::AbstractModel
        # @param Resource: Kafka连接源的实例资源, 非自建时必填，NetworkType=VPC时传clb实例id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param SelfBuilt: 是否为自建集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelfBuilt: Boolean
        # @param IsUpdate: 是否更新到关联的Dip任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUpdate: Boolean
        # @param BrokerAddress: Kafka连接的broker地址, NetworkType=PUBLIC公网时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BrokerAddress: String
        # @param Region: CKafka连接源的实例资源地域, 跨地域时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String

        attr_accessor :Resource, :SelfBuilt, :IsUpdate, :BrokerAddress, :Region

        def initialize(resource=nil, selfbuilt=nil, isupdate=nil, brokeraddress=nil, region=nil)
          @Resource = resource
          @SelfBuilt = selfbuilt
          @IsUpdate = isupdate
          @BrokerAddress = brokeraddress
          @Region = region
        end

        def deserialize(params)
          @Resource = params['Resource']
          @SelfBuilt = params['SelfBuilt']
          @IsUpdate = params['IsUpdate']
          @BrokerAddress = params['BrokerAddress']
          @Region = params['Region']
        end
      end

      # Ckafka配置
      class KafkaParam < TencentCloud::Common::AbstractModel
        # @param SelfBuilt: 是否为自建集群
        # @type SelfBuilt: Boolean
        # @param Resource: 实例资源
        # @type Resource: String
        # @param Topic: Topic名称，多个以“,”分隔
        # @type Topic: String
        # @param OffsetType: Offset类型，最开始位置earliest，最新位置latest，时间点位置timestamp
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OffsetType: String
        # @param StartTime: Offset类型为timestamp时必传，传时间戳，精确到秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: Integer
        # @param ResourceName: 实例资源名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceName: String
        # @param ZoneId: Zone ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: Integer
        # @param TopicId: Topic的Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicId: String
        # @param PartitionNum: Topic的分区数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PartitionNum: Integer
        # @param EnableToleration: 启用容错实例/开启死信队列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableToleration: Boolean
        # @param QpsLimit: Qps 限制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QpsLimit: Integer
        # @param TableMappings: Table到Topic的路由，「分发到多个topic」开关打开时必传
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableMappings: Array
        # @param UseTableMapping: 「分发到多个topic」开关，默认为false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UseTableMapping: Boolean
        # @param UseAutoCreateTopic: 使用的Topic是否需要自动创建（目前只支持SOURCE流入任务，如果不使用分发到多个topic，需要在Topic字段填写需要自动创建的topic名）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UseAutoCreateTopic: Boolean
        # @param CompressionType: 写入Topic时是否进行压缩，不开启填"none"，开启的话，填写"open"。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompressionType: String
        # @param MsgMultiple: 源topic消息1条扩增成msgMultiple条写入目标topic(该参数目前只有ckafka流入ckafka适用)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgMultiple: Integer
        # @param ConnectorSyncType: 数据同步专用参数, 正常数据处理可为空, 实例级别同步: 仅同步元数据填写"META_SYNC_INSTANCE_TYPE", 同步元数据及全部topic内消息的填写"META_AND_DATA_SYNC_INSTANCE_TYPE"; topic级别同步: 选中的源和目标topic中的消息(需要目标实例也包含该topic)填写"DATA_SYNC_TYPE"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConnectorSyncType: String
        # @param KeepPartition: 数据同步专用参数, 当通过时,希望下游的消息写入分区与上游的一致,则填true,但下游分区小于上游时,会报错; 不需要一致则为false, 默认为false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeepPartition: Boolean

        attr_accessor :SelfBuilt, :Resource, :Topic, :OffsetType, :StartTime, :ResourceName, :ZoneId, :TopicId, :PartitionNum, :EnableToleration, :QpsLimit, :TableMappings, :UseTableMapping, :UseAutoCreateTopic, :CompressionType, :MsgMultiple, :ConnectorSyncType, :KeepPartition

        def initialize(selfbuilt=nil, resource=nil, topic=nil, offsettype=nil, starttime=nil, resourcename=nil, zoneid=nil, topicid=nil, partitionnum=nil, enabletoleration=nil, qpslimit=nil, tablemappings=nil, usetablemapping=nil, useautocreatetopic=nil, compressiontype=nil, msgmultiple=nil, connectorsynctype=nil, keeppartition=nil)
          @SelfBuilt = selfbuilt
          @Resource = resource
          @Topic = topic
          @OffsetType = offsettype
          @StartTime = starttime
          @ResourceName = resourcename
          @ZoneId = zoneid
          @TopicId = topicid
          @PartitionNum = partitionnum
          @EnableToleration = enabletoleration
          @QpsLimit = qpslimit
          @TableMappings = tablemappings
          @UseTableMapping = usetablemapping
          @UseAutoCreateTopic = useautocreatetopic
          @CompressionType = compressiontype
          @MsgMultiple = msgmultiple
          @ConnectorSyncType = connectorsynctype
          @KeepPartition = keeppartition
        end

        def deserialize(params)
          @SelfBuilt = params['SelfBuilt']
          @Resource = params['Resource']
          @Topic = params['Topic']
          @OffsetType = params['OffsetType']
          @StartTime = params['StartTime']
          @ResourceName = params['ResourceName']
          @ZoneId = params['ZoneId']
          @TopicId = params['TopicId']
          @PartitionNum = params['PartitionNum']
          @EnableToleration = params['EnableToleration']
          @QpsLimit = params['QpsLimit']
          unless params['TableMappings'].nil?
            @TableMappings = []
            params['TableMappings'].each do |i|
              tablemapping_tmp = TableMapping.new
              tablemapping_tmp.deserialize(i)
              @TableMappings << tablemapping_tmp
            end
          end
          @UseTableMapping = params['UseTableMapping']
          @UseAutoCreateTopic = params['UseAutoCreateTopic']
          @CompressionType = params['CompressionType']
          @MsgMultiple = params['MsgMultiple']
          @ConnectorSyncType = params['ConnectorSyncType']
          @KeepPartition = params['KeepPartition']
        end
      end

      # 小写字符解析
      class LowercaseParam < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # Map参数
      class MapParam < TencentCloud::Common::AbstractModel
        # @param Key: key值
        # @type Key: String
        # @param Type: 类型，DEFAULT默认，DATE系统预设-时间戳，CUSTOMIZE自定义，MAPPING映射
        # @type Type: String
        # @param Value: 值
        # @type Value: String

        attr_accessor :Key, :Type, :Value

        def initialize(key=nil, type=nil, value=nil)
          @Key = key
          @Type = type
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Type = params['Type']
          @Value = params['Value']
        end
      end

      # MariaDB连接源参数
      class MariaDBConnectParam < TencentCloud::Common::AbstractModel
        # @param Port: MariaDB的连接port
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param UserName: MariaDB连接源的用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Password: MariaDB连接源的密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param Resource: MariaDB连接源的实例资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param ServiceVip: MariaDB连接源的实例vip，当为腾讯云实例时，必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceVip: String
        # @param UniqVpcId: MariaDB连接源的vpcId，当为腾讯云实例时，必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param IsUpdate: 是否更新到关联的Datahub任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUpdate: Boolean

        attr_accessor :Port, :UserName, :Password, :Resource, :ServiceVip, :UniqVpcId, :IsUpdate

        def initialize(port=nil, username=nil, password=nil, resource=nil, servicevip=nil, uniqvpcid=nil, isupdate=nil)
          @Port = port
          @UserName = username
          @Password = password
          @Resource = resource
          @ServiceVip = servicevip
          @UniqVpcId = uniqvpcid
          @IsUpdate = isupdate
        end

        def deserialize(params)
          @Port = params['Port']
          @UserName = params['UserName']
          @Password = params['Password']
          @Resource = params['Resource']
          @ServiceVip = params['ServiceVip']
          @UniqVpcId = params['UniqVpcId']
          @IsUpdate = params['IsUpdate']
        end
      end

      # MariaDB连接源参数
      class MariaDBModifyConnectParam < TencentCloud::Common::AbstractModel
        # @param Resource: MariaDB连接源的实例资源【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param Port: MariaDB的连接port【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param ServiceVip: MariaDB连接源的实例vip【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceVip: String
        # @param UniqVpcId: MariaDB连接源的vpcId【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param UserName: MariaDB连接源的用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Password: MariaDB连接源的密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param IsUpdate: 是否更新到关联的Datahub任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUpdate: Boolean

        attr_accessor :Resource, :Port, :ServiceVip, :UniqVpcId, :UserName, :Password, :IsUpdate

        def initialize(resource=nil, port=nil, servicevip=nil, uniqvpcid=nil, username=nil, password=nil, isupdate=nil)
          @Resource = resource
          @Port = port
          @ServiceVip = servicevip
          @UniqVpcId = uniqvpcid
          @UserName = username
          @Password = password
          @IsUpdate = isupdate
        end

        def deserialize(params)
          @Resource = params['Resource']
          @Port = params['Port']
          @ServiceVip = params['ServiceVip']
          @UniqVpcId = params['UniqVpcId']
          @UserName = params['UserName']
          @Password = params['Password']
          @IsUpdate = params['IsUpdate']
        end
      end

      # MariaDB类型入参
      class MariaDBParam < TencentCloud::Common::AbstractModel
        # @param Database: MariaDB的数据库名称，"*"为全数据库
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Database: String
        # @param Table: MariaDB的数据表名称，"*"为所监听的所有数据库中的非系统表，可以","间隔，监听多个数据表，但数据表需要以"数据库名.数据表名"的格式进行填写
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Table: String
        # @param Resource: 该MariaDB在连接管理内的Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param SnapshotMode: 复制存量信息(schema_only不复制, initial全量)，默认位initial
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotMode: String
        # @param KeyColumns: 格式：库1.表1:字段1,字段2;库2.表2:字段2，表之间;（分号）隔开，字段之间,（逗号）隔开。不指定的表默认取表的主键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyColumns: String
        # @param IsTablePrefix: 当Table输入的是前缀时，该项值为true，否则为false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsTablePrefix: Boolean
        # @param OutputFormat: 输出格式，DEFAULT、CANAL_1、CANAL_2
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutputFormat: String
        # @param IncludeContentChanges: 如果该值为all，则DDL数据以及DML数据也会写入到选中的topic；若该值为dml，则只有DML数据写入到选中的topic
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncludeContentChanges: String
        # @param IncludeQuery: 如果该值为true，且MySQL中"binlog_rows_query_log_events"配置项的值为"ON"，则流入到topic的数据包含原SQL语句；若该值为false，流入到topic的数据不包含原SQL语句
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncludeQuery: Boolean
        # @param RecordWithSchema: 如果该值为 true，则消息中会携带消息结构体对应的schema，如果该值为false则不会携带
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordWithSchema: Boolean

        attr_accessor :Database, :Table, :Resource, :SnapshotMode, :KeyColumns, :IsTablePrefix, :OutputFormat, :IncludeContentChanges, :IncludeQuery, :RecordWithSchema

        def initialize(database=nil, table=nil, resource=nil, snapshotmode=nil, keycolumns=nil, istableprefix=nil, outputformat=nil, includecontentchanges=nil, includequery=nil, recordwithschema=nil)
          @Database = database
          @Table = table
          @Resource = resource
          @SnapshotMode = snapshotmode
          @KeyColumns = keycolumns
          @IsTablePrefix = istableprefix
          @OutputFormat = outputformat
          @IncludeContentChanges = includecontentchanges
          @IncludeQuery = includequery
          @RecordWithSchema = recordwithschema
        end

        def deserialize(params)
          @Database = params['Database']
          @Table = params['Table']
          @Resource = params['Resource']
          @SnapshotMode = params['SnapshotMode']
          @KeyColumns = params['KeyColumns']
          @IsTablePrefix = params['IsTablePrefix']
          @OutputFormat = params['OutputFormat']
          @IncludeContentChanges = params['IncludeContentChanges']
          @IncludeQuery = params['IncludeQuery']
          @RecordWithSchema = params['RecordWithSchema']
        end
      end

      # ModifyAclRule请求参数结构体
      class ModifyAclRuleRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param RuleName: ACL策略名
        # @type RuleName: String
        # @param IsApplied: 修改预设规则时传入,是否应用到新增的Topic
        # @type IsApplied: Integer

        attr_accessor :InstanceId, :RuleName, :IsApplied

        def initialize(instanceid=nil, rulename=nil, isapplied=nil)
          @InstanceId = instanceid
          @RuleName = rulename
          @IsApplied = isapplied
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RuleName = params['RuleName']
          @IsApplied = params['IsApplied']
        end
      end

      # ModifyAclRule返回参数结构体
      class ModifyAclRuleResponse < TencentCloud::Common::AbstractModel
        # @param Result: 规则的唯一表示Key
        # @type Result: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # ModifyConnectResource请求参数结构体
      class ModifyConnectResourceRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 连接源的Id
        # @type ResourceId: String
        # @param ResourceName: 连接源名称，为空时不修改
        # @type ResourceName: String
        # @param Description: 连接源描述，为空时不修改
        # @type Description: String
        # @param Type: 连接源类型，修改数据源参数时，需要与原Type相同，否则编辑数据源无效
        # @type Type: String
        # @param DtsConnectParam: Dts配置，Type为DTS时必填
        # @type DtsConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.DtsModifyConnectParam`
        # @param MongoDBConnectParam: MongoDB配置，Type为MONGODB时必填
        # @type MongoDBConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.MongoDBModifyConnectParam`
        # @param EsConnectParam: Es配置，Type为ES时必填
        # @type EsConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.EsModifyConnectParam`
        # @param ClickHouseConnectParam: ClickHouse配置，Type为CLICKHOUSE时必填
        # @type ClickHouseConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.ClickHouseModifyConnectParam`
        # @param MySQLConnectParam: MySQL配置，Type为MYSQL或TDSQL_C_MYSQL时必填
        # @type MySQLConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.MySQLModifyConnectParam`
        # @param PostgreSQLConnectParam: PostgreSQL配置，Type为POSTGRESQL或TDSQL_C_POSTGRESQL时必填
        # @type PostgreSQLConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.PostgreSQLModifyConnectParam`
        # @param MariaDBConnectParam: MariaDB配置，Type为MARIADB时必填
        # @type MariaDBConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.MariaDBModifyConnectParam`
        # @param SQLServerConnectParam: SQLServer配置，Type为SQLSERVER时必填
        # @type SQLServerConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.SQLServerModifyConnectParam`
        # @param CtsdbConnectParam: Ctsdb配置，Type为CTSDB
        # @type CtsdbConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.CtsdbModifyConnectParam`
        # @param DorisConnectParam: Doris配置，Type为DORIS
        # @type DorisConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.DorisModifyConnectParam`
        # @param KafkaConnectParam: Kafka配置，Type为 KAFKA 时必填
        # @type KafkaConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.KafkaConnectParam`
        # @param MqttConnectParam: MQTT配置，Type为 MQTT 时必填
        # @type MqttConnectParam: :class:`Tencentcloud::Ckafka.v20190819.models.MqttConnectParam`

        attr_accessor :ResourceId, :ResourceName, :Description, :Type, :DtsConnectParam, :MongoDBConnectParam, :EsConnectParam, :ClickHouseConnectParam, :MySQLConnectParam, :PostgreSQLConnectParam, :MariaDBConnectParam, :SQLServerConnectParam, :CtsdbConnectParam, :DorisConnectParam, :KafkaConnectParam, :MqttConnectParam

        def initialize(resourceid=nil, resourcename=nil, description=nil, type=nil, dtsconnectparam=nil, mongodbconnectparam=nil, esconnectparam=nil, clickhouseconnectparam=nil, mysqlconnectparam=nil, postgresqlconnectparam=nil, mariadbconnectparam=nil, sqlserverconnectparam=nil, ctsdbconnectparam=nil, dorisconnectparam=nil, kafkaconnectparam=nil, mqttconnectparam=nil)
          @ResourceId = resourceid
          @ResourceName = resourcename
          @Description = description
          @Type = type
          @DtsConnectParam = dtsconnectparam
          @MongoDBConnectParam = mongodbconnectparam
          @EsConnectParam = esconnectparam
          @ClickHouseConnectParam = clickhouseconnectparam
          @MySQLConnectParam = mysqlconnectparam
          @PostgreSQLConnectParam = postgresqlconnectparam
          @MariaDBConnectParam = mariadbconnectparam
          @SQLServerConnectParam = sqlserverconnectparam
          @CtsdbConnectParam = ctsdbconnectparam
          @DorisConnectParam = dorisconnectparam
          @KafkaConnectParam = kafkaconnectparam
          @MqttConnectParam = mqttconnectparam
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceName = params['ResourceName']
          @Description = params['Description']
          @Type = params['Type']
          unless params['DtsConnectParam'].nil?
            @DtsConnectParam = DtsModifyConnectParam.new
            @DtsConnectParam.deserialize(params['DtsConnectParam'])
          end
          unless params['MongoDBConnectParam'].nil?
            @MongoDBConnectParam = MongoDBModifyConnectParam.new
            @MongoDBConnectParam.deserialize(params['MongoDBConnectParam'])
          end
          unless params['EsConnectParam'].nil?
            @EsConnectParam = EsModifyConnectParam.new
            @EsConnectParam.deserialize(params['EsConnectParam'])
          end
          unless params['ClickHouseConnectParam'].nil?
            @ClickHouseConnectParam = ClickHouseModifyConnectParam.new
            @ClickHouseConnectParam.deserialize(params['ClickHouseConnectParam'])
          end
          unless params['MySQLConnectParam'].nil?
            @MySQLConnectParam = MySQLModifyConnectParam.new
            @MySQLConnectParam.deserialize(params['MySQLConnectParam'])
          end
          unless params['PostgreSQLConnectParam'].nil?
            @PostgreSQLConnectParam = PostgreSQLModifyConnectParam.new
            @PostgreSQLConnectParam.deserialize(params['PostgreSQLConnectParam'])
          end
          unless params['MariaDBConnectParam'].nil?
            @MariaDBConnectParam = MariaDBModifyConnectParam.new
            @MariaDBConnectParam.deserialize(params['MariaDBConnectParam'])
          end
          unless params['SQLServerConnectParam'].nil?
            @SQLServerConnectParam = SQLServerModifyConnectParam.new
            @SQLServerConnectParam.deserialize(params['SQLServerConnectParam'])
          end
          unless params['CtsdbConnectParam'].nil?
            @CtsdbConnectParam = CtsdbModifyConnectParam.new
            @CtsdbConnectParam.deserialize(params['CtsdbConnectParam'])
          end
          unless params['DorisConnectParam'].nil?
            @DorisConnectParam = DorisModifyConnectParam.new
            @DorisConnectParam.deserialize(params['DorisConnectParam'])
          end
          unless params['KafkaConnectParam'].nil?
            @KafkaConnectParam = KafkaConnectParam.new
            @KafkaConnectParam.deserialize(params['KafkaConnectParam'])
          end
          unless params['MqttConnectParam'].nil?
            @MqttConnectParam = MqttConnectParam.new
            @MqttConnectParam.deserialize(params['MqttConnectParam'])
          end
        end
      end

      # ModifyConnectResource返回参数结构体
      class ModifyConnectResourceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 连接源的Id
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.ConnectResourceResourceIdResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ConnectResourceResourceIdResp.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyDatahubTask请求参数结构体
      class ModifyDatahubTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param TaskName: 任务名称
        # @type TaskName: String

        attr_accessor :TaskId, :TaskName

        def initialize(taskid=nil, taskname=nil)
          @TaskId = taskid
          @TaskName = taskname
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
        end
      end

      # ModifyDatahubTask返回参数结构体
      class ModifyDatahubTaskResponse < TencentCloud::Common::AbstractModel
        # @param Result: 任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.DatahubTaskIdRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DatahubTaskIdRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyDatahubTopic请求参数结构体
      class ModifyDatahubTopicRequest < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param RetentionMs: 消息保留时间，单位：ms，当前最小值为60000ms。
        # @type RetentionMs: Integer
        # @param Note: 主题备注，是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线-。
        # @type Note: String
        # @param Tags: 标签列表
        # @type Tags: Array

        attr_accessor :Name, :RetentionMs, :Note, :Tags

        def initialize(name=nil, retentionms=nil, note=nil, tags=nil)
          @Name = name
          @RetentionMs = retentionms
          @Note = note
          @Tags = tags
        end

        def deserialize(params)
          @Name = params['Name']
          @RetentionMs = params['RetentionMs']
          @Note = params['Note']
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

      # ModifyDatahubTopic返回参数结构体
      class ModifyDatahubTopicResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果集
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyGroupOffsets请求参数结构体
      class ModifyGroupOffsetsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: kafka实例id
        # @type InstanceId: String
        # @param Group: kafka 消费分组
        # @type Group: String
        # @param Strategy: 重置offset的策略，入参含义 0. 对齐shift-by参数，代表把offset向前或向后移动shift条 1. 对齐参考(by-duration,to-datetime,to-earliest,to-latest),代表把offset移动到指定timestamp的位置 2. 对齐参考(to-offset)，代表把offset移动到指定的offset位置
        # @type Strategy: Integer
        # @param Topics: 表示需要重置的topics， 不填表示全部
        # @type Topics: Array
        # @param Shift: 当strategy为0时，必须包含该字段，可以大于零代表会把offset向后移动shift条，小于零则将offset向前回溯shift条数。正确重置后新的offset应该是(old_offset + shift)，需要注意的是如果新的offset小于partition的earliest则会设置为earliest，如果大于partition 的latest则会设置为latest
        # @type Shift: Integer
        # @param ShiftTimestamp: 单位ms。当strategy为1时，必须包含该字段，其中-2表示重置offset到最开始的位置，-1表示重置到最新的位置(相当于清空)，其它值则代表指定的时间，会获取topic中指定时间的offset然后进行重置，需要注意的时，如果指定的时间不存在消息，则获取最末尾的offset。
        # @type ShiftTimestamp: Integer
        # @param Offset: 需要重新设置的offset位置。当strategy为2，必须包含该字段。
        # @type Offset: Integer
        # @param Partitions: 需要重新设置的partition的列表，如果没有指定Topics参数。则重置全部topics的对应的Partition列表里的partition。指定Topics时则重置指定的topic列表的对应的Partitions列表的partition。
        # @type Partitions: Array

        attr_accessor :InstanceId, :Group, :Strategy, :Topics, :Shift, :ShiftTimestamp, :Offset, :Partitions

        def initialize(instanceid=nil, group=nil, strategy=nil, topics=nil, shift=nil, shifttimestamp=nil, offset=nil, partitions=nil)
          @InstanceId = instanceid
          @Group = group
          @Strategy = strategy
          @Topics = topics
          @Shift = shift
          @ShiftTimestamp = shifttimestamp
          @Offset = offset
          @Partitions = partitions
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Group = params['Group']
          @Strategy = params['Strategy']
          @Topics = params['Topics']
          @Shift = params['Shift']
          @ShiftTimestamp = params['ShiftTimestamp']
          @Offset = params['Offset']
          @Partitions = params['Partitions']
        end
      end

      # ModifyGroupOffsets返回参数结构体
      class ModifyGroupOffsetsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 修改实例属性的配置对象
      class ModifyInstanceAttributesConfig < TencentCloud::Common::AbstractModel
        # @param AutoCreateTopicEnable: 自动创建 true 表示开启，false 表示不开启
        # @type AutoCreateTopicEnable: Boolean
        # @param DefaultNumPartitions: 可选，如果auto.create.topic.enable设置为true没有设置该值时，默认设置为3
        # @type DefaultNumPartitions: Integer
        # @param DefaultReplicationFactor: 如果auto.create.topic.enable设置为true没有指定该值时默认设置为2
        # @type DefaultReplicationFactor: Integer

        attr_accessor :AutoCreateTopicEnable, :DefaultNumPartitions, :DefaultReplicationFactor

        def initialize(autocreatetopicenable=nil, defaultnumpartitions=nil, defaultreplicationfactor=nil)
          @AutoCreateTopicEnable = autocreatetopicenable
          @DefaultNumPartitions = defaultnumpartitions
          @DefaultReplicationFactor = defaultreplicationfactor
        end

        def deserialize(params)
          @AutoCreateTopicEnable = params['AutoCreateTopicEnable']
          @DefaultNumPartitions = params['DefaultNumPartitions']
          @DefaultReplicationFactor = params['DefaultReplicationFactor']
        end
      end

      # ModifyInstanceAttributes请求参数结构体
      class ModifyInstanceAttributesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param MsgRetentionTime: 实例日志的最长保留时间，单位分钟，最大30天，0代表不开启日志保留时间回收策略
        # @type MsgRetentionTime: Integer
        # @param InstanceName: 实例名称，是一个不超过 64 个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)
        # @type InstanceName: String
        # @param Config: 实例配置
        # @type Config: :class:`Tencentcloud::Ckafka.v20190819.models.ModifyInstanceAttributesConfig`
        # @param DynamicRetentionConfig: 动态消息保留策略配置
        # @type DynamicRetentionConfig: :class:`Tencentcloud::Ckafka.v20190819.models.DynamicRetentionTime`
        # @param RebalanceTime: 升配Rebalance时间
        # @type RebalanceTime: Integer
        # @param PublicNetwork: 公网带宽
        # @type PublicNetwork: Integer
        # @param DynamicDiskConfig: 动态硬盘扩容策略配置
        # @type DynamicDiskConfig: :class:`Tencentcloud::Ckafka.v20190819.models.DynamicDiskConfig`
        # @param MaxMessageByte: 实例级别单条消息大小（单位byte)
        # @type MaxMessageByte: Integer

        attr_accessor :InstanceId, :MsgRetentionTime, :InstanceName, :Config, :DynamicRetentionConfig, :RebalanceTime, :PublicNetwork, :DynamicDiskConfig, :MaxMessageByte
        extend Gem::Deprecate
        deprecate :DynamicDiskConfig, :none, 2024, 9
        deprecate :DynamicDiskConfig=, :none, 2024, 9

        def initialize(instanceid=nil, msgretentiontime=nil, instancename=nil, config=nil, dynamicretentionconfig=nil, rebalancetime=nil, publicnetwork=nil, dynamicdiskconfig=nil, maxmessagebyte=nil)
          @InstanceId = instanceid
          @MsgRetentionTime = msgretentiontime
          @InstanceName = instancename
          @Config = config
          @DynamicRetentionConfig = dynamicretentionconfig
          @RebalanceTime = rebalancetime
          @PublicNetwork = publicnetwork
          @DynamicDiskConfig = dynamicdiskconfig
          @MaxMessageByte = maxmessagebyte
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @MsgRetentionTime = params['MsgRetentionTime']
          @InstanceName = params['InstanceName']
          unless params['Config'].nil?
            @Config = ModifyInstanceAttributesConfig.new
            @Config.deserialize(params['Config'])
          end
          unless params['DynamicRetentionConfig'].nil?
            @DynamicRetentionConfig = DynamicRetentionTime.new
            @DynamicRetentionConfig.deserialize(params['DynamicRetentionConfig'])
          end
          @RebalanceTime = params['RebalanceTime']
          @PublicNetwork = params['PublicNetwork']
          unless params['DynamicDiskConfig'].nil?
            @DynamicDiskConfig = DynamicDiskConfig.new
            @DynamicDiskConfig.deserialize(params['DynamicDiskConfig'])
          end
          @MaxMessageByte = params['MaxMessageByte']
        end
      end

      # ModifyInstanceAttributes返回参数结构体
      class ModifyInstanceAttributesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyInstancePre请求参数结构体
      class ModifyInstancePreRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例名称
        # @type InstanceId: String
        # @param DiskSize: 预计磁盘，根据磁盘步长，规格向上调整。
        # @type DiskSize: Integer
        # @param BandWidth: 预计带宽，根据带宽步长，规格向上调整。
        # @type BandWidth: Integer
        # @param Partition: 预计分区，根据带宽步长，规格向上调整。
        # @type Partition: Integer

        attr_accessor :InstanceId, :DiskSize, :BandWidth, :Partition

        def initialize(instanceid=nil, disksize=nil, bandwidth=nil, partition=nil)
          @InstanceId = instanceid
          @DiskSize = disksize
          @BandWidth = bandwidth
          @Partition = partition
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DiskSize = params['DiskSize']
          @BandWidth = params['BandWidth']
          @Partition = params['Partition']
        end
      end

      # ModifyInstancePre返回参数结构体
      class ModifyInstancePreResponse < TencentCloud::Common::AbstractModel
        # @param Result: 变更预付费实例配置返回结构
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.CreateInstancePreResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CreateInstancePreResp.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyPassword请求参数结构体
      class ModifyPasswordRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Name: 用户名称
        # @type Name: String
        # @param Password: 用户当前密码
        # @type Password: String
        # @param PasswordNew: 用户新密码
        # @type PasswordNew: String

        attr_accessor :InstanceId, :Name, :Password, :PasswordNew

        def initialize(instanceid=nil, name=nil, password=nil, passwordnew=nil)
          @InstanceId = instanceid
          @Name = name
          @Password = password
          @PasswordNew = passwordnew
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @Password = params['Password']
          @PasswordNew = params['PasswordNew']
        end
      end

      # ModifyPassword返回参数结构体
      class ModifyPasswordResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyRoutineMaintenanceTask请求参数结构体
      class ModifyRoutineMaintenanceTaskRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param MaintenanceType: 自动化运维类别
        # @type MaintenanceType: String
        # @param MaintenanceSubtype: INSTANCE_STORAGE_CAPACITY(磁盘自动扩容)/MESSAGE_RETENTION_PERIOD(磁盘动态消息保留策略)
        # @type MaintenanceSubtype: String
        # @param TopicName: 主题名称
        # @type TopicName: String
        # @param ConfigureThreshold: 任务触发阈值
        # @type ConfigureThreshold: Integer
        # @param ConfigureStepSize: 任务调整步长
        # @type ConfigureStepSize: Integer
        # @param ConfigureLimit: 任务调整上限
        # @type ConfigureLimit: Integer
        # @param PlannedTime: 任务预期触发时间，存储从当日 0AM 开始偏移的秒数
        # @type PlannedTime: Integer
        # @param ExtraConfig: 任务额外信息
        # @type ExtraConfig: String
        # @param Status: 任务状态
        # @type Status: Integer
        # @param Week: 执行week day
        # @type Week: String

        attr_accessor :InstanceId, :MaintenanceType, :MaintenanceSubtype, :TopicName, :ConfigureThreshold, :ConfigureStepSize, :ConfigureLimit, :PlannedTime, :ExtraConfig, :Status, :Week

        def initialize(instanceid=nil, maintenancetype=nil, maintenancesubtype=nil, topicname=nil, configurethreshold=nil, configurestepsize=nil, configurelimit=nil, plannedtime=nil, extraconfig=nil, status=nil, week=nil)
          @InstanceId = instanceid
          @MaintenanceType = maintenancetype
          @MaintenanceSubtype = maintenancesubtype
          @TopicName = topicname
          @ConfigureThreshold = configurethreshold
          @ConfigureStepSize = configurestepsize
          @ConfigureLimit = configurelimit
          @PlannedTime = plannedtime
          @ExtraConfig = extraconfig
          @Status = status
          @Week = week
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @MaintenanceType = params['MaintenanceType']
          @MaintenanceSubtype = params['MaintenanceSubtype']
          @TopicName = params['TopicName']
          @ConfigureThreshold = params['ConfigureThreshold']
          @ConfigureStepSize = params['ConfigureStepSize']
          @ConfigureLimit = params['ConfigureLimit']
          @PlannedTime = params['PlannedTime']
          @ExtraConfig = params['ExtraConfig']
          @Status = params['Status']
          @Week = params['Week']
        end
      end

      # ModifyRoutineMaintenanceTask返回参数结构体
      class ModifyRoutineMaintenanceTaskResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyTopicAttributes请求参数结构体
      class ModifyTopicAttributesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param TopicName: 主题名称。
        # @type TopicName: String
        # @param Note: 主题备注，是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线-。
        # @type Note: String
        # @param EnableWhiteList: IP 白名单开关，1：打开；0：关闭。
        # @type EnableWhiteList: Integer
        # @param MinInsyncReplicas: 默认为1。
        # @type MinInsyncReplicas: Integer
        # @param UncleanLeaderElectionEnable: 默认为 0，0：false；1：true。
        # @type UncleanLeaderElectionEnable: Integer
        # @param RetentionMs: 消息保留时间，单位：ms，当前最小值为60000ms。
        # @type RetentionMs: Integer
        # @param MaxMessageBytes: 主题消息最大值，单位为 Byte，最大值为12582912Byte（即12MB）。
        # @type MaxMessageBytes: Integer
        # @param SegmentMs: Segment 分片滚动的时长，单位：ms，当前最小为300000ms。
        # @type SegmentMs: Integer
        # @param CleanUpPolicy: 消息删除策略，可以选择delete 或者compact
        # @type CleanUpPolicy: String
        # @param IpWhiteList: Ip白名单列表，配额限制，enableWhileList=1时必选
        # @type IpWhiteList: Array
        # @param EnableAclRule: 预设ACL规则, 1:打开  0:关闭，默认不打开
        # @type EnableAclRule: Integer
        # @param AclRuleName: 预设ACL规则的名称
        # @type AclRuleName: String
        # @param RetentionBytes: 可选, 保留文件大小. 默认为-1,单位bytes, 当前最小值为1048576B
        # @type RetentionBytes: Integer
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param QuotaProducerByteRate: 生产限流，单位 MB/s
        # @type QuotaProducerByteRate: Integer
        # @param QuotaConsumerByteRate: 消费限流，单位 MB/s
        # @type QuotaConsumerByteRate: Integer
        # @param ReplicaNum: 调整topic副本数
        # @type ReplicaNum: Integer

        attr_accessor :InstanceId, :TopicName, :Note, :EnableWhiteList, :MinInsyncReplicas, :UncleanLeaderElectionEnable, :RetentionMs, :MaxMessageBytes, :SegmentMs, :CleanUpPolicy, :IpWhiteList, :EnableAclRule, :AclRuleName, :RetentionBytes, :Tags, :QuotaProducerByteRate, :QuotaConsumerByteRate, :ReplicaNum

        def initialize(instanceid=nil, topicname=nil, note=nil, enablewhitelist=nil, mininsyncreplicas=nil, uncleanleaderelectionenable=nil, retentionms=nil, maxmessagebytes=nil, segmentms=nil, cleanuppolicy=nil, ipwhitelist=nil, enableaclrule=nil, aclrulename=nil, retentionbytes=nil, tags=nil, quotaproducerbyterate=nil, quotaconsumerbyterate=nil, replicanum=nil)
          @InstanceId = instanceid
          @TopicName = topicname
          @Note = note
          @EnableWhiteList = enablewhitelist
          @MinInsyncReplicas = mininsyncreplicas
          @UncleanLeaderElectionEnable = uncleanleaderelectionenable
          @RetentionMs = retentionms
          @MaxMessageBytes = maxmessagebytes
          @SegmentMs = segmentms
          @CleanUpPolicy = cleanuppolicy
          @IpWhiteList = ipwhitelist
          @EnableAclRule = enableaclrule
          @AclRuleName = aclrulename
          @RetentionBytes = retentionbytes
          @Tags = tags
          @QuotaProducerByteRate = quotaproducerbyterate
          @QuotaConsumerByteRate = quotaconsumerbyterate
          @ReplicaNum = replicanum
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TopicName = params['TopicName']
          @Note = params['Note']
          @EnableWhiteList = params['EnableWhiteList']
          @MinInsyncReplicas = params['MinInsyncReplicas']
          @UncleanLeaderElectionEnable = params['UncleanLeaderElectionEnable']
          @RetentionMs = params['RetentionMs']
          @MaxMessageBytes = params['MaxMessageBytes']
          @SegmentMs = params['SegmentMs']
          @CleanUpPolicy = params['CleanUpPolicy']
          @IpWhiteList = params['IpWhiteList']
          @EnableAclRule = params['EnableAclRule']
          @AclRuleName = params['AclRuleName']
          @RetentionBytes = params['RetentionBytes']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @QuotaProducerByteRate = params['QuotaProducerByteRate']
          @QuotaConsumerByteRate = params['QuotaConsumerByteRate']
          @ReplicaNum = params['ReplicaNum']
        end
      end

      # ModifyTopicAttributes返回参数结构体
      class ModifyTopicAttributesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果集
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.JgwOperateResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JgwOperateResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # MongoDB连接源参数
      class MongoDBConnectParam < TencentCloud::Common::AbstractModel
        # @param Port: MongoDB的连接port
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param UserName: MongoDB连接源的用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Password: MongoDB连接源的密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param Resource: MongoDB连接源的实例资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param SelfBuilt: MongoDB连接源是否为自建集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelfBuilt: Boolean
        # @param ServiceVip: MongoDB连接源的实例vip，当为腾讯云实例时，必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceVip: String
        # @param UniqVpcId: MongoDB连接源的vpcId，当为腾讯云实例时，必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param IsUpdate: 是否更新到关联的Datahub任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUpdate: Boolean

        attr_accessor :Port, :UserName, :Password, :Resource, :SelfBuilt, :ServiceVip, :UniqVpcId, :IsUpdate

        def initialize(port=nil, username=nil, password=nil, resource=nil, selfbuilt=nil, servicevip=nil, uniqvpcid=nil, isupdate=nil)
          @Port = port
          @UserName = username
          @Password = password
          @Resource = resource
          @SelfBuilt = selfbuilt
          @ServiceVip = servicevip
          @UniqVpcId = uniqvpcid
          @IsUpdate = isupdate
        end

        def deserialize(params)
          @Port = params['Port']
          @UserName = params['UserName']
          @Password = params['Password']
          @Resource = params['Resource']
          @SelfBuilt = params['SelfBuilt']
          @ServiceVip = params['ServiceVip']
          @UniqVpcId = params['UniqVpcId']
          @IsUpdate = params['IsUpdate']
        end
      end

      # MongoDB修改连接源参数
      class MongoDBModifyConnectParam < TencentCloud::Common::AbstractModel
        # @param Resource: MongoDB连接源的实例资源【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param Port: MongoDB的连接port【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param ServiceVip: MongoDB连接源的实例vip【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceVip: String
        # @param UniqVpcId: MongoDB连接源的vpcId【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param UserName: MongoDB连接源的用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Password: MongoDB连接源的密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param SelfBuilt: MongoDB连接源是否为自建集群【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelfBuilt: Boolean
        # @param IsUpdate: 是否更新到关联的Datahub任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUpdate: Boolean

        attr_accessor :Resource, :Port, :ServiceVip, :UniqVpcId, :UserName, :Password, :SelfBuilt, :IsUpdate

        def initialize(resource=nil, port=nil, servicevip=nil, uniqvpcid=nil, username=nil, password=nil, selfbuilt=nil, isupdate=nil)
          @Resource = resource
          @Port = port
          @ServiceVip = servicevip
          @UniqVpcId = uniqvpcid
          @UserName = username
          @Password = password
          @SelfBuilt = selfbuilt
          @IsUpdate = isupdate
        end

        def deserialize(params)
          @Resource = params['Resource']
          @Port = params['Port']
          @ServiceVip = params['ServiceVip']
          @UniqVpcId = params['UniqVpcId']
          @UserName = params['UserName']
          @Password = params['Password']
          @SelfBuilt = params['SelfBuilt']
          @IsUpdate = params['IsUpdate']
        end
      end

      # MongoDB类型入参
      class MongoDBParam < TencentCloud::Common::AbstractModel
        # @param Database: MongoDB的数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Database: String
        # @param Collection: MongoDB的集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Collection: String
        # @param CopyExisting: 是否复制存量数据，默认传参true
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CopyExisting: Boolean
        # @param Resource: 实例资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param Ip: MongoDB的连接ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ip: String
        # @param Port: MongoDB的连接port
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param UserName: MongoDB数据库用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Password: MongoDB数据库密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param ListeningEvent: 监听事件类型，为空时表示全选。取值包括insert,update,replace,delete,invalidate,drop,dropdatabase,rename，多个类型间使用,逗号分隔
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListeningEvent: String
        # @param ReadPreference: 主从优先级，默认主节点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReadPreference: String
        # @param Pipeline: 聚合管道
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pipeline: String
        # @param SelfBuilt: 是否为自建集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelfBuilt: Boolean

        attr_accessor :Database, :Collection, :CopyExisting, :Resource, :Ip, :Port, :UserName, :Password, :ListeningEvent, :ReadPreference, :Pipeline, :SelfBuilt

        def initialize(database=nil, collection=nil, copyexisting=nil, resource=nil, ip=nil, port=nil, username=nil, password=nil, listeningevent=nil, readpreference=nil, pipeline=nil, selfbuilt=nil)
          @Database = database
          @Collection = collection
          @CopyExisting = copyexisting
          @Resource = resource
          @Ip = ip
          @Port = port
          @UserName = username
          @Password = password
          @ListeningEvent = listeningevent
          @ReadPreference = readpreference
          @Pipeline = pipeline
          @SelfBuilt = selfbuilt
        end

        def deserialize(params)
          @Database = params['Database']
          @Collection = params['Collection']
          @CopyExisting = params['CopyExisting']
          @Resource = params['Resource']
          @Ip = params['Ip']
          @Port = params['Port']
          @UserName = params['UserName']
          @Password = params['Password']
          @ListeningEvent = params['ListeningEvent']
          @ReadPreference = params['ReadPreference']
          @Pipeline = params['Pipeline']
          @SelfBuilt = params['SelfBuilt']
        end
      end

      # MQTT连接源参数
      class MqttConnectParam < TencentCloud::Common::AbstractModel
        # @param UserName: MQTT连接源的用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Password: MQTT连接源的密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param Resource: MQTT连接源的实例资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param UniqVpcId: MQTT Instance vpc-id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param SelfBuilt: 是否为自建集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelfBuilt: Boolean
        # @param IsUpdate: 是否更新到关联的Dip任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUpdate: Boolean
        # @param Region: MQTT连接源的实例资源地域, 跨地域时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String

        attr_accessor :UserName, :Password, :Resource, :UniqVpcId, :SelfBuilt, :IsUpdate, :Region

        def initialize(username=nil, password=nil, resource=nil, uniqvpcid=nil, selfbuilt=nil, isupdate=nil, region=nil)
          @UserName = username
          @Password = password
          @Resource = resource
          @UniqVpcId = uniqvpcid
          @SelfBuilt = selfbuilt
          @IsUpdate = isupdate
          @Region = region
        end

        def deserialize(params)
          @UserName = params['UserName']
          @Password = params['Password']
          @Resource = params['Resource']
          @UniqVpcId = params['UniqVpcId']
          @SelfBuilt = params['SelfBuilt']
          @IsUpdate = params['IsUpdate']
          @Region = params['Region']
        end
      end

      # 创建MQTT 为Source的Data Hub Task参数
      class MqttParam < TencentCloud::Common::AbstractModel
        # @param Topics: 需要同步的MQTT Topic列表, CSV格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Topics: String
        # @param CleanSession: MQTT clean-session
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CleanSession: Boolean
        # @param Resource: MQTT instance-id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param Ip: MQTT实例VIP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ip: String
        # @param Port: MQTT VIP 端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param UserName: MQTT实例用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Password: MQTT实例内账户密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param Qos: QoS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Qos: Integer
        # @param MaxTasks: tasks.max 订阅Topic的并发Task个数, 默认为1; 当设置大于1时, 使用Shared Subscription
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxTasks: Integer
        # @param ServiceVip: MQTT 实例的Service VIP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceVip: String
        # @param UniqVpcId: MQTT实例的VPC ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param SelfBuilt: 是否为自建集群, MQTT只支持非自建集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelfBuilt: Boolean

        attr_accessor :Topics, :CleanSession, :Resource, :Ip, :Port, :UserName, :Password, :Qos, :MaxTasks, :ServiceVip, :UniqVpcId, :SelfBuilt

        def initialize(topics=nil, cleansession=nil, resource=nil, ip=nil, port=nil, username=nil, password=nil, qos=nil, maxtasks=nil, servicevip=nil, uniqvpcid=nil, selfbuilt=nil)
          @Topics = topics
          @CleanSession = cleansession
          @Resource = resource
          @Ip = ip
          @Port = port
          @UserName = username
          @Password = password
          @Qos = qos
          @MaxTasks = maxtasks
          @ServiceVip = servicevip
          @UniqVpcId = uniqvpcid
          @SelfBuilt = selfbuilt
        end

        def deserialize(params)
          @Topics = params['Topics']
          @CleanSession = params['CleanSession']
          @Resource = params['Resource']
          @Ip = params['Ip']
          @Port = params['Port']
          @UserName = params['UserName']
          @Password = params['Password']
          @Qos = params['Qos']
          @MaxTasks = params['MaxTasks']
          @ServiceVip = params['ServiceVip']
          @UniqVpcId = params['UniqVpcId']
          @SelfBuilt = params['SelfBuilt']
        end
      end

      # MySQL连接源参数
      class MySQLConnectParam < TencentCloud::Common::AbstractModel
        # @param Port: MySQL的连接port
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param UserName: MySQL连接源的用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Password: MySQL连接源的密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param Resource: MySQL连接源的实例资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param ServiceVip: MySQL连接源的实例vip，当为腾讯云实例时，必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceVip: String
        # @param UniqVpcId: MySQL连接源的vpcId，当为腾讯云实例时，必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param IsUpdate: 是否更新到关联的Datahub任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUpdate: Boolean
        # @param ClusterId: 当type为TDSQL_C_MYSQL时，必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param SelfBuilt: Mysql 连接源是否为自建集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelfBuilt: Boolean

        attr_accessor :Port, :UserName, :Password, :Resource, :ServiceVip, :UniqVpcId, :IsUpdate, :ClusterId, :SelfBuilt

        def initialize(port=nil, username=nil, password=nil, resource=nil, servicevip=nil, uniqvpcid=nil, isupdate=nil, clusterid=nil, selfbuilt=nil)
          @Port = port
          @UserName = username
          @Password = password
          @Resource = resource
          @ServiceVip = servicevip
          @UniqVpcId = uniqvpcid
          @IsUpdate = isupdate
          @ClusterId = clusterid
          @SelfBuilt = selfbuilt
        end

        def deserialize(params)
          @Port = params['Port']
          @UserName = params['UserName']
          @Password = params['Password']
          @Resource = params['Resource']
          @ServiceVip = params['ServiceVip']
          @UniqVpcId = params['UniqVpcId']
          @IsUpdate = params['IsUpdate']
          @ClusterId = params['ClusterId']
          @SelfBuilt = params['SelfBuilt']
        end
      end

      # MySQL修改连接源参数
      class MySQLModifyConnectParam < TencentCloud::Common::AbstractModel
        # @param Resource: MySQL连接源的实例资源【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param Port: MySQL的连接port【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param ServiceVip: MySQL连接源的实例vip【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceVip: String
        # @param UniqVpcId: MySQL连接源的vpcId【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param UserName: MySQL连接源的用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Password: MySQL连接源的密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param IsUpdate: 是否更新到关联的Datahub任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUpdate: Boolean
        # @param ClusterId: 当type为TDSQL_C_MYSQL时
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param SelfBuilt: 是否是自建的集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelfBuilt: Boolean

        attr_accessor :Resource, :Port, :ServiceVip, :UniqVpcId, :UserName, :Password, :IsUpdate, :ClusterId, :SelfBuilt

        def initialize(resource=nil, port=nil, servicevip=nil, uniqvpcid=nil, username=nil, password=nil, isupdate=nil, clusterid=nil, selfbuilt=nil)
          @Resource = resource
          @Port = port
          @ServiceVip = servicevip
          @UniqVpcId = uniqvpcid
          @UserName = username
          @Password = password
          @IsUpdate = isupdate
          @ClusterId = clusterid
          @SelfBuilt = selfbuilt
        end

        def deserialize(params)
          @Resource = params['Resource']
          @Port = params['Port']
          @ServiceVip = params['ServiceVip']
          @UniqVpcId = params['UniqVpcId']
          @UserName = params['UserName']
          @Password = params['Password']
          @IsUpdate = params['IsUpdate']
          @ClusterId = params['ClusterId']
          @SelfBuilt = params['SelfBuilt']
        end
      end

      # MySQL类型入参
      class MySQLParam < TencentCloud::Common::AbstractModel
        # @param Database: MySQL的数据库名称，"*"为全数据库
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Database: String
        # @param Table: MySQL的数据表名称，"*"为所监听的所有数据库中的非系统表，可以","间隔，监听多个数据表，但数据表需要以"数据库名.数据表名"的格式进行填写，需要填入正则表达式时，格式为"数据库名\\.数据表名"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Table: String
        # @param Resource: 该MySQL在连接管理内的Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param SnapshotMode: 复制存量信息(schema_only不复制, initial全量)，默认位initial
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotMode: String
        # @param DdlTopic: 存放MySQL的Ddl信息的Topic，为空则默认不存放
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DdlTopic: String
        # @param DataSourceMonitorMode: "TABLE" 表示读取项为 table，"QUERY" 表示读取项为 query
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSourceMonitorMode: String
        # @param DataSourceMonitorResource: 当 "DataMonitorMode"="TABLE" 时，传入需要读取的 Table；当 "DataMonitorMode"="QUERY" 时，传入需要读取的查询 sql 语句
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSourceMonitorResource: String
        # @param DataSourceIncrementMode: "TIMESTAMP" 表示增量列为时间戳类型，"INCREMENT" 表示增量列为自增 id 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSourceIncrementMode: String
        # @param DataSourceIncrementColumn: 传入需要监听的列名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSourceIncrementColumn: String
        # @param DataSourceStartFrom: "HEAD" 表示复制存量 + 增量数据，"TAIL" 表示只复制增量数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSourceStartFrom: String
        # @param DataTargetInsertMode: "INSERT" 表示使用 Insert 模式插入，"UPSERT" 表示使用 Upsert 模式插入
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataTargetInsertMode: String
        # @param DataTargetPrimaryKeyField: 当 "DataInsertMode"="UPSERT" 时，传入当前 upsert 时依赖的主键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataTargetPrimaryKeyField: String
        # @param DataTargetRecordMapping: 表与消息间的映射关系
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataTargetRecordMapping: Array
        # @param TopicRegex: 事件路由到特定主题的正则表达式，默认为(.*)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicRegex: String
        # @param TopicReplacement: TopicRegex的引用组，指定$1、$2等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicReplacement: String
        # @param KeyColumns: 格式：库1.表1:字段1,字段2;库2.表2:字段2，表之间;（分号）隔开，字段之间,（逗号）隔开。不指定的表默认取表的主键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyColumns: String
        # @param DropInvalidMessage: Mysql 是否抛弃解析失败的消息，默认为true
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DropInvalidMessage: Boolean
        # @param DropCls: 当设置成员参数DropInvalidMessageToCls设置为true时,DropInvalidMessage参数失效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DropCls: :class:`Tencentcloud::Ckafka.v20190819.models.DropCls`
        # @param OutputFormat: 输出格式，DEFAULT、CANAL_1、CANAL_2
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutputFormat: String
        # @param IsTablePrefix: 当Table输入的是前缀时，该项值为true，否则为false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsTablePrefix: Boolean
        # @param IncludeContentChanges: 如果该值为all，则DDL数据以及DML数据也会写入到选中的topic；若该值为dml，则只有DML数据写入到选中的topic
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncludeContentChanges: String
        # @param IncludeQuery: 如果该值为true，且MySQL中"binlog_rows_query_log_events"配置项的值为"ON"，则流入到topic的数据包含原SQL语句；若该值为false，流入到topic的数据不包含原SQL语句
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncludeQuery: Boolean
        # @param RecordWithSchema: 如果该值为 true，则消息中会携带消息结构体对应的schema，如果该值为false则不会携带
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordWithSchema: Boolean
        # @param SignalDatabase: 存放信令表的数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SignalDatabase: String
        # @param IsTableRegular: 输入的table是否为正则表达式，如果该选项以及IsTablePrefix同时为true，该选项的判断优先级高于IsTablePrefix
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsTableRegular: Boolean
        # @param SignalTable: 信号表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SignalTable: String
        # @param DateTimeZone: datetime 类型字段转换为时间戳的时区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DateTimeZone: String
        # @param SelfBuilt: 自建
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelfBuilt: Boolean

        attr_accessor :Database, :Table, :Resource, :SnapshotMode, :DdlTopic, :DataSourceMonitorMode, :DataSourceMonitorResource, :DataSourceIncrementMode, :DataSourceIncrementColumn, :DataSourceStartFrom, :DataTargetInsertMode, :DataTargetPrimaryKeyField, :DataTargetRecordMapping, :TopicRegex, :TopicReplacement, :KeyColumns, :DropInvalidMessage, :DropCls, :OutputFormat, :IsTablePrefix, :IncludeContentChanges, :IncludeQuery, :RecordWithSchema, :SignalDatabase, :IsTableRegular, :SignalTable, :DateTimeZone, :SelfBuilt

        def initialize(database=nil, table=nil, resource=nil, snapshotmode=nil, ddltopic=nil, datasourcemonitormode=nil, datasourcemonitorresource=nil, datasourceincrementmode=nil, datasourceincrementcolumn=nil, datasourcestartfrom=nil, datatargetinsertmode=nil, datatargetprimarykeyfield=nil, datatargetrecordmapping=nil, topicregex=nil, topicreplacement=nil, keycolumns=nil, dropinvalidmessage=nil, dropcls=nil, outputformat=nil, istableprefix=nil, includecontentchanges=nil, includequery=nil, recordwithschema=nil, signaldatabase=nil, istableregular=nil, signaltable=nil, datetimezone=nil, selfbuilt=nil)
          @Database = database
          @Table = table
          @Resource = resource
          @SnapshotMode = snapshotmode
          @DdlTopic = ddltopic
          @DataSourceMonitorMode = datasourcemonitormode
          @DataSourceMonitorResource = datasourcemonitorresource
          @DataSourceIncrementMode = datasourceincrementmode
          @DataSourceIncrementColumn = datasourceincrementcolumn
          @DataSourceStartFrom = datasourcestartfrom
          @DataTargetInsertMode = datatargetinsertmode
          @DataTargetPrimaryKeyField = datatargetprimarykeyfield
          @DataTargetRecordMapping = datatargetrecordmapping
          @TopicRegex = topicregex
          @TopicReplacement = topicreplacement
          @KeyColumns = keycolumns
          @DropInvalidMessage = dropinvalidmessage
          @DropCls = dropcls
          @OutputFormat = outputformat
          @IsTablePrefix = istableprefix
          @IncludeContentChanges = includecontentchanges
          @IncludeQuery = includequery
          @RecordWithSchema = recordwithschema
          @SignalDatabase = signaldatabase
          @IsTableRegular = istableregular
          @SignalTable = signaltable
          @DateTimeZone = datetimezone
          @SelfBuilt = selfbuilt
        end

        def deserialize(params)
          @Database = params['Database']
          @Table = params['Table']
          @Resource = params['Resource']
          @SnapshotMode = params['SnapshotMode']
          @DdlTopic = params['DdlTopic']
          @DataSourceMonitorMode = params['DataSourceMonitorMode']
          @DataSourceMonitorResource = params['DataSourceMonitorResource']
          @DataSourceIncrementMode = params['DataSourceIncrementMode']
          @DataSourceIncrementColumn = params['DataSourceIncrementColumn']
          @DataSourceStartFrom = params['DataSourceStartFrom']
          @DataTargetInsertMode = params['DataTargetInsertMode']
          @DataTargetPrimaryKeyField = params['DataTargetPrimaryKeyField']
          unless params['DataTargetRecordMapping'].nil?
            @DataTargetRecordMapping = []
            params['DataTargetRecordMapping'].each do |i|
              recordmapping_tmp = RecordMapping.new
              recordmapping_tmp.deserialize(i)
              @DataTargetRecordMapping << recordmapping_tmp
            end
          end
          @TopicRegex = params['TopicRegex']
          @TopicReplacement = params['TopicReplacement']
          @KeyColumns = params['KeyColumns']
          @DropInvalidMessage = params['DropInvalidMessage']
          unless params['DropCls'].nil?
            @DropCls = DropCls.new
            @DropCls.deserialize(params['DropCls'])
          end
          @OutputFormat = params['OutputFormat']
          @IsTablePrefix = params['IsTablePrefix']
          @IncludeContentChanges = params['IncludeContentChanges']
          @IncludeQuery = params['IncludeQuery']
          @RecordWithSchema = params['RecordWithSchema']
          @SignalDatabase = params['SignalDatabase']
          @IsTableRegular = params['IsTableRegular']
          @SignalTable = params['SignalTable']
          @DateTimeZone = params['DateTimeZone']
          @SelfBuilt = params['SelfBuilt']
        end
      end

      # 操作类型返回的Data结构
      class OperateResponseData < TencentCloud::Common::AbstractModel
        # @param FlowId: FlowId11
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowId: Integer
        # @param RouteDTO: RouteIdDto
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RouteDTO: :class:`Tencentcloud::Ckafka.v20190819.models.RouteDTO`

        attr_accessor :FlowId, :RouteDTO

        def initialize(flowid=nil, routedto=nil)
          @FlowId = flowid
          @RouteDTO = routedto
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          unless params['RouteDTO'].nil?
            @RouteDTO = RouteDTO.new
            @RouteDTO.deserialize(params['RouteDTO'])
          end
        end
      end

      # 分区实体
      class Partition < TencentCloud::Common::AbstractModel
        # @param PartitionId: 分区ID
        # @type PartitionId: Integer

        attr_accessor :PartitionId

        def initialize(partitionid=nil)
          @PartitionId = partitionid
        end

        def deserialize(params)
          @PartitionId = params['PartitionId']
        end
      end

      # 分区和位移
      class PartitionOffset < TencentCloud::Common::AbstractModel
        # @param Partition: Partition,例如"0"或"1"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Partition: String
        # @param Offset: Offset,例如100
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Offset: Integer

        attr_accessor :Partition, :Offset

        def initialize(partition=nil, offset=nil)
          @Partition = partition
          @Offset = offset
        end

        def deserialize(params)
          @Partition = params['Partition']
          @Offset = params['Offset']
        end
      end

      # partition信息
      class Partitions < TencentCloud::Common::AbstractModel
        # @param Partition: 分区
        # @type Partition: Integer
        # @param Offset: partition 消费位移
        # @type Offset: Integer

        attr_accessor :Partition, :Offset

        def initialize(partition=nil, offset=nil)
          @Partition = partition
          @Offset = offset
        end

        def deserialize(params)
          @Partition = params['Partition']
          @Offset = params['Offset']
        end
      end

      # PostgreSQL连接源参数
      class PostgreSQLConnectParam < TencentCloud::Common::AbstractModel
        # @param Port: PostgreSQL的连接port
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param UserName: PostgreSQL连接源的用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Password: PostgreSQL连接源的密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param Resource: PostgreSQL连接源的实例资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param ServiceVip: PostgreSQL连接源的实例vip，当为腾讯云实例时，必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceVip: String
        # @param UniqVpcId: PostgreSQL连接源的vpcId，当为腾讯云实例时，必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param ClusterId: 当type为TDSQL_C_POSTGRESQL时，必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param IsUpdate: 是否更新到关联的Datahub任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUpdate: Boolean
        # @param SelfBuilt: PostgreSQL连接源是否为自建集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelfBuilt: Boolean

        attr_accessor :Port, :UserName, :Password, :Resource, :ServiceVip, :UniqVpcId, :ClusterId, :IsUpdate, :SelfBuilt

        def initialize(port=nil, username=nil, password=nil, resource=nil, servicevip=nil, uniqvpcid=nil, clusterid=nil, isupdate=nil, selfbuilt=nil)
          @Port = port
          @UserName = username
          @Password = password
          @Resource = resource
          @ServiceVip = servicevip
          @UniqVpcId = uniqvpcid
          @ClusterId = clusterid
          @IsUpdate = isupdate
          @SelfBuilt = selfbuilt
        end

        def deserialize(params)
          @Port = params['Port']
          @UserName = params['UserName']
          @Password = params['Password']
          @Resource = params['Resource']
          @ServiceVip = params['ServiceVip']
          @UniqVpcId = params['UniqVpcId']
          @ClusterId = params['ClusterId']
          @IsUpdate = params['IsUpdate']
          @SelfBuilt = params['SelfBuilt']
        end
      end

      # PostgreSQL修改连接源参数
      class PostgreSQLModifyConnectParam < TencentCloud::Common::AbstractModel
        # @param Resource: PostgreSQL连接源的实例资源【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param Port: PostgreSQL的连接port【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param ServiceVip: PostgreSQL连接源的实例vip【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceVip: String
        # @param UniqVpcId: PostgreSQL连接源的vpcId【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param UserName: PostgreSQL连接源的用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Password: PostgreSQL连接源的密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param ClusterId: 当type为TDSQL_C_POSTGRESQL时，该参数才有值【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param IsUpdate: 是否更新到关联的Datahub任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUpdate: Boolean
        # @param SelfBuilt: 是否为自建集群
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelfBuilt: Boolean

        attr_accessor :Resource, :Port, :ServiceVip, :UniqVpcId, :UserName, :Password, :ClusterId, :IsUpdate, :SelfBuilt

        def initialize(resource=nil, port=nil, servicevip=nil, uniqvpcid=nil, username=nil, password=nil, clusterid=nil, isupdate=nil, selfbuilt=nil)
          @Resource = resource
          @Port = port
          @ServiceVip = servicevip
          @UniqVpcId = uniqvpcid
          @UserName = username
          @Password = password
          @ClusterId = clusterid
          @IsUpdate = isupdate
          @SelfBuilt = selfbuilt
        end

        def deserialize(params)
          @Resource = params['Resource']
          @Port = params['Port']
          @ServiceVip = params['ServiceVip']
          @UniqVpcId = params['UniqVpcId']
          @UserName = params['UserName']
          @Password = params['Password']
          @ClusterId = params['ClusterId']
          @IsUpdate = params['IsUpdate']
          @SelfBuilt = params['SelfBuilt']
        end
      end

      # PostgreSQL类型入参
      class PostgreSQLParam < TencentCloud::Common::AbstractModel
        # @param Database: PostgreSQL的数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Database: String
        # @param Table: PostgreSQL的数据表名称，"*"为所监听的所有数据库中的非系统表，可以","间隔，监听多个数据表，但数据表需要以"Schema名.数据表名"的格式进行填写，需要填入正则表达式时，格式为"Schema名\\.数据表名"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Table: String
        # @param Resource: 该PostgreSQL在连接管理内的Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param PluginName: 插件名(decoderbufs/pgoutput)，默认为decoderbufs
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PluginName: String
        # @param SnapshotMode: 复制存量信息(never增量, initial全量)，默认为initial
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotMode: String
        # @param DataFormat: 上游数据格式(JSON/Debezium), 当数据库同步模式为默认字段匹配时,必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataFormat: String
        # @param DataTargetInsertMode: "INSERT" 表示使用 Insert 模式插入，"UPSERT" 表示使用 Upsert 模式插入
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataTargetInsertMode: String
        # @param DataTargetPrimaryKeyField: 当 "DataInsertMode"="UPSERT" 时，传入当前 upsert 时依赖的主键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataTargetPrimaryKeyField: String
        # @param DataTargetRecordMapping: 表与消息间的映射关系
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataTargetRecordMapping: Array
        # @param DropInvalidMessage: 是否抛弃解析失败的消息，默认为true
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DropInvalidMessage: Boolean
        # @param IsTableRegular: 输入的table是否为正则表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsTableRegular: Boolean
        # @param KeyColumns: 格式：库1.表1:字段1,字段2;库2.表2:字段2，表之间;（分号）隔开，字段之间,（逗号）隔开。不指定的表默认取表的主键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyColumns: String
        # @param RecordWithSchema: 如果该值为 true，则消息中会携带消息结构体对应的schema，如果该值为false则不会携带
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordWithSchema: Boolean

        attr_accessor :Database, :Table, :Resource, :PluginName, :SnapshotMode, :DataFormat, :DataTargetInsertMode, :DataTargetPrimaryKeyField, :DataTargetRecordMapping, :DropInvalidMessage, :IsTableRegular, :KeyColumns, :RecordWithSchema

        def initialize(database=nil, table=nil, resource=nil, pluginname=nil, snapshotmode=nil, dataformat=nil, datatargetinsertmode=nil, datatargetprimarykeyfield=nil, datatargetrecordmapping=nil, dropinvalidmessage=nil, istableregular=nil, keycolumns=nil, recordwithschema=nil)
          @Database = database
          @Table = table
          @Resource = resource
          @PluginName = pluginname
          @SnapshotMode = snapshotmode
          @DataFormat = dataformat
          @DataTargetInsertMode = datatargetinsertmode
          @DataTargetPrimaryKeyField = datatargetprimarykeyfield
          @DataTargetRecordMapping = datatargetrecordmapping
          @DropInvalidMessage = dropinvalidmessage
          @IsTableRegular = istableregular
          @KeyColumns = keycolumns
          @RecordWithSchema = recordwithschema
        end

        def deserialize(params)
          @Database = params['Database']
          @Table = params['Table']
          @Resource = params['Resource']
          @PluginName = params['PluginName']
          @SnapshotMode = params['SnapshotMode']
          @DataFormat = params['DataFormat']
          @DataTargetInsertMode = params['DataTargetInsertMode']
          @DataTargetPrimaryKeyField = params['DataTargetPrimaryKeyField']
          unless params['DataTargetRecordMapping'].nil?
            @DataTargetRecordMapping = []
            params['DataTargetRecordMapping'].each do |i|
              recordmapping_tmp = RecordMapping.new
              recordmapping_tmp.deserialize(i)
              @DataTargetRecordMapping << recordmapping_tmp
            end
          end
          @DropInvalidMessage = params['DropInvalidMessage']
          @IsTableRegular = params['IsTableRegular']
          @KeyColumns = params['KeyColumns']
          @RecordWithSchema = params['RecordWithSchema']
        end
      end

      # 消息价格实体
      class Price < TencentCloud::Common::AbstractModel
        # @param RealTotalCost: 折扣价
        # @type RealTotalCost: Float
        # @param TotalCost: 原价
        # @type TotalCost: Float

        attr_accessor :RealTotalCost, :TotalCost

        def initialize(realtotalcost=nil, totalcost=nil)
          @RealTotalCost = realtotalcost
          @TotalCost = totalcost
        end

        def deserialize(params)
          @RealTotalCost = params['RealTotalCost']
          @TotalCost = params['TotalCost']
        end
      end

      # 建立私有连接的参数
      class PrivateLinkParam < TencentCloud::Common::AbstractModel
        # @param ServiceVip: 客户实例的vip
        # @type ServiceVip: String
        # @param UniqVpcId: 客户实例的vpcId
        # @type UniqVpcId: String

        attr_accessor :ServiceVip, :UniqVpcId

        def initialize(servicevip=nil, uniqvpcid=nil)
          @ServiceVip = servicevip
          @UniqVpcId = uniqvpcid
        end

        def deserialize(params)
          @ServiceVip = params['ServiceVip']
          @UniqVpcId = params['UniqVpcId']
        end
      end

      # 普罗米修斯打通的vipVport
      class PrometheusDTO < TencentCloud::Common::AbstractModel
        # @param Type: export类型（jmx_export\node_export）
        # @type Type: String
        # @param SourceIp: vip
        # @type SourceIp: String
        # @param SourcePort: vport
        # @type SourcePort: Integer
        # @param BrokerIp: broker地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BrokerIp: String
        # @param VpcId: VPC ID信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 子网ID信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String

        attr_accessor :Type, :SourceIp, :SourcePort, :BrokerIp, :VpcId, :SubnetId

        def initialize(type=nil, sourceip=nil, sourceport=nil, brokerip=nil, vpcid=nil, subnetid=nil)
          @Type = type
          @SourceIp = sourceip
          @SourcePort = sourceport
          @BrokerIp = brokerip
          @VpcId = vpcid
          @SubnetId = subnetid
        end

        def deserialize(params)
          @Type = params['Type']
          @SourceIp = params['SourceIp']
          @SourcePort = params['SourcePort']
          @BrokerIp = params['BrokerIp']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
        end
      end

      # Prometheus 监控返回
      class PrometheusResult < TencentCloud::Common::AbstractModel
        # @param ReturnCode: 返回的code，0为正常，非0为错误
        # @type ReturnCode: String
        # @param ReturnMessage: 成功消息
        # @type ReturnMessage: String
        # @param Data: 操作型返回的Data数据,可能有flowId等
        # @type Data: :class:`Tencentcloud::Ckafka.v20190819.models.OperateResponseData`

        attr_accessor :ReturnCode, :ReturnMessage, :Data

        def initialize(returncode=nil, returnmessage=nil, data=nil)
          @ReturnCode = returncode
          @ReturnMessage = returnmessage
          @Data = data
        end

        def deserialize(params)
          @ReturnCode = params['ReturnCode']
          @ReturnMessage = params['ReturnMessage']
          unless params['Data'].nil?
            @Data = OperateResponseData.new
            @Data.deserialize(params['Data'])
          end
        end
      end

      # record 与数据库表的映射关系
      class RecordMapping < TencentCloud::Common::AbstractModel
        # @param JsonKey: 消息的 key 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JsonKey: String
        # @param Type: 消息类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param AllowNull: 消息是否允许为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllowNull: Boolean
        # @param ColumnName: 对应映射列名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColumnName: String
        # @param ExtraInfo: 数据库表额外字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraInfo: String
        # @param ColumnSize: 当前列大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColumnSize: String
        # @param DecimalDigits: 当前列精度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DecimalDigits: String
        # @param AutoIncrement: 是否为自增列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoIncrement: Boolean
        # @param DefaultValue: 数据库表默认参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultValue: String

        attr_accessor :JsonKey, :Type, :AllowNull, :ColumnName, :ExtraInfo, :ColumnSize, :DecimalDigits, :AutoIncrement, :DefaultValue

        def initialize(jsonkey=nil, type=nil, allownull=nil, columnname=nil, extrainfo=nil, columnsize=nil, decimaldigits=nil, autoincrement=nil, defaultvalue=nil)
          @JsonKey = jsonkey
          @Type = type
          @AllowNull = allownull
          @ColumnName = columnname
          @ExtraInfo = extrainfo
          @ColumnSize = columnsize
          @DecimalDigits = decimaldigits
          @AutoIncrement = autoincrement
          @DefaultValue = defaultvalue
        end

        def deserialize(params)
          @JsonKey = params['JsonKey']
          @Type = params['Type']
          @AllowNull = params['AllowNull']
          @ColumnName = params['ColumnName']
          @ExtraInfo = params['ExtraInfo']
          @ColumnSize = params['ColumnSize']
          @DecimalDigits = params['DecimalDigits']
          @AutoIncrement = params['AutoIncrement']
          @DefaultValue = params['DefaultValue']
        end
      end

      # 数据处理——Value处理参数——正则替换参数
      class RegexReplaceParam < TencentCloud::Common::AbstractModel
        # @param Regex: 正则表达式
        # @type Regex: String
        # @param NewValue: 替换新值
        # @type NewValue: String

        attr_accessor :Regex, :NewValue

        def initialize(regex=nil, newvalue=nil)
          @Regex = regex
          @NewValue = newvalue
        end

        def deserialize(params)
          @Regex = params['Regex']
          @NewValue = params['NewValue']
        end
      end

      # 地域实体对象
      class Region < TencentCloud::Common::AbstractModel
        # @param RegionId: 地域ID
        # @type RegionId: Integer
        # @param RegionName: 地域名称
        # @type RegionName: String
        # @param AreaName: 区域名称
        # @type AreaName: String
        # @param RegionCode: 地域代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionCode: String
        # @param RegionCodeV3: 地域代码（V3版本）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionCodeV3: String
        # @param Support: NONE:默认值不支持任何特殊机型\nCVM:支持CVM类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Support: String
        # @param Ipv6: 是否支持ipv6, 0：表示不支持，1：表示支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ipv6: Integer
        # @param MultiZone: 是否支持跨可用区, 0：表示不支持，1：表示支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MultiZone: Integer

        attr_accessor :RegionId, :RegionName, :AreaName, :RegionCode, :RegionCodeV3, :Support, :Ipv6, :MultiZone

        def initialize(regionid=nil, regionname=nil, areaname=nil, regioncode=nil, regioncodev3=nil, support=nil, ipv6=nil, multizone=nil)
          @RegionId = regionid
          @RegionName = regionname
          @AreaName = areaname
          @RegionCode = regioncode
          @RegionCodeV3 = regioncodev3
          @Support = support
          @Ipv6 = ipv6
          @MultiZone = multizone
        end

        def deserialize(params)
          @RegionId = params['RegionId']
          @RegionName = params['RegionName']
          @AreaName = params['AreaName']
          @RegionCode = params['RegionCode']
          @RegionCodeV3 = params['RegionCodeV3']
          @Support = params['Support']
          @Ipv6 = params['Ipv6']
          @MultiZone = params['MultiZone']
        end
      end

      # RenewCkafkaInstance请求参数结构体
      class RenewCkafkaInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param TimeSpan: 续费时长, 默认为1, 单位是月
        # @type TimeSpan: Integer

        attr_accessor :InstanceId, :TimeSpan

        def initialize(instanceid=nil, timespan=nil)
          @InstanceId = instanceid
          @TimeSpan = timespan
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TimeSpan = params['TimeSpan']
        end
      end

      # RenewCkafkaInstance接口出参bigDealIds
      class RenewCkafkaInstanceResp < TencentCloud::Common::AbstractModel
        # @param BigDealId: 订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BigDealId: String
        # @param DealName: 子订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealName: String

        attr_accessor :BigDealId, :DealName

        def initialize(bigdealid=nil, dealname=nil)
          @BigDealId = bigdealid
          @DealName = dealname
        end

        def deserialize(params)
          @BigDealId = params['BigDealId']
          @DealName = params['DealName']
        end
      end

      # RenewCkafkaInstance返回参数结构体
      class RenewCkafkaInstanceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: :class:`Tencentcloud::Ckafka.v20190819.models.RenewCkafkaInstanceResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = RenewCkafkaInstanceResp.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 数据处理——Value处理参数——替换参数
      class ReplaceParam < TencentCloud::Common::AbstractModel
        # @param OldValue: 被替换值
        # @type OldValue: String
        # @param NewValue: 替换值
        # @type NewValue: String

        attr_accessor :OldValue, :NewValue

        def initialize(oldvalue=nil, newvalue=nil)
          @OldValue = oldvalue
          @NewValue = newvalue
        end

        def deserialize(params)
          @OldValue = params['OldValue']
          @NewValue = params['NewValue']
        end
      end

      # 路由实体对象
      class Route < TencentCloud::Common::AbstractModel
        # @param AccessType: 实例接入方式
        # 0：PLAINTEXT (明文方式，没有带用户信息老版本及社区版本都支持)
        # 1：SASL_PLAINTEXT（明文方式，不过在数据开始时，会通过SASL方式登录鉴权，仅社区版本支持）
        # 2：SSL（SSL加密通信，没有带用户信息，老版本及社区版本都支持）
        # 3：SASL_SSL（SSL加密通信，在数据开始时，会通过SASL方式登录鉴权，仅社区版本支持）
        # @type AccessType: Integer
        # @param RouteId: 路由ID
        # @type RouteId: Integer
        # @param VipType: vip网络类型（1:外网TGW  2:基础网络 3:VPC网络 4:支撑网络(idc 环境) 5:SSL外网访问方式访问 6:黑石环境vpc 7:支撑网络(cvm 环境）
        # @type VipType: Integer
        # @param VipList: 虚拟IP列表
        # @type VipList: Array
        # @param Domain: 域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param DomainPort: 域名port
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainPort: Integer
        # @param DeleteTimestamp: 时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeleteTimestamp: String
        # @param Subnet: 子网信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Subnet: String
        # @param BrokerVipList: 虚拟IP列表(1对1 broker节点)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BrokerVipList: Array
        # @param VpcId: vpc信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String

        attr_accessor :AccessType, :RouteId, :VipType, :VipList, :Domain, :DomainPort, :DeleteTimestamp, :Subnet, :BrokerVipList, :VpcId

        def initialize(accesstype=nil, routeid=nil, viptype=nil, viplist=nil, domain=nil, domainport=nil, deletetimestamp=nil, subnet=nil, brokerviplist=nil, vpcid=nil)
          @AccessType = accesstype
          @RouteId = routeid
          @VipType = viptype
          @VipList = viplist
          @Domain = domain
          @DomainPort = domainport
          @DeleteTimestamp = deletetimestamp
          @Subnet = subnet
          @BrokerVipList = brokerviplist
          @VpcId = vpcid
        end

        def deserialize(params)
          @AccessType = params['AccessType']
          @RouteId = params['RouteId']
          @VipType = params['VipType']
          unless params['VipList'].nil?
            @VipList = []
            params['VipList'].each do |i|
              vipentity_tmp = VipEntity.new
              vipentity_tmp.deserialize(i)
              @VipList << vipentity_tmp
            end
          end
          @Domain = params['Domain']
          @DomainPort = params['DomainPort']
          @DeleteTimestamp = params['DeleteTimestamp']
          @Subnet = params['Subnet']
          unless params['BrokerVipList'].nil?
            @BrokerVipList = []
            params['BrokerVipList'].each do |i|
              vipentity_tmp = VipEntity.new
              vipentity_tmp.deserialize(i)
              @BrokerVipList << vipentity_tmp
            end
          end
          @VpcId = params['VpcId']
        end
      end

      # RouteDTO
      class RouteDTO < TencentCloud::Common::AbstractModel
        # @param RouteId: RouteId11
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RouteId: Integer

        attr_accessor :RouteId

        def initialize(routeid=nil)
          @RouteId = routeid
        end

        def deserialize(params)
          @RouteId = params['RouteId']
        end
      end

      # 路由信息返回对象
      class RouteResponse < TencentCloud::Common::AbstractModel
        # @param Routers: 路由信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Routers: Array

        attr_accessor :Routers

        def initialize(routers=nil)
          @Routers = routers
        end

        def deserialize(params)
          unless params['Routers'].nil?
            @Routers = []
            params['Routers'].each do |i|
              route_tmp = Route.new
              route_tmp.deserialize(i)
              @Routers << route_tmp
            end
          end
        end
      end

      # 数据处理ROW输出格式配置
      class RowParam < TencentCloud::Common::AbstractModel
        # @param RowContent: 行内容，KEY_VALUE，VALUE
        # @type RowContent: String
        # @param KeyValueDelimiter: key和value间的分隔符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyValueDelimiter: String
        # @param EntryDelimiter: 元素建的分隔符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EntryDelimiter: String

        attr_accessor :RowContent, :KeyValueDelimiter, :EntryDelimiter

        def initialize(rowcontent=nil, keyvaluedelimiter=nil, entrydelimiter=nil)
          @RowContent = rowcontent
          @KeyValueDelimiter = keyvaluedelimiter
          @EntryDelimiter = entrydelimiter
        end

        def deserialize(params)
          @RowContent = params['RowContent']
          @KeyValueDelimiter = params['KeyValueDelimiter']
          @EntryDelimiter = params['EntryDelimiter']
        end
      end

      # 数据处理——数据处理参数
      class SMTParam < TencentCloud::Common::AbstractModel
        # @param Key: 数据处理KEY
        # @type Key: String
        # @param Operate: 操作，DATE系统预设-时间戳，CUSTOMIZE自定义，MAPPING映射，JSONPATH
        # @type Operate: String
        # @param SchemeType: 数据类型，ORIGINAL原始，STRING，INT64，FLOAT64，BOOLEAN，MAP，ARRAY
        # @type SchemeType: String
        # @param Value: 数据处理VALUE
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param ValueOperate: VALUE处理
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValueOperate: :class:`Tencentcloud::Ckafka.v20190819.models.ValueParam`
        # @param OriginalValue: 原始VALUE
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalValue: String
        # @param ValueOperates: VALUE处理链
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValueOperates: Array

        attr_accessor :Key, :Operate, :SchemeType, :Value, :ValueOperate, :OriginalValue, :ValueOperates

        def initialize(key=nil, operate=nil, schemetype=nil, value=nil, valueoperate=nil, originalvalue=nil, valueoperates=nil)
          @Key = key
          @Operate = operate
          @SchemeType = schemetype
          @Value = value
          @ValueOperate = valueoperate
          @OriginalValue = originalvalue
          @ValueOperates = valueoperates
        end

        def deserialize(params)
          @Key = params['Key']
          @Operate = params['Operate']
          @SchemeType = params['SchemeType']
          @Value = params['Value']
          unless params['ValueOperate'].nil?
            @ValueOperate = ValueParam.new
            @ValueOperate.deserialize(params['ValueOperate'])
          end
          @OriginalValue = params['OriginalValue']
          unless params['ValueOperates'].nil?
            @ValueOperates = []
            params['ValueOperates'].each do |i|
              valueparam_tmp = ValueParam.new
              valueparam_tmp.deserialize(i)
              @ValueOperates << valueparam_tmp
            end
          end
        end
      end

      # SQLServer连接源参数
      class SQLServerConnectParam < TencentCloud::Common::AbstractModel
        # @param Port: SQLServer的连接port
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param UserName: SQLServer连接源的用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Password: SQLServer连接源的密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param Resource: SQLServer连接源的实例资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param ServiceVip: SQLServer连接源的实例vip，当为腾讯云实例时，必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceVip: String
        # @param UniqVpcId: SQLServer连接源的vpcId，当为腾讯云实例时，必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param IsUpdate: 是否更新到关联的Dip任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUpdate: Boolean

        attr_accessor :Port, :UserName, :Password, :Resource, :ServiceVip, :UniqVpcId, :IsUpdate

        def initialize(port=nil, username=nil, password=nil, resource=nil, servicevip=nil, uniqvpcid=nil, isupdate=nil)
          @Port = port
          @UserName = username
          @Password = password
          @Resource = resource
          @ServiceVip = servicevip
          @UniqVpcId = uniqvpcid
          @IsUpdate = isupdate
        end

        def deserialize(params)
          @Port = params['Port']
          @UserName = params['UserName']
          @Password = params['Password']
          @Resource = params['Resource']
          @ServiceVip = params['ServiceVip']
          @UniqVpcId = params['UniqVpcId']
          @IsUpdate = params['IsUpdate']
        end
      end

      # SQLServer修改连接源参数
      class SQLServerModifyConnectParam < TencentCloud::Common::AbstractModel
        # @param Resource: SQLServer连接源的实例资源【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param Port: SQLServer的连接port【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param ServiceVip: SQLServer连接源的实例vip【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceVip: String
        # @param UniqVpcId: SQLServer连接源的vpcId【不支持修改】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param UserName: SQLServer连接源的用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Password: SQLServer连接源的密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param IsUpdate: 是否更新到关联的Dip任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUpdate: Boolean

        attr_accessor :Resource, :Port, :ServiceVip, :UniqVpcId, :UserName, :Password, :IsUpdate

        def initialize(resource=nil, port=nil, servicevip=nil, uniqvpcid=nil, username=nil, password=nil, isupdate=nil)
          @Resource = resource
          @Port = port
          @ServiceVip = servicevip
          @UniqVpcId = uniqvpcid
          @UserName = username
          @Password = password
          @IsUpdate = isupdate
        end

        def deserialize(params)
          @Resource = params['Resource']
          @Port = params['Port']
          @ServiceVip = params['ServiceVip']
          @UniqVpcId = params['UniqVpcId']
          @UserName = params['UserName']
          @Password = params['Password']
          @IsUpdate = params['IsUpdate']
        end
      end

      # SQLServer类型入参
      class SQLServerParam < TencentCloud::Common::AbstractModel
        # @param Database: SQLServer的数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Database: String
        # @param Table: SQLServer的数据表名称，"*"为所监听的所有数据库中的非系统表，可以","间隔，监听多个数据表，但数据表需要以"数据库名.数据表名"的格式进行填写
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Table: String
        # @param Resource: 该SQLServer在连接管理内的Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String
        # @param SnapshotMode: 复制存量信息(schema_only增量, initial全量)，默认为initial
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotMode: String

        attr_accessor :Database, :Table, :Resource, :SnapshotMode

        def initialize(database=nil, table=nil, resource=nil, snapshotmode=nil)
          @Database = database
          @Table = table
          @Resource = resource
          @SnapshotMode = snapshotmode
        end

        def deserialize(params)
          @Database = params['Database']
          @Table = params['Table']
          @Resource = params['Resource']
          @SnapshotMode = params['SnapshotMode']
        end
      end

      # 标准版销售信息
      class SaleInfo < TencentCloud::Common::AbstractModel
        # @param Flag: 手动设置的flag标志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Flag: Boolean
        # @param Version: ckakfa版本号(1.1.1/2.4.2/0.10.2)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param Platform: 专业版、标准版标志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Platform: String
        # @param SoldOut: 售罄标志：true售罄
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SoldOut: Boolean

        attr_accessor :Flag, :Version, :Platform, :SoldOut

        def initialize(flag=nil, version=nil, platform=nil, soldout=nil)
          @Flag = flag
          @Version = version
          @Platform = platform
          @SoldOut = soldout
        end

        def deserialize(params)
          @Flag = params['Flag']
          @Version = params['Version']
          @Platform = params['Platform']
          @SoldOut = params['SoldOut']
        end
      end

      # 实例缩容应答
      class ScalingDownResp < TencentCloud::Common::AbstractModel
        # @param DealNames: 订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealNames: Array

        attr_accessor :DealNames

        def initialize(dealnames=nil)
          @DealNames = dealnames
        end

        def deserialize(params)
          @DealNames = params['DealNames']
        end
      end

      # Scf类型入参
      class ScfParam < TencentCloud::Common::AbstractModel
        # @param FunctionName: SCF云函数函数名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FunctionName: String
        # @param Namespace: SCF云函数命名空间, 默认为default
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Namespace: String
        # @param Qualifier: SCF云函数版本及别名, 默认为$DEFAULT
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Qualifier: String
        # @param BatchSize: 每批最大发送消息数, 默认为1000
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchSize: Integer
        # @param MaxRetries: SCF调用失败后重试次数, 默认为5
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxRetries: Integer

        attr_accessor :FunctionName, :Namespace, :Qualifier, :BatchSize, :MaxRetries

        def initialize(functionname=nil, namespace=nil, qualifier=nil, batchsize=nil, maxretries=nil)
          @FunctionName = functionname
          @Namespace = namespace
          @Qualifier = qualifier
          @BatchSize = batchsize
          @MaxRetries = maxretries
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @Namespace = params['Namespace']
          @Qualifier = params['Qualifier']
          @BatchSize = params['BatchSize']
          @MaxRetries = params['MaxRetries']
        end
      end

      # 数据处理——二次解析参数
      class SecondaryAnalyseParam < TencentCloud::Common::AbstractModel
        # @param Regex: 分隔符
        # @type Regex: String

        attr_accessor :Regex

        def initialize(regex=nil)
          @Regex = regex
        end

        def deserialize(params)
          @Regex = params['Regex']
        end
      end

      # SendMessage请求参数结构体
      class SendMessageRequest < TencentCloud::Common::AbstractModel
        # @param DataHubId: DataHub接入ID
        # @type DataHubId: String
        # @param Message: 发送消息内容(单次请求最多500条)
        # @type Message: Array

        attr_accessor :DataHubId, :Message

        def initialize(datahubid=nil, message=nil)
          @DataHubId = datahubid
          @Message = message
        end

        def deserialize(params)
          @DataHubId = params['DataHubId']
          unless params['Message'].nil?
            @Message = []
            params['Message'].each do |i|
              batchcontent_tmp = BatchContent.new
              batchcontent_tmp.deserialize(i)
              @Message << batchcontent_tmp
            end
          end
        end
      end

      # SendMessage返回参数结构体
      class SendMessageResponse < TencentCloud::Common::AbstractModel
        # @param MessageId: 消息ID列表
        # @type MessageId: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MessageId, :RequestId

        def initialize(messageid=nil, requestid=nil)
          @MessageId = messageid
          @RequestId = requestid
        end

        def deserialize(params)
          @MessageId = params['MessageId']
          @RequestId = params['RequestId']
        end
      end

      # 值支持一拆多，即将一个值拆为一个数组
      class SplitParam < TencentCloud::Common::AbstractModel
        # @param Regex: 分隔符
        # @type Regex: String

        attr_accessor :Regex

        def initialize(regex=nil)
          @Regex = regex
        end

        def deserialize(params)
          @Regex = params['Regex']
        end
      end

      # 订阅信息实体
      class SubscribedInfo < TencentCloud::Common::AbstractModel
        # @param TopicName: 订阅的主题名
        # @type TopicName: String
        # @param Partition: 订阅的分区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Partition: Array
        # @param PartitionOffset: 分区offset信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PartitionOffset: Array
        # @param TopicId: 订阅的主题ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicId: String

        attr_accessor :TopicName, :Partition, :PartitionOffset, :TopicId

        def initialize(topicname=nil, partition=nil, partitionoffset=nil, topicid=nil)
          @TopicName = topicname
          @Partition = partition
          @PartitionOffset = partitionoffset
          @TopicId = topicid
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @Partition = params['Partition']
          unless params['PartitionOffset'].nil?
            @PartitionOffset = []
            params['PartitionOffset'].each do |i|
              partitionoffset_tmp = PartitionOffset.new
              partitionoffset_tmp.deserialize(i)
              @PartitionOffset << partitionoffset_tmp
            end
          end
          @TopicId = params['TopicId']
        end
      end

      # 数据处理——Value处理参数——截取参数
      class SubstrParam < TencentCloud::Common::AbstractModel
        # @param Start: 截取起始位置
        # @type Start: Integer
        # @param End: 截取截止位置
        # @type End: Integer

        attr_accessor :Start, :End

        def initialize(start=nil, _end=nil)
          @Start = start
          @End = _end
        end

        def deserialize(params)
          @Start = params['Start']
          @End = params['End']
        end
      end

      # Table、Topic路由
      class TableMapping < TencentCloud::Common::AbstractModel
        # @param Database: 库名
        # @type Database: String
        # @param Table: 表名，多个表,（逗号）隔开
        # @type Table: String
        # @param Topic: Topic名称
        # @type Topic: String
        # @param TopicId: Topic ID
        # @type TopicId: String

        attr_accessor :Database, :Table, :Topic, :TopicId

        def initialize(database=nil, table=nil, topic=nil, topicid=nil)
          @Database = database
          @Table = table
          @Topic = topic
          @TopicId = topicid
        end

        def deserialize(params)
          @Database = params['Database']
          @Table = params['Table']
          @Topic = params['Topic']
          @TopicId = params['TopicId']
        end
      end

      # 实例详情中的标签对象
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签的key
        # @type TagKey: String
        # @param TagValue: 标签的值
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

      # 任务状态返回对象
      class TaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态:
        # 0 成功
        # 1 失败
        # 2 进行中
        # @type Status: Integer
        # @param Output: 输出信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: String

        attr_accessor :Status, :Output

        def initialize(status=nil, output=nil)
          @Status = status
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @Output = params['Output']
        end
      end

      # Tdw类型入参
      class TdwParam < TencentCloud::Common::AbstractModel
        # @param Bid: Tdw的bid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bid: String
        # @param Tid: Tdw的tid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tid: String
        # @param IsDomestic: 默认true
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDomestic: Boolean
        # @param TdwHost: TDW地址，默认tl-tdbank-tdmanager.tencent-distribute.com
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TdwHost: String
        # @param TdwPort: TDW端口，默认8099
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TdwPort: Integer

        attr_accessor :Bid, :Tid, :IsDomestic, :TdwHost, :TdwPort

        def initialize(bid=nil, tid=nil, isdomestic=nil, tdwhost=nil, tdwport=nil)
          @Bid = bid
          @Tid = tid
          @IsDomestic = isdomestic
          @TdwHost = tdwhost
          @TdwPort = tdwport
        end

        def deserialize(params)
          @Bid = params['Bid']
          @Tid = params['Tid']
          @IsDomestic = params['IsDomestic']
          @TdwHost = params['TdwHost']
          @TdwPort = params['TdwPort']
        end
      end

      # 返回的topic对象
      class Topic < TencentCloud::Common::AbstractModel
        # @param TopicId: 主题的ID
        # @type TopicId: String
        # @param TopicName: 主题的名称
        # @type TopicName: String
        # @param Note: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Note: String

        attr_accessor :TopicId, :TopicName, :Note

        def initialize(topicid=nil, topicname=nil, note=nil)
          @TopicId = topicid
          @TopicName = topicname
          @Note = note
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @TopicName = params['TopicName']
          @Note = params['Note']
        end
      end

      # 主题属性返回结果实体
      class TopicAttributesResponse < TencentCloud::Common::AbstractModel
        # @param TopicId: 主题 ID
        # @type TopicId: String
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param Note: 主题备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Note: String
        # @param PartitionNum: 分区个数
        # @type PartitionNum: Integer
        # @param EnableWhiteList: IP 白名单开关，1：打开； 0：关闭
        # @type EnableWhiteList: Integer
        # @param IpWhiteList: IP 白名单列表
        # @type IpWhiteList: Array
        # @param Config: topic 配置数组
        # @type Config: :class:`Tencentcloud::Ckafka.v20190819.models.Config`
        # @param Partitions: 分区详情
        # @type Partitions: Array
        # @param EnableAclRule: ACL预设策略开关，1：打开； 0：关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableAclRule: Integer
        # @param AclRuleList: 预设策略列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AclRuleList: Array
        # @param QuotaConfig: topic 限流策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QuotaConfig: :class:`Tencentcloud::Ckafka.v20190819.models.InstanceQuotaConfigResp`
        # @param ReplicaNum: 副本数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReplicaNum: Integer

        attr_accessor :TopicId, :CreateTime, :Note, :PartitionNum, :EnableWhiteList, :IpWhiteList, :Config, :Partitions, :EnableAclRule, :AclRuleList, :QuotaConfig, :ReplicaNum

        def initialize(topicid=nil, createtime=nil, note=nil, partitionnum=nil, enablewhitelist=nil, ipwhitelist=nil, config=nil, partitions=nil, enableaclrule=nil, aclrulelist=nil, quotaconfig=nil, replicanum=nil)
          @TopicId = topicid
          @CreateTime = createtime
          @Note = note
          @PartitionNum = partitionnum
          @EnableWhiteList = enablewhitelist
          @IpWhiteList = ipwhitelist
          @Config = config
          @Partitions = partitions
          @EnableAclRule = enableaclrule
          @AclRuleList = aclrulelist
          @QuotaConfig = quotaconfig
          @ReplicaNum = replicanum
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @CreateTime = params['CreateTime']
          @Note = params['Note']
          @PartitionNum = params['PartitionNum']
          @EnableWhiteList = params['EnableWhiteList']
          @IpWhiteList = params['IpWhiteList']
          unless params['Config'].nil?
            @Config = Config.new
            @Config.deserialize(params['Config'])
          end
          unless params['Partitions'].nil?
            @Partitions = []
            params['Partitions'].each do |i|
              topicpartitiondo_tmp = TopicPartitionDO.new
              topicpartitiondo_tmp.deserialize(i)
              @Partitions << topicpartitiondo_tmp
            end
          end
          @EnableAclRule = params['EnableAclRule']
          unless params['AclRuleList'].nil?
            @AclRuleList = []
            params['AclRuleList'].each do |i|
              aclrule_tmp = AclRule.new
              aclrule_tmp.deserialize(i)
              @AclRuleList << aclrule_tmp
            end
          end
          unless params['QuotaConfig'].nil?
            @QuotaConfig = InstanceQuotaConfigResp.new
            @QuotaConfig.deserialize(params['QuotaConfig'])
          end
          @ReplicaNum = params['ReplicaNum']
        end
      end

      # 主题详情
      class TopicDetail < TencentCloud::Common::AbstractModel
        # @param TopicName: 主题名称
        # @type TopicName: String
        # @param TopicId: 主题ID
        # @type TopicId: String
        # @param PartitionNum: 分区数
        # @type PartitionNum: Integer
        # @param ReplicaNum: 副本数
        # @type ReplicaNum: Integer
        # @param Note: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Note: String
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param EnableWhiteList: 是否开启ip鉴权白名单，true表示开启，false表示不开启
        # @type EnableWhiteList: Boolean
        # @param IpWhiteListCount: ip白名单中ip个数
        # @type IpWhiteListCount: Integer
        # @param ForwardCosBucket: 数据备份cos bucket: 转存到cos 的bucket地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ForwardCosBucket: String
        # @param ForwardStatus: 数据备份cos 状态： 1 不开启数据备份，0 开启数据备份
        # @type ForwardStatus: Integer
        # @param ForwardInterval: 数据备份到cos的周期频率
        # @type ForwardInterval: Integer
        # @param Config: 高级配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Config: :class:`Tencentcloud::Ckafka.v20190819.models.Config`
        # @param RetentionTimeConfig: 消息保留时间配置(用于动态配置变更记录)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetentionTimeConfig: :class:`Tencentcloud::Ckafka.v20190819.models.TopicRetentionTimeConfigRsp`
        # @param Status: 0:正常，1：已删除，2：删除中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param Tags: 标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :TopicName, :TopicId, :PartitionNum, :ReplicaNum, :Note, :CreateTime, :EnableWhiteList, :IpWhiteListCount, :ForwardCosBucket, :ForwardStatus, :ForwardInterval, :Config, :RetentionTimeConfig, :Status, :Tags

        def initialize(topicname=nil, topicid=nil, partitionnum=nil, replicanum=nil, note=nil, createtime=nil, enablewhitelist=nil, ipwhitelistcount=nil, forwardcosbucket=nil, forwardstatus=nil, forwardinterval=nil, config=nil, retentiontimeconfig=nil, status=nil, tags=nil)
          @TopicName = topicname
          @TopicId = topicid
          @PartitionNum = partitionnum
          @ReplicaNum = replicanum
          @Note = note
          @CreateTime = createtime
          @EnableWhiteList = enablewhitelist
          @IpWhiteListCount = ipwhitelistcount
          @ForwardCosBucket = forwardcosbucket
          @ForwardStatus = forwardstatus
          @ForwardInterval = forwardinterval
          @Config = config
          @RetentionTimeConfig = retentiontimeconfig
          @Status = status
          @Tags = tags
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @TopicId = params['TopicId']
          @PartitionNum = params['PartitionNum']
          @ReplicaNum = params['ReplicaNum']
          @Note = params['Note']
          @CreateTime = params['CreateTime']
          @EnableWhiteList = params['EnableWhiteList']
          @IpWhiteListCount = params['IpWhiteListCount']
          @ForwardCosBucket = params['ForwardCosBucket']
          @ForwardStatus = params['ForwardStatus']
          @ForwardInterval = params['ForwardInterval']
          unless params['Config'].nil?
            @Config = Config.new
            @Config.deserialize(params['Config'])
          end
          unless params['RetentionTimeConfig'].nil?
            @RetentionTimeConfig = TopicRetentionTimeConfigRsp.new
            @RetentionTimeConfig.deserialize(params['RetentionTimeConfig'])
          end
          @Status = params['Status']
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

      # 主题详情返回实体
      class TopicDetailResponse < TencentCloud::Common::AbstractModel
        # @param TopicList: 返回的主题详情列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicList: Array
        # @param TotalCount: 符合条件的所有主题详情数量
        # @type TotalCount: Integer

        attr_accessor :TopicList, :TotalCount

        def initialize(topiclist=nil, totalcount=nil)
          @TopicList = topiclist
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['TopicList'].nil?
            @TopicList = []
            params['TopicList'].each do |i|
              topicdetail_tmp = TopicDetail.new
              topicdetail_tmp.deserialize(i)
              @TopicList << topicdetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # topic 流量排行
      class TopicFlowRanking < TencentCloud::Common::AbstractModel
        # @param TopicId: 主题Id
        # @type TopicId: String
        # @param TopicName: 主题名称
        # @type TopicName: String
        # @param PartitionNum: 分区数
        # @type PartitionNum: Integer
        # @param ReplicaNum: 副本数
        # @type ReplicaNum: Integer
        # @param TopicTraffic: Topic 流量
        # @type TopicTraffic: String
        # @param MessageHeap: Topic 消息堆积
        # @type MessageHeap: Integer

        attr_accessor :TopicId, :TopicName, :PartitionNum, :ReplicaNum, :TopicTraffic, :MessageHeap

        def initialize(topicid=nil, topicname=nil, partitionnum=nil, replicanum=nil, topictraffic=nil, messageheap=nil)
          @TopicId = topicid
          @TopicName = topicname
          @PartitionNum = partitionnum
          @ReplicaNum = replicanum
          @TopicTraffic = topictraffic
          @MessageHeap = messageheap
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @TopicName = params['TopicName']
          @PartitionNum = params['PartitionNum']
          @ReplicaNum = params['ReplicaNum']
          @TopicTraffic = params['TopicTraffic']
          @MessageHeap = params['MessageHeap']
        end
      end

      # topic 生产消息数据，消费者数据
      class TopicFlowRankingResult < TencentCloud::Common::AbstractModel
        # @param TopicFlow: Topic 流量数组
        # @type TopicFlow: Array
        # @param ConsumeSpeed: 消费者组消费速度排行速度
        # @type ConsumeSpeed: Array
        # @param TopicMessageHeap: Topic 消息堆积/占用磁盘排行
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicMessageHeap: Array
        # @param BrokerIp: Broker Ip 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BrokerIp: Array
        # @param BrokerTopicData: 单个broker 节点 Topic占用的数据大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BrokerTopicData: Array
        # @param BrokerTopicFlowData: 单个Broker 节点Topic 流量的大小(单位MB)
        # @type BrokerTopicFlowData: Array

        attr_accessor :TopicFlow, :ConsumeSpeed, :TopicMessageHeap, :BrokerIp, :BrokerTopicData, :BrokerTopicFlowData

        def initialize(topicflow=nil, consumespeed=nil, topicmessageheap=nil, brokerip=nil, brokertopicdata=nil, brokertopicflowdata=nil)
          @TopicFlow = topicflow
          @ConsumeSpeed = consumespeed
          @TopicMessageHeap = topicmessageheap
          @BrokerIp = brokerip
          @BrokerTopicData = brokertopicdata
          @BrokerTopicFlowData = brokertopicflowdata
        end

        def deserialize(params)
          unless params['TopicFlow'].nil?
            @TopicFlow = []
            params['TopicFlow'].each do |i|
              topicflowranking_tmp = TopicFlowRanking.new
              topicflowranking_tmp.deserialize(i)
              @TopicFlow << topicflowranking_tmp
            end
          end
          unless params['ConsumeSpeed'].nil?
            @ConsumeSpeed = []
            params['ConsumeSpeed'].each do |i|
              consumergroupspeed_tmp = ConsumerGroupSpeed.new
              consumergroupspeed_tmp.deserialize(i)
              @ConsumeSpeed << consumergroupspeed_tmp
            end
          end
          unless params['TopicMessageHeap'].nil?
            @TopicMessageHeap = []
            params['TopicMessageHeap'].each do |i|
              topicmessageheapranking_tmp = TopicMessageHeapRanking.new
              topicmessageheapranking_tmp.deserialize(i)
              @TopicMessageHeap << topicmessageheapranking_tmp
            end
          end
          @BrokerIp = params['BrokerIp']
          unless params['BrokerTopicData'].nil?
            @BrokerTopicData = []
            params['BrokerTopicData'].each do |i|
              brokertopicdata_tmp = BrokerTopicData.new
              brokertopicdata_tmp.deserialize(i)
              @BrokerTopicData << brokertopicdata_tmp
            end
          end
          unless params['BrokerTopicFlowData'].nil?
            @BrokerTopicFlowData = []
            params['BrokerTopicFlowData'].each do |i|
              brokertopicflowdata_tmp = BrokerTopicFlowData.new
              brokertopicflowdata_tmp.deserialize(i)
              @BrokerTopicFlowData << brokertopicflowdata_tmp
            end
          end
        end
      end

      # topic副本及详细信息
      class TopicInSyncReplicaInfo < TencentCloud::Common::AbstractModel
        # @param Partition: 分区名称
        # @type Partition: String
        # @param Leader: Leader Id
        # @type Leader: Integer
        # @param Replica: 副本集
        # @type Replica: String
        # @param InSyncReplica: ISR
        # @type InSyncReplica: String
        # @param BeginOffset: 起始Offset
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BeginOffset: Integer
        # @param EndOffset: 末端Offset
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndOffset: Integer
        # @param MessageCount: 消息数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MessageCount: Integer
        # @param OutOfSyncReplica: 未同步副本集
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutOfSyncReplica: String

        attr_accessor :Partition, :Leader, :Replica, :InSyncReplica, :BeginOffset, :EndOffset, :MessageCount, :OutOfSyncReplica

        def initialize(partition=nil, leader=nil, replica=nil, insyncreplica=nil, beginoffset=nil, endoffset=nil, messagecount=nil, outofsyncreplica=nil)
          @Partition = partition
          @Leader = leader
          @Replica = replica
          @InSyncReplica = insyncreplica
          @BeginOffset = beginoffset
          @EndOffset = endoffset
          @MessageCount = messagecount
          @OutOfSyncReplica = outofsyncreplica
        end

        def deserialize(params)
          @Partition = params['Partition']
          @Leader = params['Leader']
          @Replica = params['Replica']
          @InSyncReplica = params['InSyncReplica']
          @BeginOffset = params['BeginOffset']
          @EndOffset = params['EndOffset']
          @MessageCount = params['MessageCount']
          @OutOfSyncReplica = params['OutOfSyncReplica']
        end
      end

      # Topic 副本及详情数据集合
      class TopicInSyncReplicaResult < TencentCloud::Common::AbstractModel
        # @param TopicInSyncReplicaList: Topic详情及副本合集
        # @type TopicInSyncReplicaList: Array
        # @param TotalCount: 总计个数
        # @type TotalCount: Integer

        attr_accessor :TopicInSyncReplicaList, :TotalCount

        def initialize(topicinsyncreplicalist=nil, totalcount=nil)
          @TopicInSyncReplicaList = topicinsyncreplicalist
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['TopicInSyncReplicaList'].nil?
            @TopicInSyncReplicaList = []
            params['TopicInSyncReplicaList'].each do |i|
              topicinsyncreplicainfo_tmp = TopicInSyncReplicaInfo.new
              topicinsyncreplicainfo_tmp.deserialize(i)
              @TopicInSyncReplicaList << topicinsyncreplicainfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # topic消息堆积、占用磁盘排行
      class TopicMessageHeapRanking < TencentCloud::Common::AbstractModel
        # @param TopicId: 主题ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicId: String
        # @param TopicName: 主题名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicName: String
        # @param PartitionNum: 分区数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PartitionNum: Integer
        # @param ReplicaNum: 副本数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReplicaNum: Integer
        # @param TopicTraffic: Topic 流量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicTraffic: String
        # @param MessageHeap: topic消息堆积/占用磁盘
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MessageHeap: Integer

        attr_accessor :TopicId, :TopicName, :PartitionNum, :ReplicaNum, :TopicTraffic, :MessageHeap

        def initialize(topicid=nil, topicname=nil, partitionnum=nil, replicanum=nil, topictraffic=nil, messageheap=nil)
          @TopicId = topicid
          @TopicName = topicname
          @PartitionNum = partitionnum
          @ReplicaNum = replicanum
          @TopicTraffic = topictraffic
          @MessageHeap = messageheap
        end

        def deserialize(params)
          @TopicId = params['TopicId']
          @TopicName = params['TopicName']
          @PartitionNum = params['PartitionNum']
          @ReplicaNum = params['ReplicaNum']
          @TopicTraffic = params['TopicTraffic']
          @MessageHeap = params['MessageHeap']
        end
      end

      # Topic配置
      class TopicParam < TencentCloud::Common::AbstractModel
        # @param Resource: 单独售卖Topic的Topic名称
        # @type Resource: String
        # @param OffsetType: Offset类型，最开始位置earliest，最新位置latest，时间点位置timestamp
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OffsetType: String
        # @param StartTime: Offset类型为timestamp时必传，传时间戳，精确到秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: Integer
        # @param TopicId: Topic的TopicId【出参】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicId: String
        # @param CompressionType: 写入Topic时是否进行压缩，不开启填"none"，开启的话，可选择"gzip", "snappy", "lz4"中的一个进行填写。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompressionType: String
        # @param UseAutoCreateTopic: 使用的Topic是否需要自动创建（目前只支持SOURCE流入任务）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UseAutoCreateTopic: Boolean
        # @param MsgMultiple: 源topic消息1条扩增成msgMultiple条写入目标topic(该参数目前只有ckafka流入ckafka适用)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgMultiple: Integer

        attr_accessor :Resource, :OffsetType, :StartTime, :TopicId, :CompressionType, :UseAutoCreateTopic, :MsgMultiple

        def initialize(resource=nil, offsettype=nil, starttime=nil, topicid=nil, compressiontype=nil, useautocreatetopic=nil, msgmultiple=nil)
          @Resource = resource
          @OffsetType = offsettype
          @StartTime = starttime
          @TopicId = topicid
          @CompressionType = compressiontype
          @UseAutoCreateTopic = useautocreatetopic
          @MsgMultiple = msgmultiple
        end

        def deserialize(params)
          @Resource = params['Resource']
          @OffsetType = params['OffsetType']
          @StartTime = params['StartTime']
          @TopicId = params['TopicId']
          @CompressionType = params['CompressionType']
          @UseAutoCreateTopic = params['UseAutoCreateTopic']
          @MsgMultiple = params['MsgMultiple']
        end
      end

      # 分区详情
      class TopicPartitionDO < TencentCloud::Common::AbstractModel
        # @param Partition: Partition ID
        # @type Partition: Integer
        # @param LeaderStatus: Leader 运行状态
        # @type LeaderStatus: Integer
        # @param IsrNum: ISR 个数
        # @type IsrNum: Integer
        # @param ReplicaNum: 副本个数
        # @type ReplicaNum: Integer

        attr_accessor :Partition, :LeaderStatus, :IsrNum, :ReplicaNum

        def initialize(partition=nil, leaderstatus=nil, isrnum=nil, replicanum=nil)
          @Partition = partition
          @LeaderStatus = leaderstatus
          @IsrNum = isrnum
          @ReplicaNum = replicanum
        end

        def deserialize(params)
          @Partition = params['Partition']
          @LeaderStatus = params['LeaderStatus']
          @IsrNum = params['IsrNum']
          @ReplicaNum = params['ReplicaNum']
        end
      end

      # 统一返回的TopicResponse
      class TopicResult < TencentCloud::Common::AbstractModel
        # @param TopicList: 返回的主题信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicList: Array
        # @param TotalCount: 符合条件的 topic 数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer

        attr_accessor :TopicList, :TotalCount

        def initialize(topiclist=nil, totalcount=nil)
          @TopicList = topiclist
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['TopicList'].nil?
            @TopicList = []
            params['TopicList'].each do |i|
              topic_tmp = Topic.new
              topic_tmp.deserialize(i)
              @TopicList << topic_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # Topic消息保留时间配置返回信息
      class TopicRetentionTimeConfigRsp < TencentCloud::Common::AbstractModel
        # @param Expect: 期望值，即用户配置的Topic消息保留时间(单位分钟)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Expect: Integer
        # @param Current: 当前值，即当前生效值(可能存在动态调整，单位分钟)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Current: Integer
        # @param ModTimeStamp: 最近变更时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModTimeStamp: Integer

        attr_accessor :Expect, :Current, :ModTimeStamp

        def initialize(expect=nil, current=nil, modtimestamp=nil)
          @Expect = expect
          @Current = current
          @ModTimeStamp = modtimestamp
        end

        def deserialize(params)
          @Expect = params['Expect']
          @Current = params['Current']
          @ModTimeStamp = params['ModTimeStamp']
        end
      end

      # DescribeTopicSubscribeGroup接口出参
      class TopicSubscribeGroup < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param StatusCountInfo: 消费分组状态数量信息
        # @type StatusCountInfo: String
        # @param GroupsInfo: 消费分组信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupsInfo: Array
        # @param Status: 此次请求是否异步的状态。实例里分组较少的会直接返回结果,Status为1。当分组较多时,会异步更新缓存，Status为0时不会返回分组信息，直至Status为1更新完毕返回结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer

        attr_accessor :TotalCount, :StatusCountInfo, :GroupsInfo, :Status

        def initialize(totalcount=nil, statuscountinfo=nil, groupsinfo=nil, status=nil)
          @TotalCount = totalcount
          @StatusCountInfo = statuscountinfo
          @GroupsInfo = groupsinfo
          @Status = status
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @StatusCountInfo = params['StatusCountInfo']
          unless params['GroupsInfo'].nil?
            @GroupsInfo = []
            params['GroupsInfo'].each do |i|
              groupinforesponse_tmp = GroupInfoResponse.new
              groupinforesponse_tmp.deserialize(i)
              @GroupsInfo << groupinforesponse_tmp
            end
          end
          @Status = params['Status']
        end
      end

      # 数据处理参数
      class TransformParam < TencentCloud::Common::AbstractModel
        # @param AnalysisFormat: 解析格式，JSON，DELIMITER分隔符，REGULAR正则提取
        # @type AnalysisFormat: String
        # @param OutputFormat: 输出格式
        # @type OutputFormat: String
        # @param FailureParam: 是否保留解析失败数据
        # @type FailureParam: :class:`Tencentcloud::Ckafka.v20190819.models.FailureParam`
        # @param Content: 原始数据
        # @type Content: String
        # @param SourceType: 数据来源，TOPIC从源topic拉取，CUSTOMIZE自定义
        # @type SourceType: String
        # @param Regex: 分隔符、正则表达式
        # @type Regex: String
        # @param MapParam: Map
        # @type MapParam: Array
        # @param FilterParam: 过滤器
        # @type FilterParam: Array
        # @param Result: 测试结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
        # @param AnalyseResult: 解析结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnalyseResult: Array
        # @param UseEventBus: 底层引擎是否使用eb
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UseEventBus: Boolean

        attr_accessor :AnalysisFormat, :OutputFormat, :FailureParam, :Content, :SourceType, :Regex, :MapParam, :FilterParam, :Result, :AnalyseResult, :UseEventBus

        def initialize(analysisformat=nil, outputformat=nil, failureparam=nil, content=nil, sourcetype=nil, regex=nil, mapparam=nil, filterparam=nil, result=nil, analyseresult=nil, useeventbus=nil)
          @AnalysisFormat = analysisformat
          @OutputFormat = outputformat
          @FailureParam = failureparam
          @Content = content
          @SourceType = sourcetype
          @Regex = regex
          @MapParam = mapparam
          @FilterParam = filterparam
          @Result = result
          @AnalyseResult = analyseresult
          @UseEventBus = useeventbus
        end

        def deserialize(params)
          @AnalysisFormat = params['AnalysisFormat']
          @OutputFormat = params['OutputFormat']
          unless params['FailureParam'].nil?
            @FailureParam = FailureParam.new
            @FailureParam.deserialize(params['FailureParam'])
          end
          @Content = params['Content']
          @SourceType = params['SourceType']
          @Regex = params['Regex']
          unless params['MapParam'].nil?
            @MapParam = []
            params['MapParam'].each do |i|
              mapparam_tmp = MapParam.new
              mapparam_tmp.deserialize(i)
              @MapParam << mapparam_tmp
            end
          end
          unless params['FilterParam'].nil?
            @FilterParam = []
            params['FilterParam'].each do |i|
              filtermapparam_tmp = FilterMapParam.new
              filtermapparam_tmp.deserialize(i)
              @FilterParam << filtermapparam_tmp
            end
          end
          @Result = params['Result']
          unless params['AnalyseResult'].nil?
            @AnalyseResult = []
            params['AnalyseResult'].each do |i|
              mapparam_tmp = MapParam.new
              mapparam_tmp.deserialize(i)
              @AnalyseResult << mapparam_tmp
            end
          end
          @UseEventBus = params['UseEventBus']
        end
      end

      # 数据处理参数
      class TransformsParam < TencentCloud::Common::AbstractModel
        # @param Content: 原始数据
        # @type Content: String
        # @param FieldChain: 处理链
        # @type FieldChain: Array
        # @param FilterParam: 过滤器
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilterParam: Array
        # @param FailureParam: 失败处理
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailureParam: :class:`Tencentcloud::Ckafka.v20190819.models.FailureParam`
        # @param Result: 测试结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
        # @param SourceType: 数据来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceType: String
        # @param OutputFormat: 输出格式，JSON，ROW，默认为JSON
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutputFormat: String
        # @param RowParam: 输出格式为ROW必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RowParam: :class:`Tencentcloud::Ckafka.v20190819.models.RowParam`
        # @param KeepMetadata: 是否保留数据源Topic元数据信息（源Topic、Partition、Offset），默认为false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeepMetadata: Boolean
        # @param BatchAnalyse: 数组解析
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchAnalyse: :class:`Tencentcloud::Ckafka.v20190819.models.BatchAnalyseParam`

        attr_accessor :Content, :FieldChain, :FilterParam, :FailureParam, :Result, :SourceType, :OutputFormat, :RowParam, :KeepMetadata, :BatchAnalyse

        def initialize(content=nil, fieldchain=nil, filterparam=nil, failureparam=nil, result=nil, sourcetype=nil, outputformat=nil, rowparam=nil, keepmetadata=nil, batchanalyse=nil)
          @Content = content
          @FieldChain = fieldchain
          @FilterParam = filterparam
          @FailureParam = failureparam
          @Result = result
          @SourceType = sourcetype
          @OutputFormat = outputformat
          @RowParam = rowparam
          @KeepMetadata = keepmetadata
          @BatchAnalyse = batchanalyse
        end

        def deserialize(params)
          @Content = params['Content']
          unless params['FieldChain'].nil?
            @FieldChain = []
            params['FieldChain'].each do |i|
              fieldparam_tmp = FieldParam.new
              fieldparam_tmp.deserialize(i)
              @FieldChain << fieldparam_tmp
            end
          end
          unless params['FilterParam'].nil?
            @FilterParam = []
            params['FilterParam'].each do |i|
              filtermapparam_tmp = FilterMapParam.new
              filtermapparam_tmp.deserialize(i)
              @FilterParam << filtermapparam_tmp
            end
          end
          unless params['FailureParam'].nil?
            @FailureParam = FailureParam.new
            @FailureParam.deserialize(params['FailureParam'])
          end
          @Result = params['Result']
          @SourceType = params['SourceType']
          @OutputFormat = params['OutputFormat']
          unless params['RowParam'].nil?
            @RowParam = RowParam.new
            @RowParam.deserialize(params['RowParam'])
          end
          @KeepMetadata = params['KeepMetadata']
          unless params['BatchAnalyse'].nil?
            @BatchAnalyse = BatchAnalyseParam.new
            @BatchAnalyse.deserialize(params['BatchAnalyse'])
          end
        end
      end

      # Url解析
      class UrlDecodeParam < TencentCloud::Common::AbstractModel
        # @param CharsetName: 编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CharsetName: String

        attr_accessor :CharsetName

        def initialize(charsetname=nil)
          @CharsetName = charsetname
        end

        def deserialize(params)
          @CharsetName = params['CharsetName']
        end
      end

      # 用户实体
      class User < TencentCloud::Common::AbstractModel
        # @param UserId: 用户id
        # @type UserId: Integer
        # @param Name: 用户名称
        # @type Name: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 最后更新时间
        # @type UpdateTime: String

        attr_accessor :UserId, :Name, :CreateTime, :UpdateTime

        def initialize(userid=nil, name=nil, createtime=nil, updatetime=nil)
          @UserId = userid
          @Name = name
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @UserId = params['UserId']
          @Name = params['Name']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 用户返回实体
      class UserResponse < TencentCloud::Common::AbstractModel
        # @param Users: 符合条件的用户列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Users: Array
        # @param TotalCount: 符合条件的总用户数
        # @type TotalCount: Integer

        attr_accessor :Users, :TotalCount

        def initialize(users=nil, totalcount=nil)
          @Users = users
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['Users'].nil?
            @Users = []
            params['Users'].each do |i|
              user_tmp = User.new
              user_tmp.deserialize(i)
              @Users << user_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # 数据处理——Value处理参数
      class ValueParam < TencentCloud::Common::AbstractModel
        # @param Type: 处理模式，REPLACE替换，SUBSTR截取，DATE日期转换，TRIM去除前后空格，REGEX_REPLACE正则替换，URL_DECODE，LOWERCASE转换为小写
        # @type Type: String
        # @param Replace: 替换，TYPE=REPLACE时必传
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Replace: :class:`Tencentcloud::Ckafka.v20190819.models.ReplaceParam`
        # @param Substr: 截取，TYPE=SUBSTR时必传
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Substr: :class:`Tencentcloud::Ckafka.v20190819.models.SubstrParam`
        # @param Date: 时间转换，TYPE=DATE时必传
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Date: :class:`Tencentcloud::Ckafka.v20190819.models.DateParam`
        # @param RegexReplace: 正则替换，TYPE=REGEX_REPLACE时必传
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegexReplace: :class:`Tencentcloud::Ckafka.v20190819.models.RegexReplaceParam`
        # @param Split: 值支持一拆多，TYPE=SPLIT时必传
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Split: :class:`Tencentcloud::Ckafka.v20190819.models.SplitParam`
        # @param KV: key-value二次解析，TYPE=KV时必传
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KV: :class:`Tencentcloud::Ckafka.v20190819.models.KVParam`
        # @param Result: 处理结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
        # @param JsonPathReplace: JsonPath替换，TYPE=JSON_PATH_REPLACE时必传
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JsonPathReplace: :class:`Tencentcloud::Ckafka.v20190819.models.JsonPathReplaceParam`
        # @param UrlDecode: Url解析
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UrlDecode: :class:`Tencentcloud::Ckafka.v20190819.models.UrlDecodeParam`
        # @param Lowercase: 小写字符解析
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Lowercase: :class:`Tencentcloud::Ckafka.v20190819.models.LowercaseParam`

        attr_accessor :Type, :Replace, :Substr, :Date, :RegexReplace, :Split, :KV, :Result, :JsonPathReplace, :UrlDecode, :Lowercase

        def initialize(type=nil, replace=nil, substr=nil, date=nil, regexreplace=nil, split=nil, kv=nil, result=nil, jsonpathreplace=nil, urldecode=nil, lowercase=nil)
          @Type = type
          @Replace = replace
          @Substr = substr
          @Date = date
          @RegexReplace = regexreplace
          @Split = split
          @KV = kv
          @Result = result
          @JsonPathReplace = jsonpathreplace
          @UrlDecode = urldecode
          @Lowercase = lowercase
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['Replace'].nil?
            @Replace = ReplaceParam.new
            @Replace.deserialize(params['Replace'])
          end
          unless params['Substr'].nil?
            @Substr = SubstrParam.new
            @Substr.deserialize(params['Substr'])
          end
          unless params['Date'].nil?
            @Date = DateParam.new
            @Date.deserialize(params['Date'])
          end
          unless params['RegexReplace'].nil?
            @RegexReplace = RegexReplaceParam.new
            @RegexReplace.deserialize(params['RegexReplace'])
          end
          unless params['Split'].nil?
            @Split = SplitParam.new
            @Split.deserialize(params['Split'])
          end
          unless params['KV'].nil?
            @KV = KVParam.new
            @KV.deserialize(params['KV'])
          end
          @Result = params['Result']
          unless params['JsonPathReplace'].nil?
            @JsonPathReplace = JsonPathReplaceParam.new
            @JsonPathReplace.deserialize(params['JsonPathReplace'])
          end
          unless params['UrlDecode'].nil?
            @UrlDecode = UrlDecodeParam.new
            @UrlDecode.deserialize(params['UrlDecode'])
          end
          unless params['Lowercase'].nil?
            @Lowercase = LowercaseParam.new
            @Lowercase.deserialize(params['Lowercase'])
          end
        end
      end

      # 虚拟IP实体
      class VipEntity < TencentCloud::Common::AbstractModel
        # @param Vip: 虚拟IP
        # @type Vip: String
        # @param Vport: 虚拟端口
        # @type Vport: String

        attr_accessor :Vip, :Vport

        def initialize(vip=nil, vport=nil)
          @Vip = vip
          @Vport = vport
        end

        def deserialize(params)
          @Vip = params['Vip']
          @Vport = params['Vport']
        end
      end

      # zone信息实体
      class ZoneInfo < TencentCloud::Common::AbstractModel
        # @param ZoneId: zone的id
        # @type ZoneId: String
        # @param IsInternalApp: 是否内部APP
        # @type IsInternalApp: Integer
        # @param AppId: app id
        # @type AppId: Integer
        # @param Flag: 标识
        # @type Flag: Boolean
        # @param ZoneName: zone名称
        # @type ZoneName: String
        # @param ZoneStatus: zone状态
        # @type ZoneStatus: Integer
        # @param Exflag: 额外标识
        # @type Exflag: String
        # @param SoldOut: json对象，key为机型，value true为售罄，false为未售罄
        # @type SoldOut: String
        # @param SalesInfo: 标准版售罄信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SalesInfo: Array
        # @param ExtraFlag: 额外标识
        # @type ExtraFlag: String

        attr_accessor :ZoneId, :IsInternalApp, :AppId, :Flag, :ZoneName, :ZoneStatus, :Exflag, :SoldOut, :SalesInfo, :ExtraFlag
        extend Gem::Deprecate
        deprecate :Exflag, :none, 2024, 9
        deprecate :Exflag=, :none, 2024, 9

        def initialize(zoneid=nil, isinternalapp=nil, appid=nil, flag=nil, zonename=nil, zonestatus=nil, exflag=nil, soldout=nil, salesinfo=nil, extraflag=nil)
          @ZoneId = zoneid
          @IsInternalApp = isinternalapp
          @AppId = appid
          @Flag = flag
          @ZoneName = zonename
          @ZoneStatus = zonestatus
          @Exflag = exflag
          @SoldOut = soldout
          @SalesInfo = salesinfo
          @ExtraFlag = extraflag
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @IsInternalApp = params['IsInternalApp']
          @AppId = params['AppId']
          @Flag = params['Flag']
          @ZoneName = params['ZoneName']
          @ZoneStatus = params['ZoneStatus']
          @Exflag = params['Exflag']
          @SoldOut = params['SoldOut']
          unless params['SalesInfo'].nil?
            @SalesInfo = []
            params['SalesInfo'].each do |i|
              saleinfo_tmp = SaleInfo.new
              saleinfo_tmp.deserialize(i)
              @SalesInfo << saleinfo_tmp
            end
          end
          @ExtraFlag = params['ExtraFlag']
        end
      end

      # 查询kafka的zone信息返回的实体
      class ZoneResponse < TencentCloud::Common::AbstractModel
        # @param ZoneList: zone列表
        # @type ZoneList: Array
        # @param MaxBuyInstanceNum: 最大购买实例个数
        # @type MaxBuyInstanceNum: Integer
        # @param MaxBandwidth: 最大购买带宽 单位Mb/s
        # @type MaxBandwidth: Integer
        # @param UnitPrice: 后付费单位价格
        # @type UnitPrice: :class:`Tencentcloud::Ckafka.v20190819.models.Price`
        # @param MessagePrice: 后付费消息单价
        # @type MessagePrice: :class:`Tencentcloud::Ckafka.v20190819.models.Price`
        # @param ClusterInfo: 用户独占集群信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterInfo: Array
        # @param Standard: 购买标准版配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Standard: String
        # @param StandardS2: 购买标准版S2配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StandardS2: String
        # @param Profession: 购买专业版配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Profession: String
        # @param Physical: 购买物理独占版配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Physical: String
        # @param PublicNetwork: 公网带宽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicNetwork: String
        # @param PublicNetworkLimit: 公网带宽配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicNetworkLimit: String
        # @param RequestId: 请求ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestId: String
        # @param Version: 版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param Offset: 分页offset
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Offset: Integer
        # @param Limit: 分页limit
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Limit: Integer
        # @param ForceCheckTag: 是否必须录入tag
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ForceCheckTag: Boolean

        attr_accessor :ZoneList, :MaxBuyInstanceNum, :MaxBandwidth, :UnitPrice, :MessagePrice, :ClusterInfo, :Standard, :StandardS2, :Profession, :Physical, :PublicNetwork, :PublicNetworkLimit, :RequestId, :Version, :Offset, :Limit, :ForceCheckTag

        def initialize(zonelist=nil, maxbuyinstancenum=nil, maxbandwidth=nil, unitprice=nil, messageprice=nil, clusterinfo=nil, standard=nil, standards2=nil, profession=nil, physical=nil, publicnetwork=nil, publicnetworklimit=nil, requestid=nil, version=nil, offset=nil, limit=nil, forcechecktag=nil)
          @ZoneList = zonelist
          @MaxBuyInstanceNum = maxbuyinstancenum
          @MaxBandwidth = maxbandwidth
          @UnitPrice = unitprice
          @MessagePrice = messageprice
          @ClusterInfo = clusterinfo
          @Standard = standard
          @StandardS2 = standards2
          @Profession = profession
          @Physical = physical
          @PublicNetwork = publicnetwork
          @PublicNetworkLimit = publicnetworklimit
          @RequestId = requestid
          @Version = version
          @Offset = offset
          @Limit = limit
          @ForceCheckTag = forcechecktag
        end

        def deserialize(params)
          unless params['ZoneList'].nil?
            @ZoneList = []
            params['ZoneList'].each do |i|
              zoneinfo_tmp = ZoneInfo.new
              zoneinfo_tmp.deserialize(i)
              @ZoneList << zoneinfo_tmp
            end
          end
          @MaxBuyInstanceNum = params['MaxBuyInstanceNum']
          @MaxBandwidth = params['MaxBandwidth']
          unless params['UnitPrice'].nil?
            @UnitPrice = Price.new
            @UnitPrice.deserialize(params['UnitPrice'])
          end
          unless params['MessagePrice'].nil?
            @MessagePrice = Price.new
            @MessagePrice.deserialize(params['MessagePrice'])
          end
          unless params['ClusterInfo'].nil?
            @ClusterInfo = []
            params['ClusterInfo'].each do |i|
              clusterinfo_tmp = ClusterInfo.new
              clusterinfo_tmp.deserialize(i)
              @ClusterInfo << clusterinfo_tmp
            end
          end
          @Standard = params['Standard']
          @StandardS2 = params['StandardS2']
          @Profession = params['Profession']
          @Physical = params['Physical']
          @PublicNetwork = params['PublicNetwork']
          @PublicNetworkLimit = params['PublicNetworkLimit']
          @RequestId = params['RequestId']
          @Version = params['Version']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ForceCheckTag = params['ForceCheckTag']
        end
      end

    end
  end
end

