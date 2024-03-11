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
  module Smh
    module V20210712
      # CreateLibrary请求参数结构体
      class CreateLibraryRequest < TencentCloud::Common::AbstractModel
        # @param Name: 媒体库名称，最多 50 个字符
        # @type Name: String
        # @param Remark: 备注，最多 250 个字符
        # @type Remark: String
        # @param BucketName: 存储桶全名，新建后不可更改。当前版本不再支持指定存储桶。
        # @type BucketName: String
        # @param BucketRegion: 存储桶所在地域，新建后不可更改。当前版本不再支持指定存储桶所在地域。
        # @type BucketRegion: String
        # @param LibraryExtension: 媒体库配置项，部分参数新建后不可更改
        # @type LibraryExtension: :class:`Tencentcloud::Smh.v20210712.models.LibraryExtension`

        attr_accessor :Name, :Remark, :BucketName, :BucketRegion, :LibraryExtension

        def initialize(name=nil, remark=nil, bucketname=nil, bucketregion=nil, libraryextension=nil)
          @Name = name
          @Remark = remark
          @BucketName = bucketname
          @BucketRegion = bucketregion
          @LibraryExtension = libraryextension
        end

        def deserialize(params)
          @Name = params['Name']
          @Remark = params['Remark']
          @BucketName = params['BucketName']
          @BucketRegion = params['BucketRegion']
          unless params['LibraryExtension'].nil?
            @LibraryExtension = LibraryExtension.new
            @LibraryExtension.deserialize(params['LibraryExtension'])
          end
        end
      end

      # CreateLibrary返回参数结构体
      class CreateLibraryResponse < TencentCloud::Common::AbstractModel
        # @param LibraryId: 媒体库 ID
        # @type LibraryId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LibraryId, :RequestId

        def initialize(libraryid=nil, requestid=nil)
          @LibraryId = libraryid
          @RequestId = requestid
        end

        def deserialize(params)
          @LibraryId = params['LibraryId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteLibrary请求参数结构体
      class DeleteLibraryRequest < TencentCloud::Common::AbstractModel
        # @param LibraryId: 媒体库 ID
        # @type LibraryId: String

        attr_accessor :LibraryId

        def initialize(libraryid=nil)
          @LibraryId = libraryid
        end

        def deserialize(params)
          @LibraryId = params['LibraryId']
        end
      end

      # DeleteLibrary返回参数结构体
      class DeleteLibraryResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DescribeLibraries请求参数结构体
      class DescribeLibrariesRequest < TencentCloud::Common::AbstractModel
        # @param LibraryIds: 按照一个或者多个媒体库 ID 查询，每次请求的上限为 100 个。
        # @type LibraryIds: Array
        # @param PageNumber: 页码，整型，配合 PageSize 使用，默认值为 1。
        # @type PageNumber: Integer
        # @param PageSize: 每页数目，整型，配合 PageNumber 使用，默认值为 20，最大值为 100。
        # @type PageSize: Integer

        attr_accessor :LibraryIds, :PageNumber, :PageSize

        def initialize(libraryids=nil, pagenumber=nil, pagesize=nil)
          @LibraryIds = libraryids
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @LibraryIds = params['LibraryIds']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeLibraries返回参数结构体
      class DescribeLibrariesResponse < TencentCloud::Common::AbstractModel
        # @param List: 媒体库列表
        # @type List: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :TotalCount, :RequestId

        def initialize(list=nil, totalcount=nil, requestid=nil)
          @List = list
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              library_tmp = Library.new
              library_tmp.deserialize(i)
              @List << library_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLibrarySecret请求参数结构体
      class DescribeLibrarySecretRequest < TencentCloud::Common::AbstractModel
        # @param LibraryId: 媒体库 ID
        # @type LibraryId: String

        attr_accessor :LibraryId

        def initialize(libraryid=nil)
          @LibraryId = libraryid
        end

        def deserialize(params)
          @LibraryId = params['LibraryId']
        end
      end

      # DescribeLibrarySecret返回参数结构体
      class DescribeLibrarySecretResponse < TencentCloud::Common::AbstractModel
        # @param LibraryId: 查询的媒体库 ID
        # @type LibraryId: String
        # @param LibrarySecret: 查询到的媒体库密钥
        # @type LibrarySecret: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LibraryId, :LibrarySecret, :RequestId

        def initialize(libraryid=nil, librarysecret=nil, requestid=nil)
          @LibraryId = libraryid
          @LibrarySecret = librarysecret
          @RequestId = requestid
        end

        def deserialize(params)
          @LibraryId = params['LibraryId']
          @LibrarySecret = params['LibrarySecret']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOfficialInstances请求参数结构体
      class DescribeOfficialInstancesRequest < TencentCloud::Common::AbstractModel
        # @param SuperAdminAccount: 是否查询实例绑定的超级管理员账号，默认值为 false。
        # @type SuperAdminAccount: Boolean
        # @param InstanceIds: 按照一个或者多个实例 ID 查询，每次请求的上限为 100 个。
        # @type InstanceIds: Array
        # @param PageNumber: 页码，整型，配合 PageSize 使用，默认值为 1。
        # @type PageNumber: Integer
        # @param PageSize: 每页数目，整型，配合 PageNumber 使用，默认值为 20，最大值为 100。
        # @type PageSize: Integer
        # @param OrderBy: 对指定列进行排序
        # @type OrderBy: String
        # @param OrderByType: 排序方式
        # @type OrderByType: String
        # @param AutoRenew: 续费管理筛选类型
        # @type AutoRenew: Integer
        # @param BindPhone: 超级管理管理员账号是否绑定了手机号
        # @type BindPhone: Boolean

        attr_accessor :SuperAdminAccount, :InstanceIds, :PageNumber, :PageSize, :OrderBy, :OrderByType, :AutoRenew, :BindPhone

        def initialize(superadminaccount=nil, instanceids=nil, pagenumber=nil, pagesize=nil, orderby=nil, orderbytype=nil, autorenew=nil, bindphone=nil)
          @SuperAdminAccount = superadminaccount
          @InstanceIds = instanceids
          @PageNumber = pagenumber
          @PageSize = pagesize
          @OrderBy = orderby
          @OrderByType = orderbytype
          @AutoRenew = autorenew
          @BindPhone = bindphone
        end

        def deserialize(params)
          @SuperAdminAccount = params['SuperAdminAccount']
          @InstanceIds = params['InstanceIds']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
          @AutoRenew = params['AutoRenew']
          @BindPhone = params['BindPhone']
        end
      end

      # DescribeOfficialInstances返回参数结构体
      class DescribeOfficialInstancesResponse < TencentCloud::Common::AbstractModel
        # @param List: 实例列表
        # @type List: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :TotalCount, :RequestId

        def initialize(list=nil, totalcount=nil, requestid=nil)
          @List = list
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              instance_tmp = Instance.new
              instance_tmp.deserialize(i)
              @List << instance_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOfficialOverview请求参数结构体
      class DescribeOfficialOverviewRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeOfficialOverview返回参数结构体
      class DescribeOfficialOverviewResponse < TencentCloud::Common::AbstractModel
        # @param Quantity: 云盘实例数量
        # @type Quantity: Integer
        # @param Storage: 已经使用的总存储量，单位为 Bytes，由于数字类型精度限制，该字段为 String 类型。
        # @type Storage: String
        # @param UserCount: 已经分配和使用的总用户数
        # @type UserCount: Integer
        # @param InternetTraffic: 本月外网下行流量，单位为 Bytes，由于数字类型精度限制，该字段为 String 类型。
        # @type InternetTraffic: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Quantity, :Storage, :UserCount, :InternetTraffic, :RequestId

        def initialize(quantity=nil, storage=nil, usercount=nil, internettraffic=nil, requestid=nil)
          @Quantity = quantity
          @Storage = storage
          @UserCount = usercount
          @InternetTraffic = internettraffic
          @RequestId = requestid
        end

        def deserialize(params)
          @Quantity = params['Quantity']
          @Storage = params['Storage']
          @UserCount = params['UserCount']
          @InternetTraffic = params['InternetTraffic']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrafficPackages请求参数结构体
      class DescribeTrafficPackagesRequest < TencentCloud::Common::AbstractModel
        # @param ResourceIds: 按照一个或者多个资源 ID 查询，每次请求的上限为 100 个。
        # @type ResourceIds: Array
        # @param PageNumber: 页码，整型，配合 PageSize 使用，默认值为 1。
        # @type PageNumber: Integer
        # @param PageSize: 每页数目，整型，配合 PageNumber 使用，默认值为 20，最大值为 100。
        # @type PageSize: Integer
        # @param OrderBy: 对指定列进行排序
        # @type OrderBy: String
        # @param OrderByType: 排序方式
        # @type OrderByType: String
        # @param Type: 来源类型筛选
        # @type Type: Integer

        attr_accessor :ResourceIds, :PageNumber, :PageSize, :OrderBy, :OrderByType, :Type

        def initialize(resourceids=nil, pagenumber=nil, pagesize=nil, orderby=nil, orderbytype=nil, type=nil)
          @ResourceIds = resourceids
          @PageNumber = pagenumber
          @PageSize = pagesize
          @OrderBy = orderby
          @OrderByType = orderbytype
          @Type = type
        end

        def deserialize(params)
          @ResourceIds = params['ResourceIds']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
          @Type = params['Type']
        end
      end

      # DescribeTrafficPackages返回参数结构体
      class DescribeTrafficPackagesResponse < TencentCloud::Common::AbstractModel
        # @param List: 流量包列表
        # @type List: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :TotalCount, :RequestId

        def initialize(list=nil, totalcount=nil, requestid=nil)
          @List = list
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              trafficpackage_tmp = TrafficPackage.new
              trafficpackage_tmp.deserialize(i)
              @List << trafficpackage_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 官方云盘实例信息
      class Instance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param Domain: 专属域名。如果实例无专属域名，则该属性为 null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param EffectiveTime: 生效时间
        # @type EffectiveTime: String
        # @param ExpireTime: 过期时间。如果为按量计费或永久有效实例，该属性为 null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param UserLimit: 用户数量。如果为按量计费或不限制用户数量实例，该属性为 null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserLimit: Integer
        # @param StorageLimit: 存储容量，单位为 Bytes，由于数字类型精度限制，该字段为 String 类型。如果为按量计费或不限制存储容量实例，该属性为 null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageLimit: String
        # @param StorageLimitGB: 存储容量，单位为 GB。如果为按量计费或不限制存储容量实例，该属性为 null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageLimitGB: Integer
        # @param Isolated: 是否过期隔离
        # @type Isolated: Boolean
        # @param AutoRenew: 续费标识。0：手动续费；1：自动续费；2：到期不续。
        # @type AutoRenew: Integer
        # @param SuperAdminAccount: 超级管理员账号，如果未选择查询实例绑定的超级管理员账号或当前实例未绑定超级管理员账号，则该属性为 null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuperAdminAccount: String

        attr_accessor :InstanceId, :Domain, :EffectiveTime, :ExpireTime, :UserLimit, :StorageLimit, :StorageLimitGB, :Isolated, :AutoRenew, :SuperAdminAccount

        def initialize(instanceid=nil, domain=nil, effectivetime=nil, expiretime=nil, userlimit=nil, storagelimit=nil, storagelimitgb=nil, isolated=nil, autorenew=nil, superadminaccount=nil)
          @InstanceId = instanceid
          @Domain = domain
          @EffectiveTime = effectivetime
          @ExpireTime = expiretime
          @UserLimit = userlimit
          @StorageLimit = storagelimit
          @StorageLimitGB = storagelimitgb
          @Isolated = isolated
          @AutoRenew = autorenew
          @SuperAdminAccount = superadminaccount
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Domain = params['Domain']
          @EffectiveTime = params['EffectiveTime']
          @ExpireTime = params['ExpireTime']
          @UserLimit = params['UserLimit']
          @StorageLimit = params['StorageLimit']
          @StorageLimitGB = params['StorageLimitGB']
          @Isolated = params['Isolated']
          @AutoRenew = params['AutoRenew']
          @SuperAdminAccount = params['SuperAdminAccount']
        end
      end

      # PaaS 服务媒体库信息
      class Library < TencentCloud::Common::AbstractModel
        # @param LibraryId: 媒体库 ID
        # @type LibraryId: String
        # @param Name: 媒体库友好名称
        # @type Name: String
        # @param Remark: 备注
        # @type Remark: String
        # @param BucketName: 媒体库绑定的 COS 存储桶
        # @type BucketName: String
        # @param BucketRegion: 媒体库绑定的 COS 存储桶所在的地域
        # @type BucketRegion: String
        # @param CreationTime: 媒体库创建时间
        # @type CreationTime: String
        # @param LibraryExtension: 媒体库配置项
        # @type LibraryExtension: :class:`Tencentcloud::Smh.v20210712.models.LibraryExtension`
        # @param Size: 媒体库用量，单位为 Bytes，由于数字类型精度限制，该字段为 String 类型。
        # @type Size: String
        # @param DirNum: 媒体库目录数，由于数字类型精度限制，该字段为 String 类型。
        # @type DirNum: String
        # @param FileNum: 媒体库文件数，由于数字类型精度限制，该字段为 String 类型。
        # @type FileNum: String

        attr_accessor :LibraryId, :Name, :Remark, :BucketName, :BucketRegion, :CreationTime, :LibraryExtension, :Size, :DirNum, :FileNum

        def initialize(libraryid=nil, name=nil, remark=nil, bucketname=nil, bucketregion=nil, creationtime=nil, libraryextension=nil, size=nil, dirnum=nil, filenum=nil)
          @LibraryId = libraryid
          @Name = name
          @Remark = remark
          @BucketName = bucketname
          @BucketRegion = bucketregion
          @CreationTime = creationtime
          @LibraryExtension = libraryextension
          @Size = size
          @DirNum = dirnum
          @FileNum = filenum
        end

        def deserialize(params)
          @LibraryId = params['LibraryId']
          @Name = params['Name']
          @Remark = params['Remark']
          @BucketName = params['BucketName']
          @BucketRegion = params['BucketRegion']
          @CreationTime = params['CreationTime']
          unless params['LibraryExtension'].nil?
            @LibraryExtension = LibraryExtension.new
            @LibraryExtension.deserialize(params['LibraryExtension'])
          end
          @Size = params['Size']
          @DirNum = params['DirNum']
          @FileNum = params['FileNum']
        end
      end

      # 媒体库配置项
      class LibraryExtension < TencentCloud::Common::AbstractModel
        # @param IsFileLibrary: true 为文件类型媒体库，可存储任何类型文件；false 为媒体类型媒体库，仅可存储照片和视频类型文件。默认为 false。在媒体库创建后不能修改。
        # @type IsFileLibrary: Boolean
        # @param IsMultiSpace: true 为多租户空间媒体库，可创建多个租户空间；false 为单租户空间媒体库，不能创建租户空间，仅可使用默认的单一租户空间。默认为 false。在媒体库创建后不能修改。
        # @type IsMultiSpace: Boolean
        # @param CosStorageClass: 保存至 COS 对象存储的文件的存储类型，仅支持 STANDARD、STANDARD_IA、INTELLIGENT_TIERING、MAZ_STANDARD、MAZ_STANDARD_IA 和 MAZ_INTELLIGENT_TIERING，默认为 STANDARD，当使用多 AZ 存储桶时将自动使用 MAZ_ 开头的用于多 AZ 的存储类型，否则自动使用非 MAZ_ 开头的用于非多 AZ 的存储类型。当指定智能分层存储 INTELLIGENT_TIERING 或 MAZ_INTELLIGENT_TIERING 时，需要事先为存储桶开启智能分层存储，否则将返回失败。在媒体库创建后不能修改。
        # @type CosStorageClass: String
        # @param UseRecycleBin: 是否开启回收站功能。默认为 false。
        # @type UseRecycleBin: Boolean
        # @param AutoRemoveRecycledDays: 当开启回收站时，自动删除回收站项目的天数，不能超过 1095（3 年），指定为 0 则不自动删除，默认为 0。当未开启回收站时，该属性为 null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoRemoveRecycledDays: Integer
        # @param EnableSearch: 是否启用文件路径搜索功能。默认为 false。
        # @type EnableSearch: Boolean
        # @param DenyOnQuotaLessThanUsage: 设置媒体库或租户空间配额且配额小于已使用存储量时，是否拒绝设置请求。默认为 false。
        # @type DenyOnQuotaLessThanUsage: Boolean
        # @param EnableFileHistory: 是否开启历史版本。默认为 false。
        # @type EnableFileHistory: Boolean
        # @param FileHistoryCount: 当开启历史版本时，指定单个文件保留的历史版本的数量上限，不能超过 999，指定为 0 则不限制，默认为 0。当未开启历史版本时，该属性为 null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileHistoryCount: Integer
        # @param FileHistoryExpireDay: 当开启历史版本时，指定历史版本保留的最长天数，不能超过 999，指定为 0 则不限制，默认为 0。当未开启历史版本时，该属性为 null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileHistoryExpireDay: Integer
        # @param MaxDirFileNameLength: 目录或文件名的最长长度，不能超过 255，默认为 255。修改该参数不会影响存量目录或文件名，即如果将该字段的值改小，已经存在的长度超过目标值的目录或文件名不会发生变化。
        # @type MaxDirFileNameLength: Integer
        # @param IsPublicRead: 是否开启公有读，开启后读操作无需使用访问令牌，默认为 false。仅单租户空间媒体库支持该属性，否则该属性为 null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsPublicRead: Boolean
        # @param IsMultiAlbum: 媒体类型媒体库是否开启多相簿，开启后可创建一级目录（即相簿）且媒体文件只能保存在各相簿中，否则不能创建相簿且媒体文件只能保存在根目录。默认为 false。仅单租户空间媒体类型媒体库支持该属性，否则该属性为 null。在媒体库创建后不能修改。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsMultiAlbum: Boolean
        # @param AllowPhoto: 媒体类型媒体库是否允许上传照片，默认为 true。仅单租户空间媒体类型媒体库支持该属性，否则该属性为 null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllowPhoto: Boolean
        # @param AllowPhotoExtName: 当媒体类型媒体库允许上传照片时，指定允许的扩展名，默认为空数组，此时将根据文件扩展名对应的 MIME 类型自动判断。仅单租户空间媒体类型媒体库支持该属性，否则该属性为 null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllowPhotoExtName: Array
        # @param AllowVideo: 媒体类型媒体库是否允许上传视频，默认为 true。仅单租户空间媒体类型媒体库支持该属性，否则该属性为 null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllowVideo: Boolean
        # @param AllowVideoExtName: 当媒体类型媒体库允许上传视频时，指定允许的扩展名，默认为空数组，此时将根据文件扩展名对应的 MIME 类型自动判断。仅单租户空间媒体类型媒体库支持该属性，否则该属性为 null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllowVideoExtName: Array
        # @param AllowFileExtName: 指定文件类型媒体库允许的文件扩展名，默认为空数组，此时允许上传所有类型文件。仅单租户空间文件类型媒体库支持该属性，否则该属性为 null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllowFileExtName: Array
        # @param RecognizeSensitiveContent: 照片上传时是否进行敏感内容鉴定，默认为 false。仅单租户空间媒体库支持该属性，否则该属性为 null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecognizeSensitiveContent: Boolean

        attr_accessor :IsFileLibrary, :IsMultiSpace, :CosStorageClass, :UseRecycleBin, :AutoRemoveRecycledDays, :EnableSearch, :DenyOnQuotaLessThanUsage, :EnableFileHistory, :FileHistoryCount, :FileHistoryExpireDay, :MaxDirFileNameLength, :IsPublicRead, :IsMultiAlbum, :AllowPhoto, :AllowPhotoExtName, :AllowVideo, :AllowVideoExtName, :AllowFileExtName, :RecognizeSensitiveContent

        def initialize(isfilelibrary=nil, ismultispace=nil, cosstorageclass=nil, userecyclebin=nil, autoremoverecycleddays=nil, enablesearch=nil, denyonquotalessthanusage=nil, enablefilehistory=nil, filehistorycount=nil, filehistoryexpireday=nil, maxdirfilenamelength=nil, ispublicread=nil, ismultialbum=nil, allowphoto=nil, allowphotoextname=nil, allowvideo=nil, allowvideoextname=nil, allowfileextname=nil, recognizesensitivecontent=nil)
          @IsFileLibrary = isfilelibrary
          @IsMultiSpace = ismultispace
          @CosStorageClass = cosstorageclass
          @UseRecycleBin = userecyclebin
          @AutoRemoveRecycledDays = autoremoverecycleddays
          @EnableSearch = enablesearch
          @DenyOnQuotaLessThanUsage = denyonquotalessthanusage
          @EnableFileHistory = enablefilehistory
          @FileHistoryCount = filehistorycount
          @FileHistoryExpireDay = filehistoryexpireday
          @MaxDirFileNameLength = maxdirfilenamelength
          @IsPublicRead = ispublicread
          @IsMultiAlbum = ismultialbum
          @AllowPhoto = allowphoto
          @AllowPhotoExtName = allowphotoextname
          @AllowVideo = allowvideo
          @AllowVideoExtName = allowvideoextname
          @AllowFileExtName = allowfileextname
          @RecognizeSensitiveContent = recognizesensitivecontent
        end

        def deserialize(params)
          @IsFileLibrary = params['IsFileLibrary']
          @IsMultiSpace = params['IsMultiSpace']
          @CosStorageClass = params['CosStorageClass']
          @UseRecycleBin = params['UseRecycleBin']
          @AutoRemoveRecycledDays = params['AutoRemoveRecycledDays']
          @EnableSearch = params['EnableSearch']
          @DenyOnQuotaLessThanUsage = params['DenyOnQuotaLessThanUsage']
          @EnableFileHistory = params['EnableFileHistory']
          @FileHistoryCount = params['FileHistoryCount']
          @FileHistoryExpireDay = params['FileHistoryExpireDay']
          @MaxDirFileNameLength = params['MaxDirFileNameLength']
          @IsPublicRead = params['IsPublicRead']
          @IsMultiAlbum = params['IsMultiAlbum']
          @AllowPhoto = params['AllowPhoto']
          @AllowPhotoExtName = params['AllowPhotoExtName']
          @AllowVideo = params['AllowVideo']
          @AllowVideoExtName = params['AllowVideoExtName']
          @AllowFileExtName = params['AllowFileExtName']
          @RecognizeSensitiveContent = params['RecognizeSensitiveContent']
        end
      end

      # ModifyLibrary请求参数结构体
      class ModifyLibraryRequest < TencentCloud::Common::AbstractModel
        # @param LibraryId: 媒体库 ID
        # @type LibraryId: String
        # @param Name: 媒体库名称，最多 50 个字符。如不传则不修改。
        # @type Name: String
        # @param Remark: 备注，最多 250 个字符。如不传则不修改。
        # @type Remark: String
        # @param LibraryExtension: 媒体库配置项，部分参数在新建后不可更改，且仅修改传入的参数。如不传该参数则不修改任何配置项。
        # @type LibraryExtension: :class:`Tencentcloud::Smh.v20210712.models.LibraryExtension`

        attr_accessor :LibraryId, :Name, :Remark, :LibraryExtension

        def initialize(libraryid=nil, name=nil, remark=nil, libraryextension=nil)
          @LibraryId = libraryid
          @Name = name
          @Remark = remark
          @LibraryExtension = libraryextension
        end

        def deserialize(params)
          @LibraryId = params['LibraryId']
          @Name = params['Name']
          @Remark = params['Remark']
          unless params['LibraryExtension'].nil?
            @LibraryExtension = LibraryExtension.new
            @LibraryExtension.deserialize(params['LibraryExtension'])
          end
        end
      end

      # ModifyLibrary返回参数结构体
      class ModifyLibraryResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # SendSmsCode请求参数结构体
      class SendSmsCodeRequest < TencentCloud::Common::AbstractModel
        # @param Purpose: 验证码目的，当前支持换绑超级管理员账号， BindSuperAdmin；体验版企业升级，ChannelUpdateVerify等
        # @type Purpose: String
        # @param PhoneNumber: 将作为超级管理员账号的手机号码
        # @type PhoneNumber: String
        # @param InstanceId: 官方云盘实例 ID
        # @type InstanceId: String
        # @param CountryCode: 将作为超级管理员账号的手机号码的国家代码。默认为 +86。
        # @type CountryCode: String

        attr_accessor :Purpose, :PhoneNumber, :InstanceId, :CountryCode

        def initialize(purpose=nil, phonenumber=nil, instanceid=nil, countrycode=nil)
          @Purpose = purpose
          @PhoneNumber = phonenumber
          @InstanceId = instanceid
          @CountryCode = countrycode
        end

        def deserialize(params)
          @Purpose = params['Purpose']
          @PhoneNumber = params['PhoneNumber']
          @InstanceId = params['InstanceId']
          @CountryCode = params['CountryCode']
        end
      end

      # SendSmsCode返回参数结构体
      class SendSmsCodeResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 流量资源包信息
      class TrafficPackage < TencentCloud::Common::AbstractModel
        # @param InstanceId: 流量资源包所抵扣的实例 ID
        # @type InstanceId: String
        # @param Domain: 专属域名。如果实例无专属域名，则该属性为 null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param Type: 流量资源包来源类型，0 为付费购买，1 为赠送。
        # @type Type: Integer
        # @param Size: 总流量，单位为 Bytes，由于数字类型精度限制，该字段为 String 类型。
        # @type Size: String
        # @param SizeGB: 总流量，单位为 GB
        # @type SizeGB: Integer
        # @param Remain: 剩余流量，单位为 Bytes，由于数字类型精度限制，该字段为 String 类型。
        # @type Remain: String
        # @param Used: 已使用流量，单位为 Bytes，由于数字类型精度限制，该字段为 String 类型。
        # @type Used: String
        # @param UsedPercentage: 已使用百分比，由于数字类型精度限制，该字段为 String 类型。
        # @type UsedPercentage: String
        # @param EffectiveTime: 生效时间，即流量资源包的订购时间
        # @type EffectiveTime: String
        # @param ExpireTime: 过期时间，即所抵扣的实例的过期时间。如果流量资源包所抵扣的实例为按量计费或永久有效实例，该属性为 null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String

        attr_accessor :InstanceId, :Domain, :Type, :Size, :SizeGB, :Remain, :Used, :UsedPercentage, :EffectiveTime, :ExpireTime

        def initialize(instanceid=nil, domain=nil, type=nil, size=nil, sizegb=nil, remain=nil, used=nil, usedpercentage=nil, effectivetime=nil, expiretime=nil)
          @InstanceId = instanceid
          @Domain = domain
          @Type = type
          @Size = size
          @SizeGB = sizegb
          @Remain = remain
          @Used = used
          @UsedPercentage = usedpercentage
          @EffectiveTime = effectivetime
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Domain = params['Domain']
          @Type = params['Type']
          @Size = params['Size']
          @SizeGB = params['SizeGB']
          @Remain = params['Remain']
          @Used = params['Used']
          @UsedPercentage = params['UsedPercentage']
          @EffectiveTime = params['EffectiveTime']
          @ExpireTime = params['ExpireTime']
        end
      end

      # VerifySmsCode请求参数结构体
      class VerifySmsCodeRequest < TencentCloud::Common::AbstractModel
        # @param Purpose: 验证码目的，当前支持换绑超级管理员账号，BindSuperAdmin；体验版企业升级验证ChannelUpdateVerify，等
        # @type Purpose: String
        # @param PhoneNumber: 将作为超级管理员账号的手机号码
        # @type PhoneNumber: String
        # @param Code: 短信验证码
        # @type Code: String
        # @param InstanceId: 官方云盘实例 ID
        # @type InstanceId: String
        # @param CountryCode: 将作为超级管理员账号的手机号码的国家代码。默认为 +86。
        # @type CountryCode: String

        attr_accessor :Purpose, :PhoneNumber, :Code, :InstanceId, :CountryCode

        def initialize(purpose=nil, phonenumber=nil, code=nil, instanceid=nil, countrycode=nil)
          @Purpose = purpose
          @PhoneNumber = phonenumber
          @Code = code
          @InstanceId = instanceid
          @CountryCode = countrycode
        end

        def deserialize(params)
          @Purpose = params['Purpose']
          @PhoneNumber = params['PhoneNumber']
          @Code = params['Code']
          @InstanceId = params['InstanceId']
          @CountryCode = params['CountryCode']
        end
      end

      # VerifySmsCode返回参数结构体
      class VerifySmsCodeResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

