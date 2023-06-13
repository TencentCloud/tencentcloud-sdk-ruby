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
  module Casb
    module V20200507
      # CopyCryptoColumnPolicy请求参数结构体
      class CopyCryptoColumnPolicyRequest < TencentCloud::Common::AbstractModel
        # @param CasbId: 实例Id
        # @type CasbId: String
        # @param MetaDataId: 元数据id
        # @type MetaDataId: String
        # @param DstCasbId: 目标实例Id 如果和实例Id相同则为同CasbId下的策略复制
        # @type DstCasbId: String
        # @param DstMetaDataId: 目标实例Id 如果和[元数据id]相同则为同元数据下的策略复制
        # @type DstMetaDataId: String
        # @param SrcTableFilter: 筛选来源数据库的表
        # @type SrcTableFilter: Array
        # @param DstDatabaseName: 复制同元数据下的策略，需要填写目标数据库名
        # @type DstDatabaseName: String

        attr_accessor :CasbId, :MetaDataId, :DstCasbId, :DstMetaDataId, :SrcTableFilter, :DstDatabaseName

        def initialize(casbid=nil, metadataid=nil, dstcasbid=nil, dstmetadataid=nil, srctablefilter=nil, dstdatabasename=nil)
          @CasbId = casbid
          @MetaDataId = metadataid
          @DstCasbId = dstcasbid
          @DstMetaDataId = dstmetadataid
          @SrcTableFilter = srctablefilter
          @DstDatabaseName = dstdatabasename
        end

        def deserialize(params)
          @CasbId = params['CasbId']
          @MetaDataId = params['MetaDataId']
          @DstCasbId = params['DstCasbId']
          @DstMetaDataId = params['DstMetaDataId']
          unless params['SrcTableFilter'].nil?
            @SrcTableFilter = []
            params['SrcTableFilter'].each do |i|
              cryptocopycolumnpolicytablefilter_tmp = CryptoCopyColumnPolicyTableFilter.new
              cryptocopycolumnpolicytablefilter_tmp.deserialize(i)
              @SrcTableFilter << cryptocopycolumnpolicytablefilter_tmp
            end
          end
          @DstDatabaseName = params['DstDatabaseName']
        end
      end

      # CopyCryptoColumnPolicy返回参数结构体
      class CopyCryptoColumnPolicyResponse < TencentCloud::Common::AbstractModel
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

      # 策略迁移表信息筛选
      class CryptoCopyColumnPolicyTableFilter < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 数据库名称
        # @type DatabaseName: String
        # @param TableNameSet: 表名称
        # @type TableNameSet: Array

        attr_accessor :DatabaseName, :TableNameSet

        def initialize(databasename=nil, tablenameset=nil)
          @DatabaseName = databasename
          @TableNameSet = tablenameset
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          @TableNameSet = params['TableNameSet']
        end
      end

    end
  end
end

