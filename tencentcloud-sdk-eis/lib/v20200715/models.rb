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
  module Eis
    module V20200715
      # DescribeEisConnectorConfig请求参数结构体
      class DescribeEisConnectorConfigRequest < TencentCloud::Common::AbstractModel
        # @param ConnectorName: 连接器名称
        # @type ConnectorName: String
        # @param ConnectorVersion: 连接器版本
        # @type ConnectorVersion: String

        attr_accessor :ConnectorName, :ConnectorVersion
        
        def initialize(connectorname=nil, connectorversion=nil)
          @ConnectorName = connectorname
          @ConnectorVersion = connectorversion
        end

        def deserialize(params)
          @ConnectorName = params['ConnectorName']
          @ConnectorVersion = params['ConnectorVersion']
        end
      end

      # DescribeEisConnectorConfig返回参数结构体
      class DescribeEisConnectorConfigResponse < TencentCloud::Common::AbstractModel
        # @param ConnectorParameter: 连接器配置参数描述（json结构），示例如下：
        # {
        #     "attributes":{
        #         "description":"测试", // 连接器的描述
        #         "displayName":"测试", // 连接器的展示名
        #         "name":"test", // 连接器的名称
        #         "version":"1.0.0" // 连接器的版本号
        #     },
        #     "properties":[
        #         {
        #             "attributes":{
        #                 "displayName":"企业ID", // 参数的展示名
        #                 "name":"para1", // 参数名
        #                 "required":"true", // 是否必填
        #                 "type":"int" // 参数的类型
        #             }
        #         },
        #         {
        #             "attributes":{
        #                 "displayName":"成员管理密钥",
        #                 "name":"para2",
        #                 "required":"true",
        #                 "type":"float"
        #             }
        #         },
        #         {
        #             "attributes":{
        #                 "displayName":"应用管理密钥",
        #                 "name":"para3",
        #                 "required":"true",
        #                 "type":"string"
        #             }
        #         },
        #         {
        #             "attributes":{
        #                 "displayName":"企业ID",
        #                 "name":"para4",
        #                 "required":"true",
        #                 "type":"decimal"
        #             }
        #         },
        #         {
        #             "attributes":{
        #                 "displayName":"成员管理密钥",
        #                 "name":"para5",
        #                 "required":"true",
        #                 "type":"bool"
        #             }
        #         },
        #         {
        #             "attributes":{
        #                 "displayName":"应用管理密钥",
        #                 "name":"para6",
        #                 "required":"true",
        #                 "type":"date"
        #             }
        #         },
        #         {
        #             "attributes":{
        #                 "displayName":"企业ID",
        #                 "name":"para7",
        #                 "required":"true",
        #                 "type":"time"
        #             }
        #         },
        #         {
        #             "attributes":{
        #                 "displayName":"成员管理密钥",
        #                 "name":"para8",
        #                 "required":"true",
        #                 "type":"datetime"
        #             }
        #         },
        #         {
        #             "attributes":{
        #                 "displayName":"应用管理密钥",
        #                 "name":"para9",
        #                 "required":"true",
        #                 "type":"map"
        #             },
        #             "children":[
        #                 {
        #                     "attributes":{
        #                         "displayName":"key",
        #                         "name":"key",
        #                         "required":"true",
        #                         "type":"string"
        #                     }
        #                 },
        #                 {
        #                     "attributes":{
        #                         "displayName":"value",
        #                         "name":"value",
        #                         "required":"true",
        #                         "type":"any"
        #                     }
        #                 }
        #             ]
        #         },
        #         {
        #             "attributes":{
        #                 "displayName":"企业ID",
        #                 "name":"para10",
        #                 "required":"true",
        #                 "type":"list" // list，list里元素的类型是结构体，children里是结构体的描述
        #             },
        #             "children":[
        #                 {
        #                     "attributes":{
        #                         "displayName":"field1",
        #                         "name":"field1",
        #                         "required":"true",
        #                         "type":"string"
        #                     }
        #                 },
        #                 {
        #                     "attributes":{
        #                         "displayName":"field2",
        #                         "name":"field2",
        #                         "required":"true",
        #                         "type":"any"
        #                     }
        #                 }
        #             ]
        #         },
        #         {
        #             "attributes":{
        #                 "displayName":"成员管理密钥",
        #                 "name":"para11",
        #                 "required":"true",
        #                 "type":"struct"
        #             },
        #             "children":[
        #                 {
        #                     "attributes":{
        #                         "displayName":"field1", // 结构体属性的展示名
        #                         "name":"field1", // 结构体属性的名称
        #                         "required":"true", // 是否必填
        #                         "type":"string" // 属性的类型
        #                     }
        #                 },
        #                 {
        #                     "attributes":{
        #                         "displayName":"field2",
        #                         "name":"field2",
        #                         "required":"true",
        #                         "type":"any"
        #                     }
        #                 }
        #             ]
        #         },
        #         {
        #             "attributes":{
        #                 "displayName":"应用管理密钥",
        #                 "name":"para12",
        #                 "required":"true",
        #                 "type":"enum"
        #             },
        #             "children":[
        #                 {
        #                     "attributes":{
        #                         "displayName":"PC", // 枚举值的展示名
        #                         "name":"PC" // 枚举值的名称
        #                     }
        #                 },
        #                 {
        #                     "attributes":{
        #                         "displayName":"MAC",
        #                         "name":"MAC"
        #                     }
        #                 }
        #             ]
        #         }
        #     ]
        # }
        # @type ConnectorParameter: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConnectorParameter, :RequestId
        
        def initialize(connectorparameter=nil, requestid=nil)
          @ConnectorParameter = connectorparameter
          @RequestId = requestid
        end

        def deserialize(params)
          @ConnectorParameter = params['ConnectorParameter']
          @RequestId = params['RequestId']
        end
      end

      # 连接器操作
      class EisConnectionOperation < TencentCloud::Common::AbstractModel
        # @param OperationName: 连接器操作名称
        # @type OperationName: String
        # @param DisplayName: 连接器展示名称
        # @type DisplayName: String
        # @param IsTrigger: 操作是否为触发器
        # @type IsTrigger: Boolean

        attr_accessor :OperationName, :DisplayName, :IsTrigger
        
        def initialize(operationname=nil, displayname=nil, istrigger=nil)
          @OperationName = operationname
          @DisplayName = displayname
          @IsTrigger = istrigger
        end

        def deserialize(params)
          @OperationName = params['OperationName']
          @DisplayName = params['DisplayName']
          @IsTrigger = params['IsTrigger']
        end
      end

      # 连接器概要信息
      class EisConnectorSummary < TencentCloud::Common::AbstractModel
        # @param ConnectorName: 连接器名称
        # @type ConnectorName: String
        # @param DisplayName: 连接器展示名称
        # @type DisplayName: String
        # @param Company: 连接器对应企业
        # @type Company: String
        # @param Product: 连接器对应产品
        # @type Product: String
        # @param ConnectorVersion: 连接器版本
        # @type ConnectorVersion: String
        # @param CreateTime: 连接器创建时间
        # @type CreateTime: Integer

        attr_accessor :ConnectorName, :DisplayName, :Company, :Product, :ConnectorVersion, :CreateTime
        
        def initialize(connectorname=nil, displayname=nil, company=nil, product=nil, connectorversion=nil, createtime=nil)
          @ConnectorName = connectorname
          @DisplayName = displayname
          @Company = company
          @Product = product
          @ConnectorVersion = connectorversion
          @CreateTime = createtime
        end

        def deserialize(params)
          @ConnectorName = params['ConnectorName']
          @DisplayName = params['DisplayName']
          @Company = params['Company']
          @Product = params['Product']
          @ConnectorVersion = params['ConnectorVersion']
          @CreateTime = params['CreateTime']
        end
      end

      # ListEisConnectorOperations请求参数结构体
      class ListEisConnectorOperationsRequest < TencentCloud::Common::AbstractModel
        # @param ConnectorName: 连接器名称
        # @type ConnectorName: String
        # @param ConnectorVersion: 连接器版本
        # @type ConnectorVersion: String

        attr_accessor :ConnectorName, :ConnectorVersion
        
        def initialize(connectorname=nil, connectorversion=nil)
          @ConnectorName = connectorname
          @ConnectorVersion = connectorversion
        end

        def deserialize(params)
          @ConnectorName = params['ConnectorName']
          @ConnectorVersion = params['ConnectorVersion']
        end
      end

      # ListEisConnectorOperations返回参数结构体
      class ListEisConnectorOperationsResponse < TencentCloud::Common::AbstractModel
        # @param Operations: 连接器列表
        # @type Operations: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Operations, :RequestId
        
        def initialize(operations=nil, requestid=nil)
          @Operations = operations
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Operations'].nil?
            @Operations = []
            params['Operations'].each do |i|
              eisconnectionoperation_tmp = EisConnectionOperation.new
              eisconnectionoperation_tmp.deserialize(i)
              @Operations << eisconnectionoperation_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListEisConnectors请求参数结构体
      class ListEisConnectorsRequest < TencentCloud::Common::AbstractModel
        # @param ConnectorName: 连接器名称,非必输，如输入则按照输入值模糊匹配
        # @type ConnectorName: String
        # @param Offset: 分页参数,数据偏移量
        # @type Offset: Integer
        # @param Limit: 分页参数,每页显示的条数
        # @type Limit: Integer

        attr_accessor :ConnectorName, :Offset, :Limit
        
        def initialize(connectorname=nil, offset=nil, limit=nil)
          @ConnectorName = connectorname
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ConnectorName = params['ConnectorName']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # ListEisConnectors返回参数结构体
      class ListEisConnectorsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 连接器总数
        # @type TotalCount: Integer
        # @param Connectors: 连接器列表
        # @type Connectors: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Connectors, :RequestId
        
        def initialize(totalcount=nil, connectors=nil, requestid=nil)
          @TotalCount = totalcount
          @Connectors = connectors
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Connectors'].nil?
            @Connectors = []
            params['Connectors'].each do |i|
              eisconnectorsummary_tmp = EisConnectorSummary.new
              eisconnectorsummary_tmp.deserialize(i)
              @Connectors << eisconnectorsummary_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

