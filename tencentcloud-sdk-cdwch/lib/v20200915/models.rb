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
  module Cdwch
    module V20200915
      # ActionAlterCkUser请求参数结构体
      class ActionAlterCkUserRequest < TencentCloud::Common::AbstractModel
        # @param UserInfo: 用户信息
        # @type UserInfo: :class:`Tencentcloud::Cdwch.v20200915.models.CkUserAlterInfo`
        # @param ApiType: api接口类型
        # @type ApiType: String

        attr_accessor :UserInfo, :ApiType
        
        def initialize(userinfo=nil, apitype=nil)
          @UserInfo = userinfo
          @ApiType = apitype
        end

        def deserialize(params)
          unless params['UserInfo'].nil?
            @UserInfo = CkUserAlterInfo.new
            @UserInfo.deserialize(params['UserInfo'])
          end
          @ApiType = params['ApiType']
        end
      end

      # ActionAlterCkUser返回参数结构体
      class ActionAlterCkUserResponse < TencentCloud::Common::AbstractModel
        # @param ErrMsg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrMsg, :RequestId
        
        def initialize(errmsg=nil, requestid=nil)
          @ErrMsg = errmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrMsg = params['ErrMsg']
          @RequestId = params['RequestId']
        end
      end

      # 备份表信息
      class BackupTableContent < TencentCloud::Common::AbstractModel
        # @param Database: 数据库
        # @type Database: String
        # @param Table: 表
        # @type Table: String
        # @param TotalBytes: 表总字节数
        # @type TotalBytes: Integer
        # @param VCluster: 虚拟cluster
        # @type VCluster: String
        # @param Ips: 表ip
        # @type Ips: String

        attr_accessor :Database, :Table, :TotalBytes, :VCluster, :Ips
        
        def initialize(database=nil, table=nil, totalbytes=nil, vcluster=nil, ips=nil)
          @Database = database
          @Table = table
          @TotalBytes = totalbytes
          @VCluster = vcluster
          @Ips = ips
        end

        def deserialize(params)
          @Database = params['Database']
          @Table = params['Table']
          @TotalBytes = params['TotalBytes']
          @VCluster = params['VCluster']
          @Ips = params['Ips']
        end
      end

      # 新增或是修改ck用户
      class CkUserAlterInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例id
        # @type InstanceId: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param PassWord: 密码
        # @type PassWord: String
        # @param Describe: 描述
        # @type Describe: String

        attr_accessor :InstanceId, :UserName, :PassWord, :Describe
        
        def initialize(instanceid=nil, username=nil, password=nil, describe=nil)
          @InstanceId = instanceid
          @UserName = username
          @PassWord = password
          @Describe = describe
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserName = params['UserName']
          @PassWord = params['PassWord']
          @Describe = params['Describe']
        end
      end

      # 配置文件修改信息
      class ConfigSubmitContext < TencentCloud::Common::AbstractModel
        # @param FileName: 配置文件名称
        # @type FileName: String
        # @param OldConfValue: 配置文件旧内容，base64编码
        # @type OldConfValue: String
        # @param NewConfValue: 配置文件新内容，base64编码
        # @type NewConfValue: String
        # @param FilePath: 保存配置文件的路径
        # @type FilePath: String

        attr_accessor :FileName, :OldConfValue, :NewConfValue, :FilePath
        
        def initialize(filename=nil, oldconfvalue=nil, newconfvalue=nil, filepath=nil)
          @FileName = filename
          @OldConfValue = oldconfvalue
          @NewConfValue = newconfvalue
          @FilePath = filepath
        end

        def deserialize(params)
          @FileName = params['FileName']
          @OldConfValue = params['OldConfValue']
          @NewConfValue = params['NewConfValue']
          @FilePath = params['FilePath']
        end
      end

      # CreateBackUpSchedule请求参数结构体
      class CreateBackUpScheduleRequest < TencentCloud::Common::AbstractModel
        # @param ScheduleId: 编辑时需要传
        # @type ScheduleId: Integer
        # @param WeekDays: 选择的星期 逗号分隔
        # @type WeekDays: String
        # @param ExecuteHour: 执行小时
        # @type ExecuteHour: Integer
        # @param BackUpTables: 备份表列表
        # @type BackUpTables: Array

        attr_accessor :ScheduleId, :WeekDays, :ExecuteHour, :BackUpTables
        
        def initialize(scheduleid=nil, weekdays=nil, executehour=nil, backuptables=nil)
          @ScheduleId = scheduleid
          @WeekDays = weekdays
          @ExecuteHour = executehour
          @BackUpTables = backuptables
        end

        def deserialize(params)
          @ScheduleId = params['ScheduleId']
          @WeekDays = params['WeekDays']
          @ExecuteHour = params['ExecuteHour']
          unless params['BackUpTables'].nil?
            @BackUpTables = []
            params['BackUpTables'].each do |i|
              backuptablecontent_tmp = BackupTableContent.new
              backuptablecontent_tmp.deserialize(i)
              @BackUpTables << backuptablecontent_tmp
            end
          end
        end
      end

      # CreateBackUpSchedule返回参数结构体
      class CreateBackUpScheduleResponse < TencentCloud::Common::AbstractModel
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

      # DescribeCkSqlApis请求参数结构体
      class DescribeCkSqlApisRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param ApiType: api接口名称
        # @type ApiType: String
        # @param Cluster: 集群名称
        # @type Cluster: String
        # @param UserName: 用户名称
        # @type UserName: String

        attr_accessor :InstanceId, :ApiType, :Cluster, :UserName
        
        def initialize(instanceid=nil, apitype=nil, cluster=nil, username=nil)
          @InstanceId = instanceid
          @ApiType = apitype
          @Cluster = cluster
          @UserName = username
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ApiType = params['ApiType']
          @Cluster = params['Cluster']
          @UserName = params['UserName']
        end
      end

      # DescribeCkSqlApis返回参数结构体
      class DescribeCkSqlApisResponse < TencentCloud::Common::AbstractModel
        # @param ReturnData: 返回的查询数据，大部分情况是list，也可能是bool
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReturnData: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReturnData, :RequestId
        
        def initialize(returndata=nil, requestid=nil)
          @ReturnData = returndata
          @RequestId = requestid
        end

        def deserialize(params)
          @ReturnData = params['ReturnData']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceShards请求参数结构体
      class DescribeInstanceShardsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstanceShards返回参数结构体
      class DescribeInstanceShardsResponse < TencentCloud::Common::AbstractModel
        # @param InstanceShardsList: 实例shard信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceShardsList: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceShardsList, :RequestId
        
        def initialize(instanceshardslist=nil, requestid=nil)
          @InstanceShardsList = instanceshardslist
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceShardsList = params['InstanceShardsList']
          @RequestId = params['RequestId']
        end
      end

      # ModifyClusterConfigs请求参数结构体
      class ModifyClusterConfigsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID，例如cdwch-xxxx
        # @type InstanceId: String
        # @param ModifyConfContext: 配置文件修改信息
        # @type ModifyConfContext: Array
        # @param Remark: 修改原因
        # @type Remark: String

        attr_accessor :InstanceId, :ModifyConfContext, :Remark
        
        def initialize(instanceid=nil, modifyconfcontext=nil, remark=nil)
          @InstanceId = instanceid
          @ModifyConfContext = modifyconfcontext
          @Remark = remark
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['ModifyConfContext'].nil?
            @ModifyConfContext = []
            params['ModifyConfContext'].each do |i|
              configsubmitcontext_tmp = ConfigSubmitContext.new
              configsubmitcontext_tmp.deserialize(i)
              @ModifyConfContext << configsubmitcontext_tmp
            end
          end
          @Remark = params['Remark']
        end
      end

      # ModifyClusterConfigs返回参数结构体
      class ModifyClusterConfigsResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程相关信息
        # @type FlowId: Integer
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :ErrorMsg, :RequestId
        
        def initialize(flowid=nil, errormsg=nil, requestid=nil)
          @FlowId = flowid
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # ModifyUserNewPrivilege请求参数结构体
      class ModifyUserNewPrivilegeRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # ModifyUserNewPrivilege返回参数结构体
      class ModifyUserNewPrivilegeResponse < TencentCloud::Common::AbstractModel
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

      # OpenBackUp请求参数结构体
      class OpenBackUpRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param OperationType: OPEN 或者CLOSE
        # @type OperationType: String
        # @param CosBucketName: 桶名字
        # @type CosBucketName: String

        attr_accessor :InstanceId, :OperationType, :CosBucketName
        
        def initialize(instanceid=nil, operationtype=nil, cosbucketname=nil)
          @InstanceId = instanceid
          @OperationType = operationtype
          @CosBucketName = cosbucketname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @OperationType = params['OperationType']
          @CosBucketName = params['CosBucketName']
        end
      end

      # OpenBackUp返回参数结构体
      class OpenBackUpResponse < TencentCloud::Common::AbstractModel
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

    end
  end
end

