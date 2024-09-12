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
  module Tat
    module V20201028
      # 自动化助手客户端信息
      class AutomationAgentInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param Version: Agent 版本号。
        # @type Version: String
        # @param LastHeartbeatTime: 上次心跳时间
        # @type LastHeartbeatTime: String
        # @param AgentStatus: Agent状态，取值范围：
        # Online：在线，Offline：离线
        # @type AgentStatus: String
        # @param Environment: Agent运行环境，取值范围：Linux：Linux实例Windows：Windows实例
        # @type Environment: String
        # @param SupportFeatures: Agent 支持的功能列表。
        # @type SupportFeatures: Array

        attr_accessor :InstanceId, :Version, :LastHeartbeatTime, :AgentStatus, :Environment, :SupportFeatures

        def initialize(instanceid=nil, version=nil, lastheartbeattime=nil, agentstatus=nil, environment=nil, supportfeatures=nil)
          @InstanceId = instanceid
          @Version = version
          @LastHeartbeatTime = lastheartbeattime
          @AgentStatus = agentstatus
          @Environment = environment
          @SupportFeatures = supportfeatures
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Version = params['Version']
          @LastHeartbeatTime = params['LastHeartbeatTime']
          @AgentStatus = params['AgentStatus']
          @Environment = params['Environment']
          @SupportFeatures = params['SupportFeatures']
        end
      end

      # CancelInvocation请求参数结构体
      class CancelInvocationRequest < TencentCloud::Common::AbstractModel
        # @param InvocationId: 执行活动ID
        # @type InvocationId: String
        # @param InstanceIds: 实例ID列表，上限100。支持实例类型：
        # <li> CVM </li>
        # <li> LIGHTHOUSE </li>
        # @type InstanceIds: Array

        attr_accessor :InvocationId, :InstanceIds

        def initialize(invocationid=nil, instanceids=nil)
          @InvocationId = invocationid
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InvocationId = params['InvocationId']
          @InstanceIds = params['InstanceIds']
        end
      end

      # CancelInvocation返回参数结构体
      class CancelInvocationResponse < TencentCloud::Common::AbstractModel
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

      # 命令详情。
      class Command < TencentCloud::Common::AbstractModel
        # @param CommandId: 命令ID。
        # @type CommandId: String
        # @param CommandName: 命令名称。
        # @type CommandName: String
        # @param Description: 命令描述。
        # @type Description: String
        # @param Content: Base64编码后的命令内容。
        # @type Content: String
        # @param CommandType: 命令类型。
        # @type CommandType: String
        # @param WorkingDirectory: 命令执行路径。
        # @type WorkingDirectory: String
        # @param Timeout: 命令超时时间。
        # @type Timeout: Integer
        # @param CreatedTime: 命令创建时间。
        # @type CreatedTime: String
        # @param UpdatedTime: 命令更新时间。
        # @type UpdatedTime: String
        # @param EnableParameter: 是否启用自定义参数功能。
        # @type EnableParameter: Boolean
        # @param DefaultParameters: 自定义参数的默认取值。
        # @type DefaultParameters: String
        # @param DefaultParameterConfs: 自定义参数的默认取值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultParameterConfs: Array
        # @param Scenes: 命令关联的场景
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Scenes: Array
        # @param FormattedDescription: 命令的结构化描述。公共命令有值，用户命令为空字符串。
        # @type FormattedDescription: String
        # @param CreatedBy: 命令创建者。TAT 代表公共命令，USER 代表个人命令。
        # @type CreatedBy: String
        # @param Tags: 命令关联的标签列表。
        # @type Tags: Array
        # @param Username: 在实例上执行命令的用户名。
        # @type Username: String
        # @param OutputCOSBucketUrl: 日志上传的cos bucket 地址。
        # @type OutputCOSBucketUrl: String
        # @param OutputCOSKeyPrefix: 日志在cos bucket中的目录。
        # @type OutputCOSKeyPrefix: String

        attr_accessor :CommandId, :CommandName, :Description, :Content, :CommandType, :WorkingDirectory, :Timeout, :CreatedTime, :UpdatedTime, :EnableParameter, :DefaultParameters, :DefaultParameterConfs, :Scenes, :FormattedDescription, :CreatedBy, :Tags, :Username, :OutputCOSBucketUrl, :OutputCOSKeyPrefix

        def initialize(commandid=nil, commandname=nil, description=nil, content=nil, commandtype=nil, workingdirectory=nil, timeout=nil, createdtime=nil, updatedtime=nil, enableparameter=nil, defaultparameters=nil, defaultparameterconfs=nil, scenes=nil, formatteddescription=nil, createdby=nil, tags=nil, username=nil, outputcosbucketurl=nil, outputcoskeyprefix=nil)
          @CommandId = commandid
          @CommandName = commandname
          @Description = description
          @Content = content
          @CommandType = commandtype
          @WorkingDirectory = workingdirectory
          @Timeout = timeout
          @CreatedTime = createdtime
          @UpdatedTime = updatedtime
          @EnableParameter = enableparameter
          @DefaultParameters = defaultparameters
          @DefaultParameterConfs = defaultparameterconfs
          @Scenes = scenes
          @FormattedDescription = formatteddescription
          @CreatedBy = createdby
          @Tags = tags
          @Username = username
          @OutputCOSBucketUrl = outputcosbucketurl
          @OutputCOSKeyPrefix = outputcoskeyprefix
        end

        def deserialize(params)
          @CommandId = params['CommandId']
          @CommandName = params['CommandName']
          @Description = params['Description']
          @Content = params['Content']
          @CommandType = params['CommandType']
          @WorkingDirectory = params['WorkingDirectory']
          @Timeout = params['Timeout']
          @CreatedTime = params['CreatedTime']
          @UpdatedTime = params['UpdatedTime']
          @EnableParameter = params['EnableParameter']
          @DefaultParameters = params['DefaultParameters']
          unless params['DefaultParameterConfs'].nil?
            @DefaultParameterConfs = []
            params['DefaultParameterConfs'].each do |i|
              defaultparameterconf_tmp = DefaultParameterConf.new
              defaultparameterconf_tmp.deserialize(i)
              @DefaultParameterConfs << defaultparameterconf_tmp
            end
          end
          @Scenes = params['Scenes']
          @FormattedDescription = params['FormattedDescription']
          @CreatedBy = params['CreatedBy']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @Username = params['Username']
          @OutputCOSBucketUrl = params['OutputCOSBucketUrl']
          @OutputCOSKeyPrefix = params['OutputCOSKeyPrefix']
        end
      end

      # 命令执行详情。
      class CommandDocument < TencentCloud::Common::AbstractModel
        # @param Content: Base64 编码后的执行命令。
        # @type Content: String
        # @param CommandType: 命令类型。
        # @type CommandType: String
        # @param Timeout: 超时时间。
        # @type Timeout: Integer
        # @param WorkingDirectory: 执行路径。
        # @type WorkingDirectory: String
        # @param Username: 执行用户。
        # @type Username: String
        # @param OutputCOSBucketUrl: 保存输出的 COS Bucket 链接。
        # @type OutputCOSBucketUrl: String
        # @param OutputCOSKeyPrefix: 保存输出的文件名称前缀。
        # @type OutputCOSKeyPrefix: String

        attr_accessor :Content, :CommandType, :Timeout, :WorkingDirectory, :Username, :OutputCOSBucketUrl, :OutputCOSKeyPrefix

        def initialize(content=nil, commandtype=nil, timeout=nil, workingdirectory=nil, username=nil, outputcosbucketurl=nil, outputcoskeyprefix=nil)
          @Content = content
          @CommandType = commandtype
          @Timeout = timeout
          @WorkingDirectory = workingdirectory
          @Username = username
          @OutputCOSBucketUrl = outputcosbucketurl
          @OutputCOSKeyPrefix = outputcoskeyprefix
        end

        def deserialize(params)
          @Content = params['Content']
          @CommandType = params['CommandType']
          @Timeout = params['Timeout']
          @WorkingDirectory = params['WorkingDirectory']
          @Username = params['Username']
          @OutputCOSBucketUrl = params['OutputCOSBucketUrl']
          @OutputCOSKeyPrefix = params['OutputCOSKeyPrefix']
        end
      end

      # CreateCommand请求参数结构体
      class CreateCommandRequest < TencentCloud::Common::AbstractModel
        # @param CommandName: 命令名称。名称仅支持中文、英文、数字、下划线、分隔符"-"、小数点，最大长度不能超60个字节。
        # @type CommandName: String
        # @param Content: Base64编码后的命令内容，长度不可超过64KB。
        # @type Content: String
        # @param Description: 命令描述。不超过120字符。
        # @type Description: String
        # @param CommandType: 命令类型，目前支持取值：SHELL、POWERSHELL。默认：SHELL。
        # @type CommandType: String
        # @param WorkingDirectory: 命令执行路径，对于 SHELL 命令默认为 /root，对于 POWERSHELL 命令默认为 C:\Program Files\qcloud\tat_agent\workdir。
        # @type WorkingDirectory: String
        # @param Timeout: 命令超时时间，默认60秒。取值范围[1, 86400]。
        # @type Timeout: Integer
        # @param EnableParameter: 是否启用自定义参数功能。
        # 一旦创建，此值不提供修改。
        # 默认值：false。
        # @type EnableParameter: Boolean
        # @param DefaultParameters: 启用自定义参数功能时，自定义参数的默认取值。字段类型为json encoded string。如：{\"varA\": \"222\"}。
        # key为自定义参数名称，value为该参数的默认取值。kv均为字符串型。
        # 如果InvokeCommand时未提供参数取值，将使用这里的默认值进行替换。
        # 自定义参数最多20个。
        # 自定义参数名称需符合以下规范：字符数目上限64，可选范围【a-zA-Z0-9-_】。
        # @type DefaultParameters: String
        # @param DefaultParameterConfs: 自定义参数数组。
        # 如果InvokeCommand时未提供参数取值，将使用这里的默认值进行替换。
        # 自定义参数最多20个。
        # @type DefaultParameterConfs: Array
        # @param Tags: 为命令关联的标签，列表长度不超过10。
        # @type Tags: Array
        # @param Username: 在 CVM 或 Lighthouse 实例中执行命令的用户名称。
        # 使用最小权限执行命令是权限管理的最佳实践，建议您以普通用户身份执行云助手命令。默认情况下，在 Linux 实例中以 root 用户执行命令；在Windows 实例中以 System 用户执行命令。
        # @type Username: String
        # @param OutputCOSBucketUrl: 指定日志上传的cos bucket 地址，必须以https开头，如 https://BucketName-123454321.cos.ap-beijing.myqcloud.com。
        # @type OutputCOSBucketUrl: String
        # @param OutputCOSKeyPrefix: 指定日志在cos bucket中的目录，目录命名有如下规则：
        # 1. 可用数字、中英文和可见字符的组合，长度最多为60。
        # 2. 用 / 分割路径，可快速创建子目录。
        # 3. 不允许连续 / ；不允许以 / 开头；不允许以..作为文件夹名称
        # @type OutputCOSKeyPrefix: String

        attr_accessor :CommandName, :Content, :Description, :CommandType, :WorkingDirectory, :Timeout, :EnableParameter, :DefaultParameters, :DefaultParameterConfs, :Tags, :Username, :OutputCOSBucketUrl, :OutputCOSKeyPrefix

        def initialize(commandname=nil, content=nil, description=nil, commandtype=nil, workingdirectory=nil, timeout=nil, enableparameter=nil, defaultparameters=nil, defaultparameterconfs=nil, tags=nil, username=nil, outputcosbucketurl=nil, outputcoskeyprefix=nil)
          @CommandName = commandname
          @Content = content
          @Description = description
          @CommandType = commandtype
          @WorkingDirectory = workingdirectory
          @Timeout = timeout
          @EnableParameter = enableparameter
          @DefaultParameters = defaultparameters
          @DefaultParameterConfs = defaultparameterconfs
          @Tags = tags
          @Username = username
          @OutputCOSBucketUrl = outputcosbucketurl
          @OutputCOSKeyPrefix = outputcoskeyprefix
        end

        def deserialize(params)
          @CommandName = params['CommandName']
          @Content = params['Content']
          @Description = params['Description']
          @CommandType = params['CommandType']
          @WorkingDirectory = params['WorkingDirectory']
          @Timeout = params['Timeout']
          @EnableParameter = params['EnableParameter']
          @DefaultParameters = params['DefaultParameters']
          unless params['DefaultParameterConfs'].nil?
            @DefaultParameterConfs = []
            params['DefaultParameterConfs'].each do |i|
              defaultparameterconf_tmp = DefaultParameterConf.new
              defaultparameterconf_tmp.deserialize(i)
              @DefaultParameterConfs << defaultparameterconf_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @Username = params['Username']
          @OutputCOSBucketUrl = params['OutputCOSBucketUrl']
          @OutputCOSKeyPrefix = params['OutputCOSKeyPrefix']
        end
      end

      # CreateCommand返回参数结构体
      class CreateCommandResponse < TencentCloud::Common::AbstractModel
        # @param CommandId: 命令ID。
        # @type CommandId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CommandId, :RequestId

        def initialize(commandid=nil, requestid=nil)
          @CommandId = commandid
          @RequestId = requestid
        end

        def deserialize(params)
          @CommandId = params['CommandId']
          @RequestId = params['RequestId']
        end
      end

      # CreateInvoker请求参数结构体
      class CreateInvokerRequest < TencentCloud::Common::AbstractModel
        # @param Name: 执行器名称。
        # @type Name: String
        # @param Type: 执行器类型，当前仅支持周期类型执行器，取值：`SCHEDULE` 。
        # @type Type: String
        # @param CommandId: 远程命令ID。
        # @type CommandId: String
        # @param InstanceIds: 触发器关联的实例ID。列表上限 100。
        # @type InstanceIds: Array
        # @param Username: 命令执行用户。
        # @type Username: String
        # @param Parameters: 命令自定义参数。
        # @type Parameters: String
        # @param ScheduleSettings: 周期执行器设置，当创建周期执行器时，必须指定此参数。
        # @type ScheduleSettings: :class:`Tencentcloud::Tat.v20201028.models.ScheduleSettings`

        attr_accessor :Name, :Type, :CommandId, :InstanceIds, :Username, :Parameters, :ScheduleSettings

        def initialize(name=nil, type=nil, commandid=nil, instanceids=nil, username=nil, parameters=nil, schedulesettings=nil)
          @Name = name
          @Type = type
          @CommandId = commandid
          @InstanceIds = instanceids
          @Username = username
          @Parameters = parameters
          @ScheduleSettings = schedulesettings
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @CommandId = params['CommandId']
          @InstanceIds = params['InstanceIds']
          @Username = params['Username']
          @Parameters = params['Parameters']
          unless params['ScheduleSettings'].nil?
            @ScheduleSettings = ScheduleSettings.new
            @ScheduleSettings.deserialize(params['ScheduleSettings'])
          end
        end
      end

      # CreateInvoker返回参数结构体
      class CreateInvokerResponse < TencentCloud::Common::AbstractModel
        # @param InvokerId: 执行器ID。
        # @type InvokerId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InvokerId, :RequestId

        def initialize(invokerid=nil, requestid=nil)
          @InvokerId = invokerid
          @RequestId = requestid
        end

        def deserialize(params)
          @InvokerId = params['InvokerId']
          @RequestId = params['RequestId']
        end
      end

      # CreateRegisterCode请求参数结构体
      class CreateRegisterCodeRequest < TencentCloud::Common::AbstractModel
        # @param Description: 注册码描述。
        # @type Description: String
        # @param InstanceNamePrefix: 注册实例名称前缀。
        # @type InstanceNamePrefix: String
        # @param RegisterLimit: 该注册码允许注册的实例数目。默认限制为10个。
        # @type RegisterLimit: Integer
        # @param EffectiveTime: 该注册码的有效时间，单位为小时。默认为4小时。
        # @type EffectiveTime: Integer
        # @param IpAddressRange: 该注册码限制tat_agent只能从IpAddressRange所描述公网出口进行注册。默认不做限制。
        # @type IpAddressRange: String

        attr_accessor :Description, :InstanceNamePrefix, :RegisterLimit, :EffectiveTime, :IpAddressRange

        def initialize(description=nil, instancenameprefix=nil, registerlimit=nil, effectivetime=nil, ipaddressrange=nil)
          @Description = description
          @InstanceNamePrefix = instancenameprefix
          @RegisterLimit = registerlimit
          @EffectiveTime = effectivetime
          @IpAddressRange = ipaddressrange
        end

        def deserialize(params)
          @Description = params['Description']
          @InstanceNamePrefix = params['InstanceNamePrefix']
          @RegisterLimit = params['RegisterLimit']
          @EffectiveTime = params['EffectiveTime']
          @IpAddressRange = params['IpAddressRange']
        end
      end

      # CreateRegisterCode返回参数结构体
      class CreateRegisterCodeResponse < TencentCloud::Common::AbstractModel
        # @param RegisterCodeId: 注册码ID。
        # @type RegisterCodeId: String
        # @param RegisterCodeValue: 注册码值。
        # @type RegisterCodeValue: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegisterCodeId, :RegisterCodeValue, :RequestId

        def initialize(registercodeid=nil, registercodevalue=nil, requestid=nil)
          @RegisterCodeId = registercodeid
          @RegisterCodeValue = registercodevalue
          @RequestId = requestid
        end

        def deserialize(params)
          @RegisterCodeId = params['RegisterCodeId']
          @RegisterCodeValue = params['RegisterCodeValue']
          @RequestId = params['RequestId']
        end
      end

      # 自定义参数。
      class DefaultParameterConf < TencentCloud::Common::AbstractModel
        # @param ParameterName: 参数名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParameterName: String
        # @param ParameterValue: 参数默认值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParameterValue: String
        # @param ParameterDescription: 参数描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParameterDescription: String

        attr_accessor :ParameterName, :ParameterValue, :ParameterDescription

        def initialize(parametername=nil, parametervalue=nil, parameterdescription=nil)
          @ParameterName = parametername
          @ParameterValue = parametervalue
          @ParameterDescription = parameterdescription
        end

        def deserialize(params)
          @ParameterName = params['ParameterName']
          @ParameterValue = params['ParameterValue']
          @ParameterDescription = params['ParameterDescription']
        end
      end

      # DeleteCommand请求参数结构体
      class DeleteCommandRequest < TencentCloud::Common::AbstractModel
        # @param CommandId: 待删除的命令ID。
        # @type CommandId: String

        attr_accessor :CommandId

        def initialize(commandid=nil)
          @CommandId = commandid
        end

        def deserialize(params)
          @CommandId = params['CommandId']
        end
      end

      # DeleteCommand返回参数结构体
      class DeleteCommandResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCommands请求参数结构体
      class DeleteCommandsRequest < TencentCloud::Common::AbstractModel
        # @param CommandIds: 待删除命令id
        # @type CommandIds: Array

        attr_accessor :CommandIds

        def initialize(commandids=nil)
          @CommandIds = commandids
        end

        def deserialize(params)
          @CommandIds = params['CommandIds']
        end
      end

      # DeleteCommands返回参数结构体
      class DeleteCommandsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteInvoker请求参数结构体
      class DeleteInvokerRequest < TencentCloud::Common::AbstractModel
        # @param InvokerId: 待删除的执行器ID。
        # @type InvokerId: String

        attr_accessor :InvokerId

        def initialize(invokerid=nil)
          @InvokerId = invokerid
        end

        def deserialize(params)
          @InvokerId = params['InvokerId']
        end
      end

      # DeleteInvoker返回参数结构体
      class DeleteInvokerResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRegisterCodes请求参数结构体
      class DeleteRegisterCodesRequest < TencentCloud::Common::AbstractModel
        # @param RegisterCodeIds: 注册码ID列表。限制输入的注册码ID数量大于0小于100。
        # @type RegisterCodeIds: Array

        attr_accessor :RegisterCodeIds

        def initialize(registercodeids=nil)
          @RegisterCodeIds = registercodeids
        end

        def deserialize(params)
          @RegisterCodeIds = params['RegisterCodeIds']
        end
      end

      # DeleteRegisterCodes返回参数结构体
      class DeleteRegisterCodesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRegisterInstance请求参数结构体
      class DeleteRegisterInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DeleteRegisterInstance返回参数结构体
      class DeleteRegisterInstanceResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAutomationAgentStatus请求参数结构体
      class DescribeAutomationAgentStatusRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 待查询的实例ID列表。
        # @type InstanceIds: Array
        # @param Filters: 过滤条件。<br> <li> agent-status - String - 是否必填：否 -（过滤条件）按照agent状态过滤，取值：Online 在线，Offline 离线。<br> <li> environment - String - 是否必填：否 -（过滤条件）按照agent运行环境查询，取值：Linux, Windows。<br> <li> instance-id - String - 是否必填：否 -（过滤条件）按照实例ID过滤。 <br>每次请求的 `Filters` 的上限为10， `Filter.Values` 的上限为5。参数不支持同时指定 `InstanceIds` 和 `Filters` 。
        # @type Filters: Array
        # @param Limit: 返回数量，默认为20，最大值为100。关于 `Limit` 的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。关于 `Offset` 的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer

        attr_accessor :InstanceIds, :Filters, :Limit, :Offset

        def initialize(instanceids=nil, filters=nil, limit=nil, offset=nil)
          @InstanceIds = instanceids
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeAutomationAgentStatus返回参数结构体
      class DescribeAutomationAgentStatusResponse < TencentCloud::Common::AbstractModel
        # @param AutomationAgentSet: Agent 信息列表。
        # @type AutomationAgentSet: Array
        # @param TotalCount: 符合条件的 Agent 总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AutomationAgentSet, :TotalCount, :RequestId

        def initialize(automationagentset=nil, totalcount=nil, requestid=nil)
          @AutomationAgentSet = automationagentset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AutomationAgentSet'].nil?
            @AutomationAgentSet = []
            params['AutomationAgentSet'].each do |i|
              automationagentinfo_tmp = AutomationAgentInfo.new
              automationagentinfo_tmp.deserialize(i)
              @AutomationAgentSet << automationagentinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCommands请求参数结构体
      class DescribeCommandsRequest < TencentCloud::Common::AbstractModel
        # @param CommandIds: 命令ID列表，每次请求的上限为100。参数不支持同时指定 `CommandIds` 和 `Filters` 。
        # @type CommandIds: Array
        # @param Filters: 过滤条件。
        # <li> command-id - String - 是否必填：否 -（过滤条件）按照命令ID过滤。</li>
        # <li> command-name - String - 是否必填：否 -（过滤条件）按照命令名称过滤。</li>
        # <li> command-type - String - 是否必填：否 -（过滤条件）按照命令类型过滤，取值为 SHELL 或 POWERSHELL。</li>
        # <li> scene-id - String - 是否必填：否 -（过滤条件）按照场景ID过滤。</li>
        # <li> created-by - String - 是否必填：否 -（过滤条件）按照命令创建者过滤，取值为 TAT 或 USER，TAT 代表公共命令，USER 代表由用户创建的命令。</li>
        # <li> tag-key - String - 是否必填：否 -（过滤条件）按照标签键进行过滤。</li>
        # <li> tag-value - String - 是否必填：否 -（过滤条件）按照标签值进行过滤。</li>
        # <li> tag:tag-key - String - 是否必填：否 -（过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。使用请参考示例4</li>

        # 每次请求的 `Filters` 的上限为10， `Filter.Values` 的上限为5。参数不支持同时指定 `CommandIds` 和 `Filters` 。
        # @type Filters: Array
        # @param Limit: 返回数量，默认为20，最大值为100。关于 `Limit` 的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。关于 `Offset` 的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer

        attr_accessor :CommandIds, :Filters, :Limit, :Offset

        def initialize(commandids=nil, filters=nil, limit=nil, offset=nil)
          @CommandIds = commandids
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @CommandIds = params['CommandIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeCommands返回参数结构体
      class DescribeCommandsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的命令总数。
        # @type TotalCount: Integer
        # @param CommandSet: 命令详情列表。
        # @type CommandSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :CommandSet, :RequestId

        def initialize(totalcount=nil, commandset=nil, requestid=nil)
          @TotalCount = totalcount
          @CommandSet = commandset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['CommandSet'].nil?
            @CommandSet = []
            params['CommandSet'].each do |i|
              command_tmp = Command.new
              command_tmp.deserialize(i)
              @CommandSet << command_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInvocationTasks请求参数结构体
      class DescribeInvocationTasksRequest < TencentCloud::Common::AbstractModel
        # @param InvocationTaskIds: 执行任务ID列表，每次请求的上限为100。参数不支持同时指定 `InvocationTaskIds` 和 `Filters`。
        # @type InvocationTaskIds: Array
        # @param Filters: 过滤条件。<br>

        # <li> invocation-id - String - 是否必填：否 -（过滤条件）按照执行活动ID过滤。</li> <li> invocation-task-id - String - 是否必填：否 -（过滤条件）按照执行任务ID过滤。</li> <li> instance-id - String - 是否必填：否 -（过滤条件）按照实例ID过滤。</li> <li> command-id - String - 是否必填：否 -（过滤条件）按照命令ID过滤。</li> <br>每次请求的 `Filters` 的上限为10， `Filter.Values` 的上限为5。参数不支持同时指定 `InvocationTaskIds` 和 `Filters` 。
        # @type Filters: Array
        # @param Limit: 返回数量，默认为20，最大值为100。关于 `Limit` 的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。关于 `Offset` 的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer
        # @param HideOutput: 是否隐藏输出，取值范围：

        # <ul> <li>true：隐藏输出</li> <li>false：不隐藏</li> </ul> 默认为 true。
        # @type HideOutput: Boolean

        attr_accessor :InvocationTaskIds, :Filters, :Limit, :Offset, :HideOutput

        def initialize(invocationtaskids=nil, filters=nil, limit=nil, offset=nil, hideoutput=nil)
          @InvocationTaskIds = invocationtaskids
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @HideOutput = hideoutput
        end

        def deserialize(params)
          @InvocationTaskIds = params['InvocationTaskIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @HideOutput = params['HideOutput']
        end
      end

      # DescribeInvocationTasks返回参数结构体
      class DescribeInvocationTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的执行任务总数。
        # @type TotalCount: Integer
        # @param InvocationTaskSet: 执行任务列表。
        # @type InvocationTaskSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InvocationTaskSet, :RequestId

        def initialize(totalcount=nil, invocationtaskset=nil, requestid=nil)
          @TotalCount = totalcount
          @InvocationTaskSet = invocationtaskset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InvocationTaskSet'].nil?
            @InvocationTaskSet = []
            params['InvocationTaskSet'].each do |i|
              invocationtask_tmp = InvocationTask.new
              invocationtask_tmp.deserialize(i)
              @InvocationTaskSet << invocationtask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInvocations请求参数结构体
      class DescribeInvocationsRequest < TencentCloud::Common::AbstractModel
        # @param InvocationIds: 执行活动ID列表，每次请求的上限为100。参数不支持同时指定 `InvocationIds` 和 `Filters`。
        # @type InvocationIds: Array
        # @param Filters: 过滤条件。<br>

        # <li> invocation-id - String - 是否必填：否 -（过滤条件）按照执行活动ID过滤。</li>
        #  <li> command-id - String - 是否必填：否 -（过滤条件）按照命令ID过滤。</li>
        # <li> command-created-by - String - 是否必填：否 -（过滤条件）按照执行的命令类型过滤，取值为 TAT 或 USER，TAT 代表公共命令，USER 代表由用户创建的命令。</li>
        #  <li> instance-kind - String - 是否必填：否 -（过滤条件）按照运行实例类型过滤，取值为 CVM 或 LIGHTHOUSE，CVM 代表实例为云服务器， LIGHTHOUSE 代表实例为轻量应用服务器。</li>
        #  <br>每次请求的 `Filters` 的上限为10， `Filter.Values` 的上限为5。参数不支持同时指定 `InvocationIds` 和 `Filters` 。
        # @type Filters: Array
        # @param Limit: 返回数量，默认为20，最大值为100。关于 `Limit` 的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。关于 `Offset` 的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer

        attr_accessor :InvocationIds, :Filters, :Limit, :Offset

        def initialize(invocationids=nil, filters=nil, limit=nil, offset=nil)
          @InvocationIds = invocationids
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InvocationIds = params['InvocationIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeInvocations返回参数结构体
      class DescribeInvocationsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的执行活动总数。
        # @type TotalCount: Integer
        # @param InvocationSet: 执行活动列表。
        # @type InvocationSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InvocationSet, :RequestId

        def initialize(totalcount=nil, invocationset=nil, requestid=nil)
          @TotalCount = totalcount
          @InvocationSet = invocationset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InvocationSet'].nil?
            @InvocationSet = []
            params['InvocationSet'].each do |i|
              invocation_tmp = Invocation.new
              invocation_tmp.deserialize(i)
              @InvocationSet << invocation_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInvokerRecords请求参数结构体
      class DescribeInvokerRecordsRequest < TencentCloud::Common::AbstractModel
        # @param InvokerIds: 执行器ID列表。列表上限 100。
        # @type InvokerIds: Array
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer

        attr_accessor :InvokerIds, :Limit, :Offset

        def initialize(invokerids=nil, limit=nil, offset=nil)
          @InvokerIds = invokerids
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InvokerIds = params['InvokerIds']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeInvokerRecords返回参数结构体
      class DescribeInvokerRecordsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的历史记录数量。
        # @type TotalCount: Integer
        # @param InvokerRecordSet: 执行器执行历史记录。
        # @type InvokerRecordSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InvokerRecordSet, :RequestId

        def initialize(totalcount=nil, invokerrecordset=nil, requestid=nil)
          @TotalCount = totalcount
          @InvokerRecordSet = invokerrecordset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InvokerRecordSet'].nil?
            @InvokerRecordSet = []
            params['InvokerRecordSet'].each do |i|
              invokerrecord_tmp = InvokerRecord.new
              invokerrecord_tmp.deserialize(i)
              @InvokerRecordSet << invokerrecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInvokers请求参数结构体
      class DescribeInvokersRequest < TencentCloud::Common::AbstractModel
        # @param InvokerIds: 执行器ID列表。
        # @type InvokerIds: Array
        # @param Filters: 过滤条件：

        # <li> invoker-id - String - 是否必填：否 - （过滤条件）按执行器ID过滤。
        # <li> command-id - String - 是否必填：否 - （过滤条件）按命令ID过滤。
        # <li> type - String - 是否必填：否 - （过滤条件）按执行器类型过滤。
        # @type Filters: Array
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer

        attr_accessor :InvokerIds, :Filters, :Limit, :Offset

        def initialize(invokerids=nil, filters=nil, limit=nil, offset=nil)
          @InvokerIds = invokerids
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InvokerIds = params['InvokerIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeInvokers返回参数结构体
      class DescribeInvokersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 满足条件的执行器数量。
        # @type TotalCount: Integer
        # @param InvokerSet: 执行器信息。
        # @type InvokerSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InvokerSet, :RequestId

        def initialize(totalcount=nil, invokerset=nil, requestid=nil)
          @TotalCount = totalcount
          @InvokerSet = invokerset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InvokerSet'].nil?
            @InvokerSet = []
            params['InvokerSet'].each do |i|
              invoker_tmp = Invoker.new
              invoker_tmp.deserialize(i)
              @InvokerSet << invoker_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeQuotas请求参数结构体
      class DescribeQuotasRequest < TencentCloud::Common::AbstractModel
        # @param ResourceNames: 资源名称，目前有"COMMAND","REGISTER_CODE" 这两个指标
        # @type ResourceNames: Array

        attr_accessor :ResourceNames

        def initialize(resourcenames=nil)
          @ResourceNames = resourcenames
        end

        def deserialize(params)
          @ResourceNames = params['ResourceNames']
        end
      end

      # DescribeQuotas返回参数结构体
      class DescribeQuotasResponse < TencentCloud::Common::AbstractModel
        # @param GeneralResourceQuotaSet: 资源额度列表
        # @type GeneralResourceQuotaSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GeneralResourceQuotaSet, :RequestId

        def initialize(generalresourcequotaset=nil, requestid=nil)
          @GeneralResourceQuotaSet = generalresourcequotaset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GeneralResourceQuotaSet'].nil?
            @GeneralResourceQuotaSet = []
            params['GeneralResourceQuotaSet'].each do |i|
              generalresourcequotaset_tmp = GeneralResourceQuotaSet.new
              generalresourcequotaset_tmp.deserialize(i)
              @GeneralResourceQuotaSet << generalresourcequotaset_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRegions请求参数结构体
      class DescribeRegionsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeRegions返回参数结构体
      class DescribeRegionsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 地域数量
        # @type TotalCount: Integer
        # @param RegionSet: 地域信息列表
        # @type RegionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RegionSet, :RequestId

        def initialize(totalcount=nil, regionset=nil, requestid=nil)
          @TotalCount = totalcount
          @RegionSet = regionset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RegionSet'].nil?
            @RegionSet = []
            params['RegionSet'].each do |i|
              regioninfo_tmp = RegionInfo.new
              regioninfo_tmp.deserialize(i)
              @RegionSet << regioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRegisterCodes请求参数结构体
      class DescribeRegisterCodesRequest < TencentCloud::Common::AbstractModel
        # @param RegisterCodeIds: 注册码ID。
        # @type RegisterCodeIds: Array
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer

        attr_accessor :RegisterCodeIds, :Offset, :Limit

        def initialize(registercodeids=nil, offset=nil, limit=nil)
          @RegisterCodeIds = registercodeids
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @RegisterCodeIds = params['RegisterCodeIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeRegisterCodes返回参数结构体
      class DescribeRegisterCodesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询到的注册码总数。
        # @type TotalCount: Integer
        # @param RegisterCodeSet: 注册码信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegisterCodeSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RegisterCodeSet, :RequestId

        def initialize(totalcount=nil, registercodeset=nil, requestid=nil)
          @TotalCount = totalcount
          @RegisterCodeSet = registercodeset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RegisterCodeSet'].nil?
            @RegisterCodeSet = []
            params['RegisterCodeSet'].each do |i|
              registercodeinfo_tmp = RegisterCodeInfo.new
              registercodeinfo_tmp.deserialize(i)
              @RegisterCodeSet << registercodeinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRegisterInstances请求参数结构体
      class DescribeRegisterInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例id。
        # @type InstanceIds: Array
        # @param Filters: 过滤器列表。

        # - instance-name

        # 按照【实例名称】进行过滤。
        # 类型：String
        # 必选：否

        # - instance-id

        # 按照【实例ID】进行过滤。
        # 类型：String
        # 必选：否

        # - register-code-id

        # 按照【注册码ID】进行过滤。
        # 类型：String
        # 必选：否

        # - sys-name

        # 按照【操作系统类型】进行过滤，取值：Linux | Windows。
        # 类型：String
        # 必选：否

        # @type Filters: Array
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer

        attr_accessor :InstanceIds, :Filters, :Offset, :Limit

        def initialize(instanceids=nil, filters=nil, offset=nil, limit=nil)
          @InstanceIds = instanceids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeRegisterInstances返回参数结构体
      class DescribeRegisterInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 该实例注册过的注册码总数。
        # @type TotalCount: Integer
        # @param RegisterInstanceSet: 被托管的实例信息的列表。
        # @type RegisterInstanceSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RegisterInstanceSet, :RequestId

        def initialize(totalcount=nil, registerinstanceset=nil, requestid=nil)
          @TotalCount = totalcount
          @RegisterInstanceSet = registerinstanceset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RegisterInstanceSet'].nil?
            @RegisterInstanceSet = []
            params['RegisterInstanceSet'].each do |i|
              registerinstanceinfo_tmp = RegisterInstanceInfo.new
              registerinstanceinfo_tmp.deserialize(i)
              @RegisterInstanceSet << registerinstanceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeScenes请求参数结构体
      class DescribeScenesRequest < TencentCloud::Common::AbstractModel
        # @param SceneIds: 场景 ID 数组
        # @type SceneIds: Array
        # @param Filters: 过滤条件。
        # <li> scene-id - String - 是否必填：否 -（过滤条件）按照场景 ID 过滤。</li>
        # <li> scene-name - String - 是否必填：否 -（过滤条件）按照场景名称过滤。</li>
        # <li> created-by - String - 是否必填：否 -（过滤条件）按照场景创建者过滤，取值为 TAT 或 USER。TAT 代表公共命令，USER 代表由用户创建的命令。</li>

        # 每次请求的 `Filters` 的上限为10， `Filter.Values` 的上限为5。参数不支持同时指定 `SceneIds` 和 `Filters` 。
        # @type Filters: Array
        # @param Limit: 返回数量，默认为20，最大值为100。关于 `Limit` 的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。关于 `Offset` 的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer

        attr_accessor :SceneIds, :Filters, :Limit, :Offset

        def initialize(sceneids=nil, filters=nil, limit=nil, offset=nil)
          @SceneIds = sceneids
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @SceneIds = params['SceneIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeScenes返回参数结构体
      class DescribeScenesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的场景总数。
        # @type TotalCount: Integer
        # @param SceneSet: 场景详情列表。
        # @type SceneSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SceneSet, :RequestId

        def initialize(totalcount=nil, sceneset=nil, requestid=nil)
          @TotalCount = totalcount
          @SceneSet = sceneset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SceneSet'].nil?
            @SceneSet = []
            params['SceneSet'].each do |i|
              scene_tmp = Scene.new
              scene_tmp.deserialize(i)
              @SceneSet << scene_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DisableInvoker请求参数结构体
      class DisableInvokerRequest < TencentCloud::Common::AbstractModel
        # @param InvokerId: 待停止的执行器ID。
        # @type InvokerId: String

        attr_accessor :InvokerId

        def initialize(invokerid=nil)
          @InvokerId = invokerid
        end

        def deserialize(params)
          @InvokerId = params['InvokerId']
        end
      end

      # DisableInvoker返回参数结构体
      class DisableInvokerResponse < TencentCloud::Common::AbstractModel
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

      # DisableRegisterCodes请求参数结构体
      class DisableRegisterCodesRequest < TencentCloud::Common::AbstractModel
        # @param RegisterCodeIds: 注册码ID。
        # @type RegisterCodeIds: Array

        attr_accessor :RegisterCodeIds

        def initialize(registercodeids=nil)
          @RegisterCodeIds = registercodeids
        end

        def deserialize(params)
          @RegisterCodeIds = params['RegisterCodeIds']
        end
      end

      # DisableRegisterCodes返回参数结构体
      class DisableRegisterCodesResponse < TencentCloud::Common::AbstractModel
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

      # EnableInvoker请求参数结构体
      class EnableInvokerRequest < TencentCloud::Common::AbstractModel
        # @param InvokerId: 待启用的执行器ID。
        # @type InvokerId: String

        attr_accessor :InvokerId

        def initialize(invokerid=nil)
          @InvokerId = invokerid
        end

        def deserialize(params)
          @InvokerId = params['InvokerId']
        end
      end

      # EnableInvoker返回参数结构体
      class EnableInvokerResponse < TencentCloud::Common::AbstractModel
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

      # > 描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等
      # > - 若存在多个`Filter`时，`Filter`间的关系为逻辑与（`AND`）关系。
      # > - 若同一个`Filter`存在多个`Values`，同一`Filter`下`Values`间的关系为逻辑或（`OR`）关系。
      # >
      # > 以[DescribeCommands](https://cloud.tencent.com/document/api/1340/52681)接口的`Filters`为例。若我们需要查询命令名称（`command-name`）为 “打印工作目录” ***并且*** 命令类型（`command-type`）为 “POWERSHELL” ***或者*** “BAT” 时，可如下实现：
      # ```
      # Filters.0.Name=command-name
      # &Filters.0.Values.0=打印工作目录

      # &Filters.1.Name=command-type
      # &Filters.1.Values.0=POWERSHELL
      # &Filters.1.Values.1=BAT
      # ```
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

      # 用户配额信息。
      class GeneralResourceQuotaSet < TencentCloud::Common::AbstractModel
        # @param ResourceName: 资源名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceName: String
        # @param ResourceQuotaUsed: 已使用额度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceQuotaUsed: Integer
        # @param ResourceQuotaTotal: 总额度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceQuotaTotal: Integer

        attr_accessor :ResourceName, :ResourceQuotaUsed, :ResourceQuotaTotal

        def initialize(resourcename=nil, resourcequotaused=nil, resourcequotatotal=nil)
          @ResourceName = resourcename
          @ResourceQuotaUsed = resourcequotaused
          @ResourceQuotaTotal = resourcequotatotal
        end

        def deserialize(params)
          @ResourceName = params['ResourceName']
          @ResourceQuotaUsed = params['ResourceQuotaUsed']
          @ResourceQuotaTotal = params['ResourceQuotaTotal']
        end
      end

      # 执行活动详情。
      class Invocation < TencentCloud::Common::AbstractModel
        # @param InvocationId: 执行活动ID。
        # @type InvocationId: String
        # @param CommandId: 命令ID。
        # @type CommandId: String
        # @param InvocationStatus: 执行任务状态。取值范围：

        # <ul> <li>PENDING：等待下发</li> <li>RUNNING：命令运行中</li> <li>SUCCESS：命令成功</li> <li>FAILED：命令失败</li> <li>TIMEOUT：命令超时</li> <li>PARTIAL_FAILED：命令部分失败</li> <li>PARTIAL_CANCELLED：任务部分取消</li> <li>CANCELLED：任务全部取消</li> <li>CANCELLING：任务取消中</li> </ul>
        # @type InvocationStatus: String
        # @param InvocationTaskBasicInfoSet: 执行任务信息列表。
        # @type InvocationTaskBasicInfoSet: Array
        # @param Description: 执行活动描述。
        # @type Description: String
        # @param StartTime: 执行活动开始时间。
        # @type StartTime: String
        # @param EndTime: 执行活动结束时间。
        # @type EndTime: String
        # @param CreatedTime: 执行活动创建时间。
        # @type CreatedTime: String
        # @param UpdatedTime: 执行活动更新时间。
        # @type UpdatedTime: String
        # @param Parameters: 自定义参数取值。
        # @type Parameters: String
        # @param DefaultParameters: 自定义参数的默认取值。
        # @type DefaultParameters: String
        # @param InstanceKind: 执行命令的实例类型，取值范围：CVM、LIGHTHOUSE。
        # @type InstanceKind: String
        # @param Username: 在实例上执行命令时使用的用户名。
        # @type Username: String
        # @param InvocationSource: 调用来源。
        # @type InvocationSource: String
        # @param CommandContent: base64编码的命令内容
        # @type CommandContent: String
        # @param CommandType: 命令类型
        # @type CommandType: String
        # @param Timeout: 执行命令过期时间， 单位秒
        # @type Timeout: Integer
        # @param WorkingDirectory: 执行命令的工作路径
        # @type WorkingDirectory: String
        # @param OutputCOSBucketUrl: 日志上传的cos bucket 地址。
        # @type OutputCOSBucketUrl: String
        # @param OutputCOSKeyPrefix: 日志在cos bucket中的目录。
        # @type OutputCOSKeyPrefix: String

        attr_accessor :InvocationId, :CommandId, :InvocationStatus, :InvocationTaskBasicInfoSet, :Description, :StartTime, :EndTime, :CreatedTime, :UpdatedTime, :Parameters, :DefaultParameters, :InstanceKind, :Username, :InvocationSource, :CommandContent, :CommandType, :Timeout, :WorkingDirectory, :OutputCOSBucketUrl, :OutputCOSKeyPrefix

        def initialize(invocationid=nil, commandid=nil, invocationstatus=nil, invocationtaskbasicinfoset=nil, description=nil, starttime=nil, endtime=nil, createdtime=nil, updatedtime=nil, parameters=nil, defaultparameters=nil, instancekind=nil, username=nil, invocationsource=nil, commandcontent=nil, commandtype=nil, timeout=nil, workingdirectory=nil, outputcosbucketurl=nil, outputcoskeyprefix=nil)
          @InvocationId = invocationid
          @CommandId = commandid
          @InvocationStatus = invocationstatus
          @InvocationTaskBasicInfoSet = invocationtaskbasicinfoset
          @Description = description
          @StartTime = starttime
          @EndTime = endtime
          @CreatedTime = createdtime
          @UpdatedTime = updatedtime
          @Parameters = parameters
          @DefaultParameters = defaultparameters
          @InstanceKind = instancekind
          @Username = username
          @InvocationSource = invocationsource
          @CommandContent = commandcontent
          @CommandType = commandtype
          @Timeout = timeout
          @WorkingDirectory = workingdirectory
          @OutputCOSBucketUrl = outputcosbucketurl
          @OutputCOSKeyPrefix = outputcoskeyprefix
        end

        def deserialize(params)
          @InvocationId = params['InvocationId']
          @CommandId = params['CommandId']
          @InvocationStatus = params['InvocationStatus']
          unless params['InvocationTaskBasicInfoSet'].nil?
            @InvocationTaskBasicInfoSet = []
            params['InvocationTaskBasicInfoSet'].each do |i|
              invocationtaskbasicinfo_tmp = InvocationTaskBasicInfo.new
              invocationtaskbasicinfo_tmp.deserialize(i)
              @InvocationTaskBasicInfoSet << invocationtaskbasicinfo_tmp
            end
          end
          @Description = params['Description']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CreatedTime = params['CreatedTime']
          @UpdatedTime = params['UpdatedTime']
          @Parameters = params['Parameters']
          @DefaultParameters = params['DefaultParameters']
          @InstanceKind = params['InstanceKind']
          @Username = params['Username']
          @InvocationSource = params['InvocationSource']
          @CommandContent = params['CommandContent']
          @CommandType = params['CommandType']
          @Timeout = params['Timeout']
          @WorkingDirectory = params['WorkingDirectory']
          @OutputCOSBucketUrl = params['OutputCOSBucketUrl']
          @OutputCOSKeyPrefix = params['OutputCOSKeyPrefix']
        end
      end

      # 执行任务。
      class InvocationTask < TencentCloud::Common::AbstractModel
        # @param InvocationId: 执行活动ID。
        # @type InvocationId: String
        # @param InvocationTaskId: 执行任务ID。
        # @type InvocationTaskId: String
        # @param CommandId: 命令ID。
        # @type CommandId: String
        # @param TaskStatus: 执行任务状态。取值范围：

        # <ul> <li>PENDING：等待下发</li> <li>DELIVERING：下发中</li> <li>DELIVER_DELAYED：延时下发</li> <li>DELIVER_FAILED：下发失败</li> <li>START_FAILED：命令启动失败</li> <li>RUNNING：命令运行中</li> <li>SUCCESS：命令成功</li> <li>FAILED：命令执行失败，执行完退出码不为 0</li> <li>TIMEOUT：命令超时</li> <li>TASK_TIMEOUT：执行任务超时</li> <li>CANCELLING：取消中</li> <li>CANCELLED：已取消（命令启动前就被取消）</li> <li>TERMINATED：已中止（命令执行期间被取消）</li> </ul>
        # @type TaskStatus: String
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param TaskResult: 执行结果。
        # @type TaskResult: :class:`Tencentcloud::Tat.v20201028.models.TaskResult`
        # @param StartTime: 执行任务开始时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 执行任务结束时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param CreatedTime: 创建时间。
        # @type CreatedTime: String
        # @param UpdatedTime: 更新时间。
        # @type UpdatedTime: String
        # @param CommandDocument: 执行任务所执行的命令详情。
        # @type CommandDocument: :class:`Tencentcloud::Tat.v20201028.models.CommandDocument`
        # @param ErrorInfo: 执行任务失败时的错误信息。
        # @type ErrorInfo: String
        # @param InvocationSource: 调用来源。
        # @type InvocationSource: String

        attr_accessor :InvocationId, :InvocationTaskId, :CommandId, :TaskStatus, :InstanceId, :TaskResult, :StartTime, :EndTime, :CreatedTime, :UpdatedTime, :CommandDocument, :ErrorInfo, :InvocationSource

        def initialize(invocationid=nil, invocationtaskid=nil, commandid=nil, taskstatus=nil, instanceid=nil, taskresult=nil, starttime=nil, endtime=nil, createdtime=nil, updatedtime=nil, commanddocument=nil, errorinfo=nil, invocationsource=nil)
          @InvocationId = invocationid
          @InvocationTaskId = invocationtaskid
          @CommandId = commandid
          @TaskStatus = taskstatus
          @InstanceId = instanceid
          @TaskResult = taskresult
          @StartTime = starttime
          @EndTime = endtime
          @CreatedTime = createdtime
          @UpdatedTime = updatedtime
          @CommandDocument = commanddocument
          @ErrorInfo = errorinfo
          @InvocationSource = invocationsource
        end

        def deserialize(params)
          @InvocationId = params['InvocationId']
          @InvocationTaskId = params['InvocationTaskId']
          @CommandId = params['CommandId']
          @TaskStatus = params['TaskStatus']
          @InstanceId = params['InstanceId']
          unless params['TaskResult'].nil?
            @TaskResult = TaskResult.new
            @TaskResult.deserialize(params['TaskResult'])
          end
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CreatedTime = params['CreatedTime']
          @UpdatedTime = params['UpdatedTime']
          unless params['CommandDocument'].nil?
            @CommandDocument = CommandDocument.new
            @CommandDocument.deserialize(params['CommandDocument'])
          end
          @ErrorInfo = params['ErrorInfo']
          @InvocationSource = params['InvocationSource']
        end
      end

      # 执行活动任务简介。
      class InvocationTaskBasicInfo < TencentCloud::Common::AbstractModel
        # @param InvocationTaskId: 执行任务ID。
        # @type InvocationTaskId: String
        # @param TaskStatus: 执行任务状态。取值范围：
        # <li> PENDING：等待下发
        # <li> DELIVERING：下发中
        # <li> DELIVER_DELAYED：延时下发
        # <li> DELIVER_FAILED：下发失败
        # <li> START_FAILED：命令启动失败
        # <li> RUNNING：命令运行中
        # <li> SUCCESS：命令成功
        # <li> FAILED：命令执行失败，执行完退出码不为 0
        # <li> TIMEOUT：命令超时
        # <li> TASK_TIMEOUT：执行任务超时
        # <li> CANCELLING：取消中
        # <li> CANCELLED：已取消（命令启动前就被取消）
        # <li> TERMINATED：已中止（命令执行期间被取消）
        # @type TaskStatus: String
        # @param InstanceId: 实例ID。
        # @type InstanceId: String

        attr_accessor :InvocationTaskId, :TaskStatus, :InstanceId

        def initialize(invocationtaskid=nil, taskstatus=nil, instanceid=nil)
          @InvocationTaskId = invocationtaskid
          @TaskStatus = taskstatus
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InvocationTaskId = params['InvocationTaskId']
          @TaskStatus = params['TaskStatus']
          @InstanceId = params['InstanceId']
        end
      end

      # InvokeCommand请求参数结构体
      class InvokeCommandRequest < TencentCloud::Common::AbstractModel
        # @param CommandId: 待触发的命令ID。
        # @type CommandId: String
        # @param InstanceIds: 待执行命令的实例ID列表，上限200。
        # @type InstanceIds: Array
        # @param Parameters: Command 的自定义参数。字段类型为json encoded string。如：{\"varA\": \"222\"}。
        # key为自定义参数名称，value为该参数的默认取值。kv均为字符串型。
        # 如果未提供该参数取值，将使用 Command 的 DefaultParameters 进行替换。
        # 自定义参数最多20个。
        # 自定义参数名称需符合以下规范：字符数目上限64，可选范围【a-zA-Z0-9-_】。
        # @type Parameters: String
        # @param Username: 在 CVM 或 Lighthouse 实例中执行命令的用户名称。
        # 使用最小权限执行命令是权限管理的最佳实践，建议您以普通用户身份执行云助手命令。若不填，默认以 Command 配置的 Username 执行。
        # @type Username: String
        # @param WorkingDirectory: 命令执行路径, 默认以Command配置的WorkingDirectory执行。
        # @type WorkingDirectory: String
        # @param Timeout: 命令超时时间，取值范围[1, 86400]。默认以Command配置的Timeout执行。
        # @type Timeout: Integer
        # @param OutputCOSBucketUrl: 指定日志上传的cos bucket 地址，必须以https开头，如 https://BucketName-123454321.cos.ap-beijing.myqcloud.com。
        # @type OutputCOSBucketUrl: String
        # @param OutputCOSKeyPrefix: 指定日志在cos bucket中的目录，目录命名有如下规则：
        # 1. 可用数字、中英文和可见字符的组合，长度最多为60。
        # 2. 用 / 分割路径，可快速创建子目录。
        # 3. 不允许连续 / ；不允许以 / 开头；不允许以..作为文件夹名称。
        # @type OutputCOSKeyPrefix: String

        attr_accessor :CommandId, :InstanceIds, :Parameters, :Username, :WorkingDirectory, :Timeout, :OutputCOSBucketUrl, :OutputCOSKeyPrefix

        def initialize(commandid=nil, instanceids=nil, parameters=nil, username=nil, workingdirectory=nil, timeout=nil, outputcosbucketurl=nil, outputcoskeyprefix=nil)
          @CommandId = commandid
          @InstanceIds = instanceids
          @Parameters = parameters
          @Username = username
          @WorkingDirectory = workingdirectory
          @Timeout = timeout
          @OutputCOSBucketUrl = outputcosbucketurl
          @OutputCOSKeyPrefix = outputcoskeyprefix
        end

        def deserialize(params)
          @CommandId = params['CommandId']
          @InstanceIds = params['InstanceIds']
          @Parameters = params['Parameters']
          @Username = params['Username']
          @WorkingDirectory = params['WorkingDirectory']
          @Timeout = params['Timeout']
          @OutputCOSBucketUrl = params['OutputCOSBucketUrl']
          @OutputCOSKeyPrefix = params['OutputCOSKeyPrefix']
        end
      end

      # InvokeCommand返回参数结构体
      class InvokeCommandResponse < TencentCloud::Common::AbstractModel
        # @param InvocationId: 执行活动ID。
        # @type InvocationId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InvocationId, :RequestId

        def initialize(invocationid=nil, requestid=nil)
          @InvocationId = invocationid
          @RequestId = requestid
        end

        def deserialize(params)
          @InvocationId = params['InvocationId']
          @RequestId = params['RequestId']
        end
      end

      # 执行器信息。
      class Invoker < TencentCloud::Common::AbstractModel
        # @param InvokerId: 执行器ID。
        # @type InvokerId: String
        # @param Name: 执行器名称。
        # @type Name: String
        # @param Type: 执行器类型。
        # @type Type: String
        # @param CommandId: 命令ID。
        # @type CommandId: String
        # @param Username: 用户名。
        # @type Username: String
        # @param Parameters: 自定义参数。
        # @type Parameters: String
        # @param InstanceIds: 实例ID列表。
        # @type InstanceIds: Array
        # @param Enable: 执行器是否启用。
        # @type Enable: Boolean
        # @param ScheduleSettings: 执行器周期计划。周期执行器会返回此字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScheduleSettings: :class:`Tencentcloud::Tat.v20201028.models.ScheduleSettings`
        # @param CreatedTime: 创建时间。
        # @type CreatedTime: String
        # @param UpdatedTime: 修改时间。
        # @type UpdatedTime: String

        attr_accessor :InvokerId, :Name, :Type, :CommandId, :Username, :Parameters, :InstanceIds, :Enable, :ScheduleSettings, :CreatedTime, :UpdatedTime

        def initialize(invokerid=nil, name=nil, type=nil, commandid=nil, username=nil, parameters=nil, instanceids=nil, enable=nil, schedulesettings=nil, createdtime=nil, updatedtime=nil)
          @InvokerId = invokerid
          @Name = name
          @Type = type
          @CommandId = commandid
          @Username = username
          @Parameters = parameters
          @InstanceIds = instanceids
          @Enable = enable
          @ScheduleSettings = schedulesettings
          @CreatedTime = createdtime
          @UpdatedTime = updatedtime
        end

        def deserialize(params)
          @InvokerId = params['InvokerId']
          @Name = params['Name']
          @Type = params['Type']
          @CommandId = params['CommandId']
          @Username = params['Username']
          @Parameters = params['Parameters']
          @InstanceIds = params['InstanceIds']
          @Enable = params['Enable']
          unless params['ScheduleSettings'].nil?
            @ScheduleSettings = ScheduleSettings.new
            @ScheduleSettings.deserialize(params['ScheduleSettings'])
          end
          @CreatedTime = params['CreatedTime']
          @UpdatedTime = params['UpdatedTime']
        end
      end

      # 执行器执行记录。
      class InvokerRecord < TencentCloud::Common::AbstractModel
        # @param InvokerId: 执行器ID。
        # @type InvokerId: String
        # @param InvokeTime: 执行时间。
        # @type InvokeTime: String
        # @param Reason: 执行原因。
        # @type Reason: String
        # @param InvocationId: 命令执行ID。
        # @type InvocationId: String
        # @param Result: 触发结果。
        # @type Result: String

        attr_accessor :InvokerId, :InvokeTime, :Reason, :InvocationId, :Result

        def initialize(invokerid=nil, invoketime=nil, reason=nil, invocationid=nil, result=nil)
          @InvokerId = invokerid
          @InvokeTime = invoketime
          @Reason = reason
          @InvocationId = invocationid
          @Result = result
        end

        def deserialize(params)
          @InvokerId = params['InvokerId']
          @InvokeTime = params['InvokeTime']
          @Reason = params['Reason']
          @InvocationId = params['InvocationId']
          @Result = params['Result']
        end
      end

      # ModifyCommand请求参数结构体
      class ModifyCommandRequest < TencentCloud::Common::AbstractModel
        # @param CommandId: 命令ID。
        # @type CommandId: String
        # @param CommandName: 命令名称。名称仅支持中文、英文、数字、下划线、分隔符"-"、小数点，最大长度不能超60个字节。
        # @type CommandName: String
        # @param Description: 命令描述。不超过120字符。
        # @type Description: String
        # @param Content: Base64编码后的命令内容，长度不可超过64KB。
        # @type Content: String
        # @param CommandType: 命令类型，目前支持取值：SHELL、POWERSHELL。
        # @type CommandType: String
        # @param WorkingDirectory: 命令执行路径。
        # @type WorkingDirectory: String
        # @param Timeout: 命令超时时间。取值范围[1, 86400]。
        # @type Timeout: Integer
        # @param DefaultParameters: 启用自定义参数功能时，自定义参数的默认取值。字段类型为json encoded string。如：{\"varA\": \"222\"}。
        # 采取整体全覆盖式修改，即修改时必须提供所有新默认值。
        # 必须 Command 的 EnableParameter 为 true 时，才允许修改这个值。
        # key为自定义参数名称，value为该参数的默认取值。kv均为字符串型。
        # 自定义参数最多20个。
        # 自定义参数名称需符合以下规范：字符数目上限64，可选范围【a-zA-Z0-9-_】。
        # @type DefaultParameters: String
        # @param DefaultParameterConfs: 自定义参数数组。
        # 如果InvokeCommand时未提供参数取值，将使用这里的默认值进行替换。
        # 自定义参数最多20个。
        # @type DefaultParameterConfs: Array
        # @param Username: 在 CVM 或 Lighthouse 实例中执行命令的用户名称。
        # 使用最小权限执行命令是权限管理的最佳实践，建议您以普通用户身份执行云助手命令。
        # @type Username: String
        # @param OutputCOSBucketUrl: 指定日志上传的cos bucket 地址，必须以https开头，如 https://BucketName-123454321.cos.ap-beijing.myqcloud.com。
        # @type OutputCOSBucketUrl: String
        # @param OutputCOSKeyPrefix: 指定日志在cos bucket中的目录，目录命名有如下规则：
        # 1. 可用数字、中英文和可见字符的组合，长度最多为60。
        # 2. 用 / 分割路径，可快速创建子目录。
        # 3. 不允许连续 / ；不允许以 / 开头；不允许以..作为文件夹名称。
        # @type OutputCOSKeyPrefix: String

        attr_accessor :CommandId, :CommandName, :Description, :Content, :CommandType, :WorkingDirectory, :Timeout, :DefaultParameters, :DefaultParameterConfs, :Username, :OutputCOSBucketUrl, :OutputCOSKeyPrefix

        def initialize(commandid=nil, commandname=nil, description=nil, content=nil, commandtype=nil, workingdirectory=nil, timeout=nil, defaultparameters=nil, defaultparameterconfs=nil, username=nil, outputcosbucketurl=nil, outputcoskeyprefix=nil)
          @CommandId = commandid
          @CommandName = commandname
          @Description = description
          @Content = content
          @CommandType = commandtype
          @WorkingDirectory = workingdirectory
          @Timeout = timeout
          @DefaultParameters = defaultparameters
          @DefaultParameterConfs = defaultparameterconfs
          @Username = username
          @OutputCOSBucketUrl = outputcosbucketurl
          @OutputCOSKeyPrefix = outputcoskeyprefix
        end

        def deserialize(params)
          @CommandId = params['CommandId']
          @CommandName = params['CommandName']
          @Description = params['Description']
          @Content = params['Content']
          @CommandType = params['CommandType']
          @WorkingDirectory = params['WorkingDirectory']
          @Timeout = params['Timeout']
          @DefaultParameters = params['DefaultParameters']
          unless params['DefaultParameterConfs'].nil?
            @DefaultParameterConfs = []
            params['DefaultParameterConfs'].each do |i|
              defaultparameterconf_tmp = DefaultParameterConf.new
              defaultparameterconf_tmp.deserialize(i)
              @DefaultParameterConfs << defaultparameterconf_tmp
            end
          end
          @Username = params['Username']
          @OutputCOSBucketUrl = params['OutputCOSBucketUrl']
          @OutputCOSKeyPrefix = params['OutputCOSKeyPrefix']
        end
      end

      # ModifyCommand返回参数结构体
      class ModifyCommandResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInvoker请求参数结构体
      class ModifyInvokerRequest < TencentCloud::Common::AbstractModel
        # @param InvokerId: 待修改的执行器ID。
        # @type InvokerId: String
        # @param Name: 待修改的执行器名称。
        # @type Name: String
        # @param Type: 执行器类型，当前仅支持周期类型执行器，取值：`SCHEDULE` 。
        # @type Type: String
        # @param CommandId: 待修改的命令ID。
        # @type CommandId: String
        # @param Username: 待修改的用户名。
        # @type Username: String
        # @param Parameters: 待修改的自定义参数。
        # @type Parameters: String
        # @param InstanceIds: 待修改的实例ID列表。列表长度上限100。
        # @type InstanceIds: Array
        # @param ScheduleSettings: 待修改的周期执行器设置。
        # @type ScheduleSettings: :class:`Tencentcloud::Tat.v20201028.models.ScheduleSettings`

        attr_accessor :InvokerId, :Name, :Type, :CommandId, :Username, :Parameters, :InstanceIds, :ScheduleSettings

        def initialize(invokerid=nil, name=nil, type=nil, commandid=nil, username=nil, parameters=nil, instanceids=nil, schedulesettings=nil)
          @InvokerId = invokerid
          @Name = name
          @Type = type
          @CommandId = commandid
          @Username = username
          @Parameters = parameters
          @InstanceIds = instanceids
          @ScheduleSettings = schedulesettings
        end

        def deserialize(params)
          @InvokerId = params['InvokerId']
          @Name = params['Name']
          @Type = params['Type']
          @CommandId = params['CommandId']
          @Username = params['Username']
          @Parameters = params['Parameters']
          @InstanceIds = params['InstanceIds']
          unless params['ScheduleSettings'].nil?
            @ScheduleSettings = ScheduleSettings.new
            @ScheduleSettings.deserialize(params['ScheduleSettings'])
          end
        end
      end

      # ModifyInvoker返回参数结构体
      class ModifyInvokerResponse < TencentCloud::Common::AbstractModel
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

      # ModifyRegisterInstance请求参数结构体
      class ModifyRegisterInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param InstanceName: 实例名称。有效长度为 1～60 字符。
        # @type InstanceName: String

        attr_accessor :InstanceId, :InstanceName

        def initialize(instanceid=nil, instancename=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
        end
      end

      # ModifyRegisterInstance返回参数结构体
      class ModifyRegisterInstanceResponse < TencentCloud::Common::AbstractModel
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

      # PreviewReplacedCommandContent请求参数结构体
      class PreviewReplacedCommandContentRequest < TencentCloud::Common::AbstractModel
        # @param Parameters: 本次预览采用的自定义参数。字段类型为 json encoded string，如：{\"varA\": \"222\"}。
        # key 为自定义参数名称，value 为该参数的取值。kv 均为字符串型。
        # 自定义参数最多 20 个。
        # 自定义参数名称需符合以下规范：字符数目上限 64，可选范围【a-zA-Z0-9-_】。
        # 如果将预览的 CommandId 设置过 DefaultParameters，本参数可以为空。
        # @type Parameters: String
        # @param CommandId: 要进行替换预览的命令，如果有设置过 DefaultParameters，会与 Parameters 进行叠加，后者覆盖前者。
        # CommandId 与 Content，必须且只能提供一个。
        # @type CommandId: String
        # @param Content: 要预览的命令内容，经 Base64 编码，长度不可超过 64KB。
        # CommandId 与 Content，必须且只能提供一个。
        # @type Content: String

        attr_accessor :Parameters, :CommandId, :Content

        def initialize(parameters=nil, commandid=nil, content=nil)
          @Parameters = parameters
          @CommandId = commandid
          @Content = content
        end

        def deserialize(params)
          @Parameters = params['Parameters']
          @CommandId = params['CommandId']
          @Content = params['Content']
        end
      end

      # PreviewReplacedCommandContent返回参数结构体
      class PreviewReplacedCommandContentResponse < TencentCloud::Common::AbstractModel
        # @param ReplacedContent: 自定义参数替换后的，经Base64编码的命令内容。
        # @type ReplacedContent: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReplacedContent, :RequestId

        def initialize(replacedcontent=nil, requestid=nil)
          @ReplacedContent = replacedcontent
          @RequestId = requestid
        end

        def deserialize(params)
          @ReplacedContent = params['ReplacedContent']
          @RequestId = params['RequestId']
        end
      end

      # 描述单个地域信息
      class RegionInfo < TencentCloud::Common::AbstractModel
        # @param Region: 地域名称，例如，ap-guangzhou
        # @type Region: String
        # @param RegionName: 地域描述，例如: 广州
        # @type RegionName: String
        # @param RegionState: 地域是否可用状态，AVAILABLE 代表可用
        # @type RegionState: String

        attr_accessor :Region, :RegionName, :RegionState

        def initialize(region=nil, regionname=nil, regionstate=nil)
          @Region = region
          @RegionName = regionname
          @RegionState = regionstate
        end

        def deserialize(params)
          @Region = params['Region']
          @RegionName = params['RegionName']
          @RegionState = params['RegionState']
        end
      end

      # 注册码信息。
      class RegisterCodeInfo < TencentCloud::Common::AbstractModel
        # @param RegisterCodeId: 注册码ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegisterCodeId: String
        # @param Description: 注册码描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param InstanceNamePrefix: 注册实例名称前缀。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceNamePrefix: String
        # @param RegisterLimit: 该注册码允许注册的实例数目。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegisterLimit: Integer
        # @param ExpiredTime: 该注册码的过期时间，按照 ISO8601 标准表示，并且使用 UTC 时间。
        # 格式为： YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpiredTime: String
        # @param IpAddressRange: 该注册码限制tat_agent只能从IpAddressRange所描述公网出口进行注册。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpAddressRange: String
        # @param Enabled: 该注册码是否可用。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enabled: Boolean
        # @param RegisteredCount: 该注册码已注册数目。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegisteredCount: Integer
        # @param CreatedTime: 注册码创建时间，按照 ISO8601 标准表示，并且使用 UTC 时间。
        # 格式为： YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param UpdatedTime: 注册码最近一次更新时间，按照 ISO8601 标准表示，并且使用 UTC 时间。
        # 格式为： YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedTime: String

        attr_accessor :RegisterCodeId, :Description, :InstanceNamePrefix, :RegisterLimit, :ExpiredTime, :IpAddressRange, :Enabled, :RegisteredCount, :CreatedTime, :UpdatedTime

        def initialize(registercodeid=nil, description=nil, instancenameprefix=nil, registerlimit=nil, expiredtime=nil, ipaddressrange=nil, enabled=nil, registeredcount=nil, createdtime=nil, updatedtime=nil)
          @RegisterCodeId = registercodeid
          @Description = description
          @InstanceNamePrefix = instancenameprefix
          @RegisterLimit = registerlimit
          @ExpiredTime = expiredtime
          @IpAddressRange = ipaddressrange
          @Enabled = enabled
          @RegisteredCount = registeredcount
          @CreatedTime = createdtime
          @UpdatedTime = updatedtime
        end

        def deserialize(params)
          @RegisterCodeId = params['RegisterCodeId']
          @Description = params['Description']
          @InstanceNamePrefix = params['InstanceNamePrefix']
          @RegisterLimit = params['RegisterLimit']
          @ExpiredTime = params['ExpiredTime']
          @IpAddressRange = params['IpAddressRange']
          @Enabled = params['Enabled']
          @RegisteredCount = params['RegisteredCount']
          @CreatedTime = params['CreatedTime']
          @UpdatedTime = params['UpdatedTime']
        end
      end

      # 注册实例信息。
      class RegisterInstanceInfo < TencentCloud::Common::AbstractModel
        # @param RegisterCodeId: 注册码ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegisterCodeId: String
        # @param InstanceId: 实例ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceName: 实例名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param MachineId: 机器ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MachineId: String
        # @param SystemName: 系统名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SystemName: String
        # @param HostName: 主机名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostName: String
        # @param LocalIp: 内网IP。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocalIp: String
        # @param PublicKey: 公钥。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicKey: String
        # @param Status: 托管状态。
        # 返回Online表示实例正在托管，返回Offline表示实例未托管。
        # @type Status: String
        # @param CreatedTime: 创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param UpdatedTime: 上次更新时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedTime: String

        attr_accessor :RegisterCodeId, :InstanceId, :InstanceName, :MachineId, :SystemName, :HostName, :LocalIp, :PublicKey, :Status, :CreatedTime, :UpdatedTime

        def initialize(registercodeid=nil, instanceid=nil, instancename=nil, machineid=nil, systemname=nil, hostname=nil, localip=nil, publickey=nil, status=nil, createdtime=nil, updatedtime=nil)
          @RegisterCodeId = registercodeid
          @InstanceId = instanceid
          @InstanceName = instancename
          @MachineId = machineid
          @SystemName = systemname
          @HostName = hostname
          @LocalIp = localip
          @PublicKey = publickey
          @Status = status
          @CreatedTime = createdtime
          @UpdatedTime = updatedtime
        end

        def deserialize(params)
          @RegisterCodeId = params['RegisterCodeId']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @MachineId = params['MachineId']
          @SystemName = params['SystemName']
          @HostName = params['HostName']
          @LocalIp = params['LocalIp']
          @PublicKey = params['PublicKey']
          @Status = params['Status']
          @CreatedTime = params['CreatedTime']
          @UpdatedTime = params['UpdatedTime']
        end
      end

      # RunCommand请求参数结构体
      class RunCommandRequest < TencentCloud::Common::AbstractModel
        # @param Content: Base64编码后的命令内容，长度不可超过64KB。
        # @type Content: String
        # @param InstanceIds: 待执行命令的实例ID列表，上限200。支持实例类型：
        # <li> CVM </li>
        # <li> LIGHTHOUSE </li>
        # @type InstanceIds: Array
        # @param CommandName: 命令名称。名称仅支持中文、英文、数字、下划线、分隔符"-"、小数点，最大长度不能超60个字节。
        # @type CommandName: String
        # @param Description: 命令描述。不超过120字符。
        # @type Description: String
        # @param CommandType: 命令类型，目前支持取值：SHELL、POWERSHELL。默认：SHELL。
        # @type CommandType: String
        # @param WorkingDirectory: 命令执行路径，对于 SHELL 命令默认为 /root，对于 POWERSHELL 命令默认为 C:\Program Files\qcloud\tat_agent\workdir。
        # @type WorkingDirectory: String
        # @param Timeout: 命令超时时间，默认60秒。取值范围[1, 86400]。
        # @type Timeout: Integer
        # @param SaveCommand: 是否保存命令，取值范围：
        # <li> true：保存</li>
        # <li> false：不保存</li>
        # 默认为 false。
        # @type SaveCommand: Boolean
        # @param EnableParameter: 是否启用自定义参数功能。
        # 一旦创建，此值不提供修改。
        # 取值范围：
        # <li> true：启用 </li>
        # <li> false：不启用 </li>
        # 默认值：false。
        # @type EnableParameter: Boolean
        # @param DefaultParameters: 启用自定义参数功能时，自定义参数的默认取值。字段类型为json encoded string。如：{\"varA\": \"222\"}。
        # key为自定义参数名称，value为该参数的默认取值。kv均为字符串型。
        # 如果 Parameters 未提供，将使用这里的默认值进行替换。
        # 自定义参数最多20个。
        # 自定义参数名称需符合以下规范：字符数目上限64，可选范围【a-zA-Z0-9-_】。
        # @type DefaultParameters: String
        # @param DefaultParameterConfs: 自定义参数数组。 如果 Parameters 未提供，将使用这里的默认值进行替换。 自定义参数最多20个。
        # @type DefaultParameterConfs: Array
        # @param Parameters: Command 的自定义参数。字段类型为json encoded string。如：{\"varA\": \"222\"}。
        # key为自定义参数名称，value为该参数的默认取值。kv均为字符串型。
        # 如果未提供该参数取值，将使用 DefaultParameters 进行替换。
        # 自定义参数最多20个。
        # 自定义参数名称需符合以下规范：字符数目上限64，可选范围【a-zA-Z0-9-_】。
        # @type Parameters: String
        # @param Tags: 如果保存命令，可为命令设置标签。列表长度不超过10。
        # @type Tags: Array
        # @param Username: 在 CVM 或 Lighthouse 实例中执行命令的用户名称。
        # 使用最小权限执行命令是权限管理的最佳实践，建议您以普通用户身份执行云助手命令。默认情况下，在 Linux 实例中以 root 用户执行命令；在Windows 实例中以 System 用户执行命令。
        # @type Username: String
        # @param OutputCOSBucketUrl: 指定日志上传的cos bucket 地址，必须以https开头，如 https://BucketName-123454321.cos.ap-beijing.myqcloud.com。
        # @type OutputCOSBucketUrl: String
        # @param OutputCOSKeyPrefix: 指定日志在cos bucket中的目录，目录命名有如下规则：
        # 1. 可用数字、中英文和可见字符的组合，长度最多为60。
        # 2. 用 / 分割路径，可快速创建子目录。
        # 3. 不允许连续 / ；不允许以 / 开头；不允许以..作为文件夹名称。
        # @type OutputCOSKeyPrefix: String

        attr_accessor :Content, :InstanceIds, :CommandName, :Description, :CommandType, :WorkingDirectory, :Timeout, :SaveCommand, :EnableParameter, :DefaultParameters, :DefaultParameterConfs, :Parameters, :Tags, :Username, :OutputCOSBucketUrl, :OutputCOSKeyPrefix

        def initialize(content=nil, instanceids=nil, commandname=nil, description=nil, commandtype=nil, workingdirectory=nil, timeout=nil, savecommand=nil, enableparameter=nil, defaultparameters=nil, defaultparameterconfs=nil, parameters=nil, tags=nil, username=nil, outputcosbucketurl=nil, outputcoskeyprefix=nil)
          @Content = content
          @InstanceIds = instanceids
          @CommandName = commandname
          @Description = description
          @CommandType = commandtype
          @WorkingDirectory = workingdirectory
          @Timeout = timeout
          @SaveCommand = savecommand
          @EnableParameter = enableparameter
          @DefaultParameters = defaultparameters
          @DefaultParameterConfs = defaultparameterconfs
          @Parameters = parameters
          @Tags = tags
          @Username = username
          @OutputCOSBucketUrl = outputcosbucketurl
          @OutputCOSKeyPrefix = outputcoskeyprefix
        end

        def deserialize(params)
          @Content = params['Content']
          @InstanceIds = params['InstanceIds']
          @CommandName = params['CommandName']
          @Description = params['Description']
          @CommandType = params['CommandType']
          @WorkingDirectory = params['WorkingDirectory']
          @Timeout = params['Timeout']
          @SaveCommand = params['SaveCommand']
          @EnableParameter = params['EnableParameter']
          @DefaultParameters = params['DefaultParameters']
          unless params['DefaultParameterConfs'].nil?
            @DefaultParameterConfs = []
            params['DefaultParameterConfs'].each do |i|
              defaultparameterconf_tmp = DefaultParameterConf.new
              defaultparameterconf_tmp.deserialize(i)
              @DefaultParameterConfs << defaultparameterconf_tmp
            end
          end
          @Parameters = params['Parameters']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @Username = params['Username']
          @OutputCOSBucketUrl = params['OutputCOSBucketUrl']
          @OutputCOSKeyPrefix = params['OutputCOSKeyPrefix']
        end
      end

      # RunCommand返回参数结构体
      class RunCommandResponse < TencentCloud::Common::AbstractModel
        # @param CommandId: 命令ID。
        # @type CommandId: String
        # @param InvocationId: 执行活动ID。
        # @type InvocationId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CommandId, :InvocationId, :RequestId

        def initialize(commandid=nil, invocationid=nil, requestid=nil)
          @CommandId = commandid
          @InvocationId = invocationid
          @RequestId = requestid
        end

        def deserialize(params)
          @CommandId = params['CommandId']
          @InvocationId = params['InvocationId']
          @RequestId = params['RequestId']
        end
      end

      # 场景详情。
      class Scene < TencentCloud::Common::AbstractModel
        # @param SceneId: 场景 ID 。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SceneId: String
        # @param SceneName: 场景名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SceneName: String
        # @param CreatedBy: 场景创建者。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedBy: String
        # @param CreatedTime: 创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param UpdatedTime: 更新时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedTime: String

        attr_accessor :SceneId, :SceneName, :CreatedBy, :CreatedTime, :UpdatedTime

        def initialize(sceneid=nil, scenename=nil, createdby=nil, createdtime=nil, updatedtime=nil)
          @SceneId = sceneid
          @SceneName = scenename
          @CreatedBy = createdby
          @CreatedTime = createdtime
          @UpdatedTime = updatedtime
        end

        def deserialize(params)
          @SceneId = params['SceneId']
          @SceneName = params['SceneName']
          @CreatedBy = params['CreatedBy']
          @CreatedTime = params['CreatedTime']
          @UpdatedTime = params['UpdatedTime']
        end
      end

      # 周期执行器设置。
      class ScheduleSettings < TencentCloud::Common::AbstractModel
        # @param Policy: 执行策略：
        # <br><li>ONCE：单次执行
        # <br><li>RECURRENCE：周期执行
        # @type Policy: String
        # @param Recurrence: 触发 Crontab 表达式。Policy 为 RECURRENCE 时，需要指定此字段。Crontab 按北京时间解析。
        # @type Recurrence: String
        # @param InvokeTime: 执行器下次执行时间。Policy 为 ONCE 时，需要指定此字段。
        # @type InvokeTime: String

        attr_accessor :Policy, :Recurrence, :InvokeTime

        def initialize(policy=nil, recurrence=nil, invoketime=nil)
          @Policy = policy
          @Recurrence = recurrence
          @InvokeTime = invoketime
        end

        def deserialize(params)
          @Policy = params['Policy']
          @Recurrence = params['Recurrence']
          @InvokeTime = params['InvokeTime']
        end
      end

      # 标签
      class Tag < TencentCloud::Common::AbstractModel
        # @param Key: 标签键。
        # @type Key: String
        # @param Value: 标签值。
        # @type Value: String

        attr_accessor :Key, :Value

        def initialize(key=nil, value=nil)
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
        end
      end

      # 任务结果。
      class TaskResult < TencentCloud::Common::AbstractModel
        # @param ExitCode: 命令执行ExitCode。
        # @type ExitCode: Integer
        # @param Output: Base64编码后的命令输出。最大长度24KB。
        # @type Output: String
        # @param ExecStartTime: 命令执行开始时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecStartTime: String
        # @param ExecEndTime: 命令执行结束时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecEndTime: String
        # @param Dropped: 命令最终输出被截断的字节数。
        # @type Dropped: Integer
        # @param OutputUrl: 日志在cos中的地址
        # @type OutputUrl: String
        # @param OutputUploadCOSErrorInfo: 日志上传cos的错误信息。
        # @type OutputUploadCOSErrorInfo: String

        attr_accessor :ExitCode, :Output, :ExecStartTime, :ExecEndTime, :Dropped, :OutputUrl, :OutputUploadCOSErrorInfo

        def initialize(exitcode=nil, output=nil, execstarttime=nil, execendtime=nil, dropped=nil, outputurl=nil, outputuploadcoserrorinfo=nil)
          @ExitCode = exitcode
          @Output = output
          @ExecStartTime = execstarttime
          @ExecEndTime = execendtime
          @Dropped = dropped
          @OutputUrl = outputurl
          @OutputUploadCOSErrorInfo = outputuploadcoserrorinfo
        end

        def deserialize(params)
          @ExitCode = params['ExitCode']
          @Output = params['Output']
          @ExecStartTime = params['ExecStartTime']
          @ExecEndTime = params['ExecEndTime']
          @Dropped = params['Dropped']
          @OutputUrl = params['OutputUrl']
          @OutputUploadCOSErrorInfo = params['OutputUploadCOSErrorInfo']
        end
      end

    end
  end
end

