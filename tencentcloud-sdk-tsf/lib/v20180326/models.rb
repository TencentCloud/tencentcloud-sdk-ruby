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
  module Tsf
    module V20180326
      # AddClusterInstances请求参数结构体
      class AddClusterInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceIdList: 云主机ID列表
        # @type InstanceIdList: Array
        # @param OsName: 操作系统名称
        # @type OsName: String
        # @param ImageId: 操作系统镜像ID
        # @type ImageId: String
        # @param Password: 重装系统密码设置
        # @type Password: String
        # @param KeyId: 重装系统，关联密钥设置
        # @type KeyId: String
        # @param SgId: 安全组设置
        # @type SgId: String
        # @param InstanceImportMode: 云主机导入方式，虚拟机集群必填，容器集群不填写此字段，R：重装TSF系统镜像，M：手动安装agent
        # @type InstanceImportMode: String
        # @param OsCustomizeType: 镜像定制类型
        # @type OsCustomizeType: String
        # @param FeatureIdList: 镜像特征ID列表
        # @type FeatureIdList: Array
        # @param InstanceAdvancedSettings: 实例额外需要设置参数信息
        # @type InstanceAdvancedSettings: :class:`Tencentcloud::Tsf.v20180326.models.InstanceAdvancedSettings`
        # @param SecurityGroupIds: 安全组 ID 列表
        # @type SecurityGroupIds: Array

        attr_accessor :ClusterId, :InstanceIdList, :OsName, :ImageId, :Password, :KeyId, :SgId, :InstanceImportMode, :OsCustomizeType, :FeatureIdList, :InstanceAdvancedSettings, :SecurityGroupIds
        
        def initialize(clusterid=nil, instanceidlist=nil, osname=nil, imageid=nil, password=nil, keyid=nil, sgid=nil, instanceimportmode=nil, oscustomizetype=nil, featureidlist=nil, instanceadvancedsettings=nil, securitygroupids=nil)
          @ClusterId = clusterid
          @InstanceIdList = instanceidlist
          @OsName = osname
          @ImageId = imageid
          @Password = password
          @KeyId = keyid
          @SgId = sgid
          @InstanceImportMode = instanceimportmode
          @OsCustomizeType = oscustomizetype
          @FeatureIdList = featureidlist
          @InstanceAdvancedSettings = instanceadvancedsettings
          @SecurityGroupIds = securitygroupids
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceIdList = params['InstanceIdList']
          @OsName = params['OsName']
          @ImageId = params['ImageId']
          @Password = params['Password']
          @KeyId = params['KeyId']
          @SgId = params['SgId']
          @InstanceImportMode = params['InstanceImportMode']
          @OsCustomizeType = params['OsCustomizeType']
          @FeatureIdList = params['FeatureIdList']
          unless params['InstanceAdvancedSettings'].nil?
            @InstanceAdvancedSettings = InstanceAdvancedSettings.new
            @InstanceAdvancedSettings.deserialize(params['InstanceAdvancedSettings'])
          end
          @SecurityGroupIds = params['SecurityGroupIds']
        end
      end

      # AddClusterInstances返回参数结构体
      class AddClusterInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 添加云主机的返回列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.AddInstanceResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = AddInstanceResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 添加实例到集群的结果
      class AddInstanceResult < TencentCloud::Common::AbstractModel
        # @param FailedInstanceIds: 添加集群失败的节点列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedInstanceIds: Array
        # @param SuccInstanceIds: 添加集群成功的节点列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccInstanceIds: Array
        # @param TimeoutInstanceIds: 添加集群超时的节点列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeoutInstanceIds: Array
        # @param FailedReasons: 失败的节点的失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedReasons: Array

        attr_accessor :FailedInstanceIds, :SuccInstanceIds, :TimeoutInstanceIds, :FailedReasons
        
        def initialize(failedinstanceids=nil, succinstanceids=nil, timeoutinstanceids=nil, failedreasons=nil)
          @FailedInstanceIds = failedinstanceids
          @SuccInstanceIds = succinstanceids
          @TimeoutInstanceIds = timeoutinstanceids
          @FailedReasons = failedreasons
        end

        def deserialize(params)
          @FailedInstanceIds = params['FailedInstanceIds']
          @SuccInstanceIds = params['SuccInstanceIds']
          @TimeoutInstanceIds = params['TimeoutInstanceIds']
          @FailedReasons = params['FailedReasons']
        end
      end

      # AddInstances请求参数结构体
      class AddInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceIdList: 云主机ID列表
        # @type InstanceIdList: Array
        # @param OsName: 操作系统名称
        # @type OsName: String
        # @param ImageId: 操作系统镜像ID
        # @type ImageId: String
        # @param Password: 重装系统密码设置
        # @type Password: String
        # @param KeyId: 重装系统，关联密钥设置
        # @type KeyId: String
        # @param SgId: 安全组设置
        # @type SgId: String
        # @param InstanceImportMode: 云主机导入方式，虚拟机集群必填，容器集群不填写此字段，R：重装TSF系统镜像，M：手动安装agent
        # @type InstanceImportMode: String
        # @param SecurityGroupIds: 安全组id
        # @type SecurityGroupIds: String

        attr_accessor :ClusterId, :InstanceIdList, :OsName, :ImageId, :Password, :KeyId, :SgId, :InstanceImportMode, :SecurityGroupIds
        
        def initialize(clusterid=nil, instanceidlist=nil, osname=nil, imageid=nil, password=nil, keyid=nil, sgid=nil, instanceimportmode=nil, securitygroupids=nil)
          @ClusterId = clusterid
          @InstanceIdList = instanceidlist
          @OsName = osname
          @ImageId = imageid
          @Password = password
          @KeyId = keyid
          @SgId = sgid
          @InstanceImportMode = instanceimportmode
          @SecurityGroupIds = securitygroupids
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceIdList = params['InstanceIdList']
          @OsName = params['OsName']
          @ImageId = params['ImageId']
          @Password = params['Password']
          @KeyId = params['KeyId']
          @SgId = params['SgId']
          @InstanceImportMode = params['InstanceImportMode']
          @SecurityGroupIds = params['SecurityGroupIds']
        end
      end

      # AddInstances返回参数结构体
      class AddInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 添加云主机是否成功
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 高级选项设置
      class AdvanceSettings < TencentCloud::Common::AbstractModel
        # @param SubTaskConcurrency: 子任务单机并发数限制，默认值为2
        # @type SubTaskConcurrency: Integer

        attr_accessor :SubTaskConcurrency
        
        def initialize(subtaskconcurrency=nil)
          @SubTaskConcurrency = subtaskconcurrency
        end

        def deserialize(params)
          @SubTaskConcurrency = params['SubTaskConcurrency']
        end
      end

      # 部署javaagent的类型、版本信息
      class AgentProfile < TencentCloud::Common::AbstractModel
        # @param AgentType: Agent类型
        # @type AgentType: String
        # @param AgentVersion: Agent版本号
        # @type AgentVersion: String

        attr_accessor :AgentType, :AgentVersion
        
        def initialize(agenttype=nil, agentversion=nil)
          @AgentType = agenttype
          @AgentVersion = agentversion
        end

        def deserialize(params)
          @AgentType = params['AgentType']
          @AgentVersion = params['AgentVersion']
        end
      end

      # API 对象类型描述
      class ApiDefinitionDescr < TencentCloud::Common::AbstractModel
        # @param Name: 对象名称
        # @type Name: String
        # @param Properties: 对象属性列表
        # @type Properties: Array

        attr_accessor :Name, :Properties
        
        def initialize(name=nil, properties=nil)
          @Name = name
          @Properties = properties
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              propertyfield_tmp = PropertyField.new
              propertyfield_tmp.deserialize(i)
              @Properties << propertyfield_tmp
            end
          end
        end
      end

      # API 明细
      class ApiDetailInfo < TencentCloud::Common::AbstractModel
        # @param ApiId: API ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiId: String
        # @param NamespaceId: 命名空间ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceId: String
        # @param NamespaceName: 命名空间名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceName: String
        # @param MicroserviceId: 服务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MicroserviceId: String
        # @param MicroserviceName: 服务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MicroserviceName: String
        # @param Path: API 请求路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param PathMapping: Api 映射路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PathMapping: String
        # @param Method: 请求方法
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Method: String
        # @param GroupId: 所属分组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String
        # @param UsableStatus: 是否禁用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsableStatus: String
        # @param ReleaseStatus: 发布状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReleaseStatus: String
        # @param RateLimitStatus: 开启限流
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RateLimitStatus: String
        # @param MockStatus: 是否开启mock
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MockStatus: String
        # @param CreatedTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param UpdatedTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedTime: String
        # @param ReleasedTime: 发布时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReleasedTime: String
        # @param GroupName: 所属分组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param Timeout: API 超时，单位毫秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timeout: Integer
        # @param Host: Api所在服务host
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Host: String
        # @param ApiType: API类型。 ms ： 微服务API； external :外部服务Api
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiType: String
        # @param Description: Api描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param ApiMatchType: API路径匹配类型。normal：普通API；wildcard：通配API。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiMatchType: String
        # @param RpcExt: RPC 额外信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RpcExt: String
        # @param GatewayDeployGroupId: 部署组id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GatewayDeployGroupId: String
        # @param Md5: md5
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Md5: String
        # @param RpcType: RPC 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RpcType: String

        attr_accessor :ApiId, :NamespaceId, :NamespaceName, :MicroserviceId, :MicroserviceName, :Path, :PathMapping, :Method, :GroupId, :UsableStatus, :ReleaseStatus, :RateLimitStatus, :MockStatus, :CreatedTime, :UpdatedTime, :ReleasedTime, :GroupName, :Timeout, :Host, :ApiType, :Description, :ApiMatchType, :RpcExt, :GatewayDeployGroupId, :Md5, :RpcType
        
        def initialize(apiid=nil, namespaceid=nil, namespacename=nil, microserviceid=nil, microservicename=nil, path=nil, pathmapping=nil, method=nil, groupid=nil, usablestatus=nil, releasestatus=nil, ratelimitstatus=nil, mockstatus=nil, createdtime=nil, updatedtime=nil, releasedtime=nil, groupname=nil, timeout=nil, host=nil, apitype=nil, description=nil, apimatchtype=nil, rpcext=nil, gatewaydeploygroupid=nil, md5=nil, rpctype=nil)
          @ApiId = apiid
          @NamespaceId = namespaceid
          @NamespaceName = namespacename
          @MicroserviceId = microserviceid
          @MicroserviceName = microservicename
          @Path = path
          @PathMapping = pathmapping
          @Method = method
          @GroupId = groupid
          @UsableStatus = usablestatus
          @ReleaseStatus = releasestatus
          @RateLimitStatus = ratelimitstatus
          @MockStatus = mockstatus
          @CreatedTime = createdtime
          @UpdatedTime = updatedtime
          @ReleasedTime = releasedtime
          @GroupName = groupname
          @Timeout = timeout
          @Host = host
          @ApiType = apitype
          @Description = description
          @ApiMatchType = apimatchtype
          @RpcExt = rpcext
          @GatewayDeployGroupId = gatewaydeploygroupid
          @Md5 = md5
          @RpcType = rpctype
        end

        def deserialize(params)
          @ApiId = params['ApiId']
          @NamespaceId = params['NamespaceId']
          @NamespaceName = params['NamespaceName']
          @MicroserviceId = params['MicroserviceId']
          @MicroserviceName = params['MicroserviceName']
          @Path = params['Path']
          @PathMapping = params['PathMapping']
          @Method = params['Method']
          @GroupId = params['GroupId']
          @UsableStatus = params['UsableStatus']
          @ReleaseStatus = params['ReleaseStatus']
          @RateLimitStatus = params['RateLimitStatus']
          @MockStatus = params['MockStatus']
          @CreatedTime = params['CreatedTime']
          @UpdatedTime = params['UpdatedTime']
          @ReleasedTime = params['ReleasedTime']
          @GroupName = params['GroupName']
          @Timeout = params['Timeout']
          @Host = params['Host']
          @ApiType = params['ApiType']
          @Description = params['Description']
          @ApiMatchType = params['ApiMatchType']
          @RpcExt = params['RpcExt']
          @GatewayDeployGroupId = params['GatewayDeployGroupId']
          @Md5 = params['Md5']
          @RpcType = params['RpcType']
        end
      end

      # ApiDetailResponse描述
      class ApiDetailResponse < TencentCloud::Common::AbstractModel
        # @param Request: API 请求参数
        # @type Request: Array
        # @param Response: API 响应参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Response: Array
        # @param Definitions: API 复杂结构定义
        # @type Definitions: Array
        # @param RequestContentType: API 的 content type
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestContentType: String
        # @param CanRun: API  能否调试
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CanRun: Boolean
        # @param Status: API 状态 0:离线 1:在线，默认0
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param Description: API 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String

        attr_accessor :Request, :Response, :Definitions, :RequestContentType, :CanRun, :Status, :Description
        
        def initialize(request=nil, response=nil, definitions=nil, requestcontenttype=nil, canrun=nil, status=nil, description=nil)
          @Request = request
          @Response = response
          @Definitions = definitions
          @RequestContentType = requestcontenttype
          @CanRun = canrun
          @Status = status
          @Description = description
        end

        def deserialize(params)
          unless params['Request'].nil?
            @Request = []
            params['Request'].each do |i|
              apirequestdescr_tmp = ApiRequestDescr.new
              apirequestdescr_tmp.deserialize(i)
              @Request << apirequestdescr_tmp
            end
          end
          unless params['Response'].nil?
            @Response = []
            params['Response'].each do |i|
              apiresponsedescr_tmp = ApiResponseDescr.new
              apiresponsedescr_tmp.deserialize(i)
              @Response << apiresponsedescr_tmp
            end
          end
          unless params['Definitions'].nil?
            @Definitions = []
            params['Definitions'].each do |i|
              apidefinitiondescr_tmp = ApiDefinitionDescr.new
              apidefinitiondescr_tmp.deserialize(i)
              @Definitions << apidefinitiondescr_tmp
            end
          end
          @RequestContentType = params['RequestContentType']
          @CanRun = params['CanRun']
          @Status = params['Status']
          @Description = params['Description']
        end
      end

      # API分组信息
      class ApiGroupInfo < TencentCloud::Common::AbstractModel
        # @param GroupId: Api Group Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String
        # @param GroupName: Api Group 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param GroupContext: 分组上下文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupContext: String
        # @param AuthType: 鉴权类型。 secret： 密钥鉴权； none:无鉴权
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthType: String
        # @param Status: 发布状态, drafted: 未发布。 released: 发布
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param CreatedTime: 分组创建时间 如:2019-06-20 15:51:28
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param UpdatedTime: 分组更新时间 如:2019-06-20 15:51:28
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedTime: String
        # @param BindedGatewayDeployGroups: api分组已绑定的网关部署组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindedGatewayDeployGroups: Array
        # @param ApiCount: api 个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiCount: Integer
        # @param AclMode: 访问group的ACL类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AclMode: String
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param GroupType: 分组类型。 ms： 微服务分组； external:外部Api分组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupType: String
        # @param GatewayInstanceType: 网关实例的类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GatewayInstanceType: String
        # @param GatewayInstanceId: 网关实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GatewayInstanceId: String
        # @param NamespaceNameKey: 命名空间参数key值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceNameKey: String
        # @param ServiceNameKey: 微服务名参数key值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceNameKey: String
        # @param NamespaceNameKeyPosition: 命名空间参数位置，path，header或query，默认是path
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceNameKeyPosition: String
        # @param ServiceNameKeyPosition: 微服务名参数位置，path，header或query，默认是path
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceNameKeyPosition: String

        attr_accessor :GroupId, :GroupName, :GroupContext, :AuthType, :Status, :CreatedTime, :UpdatedTime, :BindedGatewayDeployGroups, :ApiCount, :AclMode, :Description, :GroupType, :GatewayInstanceType, :GatewayInstanceId, :NamespaceNameKey, :ServiceNameKey, :NamespaceNameKeyPosition, :ServiceNameKeyPosition
        
        def initialize(groupid=nil, groupname=nil, groupcontext=nil, authtype=nil, status=nil, createdtime=nil, updatedtime=nil, bindedgatewaydeploygroups=nil, apicount=nil, aclmode=nil, description=nil, grouptype=nil, gatewayinstancetype=nil, gatewayinstanceid=nil, namespacenamekey=nil, servicenamekey=nil, namespacenamekeyposition=nil, servicenamekeyposition=nil)
          @GroupId = groupid
          @GroupName = groupname
          @GroupContext = groupcontext
          @AuthType = authtype
          @Status = status
          @CreatedTime = createdtime
          @UpdatedTime = updatedtime
          @BindedGatewayDeployGroups = bindedgatewaydeploygroups
          @ApiCount = apicount
          @AclMode = aclmode
          @Description = description
          @GroupType = grouptype
          @GatewayInstanceType = gatewayinstancetype
          @GatewayInstanceId = gatewayinstanceid
          @NamespaceNameKey = namespacenamekey
          @ServiceNameKey = servicenamekey
          @NamespaceNameKeyPosition = namespacenamekeyposition
          @ServiceNameKeyPosition = servicenamekeyposition
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @GroupContext = params['GroupContext']
          @AuthType = params['AuthType']
          @Status = params['Status']
          @CreatedTime = params['CreatedTime']
          @UpdatedTime = params['UpdatedTime']
          unless params['BindedGatewayDeployGroups'].nil?
            @BindedGatewayDeployGroups = []
            params['BindedGatewayDeployGroups'].each do |i|
              gatewaydeploygroup_tmp = GatewayDeployGroup.new
              gatewaydeploygroup_tmp.deserialize(i)
              @BindedGatewayDeployGroups << gatewaydeploygroup_tmp
            end
          end
          @ApiCount = params['ApiCount']
          @AclMode = params['AclMode']
          @Description = params['Description']
          @GroupType = params['GroupType']
          @GatewayInstanceType = params['GatewayInstanceType']
          @GatewayInstanceId = params['GatewayInstanceId']
          @NamespaceNameKey = params['NamespaceNameKey']
          @ServiceNameKey = params['ServiceNameKey']
          @NamespaceNameKeyPosition = params['NamespaceNameKeyPosition']
          @ServiceNameKeyPosition = params['ServiceNameKeyPosition']
        end
      end

      # 微服务网关API信息
      class ApiInfo < TencentCloud::Common::AbstractModel
        # @param NamespaceId: 命名空间Id，若为外部API,为固定值："namespace-external"
        # @type NamespaceId: String
        # @param MicroserviceId: 服务Id，若为外部API,为固定值："ms-external"
        # @type MicroserviceId: String
        # @param Path: API path
        # @type Path: String
        # @param Method: Api 请求
        # @type Method: String
        # @param PathMapping: 请求映射
        # @type PathMapping: String
        # @param Host: api所在服务host,限定外部Api填写。格式: `http://127.0.0.1:8080`
        # @type Host: String
        # @param Description: api描述信息
        # @type Description: String

        attr_accessor :NamespaceId, :MicroserviceId, :Path, :Method, :PathMapping, :Host, :Description
        
        def initialize(namespaceid=nil, microserviceid=nil, path=nil, method=nil, pathmapping=nil, host=nil, description=nil)
          @NamespaceId = namespaceid
          @MicroserviceId = microserviceid
          @Path = path
          @Method = method
          @PathMapping = pathmapping
          @Host = host
          @Description = description
        end

        def deserialize(params)
          @NamespaceId = params['NamespaceId']
          @MicroserviceId = params['MicroserviceId']
          @Path = params['Path']
          @Method = params['Method']
          @PathMapping = params['PathMapping']
          @Host = params['Host']
          @Description = params['Description']
        end
      end

      # 微服务网关API限流规则
      class ApiRateLimitRule < TencentCloud::Common::AbstractModel
        # @param RuleId: rule Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: String
        # @param ApiId: API ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiId: String
        # @param RuleName: 限流名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleName: String
        # @param MaxQps: 最大限流qps
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxQps: Integer
        # @param UsableStatus: 生效/禁用, enabled/disabled
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsableStatus: String
        # @param RuleContent: 规则内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleContent: String
        # @param TsfRuleId: Tsf Rule ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TsfRuleId: String
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CreatedTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param UpdatedTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedTime: String

        attr_accessor :RuleId, :ApiId, :RuleName, :MaxQps, :UsableStatus, :RuleContent, :TsfRuleId, :Description, :CreatedTime, :UpdatedTime
        
        def initialize(ruleid=nil, apiid=nil, rulename=nil, maxqps=nil, usablestatus=nil, rulecontent=nil, tsfruleid=nil, description=nil, createdtime=nil, updatedtime=nil)
          @RuleId = ruleid
          @ApiId = apiid
          @RuleName = rulename
          @MaxQps = maxqps
          @UsableStatus = usablestatus
          @RuleContent = rulecontent
          @TsfRuleId = tsfruleid
          @Description = description
          @CreatedTime = createdtime
          @UpdatedTime = updatedtime
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @ApiId = params['ApiId']
          @RuleName = params['RuleName']
          @MaxQps = params['MaxQps']
          @UsableStatus = params['UsableStatus']
          @RuleContent = params['RuleContent']
          @TsfRuleId = params['TsfRuleId']
          @Description = params['Description']
          @CreatedTime = params['CreatedTime']
          @UpdatedTime = params['UpdatedTime']
        end
      end

      # ApiRequestDescr
      class ApiRequestDescr < TencentCloud::Common::AbstractModel
        # @param Name: 参数名称
        # @type Name: String
        # @param Type: 参数类型
        # @type Type: String
        # @param In: 参数位置
        # @type In: String
        # @param Description: 参数描述
        # @type Description: String
        # @param Required: 参数是否必须
        # @type Required: Boolean
        # @param DefaultValue: 参数的默认值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultValue: String

        attr_accessor :Name, :Type, :In, :Description, :Required, :DefaultValue
        
        def initialize(name=nil, type=nil, _in=nil, description=nil, required=nil, defaultvalue=nil)
          @Name = name
          @Type = type
          @In = _in
          @Description = description
          @Required = required
          @DefaultValue = defaultvalue
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @In = params['In']
          @Description = params['Description']
          @Required = params['Required']
          @DefaultValue = params['DefaultValue']
        end
      end

      # API 响应的参数结构描述
      class ApiResponseDescr < TencentCloud::Common::AbstractModel
        # @param Name: 参数描述
        # @type Name: String
        # @param Type: 参数类型
        # @type Type: String
        # @param Description: 参数描述
        # @type Description: String

        attr_accessor :Name, :Type, :Description
        
        def initialize(name=nil, type=nil, description=nil)
          @Name = name
          @Type = type
          @Description = description
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @Description = params['Description']
        end
      end

      # API 日统计数据点
      class ApiUseStatisticsEntity < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Count: 次数
        # @type Count: String
        # @param Ratio: 比率
        # @type Ratio: String

        attr_accessor :Name, :Count, :Ratio
        
        def initialize(name=nil, count=nil, ratio=nil)
          @Name = name
          @Count = count
          @Ratio = ratio
        end

        def deserialize(params)
          @Name = params['Name']
          @Count = params['Count']
          @Ratio = params['Ratio']
        end
      end

      # API版本数组
      class ApiVersionArray < TencentCloud::Common::AbstractModel
        # @param ApplicationId: App ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param ApplicationName: App 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationName: String
        # @param PkgVersion: App 包版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PkgVersion: String

        attr_accessor :ApplicationId, :ApplicationName, :PkgVersion
        
        def initialize(applicationid=nil, applicationname=nil, pkgversion=nil)
          @ApplicationId = applicationid
          @ApplicationName = applicationname
          @PkgVersion = pkgversion
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @ApplicationName = params['ApplicationName']
          @PkgVersion = params['PkgVersion']
        end
      end

      # 应用列表其它字段
      class ApplicationAttribute < TencentCloud::Common::AbstractModel
        # @param InstanceCount: 总实例个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceCount: Integer
        # @param RunInstanceCount: 运行实例个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunInstanceCount: Integer
        # @param GroupCount: 应用下部署组个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupCount: Integer

        attr_accessor :InstanceCount, :RunInstanceCount, :GroupCount
        
        def initialize(instancecount=nil, runinstancecount=nil, groupcount=nil)
          @InstanceCount = instancecount
          @RunInstanceCount = runinstancecount
          @GroupCount = groupcount
        end

        def deserialize(params)
          @InstanceCount = params['InstanceCount']
          @RunInstanceCount = params['RunInstanceCount']
          @GroupCount = params['GroupCount']
        end
      end

      # 分页的应用描述信息字段
      class ApplicationForPage < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param ApplicationName: 应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationName: String
        # @param ApplicationDesc: 应用描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationDesc: String
        # @param ApplicationType: 应用类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationType: String
        # @param MicroserviceType: 微服务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MicroserviceType: String
        # @param ProgLang: 编程语言
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProgLang: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param ApplicationResourceType: 应用资源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationResourceType: String
        # @param ApplicationRuntimeType: 应用runtime类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationRuntimeType: String
        # @param ApigatewayServiceId: Apigateway的serviceId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApigatewayServiceId: String
        # @param ApplicationRemarkName: 应用备注名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationRemarkName: String
        # @param ServiceConfigList: 服务配置信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceConfigList: Array
        # @param IgnoreCreateImageRepository: IgnoreCreateImageRepository
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IgnoreCreateImageRepository: Boolean

        attr_accessor :ApplicationId, :ApplicationName, :ApplicationDesc, :ApplicationType, :MicroserviceType, :ProgLang, :CreateTime, :UpdateTime, :ApplicationResourceType, :ApplicationRuntimeType, :ApigatewayServiceId, :ApplicationRemarkName, :ServiceConfigList, :IgnoreCreateImageRepository
        
        def initialize(applicationid=nil, applicationname=nil, applicationdesc=nil, applicationtype=nil, microservicetype=nil, proglang=nil, createtime=nil, updatetime=nil, applicationresourcetype=nil, applicationruntimetype=nil, apigatewayserviceid=nil, applicationremarkname=nil, serviceconfiglist=nil, ignorecreateimagerepository=nil)
          @ApplicationId = applicationid
          @ApplicationName = applicationname
          @ApplicationDesc = applicationdesc
          @ApplicationType = applicationtype
          @MicroserviceType = microservicetype
          @ProgLang = proglang
          @CreateTime = createtime
          @UpdateTime = updatetime
          @ApplicationResourceType = applicationresourcetype
          @ApplicationRuntimeType = applicationruntimetype
          @ApigatewayServiceId = apigatewayserviceid
          @ApplicationRemarkName = applicationremarkname
          @ServiceConfigList = serviceconfiglist
          @IgnoreCreateImageRepository = ignorecreateimagerepository
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @ApplicationName = params['ApplicationName']
          @ApplicationDesc = params['ApplicationDesc']
          @ApplicationType = params['ApplicationType']
          @MicroserviceType = params['MicroserviceType']
          @ProgLang = params['ProgLang']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @ApplicationResourceType = params['ApplicationResourceType']
          @ApplicationRuntimeType = params['ApplicationRuntimeType']
          @ApigatewayServiceId = params['ApigatewayServiceId']
          @ApplicationRemarkName = params['ApplicationRemarkName']
          unless params['ServiceConfigList'].nil?
            @ServiceConfigList = []
            params['ServiceConfigList'].each do |i|
              serviceconfig_tmp = ServiceConfig.new
              serviceconfig_tmp.deserialize(i)
              @ServiceConfigList << serviceconfig_tmp
            end
          end
          @IgnoreCreateImageRepository = params['IgnoreCreateImageRepository']
        end
      end

      # AssociateBusinessLogConfig请求参数结构体
      class AssociateBusinessLogConfigRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: TSF分组ID
        # @type GroupId: String
        # @param ConfigIdList: 日志配置项ID列表
        # @type ConfigIdList: Array

        attr_accessor :GroupId, :ConfigIdList
        
        def initialize(groupid=nil, configidlist=nil)
          @GroupId = groupid
          @ConfigIdList = configidlist
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @ConfigIdList = params['ConfigIdList']
        end
      end

      # AssociateBusinessLogConfig返回参数结构体
      class AssociateBusinessLogConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: 操作结果
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # AssociateConfigWithGroup请求参数结构体
      class AssociateConfigWithGroupRequest < TencentCloud::Common::AbstractModel
        # @param ConfigId: 配置项id
        # @type ConfigId: String
        # @param Groups: 部署组信息
        # @type Groups: Array
        # @param SelectAll: 是否选择全部投递，1 表示全部，0或不填表示非全部
        # @type SelectAll: Integer
        # @param NamespaceId: 命名空间id
        # @type NamespaceId: String
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param SearchWord: 模糊搜索关键词
        # @type SearchWord: String

        attr_accessor :ConfigId, :Groups, :SelectAll, :NamespaceId, :ClusterId, :SearchWord
        
        def initialize(configid=nil, groups=nil, selectall=nil, namespaceid=nil, clusterid=nil, searchword=nil)
          @ConfigId = configid
          @Groups = groups
          @SelectAll = selectall
          @NamespaceId = namespaceid
          @ClusterId = clusterid
          @SearchWord = searchword
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
          unless params['Groups'].nil?
            @Groups = []
            params['Groups'].each do |i|
              groupinfo_tmp = GroupInfo.new
              groupinfo_tmp.deserialize(i)
              @Groups << groupinfo_tmp
            end
          end
          @SelectAll = params['SelectAll']
          @NamespaceId = params['NamespaceId']
          @ClusterId = params['ClusterId']
          @SearchWord = params['SearchWord']
        end
      end

      # AssociateConfigWithGroup返回参数结构体
      class AssociateConfigWithGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 绑定是否成功
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # BindApiGroup请求参数结构体
      class BindApiGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupGatewayList: 分组绑定网关列表
        # @type GroupGatewayList: Array

        attr_accessor :GroupGatewayList
        
        def initialize(groupgatewaylist=nil)
          @GroupGatewayList = groupgatewaylist
        end

        def deserialize(params)
          unless params['GroupGatewayList'].nil?
            @GroupGatewayList = []
            params['GroupGatewayList'].each do |i|
              gatewaygroupids_tmp = GatewayGroupIds.new
              gatewaygroupids_tmp.deserialize(i)
              @GroupGatewayList << gatewaygroupids_tmp
            end
          end
        end
      end

      # BindApiGroup返回参数结构体
      class BindApiGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果，成功失败
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

      # BindPlugin请求参数结构体
      class BindPluginRequest < TencentCloud::Common::AbstractModel
        # @param PluginInstanceList: 分组/API绑定插件列表
        # @type PluginInstanceList: Array

        attr_accessor :PluginInstanceList
        
        def initialize(plugininstancelist=nil)
          @PluginInstanceList = plugininstancelist
        end

        def deserialize(params)
          unless params['PluginInstanceList'].nil?
            @PluginInstanceList = []
            params['PluginInstanceList'].each do |i|
              gatewaypluginboundparam_tmp = GatewayPluginBoundParam.new
              gatewaypluginboundparam_tmp.deserialize(i)
              @PluginInstanceList << gatewaypluginboundparam_tmp
            end
          end
        end
      end

      # BindPlugin返回参数结构体
      class BindPluginResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果，成功失败
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

      # 业务日志配置关联部署组信息
      class BusinesLogConfigAssociatedGroup < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String
        # @param GroupName: 部署组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param ApplicationId: 部署组所属应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param ApplicationName: 部署组所属应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationName: String
        # @param ApplicationType: 部署组所属应用类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationType: String
        # @param NamespaceId: 部署组所属命名空间ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceId: String
        # @param NamespaceName: 部署组所属命名空间名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceName: String
        # @param ClusterId: 部署组所属集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param ClusterName: 部署组所属集群名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String
        # @param ClusterType: 部署组所属集群类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterType: String
        # @param AssociatedTime: 部署组关联日志配置时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssociatedTime: String

        attr_accessor :GroupId, :GroupName, :ApplicationId, :ApplicationName, :ApplicationType, :NamespaceId, :NamespaceName, :ClusterId, :ClusterName, :ClusterType, :AssociatedTime
        
        def initialize(groupid=nil, groupname=nil, applicationid=nil, applicationname=nil, applicationtype=nil, namespaceid=nil, namespacename=nil, clusterid=nil, clustername=nil, clustertype=nil, associatedtime=nil)
          @GroupId = groupid
          @GroupName = groupname
          @ApplicationId = applicationid
          @ApplicationName = applicationname
          @ApplicationType = applicationtype
          @NamespaceId = namespaceid
          @NamespaceName = namespacename
          @ClusterId = clusterid
          @ClusterName = clustername
          @ClusterType = clustertype
          @AssociatedTime = associatedtime
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @ApplicationId = params['ApplicationId']
          @ApplicationName = params['ApplicationName']
          @ApplicationType = params['ApplicationType']
          @NamespaceId = params['NamespaceId']
          @NamespaceName = params['NamespaceName']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @ClusterType = params['ClusterType']
          @AssociatedTime = params['AssociatedTime']
        end
      end

      # 业务日志配置
      class BusinessLogConfig < TencentCloud::Common::AbstractModel
        # @param ConfigId: 配置项ID
        # @type ConfigId: String
        # @param ConfigName: 配置项名称
        # @type ConfigName: String
        # @param ConfigPath: 配置项日志路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigPath: String
        # @param ConfigDesc: 配置项描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigDesc: String
        # @param ConfigTags: 配置项标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigTags: String
        # @param ConfigPipeline: 配置项对应的ES管道
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigPipeline: String
        # @param ConfigCreateTime: 配置项创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigCreateTime: String
        # @param ConfigUpdateTime: 配置项更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigUpdateTime: String
        # @param ConfigSchema: 配置项解析规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigSchema: :class:`Tencentcloud::Tsf.v20180326.models.BusinessLogConfigSchema`
        # @param ConfigAssociatedGroups: 配置项关联部署组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigAssociatedGroups: Array

        attr_accessor :ConfigId, :ConfigName, :ConfigPath, :ConfigDesc, :ConfigTags, :ConfigPipeline, :ConfigCreateTime, :ConfigUpdateTime, :ConfigSchema, :ConfigAssociatedGroups
        
        def initialize(configid=nil, configname=nil, configpath=nil, configdesc=nil, configtags=nil, configpipeline=nil, configcreatetime=nil, configupdatetime=nil, configschema=nil, configassociatedgroups=nil)
          @ConfigId = configid
          @ConfigName = configname
          @ConfigPath = configpath
          @ConfigDesc = configdesc
          @ConfigTags = configtags
          @ConfigPipeline = configpipeline
          @ConfigCreateTime = configcreatetime
          @ConfigUpdateTime = configupdatetime
          @ConfigSchema = configschema
          @ConfigAssociatedGroups = configassociatedgroups
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
          @ConfigName = params['ConfigName']
          @ConfigPath = params['ConfigPath']
          @ConfigDesc = params['ConfigDesc']
          @ConfigTags = params['ConfigTags']
          @ConfigPipeline = params['ConfigPipeline']
          @ConfigCreateTime = params['ConfigCreateTime']
          @ConfigUpdateTime = params['ConfigUpdateTime']
          unless params['ConfigSchema'].nil?
            @ConfigSchema = BusinessLogConfigSchema.new
            @ConfigSchema.deserialize(params['ConfigSchema'])
          end
          unless params['ConfigAssociatedGroups'].nil?
            @ConfigAssociatedGroups = []
            params['ConfigAssociatedGroups'].each do |i|
              busineslogconfigassociatedgroup_tmp = BusinesLogConfigAssociatedGroup.new
              busineslogconfigassociatedgroup_tmp.deserialize(i)
              @ConfigAssociatedGroups << busineslogconfigassociatedgroup_tmp
            end
          end
        end
      end

      # 业务日志配置解析规则
      class BusinessLogConfigSchema < TencentCloud::Common::AbstractModel
        # @param SchemaType: 解析规则类型
        # @type SchemaType: Integer
        # @param SchemaContent: 解析规则内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaContent: String
        # @param SchemaDateFormat: 解析规则时间格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaDateFormat: String
        # @param SchemaMultilinePattern: 解析规则对应的多行匹配规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaMultilinePattern: String
        # @param SchemaCreateTime: 解析规则创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaCreateTime: String
        # @param SchemaPatternLayout: 用户填写的解析规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaPatternLayout: String

        attr_accessor :SchemaType, :SchemaContent, :SchemaDateFormat, :SchemaMultilinePattern, :SchemaCreateTime, :SchemaPatternLayout
        
        def initialize(schematype=nil, schemacontent=nil, schemadateformat=nil, schemamultilinepattern=nil, schemacreatetime=nil, schemapatternlayout=nil)
          @SchemaType = schematype
          @SchemaContent = schemacontent
          @SchemaDateFormat = schemadateformat
          @SchemaMultilinePattern = schemamultilinepattern
          @SchemaCreateTime = schemacreatetime
          @SchemaPatternLayout = schemapatternlayout
        end

        def deserialize(params)
          @SchemaType = params['SchemaType']
          @SchemaContent = params['SchemaContent']
          @SchemaDateFormat = params['SchemaDateFormat']
          @SchemaMultilinePattern = params['SchemaMultilinePattern']
          @SchemaCreateTime = params['SchemaCreateTime']
          @SchemaPatternLayout = params['SchemaPatternLayout']
        end
      end

      # 业务日志
      class BusinessLogV2 < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param Content: 日志内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String
        # @param Timestamp: 日志时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timestamp: Integer
        # @param InstanceIp: 实例IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceIp: String
        # @param LogId: 日志ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogId: String
        # @param GroupId: 部署组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String

        attr_accessor :InstanceId, :Content, :Timestamp, :InstanceIp, :LogId, :GroupId
        
        def initialize(instanceid=nil, content=nil, timestamp=nil, instanceip=nil, logid=nil, groupid=nil)
          @InstanceId = instanceid
          @Content = content
          @Timestamp = timestamp
          @InstanceIp = instanceip
          @LogId = logid
          @GroupId = groupid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Content = params['Content']
          @Timestamp = params['Timestamp']
          @InstanceIp = params['InstanceIp']
          @LogId = params['LogId']
          @GroupId = params['GroupId']
        end
      end

      # ChangeApiUsableStatus请求参数结构体
      class ChangeApiUsableStatusRequest < TencentCloud::Common::AbstractModel
        # @param ApiId: API ID
        # @type ApiId: String
        # @param UsableStatus: 切换状态，enabled/disabled
        # @type UsableStatus: String

        attr_accessor :ApiId, :UsableStatus
        
        def initialize(apiid=nil, usablestatus=nil)
          @ApiId = apiid
          @UsableStatus = usablestatus
        end

        def deserialize(params)
          @ApiId = params['ApiId']
          @UsableStatus = params['UsableStatus']
        end
      end

      # ChangeApiUsableStatus返回参数结构体
      class ChangeApiUsableStatusResponse < TencentCloud::Common::AbstractModel
        # @param Result: API 信息
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.ApiDetailInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ApiDetailInfo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 集群
      class Cluster < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String
        # @param ClusterDesc: 集群描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterDesc: String
        # @param ClusterType: 集群类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterType: String
        # @param VpcId: 集群所属私有网络ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param ClusterStatus: 集群状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterStatus: String
        # @param ClusterCIDR: 集群CIDR
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterCIDR: String
        # @param ClusterTotalCpu: 集群总CPU，单位: 核
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterTotalCpu: Float
        # @param ClusterTotalMem: 集群总内存，单位: G
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterTotalMem: Float
        # @param ClusterUsedCpu: 集群已使用CPU，单位: 核
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterUsedCpu: Float
        # @param ClusterUsedMem: 集群已使用内存，单位: G
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterUsedMem: Float
        # @param InstanceCount: 集群机器实例数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceCount: Integer
        # @param RunInstanceCount: 集群可用的机器实例数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunInstanceCount: Integer
        # @param NormalInstanceCount: 集群正常状态的机器实例数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NormalInstanceCount: Integer
        # @param DeleteFlag: 删除标记：true：可以删除；false：不可删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeleteFlag: Boolean
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param TsfRegionId: 集群所属TSF地域ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TsfRegionId: String
        # @param TsfRegionName: 集群所属TSF地域名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TsfRegionName: String
        # @param TsfZoneId: 集群所属TSF可用区ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TsfZoneId: String
        # @param TsfZoneName: 集群所属TSF可用区名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TsfZoneName: String
        # @param DeleteFlagReason: 集群不可删除的原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeleteFlagReason: String
        # @param ClusterLimitCpu: 集群最大CPU限制，单位：核
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterLimitCpu: Float
        # @param ClusterLimitMem: 集群最大内存限制，单位：G
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterLimitMem: Float
        # @param RunServiceInstanceCount: 集群可用的服务实例数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunServiceInstanceCount: Integer
        # @param SubnetId: 集群所属子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param OperationInfo: 返回给前端的控制信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperationInfo: :class:`Tencentcloud::Tsf.v20180326.models.OperationInfo`
        # @param ClusterVersion: 集群版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterVersion: String

        attr_accessor :ClusterId, :ClusterName, :ClusterDesc, :ClusterType, :VpcId, :ClusterStatus, :ClusterCIDR, :ClusterTotalCpu, :ClusterTotalMem, :ClusterUsedCpu, :ClusterUsedMem, :InstanceCount, :RunInstanceCount, :NormalInstanceCount, :DeleteFlag, :CreateTime, :UpdateTime, :TsfRegionId, :TsfRegionName, :TsfZoneId, :TsfZoneName, :DeleteFlagReason, :ClusterLimitCpu, :ClusterLimitMem, :RunServiceInstanceCount, :SubnetId, :OperationInfo, :ClusterVersion
        
        def initialize(clusterid=nil, clustername=nil, clusterdesc=nil, clustertype=nil, vpcid=nil, clusterstatus=nil, clustercidr=nil, clustertotalcpu=nil, clustertotalmem=nil, clusterusedcpu=nil, clusterusedmem=nil, instancecount=nil, runinstancecount=nil, normalinstancecount=nil, deleteflag=nil, createtime=nil, updatetime=nil, tsfregionid=nil, tsfregionname=nil, tsfzoneid=nil, tsfzonename=nil, deleteflagreason=nil, clusterlimitcpu=nil, clusterlimitmem=nil, runserviceinstancecount=nil, subnetid=nil, operationinfo=nil, clusterversion=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @ClusterDesc = clusterdesc
          @ClusterType = clustertype
          @VpcId = vpcid
          @ClusterStatus = clusterstatus
          @ClusterCIDR = clustercidr
          @ClusterTotalCpu = clustertotalcpu
          @ClusterTotalMem = clustertotalmem
          @ClusterUsedCpu = clusterusedcpu
          @ClusterUsedMem = clusterusedmem
          @InstanceCount = instancecount
          @RunInstanceCount = runinstancecount
          @NormalInstanceCount = normalinstancecount
          @DeleteFlag = deleteflag
          @CreateTime = createtime
          @UpdateTime = updatetime
          @TsfRegionId = tsfregionid
          @TsfRegionName = tsfregionname
          @TsfZoneId = tsfzoneid
          @TsfZoneName = tsfzonename
          @DeleteFlagReason = deleteflagreason
          @ClusterLimitCpu = clusterlimitcpu
          @ClusterLimitMem = clusterlimitmem
          @RunServiceInstanceCount = runserviceinstancecount
          @SubnetId = subnetid
          @OperationInfo = operationinfo
          @ClusterVersion = clusterversion
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @ClusterDesc = params['ClusterDesc']
          @ClusterType = params['ClusterType']
          @VpcId = params['VpcId']
          @ClusterStatus = params['ClusterStatus']
          @ClusterCIDR = params['ClusterCIDR']
          @ClusterTotalCpu = params['ClusterTotalCpu']
          @ClusterTotalMem = params['ClusterTotalMem']
          @ClusterUsedCpu = params['ClusterUsedCpu']
          @ClusterUsedMem = params['ClusterUsedMem']
          @InstanceCount = params['InstanceCount']
          @RunInstanceCount = params['RunInstanceCount']
          @NormalInstanceCount = params['NormalInstanceCount']
          @DeleteFlag = params['DeleteFlag']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @TsfRegionId = params['TsfRegionId']
          @TsfRegionName = params['TsfRegionName']
          @TsfZoneId = params['TsfZoneId']
          @TsfZoneName = params['TsfZoneName']
          @DeleteFlagReason = params['DeleteFlagReason']
          @ClusterLimitCpu = params['ClusterLimitCpu']
          @ClusterLimitMem = params['ClusterLimitMem']
          @RunServiceInstanceCount = params['RunServiceInstanceCount']
          @SubnetId = params['SubnetId']
          unless params['OperationInfo'].nil?
            @OperationInfo = OperationInfo.new
            @OperationInfo.deserialize(params['OperationInfo'])
          end
          @ClusterVersion = params['ClusterVersion']
        end
      end

      # 集群详情
      class ClusterV2 < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String
        # @param ClusterDesc: 集群描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterDesc: String
        # @param ClusterType: 集群类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterType: String
        # @param VpcId: 集群所属私有网络ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param ClusterStatus: 集群状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterStatus: String
        # @param ClusterCIDR: 集群CIDR
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterCIDR: String
        # @param ClusterTotalCpu: 集群总CPU，单位: 核
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterTotalCpu: Float
        # @param ClusterTotalMem: 集群总内存，单位: G
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterTotalMem: Float
        # @param ClusterUsedCpu: 集群已使用CPU，单位: 核
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterUsedCpu: Float
        # @param ClusterUsedMem: 集群已使用内存，单位: G
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterUsedMem: Float
        # @param InstanceCount: 集群机器实例数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceCount: Integer
        # @param RunInstanceCount: 集群运行中的机器实例数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunInstanceCount: Integer
        # @param NormalInstanceCount: 集群正常状态的机器实例数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NormalInstanceCount: Integer
        # @param DeleteFlag: 删除标记：true：可以删除；false：不可删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeleteFlag: Boolean
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param TsfRegionId: 集群所属TSF地域ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TsfRegionId: String
        # @param TsfRegionName: 集群所属TSF地域名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TsfRegionName: String
        # @param TsfZoneId: 集群所属TSF可用区ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TsfZoneId: String
        # @param TsfZoneName: 集群所属TSF可用区名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TsfZoneName: String
        # @param DeleteFlagReason: 集群不可删除的原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeleteFlagReason: String
        # @param SubnetId: 集群所属私有网络子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param ClusterLimitCpu: 集群剩余 cpu limit
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterLimitCpu: String
        # @param ClusterLimitMem: 集群剩余 memory limit
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterLimitMem: String
        # @param RunServiceInstanceCount: 运行服务实例数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunServiceInstanceCount: Integer
        # @param OperationInfo: 给前端的按钮控制信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperationInfo: :class:`Tencentcloud::Tsf.v20180326.models.OperationInfo`
        # @param ClusterVersion: 容器集群版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterVersion: String
        # @param GroupCount: 部署组总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupCount: Integer
        # @param RunGroupCount: 运行中部署组数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunGroupCount: Integer
        # @param StopGroupCount: 停止中部署组数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StopGroupCount: Integer
        # @param AbnormalGroupCount: 异常部署组数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AbnormalGroupCount: Integer
        # @param ClusterRemarkName: 集群备注名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterRemarkName: String
        # @param KuberneteApiServer: api地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KuberneteApiServer: String
        # @param KuberneteNativeType: K : kubeconfig, S : service account
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KuberneteNativeType: String
        # @param KuberneteNativeSecret: native secret
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KuberneteNativeSecret: String

        attr_accessor :ClusterId, :ClusterName, :ClusterDesc, :ClusterType, :VpcId, :ClusterStatus, :ClusterCIDR, :ClusterTotalCpu, :ClusterTotalMem, :ClusterUsedCpu, :ClusterUsedMem, :InstanceCount, :RunInstanceCount, :NormalInstanceCount, :DeleteFlag, :CreateTime, :UpdateTime, :TsfRegionId, :TsfRegionName, :TsfZoneId, :TsfZoneName, :DeleteFlagReason, :SubnetId, :ClusterLimitCpu, :ClusterLimitMem, :RunServiceInstanceCount, :OperationInfo, :ClusterVersion, :GroupCount, :RunGroupCount, :StopGroupCount, :AbnormalGroupCount, :ClusterRemarkName, :KuberneteApiServer, :KuberneteNativeType, :KuberneteNativeSecret
        
        def initialize(clusterid=nil, clustername=nil, clusterdesc=nil, clustertype=nil, vpcid=nil, clusterstatus=nil, clustercidr=nil, clustertotalcpu=nil, clustertotalmem=nil, clusterusedcpu=nil, clusterusedmem=nil, instancecount=nil, runinstancecount=nil, normalinstancecount=nil, deleteflag=nil, createtime=nil, updatetime=nil, tsfregionid=nil, tsfregionname=nil, tsfzoneid=nil, tsfzonename=nil, deleteflagreason=nil, subnetid=nil, clusterlimitcpu=nil, clusterlimitmem=nil, runserviceinstancecount=nil, operationinfo=nil, clusterversion=nil, groupcount=nil, rungroupcount=nil, stopgroupcount=nil, abnormalgroupcount=nil, clusterremarkname=nil, kuberneteapiserver=nil, kubernetenativetype=nil, kubernetenativesecret=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @ClusterDesc = clusterdesc
          @ClusterType = clustertype
          @VpcId = vpcid
          @ClusterStatus = clusterstatus
          @ClusterCIDR = clustercidr
          @ClusterTotalCpu = clustertotalcpu
          @ClusterTotalMem = clustertotalmem
          @ClusterUsedCpu = clusterusedcpu
          @ClusterUsedMem = clusterusedmem
          @InstanceCount = instancecount
          @RunInstanceCount = runinstancecount
          @NormalInstanceCount = normalinstancecount
          @DeleteFlag = deleteflag
          @CreateTime = createtime
          @UpdateTime = updatetime
          @TsfRegionId = tsfregionid
          @TsfRegionName = tsfregionname
          @TsfZoneId = tsfzoneid
          @TsfZoneName = tsfzonename
          @DeleteFlagReason = deleteflagreason
          @SubnetId = subnetid
          @ClusterLimitCpu = clusterlimitcpu
          @ClusterLimitMem = clusterlimitmem
          @RunServiceInstanceCount = runserviceinstancecount
          @OperationInfo = operationinfo
          @ClusterVersion = clusterversion
          @GroupCount = groupcount
          @RunGroupCount = rungroupcount
          @StopGroupCount = stopgroupcount
          @AbnormalGroupCount = abnormalgroupcount
          @ClusterRemarkName = clusterremarkname
          @KuberneteApiServer = kuberneteapiserver
          @KuberneteNativeType = kubernetenativetype
          @KuberneteNativeSecret = kubernetenativesecret
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @ClusterDesc = params['ClusterDesc']
          @ClusterType = params['ClusterType']
          @VpcId = params['VpcId']
          @ClusterStatus = params['ClusterStatus']
          @ClusterCIDR = params['ClusterCIDR']
          @ClusterTotalCpu = params['ClusterTotalCpu']
          @ClusterTotalMem = params['ClusterTotalMem']
          @ClusterUsedCpu = params['ClusterUsedCpu']
          @ClusterUsedMem = params['ClusterUsedMem']
          @InstanceCount = params['InstanceCount']
          @RunInstanceCount = params['RunInstanceCount']
          @NormalInstanceCount = params['NormalInstanceCount']
          @DeleteFlag = params['DeleteFlag']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @TsfRegionId = params['TsfRegionId']
          @TsfRegionName = params['TsfRegionName']
          @TsfZoneId = params['TsfZoneId']
          @TsfZoneName = params['TsfZoneName']
          @DeleteFlagReason = params['DeleteFlagReason']
          @SubnetId = params['SubnetId']
          @ClusterLimitCpu = params['ClusterLimitCpu']
          @ClusterLimitMem = params['ClusterLimitMem']
          @RunServiceInstanceCount = params['RunServiceInstanceCount']
          unless params['OperationInfo'].nil?
            @OperationInfo = OperationInfo.new
            @OperationInfo.deserialize(params['OperationInfo'])
          end
          @ClusterVersion = params['ClusterVersion']
          @GroupCount = params['GroupCount']
          @RunGroupCount = params['RunGroupCount']
          @StopGroupCount = params['StopGroupCount']
          @AbnormalGroupCount = params['AbnormalGroupCount']
          @ClusterRemarkName = params['ClusterRemarkName']
          @KuberneteApiServer = params['KuberneteApiServer']
          @KuberneteNativeType = params['KuberneteNativeType']
          @KuberneteNativeSecret = params['KuberneteNativeSecret']
        end
      end

      # 配置项
      class Config < TencentCloud::Common::AbstractModel
        # @param ConfigId: 配置项ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigId: String
        # @param ConfigName: 配置项名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigName: String
        # @param ConfigVersion: 配置项版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigVersion: String
        # @param ConfigVersionDesc: 配置项版本描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigVersionDesc: String
        # @param ConfigValue: 配置项值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigValue: String
        # @param ConfigType: 配置项类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigType: String
        # @param CreationTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreationTime: String
        # @param ApplicationId: 应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param ApplicationName: 应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationName: String
        # @param DeleteFlag: 删除标识，true：可以删除；false：不可删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeleteFlag: Boolean
        # @param LastUpdateTime: 最后更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastUpdateTime: String
        # @param ConfigVersionCount: 配置项版本数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigVersionCount: Integer

        attr_accessor :ConfigId, :ConfigName, :ConfigVersion, :ConfigVersionDesc, :ConfigValue, :ConfigType, :CreationTime, :ApplicationId, :ApplicationName, :DeleteFlag, :LastUpdateTime, :ConfigVersionCount
        
        def initialize(configid=nil, configname=nil, configversion=nil, configversiondesc=nil, configvalue=nil, configtype=nil, creationtime=nil, applicationid=nil, applicationname=nil, deleteflag=nil, lastupdatetime=nil, configversioncount=nil)
          @ConfigId = configid
          @ConfigName = configname
          @ConfigVersion = configversion
          @ConfigVersionDesc = configversiondesc
          @ConfigValue = configvalue
          @ConfigType = configtype
          @CreationTime = creationtime
          @ApplicationId = applicationid
          @ApplicationName = applicationname
          @DeleteFlag = deleteflag
          @LastUpdateTime = lastupdatetime
          @ConfigVersionCount = configversioncount
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
          @ConfigName = params['ConfigName']
          @ConfigVersion = params['ConfigVersion']
          @ConfigVersionDesc = params['ConfigVersionDesc']
          @ConfigValue = params['ConfigValue']
          @ConfigType = params['ConfigType']
          @CreationTime = params['CreationTime']
          @ApplicationId = params['ApplicationId']
          @ApplicationName = params['ApplicationName']
          @DeleteFlag = params['DeleteFlag']
          @LastUpdateTime = params['LastUpdateTime']
          @ConfigVersionCount = params['ConfigVersionCount']
        end
      end

      # 配置项发布信息
      class ConfigRelease < TencentCloud::Common::AbstractModel
        # @param ConfigReleaseId: 配置项发布ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigReleaseId: String
        # @param ConfigId: 配置项ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigId: String
        # @param ConfigName: 配置项名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigName: String
        # @param ConfigVersion: 配置项版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigVersion: String
        # @param ReleaseTime: 发布时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReleaseTime: String
        # @param GroupId: 部署组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String
        # @param GroupName: 部署组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param NamespaceId: 命名空间ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceId: String
        # @param NamespaceName: 命名空间名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceName: String
        # @param ClusterId: 集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String
        # @param ReleaseDesc: 发布描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReleaseDesc: String
        # @param ApplicationId: 应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String

        attr_accessor :ConfigReleaseId, :ConfigId, :ConfigName, :ConfigVersion, :ReleaseTime, :GroupId, :GroupName, :NamespaceId, :NamespaceName, :ClusterId, :ClusterName, :ReleaseDesc, :ApplicationId
        
        def initialize(configreleaseid=nil, configid=nil, configname=nil, configversion=nil, releasetime=nil, groupid=nil, groupname=nil, namespaceid=nil, namespacename=nil, clusterid=nil, clustername=nil, releasedesc=nil, applicationid=nil)
          @ConfigReleaseId = configreleaseid
          @ConfigId = configid
          @ConfigName = configname
          @ConfigVersion = configversion
          @ReleaseTime = releasetime
          @GroupId = groupid
          @GroupName = groupname
          @NamespaceId = namespaceid
          @NamespaceName = namespacename
          @ClusterId = clusterid
          @ClusterName = clustername
          @ReleaseDesc = releasedesc
          @ApplicationId = applicationid
        end

        def deserialize(params)
          @ConfigReleaseId = params['ConfigReleaseId']
          @ConfigId = params['ConfigId']
          @ConfigName = params['ConfigName']
          @ConfigVersion = params['ConfigVersion']
          @ReleaseTime = params['ReleaseTime']
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @NamespaceId = params['NamespaceId']
          @NamespaceName = params['NamespaceName']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @ReleaseDesc = params['ReleaseDesc']
          @ApplicationId = params['ApplicationId']
        end
      end

      # 配置项发布日志
      class ConfigReleaseLog < TencentCloud::Common::AbstractModel
        # @param ConfigReleaseLogId: 配置项发布日志ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigReleaseLogId: String
        # @param ConfigId: 配置项ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigId: String
        # @param ConfigName: 配置项名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigName: String
        # @param ConfigVersion: 配置项版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigVersion: String
        # @param GroupId: 部署组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String
        # @param GroupName: 部署组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param NamespaceId: 命名空间ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceId: String
        # @param NamespaceName: 命名空间名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceName: String
        # @param ClusterId: 集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String
        # @param ReleaseTime: 发布时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReleaseTime: String
        # @param ReleaseDesc: 发布描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReleaseDesc: String
        # @param ReleaseStatus: 发布状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReleaseStatus: String
        # @param LastConfigId: 上次发布的配置项ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastConfigId: String
        # @param LastConfigName: 上次发布的配置项名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastConfigName: String
        # @param LastConfigVersion: 上次发布的配置项版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastConfigVersion: String
        # @param RollbackFlag: 回滚标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RollbackFlag: Boolean

        attr_accessor :ConfigReleaseLogId, :ConfigId, :ConfigName, :ConfigVersion, :GroupId, :GroupName, :NamespaceId, :NamespaceName, :ClusterId, :ClusterName, :ReleaseTime, :ReleaseDesc, :ReleaseStatus, :LastConfigId, :LastConfigName, :LastConfigVersion, :RollbackFlag
        
        def initialize(configreleaselogid=nil, configid=nil, configname=nil, configversion=nil, groupid=nil, groupname=nil, namespaceid=nil, namespacename=nil, clusterid=nil, clustername=nil, releasetime=nil, releasedesc=nil, releasestatus=nil, lastconfigid=nil, lastconfigname=nil, lastconfigversion=nil, rollbackflag=nil)
          @ConfigReleaseLogId = configreleaselogid
          @ConfigId = configid
          @ConfigName = configname
          @ConfigVersion = configversion
          @GroupId = groupid
          @GroupName = groupname
          @NamespaceId = namespaceid
          @NamespaceName = namespacename
          @ClusterId = clusterid
          @ClusterName = clustername
          @ReleaseTime = releasetime
          @ReleaseDesc = releasedesc
          @ReleaseStatus = releasestatus
          @LastConfigId = lastconfigid
          @LastConfigName = lastconfigname
          @LastConfigVersion = lastconfigversion
          @RollbackFlag = rollbackflag
        end

        def deserialize(params)
          @ConfigReleaseLogId = params['ConfigReleaseLogId']
          @ConfigId = params['ConfigId']
          @ConfigName = params['ConfigName']
          @ConfigVersion = params['ConfigVersion']
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @NamespaceId = params['NamespaceId']
          @NamespaceName = params['NamespaceName']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @ReleaseTime = params['ReleaseTime']
          @ReleaseDesc = params['ReleaseDesc']
          @ReleaseStatus = params['ReleaseStatus']
          @LastConfigId = params['LastConfigId']
          @LastConfigName = params['LastConfigName']
          @LastConfigVersion = params['LastConfigVersion']
          @RollbackFlag = params['RollbackFlag']
        end
      end

      # 配置模板对象
      class ConfigTemplate < TencentCloud::Common::AbstractModel
        # @param ConfigTemplateId: 配置模板Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigTemplateId: String
        # @param ConfigTemplateName: 配置模板名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigTemplateName: String
        # @param ConfigTemplateDesc: 配置模板描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigTemplateDesc: String
        # @param ConfigTemplateType: 配置模板对应的微服务框架
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigTemplateType: String
        # @param ConfigTemplateValue: 配置模板数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigTemplateValue: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :ConfigTemplateId, :ConfigTemplateName, :ConfigTemplateDesc, :ConfigTemplateType, :ConfigTemplateValue, :CreateTime, :UpdateTime
        
        def initialize(configtemplateid=nil, configtemplatename=nil, configtemplatedesc=nil, configtemplatetype=nil, configtemplatevalue=nil, createtime=nil, updatetime=nil)
          @ConfigTemplateId = configtemplateid
          @ConfigTemplateName = configtemplatename
          @ConfigTemplateDesc = configtemplatedesc
          @ConfigTemplateType = configtemplatetype
          @ConfigTemplateValue = configtemplatevalue
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @ConfigTemplateId = params['ConfigTemplateId']
          @ConfigTemplateName = params['ConfigTemplateName']
          @ConfigTemplateDesc = params['ConfigTemplateDesc']
          @ConfigTemplateType = params['ConfigTemplateType']
          @ConfigTemplateValue = params['ConfigTemplateValue']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 部署组列表（应用下钻界面的）
      class ContainGroup < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String
        # @param GroupName: 分组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param Server: 镜像server
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Server: String
        # @param RepoName: 镜像名，如/tsf/nginx
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepoName: String
        # @param TagName: 镜像版本名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagName: String
        # @param ClusterId: 集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String
        # @param NamespaceId: 命名空间ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceId: String
        # @param NamespaceName: 命名空间名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceName: String
        # @param CpuRequest: 初始分配的 CPU 核数，对应 K8S request
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CpuRequest: String
        # @param CpuLimit: 最大分配的 CPU 核数，对应 K8S limit
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CpuLimit: String
        # @param MemRequest: 初始分配的内存 MiB 数，对应 K8S request
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemRequest: String
        # @param MemLimit: 最大分配的内存 MiB 数，对应 K8S limit
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemLimit: String
        # @param Alias: 部署组备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alias: String
        # @param KubeInjectEnable: KubeInjectEnable值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KubeInjectEnable: Boolean
        # @param UpdatedTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedTime: String

        attr_accessor :GroupId, :GroupName, :CreateTime, :Server, :RepoName, :TagName, :ClusterId, :ClusterName, :NamespaceId, :NamespaceName, :CpuRequest, :CpuLimit, :MemRequest, :MemLimit, :Alias, :KubeInjectEnable, :UpdatedTime
        
        def initialize(groupid=nil, groupname=nil, createtime=nil, server=nil, reponame=nil, tagname=nil, clusterid=nil, clustername=nil, namespaceid=nil, namespacename=nil, cpurequest=nil, cpulimit=nil, memrequest=nil, memlimit=nil, _alias=nil, kubeinjectenable=nil, updatedtime=nil)
          @GroupId = groupid
          @GroupName = groupname
          @CreateTime = createtime
          @Server = server
          @RepoName = reponame
          @TagName = tagname
          @ClusterId = clusterid
          @ClusterName = clustername
          @NamespaceId = namespaceid
          @NamespaceName = namespacename
          @CpuRequest = cpurequest
          @CpuLimit = cpulimit
          @MemRequest = memrequest
          @MemLimit = memlimit
          @Alias = _alias
          @KubeInjectEnable = kubeinjectenable
          @UpdatedTime = updatedtime
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @CreateTime = params['CreateTime']
          @Server = params['Server']
          @RepoName = params['RepoName']
          @TagName = params['TagName']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @NamespaceId = params['NamespaceId']
          @NamespaceName = params['NamespaceName']
          @CpuRequest = params['CpuRequest']
          @CpuLimit = params['CpuLimit']
          @MemRequest = params['MemRequest']
          @MemLimit = params['MemLimit']
          @Alias = params['Alias']
          @KubeInjectEnable = params['KubeInjectEnable']
          @UpdatedTime = params['UpdatedTime']
        end
      end

      # 部署组列表（应用下钻）
      class ContainGroupResult < TencentCloud::Common::AbstractModel
        # @param Content: 部署组列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer

        attr_accessor :Content, :TotalCount
        
        def initialize(content=nil, totalcount=nil)
          @Content = content
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              containgroup_tmp = ContainGroup.new
              containgroup_tmp.deserialize(i)
              @Content << containgroup_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # 返回容器的事件，比如 k8s deployment 或者 pod 的 events
      class ContainerEvent < TencentCloud::Common::AbstractModel
        # @param FirstTimestamp: 第一次出现的时间，以 ms 为单位的时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstTimestamp: Integer
        # @param LastTimestamp: 最后一次出现的时间，以 ms 为单位的时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastTimestamp: Integer
        # @param Type: 级别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Kind: 资源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Kind: String
        # @param Name: 资源名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Reason: 内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reason: String
        # @param Message: 详细描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Count: 出现次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer

        attr_accessor :FirstTimestamp, :LastTimestamp, :Type, :Kind, :Name, :Reason, :Message, :Count
        
        def initialize(firsttimestamp=nil, lasttimestamp=nil, type=nil, kind=nil, name=nil, reason=nil, message=nil, count=nil)
          @FirstTimestamp = firsttimestamp
          @LastTimestamp = lasttimestamp
          @Type = type
          @Kind = kind
          @Name = name
          @Reason = reason
          @Message = message
          @Count = count
        end

        def deserialize(params)
          @FirstTimestamp = params['FirstTimestamp']
          @LastTimestamp = params['LastTimestamp']
          @Type = params['Type']
          @Kind = params['Kind']
          @Name = params['Name']
          @Reason = params['Reason']
          @Message = params['Message']
          @Count = params['Count']
        end
      end

      # 获取部署组
      class ContainerGroupDeploy < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String
        # @param GroupName: 分组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param InstanceNum: 实例总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceNum: Integer
        # @param CurrentNum: 已启动实例总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentNum: Integer
        # @param Server: 镜像server
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Server: String
        # @param Reponame: 镜像名，如/tsf/nginx
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reponame: String
        # @param TagName: 镜像版本名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagName: String
        # @param CpuRequest: 业务容器初始分配的 CPU 核数，对应 K8S request
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CpuRequest: String
        # @param CpuLimit: 业务容器最大分配的 CPU 核数，对应 K8S limit
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CpuLimit: String
        # @param MemRequest: 业务容器初始分配的内存 MiB 数，对应 K8S request
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemRequest: String
        # @param MemLimit: 业务容器最大分配的内存 MiB 数，对应 K8S limit
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemLimit: String
        # @param AccessType: 0:公网 1:集群内访问 2：NodePort
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessType: Integer
        # @param ProtocolPorts: 端口映射
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProtocolPorts: Array
        # @param UpdateType: 更新方式：0:快速更新 1:滚动更新
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateType: Integer
        # @param UpdateIvl: 更新间隔,单位秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateIvl: Integer
        # @param JvmOpts: jvm参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JvmOpts: String
        # @param SubnetId: 子网id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param AgentCpuRequest: agent容器初始分配的 CPU 核数，对应 K8S request
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentCpuRequest: String
        # @param AgentCpuLimit: agent容器最大分配的 CPU 核数，对应 K8S limit
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentCpuLimit: String
        # @param AgentMemRequest: agent容器初始分配的内存 MiB 数，对应 K8S request
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentMemRequest: String
        # @param AgentMemLimit: agent容器最大分配的内存 MiB 数，对应 K8S limit
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentMemLimit: String
        # @param IstioCpuRequest: istioproxy容器初始分配的 CPU 核数，对应 K8S request
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IstioCpuRequest: String
        # @param IstioCpuLimit: istioproxy容器最大分配的 CPU 核数，对应 K8S limit
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IstioCpuLimit: String
        # @param IstioMemRequest: istioproxy容器初始分配的内存 MiB 数，对应 K8S request
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IstioMemRequest: String
        # @param IstioMemLimit: istioproxy容器最大分配的内存 MiB 数，对应 K8S limit
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IstioMemLimit: String
        # @param Envs: 部署组的环境变量数组，这里没有展示 tsf 使用的环境变量，只展示了用户设置的环境变量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Envs: Array
        # @param HealthCheckSettings: 健康检查配置信息，若不指定该参数，则默认不设置健康检查。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthCheckSettings: :class:`Tencentcloud::Tsf.v20180326.models.HealthCheckSettings`
        # @param DeployAgent: 是否部署Agent容器
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployAgent: Boolean
        # @param Alias: 部署组备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alias: String
        # @param DisableService: 是否创建 k8s service
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisableService: Boolean
        # @param HeadlessService: service 是否为 headless 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeadlessService: Boolean
        # @param TcrRepoInfo: TcrRepoInfo值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TcrRepoInfo: :class:`Tencentcloud::Tsf.v20180326.models.TcrRepoInfo`
        # @param VolumeInfos: 数据卷信息，list
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VolumeInfos: Array
        # @param VolumeMountInfos: 数据卷挂载信息，list
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VolumeMountInfos: Array
        # @param KubeInjectEnable: KubeInjectEnable值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KubeInjectEnable: Boolean
        # @param RepoType: 仓库类型 (person, tcr)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepoType: String
        # @param WarmupSetting: 预热配置设置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WarmupSetting: :class:`Tencentcloud::Tsf.v20180326.models.WarmupSetting`
        # @param GatewayConfig: Envoy网关服务配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GatewayConfig: :class:`Tencentcloud::Tsf.v20180326.models.GatewayConfig`

        attr_accessor :GroupId, :GroupName, :InstanceNum, :CurrentNum, :Server, :Reponame, :TagName, :CpuRequest, :CpuLimit, :MemRequest, :MemLimit, :AccessType, :ProtocolPorts, :UpdateType, :UpdateIvl, :JvmOpts, :SubnetId, :AgentCpuRequest, :AgentCpuLimit, :AgentMemRequest, :AgentMemLimit, :IstioCpuRequest, :IstioCpuLimit, :IstioMemRequest, :IstioMemLimit, :Envs, :HealthCheckSettings, :DeployAgent, :Alias, :DisableService, :HeadlessService, :TcrRepoInfo, :VolumeInfos, :VolumeMountInfos, :KubeInjectEnable, :RepoType, :WarmupSetting, :GatewayConfig
        
        def initialize(groupid=nil, groupname=nil, instancenum=nil, currentnum=nil, server=nil, reponame=nil, tagname=nil, cpurequest=nil, cpulimit=nil, memrequest=nil, memlimit=nil, accesstype=nil, protocolports=nil, updatetype=nil, updateivl=nil, jvmopts=nil, subnetid=nil, agentcpurequest=nil, agentcpulimit=nil, agentmemrequest=nil, agentmemlimit=nil, istiocpurequest=nil, istiocpulimit=nil, istiomemrequest=nil, istiomemlimit=nil, envs=nil, healthchecksettings=nil, deployagent=nil, _alias=nil, disableservice=nil, headlessservice=nil, tcrrepoinfo=nil, volumeinfos=nil, volumemountinfos=nil, kubeinjectenable=nil, repotype=nil, warmupsetting=nil, gatewayconfig=nil)
          @GroupId = groupid
          @GroupName = groupname
          @InstanceNum = instancenum
          @CurrentNum = currentnum
          @Server = server
          @Reponame = reponame
          @TagName = tagname
          @CpuRequest = cpurequest
          @CpuLimit = cpulimit
          @MemRequest = memrequest
          @MemLimit = memlimit
          @AccessType = accesstype
          @ProtocolPorts = protocolports
          @UpdateType = updatetype
          @UpdateIvl = updateivl
          @JvmOpts = jvmopts
          @SubnetId = subnetid
          @AgentCpuRequest = agentcpurequest
          @AgentCpuLimit = agentcpulimit
          @AgentMemRequest = agentmemrequest
          @AgentMemLimit = agentmemlimit
          @IstioCpuRequest = istiocpurequest
          @IstioCpuLimit = istiocpulimit
          @IstioMemRequest = istiomemrequest
          @IstioMemLimit = istiomemlimit
          @Envs = envs
          @HealthCheckSettings = healthchecksettings
          @DeployAgent = deployagent
          @Alias = _alias
          @DisableService = disableservice
          @HeadlessService = headlessservice
          @TcrRepoInfo = tcrrepoinfo
          @VolumeInfos = volumeinfos
          @VolumeMountInfos = volumemountinfos
          @KubeInjectEnable = kubeinjectenable
          @RepoType = repotype
          @WarmupSetting = warmupsetting
          @GatewayConfig = gatewayconfig
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @InstanceNum = params['InstanceNum']
          @CurrentNum = params['CurrentNum']
          @Server = params['Server']
          @Reponame = params['Reponame']
          @TagName = params['TagName']
          @CpuRequest = params['CpuRequest']
          @CpuLimit = params['CpuLimit']
          @MemRequest = params['MemRequest']
          @MemLimit = params['MemLimit']
          @AccessType = params['AccessType']
          unless params['ProtocolPorts'].nil?
            @ProtocolPorts = []
            params['ProtocolPorts'].each do |i|
              protocolport_tmp = ProtocolPort.new
              protocolport_tmp.deserialize(i)
              @ProtocolPorts << protocolport_tmp
            end
          end
          @UpdateType = params['UpdateType']
          @UpdateIvl = params['UpdateIvl']
          @JvmOpts = params['JvmOpts']
          @SubnetId = params['SubnetId']
          @AgentCpuRequest = params['AgentCpuRequest']
          @AgentCpuLimit = params['AgentCpuLimit']
          @AgentMemRequest = params['AgentMemRequest']
          @AgentMemLimit = params['AgentMemLimit']
          @IstioCpuRequest = params['IstioCpuRequest']
          @IstioCpuLimit = params['IstioCpuLimit']
          @IstioMemRequest = params['IstioMemRequest']
          @IstioMemLimit = params['IstioMemLimit']
          unless params['Envs'].nil?
            @Envs = []
            params['Envs'].each do |i|
              env_tmp = Env.new
              env_tmp.deserialize(i)
              @Envs << env_tmp
            end
          end
          unless params['HealthCheckSettings'].nil?
            @HealthCheckSettings = HealthCheckSettings.new
            @HealthCheckSettings.deserialize(params['HealthCheckSettings'])
          end
          @DeployAgent = params['DeployAgent']
          @Alias = params['Alias']
          @DisableService = params['DisableService']
          @HeadlessService = params['HeadlessService']
          unless params['TcrRepoInfo'].nil?
            @TcrRepoInfo = TcrRepoInfo.new
            @TcrRepoInfo.deserialize(params['TcrRepoInfo'])
          end
          unless params['VolumeInfos'].nil?
            @VolumeInfos = []
            params['VolumeInfos'].each do |i|
              volumeinfo_tmp = VolumeInfo.new
              volumeinfo_tmp.deserialize(i)
              @VolumeInfos << volumeinfo_tmp
            end
          end
          unless params['VolumeMountInfos'].nil?
            @VolumeMountInfos = []
            params['VolumeMountInfos'].each do |i|
              volumemountinfo_tmp = VolumeMountInfo.new
              volumemountinfo_tmp.deserialize(i)
              @VolumeMountInfos << volumemountinfo_tmp
            end
          end
          @KubeInjectEnable = params['KubeInjectEnable']
          @RepoType = params['RepoType']
          unless params['WarmupSetting'].nil?
            @WarmupSetting = WarmupSetting.new
            @WarmupSetting.deserialize(params['WarmupSetting'])
          end
          unless params['GatewayConfig'].nil?
            @GatewayConfig = GatewayConfig.new
            @GatewayConfig.deserialize(params['GatewayConfig'])
          end
        end
      end

      # 容器部署组详情
      class ContainerGroupDetail < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String
        # @param GroupName: 分组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param InstanceNum: 实例总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceNum: Integer
        # @param CurrentNum: 已启动实例总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentNum: Integer
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param Server: 镜像server
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Server: String
        # @param Reponame: 镜像名，如/tsf/nginx
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reponame: String
        # @param TagName: 镜像版本名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagName: String
        # @param ClusterId: 集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String
        # @param NamespaceId: 命名空间ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceId: String
        # @param NamespaceName: 命名空间名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceName: String
        # @param ApplicationId: 应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param LbIp: 负载均衡ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LbIp: String
        # @param ApplicationType: 应用类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationType: String
        # @param ClusterIp: Service ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterIp: String
        # @param NodePort: NodePort端口，只有公网和NodePort访问方式才有值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodePort: Integer
        # @param CpuLimit: 最大分配的 CPU 核数，对应 K8S limit
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CpuLimit: String
        # @param MemLimit: 最大分配的内存 MiB 数，对应 K8S limit
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemLimit: String
        # @param AccessType: 0:公网 1:集群内访问 2：NodePort
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessType: Integer
        # @param UpdateType: 更新方式：0:快速更新 1:滚动更新
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateType: Integer
        # @param UpdateIvl: 更新间隔,单位秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateIvl: Integer
        # @param ProtocolPorts: 端口数组对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProtocolPorts: Array
        # @param Envs: 环境变量数组对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Envs: Array
        # @param ApplicationName: 应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationName: String
        # @param Message: pod错误信息描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Status: 部署组状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param MicroserviceType: 服务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MicroserviceType: String
        # @param CpuRequest: 初始分配的 CPU 核数，对应 K8S request
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CpuRequest: String
        # @param MemRequest: 初始分配的内存 MiB 数，对应 K8S request
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemRequest: String
        # @param SubnetId: 子网id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param GroupResourceType: 部署组资源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupResourceType: String
        # @param InstanceCount: 部署组实例个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceCount: Integer
        # @param UpdatedTime: 部署组更新时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedTime: Integer
        # @param MaxSurge: kubernetes滚动更新策略的MaxSurge参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxSurge: String
        # @param MaxUnavailable: kubernetes滚动更新策略的MaxUnavailable参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxUnavailable: String
        # @param HealthCheckSettings: 部署组健康检查设置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthCheckSettings: :class:`Tencentcloud::Tsf.v20180326.models.HealthCheckSettings`
        # @param AllowPlainYamlDeploy: 允许PlainYamlDeploy
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllowPlainYamlDeploy: Boolean
        # @param IsNotEqualServiceConfig: 是否不等于ServiceConfig
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsNotEqualServiceConfig: Boolean
        # @param RepoName: 仓库名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepoName: String
        # @param Alias: 别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alias: String

        attr_accessor :GroupId, :GroupName, :InstanceNum, :CurrentNum, :CreateTime, :Server, :Reponame, :TagName, :ClusterId, :ClusterName, :NamespaceId, :NamespaceName, :ApplicationId, :LbIp, :ApplicationType, :ClusterIp, :NodePort, :CpuLimit, :MemLimit, :AccessType, :UpdateType, :UpdateIvl, :ProtocolPorts, :Envs, :ApplicationName, :Message, :Status, :MicroserviceType, :CpuRequest, :MemRequest, :SubnetId, :GroupResourceType, :InstanceCount, :UpdatedTime, :MaxSurge, :MaxUnavailable, :HealthCheckSettings, :AllowPlainYamlDeploy, :IsNotEqualServiceConfig, :RepoName, :Alias
        
        def initialize(groupid=nil, groupname=nil, instancenum=nil, currentnum=nil, createtime=nil, server=nil, reponame=nil, tagname=nil, clusterid=nil, clustername=nil, namespaceid=nil, namespacename=nil, applicationid=nil, lbip=nil, applicationtype=nil, clusterip=nil, nodeport=nil, cpulimit=nil, memlimit=nil, accesstype=nil, updatetype=nil, updateivl=nil, protocolports=nil, envs=nil, applicationname=nil, message=nil, status=nil, microservicetype=nil, cpurequest=nil, memrequest=nil, subnetid=nil, groupresourcetype=nil, instancecount=nil, updatedtime=nil, maxsurge=nil, maxunavailable=nil, healthchecksettings=nil, allowplainyamldeploy=nil, isnotequalserviceconfig=nil, reponame=nil, _alias=nil)
          @GroupId = groupid
          @GroupName = groupname
          @InstanceNum = instancenum
          @CurrentNum = currentnum
          @CreateTime = createtime
          @Server = server
          @Reponame = reponame
          @TagName = tagname
          @ClusterId = clusterid
          @ClusterName = clustername
          @NamespaceId = namespaceid
          @NamespaceName = namespacename
          @ApplicationId = applicationid
          @LbIp = lbip
          @ApplicationType = applicationtype
          @ClusterIp = clusterip
          @NodePort = nodeport
          @CpuLimit = cpulimit
          @MemLimit = memlimit
          @AccessType = accesstype
          @UpdateType = updatetype
          @UpdateIvl = updateivl
          @ProtocolPorts = protocolports
          @Envs = envs
          @ApplicationName = applicationname
          @Message = message
          @Status = status
          @MicroserviceType = microservicetype
          @CpuRequest = cpurequest
          @MemRequest = memrequest
          @SubnetId = subnetid
          @GroupResourceType = groupresourcetype
          @InstanceCount = instancecount
          @UpdatedTime = updatedtime
          @MaxSurge = maxsurge
          @MaxUnavailable = maxunavailable
          @HealthCheckSettings = healthchecksettings
          @AllowPlainYamlDeploy = allowplainyamldeploy
          @IsNotEqualServiceConfig = isnotequalserviceconfig
          @RepoName = reponame
          @Alias = _alias
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @InstanceNum = params['InstanceNum']
          @CurrentNum = params['CurrentNum']
          @CreateTime = params['CreateTime']
          @Server = params['Server']
          @Reponame = params['Reponame']
          @TagName = params['TagName']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @NamespaceId = params['NamespaceId']
          @NamespaceName = params['NamespaceName']
          @ApplicationId = params['ApplicationId']
          @LbIp = params['LbIp']
          @ApplicationType = params['ApplicationType']
          @ClusterIp = params['ClusterIp']
          @NodePort = params['NodePort']
          @CpuLimit = params['CpuLimit']
          @MemLimit = params['MemLimit']
          @AccessType = params['AccessType']
          @UpdateType = params['UpdateType']
          @UpdateIvl = params['UpdateIvl']
          unless params['ProtocolPorts'].nil?
            @ProtocolPorts = []
            params['ProtocolPorts'].each do |i|
              protocolport_tmp = ProtocolPort.new
              protocolport_tmp.deserialize(i)
              @ProtocolPorts << protocolport_tmp
            end
          end
          unless params['Envs'].nil?
            @Envs = []
            params['Envs'].each do |i|
              env_tmp = Env.new
              env_tmp.deserialize(i)
              @Envs << env_tmp
            end
          end
          @ApplicationName = params['ApplicationName']
          @Message = params['Message']
          @Status = params['Status']
          @MicroserviceType = params['MicroserviceType']
          @CpuRequest = params['CpuRequest']
          @MemRequest = params['MemRequest']
          @SubnetId = params['SubnetId']
          @GroupResourceType = params['GroupResourceType']
          @InstanceCount = params['InstanceCount']
          @UpdatedTime = params['UpdatedTime']
          @MaxSurge = params['MaxSurge']
          @MaxUnavailable = params['MaxUnavailable']
          unless params['HealthCheckSettings'].nil?
            @HealthCheckSettings = HealthCheckSettings.new
            @HealthCheckSettings.deserialize(params['HealthCheckSettings'])
          end
          @AllowPlainYamlDeploy = params['AllowPlainYamlDeploy']
          @IsNotEqualServiceConfig = params['IsNotEqualServiceConfig']
          @RepoName = params['RepoName']
          @Alias = params['Alias']
        end
      end

      # ContinueRunFailedTaskBatch请求参数结构体
      class ContinueRunFailedTaskBatchRequest < TencentCloud::Common::AbstractModel
        # @param BatchId: 批次ID。
        # @type BatchId: String

        attr_accessor :BatchId
        
        def initialize(batchid=nil)
          @BatchId = batchid
        end

        def deserialize(params)
          @BatchId = params['BatchId']
        end
      end

      # ContinueRunFailedTaskBatch返回参数结构体
      class ContinueRunFailedTaskBatchResponse < TencentCloud::Common::AbstractModel
        # @param Result: 成功或失败
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

      # cos临时帐号信息
      class CosCredentials < TencentCloud::Common::AbstractModel
        # @param SessionToken: 会话Token
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionToken: String
        # @param TmpAppId: 临时应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TmpAppId: String
        # @param TmpSecretId: 临时调用者身份ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TmpSecretId: String
        # @param TmpSecretKey: 临时密钥
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TmpSecretKey: String
        # @param ExpiredTime: 过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpiredTime: Integer
        # @param Domain: 所在域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String

        attr_accessor :SessionToken, :TmpAppId, :TmpSecretId, :TmpSecretKey, :ExpiredTime, :Domain
        
        def initialize(sessiontoken=nil, tmpappid=nil, tmpsecretid=nil, tmpsecretkey=nil, expiredtime=nil, domain=nil)
          @SessionToken = sessiontoken
          @TmpAppId = tmpappid
          @TmpSecretId = tmpsecretid
          @TmpSecretKey = tmpsecretkey
          @ExpiredTime = expiredtime
          @Domain = domain
        end

        def deserialize(params)
          @SessionToken = params['SessionToken']
          @TmpAppId = params['TmpAppId']
          @TmpSecretId = params['TmpSecretId']
          @TmpSecretKey = params['TmpSecretKey']
          @ExpiredTime = params['ExpiredTime']
          @Domain = params['Domain']
        end
      end

      # Cos下载所需信息
      class CosDownloadInfo < TencentCloud::Common::AbstractModel
        # @param Bucket: 桶名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bucket: String
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Path: 路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param Credentials: 鉴权信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Credentials: :class:`Tencentcloud::Tsf.v20180326.models.CosCredentials`

        attr_accessor :Bucket, :Region, :Path, :Credentials
        
        def initialize(bucket=nil, region=nil, path=nil, credentials=nil)
          @Bucket = bucket
          @Region = region
          @Path = path
          @Credentials = credentials
        end

        def deserialize(params)
          @Bucket = params['Bucket']
          @Region = params['Region']
          @Path = params['Path']
          unless params['Credentials'].nil?
            @Credentials = CosCredentials.new
            @Credentials.deserialize(params['Credentials'])
          end
        end
      end

      # cos上传所需信息
      class CosUploadInfo < TencentCloud::Common::AbstractModel
        # @param PkgId: 程序包ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PkgId: String
        # @param Bucket: 桶
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bucket: String
        # @param Region: 目标地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Path: 存储路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param Credentials: 鉴权信息
        # @type Credentials: :class:`Tencentcloud::Tsf.v20180326.models.CosCredentials`

        attr_accessor :PkgId, :Bucket, :Region, :Path, :Credentials
        
        def initialize(pkgid=nil, bucket=nil, region=nil, path=nil, credentials=nil)
          @PkgId = pkgid
          @Bucket = bucket
          @Region = region
          @Path = path
          @Credentials = credentials
        end

        def deserialize(params)
          @PkgId = params['PkgId']
          @Bucket = params['Bucket']
          @Region = params['Region']
          @Path = params['Path']
          unless params['Credentials'].nil?
            @Credentials = CosCredentials.new
            @Credentials.deserialize(params['Credentials'])
          end
        end
      end

      # CreateAllGatewayApiAsync请求参数结构体
      class CreateAllGatewayApiAsyncRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: API分组ID
        # @type GroupId: String
        # @param MicroserviceId: 微服务ID
        # @type MicroserviceId: String

        attr_accessor :GroupId, :MicroserviceId
        
        def initialize(groupid=nil, microserviceid=nil)
          @GroupId = groupid
          @MicroserviceId = microserviceid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @MicroserviceId = params['MicroserviceId']
        end
      end

      # CreateAllGatewayApiAsync返回参数结构体
      class CreateAllGatewayApiAsyncResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
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

      # CreateApiGroup请求参数结构体
      class CreateApiGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupName: 分组名称, 不能包含中文
        # @type GroupName: String
        # @param GroupContext: 分组上下文
        # @type GroupContext: String
        # @param AuthType: 鉴权类型。secret： 密钥鉴权； none:无鉴权
        # @type AuthType: String
        # @param Description: 备注
        # @type Description: String
        # @param GroupType: 分组类型,默认ms。 ms： 微服务分组； external:外部Api分组
        # @type GroupType: String
        # @param GatewayInstanceId: 网关实体ID
        # @type GatewayInstanceId: String
        # @param NamespaceNameKey: 命名空间参数key值
        # @type NamespaceNameKey: String
        # @param ServiceNameKey: 微服务名参数key值
        # @type ServiceNameKey: String
        # @param NamespaceNameKeyPosition: 命名空间参数位置，path，header或query，默认是path
        # @type NamespaceNameKeyPosition: String
        # @param ServiceNameKeyPosition: 微服务名参数位置，path，header或query，默认是path
        # @type ServiceNameKeyPosition: String

        attr_accessor :GroupName, :GroupContext, :AuthType, :Description, :GroupType, :GatewayInstanceId, :NamespaceNameKey, :ServiceNameKey, :NamespaceNameKeyPosition, :ServiceNameKeyPosition
        
        def initialize(groupname=nil, groupcontext=nil, authtype=nil, description=nil, grouptype=nil, gatewayinstanceid=nil, namespacenamekey=nil, servicenamekey=nil, namespacenamekeyposition=nil, servicenamekeyposition=nil)
          @GroupName = groupname
          @GroupContext = groupcontext
          @AuthType = authtype
          @Description = description
          @GroupType = grouptype
          @GatewayInstanceId = gatewayinstanceid
          @NamespaceNameKey = namespacenamekey
          @ServiceNameKey = servicenamekey
          @NamespaceNameKeyPosition = namespacenamekeyposition
          @ServiceNameKeyPosition = servicenamekeyposition
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @GroupContext = params['GroupContext']
          @AuthType = params['AuthType']
          @Description = params['Description']
          @GroupType = params['GroupType']
          @GatewayInstanceId = params['GatewayInstanceId']
          @NamespaceNameKey = params['NamespaceNameKey']
          @ServiceNameKey = params['ServiceNameKey']
          @NamespaceNameKeyPosition = params['NamespaceNameKeyPosition']
          @ServiceNameKeyPosition = params['ServiceNameKeyPosition']
        end
      end

      # CreateApiGroup返回参数结构体
      class CreateApiGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: API分组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
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

      # CreateApiRateLimitRule请求参数结构体
      class CreateApiRateLimitRuleRequest < TencentCloud::Common::AbstractModel
        # @param ApiId: Api Id
        # @type ApiId: String
        # @param MaxQps: qps值
        # @type MaxQps: Integer
        # @param UsableStatus: 开启/禁用，enabled/disabled, 不传默认开启
        # @type UsableStatus: String

        attr_accessor :ApiId, :MaxQps, :UsableStatus
        
        def initialize(apiid=nil, maxqps=nil, usablestatus=nil)
          @ApiId = apiid
          @MaxQps = maxqps
          @UsableStatus = usablestatus
        end

        def deserialize(params)
          @ApiId = params['ApiId']
          @MaxQps = params['MaxQps']
          @UsableStatus = params['UsableStatus']
        end
      end

      # CreateApiRateLimitRule返回参数结构体
      class CreateApiRateLimitRuleResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
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

      # CreateApiRateLimitRuleWithDetailResp请求参数结构体
      class CreateApiRateLimitRuleWithDetailRespRequest < TencentCloud::Common::AbstractModel
        # @param ApiId: Api Id
        # @type ApiId: String
        # @param MaxQps: qps值
        # @type MaxQps: Integer
        # @param UsableStatus: 开启/禁用，enabled/disabled, 不传默认开启
        # @type UsableStatus: String

        attr_accessor :ApiId, :MaxQps, :UsableStatus
        
        def initialize(apiid=nil, maxqps=nil, usablestatus=nil)
          @ApiId = apiid
          @MaxQps = maxqps
          @UsableStatus = usablestatus
        end

        def deserialize(params)
          @ApiId = params['ApiId']
          @MaxQps = params['MaxQps']
          @UsableStatus = params['UsableStatus']
        end
      end

      # CreateApiRateLimitRuleWithDetailResp返回参数结构体
      class CreateApiRateLimitRuleWithDetailRespResponse < TencentCloud::Common::AbstractModel
        # @param Result: 创建的规则 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.ApiRateLimitRule`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ApiRateLimitRule.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateApplication请求参数结构体
      class CreateApplicationRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationName: 应用名称
        # @type ApplicationName: String
        # @param ApplicationType: 应用类型，V：虚拟机应用；C：容器应用；S：serverless应用
        # @type ApplicationType: String
        # @param MicroserviceType: 应用微服务类型，M：service mesh应用；N：普通应用；G：网关应用
        # @type MicroserviceType: String
        # @param ApplicationDesc: 应用描述
        # @type ApplicationDesc: String
        # @param ApplicationLogConfig: 应用日志配置项，废弃参数
        # @type ApplicationLogConfig: String
        # @param ApplicationResourceType: 应用资源类型，废弃参数
        # @type ApplicationResourceType: String
        # @param ApplicationRuntimeType: 应用runtime类型
        # @type ApplicationRuntimeType: String
        # @param ProgramId: 需要绑定的数据集ID
        # @type ProgramId: String
        # @param ServiceConfigList: 服务配置信息列表
        # @type ServiceConfigList: Array
        # @param IgnoreCreateImageRepository: 忽略创建镜像仓库
        # @type IgnoreCreateImageRepository: Boolean
        # @param ProgramIdList: 无
        # @type ProgramIdList: Array

        attr_accessor :ApplicationName, :ApplicationType, :MicroserviceType, :ApplicationDesc, :ApplicationLogConfig, :ApplicationResourceType, :ApplicationRuntimeType, :ProgramId, :ServiceConfigList, :IgnoreCreateImageRepository, :ProgramIdList
        
        def initialize(applicationname=nil, applicationtype=nil, microservicetype=nil, applicationdesc=nil, applicationlogconfig=nil, applicationresourcetype=nil, applicationruntimetype=nil, programid=nil, serviceconfiglist=nil, ignorecreateimagerepository=nil, programidlist=nil)
          @ApplicationName = applicationname
          @ApplicationType = applicationtype
          @MicroserviceType = microservicetype
          @ApplicationDesc = applicationdesc
          @ApplicationLogConfig = applicationlogconfig
          @ApplicationResourceType = applicationresourcetype
          @ApplicationRuntimeType = applicationruntimetype
          @ProgramId = programid
          @ServiceConfigList = serviceconfiglist
          @IgnoreCreateImageRepository = ignorecreateimagerepository
          @ProgramIdList = programidlist
        end

        def deserialize(params)
          @ApplicationName = params['ApplicationName']
          @ApplicationType = params['ApplicationType']
          @MicroserviceType = params['MicroserviceType']
          @ApplicationDesc = params['ApplicationDesc']
          @ApplicationLogConfig = params['ApplicationLogConfig']
          @ApplicationResourceType = params['ApplicationResourceType']
          @ApplicationRuntimeType = params['ApplicationRuntimeType']
          @ProgramId = params['ProgramId']
          unless params['ServiceConfigList'].nil?
            @ServiceConfigList = []
            params['ServiceConfigList'].each do |i|
              serviceconfig_tmp = ServiceConfig.new
              serviceconfig_tmp.deserialize(i)
              @ServiceConfigList << serviceconfig_tmp
            end
          end
          @IgnoreCreateImageRepository = params['IgnoreCreateImageRepository']
          @ProgramIdList = params['ProgramIdList']
        end
      end

      # CreateApplication返回参数结构体
      class CreateApplicationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
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

      # CreateCluster请求参数结构体
      class CreateClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param ClusterType: 集群类型
        # @type ClusterType: String
        # @param VpcId: 私有网络ID
        # @type VpcId: String
        # @param ClusterCIDR: 分配给集群容器和服务IP的CIDR
        # @type ClusterCIDR: String
        # @param ClusterDesc: 集群备注
        # @type ClusterDesc: String
        # @param TsfRegionId: 集群所属TSF地域
        # @type TsfRegionId: String
        # @param TsfZoneId: 集群所属TSF可用区
        # @type TsfZoneId: String
        # @param SubnetId: 私有网络子网ID
        # @type SubnetId: String
        # @param ClusterVersion: 集群版本
        # @type ClusterVersion: String
        # @param MaxNodePodNum: 集群中每个Node上最大的Pod数量。取值范围4～256。不为2的幂值时会向上取最接近的2的幂值。
        # @type MaxNodePodNum: Integer
        # @param MaxClusterServiceNum: 集群最大的service数量。取值范围32～32768，不为2的幂值时会向上取最接近的2的幂值。
        # @type MaxClusterServiceNum: Integer
        # @param ProgramId: 需要绑定的数据集ID
        # @type ProgramId: String
        # @param KuberneteApiServer: api地址
        # @type KuberneteApiServer: String
        # @param KuberneteNativeType: K : kubeconfig, S : service account
        # @type KuberneteNativeType: String
        # @param KuberneteNativeSecret: native secret
        # @type KuberneteNativeSecret: String
        # @param ProgramIdList: 无
        # @type ProgramIdList: Array

        attr_accessor :ClusterName, :ClusterType, :VpcId, :ClusterCIDR, :ClusterDesc, :TsfRegionId, :TsfZoneId, :SubnetId, :ClusterVersion, :MaxNodePodNum, :MaxClusterServiceNum, :ProgramId, :KuberneteApiServer, :KuberneteNativeType, :KuberneteNativeSecret, :ProgramIdList
        
        def initialize(clustername=nil, clustertype=nil, vpcid=nil, clustercidr=nil, clusterdesc=nil, tsfregionid=nil, tsfzoneid=nil, subnetid=nil, clusterversion=nil, maxnodepodnum=nil, maxclusterservicenum=nil, programid=nil, kuberneteapiserver=nil, kubernetenativetype=nil, kubernetenativesecret=nil, programidlist=nil)
          @ClusterName = clustername
          @ClusterType = clustertype
          @VpcId = vpcid
          @ClusterCIDR = clustercidr
          @ClusterDesc = clusterdesc
          @TsfRegionId = tsfregionid
          @TsfZoneId = tsfzoneid
          @SubnetId = subnetid
          @ClusterVersion = clusterversion
          @MaxNodePodNum = maxnodepodnum
          @MaxClusterServiceNum = maxclusterservicenum
          @ProgramId = programid
          @KuberneteApiServer = kuberneteapiserver
          @KuberneteNativeType = kubernetenativetype
          @KuberneteNativeSecret = kubernetenativesecret
          @ProgramIdList = programidlist
        end

        def deserialize(params)
          @ClusterName = params['ClusterName']
          @ClusterType = params['ClusterType']
          @VpcId = params['VpcId']
          @ClusterCIDR = params['ClusterCIDR']
          @ClusterDesc = params['ClusterDesc']
          @TsfRegionId = params['TsfRegionId']
          @TsfZoneId = params['TsfZoneId']
          @SubnetId = params['SubnetId']
          @ClusterVersion = params['ClusterVersion']
          @MaxNodePodNum = params['MaxNodePodNum']
          @MaxClusterServiceNum = params['MaxClusterServiceNum']
          @ProgramId = params['ProgramId']
          @KuberneteApiServer = params['KuberneteApiServer']
          @KuberneteNativeType = params['KuberneteNativeType']
          @KuberneteNativeSecret = params['KuberneteNativeSecret']
          @ProgramIdList = params['ProgramIdList']
        end
      end

      # CreateCluster返回参数结构体
      class CreateClusterResponse < TencentCloud::Common::AbstractModel
        # @param Result: 集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
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

      # CreateConfig请求参数结构体
      class CreateConfigRequest < TencentCloud::Common::AbstractModel
        # @param ConfigName: 配置项名称
        # @type ConfigName: String
        # @param ConfigVersion: 配置项版本
        # @type ConfigVersion: String
        # @param ConfigValue: 配置项值
        # @type ConfigValue: String
        # @param ApplicationId: 应用ID
        # @type ApplicationId: String
        # @param ConfigVersionDesc: 配置项版本描述
        # @type ConfigVersionDesc: String
        # @param ConfigType: 配置项值类型
        # @type ConfigType: String
        # @param EncodeWithBase64: Base64编码的配置项
        # @type EncodeWithBase64: Boolean
        # @param ProgramIdList: 无
        # @type ProgramIdList: Array

        attr_accessor :ConfigName, :ConfigVersion, :ConfigValue, :ApplicationId, :ConfigVersionDesc, :ConfigType, :EncodeWithBase64, :ProgramIdList
        
        def initialize(configname=nil, configversion=nil, configvalue=nil, applicationid=nil, configversiondesc=nil, configtype=nil, encodewithbase64=nil, programidlist=nil)
          @ConfigName = configname
          @ConfigVersion = configversion
          @ConfigValue = configvalue
          @ApplicationId = applicationid
          @ConfigVersionDesc = configversiondesc
          @ConfigType = configtype
          @EncodeWithBase64 = encodewithbase64
          @ProgramIdList = programidlist
        end

        def deserialize(params)
          @ConfigName = params['ConfigName']
          @ConfigVersion = params['ConfigVersion']
          @ConfigValue = params['ConfigValue']
          @ApplicationId = params['ApplicationId']
          @ConfigVersionDesc = params['ConfigVersionDesc']
          @ConfigType = params['ConfigType']
          @EncodeWithBase64 = params['EncodeWithBase64']
          @ProgramIdList = params['ProgramIdList']
        end
      end

      # CreateConfig返回参数结构体
      class CreateConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: true：创建成功；false：创建失败
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # CreateConfigTemplate请求参数结构体
      class CreateConfigTemplateRequest < TencentCloud::Common::AbstractModel
        # @param ConfigTemplateName: 配置模板名称
        # @type ConfigTemplateName: String
        # @param ConfigTemplateType: 配置模板对应的微服务框架
        # @type ConfigTemplateType: String
        # @param ConfigTemplateValue: 配置模板数据
        # @type ConfigTemplateValue: String
        # @param ConfigTemplateDesc: 配置模板描述
        # @type ConfigTemplateDesc: String
        # @param ProgramIdList: 无
        # @type ProgramIdList: Array

        attr_accessor :ConfigTemplateName, :ConfigTemplateType, :ConfigTemplateValue, :ConfigTemplateDesc, :ProgramIdList
        
        def initialize(configtemplatename=nil, configtemplatetype=nil, configtemplatevalue=nil, configtemplatedesc=nil, programidlist=nil)
          @ConfigTemplateName = configtemplatename
          @ConfigTemplateType = configtemplatetype
          @ConfigTemplateValue = configtemplatevalue
          @ConfigTemplateDesc = configtemplatedesc
          @ProgramIdList = programidlist
        end

        def deserialize(params)
          @ConfigTemplateName = params['ConfigTemplateName']
          @ConfigTemplateType = params['ConfigTemplateType']
          @ConfigTemplateValue = params['ConfigTemplateValue']
          @ConfigTemplateDesc = params['ConfigTemplateDesc']
          @ProgramIdList = params['ProgramIdList']
        end
      end

      # CreateConfigTemplate返回参数结构体
      class CreateConfigTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Result: true：创建成功；false：创建失败
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

      # CreateConfigTemplateWithDetailResp请求参数结构体
      class CreateConfigTemplateWithDetailRespRequest < TencentCloud::Common::AbstractModel
        # @param ConfigTemplateName: 配置模板名称
        # @type ConfigTemplateName: String
        # @param ConfigTemplateType: 配置模板对应的微服务框架
        # @type ConfigTemplateType: String
        # @param ConfigTemplateValue: 配置模板数据
        # @type ConfigTemplateValue: String
        # @param ConfigTemplateDesc: 配置模板描述
        # @type ConfigTemplateDesc: String
        # @param ProgramIdList: 无
        # @type ProgramIdList: Array

        attr_accessor :ConfigTemplateName, :ConfigTemplateType, :ConfigTemplateValue, :ConfigTemplateDesc, :ProgramIdList
        
        def initialize(configtemplatename=nil, configtemplatetype=nil, configtemplatevalue=nil, configtemplatedesc=nil, programidlist=nil)
          @ConfigTemplateName = configtemplatename
          @ConfigTemplateType = configtemplatetype
          @ConfigTemplateValue = configtemplatevalue
          @ConfigTemplateDesc = configtemplatedesc
          @ProgramIdList = programidlist
        end

        def deserialize(params)
          @ConfigTemplateName = params['ConfigTemplateName']
          @ConfigTemplateType = params['ConfigTemplateType']
          @ConfigTemplateValue = params['ConfigTemplateValue']
          @ConfigTemplateDesc = params['ConfigTemplateDesc']
          @ProgramIdList = params['ProgramIdList']
        end
      end

      # CreateConfigTemplateWithDetailResp返回参数结构体
      class CreateConfigTemplateWithDetailRespResponse < TencentCloud::Common::AbstractModel
        # @param Result: 创建成功，返回 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.ConfigTemplate`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ConfigTemplate.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateConfigWithDetailResp请求参数结构体
      class CreateConfigWithDetailRespRequest < TencentCloud::Common::AbstractModel
        # @param ConfigName: 配置项名称
        # @type ConfigName: String
        # @param ConfigVersion: 配置项版本
        # @type ConfigVersion: String
        # @param ConfigValue: 配置项值
        # @type ConfigValue: String
        # @param ApplicationId: 应用ID
        # @type ApplicationId: String
        # @param ConfigVersionDesc: 配置项版本描述
        # @type ConfigVersionDesc: String
        # @param ConfigType: 配置项值类型
        # @type ConfigType: String
        # @param EncodeWithBase64: Base64编码的配置项
        # @type EncodeWithBase64: Boolean
        # @param ProgramIdList: 无
        # @type ProgramIdList: Array

        attr_accessor :ConfigName, :ConfigVersion, :ConfigValue, :ApplicationId, :ConfigVersionDesc, :ConfigType, :EncodeWithBase64, :ProgramIdList
        
        def initialize(configname=nil, configversion=nil, configvalue=nil, applicationid=nil, configversiondesc=nil, configtype=nil, encodewithbase64=nil, programidlist=nil)
          @ConfigName = configname
          @ConfigVersion = configversion
          @ConfigValue = configvalue
          @ApplicationId = applicationid
          @ConfigVersionDesc = configversiondesc
          @ConfigType = configtype
          @EncodeWithBase64 = encodewithbase64
          @ProgramIdList = programidlist
        end

        def deserialize(params)
          @ConfigName = params['ConfigName']
          @ConfigVersion = params['ConfigVersion']
          @ConfigValue = params['ConfigValue']
          @ApplicationId = params['ApplicationId']
          @ConfigVersionDesc = params['ConfigVersionDesc']
          @ConfigType = params['ConfigType']
          @EncodeWithBase64 = params['EncodeWithBase64']
          @ProgramIdList = params['ProgramIdList']
        end
      end

      # CreateConfigWithDetailResp返回参数结构体
      class CreateConfigWithDetailRespResponse < TencentCloud::Common::AbstractModel
        # @param Result: 配置项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.Config`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = Config.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateContainGroup请求参数结构体
      class CreateContainGroupRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 分组所属应用ID
        # @type ApplicationId: String
        # @param NamespaceId: 分组所属命名空间ID
        # @type NamespaceId: String
        # @param GroupName: 分组名称字段，长度1~60，字母或下划线开头，可包含字母数字下划线
        # @type GroupName: String
        # @param InstanceNum: 实例数量
        # @type InstanceNum: Integer
        # @param AccessType: 0:公网 1:集群内访问 2：NodePort
        # @type AccessType: Integer
        # @param ProtocolPorts: 数组对象，见下方定义
        # @type ProtocolPorts: Array
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param CpuLimit: 最大分配 CPU 核数，对应 K8S limit
        # @type CpuLimit: String
        # @param MemLimit: 最大分配内存 MiB 数，对应 K8S limit
        # @type MemLimit: String
        # @param GroupComment: 分组备注字段，长度应不大于200字符
        # @type GroupComment: String
        # @param UpdateType: 更新方式：0:快速更新 1:滚动更新
        # @type UpdateType: Integer
        # @param UpdateIvl: 滚动更新必填，更新间隔
        # @type UpdateIvl: Integer
        # @param CpuRequest: 初始分配的 CPU 核数，对应 K8S request
        # @type CpuRequest: String
        # @param MemRequest: 初始分配的内存 MiB 数，对应 K8S request
        # @type MemRequest: String
        # @param GroupResourceType: 部署组资源类型
        # @type GroupResourceType: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param AgentCpuRequest: agent 容器分配的 CPU 核数，对应 K8S 的 request
        # @type AgentCpuRequest: String
        # @param AgentCpuLimit: agent 容器最大的 CPU 核数，对应 K8S 的 limit
        # @type AgentCpuLimit: String
        # @param AgentMemRequest: agent 容器分配的内存 MiB 数，对应 K8S 的 request
        # @type AgentMemRequest: String
        # @param AgentMemLimit: agent 容器最大的内存 MiB 数，对应 K8S 的 limit
        # @type AgentMemLimit: String
        # @param IstioCpuRequest: istioproxy 容器分配的 CPU 核数，对应 K8S 的 request
        # @type IstioCpuRequest: String
        # @param IstioCpuLimit: istioproxy 容器最大的 CPU 核数，对应 K8S 的 limit
        # @type IstioCpuLimit: String
        # @param IstioMemRequest: istioproxy 容器分配的内存 MiB 数，对应 K8S 的 request
        # @type IstioMemRequest: String
        # @param IstioMemLimit: istioproxy 容器最大的内存 MiB 数，对应 K8S 的 limit
        # @type IstioMemLimit: String

        attr_accessor :ApplicationId, :NamespaceId, :GroupName, :InstanceNum, :AccessType, :ProtocolPorts, :ClusterId, :CpuLimit, :MemLimit, :GroupComment, :UpdateType, :UpdateIvl, :CpuRequest, :MemRequest, :GroupResourceType, :SubnetId, :AgentCpuRequest, :AgentCpuLimit, :AgentMemRequest, :AgentMemLimit, :IstioCpuRequest, :IstioCpuLimit, :IstioMemRequest, :IstioMemLimit
        
        def initialize(applicationid=nil, namespaceid=nil, groupname=nil, instancenum=nil, accesstype=nil, protocolports=nil, clusterid=nil, cpulimit=nil, memlimit=nil, groupcomment=nil, updatetype=nil, updateivl=nil, cpurequest=nil, memrequest=nil, groupresourcetype=nil, subnetid=nil, agentcpurequest=nil, agentcpulimit=nil, agentmemrequest=nil, agentmemlimit=nil, istiocpurequest=nil, istiocpulimit=nil, istiomemrequest=nil, istiomemlimit=nil)
          @ApplicationId = applicationid
          @NamespaceId = namespaceid
          @GroupName = groupname
          @InstanceNum = instancenum
          @AccessType = accesstype
          @ProtocolPorts = protocolports
          @ClusterId = clusterid
          @CpuLimit = cpulimit
          @MemLimit = memlimit
          @GroupComment = groupcomment
          @UpdateType = updatetype
          @UpdateIvl = updateivl
          @CpuRequest = cpurequest
          @MemRequest = memrequest
          @GroupResourceType = groupresourcetype
          @SubnetId = subnetid
          @AgentCpuRequest = agentcpurequest
          @AgentCpuLimit = agentcpulimit
          @AgentMemRequest = agentmemrequest
          @AgentMemLimit = agentmemlimit
          @IstioCpuRequest = istiocpurequest
          @IstioCpuLimit = istiocpulimit
          @IstioMemRequest = istiomemrequest
          @IstioMemLimit = istiomemlimit
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @NamespaceId = params['NamespaceId']
          @GroupName = params['GroupName']
          @InstanceNum = params['InstanceNum']
          @AccessType = params['AccessType']
          unless params['ProtocolPorts'].nil?
            @ProtocolPorts = []
            params['ProtocolPorts'].each do |i|
              protocolport_tmp = ProtocolPort.new
              protocolport_tmp.deserialize(i)
              @ProtocolPorts << protocolport_tmp
            end
          end
          @ClusterId = params['ClusterId']
          @CpuLimit = params['CpuLimit']
          @MemLimit = params['MemLimit']
          @GroupComment = params['GroupComment']
          @UpdateType = params['UpdateType']
          @UpdateIvl = params['UpdateIvl']
          @CpuRequest = params['CpuRequest']
          @MemRequest = params['MemRequest']
          @GroupResourceType = params['GroupResourceType']
          @SubnetId = params['SubnetId']
          @AgentCpuRequest = params['AgentCpuRequest']
          @AgentCpuLimit = params['AgentCpuLimit']
          @AgentMemRequest = params['AgentMemRequest']
          @AgentMemLimit = params['AgentMemLimit']
          @IstioCpuRequest = params['IstioCpuRequest']
          @IstioCpuLimit = params['IstioCpuLimit']
          @IstioMemRequest = params['IstioMemRequest']
          @IstioMemLimit = params['IstioMemLimit']
        end
      end

      # CreateContainGroup返回参数结构体
      class CreateContainGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回创建成功的部署组ID，返回null表示失败
        # @type Result: String
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

      # CreateFileConfig请求参数结构体
      class CreateFileConfigRequest < TencentCloud::Common::AbstractModel
        # @param ConfigName: 配置项名称
        # @type ConfigName: String
        # @param ConfigVersion: 配置项版本
        # @type ConfigVersion: String
        # @param ConfigFileName: 配置项文件名
        # @type ConfigFileName: String
        # @param ConfigFileValue: 配置项文件内容（原始内容编码需要 utf-8 格式，如果 ConfigFileCode 为 gbk，后台会进行转换）
        # @type ConfigFileValue: String
        # @param ApplicationId: 配置项关联应用ID
        # @type ApplicationId: String
        # @param ConfigFilePath: 发布路径
        # @type ConfigFilePath: String
        # @param ConfigVersionDesc: 配置项版本描述
        # @type ConfigVersionDesc: String
        # @param ConfigFileCode: 配置项文件编码，utf-8 或 gbk。注：如果选择 gbk，需要新版本 tsf-consul-template （公有云虚拟机需要使用 1.32 tsf-agent，容器需要从文档中获取最新的 tsf-consul-template-docker.tar.gz）的支持
        # @type ConfigFileCode: String
        # @param ConfigPostCmd: 后置命令
        # @type ConfigPostCmd: String
        # @param EncodeWithBase64: Base64编码的配置项
        # @type EncodeWithBase64: Boolean
        # @param ProgramIdList: 无
        # @type ProgramIdList: Array

        attr_accessor :ConfigName, :ConfigVersion, :ConfigFileName, :ConfigFileValue, :ApplicationId, :ConfigFilePath, :ConfigVersionDesc, :ConfigFileCode, :ConfigPostCmd, :EncodeWithBase64, :ProgramIdList
        
        def initialize(configname=nil, configversion=nil, configfilename=nil, configfilevalue=nil, applicationid=nil, configfilepath=nil, configversiondesc=nil, configfilecode=nil, configpostcmd=nil, encodewithbase64=nil, programidlist=nil)
          @ConfigName = configname
          @ConfigVersion = configversion
          @ConfigFileName = configfilename
          @ConfigFileValue = configfilevalue
          @ApplicationId = applicationid
          @ConfigFilePath = configfilepath
          @ConfigVersionDesc = configversiondesc
          @ConfigFileCode = configfilecode
          @ConfigPostCmd = configpostcmd
          @EncodeWithBase64 = encodewithbase64
          @ProgramIdList = programidlist
        end

        def deserialize(params)
          @ConfigName = params['ConfigName']
          @ConfigVersion = params['ConfigVersion']
          @ConfigFileName = params['ConfigFileName']
          @ConfigFileValue = params['ConfigFileValue']
          @ApplicationId = params['ApplicationId']
          @ConfigFilePath = params['ConfigFilePath']
          @ConfigVersionDesc = params['ConfigVersionDesc']
          @ConfigFileCode = params['ConfigFileCode']
          @ConfigPostCmd = params['ConfigPostCmd']
          @EncodeWithBase64 = params['EncodeWithBase64']
          @ProgramIdList = params['ProgramIdList']
        end
      end

      # CreateFileConfig返回参数结构体
      class CreateFileConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: true：创建成功；false：创建失败
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # CreateFileConfigWithDetailResp请求参数结构体
      class CreateFileConfigWithDetailRespRequest < TencentCloud::Common::AbstractModel
        # @param ConfigName: 配置项名称
        # @type ConfigName: String
        # @param ConfigVersion: 配置项版本
        # @type ConfigVersion: String
        # @param ConfigFileName: 配置项文件名
        # @type ConfigFileName: String
        # @param ConfigFileValue: 配置项文件内容（原始内容编码需要 utf-8 格式，如果 ConfigFileCode 为 gbk，后台会进行转换）
        # @type ConfigFileValue: String
        # @param ApplicationId: 配置项关联应用ID
        # @type ApplicationId: String
        # @param ConfigFilePath: 发布路径
        # @type ConfigFilePath: String
        # @param ConfigVersionDesc: 配置项版本描述
        # @type ConfigVersionDesc: String
        # @param ConfigFileCode: 配置项文件编码，utf-8 或 gbk。注：如果选择 gbk，需要新版本 tsf-consul-template （公有云虚拟机需要使用 1.32 tsf-agent，容器需要从文档中获取最新的 tsf-consul-template-docker.tar.gz）的支持
        # @type ConfigFileCode: String
        # @param ConfigPostCmd: 后置命令
        # @type ConfigPostCmd: String
        # @param EncodeWithBase64: Base64编码的配置项
        # @type EncodeWithBase64: Boolean
        # @param ProgramIdList: 无
        # @type ProgramIdList: Array

        attr_accessor :ConfigName, :ConfigVersion, :ConfigFileName, :ConfigFileValue, :ApplicationId, :ConfigFilePath, :ConfigVersionDesc, :ConfigFileCode, :ConfigPostCmd, :EncodeWithBase64, :ProgramIdList
        
        def initialize(configname=nil, configversion=nil, configfilename=nil, configfilevalue=nil, applicationid=nil, configfilepath=nil, configversiondesc=nil, configfilecode=nil, configpostcmd=nil, encodewithbase64=nil, programidlist=nil)
          @ConfigName = configname
          @ConfigVersion = configversion
          @ConfigFileName = configfilename
          @ConfigFileValue = configfilevalue
          @ApplicationId = applicationid
          @ConfigFilePath = configfilepath
          @ConfigVersionDesc = configversiondesc
          @ConfigFileCode = configfilecode
          @ConfigPostCmd = configpostcmd
          @EncodeWithBase64 = encodewithbase64
          @ProgramIdList = programidlist
        end

        def deserialize(params)
          @ConfigName = params['ConfigName']
          @ConfigVersion = params['ConfigVersion']
          @ConfigFileName = params['ConfigFileName']
          @ConfigFileValue = params['ConfigFileValue']
          @ApplicationId = params['ApplicationId']
          @ConfigFilePath = params['ConfigFilePath']
          @ConfigVersionDesc = params['ConfigVersionDesc']
          @ConfigFileCode = params['ConfigFileCode']
          @ConfigPostCmd = params['ConfigPostCmd']
          @EncodeWithBase64 = params['EncodeWithBase64']
          @ProgramIdList = params['ProgramIdList']
        end
      end

      # CreateFileConfigWithDetailResp返回参数结构体
      class CreateFileConfigWithDetailRespResponse < TencentCloud::Common::AbstractModel
        # @param Result: 文件配置项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.FileConfig`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = FileConfig.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateGatewayApi请求参数结构体
      class CreateGatewayApiRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: API 分组ID
        # @type GroupId: String
        # @param ApiList: Api信息
        # @type ApiList: Array
        # @param ProgramIdList: 无
        # @type ProgramIdList: Array

        attr_accessor :GroupId, :ApiList, :ProgramIdList
        
        def initialize(groupid=nil, apilist=nil, programidlist=nil)
          @GroupId = groupid
          @ApiList = apilist
          @ProgramIdList = programidlist
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          unless params['ApiList'].nil?
            @ApiList = []
            params['ApiList'].each do |i|
              apiinfo_tmp = ApiInfo.new
              apiinfo_tmp.deserialize(i)
              @ApiList << apiinfo_tmp
            end
          end
          @ProgramIdList = params['ProgramIdList']
        end
      end

      # CreateGatewayApi返回参数结构体
      class CreateGatewayApiResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
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

      # CreateGroup请求参数结构体
      class CreateGroupRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 部署组所属的应用ID
        # @type ApplicationId: String
        # @param NamespaceId: 部署组所属命名空间ID
        # @type NamespaceId: String
        # @param GroupName: 部署组名称
        # @type GroupName: String
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param GroupDesc: 部署组描述
        # @type GroupDesc: String
        # @param GroupResourceType: 部署组资源类型
        # @type GroupResourceType: String
        # @param Alias: 部署组备注
        # @type Alias: String

        attr_accessor :ApplicationId, :NamespaceId, :GroupName, :ClusterId, :GroupDesc, :GroupResourceType, :Alias
        
        def initialize(applicationid=nil, namespaceid=nil, groupname=nil, clusterid=nil, groupdesc=nil, groupresourcetype=nil, _alias=nil)
          @ApplicationId = applicationid
          @NamespaceId = namespaceid
          @GroupName = groupname
          @ClusterId = clusterid
          @GroupDesc = groupdesc
          @GroupResourceType = groupresourcetype
          @Alias = _alias
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @NamespaceId = params['NamespaceId']
          @GroupName = params['GroupName']
          @ClusterId = params['ClusterId']
          @GroupDesc = params['GroupDesc']
          @GroupResourceType = params['GroupResourceType']
          @Alias = params['Alias']
        end
      end

      # CreateGroup返回参数结构体
      class CreateGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: groupId， null表示创建失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
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

      # CreateLane请求参数结构体
      class CreateLaneRequest < TencentCloud::Common::AbstractModel
        # @param LaneName: 泳道名称
        # @type LaneName: String
        # @param Remark: 泳道备注
        # @type Remark: String
        # @param LaneGroupList: 泳道部署组信息
        # @type LaneGroupList: Array
        # @param ProgramIdList: 无
        # @type ProgramIdList: Array

        attr_accessor :LaneName, :Remark, :LaneGroupList, :ProgramIdList
        
        def initialize(lanename=nil, remark=nil, lanegrouplist=nil, programidlist=nil)
          @LaneName = lanename
          @Remark = remark
          @LaneGroupList = lanegrouplist
          @ProgramIdList = programidlist
        end

        def deserialize(params)
          @LaneName = params['LaneName']
          @Remark = params['Remark']
          unless params['LaneGroupList'].nil?
            @LaneGroupList = []
            params['LaneGroupList'].each do |i|
              lanegroup_tmp = LaneGroup.new
              lanegroup_tmp.deserialize(i)
              @LaneGroupList << lanegroup_tmp
            end
          end
          @ProgramIdList = params['ProgramIdList']
        end
      end

      # CreateLane返回参数结构体
      class CreateLaneResponse < TencentCloud::Common::AbstractModel
        # @param Result: 泳道ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
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

      # CreateLaneRule请求参数结构体
      class CreateLaneRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleName: 泳道规则名称
        # @type RuleName: String
        # @param Remark: 泳道规则备注
        # @type Remark: String
        # @param RuleTagList: 泳道规则标签列表
        # @type RuleTagList: Array
        # @param RuleTagRelationship: 泳道规则标签关系
        # @type RuleTagRelationship: String
        # @param LaneId: 泳道Id
        # @type LaneId: String
        # @param ProgramIdList: 无
        # @type ProgramIdList: Array

        attr_accessor :RuleName, :Remark, :RuleTagList, :RuleTagRelationship, :LaneId, :ProgramIdList
        
        def initialize(rulename=nil, remark=nil, ruletaglist=nil, ruletagrelationship=nil, laneid=nil, programidlist=nil)
          @RuleName = rulename
          @Remark = remark
          @RuleTagList = ruletaglist
          @RuleTagRelationship = ruletagrelationship
          @LaneId = laneid
          @ProgramIdList = programidlist
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          @Remark = params['Remark']
          unless params['RuleTagList'].nil?
            @RuleTagList = []
            params['RuleTagList'].each do |i|
              laneruletag_tmp = LaneRuleTag.new
              laneruletag_tmp.deserialize(i)
              @RuleTagList << laneruletag_tmp
            end
          end
          @RuleTagRelationship = params['RuleTagRelationship']
          @LaneId = params['LaneId']
          @ProgramIdList = params['ProgramIdList']
        end
      end

      # CreateLaneRule返回参数结构体
      class CreateLaneRuleResponse < TencentCloud::Common::AbstractModel
        # @param Result: 泳道规则Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
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

      # CreateMicroservice请求参数结构体
      class CreateMicroserviceRequest < TencentCloud::Common::AbstractModel
        # @param NamespaceId: 命名空间ID
        # @type NamespaceId: String
        # @param MicroserviceName: 微服务名称
        # @type MicroserviceName: String
        # @param MicroserviceDesc: 微服务描述信息
        # @type MicroserviceDesc: String

        attr_accessor :NamespaceId, :MicroserviceName, :MicroserviceDesc
        
        def initialize(namespaceid=nil, microservicename=nil, microservicedesc=nil)
          @NamespaceId = namespaceid
          @MicroserviceName = microservicename
          @MicroserviceDesc = microservicedesc
        end

        def deserialize(params)
          @NamespaceId = params['NamespaceId']
          @MicroserviceName = params['MicroserviceName']
          @MicroserviceDesc = params['MicroserviceDesc']
        end
      end

      # CreateMicroservice返回参数结构体
      class CreateMicroserviceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 新增微服务是否成功。
        # true：操作成功。
        # false：操作失败。
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

      # CreateMicroserviceWithDetailResp请求参数结构体
      class CreateMicroserviceWithDetailRespRequest < TencentCloud::Common::AbstractModel
        # @param NamespaceId: 命名空间ID
        # @type NamespaceId: String
        # @param MicroserviceName: 微服务名称
        # @type MicroserviceName: String
        # @param MicroserviceDesc: 微服务描述信息
        # @type MicroserviceDesc: String

        attr_accessor :NamespaceId, :MicroserviceName, :MicroserviceDesc
        
        def initialize(namespaceid=nil, microservicename=nil, microservicedesc=nil)
          @NamespaceId = namespaceid
          @MicroserviceName = microservicename
          @MicroserviceDesc = microservicedesc
        end

        def deserialize(params)
          @NamespaceId = params['NamespaceId']
          @MicroserviceName = params['MicroserviceName']
          @MicroserviceDesc = params['MicroserviceDesc']
        end
      end

      # CreateMicroserviceWithDetailResp返回参数结构体
      class CreateMicroserviceWithDetailRespResponse < TencentCloud::Common::AbstractModel
        # @param Result: id
        # @type Result: String
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

      # CreateNamespace请求参数结构体
      class CreateNamespaceRequest < TencentCloud::Common::AbstractModel
        # @param NamespaceName: 命名空间名称
        # @type NamespaceName: String
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param NamespaceDesc: 命名空间描述
        # @type NamespaceDesc: String
        # @param NamespaceResourceType: 命名空间资源类型(默认值为DEF)
        # @type NamespaceResourceType: String
        # @param NamespaceType: 是否是全局命名空间(默认是DEF，表示普通命名空间；GLOBAL表示全局命名空间)
        # @type NamespaceType: String
        # @param NamespaceId: 命名空间ID
        # @type NamespaceId: String
        # @param IsHaEnable: 是否开启高可用
        # @type IsHaEnable: String
        # @param ProgramId: 需要绑定的数据集ID
        # @type ProgramId: String
        # @param ProgramIdList: 无
        # @type ProgramIdList: Array

        attr_accessor :NamespaceName, :ClusterId, :NamespaceDesc, :NamespaceResourceType, :NamespaceType, :NamespaceId, :IsHaEnable, :ProgramId, :ProgramIdList
        
        def initialize(namespacename=nil, clusterid=nil, namespacedesc=nil, namespaceresourcetype=nil, namespacetype=nil, namespaceid=nil, ishaenable=nil, programid=nil, programidlist=nil)
          @NamespaceName = namespacename
          @ClusterId = clusterid
          @NamespaceDesc = namespacedesc
          @NamespaceResourceType = namespaceresourcetype
          @NamespaceType = namespacetype
          @NamespaceId = namespaceid
          @IsHaEnable = ishaenable
          @ProgramId = programid
          @ProgramIdList = programidlist
        end

        def deserialize(params)
          @NamespaceName = params['NamespaceName']
          @ClusterId = params['ClusterId']
          @NamespaceDesc = params['NamespaceDesc']
          @NamespaceResourceType = params['NamespaceResourceType']
          @NamespaceType = params['NamespaceType']
          @NamespaceId = params['NamespaceId']
          @IsHaEnable = params['IsHaEnable']
          @ProgramId = params['ProgramId']
          @ProgramIdList = params['ProgramIdList']
        end
      end

      # CreateNamespace返回参数结构体
      class CreateNamespaceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 成功时为命名空间ID，失败为null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
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

      # CreatePathRewrites请求参数结构体
      class CreatePathRewritesRequest < TencentCloud::Common::AbstractModel
        # @param PathRewrites: 路径重写列表
        # @type PathRewrites: :class:`Tencentcloud::Tsf.v20180326.models.PathRewriteCreateObject`

        attr_accessor :PathRewrites
        
        def initialize(pathrewrites=nil)
          @PathRewrites = pathrewrites
        end

        def deserialize(params)
          unless params['PathRewrites'].nil?
            @PathRewrites = PathRewriteCreateObject.new
            @PathRewrites.deserialize(params['PathRewrites'])
          end
        end
      end

      # CreatePathRewrites返回参数结构体
      class CreatePathRewritesResponse < TencentCloud::Common::AbstractModel
        # @param Result: true/false
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

      # CreatePathRewritesWithDetailResp请求参数结构体
      class CreatePathRewritesWithDetailRespRequest < TencentCloud::Common::AbstractModel
        # @param PathRewrites: 路径重写列表
        # @type PathRewrites: Array

        attr_accessor :PathRewrites
        
        def initialize(pathrewrites=nil)
          @PathRewrites = pathrewrites
        end

        def deserialize(params)
          unless params['PathRewrites'].nil?
            @PathRewrites = []
            params['PathRewrites'].each do |i|
              pathrewritecreateobject_tmp = PathRewriteCreateObject.new
              pathrewritecreateobject_tmp.deserialize(i)
              @PathRewrites << pathrewritecreateobject_tmp
            end
          end
        end
      end

      # CreatePathRewritesWithDetailResp返回参数结构体
      class CreatePathRewritesWithDetailRespResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回路径重写规则 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Array
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

      # CreatePublicConfig请求参数结构体
      class CreatePublicConfigRequest < TencentCloud::Common::AbstractModel
        # @param ConfigName: 配置项名称
        # @type ConfigName: String
        # @param ConfigVersion: 配置项版本
        # @type ConfigVersion: String
        # @param ConfigValue: 配置项值，总是接收yaml格式的内容
        # @type ConfigValue: String
        # @param ConfigVersionDesc: 配置项版本描述
        # @type ConfigVersionDesc: String
        # @param ConfigType: 配置项类型
        # @type ConfigType: String
        # @param EncodeWithBase64: Base64编码的配置项
        # @type EncodeWithBase64: Boolean
        # @param ProgramIdList: 无
        # @type ProgramIdList: Array

        attr_accessor :ConfigName, :ConfigVersion, :ConfigValue, :ConfigVersionDesc, :ConfigType, :EncodeWithBase64, :ProgramIdList
        
        def initialize(configname=nil, configversion=nil, configvalue=nil, configversiondesc=nil, configtype=nil, encodewithbase64=nil, programidlist=nil)
          @ConfigName = configname
          @ConfigVersion = configversion
          @ConfigValue = configvalue
          @ConfigVersionDesc = configversiondesc
          @ConfigType = configtype
          @EncodeWithBase64 = encodewithbase64
          @ProgramIdList = programidlist
        end

        def deserialize(params)
          @ConfigName = params['ConfigName']
          @ConfigVersion = params['ConfigVersion']
          @ConfigValue = params['ConfigValue']
          @ConfigVersionDesc = params['ConfigVersionDesc']
          @ConfigType = params['ConfigType']
          @EncodeWithBase64 = params['EncodeWithBase64']
          @ProgramIdList = params['ProgramIdList']
        end
      end

      # CreatePublicConfig返回参数结构体
      class CreatePublicConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: true：创建成功；false：创建失败
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # CreatePublicConfigWithDetailResp请求参数结构体
      class CreatePublicConfigWithDetailRespRequest < TencentCloud::Common::AbstractModel
        # @param ConfigName: 配置项名称
        # @type ConfigName: String
        # @param ConfigVersion: 配置项版本
        # @type ConfigVersion: String
        # @param ConfigValue: 配置项值，总是接收yaml格式的内容
        # @type ConfigValue: String
        # @param ConfigVersionDesc: 配置项版本描述
        # @type ConfigVersionDesc: String
        # @param ConfigType: 配置项类型
        # @type ConfigType: String
        # @param EncodeWithBase64: Base64编码的配置项
        # @type EncodeWithBase64: Boolean
        # @param ProgramIdList: 无
        # @type ProgramIdList: Array

        attr_accessor :ConfigName, :ConfigVersion, :ConfigValue, :ConfigVersionDesc, :ConfigType, :EncodeWithBase64, :ProgramIdList
        
        def initialize(configname=nil, configversion=nil, configvalue=nil, configversiondesc=nil, configtype=nil, encodewithbase64=nil, programidlist=nil)
          @ConfigName = configname
          @ConfigVersion = configversion
          @ConfigValue = configvalue
          @ConfigVersionDesc = configversiondesc
          @ConfigType = configtype
          @EncodeWithBase64 = encodewithbase64
          @ProgramIdList = programidlist
        end

        def deserialize(params)
          @ConfigName = params['ConfigName']
          @ConfigVersion = params['ConfigVersion']
          @ConfigValue = params['ConfigValue']
          @ConfigVersionDesc = params['ConfigVersionDesc']
          @ConfigType = params['ConfigType']
          @EncodeWithBase64 = params['EncodeWithBase64']
          @ProgramIdList = params['ProgramIdList']
        end
      end

      # CreatePublicConfigWithDetailResp返回参数结构体
      class CreatePublicConfigWithDetailRespResponse < TencentCloud::Common::AbstractModel
        # @param Result: 公共配置项 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.Config`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = Config.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateRepository请求参数结构体
      class CreateRepositoryRequest < TencentCloud::Common::AbstractModel
        # @param RepositoryName: 仓库名称
        # @type RepositoryName: String
        # @param RepositoryType: 仓库类型（默认仓库：default，私有仓库：private）
        # @type RepositoryType: String
        # @param BucketName: 仓库所在桶名称
        # @type BucketName: String
        # @param BucketRegion: 仓库所在桶地域
        # @type BucketRegion: String
        # @param Directory: 目录
        # @type Directory: String
        # @param RepositoryDesc: 仓库描述
        # @type RepositoryDesc: String

        attr_accessor :RepositoryName, :RepositoryType, :BucketName, :BucketRegion, :Directory, :RepositoryDesc
        
        def initialize(repositoryname=nil, repositorytype=nil, bucketname=nil, bucketregion=nil, directory=nil, repositorydesc=nil)
          @RepositoryName = repositoryname
          @RepositoryType = repositorytype
          @BucketName = bucketname
          @BucketRegion = bucketregion
          @Directory = directory
          @RepositoryDesc = repositorydesc
        end

        def deserialize(params)
          @RepositoryName = params['RepositoryName']
          @RepositoryType = params['RepositoryType']
          @BucketName = params['BucketName']
          @BucketRegion = params['BucketRegion']
          @Directory = params['Directory']
          @RepositoryDesc = params['RepositoryDesc']
        end
      end

      # CreateRepository返回参数结构体
      class CreateRepositoryResponse < TencentCloud::Common::AbstractModel
        # @param Result: 创建仓库是否成功
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # CreateTaskFlow请求参数结构体
      class CreateTaskFlowRequest < TencentCloud::Common::AbstractModel
        # @param FlowName: 工作流名称
        # @type FlowName: String
        # @param TriggerRule: 触发方式
        # @type TriggerRule: :class:`Tencentcloud::Tsf.v20180326.models.TaskRule`
        # @param FlowEdges: 工作流任务节点列表
        # @type FlowEdges: Array
        # @param TimeOut: 工作流执行超时时间
        # @type TimeOut: Integer
        # @param ProgramIdList: 无
        # @type ProgramIdList: Array

        attr_accessor :FlowName, :TriggerRule, :FlowEdges, :TimeOut, :ProgramIdList
        
        def initialize(flowname=nil, triggerrule=nil, flowedges=nil, timeout=nil, programidlist=nil)
          @FlowName = flowname
          @TriggerRule = triggerrule
          @FlowEdges = flowedges
          @TimeOut = timeout
          @ProgramIdList = programidlist
        end

        def deserialize(params)
          @FlowName = params['FlowName']
          unless params['TriggerRule'].nil?
            @TriggerRule = TaskRule.new
            @TriggerRule.deserialize(params['TriggerRule'])
          end
          unless params['FlowEdges'].nil?
            @FlowEdges = []
            params['FlowEdges'].each do |i|
              taskflowedge_tmp = TaskFlowEdge.new
              taskflowedge_tmp.deserialize(i)
              @FlowEdges << taskflowedge_tmp
            end
          end
          @TimeOut = params['TimeOut']
          @ProgramIdList = params['ProgramIdList']
        end
      end

      # CreateTaskFlow返回参数结构体
      class CreateTaskFlowResponse < TencentCloud::Common::AbstractModel
        # @param Result: 工作流 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
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

      # CreateTask请求参数结构体
      class CreateTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskName: 任务名称，任务长度64字符
        # @type TaskName: String
        # @param TaskContent: 任务内容，长度限制65536个字节
        # @type TaskContent: String
        # @param ExecuteType: 执行类型，unicast/broadcast
        # @type ExecuteType: String
        # @param TaskType: 任务类型,java
        # @type TaskType: String
        # @param TimeOut: 任务超时时间， 时间单位 ms
        # @type TimeOut: Integer
        # @param GroupId: 部署组ID
        # @type GroupId: String
        # @param TaskRule: 触发规则
        # @type TaskRule: :class:`Tencentcloud::Tsf.v20180326.models.TaskRule`
        # @param RetryCount: 重试次数，0 <= RetryCount<= 10
        # @type RetryCount: Integer
        # @param RetryInterval: 重试间隔， 0 <= RetryInterval <= 600000， 时间单位 ms
        # @type RetryInterval: Integer
        # @param ShardCount: 分片数量
        # @type ShardCount: Integer
        # @param ShardArguments: 分片参数
        # @type ShardArguments: Array
        # @param SuccessOperator: 判断任务成功的操作符
        # @type SuccessOperator: String
        # @param SuccessRatio: 判断任务成功率的阈值，如100
        # @type SuccessRatio: String
        # @param AdvanceSettings: 高级设置
        # @type AdvanceSettings: :class:`Tencentcloud::Tsf.v20180326.models.AdvanceSettings`
        # @param TaskArgument: 任务参数，长度限制10000个字符
        # @type TaskArgument: String
        # @param ProgramIdList: 无
        # @type ProgramIdList: Array

        attr_accessor :TaskName, :TaskContent, :ExecuteType, :TaskType, :TimeOut, :GroupId, :TaskRule, :RetryCount, :RetryInterval, :ShardCount, :ShardArguments, :SuccessOperator, :SuccessRatio, :AdvanceSettings, :TaskArgument, :ProgramIdList
        
        def initialize(taskname=nil, taskcontent=nil, executetype=nil, tasktype=nil, timeout=nil, groupid=nil, taskrule=nil, retrycount=nil, retryinterval=nil, shardcount=nil, shardarguments=nil, successoperator=nil, successratio=nil, advancesettings=nil, taskargument=nil, programidlist=nil)
          @TaskName = taskname
          @TaskContent = taskcontent
          @ExecuteType = executetype
          @TaskType = tasktype
          @TimeOut = timeout
          @GroupId = groupid
          @TaskRule = taskrule
          @RetryCount = retrycount
          @RetryInterval = retryinterval
          @ShardCount = shardcount
          @ShardArguments = shardarguments
          @SuccessOperator = successoperator
          @SuccessRatio = successratio
          @AdvanceSettings = advancesettings
          @TaskArgument = taskargument
          @ProgramIdList = programidlist
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @TaskContent = params['TaskContent']
          @ExecuteType = params['ExecuteType']
          @TaskType = params['TaskType']
          @TimeOut = params['TimeOut']
          @GroupId = params['GroupId']
          unless params['TaskRule'].nil?
            @TaskRule = TaskRule.new
            @TaskRule.deserialize(params['TaskRule'])
          end
          @RetryCount = params['RetryCount']
          @RetryInterval = params['RetryInterval']
          @ShardCount = params['ShardCount']
          unless params['ShardArguments'].nil?
            @ShardArguments = []
            params['ShardArguments'].each do |i|
              shardargument_tmp = ShardArgument.new
              shardargument_tmp.deserialize(i)
              @ShardArguments << shardargument_tmp
            end
          end
          @SuccessOperator = params['SuccessOperator']
          @SuccessRatio = params['SuccessRatio']
          unless params['AdvanceSettings'].nil?
            @AdvanceSettings = AdvanceSettings.new
            @AdvanceSettings.deserialize(params['AdvanceSettings'])
          end
          @TaskArgument = params['TaskArgument']
          @ProgramIdList = params['ProgramIdList']
        end
      end

      # CreateTask返回参数结构体
      class CreateTaskResponse < TencentCloud::Common::AbstractModel
        # @param Result: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
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

      # CreateUnitRule请求参数结构体
      class CreateUnitRuleRequest < TencentCloud::Common::AbstractModel
        # @param GatewayInstanceId: 网关实体ID
        # @type GatewayInstanceId: String
        # @param Name: 规则名称
        # @type Name: String
        # @param Description: 规则描述
        # @type Description: String
        # @param UnitRuleItemList: 规则项列表
        # @type UnitRuleItemList: Array

        attr_accessor :GatewayInstanceId, :Name, :Description, :UnitRuleItemList
        
        def initialize(gatewayinstanceid=nil, name=nil, description=nil, unitruleitemlist=nil)
          @GatewayInstanceId = gatewayinstanceid
          @Name = name
          @Description = description
          @UnitRuleItemList = unitruleitemlist
        end

        def deserialize(params)
          @GatewayInstanceId = params['GatewayInstanceId']
          @Name = params['Name']
          @Description = params['Description']
          unless params['UnitRuleItemList'].nil?
            @UnitRuleItemList = []
            params['UnitRuleItemList'].each do |i|
              unitruleitem_tmp = UnitRuleItem.new
              unitruleitem_tmp.deserialize(i)
              @UnitRuleItemList << unitruleitem_tmp
            end
          end
        end
      end

      # CreateUnitRule返回参数结构体
      class CreateUnitRuleResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # CreateUnitRuleWithDetailResp请求参数结构体
      class CreateUnitRuleWithDetailRespRequest < TencentCloud::Common::AbstractModel
        # @param GatewayInstanceId: 网关实体ID
        # @type GatewayInstanceId: String
        # @param Name: 规则名称
        # @type Name: String
        # @param Description: 规则描述
        # @type Description: String
        # @param UnitRuleItemList: 规则项列表
        # @type UnitRuleItemList: Array

        attr_accessor :GatewayInstanceId, :Name, :Description, :UnitRuleItemList
        
        def initialize(gatewayinstanceid=nil, name=nil, description=nil, unitruleitemlist=nil)
          @GatewayInstanceId = gatewayinstanceid
          @Name = name
          @Description = description
          @UnitRuleItemList = unitruleitemlist
        end

        def deserialize(params)
          @GatewayInstanceId = params['GatewayInstanceId']
          @Name = params['Name']
          @Description = params['Description']
          unless params['UnitRuleItemList'].nil?
            @UnitRuleItemList = []
            params['UnitRuleItemList'].each do |i|
              unitruleitem_tmp = UnitRuleItem.new
              unitruleitem_tmp.deserialize(i)
              @UnitRuleItemList << unitruleitem_tmp
            end
          end
        end
      end

      # CreateUnitRuleWithDetailResp返回参数结构体
      class CreateUnitRuleWithDetailRespResponse < TencentCloud::Common::AbstractModel
        # @param Result: 单元化规则 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.UnitRule`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = UnitRule.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 构成监控数据图的曲线坐标点
      class CurvePoint < TencentCloud::Common::AbstractModel
        # @param Label: 当前坐标 X轴的值 当前是日期格式:"yyyy-MM-dd HH:mm:ss"
        # @type Label: String
        # @param Value: 当前坐标 Y轴的值
        # @type Value: String
        # @param Timestamp: 该坐标点时间戳
        # @type Timestamp: String

        attr_accessor :Label, :Value, :Timestamp
        
        def initialize(label=nil, value=nil, timestamp=nil)
          @Label = label
          @Value = value
          @Timestamp = timestamp
        end

        def deserialize(params)
          @Label = params['Label']
          @Value = params['Value']
          @Timestamp = params['Timestamp']
        end
      end

      # DeleteApiGroup请求参数结构体
      class DeleteApiGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: API 分组ID
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # DeleteApiGroup返回参数结构体
      class DeleteApiGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 成功失败
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

      # DeleteApiRateLimitRule请求参数结构体
      class DeleteApiRateLimitRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 限流规则ID
        # @type RuleId: String

        attr_accessor :RuleId
        
        def initialize(ruleid=nil)
          @RuleId = ruleid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
        end
      end

      # DeleteApiRateLimitRule返回参数结构体
      class DeleteApiRateLimitRuleResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
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

      # DeleteApplication请求参数结构体
      class DeleteApplicationRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID
        # @type ApplicationId: String

        attr_accessor :ApplicationId
        
        def initialize(applicationid=nil)
          @ApplicationId = applicationid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
        end
      end

      # DeleteApplication返回参数结构体
      class DeleteApplicationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 删除应用操作是否成功。
        # true：操作成功。
        # false：操作失败。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DeleteCluster请求参数结构体
      class DeleteClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Unbind: 是否只解绑，不删除容器集群，默认不传则删除容器集群。
        # @type Unbind: Boolean

        attr_accessor :ClusterId, :Unbind
        
        def initialize(clusterid=nil, unbind=nil)
          @ClusterId = clusterid
          @Unbind = unbind
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Unbind = params['Unbind']
        end
      end

      # DeleteCluster返回参数结构体
      class DeleteClusterResponse < TencentCloud::Common::AbstractModel
        # @param Result: 删除集群操作是否成功。
        # true：操作成功。
        # false：操作失败。
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

      # DeleteConfig请求参数结构体
      class DeleteConfigRequest < TencentCloud::Common::AbstractModel
        # @param ConfigId: 配置项ID
        # @type ConfigId: String

        attr_accessor :ConfigId
        
        def initialize(configid=nil)
          @ConfigId = configid
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
        end
      end

      # DeleteConfig返回参数结构体
      class DeleteConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: true：删除成功；false：删除失败
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

      # DeleteConfigTemplate请求参数结构体
      class DeleteConfigTemplateRequest < TencentCloud::Common::AbstractModel
        # @param ConfigTemplateId: 无
        # @type ConfigTemplateId: String

        attr_accessor :ConfigTemplateId
        
        def initialize(configtemplateid=nil)
          @ConfigTemplateId = configtemplateid
        end

        def deserialize(params)
          @ConfigTemplateId = params['ConfigTemplateId']
        end
      end

      # DeleteConfigTemplate返回参数结构体
      class DeleteConfigTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Result: true：删除成功；false：删除失败
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

      # DeleteContainerGroup请求参数结构体
      class DeleteContainerGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID，分组唯一标识
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # DeleteContainerGroup返回参数结构体
      class DeleteContainerGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 删除操作是否成功：
        # true：成功
        # false：失败
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

      # DeleteFileConfig请求参数结构体
      class DeleteFileConfigRequest < TencentCloud::Common::AbstractModel
        # @param ConfigId: 文件配置项ID
        # @type ConfigId: String

        attr_accessor :ConfigId
        
        def initialize(configid=nil)
          @ConfigId = configid
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
        end
      end

      # DeleteFileConfig返回参数结构体
      class DeleteFileConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: 删除结果
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DeleteGroup请求参数结构体
      class DeleteGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # DeleteGroup返回参数结构体
      class DeleteGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 删除部署组操作是否成功。
        # true：操作成功。
        # false：操作失败。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 需要删除的镜像版本
      class DeleteImageTag < TencentCloud::Common::AbstractModel
        # @param RepoName: 仓库名，如/tsf/nginx
        # @type RepoName: String
        # @param TagName: 版本号:如V1
        # @type TagName: String

        attr_accessor :RepoName, :TagName
        
        def initialize(reponame=nil, tagname=nil)
          @RepoName = reponame
          @TagName = tagname
        end

        def deserialize(params)
          @RepoName = params['RepoName']
          @TagName = params['TagName']
        end
      end

      # DeleteImageTags请求参数结构体
      class DeleteImageTagsRequest < TencentCloud::Common::AbstractModel
        # @param ImageTags: 镜像版本数组
        # @type ImageTags: Array
        # @param RepoType: 企业: tcr ；个人: personal或者不填
        # @type RepoType: String

        attr_accessor :ImageTags, :RepoType
        
        def initialize(imagetags=nil, repotype=nil)
          @ImageTags = imagetags
          @RepoType = repotype
        end

        def deserialize(params)
          unless params['ImageTags'].nil?
            @ImageTags = []
            params['ImageTags'].each do |i|
              deleteimagetag_tmp = DeleteImageTag.new
              deleteimagetag_tmp.deserialize(i)
              @ImageTags << deleteimagetag_tmp
            end
          end
          @RepoType = params['RepoType']
        end
      end

      # DeleteImageTags返回参数结构体
      class DeleteImageTagsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 批量删除操作是否成功。
        # true：成功。
        # false：失败。
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

      # DeleteLane请求参数结构体
      class DeleteLaneRequest < TencentCloud::Common::AbstractModel
        # @param LaneId: 泳道Idl
        # @type LaneId: String

        attr_accessor :LaneId
        
        def initialize(laneid=nil)
          @LaneId = laneid
        end

        def deserialize(params)
          @LaneId = params['LaneId']
        end
      end

      # DeleteLane返回参数结构体
      class DeleteLaneResponse < TencentCloud::Common::AbstractModel
        # @param Result: true / false
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

      # DeleteLaneRule请求参数结构体
      class DeleteLaneRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 泳道规则Id
        # @type RuleId: String

        attr_accessor :RuleId
        
        def initialize(ruleid=nil)
          @RuleId = ruleid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
        end
      end

      # DeleteLaneRule返回参数结构体
      class DeleteLaneRuleResponse < TencentCloud::Common::AbstractModel
        # @param Result: 操作状态
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DeleteMicroservice请求参数结构体
      class DeleteMicroserviceRequest < TencentCloud::Common::AbstractModel
        # @param MicroserviceId: 微服务ID
        # @type MicroserviceId: String

        attr_accessor :MicroserviceId
        
        def initialize(microserviceid=nil)
          @MicroserviceId = microserviceid
        end

        def deserialize(params)
          @MicroserviceId = params['MicroserviceId']
        end
      end

      # DeleteMicroservice返回参数结构体
      class DeleteMicroserviceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 删除微服务是否成功。
        # true：操作成功。
        # false：操作失败。
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

      # DeleteNamespace请求参数结构体
      class DeleteNamespaceRequest < TencentCloud::Common::AbstractModel
        # @param NamespaceId: 命名空间ID
        # @type NamespaceId: String
        # @param ClusterId: 集群ID
        # @type ClusterId: String

        attr_accessor :NamespaceId, :ClusterId
        
        def initialize(namespaceid=nil, clusterid=nil)
          @NamespaceId = namespaceid
          @ClusterId = clusterid
        end

        def deserialize(params)
          @NamespaceId = params['NamespaceId']
          @ClusterId = params['ClusterId']
        end
      end

      # DeleteNamespace返回参数结构体
      class DeleteNamespaceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 删除命名空间是否成功。
        # true：删除成功。
        # false：删除失败。
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

      # DeletePathRewrites请求参数结构体
      class DeletePathRewritesRequest < TencentCloud::Common::AbstractModel
        # @param PathRewriteIds: 路径重写规则IDs
        # @type PathRewriteIds: Array

        attr_accessor :PathRewriteIds
        
        def initialize(pathrewriteids=nil)
          @PathRewriteIds = pathrewriteids
        end

        def deserialize(params)
          @PathRewriteIds = params['PathRewriteIds']
        end
      end

      # DeletePathRewrites返回参数结构体
      class DeletePathRewritesResponse < TencentCloud::Common::AbstractModel
        # @param Result: true/false
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

      # DeletePkgs请求参数结构体
      class DeletePkgsRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID
        # @type ApplicationId: String
        # @param PkgIds: 需要删除的程序包ID列表
        # @type PkgIds: Array
        # @param RepositoryType: 程序包仓库类型
        # @type RepositoryType: String
        # @param RepositoryId: 程序包仓库id
        # @type RepositoryId: String

        attr_accessor :ApplicationId, :PkgIds, :RepositoryType, :RepositoryId
        
        def initialize(applicationid=nil, pkgids=nil, repositorytype=nil, repositoryid=nil)
          @ApplicationId = applicationid
          @PkgIds = pkgids
          @RepositoryType = repositorytype
          @RepositoryId = repositoryid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @PkgIds = params['PkgIds']
          @RepositoryType = params['RepositoryType']
          @RepositoryId = params['RepositoryId']
        end
      end

      # DeletePkgs返回参数结构体
      class DeletePkgsResponse < TencentCloud::Common::AbstractModel
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

      # DeletePublicConfig请求参数结构体
      class DeletePublicConfigRequest < TencentCloud::Common::AbstractModel
        # @param ConfigId: 配置项ID
        # @type ConfigId: String

        attr_accessor :ConfigId
        
        def initialize(configid=nil)
          @ConfigId = configid
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
        end
      end

      # DeletePublicConfig返回参数结构体
      class DeletePublicConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: true：删除成功；false：删除失败
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DeleteRepository请求参数结构体
      class DeleteRepositoryRequest < TencentCloud::Common::AbstractModel
        # @param RepositoryId: 仓库ID
        # @type RepositoryId: String

        attr_accessor :RepositoryId
        
        def initialize(repositoryid=nil)
          @RepositoryId = repositoryid
        end

        def deserialize(params)
          @RepositoryId = params['RepositoryId']
        end
      end

      # DeleteRepository返回参数结构体
      class DeleteRepositoryResponse < TencentCloud::Common::AbstractModel
        # @param Result: 删除仓库是否成功
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DeleteServerlessGroup请求参数结构体
      class DeleteServerlessGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: groupId，分组唯一标识
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # DeleteServerlessGroup返回参数结构体
      class DeleteServerlessGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 结果true：成功；false：失败。
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

      # DeleteTask请求参数结构体
      class DeleteTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DeleteTask返回参数结构体
      class DeleteTaskResponse < TencentCloud::Common::AbstractModel
        # @param Result: 删除成功or失败
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

      # DeleteUnitNamespaces请求参数结构体
      class DeleteUnitNamespacesRequest < TencentCloud::Common::AbstractModel
        # @param GatewayInstanceId: 网关实体ID
        # @type GatewayInstanceId: String
        # @param UnitNamespaceList: 单元化命名空间ID数组
        # @type UnitNamespaceList: Array

        attr_accessor :GatewayInstanceId, :UnitNamespaceList
        
        def initialize(gatewayinstanceid=nil, unitnamespacelist=nil)
          @GatewayInstanceId = gatewayinstanceid
          @UnitNamespaceList = unitnamespacelist
        end

        def deserialize(params)
          @GatewayInstanceId = params['GatewayInstanceId']
          @UnitNamespaceList = params['UnitNamespaceList']
        end
      end

      # DeleteUnitNamespaces返回参数结构体
      class DeleteUnitNamespacesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DeleteUnitRule请求参数结构体
      class DeleteUnitRuleRequest < TencentCloud::Common::AbstractModel
        # @param Id: 规则ID
        # @type Id: String

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DeleteUnitRule返回参数结构体
      class DeleteUnitRuleResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 描述投递配置项绑定的部署组
      class DeliveryConfigBindGroup < TencentCloud::Common::AbstractModel
        # @param ConfigId: 配置id
        # @type ConfigId: String
        # @param ConfigName: 配置名
        # @type ConfigName: String
        # @param CollectPath: 采集路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CollectPath: Array
        # @param Groups: 关联部署组信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Groups: Array
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param KafkaVIp: KafkaVIp
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KafkaVIp: String
        # @param KafkaAddress: KafkaAddress
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KafkaAddress: String
        # @param KafkaVPort: KafkaVPort
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KafkaVPort: String
        # @param Topic: Topic
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Topic: String
        # @param LineRule: LineRule
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LineRule: String
        # @param CustomRule: CustomRule
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomRule: String
        # @param EnableGlobalLineRule: EnableGlobalLineRule
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableGlobalLineRule: Boolean
        # @param EnableAuth: EnableAuth
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableAuth: Boolean
        # @param Username: Username
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Username: String
        # @param Password: Password
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param KafkaInfos: KafkaInfos
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KafkaInfos: Array

        attr_accessor :ConfigId, :ConfigName, :CollectPath, :Groups, :CreateTime, :KafkaVIp, :KafkaAddress, :KafkaVPort, :Topic, :LineRule, :CustomRule, :EnableGlobalLineRule, :EnableAuth, :Username, :Password, :KafkaInfos
        
        def initialize(configid=nil, configname=nil, collectpath=nil, groups=nil, createtime=nil, kafkavip=nil, kafkaaddress=nil, kafkavport=nil, topic=nil, linerule=nil, customrule=nil, enablegloballinerule=nil, enableauth=nil, username=nil, password=nil, kafkainfos=nil)
          @ConfigId = configid
          @ConfigName = configname
          @CollectPath = collectpath
          @Groups = groups
          @CreateTime = createtime
          @KafkaVIp = kafkavip
          @KafkaAddress = kafkaaddress
          @KafkaVPort = kafkavport
          @Topic = topic
          @LineRule = linerule
          @CustomRule = customrule
          @EnableGlobalLineRule = enablegloballinerule
          @EnableAuth = enableauth
          @Username = username
          @Password = password
          @KafkaInfos = kafkainfos
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
          @ConfigName = params['ConfigName']
          @CollectPath = params['CollectPath']
          unless params['Groups'].nil?
            @Groups = []
            params['Groups'].each do |i|
              groupinfo_tmp = GroupInfo.new
              groupinfo_tmp.deserialize(i)
              @Groups << groupinfo_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @KafkaVIp = params['KafkaVIp']
          @KafkaAddress = params['KafkaAddress']
          @KafkaVPort = params['KafkaVPort']
          @Topic = params['Topic']
          @LineRule = params['LineRule']
          @CustomRule = params['CustomRule']
          @EnableGlobalLineRule = params['EnableGlobalLineRule']
          @EnableAuth = params['EnableAuth']
          @Username = params['Username']
          @Password = params['Password']
          unless params['KafkaInfos'].nil?
            @KafkaInfos = []
            params['KafkaInfos'].each do |i|
              deliverykafkainfo_tmp = DeliveryKafkaInfo.new
              deliverykafkainfo_tmp.deserialize(i)
              @KafkaInfos << deliverykafkainfo_tmp
            end
          end
        end
      end

      # 描述配置项绑定的部署组
      class DeliveryConfigBindGroups < TencentCloud::Common::AbstractModel
        # @param TotalCount: 公共条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Content: 内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              deliveryconfigbindgroup_tmp = DeliveryConfigBindGroup.new
              deliveryconfigbindgroup_tmp.deserialize(i)
              @Content << deliveryconfigbindgroup_tmp
            end
          end
        end
      end

      # kafka投递的topic和path的信息
      class DeliveryKafkaInfo < TencentCloud::Common::AbstractModel
        # @param Topic: 投递kafka的topic
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Topic: String
        # @param Path: 采集日志的path
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: Array
        # @param LineRule: default，默认换行符分行
        # time，按时间分行
        # custom, 选了custom那么CustomRule就要填入具体的自定义值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LineRule: String
        # @param CustomRule: 自定义的分行值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomRule: String

        attr_accessor :Topic, :Path, :LineRule, :CustomRule
        
        def initialize(topic=nil, path=nil, linerule=nil, customrule=nil)
          @Topic = topic
          @Path = path
          @LineRule = linerule
          @CustomRule = customrule
        end

        def deserialize(params)
          @Topic = params['Topic']
          @Path = params['Path']
          @LineRule = params['LineRule']
          @CustomRule = params['CustomRule']
        end
      end

      # DeployContainerGroup请求参数结构体
      class DeployContainerGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID，分组唯一标识
        # @type GroupId: String
        # @param TagName: 镜像版本名称,如v1
        # @type TagName: String
        # @param InstanceNum: 实例数量
        # @type InstanceNum: Integer
        # @param Server: 镜像server
        # @type Server: String
        # @param Reponame: 旧版镜像名，如/tsf/nginx
        # @type Reponame: String
        # @param CpuLimit: 业务容器最大的 CPU 核数，对应 K8S 的 limit；不填时默认为 request 的 2 倍
        # @type CpuLimit: String
        # @param MemLimit: 业务容器最大的内存 MiB 数，对应 K8S 的 limit；不填时默认为 request 的 2 倍
        # @type MemLimit: String
        # @param JvmOpts: jvm参数
        # @type JvmOpts: String
        # @param CpuRequest: 业务容器分配的 CPU 核数，对应 K8S 的 request，默认0.25
        # @type CpuRequest: String
        # @param MemRequest: 业务容器分配的内存 MiB 数，对应 K8S 的 request，默认640 MiB
        # @type MemRequest: String
        # @param DoNotStart: 是否不立即启动
        # @type DoNotStart: Boolean
        # @param RepoName: （优先使用）新版镜像名，如/tsf/nginx
        # @type RepoName: String
        # @param UpdateType: 更新方式：0:快速更新 1:滚动更新
        # @type UpdateType: Integer
        # @param UpdateIvl: 滚动更新必填，更新间隔
        # @type UpdateIvl: Integer
        # @param AgentCpuRequest: agent 容器分配的 CPU 核数，对应 K8S 的 request
        # @type AgentCpuRequest: String
        # @param AgentCpuLimit: agent 容器最大的 CPU 核数，对应 K8S 的 limit
        # @type AgentCpuLimit: String
        # @param AgentMemRequest: agent 容器分配的内存 MiB 数，对应 K8S 的 request
        # @type AgentMemRequest: String
        # @param AgentMemLimit: agent 容器最大的内存 MiB 数，对应 K8S 的 limit
        # @type AgentMemLimit: String
        # @param IstioCpuRequest: istioproxy 容器分配的 CPU 核数，对应 K8S 的 request
        # @type IstioCpuRequest: String
        # @param IstioCpuLimit: istioproxy 容器最大的 CPU 核数，对应 K8S 的 limit
        # @type IstioCpuLimit: String
        # @param IstioMemRequest: istioproxy 容器分配的内存 MiB 数，对应 K8S 的 request
        # @type IstioMemRequest: String
        # @param IstioMemLimit: istioproxy 容器最大的内存 MiB 数，对应 K8S 的 limit
        # @type IstioMemLimit: String
        # @param MaxSurge: kubernetes滚动更新策略的MaxSurge参数
        # @type MaxSurge: String
        # @param MaxUnavailable: kubernetes滚动更新策略的MaxUnavailable参数
        # @type MaxUnavailable: String
        # @param HealthCheckSettings: 健康检查配置信息，若不指定该参数，则默认不设置健康检查。
        # @type HealthCheckSettings: :class:`Tencentcloud::Tsf.v20180326.models.HealthCheckSettings`
        # @param Envs: 部署组应用运行的环境变量。若不指定该参数，则默认不设置额外的环境变量。
        # @type Envs: Array
        # @param ServiceSetting: 容器部署组的网络设置。
        # @type ServiceSetting: :class:`Tencentcloud::Tsf.v20180326.models.ServiceSetting`
        # @param DeployAgent: 是否部署 agent 容器。若不指定该参数，则默认不部署 agent 容器。
        # @type DeployAgent: Boolean
        # @param SchedulingStrategy: 节点调度策略。若不指定改参数，则默认不使用节点调度策略。
        # @type SchedulingStrategy: :class:`Tencentcloud::Tsf.v20180326.models.SchedulingStrategy`
        # @param IncrementalDeployment: 是否进行增量部署，默认为false，全量更新
        # @type IncrementalDeployment: Boolean
        # @param RepoType: tcr或者不填
        # @type RepoType: String
        # @param VolumeInfos: 数据卷信息-废弃，请用VolumeInfoList参数
        # @type VolumeInfos: :class:`Tencentcloud::Tsf.v20180326.models.VolumeInfo`
        # @param VolumeMountInfos: 数据卷挂载点信息-废弃，请用VolumeMountInfoList参数
        # @type VolumeMountInfos: :class:`Tencentcloud::Tsf.v20180326.models.VolumeMountInfo`
        # @param VolumeInfoList: 数据卷信息，list
        # @type VolumeInfoList: Array
        # @param VolumeMountInfoList: 数据卷挂载点信息，list
        # @type VolumeMountInfoList: Array
        # @param VolumeClean: 是否清除数据卷信息，默认false
        # @type VolumeClean: Boolean
        # @param AgentProfileList: javaagent信息: SERVICE_AGENT/OT_AGENT
        # @type AgentProfileList: Array
        # @param WarmupSetting: 预热配置信息
        # @type WarmupSetting: :class:`Tencentcloud::Tsf.v20180326.models.WarmupSetting`

        attr_accessor :GroupId, :TagName, :InstanceNum, :Server, :Reponame, :CpuLimit, :MemLimit, :JvmOpts, :CpuRequest, :MemRequest, :DoNotStart, :RepoName, :UpdateType, :UpdateIvl, :AgentCpuRequest, :AgentCpuLimit, :AgentMemRequest, :AgentMemLimit, :IstioCpuRequest, :IstioCpuLimit, :IstioMemRequest, :IstioMemLimit, :MaxSurge, :MaxUnavailable, :HealthCheckSettings, :Envs, :ServiceSetting, :DeployAgent, :SchedulingStrategy, :IncrementalDeployment, :RepoType, :VolumeInfos, :VolumeMountInfos, :VolumeInfoList, :VolumeMountInfoList, :VolumeClean, :AgentProfileList, :WarmupSetting
        
        def initialize(groupid=nil, tagname=nil, instancenum=nil, server=nil, reponame=nil, cpulimit=nil, memlimit=nil, jvmopts=nil, cpurequest=nil, memrequest=nil, donotstart=nil, reponame=nil, updatetype=nil, updateivl=nil, agentcpurequest=nil, agentcpulimit=nil, agentmemrequest=nil, agentmemlimit=nil, istiocpurequest=nil, istiocpulimit=nil, istiomemrequest=nil, istiomemlimit=nil, maxsurge=nil, maxunavailable=nil, healthchecksettings=nil, envs=nil, servicesetting=nil, deployagent=nil, schedulingstrategy=nil, incrementaldeployment=nil, repotype=nil, volumeinfos=nil, volumemountinfos=nil, volumeinfolist=nil, volumemountinfolist=nil, volumeclean=nil, agentprofilelist=nil, warmupsetting=nil)
          @GroupId = groupid
          @TagName = tagname
          @InstanceNum = instancenum
          @Server = server
          @Reponame = reponame
          @CpuLimit = cpulimit
          @MemLimit = memlimit
          @JvmOpts = jvmopts
          @CpuRequest = cpurequest
          @MemRequest = memrequest
          @DoNotStart = donotstart
          @RepoName = reponame
          @UpdateType = updatetype
          @UpdateIvl = updateivl
          @AgentCpuRequest = agentcpurequest
          @AgentCpuLimit = agentcpulimit
          @AgentMemRequest = agentmemrequest
          @AgentMemLimit = agentmemlimit
          @IstioCpuRequest = istiocpurequest
          @IstioCpuLimit = istiocpulimit
          @IstioMemRequest = istiomemrequest
          @IstioMemLimit = istiomemlimit
          @MaxSurge = maxsurge
          @MaxUnavailable = maxunavailable
          @HealthCheckSettings = healthchecksettings
          @Envs = envs
          @ServiceSetting = servicesetting
          @DeployAgent = deployagent
          @SchedulingStrategy = schedulingstrategy
          @IncrementalDeployment = incrementaldeployment
          @RepoType = repotype
          @VolumeInfos = volumeinfos
          @VolumeMountInfos = volumemountinfos
          @VolumeInfoList = volumeinfolist
          @VolumeMountInfoList = volumemountinfolist
          @VolumeClean = volumeclean
          @AgentProfileList = agentprofilelist
          @WarmupSetting = warmupsetting
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @TagName = params['TagName']
          @InstanceNum = params['InstanceNum']
          @Server = params['Server']
          @Reponame = params['Reponame']
          @CpuLimit = params['CpuLimit']
          @MemLimit = params['MemLimit']
          @JvmOpts = params['JvmOpts']
          @CpuRequest = params['CpuRequest']
          @MemRequest = params['MemRequest']
          @DoNotStart = params['DoNotStart']
          @RepoName = params['RepoName']
          @UpdateType = params['UpdateType']
          @UpdateIvl = params['UpdateIvl']
          @AgentCpuRequest = params['AgentCpuRequest']
          @AgentCpuLimit = params['AgentCpuLimit']
          @AgentMemRequest = params['AgentMemRequest']
          @AgentMemLimit = params['AgentMemLimit']
          @IstioCpuRequest = params['IstioCpuRequest']
          @IstioCpuLimit = params['IstioCpuLimit']
          @IstioMemRequest = params['IstioMemRequest']
          @IstioMemLimit = params['IstioMemLimit']
          @MaxSurge = params['MaxSurge']
          @MaxUnavailable = params['MaxUnavailable']
          unless params['HealthCheckSettings'].nil?
            @HealthCheckSettings = HealthCheckSettings.new
            @HealthCheckSettings.deserialize(params['HealthCheckSettings'])
          end
          unless params['Envs'].nil?
            @Envs = []
            params['Envs'].each do |i|
              env_tmp = Env.new
              env_tmp.deserialize(i)
              @Envs << env_tmp
            end
          end
          unless params['ServiceSetting'].nil?
            @ServiceSetting = ServiceSetting.new
            @ServiceSetting.deserialize(params['ServiceSetting'])
          end
          @DeployAgent = params['DeployAgent']
          unless params['SchedulingStrategy'].nil?
            @SchedulingStrategy = SchedulingStrategy.new
            @SchedulingStrategy.deserialize(params['SchedulingStrategy'])
          end
          @IncrementalDeployment = params['IncrementalDeployment']
          @RepoType = params['RepoType']
          unless params['VolumeInfos'].nil?
            @VolumeInfos = VolumeInfo.new
            @VolumeInfos.deserialize(params['VolumeInfos'])
          end
          unless params['VolumeMountInfos'].nil?
            @VolumeMountInfos = VolumeMountInfo.new
            @VolumeMountInfos.deserialize(params['VolumeMountInfos'])
          end
          unless params['VolumeInfoList'].nil?
            @VolumeInfoList = []
            params['VolumeInfoList'].each do |i|
              volumeinfo_tmp = VolumeInfo.new
              volumeinfo_tmp.deserialize(i)
              @VolumeInfoList << volumeinfo_tmp
            end
          end
          unless params['VolumeMountInfoList'].nil?
            @VolumeMountInfoList = []
            params['VolumeMountInfoList'].each do |i|
              volumemountinfo_tmp = VolumeMountInfo.new
              volumemountinfo_tmp.deserialize(i)
              @VolumeMountInfoList << volumemountinfo_tmp
            end
          end
          @VolumeClean = params['VolumeClean']
          unless params['AgentProfileList'].nil?
            @AgentProfileList = []
            params['AgentProfileList'].each do |i|
              agentprofile_tmp = AgentProfile.new
              agentprofile_tmp.deserialize(i)
              @AgentProfileList << agentprofile_tmp
            end
          end
          unless params['WarmupSetting'].nil?
            @WarmupSetting = WarmupSetting.new
            @WarmupSetting.deserialize(params['WarmupSetting'])
          end
        end
      end

      # DeployContainerGroup返回参数结构体
      class DeployContainerGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 部署容器应用是否成功。
        # true：成功。
        # false：失败。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DeployGroup请求参数结构体
      class DeployGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID
        # @type GroupId: String
        # @param PkgId: 程序包ID
        # @type PkgId: String
        # @param StartupParameters: 部署组启动参数
        # @type StartupParameters: String
        # @param DeployDesc: 部署应用描述信息
        # @type DeployDesc: String
        # @param ForceStart: 是否允许强制启动
        # @type ForceStart: Boolean
        # @param EnableHealthCheck: 是否开启健康检查
        # @type EnableHealthCheck: Boolean
        # @param HealthCheckSettings: 开启健康检查时，配置健康检查
        # @type HealthCheckSettings: :class:`Tencentcloud::Tsf.v20180326.models.HealthCheckSettings`
        # @param UpdateType: 部署方式，0表示快速更新，1表示滚动更新
        # @type UpdateType: Integer
        # @param DeployBetaEnable: 是否启用beta批次
        # @type DeployBetaEnable: Boolean
        # @param DeployBatch: 滚动发布每个批次参与的实例比率
        # @type DeployBatch: Array
        # @param DeployExeMode: 滚动发布的执行方式
        # @type DeployExeMode: String
        # @param DeployWaitTime: 滚动发布每个批次的时间间隔
        # @type DeployWaitTime: Integer
        # @param StartScript: 启动脚本 base64编码
        # @type StartScript: String
        # @param StopScript: 停止脚本 base64编码
        # @type StopScript: String
        # @param IncrementalDeployment: 是否进行增量部署，默认为false，全量更新
        # @type IncrementalDeployment: Boolean
        # @param JdkName: JDK名称: konaJDK或openJDK
        # @type JdkName: String
        # @param JdkVersion: JDK版本: 8或11 (openJDK只支持8)
        # @type JdkVersion: String
        # @param AgentProfileList: 部署agent的类型、版本
        # @type AgentProfileList: Array
        # @param WarmupSetting: 预热参数配置
        # @type WarmupSetting: :class:`Tencentcloud::Tsf.v20180326.models.WarmupSetting`

        attr_accessor :GroupId, :PkgId, :StartupParameters, :DeployDesc, :ForceStart, :EnableHealthCheck, :HealthCheckSettings, :UpdateType, :DeployBetaEnable, :DeployBatch, :DeployExeMode, :DeployWaitTime, :StartScript, :StopScript, :IncrementalDeployment, :JdkName, :JdkVersion, :AgentProfileList, :WarmupSetting
        
        def initialize(groupid=nil, pkgid=nil, startupparameters=nil, deploydesc=nil, forcestart=nil, enablehealthcheck=nil, healthchecksettings=nil, updatetype=nil, deploybetaenable=nil, deploybatch=nil, deployexemode=nil, deploywaittime=nil, startscript=nil, stopscript=nil, incrementaldeployment=nil, jdkname=nil, jdkversion=nil, agentprofilelist=nil, warmupsetting=nil)
          @GroupId = groupid
          @PkgId = pkgid
          @StartupParameters = startupparameters
          @DeployDesc = deploydesc
          @ForceStart = forcestart
          @EnableHealthCheck = enablehealthcheck
          @HealthCheckSettings = healthchecksettings
          @UpdateType = updatetype
          @DeployBetaEnable = deploybetaenable
          @DeployBatch = deploybatch
          @DeployExeMode = deployexemode
          @DeployWaitTime = deploywaittime
          @StartScript = startscript
          @StopScript = stopscript
          @IncrementalDeployment = incrementaldeployment
          @JdkName = jdkname
          @JdkVersion = jdkversion
          @AgentProfileList = agentprofilelist
          @WarmupSetting = warmupsetting
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @PkgId = params['PkgId']
          @StartupParameters = params['StartupParameters']
          @DeployDesc = params['DeployDesc']
          @ForceStart = params['ForceStart']
          @EnableHealthCheck = params['EnableHealthCheck']
          unless params['HealthCheckSettings'].nil?
            @HealthCheckSettings = HealthCheckSettings.new
            @HealthCheckSettings.deserialize(params['HealthCheckSettings'])
          end
          @UpdateType = params['UpdateType']
          @DeployBetaEnable = params['DeployBetaEnable']
          @DeployBatch = params['DeployBatch']
          @DeployExeMode = params['DeployExeMode']
          @DeployWaitTime = params['DeployWaitTime']
          @StartScript = params['StartScript']
          @StopScript = params['StopScript']
          @IncrementalDeployment = params['IncrementalDeployment']
          @JdkName = params['JdkName']
          @JdkVersion = params['JdkVersion']
          unless params['AgentProfileList'].nil?
            @AgentProfileList = []
            params['AgentProfileList'].each do |i|
              agentprofile_tmp = AgentProfile.new
              agentprofile_tmp.deserialize(i)
              @AgentProfileList << agentprofile_tmp
            end
          end
          unless params['WarmupSetting'].nil?
            @WarmupSetting = WarmupSetting.new
            @WarmupSetting.deserialize(params['WarmupSetting'])
          end
        end
      end

      # DeployGroup返回参数结构体
      class DeployGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TaskId`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TaskId.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApiDetail请求参数结构体
      class DescribeApiDetailRequest < TencentCloud::Common::AbstractModel
        # @param MicroserviceId: 微服务id
        # @type MicroserviceId: String
        # @param Path: 请求路径
        # @type Path: String
        # @param Method: 请求方法
        # @type Method: String
        # @param PkgVersion: 包版本
        # @type PkgVersion: String
        # @param ApplicationId: 应用ID
        # @type ApplicationId: String

        attr_accessor :MicroserviceId, :Path, :Method, :PkgVersion, :ApplicationId
        
        def initialize(microserviceid=nil, path=nil, method=nil, pkgversion=nil, applicationid=nil)
          @MicroserviceId = microserviceid
          @Path = path
          @Method = method
          @PkgVersion = pkgversion
          @ApplicationId = applicationid
        end

        def deserialize(params)
          @MicroserviceId = params['MicroserviceId']
          @Path = params['Path']
          @Method = params['Method']
          @PkgVersion = params['PkgVersion']
          @ApplicationId = params['ApplicationId']
        end
      end

      # DescribeApiDetail返回参数结构体
      class DescribeApiDetailResponse < TencentCloud::Common::AbstractModel
        # @param Result: API 详情
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.ApiDetailResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ApiDetailResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApiGroup请求参数结构体
      class DescribeApiGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: API 分组ID
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # DescribeApiGroup返回参数结构体
      class DescribeApiGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: API分组信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.ApiGroupInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ApiGroupInfo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApiGroups请求参数结构体
      class DescribeApiGroupsRequest < TencentCloud::Common::AbstractModel
        # @param SearchWord: 搜索关键字
        # @type SearchWord: String
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 每页条数，默认为20
        # @type Limit: Integer
        # @param GroupType: 分组类型。 ms： 微服务分组； external:外部Api分组
        # @type GroupType: String
        # @param AuthType: 鉴权类型。 secret： 密钥鉴权； none:无鉴权
        # @type AuthType: String
        # @param Status: 发布状态, drafted: 未发布。 released: 发布
        # @type Status: String
        # @param OrderBy: 排序字段："created_time"或"group_context"
        # @type OrderBy: String
        # @param OrderType: 排序类型：0(ASC)或1(DESC)
        # @type OrderType: Integer
        # @param GatewayInstanceId: 网关实体ID
        # @type GatewayInstanceId: String

        attr_accessor :SearchWord, :Offset, :Limit, :GroupType, :AuthType, :Status, :OrderBy, :OrderType, :GatewayInstanceId
        
        def initialize(searchword=nil, offset=nil, limit=nil, grouptype=nil, authtype=nil, status=nil, orderby=nil, ordertype=nil, gatewayinstanceid=nil)
          @SearchWord = searchword
          @Offset = offset
          @Limit = limit
          @GroupType = grouptype
          @AuthType = authtype
          @Status = status
          @OrderBy = orderby
          @OrderType = ordertype
          @GatewayInstanceId = gatewayinstanceid
        end

        def deserialize(params)
          @SearchWord = params['SearchWord']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @GroupType = params['GroupType']
          @AuthType = params['AuthType']
          @Status = params['Status']
          @OrderBy = params['OrderBy']
          @OrderType = params['OrderType']
          @GatewayInstanceId = params['GatewayInstanceId']
        end
      end

      # DescribeApiGroups返回参数结构体
      class DescribeApiGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 翻页结构体
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageApiGroupInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageApiGroupInfo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApiRateLimitRules请求参数结构体
      class DescribeApiRateLimitRulesRequest < TencentCloud::Common::AbstractModel
        # @param ApiId: Api ID
        # @type ApiId: String

        attr_accessor :ApiId
        
        def initialize(apiid=nil)
          @ApiId = apiid
        end

        def deserialize(params)
          @ApiId = params['ApiId']
        end
      end

      # DescribeApiRateLimitRules返回参数结构体
      class DescribeApiRateLimitRulesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 限流结果
        # @type Result: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              apiratelimitrule_tmp = ApiRateLimitRule.new
              apiratelimitrule_tmp.deserialize(i)
              @Result << apiratelimitrule_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApiUseDetail请求参数结构体
      class DescribeApiUseDetailRequest < TencentCloud::Common::AbstractModel
        # @param GatewayDeployGroupId: 网关部署组ID
        # @type GatewayDeployGroupId: String
        # @param ApiId: 网关分组Api ID
        # @type ApiId: String
        # @param StartTime: 查询的日期,格式：yyyy-MM-dd HH:mm:ss
        # @type StartTime: String
        # @param EndTime: 查询的日期,格式：yyyy-MM-dd HH:mm:ss
        # @type EndTime: String

        attr_accessor :GatewayDeployGroupId, :ApiId, :StartTime, :EndTime
        
        def initialize(gatewaydeploygroupid=nil, apiid=nil, starttime=nil, endtime=nil)
          @GatewayDeployGroupId = gatewaydeploygroupid
          @ApiId = apiid
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @GatewayDeployGroupId = params['GatewayDeployGroupId']
          @ApiId = params['ApiId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeApiUseDetail返回参数结构体
      class DescribeApiUseDetailResponse < TencentCloud::Common::AbstractModel
        # @param Result: 日使用统计对象
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.GroupApiUseStatistics`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = GroupApiUseStatistics.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApiVersions请求参数结构体
      class DescribeApiVersionsRequest < TencentCloud::Common::AbstractModel
        # @param MicroserviceId: 微服务ID
        # @type MicroserviceId: String
        # @param Path: API 请求路径
        # @type Path: String
        # @param Method: 请求方法
        # @type Method: String

        attr_accessor :MicroserviceId, :Path, :Method
        
        def initialize(microserviceid=nil, path=nil, method=nil)
          @MicroserviceId = microserviceid
          @Path = path
          @Method = method
        end

        def deserialize(params)
          @MicroserviceId = params['MicroserviceId']
          @Path = params['Path']
          @Method = params['Method']
        end
      end

      # DescribeApiVersions返回参数结构体
      class DescribeApiVersionsResponse < TencentCloud::Common::AbstractModel
        # @param Result: API版本列表
        # @type Result: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              apiversionarray_tmp = ApiVersionArray.new
              apiversionarray_tmp.deserialize(i)
              @Result << apiversionarray_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApplicationAttribute请求参数结构体
      class DescribeApplicationAttributeRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID
        # @type ApplicationId: String

        attr_accessor :ApplicationId
        
        def initialize(applicationid=nil)
          @ApplicationId = applicationid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
        end
      end

      # DescribeApplicationAttribute返回参数结构体
      class DescribeApplicationAttributeResponse < TencentCloud::Common::AbstractModel
        # @param Result: 应用列表其它字段返回参数
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.ApplicationAttribute`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ApplicationAttribute.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApplicationBusinessLogConfig请求参数结构体
      class DescribeApplicationBusinessLogConfigRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: TSF应用ID
        # @type ApplicationId: String

        attr_accessor :ApplicationId
        
        def initialize(applicationid=nil)
          @ApplicationId = applicationid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
        end
      end

      # DescribeApplicationBusinessLogConfig返回参数结构体
      class DescribeApplicationBusinessLogConfigResponse < TencentCloud::Common::AbstractModel
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

      # DescribeApplication请求参数结构体
      class DescribeApplicationRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID
        # @type ApplicationId: String

        attr_accessor :ApplicationId
        
        def initialize(applicationid=nil)
          @ApplicationId = applicationid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
        end
      end

      # DescribeApplication返回参数结构体
      class DescribeApplicationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 应用信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.ApplicationForPage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ApplicationForPage.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApplications请求参数结构体
      class DescribeApplicationsRequest < TencentCloud::Common::AbstractModel
        # @param SearchWord: 搜索字段
        # @type SearchWord: String
        # @param OrderBy: 排序字段
        # @type OrderBy: String
        # @param OrderType: 排序类型
        # @type OrderType: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 分页个数
        # @type Limit: Integer
        # @param ApplicationType: 应用类型
        # @type ApplicationType: String
        # @param MicroserviceType: 应用的微服务类型
        # @type MicroserviceType: String
        # @param ApplicationResourceTypeList: 应用资源类型数组
        # @type ApplicationResourceTypeList: Array
        # @param ApplicationIdList: IdList
        # @type ApplicationIdList: Array

        attr_accessor :SearchWord, :OrderBy, :OrderType, :Offset, :Limit, :ApplicationType, :MicroserviceType, :ApplicationResourceTypeList, :ApplicationIdList
        
        def initialize(searchword=nil, orderby=nil, ordertype=nil, offset=nil, limit=nil, applicationtype=nil, microservicetype=nil, applicationresourcetypelist=nil, applicationidlist=nil)
          @SearchWord = searchword
          @OrderBy = orderby
          @OrderType = ordertype
          @Offset = offset
          @Limit = limit
          @ApplicationType = applicationtype
          @MicroserviceType = microservicetype
          @ApplicationResourceTypeList = applicationresourcetypelist
          @ApplicationIdList = applicationidlist
        end

        def deserialize(params)
          @SearchWord = params['SearchWord']
          @OrderBy = params['OrderBy']
          @OrderType = params['OrderType']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ApplicationType = params['ApplicationType']
          @MicroserviceType = params['MicroserviceType']
          @ApplicationResourceTypeList = params['ApplicationResourceTypeList']
          @ApplicationIdList = params['ApplicationIdList']
        end
      end

      # DescribeApplications返回参数结构体
      class DescribeApplicationsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 应用分页列表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageApplication`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageApplication.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBasicResourceUsage请求参数结构体
      class DescribeBasicResourceUsageRequest < TencentCloud::Common::AbstractModel
        # @param All: 是否无视权限查询全租户的，默认 true。注：无论 true 还是 false，PackageSpaceUsed 和 ConsulInstanceCount  都是全租户的
        # @type All: Boolean

        attr_accessor :All
        
        def initialize(all=nil)
          @All = all
        end

        def deserialize(params)
          @All = params['All']
        end
      end

      # DescribeBasicResourceUsage返回参数结构体
      class DescribeBasicResourceUsageResponse < TencentCloud::Common::AbstractModel
        # @param Result: TSF基本资源信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.OverviewBasicResourceUsage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = OverviewBasicResourceUsage.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBusinessLogConfig请求参数结构体
      class DescribeBusinessLogConfigRequest < TencentCloud::Common::AbstractModel
        # @param ConfigId: 配置项ID
        # @type ConfigId: String

        attr_accessor :ConfigId
        
        def initialize(configid=nil)
          @ConfigId = configid
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
        end
      end

      # DescribeBusinessLogConfig返回参数结构体
      class DescribeBusinessLogConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: 日志配置项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.BusinessLogConfig`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = BusinessLogConfig.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBusinessLogConfigs请求参数结构体
      class DescribeBusinessLogConfigsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，取值范围大于等于0，默认值为0
        # @type Offset: Integer
        # @param Limit: 单页请求配置数量，取值范围[1, 50]，默认值为10
        # @type Limit: Integer
        # @param SearchWord: 模糊匹配关键词
        # @type SearchWord: String
        # @param DisableProgramAuthCheck: 无
        # @type DisableProgramAuthCheck: Boolean
        # @param ConfigIdList: 无
        # @type ConfigIdList: Array

        attr_accessor :Offset, :Limit, :SearchWord, :DisableProgramAuthCheck, :ConfigIdList
        
        def initialize(offset=nil, limit=nil, searchword=nil, disableprogramauthcheck=nil, configidlist=nil)
          @Offset = offset
          @Limit = limit
          @SearchWord = searchword
          @DisableProgramAuthCheck = disableprogramauthcheck
          @ConfigIdList = configidlist
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchWord = params['SearchWord']
          @DisableProgramAuthCheck = params['DisableProgramAuthCheck']
          @ConfigIdList = params['ConfigIdList']
        end
      end

      # DescribeBusinessLogConfigs返回参数结构体
      class DescribeBusinessLogConfigsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 业务日志配置列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageBusinessLogConfig`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageBusinessLogConfig.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterInstances请求参数结构体
      class DescribeClusterInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param SearchWord: 搜索字段
        # @type SearchWord: String
        # @param OrderBy: 排序字段
        # @type OrderBy: String
        # @param OrderType: 排序类型
        # @type OrderType: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 分页个数
        # @type Limit: Integer

        attr_accessor :ClusterId, :SearchWord, :OrderBy, :OrderType, :Offset, :Limit
        
        def initialize(clusterid=nil, searchword=nil, orderby=nil, ordertype=nil, offset=nil, limit=nil)
          @ClusterId = clusterid
          @SearchWord = searchword
          @OrderBy = orderby
          @OrderType = ordertype
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @SearchWord = params['SearchWord']
          @OrderBy = params['OrderBy']
          @OrderType = params['OrderType']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeClusterInstances返回参数结构体
      class DescribeClusterInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 集群机器实例分页信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageInstance`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageInstance.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusters请求参数结构体
      class DescribeClustersRequest < TencentCloud::Common::AbstractModel
        # @param SearchWord: 搜索词
        # @type SearchWord: String
        # @param OrderBy: 排序字段
        # @type OrderBy: String
        # @param OrderType: 排序方式
        # @type OrderType: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 分页个数
        # @type Limit: Integer
        # @param ClusterType: 集群类型
        # @type ClusterType: String
        # @param ClusterIdList: idList
        # @type ClusterIdList: Array

        attr_accessor :SearchWord, :OrderBy, :OrderType, :Offset, :Limit, :ClusterType, :ClusterIdList
        
        def initialize(searchword=nil, orderby=nil, ordertype=nil, offset=nil, limit=nil, clustertype=nil, clusteridlist=nil)
          @SearchWord = searchword
          @OrderBy = orderby
          @OrderType = ordertype
          @Offset = offset
          @Limit = limit
          @ClusterType = clustertype
          @ClusterIdList = clusteridlist
        end

        def deserialize(params)
          @SearchWord = params['SearchWord']
          @OrderBy = params['OrderBy']
          @OrderType = params['OrderType']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ClusterType = params['ClusterType']
          @ClusterIdList = params['ClusterIdList']
        end
      end

      # DescribeClusters返回参数结构体
      class DescribeClustersResponse < TencentCloud::Common::AbstractModel
        # @param Result: Cluster分页信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageClusterV2`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageClusterV2.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfigReleaseLogs请求参数结构体
      class DescribeConfigReleaseLogsRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID，不传入时查询全量
        # @type GroupId: String
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 每页条数，默认为20
        # @type Limit: Integer
        # @param NamespaceId: 命名空间ID，不传入时查询全量
        # @type NamespaceId: String
        # @param ClusterId: 集群ID，不传入时查询全量
        # @type ClusterId: String
        # @param ApplicationId: 应用ID，不传入时查询全量
        # @type ApplicationId: String

        attr_accessor :GroupId, :Offset, :Limit, :NamespaceId, :ClusterId, :ApplicationId
        
        def initialize(groupid=nil, offset=nil, limit=nil, namespaceid=nil, clusterid=nil, applicationid=nil)
          @GroupId = groupid
          @Offset = offset
          @Limit = limit
          @NamespaceId = namespaceid
          @ClusterId = clusterid
          @ApplicationId = applicationid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @NamespaceId = params['NamespaceId']
          @ClusterId = params['ClusterId']
          @ApplicationId = params['ApplicationId']
        end
      end

      # DescribeConfigReleaseLogs返回参数结构体
      class DescribeConfigReleaseLogsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 分页的配置项发布历史列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageConfigReleaseLog`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageConfigReleaseLog.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfigReleases请求参数结构体
      class DescribeConfigReleasesRequest < TencentCloud::Common::AbstractModel
        # @param ConfigName: 配置项名称，不传入时查询全量
        # @type ConfigName: String
        # @param GroupId: 部署组ID，不传入时查询全量
        # @type GroupId: String
        # @param NamespaceId: 命名空间ID，不传入时查询全量
        # @type NamespaceId: String
        # @param ClusterId: 集群ID，不传入时查询全量
        # @type ClusterId: String
        # @param Limit: 每页条数
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param ConfigId: 配置ID，不传入时查询全量
        # @type ConfigId: String
        # @param ApplicationId: 应用ID，不传入时查询全量
        # @type ApplicationId: String

        attr_accessor :ConfigName, :GroupId, :NamespaceId, :ClusterId, :Limit, :Offset, :ConfigId, :ApplicationId
        
        def initialize(configname=nil, groupid=nil, namespaceid=nil, clusterid=nil, limit=nil, offset=nil, configid=nil, applicationid=nil)
          @ConfigName = configname
          @GroupId = groupid
          @NamespaceId = namespaceid
          @ClusterId = clusterid
          @Limit = limit
          @Offset = offset
          @ConfigId = configid
          @ApplicationId = applicationid
        end

        def deserialize(params)
          @ConfigName = params['ConfigName']
          @GroupId = params['GroupId']
          @NamespaceId = params['NamespaceId']
          @ClusterId = params['ClusterId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @ConfigId = params['ConfigId']
          @ApplicationId = params['ApplicationId']
        end
      end

      # DescribeConfigReleases返回参数结构体
      class DescribeConfigReleasesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 分页的配置发布信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageConfigRelease`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageConfigRelease.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfig请求参数结构体
      class DescribeConfigRequest < TencentCloud::Common::AbstractModel
        # @param ConfigId: 配置项ID
        # @type ConfigId: String

        attr_accessor :ConfigId
        
        def initialize(configid=nil)
          @ConfigId = configid
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
        end
      end

      # DescribeConfig返回参数结构体
      class DescribeConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: 配置项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.Config`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = Config.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfigSummary请求参数结构体
      class DescribeConfigSummaryRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID，不传入时查询全量
        # @type ApplicationId: String
        # @param SearchWord: 查询关键字，模糊查询：应用名称，配置项名称，不传入时查询全量
        # @type SearchWord: String
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 每页条数，默认为20
        # @type Limit: Integer
        # @param OrderBy: 按时间排序：creation_time；按名称排序：config_name
        # @type OrderBy: String
        # @param OrderType: 升序传 0，降序传 1
        # @type OrderType: Integer
        # @param ConfigTagList: 无
        # @type ConfigTagList: Array
        # @param DisableProgramAuthCheck: 无
        # @type DisableProgramAuthCheck: Boolean
        # @param ConfigIdList: 无
        # @type ConfigIdList: Array

        attr_accessor :ApplicationId, :SearchWord, :Offset, :Limit, :OrderBy, :OrderType, :ConfigTagList, :DisableProgramAuthCheck, :ConfigIdList
        
        def initialize(applicationid=nil, searchword=nil, offset=nil, limit=nil, orderby=nil, ordertype=nil, configtaglist=nil, disableprogramauthcheck=nil, configidlist=nil)
          @ApplicationId = applicationid
          @SearchWord = searchword
          @Offset = offset
          @Limit = limit
          @OrderBy = orderby
          @OrderType = ordertype
          @ConfigTagList = configtaglist
          @DisableProgramAuthCheck = disableprogramauthcheck
          @ConfigIdList = configidlist
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @SearchWord = params['SearchWord']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderBy = params['OrderBy']
          @OrderType = params['OrderType']
          @ConfigTagList = params['ConfigTagList']
          @DisableProgramAuthCheck = params['DisableProgramAuthCheck']
          @ConfigIdList = params['ConfigIdList']
        end
      end

      # DescribeConfigSummary返回参数结构体
      class DescribeConfigSummaryResponse < TencentCloud::Common::AbstractModel
        # @param Result: 配置项分页对象
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageConfig`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageConfig.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfigTemplate请求参数结构体
      class DescribeConfigTemplateRequest < TencentCloud::Common::AbstractModel
        # @param ConfigTemplateId: 无
        # @type ConfigTemplateId: String

        attr_accessor :ConfigTemplateId
        
        def initialize(configtemplateid=nil)
          @ConfigTemplateId = configtemplateid
        end

        def deserialize(params)
          @ConfigTemplateId = params['ConfigTemplateId']
        end
      end

      # DescribeConfigTemplate返回参数结构体
      class DescribeConfigTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Result: Result
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.ConfigTemplate`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ConfigTemplate.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfigs请求参数结构体
      class DescribeConfigsRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID，不传入时查询全量
        # @type ApplicationId: String
        # @param ConfigId: 配置项ID，不传入时查询全量，高优先级
        # @type ConfigId: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 每页条数
        # @type Limit: Integer
        # @param ConfigIdList: 配置项ID列表，不传入时查询全量，低优先级
        # @type ConfigIdList: Array
        # @param ConfigName: 配置项名称，精确查询，不传入时查询全量
        # @type ConfigName: String
        # @param ConfigVersion: 配置项版本，精确查询，不传入时查询全量
        # @type ConfigVersion: String

        attr_accessor :ApplicationId, :ConfigId, :Offset, :Limit, :ConfigIdList, :ConfigName, :ConfigVersion
        
        def initialize(applicationid=nil, configid=nil, offset=nil, limit=nil, configidlist=nil, configname=nil, configversion=nil)
          @ApplicationId = applicationid
          @ConfigId = configid
          @Offset = offset
          @Limit = limit
          @ConfigIdList = configidlist
          @ConfigName = configname
          @ConfigVersion = configversion
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @ConfigId = params['ConfigId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ConfigIdList = params['ConfigIdList']
          @ConfigName = params['ConfigName']
          @ConfigVersion = params['ConfigVersion']
        end
      end

      # DescribeConfigs返回参数结构体
      class DescribeConfigsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 分页后的配置项列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageConfig`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageConfig.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeContainerEvents请求参数结构体
      class DescribeContainerEventsRequest < TencentCloud::Common::AbstractModel
        # @param ResourceType: event 的资源类型, group 或者 instance
        # @type ResourceType: String
        # @param ResourceId: event 的资源 id
        # @type ResourceId: String
        # @param Offset: 偏移量，取值从0开始
        # @type Offset: Integer
        # @param Limit: 分页个数，默认为20， 取值应为1~50
        # @type Limit: Integer
        # @param GroupId: 当类型是 instance 时需要
        # @type GroupId: String

        attr_accessor :ResourceType, :ResourceId, :Offset, :Limit, :GroupId
        
        def initialize(resourcetype=nil, resourceid=nil, offset=nil, limit=nil, groupid=nil)
          @ResourceType = resourcetype
          @ResourceId = resourceid
          @Offset = offset
          @Limit = limit
          @GroupId = groupid
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          @ResourceId = params['ResourceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @GroupId = params['GroupId']
        end
      end

      # DescribeContainerEvents返回参数结构体
      class DescribeContainerEventsResponse < TencentCloud::Common::AbstractModel
        # @param Result: events 分页列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageContainerEvent`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageContainerEvent.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeContainerGroupDeployInfo请求参数结构体
      class DescribeContainerGroupDeployInfoRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 实例所属 groupId
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # DescribeContainerGroupDeployInfo返回参数结构体
      class DescribeContainerGroupDeployInfoResponse < TencentCloud::Common::AbstractModel
        # @param Result: 获取部署组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.ContainerGroupDeploy`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ContainerGroupDeploy.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeContainerGroupDetail请求参数结构体
      class DescribeContainerGroupDetailRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 分组ID
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # DescribeContainerGroupDetail返回参数结构体
      class DescribeContainerGroupDetailResponse < TencentCloud::Common::AbstractModel
        # @param Result: 容器部署组详情
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.ContainerGroupDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ContainerGroupDetail.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeContainerGroups请求参数结构体
      class DescribeContainerGroupsRequest < TencentCloud::Common::AbstractModel
        # @param SearchWord: 搜索字段，模糊搜索groupName字段
        # @type SearchWord: String
        # @param ApplicationId: 分组所属应用ID。必填
        # @type ApplicationId: String
        # @param OrderBy: 排序字段，默认为 createTime字段，支持id， name， createTime
        # @type OrderBy: String
        # @param OrderType: 排序方式，默认为1：倒序排序，0：正序，1：倒序
        # @type OrderType: Integer
        # @param Offset: 偏移量，取值从0开始
        # @type Offset: Integer
        # @param Limit: 分页个数，默认为20， 取值应为1~50
        # @type Limit: Integer
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param NamespaceId: 命名空间 ID
        # @type NamespaceId: String

        attr_accessor :SearchWord, :ApplicationId, :OrderBy, :OrderType, :Offset, :Limit, :ClusterId, :NamespaceId
        
        def initialize(searchword=nil, applicationid=nil, orderby=nil, ordertype=nil, offset=nil, limit=nil, clusterid=nil, namespaceid=nil)
          @SearchWord = searchword
          @ApplicationId = applicationid
          @OrderBy = orderby
          @OrderType = ordertype
          @Offset = offset
          @Limit = limit
          @ClusterId = clusterid
          @NamespaceId = namespaceid
        end

        def deserialize(params)
          @SearchWord = params['SearchWord']
          @ApplicationId = params['ApplicationId']
          @OrderBy = params['OrderBy']
          @OrderType = params['OrderType']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ClusterId = params['ClusterId']
          @NamespaceId = params['NamespaceId']
        end
      end

      # DescribeContainerGroups返回参数结构体
      class DescribeContainerGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 查询的权限数据对象
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.ContainGroupResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ContainGroupResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCreateGatewayApiStatus请求参数结构体
      class DescribeCreateGatewayApiStatusRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 请求方法
        # @type GroupId: String
        # @param MicroserviceId: 微服务ID
        # @type MicroserviceId: String

        attr_accessor :GroupId, :MicroserviceId
        
        def initialize(groupid=nil, microserviceid=nil)
          @GroupId = groupid
          @MicroserviceId = microserviceid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @MicroserviceId = params['MicroserviceId']
        end
      end

      # DescribeCreateGatewayApiStatus返回参数结构体
      class DescribeCreateGatewayApiStatusResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否已完成导入任务
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

      # DescribeDeliveryConfigByGroupId请求参数结构体
      class DescribeDeliveryConfigByGroupIdRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组id
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # DescribeDeliveryConfigByGroupId返回参数结构体
      class DescribeDeliveryConfigByGroupIdResponse < TencentCloud::Common::AbstractModel
        # @param Result: 投递kafak配置项
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.SimpleKafkaDeliveryConfig`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = SimpleKafkaDeliveryConfig.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeliveryConfig请求参数结构体
      class DescribeDeliveryConfigRequest < TencentCloud::Common::AbstractModel
        # @param ConfigId: 投递配置id
        # @type ConfigId: String

        attr_accessor :ConfigId
        
        def initialize(configid=nil)
          @ConfigId = configid
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
        end
      end

      # DescribeDeliveryConfig返回参数结构体
      class DescribeDeliveryConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: 投递kafka配置
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.KafkaDeliveryConfig`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = KafkaDeliveryConfig.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeliveryConfigs请求参数结构体
      class DescribeDeliveryConfigsRequest < TencentCloud::Common::AbstractModel
        # @param SearchWord: 关键字
        # @type SearchWord: String
        # @param Offset: 偏移
        # @type Offset: Integer
        # @param Limit: 搜索条数
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

      # DescribeDeliveryConfigs返回参数结构体
      class DescribeDeliveryConfigsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 投递项关联部署组信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.DeliveryConfigBindGroups`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DeliveryConfigBindGroups.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDownloadInfo请求参数结构体
      class DescribeDownloadInfoRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID
        # @type ApplicationId: String
        # @param PkgId: 程序包ID
        # @type PkgId: String
        # @param RepositoryId: 程序包仓库ID
        # @type RepositoryId: String
        # @param RepositoryType: 程序包仓库类型
        # @type RepositoryType: String

        attr_accessor :ApplicationId, :PkgId, :RepositoryId, :RepositoryType
        
        def initialize(applicationid=nil, pkgid=nil, repositoryid=nil, repositorytype=nil)
          @ApplicationId = applicationid
          @PkgId = pkgid
          @RepositoryId = repositoryid
          @RepositoryType = repositorytype
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @PkgId = params['PkgId']
          @RepositoryId = params['RepositoryId']
          @RepositoryType = params['RepositoryType']
        end
      end

      # DescribeDownloadInfo返回参数结构体
      class DescribeDownloadInfoResponse < TencentCloud::Common::AbstractModel
        # @param Result: COS鉴权信息
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.CosDownloadInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CosDownloadInfo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEnabledUnitRule请求参数结构体
      class DescribeEnabledUnitRuleRequest < TencentCloud::Common::AbstractModel
        # @param GatewayInstanceId: 网关实体ID
        # @type GatewayInstanceId: String

        attr_accessor :GatewayInstanceId
        
        def initialize(gatewayinstanceid=nil)
          @GatewayInstanceId = gatewayinstanceid
        end

        def deserialize(params)
          @GatewayInstanceId = params['GatewayInstanceId']
        end
      end

      # DescribeEnabledUnitRule返回参数结构体
      class DescribeEnabledUnitRuleResponse < TencentCloud::Common::AbstractModel
        # @param Result: 单元化规则对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.UnitRule`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = UnitRule.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFileConfigReleases请求参数结构体
      class DescribeFileConfigReleasesRequest < TencentCloud::Common::AbstractModel
        # @param ConfigId: 配置项ID
        # @type ConfigId: String
        # @param ConfigName: 配置项名称
        # @type ConfigName: String
        # @param GroupId: 部署组ID
        # @type GroupId: String
        # @param NamespaceId: 命名空间ID
        # @type NamespaceId: String
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ApplicationId: 应用ID
        # @type ApplicationId: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 每页条数
        # @type Limit: Integer

        attr_accessor :ConfigId, :ConfigName, :GroupId, :NamespaceId, :ClusterId, :ApplicationId, :Offset, :Limit
        
        def initialize(configid=nil, configname=nil, groupid=nil, namespaceid=nil, clusterid=nil, applicationid=nil, offset=nil, limit=nil)
          @ConfigId = configid
          @ConfigName = configname
          @GroupId = groupid
          @NamespaceId = namespaceid
          @ClusterId = clusterid
          @ApplicationId = applicationid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
          @ConfigName = params['ConfigName']
          @GroupId = params['GroupId']
          @NamespaceId = params['NamespaceId']
          @ClusterId = params['ClusterId']
          @ApplicationId = params['ApplicationId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeFileConfigReleases返回参数结构体
      class DescribeFileConfigReleasesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 配置项发布信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageFileConfigRelease`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageFileConfigRelease.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFileConfigs请求参数结构体
      class DescribeFileConfigsRequest < TencentCloud::Common::AbstractModel
        # @param ConfigId: 配置项ID
        # @type ConfigId: String
        # @param ConfigIdList: 配置项ID列表
        # @type ConfigIdList: Array
        # @param ConfigName: 配置项名称
        # @type ConfigName: String
        # @param ApplicationId: 应用ID
        # @type ApplicationId: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 每页条数
        # @type Limit: Integer
        # @param ConfigVersion: 配置项版本
        # @type ConfigVersion: String

        attr_accessor :ConfigId, :ConfigIdList, :ConfigName, :ApplicationId, :Offset, :Limit, :ConfigVersion
        
        def initialize(configid=nil, configidlist=nil, configname=nil, applicationid=nil, offset=nil, limit=nil, configversion=nil)
          @ConfigId = configid
          @ConfigIdList = configidlist
          @ConfigName = configname
          @ApplicationId = applicationid
          @Offset = offset
          @Limit = limit
          @ConfigVersion = configversion
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
          @ConfigIdList = params['ConfigIdList']
          @ConfigName = params['ConfigName']
          @ApplicationId = params['ApplicationId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ConfigVersion = params['ConfigVersion']
        end
      end

      # DescribeFileConfigs返回参数结构体
      class DescribeFileConfigsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 文件配置项列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageFileConfig`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageFileConfig.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFlowLastBatchState请求参数结构体
      class DescribeFlowLastBatchStateRequest < TencentCloud::Common::AbstractModel
        # @param FlowId: 工作流 ID
        # @type FlowId: String

        attr_accessor :FlowId
        
        def initialize(flowid=nil)
          @FlowId = flowid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
        end
      end

      # DescribeFlowLastBatchState返回参数结构体
      class DescribeFlowLastBatchStateResponse < TencentCloud::Common::AbstractModel
        # @param Result: 工作流批次最新状态
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TaskFlowLastBatchState`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TaskFlowLastBatchState.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGatewayAllGroupApis请求参数结构体
      class DescribeGatewayAllGroupApisRequest < TencentCloud::Common::AbstractModel
        # @param GatewayDeployGroupId: 网关部署组ID
        # @type GatewayDeployGroupId: String
        # @param SearchWord: 搜索关键字，支持分组名称或API Path
        # @type SearchWord: String

        attr_accessor :GatewayDeployGroupId, :SearchWord
        
        def initialize(gatewaydeploygroupid=nil, searchword=nil)
          @GatewayDeployGroupId = gatewaydeploygroupid
          @SearchWord = searchword
        end

        def deserialize(params)
          @GatewayDeployGroupId = params['GatewayDeployGroupId']
          @SearchWord = params['SearchWord']
        end
      end

      # DescribeGatewayAllGroupApis返回参数结构体
      class DescribeGatewayAllGroupApisResponse < TencentCloud::Common::AbstractModel
        # @param Result: 网关分组和API列表信息
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.GatewayVo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = GatewayVo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGatewayApis请求参数结构体
      class DescribeGatewayApisRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 分组ID
        # @type GroupId: String
        # @param Offset: 翻页偏移量
        # @type Offset: Integer
        # @param Limit: 每页的记录数
        # @type Limit: Integer
        # @param SearchWord: 搜索关键字，支持 API path
        # @type SearchWord: String
        # @param GatewayDeployGroupId: 部署组ID
        # @type GatewayDeployGroupId: String

        attr_accessor :GroupId, :Offset, :Limit, :SearchWord, :GatewayDeployGroupId
        
        def initialize(groupid=nil, offset=nil, limit=nil, searchword=nil, gatewaydeploygroupid=nil)
          @GroupId = groupid
          @Offset = offset
          @Limit = limit
          @SearchWord = searchword
          @GatewayDeployGroupId = gatewaydeploygroupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchWord = params['SearchWord']
          @GatewayDeployGroupId = params['GatewayDeployGroupId']
        end
      end

      # DescribeGatewayApis返回参数结构体
      class DescribeGatewayApisResponse < TencentCloud::Common::AbstractModel
        # @param Result: 翻页结构
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageApiDetailInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageApiDetailInfo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGatewayMonitorOverview请求参数结构体
      class DescribeGatewayMonitorOverviewRequest < TencentCloud::Common::AbstractModel
        # @param GatewayDeployGroupId: 网关部署组ID
        # @type GatewayDeployGroupId: String

        attr_accessor :GatewayDeployGroupId
        
        def initialize(gatewaydeploygroupid=nil)
          @GatewayDeployGroupId = gatewaydeploygroupid
        end

        def deserialize(params)
          @GatewayDeployGroupId = params['GatewayDeployGroupId']
        end
      end

      # DescribeGatewayMonitorOverview返回参数结构体
      class DescribeGatewayMonitorOverviewResponse < TencentCloud::Common::AbstractModel
        # @param Result: 监控概览对象
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.MonitorOverview`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = MonitorOverview.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGroupAttribute请求参数结构体
      class DescribeGroupAttributeRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID字段
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # DescribeGroupAttribute返回参数结构体
      class DescribeGroupAttributeResponse < TencentCloud::Common::AbstractModel
        # @param Result: 虚拟机部署组信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.VmGroupOther`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = VmGroupOther.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGroupBindedGateways请求参数结构体
      class DescribeGroupBindedGatewaysRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: API 分组ID
        # @type GroupId: String
        # @param Offset: 翻页查询偏移量
        # @type Offset: Integer
        # @param Limit: 翻页查询每页记录数
        # @type Limit: Integer
        # @param SearchWord: 搜索关键字
        # @type SearchWord: String

        attr_accessor :GroupId, :Offset, :Limit, :SearchWord
        
        def initialize(groupid=nil, offset=nil, limit=nil, searchword=nil)
          @GroupId = groupid
          @Offset = offset
          @Limit = limit
          @SearchWord = searchword
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchWord = params['SearchWord']
        end
      end

      # DescribeGroupBindedGateways返回参数结构体
      class DescribeGroupBindedGatewaysResponse < TencentCloud::Common::AbstractModel
        # @param Result: 翻页结构体
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageGatewayDeployGroup`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageGatewayDeployGroup.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGroupBusinessLogConfigs请求参数结构体
      class DescribeGroupBusinessLogConfigsRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 分组ID
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # DescribeGroupBusinessLogConfigs返回参数结构体
      class DescribeGroupBusinessLogConfigsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 业务日志配置列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageBusinessLogConfig`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageBusinessLogConfig.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGroupGateways请求参数结构体
      class DescribeGroupGatewaysRequest < TencentCloud::Common::AbstractModel
        # @param GatewayDeployGroupId: 网关部署组ID
        # @type GatewayDeployGroupId: String
        # @param Offset: 翻页查询偏移量
        # @type Offset: Integer
        # @param Limit: 翻页查询每页记录数
        # @type Limit: Integer
        # @param SearchWord: 搜索关键字
        # @type SearchWord: String

        attr_accessor :GatewayDeployGroupId, :Offset, :Limit, :SearchWord
        
        def initialize(gatewaydeploygroupid=nil, offset=nil, limit=nil, searchword=nil)
          @GatewayDeployGroupId = gatewaydeploygroupid
          @Offset = offset
          @Limit = limit
          @SearchWord = searchword
        end

        def deserialize(params)
          @GatewayDeployGroupId = params['GatewayDeployGroupId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchWord = params['SearchWord']
        end
      end

      # DescribeGroupGateways返回参数结构体
      class DescribeGroupGatewaysResponse < TencentCloud::Common::AbstractModel
        # @param Result: API分组信息
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageApiGroupInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageApiGroupInfo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGroupInstances请求参数结构体
      class DescribeGroupInstancesRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID
        # @type GroupId: String
        # @param SearchWord: 搜索字段
        # @type SearchWord: String
        # @param OrderBy: 排序字段
        # @type OrderBy: String
        # @param OrderType: 排序类型
        # @type OrderType: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 分页个数
        # @type Limit: Integer

        attr_accessor :GroupId, :SearchWord, :OrderBy, :OrderType, :Offset, :Limit
        
        def initialize(groupid=nil, searchword=nil, orderby=nil, ordertype=nil, offset=nil, limit=nil)
          @GroupId = groupid
          @SearchWord = searchword
          @OrderBy = orderby
          @OrderType = ordertype
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @SearchWord = params['SearchWord']
          @OrderBy = params['OrderBy']
          @OrderType = params['OrderType']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeGroupInstances返回参数结构体
      class DescribeGroupInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 部署组机器信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageInstance`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageInstance.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGroupRelease请求参数结构体
      class DescribeGroupReleaseRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # DescribeGroupRelease返回参数结构体
      class DescribeGroupReleaseResponse < TencentCloud::Common::AbstractModel
        # @param Result: 部署组发布的相关信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.GroupRelease`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = GroupRelease.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGroup请求参数结构体
      class DescribeGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # DescribeGroup返回参数结构体
      class DescribeGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 虚拟机部署组详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.VmGroup`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = VmGroup.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGroupUseDetail请求参数结构体
      class DescribeGroupUseDetailRequest < TencentCloud::Common::AbstractModel
        # @param GatewayDeployGroupId: 网关部署组ID
        # @type GatewayDeployGroupId: String
        # @param GroupId: 网关分组ID
        # @type GroupId: String
        # @param StartTime: 查询的日期,格式：yyyy-MM-dd HH:mm:ss
        # @type StartTime: String
        # @param EndTime: 查询的日期,格式：yyyy-MM-dd HH:mm:ss
        # @type EndTime: String
        # @param Count: 指定top的条数,默认为10
        # @type Count: Integer

        attr_accessor :GatewayDeployGroupId, :GroupId, :StartTime, :EndTime, :Count
        
        def initialize(gatewaydeploygroupid=nil, groupid=nil, starttime=nil, endtime=nil, count=nil)
          @GatewayDeployGroupId = gatewaydeploygroupid
          @GroupId = groupid
          @StartTime = starttime
          @EndTime = endtime
          @Count = count
        end

        def deserialize(params)
          @GatewayDeployGroupId = params['GatewayDeployGroupId']
          @GroupId = params['GroupId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Count = params['Count']
        end
      end

      # DescribeGroupUseDetail返回参数结构体
      class DescribeGroupUseDetailResponse < TencentCloud::Common::AbstractModel
        # @param Result: 日使用统计对象
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.GroupDailyUseStatistics`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = GroupDailyUseStatistics.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGroups请求参数结构体
      class DescribeGroupsRequest < TencentCloud::Common::AbstractModel
        # @param SearchWord: 搜索字段
        # @type SearchWord: String
        # @param ApplicationId: 应用ID
        # @type ApplicationId: String
        # @param OrderBy: 排序字段
        # @type OrderBy: String
        # @param OrderType: 排序方式
        # @type OrderType: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 分页个数
        # @type Limit: Integer
        # @param NamespaceId: 命名空间ID
        # @type NamespaceId: String
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param GroupResourceTypeList: 部署组资源类型列表
        # @type GroupResourceTypeList: Array
        # @param Status: 部署组状态过滤字段
        # @type Status: String
        # @param GroupIdList: 无
        # @type GroupIdList: Array

        attr_accessor :SearchWord, :ApplicationId, :OrderBy, :OrderType, :Offset, :Limit, :NamespaceId, :ClusterId, :GroupResourceTypeList, :Status, :GroupIdList
        
        def initialize(searchword=nil, applicationid=nil, orderby=nil, ordertype=nil, offset=nil, limit=nil, namespaceid=nil, clusterid=nil, groupresourcetypelist=nil, status=nil, groupidlist=nil)
          @SearchWord = searchword
          @ApplicationId = applicationid
          @OrderBy = orderby
          @OrderType = ordertype
          @Offset = offset
          @Limit = limit
          @NamespaceId = namespaceid
          @ClusterId = clusterid
          @GroupResourceTypeList = groupresourcetypelist
          @Status = status
          @GroupIdList = groupidlist
        end

        def deserialize(params)
          @SearchWord = params['SearchWord']
          @ApplicationId = params['ApplicationId']
          @OrderBy = params['OrderBy']
          @OrderType = params['OrderType']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @NamespaceId = params['NamespaceId']
          @ClusterId = params['ClusterId']
          @GroupResourceTypeList = params['GroupResourceTypeList']
          @Status = params['Status']
          @GroupIdList = params['GroupIdList']
        end
      end

      # DescribeGroups返回参数结构体
      class DescribeGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 虚拟机部署组分页信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageVmGroup`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageVmGroup.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGroupsWithPlugin请求参数结构体
      class DescribeGroupsWithPluginRequest < TencentCloud::Common::AbstractModel
        # @param PluginId: 插件ID
        # @type PluginId: String
        # @param Bound: 绑定/未绑定: true / false
        # @type Bound: Boolean
        # @param Offset: 翻页偏移量
        # @type Offset: Integer
        # @param Limit: 每页记录数量
        # @type Limit: Integer
        # @param SearchWord: 搜索关键字
        # @type SearchWord: String
        # @param GatewayInstanceId: 网关实体ID
        # @type GatewayInstanceId: String

        attr_accessor :PluginId, :Bound, :Offset, :Limit, :SearchWord, :GatewayInstanceId
        
        def initialize(pluginid=nil, bound=nil, offset=nil, limit=nil, searchword=nil, gatewayinstanceid=nil)
          @PluginId = pluginid
          @Bound = bound
          @Offset = offset
          @Limit = limit
          @SearchWord = searchword
          @GatewayInstanceId = gatewayinstanceid
        end

        def deserialize(params)
          @PluginId = params['PluginId']
          @Bound = params['Bound']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchWord = params['SearchWord']
          @GatewayInstanceId = params['GatewayInstanceId']
        end
      end

      # DescribeGroupsWithPlugin返回参数结构体
      class DescribeGroupsWithPluginResponse < TencentCloud::Common::AbstractModel
        # @param Result: API分组信息列表
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageApiGroupInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageApiGroupInfo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeImageRepository请求参数结构体
      class DescribeImageRepositoryRequest < TencentCloud::Common::AbstractModel
        # @param SearchWord: 仓库名，搜索关键字,不带命名空间的
        # @type SearchWord: String
        # @param Offset: 偏移量，取值从0开始
        # @type Offset: Integer
        # @param Limit: 分页个数，默认为20， 取值应为1~100
        # @type Limit: Integer
        # @param RepoType: 企业: tcr ；个人: personal或者不填
        # @type RepoType: String
        # @param ApplicationId: 应用id
        # @type ApplicationId: String
        # @param TcrRepoInfo: TcrRepoInfo值
        # @type TcrRepoInfo: :class:`Tencentcloud::Tsf.v20180326.models.TcrRepoInfo`

        attr_accessor :SearchWord, :Offset, :Limit, :RepoType, :ApplicationId, :TcrRepoInfo
        
        def initialize(searchword=nil, offset=nil, limit=nil, repotype=nil, applicationid=nil, tcrrepoinfo=nil)
          @SearchWord = searchword
          @Offset = offset
          @Limit = limit
          @RepoType = repotype
          @ApplicationId = applicationid
          @TcrRepoInfo = tcrrepoinfo
        end

        def deserialize(params)
          @SearchWord = params['SearchWord']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @RepoType = params['RepoType']
          @ApplicationId = params['ApplicationId']
          unless params['TcrRepoInfo'].nil?
            @TcrRepoInfo = TcrRepoInfo.new
            @TcrRepoInfo.deserialize(params['TcrRepoInfo'])
          end
        end
      end

      # DescribeImageRepository返回参数结构体
      class DescribeImageRepositoryResponse < TencentCloud::Common::AbstractModel
        # @param Result: 查询的权限数据对象
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.ImageRepositoryResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ImageRepositoryResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeImageTags请求参数结构体
      class DescribeImageTagsRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用Id
        # @type ApplicationId: String
        # @param Offset: 偏移量，取值从0开始
        # @type Offset: Integer
        # @param Limit: 分页个数，默认为20， 取值应为1~100
        # @type Limit: Integer
        # @param QueryImageIdFlag: 不填和0:查询 1:不查询
        # @type QueryImageIdFlag: Integer
        # @param SearchWord: 可用于搜索的 tag 名字
        # @type SearchWord: String
        # @param RepoType: 企业: tcr ；个人: personal或者不填
        # @type RepoType: String
        # @param TcrRepoInfo: TcrRepoInfo值
        # @type TcrRepoInfo: :class:`Tencentcloud::Tsf.v20180326.models.TcrRepoInfo`

        attr_accessor :ApplicationId, :Offset, :Limit, :QueryImageIdFlag, :SearchWord, :RepoType, :TcrRepoInfo
        
        def initialize(applicationid=nil, offset=nil, limit=nil, queryimageidflag=nil, searchword=nil, repotype=nil, tcrrepoinfo=nil)
          @ApplicationId = applicationid
          @Offset = offset
          @Limit = limit
          @QueryImageIdFlag = queryimageidflag
          @SearchWord = searchword
          @RepoType = repotype
          @TcrRepoInfo = tcrrepoinfo
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @QueryImageIdFlag = params['QueryImageIdFlag']
          @SearchWord = params['SearchWord']
          @RepoType = params['RepoType']
          unless params['TcrRepoInfo'].nil?
            @TcrRepoInfo = TcrRepoInfo.new
            @TcrRepoInfo.deserialize(params['TcrRepoInfo'])
          end
        end
      end

      # DescribeImageTags返回参数结构体
      class DescribeImageTagsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 查询的权限数据对象
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.ImageTagsResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ImageTagsResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInovcationIndicators请求参数结构体
      class DescribeInovcationIndicatorsRequest < TencentCloud::Common::AbstractModel
        # @param Dimension: 维度
        # @type Dimension: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param NamespaceId: 命名空间ID
        # @type NamespaceId: String
        # @param ServiceId: 微服务ID
        # @type ServiceId: String
        # @param CallerServiceName: 调用方服务名
        # @type CallerServiceName: String
        # @param CalleeServiceName: 被调方服务名
        # @type CalleeServiceName: String
        # @param CallerInterfaceName: 调用方接口名
        # @type CallerInterfaceName: String
        # @param CalleeInterfaceName: 被调方接口名
        # @type CalleeInterfaceName: String
        # @param ApplicationId: 应用ID
        # @type ApplicationId: String
        # @param GroupId: 部署组ID
        # @type GroupId: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String

        attr_accessor :Dimension, :StartTime, :EndTime, :NamespaceId, :ServiceId, :CallerServiceName, :CalleeServiceName, :CallerInterfaceName, :CalleeInterfaceName, :ApplicationId, :GroupId, :InstanceId
        
        def initialize(dimension=nil, starttime=nil, endtime=nil, namespaceid=nil, serviceid=nil, callerservicename=nil, calleeservicename=nil, callerinterfacename=nil, calleeinterfacename=nil, applicationid=nil, groupid=nil, instanceid=nil)
          @Dimension = dimension
          @StartTime = starttime
          @EndTime = endtime
          @NamespaceId = namespaceid
          @ServiceId = serviceid
          @CallerServiceName = callerservicename
          @CalleeServiceName = calleeservicename
          @CallerInterfaceName = callerinterfacename
          @CalleeInterfaceName = calleeinterfacename
          @ApplicationId = applicationid
          @GroupId = groupid
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Dimension = params['Dimension']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @NamespaceId = params['NamespaceId']
          @ServiceId = params['ServiceId']
          @CallerServiceName = params['CallerServiceName']
          @CalleeServiceName = params['CalleeServiceName']
          @CallerInterfaceName = params['CallerInterfaceName']
          @CalleeInterfaceName = params['CalleeInterfaceName']
          @ApplicationId = params['ApplicationId']
          @GroupId = params['GroupId']
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInovcationIndicators返回参数结构体
      class DescribeInovcationIndicatorsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 服务调用监控指标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.InvocationIndicator`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = InvocationIndicator.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 分页个数，默认为20，最大100
        # @type Limit: Integer

        attr_accessor :Filters, :Offset, :Limit
        
        def initialize(filters=nil, offset=nil, limit=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
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

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 机器列表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.InstanceEnrichedInfoPage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = InstanceEnrichedInfoPage.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInvocationMetricDataCurve请求参数结构体
      class DescribeInvocationMetricDataCurveRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询开始时间
        # @type StartTime: String
        # @param EndTime: 查询结束时间
        # @type EndTime: String
        # @param Period: 查询时间粒度，单位秒可选值：60、3600、86400
        # @type Period: Integer
        # @param MetricDimensions: 查询指标维度
        # @type MetricDimensions: Array
        # @param Metrics: 查询指标名
        # @type Metrics: Array
        # @param Kind: 视图视角。可选值：SERVER, CLIENT。默认为SERVER
        # @type Kind: String
        # @param Type: 类型。组件监控使用，可选值：SQL 或者 NoSQL
        # @type Type: String

        attr_accessor :StartTime, :EndTime, :Period, :MetricDimensions, :Metrics, :Kind, :Type
        
        def initialize(starttime=nil, endtime=nil, period=nil, metricdimensions=nil, metrics=nil, kind=nil, type=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Period = period
          @MetricDimensions = metricdimensions
          @Metrics = metrics
          @Kind = kind
          @Type = type
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Period = params['Period']
          unless params['MetricDimensions'].nil?
            @MetricDimensions = []
            params['MetricDimensions'].each do |i|
              metricdimension_tmp = MetricDimension.new
              metricdimension_tmp.deserialize(i)
              @MetricDimensions << metricdimension_tmp
            end
          end
          unless params['Metrics'].nil?
            @Metrics = []
            params['Metrics'].each do |i|
              metric_tmp = Metric.new
              metric_tmp.deserialize(i)
              @Metrics << metric_tmp
            end
          end
          @Kind = params['Kind']
          @Type = params['Type']
        end
      end

      # DescribeInvocationMetricDataCurve返回参数结构体
      class DescribeInvocationMetricDataCurveResponse < TencentCloud::Common::AbstractModel
        # @param Result: 指标监控数据曲线集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              metricdatacurve_tmp = MetricDataCurve.new
              metricdatacurve_tmp.deserialize(i)
              @Result << metricdatacurve_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInvocationMetricDataDimension请求参数结构体
      class DescribeInvocationMetricDataDimensionRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Offset: 开始index
        # @type Offset: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param DimensionName: 聚合维度
        # @type DimensionName: String
        # @param SearchWord: 搜索关键字
        # @type SearchWord: String
        # @param MetricDimensionValues: 维度
        # @type MetricDimensionValues: Array

        attr_accessor :StartTime, :EndTime, :Offset, :Limit, :DimensionName, :SearchWord, :MetricDimensionValues
        
        def initialize(starttime=nil, endtime=nil, offset=nil, limit=nil, dimensionname=nil, searchword=nil, metricdimensionvalues=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
          @DimensionName = dimensionname
          @SearchWord = searchword
          @MetricDimensionValues = metricdimensionvalues
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @DimensionName = params['DimensionName']
          @SearchWord = params['SearchWord']
          unless params['MetricDimensionValues'].nil?
            @MetricDimensionValues = []
            params['MetricDimensionValues'].each do |i|
              metricdimensionvalue_tmp = MetricDimensionValue.new
              metricdimensionvalue_tmp.deserialize(i)
              @MetricDimensionValues << metricdimensionvalue_tmp
            end
          end
        end
      end

      # DescribeInvocationMetricDataDimension返回参数结构体
      class DescribeInvocationMetricDataDimensionResponse < TencentCloud::Common::AbstractModel
        # @param Result: 维度
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageDimension`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageDimension.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInvocationMetricDataPoint请求参数结构体
      class DescribeInvocationMetricDataPointRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param MetricDimensionValues: 维度
        # @type MetricDimensionValues: Array
        # @param Metrics: 指标
        # @type Metrics: Array
        # @param Kind: 调用视角。可选值：SERVER, CLIENT。默认为SERVER
        # @type Kind: String

        attr_accessor :StartTime, :EndTime, :MetricDimensionValues, :Metrics, :Kind
        
        def initialize(starttime=nil, endtime=nil, metricdimensionvalues=nil, metrics=nil, kind=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricDimensionValues = metricdimensionvalues
          @Metrics = metrics
          @Kind = kind
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          unless params['MetricDimensionValues'].nil?
            @MetricDimensionValues = []
            params['MetricDimensionValues'].each do |i|
              metricdimensionvalue_tmp = MetricDimensionValue.new
              metricdimensionvalue_tmp.deserialize(i)
              @MetricDimensionValues << metricdimensionvalue_tmp
            end
          end
          unless params['Metrics'].nil?
            @Metrics = []
            params['Metrics'].each do |i|
              metric_tmp = Metric.new
              metric_tmp.deserialize(i)
              @Metrics << metric_tmp
            end
          end
          @Kind = params['Kind']
        end
      end

      # DescribeInvocationMetricDataPoint返回参数结构体
      class DescribeInvocationMetricDataPointResponse < TencentCloud::Common::AbstractModel
        # @param Result: 单值指标列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              metricdatasinglevalue_tmp = MetricDataSingleValue.new
              metricdatasinglevalue_tmp.deserialize(i)
              @Result << metricdatasinglevalue_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInvocationMetricScatterPlot请求参数结构体
      class DescribeInvocationMetricScatterPlotRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询开始时间
        # @type StartTime: String
        # @param EndTime: 查询结束时间
        # @type EndTime: String
        # @param Period: 查询时间粒度，单位秒。可选值：60、3600、86400。
        # @type Period: Integer
        # @param MetricDimensions: 查询指标维度
        # @type MetricDimensions: Array
        # @param Metrics: 查询指标名
        # @type Metrics: Array
        # @param Kind: 视图视角。可选值：SERVER, CLIENT。默认为SERVER
        # @type Kind: String

        attr_accessor :StartTime, :EndTime, :Period, :MetricDimensions, :Metrics, :Kind
        
        def initialize(starttime=nil, endtime=nil, period=nil, metricdimensions=nil, metrics=nil, kind=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Period = period
          @MetricDimensions = metricdimensions
          @Metrics = metrics
          @Kind = kind
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Period = params['Period']
          unless params['MetricDimensions'].nil?
            @MetricDimensions = []
            params['MetricDimensions'].each do |i|
              metricdimension_tmp = MetricDimension.new
              metricdimension_tmp.deserialize(i)
              @MetricDimensions << metricdimension_tmp
            end
          end
          unless params['Metrics'].nil?
            @Metrics = []
            params['Metrics'].each do |i|
              metric_tmp = Metric.new
              metric_tmp.deserialize(i)
              @Metrics << metric_tmp
            end
          end
          @Kind = params['Kind']
        end
      end

      # DescribeInvocationMetricScatterPlot返回参数结构体
      class DescribeInvocationMetricScatterPlotResponse < TencentCloud::Common::AbstractModel
        # @param Result: 多值时间抽统计指标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.InvocationMetricScatterPlot`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = InvocationMetricScatterPlot.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeJvmMonitor请求参数结构体
      class DescribeJvmMonitorRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 查询的实例Id
        # @type InstanceId: String
        # @param ApplicationId: 实例所属应用Id
        # @type ApplicationId: String
        # @param TimeGranularity: 时间粒度,单位:秒
        # @type TimeGranularity: Integer
        # @param From: 查询数据起始时间格式(yyyy-MM-dd HH:mm:ss)
        # @type From: String
        # @param To: 查询数据结束时间格式(yyyy-MM-dd HH:mm:ss)
        # @type To: String
        # @param RequiredPictures: 查询的监控图列表,以返回值属性名作为入参
        # @type RequiredPictures: Array
        # @param Tag: 扩展字段
        # @type Tag: String

        attr_accessor :InstanceId, :ApplicationId, :TimeGranularity, :From, :To, :RequiredPictures, :Tag
        
        def initialize(instanceid=nil, applicationid=nil, timegranularity=nil, from=nil, to=nil, requiredpictures=nil, tag=nil)
          @InstanceId = instanceid
          @ApplicationId = applicationid
          @TimeGranularity = timegranularity
          @From = from
          @To = to
          @RequiredPictures = requiredpictures
          @Tag = tag
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ApplicationId = params['ApplicationId']
          @TimeGranularity = params['TimeGranularity']
          @From = params['From']
          @To = params['To']
          @RequiredPictures = params['RequiredPictures']
          @Tag = params['Tag']
        end
      end

      # DescribeJvmMonitor返回参数结构体
      class DescribeJvmMonitorResponse < TencentCloud::Common::AbstractModel
        # @param Result: Java实例jvm监控数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.JvmMonitorData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = JvmMonitorData.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLaneRules请求参数结构体
      class DescribeLaneRulesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 每页展示的条数
        # @type Limit: Integer
        # @param Offset: 翻页偏移量
        # @type Offset: Integer
        # @param SearchWord: 搜索关键词
        # @type SearchWord: String
        # @param RuleId: 泳道规则ID（用于精确搜索）
        # @type RuleId: String
        # @param RuleIdList: 无
        # @type RuleIdList: Array

        attr_accessor :Limit, :Offset, :SearchWord, :RuleId, :RuleIdList
        
        def initialize(limit=nil, offset=nil, searchword=nil, ruleid=nil, ruleidlist=nil)
          @Limit = limit
          @Offset = offset
          @SearchWord = searchword
          @RuleId = ruleid
          @RuleIdList = ruleidlist
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @SearchWord = params['SearchWord']
          @RuleId = params['RuleId']
          @RuleIdList = params['RuleIdList']
        end
      end

      # DescribeLaneRules返回参数结构体
      class DescribeLaneRulesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 泳道规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.LaneRules`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = LaneRules.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLanes请求参数结构体
      class DescribeLanesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 每页展示的条数
        # @type Limit: Integer
        # @param Offset: 翻页偏移量
        # @type Offset: Integer
        # @param SearchWord: 搜索关键字
        # @type SearchWord: String
        # @param LaneIdList: 无
        # @type LaneIdList: Array
        # @param DisableProgramAuthCheck: 无
        # @type DisableProgramAuthCheck: Boolean

        attr_accessor :Limit, :Offset, :SearchWord, :LaneIdList, :DisableProgramAuthCheck
        
        def initialize(limit=nil, offset=nil, searchword=nil, laneidlist=nil, disableprogramauthcheck=nil)
          @Limit = limit
          @Offset = offset
          @SearchWord = searchword
          @LaneIdList = laneidlist
          @DisableProgramAuthCheck = disableprogramauthcheck
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @SearchWord = params['SearchWord']
          @LaneIdList = params['LaneIdList']
          @DisableProgramAuthCheck = params['DisableProgramAuthCheck']
        end
      end

      # DescribeLanes返回参数结构体
      class DescribeLanesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 泳道列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.LaneInfos`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = LaneInfos.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMicroservice请求参数结构体
      class DescribeMicroserviceRequest < TencentCloud::Common::AbstractModel
        # @param MicroserviceId: 微服务ID
        # @type MicroserviceId: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 分页个数
        # @type Limit: Integer
        # @param GroupIds: 可选，根据部署组ID进行过滤
        # @type GroupIds: Array
        # @param Filters: 过滤条件。多个 filter 之间是与关系，单个 filter 多个 value 之间是或关系。filter name 取值有：id（实例id）、name（实例名）、lan-ip（内网ip）、node-ip（所在节点ip）
        # @type Filters: Array

        attr_accessor :MicroserviceId, :Offset, :Limit, :GroupIds, :Filters
        
        def initialize(microserviceid=nil, offset=nil, limit=nil, groupids=nil, filters=nil)
          @MicroserviceId = microserviceid
          @Offset = offset
          @Limit = limit
          @GroupIds = groupids
          @Filters = filters
        end

        def deserialize(params)
          @MicroserviceId = params['MicroserviceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @GroupIds = params['GroupIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # DescribeMicroservice返回参数结构体
      class DescribeMicroserviceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 微服务详情实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageMsInstance`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageMsInstance.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMicroservices请求参数结构体
      class DescribeMicroservicesRequest < TencentCloud::Common::AbstractModel
        # @param NamespaceId: 命名空间ID
        # @type NamespaceId: String
        # @param SearchWord: 搜索字段
        # @type SearchWord: String
        # @param OrderBy: 排序字段
        # @type OrderBy: String
        # @param OrderType: 排序类型
        # @type OrderType: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 分页个数
        # @type Limit: Integer
        # @param Status: 状态过滤，online、offline、single_online
        # @type Status: Array
        # @param MicroserviceIdList: IdList
        # @type MicroserviceIdList: Array
        # @param MicroserviceNameList: 搜索的服务名列表
        # @type MicroserviceNameList: Array

        attr_accessor :NamespaceId, :SearchWord, :OrderBy, :OrderType, :Offset, :Limit, :Status, :MicroserviceIdList, :MicroserviceNameList
        
        def initialize(namespaceid=nil, searchword=nil, orderby=nil, ordertype=nil, offset=nil, limit=nil, status=nil, microserviceidlist=nil, microservicenamelist=nil)
          @NamespaceId = namespaceid
          @SearchWord = searchword
          @OrderBy = orderby
          @OrderType = ordertype
          @Offset = offset
          @Limit = limit
          @Status = status
          @MicroserviceIdList = microserviceidlist
          @MicroserviceNameList = microservicenamelist
        end

        def deserialize(params)
          @NamespaceId = params['NamespaceId']
          @SearchWord = params['SearchWord']
          @OrderBy = params['OrderBy']
          @OrderType = params['OrderType']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Status = params['Status']
          @MicroserviceIdList = params['MicroserviceIdList']
          @MicroserviceNameList = params['MicroserviceNameList']
        end
      end

      # DescribeMicroservices返回参数结构体
      class DescribeMicroservicesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 微服务分页列表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageMicroservice`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageMicroservice.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMsApiList请求参数结构体
      class DescribeMsApiListRequest < TencentCloud::Common::AbstractModel
        # @param MicroserviceId: 微服务ID
        # @type MicroserviceId: String
        # @param SearchWord: 搜索关键字
        # @type SearchWord: String
        # @param Limit: 每页的数量
        # @type Limit: Integer
        # @param Offset: 翻页偏移量
        # @type Offset: Integer

        attr_accessor :MicroserviceId, :SearchWord, :Limit, :Offset
        
        def initialize(microserviceid=nil, searchword=nil, limit=nil, offset=nil)
          @MicroserviceId = microserviceid
          @SearchWord = searchword
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @MicroserviceId = params['MicroserviceId']
          @SearchWord = params['SearchWord']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeMsApiList返回参数结构体
      class DescribeMsApiListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 相应结果
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfApiListResponse`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfApiListResponse.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeOverviewInvocation请求参数结构体
      class DescribeOverviewInvocationRequest < TencentCloud::Common::AbstractModel
        # @param NamespaceId: 命名空间ID
        # @type NamespaceId: String
        # @param Type: 监控统计类型，可选值：SumReqAmount、AvgFailureRate、AvgTimeCost，分别对应请求量、请求错误率、平均响应耗时
        # @type Type: String
        # @param Period: 监控统计数据粒度，可选值：60、3600、86400，分别对应1分钟、1小时、1天
        # @type Period: Integer
        # @param StartTime: 查询开始时间，默认为当天的 00:00:00
        # @type StartTime: String
        # @param EndTime: 查询结束时间，默认为当前时间
        # @type EndTime: String

        attr_accessor :NamespaceId, :Type, :Period, :StartTime, :EndTime
        
        def initialize(namespaceid=nil, type=nil, period=nil, starttime=nil, endtime=nil)
          @NamespaceId = namespaceid
          @Type = type
          @Period = period
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @NamespaceId = params['NamespaceId']
          @Type = params['Type']
          @Period = params['Period']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeOverviewInvocation返回参数结构体
      class DescribeOverviewInvocationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 监控统计数据列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              metricdatapoint_tmp = MetricDataPoint.new
              metricdatapoint_tmp.deserialize(i)
              @Result << metricdatapoint_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePathRewrite请求参数结构体
      class DescribePathRewriteRequest < TencentCloud::Common::AbstractModel
        # @param PathRewriteId: 路径重写规则ID
        # @type PathRewriteId: String

        attr_accessor :PathRewriteId
        
        def initialize(pathrewriteid=nil)
          @PathRewriteId = pathrewriteid
        end

        def deserialize(params)
          @PathRewriteId = params['PathRewriteId']
        end
      end

      # DescribePathRewrite返回参数结构体
      class DescribePathRewriteResponse < TencentCloud::Common::AbstractModel
        # @param Result: 路径重写规则对象
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.PathRewrite`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = PathRewrite.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePathRewrites请求参数结构体
      class DescribePathRewritesRequest < TencentCloud::Common::AbstractModel
        # @param GatewayGroupId: 网关部署组ID
        # @type GatewayGroupId: String
        # @param SearchWord: 根据正则表达式或替换的内容模糊查询
        # @type SearchWord: String
        # @param Limit: 每页数量
        # @type Limit: Integer
        # @param Offset: 起始偏移量
        # @type Offset: Integer

        attr_accessor :GatewayGroupId, :SearchWord, :Limit, :Offset
        
        def initialize(gatewaygroupid=nil, searchword=nil, limit=nil, offset=nil)
          @GatewayGroupId = gatewaygroupid
          @SearchWord = searchword
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @GatewayGroupId = params['GatewayGroupId']
          @SearchWord = params['SearchWord']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribePathRewrites返回参数结构体
      class DescribePathRewritesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 路径重写翻页对象
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.PathRewritePage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = PathRewritePage.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePkgs请求参数结构体
      class DescribePkgsRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID（只传入应用ID，返回该应用下所有软件包信息）
        # @type ApplicationId: String
        # @param SearchWord: 查询关键字（支持根据包ID，包名，包版本号搜索）
        # @type SearchWord: String
        # @param OrderBy: 排序关键字（默认为"UploadTime"：上传时间）
        # @type OrderBy: String
        # @param OrderType: 升序：0/降序：1（默认降序）
        # @type OrderType: Integer
        # @param Offset: 查询起始偏移
        # @type Offset: Integer
        # @param Limit: 返回数量限制
        # @type Limit: Integer
        # @param RepositoryType: 程序包仓库类型
        # @type RepositoryType: String
        # @param RepositoryId: 程序包仓库id
        # @type RepositoryId: String
        # @param PackageTypeList: 程序包类型数组支持（fatjar jar war tar.gz zip）
        # @type PackageTypeList: Array

        attr_accessor :ApplicationId, :SearchWord, :OrderBy, :OrderType, :Offset, :Limit, :RepositoryType, :RepositoryId, :PackageTypeList
        
        def initialize(applicationid=nil, searchword=nil, orderby=nil, ordertype=nil, offset=nil, limit=nil, repositorytype=nil, repositoryid=nil, packagetypelist=nil)
          @ApplicationId = applicationid
          @SearchWord = searchword
          @OrderBy = orderby
          @OrderType = ordertype
          @Offset = offset
          @Limit = limit
          @RepositoryType = repositorytype
          @RepositoryId = repositoryid
          @PackageTypeList = packagetypelist
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @SearchWord = params['SearchWord']
          @OrderBy = params['OrderBy']
          @OrderType = params['OrderType']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @RepositoryType = params['RepositoryType']
          @RepositoryId = params['RepositoryId']
          @PackageTypeList = params['PackageTypeList']
        end
      end

      # DescribePkgs返回参数结构体
      class DescribePkgsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 符合查询程序包信息列表
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.PkgList`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = PkgList.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePluginInstances请求参数结构体
      class DescribePluginInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ScopeValue: 分组或者API的ID
        # @type ScopeValue: String
        # @param Bound: 绑定: true; 未绑定: false
        # @type Bound: Boolean
        # @param Offset: 翻页偏移量
        # @type Offset: Integer
        # @param Limit: 每页展示的条数
        # @type Limit: Integer
        # @param Type: 插件类型
        # @type Type: String
        # @param SearchWord: 搜索关键字
        # @type SearchWord: String

        attr_accessor :ScopeValue, :Bound, :Offset, :Limit, :Type, :SearchWord
        
        def initialize(scopevalue=nil, bound=nil, offset=nil, limit=nil, type=nil, searchword=nil)
          @ScopeValue = scopevalue
          @Bound = bound
          @Offset = offset
          @Limit = limit
          @Type = type
          @SearchWord = searchword
        end

        def deserialize(params)
          @ScopeValue = params['ScopeValue']
          @Bound = params['Bound']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Type = params['Type']
          @SearchWord = params['SearchWord']
        end
      end

      # DescribePluginInstances返回参数结构体
      class DescribePluginInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 插件信息列表
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageGatewayPlugin`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageGatewayPlugin.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePodInstances请求参数结构体
      class DescribePodInstancesRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 实例所属groupId
        # @type GroupId: String
        # @param Offset: 偏移量，取值从0开始
        # @type Offset: Integer
        # @param Limit: 分页个数，默认为20， 取值应为1~50
        # @type Limit: Integer
        # @param PodNameList: 过滤字段
        # @type PodNameList: Array

        attr_accessor :GroupId, :Offset, :Limit, :PodNameList
        
        def initialize(groupid=nil, offset=nil, limit=nil, podnamelist=nil)
          @GroupId = groupid
          @Offset = offset
          @Limit = limit
          @PodNameList = podnamelist
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @PodNameList = params['PodNameList']
        end
      end

      # DescribePodInstances返回参数结构体
      class DescribePodInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 查询的权限数据对象
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.GroupPodResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = GroupPodResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePrograms请求参数结构体
      class DescribeProgramsRequest < TencentCloud::Common::AbstractModel
        # @param SearchWord: 模糊查询数据集ID，数据集名称，不传入时查询全量
        # @type SearchWord: String
        # @param Limit: 每页数量
        # @type Limit: Integer
        # @param Offset: 起始偏移量
        # @type Offset: Integer

        attr_accessor :SearchWord, :Limit, :Offset
        
        def initialize(searchword=nil, limit=nil, offset=nil)
          @SearchWord = searchword
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @SearchWord = params['SearchWord']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribePrograms返回参数结构体
      class DescribeProgramsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 数据集列表
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.PagedProgram`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = PagedProgram.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePublicConfigReleaseLogs请求参数结构体
      class DescribePublicConfigReleaseLogsRequest < TencentCloud::Common::AbstractModel
        # @param NamespaceId: 命名空间ID，不传入时查询全量
        # @type NamespaceId: String
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 每页条数，默认为20
        # @type Limit: Integer

        attr_accessor :NamespaceId, :Offset, :Limit
        
        def initialize(namespaceid=nil, offset=nil, limit=nil)
          @NamespaceId = namespaceid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @NamespaceId = params['NamespaceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribePublicConfigReleaseLogs返回参数结构体
      class DescribePublicConfigReleaseLogsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 分页后的公共配置项发布历史列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageConfigReleaseLog`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageConfigReleaseLog.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePublicConfigReleases请求参数结构体
      class DescribePublicConfigReleasesRequest < TencentCloud::Common::AbstractModel
        # @param ConfigName: 配置项名称，不传入时查询全量
        # @type ConfigName: String
        # @param NamespaceId: 命名空间ID，不传入时查询全量
        # @type NamespaceId: String
        # @param Limit: 每页条数
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param ConfigId: 配置项ID，不传入时查询全量
        # @type ConfigId: String

        attr_accessor :ConfigName, :NamespaceId, :Limit, :Offset, :ConfigId
        
        def initialize(configname=nil, namespaceid=nil, limit=nil, offset=nil, configid=nil)
          @ConfigName = configname
          @NamespaceId = namespaceid
          @Limit = limit
          @Offset = offset
          @ConfigId = configid
        end

        def deserialize(params)
          @ConfigName = params['ConfigName']
          @NamespaceId = params['NamespaceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @ConfigId = params['ConfigId']
        end
      end

      # DescribePublicConfigReleases返回参数结构体
      class DescribePublicConfigReleasesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 公共配置发布信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageConfigRelease`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageConfigRelease.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePublicConfig请求参数结构体
      class DescribePublicConfigRequest < TencentCloud::Common::AbstractModel
        # @param ConfigId: 需要查询的配置项ID
        # @type ConfigId: String

        attr_accessor :ConfigId
        
        def initialize(configid=nil)
          @ConfigId = configid
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
        end
      end

      # DescribePublicConfig返回参数结构体
      class DescribePublicConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: 全局配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.Config`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = Config.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePublicConfigSummary请求参数结构体
      class DescribePublicConfigSummaryRequest < TencentCloud::Common::AbstractModel
        # @param SearchWord: 查询关键字，模糊查询：配置项名称，不传入时查询全量
        # @type SearchWord: String
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 每页条数，默认为20
        # @type Limit: Integer
        # @param OrderBy: 按时间排序：creation_time；按名称排序：config_name
        # @type OrderBy: String
        # @param OrderType: 升序传 0，降序传 1
        # @type OrderType: Integer
        # @param ConfigTagList: 无
        # @type ConfigTagList: Array
        # @param DisableProgramAuthCheck: 无
        # @type DisableProgramAuthCheck: Boolean
        # @param ConfigIdList: 无
        # @type ConfigIdList: Array

        attr_accessor :SearchWord, :Offset, :Limit, :OrderBy, :OrderType, :ConfigTagList, :DisableProgramAuthCheck, :ConfigIdList
        
        def initialize(searchword=nil, offset=nil, limit=nil, orderby=nil, ordertype=nil, configtaglist=nil, disableprogramauthcheck=nil, configidlist=nil)
          @SearchWord = searchword
          @Offset = offset
          @Limit = limit
          @OrderBy = orderby
          @OrderType = ordertype
          @ConfigTagList = configtaglist
          @DisableProgramAuthCheck = disableprogramauthcheck
          @ConfigIdList = configidlist
        end

        def deserialize(params)
          @SearchWord = params['SearchWord']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderBy = params['OrderBy']
          @OrderType = params['OrderType']
          @ConfigTagList = params['ConfigTagList']
          @DisableProgramAuthCheck = params['DisableProgramAuthCheck']
          @ConfigIdList = params['ConfigIdList']
        end
      end

      # DescribePublicConfigSummary返回参数结构体
      class DescribePublicConfigSummaryResponse < TencentCloud::Common::AbstractModel
        # @param Result: 分页的全局配置统计信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageConfig`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageConfig.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePublicConfigs请求参数结构体
      class DescribePublicConfigsRequest < TencentCloud::Common::AbstractModel
        # @param ConfigId: 配置项ID，不传入时查询全量，高优先级
        # @type ConfigId: String
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 每页条数，默认为20
        # @type Limit: Integer
        # @param ConfigIdList: 配置项ID列表，不传入时查询全量，低优先级
        # @type ConfigIdList: Array
        # @param ConfigName: 配置项名称，精确查询，不传入时查询全量
        # @type ConfigName: String
        # @param ConfigVersion: 配置项版本，精确查询，不传入时查询全量
        # @type ConfigVersion: String

        attr_accessor :ConfigId, :Offset, :Limit, :ConfigIdList, :ConfigName, :ConfigVersion
        
        def initialize(configid=nil, offset=nil, limit=nil, configidlist=nil, configname=nil, configversion=nil)
          @ConfigId = configid
          @Offset = offset
          @Limit = limit
          @ConfigIdList = configidlist
          @ConfigName = configname
          @ConfigVersion = configversion
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ConfigIdList = params['ConfigIdList']
          @ConfigName = params['ConfigName']
          @ConfigVersion = params['ConfigVersion']
        end
      end

      # DescribePublicConfigs返回参数结构体
      class DescribePublicConfigsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 分页后的全局配置项列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageConfig`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageConfig.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeReleasedConfig请求参数结构体
      class DescribeReleasedConfigRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # DescribeReleasedConfig返回参数结构体
      class DescribeReleasedConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: 已发布的配置内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
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

      # DescribeRepositories请求参数结构体
      class DescribeRepositoriesRequest < TencentCloud::Common::AbstractModel
        # @param SearchWord: 查询关键字（按照仓库名称搜索）
        # @type SearchWord: String
        # @param Offset: 查询起始偏移
        # @type Offset: Integer
        # @param Limit: 返回数量限制
        # @type Limit: Integer
        # @param RepositoryType: 仓库类型（默认仓库：default，私有仓库：private）
        # @type RepositoryType: String

        attr_accessor :SearchWord, :Offset, :Limit, :RepositoryType
        
        def initialize(searchword=nil, offset=nil, limit=nil, repositorytype=nil)
          @SearchWord = searchword
          @Offset = offset
          @Limit = limit
          @RepositoryType = repositorytype
        end

        def deserialize(params)
          @SearchWord = params['SearchWord']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @RepositoryType = params['RepositoryType']
        end
      end

      # DescribeRepositories返回参数结构体
      class DescribeRepositoriesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 符合查询仓库信息列表
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.RepositoryList`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = RepositoryList.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRepository请求参数结构体
      class DescribeRepositoryRequest < TencentCloud::Common::AbstractModel
        # @param RepositoryId: 仓库ID
        # @type RepositoryId: String

        attr_accessor :RepositoryId
        
        def initialize(repositoryid=nil)
          @RepositoryId = repositoryid
        end

        def deserialize(params)
          @RepositoryId = params['RepositoryId']
        end
      end

      # DescribeRepository返回参数结构体
      class DescribeRepositoryResponse < TencentCloud::Common::AbstractModel
        # @param Result: 查询的仓库信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.RepositoryInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = RepositoryInfo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceTaskStatus请求参数结构体
      class DescribeResourceTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeResourceTaskStatus返回参数结构体
      class DescribeResourceTaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param Result: 资源任务执行状态结果
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.ResourceTaskStatusResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ResourceTaskStatusResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSimpleApplications请求参数结构体
      class DescribeSimpleApplicationsRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationIdList: 应用ID列表
        # @type ApplicationIdList: Array
        # @param ApplicationType: 应用类型
        # @type ApplicationType: String
        # @param Limit: 每页条数
        # @type Limit: Integer
        # @param Offset: 起始偏移量
        # @type Offset: Integer
        # @param MicroserviceType: 微服务类型
        # @type MicroserviceType: String
        # @param ApplicationResourceTypeList: 资源类型数组
        # @type ApplicationResourceTypeList: Array
        # @param SearchWord: 通过id和name进行关键词过滤
        # @type SearchWord: String
        # @param DisableProgramAuthCheck: 无
        # @type DisableProgramAuthCheck: Boolean

        attr_accessor :ApplicationIdList, :ApplicationType, :Limit, :Offset, :MicroserviceType, :ApplicationResourceTypeList, :SearchWord, :DisableProgramAuthCheck
        
        def initialize(applicationidlist=nil, applicationtype=nil, limit=nil, offset=nil, microservicetype=nil, applicationresourcetypelist=nil, searchword=nil, disableprogramauthcheck=nil)
          @ApplicationIdList = applicationidlist
          @ApplicationType = applicationtype
          @Limit = limit
          @Offset = offset
          @MicroserviceType = microservicetype
          @ApplicationResourceTypeList = applicationresourcetypelist
          @SearchWord = searchword
          @DisableProgramAuthCheck = disableprogramauthcheck
        end

        def deserialize(params)
          @ApplicationIdList = params['ApplicationIdList']
          @ApplicationType = params['ApplicationType']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @MicroserviceType = params['MicroserviceType']
          @ApplicationResourceTypeList = params['ApplicationResourceTypeList']
          @SearchWord = params['SearchWord']
          @DisableProgramAuthCheck = params['DisableProgramAuthCheck']
        end
      end

      # DescribeSimpleApplications返回参数结构体
      class DescribeSimpleApplicationsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 简单应用分页对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageSimpleApplication`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageSimpleApplication.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSimpleClusters请求参数结构体
      class DescribeSimpleClustersRequest < TencentCloud::Common::AbstractModel
        # @param ClusterIdList: 需要查询的集群ID列表，不填或不传入时查询所有内容
        # @type ClusterIdList: Array
        # @param ClusterType: 需要查询的集群类型，不填或不传入时查询所有内容
        # @type ClusterType: String
        # @param Offset: 查询偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 分页个数，默认为20， 取值应为1~50
        # @type Limit: Integer
        # @param SearchWord: 对id和name进行关键词过滤
        # @type SearchWord: String
        # @param DisableProgramAuthCheck: 无
        # @type DisableProgramAuthCheck: Boolean

        attr_accessor :ClusterIdList, :ClusterType, :Offset, :Limit, :SearchWord, :DisableProgramAuthCheck
        
        def initialize(clusteridlist=nil, clustertype=nil, offset=nil, limit=nil, searchword=nil, disableprogramauthcheck=nil)
          @ClusterIdList = clusteridlist
          @ClusterType = clustertype
          @Offset = offset
          @Limit = limit
          @SearchWord = searchword
          @DisableProgramAuthCheck = disableprogramauthcheck
        end

        def deserialize(params)
          @ClusterIdList = params['ClusterIdList']
          @ClusterType = params['ClusterType']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchWord = params['SearchWord']
          @DisableProgramAuthCheck = params['DisableProgramAuthCheck']
        end
      end

      # DescribeSimpleClusters返回参数结构体
      class DescribeSimpleClustersResponse < TencentCloud::Common::AbstractModel
        # @param Result: TSF集群分页对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageCluster`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageCluster.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSimpleGroups请求参数结构体
      class DescribeSimpleGroupsRequest < TencentCloud::Common::AbstractModel
        # @param GroupIdList: 部署组ID列表，不填写时查询全量
        # @type GroupIdList: Array
        # @param ApplicationId: 应用ID，不填写时查询全量
        # @type ApplicationId: String
        # @param ClusterId: 集群ID，不填写时查询全量
        # @type ClusterId: String
        # @param NamespaceId: 命名空间ID，不填写时查询全量
        # @type NamespaceId: String
        # @param Limit: 每页条数
        # @type Limit: Integer
        # @param Offset: 起始偏移量
        # @type Offset: Integer
        # @param GroupId: 部署组ID，不填写时查询全量
        # @type GroupId: String
        # @param SearchWord: 模糊查询，部署组名称，不填写时查询全量
        # @type SearchWord: String
        # @param AppMicroServiceType: 部署组类型，精确过滤字段，M：service mesh, P：原生应用， G：网关应用
        # @type AppMicroServiceType: String

        attr_accessor :GroupIdList, :ApplicationId, :ClusterId, :NamespaceId, :Limit, :Offset, :GroupId, :SearchWord, :AppMicroServiceType
        
        def initialize(groupidlist=nil, applicationid=nil, clusterid=nil, namespaceid=nil, limit=nil, offset=nil, groupid=nil, searchword=nil, appmicroservicetype=nil)
          @GroupIdList = groupidlist
          @ApplicationId = applicationid
          @ClusterId = clusterid
          @NamespaceId = namespaceid
          @Limit = limit
          @Offset = offset
          @GroupId = groupid
          @SearchWord = searchword
          @AppMicroServiceType = appmicroservicetype
        end

        def deserialize(params)
          @GroupIdList = params['GroupIdList']
          @ApplicationId = params['ApplicationId']
          @ClusterId = params['ClusterId']
          @NamespaceId = params['NamespaceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @GroupId = params['GroupId']
          @SearchWord = params['SearchWord']
          @AppMicroServiceType = params['AppMicroServiceType']
        end
      end

      # DescribeSimpleGroups返回参数结构体
      class DescribeSimpleGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 简单部署组列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageSimpleGroup`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageSimpleGroup.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSimpleNamespaces请求参数结构体
      class DescribeSimpleNamespacesRequest < TencentCloud::Common::AbstractModel
        # @param NamespaceIdList: 命名空间ID列表，不传入时查询全量
        # @type NamespaceIdList: Array
        # @param ClusterId: 集群ID，不传入时查询全量
        # @type ClusterId: String
        # @param Limit: 每页条数
        # @type Limit: Integer
        # @param Offset: 起始偏移量
        # @type Offset: Integer
        # @param NamespaceId: 命名空间ID，不传入时查询全量
        # @type NamespaceId: String
        # @param NamespaceResourceTypeList: 查询资源类型列表
        # @type NamespaceResourceTypeList: Array
        # @param SearchWord: 通过id和name进行过滤
        # @type SearchWord: String
        # @param NamespaceTypeList: 查询的命名空间类型列表
        # @type NamespaceTypeList: Array
        # @param NamespaceName: 通过命名空间名精确过滤
        # @type NamespaceName: String
        # @param IsDefault: 通过是否是默认命名空间过滤，不传表示拉取全部命名空间。0：默认，命名空间。1：非默认命名空间
        # @type IsDefault: String
        # @param DisableProgramAuthCheck: 无
        # @type DisableProgramAuthCheck: Boolean

        attr_accessor :NamespaceIdList, :ClusterId, :Limit, :Offset, :NamespaceId, :NamespaceResourceTypeList, :SearchWord, :NamespaceTypeList, :NamespaceName, :IsDefault, :DisableProgramAuthCheck
        
        def initialize(namespaceidlist=nil, clusterid=nil, limit=nil, offset=nil, namespaceid=nil, namespaceresourcetypelist=nil, searchword=nil, namespacetypelist=nil, namespacename=nil, isdefault=nil, disableprogramauthcheck=nil)
          @NamespaceIdList = namespaceidlist
          @ClusterId = clusterid
          @Limit = limit
          @Offset = offset
          @NamespaceId = namespaceid
          @NamespaceResourceTypeList = namespaceresourcetypelist
          @SearchWord = searchword
          @NamespaceTypeList = namespacetypelist
          @NamespaceName = namespacename
          @IsDefault = isdefault
          @DisableProgramAuthCheck = disableprogramauthcheck
        end

        def deserialize(params)
          @NamespaceIdList = params['NamespaceIdList']
          @ClusterId = params['ClusterId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @NamespaceId = params['NamespaceId']
          @NamespaceResourceTypeList = params['NamespaceResourceTypeList']
          @SearchWord = params['SearchWord']
          @NamespaceTypeList = params['NamespaceTypeList']
          @NamespaceName = params['NamespaceName']
          @IsDefault = params['IsDefault']
          @DisableProgramAuthCheck = params['DisableProgramAuthCheck']
        end
      end

      # DescribeSimpleNamespaces返回参数结构体
      class DescribeSimpleNamespacesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 命名空间分页列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageNamespace`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageNamespace.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeStatistics请求参数结构体
      class DescribeStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param Type: 类型：Interface、Service、Group、Instance、SQL、NoSQL
        # @type Type: String
        # @param TimeStep: 步长，单位s：60、3600、86400
        # @type TimeStep: Integer
        # @param Offset: 偏移量，取值范围大于等于0，默认值为0
        # @type Offset: Integer
        # @param Limit: 单页请求配置数量，取值范围[1, 50]，默认值为10
        # @type Limit: Integer
        # @param NamespaceId: 命名空间Id
        # @type NamespaceId: String
        # @param OrderBy: 排序字段:AvgTimeConsuming[默认]、RequestCount、ErrorRate。实例监控还支持 CpuPercent
        # @type OrderBy: String
        # @param OrderType: 排序方式：ASC:0、DESC:1
        # @type OrderType: Integer
        # @param EndTime: 开始时间：年月日 时分秒2020-05-12 14:43:12
        # @type EndTime: String
        # @param StartTime: 开始时间：年月日 时分秒2020-05-12 14:43:12
        # @type StartTime: String
        # @param ServiceName: 服务名称
        # @type ServiceName: String
        # @param SearchWord: 搜索关键词
        # @type SearchWord: String
        # @param MetricDimensionValues: 维度
        # @type MetricDimensionValues: Array
        # @param BucketKey: 聚合关键词
        # @type BucketKey: String
        # @param DbName: 数据库
        # @type DbName: String
        # @param NamespaceIdList: 命名空间id数组
        # @type NamespaceIdList: Array

        attr_accessor :Type, :TimeStep, :Offset, :Limit, :NamespaceId, :OrderBy, :OrderType, :EndTime, :StartTime, :ServiceName, :SearchWord, :MetricDimensionValues, :BucketKey, :DbName, :NamespaceIdList
        
        def initialize(type=nil, timestep=nil, offset=nil, limit=nil, namespaceid=nil, orderby=nil, ordertype=nil, endtime=nil, starttime=nil, servicename=nil, searchword=nil, metricdimensionvalues=nil, bucketkey=nil, dbname=nil, namespaceidlist=nil)
          @Type = type
          @TimeStep = timestep
          @Offset = offset
          @Limit = limit
          @NamespaceId = namespaceid
          @OrderBy = orderby
          @OrderType = ordertype
          @EndTime = endtime
          @StartTime = starttime
          @ServiceName = servicename
          @SearchWord = searchword
          @MetricDimensionValues = metricdimensionvalues
          @BucketKey = bucketkey
          @DbName = dbname
          @NamespaceIdList = namespaceidlist
        end

        def deserialize(params)
          @Type = params['Type']
          @TimeStep = params['TimeStep']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @NamespaceId = params['NamespaceId']
          @OrderBy = params['OrderBy']
          @OrderType = params['OrderType']
          @EndTime = params['EndTime']
          @StartTime = params['StartTime']
          @ServiceName = params['ServiceName']
          @SearchWord = params['SearchWord']
          unless params['MetricDimensionValues'].nil?
            @MetricDimensionValues = []
            params['MetricDimensionValues'].each do |i|
              metricdimensionvalue_tmp = MetricDimensionValue.new
              metricdimensionvalue_tmp.deserialize(i)
              @MetricDimensionValues << metricdimensionvalue_tmp
            end
          end
          @BucketKey = params['BucketKey']
          @DbName = params['DbName']
          @NamespaceIdList = params['NamespaceIdList']
        end
      end

      # DescribeStatistics返回参数结构体
      class DescribeStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 查询服务统计结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.ServiceStatisticsResults`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ServiceStatisticsResults.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskDetail请求参数结构体
      class DescribeTaskDetailRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param TaskLogId: 任务历史ID
        # @type TaskLogId: String

        attr_accessor :TaskId, :TaskLogId
        
        def initialize(taskid=nil, tasklogid=nil)
          @TaskId = taskid
          @TaskLogId = tasklogid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskLogId = params['TaskLogId']
        end
      end

      # DescribeTaskDetail返回参数结构体
      class DescribeTaskDetailResponse < TencentCloud::Common::AbstractModel
        # @param Result: 任务详情
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TaskRecord`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TaskRecord.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskLastStatus请求参数结构体
      class DescribeTaskLastStatusRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeTaskLastStatus返回参数结构体
      class DescribeTaskLastStatusResponse < TencentCloud::Common::AbstractModel
        # @param Result: 任务上一次执行状态
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TaskLastExecuteStatus`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TaskLastExecuteStatus.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskRecords请求参数结构体
      class DescribeTaskRecordsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 翻页偏移量。
        # @type Offset: Integer
        # @param Limit: 翻页查询单页数量。
        # @type Limit: Integer
        # @param SearchWord: 模糊查询关键字，支持任务ID和任务名称。
        # @type SearchWord: String
        # @param TaskState: 任务启用状态。enabled/disabled
        # @type TaskState: String
        # @param GroupId: 分组ID。
        # @type GroupId: String
        # @param TaskType: 任务类型。
        # @type TaskType: String
        # @param ExecuteType: 任务触发类型，UNICAST、BROADCAST。
        # @type ExecuteType: String
        # @param Ids: 无
        # @type Ids: Array

        attr_accessor :Offset, :Limit, :SearchWord, :TaskState, :GroupId, :TaskType, :ExecuteType, :Ids
        
        def initialize(offset=nil, limit=nil, searchword=nil, taskstate=nil, groupid=nil, tasktype=nil, executetype=nil, ids=nil)
          @Offset = offset
          @Limit = limit
          @SearchWord = searchword
          @TaskState = taskstate
          @GroupId = groupid
          @TaskType = tasktype
          @ExecuteType = executetype
          @Ids = ids
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchWord = params['SearchWord']
          @TaskState = params['TaskState']
          @GroupId = params['GroupId']
          @TaskType = params['TaskType']
          @ExecuteType = params['ExecuteType']
          @Ids = params['Ids']
        end
      end

      # DescribeTaskRecords返回参数结构体
      class DescribeTaskRecordsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 任务记录列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TaskRecordPage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TaskRecordPage.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUnitApiUseDetail请求参数结构体
      class DescribeUnitApiUseDetailRequest < TencentCloud::Common::AbstractModel
        # @param GatewayDeployGroupId: 网关部署组ID
        # @type GatewayDeployGroupId: String
        # @param ApiId: 网关分组Api ID
        # @type ApiId: String
        # @param StartTime: 查询的日期,格式：yyyy-MM-dd HH:mm:ss
        # @type StartTime: String
        # @param EndTime: 查询的日期,格式：yyyy-MM-dd HH:mm:ss
        # @type EndTime: String
        # @param GatewayInstanceId: 网关实例ID
        # @type GatewayInstanceId: String
        # @param GroupId: 网关分组ID
        # @type GroupId: String
        # @param Offset: 翻页查询偏移量
        # @type Offset: Integer
        # @param Limit: 翻页查询每页记录数
        # @type Limit: Integer
        # @param Period: 监控统计数据粒度
        # @type Period: Integer

        attr_accessor :GatewayDeployGroupId, :ApiId, :StartTime, :EndTime, :GatewayInstanceId, :GroupId, :Offset, :Limit, :Period
        
        def initialize(gatewaydeploygroupid=nil, apiid=nil, starttime=nil, endtime=nil, gatewayinstanceid=nil, groupid=nil, offset=nil, limit=nil, period=nil)
          @GatewayDeployGroupId = gatewaydeploygroupid
          @ApiId = apiid
          @StartTime = starttime
          @EndTime = endtime
          @GatewayInstanceId = gatewayinstanceid
          @GroupId = groupid
          @Offset = offset
          @Limit = limit
          @Period = period
        end

        def deserialize(params)
          @GatewayDeployGroupId = params['GatewayDeployGroupId']
          @ApiId = params['ApiId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @GatewayInstanceId = params['GatewayInstanceId']
          @GroupId = params['GroupId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Period = params['Period']
        end
      end

      # DescribeUnitApiUseDetail返回参数结构体
      class DescribeUnitApiUseDetailResponse < TencentCloud::Common::AbstractModel
        # @param Result: 单元化使用统计对象
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.GroupUnitApiUseStatistics`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = GroupUnitApiUseStatistics.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUnitNamespaces请求参数结构体
      class DescribeUnitNamespacesRequest < TencentCloud::Common::AbstractModel
        # @param GatewayInstanceId: 网关实体ID
        # @type GatewayInstanceId: String
        # @param SearchWord: 根据命名空间名或ID模糊查询
        # @type SearchWord: String
        # @param Offset: 翻页查询偏移量
        # @type Offset: Integer
        # @param Limit: 翻页查询每页记录数
        # @type Limit: Integer

        attr_accessor :GatewayInstanceId, :SearchWord, :Offset, :Limit
        
        def initialize(gatewayinstanceid=nil, searchword=nil, offset=nil, limit=nil)
          @GatewayInstanceId = gatewayinstanceid
          @SearchWord = searchword
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @GatewayInstanceId = params['GatewayInstanceId']
          @SearchWord = params['SearchWord']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeUnitNamespaces返回参数结构体
      class DescribeUnitNamespacesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 单元化命名空间对象列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageUnitNamespace`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageUnitNamespace.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUnitRule请求参数结构体
      class DescribeUnitRuleRequest < TencentCloud::Common::AbstractModel
        # @param Id: 单元化规则ID
        # @type Id: String

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DescribeUnitRule返回参数结构体
      class DescribeUnitRuleResponse < TencentCloud::Common::AbstractModel
        # @param Result: 单元化规则对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.UnitRule`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = UnitRule.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUnitRules请求参数结构体
      class DescribeUnitRulesRequest < TencentCloud::Common::AbstractModel
        # @param GatewayInstanceId: 网关实体ID
        # @type GatewayInstanceId: String
        # @param SearchWord: 根据规则名或备注内容模糊查询
        # @type SearchWord: String
        # @param Status: 启用状态, disabled: 未发布， enabled: 发布
        # @type Status: String
        # @param Offset: 翻页查询偏移量
        # @type Offset: Integer
        # @param Limit: 翻页查询每页记录数
        # @type Limit: Integer

        attr_accessor :GatewayInstanceId, :SearchWord, :Status, :Offset, :Limit
        
        def initialize(gatewayinstanceid=nil, searchword=nil, status=nil, offset=nil, limit=nil)
          @GatewayInstanceId = gatewayinstanceid
          @SearchWord = searchword
          @Status = status
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @GatewayInstanceId = params['GatewayInstanceId']
          @SearchWord = params['SearchWord']
          @Status = params['Status']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeUnitRules返回参数结构体
      class DescribeUnitRulesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 分页列表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              tsfpageunitrule_tmp = TsfPageUnitRule.new
              tsfpageunitrule_tmp.deserialize(i)
              @Result << tsfpageunitrule_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUploadInfo请求参数结构体
      class DescribeUploadInfoRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID
        # @type ApplicationId: String
        # @param PkgName: 程序包名
        # @type PkgName: String
        # @param PkgVersion: 程序包版本
        # @type PkgVersion: String
        # @param PkgType: 程序包类型
        # @type PkgType: String
        # @param PkgDesc: 程序包介绍
        # @type PkgDesc: String
        # @param RepositoryType: 程序包仓库类型
        # @type RepositoryType: String
        # @param RepositoryId: 程序包仓库id
        # @type RepositoryId: String

        attr_accessor :ApplicationId, :PkgName, :PkgVersion, :PkgType, :PkgDesc, :RepositoryType, :RepositoryId
        
        def initialize(applicationid=nil, pkgname=nil, pkgversion=nil, pkgtype=nil, pkgdesc=nil, repositorytype=nil, repositoryid=nil)
          @ApplicationId = applicationid
          @PkgName = pkgname
          @PkgVersion = pkgversion
          @PkgType = pkgtype
          @PkgDesc = pkgdesc
          @RepositoryType = repositorytype
          @RepositoryId = repositoryid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @PkgName = params['PkgName']
          @PkgVersion = params['PkgVersion']
          @PkgType = params['PkgType']
          @PkgDesc = params['PkgDesc']
          @RepositoryType = params['RepositoryType']
          @RepositoryId = params['RepositoryId']
        end
      end

      # DescribeUploadInfo返回参数结构体
      class DescribeUploadInfoResponse < TencentCloud::Common::AbstractModel
        # @param Result: COS上传信息
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.CosUploadInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CosUploadInfo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUsableUnitNamespaces请求参数结构体
      class DescribeUsableUnitNamespacesRequest < TencentCloud::Common::AbstractModel
        # @param SearchWord: 根据命名空间名或ID模糊查询
        # @type SearchWord: String
        # @param Offset: 翻页查询偏移量
        # @type Offset: Integer
        # @param Limit: 翻页查询每页记录数
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

      # DescribeUsableUnitNamespaces返回参数结构体
      class DescribeUsableUnitNamespacesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 单元化命名空间对象列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageUnitNamespace`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageUnitNamespace.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DisableTaskFlow请求参数结构体
      class DisableTaskFlowRequest < TencentCloud::Common::AbstractModel
        # @param FlowId: 工作流 ID
        # @type FlowId: String

        attr_accessor :FlowId
        
        def initialize(flowid=nil)
          @FlowId = flowid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
        end
      end

      # DisableTaskFlow返回参数结构体
      class DisableTaskFlowResponse < TencentCloud::Common::AbstractModel
        # @param Result: true成功，false: 失败
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

      # DisableTask请求参数结构体
      class DisableTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DisableTask返回参数结构体
      class DisableTaskResponse < TencentCloud::Common::AbstractModel
        # @param Result: 操作成功 or 失败
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

      # DisableUnitRoute请求参数结构体
      class DisableUnitRouteRequest < TencentCloud::Common::AbstractModel
        # @param Id: 网关实体ID
        # @type Id: String

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DisableUnitRoute返回参数结构体
      class DisableUnitRouteResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果，成功失败
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DisableUnitRule请求参数结构体
      class DisableUnitRuleRequest < TencentCloud::Common::AbstractModel
        # @param Id: 规则ID
        # @type Id: String

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DisableUnitRule返回参数结构体
      class DisableUnitRuleResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DisassociateBusinessLogConfig请求参数结构体
      class DisassociateBusinessLogConfigRequest < TencentCloud::Common::AbstractModel
        # @param ConfigIdList: 业务日志配置项ID列表
        # @type ConfigIdList: Array
        # @param GroupId: TSF分组ID
        # @type GroupId: String

        attr_accessor :ConfigIdList, :GroupId
        
        def initialize(configidlist=nil, groupid=nil)
          @ConfigIdList = configidlist
          @GroupId = groupid
        end

        def deserialize(params)
          @ConfigIdList = params['ConfigIdList']
          @GroupId = params['GroupId']
        end
      end

      # DisassociateBusinessLogConfig返回参数结构体
      class DisassociateBusinessLogConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: 操作结果
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DisassociateKafkaConfig请求参数结构体
      class DisassociateKafkaConfigRequest < TencentCloud::Common::AbstractModel
        # @param ConfigId: 配置项id
        # @type ConfigId: String
        # @param GroupIds: 部署组id
        # @type GroupIds: Array

        attr_accessor :ConfigId, :GroupIds
        
        def initialize(configid=nil, groupids=nil)
          @ConfigId = configid
          @GroupIds = groupids
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
          @GroupIds = params['GroupIds']
        end
      end

      # DisassociateKafkaConfig返回参数结构体
      class DisassociateKafkaConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: 解除绑定是否成功
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DraftApiGroup请求参数结构体
      class DraftApiGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: Api 分组ID
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # DraftApiGroup返回参数结构体
      class DraftApiGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: true: 成功, false: 失败
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

      # EnableTaskFlow请求参数结构体
      class EnableTaskFlowRequest < TencentCloud::Common::AbstractModel
        # @param FlowId: 工作流 ID
        # @type FlowId: String

        attr_accessor :FlowId
        
        def initialize(flowid=nil)
          @FlowId = flowid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
        end
      end

      # EnableTaskFlow返回参数结构体
      class EnableTaskFlowResponse < TencentCloud::Common::AbstractModel
        # @param Result: true成功，false: 失败
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

      # EnableTask请求参数结构体
      class EnableTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 启用任务
        # @type TaskId: String

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # EnableTask返回参数结构体
      class EnableTaskResponse < TencentCloud::Common::AbstractModel
        # @param Result: 操作成功or失败
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

      # EnableUnitRoute请求参数结构体
      class EnableUnitRouteRequest < TencentCloud::Common::AbstractModel
        # @param Id: 网关实体ID
        # @type Id: String

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # EnableUnitRoute返回参数结构体
      class EnableUnitRouteResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果，成功失败
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # EnableUnitRule请求参数结构体
      class EnableUnitRuleRequest < TencentCloud::Common::AbstractModel
        # @param Id: 规则ID
        # @type Id: String

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # EnableUnitRule返回参数结构体
      class EnableUnitRuleResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 环境变量
      class Env < TencentCloud::Common::AbstractModel
        # @param Name: 环境变量名称
        # @type Name: String
        # @param Value: 环境变量值
        # @type Value: String
        # @param ValueFrom: k8s ValueFrom
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValueFrom: :class:`Tencentcloud::Tsf.v20180326.models.ValueFrom`

        attr_accessor :Name, :Value, :ValueFrom
        
        def initialize(name=nil, value=nil, valuefrom=nil)
          @Name = name
          @Value = value
          @ValueFrom = valuefrom
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
          unless params['ValueFrom'].nil?
            @ValueFrom = ValueFrom.new
            @ValueFrom.deserialize(params['ValueFrom'])
          end
        end
      end

      # ExecuteTaskFlow请求参数结构体
      class ExecuteTaskFlowRequest < TencentCloud::Common::AbstractModel
        # @param FlowId: 工作流 ID
        # @type FlowId: String

        attr_accessor :FlowId
        
        def initialize(flowid=nil)
          @FlowId = flowid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
        end
      end

      # ExecuteTaskFlow返回参数结构体
      class ExecuteTaskFlowResponse < TencentCloud::Common::AbstractModel
        # @param Result: 工作流批次ID
        # @type Result: String
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

      # ExecuteTask请求参数结构体
      class ExecuteTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID。
        # @type TaskId: String

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # ExecuteTask返回参数结构体
      class ExecuteTaskResponse < TencentCloud::Common::AbstractModel
        # @param Result: 成功/失败
        # @type Result: String
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

      # ExpandGroup请求参数结构体
      class ExpandGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID
        # @type GroupId: String
        # @param InstanceIdList: 扩容的机器实例ID列表
        # @type InstanceIdList: Array

        attr_accessor :GroupId, :InstanceIdList
        
        def initialize(groupid=nil, instanceidlist=nil)
          @GroupId = groupid
          @InstanceIdList = instanceidlist
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @InstanceIdList = params['InstanceIdList']
        end
      end

      # ExpandGroup返回参数结构体
      class ExpandGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TaskId`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TaskId.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 容器 env 的 FieldRef
      class FieldRef < TencentCloud::Common::AbstractModel
        # @param FieldPath: k8s 的 FieldPath
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FieldPath: String

        attr_accessor :FieldPath
        
        def initialize(fieldpath=nil)
          @FieldPath = fieldpath
        end

        def deserialize(params)
          @FieldPath = params['FieldPath']
        end
      end

      # 文件配置项
      class FileConfig < TencentCloud::Common::AbstractModel
        # @param ConfigId: 配置项ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigId: String
        # @param ConfigName: 配置项名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigName: String
        # @param ConfigVersion: 配置项版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigVersion: String
        # @param ConfigVersionDesc: 配置项版本描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigVersionDesc: String
        # @param ConfigFileName: 配置项文件名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigFileName: String
        # @param ConfigFileValue: 配置项文件内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigFileValue: String
        # @param ConfigFileCode: 配置项文件编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigFileCode: String
        # @param CreationTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreationTime: String
        # @param ApplicationId: 配置项归属应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param ApplicationName: 应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationName: String
        # @param DeleteFlag: 删除标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeleteFlag: Boolean
        # @param ConfigVersionCount: 配置项版本数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigVersionCount: Integer
        # @param LastUpdateTime: 配置项最后更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastUpdateTime: String
        # @param ConfigFilePath: 发布路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigFilePath: String
        # @param ConfigPostCmd: 后置命令
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigPostCmd: String
        # @param ConfigFileValueLength: 配置项文件长度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigFileValueLength: Integer

        attr_accessor :ConfigId, :ConfigName, :ConfigVersion, :ConfigVersionDesc, :ConfigFileName, :ConfigFileValue, :ConfigFileCode, :CreationTime, :ApplicationId, :ApplicationName, :DeleteFlag, :ConfigVersionCount, :LastUpdateTime, :ConfigFilePath, :ConfigPostCmd, :ConfigFileValueLength
        
        def initialize(configid=nil, configname=nil, configversion=nil, configversiondesc=nil, configfilename=nil, configfilevalue=nil, configfilecode=nil, creationtime=nil, applicationid=nil, applicationname=nil, deleteflag=nil, configversioncount=nil, lastupdatetime=nil, configfilepath=nil, configpostcmd=nil, configfilevaluelength=nil)
          @ConfigId = configid
          @ConfigName = configname
          @ConfigVersion = configversion
          @ConfigVersionDesc = configversiondesc
          @ConfigFileName = configfilename
          @ConfigFileValue = configfilevalue
          @ConfigFileCode = configfilecode
          @CreationTime = creationtime
          @ApplicationId = applicationid
          @ApplicationName = applicationname
          @DeleteFlag = deleteflag
          @ConfigVersionCount = configversioncount
          @LastUpdateTime = lastupdatetime
          @ConfigFilePath = configfilepath
          @ConfigPostCmd = configpostcmd
          @ConfigFileValueLength = configfilevaluelength
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
          @ConfigName = params['ConfigName']
          @ConfigVersion = params['ConfigVersion']
          @ConfigVersionDesc = params['ConfigVersionDesc']
          @ConfigFileName = params['ConfigFileName']
          @ConfigFileValue = params['ConfigFileValue']
          @ConfigFileCode = params['ConfigFileCode']
          @CreationTime = params['CreationTime']
          @ApplicationId = params['ApplicationId']
          @ApplicationName = params['ApplicationName']
          @DeleteFlag = params['DeleteFlag']
          @ConfigVersionCount = params['ConfigVersionCount']
          @LastUpdateTime = params['LastUpdateTime']
          @ConfigFilePath = params['ConfigFilePath']
          @ConfigPostCmd = params['ConfigPostCmd']
          @ConfigFileValueLength = params['ConfigFileValueLength']
        end
      end

      # 文件配置项发布信息
      class FileConfigRelease < TencentCloud::Common::AbstractModel
        # @param ConfigReleaseId: 配置项发布ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigReleaseId: String
        # @param ConfigId: 配置项ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigId: String
        # @param ConfigName: 配置项名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigName: String
        # @param ConfigVersion: 配置项版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigVersion: String
        # @param ReleaseDesc: 发布描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReleaseDesc: String
        # @param ReleaseTime: 发布时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReleaseTime: String
        # @param GroupId: 部署组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String
        # @param GroupName: 部署组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param NamespaceId: 命名空间ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceId: String
        # @param NamespaceName: 命名空间名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceName: String
        # @param ClusterId: 集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String

        attr_accessor :ConfigReleaseId, :ConfigId, :ConfigName, :ConfigVersion, :ReleaseDesc, :ReleaseTime, :GroupId, :GroupName, :NamespaceId, :NamespaceName, :ClusterId, :ClusterName
        
        def initialize(configreleaseid=nil, configid=nil, configname=nil, configversion=nil, releasedesc=nil, releasetime=nil, groupid=nil, groupname=nil, namespaceid=nil, namespacename=nil, clusterid=nil, clustername=nil)
          @ConfigReleaseId = configreleaseid
          @ConfigId = configid
          @ConfigName = configname
          @ConfigVersion = configversion
          @ReleaseDesc = releasedesc
          @ReleaseTime = releasetime
          @GroupId = groupid
          @GroupName = groupname
          @NamespaceId = namespaceid
          @NamespaceName = namespacename
          @ClusterId = clusterid
          @ClusterName = clustername
        end

        def deserialize(params)
          @ConfigReleaseId = params['ConfigReleaseId']
          @ConfigId = params['ConfigId']
          @ConfigName = params['ConfigName']
          @ConfigVersion = params['ConfigVersion']
          @ReleaseDesc = params['ReleaseDesc']
          @ReleaseTime = params['ReleaseTime']
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @NamespaceId = params['NamespaceId']
          @NamespaceName = params['NamespaceName']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
        end
      end

      # 用于请求参数中的条件过滤字段
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤条件名
        # @type Name: String
        # @param Values: 过滤条件匹配值，几个条件间是或关系
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

      # 网关分组简单信息
      class GatewayApiGroupVo < TencentCloud::Common::AbstractModel
        # @param GroupId: 分组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String
        # @param GroupName: 分组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param GroupApiCount: 分组下API个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupApiCount: Integer
        # @param GroupApis: 分组API列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupApis: Array
        # @param GatewayInstanceType: 网关实例的类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GatewayInstanceType: String
        # @param GatewayInstanceId: 网关实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GatewayInstanceId: String

        attr_accessor :GroupId, :GroupName, :GroupApiCount, :GroupApis, :GatewayInstanceType, :GatewayInstanceId
        
        def initialize(groupid=nil, groupname=nil, groupapicount=nil, groupapis=nil, gatewayinstancetype=nil, gatewayinstanceid=nil)
          @GroupId = groupid
          @GroupName = groupname
          @GroupApiCount = groupapicount
          @GroupApis = groupapis
          @GatewayInstanceType = gatewayinstancetype
          @GatewayInstanceId = gatewayinstanceid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @GroupApiCount = params['GroupApiCount']
          unless params['GroupApis'].nil?
            @GroupApis = []
            params['GroupApis'].each do |i|
              gatewaygroupapivo_tmp = GatewayGroupApiVo.new
              gatewaygroupapivo_tmp.deserialize(i)
              @GroupApis << gatewaygroupapivo_tmp
            end
          end
          @GatewayInstanceType = params['GatewayInstanceType']
          @GatewayInstanceId = params['GatewayInstanceId']
        end
      end

      # TSF Envoy网关服务配置
      class GatewayConfig < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # api分组已绑定的网关部署组
      class GatewayDeployGroup < TencentCloud::Common::AbstractModel
        # @param DeployGroupId: 网关部署组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployGroupId: String
        # @param DeployGroupName: 网关部署组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployGroupName: String
        # @param ApplicationId: 应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param ApplicationName: 应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationName: String
        # @param ApplicationType: 应用分类：V：虚拟机应用，C：容器应用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationType: String
        # @param GroupStatus: 部署组应用状态,取值: Running、Waiting、Paused、Updating、RollingBack、Abnormal、Unknown
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupStatus: String
        # @param ClusterType: 集群类型，C ：容器，V：虚拟机
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterType: String

        attr_accessor :DeployGroupId, :DeployGroupName, :ApplicationId, :ApplicationName, :ApplicationType, :GroupStatus, :ClusterType
        
        def initialize(deploygroupid=nil, deploygroupname=nil, applicationid=nil, applicationname=nil, applicationtype=nil, groupstatus=nil, clustertype=nil)
          @DeployGroupId = deploygroupid
          @DeployGroupName = deploygroupname
          @ApplicationId = applicationid
          @ApplicationName = applicationname
          @ApplicationType = applicationtype
          @GroupStatus = groupstatus
          @ClusterType = clustertype
        end

        def deserialize(params)
          @DeployGroupId = params['DeployGroupId']
          @DeployGroupName = params['DeployGroupName']
          @ApplicationId = params['ApplicationId']
          @ApplicationName = params['ApplicationName']
          @ApplicationType = params['ApplicationType']
          @GroupStatus = params['GroupStatus']
          @ClusterType = params['ClusterType']
        end
      end

      # 网关API简单信息
      class GatewayGroupApiVo < TencentCloud::Common::AbstractModel
        # @param ApiId: API ID
        # @type ApiId: String
        # @param Path: API 请求路径
        # @type Path: String
        # @param MicroserviceName: API 微服务名称
        # @type MicroserviceName: String
        # @param Method: API 请求方法
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Method: String
        # @param NamespaceName: 命名空间名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceName: String

        attr_accessor :ApiId, :Path, :MicroserviceName, :Method, :NamespaceName
        
        def initialize(apiid=nil, path=nil, microservicename=nil, method=nil, namespacename=nil)
          @ApiId = apiid
          @Path = path
          @MicroserviceName = microservicename
          @Method = method
          @NamespaceName = namespacename
        end

        def deserialize(params)
          @ApiId = params['ApiId']
          @Path = params['Path']
          @MicroserviceName = params['MicroserviceName']
          @Method = params['Method']
          @NamespaceName = params['NamespaceName']
        end
      end

      # 网关部署组ID和网关API分组ID元组
      class GatewayGroupIds < TencentCloud::Common::AbstractModel
        # @param GatewayDeployGroupId: 网关部署组ID
        # @type GatewayDeployGroupId: String
        # @param GroupId: 分组id
        # @type GroupId: String

        attr_accessor :GatewayDeployGroupId, :GroupId
        
        def initialize(gatewaydeploygroupid=nil, groupid=nil)
          @GatewayDeployGroupId = gatewaydeploygroupid
          @GroupId = groupid
        end

        def deserialize(params)
          @GatewayDeployGroupId = params['GatewayDeployGroupId']
          @GroupId = params['GroupId']
        end
      end

      # 微服务网关插件实例对象
      class GatewayPlugin < TencentCloud::Common::AbstractModel
        # @param Id: 网关插件id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param Name: 插件名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Type: 插件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Description: 插件描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CreatedTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param UpdatedTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedTime: String
        # @param Status: 发布状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String

        attr_accessor :Id, :Name, :Type, :Description, :CreatedTime, :UpdatedTime, :Status
        
        def initialize(id=nil, name=nil, type=nil, description=nil, createdtime=nil, updatedtime=nil, status=nil)
          @Id = id
          @Name = name
          @Type = type
          @Description = description
          @CreatedTime = createdtime
          @UpdatedTime = updatedtime
          @Status = status
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Type = params['Type']
          @Description = params['Description']
          @CreatedTime = params['CreatedTime']
          @UpdatedTime = params['UpdatedTime']
          @Status = params['Status']
        end
      end

      # 微服务网关插件绑定对象
      class GatewayPluginBoundParam < TencentCloud::Common::AbstractModel
        # @param PluginId: 插件id
        # @type PluginId: String
        # @param ScopeType: 插件绑定到的对象类型:group/api
        # @type ScopeType: String
        # @param ScopeValue: 插件绑定到的对象主键值，例如分组的ID/API的ID
        # @type ScopeValue: String

        attr_accessor :PluginId, :ScopeType, :ScopeValue
        
        def initialize(pluginid=nil, scopetype=nil, scopevalue=nil)
          @PluginId = pluginid
          @ScopeType = scopetype
          @ScopeValue = scopevalue
        end

        def deserialize(params)
          @PluginId = params['PluginId']
          @ScopeType = params['ScopeType']
          @ScopeValue = params['ScopeValue']
        end
      end

      # 网关部署组、分组、API列表数据
      class GatewayVo < TencentCloud::Common::AbstractModel
        # @param GatewayDeployGroupId: 网关部署组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GatewayDeployGroupId: String
        # @param GatewayDeployGroupName: 网关部署组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GatewayDeployGroupName: String
        # @param GroupNum: API 分组个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupNum: Integer
        # @param Groups: API 分组列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Groups: Array

        attr_accessor :GatewayDeployGroupId, :GatewayDeployGroupName, :GroupNum, :Groups
        
        def initialize(gatewaydeploygroupid=nil, gatewaydeploygroupname=nil, groupnum=nil, groups=nil)
          @GatewayDeployGroupId = gatewaydeploygroupid
          @GatewayDeployGroupName = gatewaydeploygroupname
          @GroupNum = groupnum
          @Groups = groups
        end

        def deserialize(params)
          @GatewayDeployGroupId = params['GatewayDeployGroupId']
          @GatewayDeployGroupName = params['GatewayDeployGroupName']
          @GroupNum = params['GroupNum']
          unless params['Groups'].nil?
            @Groups = []
            params['Groups'].each do |i|
              gatewayapigroupvo_tmp = GatewayApiGroupVo.new
              gatewayapigroupvo_tmp.deserialize(i)
              @Groups << gatewayapigroupvo_tmp
            end
          end
        end
      end

      # API监控明细数据
      class GroupApiUseStatistics < TencentCloud::Common::AbstractModel
        # @param TopStatusCode: 总调用数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopStatusCode: Array
        # @param TopTimeCost: 平均错误率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopTimeCost: Array
        # @param Quantile: 分位值对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Quantile: :class:`Tencentcloud::Tsf.v20180326.models.QuantileEntity`

        attr_accessor :TopStatusCode, :TopTimeCost, :Quantile
        
        def initialize(topstatuscode=nil, toptimecost=nil, quantile=nil)
          @TopStatusCode = topstatuscode
          @TopTimeCost = toptimecost
          @Quantile = quantile
        end

        def deserialize(params)
          unless params['TopStatusCode'].nil?
            @TopStatusCode = []
            params['TopStatusCode'].each do |i|
              apiusestatisticsentity_tmp = ApiUseStatisticsEntity.new
              apiusestatisticsentity_tmp.deserialize(i)
              @TopStatusCode << apiusestatisticsentity_tmp
            end
          end
          unless params['TopTimeCost'].nil?
            @TopTimeCost = []
            params['TopTimeCost'].each do |i|
              apiusestatisticsentity_tmp = ApiUseStatisticsEntity.new
              apiusestatisticsentity_tmp.deserialize(i)
              @TopTimeCost << apiusestatisticsentity_tmp
            end
          end
          unless params['Quantile'].nil?
            @Quantile = QuantileEntity.new
            @Quantile.deserialize(params['Quantile'])
          end
        end
      end

      # 分组日使用统计对象
      class GroupDailyUseStatistics < TencentCloud::Common::AbstractModel
        # @param TopReqAmount: 总调用数
        # @type TopReqAmount: Array
        # @param TopFailureRate: 平均错误率
        # @type TopFailureRate: Array
        # @param TopAvgTimeCost: 平均响应耗时
        # @type TopAvgTimeCost: Array

        attr_accessor :TopReqAmount, :TopFailureRate, :TopAvgTimeCost
        
        def initialize(topreqamount=nil, topfailurerate=nil, topavgtimecost=nil)
          @TopReqAmount = topreqamount
          @TopFailureRate = topfailurerate
          @TopAvgTimeCost = topavgtimecost
        end

        def deserialize(params)
          unless params['TopReqAmount'].nil?
            @TopReqAmount = []
            params['TopReqAmount'].each do |i|
              groupusestatisticsentity_tmp = GroupUseStatisticsEntity.new
              groupusestatisticsentity_tmp.deserialize(i)
              @TopReqAmount << groupusestatisticsentity_tmp
            end
          end
          unless params['TopFailureRate'].nil?
            @TopFailureRate = []
            params['TopFailureRate'].each do |i|
              groupusestatisticsentity_tmp = GroupUseStatisticsEntity.new
              groupusestatisticsentity_tmp.deserialize(i)
              @TopFailureRate << groupusestatisticsentity_tmp
            end
          end
          unless params['TopAvgTimeCost'].nil?
            @TopAvgTimeCost = []
            params['TopAvgTimeCost'].each do |i|
              groupusestatisticsentity_tmp = GroupUseStatisticsEntity.new
              groupusestatisticsentity_tmp.deserialize(i)
              @TopAvgTimeCost << groupusestatisticsentity_tmp
            end
          end
        end
      end

      # 日志投递kafka用，描述部署组信息
      class GroupInfo < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组id
        # @type GroupId: String
        # @param GroupName: 部署组名称
        # @type GroupName: String
        # @param ClusterType: 集群类型
        # @type ClusterType: String
        # @param ClusterId: 集群id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String
        # @param NamespaceName: 命名空间名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceName: String
        # @param AssociateTime: 绑定时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssociateTime: String

        attr_accessor :GroupId, :GroupName, :ClusterType, :ClusterId, :ClusterName, :NamespaceName, :AssociateTime
        
        def initialize(groupid=nil, groupname=nil, clustertype=nil, clusterid=nil, clustername=nil, namespacename=nil, associatetime=nil)
          @GroupId = groupid
          @GroupName = groupname
          @ClusterType = clustertype
          @ClusterId = clusterid
          @ClusterName = clustername
          @NamespaceName = namespacename
          @AssociateTime = associatetime
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @ClusterType = params['ClusterType']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @NamespaceName = params['NamespaceName']
          @AssociateTime = params['AssociateTime']
        end
      end

      # 部署组实例列表
      class GroupPod < TencentCloud::Common::AbstractModel
        # @param PodName: 实例名称(对应到kubernetes的pod名称)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodName: String
        # @param PodId: 实例ID(对应到kubernetes的pod id)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodId: String
        # @param Status: 实例状态，请参考后面的实例以及容器的状态定义。启动中（pod 未 ready）：Starting；运行中：Running；异常：Abnormal；停止：Stopped；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Reason: 实例处于当前状态的原因，例如容器下载镜像失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reason: String
        # @param NodeIp: 主机IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeIp: String
        # @param Ip: 实例IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ip: String
        # @param RestartCount: 实例中容器的重启次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RestartCount: Integer
        # @param ReadyCount: 实例中已就绪容器的个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReadyCount: Integer
        # @param Runtime: 运行时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Runtime: String
        # @param CreatedAt: 实例启动时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param ServiceInstanceStatus: 服务实例状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceInstanceStatus: String
        # @param InstanceAvailableStatus: 机器实例可使用状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceAvailableStatus: String
        # @param InstanceStatus: 机器实例状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceStatus: String
        # @param NodeInstanceId: 节点实例id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeInstanceId: String

        attr_accessor :PodName, :PodId, :Status, :Reason, :NodeIp, :Ip, :RestartCount, :ReadyCount, :Runtime, :CreatedAt, :ServiceInstanceStatus, :InstanceAvailableStatus, :InstanceStatus, :NodeInstanceId
        
        def initialize(podname=nil, podid=nil, status=nil, reason=nil, nodeip=nil, ip=nil, restartcount=nil, readycount=nil, runtime=nil, createdat=nil, serviceinstancestatus=nil, instanceavailablestatus=nil, instancestatus=nil, nodeinstanceid=nil)
          @PodName = podname
          @PodId = podid
          @Status = status
          @Reason = reason
          @NodeIp = nodeip
          @Ip = ip
          @RestartCount = restartcount
          @ReadyCount = readycount
          @Runtime = runtime
          @CreatedAt = createdat
          @ServiceInstanceStatus = serviceinstancestatus
          @InstanceAvailableStatus = instanceavailablestatus
          @InstanceStatus = instancestatus
          @NodeInstanceId = nodeinstanceid
        end

        def deserialize(params)
          @PodName = params['PodName']
          @PodId = params['PodId']
          @Status = params['Status']
          @Reason = params['Reason']
          @NodeIp = params['NodeIp']
          @Ip = params['Ip']
          @RestartCount = params['RestartCount']
          @ReadyCount = params['ReadyCount']
          @Runtime = params['Runtime']
          @CreatedAt = params['CreatedAt']
          @ServiceInstanceStatus = params['ServiceInstanceStatus']
          @InstanceAvailableStatus = params['InstanceAvailableStatus']
          @InstanceStatus = params['InstanceStatus']
          @NodeInstanceId = params['NodeInstanceId']
        end
      end

      # 部署组实例列表
      class GroupPodResult < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Content: 列表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              grouppod_tmp = GroupPod.new
              grouppod_tmp.deserialize(i)
              @Content << grouppod_tmp
            end
          end
        end
      end

      # 部署组配置发布相关信息
      class GroupRelease < TencentCloud::Common::AbstractModel
        # @param PackageId: 程序包ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageId: String
        # @param PackageName: 程序包名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageName: String
        # @param PackageVersion: 程序包版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageVersion: String
        # @param RepoName: 镜像名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepoName: String
        # @param TagName: 镜像版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagName: String
        # @param PublicConfigReleaseList: 已发布的全局配置列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicConfigReleaseList: Array
        # @param ConfigReleaseList: 已发布的应用配置列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigReleaseList: Array
        # @param FileConfigReleaseList: 已发布的文件配置列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileConfigReleaseList: Array

        attr_accessor :PackageId, :PackageName, :PackageVersion, :RepoName, :TagName, :PublicConfigReleaseList, :ConfigReleaseList, :FileConfigReleaseList
        
        def initialize(packageid=nil, packagename=nil, packageversion=nil, reponame=nil, tagname=nil, publicconfigreleaselist=nil, configreleaselist=nil, fileconfigreleaselist=nil)
          @PackageId = packageid
          @PackageName = packagename
          @PackageVersion = packageversion
          @RepoName = reponame
          @TagName = tagname
          @PublicConfigReleaseList = publicconfigreleaselist
          @ConfigReleaseList = configreleaselist
          @FileConfigReleaseList = fileconfigreleaselist
        end

        def deserialize(params)
          @PackageId = params['PackageId']
          @PackageName = params['PackageName']
          @PackageVersion = params['PackageVersion']
          @RepoName = params['RepoName']
          @TagName = params['TagName']
          unless params['PublicConfigReleaseList'].nil?
            @PublicConfigReleaseList = []
            params['PublicConfigReleaseList'].each do |i|
              configrelease_tmp = ConfigRelease.new
              configrelease_tmp.deserialize(i)
              @PublicConfigReleaseList << configrelease_tmp
            end
          end
          unless params['ConfigReleaseList'].nil?
            @ConfigReleaseList = []
            params['ConfigReleaseList'].each do |i|
              configrelease_tmp = ConfigRelease.new
              configrelease_tmp.deserialize(i)
              @ConfigReleaseList << configrelease_tmp
            end
          end
          unless params['FileConfigReleaseList'].nil?
            @FileConfigReleaseList = []
            params['FileConfigReleaseList'].each do |i|
              fileconfigrelease_tmp = FileConfigRelease.new
              fileconfigrelease_tmp.deserialize(i)
              @FileConfigReleaseList << fileconfigrelease_tmp
            end
          end
        end
      end

      # 单元化API使用详情统计对象列表
      class GroupUnitApiDailyUseStatistics < TencentCloud::Common::AbstractModel
        # @param NamespaceId: 命名空间ID
        # @type NamespaceId: String
        # @param NamespaceName: 命名空间名称
        # @type NamespaceName: String
        # @param SumReqAmount: 该API在该命名空间下的总调用次数
        # @type SumReqAmount: String
        # @param AvgFailureRate: 该API在该命名空间下的平均错误率
        # @type AvgFailureRate: String
        # @param AvgTimeCost: 该API在该命名空间下的平均响应时间
        # @type AvgTimeCost: String
        # @param MetricDataPointMap: 监控数据曲线点位图Map集合
        # @type MetricDataPointMap: :class:`Tencentcloud::Tsf.v20180326.models.MetricDataPointMap`
        # @param TopStatusCode: 状态码分布详情
        # @type TopStatusCode: Array
        # @param TopTimeCost: 耗时分布详情
        # @type TopTimeCost: Array
        # @param Quantile: 分位值对象
        # @type Quantile: :class:`Tencentcloud::Tsf.v20180326.models.QuantileEntity`

        attr_accessor :NamespaceId, :NamespaceName, :SumReqAmount, :AvgFailureRate, :AvgTimeCost, :MetricDataPointMap, :TopStatusCode, :TopTimeCost, :Quantile
        
        def initialize(namespaceid=nil, namespacename=nil, sumreqamount=nil, avgfailurerate=nil, avgtimecost=nil, metricdatapointmap=nil, topstatuscode=nil, toptimecost=nil, quantile=nil)
          @NamespaceId = namespaceid
          @NamespaceName = namespacename
          @SumReqAmount = sumreqamount
          @AvgFailureRate = avgfailurerate
          @AvgTimeCost = avgtimecost
          @MetricDataPointMap = metricdatapointmap
          @TopStatusCode = topstatuscode
          @TopTimeCost = toptimecost
          @Quantile = quantile
        end

        def deserialize(params)
          @NamespaceId = params['NamespaceId']
          @NamespaceName = params['NamespaceName']
          @SumReqAmount = params['SumReqAmount']
          @AvgFailureRate = params['AvgFailureRate']
          @AvgTimeCost = params['AvgTimeCost']
          unless params['MetricDataPointMap'].nil?
            @MetricDataPointMap = MetricDataPointMap.new
            @MetricDataPointMap.deserialize(params['MetricDataPointMap'])
          end
          unless params['TopStatusCode'].nil?
            @TopStatusCode = []
            params['TopStatusCode'].each do |i|
              apiusestatisticsentity_tmp = ApiUseStatisticsEntity.new
              apiusestatisticsentity_tmp.deserialize(i)
              @TopStatusCode << apiusestatisticsentity_tmp
            end
          end
          unless params['TopTimeCost'].nil?
            @TopTimeCost = []
            params['TopTimeCost'].each do |i|
              apiusestatisticsentity_tmp = ApiUseStatisticsEntity.new
              apiusestatisticsentity_tmp.deserialize(i)
              @TopTimeCost << apiusestatisticsentity_tmp
            end
          end
          unless params['Quantile'].nil?
            @Quantile = QuantileEntity.new
            @Quantile.deserialize(params['Quantile'])
          end
        end
      end

      # 查询网关API监控明细数据（单元化网关使用详情）
      class GroupUnitApiUseStatistics < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param Content: 查询网关API监控明细对象集合
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              groupunitapidailyusestatistics_tmp = GroupUnitApiDailyUseStatistics.new
              groupunitapidailyusestatistics_tmp.deserialize(i)
              @Content << groupunitapidailyusestatistics_tmp
            end
          end
        end
      end

      # API分组日使用统计对象数据点
      class GroupUseStatisticsEntity < TencentCloud::Common::AbstractModel
        # @param ApiPath: API 路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiPath: String
        # @param ServiceName: 服务名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceName: String
        # @param Value: 统计值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param ApiId: API ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiId: String

        attr_accessor :ApiPath, :ServiceName, :Value, :ApiId
        
        def initialize(apipath=nil, servicename=nil, value=nil, apiid=nil)
          @ApiPath = apipath
          @ServiceName = servicename
          @Value = value
          @ApiId = apiid
        end

        def deserialize(params)
          @ApiPath = params['ApiPath']
          @ServiceName = params['ServiceName']
          @Value = params['Value']
          @ApiId = params['ApiId']
        end
      end

      # 健康检查配置
      class HealthCheckConfig < TencentCloud::Common::AbstractModel
        # @param Path: 健康检查路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String

        attr_accessor :Path
        
        def initialize(path=nil)
          @Path = path
        end

        def deserialize(params)
          @Path = params['Path']
        end
      end

      # 健康检查配置信息，若不指定该参数，则默认不设置健康检查。
      class HealthCheckSetting < TencentCloud::Common::AbstractModel
        # @param ActionType: 健康检查方法。HTTP：通过 HTTP 接口检查；CMD：通过执行命令检查；TCP：通过建立 TCP 连接检查。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionType: String
        # @param InitialDelaySeconds: 容器延时启动健康检查的时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InitialDelaySeconds: Integer
        # @param TimeoutSeconds: 每次健康检查响应的最大超时时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeoutSeconds: Integer
        # @param PeriodSeconds: 进行健康检查的时间间隔。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PeriodSeconds: Integer
        # @param SuccessThreshold: 表示后端容器从失败到成功的连续健康检查成功次数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessThreshold: Integer
        # @param FailureThreshold: 表示后端容器从成功到失败的连续健康检查成功次数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailureThreshold: Integer
        # @param Scheme: HTTP 健康检查方法使用的检查协议。支持HTTP、HTTPS。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Scheme: String
        # @param Port: 健康检查端口，范围 1~65535 。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param Path: HTTP 健康检查接口的请求路径。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param Command: 执行命令检查方式，执行的命令。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Command: Array
        # @param Type: TSF_DEFAULT：tsf 默认就绪探针。K8S_NATIVE：k8s 原生探针。不填默认为 k8s 原生探针。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String

        attr_accessor :ActionType, :InitialDelaySeconds, :TimeoutSeconds, :PeriodSeconds, :SuccessThreshold, :FailureThreshold, :Scheme, :Port, :Path, :Command, :Type
        
        def initialize(actiontype=nil, initialdelayseconds=nil, timeoutseconds=nil, periodseconds=nil, successthreshold=nil, failurethreshold=nil, scheme=nil, port=nil, path=nil, command=nil, type=nil)
          @ActionType = actiontype
          @InitialDelaySeconds = initialdelayseconds
          @TimeoutSeconds = timeoutseconds
          @PeriodSeconds = periodseconds
          @SuccessThreshold = successthreshold
          @FailureThreshold = failurethreshold
          @Scheme = scheme
          @Port = port
          @Path = path
          @Command = command
          @Type = type
        end

        def deserialize(params)
          @ActionType = params['ActionType']
          @InitialDelaySeconds = params['InitialDelaySeconds']
          @TimeoutSeconds = params['TimeoutSeconds']
          @PeriodSeconds = params['PeriodSeconds']
          @SuccessThreshold = params['SuccessThreshold']
          @FailureThreshold = params['FailureThreshold']
          @Scheme = params['Scheme']
          @Port = params['Port']
          @Path = params['Path']
          @Command = params['Command']
          @Type = params['Type']
        end
      end

      # 健康检查参数
      class HealthCheckSettings < TencentCloud::Common::AbstractModel
        # @param LivenessProbe: 存活健康检查
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LivenessProbe: :class:`Tencentcloud::Tsf.v20180326.models.HealthCheckSetting`
        # @param ReadinessProbe: 就绪健康检查
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReadinessProbe: :class:`Tencentcloud::Tsf.v20180326.models.HealthCheckSetting`

        attr_accessor :LivenessProbe, :ReadinessProbe
        
        def initialize(livenessprobe=nil, readinessprobe=nil)
          @LivenessProbe = livenessprobe
          @ReadinessProbe = readinessprobe
        end

        def deserialize(params)
          unless params['LivenessProbe'].nil?
            @LivenessProbe = HealthCheckSetting.new
            @LivenessProbe.deserialize(params['LivenessProbe'])
          end
          unless params['ReadinessProbe'].nil?
            @ReadinessProbe = HealthCheckSetting.new
            @ReadinessProbe.deserialize(params['ReadinessProbe'])
          end
        end
      end

      # 镜像仓库
      class ImageRepository < TencentCloud::Common::AbstractModel
        # @param Reponame: 仓库名,含命名空间,如tsf/nginx
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reponame: String
        # @param Repotype: 仓库类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Repotype: String
        # @param TagCount: 镜像版本数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagCount: Integer
        # @param IsPublic: 是否公共,1:公有,0:私有
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsPublic: Integer
        # @param IsUserFavor: 是否被用户收藏。true：是，false：否
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUserFavor: Boolean
        # @param IsQcloudOfficial: 是否是腾讯云官方仓库。 是否是腾讯云官方仓库。true：是，false：否
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsQcloudOfficial: Boolean
        # @param FavorCount: 被所有用户收藏次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FavorCount: Integer
        # @param PullCount: 拉取次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PullCount: Integer
        # @param Description: 描述内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CreationTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreationTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param TcrRepoInfo: TcrRepoInfo值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TcrRepoInfo: :class:`Tencentcloud::Tsf.v20180326.models.TcrRepoInfo`
        # @param TcrBindingId: TcrBindingId值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TcrBindingId: Integer
        # @param ApplicationId: applicationid值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param ApplicationName: ApplicationName值（废弃）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationName: :class:`Tencentcloud::Tsf.v20180326.models.ScalableRule`
        # @param ApplicationNameReal: ApplicationName值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationNameReal: String
        # @param Public: 是否公共,1:公有,0:私有
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Public: Integer

        attr_accessor :Reponame, :Repotype, :TagCount, :IsPublic, :IsUserFavor, :IsQcloudOfficial, :FavorCount, :PullCount, :Description, :CreationTime, :UpdateTime, :TcrRepoInfo, :TcrBindingId, :ApplicationId, :ApplicationName, :ApplicationNameReal, :Public
        
        def initialize(reponame=nil, repotype=nil, tagcount=nil, ispublic=nil, isuserfavor=nil, isqcloudofficial=nil, favorcount=nil, pullcount=nil, description=nil, creationtime=nil, updatetime=nil, tcrrepoinfo=nil, tcrbindingid=nil, applicationid=nil, applicationname=nil, applicationnamereal=nil, public=nil)
          @Reponame = reponame
          @Repotype = repotype
          @TagCount = tagcount
          @IsPublic = ispublic
          @IsUserFavor = isuserfavor
          @IsQcloudOfficial = isqcloudofficial
          @FavorCount = favorcount
          @PullCount = pullcount
          @Description = description
          @CreationTime = creationtime
          @UpdateTime = updatetime
          @TcrRepoInfo = tcrrepoinfo
          @TcrBindingId = tcrbindingid
          @ApplicationId = applicationid
          @ApplicationName = applicationname
          @ApplicationNameReal = applicationnamereal
          @Public = public
        end

        def deserialize(params)
          @Reponame = params['Reponame']
          @Repotype = params['Repotype']
          @TagCount = params['TagCount']
          @IsPublic = params['IsPublic']
          @IsUserFavor = params['IsUserFavor']
          @IsQcloudOfficial = params['IsQcloudOfficial']
          @FavorCount = params['FavorCount']
          @PullCount = params['PullCount']
          @Description = params['Description']
          @CreationTime = params['CreationTime']
          @UpdateTime = params['UpdateTime']
          unless params['TcrRepoInfo'].nil?
            @TcrRepoInfo = TcrRepoInfo.new
            @TcrRepoInfo.deserialize(params['TcrRepoInfo'])
          end
          @TcrBindingId = params['TcrBindingId']
          @ApplicationId = params['ApplicationId']
          unless params['ApplicationName'].nil?
            @ApplicationName = ScalableRule.new
            @ApplicationName.deserialize(params['ApplicationName'])
          end
          @ApplicationNameReal = params['ApplicationNameReal']
          @Public = params['Public']
        end
      end

      # 镜像仓库列表
      class ImageRepositoryResult < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Server: 镜像服务器地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Server: String
        # @param Content: 列表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array

        attr_accessor :TotalCount, :Server, :Content
        
        def initialize(totalcount=nil, server=nil, content=nil)
          @TotalCount = totalcount
          @Server = server
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Server = params['Server']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              imagerepository_tmp = ImageRepository.new
              imagerepository_tmp.deserialize(i)
              @Content << imagerepository_tmp
            end
          end
        end
      end

      # 列表信息
      class ImageTag < TencentCloud::Common::AbstractModel
        # @param RepoName: 仓库名
        # @type RepoName: String
        # @param TagName: 版本名称
        # @type TagName: String
        # @param TagId: 版本ID
        # @type TagId: String
        # @param ImageId: 镜像ID
        # @type ImageId: String
        # @param Size: 大小
        # @type Size: String
        # @param CreationTime: 创建时间
        # @type CreationTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Author: 镜像制作者
        # @type Author: String
        # @param Architecture: CPU架构
        # @type Architecture: String
        # @param DockerVersion: Docker客户端版本
        # @type DockerVersion: String
        # @param Os: 操作系统
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Os: String
        # @param PushTime: push时间
        # @type PushTime: String
        # @param SizeByte: 单位为字节
        # @type SizeByte: Integer
        # @param TcrRepoInfo: TcrRepoInfo值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TcrRepoInfo: :class:`Tencentcloud::Tsf.v20180326.models.TcrRepoInfo`

        attr_accessor :RepoName, :TagName, :TagId, :ImageId, :Size, :CreationTime, :UpdateTime, :Author, :Architecture, :DockerVersion, :Os, :PushTime, :SizeByte, :TcrRepoInfo
        
        def initialize(reponame=nil, tagname=nil, tagid=nil, imageid=nil, size=nil, creationtime=nil, updatetime=nil, author=nil, architecture=nil, dockerversion=nil, os=nil, pushtime=nil, sizebyte=nil, tcrrepoinfo=nil)
          @RepoName = reponame
          @TagName = tagname
          @TagId = tagid
          @ImageId = imageid
          @Size = size
          @CreationTime = creationtime
          @UpdateTime = updatetime
          @Author = author
          @Architecture = architecture
          @DockerVersion = dockerversion
          @Os = os
          @PushTime = pushtime
          @SizeByte = sizebyte
          @TcrRepoInfo = tcrrepoinfo
        end

        def deserialize(params)
          @RepoName = params['RepoName']
          @TagName = params['TagName']
          @TagId = params['TagId']
          @ImageId = params['ImageId']
          @Size = params['Size']
          @CreationTime = params['CreationTime']
          @UpdateTime = params['UpdateTime']
          @Author = params['Author']
          @Architecture = params['Architecture']
          @DockerVersion = params['DockerVersion']
          @Os = params['Os']
          @PushTime = params['PushTime']
          @SizeByte = params['SizeByte']
          unless params['TcrRepoInfo'].nil?
            @TcrRepoInfo = TcrRepoInfo.new
            @TcrRepoInfo.deserialize(params['TcrRepoInfo'])
          end
        end
      end

      # 镜像版本列表
      class ImageTagsResult < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param RepoName: 仓库名,含命名空间,如tsf/ngin
        # @type RepoName: String
        # @param Server: 镜像服务器地址
        # @type Server: String
        # @param Content: 列表信息
        # @type Content: Array

        attr_accessor :TotalCount, :RepoName, :Server, :Content
        
        def initialize(totalcount=nil, reponame=nil, server=nil, content=nil)
          @TotalCount = totalcount
          @RepoName = reponame
          @Server = server
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @RepoName = params['RepoName']
          @Server = params['Server']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              imagetag_tmp = ImageTag.new
              imagetag_tmp.deserialize(i)
              @Content << imagetag_tmp
            end
          end
        end
      end

      # 监控指标坐标
      class IndicatorCoord < TencentCloud::Common::AbstractModel
        # @param CoordX: 指标横坐标值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CoordX: String
        # @param CoordY: 指标纵坐标值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CoordY: String
        # @param CoordTag: 指标标签，用于标识附加信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CoordTag: String

        attr_accessor :CoordX, :CoordY, :CoordTag
        
        def initialize(coordx=nil, coordy=nil, coordtag=nil)
          @CoordX = coordx
          @CoordY = coordy
          @CoordTag = coordtag
        end

        def deserialize(params)
          @CoordX = params['CoordX']
          @CoordY = params['CoordY']
          @CoordTag = params['CoordTag']
        end
      end

      # 机器实例
      class Instance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 机器实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceName: 机器名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param LanIp: 机器内网地址IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LanIp: String
        # @param WanIp: 机器外网地址IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WanIp: String
        # @param InstanceDesc: 机器描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceDesc: String
        # @param ClusterId: 集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String
        # @param InstanceStatus: VM的状态 虚机：虚机的状态 容器：Pod所在虚机的状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceStatus: String
        # @param InstanceAvailableStatus: VM的可使用状态 虚机：虚机是否能够作为资源使用 容器：虚机是否能够作为资源部署POD
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceAvailableStatus: String
        # @param ServiceInstanceStatus: 服务下的服务实例的状态 虚机：应用是否可用 + Agent状态 容器：Pod状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceInstanceStatus: String
        # @param CountInTsf: 标识此instance是否已添加在tsf中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CountInTsf: Integer
        # @param GroupId: 机器所属部署组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String
        # @param ApplicationId: 机器所属应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param ApplicationName: 机器所属应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationName: String
        # @param InstanceCreatedTime: 机器实例在CVM的创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceCreatedTime: String
        # @param InstanceExpiredTime: 机器实例在CVM的过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceExpiredTime: String
        # @param InstanceChargeType: 机器实例在CVM的计费模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceChargeType: String
        # @param InstanceTotalCpu: 机器实例总CPU信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceTotalCpu: Float
        # @param InstanceTotalMem: 机器实例总内存信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceTotalMem: Float
        # @param InstanceUsedCpu: 机器实例使用的CPU信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceUsedCpu: Float
        # @param InstanceUsedMem: 机器实例使用的内存信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceUsedMem: Float
        # @param InstanceLimitCpu: 机器实例Limit CPU信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceLimitCpu: Float
        # @param InstanceLimitMem: 机器实例Limit 内存信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceLimitMem: Float
        # @param InstancePkgVersion: 包版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstancePkgVersion: String
        # @param ClusterType: 集群类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterType: String
        # @param RestrictState: 机器实例业务状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RestrictState: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param OperationState: 实例执行状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperationState: Integer
        # @param NamespaceId: NamespaceId Ns ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceId: String
        # @param InstanceZoneId: InstanceZoneId 可用区ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceZoneId: String
        # @param InstanceImportMode: InstanceImportMode 导入模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceImportMode: String
        # @param ApplicationType: ApplicationType应用类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationType: String
        # @param ApplicationResourceType: ApplicationResourceType 资源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationResourceType: String
        # @param ServiceSidecarStatus: sidecar状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceSidecarStatus: String
        # @param GroupName: 部署组名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param NamespaceName: NS名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceName: String
        # @param Reason: 健康检查原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reason: String
        # @param AgentVersion: agent版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentVersion: String
        # @param NodeInstanceId: 容器母机实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeInstanceId: String

        attr_accessor :InstanceId, :InstanceName, :LanIp, :WanIp, :InstanceDesc, :ClusterId, :ClusterName, :InstanceStatus, :InstanceAvailableStatus, :ServiceInstanceStatus, :CountInTsf, :GroupId, :ApplicationId, :ApplicationName, :InstanceCreatedTime, :InstanceExpiredTime, :InstanceChargeType, :InstanceTotalCpu, :InstanceTotalMem, :InstanceUsedCpu, :InstanceUsedMem, :InstanceLimitCpu, :InstanceLimitMem, :InstancePkgVersion, :ClusterType, :RestrictState, :UpdateTime, :OperationState, :NamespaceId, :InstanceZoneId, :InstanceImportMode, :ApplicationType, :ApplicationResourceType, :ServiceSidecarStatus, :GroupName, :NamespaceName, :Reason, :AgentVersion, :NodeInstanceId
        
        def initialize(instanceid=nil, instancename=nil, lanip=nil, wanip=nil, instancedesc=nil, clusterid=nil, clustername=nil, instancestatus=nil, instanceavailablestatus=nil, serviceinstancestatus=nil, countintsf=nil, groupid=nil, applicationid=nil, applicationname=nil, instancecreatedtime=nil, instanceexpiredtime=nil, instancechargetype=nil, instancetotalcpu=nil, instancetotalmem=nil, instanceusedcpu=nil, instanceusedmem=nil, instancelimitcpu=nil, instancelimitmem=nil, instancepkgversion=nil, clustertype=nil, restrictstate=nil, updatetime=nil, operationstate=nil, namespaceid=nil, instancezoneid=nil, instanceimportmode=nil, applicationtype=nil, applicationresourcetype=nil, servicesidecarstatus=nil, groupname=nil, namespacename=nil, reason=nil, agentversion=nil, nodeinstanceid=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @LanIp = lanip
          @WanIp = wanip
          @InstanceDesc = instancedesc
          @ClusterId = clusterid
          @ClusterName = clustername
          @InstanceStatus = instancestatus
          @InstanceAvailableStatus = instanceavailablestatus
          @ServiceInstanceStatus = serviceinstancestatus
          @CountInTsf = countintsf
          @GroupId = groupid
          @ApplicationId = applicationid
          @ApplicationName = applicationname
          @InstanceCreatedTime = instancecreatedtime
          @InstanceExpiredTime = instanceexpiredtime
          @InstanceChargeType = instancechargetype
          @InstanceTotalCpu = instancetotalcpu
          @InstanceTotalMem = instancetotalmem
          @InstanceUsedCpu = instanceusedcpu
          @InstanceUsedMem = instanceusedmem
          @InstanceLimitCpu = instancelimitcpu
          @InstanceLimitMem = instancelimitmem
          @InstancePkgVersion = instancepkgversion
          @ClusterType = clustertype
          @RestrictState = restrictstate
          @UpdateTime = updatetime
          @OperationState = operationstate
          @NamespaceId = namespaceid
          @InstanceZoneId = instancezoneid
          @InstanceImportMode = instanceimportmode
          @ApplicationType = applicationtype
          @ApplicationResourceType = applicationresourcetype
          @ServiceSidecarStatus = servicesidecarstatus
          @GroupName = groupname
          @NamespaceName = namespacename
          @Reason = reason
          @AgentVersion = agentversion
          @NodeInstanceId = nodeinstanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @LanIp = params['LanIp']
          @WanIp = params['WanIp']
          @InstanceDesc = params['InstanceDesc']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @InstanceStatus = params['InstanceStatus']
          @InstanceAvailableStatus = params['InstanceAvailableStatus']
          @ServiceInstanceStatus = params['ServiceInstanceStatus']
          @CountInTsf = params['CountInTsf']
          @GroupId = params['GroupId']
          @ApplicationId = params['ApplicationId']
          @ApplicationName = params['ApplicationName']
          @InstanceCreatedTime = params['InstanceCreatedTime']
          @InstanceExpiredTime = params['InstanceExpiredTime']
          @InstanceChargeType = params['InstanceChargeType']
          @InstanceTotalCpu = params['InstanceTotalCpu']
          @InstanceTotalMem = params['InstanceTotalMem']
          @InstanceUsedCpu = params['InstanceUsedCpu']
          @InstanceUsedMem = params['InstanceUsedMem']
          @InstanceLimitCpu = params['InstanceLimitCpu']
          @InstanceLimitMem = params['InstanceLimitMem']
          @InstancePkgVersion = params['InstancePkgVersion']
          @ClusterType = params['ClusterType']
          @RestrictState = params['RestrictState']
          @UpdateTime = params['UpdateTime']
          @OperationState = params['OperationState']
          @NamespaceId = params['NamespaceId']
          @InstanceZoneId = params['InstanceZoneId']
          @InstanceImportMode = params['InstanceImportMode']
          @ApplicationType = params['ApplicationType']
          @ApplicationResourceType = params['ApplicationResourceType']
          @ServiceSidecarStatus = params['ServiceSidecarStatus']
          @GroupName = params['GroupName']
          @NamespaceName = params['NamespaceName']
          @Reason = params['Reason']
          @AgentVersion = params['AgentVersion']
          @NodeInstanceId = params['NodeInstanceId']
        end
      end

      # 容器导入实例高级设置
      class InstanceAdvancedSettings < TencentCloud::Common::AbstractModel
        # @param MountTarget: 数据盘挂载点, 默认不挂载数据盘. 已格式化的 ext3，ext4，xfs 文件系统的数据盘将直接挂载，其他文件系统或未格式化的数据盘将自动格式化为ext4 并挂载，请注意备份数据! 无数据盘或有多块数据盘的云主机此设置不生效。
        # 注意，注意，多盘场景请使用下方的DataDisks数据结构，设置对应的云盘类型、云盘大小、挂载路径、是否格式化等信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MountTarget: String
        # @param DockerGraphPath: dockerd --graph 指定值, 默认为 /var/lib/docker
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DockerGraphPath: String

        attr_accessor :MountTarget, :DockerGraphPath
        
        def initialize(mounttarget=nil, dockergraphpath=nil)
          @MountTarget = mounttarget
          @DockerGraphPath = dockergraphpath
        end

        def deserialize(params)
          @MountTarget = params['MountTarget']
          @DockerGraphPath = params['DockerGraphPath']
        end
      end

      # 包含虚拟机所在TSF中的位置信息
      class InstanceEnrichedInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 机器ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceName: 机器名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param LanIp: 机器内网IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LanIp: String
        # @param WanIp: 机器外网IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WanIp: String
        # @param VpcId: 机器所在VPC
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param InstanceStatus: 机器运行状态 Pending Running Stopped Rebooting Starting Stopping Abnormal Unknown
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceStatus: String
        # @param InstanceAvailableStatus: 机器可用状态（表示机器上的Agent在线）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceAvailableStatus: String
        # @param ApplicationId: 应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param ApplicationName: 应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationName: String
        # @param ApplicationType: 应用类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationType: String
        # @param ClusterId: 集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String
        # @param ClusterType: 集群类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterType: String
        # @param NamespaceId: 命名空间ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceId: String
        # @param NamespaceName: 命名空间名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceName: String
        # @param GroupId: 机器所在部署组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String
        # @param GroupName: 部署组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String

        attr_accessor :InstanceId, :InstanceName, :LanIp, :WanIp, :VpcId, :InstanceStatus, :InstanceAvailableStatus, :ApplicationId, :ApplicationName, :ApplicationType, :ClusterId, :ClusterName, :ClusterType, :NamespaceId, :NamespaceName, :GroupId, :GroupName
        
        def initialize(instanceid=nil, instancename=nil, lanip=nil, wanip=nil, vpcid=nil, instancestatus=nil, instanceavailablestatus=nil, applicationid=nil, applicationname=nil, applicationtype=nil, clusterid=nil, clustername=nil, clustertype=nil, namespaceid=nil, namespacename=nil, groupid=nil, groupname=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @LanIp = lanip
          @WanIp = wanip
          @VpcId = vpcid
          @InstanceStatus = instancestatus
          @InstanceAvailableStatus = instanceavailablestatus
          @ApplicationId = applicationid
          @ApplicationName = applicationname
          @ApplicationType = applicationtype
          @ClusterId = clusterid
          @ClusterName = clustername
          @ClusterType = clustertype
          @NamespaceId = namespaceid
          @NamespaceName = namespacename
          @GroupId = groupid
          @GroupName = groupname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @LanIp = params['LanIp']
          @WanIp = params['WanIp']
          @VpcId = params['VpcId']
          @InstanceStatus = params['InstanceStatus']
          @InstanceAvailableStatus = params['InstanceAvailableStatus']
          @ApplicationId = params['ApplicationId']
          @ApplicationName = params['ApplicationName']
          @ApplicationType = params['ApplicationType']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @ClusterType = params['ClusterType']
          @NamespaceId = params['NamespaceId']
          @NamespaceName = params['NamespaceName']
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
        end
      end

      # InstanceEnrichedInfo列表结构
      class InstanceEnrichedInfoPage < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Content: 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              instanceenrichedinfo_tmp = InstanceEnrichedInfo.new
              instanceenrichedinfo_tmp.deserialize(i)
              @Content << instanceenrichedinfo_tmp
            end
          end
        end
      end

      # 服务调用监控指标
      class InvocationIndicator < TencentCloud::Common::AbstractModel
        # @param InvocationQuantity: 总请求数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvocationQuantity: Integer
        # @param InvocationSuccessRate: 请求成功率，百分比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvocationSuccessRate: Float
        # @param InvocationAvgDuration: 请求平均耗时，单位毫秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvocationAvgDuration: Float
        # @param InvocationSuccessDistribution: 成功请求数时间分布
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvocationSuccessDistribution: Array
        # @param InvocationFailedDistribution: 失败请求数时间分布
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvocationFailedDistribution: Array
        # @param InvocationStatusDistribution: 状态码分布
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvocationStatusDistribution: Array
        # @param InvocationDurationDistribution: 时延分布
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvocationDurationDistribution: Array
        # @param InvocationQuantityDistribution: 并发请求次数时间分布
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvocationQuantityDistribution: Array

        attr_accessor :InvocationQuantity, :InvocationSuccessRate, :InvocationAvgDuration, :InvocationSuccessDistribution, :InvocationFailedDistribution, :InvocationStatusDistribution, :InvocationDurationDistribution, :InvocationQuantityDistribution
        
        def initialize(invocationquantity=nil, invocationsuccessrate=nil, invocationavgduration=nil, invocationsuccessdistribution=nil, invocationfaileddistribution=nil, invocationstatusdistribution=nil, invocationdurationdistribution=nil, invocationquantitydistribution=nil)
          @InvocationQuantity = invocationquantity
          @InvocationSuccessRate = invocationsuccessrate
          @InvocationAvgDuration = invocationavgduration
          @InvocationSuccessDistribution = invocationsuccessdistribution
          @InvocationFailedDistribution = invocationfaileddistribution
          @InvocationStatusDistribution = invocationstatusdistribution
          @InvocationDurationDistribution = invocationdurationdistribution
          @InvocationQuantityDistribution = invocationquantitydistribution
        end

        def deserialize(params)
          @InvocationQuantity = params['InvocationQuantity']
          @InvocationSuccessRate = params['InvocationSuccessRate']
          @InvocationAvgDuration = params['InvocationAvgDuration']
          unless params['InvocationSuccessDistribution'].nil?
            @InvocationSuccessDistribution = []
            params['InvocationSuccessDistribution'].each do |i|
              indicatorcoord_tmp = IndicatorCoord.new
              indicatorcoord_tmp.deserialize(i)
              @InvocationSuccessDistribution << indicatorcoord_tmp
            end
          end
          unless params['InvocationFailedDistribution'].nil?
            @InvocationFailedDistribution = []
            params['InvocationFailedDistribution'].each do |i|
              indicatorcoord_tmp = IndicatorCoord.new
              indicatorcoord_tmp.deserialize(i)
              @InvocationFailedDistribution << indicatorcoord_tmp
            end
          end
          unless params['InvocationStatusDistribution'].nil?
            @InvocationStatusDistribution = []
            params['InvocationStatusDistribution'].each do |i|
              indicatorcoord_tmp = IndicatorCoord.new
              indicatorcoord_tmp.deserialize(i)
              @InvocationStatusDistribution << indicatorcoord_tmp
            end
          end
          unless params['InvocationDurationDistribution'].nil?
            @InvocationDurationDistribution = []
            params['InvocationDurationDistribution'].each do |i|
              indicatorcoord_tmp = IndicatorCoord.new
              indicatorcoord_tmp.deserialize(i)
              @InvocationDurationDistribution << indicatorcoord_tmp
            end
          end
          unless params['InvocationQuantityDistribution'].nil?
            @InvocationQuantityDistribution = []
            params['InvocationQuantityDistribution'].each do |i|
              indicatorcoord_tmp = IndicatorCoord.new
              indicatorcoord_tmp.deserialize(i)
              @InvocationQuantityDistribution << indicatorcoord_tmp
            end
          end
        end
      end

      # 监控数据散点图
      class InvocationMetricScatterPlot < TencentCloud::Common::AbstractModel
        # @param EndTime: 时间轴截止时间，GMT，精确到毫秒
        # @type EndTime: Integer
        # @param StartTime: 时间粒度
        # @type StartTime: Integer
        # @param Period: 时间轴开始时间，GMT，精确到毫秒
        # @type Period: Integer
        # @param DataPoints: 多值数据点集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataPoints: Array

        attr_accessor :EndTime, :StartTime, :Period, :DataPoints
        
        def initialize(endtime=nil, starttime=nil, period=nil, datapoints=nil)
          @EndTime = endtime
          @StartTime = starttime
          @Period = period
          @DataPoints = datapoints
        end

        def deserialize(params)
          @EndTime = params['EndTime']
          @StartTime = params['StartTime']
          @Period = params['Period']
          unless params['DataPoints'].nil?
            @DataPoints = []
            params['DataPoints'].each do |i|
              multivaluedatapoints_tmp = MultiValueDataPoints.new
              multivaluedatapoints_tmp.deserialize(i)
              @DataPoints << multivaluedatapoints_tmp
            end
          end
        end
      end

      # DescribeJvmMonitor查询jvm监控数据接口返回数据封装
      class JvmMonitorData < TencentCloud::Common::AbstractModel
        # @param HeapMemory: 堆内存监控图,三条线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeapMemory: :class:`Tencentcloud::Tsf.v20180326.models.MemoryPicture`
        # @param NonHeapMemory: 非堆内存监控图,三条线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NonHeapMemory: :class:`Tencentcloud::Tsf.v20180326.models.MemoryPicture`
        # @param EdenSpace: 伊甸园区监控图,三条线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EdenSpace: :class:`Tencentcloud::Tsf.v20180326.models.MemoryPicture`
        # @param SurvivorSpace: 幸存者区监控图,三条线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SurvivorSpace: :class:`Tencentcloud::Tsf.v20180326.models.MemoryPicture`
        # @param OldSpace: 老年代监控图,三条线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OldSpace: :class:`Tencentcloud::Tsf.v20180326.models.MemoryPicture`
        # @param MetaSpace: 元空间监控图,三条线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetaSpace: :class:`Tencentcloud::Tsf.v20180326.models.MemoryPicture`
        # @param ThreadPicture: 线程监控图,三条线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ThreadPicture: :class:`Tencentcloud::Tsf.v20180326.models.ThreadPicture`
        # @param YoungGC: youngGC增量监控图,一条线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type YoungGC: Array
        # @param FullGC: fullGC增量监控图,一条线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FullGC: Array
        # @param CpuUsage: cpu使用率,一条线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CpuUsage: Array
        # @param ClassCount: 加载类数,一条线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClassCount: Array

        attr_accessor :HeapMemory, :NonHeapMemory, :EdenSpace, :SurvivorSpace, :OldSpace, :MetaSpace, :ThreadPicture, :YoungGC, :FullGC, :CpuUsage, :ClassCount
        
        def initialize(heapmemory=nil, nonheapmemory=nil, edenspace=nil, survivorspace=nil, oldspace=nil, metaspace=nil, threadpicture=nil, younggc=nil, fullgc=nil, cpuusage=nil, classcount=nil)
          @HeapMemory = heapmemory
          @NonHeapMemory = nonheapmemory
          @EdenSpace = edenspace
          @SurvivorSpace = survivorspace
          @OldSpace = oldspace
          @MetaSpace = metaspace
          @ThreadPicture = threadpicture
          @YoungGC = younggc
          @FullGC = fullgc
          @CpuUsage = cpuusage
          @ClassCount = classcount
        end

        def deserialize(params)
          unless params['HeapMemory'].nil?
            @HeapMemory = MemoryPicture.new
            @HeapMemory.deserialize(params['HeapMemory'])
          end
          unless params['NonHeapMemory'].nil?
            @NonHeapMemory = MemoryPicture.new
            @NonHeapMemory.deserialize(params['NonHeapMemory'])
          end
          unless params['EdenSpace'].nil?
            @EdenSpace = MemoryPicture.new
            @EdenSpace.deserialize(params['EdenSpace'])
          end
          unless params['SurvivorSpace'].nil?
            @SurvivorSpace = MemoryPicture.new
            @SurvivorSpace.deserialize(params['SurvivorSpace'])
          end
          unless params['OldSpace'].nil?
            @OldSpace = MemoryPicture.new
            @OldSpace.deserialize(params['OldSpace'])
          end
          unless params['MetaSpace'].nil?
            @MetaSpace = MemoryPicture.new
            @MetaSpace.deserialize(params['MetaSpace'])
          end
          unless params['ThreadPicture'].nil?
            @ThreadPicture = ThreadPicture.new
            @ThreadPicture.deserialize(params['ThreadPicture'])
          end
          unless params['YoungGC'].nil?
            @YoungGC = []
            params['YoungGC'].each do |i|
              curvepoint_tmp = CurvePoint.new
              curvepoint_tmp.deserialize(i)
              @YoungGC << curvepoint_tmp
            end
          end
          unless params['FullGC'].nil?
            @FullGC = []
            params['FullGC'].each do |i|
              curvepoint_tmp = CurvePoint.new
              curvepoint_tmp.deserialize(i)
              @FullGC << curvepoint_tmp
            end
          end
          unless params['CpuUsage'].nil?
            @CpuUsage = []
            params['CpuUsage'].each do |i|
              curvepoint_tmp = CurvePoint.new
              curvepoint_tmp.deserialize(i)
              @CpuUsage << curvepoint_tmp
            end
          end
          unless params['ClassCount'].nil?
            @ClassCount = []
            params['ClassCount'].each do |i|
              curvepoint_tmp = CurvePoint.new
              curvepoint_tmp.deserialize(i)
              @ClassCount << curvepoint_tmp
            end
          end
        end
      end

      # 投递kafka配置项
      class KafkaDeliveryConfig < TencentCloud::Common::AbstractModel
        # @param ConfigId: 配置项id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigId: String
        # @param ConfigName: 配置名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigName: String
        # @param CollectPath: 采集路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CollectPath: Array
        # @param KafkaVIp: kafka vip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KafkaVIp: String
        # @param KafkaVPort: kafka vport
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KafkaVPort: String
        # @param Topic: kafka topic
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Topic: String
        # @param LineRule: 换行规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LineRule: String
        # @param EnableAuth: 是否需要认证
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableAuth: Boolean
        # @param Username: 用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Username: String
        # @param Password: 密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String
        # @param KafkaInfos: 投递的topic和path
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KafkaInfos: Array
        # @param EnableGlobalLineRule: 是否应用单行规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableGlobalLineRule: Boolean
        # @param CustomRule: 自定义分行规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomRule: String
        # @param KafkaAddress: KafkaAddress
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KafkaAddress: String

        attr_accessor :ConfigId, :ConfigName, :CollectPath, :KafkaVIp, :KafkaVPort, :Topic, :LineRule, :EnableAuth, :Username, :Password, :KafkaInfos, :EnableGlobalLineRule, :CustomRule, :KafkaAddress
        
        def initialize(configid=nil, configname=nil, collectpath=nil, kafkavip=nil, kafkavport=nil, topic=nil, linerule=nil, enableauth=nil, username=nil, password=nil, kafkainfos=nil, enablegloballinerule=nil, customrule=nil, kafkaaddress=nil)
          @ConfigId = configid
          @ConfigName = configname
          @CollectPath = collectpath
          @KafkaVIp = kafkavip
          @KafkaVPort = kafkavport
          @Topic = topic
          @LineRule = linerule
          @EnableAuth = enableauth
          @Username = username
          @Password = password
          @KafkaInfos = kafkainfos
          @EnableGlobalLineRule = enablegloballinerule
          @CustomRule = customrule
          @KafkaAddress = kafkaaddress
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
          @ConfigName = params['ConfigName']
          @CollectPath = params['CollectPath']
          @KafkaVIp = params['KafkaVIp']
          @KafkaVPort = params['KafkaVPort']
          @Topic = params['Topic']
          @LineRule = params['LineRule']
          @EnableAuth = params['EnableAuth']
          @Username = params['Username']
          @Password = params['Password']
          unless params['KafkaInfos'].nil?
            @KafkaInfos = []
            params['KafkaInfos'].each do |i|
              deliverykafkainfo_tmp = DeliveryKafkaInfo.new
              deliverykafkainfo_tmp.deserialize(i)
              @KafkaInfos << deliverykafkainfo_tmp
            end
          end
          @EnableGlobalLineRule = params['EnableGlobalLineRule']
          @CustomRule = params['CustomRule']
          @KafkaAddress = params['KafkaAddress']
        end
      end

      # 泳道部署组
      class LaneGroup < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String
        # @param Entrance: 是否入口应用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Entrance: Boolean
        # @param LaneGroupId: 泳道部署组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LaneGroupId: String
        # @param LaneId: 泳道ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LaneId: String
        # @param GroupName: 部署组名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param ApplicationId: 应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param ApplicationName: 应用名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationName: String
        # @param NamespaceId: 命名空间ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceId: String
        # @param NamespaceName: 命名空间名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceName: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: Integer
        # @param ClusterType: 集群类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterType: String

        attr_accessor :GroupId, :Entrance, :LaneGroupId, :LaneId, :GroupName, :ApplicationId, :ApplicationName, :NamespaceId, :NamespaceName, :CreateTime, :UpdateTime, :ClusterType
        
        def initialize(groupid=nil, entrance=nil, lanegroupid=nil, laneid=nil, groupname=nil, applicationid=nil, applicationname=nil, namespaceid=nil, namespacename=nil, createtime=nil, updatetime=nil, clustertype=nil)
          @GroupId = groupid
          @Entrance = entrance
          @LaneGroupId = lanegroupid
          @LaneId = laneid
          @GroupName = groupname
          @ApplicationId = applicationid
          @ApplicationName = applicationname
          @NamespaceId = namespaceid
          @NamespaceName = namespacename
          @CreateTime = createtime
          @UpdateTime = updatetime
          @ClusterType = clustertype
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @Entrance = params['Entrance']
          @LaneGroupId = params['LaneGroupId']
          @LaneId = params['LaneId']
          @GroupName = params['GroupName']
          @ApplicationId = params['ApplicationId']
          @ApplicationName = params['ApplicationName']
          @NamespaceId = params['NamespaceId']
          @NamespaceName = params['NamespaceName']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @ClusterType = params['ClusterType']
        end
      end

      # 泳道
      class LaneInfo < TencentCloud::Common::AbstractModel
        # @param LaneId: 泳道ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LaneId: String
        # @param LaneName: 泳道名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LaneName: String
        # @param Remark: 泳道备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: Integer
        # @param LaneGroupList: 泳道部署组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LaneGroupList: Array
        # @param Entrance: 是否入口应用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Entrance: Boolean
        # @param NamespaceIdList: 泳道已经关联部署组的命名空间列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceIdList: Array

        attr_accessor :LaneId, :LaneName, :Remark, :CreateTime, :UpdateTime, :LaneGroupList, :Entrance, :NamespaceIdList
        
        def initialize(laneid=nil, lanename=nil, remark=nil, createtime=nil, updatetime=nil, lanegrouplist=nil, entrance=nil, namespaceidlist=nil)
          @LaneId = laneid
          @LaneName = lanename
          @Remark = remark
          @CreateTime = createtime
          @UpdateTime = updatetime
          @LaneGroupList = lanegrouplist
          @Entrance = entrance
          @NamespaceIdList = namespaceidlist
        end

        def deserialize(params)
          @LaneId = params['LaneId']
          @LaneName = params['LaneName']
          @Remark = params['Remark']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          unless params['LaneGroupList'].nil?
            @LaneGroupList = []
            params['LaneGroupList'].each do |i|
              lanegroup_tmp = LaneGroup.new
              lanegroup_tmp.deserialize(i)
              @LaneGroupList << lanegroup_tmp
            end
          end
          @Entrance = params['Entrance']
          @NamespaceIdList = params['NamespaceIdList']
        end
      end

      # 泳道分页查询
      class LaneInfos < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Content: 泳道信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              laneinfo_tmp = LaneInfo.new
              laneinfo_tmp.deserialize(i)
              @Content << laneinfo_tmp
            end
          end
        end
      end

      # 泳道规则
      class LaneRule < TencentCloud::Common::AbstractModel
        # @param RuleId: 泳道规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: String
        # @param RuleName: 泳道规则名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleName: String
        # @param Priority: 优先级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Priority: Integer
        # @param Remark: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param RuleTagList: 泳道规则标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleTagList: Array
        # @param RuleTagRelationship: 泳道规则标签关系
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleTagRelationship: String
        # @param LaneId: 泳道ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LaneId: String
        # @param Enable: 开启状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enable: Boolean
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: Integer

        attr_accessor :RuleId, :RuleName, :Priority, :Remark, :RuleTagList, :RuleTagRelationship, :LaneId, :Enable, :CreateTime, :UpdateTime
        
        def initialize(ruleid=nil, rulename=nil, priority=nil, remark=nil, ruletaglist=nil, ruletagrelationship=nil, laneid=nil, enable=nil, createtime=nil, updatetime=nil)
          @RuleId = ruleid
          @RuleName = rulename
          @Priority = priority
          @Remark = remark
          @RuleTagList = ruletaglist
          @RuleTagRelationship = ruletagrelationship
          @LaneId = laneid
          @Enable = enable
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @Priority = params['Priority']
          @Remark = params['Remark']
          unless params['RuleTagList'].nil?
            @RuleTagList = []
            params['RuleTagList'].each do |i|
              laneruletag_tmp = LaneRuleTag.new
              laneruletag_tmp.deserialize(i)
              @RuleTagList << laneruletag_tmp
            end
          end
          @RuleTagRelationship = params['RuleTagRelationship']
          @LaneId = params['LaneId']
          @Enable = params['Enable']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 泳道规则标签
      class LaneRuleTag < TencentCloud::Common::AbstractModel
        # @param TagId: 标签ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagId: String
        # @param TagName: 标签名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagName: String
        # @param TagOperator: 标签操作符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagOperator: String
        # @param TagValue: 标签值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagValue: String
        # @param LaneRuleId: 泳道规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LaneRuleId: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: Integer

        attr_accessor :TagId, :TagName, :TagOperator, :TagValue, :LaneRuleId, :CreateTime, :UpdateTime
        
        def initialize(tagid=nil, tagname=nil, tagoperator=nil, tagvalue=nil, laneruleid=nil, createtime=nil, updatetime=nil)
          @TagId = tagid
          @TagName = tagname
          @TagOperator = tagoperator
          @TagValue = tagvalue
          @LaneRuleId = laneruleid
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @TagId = params['TagId']
          @TagName = params['TagName']
          @TagOperator = params['TagOperator']
          @TagValue = params['TagValue']
          @LaneRuleId = params['LaneRuleId']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 泳道规则分页查询
      class LaneRules < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param Content: 泳道规则列表
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              lanerule_tmp = LaneRule.new
              lanerule_tmp.deserialize(i)
              @Content << lanerule_tmp
            end
          end
        end
      end

      # Jvm监控内存数据封装
      class MemoryPicture < TencentCloud::Common::AbstractModel
        # @param Max: 内存最大值
        # @type Max: Array
        # @param Used: 已用内存大小
        # @type Used: Array
        # @param Committed: 系统分配内存大小
        # @type Committed: Array

        attr_accessor :Max, :Used, :Committed
        
        def initialize(max=nil, used=nil, committed=nil)
          @Max = max
          @Used = used
          @Committed = committed
        end

        def deserialize(params)
          unless params['Max'].nil?
            @Max = []
            params['Max'].each do |i|
              curvepoint_tmp = CurvePoint.new
              curvepoint_tmp.deserialize(i)
              @Max << curvepoint_tmp
            end
          end
          unless params['Used'].nil?
            @Used = []
            params['Used'].each do |i|
              curvepoint_tmp = CurvePoint.new
              curvepoint_tmp.deserialize(i)
              @Used << curvepoint_tmp
            end
          end
          unless params['Committed'].nil?
            @Committed = []
            params['Committed'].each do |i|
              curvepoint_tmp = CurvePoint.new
              curvepoint_tmp.deserialize(i)
              @Committed << curvepoint_tmp
            end
          end
        end
      end

      # 指标
      class Metric < TencentCloud::Common::AbstractModel
        # @param Name: 指标名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Function: 指标计算方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Function: String

        attr_accessor :Name, :Function
        
        def initialize(name=nil, function=nil)
          @Name = name
          @Function = function
        end

        def deserialize(params)
          @Name = params['Name']
          @Function = params['Function']
        end
      end

      # 指标监控数据曲线
      class MetricDataCurve < TencentCloud::Common::AbstractModel
        # @param MetricName: 指标名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricName: String
        # @param MetricFunction: 指标计算方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricFunction: String
        # @param MetricDataPoints: 指标数据点集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricDataPoints: Array

        attr_accessor :MetricName, :MetricFunction, :MetricDataPoints
        
        def initialize(metricname=nil, metricfunction=nil, metricdatapoints=nil)
          @MetricName = metricname
          @MetricFunction = metricfunction
          @MetricDataPoints = metricdatapoints
        end

        def deserialize(params)
          @MetricName = params['MetricName']
          @MetricFunction = params['MetricFunction']
          unless params['MetricDataPoints'].nil?
            @MetricDataPoints = []
            params['MetricDataPoints'].each do |i|
              metricdatapoint_tmp = MetricDataPoint.new
              metricdatapoint_tmp.deserialize(i)
              @MetricDataPoints << metricdatapoint_tmp
            end
          end
        end
      end

      # 监控统计数据点
      class MetricDataPoint < TencentCloud::Common::AbstractModel
        # @param Key: 数据点键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: 数据点值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Tag: 数据点标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: String

        attr_accessor :Key, :Value, :Tag
        
        def initialize(key=nil, value=nil, tag=nil)
          @Key = key
          @Value = value
          @Tag = tag
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
          @Tag = params['Tag']
        end
      end

      # 监控统计数据点Map集合（单元化网关使用）
      class MetricDataPointMap < TencentCloud::Common::AbstractModel
        # @param SumReqAmount: 总调用次数监控数据点集合
        # @type SumReqAmount: Array
        # @param AvgFailureRate: 平均错误率监控数据点集合
        # @type AvgFailureRate: Array
        # @param AvgTimeCost: 平均响应时间监控数据点集合
        # @type AvgTimeCost: Array

        attr_accessor :SumReqAmount, :AvgFailureRate, :AvgTimeCost
        
        def initialize(sumreqamount=nil, avgfailurerate=nil, avgtimecost=nil)
          @SumReqAmount = sumreqamount
          @AvgFailureRate = avgfailurerate
          @AvgTimeCost = avgtimecost
        end

        def deserialize(params)
          unless params['SumReqAmount'].nil?
            @SumReqAmount = []
            params['SumReqAmount'].each do |i|
              metricdatapoint_tmp = MetricDataPoint.new
              metricdatapoint_tmp.deserialize(i)
              @SumReqAmount << metricdatapoint_tmp
            end
          end
          unless params['AvgFailureRate'].nil?
            @AvgFailureRate = []
            params['AvgFailureRate'].each do |i|
              metricdatapoint_tmp = MetricDataPoint.new
              metricdatapoint_tmp.deserialize(i)
              @AvgFailureRate << metricdatapoint_tmp
            end
          end
          unless params['AvgTimeCost'].nil?
            @AvgTimeCost = []
            params['AvgTimeCost'].each do |i|
              metricdatapoint_tmp = MetricDataPoint.new
              metricdatapoint_tmp.deserialize(i)
              @AvgTimeCost << metricdatapoint_tmp
            end
          end
        end
      end

      # 单值指标
      class MetricDataSingleValue < TencentCloud::Common::AbstractModel
        # @param MetricName: 指标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricName: String
        # @param MetricFunction: 统计方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricFunction: String
        # @param MetricDataValue: 指标值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricDataValue: String
        # @param DailyPercent: 日环比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DailyPercent: Float

        attr_accessor :MetricName, :MetricFunction, :MetricDataValue, :DailyPercent
        
        def initialize(metricname=nil, metricfunction=nil, metricdatavalue=nil, dailypercent=nil)
          @MetricName = metricname
          @MetricFunction = metricfunction
          @MetricDataValue = metricdatavalue
          @DailyPercent = dailypercent
        end

        def deserialize(params)
          @MetricName = params['MetricName']
          @MetricFunction = params['MetricFunction']
          @MetricDataValue = params['MetricDataValue']
          @DailyPercent = params['DailyPercent']
        end
      end

      # 指标维度
      class MetricDimension < TencentCloud::Common::AbstractModel
        # @param Name: 指标维度名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Value: 指标维度取值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Name, :Value
        
        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # 指标维度多值匹配
      class MetricDimensionValue < TencentCloud::Common::AbstractModel
        # @param Name: 维度名
        # @type Name: String
        # @param Value: 维度值
        # @type Value: Array

        attr_accessor :Name, :Value
        
        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # 微服务
      class Microservice < TencentCloud::Common::AbstractModel
        # @param MicroserviceId: 微服务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MicroserviceId: String
        # @param MicroserviceName: 微服务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MicroserviceName: String
        # @param MicroserviceDesc: 微服务描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MicroserviceDesc: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: Integer
        # @param NamespaceId: 命名空间ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceId: String
        # @param RunInstanceCount: 微服务的运行实例数目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunInstanceCount: Integer
        # @param CriticalInstanceCount: 微服务的离线实例数目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CriticalInstanceCount: Integer

        attr_accessor :MicroserviceId, :MicroserviceName, :MicroserviceDesc, :CreateTime, :UpdateTime, :NamespaceId, :RunInstanceCount, :CriticalInstanceCount
        
        def initialize(microserviceid=nil, microservicename=nil, microservicedesc=nil, createtime=nil, updatetime=nil, namespaceid=nil, runinstancecount=nil, criticalinstancecount=nil)
          @MicroserviceId = microserviceid
          @MicroserviceName = microservicename
          @MicroserviceDesc = microservicedesc
          @CreateTime = createtime
          @UpdateTime = updatetime
          @NamespaceId = namespaceid
          @RunInstanceCount = runinstancecount
          @CriticalInstanceCount = criticalinstancecount
        end

        def deserialize(params)
          @MicroserviceId = params['MicroserviceId']
          @MicroserviceName = params['MicroserviceName']
          @MicroserviceDesc = params['MicroserviceDesc']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @NamespaceId = params['NamespaceId']
          @RunInstanceCount = params['RunInstanceCount']
          @CriticalInstanceCount = params['CriticalInstanceCount']
        end
      end

      # ModifyApplication请求参数结构体
      class ModifyApplicationRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID
        # @type ApplicationId: String
        # @param ApplicationName: 应用名称
        # @type ApplicationName: String
        # @param ApplicationDesc: 应用备注
        # @type ApplicationDesc: String
        # @param ApplicationRemarkName: 应用备注名
        # @type ApplicationRemarkName: String
        # @param ServiceConfigList: 服务配置信息列表
        # @type ServiceConfigList: Array

        attr_accessor :ApplicationId, :ApplicationName, :ApplicationDesc, :ApplicationRemarkName, :ServiceConfigList
        
        def initialize(applicationid=nil, applicationname=nil, applicationdesc=nil, applicationremarkname=nil, serviceconfiglist=nil)
          @ApplicationId = applicationid
          @ApplicationName = applicationname
          @ApplicationDesc = applicationdesc
          @ApplicationRemarkName = applicationremarkname
          @ServiceConfigList = serviceconfiglist
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @ApplicationName = params['ApplicationName']
          @ApplicationDesc = params['ApplicationDesc']
          @ApplicationRemarkName = params['ApplicationRemarkName']
          unless params['ServiceConfigList'].nil?
            @ServiceConfigList = []
            params['ServiceConfigList'].each do |i|
              serviceconfig_tmp = ServiceConfig.new
              serviceconfig_tmp.deserialize(i)
              @ServiceConfigList << serviceconfig_tmp
            end
          end
        end
      end

      # ModifyApplication返回参数结构体
      class ModifyApplicationResponse < TencentCloud::Common::AbstractModel
        # @param Result: true/false
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # ModifyCluster请求参数结构体
      class ModifyClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param ClusterDesc: 集群描述信息
        # @type ClusterDesc: String
        # @param ClusterRemarkName: 备注名
        # @type ClusterRemarkName: String

        attr_accessor :ClusterId, :ClusterName, :ClusterDesc, :ClusterRemarkName
        
        def initialize(clusterid=nil, clustername=nil, clusterdesc=nil, clusterremarkname=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @ClusterDesc = clusterdesc
          @ClusterRemarkName = clusterremarkname
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @ClusterDesc = params['ClusterDesc']
          @ClusterRemarkName = params['ClusterRemarkName']
        end
      end

      # ModifyCluster返回参数结构体
      class ModifyClusterResponse < TencentCloud::Common::AbstractModel
        # @param Result: 更新集群详情操作是否成功。
        # true： 操作成功。
        # false：操作失败。
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

      # ModifyContainerGroup请求参数结构体
      class ModifyContainerGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID
        # @type GroupId: String
        # @param AccessType: 0:公网 1:集群内访问 2：NodePort
        # @type AccessType: Integer
        # @param ProtocolPorts: ProtocolPorts数组
        # @type ProtocolPorts: Array
        # @param UpdateType: 更新方式：0:快速更新 1:滚动更新
        # @type UpdateType: Integer
        # @param UpdateIvl: 更新间隔,单位秒
        # @type UpdateIvl: Integer
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param Alias: 部署组备注
        # @type Alias: String

        attr_accessor :GroupId, :AccessType, :ProtocolPorts, :UpdateType, :UpdateIvl, :SubnetId, :Alias
        
        def initialize(groupid=nil, accesstype=nil, protocolports=nil, updatetype=nil, updateivl=nil, subnetid=nil, _alias=nil)
          @GroupId = groupid
          @AccessType = accesstype
          @ProtocolPorts = protocolports
          @UpdateType = updatetype
          @UpdateIvl = updateivl
          @SubnetId = subnetid
          @Alias = _alias
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @AccessType = params['AccessType']
          unless params['ProtocolPorts'].nil?
            @ProtocolPorts = []
            params['ProtocolPorts'].each do |i|
              protocolport_tmp = ProtocolPort.new
              protocolport_tmp.deserialize(i)
              @ProtocolPorts << protocolport_tmp
            end
          end
          @UpdateType = params['UpdateType']
          @UpdateIvl = params['UpdateIvl']
          @SubnetId = params['SubnetId']
          @Alias = params['Alias']
        end
      end

      # ModifyContainerGroup返回参数结构体
      class ModifyContainerGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 更新部署组是否成功。
        # true：成功。
        # false：失败。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # ModifyContainerReplicas请求参数结构体
      class ModifyContainerReplicasRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID，部署组唯一标识
        # @type GroupId: String
        # @param InstanceNum: 实例数量
        # @type InstanceNum: Integer

        attr_accessor :GroupId, :InstanceNum
        
        def initialize(groupid=nil, instancenum=nil)
          @GroupId = groupid
          @InstanceNum = instancenum
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @InstanceNum = params['InstanceNum']
        end
      end

      # ModifyContainerReplicas返回参数结构体
      class ModifyContainerReplicasResponse < TencentCloud::Common::AbstractModel
        # @param Result: 结果true：成功；false：失败；
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

      # ModifyGroup请求参数结构体
      class ModifyGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID
        # @type GroupId: String
        # @param GroupName: 部署组名称
        # @type GroupName: String
        # @param GroupDesc: 部署组描述
        # @type GroupDesc: String
        # @param Alias: 部署组备注
        # @type Alias: String

        attr_accessor :GroupId, :GroupName, :GroupDesc, :Alias
        
        def initialize(groupid=nil, groupname=nil, groupdesc=nil, _alias=nil)
          @GroupId = groupid
          @GroupName = groupname
          @GroupDesc = groupdesc
          @Alias = _alias
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @GroupDesc = params['GroupDesc']
          @Alias = params['Alias']
        end
      end

      # ModifyGroup返回参数结构体
      class ModifyGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 更新部署组详情是否成功。
        # true：操作成功。
        # false：操作失败。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # ModifyLane请求参数结构体
      class ModifyLaneRequest < TencentCloud::Common::AbstractModel
        # @param LaneId: 泳道ID
        # @type LaneId: String
        # @param LaneName: 泳道名称
        # @type LaneName: String
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :LaneId, :LaneName, :Remark
        
        def initialize(laneid=nil, lanename=nil, remark=nil)
          @LaneId = laneid
          @LaneName = lanename
          @Remark = remark
        end

        def deserialize(params)
          @LaneId = params['LaneId']
          @LaneName = params['LaneName']
          @Remark = params['Remark']
        end
      end

      # ModifyLane返回参数结构体
      class ModifyLaneResponse < TencentCloud::Common::AbstractModel
        # @param Result: 操作状态
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

      # ModifyLaneRule请求参数结构体
      class ModifyLaneRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 泳道规则ID
        # @type RuleId: String
        # @param RuleName: 泳道规则名称
        # @type RuleName: String
        # @param Remark: 泳道规则备注
        # @type Remark: String
        # @param RuleTagList: 泳道规则标签列表
        # @type RuleTagList: Array
        # @param RuleTagRelationship: 泳道规则标签关系
        # @type RuleTagRelationship: String
        # @param LaneId: 泳道ID
        # @type LaneId: String
        # @param Enable: 开启状态
        # @type Enable: Boolean

        attr_accessor :RuleId, :RuleName, :Remark, :RuleTagList, :RuleTagRelationship, :LaneId, :Enable
        
        def initialize(ruleid=nil, rulename=nil, remark=nil, ruletaglist=nil, ruletagrelationship=nil, laneid=nil, enable=nil)
          @RuleId = ruleid
          @RuleName = rulename
          @Remark = remark
          @RuleTagList = ruletaglist
          @RuleTagRelationship = ruletagrelationship
          @LaneId = laneid
          @Enable = enable
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @Remark = params['Remark']
          unless params['RuleTagList'].nil?
            @RuleTagList = []
            params['RuleTagList'].each do |i|
              laneruletag_tmp = LaneRuleTag.new
              laneruletag_tmp.deserialize(i)
              @RuleTagList << laneruletag_tmp
            end
          end
          @RuleTagRelationship = params['RuleTagRelationship']
          @LaneId = params['LaneId']
          @Enable = params['Enable']
        end
      end

      # ModifyLaneRule返回参数结构体
      class ModifyLaneRuleResponse < TencentCloud::Common::AbstractModel
        # @param Result: 操作状态
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # ModifyMicroservice请求参数结构体
      class ModifyMicroserviceRequest < TencentCloud::Common::AbstractModel
        # @param MicroserviceId: 微服务 ID
        # @type MicroserviceId: String
        # @param MicroserviceDesc: 微服务备注信息
        # @type MicroserviceDesc: String

        attr_accessor :MicroserviceId, :MicroserviceDesc
        
        def initialize(microserviceid=nil, microservicedesc=nil)
          @MicroserviceId = microserviceid
          @MicroserviceDesc = microservicedesc
        end

        def deserialize(params)
          @MicroserviceId = params['MicroserviceId']
          @MicroserviceDesc = params['MicroserviceDesc']
        end
      end

      # ModifyMicroservice返回参数结构体
      class ModifyMicroserviceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 修改微服务详情是否成功。
        # true：操作成功。
        # false：操作失败。
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

      # ModifyNamespace请求参数结构体
      class ModifyNamespaceRequest < TencentCloud::Common::AbstractModel
        # @param NamespaceId: 命名空间ID
        # @type NamespaceId: String
        # @param NamespaceName: 命名空间名称
        # @type NamespaceName: String
        # @param NamespaceDesc: 命名空间备注
        # @type NamespaceDesc: String
        # @param IsHaEnable: 是否开启高可用
        # @type IsHaEnable: String

        attr_accessor :NamespaceId, :NamespaceName, :NamespaceDesc, :IsHaEnable
        
        def initialize(namespaceid=nil, namespacename=nil, namespacedesc=nil, ishaenable=nil)
          @NamespaceId = namespaceid
          @NamespaceName = namespacename
          @NamespaceDesc = namespacedesc
          @IsHaEnable = ishaenable
        end

        def deserialize(params)
          @NamespaceId = params['NamespaceId']
          @NamespaceName = params['NamespaceName']
          @NamespaceDesc = params['NamespaceDesc']
          @IsHaEnable = params['IsHaEnable']
        end
      end

      # ModifyNamespace返回参数结构体
      class ModifyNamespaceResponse < TencentCloud::Common::AbstractModel
        # @param Result: Result
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # ModifyPathRewrite请求参数结构体
      class ModifyPathRewriteRequest < TencentCloud::Common::AbstractModel
        # @param PathRewriteId: 路径重写规则ID
        # @type PathRewriteId: String
        # @param Regex: 正则表达式
        # @type Regex: String
        # @param Replacement: 替换的内容
        # @type Replacement: String
        # @param Blocked: 是否屏蔽映射后路径，Y: 是 N: 否
        # @type Blocked: String
        # @param Order: 规则顺序，越小优先级越高
        # @type Order: Integer

        attr_accessor :PathRewriteId, :Regex, :Replacement, :Blocked, :Order
        
        def initialize(pathrewriteid=nil, regex=nil, replacement=nil, blocked=nil, order=nil)
          @PathRewriteId = pathrewriteid
          @Regex = regex
          @Replacement = replacement
          @Blocked = blocked
          @Order = order
        end

        def deserialize(params)
          @PathRewriteId = params['PathRewriteId']
          @Regex = params['Regex']
          @Replacement = params['Replacement']
          @Blocked = params['Blocked']
          @Order = params['Order']
        end
      end

      # ModifyPathRewrite返回参数结构体
      class ModifyPathRewriteResponse < TencentCloud::Common::AbstractModel
        # @param Result: true/false
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

      # ModifyTask请求参数结构体
      class ModifyTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param TaskType: 任务类型
        # @type TaskType: String
        # @param TaskContent: 任务内容
        # @type TaskContent: String
        # @param ExecuteType: 任务执行类型
        # @type ExecuteType: String
        # @param TaskRule: 触发规则
        # @type TaskRule: :class:`Tencentcloud::Tsf.v20180326.models.TaskRule`
        # @param TimeOut: 超时时间，单位 ms
        # @type TimeOut: Integer
        # @param GroupId: 分组ID
        # @type GroupId: String
        # @param ShardCount: 分片数量
        # @type ShardCount: Integer
        # @param ShardArguments: 分片参数
        # @type ShardArguments: Array
        # @param AdvanceSettings: 高级设置
        # @type AdvanceSettings: :class:`Tencentcloud::Tsf.v20180326.models.AdvanceSettings`
        # @param SuccessOperator: 判断任务成功的操作符 GT/GTE
        # @type SuccessOperator: String
        # @param SuccessRatio: 判断任务成功率的阈值
        # @type SuccessRatio: Integer
        # @param RetryCount: 重试次数
        # @type RetryCount: Integer
        # @param RetryInterval: 重试间隔
        # @type RetryInterval: Integer
        # @param TaskArgument: 任务参数，长度限制10000个字符
        # @type TaskArgument: String
        # @param ProgramIdList: 无
        # @type ProgramIdList: Array

        attr_accessor :TaskId, :TaskName, :TaskType, :TaskContent, :ExecuteType, :TaskRule, :TimeOut, :GroupId, :ShardCount, :ShardArguments, :AdvanceSettings, :SuccessOperator, :SuccessRatio, :RetryCount, :RetryInterval, :TaskArgument, :ProgramIdList
        
        def initialize(taskid=nil, taskname=nil, tasktype=nil, taskcontent=nil, executetype=nil, taskrule=nil, timeout=nil, groupid=nil, shardcount=nil, shardarguments=nil, advancesettings=nil, successoperator=nil, successratio=nil, retrycount=nil, retryinterval=nil, taskargument=nil, programidlist=nil)
          @TaskId = taskid
          @TaskName = taskname
          @TaskType = tasktype
          @TaskContent = taskcontent
          @ExecuteType = executetype
          @TaskRule = taskrule
          @TimeOut = timeout
          @GroupId = groupid
          @ShardCount = shardcount
          @ShardArguments = shardarguments
          @AdvanceSettings = advancesettings
          @SuccessOperator = successoperator
          @SuccessRatio = successratio
          @RetryCount = retrycount
          @RetryInterval = retryinterval
          @TaskArgument = taskargument
          @ProgramIdList = programidlist
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @TaskType = params['TaskType']
          @TaskContent = params['TaskContent']
          @ExecuteType = params['ExecuteType']
          unless params['TaskRule'].nil?
            @TaskRule = TaskRule.new
            @TaskRule.deserialize(params['TaskRule'])
          end
          @TimeOut = params['TimeOut']
          @GroupId = params['GroupId']
          @ShardCount = params['ShardCount']
          unless params['ShardArguments'].nil?
            @ShardArguments = []
            params['ShardArguments'].each do |i|
              shardargument_tmp = ShardArgument.new
              shardargument_tmp.deserialize(i)
              @ShardArguments << shardargument_tmp
            end
          end
          unless params['AdvanceSettings'].nil?
            @AdvanceSettings = AdvanceSettings.new
            @AdvanceSettings.deserialize(params['AdvanceSettings'])
          end
          @SuccessOperator = params['SuccessOperator']
          @SuccessRatio = params['SuccessRatio']
          @RetryCount = params['RetryCount']
          @RetryInterval = params['RetryInterval']
          @TaskArgument = params['TaskArgument']
          @ProgramIdList = params['ProgramIdList']
        end
      end

      # ModifyTask返回参数结构体
      class ModifyTaskResponse < TencentCloud::Common::AbstractModel
        # @param Result: 更新是否成功
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # ModifyUploadInfo请求参数结构体
      class ModifyUploadInfoRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID
        # @type ApplicationId: String
        # @param PkgId: 调用DescribeUploadInfo接口时返回的软件包ID
        # @type PkgId: String
        # @param Result: COS返回上传结果（默认为0：成功，其他值表示失败）
        # @type Result: Integer
        # @param Md5: 程序包MD5
        # @type Md5: String
        # @param Size: 程序包大小（单位字节）
        # @type Size: Integer
        # @param RepositoryType: 程序包仓库类型
        # @type RepositoryType: String
        # @param RepositoryId: 程序包仓库id
        # @type RepositoryId: String

        attr_accessor :ApplicationId, :PkgId, :Result, :Md5, :Size, :RepositoryType, :RepositoryId
        
        def initialize(applicationid=nil, pkgid=nil, result=nil, md5=nil, size=nil, repositorytype=nil, repositoryid=nil)
          @ApplicationId = applicationid
          @PkgId = pkgid
          @Result = result
          @Md5 = md5
          @Size = size
          @RepositoryType = repositorytype
          @RepositoryId = repositoryid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @PkgId = params['PkgId']
          @Result = params['Result']
          @Md5 = params['Md5']
          @Size = params['Size']
          @RepositoryType = params['RepositoryType']
          @RepositoryId = params['RepositoryId']
        end
      end

      # ModifyUploadInfo返回参数结构体
      class ModifyUploadInfoResponse < TencentCloud::Common::AbstractModel
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

      # 监控概览对象
      class MonitorOverview < TencentCloud::Common::AbstractModel
        # @param InvocationCountOfDay: 近24小时调用数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvocationCountOfDay: String
        # @param InvocationCount: 总调用数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvocationCount: String
        # @param ErrorCountOfDay: 近24小时调用错误数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorCountOfDay: String
        # @param ErrorCount: 总调用错误数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorCount: String
        # @param SuccessRatioOfDay: 近24小时调用成功率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessRatioOfDay: String
        # @param SuccessRatio: 总调用成功率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessRatio: String

        attr_accessor :InvocationCountOfDay, :InvocationCount, :ErrorCountOfDay, :ErrorCount, :SuccessRatioOfDay, :SuccessRatio
        
        def initialize(invocationcountofday=nil, invocationcount=nil, errorcountofday=nil, errorcount=nil, successratioofday=nil, successratio=nil)
          @InvocationCountOfDay = invocationcountofday
          @InvocationCount = invocationcount
          @ErrorCountOfDay = errorcountofday
          @ErrorCount = errorcount
          @SuccessRatioOfDay = successratioofday
          @SuccessRatio = successratio
        end

        def deserialize(params)
          @InvocationCountOfDay = params['InvocationCountOfDay']
          @InvocationCount = params['InvocationCount']
          @ErrorCountOfDay = params['ErrorCountOfDay']
          @ErrorCount = params['ErrorCount']
          @SuccessRatioOfDay = params['SuccessRatioOfDay']
          @SuccessRatio = params['SuccessRatio']
        end
      end

      # 微服务API数组
      class MsApiArray < TencentCloud::Common::AbstractModel
        # @param Path: API 请求路径
        # @type Path: String
        # @param Method: 请求方法
        # @type Method: String
        # @param Description: 方法描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Status: API状态 0:离线 1:在线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer

        attr_accessor :Path, :Method, :Description, :Status
        
        def initialize(path=nil, method=nil, description=nil, status=nil)
          @Path = path
          @Method = method
          @Description = description
          @Status = status
        end

        def deserialize(params)
          @Path = params['Path']
          @Method = params['Method']
          @Description = params['Description']
          @Status = params['Status']
        end
      end

      # 微服务实例信息
      class MsInstance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 机器实例ID信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceName: 机器实例名称信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param Port: 服务运行的端口号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: String
        # @param LanIp: 机器实例内网IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LanIp: String
        # @param WanIp: 机器实例外网IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WanIp: String
        # @param InstanceAvailableStatus: 机器可用状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceAvailableStatus: String
        # @param ServiceInstanceStatus: 服务运行状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceInstanceStatus: String
        # @param ApplicationId: 应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param ApplicationName: 应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationName: String
        # @param ClusterId: 集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String
        # @param NamespaceId: 命名空间ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceId: String
        # @param NamespaceName: 命名空间名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceName: String
        # @param GroupId: 部署组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String
        # @param GroupName: 部署组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param InstanceStatus: 机器TSF可用状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceStatus: String
        # @param HealthCheckUrl: 健康检查URL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthCheckUrl: String
        # @param ClusterType: 集群类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterType: String
        # @param ApplicationPackageVersion: 应用程序包版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationPackageVersion: String
        # @param ApplicationType: 应用类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationType: String
        # @param ServiceStatus: 服务状态，passing 在线，critical 离线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceStatus: String
        # @param RegistrationTime: 注册时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegistrationTime: Integer
        # @param LastHeartbeatTime: 上次心跳时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastHeartbeatTime: Integer
        # @param RegistrationId: 实例注册id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegistrationId: String
        # @param HiddenStatus: 屏蔽状态，hidden 为屏蔽，unhidden 为未屏蔽
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HiddenStatus: String

        attr_accessor :InstanceId, :InstanceName, :Port, :LanIp, :WanIp, :InstanceAvailableStatus, :ServiceInstanceStatus, :ApplicationId, :ApplicationName, :ClusterId, :ClusterName, :NamespaceId, :NamespaceName, :GroupId, :GroupName, :InstanceStatus, :HealthCheckUrl, :ClusterType, :ApplicationPackageVersion, :ApplicationType, :ServiceStatus, :RegistrationTime, :LastHeartbeatTime, :RegistrationId, :HiddenStatus
        
        def initialize(instanceid=nil, instancename=nil, port=nil, lanip=nil, wanip=nil, instanceavailablestatus=nil, serviceinstancestatus=nil, applicationid=nil, applicationname=nil, clusterid=nil, clustername=nil, namespaceid=nil, namespacename=nil, groupid=nil, groupname=nil, instancestatus=nil, healthcheckurl=nil, clustertype=nil, applicationpackageversion=nil, applicationtype=nil, servicestatus=nil, registrationtime=nil, lastheartbeattime=nil, registrationid=nil, hiddenstatus=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Port = port
          @LanIp = lanip
          @WanIp = wanip
          @InstanceAvailableStatus = instanceavailablestatus
          @ServiceInstanceStatus = serviceinstancestatus
          @ApplicationId = applicationid
          @ApplicationName = applicationname
          @ClusterId = clusterid
          @ClusterName = clustername
          @NamespaceId = namespaceid
          @NamespaceName = namespacename
          @GroupId = groupid
          @GroupName = groupname
          @InstanceStatus = instancestatus
          @HealthCheckUrl = healthcheckurl
          @ClusterType = clustertype
          @ApplicationPackageVersion = applicationpackageversion
          @ApplicationType = applicationtype
          @ServiceStatus = servicestatus
          @RegistrationTime = registrationtime
          @LastHeartbeatTime = lastheartbeattime
          @RegistrationId = registrationid
          @HiddenStatus = hiddenstatus
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Port = params['Port']
          @LanIp = params['LanIp']
          @WanIp = params['WanIp']
          @InstanceAvailableStatus = params['InstanceAvailableStatus']
          @ServiceInstanceStatus = params['ServiceInstanceStatus']
          @ApplicationId = params['ApplicationId']
          @ApplicationName = params['ApplicationName']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @NamespaceId = params['NamespaceId']
          @NamespaceName = params['NamespaceName']
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @InstanceStatus = params['InstanceStatus']
          @HealthCheckUrl = params['HealthCheckUrl']
          @ClusterType = params['ClusterType']
          @ApplicationPackageVersion = params['ApplicationPackageVersion']
          @ApplicationType = params['ApplicationType']
          @ServiceStatus = params['ServiceStatus']
          @RegistrationTime = params['RegistrationTime']
          @LastHeartbeatTime = params['LastHeartbeatTime']
          @RegistrationId = params['RegistrationId']
          @HiddenStatus = params['HiddenStatus']
        end
      end

      # 多值数据
      class MultiValue < TencentCloud::Common::AbstractModel
        # @param Values: 数据点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Values: Array

        attr_accessor :Values
        
        def initialize(values=nil)
          @Values = values
        end

        def deserialize(params)
          @Values = params['Values']
        end
      end

      # 多值数据点集合
      class MultiValueDataPoints < TencentCloud::Common::AbstractModel
        # @param Points: 多值数据点
        # @type Points: Array
        # @param MetricName: 指标名称
        # @type MetricName: String
        # @param PointKeys: 多值数据点key列表，每个值表示当前数据点所在区域的下限
        # @type PointKeys: Array

        attr_accessor :Points, :MetricName, :PointKeys
        
        def initialize(points=nil, metricname=nil, pointkeys=nil)
          @Points = points
          @MetricName = metricname
          @PointKeys = pointkeys
        end

        def deserialize(params)
          unless params['Points'].nil?
            @Points = []
            params['Points'].each do |i|
              multivalue_tmp = MultiValue.new
              multivalue_tmp.deserialize(i)
              @Points << multivalue_tmp
            end
          end
          @MetricName = params['MetricName']
          @PointKeys = params['PointKeys']
        end
      end

      # 命名空间
      class Namespace < TencentCloud::Common::AbstractModel
        # @param NamespaceId: 命名空间ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceId: String
        # @param NamespaceCode: 命名空间编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceCode: String
        # @param NamespaceName: 命名空间名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceName: String
        # @param NamespaceDesc: 命名空间描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceDesc: String
        # @param IsDefault: 默认命名空间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDefault: String
        # @param NamespaceStatus: 命名空间状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceStatus: String
        # @param DeleteFlag: 删除标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeleteFlag: Boolean
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param ClusterList: 集群数组，仅携带集群ID，集群名称，集群类型等基础信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterList: Array
        # @param ClusterId: 集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param NamespaceResourceType: 集群资源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceResourceType: String
        # @param NamespaceType: 命名空间类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceType: String
        # @param IsHaEnable: 是否开启高可用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsHaEnable: String
        # @param KubeInjectEnable: KubeInjectEnable值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KubeInjectEnable: Boolean

        attr_accessor :NamespaceId, :NamespaceCode, :NamespaceName, :NamespaceDesc, :IsDefault, :NamespaceStatus, :DeleteFlag, :CreateTime, :UpdateTime, :ClusterList, :ClusterId, :NamespaceResourceType, :NamespaceType, :IsHaEnable, :KubeInjectEnable
        
        def initialize(namespaceid=nil, namespacecode=nil, namespacename=nil, namespacedesc=nil, isdefault=nil, namespacestatus=nil, deleteflag=nil, createtime=nil, updatetime=nil, clusterlist=nil, clusterid=nil, namespaceresourcetype=nil, namespacetype=nil, ishaenable=nil, kubeinjectenable=nil)
          @NamespaceId = namespaceid
          @NamespaceCode = namespacecode
          @NamespaceName = namespacename
          @NamespaceDesc = namespacedesc
          @IsDefault = isdefault
          @NamespaceStatus = namespacestatus
          @DeleteFlag = deleteflag
          @CreateTime = createtime
          @UpdateTime = updatetime
          @ClusterList = clusterlist
          @ClusterId = clusterid
          @NamespaceResourceType = namespaceresourcetype
          @NamespaceType = namespacetype
          @IsHaEnable = ishaenable
          @KubeInjectEnable = kubeinjectenable
        end

        def deserialize(params)
          @NamespaceId = params['NamespaceId']
          @NamespaceCode = params['NamespaceCode']
          @NamespaceName = params['NamespaceName']
          @NamespaceDesc = params['NamespaceDesc']
          @IsDefault = params['IsDefault']
          @NamespaceStatus = params['NamespaceStatus']
          @DeleteFlag = params['DeleteFlag']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          unless params['ClusterList'].nil?
            @ClusterList = []
            params['ClusterList'].each do |i|
              cluster_tmp = Cluster.new
              cluster_tmp.deserialize(i)
              @ClusterList << cluster_tmp
            end
          end
          @ClusterId = params['ClusterId']
          @NamespaceResourceType = params['NamespaceResourceType']
          @NamespaceType = params['NamespaceType']
          @IsHaEnable = params['IsHaEnable']
          @KubeInjectEnable = params['KubeInjectEnable']
        end
      end

      # OperateApplicationTcrBinding请求参数结构体
      class OperateApplicationTcrBindingRequest < TencentCloud::Common::AbstractModel
        # @param Command: bind 或 unbind
        # @type Command: String
        # @param ApplicationId: 应用id
        # @type ApplicationId: String
        # @param TcrRepoInfo: TcrRepoInfo值
        # @type TcrRepoInfo: :class:`Tencentcloud::Tsf.v20180326.models.TcrRepoInfo`

        attr_accessor :Command, :ApplicationId, :TcrRepoInfo
        
        def initialize(command=nil, applicationid=nil, tcrrepoinfo=nil)
          @Command = command
          @ApplicationId = applicationid
          @TcrRepoInfo = tcrrepoinfo
        end

        def deserialize(params)
          @Command = params['Command']
          @ApplicationId = params['ApplicationId']
          unless params['TcrRepoInfo'].nil?
            @TcrRepoInfo = TcrRepoInfo.new
            @TcrRepoInfo.deserialize(params['TcrRepoInfo'])
          end
        end
      end

      # OperateApplicationTcrBinding返回参数结构体
      class OperateApplicationTcrBindingResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
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

      # 提供给前端，控制按钮是否显示
      class OperationInfo < TencentCloud::Common::AbstractModel
        # @param Init: 初始化按钮的控制信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Init: :class:`Tencentcloud::Tsf.v20180326.models.OperationInfoDetail`
        # @param AddInstance: 添加实例按钮的控制信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddInstance: :class:`Tencentcloud::Tsf.v20180326.models.OperationInfoDetail`
        # @param Destroy: 销毁机器的控制信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Destroy: :class:`Tencentcloud::Tsf.v20180326.models.OperationInfoDetail`

        attr_accessor :Init, :AddInstance, :Destroy
        
        def initialize(init=nil, addinstance=nil, destroy=nil)
          @Init = init
          @AddInstance = addinstance
          @Destroy = destroy
        end

        def deserialize(params)
          unless params['Init'].nil?
            @Init = OperationInfoDetail.new
            @Init.deserialize(params['Init'])
          end
          unless params['AddInstance'].nil?
            @AddInstance = OperationInfoDetail.new
            @AddInstance.deserialize(params['AddInstance'])
          end
          unless params['Destroy'].nil?
            @Destroy = OperationInfoDetail.new
            @Destroy.deserialize(params['Destroy'])
          end
        end
      end

      # 提供给前端控制按钮显示逻辑的字段
      class OperationInfoDetail < TencentCloud::Common::AbstractModel
        # @param DisabledReason: 不显示的原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisabledReason: String
        # @param Enabled: 该按钮是否可点击
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enabled: Boolean
        # @param Supported: 是否显示该按钮
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Supported: Boolean

        attr_accessor :DisabledReason, :Enabled, :Supported
        
        def initialize(disabledreason=nil, enabled=nil, supported=nil)
          @DisabledReason = disabledreason
          @Enabled = enabled
          @Supported = supported
        end

        def deserialize(params)
          @DisabledReason = params['DisabledReason']
          @Enabled = params['Enabled']
          @Supported = params['Supported']
        end
      end

      # TSF基本资源信息概览
      class OverviewBasicResourceUsage < TencentCloud::Common::AbstractModel
        # @param ApplicationCount: 应用总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationCount: Integer
        # @param NamespaceCount: 命名空间总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceCount: Integer
        # @param GroupCount: 部署组个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupCount: Integer
        # @param PackageSpaceUsed: 程序包存储空间用量，单位字节
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageSpaceUsed: Integer
        # @param ConsulInstanceCount: 已注册实例数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConsulInstanceCount: Integer

        attr_accessor :ApplicationCount, :NamespaceCount, :GroupCount, :PackageSpaceUsed, :ConsulInstanceCount
        
        def initialize(applicationcount=nil, namespacecount=nil, groupcount=nil, packagespaceused=nil, consulinstancecount=nil)
          @ApplicationCount = applicationcount
          @NamespaceCount = namespacecount
          @GroupCount = groupcount
          @PackageSpaceUsed = packagespaceused
          @ConsulInstanceCount = consulinstancecount
        end

        def deserialize(params)
          @ApplicationCount = params['ApplicationCount']
          @NamespaceCount = params['NamespaceCount']
          @GroupCount = params['GroupCount']
          @PackageSpaceUsed = params['PackageSpaceUsed']
          @ConsulInstanceCount = params['ConsulInstanceCount']
        end
      end

      # tsf-privilege模块，分页数据集列表
      class PagedProgram < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param Content: 数据集列表
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              program_tmp = Program.new
              program_tmp.deserialize(i)
              @Content << program_tmp
            end
          end
        end
      end

      # 路径重写
      class PathRewrite < TencentCloud::Common::AbstractModel
        # @param PathRewriteId: 路径重写规则ID
        # @type PathRewriteId: String
        # @param GatewayGroupId: 网关部署组ID
        # @type GatewayGroupId: String
        # @param Regex: 正则表达式
        # @type Regex: String
        # @param Replacement: 替换的内容
        # @type Replacement: String
        # @param Blocked: 是否屏蔽映射后路径，Y: 是 N: 否
        # @type Blocked: String
        # @param Order: 规则顺序，越小优先级越高
        # @type Order: Integer

        attr_accessor :PathRewriteId, :GatewayGroupId, :Regex, :Replacement, :Blocked, :Order
        
        def initialize(pathrewriteid=nil, gatewaygroupid=nil, regex=nil, replacement=nil, blocked=nil, order=nil)
          @PathRewriteId = pathrewriteid
          @GatewayGroupId = gatewaygroupid
          @Regex = regex
          @Replacement = replacement
          @Blocked = blocked
          @Order = order
        end

        def deserialize(params)
          @PathRewriteId = params['PathRewriteId']
          @GatewayGroupId = params['GatewayGroupId']
          @Regex = params['Regex']
          @Replacement = params['Replacement']
          @Blocked = params['Blocked']
          @Order = params['Order']
        end
      end

      # 路径重写创建对象
      class PathRewriteCreateObject < TencentCloud::Common::AbstractModel
        # @param GatewayGroupId: 网关部署组ID
        # @type GatewayGroupId: String
        # @param Regex: 正则表达式
        # @type Regex: String
        # @param Replacement: 替换的内容
        # @type Replacement: String
        # @param Blocked: 是否屏蔽映射后路径，Y: 是 N: 否
        # @type Blocked: String
        # @param Order: 规则顺序，越小优先级越高
        # @type Order: Integer

        attr_accessor :GatewayGroupId, :Regex, :Replacement, :Blocked, :Order
        
        def initialize(gatewaygroupid=nil, regex=nil, replacement=nil, blocked=nil, order=nil)
          @GatewayGroupId = gatewaygroupid
          @Regex = regex
          @Replacement = replacement
          @Blocked = blocked
          @Order = order
        end

        def deserialize(params)
          @GatewayGroupId = params['GatewayGroupId']
          @Regex = params['Regex']
          @Replacement = params['Replacement']
          @Blocked = params['Blocked']
          @Order = params['Order']
        end
      end

      # 路径重写翻页对象
      class PathRewritePage < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param Content: 路径重写规则列表
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              pathrewrite_tmp = PathRewrite.new
              pathrewrite_tmp.deserialize(i)
              @Content << pathrewrite_tmp
            end
          end
        end
      end

      # 描述程序包关联信息
      class PkgBind < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param GroupId: 部署组id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String

        attr_accessor :ApplicationId, :GroupId
        
        def initialize(applicationid=nil, groupid=nil)
          @ApplicationId = applicationid
          @GroupId = groupid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @GroupId = params['GroupId']
        end
      end

      # 包信息
      class PkgInfo < TencentCloud::Common::AbstractModel
        # @param PkgId: 程序包ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PkgId: String
        # @param PkgName: 程序包名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PkgName: String
        # @param PkgType: 程序包类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PkgType: String
        # @param PkgVersion: 程序包版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PkgVersion: String
        # @param PkgDesc: 程序包描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PkgDesc: String
        # @param UploadTime: 上传时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UploadTime: String
        # @param Md5: 程序包MD5
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Md5: String
        # @param PkgPubStatus: 程序包状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PkgPubStatus: Integer
        # @param PkgBindInfo: 程序包关联关系
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PkgBindInfo: Array

        attr_accessor :PkgId, :PkgName, :PkgType, :PkgVersion, :PkgDesc, :UploadTime, :Md5, :PkgPubStatus, :PkgBindInfo
        
        def initialize(pkgid=nil, pkgname=nil, pkgtype=nil, pkgversion=nil, pkgdesc=nil, uploadtime=nil, md5=nil, pkgpubstatus=nil, pkgbindinfo=nil)
          @PkgId = pkgid
          @PkgName = pkgname
          @PkgType = pkgtype
          @PkgVersion = pkgversion
          @PkgDesc = pkgdesc
          @UploadTime = uploadtime
          @Md5 = md5
          @PkgPubStatus = pkgpubstatus
          @PkgBindInfo = pkgbindinfo
        end

        def deserialize(params)
          @PkgId = params['PkgId']
          @PkgName = params['PkgName']
          @PkgType = params['PkgType']
          @PkgVersion = params['PkgVersion']
          @PkgDesc = params['PkgDesc']
          @UploadTime = params['UploadTime']
          @Md5 = params['Md5']
          @PkgPubStatus = params['PkgPubStatus']
          unless params['PkgBindInfo'].nil?
            @PkgBindInfo = []
            params['PkgBindInfo'].each do |i|
              pkgbind_tmp = PkgBind.new
              pkgbind_tmp.deserialize(i)
              @PkgBindInfo << pkgbind_tmp
            end
          end
        end
      end

      # 包列表
      class PkgList < TencentCloud::Common::AbstractModel
        # @param TotalCount: 程序包总量
        # @type TotalCount: Integer
        # @param Content: 程序包信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array
        # @param RepositoryId: 程序包仓库id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepositoryId: String
        # @param RepositoryType: 程序包仓库类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepositoryType: String
        # @param RepositoryName: 程序包仓库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepositoryName: String

        attr_accessor :TotalCount, :Content, :RepositoryId, :RepositoryType, :RepositoryName
        
        def initialize(totalcount=nil, content=nil, repositoryid=nil, repositorytype=nil, repositoryname=nil)
          @TotalCount = totalcount
          @Content = content
          @RepositoryId = repositoryid
          @RepositoryType = repositorytype
          @RepositoryName = repositoryname
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              pkginfo_tmp = PkgInfo.new
              pkginfo_tmp.deserialize(i)
              @Content << pkginfo_tmp
            end
          end
          @RepositoryId = params['RepositoryId']
          @RepositoryType = params['RepositoryType']
          @RepositoryName = params['RepositoryName']
        end
      end

      # 服务端口
      class Ports < TencentCloud::Common::AbstractModel
        # @param TargetPort: 服务端口
        # @type TargetPort: Integer
        # @param Protocol: 端口协议
        # @type Protocol: String

        attr_accessor :TargetPort, :Protocol
        
        def initialize(targetport=nil, protocol=nil)
          @TargetPort = targetport
          @Protocol = protocol
        end

        def deserialize(params)
          @TargetPort = params['TargetPort']
          @Protocol = params['Protocol']
        end
      end

      # tsf-privilege模块 Program数据集
      class Program < TencentCloud::Common::AbstractModel
        # @param ProgramId: 数据集ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProgramId: String
        # @param ProgramName: 数据集名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProgramName: String
        # @param ProgramDesc: 数据集描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProgramDesc: String
        # @param DeleteFlag: 删除标识，true: 可以删除; false: 不可删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeleteFlag: Boolean
        # @param CreationTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreationTime: Integer
        # @param LastUpdateTime: 最后更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastUpdateTime: Integer
        # @param ProgramItemList: 数据项列表，无值时返回空数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProgramItemList: Array

        attr_accessor :ProgramId, :ProgramName, :ProgramDesc, :DeleteFlag, :CreationTime, :LastUpdateTime, :ProgramItemList
        
        def initialize(programid=nil, programname=nil, programdesc=nil, deleteflag=nil, creationtime=nil, lastupdatetime=nil, programitemlist=nil)
          @ProgramId = programid
          @ProgramName = programname
          @ProgramDesc = programdesc
          @DeleteFlag = deleteflag
          @CreationTime = creationtime
          @LastUpdateTime = lastupdatetime
          @ProgramItemList = programitemlist
        end

        def deserialize(params)
          @ProgramId = params['ProgramId']
          @ProgramName = params['ProgramName']
          @ProgramDesc = params['ProgramDesc']
          @DeleteFlag = params['DeleteFlag']
          @CreationTime = params['CreationTime']
          @LastUpdateTime = params['LastUpdateTime']
          unless params['ProgramItemList'].nil?
            @ProgramItemList = []
            params['ProgramItemList'].each do |i|
              programitem_tmp = ProgramItem.new
              programitem_tmp.deserialize(i)
              @ProgramItemList << programitem_tmp
            end
          end
        end
      end

      # tsf-privilege模块，数据项
      class ProgramItem < TencentCloud::Common::AbstractModel
        # @param ProgramItemId: 数据项ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProgramItemId: String
        # @param Resource: 资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: :class:`Tencentcloud::Tsf.v20180326.models.Resource`
        # @param ValueList: 数据值列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValueList: Array
        # @param IsAll: 全选标识，true: 全选；false: 非全选
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAll: Boolean
        # @param CreationTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreationTime: Integer
        # @param LastUpdateTime: 最后更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastUpdateTime: Integer
        # @param DeleteFlag: 删除标识，true: 可删除；false: 不可删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeleteFlag: Boolean
        # @param ProgramId: 数据集ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProgramId: String

        attr_accessor :ProgramItemId, :Resource, :ValueList, :IsAll, :CreationTime, :LastUpdateTime, :DeleteFlag, :ProgramId
        
        def initialize(programitemid=nil, resource=nil, valuelist=nil, isall=nil, creationtime=nil, lastupdatetime=nil, deleteflag=nil, programid=nil)
          @ProgramItemId = programitemid
          @Resource = resource
          @ValueList = valuelist
          @IsAll = isall
          @CreationTime = creationtime
          @LastUpdateTime = lastupdatetime
          @DeleteFlag = deleteflag
          @ProgramId = programid
        end

        def deserialize(params)
          @ProgramItemId = params['ProgramItemId']
          unless params['Resource'].nil?
            @Resource = Resource.new
            @Resource.deserialize(params['Resource'])
          end
          @ValueList = params['ValueList']
          @IsAll = params['IsAll']
          @CreationTime = params['CreationTime']
          @LastUpdateTime = params['LastUpdateTime']
          @DeleteFlag = params['DeleteFlag']
          @ProgramId = params['ProgramId']
        end
      end

      # 属性字段
      class PropertyField < TencentCloud::Common::AbstractModel
        # @param Name: 属性名称
        # @type Name: String
        # @param Type: 属性类型
        # @type Type: String
        # @param Description: 属性描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String

        attr_accessor :Name, :Type, :Description
        
        def initialize(name=nil, type=nil, description=nil)
          @Name = name
          @Type = type
          @Description = description
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @Description = params['Description']
        end
      end

      # 	端口对象
      class ProtocolPort < TencentCloud::Common::AbstractModel
        # @param Protocol: TCP UDP
        # @type Protocol: String
        # @param Port: 服务端口
        # @type Port: Integer
        # @param TargetPort: 容器端口
        # @type TargetPort: Integer
        # @param NodePort: 主机端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodePort: Integer

        attr_accessor :Protocol, :Port, :TargetPort, :NodePort
        
        def initialize(protocol=nil, port=nil, targetport=nil, nodeport=nil)
          @Protocol = protocol
          @Port = port
          @TargetPort = targetport
          @NodePort = nodeport
        end

        def deserialize(params)
          @Protocol = params['Protocol']
          @Port = params['Port']
          @TargetPort = params['TargetPort']
          @NodePort = params['NodePort']
        end
      end

      # 分位数据模型
      class QuantileEntity < TencentCloud::Common::AbstractModel
        # @param MaxValue: 最大值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxValue: String
        # @param MinValue: 最小值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MinValue: String
        # @param FifthPositionValue: 五分位值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FifthPositionValue: String
        # @param NinthPositionValue: 九分位值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NinthPositionValue: String

        attr_accessor :MaxValue, :MinValue, :FifthPositionValue, :NinthPositionValue
        
        def initialize(maxvalue=nil, minvalue=nil, fifthpositionvalue=nil, ninthpositionvalue=nil)
          @MaxValue = maxvalue
          @MinValue = minvalue
          @FifthPositionValue = fifthpositionvalue
          @NinthPositionValue = ninthpositionvalue
        end

        def deserialize(params)
          @MaxValue = params['MaxValue']
          @MinValue = params['MinValue']
          @FifthPositionValue = params['FifthPositionValue']
          @NinthPositionValue = params['NinthPositionValue']
        end
      end

      # ReassociateBusinessLogConfig请求参数结构体
      class ReassociateBusinessLogConfigRequest < TencentCloud::Common::AbstractModel
        # @param ConfigId: 原关联日志配置ID
        # @type ConfigId: String
        # @param NewConfigId: 新关联日志配置ID
        # @type NewConfigId: String
        # @param ApplicationId: TSF应用ID
        # @type ApplicationId: String
        # @param GroupId: TSF部署组ID
        # @type GroupId: String

        attr_accessor :ConfigId, :NewConfigId, :ApplicationId, :GroupId
        
        def initialize(configid=nil, newconfigid=nil, applicationid=nil, groupid=nil)
          @ConfigId = configid
          @NewConfigId = newconfigid
          @ApplicationId = applicationid
          @GroupId = groupid
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
          @NewConfigId = params['NewConfigId']
          @ApplicationId = params['ApplicationId']
          @GroupId = params['GroupId']
        end
      end

      # ReassociateBusinessLogConfig返回参数结构体
      class ReassociateBusinessLogConfigResponse < TencentCloud::Common::AbstractModel
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

      # RedoTaskBatch请求参数结构体
      class RedoTaskBatchRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param BatchId: 批次ID
        # @type BatchId: String

        attr_accessor :TaskId, :BatchId
        
        def initialize(taskid=nil, batchid=nil)
          @TaskId = taskid
          @BatchId = batchid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @BatchId = params['BatchId']
        end
      end

      # RedoTaskBatch返回参数结构体
      class RedoTaskBatchResponse < TencentCloud::Common::AbstractModel
        # @param Result: 批次ID
        # @type Result: String
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

      # RedoTaskExecute请求参数结构体
      class RedoTaskExecuteRequest < TencentCloud::Common::AbstractModel
        # @param BatchId: 任务批次ID
        # @type BatchId: String
        # @param ExecuteId: 任务执行ID
        # @type ExecuteId: String
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :BatchId, :ExecuteId, :TaskId
        
        def initialize(batchid=nil, executeid=nil, taskid=nil)
          @BatchId = batchid
          @ExecuteId = executeid
          @TaskId = taskid
        end

        def deserialize(params)
          @BatchId = params['BatchId']
          @ExecuteId = params['ExecuteId']
          @TaskId = params['TaskId']
        end
      end

      # RedoTaskExecute返回参数结构体
      class RedoTaskExecuteResponse < TencentCloud::Common::AbstractModel
        # @param Result: 成功失败
        # @type Result: String
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

      # RedoTaskFlowBatch请求参数结构体
      class RedoTaskFlowBatchRequest < TencentCloud::Common::AbstractModel
        # @param FlowBatchId: 工作流批次 ID
        # @type FlowBatchId: String

        attr_accessor :FlowBatchId
        
        def initialize(flowbatchid=nil)
          @FlowBatchId = flowbatchid
        end

        def deserialize(params)
          @FlowBatchId = params['FlowBatchId']
        end
      end

      # RedoTaskFlowBatch返回参数结构体
      class RedoTaskFlowBatchResponse < TencentCloud::Common::AbstractModel
        # @param Result: 工作流批次历史 ID
        # @type Result: String
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

      # RedoTask请求参数结构体
      class RedoTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # RedoTask返回参数结构体
      class RedoTaskResponse < TencentCloud::Common::AbstractModel
        # @param Result: 操作成功or失败
        # @type Result: String
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

      # ReleaseApiGroup请求参数结构体
      class ReleaseApiGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: Api 分组ID
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # ReleaseApiGroup返回参数结构体
      class ReleaseApiGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 成功/失败
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

      # ReleaseConfig请求参数结构体
      class ReleaseConfigRequest < TencentCloud::Common::AbstractModel
        # @param ConfigId: 配置ID
        # @type ConfigId: String
        # @param GroupId: 部署组ID
        # @type GroupId: String
        # @param ReleaseDesc: 发布描述
        # @type ReleaseDesc: String

        attr_accessor :ConfigId, :GroupId, :ReleaseDesc
        
        def initialize(configid=nil, groupid=nil, releasedesc=nil)
          @ConfigId = configid
          @GroupId = groupid
          @ReleaseDesc = releasedesc
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
          @GroupId = params['GroupId']
          @ReleaseDesc = params['ReleaseDesc']
        end
      end

      # ReleaseConfig返回参数结构体
      class ReleaseConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: true：发布成功；false：发布失败
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

      # ReleaseConfigWithDetailResp请求参数结构体
      class ReleaseConfigWithDetailRespRequest < TencentCloud::Common::AbstractModel
        # @param ConfigId: 配置ID
        # @type ConfigId: String
        # @param GroupId: 部署组ID
        # @type GroupId: String
        # @param ReleaseDesc: 发布描述
        # @type ReleaseDesc: String

        attr_accessor :ConfigId, :GroupId, :ReleaseDesc
        
        def initialize(configid=nil, groupid=nil, releasedesc=nil)
          @ConfigId = configid
          @GroupId = groupid
          @ReleaseDesc = releasedesc
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
          @GroupId = params['GroupId']
          @ReleaseDesc = params['ReleaseDesc']
        end
      end

      # ReleaseConfigWithDetailResp返回参数结构体
      class ReleaseConfigWithDetailRespResponse < TencentCloud::Common::AbstractModel
        # @param Result: 配置项发布 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.ConfigRelease`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ConfigRelease.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ReleaseFileConfig请求参数结构体
      class ReleaseFileConfigRequest < TencentCloud::Common::AbstractModel
        # @param ConfigId: 配置ID
        # @type ConfigId: String
        # @param GroupId: 部署组ID
        # @type GroupId: String
        # @param ReleaseDesc: 发布描述
        # @type ReleaseDesc: String

        attr_accessor :ConfigId, :GroupId, :ReleaseDesc
        
        def initialize(configid=nil, groupid=nil, releasedesc=nil)
          @ConfigId = configid
          @GroupId = groupid
          @ReleaseDesc = releasedesc
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
          @GroupId = params['GroupId']
          @ReleaseDesc = params['ReleaseDesc']
        end
      end

      # ReleaseFileConfig返回参数结构体
      class ReleaseFileConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: 发布结果
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # ReleasePublicConfig请求参数结构体
      class ReleasePublicConfigRequest < TencentCloud::Common::AbstractModel
        # @param ConfigId: 配置ID
        # @type ConfigId: String
        # @param NamespaceId: 命名空间ID
        # @type NamespaceId: String
        # @param ReleaseDesc: 发布描述
        # @type ReleaseDesc: String

        attr_accessor :ConfigId, :NamespaceId, :ReleaseDesc
        
        def initialize(configid=nil, namespaceid=nil, releasedesc=nil)
          @ConfigId = configid
          @NamespaceId = namespaceid
          @ReleaseDesc = releasedesc
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
          @NamespaceId = params['NamespaceId']
          @ReleaseDesc = params['ReleaseDesc']
        end
      end

      # ReleasePublicConfig返回参数结构体
      class ReleasePublicConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: true：发布成功；false：发布失败
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # RemoveInstances请求参数结构体
      class RemoveInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群 ID
        # @type ClusterId: String
        # @param InstanceIdList: 云主机 ID 列表
        # @type InstanceIdList: Array

        attr_accessor :ClusterId, :InstanceIdList
        
        def initialize(clusterid=nil, instanceidlist=nil)
          @ClusterId = clusterid
          @InstanceIdList = instanceidlist
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceIdList = params['InstanceIdList']
        end
      end

      # RemoveInstances返回参数结构体
      class RemoveInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 集群移除机器是否成功
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 仓库信息
      class RepositoryInfo < TencentCloud::Common::AbstractModel
        # @param RepositoryId: 仓库ID
        # @type RepositoryId: String
        # @param RepositoryName: 仓库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepositoryName: String
        # @param RepositoryType: 仓库类型（默认仓库：default，私有仓库：private）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepositoryType: String
        # @param RepositoryDesc: 仓库描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepositoryDesc: String
        # @param IsUsed: 仓库是否正在被使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUsed: Boolean
        # @param CreateTime: 仓库创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param BucketName: 仓库桶名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BucketName: String
        # @param BucketRegion: 仓库桶所在地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BucketRegion: String
        # @param Directory: 仓库目录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Directory: String

        attr_accessor :RepositoryId, :RepositoryName, :RepositoryType, :RepositoryDesc, :IsUsed, :CreateTime, :BucketName, :BucketRegion, :Directory
        
        def initialize(repositoryid=nil, repositoryname=nil, repositorytype=nil, repositorydesc=nil, isused=nil, createtime=nil, bucketname=nil, bucketregion=nil, directory=nil)
          @RepositoryId = repositoryid
          @RepositoryName = repositoryname
          @RepositoryType = repositorytype
          @RepositoryDesc = repositorydesc
          @IsUsed = isused
          @CreateTime = createtime
          @BucketName = bucketname
          @BucketRegion = bucketregion
          @Directory = directory
        end

        def deserialize(params)
          @RepositoryId = params['RepositoryId']
          @RepositoryName = params['RepositoryName']
          @RepositoryType = params['RepositoryType']
          @RepositoryDesc = params['RepositoryDesc']
          @IsUsed = params['IsUsed']
          @CreateTime = params['CreateTime']
          @BucketName = params['BucketName']
          @BucketRegion = params['BucketRegion']
          @Directory = params['Directory']
        end
      end

      # 仓库列表
      class RepositoryList < TencentCloud::Common::AbstractModel
        # @param TotalCount: 仓库总量
        # @type TotalCount: Integer
        # @param Content: 仓库信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              repositoryinfo_tmp = RepositoryInfo.new
              repositoryinfo_tmp.deserialize(i)
              @Content << repositoryinfo_tmp
            end
          end
        end
      end

      # tsf-privilege 模块，资源
      class Resource < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: String
        # @param ResourceCode: 资源编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceCode: String
        # @param ResourceName: 资源名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceName: String
        # @param ServiceCode: 资源所属产品编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceCode: String
        # @param ResourceAction: 选取资源使用的Action
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceAction: String
        # @param IdField: 资源数据查询的ID字段名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdField: String
        # @param NameField: 资源数据查询的名称字段名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NameField: String
        # @param SelectIdsField: 资源数据查询的ID过滤字段名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelectIdsField: String
        # @param CreationTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreationTime: Integer
        # @param LastUpdateTime: 最后更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastUpdateTime: Integer
        # @param DeleteFlag: 删除标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeleteFlag: Boolean
        # @param ResourceDesc: 资源描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceDesc: String
        # @param CanSelectAll: 是否可以选择全部
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CanSelectAll: Boolean
        # @param SearchWordField: 资源数据查询的模糊查询字段名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SearchWordField: String
        # @param Index: 排序
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Integer

        attr_accessor :ResourceId, :ResourceCode, :ResourceName, :ServiceCode, :ResourceAction, :IdField, :NameField, :SelectIdsField, :CreationTime, :LastUpdateTime, :DeleteFlag, :ResourceDesc, :CanSelectAll, :SearchWordField, :Index
        
        def initialize(resourceid=nil, resourcecode=nil, resourcename=nil, servicecode=nil, resourceaction=nil, idfield=nil, namefield=nil, selectidsfield=nil, creationtime=nil, lastupdatetime=nil, deleteflag=nil, resourcedesc=nil, canselectall=nil, searchwordfield=nil, index=nil)
          @ResourceId = resourceid
          @ResourceCode = resourcecode
          @ResourceName = resourcename
          @ServiceCode = servicecode
          @ResourceAction = resourceaction
          @IdField = idfield
          @NameField = namefield
          @SelectIdsField = selectidsfield
          @CreationTime = creationtime
          @LastUpdateTime = lastupdatetime
          @DeleteFlag = deleteflag
          @ResourceDesc = resourcedesc
          @CanSelectAll = canselectall
          @SearchWordField = searchwordfield
          @Index = index
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceCode = params['ResourceCode']
          @ResourceName = params['ResourceName']
          @ServiceCode = params['ServiceCode']
          @ResourceAction = params['ResourceAction']
          @IdField = params['IdField']
          @NameField = params['NameField']
          @SelectIdsField = params['SelectIdsField']
          @CreationTime = params['CreationTime']
          @LastUpdateTime = params['LastUpdateTime']
          @DeleteFlag = params['DeleteFlag']
          @ResourceDesc = params['ResourceDesc']
          @CanSelectAll = params['CanSelectAll']
          @SearchWordField = params['SearchWordField']
          @Index = params['Index']
        end
      end

      # k8s env 的 ResourceFieldRef
      class ResourceFieldRef < TencentCloud::Common::AbstractModel
        # @param Resource: k8s 的 Resource
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: String

        attr_accessor :Resource
        
        def initialize(resource=nil)
          @Resource = resource
        end

        def deserialize(params)
          @Resource = params['Resource']
        end
      end

      # 资源任务转态结果
      class ResourceTaskStatusResult < TencentCloud::Common::AbstractModel
        # @param TaskStatus: 任务的执行状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskStatus: Integer

        attr_accessor :TaskStatus
        
        def initialize(taskstatus=nil)
          @TaskStatus = taskstatus
        end

        def deserialize(params)
          @TaskStatus = params['TaskStatus']
        end
      end

      # RevocationConfig请求参数结构体
      class RevocationConfigRequest < TencentCloud::Common::AbstractModel
        # @param ConfigReleaseId: 配置项发布ID
        # @type ConfigReleaseId: String

        attr_accessor :ConfigReleaseId
        
        def initialize(configreleaseid=nil)
          @ConfigReleaseId = configreleaseid
        end

        def deserialize(params)
          @ConfigReleaseId = params['ConfigReleaseId']
        end
      end

      # RevocationConfig返回参数结构体
      class RevocationConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: true：回滚成功；false：回滚失败
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

      # RevocationPublicConfig请求参数结构体
      class RevocationPublicConfigRequest < TencentCloud::Common::AbstractModel
        # @param ConfigReleaseId: 配置项发布ID
        # @type ConfigReleaseId: String

        attr_accessor :ConfigReleaseId
        
        def initialize(configreleaseid=nil)
          @ConfigReleaseId = configreleaseid
        end

        def deserialize(params)
          @ConfigReleaseId = params['ConfigReleaseId']
        end
      end

      # RevocationPublicConfig返回参数结构体
      class RevocationPublicConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: true：撤销成功；false：撤销失败
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # RevokeFileConfig请求参数结构体
      class RevokeFileConfigRequest < TencentCloud::Common::AbstractModel
        # @param ConfigReleaseId: 配置项发布ID
        # @type ConfigReleaseId: String

        attr_accessor :ConfigReleaseId
        
        def initialize(configreleaseid=nil)
          @ConfigReleaseId = configreleaseid
        end

        def deserialize(params)
          @ConfigReleaseId = params['ConfigReleaseId']
        end
      end

      # RevokeFileConfig返回参数结构体
      class RevokeFileConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: 撤回结果
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # RollbackConfig请求参数结构体
      class RollbackConfigRequest < TencentCloud::Common::AbstractModel
        # @param ConfigReleaseLogId: 配置项发布历史ID
        # @type ConfigReleaseLogId: String
        # @param ReleaseDesc: 回滚描述
        # @type ReleaseDesc: String

        attr_accessor :ConfigReleaseLogId, :ReleaseDesc
        
        def initialize(configreleaselogid=nil, releasedesc=nil)
          @ConfigReleaseLogId = configreleaselogid
          @ReleaseDesc = releasedesc
        end

        def deserialize(params)
          @ConfigReleaseLogId = params['ConfigReleaseLogId']
          @ReleaseDesc = params['ReleaseDesc']
        end
      end

      # RollbackConfig返回参数结构体
      class RollbackConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: true：回滚成功；false：回滚失败
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

      # ScalableRule值
      class ScalableRule < TencentCloud::Common::AbstractModel
        # @param RuleId: RuleId值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: String
        # @param Name: Name值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param ExpandVmCountLimit: ExpandVmCountLimit值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpandVmCountLimit: Integer
        # @param ShrinkVmCountLimit: ShrinkVmCountLimit值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShrinkVmCountLimit: Integer
        # @param GroupCount: GroupCount值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupCount: Integer
        # @param Desc: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Desc: String
        # @param Description: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param DisableMetricAS: 是否关闭指标伸缩, 默认0, 0:打开指标伸缩 1:关闭指标伸缩
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisableMetricAS: Integer
        # @param EnableCronAS: 开启定时伸缩规则, 默认0, 0:关闭定时伸缩 1:开启定时伸缩
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableCronAS: Integer

        attr_accessor :RuleId, :Name, :ExpandVmCountLimit, :ShrinkVmCountLimit, :GroupCount, :Desc, :Description, :DisableMetricAS, :EnableCronAS
        
        def initialize(ruleid=nil, name=nil, expandvmcountlimit=nil, shrinkvmcountlimit=nil, groupcount=nil, desc=nil, description=nil, disablemetricas=nil, enablecronas=nil)
          @RuleId = ruleid
          @Name = name
          @ExpandVmCountLimit = expandvmcountlimit
          @ShrinkVmCountLimit = shrinkvmcountlimit
          @GroupCount = groupcount
          @Desc = desc
          @Description = description
          @DisableMetricAS = disablemetricas
          @EnableCronAS = enablecronas
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @Name = params['Name']
          @ExpandVmCountLimit = params['ExpandVmCountLimit']
          @ShrinkVmCountLimit = params['ShrinkVmCountLimit']
          @GroupCount = params['GroupCount']
          @Desc = params['Desc']
          @Description = params['Description']
          @DisableMetricAS = params['DisableMetricAS']
          @EnableCronAS = params['EnableCronAS']
        end
      end

      # tsf 容器集群节点调度策略
      class SchedulingStrategy < TencentCloud::Common::AbstractModel
        # @param Type: NONE：不使用调度策略；CROSS_AZ：跨可用区部署
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String

        attr_accessor :Type
        
        def initialize(type=nil)
          @Type = type
        end

        def deserialize(params)
          @Type = params['Type']
        end
      end

      # SearchBusinessLog请求参数结构体
      class SearchBusinessLogRequest < TencentCloud::Common::AbstractModel
        # @param ConfigId: 日志配置项ID
        # @type ConfigId: String
        # @param InstanceIds: 机器实例ID，不传表示全部实例
        # @type InstanceIds: Array
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Offset: 请求偏移量，取值范围大于等于0，默认值为0
        # @type Offset: Integer
        # @param Limit: 单页请求配置数量，取值范围[1, 200]，默认值为50
        # @type Limit: Integer
        # @param OrderBy: 排序规则，默认值"time"
        # @type OrderBy: String
        # @param OrderType: 排序方式，取值"asc"或"desc"，默认值"desc"
        # @type OrderType: String
        # @param SearchWords: 检索关键词
        # @type SearchWords: Array
        # @param GroupIds: 部署组ID列表，不传表示全部部署组
        # @type GroupIds: Array
        # @param SearchWordType: 检索类型，取值"LUCENE", "REGEXP", "NORMAL"
        # @type SearchWordType: String
        # @param BatchType: 批量请求类型，取值"page"或"scroll"
        # @type BatchType: String
        # @param ScrollId: 游标ID
        # @type ScrollId: String

        attr_accessor :ConfigId, :InstanceIds, :StartTime, :EndTime, :Offset, :Limit, :OrderBy, :OrderType, :SearchWords, :GroupIds, :SearchWordType, :BatchType, :ScrollId
        
        def initialize(configid=nil, instanceids=nil, starttime=nil, endtime=nil, offset=nil, limit=nil, orderby=nil, ordertype=nil, searchwords=nil, groupids=nil, searchwordtype=nil, batchtype=nil, scrollid=nil)
          @ConfigId = configid
          @InstanceIds = instanceids
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
          @OrderBy = orderby
          @OrderType = ordertype
          @SearchWords = searchwords
          @GroupIds = groupids
          @SearchWordType = searchwordtype
          @BatchType = batchtype
          @ScrollId = scrollid
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
          @InstanceIds = params['InstanceIds']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderBy = params['OrderBy']
          @OrderType = params['OrderType']
          @SearchWords = params['SearchWords']
          @GroupIds = params['GroupIds']
          @SearchWordType = params['SearchWordType']
          @BatchType = params['BatchType']
          @ScrollId = params['ScrollId']
        end
      end

      # SearchBusinessLog返回参数结构体
      class SearchBusinessLogResponse < TencentCloud::Common::AbstractModel
        # @param Result: 业务日志列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageBusinessLogV2`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageBusinessLogV2.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # SearchStdoutLog请求参数结构体
      class SearchStdoutLogRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 机器实例ID
        # @type InstanceId: String
        # @param Limit: 单页请求配置数量，取值范围[1, 500]，默认值为100
        # @type Limit: Integer
        # @param SearchWords: 检索关键词
        # @type SearchWords: Array
        # @param StartTime: 查询起始时间
        # @type StartTime: String
        # @param GroupId: 部署组ID
        # @type GroupId: String
        # @param EndTime: 查询结束时间
        # @type EndTime: String
        # @param Offset: 请求偏移量，取值范围大于等于0，默认值为
        # 0
        # @type Offset: Integer
        # @param OrderBy: 排序规则，默认值"time"
        # @type OrderBy: String
        # @param OrderType: 排序方式，取值"asc"或"desc"，默认
        # 值"desc"
        # @type OrderType: String
        # @param SearchWordType: 检索类型，取值"LUCENE", "REGEXP",
        # "NORMAL"
        # @type SearchWordType: String
        # @param BatchType: 批量请求类型，取值"page"或"scroll"，默认
        # 值"page"
        # @type BatchType: String
        # @param ScrollId: 游标ID
        # @type ScrollId: String

        attr_accessor :InstanceId, :Limit, :SearchWords, :StartTime, :GroupId, :EndTime, :Offset, :OrderBy, :OrderType, :SearchWordType, :BatchType, :ScrollId
        
        def initialize(instanceid=nil, limit=nil, searchwords=nil, starttime=nil, groupid=nil, endtime=nil, offset=nil, orderby=nil, ordertype=nil, searchwordtype=nil, batchtype=nil, scrollid=nil)
          @InstanceId = instanceid
          @Limit = limit
          @SearchWords = searchwords
          @StartTime = starttime
          @GroupId = groupid
          @EndTime = endtime
          @Offset = offset
          @OrderBy = orderby
          @OrderType = ordertype
          @SearchWordType = searchwordtype
          @BatchType = batchtype
          @ScrollId = scrollid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @SearchWords = params['SearchWords']
          @StartTime = params['StartTime']
          @GroupId = params['GroupId']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderType = params['OrderType']
          @SearchWordType = params['SearchWordType']
          @BatchType = params['BatchType']
          @ScrollId = params['ScrollId']
        end
      end

      # SearchStdoutLog返回参数结构体
      class SearchStdoutLogResponse < TencentCloud::Common::AbstractModel
        # @param Result: 标准输出日志列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TsfPageStdoutLogV2`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TsfPageStdoutLogV2.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 服务配置
      class ServiceConfig < TencentCloud::Common::AbstractModel
        # @param Name: 服务名
        # @type Name: String
        # @param Ports: 端口信息列表
        # @type Ports: Array
        # @param HealthCheck: 健康检查配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthCheck: :class:`Tencentcloud::Tsf.v20180326.models.HealthCheckConfig`

        attr_accessor :Name, :Ports, :HealthCheck
        
        def initialize(name=nil, ports=nil, healthcheck=nil)
          @Name = name
          @Ports = ports
          @HealthCheck = healthcheck
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['Ports'].nil?
            @Ports = []
            params['Ports'].each do |i|
              ports_tmp = Ports.new
              ports_tmp.deserialize(i)
              @Ports << ports_tmp
            end
          end
          unless params['HealthCheck'].nil?
            @HealthCheck = HealthCheckConfig.new
            @HealthCheck.deserialize(params['HealthCheck'])
          end
        end
      end

      # 容器网络设置。
      class ServiceSetting < TencentCloud::Common::AbstractModel
        # @param AccessType: 0:公网, 1:集群内访问, 2：NodePort, 3: VPC 内网访问
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessType: Integer
        # @param ProtocolPorts: 容器端口映射
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProtocolPorts: Array
        # @param SubnetId: 子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param DisableService: 是否创建 k8s service，默认为 false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisableService: Boolean
        # @param HeadlessService: service 是否为 headless 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeadlessService: Boolean
        # @param AllowDeleteService: 当为 true 且 DisableService 也为 true 时，会删除之前创建的 service，请小心使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllowDeleteService: Boolean
        # @param OpenSessionAffinity: 开启SessionAffinity，true为开启，false为不开启，默认为false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpenSessionAffinity: Boolean
        # @param SessionAffinityTimeoutSeconds: SessionAffinity会话时间，默认10800
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionAffinityTimeoutSeconds: Integer

        attr_accessor :AccessType, :ProtocolPorts, :SubnetId, :DisableService, :HeadlessService, :AllowDeleteService, :OpenSessionAffinity, :SessionAffinityTimeoutSeconds
        
        def initialize(accesstype=nil, protocolports=nil, subnetid=nil, disableservice=nil, headlessservice=nil, allowdeleteservice=nil, opensessionaffinity=nil, sessionaffinitytimeoutseconds=nil)
          @AccessType = accesstype
          @ProtocolPorts = protocolports
          @SubnetId = subnetid
          @DisableService = disableservice
          @HeadlessService = headlessservice
          @AllowDeleteService = allowdeleteservice
          @OpenSessionAffinity = opensessionaffinity
          @SessionAffinityTimeoutSeconds = sessionaffinitytimeoutseconds
        end

        def deserialize(params)
          @AccessType = params['AccessType']
          unless params['ProtocolPorts'].nil?
            @ProtocolPorts = []
            params['ProtocolPorts'].each do |i|
              protocolport_tmp = ProtocolPort.new
              protocolport_tmp.deserialize(i)
              @ProtocolPorts << protocolport_tmp
            end
          end
          @SubnetId = params['SubnetId']
          @DisableService = params['DisableService']
          @HeadlessService = params['HeadlessService']
          @AllowDeleteService = params['AllowDeleteService']
          @OpenSessionAffinity = params['OpenSessionAffinity']
          @SessionAffinityTimeoutSeconds = params['SessionAffinityTimeoutSeconds']
        end
      end

      # 服务统计结果
      class ServiceStatisticsResult < TencentCloud::Common::AbstractModel
        # @param Path: 请求模版路径:type为接口时返回，服务时不返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param Method: 请求方法:type为接口时返回，服务时不返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Method: String
        # @param MicroserviceId: 微服务Id
        # @type MicroserviceId: String
        # @param MicroserviceName: 微服务名称
        # @type MicroserviceName: String
        # @param RequestCount: 请求数
        # @type RequestCount: Integer
        # @param ErrorRate: 请求错误率，不带百分号
        # @type ErrorRate: Float
        # @param AvgTimeConsuming: 平均响应耗时ms
        # @type AvgTimeConsuming: Float
        # @param MetricDataCurves: 响应耗时曲线
        # @type MetricDataCurves: Array
        # @param InstanceId: 实例id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceName: 实例name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param GroupId: 部署组id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String
        # @param GroupName: 部署组name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param ClusterType: 部署组类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterType: String
        # @param GroupExist: 部署组是否存在
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupExist: Integer
        # @param InstanceExist: 实例是否存在，仅限cvm
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceExist: Integer
        # @param ApplicationId: 应用id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param MicroserviceType: 微服务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MicroserviceType: String
        # @param CpuPercent: cpu使用率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CpuPercent: Integer
        # @param HeapUsed: 已用堆大小,单位KB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeapUsed: Integer
        # @param DbName: 数据库
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbName: String
        # @param Script: Script值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Script: String
        # @param DbType: 数据库类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbType: String
        # @param Apdex: Apdex值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Apdex: Float
        # @param Qps: Qps值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Qps: Float
        # @param InstanceOnlineCount: 实例在线数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceOnlineCount: Integer
        # @param InstanceTotalCount: 实例总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceTotalCount: Integer
        # @param Status: normal/error
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param ErrorRateLevel: normal/warn/error
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorRateLevel: String
        # @param AvgTimeConsumingLevel: normal/warn/error
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AvgTimeConsumingLevel: String
        # @param ApdexLevel: normal/warn/error
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApdexLevel: String

        attr_accessor :Path, :Method, :MicroserviceId, :MicroserviceName, :RequestCount, :ErrorRate, :AvgTimeConsuming, :MetricDataCurves, :InstanceId, :InstanceName, :GroupId, :GroupName, :ClusterType, :GroupExist, :InstanceExist, :ApplicationId, :MicroserviceType, :CpuPercent, :HeapUsed, :DbName, :Script, :DbType, :Apdex, :Qps, :InstanceOnlineCount, :InstanceTotalCount, :Status, :ErrorRateLevel, :AvgTimeConsumingLevel, :ApdexLevel
        
        def initialize(path=nil, method=nil, microserviceid=nil, microservicename=nil, requestcount=nil, errorrate=nil, avgtimeconsuming=nil, metricdatacurves=nil, instanceid=nil, instancename=nil, groupid=nil, groupname=nil, clustertype=nil, groupexist=nil, instanceexist=nil, applicationid=nil, microservicetype=nil, cpupercent=nil, heapused=nil, dbname=nil, script=nil, dbtype=nil, apdex=nil, qps=nil, instanceonlinecount=nil, instancetotalcount=nil, status=nil, errorratelevel=nil, avgtimeconsuminglevel=nil, apdexlevel=nil)
          @Path = path
          @Method = method
          @MicroserviceId = microserviceid
          @MicroserviceName = microservicename
          @RequestCount = requestcount
          @ErrorRate = errorrate
          @AvgTimeConsuming = avgtimeconsuming
          @MetricDataCurves = metricdatacurves
          @InstanceId = instanceid
          @InstanceName = instancename
          @GroupId = groupid
          @GroupName = groupname
          @ClusterType = clustertype
          @GroupExist = groupexist
          @InstanceExist = instanceexist
          @ApplicationId = applicationid
          @MicroserviceType = microservicetype
          @CpuPercent = cpupercent
          @HeapUsed = heapused
          @DbName = dbname
          @Script = script
          @DbType = dbtype
          @Apdex = apdex
          @Qps = qps
          @InstanceOnlineCount = instanceonlinecount
          @InstanceTotalCount = instancetotalcount
          @Status = status
          @ErrorRateLevel = errorratelevel
          @AvgTimeConsumingLevel = avgtimeconsuminglevel
          @ApdexLevel = apdexlevel
        end

        def deserialize(params)
          @Path = params['Path']
          @Method = params['Method']
          @MicroserviceId = params['MicroserviceId']
          @MicroserviceName = params['MicroserviceName']
          @RequestCount = params['RequestCount']
          @ErrorRate = params['ErrorRate']
          @AvgTimeConsuming = params['AvgTimeConsuming']
          unless params['MetricDataCurves'].nil?
            @MetricDataCurves = []
            params['MetricDataCurves'].each do |i|
              metricdatacurve_tmp = MetricDataCurve.new
              metricdatacurve_tmp.deserialize(i)
              @MetricDataCurves << metricdatacurve_tmp
            end
          end
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @ClusterType = params['ClusterType']
          @GroupExist = params['GroupExist']
          @InstanceExist = params['InstanceExist']
          @ApplicationId = params['ApplicationId']
          @MicroserviceType = params['MicroserviceType']
          @CpuPercent = params['CpuPercent']
          @HeapUsed = params['HeapUsed']
          @DbName = params['DbName']
          @Script = params['Script']
          @DbType = params['DbType']
          @Apdex = params['Apdex']
          @Qps = params['Qps']
          @InstanceOnlineCount = params['InstanceOnlineCount']
          @InstanceTotalCount = params['InstanceTotalCount']
          @Status = params['Status']
          @ErrorRateLevel = params['ErrorRateLevel']
          @AvgTimeConsumingLevel = params['AvgTimeConsumingLevel']
          @ApdexLevel = params['ApdexLevel']
        end
      end

      # 服务统计结果集
      class ServiceStatisticsResults < TencentCloud::Common::AbstractModel
        # @param Content: 返回结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array
        # @param TotalCount: 条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer

        attr_accessor :Content, :TotalCount
        
        def initialize(content=nil, totalcount=nil)
          @Content = content
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              servicestatisticsresult_tmp = ServiceStatisticsResult.new
              servicestatisticsresult_tmp.deserialize(i)
              @Content << servicestatisticsresult_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # 分片参数
      class ShardArgument < TencentCloud::Common::AbstractModel
        # @param ShardKey: 分片参数 KEY，整形, 范围 [1,1000]
        # @type ShardKey: Integer
        # @param ShardValue: 分片参数 VALUE
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShardValue: String

        attr_accessor :ShardKey, :ShardValue
        
        def initialize(shardkey=nil, shardvalue=nil)
          @ShardKey = shardkey
          @ShardValue = shardvalue
        end

        def deserialize(params)
          @ShardKey = params['ShardKey']
          @ShardValue = params['ShardValue']
        end
      end

      # ShrinkGroup请求参数结构体
      class ShrinkGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # ShrinkGroup返回参数结构体
      class ShrinkGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TaskId`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TaskId.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ShrinkInstances请求参数结构体
      class ShrinkInstancesRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID
        # @type GroupId: String
        # @param InstanceIdList: 下线机器实例ID列表
        # @type InstanceIdList: Array

        attr_accessor :GroupId, :InstanceIdList
        
        def initialize(groupid=nil, instanceidlist=nil)
          @GroupId = groupid
          @InstanceIdList = instanceidlist
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @InstanceIdList = params['InstanceIdList']
        end
      end

      # ShrinkInstances返回参数结构体
      class ShrinkInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 任务ID
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TaskId`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TaskId.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 简单应用
      class SimpleApplication < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param ApplicationName: 应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationName: String
        # @param ApplicationType: 应用类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationType: String
        # @param MicroserviceType: 应用微服务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MicroserviceType: String
        # @param ApplicationDesc: ApplicationDesc
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationDesc: String
        # @param ProgLang: ProgLang
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProgLang: String
        # @param ApplicationResourceType: ApplicationResourceType
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationResourceType: String
        # @param CreateTime: CreateTime
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: UpdateTime
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param ApigatewayServiceId: ApigatewayServiceId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApigatewayServiceId: String
        # @param ApplicationRuntimeType: ApplicationRuntimeType
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationRuntimeType: String

        attr_accessor :ApplicationId, :ApplicationName, :ApplicationType, :MicroserviceType, :ApplicationDesc, :ProgLang, :ApplicationResourceType, :CreateTime, :UpdateTime, :ApigatewayServiceId, :ApplicationRuntimeType
        
        def initialize(applicationid=nil, applicationname=nil, applicationtype=nil, microservicetype=nil, applicationdesc=nil, proglang=nil, applicationresourcetype=nil, createtime=nil, updatetime=nil, apigatewayserviceid=nil, applicationruntimetype=nil)
          @ApplicationId = applicationid
          @ApplicationName = applicationname
          @ApplicationType = applicationtype
          @MicroserviceType = microservicetype
          @ApplicationDesc = applicationdesc
          @ProgLang = proglang
          @ApplicationResourceType = applicationresourcetype
          @CreateTime = createtime
          @UpdateTime = updatetime
          @ApigatewayServiceId = apigatewayserviceid
          @ApplicationRuntimeType = applicationruntimetype
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @ApplicationName = params['ApplicationName']
          @ApplicationType = params['ApplicationType']
          @MicroserviceType = params['MicroserviceType']
          @ApplicationDesc = params['ApplicationDesc']
          @ProgLang = params['ProgLang']
          @ApplicationResourceType = params['ApplicationResourceType']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @ApigatewayServiceId = params['ApigatewayServiceId']
          @ApplicationRuntimeType = params['ApplicationRuntimeType']
        end
      end

      # 部署组
      class SimpleGroup < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String
        # @param GroupName: 部署组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param ApplicationId: 应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param ApplicationName: 应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationName: String
        # @param ApplicationType: 应用类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationType: String
        # @param ClusterId: 集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String
        # @param ClusterType: 集群类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterType: String
        # @param NamespaceId: 命名空间ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceId: String
        # @param NamespaceName: 命名空间名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceName: String
        # @param StartupParameters: 启动参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartupParameters: String
        # @param GroupResourceType: 部署组资源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupResourceType: String
        # @param AppMicroServiceType: 应用微服务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppMicroServiceType: String

        attr_accessor :GroupId, :GroupName, :ApplicationId, :ApplicationName, :ApplicationType, :ClusterId, :ClusterName, :ClusterType, :NamespaceId, :NamespaceName, :StartupParameters, :GroupResourceType, :AppMicroServiceType
        
        def initialize(groupid=nil, groupname=nil, applicationid=nil, applicationname=nil, applicationtype=nil, clusterid=nil, clustername=nil, clustertype=nil, namespaceid=nil, namespacename=nil, startupparameters=nil, groupresourcetype=nil, appmicroservicetype=nil)
          @GroupId = groupid
          @GroupName = groupname
          @ApplicationId = applicationid
          @ApplicationName = applicationname
          @ApplicationType = applicationtype
          @ClusterId = clusterid
          @ClusterName = clustername
          @ClusterType = clustertype
          @NamespaceId = namespaceid
          @NamespaceName = namespacename
          @StartupParameters = startupparameters
          @GroupResourceType = groupresourcetype
          @AppMicroServiceType = appmicroservicetype
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @ApplicationId = params['ApplicationId']
          @ApplicationName = params['ApplicationName']
          @ApplicationType = params['ApplicationType']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @ClusterType = params['ClusterType']
          @NamespaceId = params['NamespaceId']
          @NamespaceName = params['NamespaceName']
          @StartupParameters = params['StartupParameters']
          @GroupResourceType = params['GroupResourceType']
          @AppMicroServiceType = params['AppMicroServiceType']
        end
      end

      # 日志投递kafka配置描述的缩简版
      class SimpleKafkaDeliveryConfig < TencentCloud::Common::AbstractModel
        # @param ConfigId: 配置项id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigId: String
        # @param ConfigName: 配置项名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigName: String

        attr_accessor :ConfigId, :ConfigName
        
        def initialize(configid=nil, configname=nil)
          @ConfigId = configid
          @ConfigName = configname
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
          @ConfigName = params['ConfigName']
        end
      end

      # StartContainerGroup请求参数结构体
      class StartContainerGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # StartContainerGroup返回参数结构体
      class StartContainerGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 启动操作是否成功。
        # true：启动成功
        # false：启动失败
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

      # StartGroup请求参数结构体
      class StartGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # StartGroup返回参数结构体
      class StartGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TaskId`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TaskId.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 标准输出日志
      class StdoutLogV2 < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param Content: 日志内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String
        # @param Timestamp: 日志时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timestamp: Integer
        # @param InstanceIp: 实例IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceIp: String

        attr_accessor :InstanceId, :Content, :Timestamp, :InstanceIp
        
        def initialize(instanceid=nil, content=nil, timestamp=nil, instanceip=nil)
          @InstanceId = instanceid
          @Content = content
          @Timestamp = timestamp
          @InstanceIp = instanceip
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Content = params['Content']
          @Timestamp = params['Timestamp']
          @InstanceIp = params['InstanceIp']
        end
      end

      # StopContainerGroup请求参数结构体
      class StopContainerGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # StopContainerGroup返回参数结构体
      class StopContainerGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 停止操作是否成功。
        # true：停止成功
        # false：停止失败
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

      # StopGroup请求参数结构体
      class StopGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # StopGroup返回参数结构体
      class StopGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.TaskId`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TaskId.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # StopTaskBatch请求参数结构体
      class StopTaskBatchRequest < TencentCloud::Common::AbstractModel
        # @param BatchId: 批次ID
        # @type BatchId: String
        # @param TaskId: 参数ID
        # @type TaskId: String

        attr_accessor :BatchId, :TaskId
        
        def initialize(batchid=nil, taskid=nil)
          @BatchId = batchid
          @TaskId = taskid
        end

        def deserialize(params)
          @BatchId = params['BatchId']
          @TaskId = params['TaskId']
        end
      end

      # StopTaskBatch返回参数结构体
      class StopTaskBatchResponse < TencentCloud::Common::AbstractModel
        # @param Result: 操作成功 or 失败
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

      # StopTaskExecute请求参数结构体
      class StopTaskExecuteRequest < TencentCloud::Common::AbstractModel
        # @param ExecuteId: 任务执行ID
        # @type ExecuteId: String
        # @param BatchId: 任务批次ID
        # @type BatchId: String
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :ExecuteId, :BatchId, :TaskId
        
        def initialize(executeid=nil, batchid=nil, taskid=nil)
          @ExecuteId = executeid
          @BatchId = batchid
          @TaskId = taskid
        end

        def deserialize(params)
          @ExecuteId = params['ExecuteId']
          @BatchId = params['BatchId']
          @TaskId = params['TaskId']
        end
      end

      # StopTaskExecute返回参数结构体
      class StopTaskExecuteResponse < TencentCloud::Common::AbstractModel
        # @param Result: 操作成功 or 失败
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

      # 工作流图中的边
      class TaskFlowEdge < TencentCloud::Common::AbstractModel
        # @param NodeId: 节点 ID
        # @type NodeId: String
        # @param ChildNodeId: 子节点 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChildNodeId: String
        # @param CoreNode: 是否核心任务,Y/N
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CoreNode: String
        # @param EdgeType: 边类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EdgeType: String
        # @param NodeType: 任务节点类型
        # @type NodeType: String
        # @param PositionX: X轴坐标位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PositionX: String
        # @param PositionY: Y轴坐标位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PositionY: String
        # @param GraphId: 图 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GraphId: String
        # @param FlowId: 工作流 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowId: String
        # @param NodeName: 节点名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeName: String
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskLogId: 任务历史ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskLogId: String

        attr_accessor :NodeId, :ChildNodeId, :CoreNode, :EdgeType, :NodeType, :PositionX, :PositionY, :GraphId, :FlowId, :NodeName, :TaskId, :TaskLogId
        
        def initialize(nodeid=nil, childnodeid=nil, corenode=nil, edgetype=nil, nodetype=nil, positionx=nil, positiony=nil, graphid=nil, flowid=nil, nodename=nil, taskid=nil, tasklogid=nil)
          @NodeId = nodeid
          @ChildNodeId = childnodeid
          @CoreNode = corenode
          @EdgeType = edgetype
          @NodeType = nodetype
          @PositionX = positionx
          @PositionY = positiony
          @GraphId = graphid
          @FlowId = flowid
          @NodeName = nodename
          @TaskId = taskid
          @TaskLogId = tasklogid
        end

        def deserialize(params)
          @NodeId = params['NodeId']
          @ChildNodeId = params['ChildNodeId']
          @CoreNode = params['CoreNode']
          @EdgeType = params['EdgeType']
          @NodeType = params['NodeType']
          @PositionX = params['PositionX']
          @PositionY = params['PositionY']
          @GraphId = params['GraphId']
          @FlowId = params['FlowId']
          @NodeName = params['NodeName']
          @TaskId = params['TaskId']
          @TaskLogId = params['TaskLogId']
        end
      end

      # 工作流最近批次的状态
      class TaskFlowLastBatchState < TencentCloud::Common::AbstractModel
        # @param FlowBatchId: 批次ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowBatchId: String
        # @param FlowBatchLogId: 批次历史ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowBatchLogId: String
        # @param State: 状态,WAITING/SUCCESS/FAILED/RUNNING/TERMINATING
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type State: String

        attr_accessor :FlowBatchId, :FlowBatchLogId, :State
        
        def initialize(flowbatchid=nil, flowbatchlogid=nil, state=nil)
          @FlowBatchId = flowbatchid
          @FlowBatchLogId = flowbatchlogid
          @State = state
        end

        def deserialize(params)
          @FlowBatchId = params['FlowBatchId']
          @FlowBatchLogId = params['FlowBatchLogId']
          @State = params['State']
        end
      end

      # 任务id
      class TaskId < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # 任务最近一次执行状态
      class TaskLastExecuteStatus < TencentCloud::Common::AbstractModel
        # @param BatchId: 批次ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchId: String
        # @param State: 运行状态，RUNNING/SUCCESS/FAIL/HALF/TERMINATED
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type State: String
        # @param BatchLogId: 批次历史ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchLogId: String

        attr_accessor :BatchId, :State, :BatchLogId
        
        def initialize(batchid=nil, state=nil, batchlogid=nil)
          @BatchId = batchid
          @State = state
          @BatchLogId = batchlogid
        end

        def deserialize(params)
          @BatchId = params['BatchId']
          @State = params['State']
          @BatchLogId = params['BatchLogId']
        end
      end

      # 任务定义
      class TaskRecord < TencentCloud::Common::AbstractModel
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param TaskType: 任务类型
        # @type TaskType: String
        # @param ExecuteType: 执行类型
        # @type ExecuteType: String
        # @param TaskContent: 任务内容，长度限制65535字节
        # @type TaskContent: String
        # @param GroupId: 分组ID
        # @type GroupId: String
        # @param TimeOut: 超时时间
        # @type TimeOut: Integer
        # @param RetryCount: 重试次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetryCount: Integer
        # @param RetryInterval: 重试间隔
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetryInterval: Integer
        # @param TaskRule: 触发规则
        # @type TaskRule: :class:`Tencentcloud::Tsf.v20180326.models.TaskRule`
        # @param TaskState: 是否启用任务,ENABLED/DISABLED
        # @type TaskState: String
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param SuccessOperator: 判断任务成功的操作符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessOperator: String
        # @param SuccessRatio: 判断任务成功的阈值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessRatio: Integer
        # @param ShardCount: 分片数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShardCount: Integer
        # @param AdvanceSettings: 高级设置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdvanceSettings: :class:`Tencentcloud::Tsf.v20180326.models.AdvanceSettings`
        # @param ShardArguments: 分片参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShardArguments: Array
        # @param BelongFlowIds: 所属工作流ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BelongFlowIds: Array
        # @param TaskLogId: 任务历史ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskLogId: String
        # @param TriggerType: 触发类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerType: String
        # @param TaskArgument: 任务参数，长度限制10000个字符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskArgument: String

        attr_accessor :TaskName, :TaskType, :ExecuteType, :TaskContent, :GroupId, :TimeOut, :RetryCount, :RetryInterval, :TaskRule, :TaskState, :TaskId, :SuccessOperator, :SuccessRatio, :ShardCount, :AdvanceSettings, :ShardArguments, :BelongFlowIds, :TaskLogId, :TriggerType, :TaskArgument
        
        def initialize(taskname=nil, tasktype=nil, executetype=nil, taskcontent=nil, groupid=nil, timeout=nil, retrycount=nil, retryinterval=nil, taskrule=nil, taskstate=nil, taskid=nil, successoperator=nil, successratio=nil, shardcount=nil, advancesettings=nil, shardarguments=nil, belongflowids=nil, tasklogid=nil, triggertype=nil, taskargument=nil)
          @TaskName = taskname
          @TaskType = tasktype
          @ExecuteType = executetype
          @TaskContent = taskcontent
          @GroupId = groupid
          @TimeOut = timeout
          @RetryCount = retrycount
          @RetryInterval = retryinterval
          @TaskRule = taskrule
          @TaskState = taskstate
          @TaskId = taskid
          @SuccessOperator = successoperator
          @SuccessRatio = successratio
          @ShardCount = shardcount
          @AdvanceSettings = advancesettings
          @ShardArguments = shardarguments
          @BelongFlowIds = belongflowids
          @TaskLogId = tasklogid
          @TriggerType = triggertype
          @TaskArgument = taskargument
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @TaskType = params['TaskType']
          @ExecuteType = params['ExecuteType']
          @TaskContent = params['TaskContent']
          @GroupId = params['GroupId']
          @TimeOut = params['TimeOut']
          @RetryCount = params['RetryCount']
          @RetryInterval = params['RetryInterval']
          unless params['TaskRule'].nil?
            @TaskRule = TaskRule.new
            @TaskRule.deserialize(params['TaskRule'])
          end
          @TaskState = params['TaskState']
          @TaskId = params['TaskId']
          @SuccessOperator = params['SuccessOperator']
          @SuccessRatio = params['SuccessRatio']
          @ShardCount = params['ShardCount']
          unless params['AdvanceSettings'].nil?
            @AdvanceSettings = AdvanceSettings.new
            @AdvanceSettings.deserialize(params['AdvanceSettings'])
          end
          unless params['ShardArguments'].nil?
            @ShardArguments = []
            params['ShardArguments'].each do |i|
              shardargument_tmp = ShardArgument.new
              shardargument_tmp.deserialize(i)
              @ShardArguments << shardargument_tmp
            end
          end
          @BelongFlowIds = params['BelongFlowIds']
          @TaskLogId = params['TaskLogId']
          @TriggerType = params['TriggerType']
          @TaskArgument = params['TaskArgument']
        end
      end

      # 翻页查询的任务记录返回
      class TaskRecordPage < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数量
        # @type TotalCount: Integer
        # @param Content: 任务记录列表
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              taskrecord_tmp = TaskRecord.new
              taskrecord_tmp.deserialize(i)
              @Content << taskrecord_tmp
            end
          end
        end
      end

      # 任务规则
      class TaskRule < TencentCloud::Common::AbstractModel
        # @param RuleType: 触发规则类型, Cron/Repeat
        # @type RuleType: String
        # @param Expression: Cron类型规则，cron表达式。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Expression: String
        # @param RepeatInterval: 时间间隔， 单位毫秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepeatInterval: Integer

        attr_accessor :RuleType, :Expression, :RepeatInterval
        
        def initialize(ruletype=nil, expression=nil, repeatinterval=nil)
          @RuleType = ruletype
          @Expression = expression
          @RepeatInterval = repeatinterval
        end

        def deserialize(params)
          @RuleType = params['RuleType']
          @Expression = params['Expression']
          @RepeatInterval = params['RepeatInterval']
        end
      end

      # tcr仓库信息
      class TcrRepoInfo < TencentCloud::Common::AbstractModel
        # @param Region: 地域（填数字）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param RegistryId: 实例id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegistryId: String
        # @param RegistryName: 实例名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegistryName: String
        # @param Namespace: 命名空间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Namespace: String
        # @param RepoName: 仓库名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepoName: String

        attr_accessor :Region, :RegistryId, :RegistryName, :Namespace, :RepoName
        
        def initialize(region=nil, registryid=nil, registryname=nil, namespace=nil, reponame=nil)
          @Region = region
          @RegistryId = registryid
          @RegistryName = registryname
          @Namespace = namespace
          @RepoName = reponame
        end

        def deserialize(params)
          @Region = params['Region']
          @RegistryId = params['RegistryId']
          @RegistryName = params['RegistryName']
          @Namespace = params['Namespace']
          @RepoName = params['RepoName']
        end
      end

      # TerminateTaskFlowBatch请求参数结构体
      class TerminateTaskFlowBatchRequest < TencentCloud::Common::AbstractModel
        # @param FlowBatchId: 工作流批次 ID
        # @type FlowBatchId: String

        attr_accessor :FlowBatchId
        
        def initialize(flowbatchid=nil)
          @FlowBatchId = flowbatchid
        end

        def deserialize(params)
          @FlowBatchId = params['FlowBatchId']
        end
      end

      # TerminateTaskFlowBatch返回参数结构体
      class TerminateTaskFlowBatchResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否停止成功
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

      # jvm监控数据线程数据封装
      class ThreadPicture < TencentCloud::Common::AbstractModel
        # @param ThreadCount: 总线程数
        # @type ThreadCount: Array
        # @param ThreadActive: 活跃线程数
        # @type ThreadActive: Array
        # @param DeamonThreadCount: 守护线程数
        # @type DeamonThreadCount: Array

        attr_accessor :ThreadCount, :ThreadActive, :DeamonThreadCount
        
        def initialize(threadcount=nil, threadactive=nil, deamonthreadcount=nil)
          @ThreadCount = threadcount
          @ThreadActive = threadactive
          @DeamonThreadCount = deamonthreadcount
        end

        def deserialize(params)
          unless params['ThreadCount'].nil?
            @ThreadCount = []
            params['ThreadCount'].each do |i|
              curvepoint_tmp = CurvePoint.new
              curvepoint_tmp.deserialize(i)
              @ThreadCount << curvepoint_tmp
            end
          end
          unless params['ThreadActive'].nil?
            @ThreadActive = []
            params['ThreadActive'].each do |i|
              curvepoint_tmp = CurvePoint.new
              curvepoint_tmp.deserialize(i)
              @ThreadActive << curvepoint_tmp
            end
          end
          unless params['DeamonThreadCount'].nil?
            @DeamonThreadCount = []
            params['DeamonThreadCount'].each do |i|
              curvepoint_tmp = CurvePoint.new
              curvepoint_tmp.deserialize(i)
              @DeamonThreadCount << curvepoint_tmp
            end
          end
        end
      end

      # TsfApiListResponse
      class TsfApiListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Content: API 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              msapiarray_tmp = MsApiArray.new
              msapiarray_tmp.deserialize(i)
              @Content << msapiarray_tmp
            end
          end
        end
      end

      # ApiDetailInfo 翻页对象
      class TsfPageApiDetailInfo < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param Content: API 信息列表
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              apidetailinfo_tmp = ApiDetailInfo.new
              apidetailinfo_tmp.deserialize(i)
              @Content << apidetailinfo_tmp
            end
          end
        end
      end

      # ApiGroupInfo翻页结构体
      class TsfPageApiGroupInfo < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param Content: API分组信息
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              apigroupinfo_tmp = ApiGroupInfo.new
              apigroupinfo_tmp.deserialize(i)
              @Content << apigroupinfo_tmp
            end
          end
        end
      end

      # 应用分页信息
      class TsfPageApplication < TencentCloud::Common::AbstractModel
        # @param TotalCount: 应用总数目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Content: 应用信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              applicationforpage_tmp = ApplicationForPage.new
              applicationforpage_tmp.deserialize(i)
              @Content << applicationforpage_tmp
            end
          end
        end
      end

      # 业务日志配置项列表
      class TsfPageBusinessLogConfig < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Content: 业务日志配置项列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              businesslogconfig_tmp = BusinessLogConfig.new
              businesslogconfig_tmp.deserialize(i)
              @Content << businesslogconfig_tmp
            end
          end
        end
      end

      # 业务日志列表
      class TsfPageBusinessLogV2 < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Content: 业务日志列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array
        # @param ScrollId: 游标ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScrollId: String
        # @param Status: 查询状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String

        attr_accessor :TotalCount, :Content, :ScrollId, :Status
        
        def initialize(totalcount=nil, content=nil, scrollid=nil, status=nil)
          @TotalCount = totalcount
          @Content = content
          @ScrollId = scrollid
          @Status = status
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              businesslogv2_tmp = BusinessLogV2.new
              businesslogv2_tmp.deserialize(i)
              @Content << businesslogv2_tmp
            end
          end
          @ScrollId = params['ScrollId']
          @Status = params['Status']
        end
      end

      # Tsf分页集群对象
      class TsfPageCluster < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Content: 集群列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              cluster_tmp = Cluster.new
              cluster_tmp.deserialize(i)
              @Content << cluster_tmp
            end
          end
        end
      end

      # Tsf分页集群对象
      class TsfPageClusterV2 < TencentCloud::Common::AbstractModel
        # @param TotalCount: 集群总数目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Content: 集群列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              clusterv2_tmp = ClusterV2.new
              clusterv2_tmp.deserialize(i)
              @Content << clusterv2_tmp
            end
          end
        end
      end

      # TsfPage<Config>
      class TsfPageConfig < TencentCloud::Common::AbstractModel
        # @param TotalCount: TsfPageConfig
        # @type TotalCount: Integer
        # @param Content: 配置项列表
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              config_tmp = Config.new
              config_tmp.deserialize(i)
              @Content << config_tmp
            end
          end
        end
      end

      # TSF配置项发布信息分页对象
      class TsfPageConfigRelease < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Content: 配置项发布信息数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              configrelease_tmp = ConfigRelease.new
              configrelease_tmp.deserialize(i)
              @Content << configrelease_tmp
            end
          end
        end
      end

      # TSF配置项发布日志分页对象
      class TsfPageConfigReleaseLog < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Content: 配置项发布日志数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              configreleaselog_tmp = ConfigReleaseLog.new
              configreleaselog_tmp.deserialize(i)
              @Content << configreleaselog_tmp
            end
          end
        end
      end

      # 分页的 ContainerEvent
      class TsfPageContainerEvent < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回个数
        # @type TotalCount: Integer
        # @param Content: events 数组
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              containerevent_tmp = ContainerEvent.new
              containerevent_tmp.deserialize(i)
              @Content << containerevent_tmp
            end
          end
        end
      end

      # 维度分页
      class TsfPageDimension < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param Content: 维度
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Content = params['Content']
        end
      end

      # 文件配置项列表
      class TsfPageFileConfig < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Content: 文件配置数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              fileconfig_tmp = FileConfig.new
              fileconfig_tmp.deserialize(i)
              @Content << fileconfig_tmp
            end
          end
        end
      end

      # 文件配置项发布信息列表
      class TsfPageFileConfigRelease < TencentCloud::Common::AbstractModel
        # @param TotalCount: 数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Content: 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              fileconfigrelease_tmp = FileConfigRelease.new
              fileconfigrelease_tmp.deserialize(i)
              @Content << fileconfigrelease_tmp
            end
          end
        end
      end

      # GatewayDeployGroup 翻页对象
      class TsfPageGatewayDeployGroup < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录总数
        # @type TotalCount: Integer
        # @param Content: 记录实体列表
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              gatewaydeploygroup_tmp = GatewayDeployGroup.new
              gatewaydeploygroup_tmp.deserialize(i)
              @Content << gatewaydeploygroup_tmp
            end
          end
        end
      end

      # GatewayPlugin 翻页对象
      class TsfPageGatewayPlugin < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Content: 记录实体列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              gatewayplugin_tmp = GatewayPlugin.new
              gatewayplugin_tmp.deserialize(i)
              @Content << gatewayplugin_tmp
            end
          end
        end
      end

      # TSF机器实例分页对象
      class TsfPageInstance < TencentCloud::Common::AbstractModel
        # @param TotalCount: 机器实例总数目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Content: 机器实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              instance_tmp = Instance.new
              instance_tmp.deserialize(i)
              @Content << instance_tmp
            end
          end
        end
      end

      # 微服务列表信息
      class TsfPageMicroservice < TencentCloud::Common::AbstractModel
        # @param TotalCount: 微服务总数目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Content: 微服务列表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              microservice_tmp = Microservice.new
              microservice_tmp.deserialize(i)
              @Content << microservice_tmp
            end
          end
        end
      end

      # 微服务实例的分页内容
      class TsfPageMsInstance < TencentCloud::Common::AbstractModel
        # @param TotalCount: 微服务实例总数目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Content: 微服务实例列表内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              msinstance_tmp = MsInstance.new
              msinstance_tmp.deserialize(i)
              @Content << msinstance_tmp
            end
          end
        end
      end

      # Tsf命名空间分页对象
      class TsfPageNamespace < TencentCloud::Common::AbstractModel
        # @param TotalCount: 命名空间总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Content: 命名空间列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              namespace_tmp = Namespace.new
              namespace_tmp.deserialize(i)
              @Content << namespace_tmp
            end
          end
        end
      end

      # TSF分页简单应用对象
      class TsfPageSimpleApplication < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Content: 简单应用列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              simpleapplication_tmp = SimpleApplication.new
              simpleapplication_tmp.deserialize(i)
              @Content << simpleapplication_tmp
            end
          end
        end
      end

      # TSF简单部署组分页列表
      class TsfPageSimpleGroup < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Content: 简单部署组列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              simplegroup_tmp = SimpleGroup.new
              simplegroup_tmp.deserialize(i)
              @Content << simplegroup_tmp
            end
          end
        end
      end

      # 标准输出日志列表
      class TsfPageStdoutLogV2 < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Content: 标准输出日志列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array
        # @param ScrollId: 游标ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScrollId: String
        # @param Status: 查询状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String

        attr_accessor :TotalCount, :Content, :ScrollId, :Status
        
        def initialize(totalcount=nil, content=nil, scrollid=nil, status=nil)
          @TotalCount = totalcount
          @Content = content
          @ScrollId = scrollid
          @Status = status
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              stdoutlogv2_tmp = StdoutLogV2.new
              stdoutlogv2_tmp.deserialize(i)
              @Content << stdoutlogv2_tmp
            end
          end
          @ScrollId = params['ScrollId']
          @Status = params['Status']
        end
      end

      # 单元化命名空间翻页对象
      class TsfPageUnitNamespace < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录总数
        # @type TotalCount: Integer
        # @param Content: 记录实体列表
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              unitnamespace_tmp = UnitNamespace.new
              unitnamespace_tmp.deserialize(i)
              @Content << unitnamespace_tmp
            end
          end
        end
      end

      # 单元化规则翻页对象
      class TsfPageUnitRule < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录总数
        # @type TotalCount: Integer
        # @param Content: 记录实体列表
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              unitrule_tmp = UnitRule.new
              unitrule_tmp.deserialize(i)
              @Content << unitrule_tmp
            end
          end
        end
      end

      # 列表中部署组分页信息
      class TsfPageVmGroup < TencentCloud::Common::AbstractModel
        # @param TotalCount: 虚拟机部署组总数目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Content: 虚拟机部署组列表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array

        attr_accessor :TotalCount, :Content
        
        def initialize(totalcount=nil, content=nil)
          @TotalCount = totalcount
          @Content = content
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              vmgroupsimple_tmp = VmGroupSimple.new
              vmgroupsimple_tmp.deserialize(i)
              @Content << vmgroupsimple_tmp
            end
          end
        end
      end

      # UnbindApiGroup请求参数结构体
      class UnbindApiGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupGatewayList: 分组网关id列表
        # @type GroupGatewayList: Array

        attr_accessor :GroupGatewayList
        
        def initialize(groupgatewaylist=nil)
          @GroupGatewayList = groupgatewaylist
        end

        def deserialize(params)
          unless params['GroupGatewayList'].nil?
            @GroupGatewayList = []
            params['GroupGatewayList'].each do |i|
              gatewaygroupids_tmp = GatewayGroupIds.new
              gatewaygroupids_tmp.deserialize(i)
              @GroupGatewayList << gatewaygroupids_tmp
            end
          end
        end
      end

      # UnbindApiGroup返回参数结构体
      class UnbindApiGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果，成功失败
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

      # 微服务网关单元化命名空间
      class UnitNamespace < TencentCloud::Common::AbstractModel
        # @param NamespaceId: 命名空间ID
        # @type NamespaceId: String
        # @param NamespaceName: 命名空间Name
        # @type NamespaceName: String
        # @param Id: 单元化命名空间ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param GatewayInstanceId: 网关实体ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GatewayInstanceId: String
        # @param CreatedTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param UpdatedTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedTime: String

        attr_accessor :NamespaceId, :NamespaceName, :Id, :GatewayInstanceId, :CreatedTime, :UpdatedTime
        
        def initialize(namespaceid=nil, namespacename=nil, id=nil, gatewayinstanceid=nil, createdtime=nil, updatedtime=nil)
          @NamespaceId = namespaceid
          @NamespaceName = namespacename
          @Id = id
          @GatewayInstanceId = gatewayinstanceid
          @CreatedTime = createdtime
          @UpdatedTime = updatedtime
        end

        def deserialize(params)
          @NamespaceId = params['NamespaceId']
          @NamespaceName = params['NamespaceName']
          @Id = params['Id']
          @GatewayInstanceId = params['GatewayInstanceId']
          @CreatedTime = params['CreatedTime']
          @UpdatedTime = params['UpdatedTime']
        end
      end

      # 微服务网关单元化规则
      class UnitRule < TencentCloud::Common::AbstractModel
        # @param Name: 规则名称
        # @type Name: String
        # @param Id: 规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param GatewayInstanceId: 网关实体ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GatewayInstanceId: String
        # @param Description: 规则描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Status: 使用状态：enabled/disabled
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param UnitRuleItemList: 规则项列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitRuleItemList: Array
        # @param CreatedTime: CreatedTime
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param UpdatedTime: UpdatedTime
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedTime: String

        attr_accessor :Name, :Id, :GatewayInstanceId, :Description, :Status, :UnitRuleItemList, :CreatedTime, :UpdatedTime
        
        def initialize(name=nil, id=nil, gatewayinstanceid=nil, description=nil, status=nil, unitruleitemlist=nil, createdtime=nil, updatedtime=nil)
          @Name = name
          @Id = id
          @GatewayInstanceId = gatewayinstanceid
          @Description = description
          @Status = status
          @UnitRuleItemList = unitruleitemlist
          @CreatedTime = createdtime
          @UpdatedTime = updatedtime
        end

        def deserialize(params)
          @Name = params['Name']
          @Id = params['Id']
          @GatewayInstanceId = params['GatewayInstanceId']
          @Description = params['Description']
          @Status = params['Status']
          unless params['UnitRuleItemList'].nil?
            @UnitRuleItemList = []
            params['UnitRuleItemList'].each do |i|
              unitruleitem_tmp = UnitRuleItem.new
              unitruleitem_tmp.deserialize(i)
              @UnitRuleItemList << unitruleitem_tmp
            end
          end
          @CreatedTime = params['CreatedTime']
          @UpdatedTime = params['UpdatedTime']
        end
      end

      # 微服务网关单元化规则项
      class UnitRuleItem < TencentCloud::Common::AbstractModel
        # @param Relationship: 逻辑关系：AND/OR
        # @type Relationship: String
        # @param DestNamespaceId: 目的地命名空间ID
        # @type DestNamespaceId: String
        # @param DestNamespaceName: 目的地命名空间名称
        # @type DestNamespaceName: String
        # @param Name: 规则项名称
        # @type Name: String
        # @param Id: 规则项ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param UnitRuleId: 单元化规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitRuleId: String
        # @param Priority: 规则顺序，越小优先级越高：默认为0
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Priority: Integer
        # @param Description: 规则描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param UnitRuleTagList: 规则标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitRuleTagList: Array

        attr_accessor :Relationship, :DestNamespaceId, :DestNamespaceName, :Name, :Id, :UnitRuleId, :Priority, :Description, :UnitRuleTagList
        
        def initialize(relationship=nil, destnamespaceid=nil, destnamespacename=nil, name=nil, id=nil, unitruleid=nil, priority=nil, description=nil, unitruletaglist=nil)
          @Relationship = relationship
          @DestNamespaceId = destnamespaceid
          @DestNamespaceName = destnamespacename
          @Name = name
          @Id = id
          @UnitRuleId = unitruleid
          @Priority = priority
          @Description = description
          @UnitRuleTagList = unitruletaglist
        end

        def deserialize(params)
          @Relationship = params['Relationship']
          @DestNamespaceId = params['DestNamespaceId']
          @DestNamespaceName = params['DestNamespaceName']
          @Name = params['Name']
          @Id = params['Id']
          @UnitRuleId = params['UnitRuleId']
          @Priority = params['Priority']
          @Description = params['Description']
          unless params['UnitRuleTagList'].nil?
            @UnitRuleTagList = []
            params['UnitRuleTagList'].each do |i|
              unitruletag_tmp = UnitRuleTag.new
              unitruletag_tmp.deserialize(i)
              @UnitRuleTagList << unitruletag_tmp
            end
          end
        end
      end

      # 微服务网关单元化规则标签
      class UnitRuleTag < TencentCloud::Common::AbstractModel
        # @param TagType: 标签类型 : U(用户标签)
        # @type TagType: String
        # @param TagField: 标签名
        # @type TagField: String
        # @param TagOperator: 操作符:IN/NOT_IN/EQUAL/NOT_EQUAL/REGEX
        # @type TagOperator: String
        # @param TagValue: 标签值
        # @type TagValue: String
        # @param UnitRuleItemId: 单元化规则项ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitRuleItemId: String
        # @param Id: 规则ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String

        attr_accessor :TagType, :TagField, :TagOperator, :TagValue, :UnitRuleItemId, :Id
        
        def initialize(tagtype=nil, tagfield=nil, tagoperator=nil, tagvalue=nil, unitruleitemid=nil, id=nil)
          @TagType = tagtype
          @TagField = tagfield
          @TagOperator = tagoperator
          @TagValue = tagvalue
          @UnitRuleItemId = unitruleitemid
          @Id = id
        end

        def deserialize(params)
          @TagType = params['TagType']
          @TagField = params['TagField']
          @TagOperator = params['TagOperator']
          @TagValue = params['TagValue']
          @UnitRuleItemId = params['UnitRuleItemId']
          @Id = params['Id']
        end
      end

      # UpdateApiGroup请求参数结构体
      class UpdateApiGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: Api 分组ID
        # @type GroupId: String
        # @param GroupName: Api 分组名称
        # @type GroupName: String
        # @param Description: Api 分组描述
        # @type Description: String
        # @param AuthType: 鉴权类型
        # @type AuthType: String
        # @param GroupContext: 分组上下文
        # @type GroupContext: String
        # @param NamespaceNameKey: 命名空间参数key值
        # @type NamespaceNameKey: String
        # @param ServiceNameKey: 微服务名参数key值
        # @type ServiceNameKey: String
        # @param NamespaceNameKeyPosition: 命名空间参数位置，path，header或query，默认是path
        # @type NamespaceNameKeyPosition: String
        # @param ServiceNameKeyPosition: 微服务名参数位置，path，header或query，默认是path
        # @type ServiceNameKeyPosition: String

        attr_accessor :GroupId, :GroupName, :Description, :AuthType, :GroupContext, :NamespaceNameKey, :ServiceNameKey, :NamespaceNameKeyPosition, :ServiceNameKeyPosition
        
        def initialize(groupid=nil, groupname=nil, description=nil, authtype=nil, groupcontext=nil, namespacenamekey=nil, servicenamekey=nil, namespacenamekeyposition=nil, servicenamekeyposition=nil)
          @GroupId = groupid
          @GroupName = groupname
          @Description = description
          @AuthType = authtype
          @GroupContext = groupcontext
          @NamespaceNameKey = namespacenamekey
          @ServiceNameKey = servicenamekey
          @NamespaceNameKeyPosition = namespacenamekeyposition
          @ServiceNameKeyPosition = servicenamekeyposition
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @Description = params['Description']
          @AuthType = params['AuthType']
          @GroupContext = params['GroupContext']
          @NamespaceNameKey = params['NamespaceNameKey']
          @ServiceNameKey = params['ServiceNameKey']
          @NamespaceNameKeyPosition = params['NamespaceNameKeyPosition']
          @ServiceNameKeyPosition = params['ServiceNameKeyPosition']
        end
      end

      # UpdateApiGroup返回参数结构体
      class UpdateApiGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果，true: 成功, false: 失败
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # UpdateApiRateLimitRule请求参数结构体
      class UpdateApiRateLimitRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 限流规则ID
        # @type RuleId: String
        # @param UsableStatus: 开启/禁用，enabled/disabled
        # @type UsableStatus: String
        # @param MaxQps: qps值，开启限流规则时，必填
        # @type MaxQps: Integer

        attr_accessor :RuleId, :UsableStatus, :MaxQps
        
        def initialize(ruleid=nil, usablestatus=nil, maxqps=nil)
          @RuleId = ruleid
          @UsableStatus = usablestatus
          @MaxQps = maxqps
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @UsableStatus = params['UsableStatus']
          @MaxQps = params['MaxQps']
        end
      end

      # UpdateApiRateLimitRule返回参数结构体
      class UpdateApiRateLimitRuleResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
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

      # UpdateApiRateLimitRules请求参数结构体
      class UpdateApiRateLimitRulesRequest < TencentCloud::Common::AbstractModel
        # @param ApiIds: API ID 列表
        # @type ApiIds: Array
        # @param UsableStatus: 开启/禁用，enabled/disabled
        # @type UsableStatus: String
        # @param MaxQps: QPS值。开启限流规则时，必填
        # @type MaxQps: Integer

        attr_accessor :ApiIds, :UsableStatus, :MaxQps
        
        def initialize(apiids=nil, usablestatus=nil, maxqps=nil)
          @ApiIds = apiids
          @UsableStatus = usablestatus
          @MaxQps = maxqps
        end

        def deserialize(params)
          @ApiIds = params['ApiIds']
          @UsableStatus = params['UsableStatus']
          @MaxQps = params['MaxQps']
        end
      end

      # UpdateApiRateLimitRules返回参数结构体
      class UpdateApiRateLimitRulesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
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

      # UpdateApiTimeouts请求参数结构体
      class UpdateApiTimeoutsRequest < TencentCloud::Common::AbstractModel
        # @param ApiIds: API ID 列表
        # @type ApiIds: Array
        # @param UsableStatus: 开启/禁用，enabled/disabled
        # @type UsableStatus: String
        # @param Timeout: 超时时间，单位毫秒，开启API超时时，必填
        # @type Timeout: Integer

        attr_accessor :ApiIds, :UsableStatus, :Timeout
        
        def initialize(apiids=nil, usablestatus=nil, timeout=nil)
          @ApiIds = apiids
          @UsableStatus = usablestatus
          @Timeout = timeout
        end

        def deserialize(params)
          @ApiIds = params['ApiIds']
          @UsableStatus = params['UsableStatus']
          @Timeout = params['Timeout']
        end
      end

      # UpdateApiTimeouts返回参数结构体
      class UpdateApiTimeoutsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
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

      # UpdateConfigTemplate请求参数结构体
      class UpdateConfigTemplateRequest < TencentCloud::Common::AbstractModel
        # @param ConfigTemplateId: 配置模板id
        # @type ConfigTemplateId: String
        # @param ConfigTemplateName: 配置模板名称
        # @type ConfigTemplateName: String
        # @param ConfigTemplateType: 配置模板对应的微服务框架
        # @type ConfigTemplateType: String
        # @param ConfigTemplateValue: 配置模板数据
        # @type ConfigTemplateValue: String
        # @param ConfigTemplateDesc: 配置模板描述
        # @type ConfigTemplateDesc: String

        attr_accessor :ConfigTemplateId, :ConfigTemplateName, :ConfigTemplateType, :ConfigTemplateValue, :ConfigTemplateDesc
        
        def initialize(configtemplateid=nil, configtemplatename=nil, configtemplatetype=nil, configtemplatevalue=nil, configtemplatedesc=nil)
          @ConfigTemplateId = configtemplateid
          @ConfigTemplateName = configtemplatename
          @ConfigTemplateType = configtemplatetype
          @ConfigTemplateValue = configtemplatevalue
          @ConfigTemplateDesc = configtemplatedesc
        end

        def deserialize(params)
          @ConfigTemplateId = params['ConfigTemplateId']
          @ConfigTemplateName = params['ConfigTemplateName']
          @ConfigTemplateType = params['ConfigTemplateType']
          @ConfigTemplateValue = params['ConfigTemplateValue']
          @ConfigTemplateDesc = params['ConfigTemplateDesc']
        end
      end

      # UpdateConfigTemplate返回参数结构体
      class UpdateConfigTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Result: 结果true：成功；false：失败；
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

      # UpdateGatewayApi请求参数结构体
      class UpdateGatewayApiRequest < TencentCloud::Common::AbstractModel
        # @param ApiId: API ID
        # @type ApiId: String
        # @param Path: API 路径
        # @type Path: String
        # @param Method: Api 请求方法
        # @type Method: String
        # @param PathMapping: 请求映射
        # @type PathMapping: String
        # @param Host: api所在服务host
        # @type Host: String
        # @param Description: api描述信息
        # @type Description: String

        attr_accessor :ApiId, :Path, :Method, :PathMapping, :Host, :Description
        
        def initialize(apiid=nil, path=nil, method=nil, pathmapping=nil, host=nil, description=nil)
          @ApiId = apiid
          @Path = path
          @Method = method
          @PathMapping = pathmapping
          @Host = host
          @Description = description
        end

        def deserialize(params)
          @ApiId = params['ApiId']
          @Path = params['Path']
          @Method = params['Method']
          @PathMapping = params['PathMapping']
          @Host = params['Host']
          @Description = params['Description']
        end
      end

      # UpdateGatewayApi返回参数结构体
      class UpdateGatewayApiResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果，成功失败
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

      # UpdateHealthCheckSettings请求参数结构体
      class UpdateHealthCheckSettingsRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID
        # @type GroupId: String
        # @param EnableHealthCheck: 是否能使健康检查
        # @type EnableHealthCheck: Boolean
        # @param HealthCheckSettings: 健康检查配置
        # @type HealthCheckSettings: :class:`Tencentcloud::Tsf.v20180326.models.HealthCheckSettings`

        attr_accessor :GroupId, :EnableHealthCheck, :HealthCheckSettings
        
        def initialize(groupid=nil, enablehealthcheck=nil, healthchecksettings=nil)
          @GroupId = groupid
          @EnableHealthCheck = enablehealthcheck
          @HealthCheckSettings = healthchecksettings
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @EnableHealthCheck = params['EnableHealthCheck']
          unless params['HealthCheckSettings'].nil?
            @HealthCheckSettings = HealthCheckSettings.new
            @HealthCheckSettings.deserialize(params['HealthCheckSettings'])
          end
        end
      end

      # UpdateHealthCheckSettings返回参数结构体
      class UpdateHealthCheckSettingsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 更新健康检查配置操作是否成功。
        # true：操作成功。
        # false：操作失败。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # UpdateRepository请求参数结构体
      class UpdateRepositoryRequest < TencentCloud::Common::AbstractModel
        # @param RepositoryId: 仓库ID
        # @type RepositoryId: String
        # @param RepositoryDesc: 仓库描述
        # @type RepositoryDesc: String

        attr_accessor :RepositoryId, :RepositoryDesc
        
        def initialize(repositoryid=nil, repositorydesc=nil)
          @RepositoryId = repositoryid
          @RepositoryDesc = repositorydesc
        end

        def deserialize(params)
          @RepositoryId = params['RepositoryId']
          @RepositoryDesc = params['RepositoryDesc']
        end
      end

      # UpdateRepository返回参数结构体
      class UpdateRepositoryResponse < TencentCloud::Common::AbstractModel
        # @param Result: 更新仓库是否成功
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # UpdateUnitRule请求参数结构体
      class UpdateUnitRuleRequest < TencentCloud::Common::AbstractModel
        # @param Id: 规则ID
        # @type Id: String
        # @param Name: 规则名称
        # @type Name: String
        # @param Description: 规则描述
        # @type Description: String
        # @param UnitRuleItemList: 规则项列表
        # @type UnitRuleItemList: Array

        attr_accessor :Id, :Name, :Description, :UnitRuleItemList
        
        def initialize(id=nil, name=nil, description=nil, unitruleitemlist=nil)
          @Id = id
          @Name = name
          @Description = description
          @UnitRuleItemList = unitruleitemlist
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Description = params['Description']
          unless params['UnitRuleItemList'].nil?
            @UnitRuleItemList = []
            params['UnitRuleItemList'].each do |i|
              unitruleitem_tmp = UnitRuleItem.new
              unitruleitem_tmp.deserialize(i)
              @UnitRuleItemList << unitruleitem_tmp
            end
          end
        end
      end

      # UpdateUnitRule返回参数结构体
      class UpdateUnitRuleResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # k8s env 的 ValueFrom
      class ValueFrom < TencentCloud::Common::AbstractModel
        # @param FieldRef: k8s env 的 FieldRef
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FieldRef: :class:`Tencentcloud::Tsf.v20180326.models.FieldRef`
        # @param ResourceFieldRef: k8s env 的 ResourceFieldRef
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceFieldRef: :class:`Tencentcloud::Tsf.v20180326.models.ResourceFieldRef`

        attr_accessor :FieldRef, :ResourceFieldRef
        
        def initialize(fieldref=nil, resourcefieldref=nil)
          @FieldRef = fieldref
          @ResourceFieldRef = resourcefieldref
        end

        def deserialize(params)
          unless params['FieldRef'].nil?
            @FieldRef = FieldRef.new
            @FieldRef.deserialize(params['FieldRef'])
          end
          unless params['ResourceFieldRef'].nil?
            @ResourceFieldRef = ResourceFieldRef.new
            @ResourceFieldRef.deserialize(params['ResourceFieldRef'])
          end
        end
      end

      # 虚拟机部署组信息
      class VmGroup < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String
        # @param GroupName: 部署组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param GroupStatus: 部署组状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupStatus: String
        # @param PackageId: 程序包ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageId: String
        # @param PackageName: 程序包名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageName: String
        # @param PackageVersion: 程序包版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageVersion: String
        # @param ClusterId: 集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String
        # @param NamespaceId: 命名空间ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceId: String
        # @param NamespaceName: 命名空间名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceName: String
        # @param ApplicationId: 应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param ApplicationName: 应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationName: String
        # @param InstanceCount: 部署组机器数目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceCount: Integer
        # @param RunInstanceCount: 部署组运行中机器数目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunInstanceCount: Integer
        # @param StartupParameters: 部署组启动参数信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartupParameters: String
        # @param CreateTime: 部署组创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 部署组更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param OffInstanceCount: 部署组停止机器数目
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OffInstanceCount: Integer
        # @param GroupDesc: 部署组描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupDesc: String
        # @param MicroserviceType: 微服务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MicroserviceType: String
        # @param ApplicationType: 应用类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationType: String
        # @param GroupResourceType: 部署组资源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupResourceType: String
        # @param UpdatedTime: 部署组更新时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedTime: Integer
        # @param DeployDesc: 部署应用描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployDesc: String
        # @param UpdateType: 滚动发布的更新方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateType: Integer
        # @param DeployBetaEnable: 发布是否启用beta批次
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployBetaEnable: Boolean
        # @param DeployBatch: 滚动发布的批次比例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployBatch: Array
        # @param DeployExeMode: 滚动发布的批次执行方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployExeMode: String
        # @param DeployWaitTime: 滚动发布的每个批次的等待时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployWaitTime: Integer
        # @param EnableHealthCheck: 是否开启了健康检查
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableHealthCheck: Boolean
        # @param HealthCheckSettings: 健康检查配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthCheckSettings: :class:`Tencentcloud::Tsf.v20180326.models.HealthCheckSettings`
        # @param PackageType: 程序包类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageType: String
        # @param StartScript: 启动脚本 base64编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartScript: String
        # @param StopScript: 停止脚本 base64编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StopScript: String
        # @param Alias: 部署组备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alias: String
        # @param AgentProfileList: javaagent信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentProfileList: Array
        # @param WarmupSetting: 预热属性配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WarmupSetting: :class:`Tencentcloud::Tsf.v20180326.models.WarmupSetting`
        # @param GatewayConfig: Envoy网关配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GatewayConfig: :class:`Tencentcloud::Tsf.v20180326.models.GatewayConfig`

        attr_accessor :GroupId, :GroupName, :GroupStatus, :PackageId, :PackageName, :PackageVersion, :ClusterId, :ClusterName, :NamespaceId, :NamespaceName, :ApplicationId, :ApplicationName, :InstanceCount, :RunInstanceCount, :StartupParameters, :CreateTime, :UpdateTime, :OffInstanceCount, :GroupDesc, :MicroserviceType, :ApplicationType, :GroupResourceType, :UpdatedTime, :DeployDesc, :UpdateType, :DeployBetaEnable, :DeployBatch, :DeployExeMode, :DeployWaitTime, :EnableHealthCheck, :HealthCheckSettings, :PackageType, :StartScript, :StopScript, :Alias, :AgentProfileList, :WarmupSetting, :GatewayConfig
        
        def initialize(groupid=nil, groupname=nil, groupstatus=nil, packageid=nil, packagename=nil, packageversion=nil, clusterid=nil, clustername=nil, namespaceid=nil, namespacename=nil, applicationid=nil, applicationname=nil, instancecount=nil, runinstancecount=nil, startupparameters=nil, createtime=nil, updatetime=nil, offinstancecount=nil, groupdesc=nil, microservicetype=nil, applicationtype=nil, groupresourcetype=nil, updatedtime=nil, deploydesc=nil, updatetype=nil, deploybetaenable=nil, deploybatch=nil, deployexemode=nil, deploywaittime=nil, enablehealthcheck=nil, healthchecksettings=nil, packagetype=nil, startscript=nil, stopscript=nil, _alias=nil, agentprofilelist=nil, warmupsetting=nil, gatewayconfig=nil)
          @GroupId = groupid
          @GroupName = groupname
          @GroupStatus = groupstatus
          @PackageId = packageid
          @PackageName = packagename
          @PackageVersion = packageversion
          @ClusterId = clusterid
          @ClusterName = clustername
          @NamespaceId = namespaceid
          @NamespaceName = namespacename
          @ApplicationId = applicationid
          @ApplicationName = applicationname
          @InstanceCount = instancecount
          @RunInstanceCount = runinstancecount
          @StartupParameters = startupparameters
          @CreateTime = createtime
          @UpdateTime = updatetime
          @OffInstanceCount = offinstancecount
          @GroupDesc = groupdesc
          @MicroserviceType = microservicetype
          @ApplicationType = applicationtype
          @GroupResourceType = groupresourcetype
          @UpdatedTime = updatedtime
          @DeployDesc = deploydesc
          @UpdateType = updatetype
          @DeployBetaEnable = deploybetaenable
          @DeployBatch = deploybatch
          @DeployExeMode = deployexemode
          @DeployWaitTime = deploywaittime
          @EnableHealthCheck = enablehealthcheck
          @HealthCheckSettings = healthchecksettings
          @PackageType = packagetype
          @StartScript = startscript
          @StopScript = stopscript
          @Alias = _alias
          @AgentProfileList = agentprofilelist
          @WarmupSetting = warmupsetting
          @GatewayConfig = gatewayconfig
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @GroupStatus = params['GroupStatus']
          @PackageId = params['PackageId']
          @PackageName = params['PackageName']
          @PackageVersion = params['PackageVersion']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @NamespaceId = params['NamespaceId']
          @NamespaceName = params['NamespaceName']
          @ApplicationId = params['ApplicationId']
          @ApplicationName = params['ApplicationName']
          @InstanceCount = params['InstanceCount']
          @RunInstanceCount = params['RunInstanceCount']
          @StartupParameters = params['StartupParameters']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @OffInstanceCount = params['OffInstanceCount']
          @GroupDesc = params['GroupDesc']
          @MicroserviceType = params['MicroserviceType']
          @ApplicationType = params['ApplicationType']
          @GroupResourceType = params['GroupResourceType']
          @UpdatedTime = params['UpdatedTime']
          @DeployDesc = params['DeployDesc']
          @UpdateType = params['UpdateType']
          @DeployBetaEnable = params['DeployBetaEnable']
          @DeployBatch = params['DeployBatch']
          @DeployExeMode = params['DeployExeMode']
          @DeployWaitTime = params['DeployWaitTime']
          @EnableHealthCheck = params['EnableHealthCheck']
          unless params['HealthCheckSettings'].nil?
            @HealthCheckSettings = HealthCheckSettings.new
            @HealthCheckSettings.deserialize(params['HealthCheckSettings'])
          end
          @PackageType = params['PackageType']
          @StartScript = params['StartScript']
          @StopScript = params['StopScript']
          @Alias = params['Alias']
          unless params['AgentProfileList'].nil?
            @AgentProfileList = []
            params['AgentProfileList'].each do |i|
              agentprofile_tmp = AgentProfile.new
              agentprofile_tmp.deserialize(i)
              @AgentProfileList << agentprofile_tmp
            end
          end
          unless params['WarmupSetting'].nil?
            @WarmupSetting = WarmupSetting.new
            @WarmupSetting.deserialize(params['WarmupSetting'])
          end
          unless params['GatewayConfig'].nil?
            @GatewayConfig = GatewayConfig.new
            @GatewayConfig.deserialize(params['GatewayConfig'])
          end
        end
      end

      # 虚拟机部署组其他字段
      class VmGroupOther < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String
        # @param PackageId: 程序包ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageId: String
        # @param PackageName: 程序包名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageName: String
        # @param PackageVersion: 程序包版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageVersion: String
        # @param InstanceCount: 部署组实例数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceCount: Integer
        # @param RunInstanceCount: 部署组运行中实例数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunInstanceCount: Integer
        # @param OffInstanceCount: 部署组中停止实例数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OffInstanceCount: Integer
        # @param GroupStatus: 部署组状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupStatus: String
        # @param IsNotEqualServiceConfig: 服务配置信息是否匹配
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsNotEqualServiceConfig: Boolean
        # @param HealthCheckSettings: HealthCheckSettings
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthCheckSettings: :class:`Tencentcloud::Tsf.v20180326.models.HealthCheckSettings`

        attr_accessor :GroupId, :PackageId, :PackageName, :PackageVersion, :InstanceCount, :RunInstanceCount, :OffInstanceCount, :GroupStatus, :IsNotEqualServiceConfig, :HealthCheckSettings
        
        def initialize(groupid=nil, packageid=nil, packagename=nil, packageversion=nil, instancecount=nil, runinstancecount=nil, offinstancecount=nil, groupstatus=nil, isnotequalserviceconfig=nil, healthchecksettings=nil)
          @GroupId = groupid
          @PackageId = packageid
          @PackageName = packagename
          @PackageVersion = packageversion
          @InstanceCount = instancecount
          @RunInstanceCount = runinstancecount
          @OffInstanceCount = offinstancecount
          @GroupStatus = groupstatus
          @IsNotEqualServiceConfig = isnotequalserviceconfig
          @HealthCheckSettings = healthchecksettings
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @PackageId = params['PackageId']
          @PackageName = params['PackageName']
          @PackageVersion = params['PackageVersion']
          @InstanceCount = params['InstanceCount']
          @RunInstanceCount = params['RunInstanceCount']
          @OffInstanceCount = params['OffInstanceCount']
          @GroupStatus = params['GroupStatus']
          @IsNotEqualServiceConfig = params['IsNotEqualServiceConfig']
          unless params['HealthCheckSettings'].nil?
            @HealthCheckSettings = HealthCheckSettings.new
            @HealthCheckSettings.deserialize(params['HealthCheckSettings'])
          end
        end
      end

      # 虚拟机部署组列表简要字段
      class VmGroupSimple < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String
        # @param GroupName: 部署组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param ApplicationType: 应用类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationType: String
        # @param GroupDesc: 部署组描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupDesc: String
        # @param UpdateTime: 部署组更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param ClusterId: 集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param StartupParameters: 部署组启动参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartupParameters: String
        # @param NamespaceId: 命名空间ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceId: String
        # @param CreateTime: 部署组创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ClusterName: 集群名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String
        # @param ApplicationId: 应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param ApplicationName: 应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationName: String
        # @param NamespaceName: 命名空间名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceName: String
        # @param MicroserviceType: 应用微服务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MicroserviceType: String
        # @param GroupResourceType: 部署组资源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupResourceType: String
        # @param UpdatedTime: 部署组更新时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedTime: Integer
        # @param DeployDesc: 部署应用描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployDesc: String
        # @param Alias: 部署组备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alias: String

        attr_accessor :GroupId, :GroupName, :ApplicationType, :GroupDesc, :UpdateTime, :ClusterId, :StartupParameters, :NamespaceId, :CreateTime, :ClusterName, :ApplicationId, :ApplicationName, :NamespaceName, :MicroserviceType, :GroupResourceType, :UpdatedTime, :DeployDesc, :Alias
        
        def initialize(groupid=nil, groupname=nil, applicationtype=nil, groupdesc=nil, updatetime=nil, clusterid=nil, startupparameters=nil, namespaceid=nil, createtime=nil, clustername=nil, applicationid=nil, applicationname=nil, namespacename=nil, microservicetype=nil, groupresourcetype=nil, updatedtime=nil, deploydesc=nil, _alias=nil)
          @GroupId = groupid
          @GroupName = groupname
          @ApplicationType = applicationtype
          @GroupDesc = groupdesc
          @UpdateTime = updatetime
          @ClusterId = clusterid
          @StartupParameters = startupparameters
          @NamespaceId = namespaceid
          @CreateTime = createtime
          @ClusterName = clustername
          @ApplicationId = applicationid
          @ApplicationName = applicationname
          @NamespaceName = namespacename
          @MicroserviceType = microservicetype
          @GroupResourceType = groupresourcetype
          @UpdatedTime = updatedtime
          @DeployDesc = deploydesc
          @Alias = _alias
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @ApplicationType = params['ApplicationType']
          @GroupDesc = params['GroupDesc']
          @UpdateTime = params['UpdateTime']
          @ClusterId = params['ClusterId']
          @StartupParameters = params['StartupParameters']
          @NamespaceId = params['NamespaceId']
          @CreateTime = params['CreateTime']
          @ClusterName = params['ClusterName']
          @ApplicationId = params['ApplicationId']
          @ApplicationName = params['ApplicationName']
          @NamespaceName = params['NamespaceName']
          @MicroserviceType = params['MicroserviceType']
          @GroupResourceType = params['GroupResourceType']
          @UpdatedTime = params['UpdatedTime']
          @DeployDesc = params['DeployDesc']
          @Alias = params['Alias']
        end
      end

      # 容器卷挂载信息
      class VolumeInfo < TencentCloud::Common::AbstractModel
        # @param VolumeType: 数据卷类型
        # @type VolumeType: String
        # @param VolumeName: 数据卷名称
        # @type VolumeName: String
        # @param VolumeConfig: 数据卷配置
        # @type VolumeConfig: String

        attr_accessor :VolumeType, :VolumeName, :VolumeConfig
        
        def initialize(volumetype=nil, volumename=nil, volumeconfig=nil)
          @VolumeType = volumetype
          @VolumeName = volumename
          @VolumeConfig = volumeconfig
        end

        def deserialize(params)
          @VolumeType = params['VolumeType']
          @VolumeName = params['VolumeName']
          @VolumeConfig = params['VolumeConfig']
        end
      end

      # 容器卷挂载点信息
      class VolumeMountInfo < TencentCloud::Common::AbstractModel
        # @param VolumeMountName: 挂载数据卷名称
        # @type VolumeMountName: String
        # @param VolumeMountPath: 挂载路径
        # @type VolumeMountPath: String
        # @param VolumeMountSubPath: 挂载子路径
        # @type VolumeMountSubPath: String
        # @param ReadOrWrite: 读写，1：读 2：读写
        # @type ReadOrWrite: String

        attr_accessor :VolumeMountName, :VolumeMountPath, :VolumeMountSubPath, :ReadOrWrite
        
        def initialize(volumemountname=nil, volumemountpath=nil, volumemountsubpath=nil, readorwrite=nil)
          @VolumeMountName = volumemountname
          @VolumeMountPath = volumemountpath
          @VolumeMountSubPath = volumemountsubpath
          @ReadOrWrite = readorwrite
        end

        def deserialize(params)
          @VolumeMountName = params['VolumeMountName']
          @VolumeMountPath = params['VolumeMountPath']
          @VolumeMountSubPath = params['VolumeMountSubPath']
          @ReadOrWrite = params['ReadOrWrite']
        end
      end

      # 预热配置
      class WarmupSetting < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否开启预热
        # @type Enabled: Boolean
        # @param WarmupTime: 预热时间
        # @type WarmupTime: Integer
        # @param Curvature: 预热曲率，取值 1~5
        # @type Curvature: Integer
        # @param EnabledProtection: 是否开启预热保护，在开启保护的情况下，超过 50% 的节点处于预热中，则会中止预热
        # @type EnabledProtection: Boolean

        attr_accessor :Enabled, :WarmupTime, :Curvature, :EnabledProtection
        
        def initialize(enabled=nil, warmuptime=nil, curvature=nil, enabledprotection=nil)
          @Enabled = enabled
          @WarmupTime = warmuptime
          @Curvature = curvature
          @EnabledProtection = enabledprotection
        end

        def deserialize(params)
          @Enabled = params['Enabled']
          @WarmupTime = params['WarmupTime']
          @Curvature = params['Curvature']
          @EnabledProtection = params['EnabledProtection']
        end
      end

    end
  end
end

