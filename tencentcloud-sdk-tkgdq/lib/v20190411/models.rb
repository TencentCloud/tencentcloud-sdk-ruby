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
  module Tkgdq
    module V20190411
      # DescribeEntity请求参数结构体
      class DescribeEntityRequest < TencentCloud::Common::AbstractModel
        # @param EntityName: 实体名称
        # @type EntityName: String

        attr_accessor :EntityName
        
        def initialize(entityname=nil)
          @EntityName = entityname
        end

        def deserialize(params)
          @EntityName = params['EntityName']
        end
      end

      # DescribeEntity返回参数结构体
      class DescribeEntityResponse < TencentCloud::Common::AbstractModel
        # @param Content: 返回查询实体相关信息
        # @type Content: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Content, :RequestId
        
        def initialize(content=nil, requestid=nil)
          @Content = content
          @RequestId = requestid
        end

        def deserialize(params)
          @Content = params['Content']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRelation请求参数结构体
      class DescribeRelationRequest < TencentCloud::Common::AbstractModel
        # @param LeftEntityName: 输入第一个实体
        # @type LeftEntityName: String
        # @param RightEntityName: 输入第二个实体
        # @type RightEntityName: String

        attr_accessor :LeftEntityName, :RightEntityName
        
        def initialize(leftentityname=nil, rightentityname=nil)
          @LeftEntityName = leftentityname
          @RightEntityName = rightentityname
        end

        def deserialize(params)
          @LeftEntityName = params['LeftEntityName']
          @RightEntityName = params['RightEntityName']
        end
      end

      # DescribeRelation返回参数结构体
      class DescribeRelationResponse < TencentCloud::Common::AbstractModel
        # @param Content: 返回查询实体间的关系
        # @type Content: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Content, :RequestId
        
        def initialize(content=nil, requestid=nil)
          @Content = content
          @RequestId = requestid
        end

        def deserialize(params)
          @Content = params['Content']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTriple请求参数结构体
      class DescribeTripleRequest < TencentCloud::Common::AbstractModel
        # @param TripleCondition: 三元组查询条件
        # @type TripleCondition: String

        attr_accessor :TripleCondition
        
        def initialize(triplecondition=nil)
          @TripleCondition = triplecondition
        end

        def deserialize(params)
          @TripleCondition = params['TripleCondition']
        end
      end

      # DescribeTriple返回参数结构体
      class DescribeTripleResponse < TencentCloud::Common::AbstractModel
        # @param Content: 返回三元组信息
        # @type Content: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Content, :RequestId
        
        def initialize(content=nil, requestid=nil)
          @Content = content
          @RequestId = requestid
        end

        def deserialize(params)
          @Content = params['Content']
          @RequestId = params['RequestId']
        end
      end

      # 返回的实体关系查询结果详细内容
      class EntityRelationContent < TencentCloud::Common::AbstractModel
        # @param Object: 实体关系查询返回关系的object
        # @type Object: Array
        # @param Subject: 实体关系查询返回关系的subject
        # @type Subject: Array
        # @param Relation: 实体关系查询返回的关系名称
        # @type Relation: String

        attr_accessor :Object, :Subject, :Relation
        
        def initialize(object=nil, subject=nil, relation=nil)
          @Object = object
          @Subject = subject
          @Relation = relation
        end

        def deserialize(params)
          @Object = params['Object']
          @Subject = params['Subject']
          @Relation = params['Relation']
        end
      end

      # 实体关系查询返回的Object类型
      class EntityRelationObject < TencentCloud::Common::AbstractModel
        # @param Id: object对应id
        # @type Id: Array
        # @param Name: object对应name
        # @type Name: Array
        # @param Popular: object对应popular值
        # @type Popular: Array

        attr_accessor :Id, :Name, :Popular
        
        def initialize(id=nil, name=nil, popular=nil)
          @Id = id
          @Name = name
          @Popular = popular
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Popular = params['Popular']
        end
      end

      # 实体关系查询返回Subject
      class EntityRelationSubject < TencentCloud::Common::AbstractModel
        # @param Id: Subject对应id
        # @type Id: Array
        # @param Name: Subject对应name
        # @type Name: Array
        # @param Popular: Subject对应popular
        # @type Popular: Array

        attr_accessor :Id, :Name, :Popular
        
        def initialize(id=nil, name=nil, popular=nil)
          @Id = id
          @Name = name
          @Popular = popular
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Popular = params['Popular']
        end
      end

      # 三元组查询返回的元记录
      class TripleContent < TencentCloud::Common::AbstractModel
        # @param Id: 实体id
        # @type Id: String
        # @param Name: 实体名称
        # @type Name: String
        # @param Order: 实体order
        # @type Order: Integer
        # @param Popular: 实体流行度
        # @type Popular: Integer

        attr_accessor :Id, :Name, :Order, :Popular
        
        def initialize(id=nil, name=nil, order=nil, popular=nil)
          @Id = id
          @Name = name
          @Order = order
          @Popular = popular
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Order = params['Order']
          @Popular = params['Popular']
        end
      end

    end
  end
end

