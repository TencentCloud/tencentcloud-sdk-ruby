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
  module Hai
    module V20230812
      # RunInstances请求参数结构体
      class RunInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用ID
        # @type ApplicationId: String
        # @param BundleType: 算力套餐类型
        # @type BundleType: String
        # @param SystemDisk: 实例系统盘配置信息。若不指定该参数，则按照系统默认值进行分配。
        # @type SystemDisk: :class:`Tencentcloud::Hai.v20230812.models.SystemDisk`
        # @param InstanceCount: 购买实例数量。
        # @type InstanceCount: Integer
        # @param InstanceName: 实例显示名称
        # @type InstanceName: String
        # @param ClientToken: 幂等请求的token
        # @type ClientToken: String
        # @param DryRun: DryRun为True就是只验接口连通性，默认为False
        # @type DryRun: Boolean

        attr_accessor :ApplicationId, :BundleType, :SystemDisk, :InstanceCount, :InstanceName, :ClientToken, :DryRun

        def initialize(applicationid=nil, bundletype=nil, systemdisk=nil, instancecount=nil, instancename=nil, clienttoken=nil, dryrun=nil)
          @ApplicationId = applicationid
          @BundleType = bundletype
          @SystemDisk = systemdisk
          @InstanceCount = instancecount
          @InstanceName = instancename
          @ClientToken = clienttoken
          @DryRun = dryrun
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @BundleType = params['BundleType']
          unless params['SystemDisk'].nil?
            @SystemDisk = SystemDisk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          @InstanceCount = params['InstanceCount']
          @InstanceName = params['InstanceName']
          @ClientToken = params['ClientToken']
          @DryRun = params['DryRun']
        end
      end

      # RunInstances返回参数结构体
      class RunInstancesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceIdSet: 实例ID列表
        # @type InstanceIdSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceIdSet, :RequestId

        def initialize(instanceidset=nil, requestid=nil)
          @InstanceIdSet = instanceidset
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceIdSet = params['InstanceIdSet']
          @RequestId = params['RequestId']
        end
      end

      # 描述了操作系统所在块设备即系统盘的信息
      class SystemDisk < TencentCloud::Common::AbstractModel
        # @param DiskType: 系统盘类型。系统盘类型限制详见[存储概述](https://cloud.tencent.com/document/product/213/4952)。取值范围：<br><li>LOCAL_BASIC：本地硬盘<br><li>LOCAL_SSD：本地SSD硬盘<br><li>CLOUD_BASIC：普通云硬盘<br><li>CLOUD_SSD：SSD云硬盘<br><li>CLOUD_PREMIUM：高性能云硬盘<br><li>CLOUD_BSSD：通用性SSD云硬盘<br><br>默认取值：当前有库存的硬盘类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskType: String
        # @param DiskSize: 系统盘大小，单位：GB。默认值为 80
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskSize: Integer

        attr_accessor :DiskType, :DiskSize

        def initialize(disktype=nil, disksize=nil)
          @DiskType = disktype
          @DiskSize = disksize
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
        end
      end

    end
  end
end

