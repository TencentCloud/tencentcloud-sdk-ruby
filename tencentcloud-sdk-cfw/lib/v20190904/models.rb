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
              @Data << RuleInfoData.new.deserialize(i)
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
              @Data << SecurityGroupApiRuleData.new.deserialize(i)
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
              @Data << AcListsData.new.deserialize(i)
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
              @Data << AssociatedInstanceInfo.new.deserialize(i)
            end
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
              @Data << SecurityGroupListData.new.deserialize(i)
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
              @Data << SwitchListsData.new.deserialize(i)
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
              @Data << RuleInfoData.new.deserialize(i)
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
              @Data << SequenceData.new.deserialize(i)
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

    end
  end
end

