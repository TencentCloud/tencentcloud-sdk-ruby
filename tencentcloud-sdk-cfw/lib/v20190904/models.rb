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
  module Cfw
    module V20190904
      # 访问控制列表对象
      class AcListsData < TencentCloud::Common::AbstractModel
        # @param Id: 规则id
        # @type Id: Integer
        # @param SourceIp: 访问源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceIp: String
        # @param TargetIp: 访问目的
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetIp: String
        # @param Protocol: 协议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param Port: 端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: String
        # @param Strategy: 策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Strategy: Integer
        # @param Detail: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Detail: String
        # @param Count: 命中次数
        # @type Count: Integer
        # @param OrderIndex: 执行顺序
        # @type OrderIndex: Integer
        # @param LogId: 告警规则id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogId: String

        attr_accessor :Id, :SourceIp, :TargetIp, :Protocol, :Port, :Strategy, :Detail, :Count, :OrderIndex, :LogId
        
        def initialize(id=nil, sourceip=nil, targetip=nil, protocol=nil, port=nil, strategy=nil, detail=nil, count=nil, orderindex=nil, logid=nil)
          @Id = id
          @SourceIp = sourceip
          @TargetIp = targetip
          @Protocol = protocol
          @Port = port
          @Strategy = strategy
          @Detail = detail
          @Count = count
          @OrderIndex = orderindex
          @LogId = logid
        end

        def deserialize(params)
          @Id = params['Id']
          @SourceIp = params['SourceIp']
          @TargetIp = params['TargetIp']
          @Protocol = params['Protocol']
          @Port = params['Port']
          @Strategy = params['Strategy']
          @Detail = params['Detail']
          @Count = params['Count']
          @OrderIndex = params['OrderIndex']
          @LogId = params['LogId']
        end
      end

      # 企业安全组关联实例信息
      class AssociatedInstanceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param Type: 实例类型，3是cvm实例,4是clb实例,5是eni实例,6是云数据库
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param VpcId: 私有网络ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param VpcName: 私有网络名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcName: String
        # @param PublicIp: 公网IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIp: String
        # @param Ip: 内网IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ip: String
        # @param SecurityGroupCount: 关联安全组数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityGroupCount: Integer

        attr_accessor :InstanceId, :InstanceName, :Type, :VpcId, :VpcName, :PublicIp, :Ip, :SecurityGroupCount
        
        def initialize(instanceid=nil, instancename=nil, type=nil, vpcid=nil, vpcname=nil, publicip=nil, ip=nil, securitygroupcount=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Type = type
          @VpcId = vpcid
          @VpcName = vpcname
          @PublicIp = publicip
          @Ip = ip
          @SecurityGroupCount = securitygroupcount
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Type = params['Type']
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          @PublicIp = params['PublicIp']
          @Ip = params['Ip']
          @SecurityGroupCount = params['SecurityGroupCount']
        end
      end

      # NAT防火墙Dnat规则
      class CfwNatDnatRule < TencentCloud::Common::AbstractModel
        # @param IpProtocol: 网络协议，可选值：TCP、UDP。
        # @type IpProtocol: String
        # @param PublicIpAddress: 弹性IP。
        # @type PublicIpAddress: String
        # @param PublicPort: 公网端口。
        # @type PublicPort: Integer
        # @param PrivateIpAddress: 内网地址。
        # @type PrivateIpAddress: String
        # @param PrivatePort: 内网端口。
        # @type PrivatePort: Integer
        # @param Description: NAT防火墙转发规则描述。
        # @type Description: String

        attr_accessor :IpProtocol, :PublicIpAddress, :PublicPort, :PrivateIpAddress, :PrivatePort, :Description
        
        def initialize(ipprotocol=nil, publicipaddress=nil, publicport=nil, privateipaddress=nil, privateport=nil, description=nil)
          @IpProtocol = ipprotocol
          @PublicIpAddress = publicipaddress
          @PublicPort = publicport
          @PrivateIpAddress = privateipaddress
          @PrivatePort = privateport
          @Description = description
        end

        def deserialize(params)
          @IpProtocol = params['IpProtocol']
          @PublicIpAddress = params['PublicIpAddress']
          @PublicPort = params['PublicPort']
          @PrivateIpAddress = params['PrivateIpAddress']
          @PrivatePort = params['PrivatePort']
          @Description = params['Description']
        end
      end

      # CreateAcRules请求参数结构体
      class CreateAcRulesRequest < TencentCloud::Common::AbstractModel
        # @param Data: 创建规则数据
        # @type Data: Array
        # @param Type: 0：添加（默认），1：插入
        # @type Type: Integer
        # @param EdgeId: 边id
        # @type EdgeId: String
        # @param Enable: 访问控制规则状态
        # @type Enable: Integer
        # @param Overwrite: 0：添加，1：覆盖
        # @type Overwrite: Integer
        # @param InstanceId: NAT实例ID, 参数Area存在的时候这个必传
        # @type InstanceId: String
        # @param From: portScan: 来自于端口扫描, patchImport: 来自于批量导入
        # @type From: String
        # @param Area: NAT地域
        # @type Area: String

        attr_accessor :Data, :Type, :EdgeId, :Enable, :Overwrite, :InstanceId, :From, :Area
        
        def initialize(data=nil, type=nil, edgeid=nil, enable=nil, overwrite=nil, instanceid=nil, from=nil, area=nil)
          @Data = data
          @Type = type
          @EdgeId = edgeid
          @Enable = enable
          @Overwrite = overwrite
          @InstanceId = instanceid
          @From = from
          @Area = area
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              ruleinfodata_tmp = RuleInfoData.new
              ruleinfodata_tmp.deserialize(i)
              @Data << ruleinfodata_tmp
            end
          end
          @Type = params['Type']
          @EdgeId = params['EdgeId']
          @Enable = params['Enable']
          @Overwrite = params['Overwrite']
          @InstanceId = params['InstanceId']
          @From = params['From']
          @Area = params['Area']
        end
      end

      # CreateAcRules返回参数结构体
      class CreateAcRulesResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态值，0:操作成功
        # @type Status: Integer
        # @param Info: 返回多余的信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Info: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Info, :RequestId
        
        def initialize(status=nil, info=nil, requestid=nil)
          @Status = status
          @Info = info
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Info = params['Info']
          @RequestId = params['RequestId']
        end
      end

      # CreateSecurityGroupApiRules请求参数结构体
      class CreateSecurityGroupApiRulesRequest < TencentCloud::Common::AbstractModel
        # @param Data: 创建规则数据
        # @type Data: Array
        # @param Direction: 方向，0：出站，1：入站
        # @type Direction: Integer
        # @param Type: 插入类型，0：后插，1：前插，2：中插
        # @type Type: Integer
        # @param Area: 腾讯云地域的英文简写
        # @type Area: String

        attr_accessor :Data, :Direction, :Type, :Area
        
        def initialize(data=nil, direction=nil, type=nil, area=nil)
          @Data = data
          @Direction = direction
          @Type = type
          @Area = area
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              securitygroupapiruledata_tmp = SecurityGroupApiRuleData.new
              securitygroupapiruledata_tmp.deserialize(i)
              @Data << securitygroupapiruledata_tmp
            end
          end
          @Direction = params['Direction']
          @Type = params['Type']
          @Area = params['Area']
        end
      end

      # CreateSecurityGroupApiRules返回参数结构体
      class CreateSecurityGroupApiRulesResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态值，0:添加成功，非0：添加失败
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId
        
        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DeleteAcRule请求参数结构体
      class DeleteAcRuleRequest < TencentCloud::Common::AbstractModel
        # @param Id: 删除规则对应的id值, 对应获取规则列表接口的Id 值
        # @type Id: Integer
        # @param Direction: 方向，0：出站，1：入站
        # @type Direction: Integer
        # @param EdgeId: EdgeId值两个vpc间的边id
        # @type EdgeId: String
        # @param Area: NAT地域， 如ap-shanghai/ap-guangzhou/ap-chongqing等
        # @type Area: String

        attr_accessor :Id, :Direction, :EdgeId, :Area
        
        def initialize(id=nil, direction=nil, edgeid=nil, area=nil)
          @Id = id
          @Direction = direction
          @EdgeId = edgeid
          @Area = area
        end

        def deserialize(params)
          @Id = params['Id']
          @Direction = params['Direction']
          @EdgeId = params['EdgeId']
          @Area = params['Area']
        end
      end

      # DeleteAcRule返回参数结构体
      class DeleteAcRuleResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态值 0: 删除成功, !0: 删除失败
        # @type Status: Integer
        # @param Info: 返回多余的信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Info: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Info, :RequestId
        
        def initialize(status=nil, info=nil, requestid=nil)
          @Status = status
          @Info = info
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Info = params['Info']
          @RequestId = params['RequestId']
        end
      end

      # DeleteAllAccessControlRule请求参数结构体
      class DeleteAllAccessControlRuleRequest < TencentCloud::Common::AbstractModel
        # @param Direction: 方向，0：出站，1：入站  默认值是 0
        # @type Direction: Integer
        # @param EdgeId: VPC间防火墙开关ID  全部删除 EdgeId和Area只填写一个，不填写则不删除vpc间防火墙开关 ，默认值为‘’
        # @type EdgeId: String
        # @param Area: nat地域 全部删除 EdgeId和Area只填写一个，不填写则不删除nat防火墙开关 默认值为‘’
        # @type Area: String

        attr_accessor :Direction, :EdgeId, :Area
        
        def initialize(direction=nil, edgeid=nil, area=nil)
          @Direction = direction
          @EdgeId = edgeid
          @Area = area
        end

        def deserialize(params)
          @Direction = params['Direction']
          @EdgeId = params['EdgeId']
          @Area = params['Area']
        end
      end

      # DeleteAllAccessControlRule返回参数结构体
      class DeleteAllAccessControlRuleResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态值 0: 修改成功, !0: 修改失败
        # @type Status: Integer
        # @param Info: 删除了几条访问控制规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Info: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Info, :RequestId
        
        def initialize(status=nil, info=nil, requestid=nil)
          @Status = status
          @Info = info
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Info = params['Info']
          @RequestId = params['RequestId']
        end
      end

      # DeleteSecurityGroupAllRule请求参数结构体
      class DeleteSecurityGroupAllRuleRequest < TencentCloud::Common::AbstractModel
        # @param Direction: 方向，0：出站，1：入站
        # @type Direction: Integer
        # @param Area: 腾讯云地域的英文简写
        # @type Area: String

        attr_accessor :Direction, :Area
        
        def initialize(direction=nil, area=nil)
          @Direction = direction
          @Area = area
        end

        def deserialize(params)
          @Direction = params['Direction']
          @Area = params['Area']
        end
      end

      # DeleteSecurityGroupAllRule返回参数结构体
      class DeleteSecurityGroupAllRuleResponse < TencentCloud::Common::AbstractModel
        # @param Status: 0: 操作成功，非0：操作失败
        # @type Status: Integer
        # @param Info: 返回数据的json字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Info: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Info, :RequestId
        
        def initialize(status=nil, info=nil, requestid=nil)
          @Status = status
          @Info = info
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Info = params['Info']
          @RequestId = params['RequestId']
        end
      end

      # DeleteSecurityGroupRule请求参数结构体
      class DeleteSecurityGroupRuleRequest < TencentCloud::Common::AbstractModel
        # @param Id: 所需要删除规则的ID
        # @type Id: Integer
        # @param Area: 腾讯云地域的英文简写
        # @type Area: String
        # @param Direction: 方向，0：出站，1：入站
        # @type Direction: Integer
        # @param IsDelReverse: 是否删除反向规则，0：否，1：是
        # @type IsDelReverse: Integer

        attr_accessor :Id, :Area, :Direction, :IsDelReverse
        
        def initialize(id=nil, area=nil, direction=nil, isdelreverse=nil)
          @Id = id
          @Area = area
          @Direction = direction
          @IsDelReverse = isdelreverse
        end

        def deserialize(params)
          @Id = params['Id']
          @Area = params['Area']
          @Direction = params['Direction']
          @IsDelReverse = params['IsDelReverse']
        end
      end

      # DeleteSecurityGroupRule返回参数结构体
      class DeleteSecurityGroupRuleResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态值，0：成功，非0：失败
        # @type Status: Integer
        # @param Info: 返回多余的信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Info: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Info, :RequestId
        
        def initialize(status=nil, info=nil, requestid=nil)
          @Status = status
          @Info = info
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Info = params['Info']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAcLists请求参数结构体
      class DescribeAcListsRequest < TencentCloud::Common::AbstractModel
        # @param Protocol: 协议
        # @type Protocol: String
        # @param Strategy: 策略
        # @type Strategy: String
        # @param SearchValue: 搜索值
        # @type SearchValue: String
        # @param Limit: 每页条数
        # @type Limit: Integer
        # @param Offset: 偏移值
        # @type Offset: Integer
        # @param Direction: 出站还是入站，0：入站，1：出站
        # @type Direction: Integer
        # @param EdgeId: EdgeId值
        # @type EdgeId: String
        # @param Status: 规则是否开启，'0': 未开启，'1': 开启, 默认为'0'
        # @type Status: String
        # @param Area: 地域
        # @type Area: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String

        attr_accessor :Protocol, :Strategy, :SearchValue, :Limit, :Offset, :Direction, :EdgeId, :Status, :Area, :InstanceId
        
        def initialize(protocol=nil, strategy=nil, searchvalue=nil, limit=nil, offset=nil, direction=nil, edgeid=nil, status=nil, area=nil, instanceid=nil)
          @Protocol = protocol
          @Strategy = strategy
          @SearchValue = searchvalue
          @Limit = limit
          @Offset = offset
          @Direction = direction
          @EdgeId = edgeid
          @Status = status
          @Area = area
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Protocol = params['Protocol']
          @Strategy = params['Strategy']
          @SearchValue = params['SearchValue']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Direction = params['Direction']
          @EdgeId = params['EdgeId']
          @Status = params['Status']
          @Area = params['Area']
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeAcLists返回参数结构体
      class DescribeAcListsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总条数
        # @type Total: Integer
        # @param Data: 访问控制列表数据
        # @type Data: Array
        # @param AllTotal: 不算筛选条数的总条数
        # @type AllTotal: Integer
        # @param Enable: 访问控制规则全部启用/全部停用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enable: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Data, :AllTotal, :Enable, :RequestId
        
        def initialize(total=nil, data=nil, alltotal=nil, enable=nil, requestid=nil)
          @Total = total
          @Data = data
          @AllTotal = alltotal
          @Enable = enable
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              aclistsdata_tmp = AcListsData.new
              aclistsdata_tmp.deserialize(i)
              @Data << aclistsdata_tmp
            end
          end
          @AllTotal = params['AllTotal']
          @Enable = params['Enable']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssociatedInstanceList请求参数结构体
      class DescribeAssociatedInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 列表偏移量
        # @type Offset: Integer
        # @param Limit: 每页记录条数
        # @type Limit: Integer
        # @param Area: 地域代码（例：ap-guangzhou）,支持腾讯云全地域
        # @type Area: String
        # @param SearchValue: 额外检索条件（JSON字符串）
        # @type SearchValue: String
        # @param By: 排序字段
        # @type By: String
        # @param Order: 排序方式（asc:升序,desc:降序）
        # @type Order: String
        # @param SecurityGroupId: 安全组ID
        # @type SecurityGroupId: String
        # @param Type: 实例类型,'3'是cvm实例,'4'是clb实例,'5'是eni实例,'6'是云数据库
        # @type Type: String

        attr_accessor :Offset, :Limit, :Area, :SearchValue, :By, :Order, :SecurityGroupId, :Type
        
        def initialize(offset=nil, limit=nil, area=nil, searchvalue=nil, by=nil, order=nil, securitygroupid=nil, type=nil)
          @Offset = offset
          @Limit = limit
          @Area = area
          @SearchValue = searchvalue
          @By = by
          @Order = order
          @SecurityGroupId = securitygroupid
          @Type = type
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Area = params['Area']
          @SearchValue = params['SearchValue']
          @By = params['By']
          @Order = params['Order']
          @SecurityGroupId = params['SecurityGroupId']
          @Type = params['Type']
        end
      end

      # DescribeAssociatedInstanceList返回参数结构体
      class DescribeAssociatedInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 实例数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Data: 实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Data, :RequestId
        
        def initialize(total=nil, data=nil, requestid=nil)
          @Total = total
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              associatedinstanceinfo_tmp = AssociatedInstanceInfo.new
              associatedinstanceinfo_tmp.deserialize(i)
              @Data << associatedinstanceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBlockByIpTimesList请求参数结构体
      class DescribeBlockByIpTimesListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Ip: ip查询条件
        # @type Ip: String
        # @param Zone: 地域
        # @type Zone: String
        # @param Direction: 方向
        # @type Direction: String
        # @param Source: 来源
        # @type Source: String

        attr_accessor :StartTime, :EndTime, :Ip, :Zone, :Direction, :Source
        
        def initialize(starttime=nil, endtime=nil, ip=nil, zone=nil, direction=nil, source=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Ip = ip
          @Zone = zone
          @Direction = direction
          @Source = source
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Ip = params['Ip']
          @Zone = params['Zone']
          @Direction = params['Direction']
          @Source = params['Source']
        end
      end

      # DescribeBlockByIpTimesList返回参数结构体
      class DescribeBlockByIpTimesListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              ipstatic_tmp = IpStatic.new
              ipstatic_tmp.deserialize(i)
              @Data << ipstatic_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBlockStaticList请求参数结构体
      class DescribeBlockStaticListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param QueryType: 类型
        # @type QueryType: String
        # @param Top: top数
        # @type Top: Integer
        # @param SearchValue: 查询条件
        # @type SearchValue: String

        attr_accessor :StartTime, :EndTime, :QueryType, :Top, :SearchValue
        
        def initialize(starttime=nil, endtime=nil, querytype=nil, top=nil, searchvalue=nil)
          @StartTime = starttime
          @EndTime = endtime
          @QueryType = querytype
          @Top = top
          @SearchValue = searchvalue
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @QueryType = params['QueryType']
          @Top = params['Top']
          @SearchValue = params['SearchValue']
        end
      end

      # DescribeBlockStaticList返回参数结构体
      class DescribeBlockStaticListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 无
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              staticinfo_tmp = StaticInfo.new
              staticinfo_tmp.deserialize(i)
              @Data << staticinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCfwEips请求参数结构体
      class DescribeCfwEipsRequest < TencentCloud::Common::AbstractModel
        # @param Mode: 0：cfw新增模式，1：cfw接入模式
        # @type Mode: Integer
        # @param NatGatewayId: ALL：查询所有弹性公网ip; nat-xxxxx：接入模式场景指定网关的弹性公网ip
        # @type NatGatewayId: String
        # @param CfwInstance: 防火墙实例id
        # @type CfwInstance: String

        attr_accessor :Mode, :NatGatewayId, :CfwInstance
        
        def initialize(mode=nil, natgatewayid=nil, cfwinstance=nil)
          @Mode = mode
          @NatGatewayId = natgatewayid
          @CfwInstance = cfwinstance
        end

        def deserialize(params)
          @Mode = params['Mode']
          @NatGatewayId = params['NatGatewayId']
          @CfwInstance = params['CfwInstance']
        end
      end

      # DescribeCfwEips返回参数结构体
      class DescribeCfwEipsResponse < TencentCloud::Common::AbstractModel
        # @param NatFwEipList: 返回值信息
        # @type NatFwEipList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NatFwEipList, :RequestId
        
        def initialize(natfweiplist=nil, requestid=nil)
          @NatFwEipList = natfweiplist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NatFwEipList'].nil?
            @NatFwEipList = []
            params['NatFwEipList'].each do |i|
              natfweipsinfo_tmp = NatFwEipsInfo.new
              natfweipsinfo_tmp.deserialize(i)
              @NatFwEipList << natfweipsinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGuideScanInfo请求参数结构体
      class DescribeGuideScanInfoRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeGuideScanInfo返回参数结构体
      class DescribeGuideScanInfoResponse < TencentCloud::Common::AbstractModel
        # @param Data: 扫描信息
        # @type Data: :class:`Tencentcloud::Cfw.v20190904.models.ScanInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ScanInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNatRuleOverview请求参数结构体
      class DescribeNatRuleOverviewRequest < TencentCloud::Common::AbstractModel
        # @param Direction: 方向，0：出站，1：入站 默认值：0
        # @type Direction: Integer
        # @param Area: NAT地域  这个是必填项，填入相关的英文，'ap-beijing-fsi': '北京金融',
        #         'ap-beijing': '北京',
        #         'ap-changsha-ec': '长沙EC',
        #         'ap-chengdu': '成都',
        #         'ap-chongqing': '重庆',
        #         'ap-fuzhou-ec': '福州EC',
        #         'ap-guangzhou-open': '广州Open',
        #         'ap-guangzhou': '广州',
        #         'ap-hangzhou-ec': '杭州EC',
        #         'ap-jinan-ec': '济南EC',
        #         'ap-nanjing': '南京',
        #         'ap-shanghai-fsi': '上海金融',
        #         'ap-shanghai': '上海',
        #         'ap-shenzhen-fsi': '深圳金融',
        #         'ap-shenzhen': '深圳',
        #         'ap-wuhan-ec': '武汉EC'
        # @type Area: String

        attr_accessor :Direction, :Area
        
        def initialize(direction=nil, area=nil)
          @Direction = direction
          @Area = area
        end

        def deserialize(params)
          @Direction = params['Direction']
          @Area = params['Area']
        end
      end

      # DescribeNatRuleOverview返回参数结构体
      class DescribeNatRuleOverviewResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param EipList: 弹性IP列表
        # @type EipList: Array
        # @param DnatNum: 端口转发规则数量
        # @type DnatNum: Integer
        # @param TotalNum: 访问控制规则总数
        # @type TotalNum: Integer
        # @param RemainNum: 访问控制规则剩余配额
        # @type RemainNum: Integer
        # @param BlockNum: 阻断规则条数
        # @type BlockNum: Integer
        # @param EnableNum: 启用规则条数
        # @type EnableNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :InstanceName, :EipList, :DnatNum, :TotalNum, :RemainNum, :BlockNum, :EnableNum, :RequestId
        
        def initialize(instanceid=nil, instancename=nil, eiplist=nil, dnatnum=nil, totalnum=nil, remainnum=nil, blocknum=nil, enablenum=nil, requestid=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @EipList = eiplist
          @DnatNum = dnatnum
          @TotalNum = totalnum
          @RemainNum = remainnum
          @BlockNum = blocknum
          @EnableNum = enablenum
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @EipList = params['EipList']
          @DnatNum = params['DnatNum']
          @TotalNum = params['TotalNum']
          @RemainNum = params['RemainNum']
          @BlockNum = params['BlockNum']
          @EnableNum = params['EnableNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRuleOverview请求参数结构体
      class DescribeRuleOverviewRequest < TencentCloud::Common::AbstractModel
        # @param Direction: 方向，0：出站，1：入站
        # @type Direction: Integer

        attr_accessor :Direction
        
        def initialize(direction=nil)
          @Direction = direction
        end

        def deserialize(params)
          @Direction = params['Direction']
        end
      end

      # DescribeRuleOverview返回参数结构体
      class DescribeRuleOverviewResponse < TencentCloud::Common::AbstractModel
        # @param AllTotal: 规则总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllTotal: Integer
        # @param StrategyNum: 阻断策略规则数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrategyNum: Integer
        # @param StartRuleNum: 启用规则数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartRuleNum: Integer
        # @param StopRuleNum: 停用规则数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StopRuleNum: Integer
        # @param RemainingNum: 剩余配额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RemainingNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AllTotal, :StrategyNum, :StartRuleNum, :StopRuleNum, :RemainingNum, :RequestId
        
        def initialize(alltotal=nil, strategynum=nil, startrulenum=nil, stoprulenum=nil, remainingnum=nil, requestid=nil)
          @AllTotal = alltotal
          @StrategyNum = strategynum
          @StartRuleNum = startrulenum
          @StopRuleNum = stoprulenum
          @RemainingNum = remainingnum
          @RequestId = requestid
        end

        def deserialize(params)
          @AllTotal = params['AllTotal']
          @StrategyNum = params['StrategyNum']
          @StartRuleNum = params['StartRuleNum']
          @StopRuleNum = params['StopRuleNum']
          @RemainingNum = params['RemainingNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityGroupList请求参数结构体
      class DescribeSecurityGroupListRequest < TencentCloud::Common::AbstractModel
        # @param Direction: 0: 出站规则，1：入站规则
        # @type Direction: Integer
        # @param Area: 地域代码（例: ap-guangzhou),支持腾讯云全部地域
        # @type Area: String
        # @param SearchValue: 搜索值
        # @type SearchValue: String
        # @param Limit: 每页条数，默认为10
        # @type Limit: Integer
        # @param Offset: 偏移值，默认为0
        # @type Offset: Integer
        # @param Status: 状态，'': 全部，'0'：筛选停用规则，'1'：筛选启用规则
        # @type Status: String
        # @param Filter: 0: 不过滤，1：过滤掉正常规则，保留下发异常规则
        # @type Filter: Integer

        attr_accessor :Direction, :Area, :SearchValue, :Limit, :Offset, :Status, :Filter
        
        def initialize(direction=nil, area=nil, searchvalue=nil, limit=nil, offset=nil, status=nil, filter=nil)
          @Direction = direction
          @Area = area
          @SearchValue = searchvalue
          @Limit = limit
          @Offset = offset
          @Status = status
          @Filter = filter
        end

        def deserialize(params)
          @Direction = params['Direction']
          @Area = params['Area']
          @SearchValue = params['SearchValue']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Status = params['Status']
          @Filter = params['Filter']
        end
      end

      # DescribeSecurityGroupList返回参数结构体
      class DescribeSecurityGroupListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 列表当前规则总条数
        # @type Total: Integer
        # @param Data: 安全组规则列表数据
        # @type Data: Array
        # @param AllTotal: 不算筛选条数的总条数
        # @type AllTotal: Integer
        # @param Enable: 访问控制规则全部启用/全部停用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enable: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Data, :AllTotal, :Enable, :RequestId
        
        def initialize(total=nil, data=nil, alltotal=nil, enable=nil, requestid=nil)
          @Total = total
          @Data = data
          @AllTotal = alltotal
          @Enable = enable
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              securitygrouplistdata_tmp = SecurityGroupListData.new
              securitygrouplistdata_tmp.deserialize(i)
              @Data << securitygrouplistdata_tmp
            end
          end
          @AllTotal = params['AllTotal']
          @Enable = params['Enable']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSwitchLists请求参数结构体
      class DescribeSwitchListsRequest < TencentCloud::Common::AbstractModel
        # @param Status: 防火墙状态  0: 关闭，1：开启
        # @type Status: Integer
        # @param Type: 资产类型 CVM/NAT/VPN/CLB/其它
        # @type Type: String
        # @param Area: 地域 上海/重庆/广州，等等
        # @type Area: String
        # @param SearchValue: 搜索值  例子："{"common":"106.54.189.45"}"
        # @type SearchValue: String
        # @param Limit: 条数  默认值:10
        # @type Limit: Integer
        # @param Offset: 偏移值 默认值: 0
        # @type Offset: Integer
        # @param Order: 排序，desc：降序，asc：升序
        # @type Order: String
        # @param By: 排序字段 PortTimes(风险端口数)
        # @type By: String

        attr_accessor :Status, :Type, :Area, :SearchValue, :Limit, :Offset, :Order, :By
        
        def initialize(status=nil, type=nil, area=nil, searchvalue=nil, limit=nil, offset=nil, order=nil, by=nil)
          @Status = status
          @Type = type
          @Area = area
          @SearchValue = searchvalue
          @Limit = limit
          @Offset = offset
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Status = params['Status']
          @Type = params['Type']
          @Area = params['Area']
          @SearchValue = params['SearchValue']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeSwitchLists返回参数结构体
      class DescribeSwitchListsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总条数
        # @type Total: Integer
        # @param Data: 列表数据
        # @type Data: Array
        # @param AreaLists: 区域列表
        # @type AreaLists: Array
        # @param OnNum: 打开个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OnNum: Integer
        # @param OffNum: 关闭个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OffNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Data, :AreaLists, :OnNum, :OffNum, :RequestId
        
        def initialize(total=nil, data=nil, arealists=nil, onnum=nil, offnum=nil, requestid=nil)
          @Total = total
          @Data = data
          @AreaLists = arealists
          @OnNum = onnum
          @OffNum = offnum
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              switchlistsdata_tmp = SwitchListsData.new
              switchlistsdata_tmp.deserialize(i)
              @Data << switchlistsdata_tmp
            end
          end
          @AreaLists = params['AreaLists']
          @OnNum = params['OnNum']
          @OffNum = params['OffNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSyncAssetStatus请求参数结构体
      class DescribeSyncAssetStatusRequest < TencentCloud::Common::AbstractModel
        # @param Type: 0: 互联网防火墙开关，1：vpc 防火墙开关
        # @type Type: Integer

        attr_accessor :Type
        
        def initialize(type=nil)
          @Type = type
        end

        def deserialize(params)
          @Type = params['Type']
        end
      end

      # DescribeSyncAssetStatus返回参数结构体
      class DescribeSyncAssetStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 1-更新中 2-更新完成 3、4-更新失败
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId
        
        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTLogInfo请求参数结构体
      class DescribeTLogInfoRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param QueryType: 类型 1 告警 2阻断
        # @type QueryType: String
        # @param SearchValue: 查询条件
        # @type SearchValue: String

        attr_accessor :StartTime, :EndTime, :QueryType, :SearchValue
        
        def initialize(starttime=nil, endtime=nil, querytype=nil, searchvalue=nil)
          @StartTime = starttime
          @EndTime = endtime
          @QueryType = querytype
          @SearchValue = searchvalue
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @QueryType = params['QueryType']
          @SearchValue = params['SearchValue']
        end
      end

      # DescribeTLogInfo返回参数结构体
      class DescribeTLogInfoResponse < TencentCloud::Common::AbstractModel
        # @param Data: 无
        # @type Data: :class:`Tencentcloud::Cfw.v20190904.models.TLogInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TLogInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTLogIpList请求参数结构体
      class DescribeTLogIpListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param QueryType: 类型 1 告警 2阻断
        # @type QueryType: String
        # @param Top: top数
        # @type Top: Integer
        # @param SearchValue: 查询条件
        # @type SearchValue: String

        attr_accessor :StartTime, :EndTime, :QueryType, :Top, :SearchValue
        
        def initialize(starttime=nil, endtime=nil, querytype=nil, top=nil, searchvalue=nil)
          @StartTime = starttime
          @EndTime = endtime
          @QueryType = querytype
          @Top = top
          @SearchValue = searchvalue
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @QueryType = params['QueryType']
          @Top = params['Top']
          @SearchValue = params['SearchValue']
        end
      end

      # DescribeTLogIpList返回参数结构体
      class DescribeTLogIpListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 数据集合
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              staticinfo_tmp = StaticInfo.new
              staticinfo_tmp.deserialize(i)
              @Data << staticinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTableStatus请求参数结构体
      class DescribeTableStatusRequest < TencentCloud::Common::AbstractModel
        # @param EdgeId: EdgeId值两个vpc间的边id vpc填Edgeid，不要填Area；
        # @type EdgeId: String
        # @param Status: 状态值，0：检查表的状态 确实只有一个默认值
        # @type Status: Integer
        # @param Area: Nat所在地域 NAT填Area，不要填Edgeid；
        # @type Area: String
        # @param Direction: 方向，0：出站，1：入站 默认值为 0
        # @type Direction: Integer

        attr_accessor :EdgeId, :Status, :Area, :Direction
        
        def initialize(edgeid=nil, status=nil, area=nil, direction=nil)
          @EdgeId = edgeid
          @Status = status
          @Area = area
          @Direction = direction
        end

        def deserialize(params)
          @EdgeId = params['EdgeId']
          @Status = params['Status']
          @Area = params['Area']
          @Direction = params['Direction']
        end
      end

      # DescribeTableStatus返回参数结构体
      class DescribeTableStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 0：正常，其它：不正常
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId
        
        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUnHandleEventTabList请求参数结构体
      class DescribeUnHandleEventTabListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param AssetID: 查询示例ID
        # @type AssetID: String

        attr_accessor :StartTime, :EndTime, :AssetID
        
        def initialize(starttime=nil, endtime=nil, assetid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @AssetID = assetid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @AssetID = params['AssetID']
        end
      end

      # DescribeUnHandleEventTabList返回参数结构体
      class DescribeUnHandleEventTabListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 租户伪攻击链未处置事件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Cfw.v20190904.models.UnHandleEvent`
        # @param ReturnCode: 错误码，0成功 非0错误
        # @type ReturnCode: Integer
        # @param ReturnMsg: 返回信息 success成功
        # @type ReturnMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :ReturnCode, :ReturnMsg, :RequestId
        
        def initialize(data=nil, returncode=nil, returnmsg=nil, requestid=nil)
          @Data = data
          @ReturnCode = returncode
          @ReturnMsg = returnmsg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UnHandleEvent.new
            @Data.deserialize(params['Data'])
          end
          @ReturnCode = params['ReturnCode']
          @ReturnMsg = params['ReturnMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpcRuleOverview请求参数结构体
      class DescribeVpcRuleOverviewRequest < TencentCloud::Common::AbstractModel
        # @param EdgeId: EdgeId值两个vpc间的边id  不是必填项可以为空，就是所有vpc间的访问控制规则
        # @type EdgeId: String

        attr_accessor :EdgeId
        
        def initialize(edgeid=nil)
          @EdgeId = edgeid
        end

        def deserialize(params)
          @EdgeId = params['EdgeId']
        end
      end

      # DescribeVpcRuleOverview返回参数结构体
      class DescribeVpcRuleOverviewResponse < TencentCloud::Common::AbstractModel
        # @param StrategyNum: 阻断策略规则数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrategyNum: Integer
        # @param StartRuleNum: 启用规则数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartRuleNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StrategyNum, :StartRuleNum, :RequestId
        
        def initialize(strategynum=nil, startrulenum=nil, requestid=nil)
          @StrategyNum = strategynum
          @StartRuleNum = startrulenum
          @RequestId = requestid
        end

        def deserialize(params)
          @StrategyNum = params['StrategyNum']
          @StartRuleNum = params['StartRuleNum']
          @RequestId = params['RequestId']
        end
      end

      # ExpandCfwVertical请求参数结构体
      class ExpandCfwVerticalRequest < TencentCloud::Common::AbstractModel
        # @param FwType: nat：nat防火墙，ew：东西向防火墙
        # @type FwType: String
        # @param Width: 带宽值
        # @type Width: Integer
        # @param CfwInstance: 防火墙实例id
        # @type CfwInstance: String

        attr_accessor :FwType, :Width, :CfwInstance
        
        def initialize(fwtype=nil, width=nil, cfwinstance=nil)
          @FwType = fwtype
          @Width = width
          @CfwInstance = cfwinstance
        end

        def deserialize(params)
          @FwType = params['FwType']
          @Width = params['Width']
          @CfwInstance = params['CfwInstance']
        end
      end

      # ExpandCfwVertical返回参数结构体
      class ExpandCfwVerticalResponse < TencentCloud::Common::AbstractModel
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

      # 黑白名单IOC列表
      class IocListData < TencentCloud::Common::AbstractModel
        # @param IP: 待处置IP地址，IP/Domain字段二选一
        # @type IP: String
        # @param Direction: 只能为0或者1   0代表出站 1代表入站
        # @type Direction: Integer
        # @param Domain: 待处置域名，IP/Domain字段二选一
        # @type Domain: String

        attr_accessor :IP, :Direction, :Domain
        
        def initialize(ip=nil, direction=nil, domain=nil)
          @IP = ip
          @Direction = direction
          @Domain = domain
        end

        def deserialize(params)
          @IP = params['IP']
          @Direction = params['Direction']
          @Domain = params['Domain']
        end
      end

      # 统计折线图通用结构体
      class IpStatic < TencentCloud::Common::AbstractModel
        # @param Num: 值
        # @type Num: Integer
        # @param StatTime: 折线图横坐标时间
        # @type StatTime: String

        attr_accessor :Num, :StatTime
        
        def initialize(num=nil, stattime=nil)
          @Num = num
          @StatTime = stattime
        end

        def deserialize(params)
          @Num = params['Num']
          @StatTime = params['StatTime']
        end
      end

      # ModifyAcRule请求参数结构体
      class ModifyAcRuleRequest < TencentCloud::Common::AbstractModel
        # @param Data: 规则数组
        # @type Data: Array
        # @param EdgeId: EdgeId值
        # @type EdgeId: String
        # @param Enable: 访问规则状态
        # @type Enable: Integer
        # @param Area: NAT地域
        # @type Area: String

        attr_accessor :Data, :EdgeId, :Enable, :Area
        
        def initialize(data=nil, edgeid=nil, enable=nil, area=nil)
          @Data = data
          @EdgeId = edgeid
          @Enable = enable
          @Area = area
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              ruleinfodata_tmp = RuleInfoData.new
              ruleinfodata_tmp.deserialize(i)
              @Data << ruleinfodata_tmp
            end
          end
          @EdgeId = params['EdgeId']
          @Enable = params['Enable']
          @Area = params['Area']
        end
      end

      # ModifyAcRule返回参数结构体
      class ModifyAcRuleResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态值，0:操作成功，非0：操作失败
        # @type Status: Integer
        # @param Info: 返回多余的信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Info: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Info, :RequestId
        
        def initialize(status=nil, info=nil, requestid=nil)
          @Status = status
          @Info = info
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Info = params['Info']
          @RequestId = params['RequestId']
        end
      end

      # ModifyAllRuleStatus请求参数结构体
      class ModifyAllRuleStatusRequest < TencentCloud::Common::AbstractModel
        # @param Status: 状态，0：全部停用，1：全部启用
        # @type Status: Integer
        # @param Direction: 方向，0：出站，1：入站
        # @type Direction: Integer
        # @param EdgeId: Edge ID值
        # @type EdgeId: String
        # @param Area: NAT地域
        # @type Area: String

        attr_accessor :Status, :Direction, :EdgeId, :Area
        
        def initialize(status=nil, direction=nil, edgeid=nil, area=nil)
          @Status = status
          @Direction = direction
          @EdgeId = edgeid
          @Area = area
        end

        def deserialize(params)
          @Status = params['Status']
          @Direction = params['Direction']
          @EdgeId = params['EdgeId']
          @Area = params['Area']
        end
      end

      # ModifyAllRuleStatus返回参数结构体
      class ModifyAllRuleStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 0: 修改成功, 其他: 修改失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId
        
        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # ModifyAllSwitchStatus请求参数结构体
      class ModifyAllSwitchStatusRequest < TencentCloud::Common::AbstractModel
        # @param Status: 状态，0：关闭，1：开启
        # @type Status: Integer
        # @param Type: 0: 互联网边界防火墙开关，1：vpc防火墙开关
        # @type Type: Integer
        # @param Ids: 选中的防火墙开关Id
        # @type Ids: Array
        # @param ChangeType: NAT开关切换类型，1,单个子网，2，同开同关，3，全部
        # @type ChangeType: Integer
        # @param Area: NAT实例所在地域
        # @type Area: String

        attr_accessor :Status, :Type, :Ids, :ChangeType, :Area
        
        def initialize(status=nil, type=nil, ids=nil, changetype=nil, area=nil)
          @Status = status
          @Type = type
          @Ids = ids
          @ChangeType = changetype
          @Area = area
        end

        def deserialize(params)
          @Status = params['Status']
          @Type = params['Type']
          @Ids = params['Ids']
          @ChangeType = params['ChangeType']
          @Area = params['Area']
        end
      end

      # ModifyAllSwitchStatus返回参数结构体
      class ModifyAllSwitchStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 修改成功与否的状态值 0：修改成功，非 0：修改失败
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId
        
        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # ModifyBlockIgnoreList请求参数结构体
      class ModifyBlockIgnoreListRequest < TencentCloud::Common::AbstractModel
        # @param RuleType: 1拦截列表 2 忽略列表
        # @type RuleType: Integer
        # @param IOC: IP、Domain二选一，不能同时为空
        # @type IOC: Array
        # @param IocAction: 可选值：delete（删除）、edit（编辑）、add（添加）  其他值无效
        # @type IocAction: String
        # @param StartTime: 时间格式：yyyy-MM-dd HH:mm:ss
        # @type StartTime: String
        # @param EndTime: 时间格式：yyyy-MM-dd HH:mm:ss
        # @type EndTime: String

        attr_accessor :RuleType, :IOC, :IocAction, :StartTime, :EndTime
        
        def initialize(ruletype=nil, ioc=nil, iocaction=nil, starttime=nil, endtime=nil)
          @RuleType = ruletype
          @IOC = ioc
          @IocAction = iocaction
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @RuleType = params['RuleType']
          unless params['IOC'].nil?
            @IOC = []
            params['IOC'].each do |i|
              ioclistdata_tmp = IocListData.new
              ioclistdata_tmp.deserialize(i)
              @IOC << ioclistdata_tmp
            end
          end
          @IocAction = params['IocAction']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # ModifyBlockIgnoreList返回参数结构体
      class ModifyBlockIgnoreListResponse < TencentCloud::Common::AbstractModel
        # @param ReturnMsg: 接口返回信息
        # @type ReturnMsg: String
        # @param ReturnCode: 接口返回错误码，0请求成功  非0失败
        # @type ReturnCode: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReturnMsg, :ReturnCode, :RequestId
        
        def initialize(returnmsg=nil, returncode=nil, requestid=nil)
          @ReturnMsg = returnmsg
          @ReturnCode = returncode
          @RequestId = requestid
        end

        def deserialize(params)
          @ReturnMsg = params['ReturnMsg']
          @ReturnCode = params['ReturnCode']
          @RequestId = params['RequestId']
        end
      end

      # ModifyBlockTop请求参数结构体
      class ModifyBlockTopRequest < TencentCloud::Common::AbstractModel
        # @param UniqueId: 记录id
        # @type UniqueId: String
        # @param OpeType: 操作类型 1 置顶 0取消
        # @type OpeType: String

        attr_accessor :UniqueId, :OpeType
        
        def initialize(uniqueid=nil, opetype=nil)
          @UniqueId = uniqueid
          @OpeType = opetype
        end

        def deserialize(params)
          @UniqueId = params['UniqueId']
          @OpeType = params['OpeType']
        end
      end

      # ModifyBlockTop返回参数结构体
      class ModifyBlockTopResponse < TencentCloud::Common::AbstractModel
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

      # ModifyItemSwitchStatus请求参数结构体
      class ModifyItemSwitchStatusRequest < TencentCloud::Common::AbstractModel
        # @param Id: id值
        # @type Id: Integer
        # @param Status: 状态值，0: 关闭 ,1:开启
        # @type Status: Integer
        # @param Type: 0: 互联网边界边界防火墙开关，1：vpc防火墙开关
        # @type Type: Integer

        attr_accessor :Id, :Status, :Type
        
        def initialize(id=nil, status=nil, type=nil)
          @Id = id
          @Status = status
          @Type = type
        end

        def deserialize(params)
          @Id = params['Id']
          @Status = params['Status']
          @Type = params['Type']
        end
      end

      # ModifyItemSwitchStatus返回参数结构体
      class ModifyItemSwitchStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 修改成功与否状态值 0：修改成功，非 0：修改失败
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId
        
        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # ModifySecurityGroupAllRuleStatus请求参数结构体
      class ModifySecurityGroupAllRuleStatusRequest < TencentCloud::Common::AbstractModel
        # @param Status: 列表规则状态，0：全部停用，1：全部启用
        # @type Status: Integer
        # @param Direction: 方向，0：出站，1：入站
        # @type Direction: Integer
        # @param EdgeId: Edge ID值
        # @type EdgeId: String
        # @param Area: NAT地域, 腾讯云地域的英文简写
        # @type Area: String

        attr_accessor :Status, :Direction, :EdgeId, :Area
        
        def initialize(status=nil, direction=nil, edgeid=nil, area=nil)
          @Status = status
          @Direction = direction
          @EdgeId = edgeid
          @Area = area
        end

        def deserialize(params)
          @Status = params['Status']
          @Direction = params['Direction']
          @EdgeId = params['EdgeId']
          @Area = params['Area']
        end
      end

      # ModifySecurityGroupAllRuleStatus返回参数结构体
      class ModifySecurityGroupAllRuleStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 0: 修改成功, 其他: 修改失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId
        
        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # ModifySequenceRules请求参数结构体
      class ModifySequenceRulesRequest < TencentCloud::Common::AbstractModel
        # @param EdgeId: 边Id值
        # @type EdgeId: String
        # @param Data: 修改数据
        # @type Data: Array
        # @param Area: NAT地域
        # @type Area: String
        # @param Direction: 方向，0：出向，1：入向
        # @type Direction: Integer

        attr_accessor :EdgeId, :Data, :Area, :Direction
        
        def initialize(edgeid=nil, data=nil, area=nil, direction=nil)
          @EdgeId = edgeid
          @Data = data
          @Area = area
          @Direction = direction
        end

        def deserialize(params)
          @EdgeId = params['EdgeId']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              sequencedata_tmp = SequenceData.new
              sequencedata_tmp.deserialize(i)
              @Data << sequencedata_tmp
            end
          end
          @Area = params['Area']
          @Direction = params['Direction']
        end
      end

      # ModifySequenceRules返回参数结构体
      class ModifySequenceRulesResponse < TencentCloud::Common::AbstractModel
        # @param Status: 0: 修改成功, 非0: 修改失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId
        
        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # ModifyTableStatus请求参数结构体
      class ModifyTableStatusRequest < TencentCloud::Common::AbstractModel
        # @param EdgeId: EdgeId值两个vpc间的边id
        # @type EdgeId: String
        # @param Status: 状态值，1：锁表，2：解锁表
        # @type Status: Integer
        # @param Area: Nat所在地域
        # @type Area: String
        # @param Direction: 0： 出向，1：入向
        # @type Direction: Integer

        attr_accessor :EdgeId, :Status, :Area, :Direction
        
        def initialize(edgeid=nil, status=nil, area=nil, direction=nil)
          @EdgeId = edgeid
          @Status = status
          @Area = area
          @Direction = direction
        end

        def deserialize(params)
          @EdgeId = params['EdgeId']
          @Status = params['Status']
          @Area = params['Area']
          @Direction = params['Direction']
        end
      end

      # ModifyTableStatus返回参数结构体
      class ModifyTableStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 0：正常，-1：不正常
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId
        
        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # Nat防火墙弹性公网ip列表
      class NatFwEipsInfo < TencentCloud::Common::AbstractModel
        # @param Eip: 弹性公网ip
        # @type Eip: String
        # @param NatGatewayId: 所属的Nat网关Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NatGatewayId: String
        # @param NatGatewayName: Nat网关名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NatGatewayName: String

        attr_accessor :Eip, :NatGatewayId, :NatGatewayName
        
        def initialize(eip=nil, natgatewayid=nil, natgatewayname=nil)
          @Eip = eip
          @NatGatewayId = natgatewayid
          @NatGatewayName = natgatewayname
        end

        def deserialize(params)
          @Eip = params['Eip']
          @NatGatewayId = params['NatGatewayId']
          @NatGatewayName = params['NatGatewayName']
        end
      end

      # 规则输入对象
      class RuleInfoData < TencentCloud::Common::AbstractModel
        # @param OrderIndex: 执行顺序
        # @type OrderIndex: Integer
        # @param SourceIp: 访问源
        # @type SourceIp: String
        # @param TargetIp: 访问目的
        # @type TargetIp: String
        # @param Protocol: 协议
        # @type Protocol: String
        # @param Strategy: 策略
        # @type Strategy: String
        # @param SourceType: 访问源类型，1是IP，3是域名，4是IP地址模版，5是域名地址模版
        # @type SourceType: Integer
        # @param Direction: 方向，0：出站，1：入站
        # @type Direction: Integer
        # @param Detail: 描述
        # @type Detail: String
        # @param TargetType: 访问目的类型，1是IP，3是域名，4是IP地址模版，5是域名地址模版
        # @type TargetType: Integer
        # @param Port: 端口
        # @type Port: String
        # @param Id: id值
        # @type Id: Integer
        # @param LogId: 日志id，从告警处创建必传，其它为空
        # @type LogId: String
        # @param City: 城市Code
        # @type City: Integer
        # @param Country: 国家Code
        # @type Country: Integer
        # @param CloudCode: 云厂商，支持多个，以逗号分隔， 1:腾讯云（仅中国香港及海外）,2:阿里云,3:亚马逊云,4:华为云,5:微软云
        # @type CloudCode: String
        # @param IsRegion: 是否为地域
        # @type IsRegion: Integer
        # @param CityName: 城市名
        # @type CityName: String
        # @param CountryName: 国家名
        # @type CountryName: String

        attr_accessor :OrderIndex, :SourceIp, :TargetIp, :Protocol, :Strategy, :SourceType, :Direction, :Detail, :TargetType, :Port, :Id, :LogId, :City, :Country, :CloudCode, :IsRegion, :CityName, :CountryName
        
        def initialize(orderindex=nil, sourceip=nil, targetip=nil, protocol=nil, strategy=nil, sourcetype=nil, direction=nil, detail=nil, targettype=nil, port=nil, id=nil, logid=nil, city=nil, country=nil, cloudcode=nil, isregion=nil, cityname=nil, countryname=nil)
          @OrderIndex = orderindex
          @SourceIp = sourceip
          @TargetIp = targetip
          @Protocol = protocol
          @Strategy = strategy
          @SourceType = sourcetype
          @Direction = direction
          @Detail = detail
          @TargetType = targettype
          @Port = port
          @Id = id
          @LogId = logid
          @City = city
          @Country = country
          @CloudCode = cloudcode
          @IsRegion = isregion
          @CityName = cityname
          @CountryName = countryname
        end

        def deserialize(params)
          @OrderIndex = params['OrderIndex']
          @SourceIp = params['SourceIp']
          @TargetIp = params['TargetIp']
          @Protocol = params['Protocol']
          @Strategy = params['Strategy']
          @SourceType = params['SourceType']
          @Direction = params['Direction']
          @Detail = params['Detail']
          @TargetType = params['TargetType']
          @Port = params['Port']
          @Id = params['Id']
          @LogId = params['LogId']
          @City = params['City']
          @Country = params['Country']
          @CloudCode = params['CloudCode']
          @IsRegion = params['IsRegion']
          @CityName = params['CityName']
          @CountryName = params['CountryName']
        end
      end

      # RunSyncAsset请求参数结构体
      class RunSyncAssetRequest < TencentCloud::Common::AbstractModel
        # @param Type: 0: 互联网防火墙开关，1：vpc 防火墙开关
        # @type Type: Integer

        attr_accessor :Type
        
        def initialize(type=nil)
          @Type = type
        end

        def deserialize(params)
          @Type = params['Type']
        end
      end

      # RunSyncAsset返回参数结构体
      class RunSyncAssetResponse < TencentCloud::Common::AbstractModel
        # @param Status: 0：同步成功，1：资产更新中，2：后台同步调用失败
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId
        
        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # 新手引导扫描信息
      class ScanInfo < TencentCloud::Common::AbstractModel
        # @param ScanResultInfo: 扫描结果信息
        # @type ScanResultInfo: :class:`Tencentcloud::Cfw.v20190904.models.ScanResultInfo`
        # @param ScanStatus: 扫描状态 0扫描中 1完成   2没赠送过扫描显示开启界面
        # @type ScanStatus: Integer
        # @param ScanPercent: 进度
        # @type ScanPercent: Float
        # @param ScanTime: 预计完成时间
        # @type ScanTime: String

        attr_accessor :ScanResultInfo, :ScanStatus, :ScanPercent, :ScanTime
        
        def initialize(scanresultinfo=nil, scanstatus=nil, scanpercent=nil, scantime=nil)
          @ScanResultInfo = scanresultinfo
          @ScanStatus = scanstatus
          @ScanPercent = scanpercent
          @ScanTime = scantime
        end

        def deserialize(params)
          unless params['ScanResultInfo'].nil?
            @ScanResultInfo = ScanResultInfo.new
            @ScanResultInfo.deserialize(params['ScanResultInfo'])
          end
          @ScanStatus = params['ScanStatus']
          @ScanPercent = params['ScanPercent']
          @ScanTime = params['ScanTime']
        end
      end

      # 新手引导扫描结果信息PortNum   int
      # 	LeakNum   int
      # 	IPNum     int
      # 	IPStatus  bool
      # 	IdpStatus bool
      # 	BanStatus bool
      class ScanResultInfo < TencentCloud::Common::AbstractModel
        # @param LeakNum: 暴漏漏洞数量
        # @type LeakNum: Integer
        # @param IPNum: 防护ip数量
        # @type IPNum: Integer
        # @param PortNum: 暴漏端口数量
        # @type PortNum: Integer
        # @param IPStatus: 是否开启防护
        # @type IPStatus: Boolean
        # @param IdpStatus: 是否拦截攻击
        # @type IdpStatus: Boolean
        # @param BanStatus: 是否禁封端口
        # @type BanStatus: Boolean

        attr_accessor :LeakNum, :IPNum, :PortNum, :IPStatus, :IdpStatus, :BanStatus
        
        def initialize(leaknum=nil, ipnum=nil, portnum=nil, ipstatus=nil, idpstatus=nil, banstatus=nil)
          @LeakNum = leaknum
          @IPNum = ipnum
          @PortNum = portnum
          @IPStatus = ipstatus
          @IdpStatus = idpstatus
          @BanStatus = banstatus
        end

        def deserialize(params)
          @LeakNum = params['LeakNum']
          @IPNum = params['IPNum']
          @PortNum = params['PortNum']
          @IPStatus = params['IPStatus']
          @IdpStatus = params['IdpStatus']
          @BanStatus = params['BanStatus']
        end
      end

      # 添加安全组Api规则对象
      class SecurityGroupApiRuleData < TencentCloud::Common::AbstractModel
        # @param SourceId: 访问源，入站时为Ip/Cidr，默认为0.0.0.0/0； 出站时当RuleType为1时，支持内网Ip/Cidr, 当RuleType为2时，填实例ID
        # @type SourceId: String
        # @param TargetId: 访问目的，出站时为Ip/Cidr，默认为0.0.0.0/0；入站时当RuleType为1时，支持内网Ip/Cidr, 当RuleType为2时，填实例ID
        # @type TargetId: String
        # @param Protocol: 协议，支持ANY/TCP/UDP/ICMP
        # @type Protocol: String
        # @param Port: 端口, 当Protocol为ANY或ICMP时，Port为-1/-1
        # @type Port: String
        # @param Strategy: 策略, 1：阻断，2：放行
        # @type Strategy: String
        # @param Detail: 描述
        # @type Detail: String
        # @param RuleType: 规则类型，1：VpcId+Ip/Cidr, 2: 实例ID，入站时为访问目的类型，出站时为访问源类型
        # @type RuleType: Integer
        # @param OrderIndex: 执行顺序，中间插入必传，前插、后插非必传
        # @type OrderIndex: Integer
        # @param VpcId: 私有网络ID，当RuleType为1时必传
        # @type VpcId: String

        attr_accessor :SourceId, :TargetId, :Protocol, :Port, :Strategy, :Detail, :RuleType, :OrderIndex, :VpcId
        
        def initialize(sourceid=nil, targetid=nil, protocol=nil, port=nil, strategy=nil, detail=nil, ruletype=nil, orderindex=nil, vpcid=nil)
          @SourceId = sourceid
          @TargetId = targetid
          @Protocol = protocol
          @Port = port
          @Strategy = strategy
          @Detail = detail
          @RuleType = ruletype
          @OrderIndex = orderindex
          @VpcId = vpcid
        end

        def deserialize(params)
          @SourceId = params['SourceId']
          @TargetId = params['TargetId']
          @Protocol = params['Protocol']
          @Port = params['Port']
          @Strategy = params['Strategy']
          @Detail = params['Detail']
          @RuleType = params['RuleType']
          @OrderIndex = params['OrderIndex']
          @VpcId = params['VpcId']
        end
      end

      # 安全组列表数据
      class SecurityGroupListData < TencentCloud::Common::AbstractModel
        # @param Id: 规则ID
        # @type Id: Integer
        # @param OrderIndex: 执行顺序
        # @type OrderIndex: Integer
        # @param SourceId: 访问源
        # @type SourceId: String
        # @param SourceType: 访问源类型，默认为0，1: VPC, 2: SUBNET, 3: CVM, 4: CLB, 5: ENI, 6: CDB
        # @type SourceType: Integer
        # @param TargetId: 访问目的
        # @type TargetId: String
        # @param TargetType: 访问目的类型，默认为0，1: VPC, 2: SUBNET, 3: CVM, 4: CLB, 5: ENI, 6: CDB
        # @type TargetType: Integer
        # @param Protocol: 协议
        # @type Protocol: String
        # @param Port: 目的端口
        # @type Port: String
        # @param Strategy: 策略, 1：阻断，2：放行
        # @type Strategy: Integer
        # @param Detail: 描述
        # @type Detail: String
        # @param Status: 是否开关开启，0：未开启，1：开启
        # @type Status: Integer
        # @param IsNew: 是否是正常规则，0：正常，1：异常
        # @type IsNew: Integer
        # @param BothWay: 单/双向下发，0:单向下发，1：双向下发
        # @type BothWay: Integer
        # @param VpcId: 私有网络ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param InstanceName: 实例名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param PublicIp: 公网IP，多个以英文逗号分隔
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIp: String
        # @param PrivateIp: 内网IP，多个以英文逗号分隔
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateIp: String
        # @param Cidr: 掩码地址，多个以英文逗号分隔
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cidr: String

        attr_accessor :Id, :OrderIndex, :SourceId, :SourceType, :TargetId, :TargetType, :Protocol, :Port, :Strategy, :Detail, :Status, :IsNew, :BothWay, :VpcId, :SubnetId, :InstanceName, :PublicIp, :PrivateIp, :Cidr
        
        def initialize(id=nil, orderindex=nil, sourceid=nil, sourcetype=nil, targetid=nil, targettype=nil, protocol=nil, port=nil, strategy=nil, detail=nil, status=nil, isnew=nil, bothway=nil, vpcid=nil, subnetid=nil, instancename=nil, publicip=nil, privateip=nil, cidr=nil)
          @Id = id
          @OrderIndex = orderindex
          @SourceId = sourceid
          @SourceType = sourcetype
          @TargetId = targetid
          @TargetType = targettype
          @Protocol = protocol
          @Port = port
          @Strategy = strategy
          @Detail = detail
          @Status = status
          @IsNew = isnew
          @BothWay = bothway
          @VpcId = vpcid
          @SubnetId = subnetid
          @InstanceName = instancename
          @PublicIp = publicip
          @PrivateIp = privateip
          @Cidr = cidr
        end

        def deserialize(params)
          @Id = params['Id']
          @OrderIndex = params['OrderIndex']
          @SourceId = params['SourceId']
          @SourceType = params['SourceType']
          @TargetId = params['TargetId']
          @TargetType = params['TargetType']
          @Protocol = params['Protocol']
          @Port = params['Port']
          @Strategy = params['Strategy']
          @Detail = params['Detail']
          @Status = params['Status']
          @IsNew = params['IsNew']
          @BothWay = params['BothWay']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @InstanceName = params['InstanceName']
          @PublicIp = params['PublicIp']
          @PrivateIp = params['PrivateIp']
          @Cidr = params['Cidr']
        end
      end

      # 执行顺序对象
      class SequenceData < TencentCloud::Common::AbstractModel
        # @param Id: 规则Id值
        # @type Id: Integer
        # @param OrderIndex: 修改前执行顺序
        # @type OrderIndex: Integer
        # @param NewOrderIndex: 修改后执行顺序
        # @type NewOrderIndex: Integer

        attr_accessor :Id, :OrderIndex, :NewOrderIndex
        
        def initialize(id=nil, orderindex=nil, neworderindex=nil)
          @Id = id
          @OrderIndex = orderindex
          @NewOrderIndex = neworderindex
        end

        def deserialize(params)
          @Id = params['Id']
          @OrderIndex = params['OrderIndex']
          @NewOrderIndex = params['NewOrderIndex']
        end
      end

      # SetNatFwDnatRule请求参数结构体
      class SetNatFwDnatRuleRequest < TencentCloud::Common::AbstractModel
        # @param Mode: 0：cfw新增模式，1：cfw接入模式。
        # @type Mode: Integer
        # @param OperationType: 操作类型，可选值：add，del，modify。
        # @type OperationType: String
        # @param CfwInstance: 防火墙实例id。
        # @type CfwInstance: String
        # @param AddOrDelDnatRules: 添加或删除操作的Dnat规则列表。
        # @type AddOrDelDnatRules: Array
        # @param OriginDnat: 修改操作的原始Dnat规则
        # @type OriginDnat: :class:`Tencentcloud::Cfw.v20190904.models.CfwNatDnatRule`
        # @param NewDnat: 修改操作的新的Dnat规则
        # @type NewDnat: :class:`Tencentcloud::Cfw.v20190904.models.CfwNatDnatRule`

        attr_accessor :Mode, :OperationType, :CfwInstance, :AddOrDelDnatRules, :OriginDnat, :NewDnat
        
        def initialize(mode=nil, operationtype=nil, cfwinstance=nil, addordeldnatrules=nil, origindnat=nil, newdnat=nil)
          @Mode = mode
          @OperationType = operationtype
          @CfwInstance = cfwinstance
          @AddOrDelDnatRules = addordeldnatrules
          @OriginDnat = origindnat
          @NewDnat = newdnat
        end

        def deserialize(params)
          @Mode = params['Mode']
          @OperationType = params['OperationType']
          @CfwInstance = params['CfwInstance']
          unless params['AddOrDelDnatRules'].nil?
            @AddOrDelDnatRules = []
            params['AddOrDelDnatRules'].each do |i|
              cfwnatdnatrule_tmp = CfwNatDnatRule.new
              cfwnatdnatrule_tmp.deserialize(i)
              @AddOrDelDnatRules << cfwnatdnatrule_tmp
            end
          end
          unless params['OriginDnat'].nil?
            @OriginDnat = CfwNatDnatRule.new
            @OriginDnat.deserialize(params['OriginDnat'])
          end
          unless params['NewDnat'].nil?
            @NewDnat = CfwNatDnatRule.new
            @NewDnat.deserialize(params['NewDnat'])
          end
        end
      end

      # SetNatFwDnatRule返回参数结构体
      class SetNatFwDnatRuleResponse < TencentCloud::Common::AbstractModel
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

      # StaticInfo 告警柱形图统计信息

      class StaticInfo < TencentCloud::Common::AbstractModel
        # @param Num: 数
        # @type Num: Integer
        # @param Port: 端口
        # @type Port: String
        # @param Ip: ip信息
        # @type Ip: String
        # @param Address: 地址
        # @type Address: String
        # @param InsID: 资产id
        # @type InsID: String
        # @param InsName: 资产名称
        # @type InsName: String

        attr_accessor :Num, :Port, :Ip, :Address, :InsID, :InsName
        
        def initialize(num=nil, port=nil, ip=nil, address=nil, insid=nil, insname=nil)
          @Num = num
          @Port = port
          @Ip = ip
          @Address = address
          @InsID = insid
          @InsName = insname
        end

        def deserialize(params)
          @Num = params['Num']
          @Port = params['Port']
          @Ip = params['Ip']
          @Address = params['Address']
          @InsID = params['InsID']
          @InsName = params['InsName']
        end
      end

      # 防火墙开关列表对象
      class SwitchListsData < TencentCloud::Common::AbstractModel
        # @param PublicIp: 公网IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIp: String
        # @param IntranetIp: 内网IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntranetIp: String
        # @param InstanceName: 实例名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param AssetType: 资产类型
        # @type AssetType: String
        # @param Area: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Area: String
        # @param Switch: 防火墙开关
        # @type Switch: Integer
        # @param Id: id值
        # @type Id: Integer
        # @param PublicIpType: 公网 IP 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIpType: Integer
        # @param PortTimes: 风险端口数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PortTimes: Integer
        # @param LastTime: 最近扫描时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastTime: String
        # @param ScanMode: 扫描深度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanMode: String
        # @param ScanStatus: 扫描状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanStatus: Integer

        attr_accessor :PublicIp, :IntranetIp, :InstanceName, :InstanceId, :AssetType, :Area, :Switch, :Id, :PublicIpType, :PortTimes, :LastTime, :ScanMode, :ScanStatus
        
        def initialize(publicip=nil, intranetip=nil, instancename=nil, instanceid=nil, assettype=nil, area=nil, switch=nil, id=nil, publiciptype=nil, porttimes=nil, lasttime=nil, scanmode=nil, scanstatus=nil)
          @PublicIp = publicip
          @IntranetIp = intranetip
          @InstanceName = instancename
          @InstanceId = instanceid
          @AssetType = assettype
          @Area = area
          @Switch = switch
          @Id = id
          @PublicIpType = publiciptype
          @PortTimes = porttimes
          @LastTime = lasttime
          @ScanMode = scanmode
          @ScanStatus = scanstatus
        end

        def deserialize(params)
          @PublicIp = params['PublicIp']
          @IntranetIp = params['IntranetIp']
          @InstanceName = params['InstanceName']
          @InstanceId = params['InstanceId']
          @AssetType = params['AssetType']
          @Area = params['Area']
          @Switch = params['Switch']
          @Id = params['Id']
          @PublicIpType = params['PublicIpType']
          @PortTimes = params['PortTimes']
          @LastTime = params['LastTime']
          @ScanMode = params['ScanMode']
          @ScanStatus = params['ScanStatus']
        end
      end

      # 告警中心概览数据
      class TLogInfo < TencentCloud::Common::AbstractModel
        # @param OutNum: 失陷主机
        # @type OutNum: Integer
        # @param HandleNum: 待处置告警
        # @type HandleNum: Integer
        # @param VulNum: 漏洞攻击
        # @type VulNum: Integer
        # @param NetworkNum: 网络探测
        # @type NetworkNum: Integer
        # @param BanNum: 封禁列表
        # @type BanNum: Integer
        # @param BruteForceNum: 暴力破解
        # @type BruteForceNum: Integer

        attr_accessor :OutNum, :HandleNum, :VulNum, :NetworkNum, :BanNum, :BruteForceNum
        
        def initialize(outnum=nil, handlenum=nil, vulnum=nil, networknum=nil, bannum=nil, bruteforcenum=nil)
          @OutNum = outnum
          @HandleNum = handlenum
          @VulNum = vulnum
          @NetworkNum = networknum
          @BanNum = bannum
          @BruteForceNum = bruteforcenum
        end

        def deserialize(params)
          @OutNum = params['OutNum']
          @HandleNum = params['HandleNum']
          @VulNum = params['VulNum']
          @NetworkNum = params['NetworkNum']
          @BanNum = params['BanNum']
          @BruteForceNum = params['BruteForceNum']
        end
      end

      # 未处置事件详情
      class UnHandleEvent < TencentCloud::Common::AbstractModel
        # @param EventTableListStruct: 伪攻击链类型
        # @type EventTableListStruct: Array
        # @param BaseLineUser: 1 是  0否
        # @type BaseLineUser: Integer
        # @param BaseLineInSwitch: 1 打开 0 关闭
        # @type BaseLineInSwitch: Integer
        # @param BaseLineOutSwitch: 1 打开 0 关闭
        # @type BaseLineOutSwitch: Integer

        attr_accessor :EventTableListStruct, :BaseLineUser, :BaseLineInSwitch, :BaseLineOutSwitch
        
        def initialize(eventtableliststruct=nil, baselineuser=nil, baselineinswitch=nil, baselineoutswitch=nil)
          @EventTableListStruct = eventtableliststruct
          @BaseLineUser = baselineuser
          @BaseLineInSwitch = baselineinswitch
          @BaseLineOutSwitch = baselineoutswitch
        end

        def deserialize(params)
          unless params['EventTableListStruct'].nil?
            @EventTableListStruct = []
            params['EventTableListStruct'].each do |i|
              unhandleeventdetail_tmp = UnHandleEventDetail.new
              unhandleeventdetail_tmp.deserialize(i)
              @EventTableListStruct << unhandleeventdetail_tmp
            end
          end
          @BaseLineUser = params['BaseLineUser']
          @BaseLineInSwitch = params['BaseLineInSwitch']
          @BaseLineOutSwitch = params['BaseLineOutSwitch']
        end
      end

      # 未处置事件信息汇总
      class UnHandleEventDetail < TencentCloud::Common::AbstractModel
        # @param EventName: 安全事件名称
        # @type EventName: String
        # @param Total: 未处置事件数量
        # @type Total: Integer

        attr_accessor :EventName, :Total
        
        def initialize(eventname=nil, total=nil)
          @EventName = eventname
          @Total = total
        end

        def deserialize(params)
          @EventName = params['EventName']
          @Total = params['Total']
        end
      end

    end
  end
end

