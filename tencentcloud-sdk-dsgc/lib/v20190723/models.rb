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
  module Dsgc
    module V20190723
      # CreateDSPADbMetaResources请求参数结构体
      class CreateDSPADbMetaResourcesRequest < TencentCloud::Common::AbstractModel
        # @param DspaId: DSPA实例ID。
        # @type DspaId: String
        # @param MetaType: 资源类型，支持：cdb（云数据库 MySQL）、dcdb（TDSQL MySQL版）、mariadb（云数据库 MariaDB）、postgres（云数据库 PostgreSQL）、cynosdbpg（TDSQL-C PostgreSQL版）、cynosdbmysql（TDSQL-C MySQL版）
        # @type MetaType: String
        # @param ResourceRegion: 资源所处地域。
        # @type ResourceRegion: String
        # @param UpdateStatus: 用来标记本次更新是否已经是最后一次，可选值：continue（后续还需要更新）、finished（本次是最后一次更新）。
        # @type UpdateStatus: String
        # @param UpdateId: 本次更新的ID号，用来标记一次完整的更新过程。
        # @type UpdateId: String
        # @param Items: 云上资源列表。
        # @type Items: Array

        attr_accessor :DspaId, :MetaType, :ResourceRegion, :UpdateStatus, :UpdateId, :Items

        def initialize(dspaid=nil, metatype=nil, resourceregion=nil, updatestatus=nil, updateid=nil, items=nil)
          @DspaId = dspaid
          @MetaType = metatype
          @ResourceRegion = resourceregion
          @UpdateStatus = updatestatus
          @UpdateId = updateid
          @Items = items
        end

        def deserialize(params)
          @DspaId = params['DspaId']
          @MetaType = params['MetaType']
          @ResourceRegion = params['ResourceRegion']
          @UpdateStatus = params['UpdateStatus']
          @UpdateId = params['UpdateId']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              dspacloudresourcemeta_tmp = DspaCloudResourceMeta.new
              dspacloudresourcemeta_tmp.deserialize(i)
              @Items << dspacloudresourcemeta_tmp
            end
          end
        end
      end

      # CreateDSPADbMetaResources返回参数结构体
      class CreateDSPADbMetaResourcesResponse < TencentCloud::Common::AbstractModel
        # @param UpdateId: 本次更新的ID号，用来标记一次完整的更新过程。
        # @type UpdateId: String
        # @param MetaType: 资源类型，支持：cdb（云数据库 MySQL）、dcdb（TDSQL MySQL版）、mariadb（云数据库 MariaDB）、postgres（云数据库 PostgreSQL）、cynosdbpg（TDSQL-C PostgreSQL版）、cynosdbmysql（TDSQL-C MySQL版）
        # @type MetaType: String
        # @param DspaId: DSPA实例ID。
        # @type DspaId: String
        # @param ResourceRegion: 资源所处地域。
        # @type ResourceRegion: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UpdateId, :MetaType, :DspaId, :ResourceRegion, :RequestId

        def initialize(updateid=nil, metatype=nil, dspaid=nil, resourceregion=nil, requestid=nil)
          @UpdateId = updateid
          @MetaType = metatype
          @DspaId = dspaid
          @ResourceRegion = resourceregion
          @RequestId = requestid
        end

        def deserialize(params)
          @UpdateId = params['UpdateId']
          @MetaType = params['MetaType']
          @DspaId = params['DspaId']
          @ResourceRegion = params['ResourceRegion']
          @RequestId = params['RequestId']
        end
      end

      # 云上资源元数据
      class DspaCloudResourceMeta < TencentCloud::Common::AbstractModel
        # @param ResourceId: 用户资源ID。
        # @type ResourceId: String
        # @param ResourceName: 资源名称。
        # @type ResourceName: String
        # @param ResourceVip: 资源VIP。
        # @type ResourceVip: String
        # @param ResourceVPort: 资源端口。
        # @type ResourceVPort: Integer
        # @param ResourceCreateTime: 资源被创建时间。
        # @type ResourceCreateTime: String
        # @param ResourceUniqueVpcId: 用户资源VPC ID 字符串。
        # @type ResourceUniqueVpcId: String
        # @param ResourceUniqueSubnetId: 用户资源Subnet ID 字符串。
        # @type ResourceUniqueSubnetId: String

        attr_accessor :ResourceId, :ResourceName, :ResourceVip, :ResourceVPort, :ResourceCreateTime, :ResourceUniqueVpcId, :ResourceUniqueSubnetId

        def initialize(resourceid=nil, resourcename=nil, resourcevip=nil, resourcevport=nil, resourcecreatetime=nil, resourceuniquevpcid=nil, resourceuniquesubnetid=nil)
          @ResourceId = resourceid
          @ResourceName = resourcename
          @ResourceVip = resourcevip
          @ResourceVPort = resourcevport
          @ResourceCreateTime = resourcecreatetime
          @ResourceUniqueVpcId = resourceuniquevpcid
          @ResourceUniqueSubnetId = resourceuniquesubnetid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ResourceName = params['ResourceName']
          @ResourceVip = params['ResourceVip']
          @ResourceVPort = params['ResourceVPort']
          @ResourceCreateTime = params['ResourceCreateTime']
          @ResourceUniqueVpcId = params['ResourceUniqueVpcId']
          @ResourceUniqueSubnetId = params['ResourceUniqueSubnetId']
        end
      end

    end
  end
end

