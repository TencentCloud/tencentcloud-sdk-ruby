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

        attr_accessor :ClusterId, :InstanceIdList, :OsName, :ImageId, :Password, :KeyId, :SgId, :InstanceImportMode
        
        def initialize(clusterid=nil, instanceidlist=nil, osname=nil, imageid=nil, password=nil, keyid=nil, sgid=nil, instanceimportmode=nil)
          @ClusterId = clusterid
          @InstanceIdList = instanceidlist
          @OsName = osname
          @ImageId = imageid
          @Password = password
          @KeyId = keyid
          @SgId = sgid
          @InstanceImportMode = instanceimportmode
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
            @Result = AddInstanceResult.new.deserialize(params[Result])
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

        attr_accessor :FailedInstanceIds, :SuccInstanceIds, :TimeoutInstanceIds
        
        def initialize(failedinstanceids=nil, succinstanceids=nil, timeoutinstanceids=nil)
          @FailedInstanceIds = failedinstanceids
          @SuccInstanceIds = succinstanceids
          @TimeoutInstanceIds = timeoutinstanceids
        end

        def deserialize(params)
          @FailedInstanceIds = params['FailedInstanceIds']
          @SuccInstanceIds = params['SuccInstanceIds']
          @TimeoutInstanceIds = params['TimeoutInstanceIds']
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

        attr_accessor :ClusterId, :InstanceIdList, :OsName, :ImageId, :Password, :KeyId, :SgId, :InstanceImportMode
        
        def initialize(clusterid=nil, instanceidlist=nil, osname=nil, imageid=nil, password=nil, keyid=nil, sgid=nil, instanceimportmode=nil)
          @ClusterId = clusterid
          @InstanceIdList = instanceidlist
          @OsName = osname
          @ImageId = imageid
          @Password = password
          @KeyId = keyid
          @SgId = sgid
          @InstanceImportMode = instanceimportmode
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
          @Properties = params['Properties']
        end
      end

      # ApiDetailResponse
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

        attr_accessor :Request, :Response, :Definitions, :RequestContentType, :CanRun, :Status
        
        def initialize(request=nil, response=nil, definitions=nil, requestcontenttype=nil, canrun=nil, status=nil)
          @Request = request
          @Response = response
          @Definitions = definitions
          @RequestContentType = requestcontenttype
          @CanRun = canrun
          @Status = status
        end

        def deserialize(params)
          @Request = params['Request']
          @Response = params['Response']
          @Definitions = params['Definitions']
          @RequestContentType = params['RequestContentType']
          @CanRun = params['CanRun']
          @Status = params['Status']
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
        
        def initialize(name=nil, type=nil, in=nil, description=nil, required=nil, defaultvalue=nil)
          @Name = name
          @Type = type
          @In = in
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

        attr_accessor :ApplicationId, :ApplicationName, :ApplicationDesc, :ApplicationType, :MicroserviceType, :ProgLang, :CreateTime, :UpdateTime, :ApplicationResourceType, :ApplicationRuntimeType, :ApigatewayServiceId
        
        def initialize(applicationid=nil, applicationname=nil, applicationdesc=nil, applicationtype=nil, microservicetype=nil, proglang=nil, createtime=nil, updatetime=nil, applicationresourcetype=nil, applicationruntimetype=nil, apigatewayserviceid=nil)
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

        attr_accessor :ClusterId, :ClusterName, :ClusterDesc, :ClusterType, :VpcId, :ClusterStatus, :ClusterCIDR, :ClusterTotalCpu, :ClusterTotalMem, :ClusterUsedCpu, :ClusterUsedMem, :InstanceCount, :RunInstanceCount, :NormalInstanceCount, :DeleteFlag, :CreateTime, :UpdateTime, :TsfRegionId, :TsfRegionName, :TsfZoneId, :TsfZoneName, :DeleteFlagReason, :ClusterLimitCpu, :ClusterLimitMem, :RunServiceInstanceCount, :SubnetId, :OperationInfo
        
        def initialize(clusterid=nil, clustername=nil, clusterdesc=nil, clustertype=nil, vpcid=nil, clusterstatus=nil, clustercidr=nil, clustertotalcpu=nil, clustertotalmem=nil, clusterusedcpu=nil, clusterusedmem=nil, instancecount=nil, runinstancecount=nil, normalinstancecount=nil, deleteflag=nil, createtime=nil, updatetime=nil, tsfregionid=nil, tsfregionname=nil, tsfzoneid=nil, tsfzonename=nil, deleteflagreason=nil, clusterlimitcpu=nil, clusterlimitmem=nil, runserviceinstancecount=nil, subnetid=nil, operationinfo=nil)
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
            @OperationInfo = OperationInfo.new.deserialize(params[OperationInfo])
          end
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

        attr_accessor :ConfigReleaseId, :ConfigId, :ConfigName, :ConfigVersion, :ReleaseTime, :GroupId, :GroupName, :NamespaceId, :NamespaceName, :ClusterId, :ClusterName, :ReleaseDesc
        
        def initialize(configreleaseid=nil, configid=nil, configname=nil, configversion=nil, releasetime=nil, groupid=nil, groupname=nil, namespaceid=nil, namespacename=nil, clusterid=nil, clustername=nil, releasedesc=nil)
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

        attr_accessor :GroupId, :GroupName, :CreateTime, :Server, :RepoName, :TagName, :ClusterId, :ClusterName, :NamespaceId, :NamespaceName, :CpuRequest, :CpuLimit, :MemRequest, :MemLimit
        
        def initialize(groupid=nil, groupname=nil, createtime=nil, server=nil, reponame=nil, tagname=nil, clusterid=nil, clustername=nil, namespaceid=nil, namespacename=nil, cpurequest=nil, cpulimit=nil, memrequest=nil, memlimit=nil)
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
          @Content = params['Content']
          @TotalCount = params['TotalCount']
        end
      end

      #  容器部署组详情
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

        attr_accessor :GroupId, :GroupName, :InstanceNum, :CurrentNum, :CreateTime, :Server, :Reponame, :TagName, :ClusterId, :ClusterName, :NamespaceId, :NamespaceName, :ApplicationId, :LbIp, :ApplicationType, :ClusterIp, :NodePort, :CpuLimit, :MemLimit, :AccessType, :UpdateType, :UpdateIvl, :ProtocolPorts, :Envs, :ApplicationName, :Message, :Status, :MicroserviceType, :CpuRequest, :MemRequest, :SubnetId, :GroupResourceType, :InstanceCount, :UpdatedTime, :MaxSurge, :MaxUnavailable
        
        def initialize(groupid=nil, groupname=nil, instancenum=nil, currentnum=nil, createtime=nil, server=nil, reponame=nil, tagname=nil, clusterid=nil, clustername=nil, namespaceid=nil, namespacename=nil, applicationid=nil, lbip=nil, applicationtype=nil, clusterip=nil, nodeport=nil, cpulimit=nil, memlimit=nil, accesstype=nil, updatetype=nil, updateivl=nil, protocolports=nil, envs=nil, applicationname=nil, message=nil, status=nil, microservicetype=nil, cpurequest=nil, memrequest=nil, subnetid=nil, groupresourcetype=nil, instancecount=nil, updatedtime=nil, maxsurge=nil, maxunavailable=nil)
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
          @ProtocolPorts = params['ProtocolPorts']
          @Envs = params['Envs']
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
            @Credentials = CosCredentials.new.deserialize(params[Credentials])
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
            @Credentials = CosCredentials.new.deserialize(params[Credentials])
          end
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

        attr_accessor :ApplicationName, :ApplicationType, :MicroserviceType, :ApplicationDesc, :ApplicationLogConfig, :ApplicationResourceType, :ApplicationRuntimeType
        
        def initialize(applicationname=nil, applicationtype=nil, microservicetype=nil, applicationdesc=nil, applicationlogconfig=nil, applicationresourcetype=nil, applicationruntimetype=nil)
          @ApplicationName = applicationname
          @ApplicationType = applicationtype
          @MicroserviceType = microservicetype
          @ApplicationDesc = applicationdesc
          @ApplicationLogConfig = applicationlogconfig
          @ApplicationResourceType = applicationresourcetype
          @ApplicationRuntimeType = applicationruntimetype
        end

        def deserialize(params)
          @ApplicationName = params['ApplicationName']
          @ApplicationType = params['ApplicationType']
          @MicroserviceType = params['MicroserviceType']
          @ApplicationDesc = params['ApplicationDesc']
          @ApplicationLogConfig = params['ApplicationLogConfig']
          @ApplicationResourceType = params['ApplicationResourceType']
          @ApplicationRuntimeType = params['ApplicationRuntimeType']
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

        attr_accessor :ClusterName, :ClusterType, :VpcId, :ClusterCIDR, :ClusterDesc, :TsfRegionId, :TsfZoneId, :SubnetId, :ClusterVersion
        
        def initialize(clustername=nil, clustertype=nil, vpcid=nil, clustercidr=nil, clusterdesc=nil, tsfregionid=nil, tsfzoneid=nil, subnetid=nil, clusterversion=nil)
          @ClusterName = clustername
          @ClusterType = clustertype
          @VpcId = vpcid
          @ClusterCIDR = clustercidr
          @ClusterDesc = clusterdesc
          @TsfRegionId = tsfregionid
          @TsfZoneId = tsfzoneid
          @SubnetId = subnetid
          @ClusterVersion = clusterversion
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
        end
      end

      # CreateCluster返回参数结构体
      class CreateClusterResponse < TencentCloud::Common::AbstractModel
        # @param Result: 集群ID
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

        attr_accessor :ConfigName, :ConfigVersion, :ConfigValue, :ApplicationId, :ConfigVersionDesc, :ConfigType, :EncodeWithBase64
        
        def initialize(configname=nil, configversion=nil, configvalue=nil, applicationid=nil, configversiondesc=nil, configtype=nil, encodewithbase64=nil)
          @ConfigName = configname
          @ConfigVersion = configversion
          @ConfigValue = configvalue
          @ApplicationId = applicationid
          @ConfigVersionDesc = configversiondesc
          @ConfigType = configtype
          @EncodeWithBase64 = encodewithbase64
        end

        def deserialize(params)
          @ConfigName = params['ConfigName']
          @ConfigVersion = params['ConfigVersion']
          @ConfigValue = params['ConfigValue']
          @ApplicationId = params['ApplicationId']
          @ConfigVersionDesc = params['ConfigVersionDesc']
          @ConfigType = params['ConfigType']
          @EncodeWithBase64 = params['EncodeWithBase64']
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
          @ProtocolPorts = params['ProtocolPorts']
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

        attr_accessor :ApplicationId, :NamespaceId, :GroupName, :ClusterId, :GroupDesc, :GroupResourceType
        
        def initialize(applicationid=nil, namespaceid=nil, groupname=nil, clusterid=nil, groupdesc=nil, groupresourcetype=nil)
          @ApplicationId = applicationid
          @NamespaceId = namespaceid
          @GroupName = groupname
          @ClusterId = clusterid
          @GroupDesc = groupdesc
          @GroupResourceType = groupresourcetype
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @NamespaceId = params['NamespaceId']
          @GroupName = params['GroupName']
          @ClusterId = params['ClusterId']
          @GroupDesc = params['GroupDesc']
          @GroupResourceType = params['GroupResourceType']
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

        attr_accessor :LaneName, :Remark, :LaneGroupList
        
        def initialize(lanename=nil, remark=nil, lanegrouplist=nil)
          @LaneName = lanename
          @Remark = remark
          @LaneGroupList = lanegrouplist
        end

        def deserialize(params)
          @LaneName = params['LaneName']
          @Remark = params['Remark']
          @LaneGroupList = params['LaneGroupList']
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

        attr_accessor :RuleName, :Remark, :RuleTagList, :RuleTagRelationship, :LaneId
        
        def initialize(rulename=nil, remark=nil, ruletaglist=nil, ruletagrelationship=nil, laneid=nil)
          @RuleName = rulename
          @Remark = remark
          @RuleTagList = ruletaglist
          @RuleTagRelationship = ruletagrelationship
          @LaneId = laneid
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          @Remark = params['Remark']
          @RuleTagList = params['RuleTagList']
          @RuleTagRelationship = params['RuleTagRelationship']
          @LaneId = params['LaneId']
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

        attr_accessor :NamespaceName, :ClusterId, :NamespaceDesc, :NamespaceResourceType, :NamespaceType, :NamespaceId
        
        def initialize(namespacename=nil, clusterid=nil, namespacedesc=nil, namespaceresourcetype=nil, namespacetype=nil, namespaceid=nil)
          @NamespaceName = namespacename
          @ClusterId = clusterid
          @NamespaceDesc = namespacedesc
          @NamespaceResourceType = namespaceresourcetype
          @NamespaceType = namespacetype
          @NamespaceId = namespaceid
        end

        def deserialize(params)
          @NamespaceName = params['NamespaceName']
          @ClusterId = params['ClusterId']
          @NamespaceDesc = params['NamespaceDesc']
          @NamespaceResourceType = params['NamespaceResourceType']
          @NamespaceType = params['NamespaceType']
          @NamespaceId = params['NamespaceId']
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

        attr_accessor :ConfigName, :ConfigVersion, :ConfigValue, :ConfigVersionDesc, :ConfigType, :EncodeWithBase64
        
        def initialize(configname=nil, configversion=nil, configvalue=nil, configversiondesc=nil, configtype=nil, encodewithbase64=nil)
          @ConfigName = configname
          @ConfigVersion = configversion
          @ConfigValue = configvalue
          @ConfigVersionDesc = configversiondesc
          @ConfigType = configtype
          @EncodeWithBase64 = encodewithbase64
        end

        def deserialize(params)
          @ConfigName = params['ConfigName']
          @ConfigVersion = params['ConfigVersion']
          @ConfigValue = params['ConfigValue']
          @ConfigVersionDesc = params['ConfigVersionDesc']
          @ConfigType = params['ConfigType']
          @EncodeWithBase64 = params['EncodeWithBase64']
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

      # CreateRepository请求参数结构体
      class CreateRepositoryRequest < TencentCloud::Common::AbstractModel
        # @param RepositoryName: 仓库名称
        # @type RepositoryName: String
        # @param RepositoryType: 仓库类型
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

      # CreateServerlessGroup请求参数结构体
      class CreateServerlessGroupRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 分组所属应用ID
        # @type ApplicationId: String
        # @param GroupName: 分组名称字段，长度1~60，字母或下划线开头，可包含字母数字下划线
        # @type GroupName: String
        # @param NamespaceId: 分组所属名字空间ID
        # @type NamespaceId: String
        # @param ClusterId: 分组所属集群ID
        # @type ClusterId: String

        attr_accessor :ApplicationId, :GroupName, :NamespaceId, :ClusterId
        
        def initialize(applicationid=nil, groupname=nil, namespaceid=nil, clusterid=nil)
          @ApplicationId = applicationid
          @GroupName = groupname
          @NamespaceId = namespaceid
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @GroupName = params['GroupName']
          @NamespaceId = params['NamespaceId']
          @ClusterId = params['ClusterId']
        end
      end

      # CreateServerlessGroup返回参数结构体
      class CreateServerlessGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 创建成功的部署组ID，返回null表示失败
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

        attr_accessor :ImageTags
        
        def initialize(imagetags=nil)
          @ImageTags = imagetags
        end

        def deserialize(params)
          @ImageTags = params['ImageTags']
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

      # DeployContainerGroup请求参数结构体
      class DeployContainerGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID，分组唯一标识
        # @type GroupId: String
        # @param Server: 镜像server
        # @type Server: String
        # @param TagName: 镜像版本名称,如v1
        # @type TagName: String
        # @param InstanceNum: 实例数量
        # @type InstanceNum: Integer
        # @param Reponame: 旧版镜像名，如/tsf/nginx
        # @type Reponame: String
        # @param CpuLimit: 业务容器最大的 CPU 核数，对应 K8S 的 limit；不填时默认为 request 的 2 倍
        # @type CpuLimit: String
        # @param MemLimit: 业务容器最大的内存 MiB 数，对应 K8S 的 limit；不填时默认为 request 的 2 倍
        # @type MemLimit: String
        # @param JvmOpts: jvm参数
        # @type JvmOpts: String
        # @param CpuRequest: 业务容器分配的 CPU 核数，对应 K8S 的 request
        # @type CpuRequest: String
        # @param MemRequest: 业务容器分配的内存 MiB 数，对应 K8S 的 request
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

        attr_accessor :GroupId, :Server, :TagName, :InstanceNum, :Reponame, :CpuLimit, :MemLimit, :JvmOpts, :CpuRequest, :MemRequest, :DoNotStart, :RepoName, :UpdateType, :UpdateIvl, :AgentCpuRequest, :AgentCpuLimit, :AgentMemRequest, :AgentMemLimit, :IstioCpuRequest, :IstioCpuLimit, :IstioMemRequest, :IstioMemLimit, :MaxSurge, :MaxUnavailable
        
        def initialize(groupid=nil, server=nil, tagname=nil, instancenum=nil, reponame=nil, cpulimit=nil, memlimit=nil, jvmopts=nil, cpurequest=nil, memrequest=nil, donotstart=nil, reponame=nil, updatetype=nil, updateivl=nil, agentcpurequest=nil, agentcpulimit=nil, agentmemrequest=nil, agentmemlimit=nil, istiocpurequest=nil, istiocpulimit=nil, istiomemrequest=nil, istiomemlimit=nil, maxsurge=nil, maxunavailable=nil)
          @GroupId = groupid
          @Server = server
          @TagName = tagname
          @InstanceNum = instancenum
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
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @Server = params['Server']
          @TagName = params['TagName']
          @InstanceNum = params['InstanceNum']
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
        end
      end

      # DeployContainerGroup返回参数结构体
      class DeployContainerGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 部署容器应用是否成功。
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

      # DeployGroup请求参数结构体
      class DeployGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID
        # @type GroupId: String
        # @param PkgId: 程序包ID
        # @type PkgId: String
        # @param StartupParameters: 部署组启动参数
        # @type StartupParameters: String

        attr_accessor :GroupId, :PkgId, :StartupParameters
        
        def initialize(groupid=nil, pkgid=nil, startupparameters=nil)
          @GroupId = groupid
          @PkgId = pkgid
          @StartupParameters = startupparameters
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @PkgId = params['PkgId']
          @StartupParameters = params['StartupParameters']
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
            @Result = TaskId.new.deserialize(params[Result])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeployServerlessGroup请求参数结构体
      class DeployServerlessGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID
        # @type GroupId: String
        # @param PkgId: 程序包ID
        # @type PkgId: String
        # @param Memory: 所需实例内存大小，取值为 1Gi 2Gi 4Gi 8Gi 16Gi，缺省为 1Gi，不传表示维持原态
        # @type Memory: String
        # @param InstanceRequest: 要求最小实例数，取值范围 [1, 4]，缺省为 1，不传表示维持原态
        # @type InstanceRequest: Integer
        # @param StartupParameters: 部署组启动参数，不传表示维持原态
        # @type StartupParameters: String

        attr_accessor :GroupId, :PkgId, :Memory, :InstanceRequest, :StartupParameters
        
        def initialize(groupid=nil, pkgid=nil, memory=nil, instancerequest=nil, startupparameters=nil)
          @GroupId = groupid
          @PkgId = pkgid
          @Memory = memory
          @InstanceRequest = instancerequest
          @StartupParameters = startupparameters
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @PkgId = params['PkgId']
          @Memory = params['Memory']
          @InstanceRequest = params['InstanceRequest']
          @StartupParameters = params['StartupParameters']
        end
      end

      # DeployServerlessGroup返回参数结构体
      class DeployServerlessGroupResponse < TencentCloud::Common::AbstractModel
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
            @Result = ApiDetailResponse.new.deserialize(params[Result])
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
          @Result = params['Result']
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
            @Result = ApplicationAttribute.new.deserialize(params[Result])
          end
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
            @Result = ApplicationForPage.new.deserialize(params[Result])
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

        attr_accessor :SearchWord, :OrderBy, :OrderType, :Offset, :Limit, :ApplicationType, :MicroserviceType, :ApplicationResourceTypeList
        
        def initialize(searchword=nil, orderby=nil, ordertype=nil, offset=nil, limit=nil, applicationtype=nil, microservicetype=nil, applicationresourcetypelist=nil)
          @SearchWord = searchword
          @OrderBy = orderby
          @OrderType = ordertype
          @Offset = offset
          @Limit = limit
          @ApplicationType = applicationtype
          @MicroserviceType = microservicetype
          @ApplicationResourceTypeList = applicationresourcetypelist
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
            @Result = TsfPageApplication.new.deserialize(params[Result])
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
            @Result = TsfPageInstance.new.deserialize(params[Result])
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
            @Result = TsfPageConfigReleaseLog.new.deserialize(params[Result])
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
            @Result = TsfPageConfigRelease.new.deserialize(params[Result])
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
            @Result = Config.new.deserialize(params[Result])
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

        attr_accessor :ApplicationId, :SearchWord, :Offset, :Limit
        
        def initialize(applicationid=nil, searchword=nil, offset=nil, limit=nil)
          @ApplicationId = applicationid
          @SearchWord = searchword
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @SearchWord = params['SearchWord']
          @Offset = params['Offset']
          @Limit = params['Limit']
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
            @Result = TsfPageConfig.new.deserialize(params[Result])
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
            @Result = TsfPageConfig.new.deserialize(params[Result])
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
            @Result = ContainerGroupDetail.new.deserialize(params[Result])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeContainerGroups请求参数结构体
      class DescribeContainerGroupsRequest < TencentCloud::Common::AbstractModel
        # @param SearchWord: 搜索字段，模糊搜索groupName字段
        # @type SearchWord: String
        # @param ApplicationId: 分组所属应用ID
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
            @Result = ContainGroupResult.new.deserialize(params[Result])
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
            @Result = CosDownloadInfo.new.deserialize(params[Result])
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
            @Result = TsfPageInstance.new.deserialize(params[Result])
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
            @Result = VmGroup.new.deserialize(params[Result])
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

        attr_accessor :SearchWord, :ApplicationId, :OrderBy, :OrderType, :Offset, :Limit, :NamespaceId, :ClusterId, :GroupResourceTypeList
        
        def initialize(searchword=nil, applicationid=nil, orderby=nil, ordertype=nil, offset=nil, limit=nil, namespaceid=nil, clusterid=nil, groupresourcetypelist=nil)
          @SearchWord = searchword
          @ApplicationId = applicationid
          @OrderBy = orderby
          @OrderType = ordertype
          @Offset = offset
          @Limit = limit
          @NamespaceId = namespaceid
          @ClusterId = clusterid
          @GroupResourceTypeList = groupresourcetypelist
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
            @Result = TsfPageVmGroup.new.deserialize(params[Result])
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

        attr_accessor :ApplicationId, :Offset, :Limit, :QueryImageIdFlag, :SearchWord
        
        def initialize(applicationid=nil, offset=nil, limit=nil, queryimageidflag=nil, searchword=nil)
          @ApplicationId = applicationid
          @Offset = offset
          @Limit = limit
          @QueryImageIdFlag = queryimageidflag
          @SearchWord = searchword
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @QueryImageIdFlag = params['QueryImageIdFlag']
          @SearchWord = params['SearchWord']
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
            @Result = ImageTagsResult.new.deserialize(params[Result])
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

        attr_accessor :Limit, :Offset, :SearchWord, :RuleId
        
        def initialize(limit=nil, offset=nil, searchword=nil, ruleid=nil)
          @Limit = limit
          @Offset = offset
          @SearchWord = searchword
          @RuleId = ruleid
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @SearchWord = params['SearchWord']
          @RuleId = params['RuleId']
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
            @Result = LaneRules.new.deserialize(params[Result])
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

        attr_accessor :Limit, :Offset, :SearchWord
        
        def initialize(limit=nil, offset=nil, searchword=nil)
          @Limit = limit
          @Offset = offset
          @SearchWord = searchword
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @SearchWord = params['SearchWord']
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
            @Result = LaneInfos.new.deserialize(params[Result])
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

        attr_accessor :MicroserviceId, :Offset, :Limit
        
        def initialize(microserviceid=nil, offset=nil, limit=nil)
          @MicroserviceId = microserviceid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @MicroserviceId = params['MicroserviceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
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
            @Result = TsfPageMsInstance.new.deserialize(params[Result])
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

        attr_accessor :NamespaceId, :SearchWord, :OrderBy, :OrderType, :Offset, :Limit
        
        def initialize(namespaceid=nil, searchword=nil, orderby=nil, ordertype=nil, offset=nil, limit=nil)
          @NamespaceId = namespaceid
          @SearchWord = searchword
          @OrderBy = orderby
          @OrderType = ordertype
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @NamespaceId = params['NamespaceId']
          @SearchWord = params['SearchWord']
          @OrderBy = params['OrderBy']
          @OrderType = params['OrderType']
          @Offset = params['Offset']
          @Limit = params['Limit']
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
            @Result = TsfPageMicroservice.new.deserialize(params[Result])
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
            @Result = TsfApiListResponse.new.deserialize(params[Result])
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

        attr_accessor :ApplicationId, :SearchWord, :OrderBy, :OrderType, :Offset, :Limit, :RepositoryType, :RepositoryId
        
        def initialize(applicationid=nil, searchword=nil, orderby=nil, ordertype=nil, offset=nil, limit=nil, repositorytype=nil, repositoryid=nil)
          @ApplicationId = applicationid
          @SearchWord = searchword
          @OrderBy = orderby
          @OrderType = ordertype
          @Offset = offset
          @Limit = limit
          @RepositoryType = repositorytype
          @RepositoryId = repositoryid
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
            @Result = PkgList.new.deserialize(params[Result])
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

        attr_accessor :GroupId, :Offset, :Limit
        
        def initialize(groupid=nil, offset=nil, limit=nil)
          @GroupId = groupid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @Offset = params['Offset']
          @Limit = params['Limit']
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
            @Result = GroupPodResult.new.deserialize(params[Result])
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
            @Result = TsfPageConfigReleaseLog.new.deserialize(params[Result])
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
            @Result = TsfPageConfigRelease.new.deserialize(params[Result])
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
            @Result = Config.new.deserialize(params[Result])
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
            @Result = TsfPageConfig.new.deserialize(params[Result])
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
            @Result = TsfPageConfig.new.deserialize(params[Result])
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
            @Result = RepositoryList.new.deserialize(params[Result])
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
            @Result = RepositoryInfo.new.deserialize(params[Result])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeServerlessGroup请求参数结构体
      class DescribeServerlessGroupRequest < TencentCloud::Common::AbstractModel
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

      # DescribeServerlessGroup返回参数结构体
      class DescribeServerlessGroupResponse < TencentCloud::Common::AbstractModel
        # @param Result: 结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.ServerlessGroup`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ServerlessGroup.new.deserialize(params[Result])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeServerlessGroups请求参数结构体
      class DescribeServerlessGroupsRequest < TencentCloud::Common::AbstractModel
        # @param SearchWord: 搜索字段，模糊搜索groupName字段
        # @type SearchWord: String
        # @param ApplicationId: 分组所属应用ID
        # @type ApplicationId: String
        # @param OrderBy: 排序字段，默认为 createTime字段，支持id， name， createTime
        # @type OrderBy: String
        # @param OrderType: 排序方式，默认为1：倒序排序，0：正序，1：倒序
        # @type OrderType: String
        # @param Offset: 偏移量，取值从0开始
        # @type Offset: Integer
        # @param Limit: 分页个数，默认为20， 取值应为1~50
        # @type Limit: Integer
        # @param NamespaceId: 分组所属名字空间ID
        # @type NamespaceId: String
        # @param ClusterId: 分组所属集群ID
        # @type ClusterId: String

        attr_accessor :SearchWord, :ApplicationId, :OrderBy, :OrderType, :Offset, :Limit, :NamespaceId, :ClusterId
        
        def initialize(searchword=nil, applicationid=nil, orderby=nil, ordertype=nil, offset=nil, limit=nil, namespaceid=nil, clusterid=nil)
          @SearchWord = searchword
          @ApplicationId = applicationid
          @OrderBy = orderby
          @OrderType = ordertype
          @Offset = offset
          @Limit = limit
          @NamespaceId = namespaceid
          @ClusterId = clusterid
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
        end
      end

      # DescribeServerlessGroups返回参数结构体
      class DescribeServerlessGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 数据列表对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tsf.v20180326.models.ServerlessGroupPage`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ServerlessGroupPage.new.deserialize(params[Result])
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

        attr_accessor :ApplicationIdList, :ApplicationType, :Limit, :Offset, :MicroserviceType, :ApplicationResourceTypeList, :SearchWord
        
        def initialize(applicationidlist=nil, applicationtype=nil, limit=nil, offset=nil, microservicetype=nil, applicationresourcetypelist=nil, searchword=nil)
          @ApplicationIdList = applicationidlist
          @ApplicationType = applicationtype
          @Limit = limit
          @Offset = offset
          @MicroserviceType = microservicetype
          @ApplicationResourceTypeList = applicationresourcetypelist
          @SearchWord = searchword
        end

        def deserialize(params)
          @ApplicationIdList = params['ApplicationIdList']
          @ApplicationType = params['ApplicationType']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @MicroserviceType = params['MicroserviceType']
          @ApplicationResourceTypeList = params['ApplicationResourceTypeList']
          @SearchWord = params['SearchWord']
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
            @Result = TsfPageSimpleApplication.new.deserialize(params[Result])
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

        attr_accessor :ClusterIdList, :ClusterType, :Offset, :Limit, :SearchWord
        
        def initialize(clusteridlist=nil, clustertype=nil, offset=nil, limit=nil, searchword=nil)
          @ClusterIdList = clusteridlist
          @ClusterType = clustertype
          @Offset = offset
          @Limit = limit
          @SearchWord = searchword
        end

        def deserialize(params)
          @ClusterIdList = params['ClusterIdList']
          @ClusterType = params['ClusterType']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchWord = params['SearchWord']
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
            @Result = TsfPageCluster.new.deserialize(params[Result])
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
        # @param AppMicroServiceType: 部署组类型，精确过滤字段，M：service mesh, P：原生应用， M：网关应用
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
            @Result = TsfPageSimpleGroup.new.deserialize(params[Result])
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

        attr_accessor :NamespaceIdList, :ClusterId, :Limit, :Offset, :NamespaceId, :NamespaceResourceTypeList, :SearchWord, :NamespaceTypeList, :NamespaceName, :IsDefault
        
        def initialize(namespaceidlist=nil, clusterid=nil, limit=nil, offset=nil, namespaceid=nil, namespaceresourcetypelist=nil, searchword=nil, namespacetypelist=nil, namespacename=nil, isdefault=nil)
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
            @Result = TsfPageNamespace.new.deserialize(params[Result])
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
            @Result = CosUploadInfo.new.deserialize(params[Result])
          end
          @RequestId = params['RequestId']
        end
      end

      # 环境变量
      class Env < TencentCloud::Common::AbstractModel
        # @param Name: 环境变量名称
        # @type Name: String
        # @param Value: 服务端口
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
            @Result = TaskId.new.deserialize(params[Result])
          end
          @RequestId = params['RequestId']
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
        # @param Status: 实例状态，请参考后面的实例以及容器的状态定义
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
          @Content = params['Content']
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

        attr_accessor :RepoName, :TagName, :TagId, :ImageId, :Size, :CreationTime, :UpdateTime, :Author, :Architecture, :DockerVersion, :Os, :PushTime, :SizeByte
        
        def initialize(reponame=nil, tagname=nil, tagid=nil, imageid=nil, size=nil, creationtime=nil, updatetime=nil, author=nil, architecture=nil, dockerversion=nil, os=nil, pushtime=nil, sizebyte=nil)
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
          @Content = params['Content']
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
        # @param NamespaceId: NamespaceId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceId: String
        # @param InstanceZoneId: InstanceZoneId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceZoneId: String
        # @param InstanceImportMode: InstanceImportMode
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceImportMode: String
        # @param ApplicationType: ApplicationType
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationType: String
        # @param ApplicationResourceType: ApplicationResourceType
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationResourceType: String
        # @param ServiceSidecarStatus: ServiceSidecarStatus
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceSidecarStatus: String
        # @param GroupName: GroupName
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param NamespaceName: NamespaceName
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceName: String

        attr_accessor :InstanceId, :InstanceName, :LanIp, :WanIp, :InstanceDesc, :ClusterId, :ClusterName, :InstanceStatus, :InstanceAvailableStatus, :ServiceInstanceStatus, :CountInTsf, :GroupId, :ApplicationId, :ApplicationName, :InstanceCreatedTime, :InstanceExpiredTime, :InstanceChargeType, :InstanceTotalCpu, :InstanceTotalMem, :InstanceUsedCpu, :InstanceUsedMem, :InstanceLimitCpu, :InstanceLimitMem, :InstancePkgVersion, :ClusterType, :RestrictState, :UpdateTime, :OperationState, :NamespaceId, :InstanceZoneId, :InstanceImportMode, :ApplicationType, :ApplicationResourceType, :ServiceSidecarStatus, :GroupName, :NamespaceName
        
        def initialize(instanceid=nil, instancename=nil, lanip=nil, wanip=nil, instancedesc=nil, clusterid=nil, clustername=nil, instancestatus=nil, instanceavailablestatus=nil, serviceinstancestatus=nil, countintsf=nil, groupid=nil, applicationid=nil, applicationname=nil, instancecreatedtime=nil, instanceexpiredtime=nil, instancechargetype=nil, instancetotalcpu=nil, instancetotalmem=nil, instanceusedcpu=nil, instanceusedmem=nil, instancelimitcpu=nil, instancelimitmem=nil, instancepkgversion=nil, clustertype=nil, restrictstate=nil, updatetime=nil, operationstate=nil, namespaceid=nil, instancezoneid=nil, instanceimportmode=nil, applicationtype=nil, applicationresourcetype=nil, servicesidecarstatus=nil, groupname=nil, namespacename=nil)
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
          @LaneGroupList = params['LaneGroupList']
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
          @Content = params['Content']
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
          @RuleTagList = params['RuleTagList']
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
          @Content = params['Content']
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

        attr_accessor :MicroserviceId, :MicroserviceName, :MicroserviceDesc, :CreateTime, :UpdateTime, :NamespaceId, :RunInstanceCount
        
        def initialize(microserviceid=nil, microservicename=nil, microservicedesc=nil, createtime=nil, updatetime=nil, namespaceid=nil, runinstancecount=nil)
          @MicroserviceId = microserviceid
          @MicroserviceName = microservicename
          @MicroserviceDesc = microservicedesc
          @CreateTime = createtime
          @UpdateTime = updatetime
          @NamespaceId = namespaceid
          @RunInstanceCount = runinstancecount
        end

        def deserialize(params)
          @MicroserviceId = params['MicroserviceId']
          @MicroserviceName = params['MicroserviceName']
          @MicroserviceDesc = params['MicroserviceDesc']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @NamespaceId = params['NamespaceId']
          @RunInstanceCount = params['RunInstanceCount']
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

        attr_accessor :GroupId, :AccessType, :ProtocolPorts, :UpdateType, :UpdateIvl, :SubnetId
        
        def initialize(groupid=nil, accesstype=nil, protocolports=nil, updatetype=nil, updateivl=nil, subnetid=nil)
          @GroupId = groupid
          @AccessType = accesstype
          @ProtocolPorts = protocolports
          @UpdateType = updatetype
          @UpdateIvl = updateivl
          @SubnetId = subnetid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @AccessType = params['AccessType']
          @ProtocolPorts = params['ProtocolPorts']
          @UpdateType = params['UpdateType']
          @UpdateIvl = params['UpdateIvl']
          @SubnetId = params['SubnetId']
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
          @RuleTagList = params['RuleTagList']
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

        attr_accessor :InstanceId, :InstanceName, :Port, :LanIp, :WanIp, :InstanceAvailableStatus, :ServiceInstanceStatus, :ApplicationId, :ApplicationName, :ClusterId, :ClusterName, :NamespaceId, :NamespaceName, :GroupId, :GroupName, :InstanceStatus, :HealthCheckUrl, :ClusterType, :ApplicationPackageVersion, :ApplicationType
        
        def initialize(instanceid=nil, instancename=nil, port=nil, lanip=nil, wanip=nil, instanceavailablestatus=nil, serviceinstancestatus=nil, applicationid=nil, applicationname=nil, clusterid=nil, clustername=nil, namespaceid=nil, namespacename=nil, groupid=nil, groupname=nil, instancestatus=nil, healthcheckurl=nil, clustertype=nil, applicationpackageversion=nil, applicationtype=nil)
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

        attr_accessor :NamespaceId, :NamespaceCode, :NamespaceName, :NamespaceDesc, :IsDefault, :NamespaceStatus, :DeleteFlag, :CreateTime, :UpdateTime, :ClusterList, :ClusterId, :NamespaceResourceType, :NamespaceType
        
        def initialize(namespaceid=nil, namespacecode=nil, namespacename=nil, namespacedesc=nil, isdefault=nil, namespacestatus=nil, deleteflag=nil, createtime=nil, updatetime=nil, clusterlist=nil, clusterid=nil, namespaceresourcetype=nil, namespacetype=nil)
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
          @ClusterList = params['ClusterList']
          @ClusterId = params['ClusterId']
          @NamespaceResourceType = params['NamespaceResourceType']
          @NamespaceType = params['NamespaceType']
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
            @Init = OperationInfoDetail.new.deserialize(params[Init])
          end
          unless params['AddInstance'].nil?
            @AddInstance = OperationInfoDetail.new.deserialize(params[AddInstance])
          end
          unless params['Destroy'].nil?
            @Destroy = OperationInfoDetail.new.deserialize(params[Destroy])
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
          @PkgBindInfo = params['PkgBindInfo']
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
          @Content = params['Content']
          @RepositoryId = params['RepositoryId']
          @RepositoryType = params['RepositoryType']
          @RepositoryName = params['RepositoryName']
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
          @Content = params['Content']
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

      # Serverless部署组信息
      class ServerlessGroup < TencentCloud::Common::AbstractModel
        # @param GroupId: 部署组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String
        # @param GroupName: 分组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param Status: 服务状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param PkgId: 程序包ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PkgId: String
        # @param PkgName: 程序包名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PkgName: String
        # @param ClusterId: 集群id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterName: String
        # @param NamespaceId: 命名空间id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceId: String
        # @param NamespaceName: 命名空间名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NamespaceName: String
        # @param VpcId: vpc ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: vpc 子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param PkgVersion: 程序包版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PkgVersion: String
        # @param Memory: 所需实例内存大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Memory: String
        # @param InstanceRequest: 要求最小实例数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceRequest: Integer
        # @param StartupParameters: 部署组启动参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartupParameters: String
        # @param ApplicationId: 应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param InstanceCount: 部署组实例数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceCount: Integer
        # @param ApplicationName: 应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationName: Array

        attr_accessor :GroupId, :GroupName, :CreateTime, :Status, :PkgId, :PkgName, :ClusterId, :ClusterName, :NamespaceId, :NamespaceName, :VpcId, :SubnetId, :PkgVersion, :Memory, :InstanceRequest, :StartupParameters, :ApplicationId, :InstanceCount, :ApplicationName
        
        def initialize(groupid=nil, groupname=nil, createtime=nil, status=nil, pkgid=nil, pkgname=nil, clusterid=nil, clustername=nil, namespaceid=nil, namespacename=nil, vpcid=nil, subnetid=nil, pkgversion=nil, memory=nil, instancerequest=nil, startupparameters=nil, applicationid=nil, instancecount=nil, applicationname=nil)
          @GroupId = groupid
          @GroupName = groupname
          @CreateTime = createtime
          @Status = status
          @PkgId = pkgid
          @PkgName = pkgname
          @ClusterId = clusterid
          @ClusterName = clustername
          @NamespaceId = namespaceid
          @NamespaceName = namespacename
          @VpcId = vpcid
          @SubnetId = subnetid
          @PkgVersion = pkgversion
          @Memory = memory
          @InstanceRequest = instancerequest
          @StartupParameters = startupparameters
          @ApplicationId = applicationid
          @InstanceCount = instancecount
          @ApplicationName = applicationname
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @CreateTime = params['CreateTime']
          @Status = params['Status']
          @PkgId = params['PkgId']
          @PkgName = params['PkgName']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @NamespaceId = params['NamespaceId']
          @NamespaceName = params['NamespaceName']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @PkgVersion = params['PkgVersion']
          @Memory = params['Memory']
          @InstanceRequest = params['InstanceRequest']
          @StartupParameters = params['StartupParameters']
          @ApplicationId = params['ApplicationId']
          @InstanceCount = params['InstanceCount']
          @ApplicationName = params['ApplicationName']
        end
      end

      # ServerlessGroup 翻页对象
      class ServerlessGroupPage < TencentCloud::Common::AbstractModel
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
          @Content = params['Content']
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
            @Result = TaskId.new.deserialize(params[Result])
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
            @Result = TaskId.new.deserialize(params[Result])
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
            @Result = TaskId.new.deserialize(params[Result])
          end
          @RequestId = params['RequestId']
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
        # flase：停止失败
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
            @Result = TaskId.new.deserialize(params[Result])
          end
          @RequestId = params['RequestId']
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
          @Content = params['Content']
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
          @Content = params['Content']
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
          @Content = params['Content']
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
          @Content = params['Content']
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
          @Content = params['Content']
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
          @Content = params['Content']
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
          @Content = params['Content']
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
          @Content = params['Content']
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
          @Content = params['Content']
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
          @Content = params['Content']
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
          @Content = params['Content']
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
          @Content = params['Content']
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
          @Content = params['Content']
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

        attr_accessor :GroupId, :GroupName, :GroupStatus, :PackageId, :PackageName, :PackageVersion, :ClusterId, :ClusterName, :NamespaceId, :NamespaceName, :ApplicationId, :ApplicationName, :InstanceCount, :RunInstanceCount, :StartupParameters, :CreateTime, :UpdateTime, :OffInstanceCount, :GroupDesc, :MicroserviceType, :ApplicationType, :GroupResourceType, :UpdatedTime
        
        def initialize(groupid=nil, groupname=nil, groupstatus=nil, packageid=nil, packagename=nil, packageversion=nil, clusterid=nil, clustername=nil, namespaceid=nil, namespacename=nil, applicationid=nil, applicationname=nil, instancecount=nil, runinstancecount=nil, startupparameters=nil, createtime=nil, updatetime=nil, offinstancecount=nil, groupdesc=nil, microservicetype=nil, applicationtype=nil, groupresourcetype=nil, updatedtime=nil)
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

        attr_accessor :GroupId, :GroupName, :ApplicationType, :GroupDesc, :UpdateTime, :ClusterId, :StartupParameters, :NamespaceId, :CreateTime, :ClusterName, :ApplicationId, :ApplicationName, :NamespaceName, :MicroserviceType, :GroupResourceType, :UpdatedTime
        
        def initialize(groupid=nil, groupname=nil, applicationtype=nil, groupdesc=nil, updatetime=nil, clusterid=nil, startupparameters=nil, namespaceid=nil, createtime=nil, clustername=nil, applicationid=nil, applicationname=nil, namespacename=nil, microservicetype=nil, groupresourcetype=nil, updatedtime=nil)
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
        end
      end

    end
  end
end

