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
  module Es
    module V20180416
      # ES cos自动备份信息
      class CosBackup < TencentCloud::Common::AbstractModel
        # @param IsAutoBackup: 是否开启cos自动备份
        # @type IsAutoBackup: Boolean
        # @param BackupTime: 自动备份执行时间（精确到小时）, e.g. "22:00"
        # @type BackupTime: String

        attr_accessor :IsAutoBackup, :BackupTime
        
        def initialize(isautobackup=nil, backuptime=nil)
          @IsAutoBackup = isautobackup
          @BackupTime = backuptime
        end

        def deserialize(params)
          @IsAutoBackup = params['IsAutoBackup']
          @BackupTime = params['BackupTime']
        end
      end

      # CreateInstance请求参数结构体
      class CreateInstanceRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区
        # @type Zone: String
        # @param EsVersion: 实例版本（支持"5.6.4"、"6.4.3"、"6.8.2"、"7.5.1"）
        # @type EsVersion: String
        # @param VpcId: 私有网络ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param Password: 访问密码（密码需8到16位，至少包括两项（[a-z,A-Z],[0-9]和[-!@#$%&^*+=_:;,.?]的特殊符号）
        # @type Password: String
        # @param InstanceName: 实例名称（1-50 个英文、汉字、数字、连接线-或下划线_）
        # @type InstanceName: String
        # @param NodeNum: 已废弃请使用NodeInfoList
        # 节点数量（2-50个）
        # @type NodeNum: Integer
        # @param ChargeType: 计费类型<li>PREPAID：预付费，即包年包月</li><li>POSTPAID_BY_HOUR：按小时后付费</li>默认值POSTPAID_BY_HOUR
        # @type ChargeType: String
        # @param ChargePeriod: 包年包月购买时长（单位由参数TimeUnit决定）
        # @type ChargePeriod: Integer
        # @param RenewFlag: 自动续费标识<li>RENEW_FLAG_AUTO：自动续费</li><li>RENEW_FLAG_MANUAL：不自动续费，用户手动续费</li>ChargeType为PREPAID时需要设置，如不传递该参数，普通用户默认不自动续费，SVIP用户自动续费
        # @type RenewFlag: String
        # @param NodeType: 已废弃请使用NodeInfoList
        # 节点规格<li>ES.S1.SMALL2：1核2G</li><li>ES.S1.MEDIUM4：2核4G</li><li>ES.S1.MEDIUM8：2核8G</li><li>ES.S1.LARGE16：4核16G</li><li>ES.S1.2XLARGE32：8核32G</li><li>ES.S1.4XLARGE32：16核32G</li><li>ES.S1.4XLARGE64：16核64G</li>
        # @type NodeType: String
        # @param DiskType: 已废弃请使用NodeInfoList
        # 节点磁盘类型<li>CLOUD_SSD：SSD云硬盘</li><li>CLOUD_PREMIUM：高硬能云硬盘</li>默认值CLOUD_SSD
        # @type DiskType: String
        # @param DiskSize: 已废弃请使用NodeInfoList
        # 节点磁盘容量（单位GB）
        # @type DiskSize: Integer
        # @param TimeUnit: 计费时长单位（ChargeType为PREPAID时需要设置，默认值为“m”，表示月，当前只支持“m”）
        # @type TimeUnit: String
        # @param AutoVoucher: 是否自动使用代金券<li>0：不自动使用</li><li>1：自动使用</li>默认值0
        # @type AutoVoucher: Integer
        # @param VoucherIds: 代金券ID列表（目前仅支持指定一张代金券）
        # @type VoucherIds: Array
        # @param EnableDedicatedMaster: 已废弃请使用NodeInfoList
        # 是否创建专用主节点<li>true：开启专用主节点</li><li>false：不开启专用主节点</li>默认值false
        # @type EnableDedicatedMaster: Boolean
        # @param MasterNodeNum: 已废弃请使用NodeInfoList
        # 专用主节点个数（只支持3个和5个，EnableDedicatedMaster为true时该值必传）
        # @type MasterNodeNum: Integer
        # @param MasterNodeType: 已废弃请使用NodeInfoList
        # 专用主节点类型（EnableDedicatedMaster为true时必传）<li>ES.S1.SMALL2：1核2G</li><li>ES.S1.MEDIUM4：2核4G</li><li>ES.S1.MEDIUM8：2核8G</li><li>ES.S1.LARGE16：4核16G</li><li>ES.S1.2XLARGE32：8核32G</li><li>ES.S1.4XLARGE32：16核32G</li><li>ES.S1.4XLARGE64：16核64G</li>
        # @type MasterNodeType: String
        # @param MasterNodeDiskSize: 已废弃请使用NodeInfoList
        # 专用主节点磁盘大小（单位GB，非必传，若传递则必须为50，暂不支持自定义）
        # @type MasterNodeDiskSize: Integer
        # @param ClusterNameInConf: 集群配置文件中的ClusterName（系统默认配置为实例ID，暂不支持自定义）
        # @type ClusterNameInConf: String
        # @param DeployMode: 集群部署方式<li>0：单可用区部署</li><li>1：多可用区部署</li>默认为0
        # @type DeployMode: Integer
        # @param MultiZoneInfo: 多可用区部署时可用区的详细信息(DeployMode为1时必传)
        # @type MultiZoneInfo: Array
        # @param LicenseType: License类型<li>oss：开源版</li><li>basic：基础版</li><li>platinum：白金版</li>默认值platinum
        # @type LicenseType: String
        # @param NodeInfoList: 节点信息列表， 用于描述集群各类节点的规格信息如节点类型，节点个数，节点规格，磁盘类型，磁盘大小等
        # @type NodeInfoList: Array
        # @param TagList: 节点标签信息列表
        # @type TagList: Array
        # @param BasicSecurityType: 6.8（及以上版本）基础版是否开启xpack security认证<li>1：不开启</li><li>2：开启</li>
        # @type BasicSecurityType: Integer

        attr_accessor :Zone, :EsVersion, :VpcId, :SubnetId, :Password, :InstanceName, :NodeNum, :ChargeType, :ChargePeriod, :RenewFlag, :NodeType, :DiskType, :DiskSize, :TimeUnit, :AutoVoucher, :VoucherIds, :EnableDedicatedMaster, :MasterNodeNum, :MasterNodeType, :MasterNodeDiskSize, :ClusterNameInConf, :DeployMode, :MultiZoneInfo, :LicenseType, :NodeInfoList, :TagList, :BasicSecurityType
        
        def initialize(zone=nil, esversion=nil, vpcid=nil, subnetid=nil, password=nil, instancename=nil, nodenum=nil, chargetype=nil, chargeperiod=nil, renewflag=nil, nodetype=nil, disktype=nil, disksize=nil, timeunit=nil, autovoucher=nil, voucherids=nil, enablededicatedmaster=nil, masternodenum=nil, masternodetype=nil, masternodedisksize=nil, clusternameinconf=nil, deploymode=nil, multizoneinfo=nil, licensetype=nil, nodeinfolist=nil, taglist=nil, basicsecuritytype=nil)
          @Zone = zone
          @EsVersion = esversion
          @VpcId = vpcid
          @SubnetId = subnetid
          @Password = password
          @InstanceName = instancename
          @NodeNum = nodenum
          @ChargeType = chargetype
          @ChargePeriod = chargeperiod
          @RenewFlag = renewflag
          @NodeType = nodetype
          @DiskType = disktype
          @DiskSize = disksize
          @TimeUnit = timeunit
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
          @EnableDedicatedMaster = enablededicatedmaster
          @MasterNodeNum = masternodenum
          @MasterNodeType = masternodetype
          @MasterNodeDiskSize = masternodedisksize
          @ClusterNameInConf = clusternameinconf
          @DeployMode = deploymode
          @MultiZoneInfo = multizoneinfo
          @LicenseType = licensetype
          @NodeInfoList = nodeinfolist
          @TagList = taglist
          @BasicSecurityType = basicsecuritytype
        end

        def deserialize(params)
          @Zone = params['Zone']
          @EsVersion = params['EsVersion']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Password = params['Password']
          @InstanceName = params['InstanceName']
          @NodeNum = params['NodeNum']
          @ChargeType = params['ChargeType']
          @ChargePeriod = params['ChargePeriod']
          @RenewFlag = params['RenewFlag']
          @NodeType = params['NodeType']
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @TimeUnit = params['TimeUnit']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
          @EnableDedicatedMaster = params['EnableDedicatedMaster']
          @MasterNodeNum = params['MasterNodeNum']
          @MasterNodeType = params['MasterNodeType']
          @MasterNodeDiskSize = params['MasterNodeDiskSize']
          @ClusterNameInConf = params['ClusterNameInConf']
          @DeployMode = params['DeployMode']
          @MultiZoneInfo = params['MultiZoneInfo']
          @LicenseType = params['LicenseType']
          @NodeInfoList = params['NodeInfoList']
          @TagList = params['TagList']
          @BasicSecurityType = params['BasicSecurityType']
        end
      end

      # CreateInstance返回参数结构体
      class CreateInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DeleteInstance请求参数结构体
      class DeleteInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DeleteInstance返回参数结构体
      class DeleteInstanceResponse < TencentCloud::Common::AbstractModel
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

      # DescribeInstanceLogs请求参数结构体
      class DescribeInstanceLogsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID
        # @type InstanceId: String
        # @param LogType: 日志类型，默认值为1
        # <li>1, 主日志</li>
        # <li>2, 搜索慢日志</li>
        # <li>3, 索引慢日志</li>
        # <li>4, GC日志</li>
        # @type LogType: Integer
        # @param SearchKey: 搜索词，支持LUCENE语法，如 level:WARN、ip:1.1.1.1、message:test-index等
        # @type SearchKey: String
        # @param StartTime: 日志开始时间，格式为YYYY-MM-DD HH:MM:SS, 如2019-01-22 20:15:53
        # @type StartTime: String
        # @param EndTime: 日志结束时间，格式为YYYY-MM-DD HH:MM:SS, 如2019-01-22 20:15:53
        # @type EndTime: String
        # @param Offset: 分页起始值, 默认值为0
        # @type Offset: Integer
        # @param Limit: 分页大小，默认值为100，最大值100
        # @type Limit: Integer
        # @param OrderByType: 时间排序方式，默认值为0
        # <li>0, 降序</li>
        # <li>1, 升序</li>
        # @type OrderByType: Integer

        attr_accessor :InstanceId, :LogType, :SearchKey, :StartTime, :EndTime, :Offset, :Limit, :OrderByType
        
        def initialize(instanceid=nil, logtype=nil, searchkey=nil, starttime=nil, endtime=nil, offset=nil, limit=nil, orderbytype=nil)
          @InstanceId = instanceid
          @LogType = logtype
          @SearchKey = searchkey
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
          @OrderByType = orderbytype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @LogType = params['LogType']
          @SearchKey = params['SearchKey']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderByType = params['OrderByType']
        end
      end

      # DescribeInstanceLogs返回参数结构体
      class DescribeInstanceLogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回的日志条数
        # @type TotalCount: Integer
        # @param InstanceLogList: 日志详细信息列表
        # @type InstanceLogList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceLogList, :RequestId
        
        def initialize(totalcount=nil, instanceloglist=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceLogList = instanceloglist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @InstanceLogList = params['InstanceLogList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceOperations请求参数结构体
      class DescribeInstanceOperationsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID
        # @type InstanceId: String
        # @param StartTime: 起始时间, e.g. "2019-03-07 16:30:39"
        # @type StartTime: String
        # @param EndTime: 结束时间, e.g. "2019-03-30 20:18:03"
        # @type EndTime: String
        # @param Offset: 分页起始值
        # @type Offset: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer

        attr_accessor :InstanceId, :StartTime, :EndTime, :Offset, :Limit
        
        def initialize(instanceid=nil, starttime=nil, endtime=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeInstanceOperations返回参数结构体
      class DescribeInstanceOperationsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 操作记录总数
        # @type TotalCount: Integer
        # @param Operations: 操作记录
        # @type Operations: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Operations, :RequestId
        
        def initialize(totalcount=nil, operations=nil, requestid=nil)
          @TotalCount = totalcount
          @Operations = operations
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Operations = params['Operations']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 集群实例所属可用区，不传则默认所有可用区
        # @type Zone: String
        # @param InstanceIds: 集群实例ID列表
        # @type InstanceIds: Array
        # @param InstanceNames: 集群实例名称列表
        # @type InstanceNames: Array
        # @param Offset: 分页起始值, 默认值0
        # @type Offset: Integer
        # @param Limit: 分页大小，默认值20
        # @type Limit: Integer
        # @param OrderByKey: 排序字段<li>1：实例ID</li><li>2：实例名称</li><li>3：可用区</li><li>4：创建时间</li>若orderKey未传递则按创建时间降序排序
        # @type OrderByKey: Integer
        # @param OrderByType: 排序方式<li>0：升序</li><li>1：降序</li>若传递了orderByKey未传递orderByType, 则默认升序
        # @type OrderByType: Integer
        # @param TagList: 节点标签信息列表
        # @type TagList: Array
        # @param IpList: 私有网络vip列表
        # @type IpList: Array

        attr_accessor :Zone, :InstanceIds, :InstanceNames, :Offset, :Limit, :OrderByKey, :OrderByType, :TagList, :IpList
        
        def initialize(zone=nil, instanceids=nil, instancenames=nil, offset=nil, limit=nil, orderbykey=nil, orderbytype=nil, taglist=nil, iplist=nil)
          @Zone = zone
          @InstanceIds = instanceids
          @InstanceNames = instancenames
          @Offset = offset
          @Limit = limit
          @OrderByKey = orderbykey
          @OrderByType = orderbytype
          @TagList = taglist
          @IpList = iplist
        end

        def deserialize(params)
          @Zone = params['Zone']
          @InstanceIds = params['InstanceIds']
          @InstanceNames = params['InstanceNames']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderByKey = params['OrderByKey']
          @OrderByType = params['OrderByType']
          @TagList = params['TagList']
          @IpList = params['IpList']
        end
      end

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回的实例个数
        # @type TotalCount: Integer
        # @param InstanceList: 实例详细信息列表
        # @type InstanceList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceList, :RequestId
        
        def initialize(totalcount=nil, instancelist=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceList = instancelist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @InstanceList = params['InstanceList']
          @RequestId = params['RequestId']
        end
      end

      # ik插件词典信息
      class DictInfo < TencentCloud::Common::AbstractModel
        # @param Key: 词典键值
        # @type Key: String
        # @param Name: 词典名称
        # @type Name: String
        # @param Size: 词典大小，单位B
        # @type Size: Integer

        attr_accessor :Key, :Name, :Size
        
        def initialize(key=nil, name=nil, size=nil)
          @Key = key
          @Name = name
          @Size = size
        end

        def deserialize(params)
          @Key = params['Key']
          @Name = params['Name']
          @Size = params['Size']
        end
      end

      # ES集群配置项
      class EsAcl < TencentCloud::Common::AbstractModel
        # @param BlackIpList: kibana访问黑名单
        # @type BlackIpList: Array
        # @param WhiteIpList: kibana访问白名单
        # @type WhiteIpList: Array

        attr_accessor :BlackIpList, :WhiteIpList
        
        def initialize(blackiplist=nil, whiteiplist=nil)
          @BlackIpList = blackiplist
          @WhiteIpList = whiteiplist
        end

        def deserialize(params)
          @BlackIpList = params['BlackIpList']
          @WhiteIpList = params['WhiteIpList']
        end
      end

      # ES 词库信息
      class EsDictionaryInfo < TencentCloud::Common::AbstractModel
        # @param MainDict: 启用词词典列表
        # @type MainDict: Array
        # @param Stopwords: 停用词词典列表
        # @type Stopwords: Array
        # @param QQDict: QQ分词词典列表
        # @type QQDict: Array
        # @param Synonym: 同义词词典列表
        # @type Synonym: Array
        # @param UpdateType: 更新词典类型
        # @type UpdateType: String

        attr_accessor :MainDict, :Stopwords, :QQDict, :Synonym, :UpdateType
        
        def initialize(maindict=nil, stopwords=nil, qqdict=nil, synonym=nil, updatetype=nil)
          @MainDict = maindict
          @Stopwords = stopwords
          @QQDict = qqdict
          @Synonym = synonym
          @UpdateType = updatetype
        end

        def deserialize(params)
          @MainDict = params['MainDict']
          @Stopwords = params['Stopwords']
          @QQDict = params['QQDict']
          @Synonym = params['Synonym']
          @UpdateType = params['UpdateType']
        end
      end

      # ES公网访问访问控制信息
      class EsPublicAcl < TencentCloud::Common::AbstractModel
        # @param BlackIpList: 访问黑名单
        # @type BlackIpList: Array
        # @param WhiteIpList: 访问白名单
        # @type WhiteIpList: Array

        attr_accessor :BlackIpList, :WhiteIpList
        
        def initialize(blackiplist=nil, whiteiplist=nil)
          @BlackIpList = blackiplist
          @WhiteIpList = whiteiplist
        end

        def deserialize(params)
          @BlackIpList = params['BlackIpList']
          @WhiteIpList = params['WhiteIpList']
        end
      end

      # 实例详细信息
      class InstanceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param Region: 地域
        # @type Region: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param AppId: 用户ID
        # @type AppId: Integer
        # @param Uin: 用户UIN
        # @type Uin: String
        # @param VpcUid: 实例所属VPC的UID
        # @type VpcUid: String
        # @param SubnetUid: 实例所属子网的UID
        # @type SubnetUid: String
        # @param Status: 实例状态，0:处理中,1:正常,-1停止,-2:销毁中,-3:已销毁
        # @type Status: Integer
        # @param ChargeType: 实例计费模式。取值范围：  PREPAID：表示预付费，即包年包月  POSTPAID_BY_HOUR：表示后付费，即按量计费  CDHPAID：CDH付费，即只对CDH计费，不对CDH上的实例计费。
        # @type ChargeType: String
        # @param ChargePeriod: 包年包月购买时长,单位:月
        # @type ChargePeriod: Integer
        # @param RenewFlag: 自动续费标识。取值范围：  NOTIFY_AND_AUTO_RENEW：通知过期且自动续费  NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费  DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费  默认取值：NOTIFY_AND_AUTO_RENEW。若该参数指定为NOTIFY_AND_AUTO_RENEW，在账户余额充足的情况下，实例到期后将按月自动续费。
        # @type RenewFlag: String
        # @param NodeType: 节点规格<li>ES.S1.SMALL2：1核2G</li><li>ES.S1.MEDIUM4：2核4G</li><li>ES.S1.MEDIUM8：2核8G</li><li>ES.S1.LARGE16：4核16G</li><li>ES.S1.2XLARGE32：8核32G</li><li>ES.S1.4XLARGE32：16核32G</li><li>ES.S1.4XLARGE64：16核64G</li>
        # @type NodeType: String
        # @param NodeNum: 节点个数
        # @type NodeNum: Integer
        # @param CpuNum: 节点CPU核数
        # @type CpuNum: Integer
        # @param MemSize: 节点内存大小，单位GB
        # @type MemSize: Integer
        # @param DiskType: 节点磁盘类型
        # @type DiskType: String
        # @param DiskSize: 节点磁盘大小，单位GB
        # @type DiskSize: Integer
        # @param EsDomain: ES域名
        # @type EsDomain: String
        # @param EsVip: ES VIP
        # @type EsVip: String
        # @param EsPort: ES端口
        # @type EsPort: Integer
        # @param KibanaUrl: Kibana访问url
        # @type KibanaUrl: String
        # @param EsVersion: ES版本号
        # @type EsVersion: String
        # @param EsConfig: ES配置项
        # @type EsConfig: String
        # @param EsAcl: Kibana访问控制配置
        # @type EsAcl: :class:`Tencentcloud::Es.v20180416.models.EsAcl`
        # @param CreateTime: 实例创建时间
        # @type CreateTime: String
        # @param UpdateTime: 实例最后修改操作时间
        # @type UpdateTime: String
        # @param Deadline: 实例到期时间
        # @type Deadline: String
        # @param InstanceType: 实例类型（实例类型标识，当前只有1,2两种）
        # @type InstanceType: Integer
        # @param IkConfig: Ik分词器配置
        # @type IkConfig: :class:`Tencentcloud::Es.v20180416.models.EsDictionaryInfo`
        # @param MasterNodeInfo: 专用主节点配置
        # @type MasterNodeInfo: :class:`Tencentcloud::Es.v20180416.models.MasterNodeInfo`
        # @param CosBackup: cos自动备份配置
        # @type CosBackup: :class:`Tencentcloud::Es.v20180416.models.CosBackup`
        # @param AllowCosBackup: 是否允许cos自动备份
        # @type AllowCosBackup: Boolean
        # @param TagList: 实例拥有的标签列表
        # @type TagList: Array
        # @param LicenseType: License类型<li>oss：开源版</li><li>basic：基础版</li><li>platinum：白金版</li>默认值platinum
        # @type LicenseType: String
        # @param EnableHotWarmMode: 是否为冷热集群<li>true: 冷热集群</li><li>false: 非冷热集群</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableHotWarmMode: Boolean
        # @param WarmNodeType: 冷节点规格<li>ES.S1.SMALL2：1核2G</li><li>ES.S1.MEDIUM4：2核4G</li><li>ES.S1.MEDIUM8：2核8G</li><li>ES.S1.LARGE16：4核16G</li><li>ES.S1.2XLARGE32：8核32G</li><li>ES.S1.4XLARGE32：16核32G</li><li>ES.S1.4XLARGE64：16核64G</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WarmNodeType: String
        # @param WarmNodeNum: 冷节点个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WarmNodeNum: Integer
        # @param WarmCpuNum: 冷节点CPU核数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WarmCpuNum: Integer
        # @param WarmMemSize: 冷节点内存内存大小，单位GB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WarmMemSize: Integer
        # @param WarmDiskType: 冷节点磁盘类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WarmDiskType: String
        # @param WarmDiskSize: 冷节点磁盘大小，单位GB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WarmDiskSize: Integer
        # @param NodeInfoList: 集群节点信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeInfoList: Array
        # @param EsPublicUrl: Es公网地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EsPublicUrl: String
        # @param MultiZoneInfo: 多可用区网络信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MultiZoneInfo: Array
        # @param DeployMode: 部署模式<li>0：单可用区</li><li>1：多可用区</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployMode: Integer
        # @param PublicAccess: ES公网访问状态<li>OPEN：开启</li><li>CLOSE：关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicAccess: String
        # @param EsPublicAcl: ES公网访问控制配置
        # @type EsPublicAcl: :class:`Tencentcloud::Es.v20180416.models.EsAcl`
        # @param KibanaPrivateUrl: Kibana内网地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KibanaPrivateUrl: String
        # @param KibanaPublicAccess: Kibana公网访问状态<li>OPEN：开启</li><li>CLOSE：关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KibanaPublicAccess: String
        # @param KibanaPrivateAccess: Kibana内网访问状态<li>OPEN：开启</li><li>CLOSE：关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KibanaPrivateAccess: String
        # @param SecurityType: 6.8（及以上版本）基础版是否开启xpack security认证<li>1：不开启</li><li>2：开启</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityType: Integer

        attr_accessor :InstanceId, :InstanceName, :Region, :Zone, :AppId, :Uin, :VpcUid, :SubnetUid, :Status, :ChargeType, :ChargePeriod, :RenewFlag, :NodeType, :NodeNum, :CpuNum, :MemSize, :DiskType, :DiskSize, :EsDomain, :EsVip, :EsPort, :KibanaUrl, :EsVersion, :EsConfig, :EsAcl, :CreateTime, :UpdateTime, :Deadline, :InstanceType, :IkConfig, :MasterNodeInfo, :CosBackup, :AllowCosBackup, :TagList, :LicenseType, :EnableHotWarmMode, :WarmNodeType, :WarmNodeNum, :WarmCpuNum, :WarmMemSize, :WarmDiskType, :WarmDiskSize, :NodeInfoList, :EsPublicUrl, :MultiZoneInfo, :DeployMode, :PublicAccess, :EsPublicAcl, :KibanaPrivateUrl, :KibanaPublicAccess, :KibanaPrivateAccess, :SecurityType
        
        def initialize(instanceid=nil, instancename=nil, region=nil, zone=nil, appid=nil, uin=nil, vpcuid=nil, subnetuid=nil, status=nil, chargetype=nil, chargeperiod=nil, renewflag=nil, nodetype=nil, nodenum=nil, cpunum=nil, memsize=nil, disktype=nil, disksize=nil, esdomain=nil, esvip=nil, esport=nil, kibanaurl=nil, esversion=nil, esconfig=nil, esacl=nil, createtime=nil, updatetime=nil, deadline=nil, instancetype=nil, ikconfig=nil, masternodeinfo=nil, cosbackup=nil, allowcosbackup=nil, taglist=nil, licensetype=nil, enablehotwarmmode=nil, warmnodetype=nil, warmnodenum=nil, warmcpunum=nil, warmmemsize=nil, warmdisktype=nil, warmdisksize=nil, nodeinfolist=nil, espublicurl=nil, multizoneinfo=nil, deploymode=nil, publicaccess=nil, espublicacl=nil, kibanaprivateurl=nil, kibanapublicaccess=nil, kibanaprivateaccess=nil, securitytype=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Region = region
          @Zone = zone
          @AppId = appid
          @Uin = uin
          @VpcUid = vpcuid
          @SubnetUid = subnetuid
          @Status = status
          @ChargeType = chargetype
          @ChargePeriod = chargeperiod
          @RenewFlag = renewflag
          @NodeType = nodetype
          @NodeNum = nodenum
          @CpuNum = cpunum
          @MemSize = memsize
          @DiskType = disktype
          @DiskSize = disksize
          @EsDomain = esdomain
          @EsVip = esvip
          @EsPort = esport
          @KibanaUrl = kibanaurl
          @EsVersion = esversion
          @EsConfig = esconfig
          @EsAcl = esacl
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Deadline = deadline
          @InstanceType = instancetype
          @IkConfig = ikconfig
          @MasterNodeInfo = masternodeinfo
          @CosBackup = cosbackup
          @AllowCosBackup = allowcosbackup
          @TagList = taglist
          @LicenseType = licensetype
          @EnableHotWarmMode = enablehotwarmmode
          @WarmNodeType = warmnodetype
          @WarmNodeNum = warmnodenum
          @WarmCpuNum = warmcpunum
          @WarmMemSize = warmmemsize
          @WarmDiskType = warmdisktype
          @WarmDiskSize = warmdisksize
          @NodeInfoList = nodeinfolist
          @EsPublicUrl = espublicurl
          @MultiZoneInfo = multizoneinfo
          @DeployMode = deploymode
          @PublicAccess = publicaccess
          @EsPublicAcl = espublicacl
          @KibanaPrivateUrl = kibanaprivateurl
          @KibanaPublicAccess = kibanapublicaccess
          @KibanaPrivateAccess = kibanaprivateaccess
          @SecurityType = securitytype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Region = params['Region']
          @Zone = params['Zone']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @VpcUid = params['VpcUid']
          @SubnetUid = params['SubnetUid']
          @Status = params['Status']
          @ChargeType = params['ChargeType']
          @ChargePeriod = params['ChargePeriod']
          @RenewFlag = params['RenewFlag']
          @NodeType = params['NodeType']
          @NodeNum = params['NodeNum']
          @CpuNum = params['CpuNum']
          @MemSize = params['MemSize']
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @EsDomain = params['EsDomain']
          @EsVip = params['EsVip']
          @EsPort = params['EsPort']
          @KibanaUrl = params['KibanaUrl']
          @EsVersion = params['EsVersion']
          @EsConfig = params['EsConfig']
          unless params['EsAcl'].nil?
            @EsAcl = EsAcl.new.deserialize(params[EsAcl])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Deadline = params['Deadline']
          @InstanceType = params['InstanceType']
          unless params['IkConfig'].nil?
            @IkConfig = EsDictionaryInfo.new.deserialize(params[IkConfig])
          end
          unless params['MasterNodeInfo'].nil?
            @MasterNodeInfo = MasterNodeInfo.new.deserialize(params[MasterNodeInfo])
          end
          unless params['CosBackup'].nil?
            @CosBackup = CosBackup.new.deserialize(params[CosBackup])
          end
          @AllowCosBackup = params['AllowCosBackup']
          @TagList = params['TagList']
          @LicenseType = params['LicenseType']
          @EnableHotWarmMode = params['EnableHotWarmMode']
          @WarmNodeType = params['WarmNodeType']
          @WarmNodeNum = params['WarmNodeNum']
          @WarmCpuNum = params['WarmCpuNum']
          @WarmMemSize = params['WarmMemSize']
          @WarmDiskType = params['WarmDiskType']
          @WarmDiskSize = params['WarmDiskSize']
          @NodeInfoList = params['NodeInfoList']
          @EsPublicUrl = params['EsPublicUrl']
          @MultiZoneInfo = params['MultiZoneInfo']
          @DeployMode = params['DeployMode']
          @PublicAccess = params['PublicAccess']
          unless params['EsPublicAcl'].nil?
            @EsPublicAcl = EsAcl.new.deserialize(params[EsPublicAcl])
          end
          @KibanaPrivateUrl = params['KibanaPrivateUrl']
          @KibanaPublicAccess = params['KibanaPublicAccess']
          @KibanaPrivateAccess = params['KibanaPrivateAccess']
          @SecurityType = params['SecurityType']
        end
      end

      # ES集群日志详细信息
      class InstanceLog < TencentCloud::Common::AbstractModel
        # @param Time: 日志时间
        # @type Time: String
        # @param Level: 日志级别
        # @type Level: String
        # @param Ip: 集群节点ip
        # @type Ip: String
        # @param Message: 日志内容
        # @type Message: String

        attr_accessor :Time, :Level, :Ip, :Message
        
        def initialize(time=nil, level=nil, ip=nil, message=nil)
          @Time = time
          @Level = level
          @Ip = ip
          @Message = message
        end

        def deserialize(params)
          @Time = params['Time']
          @Level = params['Level']
          @Ip = params['Ip']
          @Message = params['Message']
        end
      end

      # OperationDetail使用此结构的数组描述新旧配置
      class KeyValue < TencentCloud::Common::AbstractModel
        # @param Key: 键
        # @type Key: String
        # @param Value: 值
        # @type Value: String

        attr_accessor :Key, :Value
        
        def initialize(key=nil, value=nil)
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
        end
      end

      # 节点本地盘信息
      class LocalDiskInfo < TencentCloud::Common::AbstractModel
        # @param LocalDiskType: 本地盘类型<li>LOCAL_SATA：大数据型</li><li>NVME_SSD：高IO型</li>
        # @type LocalDiskType: String
        # @param LocalDiskSize: 本地盘单盘大小
        # @type LocalDiskSize: Integer
        # @param LocalDiskCount: 本地盘块数
        # @type LocalDiskCount: Integer

        attr_accessor :LocalDiskType, :LocalDiskSize, :LocalDiskCount
        
        def initialize(localdisktype=nil, localdisksize=nil, localdiskcount=nil)
          @LocalDiskType = localdisktype
          @LocalDiskSize = localdisksize
          @LocalDiskCount = localdiskcount
        end

        def deserialize(params)
          @LocalDiskType = params['LocalDiskType']
          @LocalDiskSize = params['LocalDiskSize']
          @LocalDiskCount = params['LocalDiskCount']
        end
      end

      # 实例专用主节点相关信息
      class MasterNodeInfo < TencentCloud::Common::AbstractModel
        # @param EnableDedicatedMaster: 是否启用了专用主节点
        # @type EnableDedicatedMaster: Boolean
        # @param MasterNodeType: 专用主节点规格<li>ES.S1.SMALL2：1核2G</li><li>ES.S1.MEDIUM4：2核4G</li><li>ES.S1.MEDIUM8：2核8G</li><li>ES.S1.LARGE16：4核16G</li><li>ES.S1.2XLARGE32：8核32G</li><li>ES.S1.4XLARGE32：16核32G</li><li>ES.S1.4XLARGE64：16核64G</li>
        # @type MasterNodeType: String
        # @param MasterNodeNum: 专用主节点个数
        # @type MasterNodeNum: Integer
        # @param MasterNodeCpuNum: 专用主节点CPU核数
        # @type MasterNodeCpuNum: Integer
        # @param MasterNodeMemSize: 专用主节点内存大小，单位GB
        # @type MasterNodeMemSize: Integer
        # @param MasterNodeDiskSize: 专用主节点磁盘大小，单位GB
        # @type MasterNodeDiskSize: Integer
        # @param MasterNodeDiskType: 专用主节点磁盘类型
        # @type MasterNodeDiskType: String

        attr_accessor :EnableDedicatedMaster, :MasterNodeType, :MasterNodeNum, :MasterNodeCpuNum, :MasterNodeMemSize, :MasterNodeDiskSize, :MasterNodeDiskType
        
        def initialize(enablededicatedmaster=nil, masternodetype=nil, masternodenum=nil, masternodecpunum=nil, masternodememsize=nil, masternodedisksize=nil, masternodedisktype=nil)
          @EnableDedicatedMaster = enablededicatedmaster
          @MasterNodeType = masternodetype
          @MasterNodeNum = masternodenum
          @MasterNodeCpuNum = masternodecpunum
          @MasterNodeMemSize = masternodememsize
          @MasterNodeDiskSize = masternodedisksize
          @MasterNodeDiskType = masternodedisktype
        end

        def deserialize(params)
          @EnableDedicatedMaster = params['EnableDedicatedMaster']
          @MasterNodeType = params['MasterNodeType']
          @MasterNodeNum = params['MasterNodeNum']
          @MasterNodeCpuNum = params['MasterNodeCpuNum']
          @MasterNodeMemSize = params['MasterNodeMemSize']
          @MasterNodeDiskSize = params['MasterNodeDiskSize']
          @MasterNodeDiskType = params['MasterNodeDiskType']
        end
      end

      # 集群中一种节点类型（如热数据节点，冷数据节点，专用主节点等）的规格描述信息，包括节点类型，节点个数，节点规格，磁盘类型，磁盘大小等, Type不指定时默认为热数据节点；如果节点为master节点，则DiskType和DiskSize参数会被忽略（主节点无数据盘）
      class NodeInfo < TencentCloud::Common::AbstractModel
        # @param NodeNum: 节点数量
        # @type NodeNum: Integer
        # @param NodeType: 节点规格<li>ES.S1.SMALL2：1核2G</li><li>ES.S1.MEDIUM4：2核4G</li><li>ES.S1.MEDIUM8：2核8G</li><li>ES.S1.LARGE16：4核16G</li><li>ES.S1.2XLARGE32：8核32G</li><li>ES.S1.4XLARGE32：16核32G</li><li>ES.S1.4XLARGE64：16核64G</li>
        # @type NodeType: String
        # @param Type: 节点类型<li>hotData: 热数据节点</li>
        # <li>warmData: 冷数据节点</li>
        # <li>dedicatedMaster: 专用主节点</li>
        # 默认值为hotData
        # @type Type: String
        # @param DiskType: 节点磁盘类型<li>CLOUD_SSD：SSD云硬盘</li><li>CLOUD_PREMIUM：高硬能云硬盘</li>默认值CLOUD_SSD
        # @type DiskType: String
        # @param DiskSize: 节点磁盘容量（单位GB）
        # @type DiskSize: Integer
        # @param LocalDiskInfo: 节点本地盘信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocalDiskInfo: :class:`Tencentcloud::Es.v20180416.models.LocalDiskInfo`
        # @param DiskCount: 节点磁盘块数
        # @type DiskCount: Integer
        # @param DiskEncrypt: 节点磁盘是否加密 0: 不加密，1: 加密；默认不加密
        # @type DiskEncrypt: Integer

        attr_accessor :NodeNum, :NodeType, :Type, :DiskType, :DiskSize, :LocalDiskInfo, :DiskCount, :DiskEncrypt
        
        def initialize(nodenum=nil, nodetype=nil, type=nil, disktype=nil, disksize=nil, localdiskinfo=nil, diskcount=nil, diskencrypt=nil)
          @NodeNum = nodenum
          @NodeType = nodetype
          @Type = type
          @DiskType = disktype
          @DiskSize = disksize
          @LocalDiskInfo = localdiskinfo
          @DiskCount = diskcount
          @DiskEncrypt = diskencrypt
        end

        def deserialize(params)
          @NodeNum = params['NodeNum']
          @NodeType = params['NodeType']
          @Type = params['Type']
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          unless params['LocalDiskInfo'].nil?
            @LocalDiskInfo = LocalDiskInfo.new.deserialize(params[LocalDiskInfo])
          end
          @DiskCount = params['DiskCount']
          @DiskEncrypt = params['DiskEncrypt']
        end
      end

      # ES集群操作详细信息
      class Operation < TencentCloud::Common::AbstractModel
        # @param Id: 操作唯一id
        # @type Id: Integer
        # @param StartTime: 操作开始时间
        # @type StartTime: String
        # @param Type: 操作类型
        # @type Type: String
        # @param Detail: 操作详情
        # @type Detail: :class:`Tencentcloud::Es.v20180416.models.OperationDetail`
        # @param Result: 操作结果
        # @type Result: String
        # @param Tasks: 流程任务信息
        # @type Tasks: Array
        # @param Progress: 操作进度
        # @type Progress: Float

        attr_accessor :Id, :StartTime, :Type, :Detail, :Result, :Tasks, :Progress
        
        def initialize(id=nil, starttime=nil, type=nil, detail=nil, result=nil, tasks=nil, progress=nil)
          @Id = id
          @StartTime = starttime
          @Type = type
          @Detail = detail
          @Result = result
          @Tasks = tasks
          @Progress = progress
        end

        def deserialize(params)
          @Id = params['Id']
          @StartTime = params['StartTime']
          @Type = params['Type']
          unless params['Detail'].nil?
            @Detail = OperationDetail.new.deserialize(params[Detail])
          end
          @Result = params['Result']
          @Tasks = params['Tasks']
          @Progress = params['Progress']
        end
      end

      # 操作详情
      class OperationDetail < TencentCloud::Common::AbstractModel
        # @param OldInfo: 实例原始配置信息
        # @type OldInfo: Array
        # @param NewInfo: 实例更新后配置信息
        # @type NewInfo: Array

        attr_accessor :OldInfo, :NewInfo
        
        def initialize(oldinfo=nil, newinfo=nil)
          @OldInfo = oldinfo
          @NewInfo = newinfo
        end

        def deserialize(params)
          @OldInfo = params['OldInfo']
          @NewInfo = params['NewInfo']
        end
      end

      # RestartInstance请求参数结构体
      class RestartInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ForceRestart: 是否强制重启<li>true：强制重启</li><li>false：不强制重启</li>默认false
        # @type ForceRestart: Boolean

        attr_accessor :InstanceId, :ForceRestart
        
        def initialize(instanceid=nil, forcerestart=nil)
          @InstanceId = instanceid
          @ForceRestart = forcerestart
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ForceRestart = params['ForceRestart']
        end
      end

      # RestartInstance返回参数结构体
      class RestartInstanceResponse < TencentCloud::Common::AbstractModel
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

      # 实例操作记录流程任务中的子任务信息（如升级检查任务中的各个检查项）
      class SubTaskDetail < TencentCloud::Common::AbstractModel
        # @param Name: 子任务名
        # @type Name: String
        # @param Result: 子任务结果
        # @type Result: Boolean
        # @param ErrMsg: 子任务错误信息
        # @type ErrMsg: String
        # @param Type: 子任务类型
        # @type Type: String
        # @param Status: 子任务状态，0处理中 1成功 -1失败
        # @type Status: Integer
        # @param FailedIndices: 升级检查失败的索引名
        # @type FailedIndices: Array
        # @param FinishTime: 子任务结束时间
        # @type FinishTime: String
        # @param Level: 子任务等级，1警告 2失败
        # @type Level: Integer

        attr_accessor :Name, :Result, :ErrMsg, :Type, :Status, :FailedIndices, :FinishTime, :Level
        
        def initialize(name=nil, result=nil, errmsg=nil, type=nil, status=nil, failedindices=nil, finishtime=nil, level=nil)
          @Name = name
          @Result = result
          @ErrMsg = errmsg
          @Type = type
          @Status = status
          @FailedIndices = failedindices
          @FinishTime = finishtime
          @Level = level
        end

        def deserialize(params)
          @Name = params['Name']
          @Result = params['Result']
          @ErrMsg = params['ErrMsg']
          @Type = params['Type']
          @Status = params['Status']
          @FailedIndices = params['FailedIndices']
          @FinishTime = params['FinishTime']
          @Level = params['Level']
        end
      end

      # 实例标签信息
      class TagInfo < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue
        
        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # 实例操作记录中的流程任务信息
      class TaskDetail < TencentCloud::Common::AbstractModel
        # @param Name: 任务名
        # @type Name: String
        # @param Progress: 任务进度
        # @type Progress: Float
        # @param FinishTime: 任务完成时间
        # @type FinishTime: String
        # @param SubTasks: 子任务
        # @type SubTasks: Array

        attr_accessor :Name, :Progress, :FinishTime, :SubTasks
        
        def initialize(name=nil, progress=nil, finishtime=nil, subtasks=nil)
          @Name = name
          @Progress = progress
          @FinishTime = finishtime
          @SubTasks = subtasks
        end

        def deserialize(params)
          @Name = params['Name']
          @Progress = params['Progress']
          @FinishTime = params['FinishTime']
          @SubTasks = params['SubTasks']
        end
      end

      # UpdateInstance请求参数结构体
      class UpdateInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称（1-50 个英文、汉字、数字、连接线-或下划线_）
        # @type InstanceName: String
        # @param NodeNum: 已废弃请使用NodeInfoList
        # 节点个数（2-50个）
        # @type NodeNum: Integer
        # @param EsConfig: 配置项（JSON格式字符串）。当前仅支持以下配置项：<li>action.destructive_requires_name</li><li>indices.fielddata.cache.size</li><li>indices.query.bool.max_clause_count</li>
        # @type EsConfig: String
        # @param Password: 默认用户elastic的密码（8到16位，至少包括两项（[a-z,A-Z],[0-9]和[-!@#$%&^*+=_:;,.?]的特殊符号）
        # @type Password: String
        # @param EsAcl: 访问控制列表
        # @type EsAcl: :class:`Tencentcloud::Es.v20180416.models.EsAcl`
        # @param DiskSize: 已废弃请使用NodeInfoList
        # 磁盘大小（单位GB）
        # @type DiskSize: Integer
        # @param NodeType: 已废弃请使用NodeInfoList
        # 节点规格<li>ES.S1.SMALL2：1核2G</li><li>ES.S1.MEDIUM4：2核4G</li><li>ES.S1.MEDIUM8：2核8G</li><li>ES.S1.LARGE16：4核16G</li><li>ES.S1.2XLARGE32：8核32G</li><li>ES.S1.4XLARGE32：16核32G</li><li>ES.S1.4XLARGE64：16核64G</li>
        # @type NodeType: String
        # @param MasterNodeNum: 已废弃请使用NodeInfoList
        # 专用主节点个数（只支持3个或5个）
        # @type MasterNodeNum: Integer
        # @param MasterNodeType: 已废弃请使用NodeInfoList
        # 专用主节点规格<li>ES.S1.SMALL2：1核2G</li><li>ES.S1.MEDIUM4：2核4G</li><li>ES.S1.MEDIUM8：2核8G</li><li>ES.S1.LARGE16：4核16G</li><li>ES.S1.2XLARGE32：8核32G</li><li>ES.S1.4XLARGE32：16核32G</li><li>ES.S1.4XLARGE64：16核64G</li>
        # @type MasterNodeType: String
        # @param MasterNodeDiskSize: 已废弃请使用NodeInfoList
        # 专用主节点磁盘大小（单位GB系统默认配置为50GB,暂不支持自定义）
        # @type MasterNodeDiskSize: Integer
        # @param ForceRestart: 更新配置时是否强制重启<li>true强制重启</li><li>false不强制重启</li>当前仅更新EsConfig时需要设置，默认值为false
        # @type ForceRestart: Boolean
        # @param CosBackup: COS自动备份信息
        # @type CosBackup: :class:`Tencentcloud::Es.v20180416.models.CosBackup`
        # @param NodeInfoList: 节点信息列表，可以只传递要更新的节点及其对应的规格信息。支持的操作包括<li>修改一种节点的个数</li><li>修改一种节点的节点规格及磁盘大小</li><li>增加一种节点类型（需要同时指定该节点的类型，个数，规格，磁盘等信息）</li>上述操作一次只能进行一种，且磁盘类型不支持修改
        # @type NodeInfoList: Array
        # @param PublicAccess: 公网访问状态
        # @type PublicAccess: String
        # @param EsPublicAcl: 公网访问控制列表
        # @type EsPublicAcl: :class:`Tencentcloud::Es.v20180416.models.EsPublicAcl`
        # @param KibanaPublicAccess: Kibana公网访问状态
        # @type KibanaPublicAccess: String
        # @param KibanaPrivateAccess: Kibana内网访问状态
        # @type KibanaPrivateAccess: String
        # @param BasicSecurityType: ES 6.8及以上版本基础版开启或关闭用户认证
        # @type BasicSecurityType: Integer
        # @param KibanaPrivatePort: Kibana内网端口
        # @type KibanaPrivatePort: Integer
        # @param ScaleType: 0: 蓝绿变更方式扩容，集群不重启 （默认） 1: 磁盘解挂载扩容，集群滚动重启
        # @type ScaleType: Integer

        attr_accessor :InstanceId, :InstanceName, :NodeNum, :EsConfig, :Password, :EsAcl, :DiskSize, :NodeType, :MasterNodeNum, :MasterNodeType, :MasterNodeDiskSize, :ForceRestart, :CosBackup, :NodeInfoList, :PublicAccess, :EsPublicAcl, :KibanaPublicAccess, :KibanaPrivateAccess, :BasicSecurityType, :KibanaPrivatePort, :ScaleType
        
        def initialize(instanceid=nil, instancename=nil, nodenum=nil, esconfig=nil, password=nil, esacl=nil, disksize=nil, nodetype=nil, masternodenum=nil, masternodetype=nil, masternodedisksize=nil, forcerestart=nil, cosbackup=nil, nodeinfolist=nil, publicaccess=nil, espublicacl=nil, kibanapublicaccess=nil, kibanaprivateaccess=nil, basicsecuritytype=nil, kibanaprivateport=nil, scaletype=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @NodeNum = nodenum
          @EsConfig = esconfig
          @Password = password
          @EsAcl = esacl
          @DiskSize = disksize
          @NodeType = nodetype
          @MasterNodeNum = masternodenum
          @MasterNodeType = masternodetype
          @MasterNodeDiskSize = masternodedisksize
          @ForceRestart = forcerestart
          @CosBackup = cosbackup
          @NodeInfoList = nodeinfolist
          @PublicAccess = publicaccess
          @EsPublicAcl = espublicacl
          @KibanaPublicAccess = kibanapublicaccess
          @KibanaPrivateAccess = kibanaprivateaccess
          @BasicSecurityType = basicsecuritytype
          @KibanaPrivatePort = kibanaprivateport
          @ScaleType = scaletype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @NodeNum = params['NodeNum']
          @EsConfig = params['EsConfig']
          @Password = params['Password']
          unless params['EsAcl'].nil?
            @EsAcl = EsAcl.new.deserialize(params[EsAcl])
          end
          @DiskSize = params['DiskSize']
          @NodeType = params['NodeType']
          @MasterNodeNum = params['MasterNodeNum']
          @MasterNodeType = params['MasterNodeType']
          @MasterNodeDiskSize = params['MasterNodeDiskSize']
          @ForceRestart = params['ForceRestart']
          unless params['CosBackup'].nil?
            @CosBackup = CosBackup.new.deserialize(params[CosBackup])
          end
          @NodeInfoList = params['NodeInfoList']
          @PublicAccess = params['PublicAccess']
          unless params['EsPublicAcl'].nil?
            @EsPublicAcl = EsPublicAcl.new.deserialize(params[EsPublicAcl])
          end
          @KibanaPublicAccess = params['KibanaPublicAccess']
          @KibanaPrivateAccess = params['KibanaPrivateAccess']
          @BasicSecurityType = params['BasicSecurityType']
          @KibanaPrivatePort = params['KibanaPrivatePort']
          @ScaleType = params['ScaleType']
        end
      end

      # UpdateInstance返回参数结构体
      class UpdateInstanceResponse < TencentCloud::Common::AbstractModel
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

      # UpdatePlugins请求参数结构体
      class UpdatePluginsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstallPluginList: 需要安装的插件名列表
        # @type InstallPluginList: Array
        # @param RemovePluginList: 需要卸载的插件名列表
        # @type RemovePluginList: Array
        # @param ForceRestart: 是否强制重启
        # @type ForceRestart: Boolean

        attr_accessor :InstanceId, :InstallPluginList, :RemovePluginList, :ForceRestart
        
        def initialize(instanceid=nil, installpluginlist=nil, removepluginlist=nil, forcerestart=nil)
          @InstanceId = instanceid
          @InstallPluginList = installpluginlist
          @RemovePluginList = removepluginlist
          @ForceRestart = forcerestart
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstallPluginList = params['InstallPluginList']
          @RemovePluginList = params['RemovePluginList']
          @ForceRestart = params['ForceRestart']
        end
      end

      # UpdatePlugins返回参数结构体
      class UpdatePluginsResponse < TencentCloud::Common::AbstractModel
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

      # UpgradeInstance请求参数结构体
      class UpgradeInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param EsVersion: 目标ES版本，支持：”6.4.3“, "6.8.2"，"7.5.1"
        # @type EsVersion: String
        # @param CheckOnly: 是否只做升级检查，默认值为false
        # @type CheckOnly: Boolean
        # @param LicenseType: 目标商业特性版本：<li>oss 开源版</li><li>basic 基础版</li>当前仅在5.6.4升级6.x版本时使用，默认值为basic
        # @type LicenseType: String
        # @param BasicSecurityType: 6.8（及以上版本）基础版是否开启xpack security认证<li>1：不开启</li><li>2：开启</li>
        # @type BasicSecurityType: Integer

        attr_accessor :InstanceId, :EsVersion, :CheckOnly, :LicenseType, :BasicSecurityType
        
        def initialize(instanceid=nil, esversion=nil, checkonly=nil, licensetype=nil, basicsecuritytype=nil)
          @InstanceId = instanceid
          @EsVersion = esversion
          @CheckOnly = checkonly
          @LicenseType = licensetype
          @BasicSecurityType = basicsecuritytype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @EsVersion = params['EsVersion']
          @CheckOnly = params['CheckOnly']
          @LicenseType = params['LicenseType']
          @BasicSecurityType = params['BasicSecurityType']
        end
      end

      # UpgradeInstance返回参数结构体
      class UpgradeInstanceResponse < TencentCloud::Common::AbstractModel
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

      # UpgradeLicense请求参数结构体
      class UpgradeLicenseRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param LicenseType: License类型<li>oss：开源版</li><li>basic：基础版</li><li>platinum：白金版</li>默认值platinum
        # @type LicenseType: String
        # @param AutoVoucher: 是否自动使用代金券<li>0：不自动使用</li><li>1：自动使用</li>默认值0
        # @type AutoVoucher: Integer
        # @param VoucherIds: 代金券ID列表（目前仅支持指定一张代金券）
        # @type VoucherIds: Array
        # @param BasicSecurityType: 6.8（及以上版本）基础版是否开启xpack security认证<li>1：不开启</li><li>2：开启</li>
        # @type BasicSecurityType: Integer
        # @param ForceRestart: 是否强制重启<li>true强制重启</li><li>false不强制重启</li> 默认值false
        # @type ForceRestart: Boolean

        attr_accessor :InstanceId, :LicenseType, :AutoVoucher, :VoucherIds, :BasicSecurityType, :ForceRestart
        
        def initialize(instanceid=nil, licensetype=nil, autovoucher=nil, voucherids=nil, basicsecuritytype=nil, forcerestart=nil)
          @InstanceId = instanceid
          @LicenseType = licensetype
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
          @BasicSecurityType = basicsecuritytype
          @ForceRestart = forcerestart
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @LicenseType = params['LicenseType']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
          @BasicSecurityType = params['BasicSecurityType']
          @ForceRestart = params['ForceRestart']
        end
      end

      # UpgradeLicense返回参数结构体
      class UpgradeLicenseResponse < TencentCloud::Common::AbstractModel
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

      # 多可用区部署时可用区的详细信息
      class ZoneDetail < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区
        # @type Zone: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String

        attr_accessor :Zone, :SubnetId
        
        def initialize(zone=nil, subnetid=nil)
          @Zone = zone
          @SubnetId = subnetid
        end

        def deserialize(params)
          @Zone = params['Zone']
          @SubnetId = params['SubnetId']
        end
      end

    end
  end
end

