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
  module Cis
    module V20180408
      # 容器实例中容器结构体
      class Container < TencentCloud::Common::AbstractModel
        # @param Command: 容器启动命令
        # @type Command: String
        # @param Args: 容器启动参数
        # @type Args: Array
        # @param EnvironmentVars: 容器环境变量
        # @type EnvironmentVars: Array
        # @param Image: 镜像
        # @type Image: String
        # @param Name: 容器名，由小写字母、数字和 - 组成，由小写字母开头，小写字母或数字结尾，且长度不超过 63个字符
        # @type Name: String
        # @param Cpu: CPU，单位：核
        # @type Cpu: Float
        # @param Memory: 内存，单位：Gi
        # @type Memory: Float
        # @param RestartCount: 重启次数
        # @type RestartCount: Integer
        # @param CurrentState: 当前状态
        # @type CurrentState: :class:`Tencentcloud::Cis.v20180408.models.ContainerState`
        # @param PreviousState: 上一次状态
        # @type PreviousState: :class:`Tencentcloud::Cis.v20180408.models.ContainerState`
        # @param WorkingDir: 容器工作目录
        # @type WorkingDir: String
        # @param ContainerId: 容器ID
        # @type ContainerId: String

        attr_accessor :Command, :Args, :EnvironmentVars, :Image, :Name, :Cpu, :Memory, :RestartCount, :CurrentState, :PreviousState, :WorkingDir, :ContainerId
        
        def initialize(command=nil, args=nil, environmentvars=nil, image=nil, name=nil, cpu=nil, memory=nil, restartcount=nil, currentstate=nil, previousstate=nil, workingdir=nil, containerid=nil)
          @Command = command
          @Args = args
          @EnvironmentVars = environmentvars
          @Image = image
          @Name = name
          @Cpu = cpu
          @Memory = memory
          @RestartCount = restartcount
          @CurrentState = currentstate
          @PreviousState = previousstate
          @WorkingDir = workingdir
          @ContainerId = containerid
        end

        def deserialize(params)
          @Command = params['Command']
          @Args = params['Args']
          unless params['EnvironmentVars'].nil?
            @EnvironmentVars = []
            params['EnvironmentVars'].each do |i|
              environmentvar_tmp = EnvironmentVar.new
              environmentvar_tmp.deserialize(i)
              @EnvironmentVars << environmentvar_tmp
            end
          end
          @Image = params['Image']
          @Name = params['Name']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @RestartCount = params['RestartCount']
          unless params['CurrentState'].nil?
            @CurrentState = ContainerState.new
            @CurrentState.deserialize(params['CurrentState'])
          end
          unless params['PreviousState'].nil?
            @PreviousState = ContainerState.new
            @PreviousState.deserialize(params['PreviousState'])
          end
          @WorkingDir = params['WorkingDir']
          @ContainerId = params['ContainerId']
        end
      end

      # 容器实例的具体信息
      class ContainerInstance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 容器实例ID
        # @type InstanceId: String
        # @param InstanceName: 容器实例名称
        # @type InstanceName: String
        # @param VpcId: 容器实例所属VpcId
        # @type VpcId: String
        # @param SubnetId: 容器实例所属SubnetId
        # @type SubnetId: String
        # @param State: 容器实例状态
        # @type State: String
        # @param Containers: 容器列表
        # @type Containers: Array
        # @param RestartPolicy: 重启策略
        # @type RestartPolicy: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param StartTime: 启动时间
        # @type StartTime: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param VpcName: Vpc名称
        # @type VpcName: String
        # @param VpcCidr: VpcCidr
        # @type VpcCidr: String
        # @param SubnetName: SubnetName
        # @type SubnetName: String
        # @param SubnetCidr: 子网Cidr
        # @type SubnetCidr: String
        # @param LanIp: 内网IP
        # @type LanIp: String

        attr_accessor :InstanceId, :InstanceName, :VpcId, :SubnetId, :State, :Containers, :RestartPolicy, :CreateTime, :StartTime, :Zone, :VpcName, :VpcCidr, :SubnetName, :SubnetCidr, :LanIp
        
        def initialize(instanceid=nil, instancename=nil, vpcid=nil, subnetid=nil, state=nil, containers=nil, restartpolicy=nil, createtime=nil, starttime=nil, zone=nil, vpcname=nil, vpccidr=nil, subnetname=nil, subnetcidr=nil, lanip=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @VpcId = vpcid
          @SubnetId = subnetid
          @State = state
          @Containers = containers
          @RestartPolicy = restartpolicy
          @CreateTime = createtime
          @StartTime = starttime
          @Zone = zone
          @VpcName = vpcname
          @VpcCidr = vpccidr
          @SubnetName = subnetname
          @SubnetCidr = subnetcidr
          @LanIp = lanip
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @State = params['State']
          unless params['Containers'].nil?
            @Containers = []
            params['Containers'].each do |i|
              container_tmp = Container.new
              container_tmp.deserialize(i)
              @Containers << container_tmp
            end
          end
          @RestartPolicy = params['RestartPolicy']
          @CreateTime = params['CreateTime']
          @StartTime = params['StartTime']
          @Zone = params['Zone']
          @VpcName = params['VpcName']
          @VpcCidr = params['VpcCidr']
          @SubnetName = params['SubnetName']
          @SubnetCidr = params['SubnetCidr']
          @LanIp = params['LanIp']
        end
      end

      # 容器日志
      class ContainerLog < TencentCloud::Common::AbstractModel
        # @param Name: 容器名称
        # @type Name: String
        # @param Log: 日志
        # @type Log: String
        # @param Time: 日志记录时间
        # @type Time: String

        attr_accessor :Name, :Log, :Time
        
        def initialize(name=nil, log=nil, time=nil)
          @Name = name
          @Log = log
          @Time = time
        end

        def deserialize(params)
          @Name = params['Name']
          @Log = params['Log']
          @Time = params['Time']
        end
      end

      # 容器状态
      class ContainerState < TencentCloud::Common::AbstractModel
        # @param StartTime: 容器运行开始时间
        # @type StartTime: String
        # @param State: 容器状态
        # @type State: String
        # @param Reason: 状态详情
        # @type Reason: String
        # @param FinishTime: 容器运行结束时间
        # @type FinishTime: String
        # @param ExitCode: 容器运行退出码
        # @type ExitCode: Integer

        attr_accessor :StartTime, :State, :Reason, :FinishTime, :ExitCode
        
        def initialize(starttime=nil, state=nil, reason=nil, finishtime=nil, exitcode=nil)
          @StartTime = starttime
          @State = state
          @Reason = reason
          @FinishTime = finishtime
          @ExitCode = exitcode
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @State = params['State']
          @Reason = params['Reason']
          @FinishTime = params['FinishTime']
          @ExitCode = params['ExitCode']
        end
      end

      # CreateContainerInstance请求参数结构体
      class CreateContainerInstanceRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区
        # @type Zone: String
        # @param VpcId: vpcId
        # @type VpcId: String
        # @param SubnetId: subnetId
        # @type SubnetId: String
        # @param InstanceName: 容器实例名称，由小写字母、数字和 - 组成，由小写字母开头，小写字母或数字结尾，且长度不超过 40个字符
        # @type InstanceName: String
        # @param RestartPolicy: 重启策略（Always,OnFailure,Never）
        # @type RestartPolicy: String
        # @param Containers: 容器列表
        # @type Containers: Array

        attr_accessor :Zone, :VpcId, :SubnetId, :InstanceName, :RestartPolicy, :Containers
        
        def initialize(zone=nil, vpcid=nil, subnetid=nil, instancename=nil, restartpolicy=nil, containers=nil)
          @Zone = zone
          @VpcId = vpcid
          @SubnetId = subnetid
          @InstanceName = instancename
          @RestartPolicy = restartpolicy
          @Containers = containers
        end

        def deserialize(params)
          @Zone = params['Zone']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @InstanceName = params['InstanceName']
          @RestartPolicy = params['RestartPolicy']
          unless params['Containers'].nil?
            @Containers = []
            params['Containers'].each do |i|
              container_tmp = Container.new
              container_tmp.deserialize(i)
              @Containers << container_tmp
            end
          end
        end
      end

      # CreateContainerInstance返回参数结构体
      class CreateContainerInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 容器实例ID
        # @type InstanceId: String
        # @param RequestId: 唯一请求ID，每次请求都会返回。定位问题时需要提供该次请求的RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :RequestId
        
        def initialize(instanceid=nil, requestid=nil)
          @InstanceId = instanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteContainerInstance请求参数结构体
      class DeleteContainerInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceName: 容器实例名称
        # @type InstanceName: String

        attr_accessor :InstanceName
        
        def initialize(instancename=nil)
          @InstanceName = instancename
        end

        def deserialize(params)
          @InstanceName = params['InstanceName']
        end
      end

      # DeleteContainerInstance返回参数结构体
      class DeleteContainerInstanceResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 操作信息
        # @type Msg: String
        # @param RequestId: 唯一请求ID，每次请求都会返回。定位问题时需要提供该次请求的RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :RequestId
        
        def initialize(msg=nil, requestid=nil)
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeContainerInstanceEvents请求参数结构体
      class DescribeContainerInstanceEventsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceName: 容器实例名称
        # @type InstanceName: String

        attr_accessor :InstanceName
        
        def initialize(instancename=nil)
          @InstanceName = instancename
        end

        def deserialize(params)
          @InstanceName = params['InstanceName']
        end
      end

      # DescribeContainerInstanceEvents返回参数结构体
      class DescribeContainerInstanceEventsResponse < TencentCloud::Common::AbstractModel
        # @param EventList: 容器实例事件列表
        # @type EventList: Array
        # @param RequestId: 唯一请求ID，每次请求都会返回。定位问题时需要提供该次请求的RequestId。
        # @type RequestId: String

        attr_accessor :EventList, :RequestId
        
        def initialize(eventlist=nil, requestid=nil)
          @EventList = eventlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EventList'].nil?
            @EventList = []
            params['EventList'].each do |i|
              event_tmp = Event.new
              event_tmp.deserialize(i)
              @EventList << event_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeContainerInstance请求参数结构体
      class DescribeContainerInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceName: 容器实例名称
        # @type InstanceName: String

        attr_accessor :InstanceName
        
        def initialize(instancename=nil)
          @InstanceName = instancename
        end

        def deserialize(params)
          @InstanceName = params['InstanceName']
        end
      end

      # DescribeContainerInstance返回参数结构体
      class DescribeContainerInstanceResponse < TencentCloud::Common::AbstractModel
        # @param ContainerInstance: 容器实例详细信息
        # @type ContainerInstance: :class:`Tencentcloud::Cis.v20180408.models.ContainerInstance`
        # @param RequestId: 唯一请求ID，每次请求都会返回。定位问题时需要提供该次请求的RequestId。
        # @type RequestId: String

        attr_accessor :ContainerInstance, :RequestId
        
        def initialize(containerinstance=nil, requestid=nil)
          @ContainerInstance = containerinstance
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ContainerInstance'].nil?
            @ContainerInstance = ContainerInstance.new
            @ContainerInstance.deserialize(params['ContainerInstance'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeContainerInstances请求参数结构体
      class DescribeContainerInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为10
        # @type Limit: Integer
        # @param Filters: 过滤条件。
        # - Zone - String - 是否必填：否 -（过滤条件）按照可用区过滤。
        # - VpcId - String - 是否必填：否 -（过滤条件）按照VpcId过滤。
        # - InstanceName - String - 是否必填：否 -（过滤条件）按照容器实例名称做模糊查询。
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :Filters
        
        def initialize(offset=nil, limit=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
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

      # DescribeContainerInstances返回参数结构体
      class DescribeContainerInstancesResponse < TencentCloud::Common::AbstractModel
        # @param ContainerInstanceList: 容器实例列表
        # @type ContainerInstanceList: Array
        # @param TotalCount: 容器实例总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求ID，每次请求都会返回。定位问题时需要提供该次请求的RequestId。
        # @type RequestId: String

        attr_accessor :ContainerInstanceList, :TotalCount, :RequestId
        
        def initialize(containerinstancelist=nil, totalcount=nil, requestid=nil)
          @ContainerInstanceList = containerinstancelist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ContainerInstanceList'].nil?
            @ContainerInstanceList = []
            params['ContainerInstanceList'].each do |i|
              containerinstance_tmp = ContainerInstance.new
              containerinstance_tmp.deserialize(i)
              @ContainerInstanceList << containerinstance_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeContainerLog请求参数结构体
      class DescribeContainerLogRequest < TencentCloud::Common::AbstractModel
        # @param InstanceName: 容器实例名称
        # @type InstanceName: String
        # @param ContainerName: 容器名称
        # @type ContainerName: String
        # @param Tail: 日志显示尾部行数
        # @type Tail: Integer
        # @param SinceTime: 日志起始时间
        # @type SinceTime: String

        attr_accessor :InstanceName, :ContainerName, :Tail, :SinceTime
        
        def initialize(instancename=nil, containername=nil, tail=nil, sincetime=nil)
          @InstanceName = instancename
          @ContainerName = containername
          @Tail = tail
          @SinceTime = sincetime
        end

        def deserialize(params)
          @InstanceName = params['InstanceName']
          @ContainerName = params['ContainerName']
          @Tail = params['Tail']
          @SinceTime = params['SinceTime']
        end
      end

      # DescribeContainerLog返回参数结构体
      class DescribeContainerLogResponse < TencentCloud::Common::AbstractModel
        # @param ContainerLogList: 容器日志数组
        # @type ContainerLogList: Array
        # @param RequestId: 唯一请求ID，每次请求都会返回。定位问题时需要提供该次请求的RequestId。
        # @type RequestId: String

        attr_accessor :ContainerLogList, :RequestId
        
        def initialize(containerloglist=nil, requestid=nil)
          @ContainerLogList = containerloglist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ContainerLogList'].nil?
            @ContainerLogList = []
            params['ContainerLogList'].each do |i|
              containerlog_tmp = ContainerLog.new
              containerlog_tmp.deserialize(i)
              @ContainerLogList << containerlog_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 容器环境变量
      class EnvironmentVar < TencentCloud::Common::AbstractModel
        # @param Name: 环境变量名
        # @type Name: String
        # @param Value: 环境变量值
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

      # 容器实例事件
      class Event < TencentCloud::Common::AbstractModel
        # @param FirstSeen: 事件首次出现时间
        # @type FirstSeen: String
        # @param LastSeen: 事件上次出现时间
        # @type LastSeen: String
        # @param Level: 事件等级
        # @type Level: String
        # @param Count: 事件出现次数
        # @type Count: String
        # @param Reason: 事件出现原因
        # @type Reason: String
        # @param Message: 事件消息
        # @type Message: String

        attr_accessor :FirstSeen, :LastSeen, :Level, :Count, :Reason, :Message
        
        def initialize(firstseen=nil, lastseen=nil, level=nil, count=nil, reason=nil, message=nil)
          @FirstSeen = firstseen
          @LastSeen = lastseen
          @Level = level
          @Count = count
          @Reason = reason
          @Message = message
        end

        def deserialize(params)
          @FirstSeen = params['FirstSeen']
          @LastSeen = params['LastSeen']
          @Level = params['Level']
          @Count = params['Count']
          @Reason = params['Reason']
          @Message = params['Message']
        end
      end

      # 过滤条件
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤字段，可选值 - Zone，VpcId，InstanceName
        # @type Name: String
        # @param ValueList: 过滤值列表
        # @type ValueList: Array

        attr_accessor :Name, :ValueList
        
        def initialize(name=nil, valuelist=nil)
          @Name = name
          @ValueList = valuelist
        end

        def deserialize(params)
          @Name = params['Name']
          @ValueList = params['ValueList']
        end
      end

      # InquiryPriceCreateCis请求参数结构体
      class InquiryPriceCreateCisRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区
        # @type Zone: String
        # @param Cpu: CPU，单位：核
        # @type Cpu: Float
        # @param Memory: 内存，单位：Gi
        # @type Memory: Float

        attr_accessor :Zone, :Cpu, :Memory
        
        def initialize(zone=nil, cpu=nil, memory=nil)
          @Zone = zone
          @Cpu = cpu
          @Memory = memory
        end

        def deserialize(params)
          @Zone = params['Zone']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
        end
      end

      # InquiryPriceCreateCis返回参数结构体
      class InquiryPriceCreateCisResponse < TencentCloud::Common::AbstractModel
        # @param Price: 价格
        # @type Price: :class:`Tencentcloud::Cis.v20180408.models.Price`
        # @param RequestId: 唯一请求ID，每次请求都会返回。定位问题时需要提供该次请求的RequestId。
        # @type RequestId: String

        attr_accessor :Price, :RequestId
        
        def initialize(price=nil, requestid=nil)
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Price'].nil?
            @Price = Price.new
            @Price.deserialize(params['Price'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 价格
      class Price < TencentCloud::Common::AbstractModel
        # @param DiscountPrice: 原价，单位：元
        # @type DiscountPrice: Float
        # @param OriginalPrice: 折扣价，单位：元
        # @type OriginalPrice: Float

        attr_accessor :DiscountPrice, :OriginalPrice
        
        def initialize(discountprice=nil, originalprice=nil)
          @DiscountPrice = discountprice
          @OriginalPrice = originalprice
        end

        def deserialize(params)
          @DiscountPrice = params['DiscountPrice']
          @OriginalPrice = params['OriginalPrice']
        end
      end

    end
  end
end

