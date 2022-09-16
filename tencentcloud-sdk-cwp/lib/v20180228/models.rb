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
  module Cwp
    module V20180228
      # 帐号统计数据。
      class AccountStatistics < TencentCloud::Common::AbstractModel
        # @param Username: 用户名。
        # @type Username: String
        # @param MachineNum: 主机数量。
        # @type MachineNum: Integer

        attr_accessor :Username, :MachineNum
        
        def initialize(username=nil, machinenum=nil)
          @Username = username
          @MachineNum = machinenum
        end

        def deserialize(params)
          @Username = params['Username']
          @MachineNum = params['MachineNum']
        end
      end

      # 资源管理进程基本信息
      class AssetAppBaseInfo < TencentCloud::Common::AbstractModel
        # @param MachineIp: 主机内网IP
        # @type MachineIp: String
        # @param MachineName: 主机名称
        # @type MachineName: String
        # @param MachineWanIp: 主机外网IP
        # @type MachineWanIp: String
        # @param Uuid: 主机Uuid
        # @type Uuid: String
        # @param Quuid: 主机Quuid
        # @type Quuid: String
        # @param ProjectId: 主机业务组ID
        # @type ProjectId: Integer
        # @param Tag: 主机标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param Name: 应用名称
        # @type Name: String
        # @param Type: 应用类型
        # 1: 运维
        # 2 : 数据库
        # 3 : 安全
        # 4 : 可疑应用
        # 5 : 系统架构
        # 6 : 系统应用
        # 7 : WEB服务
        # 99: 其他
        # @type Type: Integer
        # @param BinPath: 二进制路径
        # @type BinPath: String
        # @param OsInfo: 操作系统信息
        # @type OsInfo: String
        # @param ProcessCount: 关联进程数
        # @type ProcessCount: Integer
        # @param Desc: 应用描述
        # @type Desc: String
        # @param Version: 版本号
        # @type Version: String
        # @param ConfigPath: 配置文件路径
        # @type ConfigPath: String
        # @param FirstTime: 首次采集时间
        # @type FirstTime: String
        # @param UpdateTime: 数据更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param IsNew: 是否新增[0:否|1:是]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsNew: Integer

        attr_accessor :MachineIp, :MachineName, :MachineWanIp, :Uuid, :Quuid, :ProjectId, :Tag, :Name, :Type, :BinPath, :OsInfo, :ProcessCount, :Desc, :Version, :ConfigPath, :FirstTime, :UpdateTime, :IsNew
        
        def initialize(machineip=nil, machinename=nil, machinewanip=nil, uuid=nil, quuid=nil, projectid=nil, tag=nil, name=nil, type=nil, binpath=nil, osinfo=nil, processcount=nil, desc=nil, version=nil, configpath=nil, firsttime=nil, updatetime=nil, isnew=nil)
          @MachineIp = machineip
          @MachineName = machinename
          @MachineWanIp = machinewanip
          @Uuid = uuid
          @Quuid = quuid
          @ProjectId = projectid
          @Tag = tag
          @Name = name
          @Type = type
          @BinPath = binpath
          @OsInfo = osinfo
          @ProcessCount = processcount
          @Desc = desc
          @Version = version
          @ConfigPath = configpath
          @FirstTime = firsttime
          @UpdateTime = updatetime
          @IsNew = isnew
        end

        def deserialize(params)
          @MachineIp = params['MachineIp']
          @MachineName = params['MachineName']
          @MachineWanIp = params['MachineWanIp']
          @Uuid = params['Uuid']
          @Quuid = params['Quuid']
          @ProjectId = params['ProjectId']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              machinetag_tmp = MachineTag.new
              machinetag_tmp.deserialize(i)
              @Tag << machinetag_tmp
            end
          end
          @Name = params['Name']
          @Type = params['Type']
          @BinPath = params['BinPath']
          @OsInfo = params['OsInfo']
          @ProcessCount = params['ProcessCount']
          @Desc = params['Desc']
          @Version = params['Version']
          @ConfigPath = params['ConfigPath']
          @FirstTime = params['FirstTime']
          @UpdateTime = params['UpdateTime']
          @IsNew = params['IsNew']
        end
      end

      # 软件应用关联进程信息
      class AssetAppProcessInfo < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Status: 进程状态
        # @type Status: String
        # @param Version: 进程版本
        # @type Version: String
        # @param Path: 路径
        # @type Path: String
        # @param User: 用户
        # @type User: String
        # @param StartTime: 启动时间
        # @type StartTime: String

        attr_accessor :Name, :Status, :Version, :Path, :User, :StartTime
        
        def initialize(name=nil, status=nil, version=nil, path=nil, user=nil, starttime=nil)
          @Name = name
          @Status = status
          @Version = version
          @Path = path
          @User = user
          @StartTime = starttime
        end

        def deserialize(params)
          @Name = params['Name']
          @Status = params['Status']
          @Version = params['Version']
          @Path = params['Path']
          @User = params['User']
          @StartTime = params['StartTime']
        end
      end

      # 资产管理内核模块列表
      class AssetCoreModuleBaseInfo < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Desc: 描述
        # @type Desc: String
        # @param Path: 路径
        # @type Path: String
        # @param Version: 版本
        # @type Version: String
        # @param MachineIp: 服务器IP
        # @type MachineIp: String
        # @param MachineName: 服务器名称
        # @type MachineName: String
        # @param OsInfo: 操作系统
        # @type OsInfo: String
        # @param Size: 模块大小
        # @type Size: Integer
        # @param ProcessCount: 依赖进程数
        # @type ProcessCount: Integer
        # @param ModuleCount: 依赖模块数
        # @type ModuleCount: Integer
        # @param Id: 模块ID
        # @type Id: String
        # @param Quuid: 主机Quuid
        # @type Quuid: String
        # @param Uuid: 主机uuid
        # @type Uuid: String
        # @param UpdateTime: 数据更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param FirstTime: 首次采集时间
        # @type FirstTime: String
        # @param IsNew: 是否新增[0:否|1:是]
        # @type IsNew: Integer
        # @param MachineWanIp: 服务器外网IP
        # @type MachineWanIp: String

        attr_accessor :Name, :Desc, :Path, :Version, :MachineIp, :MachineName, :OsInfo, :Size, :ProcessCount, :ModuleCount, :Id, :Quuid, :Uuid, :UpdateTime, :FirstTime, :IsNew, :MachineWanIp
        
        def initialize(name=nil, desc=nil, path=nil, version=nil, machineip=nil, machinename=nil, osinfo=nil, size=nil, processcount=nil, modulecount=nil, id=nil, quuid=nil, uuid=nil, updatetime=nil, firsttime=nil, isnew=nil, machinewanip=nil)
          @Name = name
          @Desc = desc
          @Path = path
          @Version = version
          @MachineIp = machineip
          @MachineName = machinename
          @OsInfo = osinfo
          @Size = size
          @ProcessCount = processcount
          @ModuleCount = modulecount
          @Id = id
          @Quuid = quuid
          @Uuid = uuid
          @UpdateTime = updatetime
          @FirstTime = firsttime
          @IsNew = isnew
          @MachineWanIp = machinewanip
        end

        def deserialize(params)
          @Name = params['Name']
          @Desc = params['Desc']
          @Path = params['Path']
          @Version = params['Version']
          @MachineIp = params['MachineIp']
          @MachineName = params['MachineName']
          @OsInfo = params['OsInfo']
          @Size = params['Size']
          @ProcessCount = params['ProcessCount']
          @ModuleCount = params['ModuleCount']
          @Id = params['Id']
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
          @UpdateTime = params['UpdateTime']
          @FirstTime = params['FirstTime']
          @IsNew = params['IsNew']
          @MachineWanIp = params['MachineWanIp']
        end
      end

      # 资产管理内核模块详情
      class AssetCoreModuleDetail < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Desc: 描述
        # @type Desc: String
        # @param Path: 路径
        # @type Path: String
        # @param Version: 版本
        # @type Version: String
        # @param Size: 大小
        # @type Size: Integer
        # @param Processes: 依赖进程
        # @type Processes: String
        # @param Modules: 被依赖模块
        # @type Modules: String
        # @param Params: 参数信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Params: Array
        # @param UpdateTime: 数据更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :Name, :Desc, :Path, :Version, :Size, :Processes, :Modules, :Params, :UpdateTime
        
        def initialize(name=nil, desc=nil, path=nil, version=nil, size=nil, processes=nil, modules=nil, params=nil, updatetime=nil)
          @Name = name
          @Desc = desc
          @Path = path
          @Version = version
          @Size = size
          @Processes = processes
          @Modules = modules
          @Params = params
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Name = params['Name']
          @Desc = params['Desc']
          @Path = params['Path']
          @Version = params['Version']
          @Size = params['Size']
          @Processes = params['Processes']
          @Modules = params['Modules']
          unless params['Params'].nil?
            @Params = []
            params['Params'].each do |i|
              assetcoremoduleparam_tmp = AssetCoreModuleParam.new
              assetcoremoduleparam_tmp.deserialize(i)
              @Params << assetcoremoduleparam_tmp
            end
          end
          @UpdateTime = params['UpdateTime']
        end
      end

      # 资产管理内核模块参数
      class AssetCoreModuleParam < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Data: 数据
        # @type Data: String

        attr_accessor :Name, :Data
        
        def initialize(name=nil, data=nil)
          @Name = name
          @Data = data
        end

        def deserialize(params)
          @Name = params['Name']
          @Data = params['Data']
        end
      end

      # 资源管理数据库列表信息
      class AssetDatabaseBaseInfo < TencentCloud::Common::AbstractModel
        # @param MachineIp: 主机内网IP
        # @type MachineIp: String
        # @param MachineWanIp: 主机外网IP
        # @type MachineWanIp: String
        # @param Quuid: 主机Quuid
        # @type Quuid: String
        # @param Uuid: 主机Uuid
        # @type Uuid: String
        # @param OsInfo: 操作系统信息
        # @type OsInfo: String
        # @param ProjectId: 主机业务组ID
        # @type ProjectId: Integer
        # @param Tag: 主机标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param Name: 数据库名
        # @type Name: String
        # @param Version: 版本
        # @type Version: String
        # @param Port: 监听端口
        # @type Port: String
        # @param Proto: 协议
        # @type Proto: String
        # @param User: 运行用户
        # @type User: String
        # @param Ip: 绑定IP
        # @type Ip: String
        # @param ConfigPath: 配置文件路径
        # @type ConfigPath: String
        # @param LogPath: 日志文件路径
        # @type LogPath: String
        # @param DataPath: 数据路径
        # @type DataPath: String
        # @param Permission: 运行权限
        # @type Permission: String
        # @param ErrorLogPath: 错误日志路径
        # @type ErrorLogPath: String
        # @param PlugInPath: 插件路径
        # @type PlugInPath: String
        # @param BinPath: 二进制路径
        # @type BinPath: String
        # @param Param: 启动参数
        # @type Param: String
        # @param Id: 数据库ID
        # @type Id: String
        # @param UpdateTime: 数据更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param FirstTime: 首次采集时间
        # @type FirstTime: String
        # @param IsNew: 是否新增[0:否|1:是]
        # @type IsNew: Integer
        # @param MachineName: 主机名称
        # @type MachineName: String

        attr_accessor :MachineIp, :MachineWanIp, :Quuid, :Uuid, :OsInfo, :ProjectId, :Tag, :Name, :Version, :Port, :Proto, :User, :Ip, :ConfigPath, :LogPath, :DataPath, :Permission, :ErrorLogPath, :PlugInPath, :BinPath, :Param, :Id, :UpdateTime, :FirstTime, :IsNew, :MachineName
        
        def initialize(machineip=nil, machinewanip=nil, quuid=nil, uuid=nil, osinfo=nil, projectid=nil, tag=nil, name=nil, version=nil, port=nil, proto=nil, user=nil, ip=nil, configpath=nil, logpath=nil, datapath=nil, permission=nil, errorlogpath=nil, pluginpath=nil, binpath=nil, param=nil, id=nil, updatetime=nil, firsttime=nil, isnew=nil, machinename=nil)
          @MachineIp = machineip
          @MachineWanIp = machinewanip
          @Quuid = quuid
          @Uuid = uuid
          @OsInfo = osinfo
          @ProjectId = projectid
          @Tag = tag
          @Name = name
          @Version = version
          @Port = port
          @Proto = proto
          @User = user
          @Ip = ip
          @ConfigPath = configpath
          @LogPath = logpath
          @DataPath = datapath
          @Permission = permission
          @ErrorLogPath = errorlogpath
          @PlugInPath = pluginpath
          @BinPath = binpath
          @Param = param
          @Id = id
          @UpdateTime = updatetime
          @FirstTime = firsttime
          @IsNew = isnew
          @MachineName = machinename
        end

        def deserialize(params)
          @MachineIp = params['MachineIp']
          @MachineWanIp = params['MachineWanIp']
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
          @OsInfo = params['OsInfo']
          @ProjectId = params['ProjectId']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              machinetag_tmp = MachineTag.new
              machinetag_tmp.deserialize(i)
              @Tag << machinetag_tmp
            end
          end
          @Name = params['Name']
          @Version = params['Version']
          @Port = params['Port']
          @Proto = params['Proto']
          @User = params['User']
          @Ip = params['Ip']
          @ConfigPath = params['ConfigPath']
          @LogPath = params['LogPath']
          @DataPath = params['DataPath']
          @Permission = params['Permission']
          @ErrorLogPath = params['ErrorLogPath']
          @PlugInPath = params['PlugInPath']
          @BinPath = params['BinPath']
          @Param = params['Param']
          @Id = params['Id']
          @UpdateTime = params['UpdateTime']
          @FirstTime = params['FirstTime']
          @IsNew = params['IsNew']
          @MachineName = params['MachineName']
        end
      end

      # 资源管理数据库列表信息
      class AssetDatabaseDetail < TencentCloud::Common::AbstractModel
        # @param MachineIp: 主机内网IP
        # @type MachineIp: String
        # @param MachineWanIp: 主机外网IP
        # @type MachineWanIp: String
        # @param Quuid: 主机Quuid
        # @type Quuid: String
        # @param Uuid: 主机Uuid
        # @type Uuid: String
        # @param OsInfo: 操作系统信息
        # @type OsInfo: String
        # @param Name: 数据库名
        # @type Name: String
        # @param Version: 版本
        # @type Version: String
        # @param Port: 监听端口
        # @type Port: String
        # @param Proto: 协议
        # @type Proto: String
        # @param User: 运行用户
        # @type User: String
        # @param Ip: 绑定IP
        # @type Ip: String
        # @param ConfigPath: 配置文件路径
        # @type ConfigPath: String
        # @param LogPath: 日志文件路径
        # @type LogPath: String
        # @param DataPath: 数据路径
        # @type DataPath: String
        # @param Permission: 运行权限
        # @type Permission: String
        # @param ErrorLogPath: 错误日志路径
        # @type ErrorLogPath: String
        # @param PlugInPath: 插件路径
        # @type PlugInPath: String
        # @param BinPath: 二进制路径
        # @type BinPath: String
        # @param Param: 启动参数
        # @type Param: String
        # @param UpdateTime: 数据更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :MachineIp, :MachineWanIp, :Quuid, :Uuid, :OsInfo, :Name, :Version, :Port, :Proto, :User, :Ip, :ConfigPath, :LogPath, :DataPath, :Permission, :ErrorLogPath, :PlugInPath, :BinPath, :Param, :UpdateTime
        
        def initialize(machineip=nil, machinewanip=nil, quuid=nil, uuid=nil, osinfo=nil, name=nil, version=nil, port=nil, proto=nil, user=nil, ip=nil, configpath=nil, logpath=nil, datapath=nil, permission=nil, errorlogpath=nil, pluginpath=nil, binpath=nil, param=nil, updatetime=nil)
          @MachineIp = machineip
          @MachineWanIp = machinewanip
          @Quuid = quuid
          @Uuid = uuid
          @OsInfo = osinfo
          @Name = name
          @Version = version
          @Port = port
          @Proto = proto
          @User = user
          @Ip = ip
          @ConfigPath = configpath
          @LogPath = logpath
          @DataPath = datapath
          @Permission = permission
          @ErrorLogPath = errorlogpath
          @PlugInPath = pluginpath
          @BinPath = binpath
          @Param = param
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @MachineIp = params['MachineIp']
          @MachineWanIp = params['MachineWanIp']
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
          @OsInfo = params['OsInfo']
          @Name = params['Name']
          @Version = params['Version']
          @Port = params['Port']
          @Proto = params['Proto']
          @User = params['User']
          @Ip = params['Ip']
          @ConfigPath = params['ConfigPath']
          @LogPath = params['LogPath']
          @DataPath = params['DataPath']
          @Permission = params['Permission']
          @ErrorLogPath = params['ErrorLogPath']
          @PlugInPath = params['PlugInPath']
          @BinPath = params['BinPath']
          @Param = params['Param']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 资产管理磁盘分区信息
      class AssetDiskPartitionInfo < TencentCloud::Common::AbstractModel
        # @param Name: 分区名
        # @type Name: String
        # @param Size: 分区大小：单位G
        # @type Size: Integer
        # @param Percent: 分区使用率
        # @type Percent: Float
        # @param Type: 文件系统类型
        # @type Type: String
        # @param Path: 挂载目录
        # @type Path: String
        # @param Used: 已使用空间：单位G
        # @type Used: Integer

        attr_accessor :Name, :Size, :Percent, :Type, :Path, :Used
        
        def initialize(name=nil, size=nil, percent=nil, type=nil, path=nil, used=nil)
          @Name = name
          @Size = size
          @Percent = percent
          @Type = type
          @Path = path
          @Used = used
        end

        def deserialize(params)
          @Name = params['Name']
          @Size = params['Size']
          @Percent = params['Percent']
          @Type = params['Type']
          @Path = params['Path']
          @Used = params['Used']
        end
      end

      # 资产管理环境变量列表
      class AssetEnvBaseInfo < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Type: 类型：
        # 0:用户变量
        # 1:系统变量
        # @type Type: Integer
        # @param User: 启动用户
        # @type User: String
        # @param Value: 环境变量值
        # @type Value: String
        # @param MachineIp: 服务器IP
        # @type MachineIp: String
        # @param MachineName: 服务器名称
        # @type MachineName: String
        # @param OsInfo: 操作系统
        # @type OsInfo: String
        # @param Quuid: 主机Quuid
        # @type Quuid: String
        # @param Uuid: 主机uuid
        # @type Uuid: String
        # @param UpdateTime: 数据更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param FirstTime: 首次采集时间
        # @type FirstTime: String
        # @param IsNew: 是否新增[0:否|1:是]
        # @type IsNew: Integer
        # @param MachineWanIp: 服务器外网IP
        # @type MachineWanIp: String

        attr_accessor :Name, :Type, :User, :Value, :MachineIp, :MachineName, :OsInfo, :Quuid, :Uuid, :UpdateTime, :FirstTime, :IsNew, :MachineWanIp
        
        def initialize(name=nil, type=nil, user=nil, value=nil, machineip=nil, machinename=nil, osinfo=nil, quuid=nil, uuid=nil, updatetime=nil, firsttime=nil, isnew=nil, machinewanip=nil)
          @Name = name
          @Type = type
          @User = user
          @Value = value
          @MachineIp = machineip
          @MachineName = machinename
          @OsInfo = osinfo
          @Quuid = quuid
          @Uuid = uuid
          @UpdateTime = updatetime
          @FirstTime = firsttime
          @IsNew = isnew
          @MachineWanIp = machinewanip
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @User = params['User']
          @Value = params['Value']
          @MachineIp = params['MachineIp']
          @MachineName = params['MachineName']
          @OsInfo = params['OsInfo']
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
          @UpdateTime = params['UpdateTime']
          @FirstTime = params['FirstTime']
          @IsNew = params['IsNew']
          @MachineWanIp = params['MachineWanIp']
        end
      end

      # 容器安全
      # 描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等
      # 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
      # 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
      class AssetFilters < TencentCloud::Common::AbstractModel
        # @param Name: 过滤键的名称。
        # @type Name: String
        # @param Values: 一个或者多个过滤值。
        # @type Values: Array
        # @param ExactMatch: 是否模糊查询
        # @type ExactMatch: Boolean

        attr_accessor :Name, :Values, :ExactMatch
        
        def initialize(name=nil, values=nil, exactmatch=nil)
          @Name = name
          @Values = values
          @ExactMatch = exactmatch
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
          @ExactMatch = params['ExactMatch']
        end
      end

      # 资产管理启动服务列表
      class AssetInitServiceBaseInfo < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Type: 类型：
        # 1:编码器
        # 2:IE插件
        # 3:网络提供者
        # 4:镜像劫持
        # 5:LSA提供者
        # 6:KnownDLLs
        # 7:启动执行
        # 8:WMI
        # 9:计划任务
        # 10:Winsock提供者
        # 11:打印监控器
        # 12:资源管理器
        # 13:驱动服务
        # 14:登录
        # @type Type: Integer
        # @param Status: 默认启用状态：0未启用，1启用
        # @type Status: Integer
        # @param User: 启动用户
        # @type User: String
        # @param Path: 路径
        # @type Path: String
        # @param MachineIp: 服务器IP
        # @type MachineIp: String
        # @param MachineName: 服务器名称
        # @type MachineName: String
        # @param OsInfo: 操作系统
        # @type OsInfo: String
        # @param Quuid: 主机Quuid
        # @type Quuid: String
        # @param Uuid: 主机uuid
        # @type Uuid: String
        # @param UpdateTime: 数据更新时间
        # @type UpdateTime: String
        # @param FirstTime: 首次采集时间
        # @type FirstTime: String
        # @param IsNew: 是否新增[0:否|1:是]
        # @type IsNew: Integer
        # @param MachineWanIp: 服务器外网IP
        # @type MachineWanIp: String

        attr_accessor :Name, :Type, :Status, :User, :Path, :MachineIp, :MachineName, :OsInfo, :Quuid, :Uuid, :UpdateTime, :FirstTime, :IsNew, :MachineWanIp
        
        def initialize(name=nil, type=nil, status=nil, user=nil, path=nil, machineip=nil, machinename=nil, osinfo=nil, quuid=nil, uuid=nil, updatetime=nil, firsttime=nil, isnew=nil, machinewanip=nil)
          @Name = name
          @Type = type
          @Status = status
          @User = user
          @Path = path
          @MachineIp = machineip
          @MachineName = machinename
          @OsInfo = osinfo
          @Quuid = quuid
          @Uuid = uuid
          @UpdateTime = updatetime
          @FirstTime = firsttime
          @IsNew = isnew
          @MachineWanIp = machinewanip
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @Status = params['Status']
          @User = params['User']
          @Path = params['Path']
          @MachineIp = params['MachineIp']
          @MachineName = params['MachineName']
          @OsInfo = params['OsInfo']
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
          @UpdateTime = params['UpdateTime']
          @FirstTime = params['FirstTime']
          @IsNew = params['IsNew']
          @MachineWanIp = params['MachineWanIp']
        end
      end

      # 资产管理jar包列表
      class AssetJarBaseInfo < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Type: 类型：1应用程序，2系统类库，3Web服务自带库，8:其他，
        # @type Type: Integer
        # @param Status: 是否可执行：0未知，1是，2否
        # @type Status: Integer
        # @param Version: 版本
        # @type Version: String
        # @param Path: 路径
        # @type Path: String
        # @param MachineIp: 服务器IP
        # @type MachineIp: String
        # @param MachineName: 服务器名称
        # @type MachineName: String
        # @param OsInfo: 操作系统
        # @type OsInfo: String
        # @param Id: Jar包ID
        # @type Id: String
        # @param Md5: Jar包Md5
        # @type Md5: String
        # @param Quuid: 主机Quuid
        # @type Quuid: String
        # @param Uuid: 主机uuid
        # @type Uuid: String
        # @param UpdateTime: 数据更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param FirstTime: 首次采集时间
        # @type FirstTime: String
        # @param IsNew: 是否新增[0:否|1:是]
        # @type IsNew: Integer
        # @param MachineWanIp: 服务器外网IP
        # @type MachineWanIp: String

        attr_accessor :Name, :Type, :Status, :Version, :Path, :MachineIp, :MachineName, :OsInfo, :Id, :Md5, :Quuid, :Uuid, :UpdateTime, :FirstTime, :IsNew, :MachineWanIp
        
        def initialize(name=nil, type=nil, status=nil, version=nil, path=nil, machineip=nil, machinename=nil, osinfo=nil, id=nil, md5=nil, quuid=nil, uuid=nil, updatetime=nil, firsttime=nil, isnew=nil, machinewanip=nil)
          @Name = name
          @Type = type
          @Status = status
          @Version = version
          @Path = path
          @MachineIp = machineip
          @MachineName = machinename
          @OsInfo = osinfo
          @Id = id
          @Md5 = md5
          @Quuid = quuid
          @Uuid = uuid
          @UpdateTime = updatetime
          @FirstTime = firsttime
          @IsNew = isnew
          @MachineWanIp = machinewanip
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @Status = params['Status']
          @Version = params['Version']
          @Path = params['Path']
          @MachineIp = params['MachineIp']
          @MachineName = params['MachineName']
          @OsInfo = params['OsInfo']
          @Id = params['Id']
          @Md5 = params['Md5']
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
          @UpdateTime = params['UpdateTime']
          @FirstTime = params['FirstTime']
          @IsNew = params['IsNew']
          @MachineWanIp = params['MachineWanIp']
        end
      end

      # 资产管理jar包详情
      class AssetJarDetail < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Type: 类型：1应用程序，2系统类库，3Web服务自带库，8:其他，
        # @type Type: Integer
        # @param Status: 是否可执行：0未知，1是，2否
        # @type Status: Integer
        # @param Version: 版本
        # @type Version: String
        # @param Path: 路径
        # @type Path: String
        # @param MachineIp: 服务器IP
        # @type MachineIp: String
        # @param MachineName: 服务器名称
        # @type MachineName: String
        # @param OsInfo: 操作系统
        # @type OsInfo: String
        # @param Process: 引用进程列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Process: Array
        # @param Md5: Jar包Md5
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Md5: String
        # @param UpdateTime: 数据更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :Name, :Type, :Status, :Version, :Path, :MachineIp, :MachineName, :OsInfo, :Process, :Md5, :UpdateTime
        
        def initialize(name=nil, type=nil, status=nil, version=nil, path=nil, machineip=nil, machinename=nil, osinfo=nil, process=nil, md5=nil, updatetime=nil)
          @Name = name
          @Type = type
          @Status = status
          @Version = version
          @Path = path
          @MachineIp = machineip
          @MachineName = machinename
          @OsInfo = osinfo
          @Process = process
          @Md5 = md5
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @Status = params['Status']
          @Version = params['Version']
          @Path = params['Path']
          @MachineIp = params['MachineIp']
          @MachineName = params['MachineName']
          @OsInfo = params['OsInfo']
          unless params['Process'].nil?
            @Process = []
            params['Process'].each do |i|
              assetappprocessinfo_tmp = AssetAppProcessInfo.new
              assetappprocessinfo_tmp.deserialize(i)
              @Process << assetappprocessinfo_tmp
            end
          end
          @Md5 = params['Md5']
          @UpdateTime = params['UpdateTime']
        end
      end

      # key-val类型的通用数据结构
      class AssetKeyVal < TencentCloud::Common::AbstractModel
        # @param Key: 标签
        # @type Key: String
        # @param Value: 数量
        # @type Value: Integer
        # @param Desc: 描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Desc: String
        # @param NewCount: 今日新增数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewCount: Integer

        attr_accessor :Key, :Value, :Desc, :NewCount
        
        def initialize(key=nil, value=nil, desc=nil, newcount=nil)
          @Key = key
          @Value = value
          @Desc = desc
          @NewCount = newcount
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
          @Desc = params['Desc']
          @NewCount = params['NewCount']
        end
      end

      # 资产指纹中服务器列表的基本信息
      class AssetMachineBaseInfo < TencentCloud::Common::AbstractModel
        # @param Quuid: 服务器Quuid
        # @type Quuid: String
        # @param Uuid: 服务器uuid
        # @type Uuid: String
        # @param MachineIp: 服务器内网IP
        # @type MachineIp: String
        # @param MachineName: 服务器名称
        # @type MachineName: String
        # @param OsInfo: 操作系统名称
        # @type OsInfo: String
        # @param Cpu: CPU信息
        # @type Cpu: String
        # @param MemSize: 内存容量：单位G
        # @type MemSize: Integer
        # @param MemLoad: 内存使用率百分比
        # @type MemLoad: String
        # @param DiskSize: 硬盘容量：单位G
        # @type DiskSize: Integer
        # @param DiskLoad: 硬盘使用率百分比
        # @type DiskLoad: String
        # @param PartitionCount: 分区数
        # @type PartitionCount: Integer
        # @param MachineWanIp: 主机外网IP
        # @type MachineWanIp: String
        # @param ProjectId: 业务组ID
        # @type ProjectId: Integer
        # @param CpuSize: Cpu数量
        # @type CpuSize: Integer
        # @param CpuLoad: Cpu使用率百分比
        # @type CpuLoad: String
        # @param Tag: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param UpdateTime: 数据更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param IsNew: 是否新增[0:否|1:是]
        # @type IsNew: Integer
        # @param FirstTime: 首次采集时间
        # @type FirstTime: String

        attr_accessor :Quuid, :Uuid, :MachineIp, :MachineName, :OsInfo, :Cpu, :MemSize, :MemLoad, :DiskSize, :DiskLoad, :PartitionCount, :MachineWanIp, :ProjectId, :CpuSize, :CpuLoad, :Tag, :UpdateTime, :IsNew, :FirstTime
        
        def initialize(quuid=nil, uuid=nil, machineip=nil, machinename=nil, osinfo=nil, cpu=nil, memsize=nil, memload=nil, disksize=nil, diskload=nil, partitioncount=nil, machinewanip=nil, projectid=nil, cpusize=nil, cpuload=nil, tag=nil, updatetime=nil, isnew=nil, firsttime=nil)
          @Quuid = quuid
          @Uuid = uuid
          @MachineIp = machineip
          @MachineName = machinename
          @OsInfo = osinfo
          @Cpu = cpu
          @MemSize = memsize
          @MemLoad = memload
          @DiskSize = disksize
          @DiskLoad = diskload
          @PartitionCount = partitioncount
          @MachineWanIp = machinewanip
          @ProjectId = projectid
          @CpuSize = cpusize
          @CpuLoad = cpuload
          @Tag = tag
          @UpdateTime = updatetime
          @IsNew = isnew
          @FirstTime = firsttime
        end

        def deserialize(params)
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
          @MachineIp = params['MachineIp']
          @MachineName = params['MachineName']
          @OsInfo = params['OsInfo']
          @Cpu = params['Cpu']
          @MemSize = params['MemSize']
          @MemLoad = params['MemLoad']
          @DiskSize = params['DiskSize']
          @DiskLoad = params['DiskLoad']
          @PartitionCount = params['PartitionCount']
          @MachineWanIp = params['MachineWanIp']
          @ProjectId = params['ProjectId']
          @CpuSize = params['CpuSize']
          @CpuLoad = params['CpuLoad']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              machinetag_tmp = MachineTag.new
              machinetag_tmp.deserialize(i)
              @Tag << machinetag_tmp
            end
          end
          @UpdateTime = params['UpdateTime']
          @IsNew = params['IsNew']
          @FirstTime = params['FirstTime']
        end
      end

      # 资产指纹中服务器列表的基本信息
      class AssetMachineDetail < TencentCloud::Common::AbstractModel
        # @param Quuid: 服务器Quuid
        # @type Quuid: String
        # @param Uuid: 服务器uuid
        # @type Uuid: String
        # @param MachineIp: 服务器内网IP
        # @type MachineIp: String
        # @param MachineName: 服务器名称
        # @type MachineName: String
        # @param OsInfo: 操作系统名称
        # @type OsInfo: String
        # @param Cpu: CPU信息
        # @type Cpu: String
        # @param MemSize: 内存容量：单位G
        # @type MemSize: Integer
        # @param MemLoad: 内存使用率百分比
        # @type MemLoad: String
        # @param DiskSize: 硬盘容量：单位G
        # @type DiskSize: Integer
        # @param DiskLoad: 硬盘使用率百分比
        # @type DiskLoad: String
        # @param PartitionCount: 分区数
        # @type PartitionCount: Integer
        # @param MachineWanIp: 主机外网IP
        # @type MachineWanIp: String
        # @param CpuSize: Cpu数量
        # @type CpuSize: Integer
        # @param CpuLoad: Cpu使用率百分比
        # @type CpuLoad: String
        # @param ProtectLevel: 防护级别：0基础版，1专业版
        # @type ProtectLevel: Integer
        # @param RiskStatus: 风险状态：UNKNOW-未知，RISK-风险，SAFT-安全
        # @type RiskStatus: String
        # @param ProtectDays: 已防护天数
        # @type ProtectDays: Integer
        # @param BuyTime: 专业版开通时间
        # @type BuyTime: String
        # @param EndTime: 专业版到期时间
        # @type EndTime: String
        # @param CoreVersion: 内核版本
        # @type CoreVersion: String
        # @param OsType: linux/windows
        # @type OsType: String
        # @param AgentVersion: agent版本
        # @type AgentVersion: String
        # @param InstallTime: 安装时间
        # @type InstallTime: String
        # @param BootTime: 系统启动时间
        # @type BootTime: String
        # @param LastLiveTime: 最后上线时间
        # @type LastLiveTime: String
        # @param Producer: 生产商
        # @type Producer: String
        # @param SerialNumber: 序列号
        # @type SerialNumber: String
        # @param NetCards: 网卡
        # @type NetCards: Array
        # @param Disks: 分区
        # @type Disks: Array
        # @param Status: 0在线，1已离线
        # @type Status: Integer
        # @param ProjectId: 业务组ID
        # @type ProjectId: Integer
        # @param DeviceVersion: 设备型号
        # @type DeviceVersion: String
        # @param OfflineTime: 离线时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OfflineTime: String
        # @param InstanceId: 主机ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param UpdateTime: 数据更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :Quuid, :Uuid, :MachineIp, :MachineName, :OsInfo, :Cpu, :MemSize, :MemLoad, :DiskSize, :DiskLoad, :PartitionCount, :MachineWanIp, :CpuSize, :CpuLoad, :ProtectLevel, :RiskStatus, :ProtectDays, :BuyTime, :EndTime, :CoreVersion, :OsType, :AgentVersion, :InstallTime, :BootTime, :LastLiveTime, :Producer, :SerialNumber, :NetCards, :Disks, :Status, :ProjectId, :DeviceVersion, :OfflineTime, :InstanceId, :UpdateTime
        
        def initialize(quuid=nil, uuid=nil, machineip=nil, machinename=nil, osinfo=nil, cpu=nil, memsize=nil, memload=nil, disksize=nil, diskload=nil, partitioncount=nil, machinewanip=nil, cpusize=nil, cpuload=nil, protectlevel=nil, riskstatus=nil, protectdays=nil, buytime=nil, endtime=nil, coreversion=nil, ostype=nil, agentversion=nil, installtime=nil, boottime=nil, lastlivetime=nil, producer=nil, serialnumber=nil, netcards=nil, disks=nil, status=nil, projectid=nil, deviceversion=nil, offlinetime=nil, instanceid=nil, updatetime=nil)
          @Quuid = quuid
          @Uuid = uuid
          @MachineIp = machineip
          @MachineName = machinename
          @OsInfo = osinfo
          @Cpu = cpu
          @MemSize = memsize
          @MemLoad = memload
          @DiskSize = disksize
          @DiskLoad = diskload
          @PartitionCount = partitioncount
          @MachineWanIp = machinewanip
          @CpuSize = cpusize
          @CpuLoad = cpuload
          @ProtectLevel = protectlevel
          @RiskStatus = riskstatus
          @ProtectDays = protectdays
          @BuyTime = buytime
          @EndTime = endtime
          @CoreVersion = coreversion
          @OsType = ostype
          @AgentVersion = agentversion
          @InstallTime = installtime
          @BootTime = boottime
          @LastLiveTime = lastlivetime
          @Producer = producer
          @SerialNumber = serialnumber
          @NetCards = netcards
          @Disks = disks
          @Status = status
          @ProjectId = projectid
          @DeviceVersion = deviceversion
          @OfflineTime = offlinetime
          @InstanceId = instanceid
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
          @MachineIp = params['MachineIp']
          @MachineName = params['MachineName']
          @OsInfo = params['OsInfo']
          @Cpu = params['Cpu']
          @MemSize = params['MemSize']
          @MemLoad = params['MemLoad']
          @DiskSize = params['DiskSize']
          @DiskLoad = params['DiskLoad']
          @PartitionCount = params['PartitionCount']
          @MachineWanIp = params['MachineWanIp']
          @CpuSize = params['CpuSize']
          @CpuLoad = params['CpuLoad']
          @ProtectLevel = params['ProtectLevel']
          @RiskStatus = params['RiskStatus']
          @ProtectDays = params['ProtectDays']
          @BuyTime = params['BuyTime']
          @EndTime = params['EndTime']
          @CoreVersion = params['CoreVersion']
          @OsType = params['OsType']
          @AgentVersion = params['AgentVersion']
          @InstallTime = params['InstallTime']
          @BootTime = params['BootTime']
          @LastLiveTime = params['LastLiveTime']
          @Producer = params['Producer']
          @SerialNumber = params['SerialNumber']
          unless params['NetCards'].nil?
            @NetCards = []
            params['NetCards'].each do |i|
              assetnetworkcardinfo_tmp = AssetNetworkCardInfo.new
              assetnetworkcardinfo_tmp.deserialize(i)
              @NetCards << assetnetworkcardinfo_tmp
            end
          end
          unless params['Disks'].nil?
            @Disks = []
            params['Disks'].each do |i|
              assetdiskpartitioninfo_tmp = AssetDiskPartitionInfo.new
              assetdiskpartitioninfo_tmp.deserialize(i)
              @Disks << assetdiskpartitioninfo_tmp
            end
          end
          @Status = params['Status']
          @ProjectId = params['ProjectId']
          @DeviceVersion = params['DeviceVersion']
          @OfflineTime = params['OfflineTime']
          @InstanceId = params['InstanceId']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 资产管理网卡信息
      class AssetNetworkCardInfo < TencentCloud::Common::AbstractModel
        # @param Name: 网卡名称
        # @type Name: String
        # @param Ip: Ipv4对应IP
        # @type Ip: String
        # @param GateWay: 网关
        # @type GateWay: String
        # @param Mac: MAC地址
        # @type Mac: String
        # @param Ipv6: Ipv6对应IP
        # @type Ipv6: String
        # @param DnsServer: DNS服务器
        # @type DnsServer: String

        attr_accessor :Name, :Ip, :GateWay, :Mac, :Ipv6, :DnsServer
        
        def initialize(name=nil, ip=nil, gateway=nil, mac=nil, ipv6=nil, dnsserver=nil)
          @Name = name
          @Ip = ip
          @GateWay = gateway
          @Mac = mac
          @Ipv6 = ipv6
          @DnsServer = dnsserver
        end

        def deserialize(params)
          @Name = params['Name']
          @Ip = params['Ip']
          @GateWay = params['GateWay']
          @Mac = params['Mac']
          @Ipv6 = params['Ipv6']
          @DnsServer = params['DnsServer']
        end
      end

      # 资产管理计划任务列表
      class AssetPlanTask < TencentCloud::Common::AbstractModel
        # @param Status: 默认启用状态：1启用，2未启用
        # @type Status: Integer
        # @param Cycle: 执行周期
        # @type Cycle: String
        # @param Command: 执行命令或脚本
        # @type Command: String
        # @param User: 启动用户
        # @type User: String
        # @param ConfigPath: 配置文件路径
        # @type ConfigPath: String
        # @param MachineIp: 服务器IP
        # @type MachineIp: String
        # @param MachineName: 服务器名称
        # @type MachineName: String
        # @param OsInfo: 操作系统
        # @type OsInfo: String
        # @param Quuid: 主机Quuid
        # @type Quuid: String
        # @param Uuid: 主机uuid
        # @type Uuid: String
        # @param UpdateTime: 数据更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param FirstTime: 首次采集时间
        # @type FirstTime: String
        # @param IsNew: 是否新增[0:否|1:是]
        # @type IsNew: Integer
        # @param MachineWanIp: 服务器外网IP
        # @type MachineWanIp: String

        attr_accessor :Status, :Cycle, :Command, :User, :ConfigPath, :MachineIp, :MachineName, :OsInfo, :Quuid, :Uuid, :UpdateTime, :FirstTime, :IsNew, :MachineWanIp
        
        def initialize(status=nil, cycle=nil, command=nil, user=nil, configpath=nil, machineip=nil, machinename=nil, osinfo=nil, quuid=nil, uuid=nil, updatetime=nil, firsttime=nil, isnew=nil, machinewanip=nil)
          @Status = status
          @Cycle = cycle
          @Command = command
          @User = user
          @ConfigPath = configpath
          @MachineIp = machineip
          @MachineName = machinename
          @OsInfo = osinfo
          @Quuid = quuid
          @Uuid = uuid
          @UpdateTime = updatetime
          @FirstTime = firsttime
          @IsNew = isnew
          @MachineWanIp = machinewanip
        end

        def deserialize(params)
          @Status = params['Status']
          @Cycle = params['Cycle']
          @Command = params['Command']
          @User = params['User']
          @ConfigPath = params['ConfigPath']
          @MachineIp = params['MachineIp']
          @MachineName = params['MachineName']
          @OsInfo = params['OsInfo']
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
          @UpdateTime = params['UpdateTime']
          @FirstTime = params['FirstTime']
          @IsNew = params['IsNew']
          @MachineWanIp = params['MachineWanIp']
        end
      end

      # 资源管理账号基本信息
      class AssetPortBaseInfo < TencentCloud::Common::AbstractModel
        # @param MachineIp: 主机内网IP
        # @type MachineIp: String
        # @param MachineWanIp: 主机外网IP
        # @type MachineWanIp: String
        # @param Quuid: 主机Quuid
        # @type Quuid: String
        # @param Uuid: 主机Uuid
        # @type Uuid: String
        # @param OsInfo: 操作系统信息
        # @type OsInfo: String
        # @param ProjectId: 主机业务组ID
        # @type ProjectId: Integer
        # @param Tag: 主机标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param ProcessName: 进程名称
        # @type ProcessName: String
        # @param ProcessVersion: 进程版本
        # @type ProcessVersion: String
        # @param ProcessPath: 进程路径
        # @type ProcessPath: String
        # @param Pid: 进程ID
        # @type Pid: String
        # @param User: 运行用户
        # @type User: String
        # @param StartTime: 启动时间
        # @type StartTime: String
        # @param Param: 启动参数
        # @type Param: String
        # @param Teletype: 进程TTY
        # @type Teletype: String
        # @param Port: 端口
        # @type Port: String
        # @param GroupName: 所属用户组
        # @type GroupName: String
        # @param Md5: 进程MD5
        # @type Md5: String
        # @param Ppid: 父进程ID
        # @type Ppid: String
        # @param ParentProcessName: 父进程名称
        # @type ParentProcessName: String
        # @param Proto: 端口协议
        # @type Proto: String
        # @param BindIp: 绑定IP
        # @type BindIp: String
        # @param MachineName: 主机名称
        # @type MachineName: String
        # @param UpdateTime: 数据更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param FirstTime: 首次采集时间
        # @type FirstTime: String
        # @param IsNew: 是否新增[0:否|1:是]
        # @type IsNew: Integer

        attr_accessor :MachineIp, :MachineWanIp, :Quuid, :Uuid, :OsInfo, :ProjectId, :Tag, :ProcessName, :ProcessVersion, :ProcessPath, :Pid, :User, :StartTime, :Param, :Teletype, :Port, :GroupName, :Md5, :Ppid, :ParentProcessName, :Proto, :BindIp, :MachineName, :UpdateTime, :FirstTime, :IsNew
        
        def initialize(machineip=nil, machinewanip=nil, quuid=nil, uuid=nil, osinfo=nil, projectid=nil, tag=nil, processname=nil, processversion=nil, processpath=nil, pid=nil, user=nil, starttime=nil, param=nil, teletype=nil, port=nil, groupname=nil, md5=nil, ppid=nil, parentprocessname=nil, proto=nil, bindip=nil, machinename=nil, updatetime=nil, firsttime=nil, isnew=nil)
          @MachineIp = machineip
          @MachineWanIp = machinewanip
          @Quuid = quuid
          @Uuid = uuid
          @OsInfo = osinfo
          @ProjectId = projectid
          @Tag = tag
          @ProcessName = processname
          @ProcessVersion = processversion
          @ProcessPath = processpath
          @Pid = pid
          @User = user
          @StartTime = starttime
          @Param = param
          @Teletype = teletype
          @Port = port
          @GroupName = groupname
          @Md5 = md5
          @Ppid = ppid
          @ParentProcessName = parentprocessname
          @Proto = proto
          @BindIp = bindip
          @MachineName = machinename
          @UpdateTime = updatetime
          @FirstTime = firsttime
          @IsNew = isnew
        end

        def deserialize(params)
          @MachineIp = params['MachineIp']
          @MachineWanIp = params['MachineWanIp']
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
          @OsInfo = params['OsInfo']
          @ProjectId = params['ProjectId']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              machinetag_tmp = MachineTag.new
              machinetag_tmp.deserialize(i)
              @Tag << machinetag_tmp
            end
          end
          @ProcessName = params['ProcessName']
          @ProcessVersion = params['ProcessVersion']
          @ProcessPath = params['ProcessPath']
          @Pid = params['Pid']
          @User = params['User']
          @StartTime = params['StartTime']
          @Param = params['Param']
          @Teletype = params['Teletype']
          @Port = params['Port']
          @GroupName = params['GroupName']
          @Md5 = params['Md5']
          @Ppid = params['Ppid']
          @ParentProcessName = params['ParentProcessName']
          @Proto = params['Proto']
          @BindIp = params['BindIp']
          @MachineName = params['MachineName']
          @UpdateTime = params['UpdateTime']
          @FirstTime = params['FirstTime']
          @IsNew = params['IsNew']
        end
      end

      # 资源管理进程基本信息
      class AssetProcessBaseInfo < TencentCloud::Common::AbstractModel
        # @param MachineIp: 主机内网IP
        # @type MachineIp: String
        # @param MachineWanIp: 主机外网IP
        # @type MachineWanIp: String
        # @param Quuid: 主机Quuid
        # @type Quuid: String
        # @param Uuid: 主机Uuid
        # @type Uuid: String
        # @param OsInfo: 操作系统信息
        # @type OsInfo: String
        # @param ProjectId: 主机业务组ID
        # @type ProjectId: Integer
        # @param Tag: 主机标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param Name: 进程名称
        # @type Name: String
        # @param Desc: 进程说明
        # @type Desc: String
        # @param Path: 进程路径
        # @type Path: String
        # @param Pid: 进程ID
        # @type Pid: String
        # @param User: 运行用户
        # @type User: String
        # @param StartTime: 启动时间
        # @type StartTime: String
        # @param Param: 启动参数
        # @type Param: String
        # @param Tty: 进程TTY
        # @type Tty: String
        # @param Version: 进程版本
        # @type Version: String
        # @param GroupName: 进程用户组
        # @type GroupName: String
        # @param Md5: 进程MD5
        # @type Md5: String
        # @param Ppid: 父进程ID
        # @type Ppid: String
        # @param ParentProcessName: 父进程名称
        # @type ParentProcessName: String
        # @param Status: 进程状态
        # @type Status: String
        # @param HasSign: 数字签名:0无，1有， 999 空，仅windows
        # @type HasSign: Integer
        # @param InstallByPackage: 是否通过安装包安装：:0否，1是， 999 空，仅linux
        # @type InstallByPackage: Integer
        # @param PackageName: 软件包名
        # @type PackageName: String
        # @param MachineName: 主机名称
        # @type MachineName: String
        # @param UpdateTime: 数据更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param FirstTime: 首次采集时间
        # @type FirstTime: String
        # @param IsNew: 是否新增[0:否|1:是]
        # @type IsNew: Integer

        attr_accessor :MachineIp, :MachineWanIp, :Quuid, :Uuid, :OsInfo, :ProjectId, :Tag, :Name, :Desc, :Path, :Pid, :User, :StartTime, :Param, :Tty, :Version, :GroupName, :Md5, :Ppid, :ParentProcessName, :Status, :HasSign, :InstallByPackage, :PackageName, :MachineName, :UpdateTime, :FirstTime, :IsNew
        
        def initialize(machineip=nil, machinewanip=nil, quuid=nil, uuid=nil, osinfo=nil, projectid=nil, tag=nil, name=nil, desc=nil, path=nil, pid=nil, user=nil, starttime=nil, param=nil, tty=nil, version=nil, groupname=nil, md5=nil, ppid=nil, parentprocessname=nil, status=nil, hassign=nil, installbypackage=nil, packagename=nil, machinename=nil, updatetime=nil, firsttime=nil, isnew=nil)
          @MachineIp = machineip
          @MachineWanIp = machinewanip
          @Quuid = quuid
          @Uuid = uuid
          @OsInfo = osinfo
          @ProjectId = projectid
          @Tag = tag
          @Name = name
          @Desc = desc
          @Path = path
          @Pid = pid
          @User = user
          @StartTime = starttime
          @Param = param
          @Tty = tty
          @Version = version
          @GroupName = groupname
          @Md5 = md5
          @Ppid = ppid
          @ParentProcessName = parentprocessname
          @Status = status
          @HasSign = hassign
          @InstallByPackage = installbypackage
          @PackageName = packagename
          @MachineName = machinename
          @UpdateTime = updatetime
          @FirstTime = firsttime
          @IsNew = isnew
        end

        def deserialize(params)
          @MachineIp = params['MachineIp']
          @MachineWanIp = params['MachineWanIp']
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
          @OsInfo = params['OsInfo']
          @ProjectId = params['ProjectId']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              machinetag_tmp = MachineTag.new
              machinetag_tmp.deserialize(i)
              @Tag << machinetag_tmp
            end
          end
          @Name = params['Name']
          @Desc = params['Desc']
          @Path = params['Path']
          @Pid = params['Pid']
          @User = params['User']
          @StartTime = params['StartTime']
          @Param = params['Param']
          @Tty = params['Tty']
          @Version = params['Version']
          @GroupName = params['GroupName']
          @Md5 = params['Md5']
          @Ppid = params['Ppid']
          @ParentProcessName = params['ParentProcessName']
          @Status = params['Status']
          @HasSign = params['HasSign']
          @InstallByPackage = params['InstallByPackage']
          @PackageName = params['PackageName']
          @MachineName = params['MachineName']
          @UpdateTime = params['UpdateTime']
          @FirstTime = params['FirstTime']
          @IsNew = params['IsNew']
        end
      end

      # 资源管理系统安装包列表信息
      class AssetSystemPackageInfo < TencentCloud::Common::AbstractModel
        # @param Name: 数据库名
        # @type Name: String
        # @param Desc: 描述
        # @type Desc: String
        # @param Version: 版本
        # @type Version: String
        # @param InstallTime: 安装时间
        # @type InstallTime: String
        # @param Type: 类型
        # @type Type: String
        # @param MachineName: 主机名称
        # @type MachineName: String
        # @param MachineIp: 主机IP
        # @type MachineIp: String
        # @param OsInfo: 操作系统
        # @type OsInfo: String
        # @param UpdateTime: 数据更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param FirstTime: 首次采集时间
        # @type FirstTime: String
        # @param IsNew: 是否新增[0:否|1:是]
        # @type IsNew: Integer

        attr_accessor :Name, :Desc, :Version, :InstallTime, :Type, :MachineName, :MachineIp, :OsInfo, :UpdateTime, :FirstTime, :IsNew
        
        def initialize(name=nil, desc=nil, version=nil, installtime=nil, type=nil, machinename=nil, machineip=nil, osinfo=nil, updatetime=nil, firsttime=nil, isnew=nil)
          @Name = name
          @Desc = desc
          @Version = version
          @InstallTime = installtime
          @Type = type
          @MachineName = machinename
          @MachineIp = machineip
          @OsInfo = osinfo
          @UpdateTime = updatetime
          @FirstTime = firsttime
          @IsNew = isnew
        end

        def deserialize(params)
          @Name = params['Name']
          @Desc = params['Desc']
          @Version = params['Version']
          @InstallTime = params['InstallTime']
          @Type = params['Type']
          @MachineName = params['MachineName']
          @MachineIp = params['MachineIp']
          @OsInfo = params['OsInfo']
          @UpdateTime = params['UpdateTime']
          @FirstTime = params['FirstTime']
          @IsNew = params['IsNew']
        end
      end

      # 资源管理账号基本信息
      class AssetUserBaseInfo < TencentCloud::Common::AbstractModel
        # @param MachineIp: 主机内网IP
        # @type MachineIp: String
        # @param MachineWanIp: 主机外网IP
        # @type MachineWanIp: String
        # @param MachineName: 主机名称
        # @type MachineName: String
        # @param OsInfo: 操作系统信息
        # @type OsInfo: String
        # @param Uuid: 主机Uuid
        # @type Uuid: String
        # @param Quuid: 主机Quuid
        # @type Quuid: String
        # @param Uid: 账号UID
        # @type Uid: String
        # @param Gid: 账号GID
        # @type Gid: String
        # @param Status: 账号状态：0-禁用；1-启用
        # @type Status: Integer
        # @param IsRoot: 是否有root权限：0-否；1是，999为空: 仅linux
        # @type IsRoot: Integer
        # @param LoginType: 登录方式：0-不可登录；1-只允许key登录；2只允许密码登录；3-允许key和密码，999为空，仅linux
        # @type LoginType: Integer
        # @param LastLoginTime: 上次登录时间
        # @type LastLoginTime: String
        # @param Name: 账号名称
        # @type Name: String
        # @param ProjectId: 主机业务组ID
        # @type ProjectId: Integer
        # @param UserType: 账号类型：0访客用户，1标准用户，2管理员用户 ,999为空,仅windows
        # @type UserType: Integer
        # @param IsDomain: 是否域账号：0否， 1是，2否, 999为空  仅windows
        # @type IsDomain: Integer
        # @param IsSudo: 是否有sudo权限，1是，0否, 999为空, 仅linux
        # @type IsSudo: Integer
        # @param IsSshLogin: 是否允许ssh登录，1是，0否, 999为空, 仅linux
        # @type IsSshLogin: Integer
        # @param HomePath: Home目录
        # @type HomePath: String
        # @param Shell: Shell路径  仅linux
        # @type Shell: String
        # @param ShellLoginStatus: 是否shell登录性，0不是；1是 仅linux
        # @type ShellLoginStatus: Integer
        # @param PasswordChangeTime: 密码修改时间
        # @type PasswordChangeTime: String
        # @param PasswordDueTime: 密码过期时间  仅linux
        # @type PasswordDueTime: String
        # @param PasswordLockDays: 密码锁定时间：单位天, -1为永不锁定 999为空，仅linux
        # @type PasswordLockDays: Integer
        # @param PasswordStatus: 密码状态：1正常 2即将过期 3已过期 4已锁定 999为空 仅linux
        # @type PasswordStatus: Integer
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param FirstTime: 首次采集时间
        # @type FirstTime: String
        # @param IsNew: 是否新增[0:否|1:是]
        # @type IsNew: Integer

        attr_accessor :MachineIp, :MachineWanIp, :MachineName, :OsInfo, :Uuid, :Quuid, :Uid, :Gid, :Status, :IsRoot, :LoginType, :LastLoginTime, :Name, :ProjectId, :UserType, :IsDomain, :IsSudo, :IsSshLogin, :HomePath, :Shell, :ShellLoginStatus, :PasswordChangeTime, :PasswordDueTime, :PasswordLockDays, :PasswordStatus, :UpdateTime, :FirstTime, :IsNew
        
        def initialize(machineip=nil, machinewanip=nil, machinename=nil, osinfo=nil, uuid=nil, quuid=nil, uid=nil, gid=nil, status=nil, isroot=nil, logintype=nil, lastlogintime=nil, name=nil, projectid=nil, usertype=nil, isdomain=nil, issudo=nil, issshlogin=nil, homepath=nil, shell=nil, shellloginstatus=nil, passwordchangetime=nil, passwordduetime=nil, passwordlockdays=nil, passwordstatus=nil, updatetime=nil, firsttime=nil, isnew=nil)
          @MachineIp = machineip
          @MachineWanIp = machinewanip
          @MachineName = machinename
          @OsInfo = osinfo
          @Uuid = uuid
          @Quuid = quuid
          @Uid = uid
          @Gid = gid
          @Status = status
          @IsRoot = isroot
          @LoginType = logintype
          @LastLoginTime = lastlogintime
          @Name = name
          @ProjectId = projectid
          @UserType = usertype
          @IsDomain = isdomain
          @IsSudo = issudo
          @IsSshLogin = issshlogin
          @HomePath = homepath
          @Shell = shell
          @ShellLoginStatus = shellloginstatus
          @PasswordChangeTime = passwordchangetime
          @PasswordDueTime = passwordduetime
          @PasswordLockDays = passwordlockdays
          @PasswordStatus = passwordstatus
          @UpdateTime = updatetime
          @FirstTime = firsttime
          @IsNew = isnew
        end

        def deserialize(params)
          @MachineIp = params['MachineIp']
          @MachineWanIp = params['MachineWanIp']
          @MachineName = params['MachineName']
          @OsInfo = params['OsInfo']
          @Uuid = params['Uuid']
          @Quuid = params['Quuid']
          @Uid = params['Uid']
          @Gid = params['Gid']
          @Status = params['Status']
          @IsRoot = params['IsRoot']
          @LoginType = params['LoginType']
          @LastLoginTime = params['LastLoginTime']
          @Name = params['Name']
          @ProjectId = params['ProjectId']
          @UserType = params['UserType']
          @IsDomain = params['IsDomain']
          @IsSudo = params['IsSudo']
          @IsSshLogin = params['IsSshLogin']
          @HomePath = params['HomePath']
          @Shell = params['Shell']
          @ShellLoginStatus = params['ShellLoginStatus']
          @PasswordChangeTime = params['PasswordChangeTime']
          @PasswordDueTime = params['PasswordDueTime']
          @PasswordLockDays = params['PasswordLockDays']
          @PasswordStatus = params['PasswordStatus']
          @UpdateTime = params['UpdateTime']
          @FirstTime = params['FirstTime']
          @IsNew = params['IsNew']
        end
      end

      # 资源管理账号基本信息
      class AssetUserDetail < TencentCloud::Common::AbstractModel
        # @param MachineIp: 主机内网IP
        # @type MachineIp: String
        # @param MachineName: 主机名称
        # @type MachineName: String
        # @param Uuid: 主机Uuid
        # @type Uuid: String
        # @param Quuid: 主机Quuid
        # @type Quuid: String
        # @param Uid: 账号UID
        # @type Uid: String
        # @param Gid: 账号GID
        # @type Gid: String
        # @param Status: 账号状态：0-禁用；1-启用
        # @type Status: Integer
        # @param IsRoot: 是否有root权限：0-否；1是，999为空: 仅linux
        # @type IsRoot: Integer
        # @param LastLoginTime: 上次登录时间
        # @type LastLoginTime: String
        # @param Name: 账号名称
        # @type Name: String
        # @param UserType: 账号类型：0访客用户，1标准用户，2管理员用户 ,999为空,仅windows
        # @type UserType: Integer
        # @param IsDomain: 是否域账号：0否， 1是, 999为空  仅windows
        # @type IsDomain: Integer
        # @param IsSshLogin: 是否允许ssh登录，1是，0否, 999为空, 仅linux
        # @type IsSshLogin: Integer
        # @param HomePath: Home目录
        # @type HomePath: String
        # @param Shell: Shell路径  仅linux
        # @type Shell: String
        # @param ShellLoginStatus: 是否shell登录性，0不是；1是 仅linux
        # @type ShellLoginStatus: Integer
        # @param PasswordChangeTime: 密码修改时间
        # @type PasswordChangeTime: String
        # @param PasswordDueTime: 密码过期时间  仅linux
        # @type PasswordDueTime: String
        # @param PasswordLockDays: 密码锁定时间：单位天, -1为永不锁定 999为空，仅linux
        # @type PasswordLockDays: Integer
        # @param Remark: 备注
        # @type Remark: String
        # @param GroupName: 用户组名
        # @type GroupName: String
        # @param DisableTime: 账号到期时间
        # @type DisableTime: String
        # @param LastLoginTerminal: 最近登录终端
        # @type LastLoginTerminal: String
        # @param LastLoginLoc: 最近登录位置
        # @type LastLoginLoc: String
        # @param LastLoginIp: 最近登录IP
        # @type LastLoginIp: String
        # @param PasswordWarnDays: 密码过期提醒：单位天
        # @type PasswordWarnDays: Integer
        # @param PasswordChangeType: 密码修改设置：0-不可修改，1-可修改
        # @type PasswordChangeType: Integer
        # @param Keys: 用户公钥列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Keys: Array
        # @param UpdateTime: 数据更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :MachineIp, :MachineName, :Uuid, :Quuid, :Uid, :Gid, :Status, :IsRoot, :LastLoginTime, :Name, :UserType, :IsDomain, :IsSshLogin, :HomePath, :Shell, :ShellLoginStatus, :PasswordChangeTime, :PasswordDueTime, :PasswordLockDays, :Remark, :GroupName, :DisableTime, :LastLoginTerminal, :LastLoginLoc, :LastLoginIp, :PasswordWarnDays, :PasswordChangeType, :Keys, :UpdateTime
        
        def initialize(machineip=nil, machinename=nil, uuid=nil, quuid=nil, uid=nil, gid=nil, status=nil, isroot=nil, lastlogintime=nil, name=nil, usertype=nil, isdomain=nil, issshlogin=nil, homepath=nil, shell=nil, shellloginstatus=nil, passwordchangetime=nil, passwordduetime=nil, passwordlockdays=nil, remark=nil, groupname=nil, disabletime=nil, lastloginterminal=nil, lastloginloc=nil, lastloginip=nil, passwordwarndays=nil, passwordchangetype=nil, keys=nil, updatetime=nil)
          @MachineIp = machineip
          @MachineName = machinename
          @Uuid = uuid
          @Quuid = quuid
          @Uid = uid
          @Gid = gid
          @Status = status
          @IsRoot = isroot
          @LastLoginTime = lastlogintime
          @Name = name
          @UserType = usertype
          @IsDomain = isdomain
          @IsSshLogin = issshlogin
          @HomePath = homepath
          @Shell = shell
          @ShellLoginStatus = shellloginstatus
          @PasswordChangeTime = passwordchangetime
          @PasswordDueTime = passwordduetime
          @PasswordLockDays = passwordlockdays
          @Remark = remark
          @GroupName = groupname
          @DisableTime = disabletime
          @LastLoginTerminal = lastloginterminal
          @LastLoginLoc = lastloginloc
          @LastLoginIp = lastloginip
          @PasswordWarnDays = passwordwarndays
          @PasswordChangeType = passwordchangetype
          @Keys = keys
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @MachineIp = params['MachineIp']
          @MachineName = params['MachineName']
          @Uuid = params['Uuid']
          @Quuid = params['Quuid']
          @Uid = params['Uid']
          @Gid = params['Gid']
          @Status = params['Status']
          @IsRoot = params['IsRoot']
          @LastLoginTime = params['LastLoginTime']
          @Name = params['Name']
          @UserType = params['UserType']
          @IsDomain = params['IsDomain']
          @IsSshLogin = params['IsSshLogin']
          @HomePath = params['HomePath']
          @Shell = params['Shell']
          @ShellLoginStatus = params['ShellLoginStatus']
          @PasswordChangeTime = params['PasswordChangeTime']
          @PasswordDueTime = params['PasswordDueTime']
          @PasswordLockDays = params['PasswordLockDays']
          @Remark = params['Remark']
          @GroupName = params['GroupName']
          @DisableTime = params['DisableTime']
          @LastLoginTerminal = params['LastLoginTerminal']
          @LastLoginLoc = params['LastLoginLoc']
          @LastLoginIp = params['LastLoginIp']
          @PasswordWarnDays = params['PasswordWarnDays']
          @PasswordChangeType = params['PasswordChangeType']
          unless params['Keys'].nil?
            @Keys = []
            params['Keys'].each do |i|
              assetuserkeyinfo_tmp = AssetUserKeyInfo.new
              assetuserkeyinfo_tmp.deserialize(i)
              @Keys << assetuserkeyinfo_tmp
            end
          end
          @UpdateTime = params['UpdateTime']
        end
      end

      # 资产管理账号key详情
      class AssetUserKeyInfo < TencentCloud::Common::AbstractModel
        # @param Value: 公钥值
        # @type Value: String
        # @param Comment: 公钥备注
        # @type Comment: String
        # @param EncryptType: 加密方式
        # @type EncryptType: String

        attr_accessor :Value, :Comment, :EncryptType
        
        def initialize(value=nil, comment=nil, encrypttype=nil)
          @Value = value
          @Comment = comment
          @EncryptType = encrypttype
        end

        def deserialize(params)
          @Value = params['Value']
          @Comment = params['Comment']
          @EncryptType = params['EncryptType']
        end
      end

      # 资源管理Web应用列表信息
      class AssetWebAppBaseInfo < TencentCloud::Common::AbstractModel
        # @param MachineIp: 主机内网IP
        # @type MachineIp: String
        # @param MachineWanIp: 主机外网IP
        # @type MachineWanIp: String
        # @param Quuid: 主机Quuid
        # @type Quuid: String
        # @param Uuid: 主机Uuid
        # @type Uuid: String
        # @param OsInfo: 操作系统信息
        # @type OsInfo: String
        # @param ProjectId: 主机业务组ID
        # @type ProjectId: Integer
        # @param Tag: 主机标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param Name: 应用名
        # @type Name: String
        # @param Version: 版本
        # @type Version: String
        # @param RootPath: 根路径
        # @type RootPath: String
        # @param ServiceType: 服务类型
        # @type ServiceType: String
        # @param Domain: 站点域名
        # @type Domain: String
        # @param VirtualPath: 虚拟路径
        # @type VirtualPath: String
        # @param PluginCount: 插件数
        # @type PluginCount: Integer
        # @param Id: 应用ID
        # @type Id: String
        # @param Desc: 应用描述
        # @type Desc: String
        # @param MachineName: 主机名称
        # @type MachineName: String
        # @param UpdateTime: 数据更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param FirstTime: 首次采集时间
        # @type FirstTime: String
        # @param IsNew: 是否新增[0:否|1:是]
        # @type IsNew: Integer

        attr_accessor :MachineIp, :MachineWanIp, :Quuid, :Uuid, :OsInfo, :ProjectId, :Tag, :Name, :Version, :RootPath, :ServiceType, :Domain, :VirtualPath, :PluginCount, :Id, :Desc, :MachineName, :UpdateTime, :FirstTime, :IsNew
        
        def initialize(machineip=nil, machinewanip=nil, quuid=nil, uuid=nil, osinfo=nil, projectid=nil, tag=nil, name=nil, version=nil, rootpath=nil, servicetype=nil, domain=nil, virtualpath=nil, plugincount=nil, id=nil, desc=nil, machinename=nil, updatetime=nil, firsttime=nil, isnew=nil)
          @MachineIp = machineip
          @MachineWanIp = machinewanip
          @Quuid = quuid
          @Uuid = uuid
          @OsInfo = osinfo
          @ProjectId = projectid
          @Tag = tag
          @Name = name
          @Version = version
          @RootPath = rootpath
          @ServiceType = servicetype
          @Domain = domain
          @VirtualPath = virtualpath
          @PluginCount = plugincount
          @Id = id
          @Desc = desc
          @MachineName = machinename
          @UpdateTime = updatetime
          @FirstTime = firsttime
          @IsNew = isnew
        end

        def deserialize(params)
          @MachineIp = params['MachineIp']
          @MachineWanIp = params['MachineWanIp']
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
          @OsInfo = params['OsInfo']
          @ProjectId = params['ProjectId']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              machinetag_tmp = MachineTag.new
              machinetag_tmp.deserialize(i)
              @Tag << machinetag_tmp
            end
          end
          @Name = params['Name']
          @Version = params['Version']
          @RootPath = params['RootPath']
          @ServiceType = params['ServiceType']
          @Domain = params['Domain']
          @VirtualPath = params['VirtualPath']
          @PluginCount = params['PluginCount']
          @Id = params['Id']
          @Desc = params['Desc']
          @MachineName = params['MachineName']
          @UpdateTime = params['UpdateTime']
          @FirstTime = params['FirstTime']
          @IsNew = params['IsNew']
        end
      end

      # 资产管理Web应用插件详情
      class AssetWebAppPluginInfo < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Desc: 描述
        # @type Desc: String
        # @param Version: 版本
        # @type Version: String
        # @param Link: 链接
        # @type Link: String

        attr_accessor :Name, :Desc, :Version, :Link
        
        def initialize(name=nil, desc=nil, version=nil, link=nil)
          @Name = name
          @Desc = desc
          @Version = version
          @Link = link
        end

        def deserialize(params)
          @Name = params['Name']
          @Desc = params['Desc']
          @Version = params['Version']
          @Link = params['Link']
        end
      end

      # 资源管理Web应用列表信息
      class AssetWebFrameBaseInfo < TencentCloud::Common::AbstractModel
        # @param MachineIp: 主机内网IP
        # @type MachineIp: String
        # @param MachineWanIp: 主机外网IP
        # @type MachineWanIp: String
        # @param Quuid: 主机Quuid
        # @type Quuid: String
        # @param Uuid: 主机Uuid
        # @type Uuid: String
        # @param OsInfo: 操作系统信息
        # @type OsInfo: String
        # @param ProjectId: 主机业务组ID
        # @type ProjectId: Integer
        # @param Tag: 主机标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param Name: 数据库名
        # @type Name: String
        # @param Version: 版本
        # @type Version: String
        # @param Lang: 语言
        # @type Lang: String
        # @param ServiceType: 服务类型
        # @type ServiceType: String
        # @param MachineName: 主机名称
        # @type MachineName: String
        # @param UpdateTime: 数据更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param FirstTime: 首次采集时间
        # @type FirstTime: String
        # @param IsNew: 是否新增[0:否|1:是]
        # @type IsNew: Integer

        attr_accessor :MachineIp, :MachineWanIp, :Quuid, :Uuid, :OsInfo, :ProjectId, :Tag, :Name, :Version, :Lang, :ServiceType, :MachineName, :UpdateTime, :FirstTime, :IsNew
        
        def initialize(machineip=nil, machinewanip=nil, quuid=nil, uuid=nil, osinfo=nil, projectid=nil, tag=nil, name=nil, version=nil, lang=nil, servicetype=nil, machinename=nil, updatetime=nil, firsttime=nil, isnew=nil)
          @MachineIp = machineip
          @MachineWanIp = machinewanip
          @Quuid = quuid
          @Uuid = uuid
          @OsInfo = osinfo
          @ProjectId = projectid
          @Tag = tag
          @Name = name
          @Version = version
          @Lang = lang
          @ServiceType = servicetype
          @MachineName = machinename
          @UpdateTime = updatetime
          @FirstTime = firsttime
          @IsNew = isnew
        end

        def deserialize(params)
          @MachineIp = params['MachineIp']
          @MachineWanIp = params['MachineWanIp']
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
          @OsInfo = params['OsInfo']
          @ProjectId = params['ProjectId']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              machinetag_tmp = MachineTag.new
              machinetag_tmp.deserialize(i)
              @Tag << machinetag_tmp
            end
          end
          @Name = params['Name']
          @Version = params['Version']
          @Lang = params['Lang']
          @ServiceType = params['ServiceType']
          @MachineName = params['MachineName']
          @UpdateTime = params['UpdateTime']
          @FirstTime = params['FirstTime']
          @IsNew = params['IsNew']
        end
      end

      # 资产管理Web站点列表信息
      class AssetWebLocationBaseInfo < TencentCloud::Common::AbstractModel
        # @param Uuid: 主机Uuid
        # @type Uuid: String
        # @param Quuid: 主机Quuid
        # @type Quuid: String
        # @param MachineIp: 内网IP
        # @type MachineIp: String
        # @param MachineWanIp: 外网IP
        # @type MachineWanIp: String
        # @param MachineName: 主机名称
        # @type MachineName: String
        # @param OsInfo: 操作系统
        # @type OsInfo: String
        # @param Name: 域名
        # @type Name: String
        # @param Port: 站点端口
        # @type Port: String
        # @param Proto: 站点协议
        # @type Proto: String
        # @param ServiceType: 服务类型
        # @type ServiceType: String
        # @param PathCount: 站点路经数
        # @type PathCount: Integer
        # @param User: 运行用户
        # @type User: String
        # @param MainPath: 主目录
        # @type MainPath: String
        # @param MainPathOwner: 主目录所有者
        # @type MainPathOwner: String
        # @param Permission: 拥有者权限
        # @type Permission: String
        # @param ProjectId: 主机业务组ID
        # @type ProjectId: Integer
        # @param Tag: 主机标签
        # @type Tag: Array
        # @param Id: Web站点Id
        # @type Id: String
        # @param UpdateTime: 数据更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param FirstTime: 首次采集时间
        # @type FirstTime: String
        # @param IsNew: 是否新增[0:否|1:是]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsNew: Integer

        attr_accessor :Uuid, :Quuid, :MachineIp, :MachineWanIp, :MachineName, :OsInfo, :Name, :Port, :Proto, :ServiceType, :PathCount, :User, :MainPath, :MainPathOwner, :Permission, :ProjectId, :Tag, :Id, :UpdateTime, :FirstTime, :IsNew
        
        def initialize(uuid=nil, quuid=nil, machineip=nil, machinewanip=nil, machinename=nil, osinfo=nil, name=nil, port=nil, proto=nil, servicetype=nil, pathcount=nil, user=nil, mainpath=nil, mainpathowner=nil, permission=nil, projectid=nil, tag=nil, id=nil, updatetime=nil, firsttime=nil, isnew=nil)
          @Uuid = uuid
          @Quuid = quuid
          @MachineIp = machineip
          @MachineWanIp = machinewanip
          @MachineName = machinename
          @OsInfo = osinfo
          @Name = name
          @Port = port
          @Proto = proto
          @ServiceType = servicetype
          @PathCount = pathcount
          @User = user
          @MainPath = mainpath
          @MainPathOwner = mainpathowner
          @Permission = permission
          @ProjectId = projectid
          @Tag = tag
          @Id = id
          @UpdateTime = updatetime
          @FirstTime = firsttime
          @IsNew = isnew
        end

        def deserialize(params)
          @Uuid = params['Uuid']
          @Quuid = params['Quuid']
          @MachineIp = params['MachineIp']
          @MachineWanIp = params['MachineWanIp']
          @MachineName = params['MachineName']
          @OsInfo = params['OsInfo']
          @Name = params['Name']
          @Port = params['Port']
          @Proto = params['Proto']
          @ServiceType = params['ServiceType']
          @PathCount = params['PathCount']
          @User = params['User']
          @MainPath = params['MainPath']
          @MainPathOwner = params['MainPathOwner']
          @Permission = params['Permission']
          @ProjectId = params['ProjectId']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              machinetag_tmp = MachineTag.new
              machinetag_tmp.deserialize(i)
              @Tag << machinetag_tmp
            end
          end
          @Id = params['Id']
          @UpdateTime = params['UpdateTime']
          @FirstTime = params['FirstTime']
          @IsNew = params['IsNew']
        end
      end

      # 资产管理Web站点列表信息
      class AssetWebLocationInfo < TencentCloud::Common::AbstractModel
        # @param Name: 域名
        # @type Name: String
        # @param Port: 站点端口
        # @type Port: String
        # @param Proto: 站点协议
        # @type Proto: String
        # @param ServiceType: 服务类型
        # @type ServiceType: String
        # @param SafeStatus: 安全模块状态：0未启用，1启用，999空，仅nginx
        # @type SafeStatus: Integer
        # @param User: 运行用户
        # @type User: String
        # @param MainPath: 主目录
        # @type MainPath: String
        # @param Command: 启动命令
        # @type Command: String
        # @param Ip: 绑定IP
        # @type Ip: String
        # @param UpdateTime: 数据更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :Name, :Port, :Proto, :ServiceType, :SafeStatus, :User, :MainPath, :Command, :Ip, :UpdateTime
        
        def initialize(name=nil, port=nil, proto=nil, servicetype=nil, safestatus=nil, user=nil, mainpath=nil, command=nil, ip=nil, updatetime=nil)
          @Name = name
          @Port = port
          @Proto = proto
          @ServiceType = servicetype
          @SafeStatus = safestatus
          @User = user
          @MainPath = mainpath
          @Command = command
          @Ip = ip
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Name = params['Name']
          @Port = params['Port']
          @Proto = params['Proto']
          @ServiceType = params['ServiceType']
          @SafeStatus = params['SafeStatus']
          @User = params['User']
          @MainPath = params['MainPath']
          @Command = params['Command']
          @Ip = params['Ip']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 资源管理Web服务列表信息
      class AssetWebServiceBaseInfo < TencentCloud::Common::AbstractModel
        # @param MachineIp: 主机内网IP
        # @type MachineIp: String
        # @param MachineWanIp: 主机外网IP
        # @type MachineWanIp: String
        # @param Quuid: 主机Quuid
        # @type Quuid: String
        # @param Uuid: 主机Uuid
        # @type Uuid: String
        # @param OsInfo: 操作系统信息
        # @type OsInfo: String
        # @param ProjectId: 主机业务组ID
        # @type ProjectId: Integer
        # @param Tag: 主机标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Array
        # @param Name: 数据库名
        # @type Name: String
        # @param Version: 版本
        # @type Version: String
        # @param BinPath: 二进制路径
        # @type BinPath: String
        # @param User: 启动用户
        # @type User: String
        # @param InstallPath: 安装路径
        # @type InstallPath: String
        # @param ConfigPath: 配置路径
        # @type ConfigPath: String
        # @param ProcessCount: 关联进程数
        # @type ProcessCount: Integer
        # @param Id: Web服务ID
        # @type Id: String
        # @param MachineName: 主机名称
        # @type MachineName: String
        # @param Desc: 描述
        # @type Desc: String
        # @param UpdateTime: 数据更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param FirstTime: 首次采集时间
        # @type FirstTime: String
        # @param IsNew: 是否新增[0:否|1:是]
        # @type IsNew: Integer

        attr_accessor :MachineIp, :MachineWanIp, :Quuid, :Uuid, :OsInfo, :ProjectId, :Tag, :Name, :Version, :BinPath, :User, :InstallPath, :ConfigPath, :ProcessCount, :Id, :MachineName, :Desc, :UpdateTime, :FirstTime, :IsNew
        
        def initialize(machineip=nil, machinewanip=nil, quuid=nil, uuid=nil, osinfo=nil, projectid=nil, tag=nil, name=nil, version=nil, binpath=nil, user=nil, installpath=nil, configpath=nil, processcount=nil, id=nil, machinename=nil, desc=nil, updatetime=nil, firsttime=nil, isnew=nil)
          @MachineIp = machineip
          @MachineWanIp = machinewanip
          @Quuid = quuid
          @Uuid = uuid
          @OsInfo = osinfo
          @ProjectId = projectid
          @Tag = tag
          @Name = name
          @Version = version
          @BinPath = binpath
          @User = user
          @InstallPath = installpath
          @ConfigPath = configpath
          @ProcessCount = processcount
          @Id = id
          @MachineName = machinename
          @Desc = desc
          @UpdateTime = updatetime
          @FirstTime = firsttime
          @IsNew = isnew
        end

        def deserialize(params)
          @MachineIp = params['MachineIp']
          @MachineWanIp = params['MachineWanIp']
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
          @OsInfo = params['OsInfo']
          @ProjectId = params['ProjectId']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              machinetag_tmp = MachineTag.new
              machinetag_tmp.deserialize(i)
              @Tag << machinetag_tmp
            end
          end
          @Name = params['Name']
          @Version = params['Version']
          @BinPath = params['BinPath']
          @User = params['User']
          @InstallPath = params['InstallPath']
          @ConfigPath = params['ConfigPath']
          @ProcessCount = params['ProcessCount']
          @Id = params['Id']
          @MachineName = params['MachineName']
          @Desc = params['Desc']
          @UpdateTime = params['UpdateTime']
          @FirstTime = params['FirstTime']
          @IsNew = params['IsNew']
        end
      end

      # 阻断白名单展示列表，包含了机器的信息
      class BanWhiteListDetail < TencentCloud::Common::AbstractModel
        # @param Id: 白名单ID
        # @type Id: String
        # @param Remark: 白名单别名
        # @type Remark: String
        # @param SrcIp: 阻断来源IP
        # @type SrcIp: String
        # @param ModifyTime: 修改白名单时间
        # @type ModifyTime: String
        # @param CreateTime: 创建白名单时间
        # @type CreateTime: String
        # @param IsGlobal: 白名单是否全局
        # @type IsGlobal: Boolean
        # @param Quuid: 机器的UUID
        # @type Quuid: String
        # @param Uuid: 主机安全程序的UUID
        # @type Uuid: String
        # @param MachineIp: 机器IP
        # @type MachineIp: String
        # @param MachineName: 机器名称
        # @type MachineName: String

        attr_accessor :Id, :Remark, :SrcIp, :ModifyTime, :CreateTime, :IsGlobal, :Quuid, :Uuid, :MachineIp, :MachineName
        
        def initialize(id=nil, remark=nil, srcip=nil, modifytime=nil, createtime=nil, isglobal=nil, quuid=nil, uuid=nil, machineip=nil, machinename=nil)
          @Id = id
          @Remark = remark
          @SrcIp = srcip
          @ModifyTime = modifytime
          @CreateTime = createtime
          @IsGlobal = isglobal
          @Quuid = quuid
          @Uuid = uuid
          @MachineIp = machineip
          @MachineName = machinename
        end

        def deserialize(params)
          @Id = params['Id']
          @Remark = params['Remark']
          @SrcIp = params['SrcIp']
          @ModifyTime = params['ModifyTime']
          @CreateTime = params['CreateTime']
          @IsGlobal = params['IsGlobal']
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
          @MachineIp = params['MachineIp']
          @MachineName = params['MachineName']
        end
      end

      # 基线基础信息
      class BaselineBasicInfo < TencentCloud::Common::AbstractModel
        # @param Name: 基线名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param BaselineId: 基线id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BaselineId: Integer
        # @param ParentId: 父级id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentId: Integer

        attr_accessor :Name, :BaselineId, :ParentId
        
        def initialize(name=nil, baselineid=nil, parentid=nil)
          @Name = name
          @BaselineId = baselineid
          @ParentId = parentid
        end

        def deserialize(params)
          @Name = params['Name']
          @BaselineId = params['BaselineId']
          @ParentId = params['ParentId']
        end
      end

      # 基线详情
      class BaselineDetail < TencentCloud::Common::AbstractModel
        # @param Description: 基线描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Level: 危害等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: Integer
        # @param PackageName: package名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageName: String
        # @param ParentId: 父级id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentId: Integer
        # @param Name: 基线名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String

        attr_accessor :Description, :Level, :PackageName, :ParentId, :Name
        
        def initialize(description=nil, level=nil, packagename=nil, parentid=nil, name=nil)
          @Description = description
          @Level = level
          @PackageName = packagename
          @ParentId = parentid
          @Name = name
        end

        def deserialize(params)
          @Description = params['Description']
          @Level = params['Level']
          @PackageName = params['PackageName']
          @ParentId = params['ParentId']
          @Name = params['Name']
        end
      end

      # 基线影响主机信息
      class BaselineEffectHost < TencentCloud::Common::AbstractModel
        # @param PassCount: 通过项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PassCount: Integer
        # @param FailCount: 风险项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailCount: Integer
        # @param FirstScanTime: 首次检测事件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstScanTime: String
        # @param LastScanTime: 最后检测时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastScanTime: String
        # @param Status: 风险项处理状态状态：0-未通过，1-通过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param Quuid: 主机Quuid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Quuid: String
        # @param HostIp: 主机IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostIp: String
        # @param AliasName: 主机别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AliasName: String
        # @param Uuid: 主机Uuid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uuid: String
        # @param MaxStatus: 检测中状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxStatus: Integer

        attr_accessor :PassCount, :FailCount, :FirstScanTime, :LastScanTime, :Status, :Quuid, :HostIp, :AliasName, :Uuid, :MaxStatus
        
        def initialize(passcount=nil, failcount=nil, firstscantime=nil, lastscantime=nil, status=nil, quuid=nil, hostip=nil, aliasname=nil, uuid=nil, maxstatus=nil)
          @PassCount = passcount
          @FailCount = failcount
          @FirstScanTime = firstscantime
          @LastScanTime = lastscantime
          @Status = status
          @Quuid = quuid
          @HostIp = hostip
          @AliasName = aliasname
          @Uuid = uuid
          @MaxStatus = maxstatus
        end

        def deserialize(params)
          @PassCount = params['PassCount']
          @FailCount = params['FailCount']
          @FirstScanTime = params['FirstScanTime']
          @LastScanTime = params['LastScanTime']
          @Status = params['Status']
          @Quuid = params['Quuid']
          @HostIp = params['HostIp']
          @AliasName = params['AliasName']
          @Uuid = params['Uuid']
          @MaxStatus = params['MaxStatus']
        end
      end

      # 服务器风险Top的主机信息
      class BaselineEventLevelInfo < TencentCloud::Common::AbstractModel
        # @param EventLevel: 危害等级：1-低危；2-中危；3-高危；4-严重
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventLevel: Integer
        # @param EventCount: 漏洞数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventCount: Integer

        attr_accessor :EventLevel, :EventCount
        
        def initialize(eventlevel=nil, eventcount=nil)
          @EventLevel = eventlevel
          @EventCount = eventcount
        end

        def deserialize(params)
          @EventLevel = params['EventLevel']
          @EventCount = params['EventCount']
        end
      end

      # 基线影响服务器列表数据
      class BaselineHostTopList < TencentCloud::Common::AbstractModel
        # @param EventLevelList: 事件等级与次数列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventLevelList: Array
        # @param HostName: 主机名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostName: String
        # @param Quuid: 主机Quuid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Quuid: String
        # @param Score: 计算权重的分数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Integer

        attr_accessor :EventLevelList, :HostName, :Quuid, :Score
        
        def initialize(eventlevellist=nil, hostname=nil, quuid=nil, score=nil)
          @EventLevelList = eventlevellist
          @HostName = hostname
          @Quuid = quuid
          @Score = score
        end

        def deserialize(params)
          unless params['EventLevelList'].nil?
            @EventLevelList = []
            params['EventLevelList'].each do |i|
              baselineeventlevelinfo_tmp = BaselineEventLevelInfo.new
              baselineeventlevelinfo_tmp.deserialize(i)
              @EventLevelList << baselineeventlevelinfo_tmp
            end
          end
          @HostName = params['HostName']
          @Quuid = params['Quuid']
          @Score = params['Score']
        end
      end

      # 基线信息
      class BaselineInfo < TencentCloud::Common::AbstractModel
        # @param Name: 基线名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Level: 危害等级：1-低危；2-中危；3-高危；4-严重
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: Integer
        # @param RuleCount: 检测项数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleCount: Integer
        # @param HostCount: 影响服务器数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostCount: Integer
        # @param Status: 通过状态:0:未通过,1:已通过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param CategoryId: 基线id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CategoryId: Integer
        # @param LastScanTime: 最后检测时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastScanTime: String
        # @param MaxStatus: 检测中状态: 5
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxStatus: Integer
        # @param BaselineFailCount: 基线风险项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BaselineFailCount: Integer

        attr_accessor :Name, :Level, :RuleCount, :HostCount, :Status, :CategoryId, :LastScanTime, :MaxStatus, :BaselineFailCount
        
        def initialize(name=nil, level=nil, rulecount=nil, hostcount=nil, status=nil, categoryid=nil, lastscantime=nil, maxstatus=nil, baselinefailcount=nil)
          @Name = name
          @Level = level
          @RuleCount = rulecount
          @HostCount = hostcount
          @Status = status
          @CategoryId = categoryid
          @LastScanTime = lastscantime
          @MaxStatus = maxstatus
          @BaselineFailCount = baselinefailcount
        end

        def deserialize(params)
          @Name = params['Name']
          @Level = params['Level']
          @RuleCount = params['RuleCount']
          @HostCount = params['HostCount']
          @Status = params['Status']
          @CategoryId = params['CategoryId']
          @LastScanTime = params['LastScanTime']
          @MaxStatus = params['MaxStatus']
          @BaselineFailCount = params['BaselineFailCount']
        end
      end

      # 基线检测信息
      class BaselineRuleInfo < TencentCloud::Common::AbstractModel
        # @param RuleName: 检测项名称
        # @type RuleName: String
        # @param Description: 检测项描述
        # @type Description: String
        # @param FixMessage: 修复建议
        # @type FixMessage: String
        # @param Level: 危害等级
        # @type Level: Integer
        # @param Status: 状态
        # @type Status: Integer
        # @param RuleId: 检测项id
        # @type RuleId: Integer
        # @param LastScanAt: 最后检测时间
        # @type LastScanAt: String
        # @param RuleRemark: 具体原因说明
        # @type RuleRemark: String
        # @param Uuid: 唯一Uuid
        # @type Uuid: String
        # @param EventId: 唯一事件ID
        # @type EventId: Integer

        attr_accessor :RuleName, :Description, :FixMessage, :Level, :Status, :RuleId, :LastScanAt, :RuleRemark, :Uuid, :EventId
        
        def initialize(rulename=nil, description=nil, fixmessage=nil, level=nil, status=nil, ruleid=nil, lastscanat=nil, ruleremark=nil, uuid=nil, eventid=nil)
          @RuleName = rulename
          @Description = description
          @FixMessage = fixmessage
          @Level = level
          @Status = status
          @RuleId = ruleid
          @LastScanAt = lastscanat
          @RuleRemark = ruleremark
          @Uuid = uuid
          @EventId = eventid
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          @Description = params['Description']
          @FixMessage = params['FixMessage']
          @Level = params['Level']
          @Status = params['Status']
          @RuleId = params['RuleId']
          @LastScanAt = params['LastScanAt']
          @RuleRemark = params['RuleRemark']
          @Uuid = params['Uuid']
          @EventId = params['EventId']
        end
      end

      # 基线检测项TOP信息
      class BaselineRuleTopInfo < TencentCloud::Common::AbstractModel
        # @param RuleName: 基线检测项名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleName: String
        # @param Level: 检测项危害等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: Integer
        # @param EventCount: 事件总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventCount: Integer
        # @param RuleId: 检测项id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: Integer

        attr_accessor :RuleName, :Level, :EventCount, :RuleId
        
        def initialize(rulename=nil, level=nil, eventcount=nil, ruleid=nil)
          @RuleName = rulename
          @Level = level
          @EventCount = eventcount
          @RuleId = ruleid
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          @Level = params['Level']
          @EventCount = params['EventCount']
          @RuleId = params['RuleId']
        end
      end

      # 高危命令数据
      class BashEvent < TencentCloud::Common::AbstractModel
        # @param Id: 数据ID
        # @type Id: Integer
        # @param Uuid: 云镜ID
        # @type Uuid: String
        # @param Quuid: 主机ID
        # @type Quuid: String
        # @param Hostip: 主机内网IP
        # @type Hostip: String
        # @param User: 执行用户名
        # @type User: String
        # @param Platform: 平台类型
        # @type Platform: Integer
        # @param BashCmd: 执行命令
        # @type BashCmd: String
        # @param RuleId: 规则ID
        # @type RuleId: Integer
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param RuleLevel: 规则等级：1-高 2-中 3-低
        # @type RuleLevel: Integer
        # @param Status: 处理状态： 0 = 待处理 1= 已处理, 2 = 已加白， 3 = 已忽略
        # @type Status: Integer
        # @param CreateTime: 发生时间
        # @type CreateTime: String
        # @param MachineName: 主机名
        # @type MachineName: String
        # @param DetectBy: 0: bash日志 1: 实时监控(雷霆版)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DetectBy: Integer
        # @param Pid: 进程id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pid: String
        # @param Exe: 进程名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Exe: String
        # @param ModifyTime: 处理时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyTime: String
        # @param RuleCategory: 规则类别  0=系统规则，1=用户规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleCategory: Integer
        # @param RegexBashCmd: 自动生成的正则表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegexBashCmd: String

        attr_accessor :Id, :Uuid, :Quuid, :Hostip, :User, :Platform, :BashCmd, :RuleId, :RuleName, :RuleLevel, :Status, :CreateTime, :MachineName, :DetectBy, :Pid, :Exe, :ModifyTime, :RuleCategory, :RegexBashCmd
        
        def initialize(id=nil, uuid=nil, quuid=nil, hostip=nil, user=nil, platform=nil, bashcmd=nil, ruleid=nil, rulename=nil, rulelevel=nil, status=nil, createtime=nil, machinename=nil, detectby=nil, pid=nil, exe=nil, modifytime=nil, rulecategory=nil, regexbashcmd=nil)
          @Id = id
          @Uuid = uuid
          @Quuid = quuid
          @Hostip = hostip
          @User = user
          @Platform = platform
          @BashCmd = bashcmd
          @RuleId = ruleid
          @RuleName = rulename
          @RuleLevel = rulelevel
          @Status = status
          @CreateTime = createtime
          @MachineName = machinename
          @DetectBy = detectby
          @Pid = pid
          @Exe = exe
          @ModifyTime = modifytime
          @RuleCategory = rulecategory
          @RegexBashCmd = regexbashcmd
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuid = params['Uuid']
          @Quuid = params['Quuid']
          @Hostip = params['Hostip']
          @User = params['User']
          @Platform = params['Platform']
          @BashCmd = params['BashCmd']
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @RuleLevel = params['RuleLevel']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @MachineName = params['MachineName']
          @DetectBy = params['DetectBy']
          @Pid = params['Pid']
          @Exe = params['Exe']
          @ModifyTime = params['ModifyTime']
          @RuleCategory = params['RuleCategory']
          @RegexBashCmd = params['RegexBashCmd']
        end
      end

      # 高危命令规则
      class BashRule < TencentCloud::Common::AbstractModel
        # @param Id: 规则ID
        # @type Id: Integer
        # @param Uuid: 客户端ID
        # @type Uuid: String
        # @param Name: 规则名称
        # @type Name: String
        # @param Level: 危险等级(0 ：无 1: 高危 2:中危 3: 低危)
        # @type Level: Integer
        # @param Rule: 正则表达式
        # @type Rule: String
        # @param Decription: 规则描述
        # @type Decription: String
        # @param Operator: 操作人
        # @type Operator: String
        # @param IsGlobal: 是否全局规则
        # @type IsGlobal: Integer
        # @param Status: 状态 (0: 有效 1: 无效)
        # @type Status: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String
        # @param Hostip: 主机IP
        # @type Hostip: String
        # @param Uuids: 生效服务器的uuid数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uuids: Array
        # @param White: 0=黑名单 1=白名单
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type White: Integer
        # @param DealOldEvents: 是否处理之前的事件 0: 不处理 1:处理
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealOldEvents: Integer

        attr_accessor :Id, :Uuid, :Name, :Level, :Rule, :Decription, :Operator, :IsGlobal, :Status, :CreateTime, :ModifyTime, :Hostip, :Uuids, :White, :DealOldEvents
        
        def initialize(id=nil, uuid=nil, name=nil, level=nil, rule=nil, decription=nil, operator=nil, isglobal=nil, status=nil, createtime=nil, modifytime=nil, hostip=nil, uuids=nil, white=nil, dealoldevents=nil)
          @Id = id
          @Uuid = uuid
          @Name = name
          @Level = level
          @Rule = rule
          @Decription = decription
          @Operator = operator
          @IsGlobal = isglobal
          @Status = status
          @CreateTime = createtime
          @ModifyTime = modifytime
          @Hostip = hostip
          @Uuids = uuids
          @White = white
          @DealOldEvents = dealoldevents
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuid = params['Uuid']
          @Name = params['Name']
          @Level = params['Level']
          @Rule = params['Rule']
          @Decription = params['Decription']
          @Operator = params['Operator']
          @IsGlobal = params['IsGlobal']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @Hostip = params['Hostip']
          @Uuids = params['Uuids']
          @White = params['White']
          @DealOldEvents = params['DealOldEvents']
        end
      end

      # 密码破解列表实体
      class BruteAttackInfo < TencentCloud::Common::AbstractModel
        # @param Id: 唯一Id
        # @type Id: Integer
        # @param Uuid: 云镜客户端唯一标识UUID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uuid: String
        # @param MachineIp: 主机ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MachineIp: String
        # @param MachineName: 主机名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MachineName: String
        # @param UserName: 用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param SrcIp: 来源ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SrcIp: String
        # @param Status: SUCCESS：破解成功；FAILED：破解失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Country: 国家id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Country: Integer
        # @param City: 城市id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type City: Integer
        # @param Province: 省份id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Province: Integer
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param BanStatus: 阻断状态：1-阻断成功；非1-阻断失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BanStatus: Integer
        # @param EventType: 事件类型：200-暴力破解事件，300-暴力破解成功事件（页面展示），400-暴力破解不存在的帐号事件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventType: Integer
        # @param Count: 发生次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer
        # @param Quuid: 机器UUID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Quuid: String
        # @param IsProVersion: 是否为专业版（true/false）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsProVersion: Boolean
        # @param Protocol: 被攻击的服务的用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param Port: 端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param ModifyTime: 最近攻击时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyTime: String
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param DataStatus: 0：待处理，1：忽略，5：已处理，6：加入白名单
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataStatus: Integer

        attr_accessor :Id, :Uuid, :MachineIp, :MachineName, :UserName, :SrcIp, :Status, :Country, :City, :Province, :CreateTime, :BanStatus, :EventType, :Count, :Quuid, :IsProVersion, :Protocol, :Port, :ModifyTime, :InstanceId, :DataStatus
        
        def initialize(id=nil, uuid=nil, machineip=nil, machinename=nil, username=nil, srcip=nil, status=nil, country=nil, city=nil, province=nil, createtime=nil, banstatus=nil, eventtype=nil, count=nil, quuid=nil, isproversion=nil, protocol=nil, port=nil, modifytime=nil, instanceid=nil, datastatus=nil)
          @Id = id
          @Uuid = uuid
          @MachineIp = machineip
          @MachineName = machinename
          @UserName = username
          @SrcIp = srcip
          @Status = status
          @Country = country
          @City = city
          @Province = province
          @CreateTime = createtime
          @BanStatus = banstatus
          @EventType = eventtype
          @Count = count
          @Quuid = quuid
          @IsProVersion = isproversion
          @Protocol = protocol
          @Port = port
          @ModifyTime = modifytime
          @InstanceId = instanceid
          @DataStatus = datastatus
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuid = params['Uuid']
          @MachineIp = params['MachineIp']
          @MachineName = params['MachineName']
          @UserName = params['UserName']
          @SrcIp = params['SrcIp']
          @Status = params['Status']
          @Country = params['Country']
          @City = params['City']
          @Province = params['Province']
          @CreateTime = params['CreateTime']
          @BanStatus = params['BanStatus']
          @EventType = params['EventType']
          @Count = params['Count']
          @Quuid = params['Quuid']
          @IsProVersion = params['IsProVersion']
          @Protocol = params['Protocol']
          @Port = params['Port']
          @ModifyTime = params['ModifyTime']
          @InstanceId = params['InstanceId']
          @DataStatus = params['DataStatus']
        end
      end

      # 标准阻断模式规则
      class BruteAttackRule < TencentCloud::Common::AbstractModel
        # @param TimeRange: 爆破事件发生的时间范围，单位：秒
        # @type TimeRange: Integer
        # @param LoginFailTimes: 爆破事件失败次数
        # @type LoginFailTimes: Integer

        attr_accessor :TimeRange, :LoginFailTimes
        
        def initialize(timerange=nil, loginfailtimes=nil)
          @TimeRange = timerange
          @LoginFailTimes = loginfailtimes
        end

        def deserialize(params)
          @TimeRange = params['TimeRange']
          @LoginFailTimes = params['LoginFailTimes']
        end
      end

      # 暴力破解判定规则列表
      class BruteAttackRuleList < TencentCloud::Common::AbstractModel
        # @param TimeRange: 爆破事件发生的时间范围，单位：秒
        # @type TimeRange: Integer
        # @param LoginFailTimes: 爆破事件失败次数
        # @type LoginFailTimes: Integer
        # @param Enable: 规则是否为空，为空则填充默认规则
        # @type Enable: Boolean
        # @param TimeRangeDefault: 爆破事件发生的时间范围，单位：秒（默认规则）
        # @type TimeRangeDefault: Integer
        # @param LoginFailTimesDefault: 爆破事件失败次数（默认规则）
        # @type LoginFailTimesDefault: Integer

        attr_accessor :TimeRange, :LoginFailTimes, :Enable, :TimeRangeDefault, :LoginFailTimesDefault
        
        def initialize(timerange=nil, loginfailtimes=nil, enable=nil, timerangedefault=nil, loginfailtimesdefault=nil)
          @TimeRange = timerange
          @LoginFailTimes = loginfailtimes
          @Enable = enable
          @TimeRangeDefault = timerangedefault
          @LoginFailTimesDefault = loginfailtimesdefault
        end

        def deserialize(params)
          @TimeRange = params['TimeRange']
          @LoginFailTimes = params['LoginFailTimes']
          @Enable = params['Enable']
          @TimeRangeDefault = params['TimeRangeDefault']
          @LoginFailTimesDefault = params['LoginFailTimesDefault']
        end
      end

      # CancelIgnoreVul请求参数结构体
      class CancelIgnoreVulRequest < TencentCloud::Common::AbstractModel
        # @param EventIds: 漏洞事件id串，多个用英文逗号分隔
        # @type EventIds: String

        attr_accessor :EventIds
        
        def initialize(eventids=nil)
          @EventIds = eventids
        end

        def deserialize(params)
          @EventIds = params['EventIds']
        end
      end

      # CancelIgnoreVul返回参数结构体
      class CancelIgnoreVulResponse < TencentCloud::Common::AbstractModel
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

      # ChangeRuleEventsIgnoreStatus请求参数结构体
      class ChangeRuleEventsIgnoreStatusRequest < TencentCloud::Common::AbstractModel
        # @param IgnoreStatus: 忽略状态 0:取消忽略 ； 1:忽略
        # @type IgnoreStatus: Integer
        # @param RuleIdList: 检测项id数组
        # @type RuleIdList: Array
        # @param EventIdList: 事件id数组
        # @type EventIdList: Array

        attr_accessor :IgnoreStatus, :RuleIdList, :EventIdList
        
        def initialize(ignorestatus=nil, ruleidlist=nil, eventidlist=nil)
          @IgnoreStatus = ignorestatus
          @RuleIdList = ruleidlist
          @EventIdList = eventidlist
        end

        def deserialize(params)
          @IgnoreStatus = params['IgnoreStatus']
          @RuleIdList = params['RuleIdList']
          @EventIdList = params['EventIdList']
        end
      end

      # ChangeRuleEventsIgnoreStatus返回参数结构体
      class ChangeRuleEventsIgnoreStatusResponse < TencentCloud::Common::AbstractModel
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

      # CheckBashRuleParams请求参数结构体
      class CheckBashRuleParamsRequest < TencentCloud::Common::AbstractModel
        # @param CheckField: 校验内容 Name或Rule ，两个都要校验时逗号分割
        # @type CheckField: String
        # @param EventId: 在事件列表中新增白名时需要提交事件ID
        # @type EventId: Integer
        # @param Name: 填入的规则名称
        # @type Name: String
        # @param Rule: 用户填入的正则表达式："正则表达式" 需与 "提交EventId对应的命令内容" 相匹配
        # @type Rule: String
        # @param Id: 编辑时传的规则id
        # @type Id: Integer

        attr_accessor :CheckField, :EventId, :Name, :Rule, :Id
        
        def initialize(checkfield=nil, eventid=nil, name=nil, rule=nil, id=nil)
          @CheckField = checkfield
          @EventId = eventid
          @Name = name
          @Rule = rule
          @Id = id
        end

        def deserialize(params)
          @CheckField = params['CheckField']
          @EventId = params['EventId']
          @Name = params['Name']
          @Rule = params['Rule']
          @Id = params['Id']
        end
      end

      # CheckBashRuleParams返回参数结构体
      class CheckBashRuleParamsResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 0=校验通过  1=规则名称校验不通过 2=正则表达式校验不通过
        # @type ErrCode: Integer
        # @param ErrMsg: 校验信息
        # @type ErrMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMsg, :RequestId
        
        def initialize(errcode=nil, errmsg=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMsg = errmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMsg = params['ErrMsg']
          @RequestId = params['RequestId']
        end
      end

      # 组件统计数据。
      class ComponentStatistics < TencentCloud::Common::AbstractModel
        # @param Id: 组件ID。
        # @type Id: Integer
        # @param MachineNum: 主机数量。
        # @type MachineNum: Integer
        # @param ComponentName: 组件名称。
        # @type ComponentName: String
        # @param ComponentType: 组件类型。
        # <li>WEB：Web组件</li>
        # <li>SYSTEM：系统组件</li>
        # @type ComponentType: String
        # @param Description: 组件描述。
        # @type Description: String

        attr_accessor :Id, :MachineNum, :ComponentName, :ComponentType, :Description
        
        def initialize(id=nil, machinenum=nil, componentname=nil, componenttype=nil, description=nil)
          @Id = id
          @MachineNum = machinenum
          @ComponentName = componentname
          @ComponentType = componenttype
          @Description = description
        end

        def deserialize(params)
          @Id = params['Id']
          @MachineNum = params['MachineNum']
          @ComponentName = params['ComponentName']
          @ComponentType = params['ComponentType']
          @Description = params['Description']
        end
      end

      # CreateBaselineStrategy请求参数结构体
      class CreateBaselineStrategyRequest < TencentCloud::Common::AbstractModel
        # @param StrategyName: 策略名称
        # @type StrategyName: String
        # @param ScanCycle: 检测周期, 表示每隔多少天进行检测.示例: 2, 表示每2天进行检测一次.
        # @type ScanCycle: Integer
        # @param ScanAt: 定期检测时间，该时间下发扫描. 示例:“22:00”, 表示在22:00下发检测
        # @type ScanAt: String
        # @param CategoryIds: 该策略下选择的基线id数组. 示例: [1,3,5,7]
        # @type CategoryIds: Array
        # @param IsGlobal: 扫描范围是否全部服务器, 1:是  0:否, 为1则为全部专业版主机
        # @type IsGlobal: Integer
        # @param MachineType: 云主机类型：
        # CVM：虚拟主机
        # BM：裸金属
        # ECM：边缘计算主机
        # LH：轻量应用服务器
        # Other：混合云机器
        # @type MachineType: String
        # @param RegionCode: 主机地域. 示例: "ap-guangzhou"
        # @type RegionCode: String
        # @param Quuids: 主机id数组. 示例: ["quuid1","quuid2"]
        # @type Quuids: Array

        attr_accessor :StrategyName, :ScanCycle, :ScanAt, :CategoryIds, :IsGlobal, :MachineType, :RegionCode, :Quuids
        
        def initialize(strategyname=nil, scancycle=nil, scanat=nil, categoryids=nil, isglobal=nil, machinetype=nil, regioncode=nil, quuids=nil)
          @StrategyName = strategyname
          @ScanCycle = scancycle
          @ScanAt = scanat
          @CategoryIds = categoryids
          @IsGlobal = isglobal
          @MachineType = machinetype
          @RegionCode = regioncode
          @Quuids = quuids
        end

        def deserialize(params)
          @StrategyName = params['StrategyName']
          @ScanCycle = params['ScanCycle']
          @ScanAt = params['ScanAt']
          @CategoryIds = params['CategoryIds']
          @IsGlobal = params['IsGlobal']
          @MachineType = params['MachineType']
          @RegionCode = params['RegionCode']
          @Quuids = params['Quuids']
        end
      end

      # CreateBaselineStrategy返回参数结构体
      class CreateBaselineStrategyResponse < TencentCloud::Common::AbstractModel
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

      # CreateEmergencyVulScan请求参数结构体
      class CreateEmergencyVulScanRequest < TencentCloud::Common::AbstractModel
        # @param VulId: 漏洞id
        # @type VulId: Integer
        # @param Uuids: 自选服务器时生效，主机uuid的string数组
        # @type Uuids: Array

        attr_accessor :VulId, :Uuids
        
        def initialize(vulid=nil, uuids=nil)
          @VulId = vulid
          @Uuids = uuids
        end

        def deserialize(params)
          @VulId = params['VulId']
          @Uuids = params['Uuids']
        end
      end

      # CreateEmergencyVulScan返回参数结构体
      class CreateEmergencyVulScanResponse < TencentCloud::Common::AbstractModel
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

      # CreateLicenseOrder请求参数结构体
      class CreateLicenseOrderRequest < TencentCloud::Common::AbstractModel
        # @param Tags: 标签数组, 空则表示不需要绑定标签
        # @type Tags: Array
        # @param LicenseType: 授权类型, 0 专业版-按量计费, 1专业版-包年包月 , 2 旗舰版-包年包月
        # 默认为0
        # @type LicenseType: Integer
        # @param LicenseNum: 授权数量 , 需要购买的数量.
        # 默认为1
        # @type LicenseNum: Integer
        # @param RegionId: 购买订单地域,这里仅支持 1 广州,9 新加坡. 推荐选择广州. 新加坡地域为白名单用户购买.
        # 默认为1
        # @type RegionId: Integer
        # @param ProjectId: 项目ID .
        # 默认为0
        # @type ProjectId: Integer
        # @param TimeSpan: 购买时间长度,默认1 , 可选值为1,2,3,4,5,6,7,8,9,10,11,12,24,36
        # 该参数仅包年包月生效
        # @type TimeSpan: Integer
        # @param AutoRenewFlag: 是否自动续费, 默认不自动续费.
        # 该参数仅包年包月生效
        # @type AutoRenewFlag: Boolean
        # @param AutoProtectOpenConfig: 自动防护授权配置值, 不空则表示开启
        # @type AutoProtectOpenConfig: String

        attr_accessor :Tags, :LicenseType, :LicenseNum, :RegionId, :ProjectId, :TimeSpan, :AutoRenewFlag, :AutoProtectOpenConfig
        
        def initialize(tags=nil, licensetype=nil, licensenum=nil, regionid=nil, projectid=nil, timespan=nil, autorenewflag=nil, autoprotectopenconfig=nil)
          @Tags = tags
          @LicenseType = licensetype
          @LicenseNum = licensenum
          @RegionId = regionid
          @ProjectId = projectid
          @TimeSpan = timespan
          @AutoRenewFlag = autorenewflag
          @AutoProtectOpenConfig = autoprotectopenconfig
        end

        def deserialize(params)
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tags_tmp = Tags.new
              tags_tmp.deserialize(i)
              @Tags << tags_tmp
            end
          end
          @LicenseType = params['LicenseType']
          @LicenseNum = params['LicenseNum']
          @RegionId = params['RegionId']
          @ProjectId = params['ProjectId']
          @TimeSpan = params['TimeSpan']
          @AutoRenewFlag = params['AutoRenewFlag']
          @AutoProtectOpenConfig = params['AutoProtectOpenConfig']
        end
      end

      # CreateLicenseOrder返回参数结构体
      class CreateLicenseOrderResponse < TencentCloud::Common::AbstractModel
        # @param DealNames: 订单号列表
        # @type DealNames: Array
        # @param ResourceIds: 资源ID列表,预付费订单该字段空值
        # @type ResourceIds: Array
        # @param BigDealId: 大订单号 , 后付费该字段空值
        # @type BigDealId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealNames, :ResourceIds, :BigDealId, :RequestId
        
        def initialize(dealnames=nil, resourceids=nil, bigdealid=nil, requestid=nil)
          @DealNames = dealnames
          @ResourceIds = resourceids
          @BigDealId = bigdealid
          @RequestId = requestid
        end

        def deserialize(params)
          @DealNames = params['DealNames']
          @ResourceIds = params['ResourceIds']
          @BigDealId = params['BigDealId']
          @RequestId = params['RequestId']
        end
      end

      # CreateProtectServer请求参数结构体
      class CreateProtectServerRequest < TencentCloud::Common::AbstractModel
        # @param ProtectDir: 防护目录地址
        # @type ProtectDir: String
        # @param ProtectHostConfig: 防护机器 信息
        # @type ProtectHostConfig: Array

        attr_accessor :ProtectDir, :ProtectHostConfig
        
        def initialize(protectdir=nil, protecthostconfig=nil)
          @ProtectDir = protectdir
          @ProtectHostConfig = protecthostconfig
        end

        def deserialize(params)
          @ProtectDir = params['ProtectDir']
          unless params['ProtectHostConfig'].nil?
            @ProtectHostConfig = []
            params['ProtectHostConfig'].each do |i|
              protecthostconfig_tmp = ProtectHostConfig.new
              protecthostconfig_tmp.deserialize(i)
              @ProtectHostConfig << protecthostconfig_tmp
            end
          end
        end
      end

      # CreateProtectServer返回参数结构体
      class CreateProtectServerResponse < TencentCloud::Common::AbstractModel
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

      # CreateScanMalwareSetting请求参数结构体
      class CreateScanMalwareSettingRequest < TencentCloud::Common::AbstractModel
        # @param ScanPattern: 扫描模式 0 全盘扫描, 1 快速扫描
        # @type ScanPattern: Integer
        # @param HostType: 服务器分类：1:专业版服务器；2:自选服务器
        # @type HostType: Integer
        # @param QuuidList: 自选服务器时生效，主机quuid的string数组
        # @type QuuidList: Array
        # @param TimeoutPeriod: 超时时间单位 秒 默认3600 秒
        # @type TimeoutPeriod: Integer
        # @param EngineType: 1标准模式（只报严重、高危）、2增强模式（报严重、高危、中危）、3严格模式（报严重、高、中、低、提示）
        # @type EngineType: Integer

        attr_accessor :ScanPattern, :HostType, :QuuidList, :TimeoutPeriod, :EngineType
        
        def initialize(scanpattern=nil, hosttype=nil, quuidlist=nil, timeoutperiod=nil, enginetype=nil)
          @ScanPattern = scanpattern
          @HostType = hosttype
          @QuuidList = quuidlist
          @TimeoutPeriod = timeoutperiod
          @EngineType = enginetype
        end

        def deserialize(params)
          @ScanPattern = params['ScanPattern']
          @HostType = params['HostType']
          @QuuidList = params['QuuidList']
          @TimeoutPeriod = params['TimeoutPeriod']
          @EngineType = params['EngineType']
        end
      end

      # CreateScanMalwareSetting返回参数结构体
      class CreateScanMalwareSettingResponse < TencentCloud::Common::AbstractModel
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

      # CreateSearchLog请求参数结构体
      class CreateSearchLogRequest < TencentCloud::Common::AbstractModel
        # @param SearchContent: 搜索内容
        # @type SearchContent: String

        attr_accessor :SearchContent
        
        def initialize(searchcontent=nil)
          @SearchContent = searchcontent
        end

        def deserialize(params)
          @SearchContent = params['SearchContent']
        end
      end

      # CreateSearchLog返回参数结构体
      class CreateSearchLogResponse < TencentCloud::Common::AbstractModel
        # @param Status: 0：成功，非0：失败
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

      # CreateSearchTemplate请求参数结构体
      class CreateSearchTemplateRequest < TencentCloud::Common::AbstractModel
        # @param SearchTemplate: 搜索模板
        # @type SearchTemplate: :class:`Tencentcloud::Cwp.v20180228.models.SearchTemplate`

        attr_accessor :SearchTemplate
        
        def initialize(searchtemplate=nil)
          @SearchTemplate = searchtemplate
        end

        def deserialize(params)
          unless params['SearchTemplate'].nil?
            @SearchTemplate = SearchTemplate.new
            @SearchTemplate.deserialize(params['SearchTemplate'])
          end
        end
      end

      # CreateSearchTemplate返回参数结构体
      class CreateSearchTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Status: 0：成功，非0：失败
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

      # 网络攻击日志
      class DefendAttackLog < TencentCloud::Common::AbstractModel
        # @param Id: 日志ID
        # @type Id: Integer
        # @param Uuid: 客户端ID
        # @type Uuid: String
        # @param SrcIp: 来源IP
        # @type SrcIp: String
        # @param SrcPort: 来源端口
        # @type SrcPort: Integer
        # @param HttpMethod: 攻击方式
        # @type HttpMethod: String
        # @param HttpCgi: 攻击描述
        # @type HttpCgi: String
        # @param HttpParam: 攻击参数
        # @type HttpParam: String
        # @param VulType: 威胁类型
        # @type VulType: String
        # @param CreatedAt: 攻击时间
        # @type CreatedAt: String
        # @param MachineIp: 目标服务器IP
        # @type MachineIp: String
        # @param MachineName: 目标服务器名称
        # @type MachineName: String
        # @param DstIp: 目标IP
        # @type DstIp: String
        # @param DstPort: 目标端口
        # @type DstPort: Integer
        # @param HttpContent: 攻击内容
        # @type HttpContent: String

        attr_accessor :Id, :Uuid, :SrcIp, :SrcPort, :HttpMethod, :HttpCgi, :HttpParam, :VulType, :CreatedAt, :MachineIp, :MachineName, :DstIp, :DstPort, :HttpContent
        
        def initialize(id=nil, uuid=nil, srcip=nil, srcport=nil, httpmethod=nil, httpcgi=nil, httpparam=nil, vultype=nil, createdat=nil, machineip=nil, machinename=nil, dstip=nil, dstport=nil, httpcontent=nil)
          @Id = id
          @Uuid = uuid
          @SrcIp = srcip
          @SrcPort = srcport
          @HttpMethod = httpmethod
          @HttpCgi = httpcgi
          @HttpParam = httpparam
          @VulType = vultype
          @CreatedAt = createdat
          @MachineIp = machineip
          @MachineName = machinename
          @DstIp = dstip
          @DstPort = dstport
          @HttpContent = httpcontent
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuid = params['Uuid']
          @SrcIp = params['SrcIp']
          @SrcPort = params['SrcPort']
          @HttpMethod = params['HttpMethod']
          @HttpCgi = params['HttpCgi']
          @HttpParam = params['HttpParam']
          @VulType = params['VulType']
          @CreatedAt = params['CreatedAt']
          @MachineIp = params['MachineIp']
          @MachineName = params['MachineName']
          @DstIp = params['DstIp']
          @DstPort = params['DstPort']
          @HttpContent = params['HttpContent']
        end
      end

      # DeleteAttackLogs请求参数结构体
      class DeleteAttackLogsRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 日志ID数组，最大100条。
        # @type Ids: Array

        attr_accessor :Ids
        
        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # DeleteAttackLogs返回参数结构体
      class DeleteAttackLogsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteBaselineStrategy请求参数结构体
      class DeleteBaselineStrategyRequest < TencentCloud::Common::AbstractModel
        # @param StrategyId: 基线策略id
        # @type StrategyId: Integer

        attr_accessor :StrategyId
        
        def initialize(strategyid=nil)
          @StrategyId = strategyid
        end

        def deserialize(params)
          @StrategyId = params['StrategyId']
        end
      end

      # DeleteBaselineStrategy返回参数结构体
      class DeleteBaselineStrategyResponse < TencentCloud::Common::AbstractModel
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

      # DeleteBashEvents请求参数结构体
      class DeleteBashEventsRequest < TencentCloud::Common::AbstractModel
        # @param Ids: ID数组，最大100条。
        # @type Ids: Array

        attr_accessor :Ids
        
        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # DeleteBashEvents返回参数结构体
      class DeleteBashEventsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteBashRules请求参数结构体
      class DeleteBashRulesRequest < TencentCloud::Common::AbstractModel
        # @param Ids: ID数组，最大100条。
        # @type Ids: Array

        attr_accessor :Ids
        
        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # DeleteBashRules返回参数结构体
      class DeleteBashRulesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteBruteAttacks请求参数结构体
      class DeleteBruteAttacksRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 暴力破解事件Id数组。(最大 100条)
        # @type Ids: Array

        attr_accessor :Ids
        
        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # DeleteBruteAttacks返回参数结构体
      class DeleteBruteAttacksResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLicenseRecord请求参数结构体
      class DeleteLicenseRecordRequest < TencentCloud::Common::AbstractModel
        # @param LicenseId: 授权ID ,可以用授权订单列表获取.
        # @type LicenseId: Integer
        # @param LicenseType: 授权类型
        # @type LicenseType: Integer
        # @param ResourceId: 资源ID
        # @type ResourceId: String

        attr_accessor :LicenseId, :LicenseType, :ResourceId
        
        def initialize(licenseid=nil, licensetype=nil, resourceid=nil)
          @LicenseId = licenseid
          @LicenseType = licensetype
          @ResourceId = resourceid
        end

        def deserialize(params)
          @LicenseId = params['LicenseId']
          @LicenseType = params['LicenseType']
          @ResourceId = params['ResourceId']
        end
      end

      # DeleteLicenseRecord返回参数结构体
      class DeleteLicenseRecordResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLoginWhiteList请求参数结构体
      class DeleteLoginWhiteListRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 白名单ID (最大 100 条)
        # @type Ids: Array

        attr_accessor :Ids
        
        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # DeleteLoginWhiteList返回参数结构体
      class DeleteLoginWhiteListResponse < TencentCloud::Common::AbstractModel
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

      # DeleteMachine请求参数结构体
      class DeleteMachineRequest < TencentCloud::Common::AbstractModel
        # @param Uuid: 云镜客户端Uuid。
        # @type Uuid: String

        attr_accessor :Uuid
        
        def initialize(uuid=nil)
          @Uuid = uuid
        end

        def deserialize(params)
          @Uuid = params['Uuid']
        end
      end

      # DeleteMachine返回参数结构体
      class DeleteMachineResponse < TencentCloud::Common::AbstractModel
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

      # DeleteMachineTag请求参数结构体
      class DeleteMachineTagRequest < TencentCloud::Common::AbstractModel
        # @param Rid: 关联的标签ID
        # @type Rid: Integer

        attr_accessor :Rid
        
        def initialize(rid=nil)
          @Rid = rid
        end

        def deserialize(params)
          @Rid = params['Rid']
        end
      end

      # DeleteMachineTag返回参数结构体
      class DeleteMachineTagResponse < TencentCloud::Common::AbstractModel
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

      # DeleteMaliciousRequests请求参数结构体
      class DeleteMaliciousRequestsRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 恶意请求记录ID数组，(最大100条)
        # @type Ids: Array

        attr_accessor :Ids
        
        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # DeleteMaliciousRequests返回参数结构体
      class DeleteMaliciousRequestsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteMalwareScanTask请求参数结构体
      class DeleteMalwareScanTaskRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DeleteMalwareScanTask返回参数结构体
      class DeleteMalwareScanTaskResponse < TencentCloud::Common::AbstractModel
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

      # DeleteMalwares请求参数结构体
      class DeleteMalwaresRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 木马记录ID数组 (最大100条)
        # @type Ids: Array

        attr_accessor :Ids
        
        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # DeleteMalwares返回参数结构体
      class DeleteMalwaresResponse < TencentCloud::Common::AbstractModel
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

      # DeleteNonlocalLoginPlaces请求参数结构体
      class DeleteNonlocalLoginPlacesRequest < TencentCloud::Common::AbstractModel
        # @param DelType: 删除异地登录事件的方式，可选值："Ids"、"Ip"、"All"，默认为Ids
        # @type DelType: String
        # @param Ids: 异地登录事件ID数组。DelType为Ids或DelType未填时此项必填
        # @type Ids: Array
        # @param Ip: 异地登录事件的Ip。DelType为Ip时必填
        # @type Ip: Array
        # @param Uuid: 主机Uuid
        # @type Uuid: String

        attr_accessor :DelType, :Ids, :Ip, :Uuid
        
        def initialize(deltype=nil, ids=nil, ip=nil, uuid=nil)
          @DelType = deltype
          @Ids = ids
          @Ip = ip
          @Uuid = uuid
        end

        def deserialize(params)
          @DelType = params['DelType']
          @Ids = params['Ids']
          @Ip = params['Ip']
          @Uuid = params['Uuid']
        end
      end

      # DeleteNonlocalLoginPlaces返回参数结构体
      class DeleteNonlocalLoginPlacesResponse < TencentCloud::Common::AbstractModel
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

      # DeletePrivilegeEvents请求参数结构体
      class DeletePrivilegeEventsRequest < TencentCloud::Common::AbstractModel
        # @param Ids: ID数组. (最大100条)
        # @type Ids: Array

        attr_accessor :Ids
        
        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # DeletePrivilegeEvents返回参数结构体
      class DeletePrivilegeEventsResponse < TencentCloud::Common::AbstractModel
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

      # DeletePrivilegeRules请求参数结构体
      class DeletePrivilegeRulesRequest < TencentCloud::Common::AbstractModel
        # @param Ids: ID数组，最大100条。
        # @type Ids: Array

        attr_accessor :Ids
        
        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # DeletePrivilegeRules返回参数结构体
      class DeletePrivilegeRulesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteProtectDir请求参数结构体
      class DeleteProtectDirRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 删除的目录ID 最大100条
        # @type Ids: Array

        attr_accessor :Ids
        
        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # DeleteProtectDir返回参数结构体
      class DeleteProtectDirResponse < TencentCloud::Common::AbstractModel
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

      # DeleteReverseShellEvents请求参数结构体
      class DeleteReverseShellEventsRequest < TencentCloud::Common::AbstractModel
        # @param Ids: ID数组. (最大100条)
        # @type Ids: Array

        attr_accessor :Ids
        
        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # DeleteReverseShellEvents返回参数结构体
      class DeleteReverseShellEventsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteReverseShellRules请求参数结构体
      class DeleteReverseShellRulesRequest < TencentCloud::Common::AbstractModel
        # @param Ids: ID数组. (最大100条)
        # @type Ids: Array

        attr_accessor :Ids
        
        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # DeleteReverseShellRules返回参数结构体
      class DeleteReverseShellRulesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSearchTemplate请求参数结构体
      class DeleteSearchTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Id: 模板ID
        # @type Id: Integer

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DeleteSearchTemplate返回参数结构体
      class DeleteSearchTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Status: 0：成功，非0：失败
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

      # DeleteTags请求参数结构体
      class DeleteTagsRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 标签ID (最大100 条)
        # @type Ids: Array

        attr_accessor :Ids
        
        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # DeleteTags返回参数结构体
      class DeleteTagsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteWebPageEventLog请求参数结构体
      class DeleteWebPageEventLogRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DeleteWebPageEventLog返回参数结构体
      class DeleteWebPageEventLogResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAccountStatistics请求参数结构体
      class DescribeAccountStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Username - String - 是否必填：否 - 帐号用户名</li>
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters
        
        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeAccountStatistics返回参数结构体
      class DescribeAccountStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 帐号统计列表记录总数。
        # @type TotalCount: Integer
        # @param AccountStatistics: 帐号统计列表。
        # @type AccountStatistics: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AccountStatistics, :RequestId
        
        def initialize(totalcount=nil, accountstatistics=nil, requestid=nil)
          @TotalCount = totalcount
          @AccountStatistics = accountstatistics
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AccountStatistics'].nil?
            @AccountStatistics = []
            params['AccountStatistics'].each do |i|
              accountstatistics_tmp = AccountStatistics.new
              accountstatistics_tmp.deserialize(i)
              @AccountStatistics << accountstatistics_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetAppList请求参数结构体
      class DescribeAssetAppListRequest < TencentCloud::Common::AbstractModel
        # @param Quuid: 查询指定Quuid主机的信息
        # @type Quuid: String
        # @param Filters: 过滤条件。
        # <li>AppName- string - 是否必填：否 - 应用名搜索</li>
        # <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        # <li>Type - int - 是否必填：否 - 类型	: 仅linux
        # 0: 全部
        # 1: 运维
        # 2 : 数据库
        # 3 : 安全
        # 4 : 可疑应用
        # 5 : 系统架构
        # 6 : 系统应用
        # 7 : WEB服务
        # 99:其他</li>
        # <li>OsType - uint64 - 是否必填：否 - windows/linux</li>
        # <li>Os -String 是否必填: 否 - 操作系统( DescribeMachineOsList 接口 值 )</li>
        # @type Filters: Array
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Order: 排序方式，asc升序 或 desc降序
        # @type Order: String
        # @param By: 排序方式：[FirstTime|ProcessCount]
        # @type By: String

        attr_accessor :Quuid, :Filters, :Limit, :Offset, :Order, :By
        
        def initialize(quuid=nil, filters=nil, limit=nil, offset=nil, order=nil, by=nil)
          @Quuid = quuid
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Quuid = params['Quuid']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              assetfilters_tmp = AssetFilters.new
              assetfilters_tmp.deserialize(i)
              @Filters << assetfilters_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeAssetAppList返回参数结构体
      class DescribeAssetAppListResponse < TencentCloud::Common::AbstractModel
        # @param Apps: 应用列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Apps: Array
        # @param Total: 总数量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Apps, :Total, :RequestId
        
        def initialize(apps=nil, total=nil, requestid=nil)
          @Apps = apps
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Apps'].nil?
            @Apps = []
            params['Apps'].each do |i|
              assetappbaseinfo_tmp = AssetAppBaseInfo.new
              assetappbaseinfo_tmp.deserialize(i)
              @Apps << assetappbaseinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetAppProcessList请求参数结构体
      class DescribeAssetAppProcessListRequest < TencentCloud::Common::AbstractModel
        # @param Quuid: 主机Quuid
        # @type Quuid: String
        # @param Uuid: 主机Uuid
        # @type Uuid: String
        # @param Name: App名
        # @type Name: String
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer

        attr_accessor :Quuid, :Uuid, :Name, :Offset, :Limit
        
        def initialize(quuid=nil, uuid=nil, name=nil, offset=nil, limit=nil)
          @Quuid = quuid
          @Uuid = uuid
          @Name = name
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
          @Name = params['Name']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAssetAppProcessList返回参数结构体
      class DescribeAssetAppProcessListResponse < TencentCloud::Common::AbstractModel
        # @param Process: 进程列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Process: Array
        # @param Total: 分区总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Process, :Total, :RequestId
        
        def initialize(process=nil, total=nil, requestid=nil)
          @Process = process
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Process'].nil?
            @Process = []
            params['Process'].each do |i|
              assetappprocessinfo_tmp = AssetAppProcessInfo.new
              assetappprocessinfo_tmp.deserialize(i)
              @Process << assetappprocessinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetCoreModuleInfo请求参数结构体
      class DescribeAssetCoreModuleInfoRequest < TencentCloud::Common::AbstractModel
        # @param Quuid: 服务器Quuid
        # @type Quuid: String
        # @param Uuid: 服务器Uuid
        # @type Uuid: String
        # @param Id: 内核模块ID
        # @type Id: String

        attr_accessor :Quuid, :Uuid, :Id
        
        def initialize(quuid=nil, uuid=nil, id=nil)
          @Quuid = quuid
          @Uuid = uuid
          @Id = id
        end

        def deserialize(params)
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
          @Id = params['Id']
        end
      end

      # DescribeAssetCoreModuleInfo返回参数结构体
      class DescribeAssetCoreModuleInfoResponse < TencentCloud::Common::AbstractModel
        # @param Module: 内核模块详情
        # @type Module: :class:`Tencentcloud::Cwp.v20180228.models.AssetCoreModuleDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Module, :RequestId
        
        def initialize(_module=nil, requestid=nil)
          @Module = _module
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Module'].nil?
            @Module = AssetCoreModuleDetail.new
            @Module.deserialize(params['Module'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetCoreModuleList请求参数结构体
      class DescribeAssetCoreModuleListRequest < TencentCloud::Common::AbstractModel
        # @param Uuid: 服务器Uuid
        # @type Uuid: String
        # @param Quuid: 服务器Quuid
        # @type Quuid: String
        # @param Filters: 过滤条件。
        # <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        # <li>Name- string - 是否必填：否 - 包名</li>
        # <li>User- string - 是否必填：否 - 用户</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Order: 排序方式，asc升序 或 desc降序
        # @type Order: String
        # @param By: 排序依据[Size|FirstTime|ProcessCount|ModuleCount]
        # @type By: String

        attr_accessor :Uuid, :Quuid, :Filters, :Offset, :Limit, :Order, :By
        
        def initialize(uuid=nil, quuid=nil, filters=nil, offset=nil, limit=nil, order=nil, by=nil)
          @Uuid = uuid
          @Quuid = quuid
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Uuid = params['Uuid']
          @Quuid = params['Quuid']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              assetfilters_tmp = AssetFilters.new
              assetfilters_tmp.deserialize(i)
              @Filters << assetfilters_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeAssetCoreModuleList返回参数结构体
      class DescribeAssetCoreModuleListResponse < TencentCloud::Common::AbstractModel
        # @param Modules: 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Modules: Array
        # @param Total: 总数量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Modules, :Total, :RequestId
        
        def initialize(modules=nil, total=nil, requestid=nil)
          @Modules = modules
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Modules'].nil?
            @Modules = []
            params['Modules'].each do |i|
              assetcoremodulebaseinfo_tmp = AssetCoreModuleBaseInfo.new
              assetcoremodulebaseinfo_tmp.deserialize(i)
              @Modules << assetcoremodulebaseinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetDatabaseInfo请求参数结构体
      class DescribeAssetDatabaseInfoRequest < TencentCloud::Common::AbstractModel
        # @param Quuid: 服务器Quuid
        # @type Quuid: String
        # @param Uuid: 服务器Uuid
        # @type Uuid: String
        # @param Id: 数据库ID
        # @type Id: String

        attr_accessor :Quuid, :Uuid, :Id
        
        def initialize(quuid=nil, uuid=nil, id=nil)
          @Quuid = quuid
          @Uuid = uuid
          @Id = id
        end

        def deserialize(params)
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
          @Id = params['Id']
        end
      end

      # DescribeAssetDatabaseInfo返回参数结构体
      class DescribeAssetDatabaseInfoResponse < TencentCloud::Common::AbstractModel
        # @param Database: 数据库详情
        # @type Database: :class:`Tencentcloud::Cwp.v20180228.models.AssetDatabaseDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Database, :RequestId
        
        def initialize(database=nil, requestid=nil)
          @Database = database
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Database'].nil?
            @Database = AssetDatabaseDetail.new
            @Database.deserialize(params['Database'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetDatabaseList请求参数结构体
      class DescribeAssetDatabaseListRequest < TencentCloud::Common::AbstractModel
        # @param Quuid: 查询指定Quuid主机的信息
        # @type Quuid: String
        # @param Filters: 过滤条件。
        # <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        # <li>User- string - 是否必填：否 - 运行用户</li>
        # <li>Ip - String - 是否必填：否 - 绑定IP</li>
        # <li>Port - Int - 是否必填：否 - 端口</li>
        # <li>Name - Int - 是否必填：否 - 数据库名称
        # 0:全部
        # 1:MySQL
        # 2:Redis
        # 3:Oracle
        # 4:MongoDB
        # 5:MemCache
        # 6:PostgreSQL
        # 7:HBase
        # 8:DB2
        # 9:Sybase
        # 10:TiDB</li>
        # <li>Proto - String - 是否必填：否 - 协议：1:TCP, 2:UDP, 3:未知</li>
        # <li>OsType - String - 是否必填：否 - 操作系统: linux/windows</li>
        # <li>Os -String 是否必填: 否 - 操作系统( DescribeMachineOsList 接口 值 )</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Order: 排序方式，asc升序 或 desc降序
        # @type Order: String
        # @param By: 排序方式：[FirstTime]
        # @type By: String

        attr_accessor :Quuid, :Filters, :Offset, :Limit, :Order, :By
        
        def initialize(quuid=nil, filters=nil, offset=nil, limit=nil, order=nil, by=nil)
          @Quuid = quuid
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Quuid = params['Quuid']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              assetfilters_tmp = AssetFilters.new
              assetfilters_tmp.deserialize(i)
              @Filters << assetfilters_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeAssetDatabaseList返回参数结构体
      class DescribeAssetDatabaseListResponse < TencentCloud::Common::AbstractModel
        # @param Databases: 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Databases: Array
        # @param Total: 总数量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Databases, :Total, :RequestId
        
        def initialize(databases=nil, total=nil, requestid=nil)
          @Databases = databases
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Databases'].nil?
            @Databases = []
            params['Databases'].each do |i|
              assetdatabasebaseinfo_tmp = AssetDatabaseBaseInfo.new
              assetdatabasebaseinfo_tmp.deserialize(i)
              @Databases << assetdatabasebaseinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetEnvList请求参数结构体
      class DescribeAssetEnvListRequest < TencentCloud::Common::AbstractModel
        # @param Uuid: 服务器Uuid
        # @type Uuid: String
        # @param Quuid: 服务器Quuid
        # @type Quuid: String
        # @param Type: 该字段已废弃，由Filters代替
        # @type Type: Integer
        # @param Filters: 过滤条件。
        # <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        # <li>Name- string - 是否必填：否 - 环境变量名</li>
        # <li>Type- int - 是否必填：否 - 类型：0用户变量，1系统变量</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Order: 排序方式，asc升序 或 desc降序
        # @type Order: String
        # @param By: 排序方式：[FirstTime]
        # @type By: String

        attr_accessor :Uuid, :Quuid, :Type, :Filters, :Offset, :Limit, :Order, :By
        
        def initialize(uuid=nil, quuid=nil, type=nil, filters=nil, offset=nil, limit=nil, order=nil, by=nil)
          @Uuid = uuid
          @Quuid = quuid
          @Type = type
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Uuid = params['Uuid']
          @Quuid = params['Quuid']
          @Type = params['Type']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              assetfilters_tmp = AssetFilters.new
              assetfilters_tmp.deserialize(i)
              @Filters << assetfilters_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeAssetEnvList返回参数结构体
      class DescribeAssetEnvListResponse < TencentCloud::Common::AbstractModel
        # @param Envs: 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Envs: Array
        # @param Total: 总数量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Envs, :Total, :RequestId
        
        def initialize(envs=nil, total=nil, requestid=nil)
          @Envs = envs
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Envs'].nil?
            @Envs = []
            params['Envs'].each do |i|
              assetenvbaseinfo_tmp = AssetEnvBaseInfo.new
              assetenvbaseinfo_tmp.deserialize(i)
              @Envs << assetenvbaseinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetInfo请求参数结构体
      class DescribeAssetInfoRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAssetInfo返回参数结构体
      class DescribeAssetInfoResponse < TencentCloud::Common::AbstractModel
        # @param MachineCount: 主机数
        # @type MachineCount: Integer
        # @param AccountCount: 账号数
        # @type AccountCount: Integer
        # @param PortCount: 端口数
        # @type PortCount: Integer
        # @param ProcessCount: 进程数
        # @type ProcessCount: Integer
        # @param SoftwareCount: 软件数
        # @type SoftwareCount: Integer
        # @param DatabaseCount: 数据库数
        # @type DatabaseCount: Integer
        # @param WebAppCount: Web应用数
        # @type WebAppCount: Integer
        # @param WebFrameCount: Web框架数
        # @type WebFrameCount: Integer
        # @param WebServiceCount: Web服务数
        # @type WebServiceCount: Integer
        # @param WebLocationCount: Web站点数
        # @type WebLocationCount: Integer
        # @param AccountNewCount: 账号今日新增
        # @type AccountNewCount: Integer
        # @param PortNewCount: 端口今日新增
        # @type PortNewCount: Integer
        # @param ProcessNewCount: 进程今日新增
        # @type ProcessNewCount: Integer
        # @param SoftwareNewCount: 软件今日新增
        # @type SoftwareNewCount: Integer
        # @param DatabaseNewCount: 数据库今日新增
        # @type DatabaseNewCount: Integer
        # @param WebAppNewCount: Web应用今日新增
        # @type WebAppNewCount: Integer
        # @param WebFrameNewCount: Web框架今日新增
        # @type WebFrameNewCount: Integer
        # @param WebServiceNewCount: Web服务今日新增
        # @type WebServiceNewCount: Integer
        # @param WebLocationNewCount: Web站点今日新增
        # @type WebLocationNewCount: Integer
        # @param MachineNewCount: 主机今日新增
        # @type MachineNewCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MachineCount, :AccountCount, :PortCount, :ProcessCount, :SoftwareCount, :DatabaseCount, :WebAppCount, :WebFrameCount, :WebServiceCount, :WebLocationCount, :AccountNewCount, :PortNewCount, :ProcessNewCount, :SoftwareNewCount, :DatabaseNewCount, :WebAppNewCount, :WebFrameNewCount, :WebServiceNewCount, :WebLocationNewCount, :MachineNewCount, :RequestId
        
        def initialize(machinecount=nil, accountcount=nil, portcount=nil, processcount=nil, softwarecount=nil, databasecount=nil, webappcount=nil, webframecount=nil, webservicecount=nil, weblocationcount=nil, accountnewcount=nil, portnewcount=nil, processnewcount=nil, softwarenewcount=nil, databasenewcount=nil, webappnewcount=nil, webframenewcount=nil, webservicenewcount=nil, weblocationnewcount=nil, machinenewcount=nil, requestid=nil)
          @MachineCount = machinecount
          @AccountCount = accountcount
          @PortCount = portcount
          @ProcessCount = processcount
          @SoftwareCount = softwarecount
          @DatabaseCount = databasecount
          @WebAppCount = webappcount
          @WebFrameCount = webframecount
          @WebServiceCount = webservicecount
          @WebLocationCount = weblocationcount
          @AccountNewCount = accountnewcount
          @PortNewCount = portnewcount
          @ProcessNewCount = processnewcount
          @SoftwareNewCount = softwarenewcount
          @DatabaseNewCount = databasenewcount
          @WebAppNewCount = webappnewcount
          @WebFrameNewCount = webframenewcount
          @WebServiceNewCount = webservicenewcount
          @WebLocationNewCount = weblocationnewcount
          @MachineNewCount = machinenewcount
          @RequestId = requestid
        end

        def deserialize(params)
          @MachineCount = params['MachineCount']
          @AccountCount = params['AccountCount']
          @PortCount = params['PortCount']
          @ProcessCount = params['ProcessCount']
          @SoftwareCount = params['SoftwareCount']
          @DatabaseCount = params['DatabaseCount']
          @WebAppCount = params['WebAppCount']
          @WebFrameCount = params['WebFrameCount']
          @WebServiceCount = params['WebServiceCount']
          @WebLocationCount = params['WebLocationCount']
          @AccountNewCount = params['AccountNewCount']
          @PortNewCount = params['PortNewCount']
          @ProcessNewCount = params['ProcessNewCount']
          @SoftwareNewCount = params['SoftwareNewCount']
          @DatabaseNewCount = params['DatabaseNewCount']
          @WebAppNewCount = params['WebAppNewCount']
          @WebFrameNewCount = params['WebFrameNewCount']
          @WebServiceNewCount = params['WebServiceNewCount']
          @WebLocationNewCount = params['WebLocationNewCount']
          @MachineNewCount = params['MachineNewCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetInitServiceList请求参数结构体
      class DescribeAssetInitServiceListRequest < TencentCloud::Common::AbstractModel
        # @param Uuid: 服务器Uuid
        # @type Uuid: String
        # @param Quuid: 服务器Quuid
        # @type Quuid: String
        # @param Filters: 过滤条件。
        # <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        # <li>Name- string - 是否必填：否 - 包名</li>
        # <li>User- string - 是否必填：否 - 用户</li>
        # <li>Status- string - 是否必填：否 - 默认启用状态：0未启用， 1启用 仅linux</li>
        # <li>Type- string - 是否必填：否 - 类型：类型 仅windows：
        # 1:编码器
        # 2:IE插件
        # 3:网络提供者
        # 4:镜像劫持
        # 5:LSA提供者
        # 6:KnownDLLs
        # 7:启动执行
        # 8:WMI
        # 9:计划任务
        # 10:Winsock提供者
        # 11:打印监控器
        # 12:资源管理器
        # 13:驱动服务
        # 14:登录</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Order: 排序方式，asc升序 或 desc降序
        # @type Order: String
        # @param By: 排序方式：[FirstTime]
        # @type By: String

        attr_accessor :Uuid, :Quuid, :Filters, :Offset, :Limit, :Order, :By
        
        def initialize(uuid=nil, quuid=nil, filters=nil, offset=nil, limit=nil, order=nil, by=nil)
          @Uuid = uuid
          @Quuid = quuid
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Uuid = params['Uuid']
          @Quuid = params['Quuid']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              assetfilters_tmp = AssetFilters.new
              assetfilters_tmp.deserialize(i)
              @Filters << assetfilters_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeAssetInitServiceList返回参数结构体
      class DescribeAssetInitServiceListResponse < TencentCloud::Common::AbstractModel
        # @param Services: 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Services: Array
        # @param Total: 总数量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Services, :Total, :RequestId
        
        def initialize(services=nil, total=nil, requestid=nil)
          @Services = services
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Services'].nil?
            @Services = []
            params['Services'].each do |i|
              assetinitservicebaseinfo_tmp = AssetInitServiceBaseInfo.new
              assetinitservicebaseinfo_tmp.deserialize(i)
              @Services << assetinitservicebaseinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetJarInfo请求参数结构体
      class DescribeAssetJarInfoRequest < TencentCloud::Common::AbstractModel
        # @param Quuid: 服务器Quuid
        # @type Quuid: String
        # @param Uuid: 服务器Uuid
        # @type Uuid: String
        # @param Id: Jar包ID
        # @type Id: String

        attr_accessor :Quuid, :Uuid, :Id
        
        def initialize(quuid=nil, uuid=nil, id=nil)
          @Quuid = quuid
          @Uuid = uuid
          @Id = id
        end

        def deserialize(params)
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
          @Id = params['Id']
        end
      end

      # DescribeAssetJarInfo返回参数结构体
      class DescribeAssetJarInfoResponse < TencentCloud::Common::AbstractModel
        # @param Jar: Jar包详情
        # @type Jar: :class:`Tencentcloud::Cwp.v20180228.models.AssetJarDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Jar, :RequestId
        
        def initialize(jar=nil, requestid=nil)
          @Jar = jar
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Jar'].nil?
            @Jar = AssetJarDetail.new
            @Jar.deserialize(params['Jar'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetJarList请求参数结构体
      class DescribeAssetJarListRequest < TencentCloud::Common::AbstractModel
        # @param Uuid: 服务器Uuid
        # @type Uuid: String
        # @param Quuid: 服务器Quuid
        # @type Quuid: String
        # @param Filters: 过滤条件。
        # <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        # <li>Name- string - 是否必填：否 - 包名</li>
        # <li>Type- uint - 是否必填：否 - 类型
        # 1: 应用程序
        # 2 : 系统类库
        # 3 : Web服务自带库
        # 4 : 其他依赖包</li>
        # <li>Status- string - 是否必填：否 - 是否可执行：0否，1是</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Order: 排序方式，asc升序 或 desc降序
        # @type Order: String
        # @param By: 排序方式：[FirstTime]
        # @type By: String

        attr_accessor :Uuid, :Quuid, :Filters, :Offset, :Limit, :Order, :By
        
        def initialize(uuid=nil, quuid=nil, filters=nil, offset=nil, limit=nil, order=nil, by=nil)
          @Uuid = uuid
          @Quuid = quuid
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Uuid = params['Uuid']
          @Quuid = params['Quuid']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              assetfilters_tmp = AssetFilters.new
              assetfilters_tmp.deserialize(i)
              @Filters << assetfilters_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeAssetJarList返回参数结构体
      class DescribeAssetJarListResponse < TencentCloud::Common::AbstractModel
        # @param Jars: 应用列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Jars: Array
        # @param Total: 总数量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Jars, :Total, :RequestId
        
        def initialize(jars=nil, total=nil, requestid=nil)
          @Jars = jars
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Jars'].nil?
            @Jars = []
            params['Jars'].each do |i|
              assetjarbaseinfo_tmp = AssetJarBaseInfo.new
              assetjarbaseinfo_tmp.deserialize(i)
              @Jars << assetjarbaseinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetMachineDetail请求参数结构体
      class DescribeAssetMachineDetailRequest < TencentCloud::Common::AbstractModel
        # @param Quuid: 服务器Quuid
        # @type Quuid: String
        # @param Uuid: 服务器Uuid
        # @type Uuid: String

        attr_accessor :Quuid, :Uuid
        
        def initialize(quuid=nil, uuid=nil)
          @Quuid = quuid
          @Uuid = uuid
        end

        def deserialize(params)
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
        end
      end

      # DescribeAssetMachineDetail返回参数结构体
      class DescribeAssetMachineDetailResponse < TencentCloud::Common::AbstractModel
        # @param MachineDetail: 主机详情
        # @type MachineDetail: :class:`Tencentcloud::Cwp.v20180228.models.AssetMachineDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MachineDetail, :RequestId
        
        def initialize(machinedetail=nil, requestid=nil)
          @MachineDetail = machinedetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MachineDetail'].nil?
            @MachineDetail = AssetMachineDetail.new
            @MachineDetail.deserialize(params['MachineDetail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetMachineList请求参数结构体
      class DescribeAssetMachineListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件。
        # <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        # <li>OsType - String - 是否必填：否 - windows或linux</li>
        # <li>CpuLoad - Int - 是否必填：否 -
        # 0: 未知  1: 低负载
        # 2: 中负载  3: 高负载</li>
        # <li>DiskLoad - Int - 是否必填：否 -
        # 0: 0%或未知  1: 0%～20%
        # 2: 20%～50%  3: 50%～80%
        # 4: 80%～100%</li>
        # <li>MemLoad - Int - 是否必填：否 -
        # 0: 0%或未知  1: 0%～20%
        # 2: 20%～50%  3: 50%～80%
        # 4: 80%～100%</li>
        # <li>Quuid：主机Quuid</li>
        # <li>Os -String 是否必填: 否 - 操作系统( DescribeMachineOsList 接口 值 )</li>
        # @type Filters: Array
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Order: 排序方式，asc升序 或 desc降序
        # @type Order: String
        # @param By: 可选排序[FirstTime|PartitionCount]
        # @type By: String

        attr_accessor :Filters, :Limit, :Offset, :Order, :By
        
        def initialize(filters=nil, limit=nil, offset=nil, order=nil, by=nil)
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @Order = order
          @By = by
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeAssetMachineList返回参数结构体
      class DescribeAssetMachineListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param Machines: 记录列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Machines: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Machines, :RequestId
        
        def initialize(total=nil, machines=nil, requestid=nil)
          @Total = total
          @Machines = machines
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Machines'].nil?
            @Machines = []
            params['Machines'].each do |i|
              assetmachinebaseinfo_tmp = AssetMachineBaseInfo.new
              assetmachinebaseinfo_tmp.deserialize(i)
              @Machines << assetmachinebaseinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetPlanTaskList请求参数结构体
      class DescribeAssetPlanTaskListRequest < TencentCloud::Common::AbstractModel
        # @param Uuid: 服务器Uuid
        # @type Uuid: String
        # @param Quuid: 服务器Quuid
        # @type Quuid: String
        # @param Filters: 过滤条件。
        # <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        # <li>User- string - 是否必填：否 - 用户</li>
        # <li>Status- int - 是否必填：否 - 默认启用状态：0未启用， 1启用 </li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Order: 排序方式，asc升序 或 desc降序
        # @type Order: String
        # @param By: 排序方式：[FirstTime]
        # @type By: String

        attr_accessor :Uuid, :Quuid, :Filters, :Offset, :Limit, :Order, :By
        
        def initialize(uuid=nil, quuid=nil, filters=nil, offset=nil, limit=nil, order=nil, by=nil)
          @Uuid = uuid
          @Quuid = quuid
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Uuid = params['Uuid']
          @Quuid = params['Quuid']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              assetfilters_tmp = AssetFilters.new
              assetfilters_tmp.deserialize(i)
              @Filters << assetfilters_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeAssetPlanTaskList返回参数结构体
      class DescribeAssetPlanTaskListResponse < TencentCloud::Common::AbstractModel
        # @param Tasks: 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tasks: Array
        # @param Total: 总数量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Tasks, :Total, :RequestId
        
        def initialize(tasks=nil, total=nil, requestid=nil)
          @Tasks = tasks
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              assetplantask_tmp = AssetPlanTask.new
              assetplantask_tmp.deserialize(i)
              @Tasks << assetplantask_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetPortInfoList请求参数结构体
      class DescribeAssetPortInfoListRequest < TencentCloud::Common::AbstractModel
        # @param Quuid: 查询指定Quuid主机的信息
        # @type Quuid: String
        # @param Filters: 过滤条件。
        # <li>Port - uint64 - 是否必填：否 - 端口</li>
        # <li>Ip - String - 是否必填：否 - 绑定IP</li>
        # <li>ProcessName - String - 是否必填：否 - 监听进程</li>
        # <li>Pid - uint64 - 是否必填：否 - PID</li>
        # <li>User - String - 是否必填：否 - 运行用户</li>
        # <li>Group - String - 是否必填：否 - 所属用户组</li>
        # <li>Ppid - uint64 - 是否必填：否 - PPID</li>
        # <li>Proto - string - 是否必填：否 - tcp/udp或“”(空字符串筛选未知状态)</li>
        # <li>OsType - uint64 - 是否必填：否 - windows/linux</li>
        # <li>RunTimeStart - String - 是否必填：否 - 运行开始时间</li>
        # <li>RunTimeEnd - String - 是否必填：否 - 运行结束时间</li>
        # <li>Os -String 是否必填: 否 - 操作系统( DescribeMachineOsList 接口 值 )</li>
        # @type Filters: Array
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Order: 排序方式，asc升序 或 desc降序
        # @type Order: String
        # @param By: 排序方式：[FirstTime|StartTime]
        # @type By: String

        attr_accessor :Quuid, :Filters, :Limit, :Offset, :Order, :By
        
        def initialize(quuid=nil, filters=nil, limit=nil, offset=nil, order=nil, by=nil)
          @Quuid = quuid
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Quuid = params['Quuid']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeAssetPortInfoList返回参数结构体
      class DescribeAssetPortInfoListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 记录总数
        # @type Total: Integer
        # @param Ports: 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ports: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Ports, :RequestId
        
        def initialize(total=nil, ports=nil, requestid=nil)
          @Total = total
          @Ports = ports
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Ports'].nil?
            @Ports = []
            params['Ports'].each do |i|
              assetportbaseinfo_tmp = AssetPortBaseInfo.new
              assetportbaseinfo_tmp.deserialize(i)
              @Ports << assetportbaseinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetProcessInfoList请求参数结构体
      class DescribeAssetProcessInfoListRequest < TencentCloud::Common::AbstractModel
        # @param Quuid: 查询指定Quuid主机的信息
        # @type Quuid: String
        # @param Filters: 过滤条件。
        # <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        # <li>Name - String - 是否必填：否 - 进程名</li>
        # <li>User - String - 是否必填：否 - 进程用户</li>
        # <li>Group - String - 是否必填：否 - 进程用户组</li>
        # <li>Pid - uint64 - 是否必填：否 - 进程ID</li>
        # <li>Ppid - uint64 - 是否必填：否 - 父进程ID</li>
        # <li>OsType - uint64 - 是否必填：否 - windows/linux</li>
        # <li>Status - string - 是否必填：否 - 进程状态：
        # 1:R 可执行
        # 2:S 可中断
        # 3:D 不可中断
        # 4:T 暂停状态或跟踪状态
        # 5:Z 僵尸状态
        # 6:X 将被销毁</li>
        # <li>RunTimeStart - String - 是否必填：否 - 运行开始时间</li>
        # <li>RunTimeEnd - String - 是否必填：否 - 运行结束时间</li>
        # <li>InstallByPackage - uint64 - 是否必填：否 - 是否包安装：0否，1是</li>
        # <li>Os -String 是否必填: 否 - 操作系统( DescribeMachineOsList 接口 值 )</li>
        # @type Filters: Array
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Order: 排序方式，asc升序 或 desc降序
        # @type Order: String
        # @param By: 排序方式：[FirstTime|StartTime]
        # @type By: String

        attr_accessor :Quuid, :Filters, :Limit, :Offset, :Order, :By
        
        def initialize(quuid=nil, filters=nil, limit=nil, offset=nil, order=nil, by=nil)
          @Quuid = quuid
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Quuid = params['Quuid']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeAssetProcessInfoList返回参数结构体
      class DescribeAssetProcessInfoListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 记录总数
        # @type Total: Integer
        # @param Process: 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Process: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Process, :RequestId
        
        def initialize(total=nil, process=nil, requestid=nil)
          @Total = total
          @Process = process
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Process'].nil?
            @Process = []
            params['Process'].each do |i|
              assetprocessbaseinfo_tmp = AssetProcessBaseInfo.new
              assetprocessbaseinfo_tmp.deserialize(i)
              @Process << assetprocessbaseinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetRecentMachineInfo请求参数结构体
      class DescribeAssetRecentMachineInfoRequest < TencentCloud::Common::AbstractModel
        # @param BeginDate: 开始时间，如：2020-09-22
        # @type BeginDate: String
        # @param EndDate: 结束时间，如：2020-09-22
        # @type EndDate: String

        attr_accessor :BeginDate, :EndDate
        
        def initialize(begindate=nil, enddate=nil)
          @BeginDate = begindate
          @EndDate = enddate
        end

        def deserialize(params)
          @BeginDate = params['BeginDate']
          @EndDate = params['EndDate']
        end
      end

      # DescribeAssetRecentMachineInfo返回参数结构体
      class DescribeAssetRecentMachineInfoResponse < TencentCloud::Common::AbstractModel
        # @param TotalList: 总数量列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalList: Array
        # @param LiveList: 在线数量列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LiveList: Array
        # @param OfflineList: 离线数量列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OfflineList: Array
        # @param RiskList: 风险数量列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalList, :LiveList, :OfflineList, :RiskList, :RequestId
        
        def initialize(totallist=nil, livelist=nil, offlinelist=nil, risklist=nil, requestid=nil)
          @TotalList = totallist
          @LiveList = livelist
          @OfflineList = offlinelist
          @RiskList = risklist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TotalList'].nil?
            @TotalList = []
            params['TotalList'].each do |i|
              assetkeyval_tmp = AssetKeyVal.new
              assetkeyval_tmp.deserialize(i)
              @TotalList << assetkeyval_tmp
            end
          end
          unless params['LiveList'].nil?
            @LiveList = []
            params['LiveList'].each do |i|
              assetkeyval_tmp = AssetKeyVal.new
              assetkeyval_tmp.deserialize(i)
              @LiveList << assetkeyval_tmp
            end
          end
          unless params['OfflineList'].nil?
            @OfflineList = []
            params['OfflineList'].each do |i|
              assetkeyval_tmp = AssetKeyVal.new
              assetkeyval_tmp.deserialize(i)
              @OfflineList << assetkeyval_tmp
            end
          end
          unless params['RiskList'].nil?
            @RiskList = []
            params['RiskList'].each do |i|
              assetkeyval_tmp = AssetKeyVal.new
              assetkeyval_tmp.deserialize(i)
              @RiskList << assetkeyval_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetSystemPackageList请求参数结构体
      class DescribeAssetSystemPackageListRequest < TencentCloud::Common::AbstractModel
        # @param Uuid: 主机Uuid
        # @type Uuid: String
        # @param Quuid: 主机Quuid
        # @type Quuid: String
        # @param Filters: 过滤条件。
        # <li>Name - String - 是否必填：否 - 包 名</li>
        # <li>StartTime - String - 是否必填：否 - 安装开始时间</li>
        # <li>EndTime - String - 是否必填：否 - 安装开始时间</li>
        # <li>Type - int - 是否必填：否 - 安装包类型：
        # 1:rmp
        # 2:dpkg
        # 3:java
        # 4:system</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Order: 排序方式，asc-升序 或 desc-降序。默认：desc-降序
        # @type Order: String
        # @param By: 排序方式可选：[FistTime|InstallTime:安装时间]
        # @type By: String

        attr_accessor :Uuid, :Quuid, :Filters, :Offset, :Limit, :Order, :By
        
        def initialize(uuid=nil, quuid=nil, filters=nil, offset=nil, limit=nil, order=nil, by=nil)
          @Uuid = uuid
          @Quuid = quuid
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Uuid = params['Uuid']
          @Quuid = params['Quuid']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeAssetSystemPackageList返回参数结构体
      class DescribeAssetSystemPackageListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 记录总数
        # @type Total: Integer
        # @param Packages: 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Packages: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Packages, :RequestId
        
        def initialize(total=nil, packages=nil, requestid=nil)
          @Total = total
          @Packages = packages
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Packages'].nil?
            @Packages = []
            params['Packages'].each do |i|
              assetsystempackageinfo_tmp = AssetSystemPackageInfo.new
              assetsystempackageinfo_tmp.deserialize(i)
              @Packages << assetsystempackageinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetUserInfo请求参数结构体
      class DescribeAssetUserInfoRequest < TencentCloud::Common::AbstractModel
        # @param Quuid: 云服务器UUID
        # @type Quuid: String
        # @param Uuid: 主机安全UUID
        # @type Uuid: String
        # @param Name: 账户名
        # @type Name: String

        attr_accessor :Quuid, :Uuid, :Name
        
        def initialize(quuid=nil, uuid=nil, name=nil)
          @Quuid = quuid
          @Uuid = uuid
          @Name = name
        end

        def deserialize(params)
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
          @Name = params['Name']
        end
      end

      # DescribeAssetUserInfo返回参数结构体
      class DescribeAssetUserInfoResponse < TencentCloud::Common::AbstractModel
        # @param User: 用户详细信息
        # @type User: :class:`Tencentcloud::Cwp.v20180228.models.AssetUserDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :User, :RequestId
        
        def initialize(user=nil, requestid=nil)
          @User = user
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['User'].nil?
            @User = AssetUserDetail.new
            @User.deserialize(params['User'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetUserList请求参数结构体
      class DescribeAssetUserListRequest < TencentCloud::Common::AbstractModel
        # @param Quuid: 查询指定Quuid主机的信息
        # @type Quuid: String
        # @param Filters: 过滤条件。
        # <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        # <li>Name - String - 是否必填：否 - 账户名（模糊匹配）</li>
        # <li>NameStrict - String - 是否必填：否 - 账户名（严格匹配）</li>
        # <li>Uid - uint64 - 是否必填：否 - Uid</li>
        # <li>Guid - uint64 - 是否必填：否 - Guid</li>
        # <li>LoginTimeStart - String - 是否必填：否 - 开始时间，如：2021-01-11</li>
        # <li>LoginTimeEnd - String - 是否必填：否 - 结束时间，如：2021-01-11</li>
        # <li>LoginType - uint64 - 是否必填：否 - 0-不可登录；1-只允许key登录；2只允许密码登录；3-允许key和密码 仅linux</li>
        # <li>OsType - String - 是否必填：否 - windows或linux</li>
        # <li>Status - uint64 - 是否必填：否 - 账号状态：0-禁用；1-启用</li>
        # <li>UserType - uint64 - 是否必填：否 - 账号类型：0访客用户，1标准用户，2管理员用户 仅windows</li>
        # <li>IsDomain - uint64 - 是否必填：否 - 是否域账号：0 不是，1是 仅windows
        # <li>IsRoot - uint64 - 是否必填：否 - 是否Root权限：0 不是，1是 仅linux
        # <li>IsSudo - uint64 - 是否必填：否 - 是否Sudo权限：0 不是，1是 仅linux</li>
        # <li>IsSshLogin - uint64 - 是否必填：否 - 是否ssh登录：0 不是，1是 仅linux</li>
        # <li>ShellLoginStatus - uint64 - 是否必填：否 - 是否shell登录性，0不是；1是 仅linux</li>
        # <li>PasswordStatus - uint64 - 是否必填：否 - 密码状态：1正常 2即将过期 3已过期 4已锁定 仅linux</li>
        # <li>Os -String 是否必填: 否 - 操作系统( DescribeMachineOsList 接口 值 )</li>
        # @type Filters: Array
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Order: 排序方式，asc升序 或 desc降序
        # @type Order: String
        # @param By: 可选排序：[FirstTime|LoginTime|PasswordChangeTime|PasswordDuaTime]
        # PasswordLockDays
        # @type By: String

        attr_accessor :Quuid, :Filters, :Limit, :Offset, :Order, :By
        
        def initialize(quuid=nil, filters=nil, limit=nil, offset=nil, order=nil, by=nil)
          @Quuid = quuid
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Quuid = params['Quuid']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeAssetUserList返回参数结构体
      class DescribeAssetUserListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 记录总数
        # @type Total: Integer
        # @param Users: 账号列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Users: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Users, :RequestId
        
        def initialize(total=nil, users=nil, requestid=nil)
          @Total = total
          @Users = users
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Users'].nil?
            @Users = []
            params['Users'].each do |i|
              assetuserbaseinfo_tmp = AssetUserBaseInfo.new
              assetuserbaseinfo_tmp.deserialize(i)
              @Users << assetuserbaseinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetWebAppList请求参数结构体
      class DescribeAssetWebAppListRequest < TencentCloud::Common::AbstractModel
        # @param Quuid: 查询指定Quuid主机的信息
        # @type Quuid: String
        # @param Filters: 过滤条件。
        # <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        # <li>Name - String - 是否必填：否 - 应用名</li>
        # <li>Domain - String - 是否必填：否 - 站点域名</li>
        # <li>Type - int - 是否必填：否 - 服务类型：
        # 0：全部
        # 1:Tomcat
        # 2:Apache
        # 3:Nginx
        # 4:WebLogic
        # 5:Websphere
        # 6:JBoss
        # 7:Jetty
        # 8:IHS
        # 9:Tengine</li>
        # <li>OsType - String - 是否必填：否 - windows/linux</li>
        # <li>Os -String 是否必填: 否 - 操作系统( DescribeMachineOsList 接口 值 )</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Order: 排序方式，asc升序 或 desc降序
        # @type Order: String
        # @param By: 可选排序：[FirstTime|PluginCount]
        # @type By: String

        attr_accessor :Quuid, :Filters, :Offset, :Limit, :Order, :By
        
        def initialize(quuid=nil, filters=nil, offset=nil, limit=nil, order=nil, by=nil)
          @Quuid = quuid
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Quuid = params['Quuid']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeAssetWebAppList返回参数结构体
      class DescribeAssetWebAppListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 记录总数
        # @type Total: Integer
        # @param WebApps: 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebApps: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :WebApps, :RequestId
        
        def initialize(total=nil, webapps=nil, requestid=nil)
          @Total = total
          @WebApps = webapps
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['WebApps'].nil?
            @WebApps = []
            params['WebApps'].each do |i|
              assetwebappbaseinfo_tmp = AssetWebAppBaseInfo.new
              assetwebappbaseinfo_tmp.deserialize(i)
              @WebApps << assetwebappbaseinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetWebAppPluginList请求参数结构体
      class DescribeAssetWebAppPluginListRequest < TencentCloud::Common::AbstractModel
        # @param Quuid: 主机Quuid
        # @type Quuid: String
        # @param Uuid: 主机Uuid
        # @type Uuid: String
        # @param Id: Web应用ID
        # @type Id: String
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer

        attr_accessor :Quuid, :Uuid, :Id, :Offset, :Limit
        
        def initialize(quuid=nil, uuid=nil, id=nil, offset=nil, limit=nil)
          @Quuid = quuid
          @Uuid = uuid
          @Id = id
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
          @Id = params['Id']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAssetWebAppPluginList返回参数结构体
      class DescribeAssetWebAppPluginListResponse < TencentCloud::Common::AbstractModel
        # @param Plugins: 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Plugins: Array
        # @param Total: 分区总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Plugins, :Total, :RequestId
        
        def initialize(plugins=nil, total=nil, requestid=nil)
          @Plugins = plugins
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Plugins'].nil?
            @Plugins = []
            params['Plugins'].each do |i|
              assetwebappplugininfo_tmp = AssetWebAppPluginInfo.new
              assetwebappplugininfo_tmp.deserialize(i)
              @Plugins << assetwebappplugininfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetWebFrameList请求参数结构体
      class DescribeAssetWebFrameListRequest < TencentCloud::Common::AbstractModel
        # @param Quuid: 查询指定Quuid主机的信息
        # @type Quuid: String
        # @param Filters: 过滤条件。
        # <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        # <li>Name - String - 是否必填：否 - 框架名</li>
        # <li>NameStrict - String - 是否必填：否 - 框架名（严格匹配）</li>
        # <li>Lang - String - 是否必填：否 - 框架语言:java/python</li>
        # <li>Type - String - 是否必填：否 - 服务类型：
        # 0：全部
        # 1:Tomcat
        # 2:Apache
        # 3:Nginx
        # 4:WebLogic
        # 5:Websphere
        # 6:JBoss
        # 7:WildFly
        # 8:Jetty
        # 9:IHS
        # 10:Tengine</li>
        # <li>OsType - String - 是否必填：否 - windows/linux</li>
        # <li>Os -String 是否必填: 否 - 操作系统( DescribeMachineOsList 接口 值 )</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Order: 排序方式，asc升序 或 desc降序
        # @type Order: String
        # @param By: 可选排序：[FirstTime|JarCount]
        # @type By: String

        attr_accessor :Quuid, :Filters, :Offset, :Limit, :Order, :By
        
        def initialize(quuid=nil, filters=nil, offset=nil, limit=nil, order=nil, by=nil)
          @Quuid = quuid
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Quuid = params['Quuid']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeAssetWebFrameList返回参数结构体
      class DescribeAssetWebFrameListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 记录总数
        # @type Total: Integer
        # @param WebFrames: 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebFrames: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :WebFrames, :RequestId
        
        def initialize(total=nil, webframes=nil, requestid=nil)
          @Total = total
          @WebFrames = webframes
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['WebFrames'].nil?
            @WebFrames = []
            params['WebFrames'].each do |i|
              assetwebframebaseinfo_tmp = AssetWebFrameBaseInfo.new
              assetwebframebaseinfo_tmp.deserialize(i)
              @WebFrames << assetwebframebaseinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetWebLocationInfo请求参数结构体
      class DescribeAssetWebLocationInfoRequest < TencentCloud::Common::AbstractModel
        # @param Quuid: 服务器Quuid
        # @type Quuid: String
        # @param Uuid: 服务器Uuid
        # @type Uuid: String
        # @param Id: 站点Id
        # @type Id: String

        attr_accessor :Quuid, :Uuid, :Id
        
        def initialize(quuid=nil, uuid=nil, id=nil)
          @Quuid = quuid
          @Uuid = uuid
          @Id = id
        end

        def deserialize(params)
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
          @Id = params['Id']
        end
      end

      # DescribeAssetWebLocationInfo返回参数结构体
      class DescribeAssetWebLocationInfoResponse < TencentCloud::Common::AbstractModel
        # @param WebLocation: 站点信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebLocation: :class:`Tencentcloud::Cwp.v20180228.models.AssetWebLocationInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WebLocation, :RequestId
        
        def initialize(weblocation=nil, requestid=nil)
          @WebLocation = weblocation
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WebLocation'].nil?
            @WebLocation = AssetWebLocationInfo.new
            @WebLocation.deserialize(params['WebLocation'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetWebLocationList请求参数结构体
      class DescribeAssetWebLocationListRequest < TencentCloud::Common::AbstractModel
        # @param Quuid: 查询指定Quuid主机的信息
        # @type Quuid: String
        # @param Filters: 过滤条件。
        # <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        # <li>Name - String - 是否必填：否 - 域名</li>
        # <li>User - String - 是否必填：否 - 运行用户</li>
        # <li>Port - uint64 - 是否必填：否 - 站点端口</li>
        # <li>Proto - uint64 - 是否必填：否 - 站点协议：1:HTTP,2:HTTPS</li>
        # <li>ServiceType - uint64 - 是否必填：否 - 服务类型：
        # 1:Tomcat
        # 2：Apache
        # 3:Nginx
        # 4:WebLogic
        # 5:Websphere
        # 6:JBoss
        # 7:WildFly
        # 8:Jetty
        # 9:IHS
        # 10:Tengine</li>
        # <li>OsType - String - 是否必填：否 - windows/linux</li>
        # <li>Os -String 是否必填: 否 - 操作系统( DescribeMachineOsList 接口 值 )</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Order: 排序方式，asc升序 或 desc降序
        # @type Order: String
        # @param By: 可选排序：[FirstTime|PathCount]
        # @type By: String

        attr_accessor :Quuid, :Filters, :Offset, :Limit, :Order, :By
        
        def initialize(quuid=nil, filters=nil, offset=nil, limit=nil, order=nil, by=nil)
          @Quuid = quuid
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Quuid = params['Quuid']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeAssetWebLocationList返回参数结构体
      class DescribeAssetWebLocationListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 记录总数
        # @type Total: Integer
        # @param Locations: 站点列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Locations: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Locations, :RequestId
        
        def initialize(total=nil, locations=nil, requestid=nil)
          @Total = total
          @Locations = locations
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Locations'].nil?
            @Locations = []
            params['Locations'].each do |i|
              assetweblocationbaseinfo_tmp = AssetWebLocationBaseInfo.new
              assetweblocationbaseinfo_tmp.deserialize(i)
              @Locations << assetweblocationbaseinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetWebServiceInfoList请求参数结构体
      class DescribeAssetWebServiceInfoListRequest < TencentCloud::Common::AbstractModel
        # @param Quuid: 查询指定Quuid主机的信息
        # @type Quuid: String
        # @param Filters: 过滤条件。
        # <li>User- string - 是否必填：否 - 运行用户</li>
        # <li>Name- string - 是否必填：否 - Web服务名：
        # 1:Tomcat
        # 2:Apache
        # 3:Nginx
        # 4:WebLogic
        # 5:Websphere
        # 6:JBoss
        # 7:WildFly
        # 8:Jetty
        # 9:IHS
        # 10:Tengine</li>
        # <li>OsType- string - 是否必填：否 - Windows/linux</li>
        # <li>Os -String 是否必填: 否 - 操作系统( DescribeMachineOsList 接口 值 )</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        # @type Offset: Integer
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Order: 排序方式，asc升序 或 desc降序
        # @type Order: String
        # @param By: 可选排序：[FirstTime|ProcessCount]
        # @type By: String

        attr_accessor :Quuid, :Filters, :Offset, :Limit, :Order, :By
        
        def initialize(quuid=nil, filters=nil, offset=nil, limit=nil, order=nil, by=nil)
          @Quuid = quuid
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Quuid = params['Quuid']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              assetfilters_tmp = AssetFilters.new
              assetfilters_tmp.deserialize(i)
              @Filters << assetfilters_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeAssetWebServiceInfoList返回参数结构体
      class DescribeAssetWebServiceInfoListResponse < TencentCloud::Common::AbstractModel
        # @param WebServices: 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebServices: Array
        # @param Total: 总数量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WebServices, :Total, :RequestId
        
        def initialize(webservices=nil, total=nil, requestid=nil)
          @WebServices = webservices
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WebServices'].nil?
            @WebServices = []
            params['WebServices'].each do |i|
              assetwebservicebaseinfo_tmp = AssetWebServiceBaseInfo.new
              assetwebservicebaseinfo_tmp.deserialize(i)
              @WebServices << assetwebservicebaseinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetWebServiceProcessList请求参数结构体
      class DescribeAssetWebServiceProcessListRequest < TencentCloud::Common::AbstractModel
        # @param Quuid: 主机Quuid
        # @type Quuid: String
        # @param Uuid: 主机Uuid
        # @type Uuid: String
        # @param Id: Web服务ID
        # @type Id: String
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer

        attr_accessor :Quuid, :Uuid, :Id, :Offset, :Limit
        
        def initialize(quuid=nil, uuid=nil, id=nil, offset=nil, limit=nil)
          @Quuid = quuid
          @Uuid = uuid
          @Id = id
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
          @Id = params['Id']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAssetWebServiceProcessList返回参数结构体
      class DescribeAssetWebServiceProcessListResponse < TencentCloud::Common::AbstractModel
        # @param Process: 进程列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Process: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Process, :Total, :RequestId
        
        def initialize(process=nil, total=nil, requestid=nil)
          @Process = process
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Process'].nil?
            @Process = []
            params['Process'].each do |i|
              assetappprocessinfo_tmp = AssetAppProcessInfo.new
              assetappprocessinfo_tmp.deserialize(i)
              @Process << assetappprocessinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAttackLogInfo请求参数结构体
      class DescribeAttackLogInfoRequest < TencentCloud::Common::AbstractModel
        # @param Id: 日志ID
        # @type Id: Integer

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DescribeAttackLogInfo返回参数结构体
      class DescribeAttackLogInfoResponse < TencentCloud::Common::AbstractModel
        # @param Id: 日志ID
        # @type Id: Integer
        # @param Quuid: 主机ID
        # @type Quuid: String
        # @param SrcPort: 攻击来源端口
        # @type SrcPort: Integer
        # @param SrcIp: 攻击来源IP
        # @type SrcIp: String
        # @param DstPort: 攻击目标端口
        # @type DstPort: Integer
        # @param DstIp: 攻击目标IP
        # @type DstIp: String
        # @param HttpMethod: 攻击方法
        # @type HttpMethod: String
        # @param HttpHost: 攻击目标主机
        # @type HttpHost: String
        # @param HttpHead: 攻击头信息
        # @type HttpHead: String
        # @param HttpUserAgent: 攻击者浏览器标识
        # @type HttpUserAgent: String
        # @param HttpReferer: 请求源
        # @type HttpReferer: String
        # @param VulType: 威胁类型
        # @type VulType: String
        # @param HttpCgi: 攻击路径
        # @type HttpCgi: String
        # @param HttpParam: 攻击参数
        # @type HttpParam: String
        # @param CreatedAt: 攻击时间
        # @type CreatedAt: String
        # @param HttpContent: 攻击内容
        # @type HttpContent: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :Quuid, :SrcPort, :SrcIp, :DstPort, :DstIp, :HttpMethod, :HttpHost, :HttpHead, :HttpUserAgent, :HttpReferer, :VulType, :HttpCgi, :HttpParam, :CreatedAt, :HttpContent, :RequestId
        
        def initialize(id=nil, quuid=nil, srcport=nil, srcip=nil, dstport=nil, dstip=nil, httpmethod=nil, httphost=nil, httphead=nil, httpuseragent=nil, httpreferer=nil, vultype=nil, httpcgi=nil, httpparam=nil, createdat=nil, httpcontent=nil, requestid=nil)
          @Id = id
          @Quuid = quuid
          @SrcPort = srcport
          @SrcIp = srcip
          @DstPort = dstport
          @DstIp = dstip
          @HttpMethod = httpmethod
          @HttpHost = httphost
          @HttpHead = httphead
          @HttpUserAgent = httpuseragent
          @HttpReferer = httpreferer
          @VulType = vultype
          @HttpCgi = httpcgi
          @HttpParam = httpparam
          @CreatedAt = createdat
          @HttpContent = httpcontent
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @Quuid = params['Quuid']
          @SrcPort = params['SrcPort']
          @SrcIp = params['SrcIp']
          @DstPort = params['DstPort']
          @DstIp = params['DstIp']
          @HttpMethod = params['HttpMethod']
          @HttpHost = params['HttpHost']
          @HttpHead = params['HttpHead']
          @HttpUserAgent = params['HttpUserAgent']
          @HttpReferer = params['HttpReferer']
          @VulType = params['VulType']
          @HttpCgi = params['HttpCgi']
          @HttpParam = params['HttpParam']
          @CreatedAt = params['CreatedAt']
          @HttpContent = params['HttpContent']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAttackLogs请求参数结构体
      class DescribeAttackLogsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>HttpMethod - String - 是否必填：否 - 攻击方法(POST|GET)</li>
        # <li>DateRange - String - 是否必填：否 - 时间范围(存储最近3个月的数据)，如最近一个月["2019-11-17", "2019-12-17"]</li>
        # <li>VulType - String 威胁类型 - 是否必填: 否</li>
        # <li>SrcIp - String 攻击源IP - 是否必填: 否</li>
        # <li>DstIp - String 攻击目标IP - 是否必填: 否</li>
        # <li>SrcPort - String 攻击源端口 - 是否必填: 否</li>
        # <li>DstPort - String 攻击目标端口 - 是否必填: 否</li>
        # @type Filters: Array
        # @param Uuid: 主机安全客户端ID
        # @type Uuid: String
        # @param Quuid: 云主机机器ID
        # @type Quuid: String

        attr_accessor :Limit, :Offset, :Filters, :Uuid, :Quuid
        
        def initialize(limit=nil, offset=nil, filters=nil, uuid=nil, quuid=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @Uuid = uuid
          @Quuid = quuid
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Uuid = params['Uuid']
          @Quuid = params['Quuid']
        end
      end

      # DescribeAttackLogs返回参数结构体
      class DescribeAttackLogsResponse < TencentCloud::Common::AbstractModel
        # @param AttackLogs: 日志列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttackLogs: Array
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AttackLogs, :TotalCount, :RequestId
        
        def initialize(attacklogs=nil, totalcount=nil, requestid=nil)
          @AttackLogs = attacklogs
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AttackLogs'].nil?
            @AttackLogs = []
            params['AttackLogs'].each do |i|
              defendattacklog_tmp = DefendAttackLog.new
              defendattacklog_tmp.deserialize(i)
              @AttackLogs << defendattacklog_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAttackVulTypeList请求参数结构体
      class DescribeAttackVulTypeListRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAttackVulTypeList返回参数结构体
      class DescribeAttackVulTypeListResponse < TencentCloud::Common::AbstractModel
        # @param List: 威胁类型列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :RequestId
        
        def initialize(list=nil, requestid=nil)
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @List = params['List']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAvailableExpertServiceDetail请求参数结构体
      class DescribeAvailableExpertServiceDetailRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAvailableExpertServiceDetail返回参数结构体
      class DescribeAvailableExpertServiceDetailResponse < TencentCloud::Common::AbstractModel
        # @param ExpertService: 安全管家订单
        # @type ExpertService: Array
        # @param EmergencyResponse: 应急响应可用次数
        # @type EmergencyResponse: Integer
        # @param ProtectNet: 旗舰护网可用次数
        # @type ProtectNet: Integer
        # @param ExpertServiceBuy: 是否购买过安全管家
        # @type ExpertServiceBuy: Boolean
        # @param EmergencyResponseBuy: 是否购买过应急响应
        # @type EmergencyResponseBuy: Boolean
        # @param ProtectNetBuy: 是否购买过旗舰护网
        # @type ProtectNetBuy: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ExpertService, :EmergencyResponse, :ProtectNet, :ExpertServiceBuy, :EmergencyResponseBuy, :ProtectNetBuy, :RequestId
        
        def initialize(expertservice=nil, emergencyresponse=nil, protectnet=nil, expertservicebuy=nil, emergencyresponsebuy=nil, protectnetbuy=nil, requestid=nil)
          @ExpertService = expertservice
          @EmergencyResponse = emergencyresponse
          @ProtectNet = protectnet
          @ExpertServiceBuy = expertservicebuy
          @EmergencyResponseBuy = emergencyresponsebuy
          @ProtectNetBuy = protectnetbuy
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ExpertService'].nil?
            @ExpertService = []
            params['ExpertService'].each do |i|
              expertserviceorderinfo_tmp = ExpertServiceOrderInfo.new
              expertserviceorderinfo_tmp.deserialize(i)
              @ExpertService << expertserviceorderinfo_tmp
            end
          end
          @EmergencyResponse = params['EmergencyResponse']
          @ProtectNet = params['ProtectNet']
          @ExpertServiceBuy = params['ExpertServiceBuy']
          @EmergencyResponseBuy = params['EmergencyResponseBuy']
          @ProtectNetBuy = params['ProtectNetBuy']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBanMode请求参数结构体
      class DescribeBanModeRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeBanMode返回参数结构体
      class DescribeBanModeResponse < TencentCloud::Common::AbstractModel
        # @param Mode: 阻断模式，STANDARD_MODE：标准阻断，DEEP_MODE：深度阻断
        # @type Mode: String
        # @param StandardModeConfig: 标准阻断模式的配置
        # @type StandardModeConfig: :class:`Tencentcloud::Cwp.v20180228.models.StandardModeConfig`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Mode, :StandardModeConfig, :RequestId
        
        def initialize(mode=nil, standardmodeconfig=nil, requestid=nil)
          @Mode = mode
          @StandardModeConfig = standardmodeconfig
          @RequestId = requestid
        end

        def deserialize(params)
          @Mode = params['Mode']
          unless params['StandardModeConfig'].nil?
            @StandardModeConfig = StandardModeConfig.new
            @StandardModeConfig.deserialize(params['StandardModeConfig'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBanRegions请求参数结构体
      class DescribeBanRegionsRequest < TencentCloud::Common::AbstractModel
        # @param Mode: 阻断模式，STANDARD_MODE：标准阻断，DEEP_MODE：深度阻断
        # @type Mode: String

        attr_accessor :Mode
        
        def initialize(mode=nil)
          @Mode = mode
        end

        def deserialize(params)
          @Mode = params['Mode']
        end
      end

      # DescribeBanRegions返回参数结构体
      class DescribeBanRegionsResponse < TencentCloud::Common::AbstractModel
        # @param RegionSet: 地域信息列表
        # @type RegionSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegionSet, :RequestId
        
        def initialize(regionset=nil, requestid=nil)
          @RegionSet = regionset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RegionSet'].nil?
            @RegionSet = []
            params['RegionSet'].each do |i|
              regionset_tmp = RegionSet.new
              regionset_tmp.deserialize(i)
              @RegionSet << regionset_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBanStatus请求参数结构体
      class DescribeBanStatusRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeBanStatus返回参数结构体
      class DescribeBanStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 阻断开关状态 0:关闭 1:开启
        # @type Status: Integer
        # @param ShowTips: 是否弹窗提示信息 false: 关闭，true: 开启
        # @type ShowTips: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :ShowTips, :RequestId
        
        def initialize(status=nil, showtips=nil, requestid=nil)
          @Status = status
          @ShowTips = showtips
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @ShowTips = params['ShowTips']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBanWhiteList请求参数结构体
      class DescribeBanWhiteListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，最大值为100。
        # @type Limit: Integer
        # @param Filters: 过滤条件。
        # <li>Keywords - String - 是否必填：否 - 查询关键字 </li>
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

      # DescribeBanWhiteList返回参数结构体
      class DescribeBanWhiteListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param WhiteList: 白名单列表
        # @type WhiteList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :WhiteList, :RequestId
        
        def initialize(totalcount=nil, whitelist=nil, requestid=nil)
          @TotalCount = totalcount
          @WhiteList = whitelist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['WhiteList'].nil?
            @WhiteList = []
            params['WhiteList'].each do |i|
              banwhitelistdetail_tmp = BanWhiteListDetail.new
              banwhitelistdetail_tmp.deserialize(i)
              @WhiteList << banwhitelistdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBaselineAnalysisData请求参数结构体
      class DescribeBaselineAnalysisDataRequest < TencentCloud::Common::AbstractModel
        # @param StrategyId: 基线策略id
        # @type StrategyId: Integer

        attr_accessor :StrategyId
        
        def initialize(strategyid=nil)
          @StrategyId = strategyid
        end

        def deserialize(params)
          @StrategyId = params['StrategyId']
        end
      end

      # DescribeBaselineAnalysisData返回参数结构体
      class DescribeBaselineAnalysisDataResponse < TencentCloud::Common::AbstractModel
        # @param LatestScanTime: 最后检测时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestScanTime: String
        # @param IsGlobal: 是否全部服务器：1-是 0-否
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsGlobal: Integer
        # @param ScanHostCount: 服务器总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanHostCount: Integer
        # @param ScanRuleCount: 检测项总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanRuleCount: Integer
        # @param IfFirstScan: 是否是第一次检测  1是 0不是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IfFirstScan: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LatestScanTime, :IsGlobal, :ScanHostCount, :ScanRuleCount, :IfFirstScan, :RequestId
        
        def initialize(latestscantime=nil, isglobal=nil, scanhostcount=nil, scanrulecount=nil, iffirstscan=nil, requestid=nil)
          @LatestScanTime = latestscantime
          @IsGlobal = isglobal
          @ScanHostCount = scanhostcount
          @ScanRuleCount = scanrulecount
          @IfFirstScan = iffirstscan
          @RequestId = requestid
        end

        def deserialize(params)
          @LatestScanTime = params['LatestScanTime']
          @IsGlobal = params['IsGlobal']
          @ScanHostCount = params['ScanHostCount']
          @ScanRuleCount = params['ScanRuleCount']
          @IfFirstScan = params['IfFirstScan']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBaselineBasicInfo请求参数结构体
      class DescribeBaselineBasicInfoRequest < TencentCloud::Common::AbstractModel
        # @param BaselineName: 基线名称
        # @type BaselineName: String

        attr_accessor :BaselineName
        
        def initialize(baselinename=nil)
          @BaselineName = baselinename
        end

        def deserialize(params)
          @BaselineName = params['BaselineName']
        end
      end

      # DescribeBaselineBasicInfo返回参数结构体
      class DescribeBaselineBasicInfoResponse < TencentCloud::Common::AbstractModel
        # @param BaselineBasicInfoList: 基线基础信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BaselineBasicInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BaselineBasicInfoList, :RequestId
        
        def initialize(baselinebasicinfolist=nil, requestid=nil)
          @BaselineBasicInfoList = baselinebasicinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BaselineBasicInfoList'].nil?
            @BaselineBasicInfoList = []
            params['BaselineBasicInfoList'].each do |i|
              baselinebasicinfo_tmp = BaselineBasicInfo.new
              baselinebasicinfo_tmp.deserialize(i)
              @BaselineBasicInfoList << baselinebasicinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBaselineDetail请求参数结构体
      class DescribeBaselineDetailRequest < TencentCloud::Common::AbstractModel
        # @param BaselineId: 基线id
        # @type BaselineId: Integer

        attr_accessor :BaselineId
        
        def initialize(baselineid=nil)
          @BaselineId = baselineid
        end

        def deserialize(params)
          @BaselineId = params['BaselineId']
        end
      end

      # DescribeBaselineDetail返回参数结构体
      class DescribeBaselineDetailResponse < TencentCloud::Common::AbstractModel
        # @param BaselineDetail: 基线详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BaselineDetail: :class:`Tencentcloud::Cwp.v20180228.models.BaselineDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BaselineDetail, :RequestId
        
        def initialize(baselinedetail=nil, requestid=nil)
          @BaselineDetail = baselinedetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BaselineDetail'].nil?
            @BaselineDetail = BaselineDetail.new
            @BaselineDetail.deserialize(params['BaselineDetail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBaselineEffectHostList请求参数结构体
      class DescribeBaselineEffectHostListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页参数 最大100条
        # @type Limit: Integer
        # @param Offset: 分页参数
        # @type Offset: Integer
        # @param BaselineId: 基线id
        # @type BaselineId: Integer
        # @param Filters: 过滤条件。
        # <li>AliasName- String- 主机别名</li>
        # <li>Status- Uint- 1已通过  0未通过 5检测中</li>
        # @type Filters: Array
        # @param StrategyId: 策略id
        # @type StrategyId: Integer
        # @param UuidList: 主机uuid数组
        # @type UuidList: Array

        attr_accessor :Limit, :Offset, :BaselineId, :Filters, :StrategyId, :UuidList
        
        def initialize(limit=nil, offset=nil, baselineid=nil, filters=nil, strategyid=nil, uuidlist=nil)
          @Limit = limit
          @Offset = offset
          @BaselineId = baselineid
          @Filters = filters
          @StrategyId = strategyid
          @UuidList = uuidlist
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @BaselineId = params['BaselineId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
          @StrategyId = params['StrategyId']
          @UuidList = params['UuidList']
        end
      end

      # DescribeBaselineEffectHostList返回参数结构体
      class DescribeBaselineEffectHostListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param EffectHostList: 影响服务器列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EffectHostList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :EffectHostList, :RequestId
        
        def initialize(totalcount=nil, effecthostlist=nil, requestid=nil)
          @TotalCount = totalcount
          @EffectHostList = effecthostlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['EffectHostList'].nil?
            @EffectHostList = []
            params['EffectHostList'].each do |i|
              baselineeffecthost_tmp = BaselineEffectHost.new
              baselineeffecthost_tmp.deserialize(i)
              @EffectHostList << baselineeffecthost_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBaselineHostTop请求参数结构体
      class DescribeBaselineHostTopRequest < TencentCloud::Common::AbstractModel
        # @param Top: 动态top值
        # @type Top: Integer
        # @param StrategyId: 策略id
        # @type StrategyId: Integer

        attr_accessor :Top, :StrategyId
        
        def initialize(top=nil, strategyid=nil)
          @Top = top
          @StrategyId = strategyid
        end

        def deserialize(params)
          @Top = params['Top']
          @StrategyId = params['StrategyId']
        end
      end

      # DescribeBaselineHostTop返回参数结构体
      class DescribeBaselineHostTopResponse < TencentCloud::Common::AbstractModel
        # @param BaselineHostTopList: 主机基线策略事件Top
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BaselineHostTopList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BaselineHostTopList, :RequestId
        
        def initialize(baselinehosttoplist=nil, requestid=nil)
          @BaselineHostTopList = baselinehosttoplist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BaselineHostTopList'].nil?
            @BaselineHostTopList = []
            params['BaselineHostTopList'].each do |i|
              baselinehosttoplist_tmp = BaselineHostTopList.new
              baselinehosttoplist_tmp.deserialize(i)
              @BaselineHostTopList << baselinehosttoplist_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBaselineList请求参数结构体
      class DescribeBaselineListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页参数 最大100条
        # @type Limit: Integer
        # @param Offset: 分页参数
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>StrategyId- Uint64 - 基线策略id</li>
        # <li>Status - Uint64 - 处理状态1已通过 0未通过</li>
        # <li>Level - Uint64[] - 处理状态1已通过 0未通过</li>BaselineName
        # <li>BaselineName  - String - 基线名称</li>
        # <li>Quuid- String - 主机quuid</li>
        # <li>Uuid- String - 主机uuid</li>
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters
        
        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
        end
      end

      # DescribeBaselineList返回参数结构体
      class DescribeBaselineListResponse < TencentCloud::Common::AbstractModel
        # @param BaselineList: 基线信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BaselineList: Array
        # @param TotalCount: 分页查询记录总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BaselineList, :TotalCount, :RequestId
        
        def initialize(baselinelist=nil, totalcount=nil, requestid=nil)
          @BaselineList = baselinelist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BaselineList'].nil?
            @BaselineList = []
            params['BaselineList'].each do |i|
              baselineinfo_tmp = BaselineInfo.new
              baselineinfo_tmp.deserialize(i)
              @BaselineList << baselineinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBaselineRule请求参数结构体
      class DescribeBaselineRuleRequest < TencentCloud::Common::AbstractModel
        # @param BaselineId: 基线id
        # @type BaselineId: Integer
        # @param Limit: 分页参数 最大100条
        # @type Limit: Integer
        # @param Offset: 分页参数
        # @type Offset: Integer
        # @param Level: 危害等级
        # @type Level: Array
        # @param Status: 状态
        # @type Status: Integer
        # @param Quuid: 主机quuid
        # @type Quuid: String
        # @param Uuid: 主机uuid
        # @type Uuid: String

        attr_accessor :BaselineId, :Limit, :Offset, :Level, :Status, :Quuid, :Uuid
        
        def initialize(baselineid=nil, limit=nil, offset=nil, level=nil, status=nil, quuid=nil, uuid=nil)
          @BaselineId = baselineid
          @Limit = limit
          @Offset = offset
          @Level = level
          @Status = status
          @Quuid = quuid
          @Uuid = uuid
        end

        def deserialize(params)
          @BaselineId = params['BaselineId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Level = params['Level']
          @Status = params['Status']
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
        end
      end

      # DescribeBaselineRule返回参数结构体
      class DescribeBaselineRuleResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 分页查询记录总数
        # @type TotalCount: Integer
        # @param BaselineRuleList: 基线检测项列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BaselineRuleList: Array
        # @param ShowRuleRemark: 是否显示说明列：true-是，false-否
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShowRuleRemark: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BaselineRuleList, :ShowRuleRemark, :RequestId
        
        def initialize(totalcount=nil, baselinerulelist=nil, showruleremark=nil, requestid=nil)
          @TotalCount = totalcount
          @BaselineRuleList = baselinerulelist
          @ShowRuleRemark = showruleremark
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BaselineRuleList'].nil?
            @BaselineRuleList = []
            params['BaselineRuleList'].each do |i|
              baselineruleinfo_tmp = BaselineRuleInfo.new
              baselineruleinfo_tmp.deserialize(i)
              @BaselineRuleList << baselineruleinfo_tmp
            end
          end
          @ShowRuleRemark = params['ShowRuleRemark']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBaselineScanSchedule请求参数结构体
      class DescribeBaselineScanScheduleRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: Integer

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeBaselineScanSchedule返回参数结构体
      class DescribeBaselineScanScheduleResponse < TencentCloud::Common::AbstractModel
        # @param Schedule: 检测进度(百分比)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Schedule: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Schedule, :RequestId
        
        def initialize(schedule=nil, requestid=nil)
          @Schedule = schedule
          @RequestId = requestid
        end

        def deserialize(params)
          @Schedule = params['Schedule']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBaselineStrategyDetail请求参数结构体
      class DescribeBaselineStrategyDetailRequest < TencentCloud::Common::AbstractModel
        # @param StrategyId: 用户基线策略id
        # @type StrategyId: Integer

        attr_accessor :StrategyId
        
        def initialize(strategyid=nil)
          @StrategyId = strategyid
        end

        def deserialize(params)
          @StrategyId = params['StrategyId']
        end
      end

      # DescribeBaselineStrategyDetail返回参数结构体
      class DescribeBaselineStrategyDetailResponse < TencentCloud::Common::AbstractModel
        # @param PassRate: 策略扫描通过率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PassRate: Integer
        # @param StrategyName: 策略名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrategyName: String
        # @param ScanCycle: 策略扫描周期(天)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanCycle: String
        # @param ScanAt: 定期检测时间, 该时间下发扫描
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanAt: String
        # @param IsGlobal: 扫描范围是否全部服务器, 1:是  0:否, 为1则为全部专业版主机
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsGlobal: Integer
        # @param MachineType: 云服务器类型：
        # cvm：腾讯云服务器
        # bm：裸金属
        # ecm：边缘计算主机
        # lh: 轻量应用服务器
        # ohter: 混合云机器
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MachineType: String
        # @param Region: 主机地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Quuids: 用户该策略下的所有主机id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Quuids: Array
        # @param CategoryIds: 用户该策略下所有的基线id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CategoryIds: Array
        # @param IfScanned: 1 表示扫描过, 0没扫描过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IfScanned: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PassRate, :StrategyName, :ScanCycle, :ScanAt, :IsGlobal, :MachineType, :Region, :Quuids, :CategoryIds, :IfScanned, :RequestId
        
        def initialize(passrate=nil, strategyname=nil, scancycle=nil, scanat=nil, isglobal=nil, machinetype=nil, region=nil, quuids=nil, categoryids=nil, ifscanned=nil, requestid=nil)
          @PassRate = passrate
          @StrategyName = strategyname
          @ScanCycle = scancycle
          @ScanAt = scanat
          @IsGlobal = isglobal
          @MachineType = machinetype
          @Region = region
          @Quuids = quuids
          @CategoryIds = categoryids
          @IfScanned = ifscanned
          @RequestId = requestid
        end

        def deserialize(params)
          @PassRate = params['PassRate']
          @StrategyName = params['StrategyName']
          @ScanCycle = params['ScanCycle']
          @ScanAt = params['ScanAt']
          @IsGlobal = params['IsGlobal']
          @MachineType = params['MachineType']
          @Region = params['Region']
          @Quuids = params['Quuids']
          @CategoryIds = params['CategoryIds']
          @IfScanned = params['IfScanned']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBaselineStrategyList请求参数结构体
      class DescribeBaselineStrategyListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页参数 最大100
        # @type Limit: Integer
        # @param Offset: 分页参数
        # @type Offset: Integer
        # @param Enabled: 规则开关，1：打开 0：关闭  2:全部
        # @type Enabled: Integer

        attr_accessor :Limit, :Offset, :Enabled
        
        def initialize(limit=nil, offset=nil, enabled=nil)
          @Limit = limit
          @Offset = offset
          @Enabled = enabled
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Enabled = params['Enabled']
        end
      end

      # DescribeBaselineStrategyList返回参数结构体
      class DescribeBaselineStrategyListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 分页查询记录的总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param StrategyList: 用户策略信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrategyList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :StrategyList, :RequestId
        
        def initialize(totalcount=nil, strategylist=nil, requestid=nil)
          @TotalCount = totalcount
          @StrategyList = strategylist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['StrategyList'].nil?
            @StrategyList = []
            params['StrategyList'].each do |i|
              strategy_tmp = Strategy.new
              strategy_tmp.deserialize(i)
              @StrategyList << strategy_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBaselineTop请求参数结构体
      class DescribeBaselineTopRequest < TencentCloud::Common::AbstractModel
        # @param Top: 动态top值
        # @type Top: Integer
        # @param StrategyId: 策略id
        # @type StrategyId: Integer

        attr_accessor :Top, :StrategyId
        
        def initialize(top=nil, strategyid=nil)
          @Top = top
          @StrategyId = strategyid
        end

        def deserialize(params)
          @Top = params['Top']
          @StrategyId = params['StrategyId']
        end
      end

      # DescribeBaselineTop返回参数结构体
      class DescribeBaselineTopResponse < TencentCloud::Common::AbstractModel
        # @param RuleTopList: 检测项Top列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleTopList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleTopList, :RequestId
        
        def initialize(ruletoplist=nil, requestid=nil)
          @RuleTopList = ruletoplist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RuleTopList'].nil?
            @RuleTopList = []
            params['RuleTopList'].each do |i|
              baselineruletopinfo_tmp = BaselineRuleTopInfo.new
              baselineruletopinfo_tmp.deserialize(i)
              @RuleTopList << baselineruletopinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBashEvents请求参数结构体
      class DescribeBashEventsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Keywords - String - 是否必填：否 - 关键词(主机内网IP)</li>
        # @type Filters: Array
        # @param Order: 排序方式：根据请求次数排序：asc-升序/desc-降序
        # @type Order: String
        # @param By: 排序字段：CreateTime-发生时间。ModifyTime-处理时间
        # @type By: String

        attr_accessor :Limit, :Offset, :Filters, :Order, :By
        
        def initialize(limit=nil, offset=nil, filters=nil, order=nil, by=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeBashEvents返回参数结构体
      class DescribeBashEventsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param List: 高危命令事件列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :List, :RequestId
        
        def initialize(totalcount=nil, list=nil, requestid=nil)
          @TotalCount = totalcount
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              bashevent_tmp = BashEvent.new
              bashevent_tmp.deserialize(i)
              @List << bashevent_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBashRules请求参数结构体
      class DescribeBashRulesRequest < TencentCloud::Common::AbstractModel
        # @param Type: 0-系统规则; 1-用户规则
        # @type Type: Integer
        # @param Limit: 返回数量，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Keywords - String - 是否必填：否 - 关键字(规则名称)</li>
        # @type Filters: Array

        attr_accessor :Type, :Limit, :Offset, :Filters
        
        def initialize(type=nil, limit=nil, offset=nil, filters=nil)
          @Type = type
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Type = params['Type']
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeBashRules返回参数结构体
      class DescribeBashRulesResponse < TencentCloud::Common::AbstractModel
        # @param List: 列表内容
        # @type List: Array
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              bashrule_tmp = BashRule.new
              bashrule_tmp.deserialize(i)
              @List << bashrule_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBruteAttackList请求参数结构体
      class DescribeBruteAttackListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        # <li>Uuid - String - 是否必填：否 - 云镜唯一Uuid</li>
        # <li>Quuid - String - 是否必填：否 - 云服务器uuid</li>
        # <li>Status - String - 是否必填：否 - 状态筛选：失败：FAILED 成功：SUCCESS</li>
        # <li>UserName - String - 是否必填：否 - UserName筛选</li>
        # <li>SrcIp - String - 是否必填：否 - 来源ip筛选</li>
        # <li>CreateBeginTime - String - 是否必填：否 - 首次攻击时间筛选，开始时间</li>
        # <li>CreateEndTime - String - 是否必填：否 - 首次攻击时间筛选，结束时间</li>
        # <li>ModifyBeginTime - String - 是否必填：否 - 最近攻击时间筛选，开始时间</li>
        # <li>ModifyEndTime - String - 是否必填：否 - 最近攻击时间筛选，结束时间</li>
        # <li>Banned - String - 是否必填：否 - 阻断状态筛选，多个用","分割：0-未阻断（全局ZK开关关闭），82-未阻断(非专业版)，83-未阻断(已加白名单)，1-已阻断，2-未阻断-程序异常，3-未阻断-内网攻击暂不支持阻断，4-未阻断-安平暂不支持阻断</li>
        # @type Filters: Array
        # @param Order: 排序方式：根据请求次数排序：asc-升序/desc-降序
        # @type Order: String
        # @param By: 排序字段：CreateTime-首次攻击时间
        # @type By: String

        attr_accessor :Limit, :Offset, :Filters, :Order, :By
        
        def initialize(limit=nil, offset=nil, filters=nil, order=nil, by=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeBruteAttackList返回参数结构体
      class DescribeBruteAttackListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param BruteAttackList: 密码破解列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BruteAttackList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BruteAttackList, :RequestId
        
        def initialize(totalcount=nil, bruteattacklist=nil, requestid=nil)
          @TotalCount = totalcount
          @BruteAttackList = bruteattacklist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BruteAttackList'].nil?
            @BruteAttackList = []
            params['BruteAttackList'].each do |i|
              bruteattackinfo_tmp = BruteAttackInfo.new
              bruteattackinfo_tmp.deserialize(i)
              @BruteAttackList << bruteattackinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBruteAttackRules请求参数结构体
      class DescribeBruteAttackRulesRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeBruteAttackRules返回参数结构体
      class DescribeBruteAttackRulesResponse < TencentCloud::Common::AbstractModel
        # @param Rules: 爆破阻断规则列表
        # @type Rules: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rules, :RequestId
        
        def initialize(rules=nil, requestid=nil)
          @Rules = rules
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              bruteattackrulelist_tmp = BruteAttackRuleList.new
              bruteattackrulelist_tmp.deserialize(i)
              @Rules << bruteattackrulelist_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeComponentStatistics请求参数结构体
      class DescribeComponentStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # ComponentName - String - 是否必填：否 - 组件名称
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters
        
        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeComponentStatistics返回参数结构体
      class DescribeComponentStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 组件统计列表记录总数。
        # @type TotalCount: Integer
        # @param ComponentStatistics: 组件统计列表数据数组。
        # @type ComponentStatistics: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ComponentStatistics, :RequestId
        
        def initialize(totalcount=nil, componentstatistics=nil, requestid=nil)
          @TotalCount = totalcount
          @ComponentStatistics = componentstatistics
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ComponentStatistics'].nil?
            @ComponentStatistics = []
            params['ComponentStatistics'].each do |i|
              componentstatistics_tmp = ComponentStatistics.new
              componentstatistics_tmp.deserialize(i)
              @ComponentStatistics << componentstatistics_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeESAggregations请求参数结构体
      class DescribeESAggregationsRequest < TencentCloud::Common::AbstractModel
        # @param Query: ES聚合条件JSON
        # @type Query: String

        attr_accessor :Query
        
        def initialize(query=nil)
          @Query = query
        end

        def deserialize(params)
          @Query = params['Query']
        end
      end

      # DescribeESAggregations返回参数结构体
      class DescribeESAggregationsResponse < TencentCloud::Common::AbstractModel
        # @param Data: ES聚合结果JSON
        # @type Data: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeESHits请求参数结构体
      class DescribeESHitsRequest < TencentCloud::Common::AbstractModel
        # @param Query: ES查询条件JSON
        # @type Query: String
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，最大值为100。
        # @type Limit: Integer

        attr_accessor :Query, :Offset, :Limit
        
        def initialize(query=nil, offset=nil, limit=nil)
          @Query = query
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Query = params['Query']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeESHits返回参数结构体
      class DescribeESHitsResponse < TencentCloud::Common::AbstractModel
        # @param Data: ES查询结果JSON
        # @type Data: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEmergencyResponseList请求参数结构体
      class DescribeEmergencyResponseListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件。
        # <li>Keyword- String - 是否必填：否 - 关键词过滤，</li>
        # <li>Uuids - String - 是否必填：否 - 主机id过滤</li>
        # @type Filters: Array
        # @param Limit: 需要返回的数量，最大值为100
        # @type Limit: Integer
        # @param Offset: 排序步长
        # @type Offset: Integer
        # @param Order: 排序方法
        # @type Order: String
        # @param By: 排序字段 StartTime，EndTime
        # @type By: String

        attr_accessor :Filters, :Limit, :Offset, :Order, :By
        
        def initialize(filters=nil, limit=nil, offset=nil, order=nil, by=nil)
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @Order = order
          @By = by
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeEmergencyResponseList返回参数结构体
      class DescribeEmergencyResponseListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param List: 应急响应列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :List, :RequestId
        
        def initialize(totalcount=nil, list=nil, requestid=nil)
          @TotalCount = totalcount
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              emergencyresponseinfo_tmp = EmergencyResponseInfo.new
              emergencyresponseinfo_tmp.deserialize(i)
              @List << emergencyresponseinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEmergencyVulList请求参数结构体
      class DescribeEmergencyVulListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Status - String - 是否必填：是 - 漏洞状态筛选，0//未检测 1有风险 ，2无风险 ，3 检查中展示progress</li>
        # <li>Level - String - 是否必填：否 - 漏洞等级筛选 1:低 2:中 3:高 4:提示</li>
        # <li>VulName- String - 是否必填：否 - 漏洞名称搜索</li>
        # <li>Uuids- String - 是否必填：否 - 主机uuid</li>
        # <li>IsSupportDefense - int- 是否必填：否 - 是否支持防御 0:不支持 1:支持</li>
        # @type Filters: Array
        # @param Order: 排序方式 desc , asc
        # @type Order: String
        # @param By: 排序字段 PublishDate  LastScanTime HostCount
        # @type By: String

        attr_accessor :Limit, :Offset, :Filters, :Order, :By
        
        def initialize(limit=nil, offset=nil, filters=nil, order=nil, by=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeEmergencyVulList返回参数结构体
      class DescribeEmergencyVulListResponse < TencentCloud::Common::AbstractModel
        # @param List: 漏洞列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param TotalCount: 漏洞总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param ExistsRisk: 是否存在风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExistsRisk: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :TotalCount, :ExistsRisk, :RequestId
        
        def initialize(list=nil, totalcount=nil, existsrisk=nil, requestid=nil)
          @List = list
          @TotalCount = totalcount
          @ExistsRisk = existsrisk
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              emergencyvul_tmp = EmergencyVul.new
              emergencyvul_tmp.deserialize(i)
              @List << emergencyvul_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @ExistsRisk = params['ExistsRisk']
          @RequestId = params['RequestId']
        end
      end

      # DescribeExpertServiceList请求参数结构体
      class DescribeExpertServiceListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件。
        # <li>Keyword- String - 是否必填：否 - 关键词过滤，</li>
        # <li>Uuids - String - 是否必填：否 - 主机id过滤</li>
        # @type Filters: Array
        # @param Limit: 需要返回的数量，最大值为100
        # @type Limit: Integer
        # @param Offset: 排序步长
        # @type Offset: Integer
        # @param Order: 排序方法
        # @type Order: String
        # @param By: 排序字段 StartTime，EndTime
        # @type By: String

        attr_accessor :Filters, :Limit, :Offset, :Order, :By
        
        def initialize(filters=nil, limit=nil, offset=nil, order=nil, by=nil)
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @Order = order
          @By = by
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeExpertServiceList返回参数结构体
      class DescribeExpertServiceListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param List: 安全管家数据
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :List, :RequestId
        
        def initialize(totalcount=nil, list=nil, requestid=nil)
          @TotalCount = totalcount
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              securitybutlerinfo_tmp = SecurityButlerInfo.new
              securitybutlerinfo_tmp.deserialize(i)
              @List << securitybutlerinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeExpertServiceOrderList请求参数结构体
      class DescribeExpertServiceOrderListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: <li>InquireType- String - 是否必填：否 - 订单类型过滤，</li>
        # @type Filters: Array
        # @param Limit: 分页条数 最大100条
        # @type Limit: Integer
        # @param Offset: 分页步长
        # @type Offset: Integer

        attr_accessor :Filters, :Limit, :Offset
        
        def initialize(filters=nil, limit=nil, offset=nil)
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeExpertServiceOrderList返回参数结构体
      class DescribeExpertServiceOrderListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param List: 订单列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :List, :RequestId
        
        def initialize(totalcount=nil, list=nil, requestid=nil)
          @TotalCount = totalcount
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              expertserviceorderinfo_tmp = ExpertServiceOrderInfo.new
              expertserviceorderinfo_tmp.deserialize(i)
              @List << expertserviceorderinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeExportMachines请求参数结构体
      class DescribeExportMachinesRequest < TencentCloud::Common::AbstractModel
        # @param MachineType: 云主机类型。
        # <li>CVM：表示虚拟主机</li>
        # <li>BM:  表示黑石物理机</li>
        # @type MachineType: String
        # @param MachineRegion: 机器所属地域。如：ap-guangzhou，ap-shanghai
        # @type MachineRegion: String
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Keywords - String - 是否必填：否 - 查询关键字 </li>
        # <li>Status - String - 是否必填：否 - 客户端在线状态（OFFLINE: 离线 | ONLINE: 在线 | UNINSTALLED：未安装）</li>
        # <li>Version - String  是否必填：否 - 当前防护版本（ PRO_VERSION：专业版 | BASIC_VERSION：基础版）</li>
        # 每个过滤条件只支持一个值，暂不支持多个值“或”关系查询
        # @type Filters: Array
        # @param ProjectIds: 机器所属业务ID列表
        # @type ProjectIds: Array

        attr_accessor :MachineType, :MachineRegion, :Limit, :Offset, :Filters, :ProjectIds
        
        def initialize(machinetype=nil, machineregion=nil, limit=nil, offset=nil, filters=nil, projectids=nil)
          @MachineType = machinetype
          @MachineRegion = machineregion
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @ProjectIds = projectids
        end

        def deserialize(params)
          @MachineType = params['MachineType']
          @MachineRegion = params['MachineRegion']
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @ProjectIds = params['ProjectIds']
        end
      end

      # DescribeExportMachines返回参数结构体
      class DescribeExportMachinesResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeGeneralStat请求参数结构体
      class DescribeGeneralStatRequest < TencentCloud::Common::AbstractModel
        # @param MachineType: 云主机类型。
        # <li>CVM：表示腾讯云服务器</li>
        # <li>BM:  表示黑石物理机</li>
        # <li>ECM:  表示边缘计算服务器</li>
        # <li>LH:  表示轻量应用服务器</li>
        # <li>Other:  表示混合云机器</li>
        # @type MachineType: String
        # @param MachineRegion: 机器所属地域。如：ap-guangzhou，ap-shanghai
        # @type MachineRegion: String

        attr_accessor :MachineType, :MachineRegion
        
        def initialize(machinetype=nil, machineregion=nil)
          @MachineType = machinetype
          @MachineRegion = machineregion
        end

        def deserialize(params)
          @MachineType = params['MachineType']
          @MachineRegion = params['MachineRegion']
        end
      end

      # DescribeGeneralStat返回参数结构体
      class DescribeGeneralStatResponse < TencentCloud::Common::AbstractModel
        # @param MachinesAll: 云主机总数
        # @type MachinesAll: Integer
        # @param MachinesUninstalled: 云主机没有安装主机安全客户端的总数
        # @type MachinesUninstalled: Integer
        # @param AgentsAll: 主机安全客户端总数的总数
        # @type AgentsAll: Integer
        # @param AgentsOnline: 主机安全客户端在线的总数
        # @type AgentsOnline: Integer
        # @param AgentsOffline: 主机安全客户端 离线+关机 的总数
        # @type AgentsOffline: Integer
        # @param AgentsPro: 主机安全客户端专业版的总数
        # @type AgentsPro: Integer
        # @param AgentsBasic: 主机安全客户端基础版的总数
        # @type AgentsBasic: Integer
        # @param AgentsProExpireWithInSevenDays: 7天内到期的预付费专业版总数
        # @type AgentsProExpireWithInSevenDays: Integer
        # @param RiskMachine: 风险主机总数
        # @type RiskMachine: Integer
        # @param Shutdown: 已关机总数
        # @type Shutdown: Integer
        # @param Offline: 已离线总数
        # @type Offline: Integer
        # @param FlagshipMachineCnt: 旗舰版主机数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlagshipMachineCnt: Integer
        # @param ProtectDays: 保护天数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProtectDays: Integer
        # @param AddedOnTheFifteen: 15天内新增的主机数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddedOnTheFifteen: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MachinesAll, :MachinesUninstalled, :AgentsAll, :AgentsOnline, :AgentsOffline, :AgentsPro, :AgentsBasic, :AgentsProExpireWithInSevenDays, :RiskMachine, :Shutdown, :Offline, :FlagshipMachineCnt, :ProtectDays, :AddedOnTheFifteen, :RequestId
        
        def initialize(machinesall=nil, machinesuninstalled=nil, agentsall=nil, agentsonline=nil, agentsoffline=nil, agentspro=nil, agentsbasic=nil, agentsproexpirewithinsevendays=nil, riskmachine=nil, shutdown=nil, offline=nil, flagshipmachinecnt=nil, protectdays=nil, addedonthefifteen=nil, requestid=nil)
          @MachinesAll = machinesall
          @MachinesUninstalled = machinesuninstalled
          @AgentsAll = agentsall
          @AgentsOnline = agentsonline
          @AgentsOffline = agentsoffline
          @AgentsPro = agentspro
          @AgentsBasic = agentsbasic
          @AgentsProExpireWithInSevenDays = agentsproexpirewithinsevendays
          @RiskMachine = riskmachine
          @Shutdown = shutdown
          @Offline = offline
          @FlagshipMachineCnt = flagshipmachinecnt
          @ProtectDays = protectdays
          @AddedOnTheFifteen = addedonthefifteen
          @RequestId = requestid
        end

        def deserialize(params)
          @MachinesAll = params['MachinesAll']
          @MachinesUninstalled = params['MachinesUninstalled']
          @AgentsAll = params['AgentsAll']
          @AgentsOnline = params['AgentsOnline']
          @AgentsOffline = params['AgentsOffline']
          @AgentsPro = params['AgentsPro']
          @AgentsBasic = params['AgentsBasic']
          @AgentsProExpireWithInSevenDays = params['AgentsProExpireWithInSevenDays']
          @RiskMachine = params['RiskMachine']
          @Shutdown = params['Shutdown']
          @Offline = params['Offline']
          @FlagshipMachineCnt = params['FlagshipMachineCnt']
          @ProtectDays = params['ProtectDays']
          @AddedOnTheFifteen = params['AddedOnTheFifteen']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHistoryAccounts请求参数结构体
      class DescribeHistoryAccountsRequest < TencentCloud::Common::AbstractModel
        # @param Uuid: 云镜客户端唯一Uuid。
        # @type Uuid: String
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Username - String - 是否必填：否 - 帐号名</li>
        # @type Filters: Array

        attr_accessor :Uuid, :Limit, :Offset, :Filters
        
        def initialize(uuid=nil, limit=nil, offset=nil, filters=nil)
          @Uuid = uuid
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Uuid = params['Uuid']
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeHistoryAccounts返回参数结构体
      class DescribeHistoryAccountsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 帐号变更历史列表记录总数。
        # @type TotalCount: Integer
        # @param HistoryAccounts: 帐号变更历史数据数组。
        # @type HistoryAccounts: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :HistoryAccounts, :RequestId
        
        def initialize(totalcount=nil, historyaccounts=nil, requestid=nil)
          @TotalCount = totalcount
          @HistoryAccounts = historyaccounts
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['HistoryAccounts'].nil?
            @HistoryAccounts = []
            params['HistoryAccounts'].each do |i|
              historyaccount_tmp = HistoryAccount.new
              historyaccount_tmp.deserialize(i)
              @HistoryAccounts << historyaccount_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeHistoryService请求参数结构体
      class DescribeHistoryServiceRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeHistoryService返回参数结构体
      class DescribeHistoryServiceResponse < TencentCloud::Common::AbstractModel
        # @param BuyStatus: 1 可购买 2 只能升降配 3 只能跳到续费管理页
        # @type BuyStatus: Integer
        # @param InquireNum: 用户已购容量 单位 G
        # @type InquireNum: Integer
        # @param EndTime: 到期时间
        # @type EndTime: String
        # @param IsAutoOpenRenew: 是否自动续费,0 初始值, 1 开通 2 没开通
        # @type IsAutoOpenRenew: Integer
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param Status: 0 没开通 1 正常 2隔离 3销毁
        # @type Status: Integer
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BuyStatus, :InquireNum, :EndTime, :IsAutoOpenRenew, :ResourceId, :Status, :StartTime, :RequestId
        
        def initialize(buystatus=nil, inquirenum=nil, endtime=nil, isautoopenrenew=nil, resourceid=nil, status=nil, starttime=nil, requestid=nil)
          @BuyStatus = buystatus
          @InquireNum = inquirenum
          @EndTime = endtime
          @IsAutoOpenRenew = isautoopenrenew
          @ResourceId = resourceid
          @Status = status
          @StartTime = starttime
          @RequestId = requestid
        end

        def deserialize(params)
          @BuyStatus = params['BuyStatus']
          @InquireNum = params['InquireNum']
          @EndTime = params['EndTime']
          @IsAutoOpenRenew = params['IsAutoOpenRenew']
          @ResourceId = params['ResourceId']
          @Status = params['Status']
          @StartTime = params['StartTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHostLoginList请求参数结构体
      class DescribeHostLoginListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        # <li>Uuid - String - 是否必填：否 - 云镜唯一Uuid</li>
        # <li>Quuid - String - 是否必填：否 - 云服务器uuid</li>
        # <li>UserName - String - 是否必填：否 - 用户名筛选</li>
        # <li>LoginTimeBegin - String - 是否必填：否 - 按照修改时间段筛选，开始时间</li>
        # <li>LoginTimeEnd - String - 是否必填：否 - 按照修改时间段筛选，结束时间</li>
        # <li>SrcIp - String - 是否必填：否 - 来源ip筛选</li>
        # <li>Status - int - 是否必填：否 - 状态筛选1:正常登录；5：已加白,14:已处理，15：已忽略</li>
        # <li>RiskLevel - int - 是否必填：否 - 状态筛选0:高危；1：可疑</li>
        # @type Filters: Array
        # @param Order: 排序方式：根据请求次数排序：asc-升序/desc-降序
        # @type Order: String
        # @param By: 排序字段：LoginTime-发生时间
        # @type By: String

        attr_accessor :Limit, :Offset, :Filters, :Order, :By
        
        def initialize(limit=nil, offset=nil, filters=nil, order=nil, by=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeHostLoginList返回参数结构体
      class DescribeHostLoginListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param HostLoginList: 登录审计列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostLoginList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :HostLoginList, :RequestId
        
        def initialize(totalcount=nil, hostloginlist=nil, requestid=nil)
          @TotalCount = totalcount
          @HostLoginList = hostloginlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['HostLoginList'].nil?
            @HostLoginList = []
            params['HostLoginList'].each do |i|
              hostloginlist_tmp = HostLoginList.new
              hostloginlist_tmp.deserialize(i)
              @HostLoginList << hostloginlist_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIgnoreBaselineRule请求参数结构体
      class DescribeIgnoreBaselineRuleRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页参数 最大100条
        # @type Limit: Integer
        # @param Offset: 分页参数
        # @type Offset: Integer
        # @param RuleName: 检测项名称
        # @type RuleName: String

        attr_accessor :Limit, :Offset, :RuleName
        
        def initialize(limit=nil, offset=nil, rulename=nil)
          @Limit = limit
          @Offset = offset
          @RuleName = rulename
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @RuleName = params['RuleName']
        end
      end

      # DescribeIgnoreBaselineRule返回参数结构体
      class DescribeIgnoreBaselineRuleResponse < TencentCloud::Common::AbstractModel
        # @param IgnoreBaselineRuleList: 忽略基线检测项列表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IgnoreBaselineRuleList: Array
        # @param TotalCount: 分页查询记录总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IgnoreBaselineRuleList, :TotalCount, :RequestId
        
        def initialize(ignorebaselinerulelist=nil, totalcount=nil, requestid=nil)
          @IgnoreBaselineRuleList = ignorebaselinerulelist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['IgnoreBaselineRuleList'].nil?
            @IgnoreBaselineRuleList = []
            params['IgnoreBaselineRuleList'].each do |i|
              ignorebaselinerule_tmp = IgnoreBaselineRule.new
              ignorebaselinerule_tmp.deserialize(i)
              @IgnoreBaselineRuleList << ignorebaselinerule_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIgnoreRuleEffectHostList请求参数结构体
      class DescribeIgnoreRuleEffectHostListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页参数 最大100条
        # @type Limit: Integer
        # @param Offset: 分页参数
        # @type Offset: Integer
        # @param RuleId: 检测项id
        # @type RuleId: Integer
        # @param Filters: 过滤条件。
        # <li>AliasName- String- 主机别名</li>
        # @type Filters: Array
        # @param TagNames: 主机标签名
        # @type TagNames: Array

        attr_accessor :Limit, :Offset, :RuleId, :Filters, :TagNames
        
        def initialize(limit=nil, offset=nil, ruleid=nil, filters=nil, tagnames=nil)
          @Limit = limit
          @Offset = offset
          @RuleId = ruleid
          @Filters = filters
          @TagNames = tagnames
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @RuleId = params['RuleId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
          @TagNames = params['TagNames']
        end
      end

      # DescribeIgnoreRuleEffectHostList返回参数结构体
      class DescribeIgnoreRuleEffectHostListResponse < TencentCloud::Common::AbstractModel
        # @param IgnoreRuleEffectHostList: 忽略检测项影响主机列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IgnoreRuleEffectHostList: Array
        # @param TotalCount: 分页查询记录总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IgnoreRuleEffectHostList, :TotalCount, :RequestId
        
        def initialize(ignoreruleeffecthostlist=nil, totalcount=nil, requestid=nil)
          @IgnoreRuleEffectHostList = ignoreruleeffecthostlist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['IgnoreRuleEffectHostList'].nil?
            @IgnoreRuleEffectHostList = []
            params['IgnoreRuleEffectHostList'].each do |i|
              ignoreruleeffecthostinfo_tmp = IgnoreRuleEffectHostInfo.new
              ignoreruleeffecthostinfo_tmp.deserialize(i)
              @IgnoreRuleEffectHostList << ignoreruleeffecthostinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeImportMachineInfo请求参数结构体
      class DescribeImportMachineInfoRequest < TencentCloud::Common::AbstractModel
        # @param MachineList: 服务器内网IP（默认）/ 服务器名称 / 服务器ID 数组 (最大 1000条)
        # @type MachineList: Array
        # @param ImportType: 批量导入的数据类型：Ip、Name、Id 三选一
        # @type ImportType: String
        # @param IsQueryProMachine: 该参数已作废.
        # @type IsQueryProMachine: Boolean
        # @param Filters: 过滤条件：
        # <li>Version - String  是否必填：否 - 当前防护版本（ PRO_VERSION：专业版 | BASIC_VERSION：基础版 | Flagship：旗舰版 | ProtectedMachines：专业版+旗舰版） | BASIC_PROPOST_GENERAL_DISCOUNT：普惠版+专业版按量计费+基础版主机 | UnFlagship：专业版预付费+专业版后付费+基础版+普惠版</li>
        # @type Filters: Array

        attr_accessor :MachineList, :ImportType, :IsQueryProMachine, :Filters
        
        def initialize(machinelist=nil, importtype=nil, isquerypromachine=nil, filters=nil)
          @MachineList = machinelist
          @ImportType = importtype
          @IsQueryProMachine = isquerypromachine
          @Filters = filters
        end

        def deserialize(params)
          @MachineList = params['MachineList']
          @ImportType = params['ImportType']
          @IsQueryProMachine = params['IsQueryProMachine']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
        end
      end

      # DescribeImportMachineInfo返回参数结构体
      class DescribeImportMachineInfoResponse < TencentCloud::Common::AbstractModel
        # @param EffectiveMachineInfoList: 有效的机器信息列表：机器名称、机器公网/内网ip、机器标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EffectiveMachineInfoList: Array
        # @param InvalidMachineList: 用户批量导入失败的机器列表（例如机器不存在等...）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvalidMachineList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EffectiveMachineInfoList, :InvalidMachineList, :RequestId
        
        def initialize(effectivemachineinfolist=nil, invalidmachinelist=nil, requestid=nil)
          @EffectiveMachineInfoList = effectivemachineinfolist
          @InvalidMachineList = invalidmachinelist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EffectiveMachineInfoList'].nil?
            @EffectiveMachineInfoList = []
            params['EffectiveMachineInfoList'].each do |i|
              effectivemachineinfo_tmp = EffectiveMachineInfo.new
              effectivemachineinfo_tmp.deserialize(i)
              @EffectiveMachineInfoList << effectivemachineinfo_tmp
            end
          end
          @InvalidMachineList = params['InvalidMachineList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIndexList请求参数结构体
      class DescribeIndexListRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeIndexList返回参数结构体
      class DescribeIndexListResponse < TencentCloud::Common::AbstractModel
        # @param Data: ES 索引信息
        # @type Data: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLicenseBindList请求参数结构体
      class DescribeLicenseBindListRequest < TencentCloud::Common::AbstractModel
        # @param LicenseId: 授权ID
        # @type LicenseId: Integer
        # @param LicenseType: 授权类型
        # @type LicenseType: Integer
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param Filters: <li>Keywords 机器别名/公私IP 模糊查询</li>
        # @type Filters: Array
        # @param Limit: 限制条数,默认10.
        # @type Limit: Integer
        # @param Offset: 偏移量,默认0.
        # @type Offset: Integer

        attr_accessor :LicenseId, :LicenseType, :ResourceId, :Filters, :Limit, :Offset
        
        def initialize(licenseid=nil, licensetype=nil, resourceid=nil, filters=nil, limit=nil, offset=nil)
          @LicenseId = licenseid
          @LicenseType = licensetype
          @ResourceId = resourceid
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @LicenseId = params['LicenseId']
          @LicenseType = params['LicenseType']
          @ResourceId = params['ResourceId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeLicenseBindList返回参数结构体
      class DescribeLicenseBindListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param List: 绑定机器列表信息
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :List, :RequestId
        
        def initialize(totalcount=nil, list=nil, requestid=nil)
          @TotalCount = totalcount
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              licensebinddetail_tmp = LicenseBindDetail.new
              licensebinddetail_tmp.deserialize(i)
              @List << licensebinddetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLicenseBindSchedule请求参数结构体
      class DescribeLicenseBindScheduleRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param Limit: 限制条数,默认10.
        # @type Limit: Integer
        # @param Offset: 偏移量,默认0
        # @type Offset: Integer
        # @param Filters: 过滤参数
        # Status 绑定进度状态 0 进行中 1 已完成 2 失败
        # @type Filters: Array

        attr_accessor :TaskId, :Limit, :Offset, :Filters
        
        def initialize(taskid=nil, limit=nil, offset=nil, filters=nil)
          @TaskId = taskid
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeLicenseBindSchedule返回参数结构体
      class DescribeLicenseBindScheduleResponse < TencentCloud::Common::AbstractModel
        # @param Schedule: 进度
        # @type Schedule: Integer
        # @param List: 绑定任务详情
        # @type List: Array
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Schedule, :List, :TotalCount, :RequestId
        
        def initialize(schedule=nil, list=nil, totalcount=nil, requestid=nil)
          @Schedule = schedule
          @List = list
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @Schedule = params['Schedule']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              licensebindtaskdetail_tmp = LicenseBindTaskDetail.new
              licensebindtaskdetail_tmp.deserialize(i)
              @List << licensebindtaskdetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLicenseGeneral请求参数结构体
      class DescribeLicenseGeneralRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeLicenseGeneral返回参数结构体
      class DescribeLicenseGeneralResponse < TencentCloud::Common::AbstractModel
        # @param LicenseCnt: 总授权数 (包含隔离,过期等不可用状态)
        # @type LicenseCnt: Integer
        # @param AvailableLicenseCnt: 可用授权数
        # @type AvailableLicenseCnt: Integer
        # @param AvailableProVersionLicenseCnt: 可用专业版授权数(包含后付费).
        # @type AvailableProVersionLicenseCnt: Integer
        # @param AvailableFlagshipVersionLicenseCnt: 可用旗舰版授权数
        # @type AvailableFlagshipVersionLicenseCnt: Integer
        # @param NearExpiryLicenseCnt: 即将到期授权数 (15天内到期的)
        # @type NearExpiryLicenseCnt: Integer
        # @param ExpireLicenseCnt: 已到期授权数(不包含已删除的记录)
        # @type ExpireLicenseCnt: Integer
        # @param AutoOpenStatus: 自动升级开关状态,默认 false,  true 开启, false 关闭
        # @type AutoOpenStatus: Boolean
        # @param ProtectType: PROVERSION_POSTPAY 专业版-后付费, PROVERSION_PREPAY 专业版-预付费, FLAGSHIP_PREPAY 旗舰版-预付费
        # @type ProtectType: String
        # @param IsOpenStatusHistory: 历史是否开通过自动升级开关
        # @type IsOpenStatusHistory: Boolean
        # @param UsedLicenseCnt: 已使用授权数
        # @type UsedLicenseCnt: Integer
        # @param NotExpiredLicenseCnt: 未到期授权数
        # @type NotExpiredLicenseCnt: Integer
        # @param FlagshipVersionLicenseCnt: 旗舰版总授权数(有效订单)
        # @type FlagshipVersionLicenseCnt: Integer
        # @param ProVersionLicenseCnt: 专业版总授权数(有效订单)
        # @type ProVersionLicenseCnt: Integer
        # @param CwpVersionLicenseCnt: 普惠版总授权数(有效订单的授权数)
        # @type CwpVersionLicenseCnt: Integer
        # @param AvailableLHLicenseCnt: 可用惠普版授权数
        # @type AvailableLHLicenseCnt: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LicenseCnt, :AvailableLicenseCnt, :AvailableProVersionLicenseCnt, :AvailableFlagshipVersionLicenseCnt, :NearExpiryLicenseCnt, :ExpireLicenseCnt, :AutoOpenStatus, :ProtectType, :IsOpenStatusHistory, :UsedLicenseCnt, :NotExpiredLicenseCnt, :FlagshipVersionLicenseCnt, :ProVersionLicenseCnt, :CwpVersionLicenseCnt, :AvailableLHLicenseCnt, :RequestId
        
        def initialize(licensecnt=nil, availablelicensecnt=nil, availableproversionlicensecnt=nil, availableflagshipversionlicensecnt=nil, nearexpirylicensecnt=nil, expirelicensecnt=nil, autoopenstatus=nil, protecttype=nil, isopenstatushistory=nil, usedlicensecnt=nil, notexpiredlicensecnt=nil, flagshipversionlicensecnt=nil, proversionlicensecnt=nil, cwpversionlicensecnt=nil, availablelhlicensecnt=nil, requestid=nil)
          @LicenseCnt = licensecnt
          @AvailableLicenseCnt = availablelicensecnt
          @AvailableProVersionLicenseCnt = availableproversionlicensecnt
          @AvailableFlagshipVersionLicenseCnt = availableflagshipversionlicensecnt
          @NearExpiryLicenseCnt = nearexpirylicensecnt
          @ExpireLicenseCnt = expirelicensecnt
          @AutoOpenStatus = autoopenstatus
          @ProtectType = protecttype
          @IsOpenStatusHistory = isopenstatushistory
          @UsedLicenseCnt = usedlicensecnt
          @NotExpiredLicenseCnt = notexpiredlicensecnt
          @FlagshipVersionLicenseCnt = flagshipversionlicensecnt
          @ProVersionLicenseCnt = proversionlicensecnt
          @CwpVersionLicenseCnt = cwpversionlicensecnt
          @AvailableLHLicenseCnt = availablelhlicensecnt
          @RequestId = requestid
        end

        def deserialize(params)
          @LicenseCnt = params['LicenseCnt']
          @AvailableLicenseCnt = params['AvailableLicenseCnt']
          @AvailableProVersionLicenseCnt = params['AvailableProVersionLicenseCnt']
          @AvailableFlagshipVersionLicenseCnt = params['AvailableFlagshipVersionLicenseCnt']
          @NearExpiryLicenseCnt = params['NearExpiryLicenseCnt']
          @ExpireLicenseCnt = params['ExpireLicenseCnt']
          @AutoOpenStatus = params['AutoOpenStatus']
          @ProtectType = params['ProtectType']
          @IsOpenStatusHistory = params['IsOpenStatusHistory']
          @UsedLicenseCnt = params['UsedLicenseCnt']
          @NotExpiredLicenseCnt = params['NotExpiredLicenseCnt']
          @FlagshipVersionLicenseCnt = params['FlagshipVersionLicenseCnt']
          @ProVersionLicenseCnt = params['ProVersionLicenseCnt']
          @CwpVersionLicenseCnt = params['CwpVersionLicenseCnt']
          @AvailableLHLicenseCnt = params['AvailableLHLicenseCnt']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLicenseList请求参数结构体
      class DescribeLicenseListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 多个条件筛选时 LicenseStatus,DeadlineStatus,ResourceId,Keywords 取交集
        # <li> LicenseStatus 授权状态信息,0 未使用,1 部分使用, 2 已用完, 3 不可用  4 可使用</li>
        # <li> BuyTime 购买时间</li>
        # <li> LicenseType  授权类型, 0 专业版-按量计费, 1专业版-包年包月 , 2 旗舰版-包年包月</li>
        # <li>DeadlineStatus 到期状态 NotExpired 未过期, Expire 已过期(包含已销毁) NearExpiry 即将到期</li>
        # <li>ResourceId 资源ID</li>
        # <li>Keywords IP筛选</li>
        # <li>PayMode 付费模式 0 按量计费 , 1 包年包月</li>
        # <li>OrderStatus 订单状态 1 正常 2 隔离 3 销毁</li>
        # @type Filters: Array
        # @param Limit: 限制条数,默认10.
        # @type Limit: Integer
        # @param Offset: 偏移量,默认0.
        # @type Offset: Integer
        # @param Tags: 标签筛选,平台标签能力,这里传入 标签键,标签值作为一个对象
        # @type Tags: Array

        attr_accessor :Filters, :Limit, :Offset, :Tags
        
        def initialize(filters=nil, limit=nil, offset=nil, tags=nil)
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @Tags = tags
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tags_tmp = Tags.new
              tags_tmp.deserialize(i)
              @Tags << tags_tmp
            end
          end
        end
      end

      # DescribeLicenseList返回参数结构体
      class DescribeLicenseListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param List: 授权数列表信息
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :List, :RequestId
        
        def initialize(totalcount=nil, list=nil, requestid=nil)
          @TotalCount = totalcount
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              licensedetail_tmp = LicenseDetail.new
              licensedetail_tmp.deserialize(i)
              @List << licensedetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLogStorageStatistic请求参数结构体
      class DescribeLogStorageStatisticRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeLogStorageStatistic返回参数结构体
      class DescribeLogStorageStatisticResponse < TencentCloud::Common::AbstractModel
        # @param TotalSize: 总容量（单位：GB）
        # @type TotalSize: Integer
        # @param UsedSize: 已使用容量（单位：GB）
        # @type UsedSize: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalSize, :UsedSize, :RequestId
        
        def initialize(totalsize=nil, usedsize=nil, requestid=nil)
          @TotalSize = totalsize
          @UsedSize = usedsize
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalSize = params['TotalSize']
          @UsedSize = params['UsedSize']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoginWhiteCombinedList请求参数结构体
      class DescribeLoginWhiteCombinedListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        # <li>UserName - String - 是否必填：否 - 用户名筛选</li>
        # <li>ModifyBeginTime - String - 是否必填：否 - 按照修改时间段筛选，开始时间</li>
        # <li>ModifyEndTime - String - 是否必填：否 - 按照修改时间段筛选，结束时间</li>
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters
        
        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeLoginWhiteCombinedList返回参数结构体
      class DescribeLoginWhiteCombinedListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数量
        # @type TotalCount: Integer
        # @param LoginWhiteCombinedInfos: 合并后的白名单列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoginWhiteCombinedInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :LoginWhiteCombinedInfos, :RequestId
        
        def initialize(totalcount=nil, loginwhitecombinedinfos=nil, requestid=nil)
          @TotalCount = totalcount
          @LoginWhiteCombinedInfos = loginwhitecombinedinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['LoginWhiteCombinedInfos'].nil?
            @LoginWhiteCombinedInfos = []
            params['LoginWhiteCombinedInfos'].each do |i|
              loginwhitecombinedinfo_tmp = LoginWhiteCombinedInfo.new
              loginwhitecombinedinfo_tmp.deserialize(i)
              @LoginWhiteCombinedInfos << loginwhitecombinedinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoginWhiteList请求参数结构体
      class DescribeLoginWhiteListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>IpOrAlias - String - 是否必填：否 - 查询关键字 </li>
        # <li>UserName - String - 是否必填：否 - 用户名筛选 </li>
        # <li>ModifyBeginTime - String - 是否必填：否 - 按照修改时间段筛选，开始时间 </li>
        # <li>ModifyEndTime - String - 是否必填：否 - 按照修改时间段筛选，结束时间 </li>
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters
        
        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeLoginWhiteList返回参数结构体
      class DescribeLoginWhiteListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录总数
        # @type TotalCount: Integer
        # @param LoginWhiteLists: 异地登录白名单数组
        # @type LoginWhiteLists: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :LoginWhiteLists, :RequestId
        
        def initialize(totalcount=nil, loginwhitelists=nil, requestid=nil)
          @TotalCount = totalcount
          @LoginWhiteLists = loginwhitelists
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['LoginWhiteLists'].nil?
            @LoginWhiteLists = []
            params['LoginWhiteLists'].each do |i|
              loginwhitelists_tmp = LoginWhiteLists.new
              loginwhitelists_tmp.deserialize(i)
              @LoginWhiteLists << loginwhitelists_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMachineInfo请求参数结构体
      class DescribeMachineInfoRequest < TencentCloud::Common::AbstractModel
        # @param Uuid: 云镜客户端唯一Uuid。
        # @type Uuid: String
        # @param Quuid: Quuid , Uuid 必填一项
        # @type Quuid: String

        attr_accessor :Uuid, :Quuid
        
        def initialize(uuid=nil, quuid=nil)
          @Uuid = uuid
          @Quuid = quuid
        end

        def deserialize(params)
          @Uuid = params['Uuid']
          @Quuid = params['Quuid']
        end
      end

      # DescribeMachineInfo返回参数结构体
      class DescribeMachineInfoResponse < TencentCloud::Common::AbstractModel
        # @param MachineIp: 机器ip。
        # @type MachineIp: String
        # @param ProtectDays: 受云镜保护天数。
        # @type ProtectDays: Integer
        # @param MachineOs: 操作系统。
        # @type MachineOs: String
        # @param MachineName: 主机名称。
        # @type MachineName: String
        # @param MachineStatus: 在线状态。
        # <li>ONLINE： 在线</li>
        # <li>OFFLINE：离线</li>
        # @type MachineStatus: String
        # @param InstanceId: CVM或BM主机唯一标识。
        # @type InstanceId: String
        # @param MachineWanIp: 主机外网IP。
        # @type MachineWanIp: String
        # @param Quuid: CVM或BM主机唯一Uuid。
        # @type Quuid: String
        # @param Uuid: 云镜客户端唯一Uuid。
        # @type Uuid: String
        # @param IsProVersion: 是否开通专业版。
        # <li>true：是</li>
        # <li>false：否</li>
        # @type IsProVersion: Boolean
        # @param ProVersionOpenDate: 专业版开通时间。
        # @type ProVersionOpenDate: String
        # @param MachineType: 云服务器类型。
        # <li>CVM: 腾讯云服务器</li>
        # <li>BM: 黑石物理机</li>
        # <li>ECM: 边缘计算服务器</li>
        # <li>LH: 轻量应用服务器</li>
        # <li>Other: 混合云机器</li>
        # @type MachineType: String
        # @param MachineRegion: 机器所属地域。如：ap-guangzhou，ap-shanghai
        # @type MachineRegion: String
        # @param PayMode: 主机状态。
        # <li>POSTPAY: 表示后付费，即按量计费  </li>
        # <li>PREPAY: 表示预付费，即包年包月</li>
        # @type PayMode: String
        # @param FreeMalwaresLeft: 免费木马剩余检测数量。
        # @type FreeMalwaresLeft: Integer
        # @param FreeVulsLeft: 免费漏洞剩余检测数量。
        # @type FreeVulsLeft: Integer
        # @param AgentVersion: agent版本号
        # @type AgentVersion: String
        # @param ProVersionDeadline: 专业版到期时间(仅预付费)
        # @type ProVersionDeadline: String
        # @param HasAssetScan: 是否有资产扫描记录，0无，1有
        # @type HasAssetScan: Integer
        # @param ProtectType: 防护版本 BASIC_VERSION 基础版, PRO_VERSION 专业版 Flagship 旗舰版.
        # @type ProtectType: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MachineIp, :ProtectDays, :MachineOs, :MachineName, :MachineStatus, :InstanceId, :MachineWanIp, :Quuid, :Uuid, :IsProVersion, :ProVersionOpenDate, :MachineType, :MachineRegion, :PayMode, :FreeMalwaresLeft, :FreeVulsLeft, :AgentVersion, :ProVersionDeadline, :HasAssetScan, :ProtectType, :RequestId
        
        def initialize(machineip=nil, protectdays=nil, machineos=nil, machinename=nil, machinestatus=nil, instanceid=nil, machinewanip=nil, quuid=nil, uuid=nil, isproversion=nil, proversionopendate=nil, machinetype=nil, machineregion=nil, paymode=nil, freemalwaresleft=nil, freevulsleft=nil, agentversion=nil, proversiondeadline=nil, hasassetscan=nil, protecttype=nil, requestid=nil)
          @MachineIp = machineip
          @ProtectDays = protectdays
          @MachineOs = machineos
          @MachineName = machinename
          @MachineStatus = machinestatus
          @InstanceId = instanceid
          @MachineWanIp = machinewanip
          @Quuid = quuid
          @Uuid = uuid
          @IsProVersion = isproversion
          @ProVersionOpenDate = proversionopendate
          @MachineType = machinetype
          @MachineRegion = machineregion
          @PayMode = paymode
          @FreeMalwaresLeft = freemalwaresleft
          @FreeVulsLeft = freevulsleft
          @AgentVersion = agentversion
          @ProVersionDeadline = proversiondeadline
          @HasAssetScan = hasassetscan
          @ProtectType = protecttype
          @RequestId = requestid
        end

        def deserialize(params)
          @MachineIp = params['MachineIp']
          @ProtectDays = params['ProtectDays']
          @MachineOs = params['MachineOs']
          @MachineName = params['MachineName']
          @MachineStatus = params['MachineStatus']
          @InstanceId = params['InstanceId']
          @MachineWanIp = params['MachineWanIp']
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
          @IsProVersion = params['IsProVersion']
          @ProVersionOpenDate = params['ProVersionOpenDate']
          @MachineType = params['MachineType']
          @MachineRegion = params['MachineRegion']
          @PayMode = params['PayMode']
          @FreeMalwaresLeft = params['FreeMalwaresLeft']
          @FreeVulsLeft = params['FreeVulsLeft']
          @AgentVersion = params['AgentVersion']
          @ProVersionDeadline = params['ProVersionDeadline']
          @HasAssetScan = params['HasAssetScan']
          @ProtectType = params['ProtectType']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMachineList请求参数结构体
      class DescribeMachineListRequest < TencentCloud::Common::AbstractModel
        # @param MachineType: 云主机类型。
        # <li>CVM：表示虚拟主机</li>
        # <li>BM:  表示黑石物理机</li>
        # <li>ECM:  表示边缘计算服务器</li>
        # <li>LH:  表示轻量应用服务器</li>
        # <li>Other:  表示混合云机器</li>
        # @type MachineType: String
        # @param MachineRegion: 机器所属地域。如：ap-guangzhou，ap-shanghai
        # @type MachineRegion: String
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Keywords - String - 是否必填：否 - 查询关键字 </li>
        # <li>Status - String - 是否必填：否 - 客户端在线状态（OFFLINE: 离线 | ONLINE: 在线 | UNINSTALLED：未安装）</li>
        # <li>Version - String  是否必填：否 - 当前防护版本（ PRO_VERSION：专业版 | BASIC_VERSION：基础版）</li>
        # 每个过滤条件只支持一个值，暂不支持多个值“或”关系查询
        # @type Filters: Array

        attr_accessor :MachineType, :MachineRegion, :Limit, :Offset, :Filters
        
        def initialize(machinetype=nil, machineregion=nil, limit=nil, offset=nil, filters=nil)
          @MachineType = machinetype
          @MachineRegion = machineregion
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @MachineType = params['MachineType']
          @MachineRegion = params['MachineRegion']
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              assetfilters_tmp = AssetFilters.new
              assetfilters_tmp.deserialize(i)
              @Filters << assetfilters_tmp
            end
          end
        end
      end

      # DescribeMachineList返回参数结构体
      class DescribeMachineListResponse < TencentCloud::Common::AbstractModel
        # @param Machines: 主机列表
        # @type Machines: Array
        # @param TotalCount: 主机数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Machines, :TotalCount, :RequestId
        
        def initialize(machines=nil, totalcount=nil, requestid=nil)
          @Machines = machines
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Machines'].nil?
            @Machines = []
            params['Machines'].each do |i|
              machine_tmp = Machine.new
              machine_tmp.deserialize(i)
              @Machines << machine_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMachineOsList请求参数结构体
      class DescribeMachineOsListRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeMachineOsList返回参数结构体
      class DescribeMachineOsListResponse < TencentCloud::Common::AbstractModel
        # @param List: 操作系统列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :RequestId
        
        def initialize(list=nil, requestid=nil)
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              osname_tmp = OsName.new
              osname_tmp.deserialize(i)
              @List << osname_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMachineRegions请求参数结构体
      class DescribeMachineRegionsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeMachineRegions返回参数结构体
      class DescribeMachineRegionsResponse < TencentCloud::Common::AbstractModel
        # @param CVM: CVM 云服务器地域列表
        # @type CVM: Array
        # @param BM: BM 黑石机器地域列表
        # @type BM: Array
        # @param LH: LH 轻量应用服务器地域列表
        # @type LH: Array
        # @param ECM: ECM 边缘计算服务器地域列表
        # @type ECM: Array
        # @param Other: Other 混合云地域列表
        # @type Other: Array
        # @param ALL: 所有地域列表(包含以上所有地域)
        # @type ALL: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CVM, :BM, :LH, :ECM, :Other, :ALL, :RequestId
        
        def initialize(cvm=nil, bm=nil, lh=nil, ecm=nil, other=nil, all=nil, requestid=nil)
          @CVM = cvm
          @BM = bm
          @LH = lh
          @ECM = ecm
          @Other = other
          @ALL = all
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CVM'].nil?
            @CVM = []
            params['CVM'].each do |i|
              regioninfo_tmp = RegionInfo.new
              regioninfo_tmp.deserialize(i)
              @CVM << regioninfo_tmp
            end
          end
          unless params['BM'].nil?
            @BM = []
            params['BM'].each do |i|
              regioninfo_tmp = RegionInfo.new
              regioninfo_tmp.deserialize(i)
              @BM << regioninfo_tmp
            end
          end
          unless params['LH'].nil?
            @LH = []
            params['LH'].each do |i|
              regioninfo_tmp = RegionInfo.new
              regioninfo_tmp.deserialize(i)
              @LH << regioninfo_tmp
            end
          end
          unless params['ECM'].nil?
            @ECM = []
            params['ECM'].each do |i|
              regioninfo_tmp = RegionInfo.new
              regioninfo_tmp.deserialize(i)
              @ECM << regioninfo_tmp
            end
          end
          unless params['Other'].nil?
            @Other = []
            params['Other'].each do |i|
              regioninfo_tmp = RegionInfo.new
              regioninfo_tmp.deserialize(i)
              @Other << regioninfo_tmp
            end
          end
          unless params['ALL'].nil?
            @ALL = []
            params['ALL'].each do |i|
              regioninfo_tmp = RegionInfo.new
              regioninfo_tmp.deserialize(i)
              @ALL << regioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMachines请求参数结构体
      class DescribeMachinesRequest < TencentCloud::Common::AbstractModel
        # @param MachineType: 机器所属专区类型
        # CVM 云服务器
        # BM 黑石
        # ECM 边缘计算
        # LH 轻量应用服务器
        # Other 混合云专区
        # @type MachineType: String
        # @param MachineRegion: 机器所属地域。如：ap-guangzhou，ap-shanghai
        # @type MachineRegion: String
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Keywords - String - 是否必填：否 - 查询关键字 </li>
        # <li>Status - String - 是否必填：否 - 客户端在线状态（OFFLINE: 离线/关机 | ONLINE: 在线 | UNINSTALLED：未安装 | AGENT_OFFLINE 离线| AGENT_SHUTDOWN 已关机）</li>
        # <li>Version - String  是否必填：否 - 当前防护版本（ PRO_VERSION：专业版 | BASIC_VERSION：基础版 | Flagship : 旗舰版 | ProtectedMachines: 专业版+旗舰版）</li>
        # <li>Risk - String 是否必填: 否 - 风险主机( yes ) </li>
        # <li>Os -String 是否必填: 否 - 操作系统( DescribeMachineOsList 接口 值 )
        # 每个过滤条件只支持一个值，暂不支持多个值“或”关系查询
        # <li>Quuid - String - 是否必填: 否 - 云服务器uuid  最大100条.</li>
        # <li>AddedOnTheFifteen- String 是否必填: 否 - 是否只查询15天内新增的主机( 1：是) </li>
        # @type Filters: Array
        # @param ProjectIds: 机器所属业务ID列表
        # @type ProjectIds: Array

        attr_accessor :MachineType, :MachineRegion, :Limit, :Offset, :Filters, :ProjectIds
        
        def initialize(machinetype=nil, machineregion=nil, limit=nil, offset=nil, filters=nil, projectids=nil)
          @MachineType = machinetype
          @MachineRegion = machineregion
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @ProjectIds = projectids
        end

        def deserialize(params)
          @MachineType = params['MachineType']
          @MachineRegion = params['MachineRegion']
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @ProjectIds = params['ProjectIds']
        end
      end

      # DescribeMachines返回参数结构体
      class DescribeMachinesResponse < TencentCloud::Common::AbstractModel
        # @param Machines: 主机列表
        # @type Machines: Array
        # @param TotalCount: 主机数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Machines, :TotalCount, :RequestId
        
        def initialize(machines=nil, totalcount=nil, requestid=nil)
          @Machines = machines
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Machines'].nil?
            @Machines = []
            params['Machines'].each do |i|
              machine_tmp = Machine.new
              machine_tmp.deserialize(i)
              @Machines << machine_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMalWareList请求参数结构体
      class DescribeMalWareListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        # <li>FilePath - String - 是否必填：否 - 路径筛选</li>
        # <li>VirusName - String - 是否必填：否 - 描述筛选</li>
        # <li>CreateBeginTime - String - 是否必填：否 - 创建时间筛选-开始时间</li>
        # <li>CreateEndTime - String - 是否必填：否 - 创建时间筛选-结束时间</li>
        # <li>Status - String - 是否必填：否 - 状态筛选 4待处理,5信任,6已隔离,10隔离中,11恢复隔离中</li>
        # @type Filters: Array
        # @param By: 检测排序 CreateTime
        # @type By: String
        # @param Order: 排序方式 ASC,DESC
        # @type Order: String

        attr_accessor :Limit, :Offset, :Filters, :By, :Order
        
        def initialize(limit=nil, offset=nil, filters=nil, by=nil, order=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @By = by
          @Order = order
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @By = params['By']
          @Order = params['Order']
        end
      end

      # DescribeMalWareList返回参数结构体
      class DescribeMalWareListResponse < TencentCloud::Common::AbstractModel
        # @param MalWareList: 木马列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MalWareList: Array
        # @param TotalCount: 总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MalWareList, :TotalCount, :RequestId
        
        def initialize(malwarelist=nil, totalcount=nil, requestid=nil)
          @MalWareList = malwarelist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MalWareList'].nil?
            @MalWareList = []
            params['MalWareList'].each do |i|
              malwarelist_tmp = MalWareList.new
              malwarelist_tmp.deserialize(i)
              @MalWareList << malwarelist_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMaliciousRequestWhiteList请求参数结构体
      class DescribeMaliciousRequestWhiteListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。

        # <li>Domain  - String - 基线名称</li>
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters
        
        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
        end
      end

      # DescribeMaliciousRequestWhiteList返回参数结构体
      class DescribeMaliciousRequestWhiteListResponse < TencentCloud::Common::AbstractModel
        # @param List: 白名单信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param TotalCount: 分页查询记录总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              maliciousrequestwhitelistinfo_tmp = MaliciousRequestWhiteListInfo.new
              maliciousrequestwhitelistinfo_tmp.deserialize(i)
              @List << maliciousrequestwhitelistinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMalwareFile请求参数结构体
      class DescribeMalwareFileRequest < TencentCloud::Common::AbstractModel
        # @param Id: 木马记录ID
        # @type Id: Integer

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DescribeMalwareFile返回参数结构体
      class DescribeMalwareFileResponse < TencentCloud::Common::AbstractModel
        # @param FileUrl: 木马文件下载地址
        # @type FileUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileUrl, :RequestId
        
        def initialize(fileurl=nil, requestid=nil)
          @FileUrl = fileurl
          @RequestId = requestid
        end

        def deserialize(params)
          @FileUrl = params['FileUrl']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMalwareInfo请求参数结构体
      class DescribeMalwareInfoRequest < TencentCloud::Common::AbstractModel
        # @param Id: 唯一ID
        # @type Id: Integer

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DescribeMalwareInfo返回参数结构体
      class DescribeMalwareInfoResponse < TencentCloud::Common::AbstractModel
        # @param MalwareInfo: 恶意文件详情信息
        # @type MalwareInfo: :class:`Tencentcloud::Cwp.v20180228.models.MalwareInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MalwareInfo, :RequestId
        
        def initialize(malwareinfo=nil, requestid=nil)
          @MalwareInfo = malwareinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MalwareInfo'].nil?
            @MalwareInfo = MalwareInfo.new
            @MalwareInfo.deserialize(params['MalwareInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMalwareRiskWarning请求参数结构体
      class DescribeMalwareRiskWarningRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeMalwareRiskWarning返回参数结构体
      class DescribeMalwareRiskWarningResponse < TencentCloud::Common::AbstractModel
        # @param IsCheckRisk: 是否开启自动扫描：true-开启，false-未开启
        # @type IsCheckRisk: Boolean
        # @param List: 风险文件列表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param IsPop: 是否弹出提示 true 弹出, false不弹
        # @type IsPop: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsCheckRisk, :List, :IsPop, :RequestId
        
        def initialize(ischeckrisk=nil, list=nil, ispop=nil, requestid=nil)
          @IsCheckRisk = ischeckrisk
          @List = list
          @IsPop = ispop
          @RequestId = requestid
        end

        def deserialize(params)
          @IsCheckRisk = params['IsCheckRisk']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              malwarerisk_tmp = MalwareRisk.new
              malwarerisk_tmp.deserialize(i)
              @List << malwarerisk_tmp
            end
          end
          @IsPop = params['IsPop']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMalwareTimingScanSetting请求参数结构体
      class DescribeMalwareTimingScanSettingRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeMalwareTimingScanSetting返回参数结构体
      class DescribeMalwareTimingScanSettingResponse < TencentCloud::Common::AbstractModel
        # @param CheckPattern: 检测模式 0 全盘检测  1快速检测
        # @type CheckPattern: Integer
        # @param StartTime: 检测周期 开始时间
        # @type StartTime: String
        # @param EndTime: 检测周期 超时结束时间
        # @type EndTime: String
        # @param IsGlobal: 是否全部服务器 1 全部 2 自选
        # @type IsGlobal: Integer
        # @param QuuidList: 自选服务器时必须 主机quuid的string数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QuuidList: Array
        # @param MonitoringPattern: 监控模式 0 标准 1深度
        # @type MonitoringPattern: Integer
        # @param Cycle: 周期 1每天
        # @type Cycle: Integer
        # @param EnableScan: 定时检测开关 0 关闭1 开启
        # @type EnableScan: Integer
        # @param Id: 唯一ID
        # @type Id: Integer
        # @param RealTimeMonitoring: 实时监控0 关闭 1开启
        # @type RealTimeMonitoring: Integer
        # @param AutoIsolation: 是否自动隔离：1-是，0-否
        # @type AutoIsolation: Integer
        # @param ClickTimeout: 一键扫描超时时长，如：1800秒（s）
        # @type ClickTimeout: Integer
        # @param KillProcess: 是否杀掉进程 1杀掉 0不杀掉 只有开启自动隔离才生效
        # @type KillProcess: Integer
        # @param EngineType: 1标准模式（只报严重、高危）、2增强模式（报严重、高危、中危）、3严格模式（报严重、高、中、低、提示）
        # @type EngineType: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CheckPattern, :StartTime, :EndTime, :IsGlobal, :QuuidList, :MonitoringPattern, :Cycle, :EnableScan, :Id, :RealTimeMonitoring, :AutoIsolation, :ClickTimeout, :KillProcess, :EngineType, :RequestId
        
        def initialize(checkpattern=nil, starttime=nil, endtime=nil, isglobal=nil, quuidlist=nil, monitoringpattern=nil, cycle=nil, enablescan=nil, id=nil, realtimemonitoring=nil, autoisolation=nil, clicktimeout=nil, killprocess=nil, enginetype=nil, requestid=nil)
          @CheckPattern = checkpattern
          @StartTime = starttime
          @EndTime = endtime
          @IsGlobal = isglobal
          @QuuidList = quuidlist
          @MonitoringPattern = monitoringpattern
          @Cycle = cycle
          @EnableScan = enablescan
          @Id = id
          @RealTimeMonitoring = realtimemonitoring
          @AutoIsolation = autoisolation
          @ClickTimeout = clicktimeout
          @KillProcess = killprocess
          @EngineType = enginetype
          @RequestId = requestid
        end

        def deserialize(params)
          @CheckPattern = params['CheckPattern']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @IsGlobal = params['IsGlobal']
          @QuuidList = params['QuuidList']
          @MonitoringPattern = params['MonitoringPattern']
          @Cycle = params['Cycle']
          @EnableScan = params['EnableScan']
          @Id = params['Id']
          @RealTimeMonitoring = params['RealTimeMonitoring']
          @AutoIsolation = params['AutoIsolation']
          @ClickTimeout = params['ClickTimeout']
          @KillProcess = params['KillProcess']
          @EngineType = params['EngineType']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMonthInspectionReport请求参数结构体
      class DescribeMonthInspectionReportRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页步长
        # @type Offset: Integer

        attr_accessor :Limit, :Offset
        
        def initialize(limit=nil, offset=nil)
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeMonthInspectionReport返回参数结构体
      class DescribeMonthInspectionReportResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param List: 巡检报告列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :List, :RequestId
        
        def initialize(totalcount=nil, list=nil, requestid=nil)
          @TotalCount = totalcount
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              monthinspectionreport_tmp = MonthInspectionReport.new
              monthinspectionreport_tmp.deserialize(i)
              @List << monthinspectionreport_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeOpenPortStatistics请求参数结构体
      class DescribeOpenPortStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Port - Uint64 - 是否必填：否 - 端口号</li>
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters
        
        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeOpenPortStatistics返回参数结构体
      class DescribeOpenPortStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 端口统计列表总数
        # @type TotalCount: Integer
        # @param OpenPortStatistics: 端口统计数据列表
        # @type OpenPortStatistics: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :OpenPortStatistics, :RequestId
        
        def initialize(totalcount=nil, openportstatistics=nil, requestid=nil)
          @TotalCount = totalcount
          @OpenPortStatistics = openportstatistics
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['OpenPortStatistics'].nil?
            @OpenPortStatistics = []
            params['OpenPortStatistics'].each do |i|
              openportstatistics_tmp = OpenPortStatistics.new
              openportstatistics_tmp.deserialize(i)
              @OpenPortStatistics << openportstatistics_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeOverviewStatistics请求参数结构体
      class DescribeOverviewStatisticsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeOverviewStatistics返回参数结构体
      class DescribeOverviewStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param OnlineMachineNum: 服务器在线数。
        # @type OnlineMachineNum: Integer
        # @param ProVersionMachineNum: 专业服务器数。
        # @type ProVersionMachineNum: Integer
        # @param MalwareNum: 木马文件数。
        # @type MalwareNum: Integer
        # @param NonlocalLoginNum: 异地登录数。
        # @type NonlocalLoginNum: Integer
        # @param BruteAttackSuccessNum: 暴力破解成功数。
        # @type BruteAttackSuccessNum: Integer
        # @param VulNum: 漏洞数。
        # @type VulNum: Integer
        # @param BaseLineNum: 安全基线数。
        # @type BaseLineNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OnlineMachineNum, :ProVersionMachineNum, :MalwareNum, :NonlocalLoginNum, :BruteAttackSuccessNum, :VulNum, :BaseLineNum, :RequestId
        
        def initialize(onlinemachinenum=nil, proversionmachinenum=nil, malwarenum=nil, nonlocalloginnum=nil, bruteattacksuccessnum=nil, vulnum=nil, baselinenum=nil, requestid=nil)
          @OnlineMachineNum = onlinemachinenum
          @ProVersionMachineNum = proversionmachinenum
          @MalwareNum = malwarenum
          @NonlocalLoginNum = nonlocalloginnum
          @BruteAttackSuccessNum = bruteattacksuccessnum
          @VulNum = vulnum
          @BaseLineNum = baselinenum
          @RequestId = requestid
        end

        def deserialize(params)
          @OnlineMachineNum = params['OnlineMachineNum']
          @ProVersionMachineNum = params['ProVersionMachineNum']
          @MalwareNum = params['MalwareNum']
          @NonlocalLoginNum = params['NonlocalLoginNum']
          @BruteAttackSuccessNum = params['BruteAttackSuccessNum']
          @VulNum = params['VulNum']
          @BaseLineNum = params['BaseLineNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribePrivilegeEvents请求参数结构体
      class DescribePrivilegeEventsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Keywords - String - 是否必填：否 - 关键词(主机IP)</li>
        # @type Filters: Array
        # @param Order: 排序方式：根据请求次数排序：asc-升序/desc-降序
        # @type Order: String
        # @param By: 排序字段：CreateTime-发现时间
        # @type By: String

        attr_accessor :Limit, :Offset, :Filters, :Order, :By
        
        def initialize(limit=nil, offset=nil, filters=nil, order=nil, by=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribePrivilegeEvents返回参数结构体
      class DescribePrivilegeEventsResponse < TencentCloud::Common::AbstractModel
        # @param List: 数据列表
        # @type List: Array
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              privilegeescalationprocess_tmp = PrivilegeEscalationProcess.new
              privilegeescalationprocess_tmp.deserialize(i)
              @List << privilegeescalationprocess_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribePrivilegeRules请求参数结构体
      class DescribePrivilegeRulesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Keywords - String - 是否必填：否 - 关键字(进程名称)</li>
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters
        
        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribePrivilegeRules返回参数结构体
      class DescribePrivilegeRulesResponse < TencentCloud::Common::AbstractModel
        # @param List: 列表内容
        # @type List: Array
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              privilegerule_tmp = PrivilegeRule.new
              privilegerule_tmp.deserialize(i)
              @List << privilegerule_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProVersionInfo请求参数结构体
      class DescribeProVersionInfoRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeProVersionInfo返回参数结构体
      class DescribeProVersionInfoResponse < TencentCloud::Common::AbstractModel
        # @param PostPayCost: 后付费昨日扣费
        # @type PostPayCost: Integer
        # @param IsAutoOpenProVersion: 新增主机是否自动开通专业版
        # @type IsAutoOpenProVersion: Boolean
        # @param ProVersionNum: 开通专业版主机数
        # @type ProVersionNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PostPayCost, :IsAutoOpenProVersion, :ProVersionNum, :RequestId
        
        def initialize(postpaycost=nil, isautoopenproversion=nil, proversionnum=nil, requestid=nil)
          @PostPayCost = postpaycost
          @IsAutoOpenProVersion = isautoopenproversion
          @ProVersionNum = proversionnum
          @RequestId = requestid
        end

        def deserialize(params)
          @PostPayCost = params['PostPayCost']
          @IsAutoOpenProVersion = params['IsAutoOpenProVersion']
          @ProVersionNum = params['ProVersionNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProVersionStatus请求参数结构体
      class DescribeProVersionStatusRequest < TencentCloud::Common::AbstractModel
        # @param Uuid: 云镜客户端UUID、填写"all"表示所有主机。
        # @type Uuid: String

        attr_accessor :Uuid
        
        def initialize(uuid=nil)
          @Uuid = uuid
        end

        def deserialize(params)
          @Uuid = params['Uuid']
        end
      end

      # DescribeProVersionStatus返回参数结构体
      class DescribeProVersionStatusResponse < TencentCloud::Common::AbstractModel
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

      # DescribeProcessStatistics请求参数结构体
      class DescribeProcessStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>ProcessName - String - 是否必填：否 - 进程名</li>
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters
        
        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeProcessStatistics返回参数结构体
      class DescribeProcessStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 进程统计列表记录总数。
        # @type TotalCount: Integer
        # @param ProcessStatistics: 进程统计列表数据数组。
        # @type ProcessStatistics: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ProcessStatistics, :RequestId
        
        def initialize(totalcount=nil, processstatistics=nil, requestid=nil)
          @TotalCount = totalcount
          @ProcessStatistics = processstatistics
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ProcessStatistics'].nil?
            @ProcessStatistics = []
            params['ProcessStatistics'].each do |i|
              processstatistics_tmp = ProcessStatistics.new
              processstatistics_tmp.deserialize(i)
              @ProcessStatistics << processstatistics_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProtectDirList请求参数结构体
      class DescribeProtectDirListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页条数 最大100条
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Filters: DirName 网站名称
        # DirPath 网站防护目录地址
        # @type Filters: Array
        # @param Order: asc：升序/desc：降序
        # @type Order: String
        # @param By: 排序字段
        # @type By: String

        attr_accessor :Limit, :Offset, :Filters, :Order, :By
        
        def initialize(limit=nil, offset=nil, filters=nil, order=nil, by=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              assetfilters_tmp = AssetFilters.new
              assetfilters_tmp.deserialize(i)
              @Filters << assetfilters_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeProtectDirList返回参数结构体
      class DescribeProtectDirListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param List: 防护目录列表信息
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :List, :RequestId
        
        def initialize(totalcount=nil, list=nil, requestid=nil)
          @TotalCount = totalcount
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              protectdirinfo_tmp = ProtectDirInfo.new
              protectdirinfo_tmp.deserialize(i)
              @List << protectdirinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProtectDirRelatedServer请求参数结构体
      class DescribeProtectDirRelatedServerRequest < TencentCloud::Common::AbstractModel
        # @param Id: 唯一ID
        # @type Id: String
        # @param Limit: 分页条数 最大100条
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Filters: 过滤参数 ProtectStatus
        # @type Filters: Array
        # @param Order: 排序方式
        # @type Order: String
        # @param By: 排序值
        # @type By: String

        attr_accessor :Id, :Limit, :Offset, :Filters, :Order, :By
        
        def initialize(id=nil, limit=nil, offset=nil, filters=nil, order=nil, by=nil)
          @Id = id
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Id = params['Id']
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeProtectDirRelatedServer返回参数结构体
      class DescribeProtectDirRelatedServerResponse < TencentCloud::Common::AbstractModel
        # @param List: 网站关联服务器列表信息
        # @type List: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param ProtectServerCount: 已开启防护总数
        # @type ProtectServerCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :TotalCount, :ProtectServerCount, :RequestId
        
        def initialize(list=nil, totalcount=nil, protectservercount=nil, requestid=nil)
          @List = list
          @TotalCount = totalcount
          @ProtectServerCount = protectservercount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              protectdirrelatedserver_tmp = ProtectDirRelatedServer.new
              protectdirrelatedserver_tmp.deserialize(i)
              @List << protectdirrelatedserver_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @ProtectServerCount = params['ProtectServerCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProtectNetList请求参数结构体
      class DescribeProtectNetListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件。
        # <li>Keyword- String - 是否必填：否 - 关键词过滤，</li>
        # <li>Uuids - String - 是否必填：否 - 主机id过滤</li>
        # @type Filters: Array
        # @param Limit: 需要返回的数量，最大值为100
        # @type Limit: Integer
        # @param Offset: 排序步长
        # @type Offset: Integer
        # @param Order: 排序方法
        # @type Order: String
        # @param By: 排序字段 StartTime，EndTime
        # @type By: String

        attr_accessor :Filters, :Limit, :Offset, :Order, :By
        
        def initialize(filters=nil, limit=nil, offset=nil, order=nil, by=nil)
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @Order = order
          @By = by
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeProtectNetList返回参数结构体
      class DescribeProtectNetListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param List: 安全管家数据
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :List, :RequestId
        
        def initialize(totalcount=nil, list=nil, requestid=nil)
          @TotalCount = totalcount
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              protectnetinfo_tmp = ProtectNetInfo.new
              protectnetinfo_tmp.deserialize(i)
              @List << protectnetinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeReverseShellEvents请求参数结构体
      class DescribeReverseShellEventsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Keywords - String - 是否必填：否 - 关键字(主机内网IP|进程名)</li>
        # @type Filters: Array
        # @param Order: 排序方式：根据请求次数排序：asc-升序/desc-降序
        # @type Order: String
        # @param By: 排序字段：CreateTime-发生时间
        # @type By: String

        attr_accessor :Limit, :Offset, :Filters, :Order, :By
        
        def initialize(limit=nil, offset=nil, filters=nil, order=nil, by=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeReverseShellEvents返回参数结构体
      class DescribeReverseShellEventsResponse < TencentCloud::Common::AbstractModel
        # @param List: 列表内容
        # @type List: Array
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              reverseshell_tmp = ReverseShell.new
              reverseshell_tmp.deserialize(i)
              @List << reverseshell_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeReverseShellRules请求参数结构体
      class DescribeReverseShellRulesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Keywords - String - 是否必填：否 - 关键字(进程名称)</li>
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters
        
        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeReverseShellRules返回参数结构体
      class DescribeReverseShellRulesResponse < TencentCloud::Common::AbstractModel
        # @param List: 列表内容
        # @type List: Array
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              reverseshellrule_tmp = ReverseShellRule.new
              reverseshellrule_tmp.deserialize(i)
              @List << reverseshellrule_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRiskDnsList请求参数结构体
      class DescribeRiskDnsListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        # <li>Url - String - 是否必填：否 - Url筛选</li>
        # <li>Status - String - 是否必填：否 - 状态筛选0:待处理；2:信任；3:不信任</li>
        # <li>MergeBeginTime - String - 是否必填：否 - 最近访问开始时间</li>
        # <li>MergeEndTime - String - 是否必填：否 - 最近访问结束时间</li>
        # @type Filters: Array
        # @param Order: 排序方式：根据请求次数排序：asc-升序/desc-降序
        # @type Order: String
        # @param By: 排序字段：AccessCount-请求次数。MergeTime-最近请求时间
        # @type By: String

        attr_accessor :Limit, :Offset, :Filters, :Order, :By
        
        def initialize(limit=nil, offset=nil, filters=nil, order=nil, by=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # DescribeRiskDnsList返回参数结构体
      class DescribeRiskDnsListResponse < TencentCloud::Common::AbstractModel
        # @param RiskDnsList: 恶意请求列表数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskDnsList: Array
        # @param TotalCount: 总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RiskDnsList, :TotalCount, :RequestId
        
        def initialize(riskdnslist=nil, totalcount=nil, requestid=nil)
          @RiskDnsList = riskdnslist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RiskDnsList'].nil?
            @RiskDnsList = []
            params['RiskDnsList'].each do |i|
              riskdnslist_tmp = RiskDnsList.new
              riskdnslist_tmp.deserialize(i)
              @RiskDnsList << riskdnslist_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSaveOrUpdateWarnings请求参数结构体
      class DescribeSaveOrUpdateWarningsRequest < TencentCloud::Common::AbstractModel
        # @param WarningObjects: 告警设置的修改内容
        # @type WarningObjects: Array

        attr_accessor :WarningObjects
        
        def initialize(warningobjects=nil)
          @WarningObjects = warningobjects
        end

        def deserialize(params)
          unless params['WarningObjects'].nil?
            @WarningObjects = []
            params['WarningObjects'].each do |i|
              warningobject_tmp = WarningObject.new
              warningobject_tmp.deserialize(i)
              @WarningObjects << warningobject_tmp
            end
          end
        end
      end

      # DescribeSaveOrUpdateWarnings返回参数结构体
      class DescribeSaveOrUpdateWarningsResponse < TencentCloud::Common::AbstractModel
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

      # DescribeScanMalwareSchedule请求参数结构体
      class DescribeScanMalwareScheduleRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeScanMalwareSchedule返回参数结构体
      class DescribeScanMalwareScheduleResponse < TencentCloud::Common::AbstractModel
        # @param Schedule: 扫描进度（单位：%）
        # @type Schedule: Integer
        # @param RiskFileNumber: 风险文件数,当进度满了以后才有该值
        # @type RiskFileNumber: Integer
        # @param IsSchedule: 是否正在扫描中
        # @type IsSchedule: Boolean
        # @param ScanStatus: 0 从未扫描过、 1 扫描中、 2扫描完成、 3停止中、 4停止完成
        # @type ScanStatus: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Schedule, :RiskFileNumber, :IsSchedule, :ScanStatus, :RequestId
        
        def initialize(schedule=nil, riskfilenumber=nil, isschedule=nil, scanstatus=nil, requestid=nil)
          @Schedule = schedule
          @RiskFileNumber = riskfilenumber
          @IsSchedule = isschedule
          @ScanStatus = scanstatus
          @RequestId = requestid
        end

        def deserialize(params)
          @Schedule = params['Schedule']
          @RiskFileNumber = params['RiskFileNumber']
          @IsSchedule = params['IsSchedule']
          @ScanStatus = params['ScanStatus']
          @RequestId = params['RequestId']
        end
      end

      # DescribeScanSchedule请求参数结构体
      class DescribeScanScheduleRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: Integer

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeScanSchedule返回参数结构体
      class DescribeScanScheduleResponse < TencentCloud::Common::AbstractModel
        # @param Schedule: 检测进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Schedule: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Schedule, :RequestId
        
        def initialize(schedule=nil, requestid=nil)
          @Schedule = schedule
          @RequestId = requestid
        end

        def deserialize(params)
          @Schedule = params['Schedule']
          @RequestId = params['RequestId']
        end
      end

      # DescribeScanState请求参数结构体
      class DescribeScanStateRequest < TencentCloud::Common::AbstractModel
        # @param ModuleType: 模块类型 当前提供 Malware 木马 , Vul 漏洞 , Baseline 基线
        # @type ModuleType: String
        # @param Filters: 过滤参数;
        # <li>StrategyId 基线策略ID ,仅ModuleType 为 Baseline 时需要<li/>
        # @type Filters: Array

        attr_accessor :ModuleType, :Filters
        
        def initialize(moduletype=nil, filters=nil)
          @ModuleType = moduletype
          @Filters = filters
        end

        def deserialize(params)
          @ModuleType = params['ModuleType']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
        end
      end

      # DescribeScanState返回参数结构体
      class DescribeScanStateResponse < TencentCloud::Common::AbstractModel
        # @param ScanState: 0 从未扫描过、 1 扫描中、 2扫描完成、 3停止中、 4停止完成
        # @type ScanState: Integer
        # @param Schedule: 扫描进度
        # @type Schedule: Integer
        # @param TaskId: 任务Id
        # @type TaskId: Integer
        # @param VulId: 任务扫描的漏洞id
        # @type VulId: Array
        # @param Type: 0一键检测 1定时检测
        # @type Type: Integer
        # @param ScanBeginTime: 开始扫描时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanBeginTime: String
        # @param RiskEventCount: 扫描漏洞数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskEventCount: Integer
        # @param ScanEndTime: 扫描结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanEndTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ScanState, :Schedule, :TaskId, :VulId, :Type, :ScanBeginTime, :RiskEventCount, :ScanEndTime, :RequestId
        
        def initialize(scanstate=nil, schedule=nil, taskid=nil, vulid=nil, type=nil, scanbegintime=nil, riskeventcount=nil, scanendtime=nil, requestid=nil)
          @ScanState = scanstate
          @Schedule = schedule
          @TaskId = taskid
          @VulId = vulid
          @Type = type
          @ScanBeginTime = scanbegintime
          @RiskEventCount = riskeventcount
          @ScanEndTime = scanendtime
          @RequestId = requestid
        end

        def deserialize(params)
          @ScanState = params['ScanState']
          @Schedule = params['Schedule']
          @TaskId = params['TaskId']
          @VulId = params['VulId']
          @Type = params['Type']
          @ScanBeginTime = params['ScanBeginTime']
          @RiskEventCount = params['RiskEventCount']
          @ScanEndTime = params['ScanEndTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeScanTaskDetails请求参数结构体
      class DescribeScanTaskDetailsRequest < TencentCloud::Common::AbstractModel
        # @param ModuleType: 模块类型 当前提供 Malware 木马 , Vul 漏洞 , Baseline 基线
        # @type ModuleType: String
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param Filters: 过滤参数
        # @type Filters: Array
        # @param Limit: 需要返回的数量，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer

        attr_accessor :ModuleType, :TaskId, :Filters, :Limit, :Offset
        
        def initialize(moduletype=nil, taskid=nil, filters=nil, limit=nil, offset=nil)
          @ModuleType = moduletype
          @TaskId = taskid
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ModuleType = params['ModuleType']
          @TaskId = params['TaskId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeScanTaskDetails返回参数结构体
      class DescribeScanTaskDetailsResponse < TencentCloud::Common::AbstractModel
        # @param ScanTaskDetailList: 扫描任务信息列表
        # @type ScanTaskDetailList: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param ScanMachineCount: 扫描机器总数
        # @type ScanMachineCount: Integer
        # @param RiskMachineCount: 发现风险机器数
        # @type RiskMachineCount: Integer
        # @param ScanBeginTime: 扫描开始时间
        # @type ScanBeginTime: String
        # @param ScanEndTime: 扫描结束时间
        # @type ScanEndTime: String
        # @param ScanTime: 检测时间
        # @type ScanTime: Integer
        # @param ScanProgress: 扫描进度
        # @type ScanProgress: Integer
        # @param ScanLeftTime: 扫描剩余时间
        # @type ScanLeftTime: Integer
        # @param ScanContent: 扫描内容
        # @type ScanContent: Array
        # @param VulInfo: 漏洞信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulInfo: Array
        # @param RiskEventCount: 风险事件个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskEventCount: Integer
        # @param Type: 0一键检测 1定时检测
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param StoppingAll: 任务是否全部正在被停止 ture是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StoppingAll: Boolean
        # @param VulCount: 扫描出漏洞个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ScanTaskDetailList, :TotalCount, :ScanMachineCount, :RiskMachineCount, :ScanBeginTime, :ScanEndTime, :ScanTime, :ScanProgress, :ScanLeftTime, :ScanContent, :VulInfo, :RiskEventCount, :Type, :StoppingAll, :VulCount, :RequestId
        
        def initialize(scantaskdetaillist=nil, totalcount=nil, scanmachinecount=nil, riskmachinecount=nil, scanbegintime=nil, scanendtime=nil, scantime=nil, scanprogress=nil, scanlefttime=nil, scancontent=nil, vulinfo=nil, riskeventcount=nil, type=nil, stoppingall=nil, vulcount=nil, requestid=nil)
          @ScanTaskDetailList = scantaskdetaillist
          @TotalCount = totalcount
          @ScanMachineCount = scanmachinecount
          @RiskMachineCount = riskmachinecount
          @ScanBeginTime = scanbegintime
          @ScanEndTime = scanendtime
          @ScanTime = scantime
          @ScanProgress = scanprogress
          @ScanLeftTime = scanlefttime
          @ScanContent = scancontent
          @VulInfo = vulinfo
          @RiskEventCount = riskeventcount
          @Type = type
          @StoppingAll = stoppingall
          @VulCount = vulcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ScanTaskDetailList'].nil?
            @ScanTaskDetailList = []
            params['ScanTaskDetailList'].each do |i|
              scantaskdetails_tmp = ScanTaskDetails.new
              scantaskdetails_tmp.deserialize(i)
              @ScanTaskDetailList << scantaskdetails_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @ScanMachineCount = params['ScanMachineCount']
          @RiskMachineCount = params['RiskMachineCount']
          @ScanBeginTime = params['ScanBeginTime']
          @ScanEndTime = params['ScanEndTime']
          @ScanTime = params['ScanTime']
          @ScanProgress = params['ScanProgress']
          @ScanLeftTime = params['ScanLeftTime']
          @ScanContent = params['ScanContent']
          unless params['VulInfo'].nil?
            @VulInfo = []
            params['VulInfo'].each do |i|
              vuldetailinfo_tmp = VulDetailInfo.new
              vuldetailinfo_tmp.deserialize(i)
              @VulInfo << vuldetailinfo_tmp
            end
          end
          @RiskEventCount = params['RiskEventCount']
          @Type = params['Type']
          @StoppingAll = params['StoppingAll']
          @VulCount = params['VulCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeScanTaskStatus请求参数结构体
      class DescribeScanTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param ModuleType: 模块类型 当前提供 Malware 木马 , Vul 漏洞 , Baseline 基线
        # @type ModuleType: String

        attr_accessor :ModuleType
        
        def initialize(moduletype=nil)
          @ModuleType = moduletype
        end

        def deserialize(params)
          @ModuleType = params['ModuleType']
        end
      end

      # DescribeScanTaskStatus返回参数结构体
      class DescribeScanTaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param State: 任务扫描状态列表
        # @type State: :class:`Tencentcloud::Cwp.v20180228.models.TaskStatus`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :State, :RequestId
        
        def initialize(state=nil, requestid=nil)
          @State = state
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['State'].nil?
            @State = TaskStatus.new
            @State.deserialize(params['State'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeScanVulSetting请求参数结构体
      class DescribeScanVulSettingRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeScanVulSetting返回参数结构体
      class DescribeScanVulSettingResponse < TencentCloud::Common::AbstractModel
        # @param VulCategories: 漏洞类型：1: web-cms漏洞 2:应用漏洞  4: Linux软件漏洞 5: Windows系统漏洞
        # @type VulCategories: String
        # @param VulLevels: 危害等级：1-低危；2-中危；3-高危；4-严重 (多选英文逗号分隔)
        # @type VulLevels: String
        # @param TimerInterval: 定期检测间隔时间（天）
        # @type TimerInterval: Integer
        # @param TimerTime: 定期检测时间，如：00:00
        # @type TimerTime: String
        # @param VulEmergency: 是否紧急漏洞：0-否 1-是
        # @type VulEmergency: Integer
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EnableScan: 是否开启
        # @type EnableScan: Integer
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param ClickTimeout: 一键扫描超时时长，如：1800秒（s）
        # @type ClickTimeout: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VulCategories, :VulLevels, :TimerInterval, :TimerTime, :VulEmergency, :StartTime, :EnableScan, :EndTime, :ClickTimeout, :RequestId
        
        def initialize(vulcategories=nil, vullevels=nil, timerinterval=nil, timertime=nil, vulemergency=nil, starttime=nil, enablescan=nil, endtime=nil, clicktimeout=nil, requestid=nil)
          @VulCategories = vulcategories
          @VulLevels = vullevels
          @TimerInterval = timerinterval
          @TimerTime = timertime
          @VulEmergency = vulemergency
          @StartTime = starttime
          @EnableScan = enablescan
          @EndTime = endtime
          @ClickTimeout = clicktimeout
          @RequestId = requestid
        end

        def deserialize(params)
          @VulCategories = params['VulCategories']
          @VulLevels = params['VulLevels']
          @TimerInterval = params['TimerInterval']
          @TimerTime = params['TimerTime']
          @VulEmergency = params['VulEmergency']
          @StartTime = params['StartTime']
          @EnableScan = params['EnableScan']
          @EndTime = params['EndTime']
          @ClickTimeout = params['ClickTimeout']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSearchExportList请求参数结构体
      class DescribeSearchExportListRequest < TencentCloud::Common::AbstractModel
        # @param Query: ES查询条件JSON
        # @type Query: String

        attr_accessor :Query
        
        def initialize(query=nil)
          @Query = query
        end

        def deserialize(params)
          @Query = params['Query']
        end
      end

      # DescribeSearchExportList返回参数结构体
      class DescribeSearchExportListResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 导出的任务号
        # @type TaskId: Integer
        # @param DownloadUrl: 下载地址
        # @type DownloadUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :DownloadUrl, :RequestId
        
        def initialize(taskid=nil, downloadurl=nil, requestid=nil)
          @TaskId = taskid
          @DownloadUrl = downloadurl
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @DownloadUrl = params['DownloadUrl']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSearchLogs请求参数结构体
      class DescribeSearchLogsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeSearchLogs返回参数结构体
      class DescribeSearchLogsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 历史搜索记录 保留最新的10条
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSearchTemplates请求参数结构体
      class DescribeSearchTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer

        attr_accessor :Offset, :Limit
        
        def initialize(offset=nil, limit=nil)
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeSearchTemplates返回参数结构体
      class DescribeSearchTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param List: 模板列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :List, :RequestId
        
        def initialize(totalcount=nil, list=nil, requestid=nil)
          @TotalCount = totalcount
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              searchtemplate_tmp = SearchTemplate.new
              searchtemplate_tmp.deserialize(i)
              @List << searchtemplate_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityDynamics请求参数结构体
      class DescribeSecurityDynamicsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer

        attr_accessor :Limit, :Offset
        
        def initialize(limit=nil, offset=nil)
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeSecurityDynamics返回参数结构体
      class DescribeSecurityDynamicsResponse < TencentCloud::Common::AbstractModel
        # @param SecurityDynamics: 安全事件消息数组。
        # @type SecurityDynamics: Array
        # @param TotalCount: 记录总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecurityDynamics, :TotalCount, :RequestId
        
        def initialize(securitydynamics=nil, totalcount=nil, requestid=nil)
          @SecurityDynamics = securitydynamics
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SecurityDynamics'].nil?
            @SecurityDynamics = []
            params['SecurityDynamics'].each do |i|
              securitydynamic_tmp = SecurityDynamic.new
              securitydynamic_tmp.deserialize(i)
              @SecurityDynamics << securitydynamic_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityEventStat请求参数结构体
      class DescribeSecurityEventStatRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 该接口无过滤条件
        # @type Filters: Array

        attr_accessor :Filters
        
        def initialize(filters=nil)
          @Filters = filters
        end

        def deserialize(params)
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

      # DescribeSecurityEventStat返回参数结构体
      class DescribeSecurityEventStatResponse < TencentCloud::Common::AbstractModel
        # @param MalwareStat: 木马事件统计
        # @type MalwareStat: :class:`Tencentcloud::Cwp.v20180228.models.EventStat`
        # @param HostLoginStat: 异地事件统计
        # @type HostLoginStat: :class:`Tencentcloud::Cwp.v20180228.models.EventStat`
        # @param BruteAttackStat: 爆破事件统计
        # @type BruteAttackStat: :class:`Tencentcloud::Cwp.v20180228.models.EventStat`
        # @param MaliciousRequestStat: 恶意请求事件统计
        # @type MaliciousRequestStat: :class:`Tencentcloud::Cwp.v20180228.models.EventStat`
        # @param PrivilegeStat: 本地提权事件统计
        # @type PrivilegeStat: :class:`Tencentcloud::Cwp.v20180228.models.EventStat`
        # @param ReverseShellStat: 反弹Shell事件统计
        # @type ReverseShellStat: :class:`Tencentcloud::Cwp.v20180228.models.EventStat`
        # @param HighRiskBashStat: 高危命令事件统计
        # @type HighRiskBashStat: :class:`Tencentcloud::Cwp.v20180228.models.EventStat`
        # @param AttackLogsStat: 网络攻击事件统计
        # @type AttackLogsStat: :class:`Tencentcloud::Cwp.v20180228.models.EventStat`
        # @param VulHighStat: 高危漏洞事件统计
        # @type VulHighStat: :class:`Tencentcloud::Cwp.v20180228.models.EventStat`
        # @param VulNormalStat: 中危漏洞事件统计
        # @type VulNormalStat: :class:`Tencentcloud::Cwp.v20180228.models.EventStat`
        # @param VulLowStat: 低危漏洞事件统计
        # @type VulLowStat: :class:`Tencentcloud::Cwp.v20180228.models.EventStat`
        # @param BaselineHighStat: 高危基线漏洞事件统计
        # @type BaselineHighStat: :class:`Tencentcloud::Cwp.v20180228.models.EventStat`
        # @param BaselineNormalStat: 中危基线漏事件统计
        # @type BaselineNormalStat: :class:`Tencentcloud::Cwp.v20180228.models.EventStat`
        # @param BaselineLowStat: 低危基线漏事件统计
        # @type BaselineLowStat: :class:`Tencentcloud::Cwp.v20180228.models.EventStat`
        # @param MachineTotalAffectNum: 有未处理安全事件的机器总数
        # @type MachineTotalAffectNum: Integer
        # @param InvasionTotalAffectNum: 有未处理入侵安全事件的机器总数
        # @type InvasionTotalAffectNum: Integer
        # @param VulTotalAffectNum: 有未处理漏洞安全事件的机器总数
        # @type VulTotalAffectNum: Integer
        # @param BaseLineTotalAffectNum: 有未处理基线安全事件的机器总数
        # @type BaseLineTotalAffectNum: Integer
        # @param CyberAttackTotalAffectNum: 有未处理网络攻击安全事件的机器总数
        # @type CyberAttackTotalAffectNum: Integer
        # @param VulRiskStat: 严重漏洞事件统计
        # @type VulRiskStat: :class:`Tencentcloud::Cwp.v20180228.models.EventStat`
        # @param BaselineRiskStat: 严重基线漏洞事件统计
        # @type BaselineRiskStat: :class:`Tencentcloud::Cwp.v20180228.models.EventStat`
        # @param VulStat: 漏洞数统计
        # @type VulStat: :class:`Tencentcloud::Cwp.v20180228.models.EventStat`
        # @param Score: 安全得分
        # @type Score: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MalwareStat, :HostLoginStat, :BruteAttackStat, :MaliciousRequestStat, :PrivilegeStat, :ReverseShellStat, :HighRiskBashStat, :AttackLogsStat, :VulHighStat, :VulNormalStat, :VulLowStat, :BaselineHighStat, :BaselineNormalStat, :BaselineLowStat, :MachineTotalAffectNum, :InvasionTotalAffectNum, :VulTotalAffectNum, :BaseLineTotalAffectNum, :CyberAttackTotalAffectNum, :VulRiskStat, :BaselineRiskStat, :VulStat, :Score, :RequestId
        
        def initialize(malwarestat=nil, hostloginstat=nil, bruteattackstat=nil, maliciousrequeststat=nil, privilegestat=nil, reverseshellstat=nil, highriskbashstat=nil, attacklogsstat=nil, vulhighstat=nil, vulnormalstat=nil, vullowstat=nil, baselinehighstat=nil, baselinenormalstat=nil, baselinelowstat=nil, machinetotalaffectnum=nil, invasiontotalaffectnum=nil, vultotalaffectnum=nil, baselinetotalaffectnum=nil, cyberattacktotalaffectnum=nil, vulriskstat=nil, baselineriskstat=nil, vulstat=nil, score=nil, requestid=nil)
          @MalwareStat = malwarestat
          @HostLoginStat = hostloginstat
          @BruteAttackStat = bruteattackstat
          @MaliciousRequestStat = maliciousrequeststat
          @PrivilegeStat = privilegestat
          @ReverseShellStat = reverseshellstat
          @HighRiskBashStat = highriskbashstat
          @AttackLogsStat = attacklogsstat
          @VulHighStat = vulhighstat
          @VulNormalStat = vulnormalstat
          @VulLowStat = vullowstat
          @BaselineHighStat = baselinehighstat
          @BaselineNormalStat = baselinenormalstat
          @BaselineLowStat = baselinelowstat
          @MachineTotalAffectNum = machinetotalaffectnum
          @InvasionTotalAffectNum = invasiontotalaffectnum
          @VulTotalAffectNum = vultotalaffectnum
          @BaseLineTotalAffectNum = baselinetotalaffectnum
          @CyberAttackTotalAffectNum = cyberattacktotalaffectnum
          @VulRiskStat = vulriskstat
          @BaselineRiskStat = baselineriskstat
          @VulStat = vulstat
          @Score = score
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MalwareStat'].nil?
            @MalwareStat = EventStat.new
            @MalwareStat.deserialize(params['MalwareStat'])
          end
          unless params['HostLoginStat'].nil?
            @HostLoginStat = EventStat.new
            @HostLoginStat.deserialize(params['HostLoginStat'])
          end
          unless params['BruteAttackStat'].nil?
            @BruteAttackStat = EventStat.new
            @BruteAttackStat.deserialize(params['BruteAttackStat'])
          end
          unless params['MaliciousRequestStat'].nil?
            @MaliciousRequestStat = EventStat.new
            @MaliciousRequestStat.deserialize(params['MaliciousRequestStat'])
          end
          unless params['PrivilegeStat'].nil?
            @PrivilegeStat = EventStat.new
            @PrivilegeStat.deserialize(params['PrivilegeStat'])
          end
          unless params['ReverseShellStat'].nil?
            @ReverseShellStat = EventStat.new
            @ReverseShellStat.deserialize(params['ReverseShellStat'])
          end
          unless params['HighRiskBashStat'].nil?
            @HighRiskBashStat = EventStat.new
            @HighRiskBashStat.deserialize(params['HighRiskBashStat'])
          end
          unless params['AttackLogsStat'].nil?
            @AttackLogsStat = EventStat.new
            @AttackLogsStat.deserialize(params['AttackLogsStat'])
          end
          unless params['VulHighStat'].nil?
            @VulHighStat = EventStat.new
            @VulHighStat.deserialize(params['VulHighStat'])
          end
          unless params['VulNormalStat'].nil?
            @VulNormalStat = EventStat.new
            @VulNormalStat.deserialize(params['VulNormalStat'])
          end
          unless params['VulLowStat'].nil?
            @VulLowStat = EventStat.new
            @VulLowStat.deserialize(params['VulLowStat'])
          end
          unless params['BaselineHighStat'].nil?
            @BaselineHighStat = EventStat.new
            @BaselineHighStat.deserialize(params['BaselineHighStat'])
          end
          unless params['BaselineNormalStat'].nil?
            @BaselineNormalStat = EventStat.new
            @BaselineNormalStat.deserialize(params['BaselineNormalStat'])
          end
          unless params['BaselineLowStat'].nil?
            @BaselineLowStat = EventStat.new
            @BaselineLowStat.deserialize(params['BaselineLowStat'])
          end
          @MachineTotalAffectNum = params['MachineTotalAffectNum']
          @InvasionTotalAffectNum = params['InvasionTotalAffectNum']
          @VulTotalAffectNum = params['VulTotalAffectNum']
          @BaseLineTotalAffectNum = params['BaseLineTotalAffectNum']
          @CyberAttackTotalAffectNum = params['CyberAttackTotalAffectNum']
          unless params['VulRiskStat'].nil?
            @VulRiskStat = EventStat.new
            @VulRiskStat.deserialize(params['VulRiskStat'])
          end
          unless params['BaselineRiskStat'].nil?
            @BaselineRiskStat = EventStat.new
            @BaselineRiskStat.deserialize(params['BaselineRiskStat'])
          end
          unless params['VulStat'].nil?
            @VulStat = EventStat.new
            @VulStat.deserialize(params['VulStat'])
          end
          @Score = params['Score']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityEventsCnt请求参数结构体
      class DescribeSecurityEventsCntRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeSecurityEventsCnt返回参数结构体
      class DescribeSecurityEventsCntResponse < TencentCloud::Common::AbstractModel
        # @param Malware: 木马文件相关风险事件
        # @type Malware: :class:`Tencentcloud::Cwp.v20180228.models.SecurityEventInfo`
        # @param HostLogin: 登录审计相关风险事件
        # @type HostLogin: :class:`Tencentcloud::Cwp.v20180228.models.SecurityEventInfo`
        # @param BruteAttack: 密码破解相关风险事件
        # @type BruteAttack: :class:`Tencentcloud::Cwp.v20180228.models.SecurityEventInfo`
        # @param RiskDns: 恶意请求相关风险事件
        # @type RiskDns: :class:`Tencentcloud::Cwp.v20180228.models.SecurityEventInfo`
        # @param Bash: 高危命令相关风险事件
        # @type Bash: :class:`Tencentcloud::Cwp.v20180228.models.SecurityEventInfo`
        # @param PrivilegeRules: 本地提权相关风险事件
        # @type PrivilegeRules: :class:`Tencentcloud::Cwp.v20180228.models.SecurityEventInfo`
        # @param ReverseShell: 反弹Shell相关风险事件
        # @type ReverseShell: :class:`Tencentcloud::Cwp.v20180228.models.SecurityEventInfo`
        # @param SysVul: 应用漏洞风险事件
        # @type SysVul: :class:`Tencentcloud::Cwp.v20180228.models.SecurityEventInfo`
        # @param WebVul: Web应用漏洞相关风险事件
        # @type WebVul: :class:`Tencentcloud::Cwp.v20180228.models.SecurityEventInfo`
        # @param EmergencyVul: 应急漏洞相关风险事件
        # @type EmergencyVul: :class:`Tencentcloud::Cwp.v20180228.models.SecurityEventInfo`
        # @param BaseLine: 安全基线相关风险事件
        # @type BaseLine: :class:`Tencentcloud::Cwp.v20180228.models.SecurityEventInfo`
        # @param AttackLogs: 攻击检测相关风险事件
        # @type AttackLogs: :class:`Tencentcloud::Cwp.v20180228.models.SecurityEventInfo`
        # @param EffectMachineCount: 受影响机器数
        # @type EffectMachineCount: Integer
        # @param EventsCount: 所有事件总数
        # @type EventsCount: Integer
        # @param WindowVul: window 系统漏洞事件总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WindowVul: :class:`Tencentcloud::Cwp.v20180228.models.SecurityEventInfo`
        # @param LinuxVul: linux系统漏洞事件总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LinuxVul: :class:`Tencentcloud::Cwp.v20180228.models.SecurityEventInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Malware, :HostLogin, :BruteAttack, :RiskDns, :Bash, :PrivilegeRules, :ReverseShell, :SysVul, :WebVul, :EmergencyVul, :BaseLine, :AttackLogs, :EffectMachineCount, :EventsCount, :WindowVul, :LinuxVul, :RequestId
        
        def initialize(malware=nil, hostlogin=nil, bruteattack=nil, riskdns=nil, bash=nil, privilegerules=nil, reverseshell=nil, sysvul=nil, webvul=nil, emergencyvul=nil, baseline=nil, attacklogs=nil, effectmachinecount=nil, eventscount=nil, windowvul=nil, linuxvul=nil, requestid=nil)
          @Malware = malware
          @HostLogin = hostlogin
          @BruteAttack = bruteattack
          @RiskDns = riskdns
          @Bash = bash
          @PrivilegeRules = privilegerules
          @ReverseShell = reverseshell
          @SysVul = sysvul
          @WebVul = webvul
          @EmergencyVul = emergencyvul
          @BaseLine = baseline
          @AttackLogs = attacklogs
          @EffectMachineCount = effectmachinecount
          @EventsCount = eventscount
          @WindowVul = windowvul
          @LinuxVul = linuxvul
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Malware'].nil?
            @Malware = SecurityEventInfo.new
            @Malware.deserialize(params['Malware'])
          end
          unless params['HostLogin'].nil?
            @HostLogin = SecurityEventInfo.new
            @HostLogin.deserialize(params['HostLogin'])
          end
          unless params['BruteAttack'].nil?
            @BruteAttack = SecurityEventInfo.new
            @BruteAttack.deserialize(params['BruteAttack'])
          end
          unless params['RiskDns'].nil?
            @RiskDns = SecurityEventInfo.new
            @RiskDns.deserialize(params['RiskDns'])
          end
          unless params['Bash'].nil?
            @Bash = SecurityEventInfo.new
            @Bash.deserialize(params['Bash'])
          end
          unless params['PrivilegeRules'].nil?
            @PrivilegeRules = SecurityEventInfo.new
            @PrivilegeRules.deserialize(params['PrivilegeRules'])
          end
          unless params['ReverseShell'].nil?
            @ReverseShell = SecurityEventInfo.new
            @ReverseShell.deserialize(params['ReverseShell'])
          end
          unless params['SysVul'].nil?
            @SysVul = SecurityEventInfo.new
            @SysVul.deserialize(params['SysVul'])
          end
          unless params['WebVul'].nil?
            @WebVul = SecurityEventInfo.new
            @WebVul.deserialize(params['WebVul'])
          end
          unless params['EmergencyVul'].nil?
            @EmergencyVul = SecurityEventInfo.new
            @EmergencyVul.deserialize(params['EmergencyVul'])
          end
          unless params['BaseLine'].nil?
            @BaseLine = SecurityEventInfo.new
            @BaseLine.deserialize(params['BaseLine'])
          end
          unless params['AttackLogs'].nil?
            @AttackLogs = SecurityEventInfo.new
            @AttackLogs.deserialize(params['AttackLogs'])
          end
          @EffectMachineCount = params['EffectMachineCount']
          @EventsCount = params['EventsCount']
          unless params['WindowVul'].nil?
            @WindowVul = SecurityEventInfo.new
            @WindowVul.deserialize(params['WindowVul'])
          end
          unless params['LinuxVul'].nil?
            @LinuxVul = SecurityEventInfo.new
            @LinuxVul.deserialize(params['LinuxVul'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityTrends请求参数结构体
      class DescribeSecurityTrendsRequest < TencentCloud::Common::AbstractModel
        # @param BeginDate: 开始时间，如：2021-07-10
        # @type BeginDate: String
        # @param EndDate: 结束时间，如：2021-07-10
        # @type EndDate: String

        attr_accessor :BeginDate, :EndDate
        
        def initialize(begindate=nil, enddate=nil)
          @BeginDate = begindate
          @EndDate = enddate
        end

        def deserialize(params)
          @BeginDate = params['BeginDate']
          @EndDate = params['EndDate']
        end
      end

      # DescribeSecurityTrends返回参数结构体
      class DescribeSecurityTrendsResponse < TencentCloud::Common::AbstractModel
        # @param Malwares: 木马事件统计数据数组。
        # @type Malwares: Array
        # @param NonLocalLoginPlaces: 异地登录事件统计数据数组。
        # @type NonLocalLoginPlaces: Array
        # @param BruteAttacks: 密码破解事件统计数据数组。
        # @type BruteAttacks: Array
        # @param Vuls: 漏洞统计数据数组。
        # @type Vuls: Array
        # @param BaseLines: 基线统计数据数组。
        # @type BaseLines: Array
        # @param MaliciousRequests: 恶意请求统计数据数组。
        # @type MaliciousRequests: Array
        # @param HighRiskBashs: 高危命令统计数据数组。
        # @type HighRiskBashs: Array
        # @param ReverseShells: 反弹shell统计数据数组。
        # @type ReverseShells: Array
        # @param PrivilegeEscalations: 本地提权统计数据数组。
        # @type PrivilegeEscalations: Array
        # @param CyberAttacks: 网络攻击统计数据数组。
        # @type CyberAttacks: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Malwares, :NonLocalLoginPlaces, :BruteAttacks, :Vuls, :BaseLines, :MaliciousRequests, :HighRiskBashs, :ReverseShells, :PrivilegeEscalations, :CyberAttacks, :RequestId
        
        def initialize(malwares=nil, nonlocalloginplaces=nil, bruteattacks=nil, vuls=nil, baselines=nil, maliciousrequests=nil, highriskbashs=nil, reverseshells=nil, privilegeescalations=nil, cyberattacks=nil, requestid=nil)
          @Malwares = malwares
          @NonLocalLoginPlaces = nonlocalloginplaces
          @BruteAttacks = bruteattacks
          @Vuls = vuls
          @BaseLines = baselines
          @MaliciousRequests = maliciousrequests
          @HighRiskBashs = highriskbashs
          @ReverseShells = reverseshells
          @PrivilegeEscalations = privilegeescalations
          @CyberAttacks = cyberattacks
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Malwares'].nil?
            @Malwares = []
            params['Malwares'].each do |i|
              securitytrend_tmp = SecurityTrend.new
              securitytrend_tmp.deserialize(i)
              @Malwares << securitytrend_tmp
            end
          end
          unless params['NonLocalLoginPlaces'].nil?
            @NonLocalLoginPlaces = []
            params['NonLocalLoginPlaces'].each do |i|
              securitytrend_tmp = SecurityTrend.new
              securitytrend_tmp.deserialize(i)
              @NonLocalLoginPlaces << securitytrend_tmp
            end
          end
          unless params['BruteAttacks'].nil?
            @BruteAttacks = []
            params['BruteAttacks'].each do |i|
              securitytrend_tmp = SecurityTrend.new
              securitytrend_tmp.deserialize(i)
              @BruteAttacks << securitytrend_tmp
            end
          end
          unless params['Vuls'].nil?
            @Vuls = []
            params['Vuls'].each do |i|
              securitytrend_tmp = SecurityTrend.new
              securitytrend_tmp.deserialize(i)
              @Vuls << securitytrend_tmp
            end
          end
          unless params['BaseLines'].nil?
            @BaseLines = []
            params['BaseLines'].each do |i|
              securitytrend_tmp = SecurityTrend.new
              securitytrend_tmp.deserialize(i)
              @BaseLines << securitytrend_tmp
            end
          end
          unless params['MaliciousRequests'].nil?
            @MaliciousRequests = []
            params['MaliciousRequests'].each do |i|
              securitytrend_tmp = SecurityTrend.new
              securitytrend_tmp.deserialize(i)
              @MaliciousRequests << securitytrend_tmp
            end
          end
          unless params['HighRiskBashs'].nil?
            @HighRiskBashs = []
            params['HighRiskBashs'].each do |i|
              securitytrend_tmp = SecurityTrend.new
              securitytrend_tmp.deserialize(i)
              @HighRiskBashs << securitytrend_tmp
            end
          end
          unless params['ReverseShells'].nil?
            @ReverseShells = []
            params['ReverseShells'].each do |i|
              securitytrend_tmp = SecurityTrend.new
              securitytrend_tmp.deserialize(i)
              @ReverseShells << securitytrend_tmp
            end
          end
          unless params['PrivilegeEscalations'].nil?
            @PrivilegeEscalations = []
            params['PrivilegeEscalations'].each do |i|
              securitytrend_tmp = SecurityTrend.new
              securitytrend_tmp.deserialize(i)
              @PrivilegeEscalations << securitytrend_tmp
            end
          end
          unless params['CyberAttacks'].nil?
            @CyberAttacks = []
            params['CyberAttacks'].each do |i|
              securitytrend_tmp = SecurityTrend.new
              securitytrend_tmp.deserialize(i)
              @CyberAttacks << securitytrend_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeServerRelatedDirInfo请求参数结构体
      class DescribeServerRelatedDirInfoRequest < TencentCloud::Common::AbstractModel
        # @param Id: 唯一ID
        # @type Id: Integer

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DescribeServerRelatedDirInfo返回参数结构体
      class DescribeServerRelatedDirInfoResponse < TencentCloud::Common::AbstractModel
        # @param HostName: 服务器名称
        # @type HostName: String
        # @param HostIp: 服务器IP
        # @type HostIp: String
        # @param ProtectDirNum: 防护目录数量
        # @type ProtectDirNum: Integer
        # @param ProtectFileNum: 防护文件数量
        # @type ProtectFileNum: Integer
        # @param ProtectTamperNum: 防篡改数量
        # @type ProtectTamperNum: Integer
        # @param ProtectLinkNum: 防护软链数量
        # @type ProtectLinkNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HostName, :HostIp, :ProtectDirNum, :ProtectFileNum, :ProtectTamperNum, :ProtectLinkNum, :RequestId
        
        def initialize(hostname=nil, hostip=nil, protectdirnum=nil, protectfilenum=nil, protecttampernum=nil, protectlinknum=nil, requestid=nil)
          @HostName = hostname
          @HostIp = hostip
          @ProtectDirNum = protectdirnum
          @ProtectFileNum = protectfilenum
          @ProtectTamperNum = protecttampernum
          @ProtectLinkNum = protectlinknum
          @RequestId = requestid
        end

        def deserialize(params)
          @HostName = params['HostName']
          @HostIp = params['HostIp']
          @ProtectDirNum = params['ProtectDirNum']
          @ProtectFileNum = params['ProtectFileNum']
          @ProtectTamperNum = params['ProtectTamperNum']
          @ProtectLinkNum = params['ProtectLinkNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeServersAndRiskAndFirstInfo请求参数结构体
      class DescribeServersAndRiskAndFirstInfoRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeServersAndRiskAndFirstInfo返回参数结构体
      class DescribeServersAndRiskAndFirstInfoResponse < TencentCloud::Common::AbstractModel
        # @param RiskFileCount: 风险文件数
        # @type RiskFileCount: Integer
        # @param AddRiskFileCount: 今日新增风险文件数
        # @type AddRiskFileCount: Integer
        # @param ServersCount: 受影响服务器台数
        # @type ServersCount: Integer
        # @param IsFirstCheck: 是否试用：true-是，false-否
        # @type IsFirstCheck: Boolean
        # @param ScanTime: 木马最近检测时间
        # @type ScanTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RiskFileCount, :AddRiskFileCount, :ServersCount, :IsFirstCheck, :ScanTime, :RequestId
        
        def initialize(riskfilecount=nil, addriskfilecount=nil, serverscount=nil, isfirstcheck=nil, scantime=nil, requestid=nil)
          @RiskFileCount = riskfilecount
          @AddRiskFileCount = addriskfilecount
          @ServersCount = serverscount
          @IsFirstCheck = isfirstcheck
          @ScanTime = scantime
          @RequestId = requestid
        end

        def deserialize(params)
          @RiskFileCount = params['RiskFileCount']
          @AddRiskFileCount = params['AddRiskFileCount']
          @ServersCount = params['ServersCount']
          @IsFirstCheck = params['IsFirstCheck']
          @ScanTime = params['ScanTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeStrategyExist请求参数结构体
      class DescribeStrategyExistRequest < TencentCloud::Common::AbstractModel
        # @param StrategyName: 策略名
        # @type StrategyName: String

        attr_accessor :StrategyName
        
        def initialize(strategyname=nil)
          @StrategyName = strategyname
        end

        def deserialize(params)
          @StrategyName = params['StrategyName']
        end
      end

      # DescribeStrategyExist返回参数结构体
      class DescribeStrategyExistResponse < TencentCloud::Common::AbstractModel
        # @param IfExist: 策略是否存在, 1是 0否
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IfExist: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IfExist, :RequestId
        
        def initialize(ifexist=nil, requestid=nil)
          @IfExist = ifexist
          @RequestId = requestid
        end

        def deserialize(params)
          @IfExist = params['IfExist']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTagMachines请求参数结构体
      class DescribeTagMachinesRequest < TencentCloud::Common::AbstractModel
        # @param Id: 标签ID
        # @type Id: Integer

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DescribeTagMachines返回参数结构体
      class DescribeTagMachinesResponse < TencentCloud::Common::AbstractModel
        # @param List: 列表数据
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :RequestId
        
        def initialize(list=nil, requestid=nil)
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              tagmachine_tmp = TagMachine.new
              tagmachine_tmp.deserialize(i)
              @List << tagmachine_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTags请求参数结构体
      class DescribeTagsRequest < TencentCloud::Common::AbstractModel
        # @param MachineType: 云主机类型。
        # <li>CVM：表示云服务器</li>
        # <li>BM:  表示黑石物理机</li>
        # <li>ECM:  表示边缘计算服务器</li>
        # <li>LH:  表示轻量应用服务器</li>
        # <li>Other:  表示混合云服务器</li>
        # @type MachineType: String
        # @param MachineRegion: 机器所属地域。如：ap-guangzhou
        # @type MachineRegion: String
        # @param Filters: 过滤条件。
        # <li>Keywords - String - 是否必填：否 - 查询关键字(机器名称/机器IP </li>
        # <li>Status - String - 是否必填：否 - 客户端在线状态（OFFLINE: 离线 | ONLINE: 在线 | UNINSTALLED：未安装 | SHUTDOWN 已关机）</li>
        # <li>Version - String  是否必填：否 - 当前防护版本（ PRO_VERSION：专业版 | BASIC_VERSION：基础版）</li>
        # <li>Risk - String 是否必填: 否 - 风险主机( yes ) </li>
        # <li>Os -String 是否必填: 否 - 操作系统( DescribeMachineOsList 接口 值 )
        # 每个过滤条件只支持一个值，暂不支持多个值“或”关系查询
        # @type Filters: Array

        attr_accessor :MachineType, :MachineRegion, :Filters
        
        def initialize(machinetype=nil, machineregion=nil, filters=nil)
          @MachineType = machinetype
          @MachineRegion = machineregion
          @Filters = filters
        end

        def deserialize(params)
          @MachineType = params['MachineType']
          @MachineRegion = params['MachineRegion']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
        end
      end

      # DescribeTags返回参数结构体
      class DescribeTagsResponse < TencentCloud::Common::AbstractModel
        # @param List: 列表信息
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :RequestId
        
        def initialize(list=nil, requestid=nil)
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @List << tag_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUndoVulCounts请求参数结构体
      class DescribeUndoVulCountsRequest < TencentCloud::Common::AbstractModel
        # @param VulCategory: 漏洞分类，1: web-cms漏洞 2:应用漏洞  4: Linux软件漏洞 5: Windows系统漏洞
        # @type VulCategory: Integer
        # @param IfEmergency: 是否应急漏洞筛选, 是 : yes
        # @type IfEmergency: String

        attr_accessor :VulCategory, :IfEmergency
        
        def initialize(vulcategory=nil, ifemergency=nil)
          @VulCategory = vulcategory
          @IfEmergency = ifemergency
        end

        def deserialize(params)
          @VulCategory = params['VulCategory']
          @IfEmergency = params['IfEmergency']
        end
      end

      # DescribeUndoVulCounts返回参数结构体
      class DescribeUndoVulCountsResponse < TencentCloud::Common::AbstractModel
        # @param UndoVulCount: 未处理的漏洞数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UndoVulCount: Integer
        # @param UndoHostCount: 未处理的主机数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UndoHostCount: Integer
        # @param NotProfessionCount: 普通版主机数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NotProfessionCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UndoVulCount, :UndoHostCount, :NotProfessionCount, :RequestId
        
        def initialize(undovulcount=nil, undohostcount=nil, notprofessioncount=nil, requestid=nil)
          @UndoVulCount = undovulcount
          @UndoHostCount = undohostcount
          @NotProfessionCount = notprofessioncount
          @RequestId = requestid
        end

        def deserialize(params)
          @UndoVulCount = params['UndoVulCount']
          @UndoHostCount = params['UndoHostCount']
          @NotProfessionCount = params['NotProfessionCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUsualLoginPlaces请求参数结构体
      class DescribeUsualLoginPlacesRequest < TencentCloud::Common::AbstractModel
        # @param Uuid: 云镜客户端UUID
        # @type Uuid: String

        attr_accessor :Uuid
        
        def initialize(uuid=nil)
          @Uuid = uuid
        end

        def deserialize(params)
          @Uuid = params['Uuid']
        end
      end

      # DescribeUsualLoginPlaces返回参数结构体
      class DescribeUsualLoginPlacesResponse < TencentCloud::Common::AbstractModel
        # @param UsualLoginPlaces: 常用登录地数组
        # @type UsualLoginPlaces: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UsualLoginPlaces, :RequestId
        
        def initialize(usualloginplaces=nil, requestid=nil)
          @UsualLoginPlaces = usualloginplaces
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['UsualLoginPlaces'].nil?
            @UsualLoginPlaces = []
            params['UsualLoginPlaces'].each do |i|
              usualplace_tmp = UsualPlace.new
              usualplace_tmp.deserialize(i)
              @UsualLoginPlaces << usualplace_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVersionStatistics请求参数结构体
      class DescribeVersionStatisticsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeVersionStatistics返回参数结构体
      class DescribeVersionStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param BasicVersionNum: 基础版数量
        # @type BasicVersionNum: Integer
        # @param ProVersionNum: 专业版数量
        # @type ProVersionNum: Integer
        # @param UltimateVersionNum: 旗舰版数量
        # @type UltimateVersionNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BasicVersionNum, :ProVersionNum, :UltimateVersionNum, :RequestId
        
        def initialize(basicversionnum=nil, proversionnum=nil, ultimateversionnum=nil, requestid=nil)
          @BasicVersionNum = basicversionnum
          @ProVersionNum = proversionnum
          @UltimateVersionNum = ultimateversionnum
          @RequestId = requestid
        end

        def deserialize(params)
          @BasicVersionNum = params['BasicVersionNum']
          @ProVersionNum = params['ProVersionNum']
          @UltimateVersionNum = params['UltimateVersionNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVulCountByDates请求参数结构体
      class DescribeVulCountByDatesRequest < TencentCloud::Common::AbstractModel
        # @param LastDays: 需要查询最近几天的数据，需要都 -1后传入
        # @type LastDays: Array
        # @param VulCategory: 漏洞的分类: 1: web-cms漏洞 2:应用漏洞  4: Linux软件漏洞 5: Windows系统漏洞
        # @type VulCategory: Integer
        # @param IfEmergency: 是否为应急漏洞筛选  是: yes
        # @type IfEmergency: String

        attr_accessor :LastDays, :VulCategory, :IfEmergency
        
        def initialize(lastdays=nil, vulcategory=nil, ifemergency=nil)
          @LastDays = lastdays
          @VulCategory = vulcategory
          @IfEmergency = ifemergency
        end

        def deserialize(params)
          @LastDays = params['LastDays']
          @VulCategory = params['VulCategory']
          @IfEmergency = params['IfEmergency']
        end
      end

      # DescribeVulCountByDates返回参数结构体
      class DescribeVulCountByDatesResponse < TencentCloud::Common::AbstractModel
        # @param VulCount: 批量获得对应天数的漏洞数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulCount: Array
        # @param HostCount: 批量获得对应天数的主机数量
        # @type HostCount: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VulCount, :HostCount, :RequestId
        
        def initialize(vulcount=nil, hostcount=nil, requestid=nil)
          @VulCount = vulcount
          @HostCount = hostcount
          @RequestId = requestid
        end

        def deserialize(params)
          @VulCount = params['VulCount']
          @HostCount = params['HostCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVulEffectHostList请求参数结构体
      class DescribeVulEffectHostListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页limit 最大100
        # @type Limit: Integer
        # @param Offset: 分页Offset
        # @type Offset: Integer
        # @param VulId: 漏洞id
        # @type VulId: Integer
        # @param Filters: 过滤条件：
        # <li>AliasName - String - 主机名筛选</li>
        # <li>TagIds - String - 主机标签id串，多个用英文用逗号分隔</li>
        # <li>Status - String - 状态：0-待处理 1-忽略  3-已修复  5-检测中  6-修复中  8-修复失败</li>
        # <li>Uuid - String数组 - Uuid串数组</li>
        # <li>Version - String数组 - 付费版本数组："Flagship"-旗舰版 "PRO_VERSION"-专业版 "BASIC_VERSION"-基础版</li>
        # <li>InstanceState - String数组 - 实例状态数组："PENDING"-创建中 "LAUNCH_FAILED"-创建失败 "RUNNING"-运行中 "STOPPED"-关机 "STARTING"-开机中 "STOPPING"-关机中 "REBOOTING"-重启中 "SHUTDOWN"-待销毁 "TERMINATING"-销毁中 "UNKNOWN"-未知（针对非腾讯云机器，且客户端离线的场景） </li>
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :VulId, :Filters
        
        def initialize(limit=nil, offset=nil, vulid=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @VulId = vulid
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @VulId = params['VulId']
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

      # DescribeVulEffectHostList返回参数结构体
      class DescribeVulEffectHostListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 列表总数量
        # @type TotalCount: Integer
        # @param VulEffectHostList: 影响主机列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulEffectHostList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :VulEffectHostList, :RequestId
        
        def initialize(totalcount=nil, vuleffecthostlist=nil, requestid=nil)
          @TotalCount = totalcount
          @VulEffectHostList = vuleffecthostlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['VulEffectHostList'].nil?
            @VulEffectHostList = []
            params['VulEffectHostList'].each do |i|
              vuleffecthostlist_tmp = VulEffectHostList.new
              vuleffecthostlist_tmp.deserialize(i)
              @VulEffectHostList << vuleffecthostlist_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVulHostCountScanTime请求参数结构体
      class DescribeVulHostCountScanTimeRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeVulHostCountScanTime返回参数结构体
      class DescribeVulHostCountScanTimeResponse < TencentCloud::Common::AbstractModel
        # @param TotalVulCount: 总漏洞数
        # @type TotalVulCount: Integer
        # @param VulHostCount: 漏洞影响主机数
        # @type VulHostCount: Integer
        # @param ScanTime: 扫描时间
        # @type ScanTime: String
        # @param IfFirstScan: 是否第一次检测
        # @type IfFirstScan: Boolean
        # @param TaskId: 运行中的任务号, 没有任务则为0
        # @type TaskId: Integer
        # @param LastFixTime: 最后一次修复漏洞的时间
        # @type LastFixTime: String
        # @param hadAutoFixVul: 是否有支持自动修复的漏洞事件
        # @type hadAutoFixVul: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalVulCount, :VulHostCount, :ScanTime, :IfFirstScan, :TaskId, :LastFixTime, :hadAutoFixVul, :RequestId
        
        def initialize(totalvulcount=nil, vulhostcount=nil, scantime=nil, iffirstscan=nil, taskid=nil, lastfixtime=nil, hadautofixvul=nil, requestid=nil)
          @TotalVulCount = totalvulcount
          @VulHostCount = vulhostcount
          @ScanTime = scantime
          @IfFirstScan = iffirstscan
          @TaskId = taskid
          @LastFixTime = lastfixtime
          @hadAutoFixVul = hadautofixvul
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalVulCount = params['TotalVulCount']
          @VulHostCount = params['VulHostCount']
          @ScanTime = params['ScanTime']
          @IfFirstScan = params['IfFirstScan']
          @TaskId = params['TaskId']
          @LastFixTime = params['LastFixTime']
          @hadAutoFixVul = params['hadAutoFixVul']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVulHostTop请求参数结构体
      class DescribeVulHostTopRequest < TencentCloud::Common::AbstractModel
        # @param Top: 获取top值，1-100
        # @type Top: Integer
        # @param VulCategory: 1:web-cms 漏洞，2.应用漏洞   4: Linux软件漏洞 5: windows系统漏洞 6:应急漏洞，不填或者填0时返回 1，2，4，5 的总统计数据
        # @type VulCategory: Integer
        # @param IsFollowVul: 是否仅统计重点关注漏洞 1=仅统计重点关注漏洞, 0=统计全部漏洞
        # @type IsFollowVul: Integer

        attr_accessor :Top, :VulCategory, :IsFollowVul
        
        def initialize(top=nil, vulcategory=nil, isfollowvul=nil)
          @Top = top
          @VulCategory = vulcategory
          @IsFollowVul = isfollowvul
        end

        def deserialize(params)
          @Top = params['Top']
          @VulCategory = params['VulCategory']
          @IsFollowVul = params['IsFollowVul']
        end
      end

      # DescribeVulHostTop返回参数结构体
      class DescribeVulHostTopResponse < TencentCloud::Common::AbstractModel
        # @param VulHostTopList: 服务器风险top列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulHostTopList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VulHostTopList, :RequestId
        
        def initialize(vulhosttoplist=nil, requestid=nil)
          @VulHostTopList = vulhosttoplist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['VulHostTopList'].nil?
            @VulHostTopList = []
            params['VulHostTopList'].each do |i|
              vulhosttopinfo_tmp = VulHostTopInfo.new
              vulhosttopinfo_tmp.deserialize(i)
              @VulHostTopList << vulhosttopinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVulInfoCvss请求参数结构体
      class DescribeVulInfoCvssRequest < TencentCloud::Common::AbstractModel
        # @param VulId: 漏洞id
        # @type VulId: Integer

        attr_accessor :VulId
        
        def initialize(vulid=nil)
          @VulId = vulid
        end

        def deserialize(params)
          @VulId = params['VulId']
        end
      end

      # DescribeVulInfoCvss返回参数结构体
      class DescribeVulInfoCvssResponse < TencentCloud::Common::AbstractModel
        # @param VulId: 漏洞id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulId: Integer
        # @param VulName: 漏洞名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulName: String
        # @param VulLevel: 危害等级：1-低危；2-中危；3-高危；4-严重
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulLevel: Integer
        # @param VulType: 漏洞分类 1: web-cms漏洞 2:应用漏洞  4: Linux软件漏洞 5: Windows系统漏洞
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulType: Integer
        # @param Description: 漏洞描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param RepairPlan: 修复方案
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepairPlan: String
        # @param CveId: 漏洞CVEID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CveId: String
        # @param Reference: 参考链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reference: String
        # @param CVSS: CVSS信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CVSS: String
        # @param PublicDate: 发布时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicDate: String
        # @param CvssScore: Cvss分数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CvssScore: Integer
        # @param CveInfo: cvss详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CveInfo: String
        # @param CvssScoreFloat: cvss 分数 浮点型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CvssScoreFloat: Float
        # @param Labels: 漏洞标签 多个逗号分割
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: String
        # @param DefenseAttackCount: 已防御的攻击次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefenseAttackCount: Integer
        # @param SuccessFixCount: 全网修复成功次数, 不支持自动修复的漏洞默认返回0
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessFixCount: Integer
        # @param FixSwitch: 修复是否支持：0-windows/linux均不支持修复 ;1-windows/linux 均支持修复 ;2-仅linux支持修复;3-仅windows支持修复
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FixSwitch: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VulId, :VulName, :VulLevel, :VulType, :Description, :RepairPlan, :CveId, :Reference, :CVSS, :PublicDate, :CvssScore, :CveInfo, :CvssScoreFloat, :Labels, :DefenseAttackCount, :SuccessFixCount, :FixSwitch, :RequestId
        
        def initialize(vulid=nil, vulname=nil, vullevel=nil, vultype=nil, description=nil, repairplan=nil, cveid=nil, reference=nil, cvss=nil, publicdate=nil, cvssscore=nil, cveinfo=nil, cvssscorefloat=nil, labels=nil, defenseattackcount=nil, successfixcount=nil, fixswitch=nil, requestid=nil)
          @VulId = vulid
          @VulName = vulname
          @VulLevel = vullevel
          @VulType = vultype
          @Description = description
          @RepairPlan = repairplan
          @CveId = cveid
          @Reference = reference
          @CVSS = cvss
          @PublicDate = publicdate
          @CvssScore = cvssscore
          @CveInfo = cveinfo
          @CvssScoreFloat = cvssscorefloat
          @Labels = labels
          @DefenseAttackCount = defenseattackcount
          @SuccessFixCount = successfixcount
          @FixSwitch = fixswitch
          @RequestId = requestid
        end

        def deserialize(params)
          @VulId = params['VulId']
          @VulName = params['VulName']
          @VulLevel = params['VulLevel']
          @VulType = params['VulType']
          @Description = params['Description']
          @RepairPlan = params['RepairPlan']
          @CveId = params['CveId']
          @Reference = params['Reference']
          @CVSS = params['CVSS']
          @PublicDate = params['PublicDate']
          @CvssScore = params['CvssScore']
          @CveInfo = params['CveInfo']
          @CvssScoreFloat = params['CvssScoreFloat']
          @Labels = params['Labels']
          @DefenseAttackCount = params['DefenseAttackCount']
          @SuccessFixCount = params['SuccessFixCount']
          @FixSwitch = params['FixSwitch']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVulLevelCount请求参数结构体
      class DescribeVulLevelCountRequest < TencentCloud::Common::AbstractModel
        # @param VulCategory: 1:web-cms 漏洞，2.应用漏洞 3:安全基线 4: Linux软件漏洞 5: windows系统漏洞 6:应急漏洞，不填或者填0时返回 1，2，4，5 的总统计数据
        # @type VulCategory: Integer
        # @param IsFollowVul: 是否仅统计重点关注漏洞 1=仅统计重点关注漏洞, 0=统计全部漏洞
        # @type IsFollowVul: Integer

        attr_accessor :VulCategory, :IsFollowVul
        
        def initialize(vulcategory=nil, isfollowvul=nil)
          @VulCategory = vulcategory
          @IsFollowVul = isfollowvul
        end

        def deserialize(params)
          @VulCategory = params['VulCategory']
          @IsFollowVul = params['IsFollowVul']
        end
      end

      # DescribeVulLevelCount返回参数结构体
      class DescribeVulLevelCountResponse < TencentCloud::Common::AbstractModel
        # @param VulLevelList: 统计结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulLevelList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VulLevelList, :RequestId
        
        def initialize(vullevellist=nil, requestid=nil)
          @VulLevelList = vullevellist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['VulLevelList'].nil?
            @VulLevelList = []
            params['VulLevelList'].each do |i|
              vullevelinfo_tmp = VulLevelInfo.new
              vullevelinfo_tmp.deserialize(i)
              @VulLevelList << vullevelinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVulList请求参数结构体
      class DescribeVulListRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。
        # <li>Status - String - 是否必填：否 - 处理状态  0 -- 待处理 1 -- 已加白 2 -- 已删除 3 - 已忽略</li>
        # <li>ModifyTime - String - 是否必填：否 - 最近发生时间</li>
        # <li>Uuid- String - 是否必填：否 - 主机uuid查询</li>
        # <li>VulName- string -</li>
        # <li>VulCategory- string - 是否必填：否 - 漏洞类别 1: web-cms漏洞 2:应用漏洞  4: Linux软件漏洞 5: Windows系统漏洞</li>
        # <li>IsSupportDefense - int- 是否必填：否 - 是否支持防御 0:不支持 1:支持</li>
        # <li>Labels- string- 是否必填：否 - 标签搜索</li>
        # @type Filters: Array
        # @param By: 可选排序字段 Level，LastTime，HostCount
        # @type By: String
        # @param Order: 排序顺序：desc  默认asc
        # @type Order: String

        attr_accessor :Limit, :Offset, :Filters, :By, :Order
        
        def initialize(limit=nil, offset=nil, filters=nil, by=nil, order=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @By = by
          @Order = order
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
          @By = params['By']
          @Order = params['Order']
        end
      end

      # DescribeVulList返回参数结构体
      class DescribeVulListResponse < TencentCloud::Common::AbstractModel
        # @param VulInfoList: 漏洞列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulInfoList: Array
        # @param TotalCount: 漏洞总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param FollowVulCount: 重点关注漏洞总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FollowVulCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VulInfoList, :TotalCount, :FollowVulCount, :RequestId
        
        def initialize(vulinfolist=nil, totalcount=nil, followvulcount=nil, requestid=nil)
          @VulInfoList = vulinfolist
          @TotalCount = totalcount
          @FollowVulCount = followvulcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['VulInfoList'].nil?
            @VulInfoList = []
            params['VulInfoList'].each do |i|
              vulinfolist_tmp = VulInfoList.new
              vulinfolist_tmp.deserialize(i)
              @VulInfoList << vulinfolist_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @FollowVulCount = params['FollowVulCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVulTop请求参数结构体
      class DescribeVulTopRequest < TencentCloud::Common::AbstractModel
        # @param Top: 漏洞风险服务器top，1-100
        # @type Top: Integer
        # @param VulCategory: 1:web-cms 漏洞，2.应用漏洞 4: Linux软件漏洞 5: windows系统漏洞 6:应急漏洞，不填或者填0时返回 1，2，4，5 的总统计数据
        # @type VulCategory: Integer
        # @param IsFollowVul: 是否仅统计重点关注漏洞 1=仅统计重点关注漏洞, 0=统计全部漏洞
        # @type IsFollowVul: Integer

        attr_accessor :Top, :VulCategory, :IsFollowVul
        
        def initialize(top=nil, vulcategory=nil, isfollowvul=nil)
          @Top = top
          @VulCategory = vulcategory
          @IsFollowVul = isfollowvul
        end

        def deserialize(params)
          @Top = params['Top']
          @VulCategory = params['VulCategory']
          @IsFollowVul = params['IsFollowVul']
        end
      end

      # DescribeVulTop返回参数结构体
      class DescribeVulTopResponse < TencentCloud::Common::AbstractModel
        # @param VulTopList: 漏洞top列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulTopList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VulTopList, :RequestId
        
        def initialize(vultoplist=nil, requestid=nil)
          @VulTopList = vultoplist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['VulTopList'].nil?
            @VulTopList = []
            params['VulTopList'].each do |i|
              vultopinfo_tmp = VulTopInfo.new
              vultopinfo_tmp.deserialize(i)
              @VulTopList << vultopinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWarningList请求参数结构体
      class DescribeWarningListRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeWarningList返回参数结构体
      class DescribeWarningListResponse < TencentCloud::Common::AbstractModel
        # @param WarningInfoList: 获取告警列表
        # @type WarningInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WarningInfoList, :RequestId
        
        def initialize(warninginfolist=nil, requestid=nil)
          @WarningInfoList = warninginfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WarningInfoList'].nil?
            @WarningInfoList = []
            params['WarningInfoList'].each do |i|
              warninginfoobj_tmp = WarningInfoObj.new
              warninginfoobj_tmp.deserialize(i)
              @WarningInfoList << warninginfoobj_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWebPageEventList请求参数结构体
      class DescribeWebPageEventListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件
        # <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        # <li>EventType - String - 是否必填：否 - 事件类型</li>
        # <li>EventStatus - String - 是否必填：否 - 事件状态</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param By: 排序方式：CreateTime 或 RestoreTime，默认为CreateTime
        # @type By: String
        # @param Order: 排序方式，0降序，1升序，默认为0
        # @type Order: Integer

        attr_accessor :Filters, :Offset, :Limit, :By, :Order
        
        def initialize(filters=nil, offset=nil, limit=nil, by=nil, order=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @By = by
          @Order = order
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              assetfilters_tmp = AssetFilters.new
              assetfilters_tmp.deserialize(i)
              @Filters << assetfilters_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @By = params['By']
          @Order = params['Order']
        end
      end

      # DescribeWebPageEventList返回参数结构体
      class DescribeWebPageEventListResponse < TencentCloud::Common::AbstractModel
        # @param List: 防护事件列表信息
        # @type List: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              protecteventlists_tmp = ProtectEventLists.new
              protecteventlists_tmp.deserialize(i)
              @List << protecteventlists_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWebPageGeneralize请求参数结构体
      class DescribeWebPageGeneralizeRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeWebPageGeneralize返回参数结构体
      class DescribeWebPageGeneralizeResponse < TencentCloud::Common::AbstractModel
        # @param ProtectMonitor: 防护监测 0 未开启 1 已开启 2 异常
        # @type ProtectMonitor: Integer
        # @param ProtectDirNum: 防护目录数
        # @type ProtectDirNum: Integer
        # @param ProtectFileNum: 防护文件数
        # @type ProtectFileNum: Integer
        # @param TamperFileNum: 篡改文件数
        # @type TamperFileNum: Integer
        # @param TamperNum: 篡改数
        # @type TamperNum: Integer
        # @param ProtectToday: 今日防护数
        # @type ProtectToday: Integer
        # @param ProtectHostNum: 防护主机数
        # @type ProtectHostNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProtectMonitor, :ProtectDirNum, :ProtectFileNum, :TamperFileNum, :TamperNum, :ProtectToday, :ProtectHostNum, :RequestId
        
        def initialize(protectmonitor=nil, protectdirnum=nil, protectfilenum=nil, tamperfilenum=nil, tampernum=nil, protecttoday=nil, protecthostnum=nil, requestid=nil)
          @ProtectMonitor = protectmonitor
          @ProtectDirNum = protectdirnum
          @ProtectFileNum = protectfilenum
          @TamperFileNum = tamperfilenum
          @TamperNum = tampernum
          @ProtectToday = protecttoday
          @ProtectHostNum = protecthostnum
          @RequestId = requestid
        end

        def deserialize(params)
          @ProtectMonitor = params['ProtectMonitor']
          @ProtectDirNum = params['ProtectDirNum']
          @ProtectFileNum = params['ProtectFileNum']
          @TamperFileNum = params['TamperFileNum']
          @TamperNum = params['TamperNum']
          @ProtectToday = params['ProtectToday']
          @ProtectHostNum = params['ProtectHostNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWebPageProtectStat请求参数结构体
      class DescribeWebPageProtectStatRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeWebPageProtectStat返回参数结构体
      class DescribeWebPageProtectStatResponse < TencentCloud::Common::AbstractModel
        # @param FileTamperNum: 文件篡改信息
        # @type FileTamperNum: Array
        # @param ProtectFileType: 防护文件分类信息
        # @type ProtectFileType: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileTamperNum, :ProtectFileType, :RequestId
        
        def initialize(filetampernum=nil, protectfiletype=nil, requestid=nil)
          @FileTamperNum = filetampernum
          @ProtectFileType = protectfiletype
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FileTamperNum'].nil?
            @FileTamperNum = []
            params['FileTamperNum'].each do |i|
              protectstat_tmp = ProtectStat.new
              protectstat_tmp.deserialize(i)
              @FileTamperNum << protectstat_tmp
            end
          end
          unless params['ProtectFileType'].nil?
            @ProtectFileType = []
            params['ProtectFileType'].each do |i|
              protectstat_tmp = ProtectStat.new
              protectstat_tmp.deserialize(i)
              @ProtectFileType << protectstat_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWebPageServiceInfo请求参数结构体
      class DescribeWebPageServiceInfoRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeWebPageServiceInfo返回参数结构体
      class DescribeWebPageServiceInfoResponse < TencentCloud::Common::AbstractModel
        # @param Status: 是否已购服务：true-是，false-否
        # @type Status: Boolean
        # @param UsedNum: 已使用授权数
        # @type UsedNum: Integer
        # @param ResidueNum: 剩余授权数
        # @type ResidueNum: Integer
        # @param BuyNum: 已购授权数
        # @type BuyNum: Integer
        # @param ExpireNum: 临近到期数量
        # @type ExpireNum: Integer
        # @param AllAuthorizedMachines: 所有授权机器信息
        # @type AllAuthorizedMachines: Array
        # @param ExpireAuthorizedMachines: 临近到期授权机器信息
        # @type ExpireAuthorizedMachines: Array
        # @param ExpiredNum: 已过期授权数
        # @type ExpiredNum: Integer
        # @param ProtectDirNum: 防护目录数
        # @type ProtectDirNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :UsedNum, :ResidueNum, :BuyNum, :ExpireNum, :AllAuthorizedMachines, :ExpireAuthorizedMachines, :ExpiredNum, :ProtectDirNum, :RequestId
        
        def initialize(status=nil, usednum=nil, residuenum=nil, buynum=nil, expirenum=nil, allauthorizedmachines=nil, expireauthorizedmachines=nil, expirednum=nil, protectdirnum=nil, requestid=nil)
          @Status = status
          @UsedNum = usednum
          @ResidueNum = residuenum
          @BuyNum = buynum
          @ExpireNum = expirenum
          @AllAuthorizedMachines = allauthorizedmachines
          @ExpireAuthorizedMachines = expireauthorizedmachines
          @ExpiredNum = expirednum
          @ProtectDirNum = protectdirnum
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @UsedNum = params['UsedNum']
          @ResidueNum = params['ResidueNum']
          @BuyNum = params['BuyNum']
          @ExpireNum = params['ExpireNum']
          unless params['AllAuthorizedMachines'].nil?
            @AllAuthorizedMachines = []
            params['AllAuthorizedMachines'].each do |i|
              protectmachineinfo_tmp = ProtectMachineInfo.new
              protectmachineinfo_tmp.deserialize(i)
              @AllAuthorizedMachines << protectmachineinfo_tmp
            end
          end
          unless params['ExpireAuthorizedMachines'].nil?
            @ExpireAuthorizedMachines = []
            params['ExpireAuthorizedMachines'].each do |i|
              protectmachine_tmp = ProtectMachine.new
              protectmachine_tmp.deserialize(i)
              @ExpireAuthorizedMachines << protectmachine_tmp
            end
          end
          @ExpiredNum = params['ExpiredNum']
          @ProtectDirNum = params['ProtectDirNum']
          @RequestId = params['RequestId']
        end
      end

      # DestroyOrder请求参数结构体
      class DestroyOrderRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param LicenseType: 授权类型 0 专业版-按量计费, 1专业版-包年包月 , 2 旗舰版-包年包月
        # @type LicenseType: Integer

        attr_accessor :ResourceId, :LicenseType
        
        def initialize(resourceid=nil, licensetype=nil)
          @ResourceId = resourceid
          @LicenseType = licensetype
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @LicenseType = params['LicenseType']
        end
      end

      # DestroyOrder返回参数结构体
      class DestroyOrderResponse < TencentCloud::Common::AbstractModel
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

      # EditBashRules请求参数结构体
      class EditBashRulesRequest < TencentCloud::Common::AbstractModel
        # @param Id: 规则ID（新增时不填）
        # @type Id: Integer
        # @param Uuids: 客户端ID数组
        # @type Uuids: Array
        # @param HostIp: 主机IP
        # @type HostIp: String
        # @param Name: 规则名称，编辑时不可修改规则名称
        # @type Name: String
        # @param Level: 危险等级(0:无，1: 高危 2:中危 3: 低危)
        # @type Level: Integer
        # @param Rule: 正则表达式 ，编辑时不可修改正则表达式，需要对内容QueryEscape后再base64
        # @type Rule: String
        # @param IsGlobal: 是否全局规则(默认否)：1-全局，0-非全局
        # @type IsGlobal: Integer
        # @param White: 0=黑名单， 1=白名单
        # @type White: Integer
        # @param EventId: 事件列表点击“加入白名单”时,需要传EventId 事件的id
        # @type EventId: Integer
        # @param DealOldEvents: 是否处理旧事件为白名单 0=不处理 1=处理
        # @type DealOldEvents: Integer

        attr_accessor :Id, :Uuids, :HostIp, :Name, :Level, :Rule, :IsGlobal, :White, :EventId, :DealOldEvents
        
        def initialize(id=nil, uuids=nil, hostip=nil, name=nil, level=nil, rule=nil, isglobal=nil, white=nil, eventid=nil, dealoldevents=nil)
          @Id = id
          @Uuids = uuids
          @HostIp = hostip
          @Name = name
          @Level = level
          @Rule = rule
          @IsGlobal = isglobal
          @White = white
          @EventId = eventid
          @DealOldEvents = dealoldevents
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuids = params['Uuids']
          @HostIp = params['HostIp']
          @Name = params['Name']
          @Level = params['Level']
          @Rule = params['Rule']
          @IsGlobal = params['IsGlobal']
          @White = params['White']
          @EventId = params['EventId']
          @DealOldEvents = params['DealOldEvents']
        end
      end

      # EditBashRules返回参数结构体
      class EditBashRulesResponse < TencentCloud::Common::AbstractModel
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

      # EditTags请求参数结构体
      class EditTagsRequest < TencentCloud::Common::AbstractModel
        # @param Name: 标签名
        # @type Name: String
        # @param Id: 标签ID
        # @type Id: Integer
        # @param Quuids: Quuid
        # @type Quuids: Array

        attr_accessor :Name, :Id, :Quuids
        
        def initialize(name=nil, id=nil, quuids=nil)
          @Name = name
          @Id = id
          @Quuids = quuids
        end

        def deserialize(params)
          @Name = params['Name']
          @Id = params['Id']
          @Quuids = params['Quuids']
        end
      end

      # EditTags返回参数结构体
      class EditTagsResponse < TencentCloud::Common::AbstractModel
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

      # 批量导入机器信息.
      class EffectiveMachineInfo < TencentCloud::Common::AbstractModel
        # @param MachineName: 机器名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MachineName: String
        # @param MachinePublicIp: 机器公网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MachinePublicIp: String
        # @param MachinePrivateIp: 机器内网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MachinePrivateIp: String
        # @param MachineTag: 机器标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MachineTag: Array
        # @param Quuid: 机器Quuid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Quuid: String
        # @param Uuid: 云镜Uuid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uuid: String
        # @param KernelVersion: 内核版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KernelVersion: String
        # @param MachineStatus: 在线状态 OFFLINE，ONLINE
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MachineStatus: String
        # @param LicenseOrder: 授权订单对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LicenseOrder: :class:`Tencentcloud::Cwp.v20180228.models.LicenseOrder`
        # @param VulNum: 漏洞数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulNum: Integer

        attr_accessor :MachineName, :MachinePublicIp, :MachinePrivateIp, :MachineTag, :Quuid, :Uuid, :KernelVersion, :MachineStatus, :LicenseOrder, :VulNum
        
        def initialize(machinename=nil, machinepublicip=nil, machineprivateip=nil, machinetag=nil, quuid=nil, uuid=nil, kernelversion=nil, machinestatus=nil, licenseorder=nil, vulnum=nil)
          @MachineName = machinename
          @MachinePublicIp = machinepublicip
          @MachinePrivateIp = machineprivateip
          @MachineTag = machinetag
          @Quuid = quuid
          @Uuid = uuid
          @KernelVersion = kernelversion
          @MachineStatus = machinestatus
          @LicenseOrder = licenseorder
          @VulNum = vulnum
        end

        def deserialize(params)
          @MachineName = params['MachineName']
          @MachinePublicIp = params['MachinePublicIp']
          @MachinePrivateIp = params['MachinePrivateIp']
          unless params['MachineTag'].nil?
            @MachineTag = []
            params['MachineTag'].each do |i|
              machinetag_tmp = MachineTag.new
              machinetag_tmp.deserialize(i)
              @MachineTag << machinetag_tmp
            end
          end
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
          @KernelVersion = params['KernelVersion']
          @MachineStatus = params['MachineStatus']
          unless params['LicenseOrder'].nil?
            @LicenseOrder = LicenseOrder.new
            @LicenseOrder.deserialize(params['LicenseOrder'])
          end
          @VulNum = params['VulNum']
        end
      end

      # 专家服务-应急响应信息
      class EmergencyResponseInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param HostNum: 主机个数
        # @type HostNum: Integer
        # @param Status: 服务状态 0未启动，·响应中，2响应完成
        # @type Status: Integer
        # @param StartTime: 服务开始时间
        # @type StartTime: String
        # @param EndTime: 服务结束时间
        # @type EndTime: String
        # @param ReportPath: 报告下载地址
        # @type ReportPath: String

        attr_accessor :TaskId, :HostNum, :Status, :StartTime, :EndTime, :ReportPath
        
        def initialize(taskid=nil, hostnum=nil, status=nil, starttime=nil, endtime=nil, reportpath=nil)
          @TaskId = taskid
          @HostNum = hostnum
          @Status = status
          @StartTime = starttime
          @EndTime = endtime
          @ReportPath = reportpath
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @HostNum = params['HostNum']
          @Status = params['Status']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ReportPath = params['ReportPath']
        end
      end

      # 应急漏洞信息
      class EmergencyVul < TencentCloud::Common::AbstractModel
        # @param VulId: 漏洞id
        # @type VulId: Integer
        # @param Level: 漏洞级别
        # @type Level: Integer
        # @param VulName: 漏洞名称
        # @type VulName: String
        # @param PublishDate: 发布日期
        # @type PublishDate: String
        # @param Category: 漏洞分类
        # @type Category: Integer
        # @param Status: 漏洞状态 0未检测 1有风险 ，2无风险 ，3 检查中展示progress
        # @type Status: Integer
        # @param LastScanTime: 最后扫描时间
        # @type LastScanTime: String
        # @param Progress: 扫描进度
        # @type Progress: Integer
        # @param CveId: cve编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CveId: String
        # @param CvssScore: CVSS评分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CvssScore: Float
        # @param Labels: 漏洞标签 多个逗号分割
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: String
        # @param HostCount: 影响机器数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostCount: Integer
        # @param IsSupportDefense: 是否支持防御， 0:不支持 1:支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsSupportDefense: Integer
        # @param DefenseAttackCount: 已防御的攻击次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefenseAttackCount: Integer

        attr_accessor :VulId, :Level, :VulName, :PublishDate, :Category, :Status, :LastScanTime, :Progress, :CveId, :CvssScore, :Labels, :HostCount, :IsSupportDefense, :DefenseAttackCount
        
        def initialize(vulid=nil, level=nil, vulname=nil, publishdate=nil, category=nil, status=nil, lastscantime=nil, progress=nil, cveid=nil, cvssscore=nil, labels=nil, hostcount=nil, issupportdefense=nil, defenseattackcount=nil)
          @VulId = vulid
          @Level = level
          @VulName = vulname
          @PublishDate = publishdate
          @Category = category
          @Status = status
          @LastScanTime = lastscantime
          @Progress = progress
          @CveId = cveid
          @CvssScore = cvssscore
          @Labels = labels
          @HostCount = hostcount
          @IsSupportDefense = issupportdefense
          @DefenseAttackCount = defenseattackcount
        end

        def deserialize(params)
          @VulId = params['VulId']
          @Level = params['Level']
          @VulName = params['VulName']
          @PublishDate = params['PublishDate']
          @Category = params['Category']
          @Status = params['Status']
          @LastScanTime = params['LastScanTime']
          @Progress = params['Progress']
          @CveId = params['CveId']
          @CvssScore = params['CvssScore']
          @Labels = params['Labels']
          @HostCount = params['HostCount']
          @IsSupportDefense = params['IsSupportDefense']
          @DefenseAttackCount = params['DefenseAttackCount']
        end
      end

      # 未处理的安全事件统计信息
      class EventStat < TencentCloud::Common::AbstractModel
        # @param EventsNum: 事件数
        # @type EventsNum: Integer
        # @param MachineAffectNum: 受影响的主机数
        # @type MachineAffectNum: Integer

        attr_accessor :EventsNum, :MachineAffectNum
        
        def initialize(eventsnum=nil, machineaffectnum=nil)
          @EventsNum = eventsnum
          @MachineAffectNum = machineaffectnum
        end

        def deserialize(params)
          @EventsNum = params['EventsNum']
          @MachineAffectNum = params['MachineAffectNum']
        end
      end

      # 专家服务订单信息
      class ExpertServiceOrderInfo < TencentCloud::Common::AbstractModel
        # @param OrderId: 订单id
        # @type OrderId: Integer
        # @param InquireType: 订单类型 1应急 2 旗舰重保 3 安全管家
        # @type InquireType: Integer
        # @param InquireNum: 服务数量
        # @type InquireNum: Integer
        # @param BeginTime: 服务开始时间
        # @type BeginTime: String
        # @param EndTime: 服务结束时间
        # @type EndTime: String
        # @param ServiceTime: 服务时长几个月
        # @type ServiceTime: Integer
        # @param Status: 订单状态 0 未启动 1 服务中 2已过期 3完成，4退费销毁
        # @type Status: Integer

        attr_accessor :OrderId, :InquireType, :InquireNum, :BeginTime, :EndTime, :ServiceTime, :Status
        
        def initialize(orderid=nil, inquiretype=nil, inquirenum=nil, begintime=nil, endtime=nil, servicetime=nil, status=nil)
          @OrderId = orderid
          @InquireType = inquiretype
          @InquireNum = inquirenum
          @BeginTime = begintime
          @EndTime = endtime
          @ServiceTime = servicetime
          @Status = status
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @InquireType = params['InquireType']
          @InquireNum = params['InquireNum']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @ServiceTime = params['ServiceTime']
          @Status = params['Status']
        end
      end

      # ExportAssetCoreModuleList请求参数结构体
      class ExportAssetCoreModuleListRequest < TencentCloud::Common::AbstractModel
        # @param Uuid: 服务器Uuid
        # @type Uuid: String
        # @param Quuid: 服务器Quuid
        # @type Quuid: String
        # @param Filters: 过滤条件。
        # <li>Name- string - 是否必填：否 - 包名</li>
        # <li>User- string - 是否必填：否 - 用户</li>
        # @type Filters: Array
        # @param Order: 排序方式，asc升序 或 desc降序
        # @type Order: String
        # @param By: 排序依据[FirstTime|Size|ProcessCount|ModuleCount]
        # @type By: String

        attr_accessor :Uuid, :Quuid, :Filters, :Order, :By
        
        def initialize(uuid=nil, quuid=nil, filters=nil, order=nil, by=nil)
          @Uuid = uuid
          @Quuid = quuid
          @Filters = filters
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Uuid = params['Uuid']
          @Quuid = params['Quuid']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              assetfilters_tmp = AssetFilters.new
              assetfilters_tmp.deserialize(i)
              @Filters << assetfilters_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # ExportAssetCoreModuleList返回参数结构体
      class ExportAssetCoreModuleListResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步下载任务ID，需要配合ExportTasks接口使用
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ExportAssetWebServiceInfoList请求参数结构体
      class ExportAssetWebServiceInfoListRequest < TencentCloud::Common::AbstractModel
        # @param Quuid: 查询指定Quuid主机的信息
        # @type Quuid: String
        # @param Filters: 过滤条件。
        # <li>User- string - 是否必填：否 - 运行用户</li>
        # <li>Name- string - 是否必填：否 - Web服务名：
        # 1:Tomcat
        # 2:Apache
        # 3:Nginx
        # 4:WebLogic
        # 5:Websphere
        # 6:JBoss
        # 7:WildFly
        # 8:Jetty
        # 9:IHS
        # 10:Tengine</li>
        # <li>OsType- string - 是否必填：否 - Windows/linux</li>
        # @type Filters: Array
        # @param Order: 排序方式，asc升序 或 desc降序
        # @type Order: String
        # @param By: 可选排序：[FirstTime|ProcessCount]
        # @type By: String

        attr_accessor :Quuid, :Filters, :Order, :By
        
        def initialize(quuid=nil, filters=nil, order=nil, by=nil)
          @Quuid = quuid
          @Filters = filters
          @Order = order
          @By = by
        end

        def deserialize(params)
          @Quuid = params['Quuid']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              assetfilters_tmp = AssetFilters.new
              assetfilters_tmp.deserialize(i)
              @Filters << assetfilters_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # ExportAssetWebServiceInfoList返回参数结构体
      class ExportAssetWebServiceInfoListResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步下载任务ID，需要配合ExportTasks接口使用
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ExportAttackLogs请求参数结构体
      class ExportAttackLogsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件。
        # <li>HttpMethod - String - 是否必填：否 - 攻击方法(POST|GET)</li>
        # <li>DateRange - String - 是否必填：否 - 时间范围(存储最近3个月的数据)，如最近一个月["2019-11-17", "2019-12-17"]</li>
        # <li>VulType - String 威胁类型 - 是否必填: 否</li>
        # <li>SrcIp - String 攻击源IP - 是否必填: 否</li>
        # <li>DstIp - String 攻击目标IP - 是否必填: 否</li>
        # <li>SrcPort - String 攻击源端口 - 是否必填: 否</li>
        # <li>DstPort - String 攻击目标端口 - 是否必填: 否</li>
        # @type Filters: Array
        # @param Uuid: 主机安全客户端ID
        # @type Uuid: String
        # @param Quuid: 云主机机器ID
        # @type Quuid: String

        attr_accessor :Filters, :Uuid, :Quuid
        
        def initialize(filters=nil, uuid=nil, quuid=nil)
          @Filters = filters
          @Uuid = uuid
          @Quuid = quuid
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
          @Uuid = params['Uuid']
          @Quuid = params['Quuid']
        end
      end

      # ExportAttackLogs返回参数结构体
      class ExportAttackLogsResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 已废弃
        # @type DownloadUrl: String
        # @param TaskId: 导出任务ID 可通过ExportTasks接口下载
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :TaskId, :RequestId
        
        def initialize(downloadurl=nil, taskid=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ExportBaselineEffectHostList请求参数结构体
      class ExportBaselineEffectHostListRequest < TencentCloud::Common::AbstractModel
        # @param BaselineId: 基线id
        # @type BaselineId: Integer
        # @param Filters: 筛选条件
        # <li>AliasName- String- 主机别名</li>
        # @type Filters: Array
        # @param StrategyId: 策略id
        # @type StrategyId: Integer
        # @param UuidList: 主机uuid数组
        # @type UuidList: Array
        # @param BaselineName: 基线名称
        # @type BaselineName: String

        attr_accessor :BaselineId, :Filters, :StrategyId, :UuidList, :BaselineName
        
        def initialize(baselineid=nil, filters=nil, strategyid=nil, uuidlist=nil, baselinename=nil)
          @BaselineId = baselineid
          @Filters = filters
          @StrategyId = strategyid
          @UuidList = uuidlist
          @BaselineName = baselinename
        end

        def deserialize(params)
          @BaselineId = params['BaselineId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
          @StrategyId = params['StrategyId']
          @UuidList = params['UuidList']
          @BaselineName = params['BaselineName']
        end
      end

      # ExportBaselineEffectHostList返回参数结构体
      class ExportBaselineEffectHostListResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 下载地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownloadUrl: String
        # @param TaskId: 导出任务id 可通过 ExportTasks接口下载
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :TaskId, :RequestId
        
        def initialize(downloadurl=nil, taskid=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ExportBaselineList请求参数结构体
      class ExportBaselineListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件：
        # <li>StrategyId- Uint64 - 基线策略id</li>
        # <li>Status - Uint64 - 事件状态：0-未通过，1-忽略，3-通过，5-检测中</li>
        # <li>BaselineName  - String - 基线名称</li>
        # <li>AliasName- String - 服务器名称/服务器ip</li>
        # <li>Uuid- String - 主机uuid</li>
        # @type Filters: Array
        # @param IfDetail: 已废弃
        # @type IfDetail: Integer

        attr_accessor :Filters, :IfDetail
        
        def initialize(filters=nil, ifdetail=nil)
          @Filters = filters
          @IfDetail = ifdetail
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
          @IfDetail = params['IfDetail']
        end
      end

      # ExportBaselineList返回参数结构体
      class ExportBaselineListResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 导出文件下载地址（已弃用）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownloadUrl: String
        # @param TaskId: 导出文件Id 可通过ExportTasks接口下载
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :TaskId, :RequestId
        
        def initialize(downloadurl=nil, taskid=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ExportBashEvents请求参数结构体
      class ExportBashEventsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤参数
        # @type Filters: Array

        attr_accessor :Filters
        
        def initialize(filters=nil)
          @Filters = filters
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
        end
      end

      # ExportBashEvents返回参数结构体
      class ExportBashEventsResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 导出文件下载链接地址。
        # @type DownloadUrl: String
        # @param TaskId: 导出任务ID
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :TaskId, :RequestId
        
        def initialize(downloadurl=nil, taskid=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ExportBruteAttacks请求参数结构体
      class ExportBruteAttacksRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤参数
        # @type Filters: Array

        attr_accessor :Filters
        
        def initialize(filters=nil)
          @Filters = filters
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
        end
      end

      # ExportBruteAttacks返回参数结构体
      class ExportBruteAttacksResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 导出文件下载链接地址。
        # @type DownloadUrl: String
        # @param TaskId: 导出任务ID
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :TaskId, :RequestId
        
        def initialize(downloadurl=nil, taskid=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ExportIgnoreBaselineRule请求参数结构体
      class ExportIgnoreBaselineRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleName: 检测项名称
        # @type RuleName: String

        attr_accessor :RuleName
        
        def initialize(rulename=nil)
          @RuleName = rulename
        end

        def deserialize(params)
          @RuleName = params['RuleName']
        end
      end

      # ExportIgnoreBaselineRule返回参数结构体
      class ExportIgnoreBaselineRuleResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 文件下载地址
        # @type DownloadUrl: String
        # @param TaskId: 导出任务Id , 可通过ExportTasks 接口下载
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :TaskId, :RequestId
        
        def initialize(downloadurl=nil, taskid=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ExportIgnoreRuleEffectHostList请求参数结构体
      class ExportIgnoreRuleEffectHostListRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 检测项id
        # @type RuleId: Integer
        # @param Filters: 过滤条件。
        # <li>AliasName- String- 主机别名</li>
        # @type Filters: Array

        attr_accessor :RuleId, :Filters
        
        def initialize(ruleid=nil, filters=nil)
          @RuleId = ruleid
          @Filters = filters
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
        end
      end

      # ExportIgnoreRuleEffectHostList返回参数结构体
      class ExportIgnoreRuleEffectHostListResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 导出文件下载地址
        # @type DownloadUrl: String
        # @param TaskId: 导出任务Id , 可通过ExportTasks 接口下载
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :TaskId, :RequestId
        
        def initialize(downloadurl=nil, taskid=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ExportLicenseDetail请求参数结构体
      class ExportLicenseDetailRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 多个条件筛选时 LicenseStatus,DeadlineStatus,ResourceId,Keywords 取交集
        # <li> LicenseType  授权类型, 0 专业版-按量计费, 1专业版-包年包月 , 2 旗舰版-包年包月</li>
        # <li>ResourceId 资源ID</li>
        # @type Filters: Array
        # @param IsHistory: 是否导出全部授权详情
        # @type IsHistory: Boolean
        # @param Tags: 标签筛选,平台标签能力,这里传入 标签键,标签值作为一个对象
        # @type Tags: Array
        # @param ExportMonth: 导出月份, 该参数仅在IsHistory 时可选.
        # @type ExportMonth: String

        attr_accessor :Filters, :IsHistory, :Tags, :ExportMonth
        
        def initialize(filters=nil, ishistory=nil, tags=nil, exportmonth=nil)
          @Filters = filters
          @IsHistory = ishistory
          @Tags = tags
          @ExportMonth = exportmonth
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
          @IsHistory = params['IsHistory']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tags_tmp = Tags.new
              tags_tmp.deserialize(i)
              @Tags << tags_tmp
            end
          end
          @ExportMonth = params['ExportMonth']
        end
      end

      # ExportLicenseDetail返回参数结构体
      class ExportLicenseDetailResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 下载地址,该字段废弃
        # @type DownloadUrl: String
        # @param TaskId: 任务ID,可通过任务ID去查下载任务
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :TaskId, :RequestId
        
        def initialize(downloadurl=nil, taskid=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ExportMaliciousRequests请求参数结构体
      class ExportMaliciousRequestsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤参数
        # @type Filters: Array

        attr_accessor :Filters
        
        def initialize(filters=nil)
          @Filters = filters
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
        end
      end

      # ExportMaliciousRequests返回参数结构体
      class ExportMaliciousRequestsResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 导出文件下载链接地址。
        # @type DownloadUrl: String
        # @param TaskId: 导出任务Id , 可通过ExportTasks 接口下载
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :TaskId, :RequestId
        
        def initialize(downloadurl=nil, taskid=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ExportMalwares请求参数结构体
      class ExportMalwaresRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 限制条数,默认10
        # @type Limit: Integer
        # @param Offset: 偏移量 默认0
        # @type Offset: Integer
        # @param Filters: 过滤参数。
        # <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        # <li>FilePath - String - 是否必填：否 - 路径筛选</li>
        # <li>VirusName - String - 是否必填：否 - 描述筛选</li>
        # <li>CreateBeginTime - String - 是否必填：否 - 创建时间筛选-开始时间</li>
        # <li>CreateEndTime - String - 是否必填：否 - 创建时间筛选-结束时间</li>
        # <li>Status - String - 是否必填：否 - 状态筛选</li>
        # @type Filters: Array
        # @param By: 排序值 CreateTime
        # @type By: String
        # @param Order: 排序 方式 ，ASC，DESC
        # @type Order: String

        attr_accessor :Limit, :Offset, :Filters, :By, :Order
        
        def initialize(limit=nil, offset=nil, filters=nil, by=nil, order=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @By = by
          @Order = order
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
          @By = params['By']
          @Order = params['Order']
        end
      end

      # ExportMalwares返回参数结构体
      class ExportMalwaresResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 导出文件下载链接地址。
        # @type DownloadUrl: String
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :TaskId, :RequestId
        
        def initialize(downloadurl=nil, taskid=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ExportNonlocalLoginPlaces请求参数结构体
      class ExportNonlocalLoginPlacesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: <li>Status - int - 是否必填：否 - 状态筛选1:正常登录；2：异地登录</li>
        # @type Filters: Array

        attr_accessor :Filters
        
        def initialize(filters=nil)
          @Filters = filters
        end

        def deserialize(params)
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

      # ExportNonlocalLoginPlaces返回参数结构体
      class ExportNonlocalLoginPlacesResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 导出文件下载链接地址。
        # @type DownloadUrl: String
        # @param TaskId: 导出任务ID
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :TaskId, :RequestId
        
        def initialize(downloadurl=nil, taskid=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ExportPrivilegeEvents请求参数结构体
      class ExportPrivilegeEventsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤参数
        # @type Filters: Array

        attr_accessor :Filters
        
        def initialize(filters=nil)
          @Filters = filters
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
        end
      end

      # ExportPrivilegeEvents返回参数结构体
      class ExportPrivilegeEventsResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 导出文件下载链接地址。
        # @type DownloadUrl: String
        # @param TaskId: 导出任务ID
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :TaskId, :RequestId
        
        def initialize(downloadurl=nil, taskid=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ExportProtectDirList请求参数结构体
      class ExportProtectDirListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: DirName 网站名称
        # DirPath 网站防护目录地址
        # @type Filters: Array
        # @param Order: asc：升序/desc：降序
        # @type Order: String
        # @param By: 排序字段
        # @type By: String

        attr_accessor :Filters, :Order, :By
        
        def initialize(filters=nil, order=nil, by=nil)
          @Filters = filters
          @Order = order
          @By = by
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              assetfilters_tmp = AssetFilters.new
              assetfilters_tmp.deserialize(i)
              @Filters << assetfilters_tmp
            end
          end
          @Order = params['Order']
          @By = params['By']
        end
      end

      # ExportProtectDirList返回参数结构体
      class ExportProtectDirListResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ExportReverseShellEvents请求参数结构体
      class ExportReverseShellEventsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤参数
        # @type Filters: Array

        attr_accessor :Filters
        
        def initialize(filters=nil)
          @Filters = filters
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
        end
      end

      # ExportReverseShellEvents返回参数结构体
      class ExportReverseShellEventsResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 导出文件下载链接地址。
        # @type DownloadUrl: String
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :TaskId, :RequestId
        
        def initialize(downloadurl=nil, taskid=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ExportScanTaskDetails请求参数结构体
      class ExportScanTaskDetailsRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 本次检测的任务id（不同于出参的导出本次检测Excel的任务Id）
        # @type TaskId: Integer
        # @param ModuleType: 模块类型，当前提供：Malware 木马 , Vul 漏洞 , Baseline 基线
        # @type ModuleType: String
        # @param Filters: 过滤参数：ipOrAlias（服务器名/ip）
        # @type Filters: Array

        attr_accessor :TaskId, :ModuleType, :Filters
        
        def initialize(taskid=nil, moduletype=nil, filters=nil)
          @TaskId = taskid
          @ModuleType = moduletype
          @Filters = filters
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ModuleType = params['ModuleType']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
        end
      end

      # ExportScanTaskDetails返回参数结构体
      class ExportScanTaskDetailsResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 导出本次检测Excel的任务Id（不同于入参的本次检测任务id）
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ExportSecurityTrends请求参数结构体
      class ExportSecurityTrendsRequest < TencentCloud::Common::AbstractModel
        # @param BeginDate: 开始时间。
        # @type BeginDate: String
        # @param EndDate: 结束时间。
        # @type EndDate: String

        attr_accessor :BeginDate, :EndDate
        
        def initialize(begindate=nil, enddate=nil)
          @BeginDate = begindate
          @EndDate = enddate
        end

        def deserialize(params)
          @BeginDate = params['BeginDate']
          @EndDate = params['EndDate']
        end
      end

      # ExportSecurityTrends返回参数结构体
      class ExportSecurityTrendsResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 导出文件下载链接地址。
        # @type DownloadUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :RequestId
        
        def initialize(downloadurl=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @RequestId = params['RequestId']
        end
      end

      # ExportTasks请求参数结构体
      class ExportTasksRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # ExportTasks返回参数结构体
      class ExportTasksResponse < TencentCloud::Common::AbstractModel
        # @param Status: PENDING：正在生成下载链接，FINISHED：下载链接已生成，ERROR：网络异常等异常情况
        # @type Status: String
        # @param DownloadUrl: 下载链接
        # @type DownloadUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :DownloadUrl, :RequestId
        
        def initialize(status=nil, downloadurl=nil, requestid=nil)
          @Status = status
          @DownloadUrl = downloadurl
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @DownloadUrl = params['DownloadUrl']
          @RequestId = params['RequestId']
        end
      end

      # ExportVulDetectionExcel请求参数结构体
      class ExportVulDetectionExcelRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 本次漏洞检测任务id（不同于出参的导出本次漏洞检测Excel的任务Id）
        # @type TaskId: Integer

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # ExportVulDetectionExcel返回参数结构体
      class ExportVulDetectionExcelResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 导出文件下载链接地址
        # @type DownloadUrl: String
        # @param TaskId: 导出本次漏洞检测Excel的任务Id（不同于入参的本次漏洞检测任务id）
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :TaskId, :RequestId
        
        def initialize(downloadurl=nil, taskid=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ExportVulDetectionReport请求参数结构体
      class ExportVulDetectionReportRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 漏洞扫描任务id（不同于出参的导出检测报告的任务Id）
        # @type TaskId: Integer
        # @param Filters: 过滤参数
        # @type Filters: Array
        # @param Limit: 需要返回的数量，默认为10，最大值为100
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer

        attr_accessor :TaskId, :Filters, :Limit, :Offset
        
        def initialize(taskid=nil, filters=nil, limit=nil, offset=nil)
          @TaskId = taskid
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # ExportVulDetectionReport返回参数结构体
      class ExportVulDetectionReportResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 导出文件下载链接地址
        # @type DownloadUrl: String
        # @param TaskId: 导出检测报告的任务Id（不同于入参的漏洞扫描任务id）
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :TaskId, :RequestId
        
        def initialize(downloadurl=nil, taskid=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ExportVulEffectHostList请求参数结构体
      class ExportVulEffectHostListRequest < TencentCloud::Common::AbstractModel
        # @param VulId: 漏洞id
        # @type VulId: Integer
        # @param Filters: 过滤条件。
        # <li>AliasName - String - 主机名筛选</li>
        # @type Filters: Array

        attr_accessor :VulId, :Filters
        
        def initialize(vulid=nil, filters=nil)
          @VulId = vulid
          @Filters = filters
        end

        def deserialize(params)
          @VulId = params['VulId']
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

      # ExportVulEffectHostList返回参数结构体
      class ExportVulEffectHostListResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 已废弃
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownloadUrl: String
        # @param TaskId: 导出任务Id , 可通过ExportTasks 接口下载
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :TaskId, :RequestId
        
        def initialize(downloadurl=nil, taskid=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ExportVulList请求参数结构体
      class ExportVulListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件。
        # <li>VulCategory - int - 是否必填：否 - 漏洞分类筛选1: web-cms漏洞 2:应用漏洞  4: Linux软件漏洞 5: Windows系统漏洞</li>
        # <li>IfEmergency - String - 是否必填：否 - 是否为应急漏洞，查询应急漏洞传:yes</li>
        # <li>Status - String - 是否必填：是 - 漏洞状态筛选，0: 待处理 1:忽略  3:已修复  5:检测中， 控制台仅处理0,1,3,5四种状态</li>
        # <li>Level - String - 是否必填：否 - 漏洞等级筛选 1:低 2:中 3:高 4:提示</li>
        # <li>VulName- String - 是否必填：否 - 漏洞名称搜索</li>
        # @type Filters: Array
        # @param IfDetail: 是否导出详情,1是 0不是
        # @type IfDetail: Integer

        attr_accessor :Filters, :IfDetail
        
        def initialize(filters=nil, ifdetail=nil)
          @Filters = filters
          @IfDetail = ifdetail
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @IfDetail = params['IfDetail']
        end
      end

      # ExportVulList返回参数结构体
      class ExportVulListResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 导出的文件下载url（已弃用！）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownloadUrl: String
        # @param TaskId: 导出文件Id 可通过ExportTasks接口下载
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :TaskId, :RequestId
        
        def initialize(downloadurl=nil, taskid=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ExportWebPageEventList请求参数结构体
      class ExportWebPageEventListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件
        # <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        # <li>EventType - String - 是否必填：否 - 事件类型</li>
        # <li>EventStatus - String - 是否必填：否 - 事件状态</li>
        # @type Filters: Array
        # @param By: 排序方式：CreateTime 或 RestoreTime，默认为CreateTime
        # @type By: String
        # @param Order: 排序方式，0降序，1升序，默认为0
        # @type Order: Integer

        attr_accessor :Filters, :By, :Order
        
        def initialize(filters=nil, by=nil, order=nil)
          @Filters = filters
          @By = by
          @Order = order
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              assetfilters_tmp = AssetFilters.new
              assetfilters_tmp.deserialize(i)
              @Filters << assetfilters_tmp
            end
          end
          @By = params['By']
          @Order = params['Order']
        end
      end

      # ExportWebPageEventList返回参数结构体
      class ExportWebPageEventListResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id 可通过 ExportTasks接口下载
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等

      # 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
      # 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。

      # * 最多只能有5个Filter
      # * 同一个Filter存在多个Values，Values值数量最多不能超过5个。
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤键的名称。
        # @type Name: String
        # @param Values: 一个或者多个过滤值。
        # @type Values: Array
        # @param ExactMatch: 模糊搜索
        # @type ExactMatch: Boolean

        attr_accessor :Name, :Values, :ExactMatch
        
        def initialize(name=nil, values=nil, exactmatch=nil)
          @Name = name
          @Values = values
          @ExactMatch = exactmatch
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
          @ExactMatch = params['ExactMatch']
        end
      end

      # 描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等

      # 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
      # 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
      class Filters < TencentCloud::Common::AbstractModel
        # @param Name: 过滤键的名称。
        # @type Name: String
        # @param Values: 一个或者多个过滤值。
        # @type Values: Array
        # @param ExactMatch: 是否模糊匹配，前端框架会带上，可以不管
        # @type ExactMatch: Boolean

        attr_accessor :Name, :Values, :ExactMatch
        
        def initialize(name=nil, values=nil, exactmatch=nil)
          @Name = name
          @Values = values
          @ExactMatch = exactmatch
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
          @ExactMatch = params['ExactMatch']
        end
      end

      # 账号变更历史数据。
      class HistoryAccount < TencentCloud::Common::AbstractModel
        # @param Id: 唯一ID。
        # @type Id: Integer
        # @param Uuid: 云镜客户端唯一Uuid。
        # @type Uuid: String
        # @param MachineIp: 主机内网IP。
        # @type MachineIp: String
        # @param MachineName: 主机名。
        # @type MachineName: String
        # @param Username: 帐号名。
        # @type Username: String
        # @param ModifyType: 帐号变更类型。
        # <li>CREATE：表示新增帐号</li>
        # <li>MODIFY：表示修改帐号</li>
        # <li>DELETE：表示删除帐号</li>
        # @type ModifyType: String
        # @param ModifyTime: 变更时间。
        # @type ModifyTime: String

        attr_accessor :Id, :Uuid, :MachineIp, :MachineName, :Username, :ModifyType, :ModifyTime
        
        def initialize(id=nil, uuid=nil, machineip=nil, machinename=nil, username=nil, modifytype=nil, modifytime=nil)
          @Id = id
          @Uuid = uuid
          @MachineIp = machineip
          @MachineName = machinename
          @Username = username
          @ModifyType = modifytype
          @ModifyTime = modifytime
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuid = params['Uuid']
          @MachineIp = params['MachineIp']
          @MachineName = params['MachineName']
          @Username = params['Username']
          @ModifyType = params['ModifyType']
          @ModifyTime = params['ModifyTime']
        end
      end

      # 登录审计列表实体
      class HostLoginList < TencentCloud::Common::AbstractModel
        # @param Id: 记录Id
        # @type Id: Integer
        # @param Uuid: Uuid串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uuid: String
        # @param MachineIp: 主机ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MachineIp: String
        # @param MachineName: 主机名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MachineName: String
        # @param UserName: 用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param SrcIp: 来源ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SrcIp: String
        # @param Status: 1:正常登录；2异地登录； 5已加白； 14：已处理；15：已忽略。
        # @type Status: Integer
        # @param Country: 国家id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Country: Integer
        # @param City: 城市id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type City: Integer
        # @param Province: 省份id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Province: Integer
        # @param LoginTime: 登录时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoginTime: String
        # @param ModifyTime: 修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyTime: String
        # @param IsRiskArea: 是否命中异地登录异常  1表示命中此类异常, 0表示未命中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsRiskArea: Integer
        # @param IsRiskUser: 是否命中异常用户异常 1表示命中此类异常, 0表示未命中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsRiskUser: Integer
        # @param IsRiskTime: 是否命中异常时间异常 1表示命中此类异常, 0表示未命中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsRiskTime: Integer
        # @param IsRiskSrcIp: 是否命中异常IP异常 1表示命中此类异常, 0表示未命中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsRiskSrcIp: Integer
        # @param RiskLevel: 危险等级：
        # 0 高危
        # 1 可疑
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskLevel: Integer
        # @param Location: 位置名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Location: String
        # @param Quuid: 主机quuid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Quuid: String

        attr_accessor :Id, :Uuid, :MachineIp, :MachineName, :UserName, :SrcIp, :Status, :Country, :City, :Province, :LoginTime, :ModifyTime, :IsRiskArea, :IsRiskUser, :IsRiskTime, :IsRiskSrcIp, :RiskLevel, :Location, :Quuid
        
        def initialize(id=nil, uuid=nil, machineip=nil, machinename=nil, username=nil, srcip=nil, status=nil, country=nil, city=nil, province=nil, logintime=nil, modifytime=nil, isriskarea=nil, isriskuser=nil, isrisktime=nil, isrisksrcip=nil, risklevel=nil, location=nil, quuid=nil)
          @Id = id
          @Uuid = uuid
          @MachineIp = machineip
          @MachineName = machinename
          @UserName = username
          @SrcIp = srcip
          @Status = status
          @Country = country
          @City = city
          @Province = province
          @LoginTime = logintime
          @ModifyTime = modifytime
          @IsRiskArea = isriskarea
          @IsRiskUser = isriskuser
          @IsRiskTime = isrisktime
          @IsRiskSrcIp = isrisksrcip
          @RiskLevel = risklevel
          @Location = location
          @Quuid = quuid
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuid = params['Uuid']
          @MachineIp = params['MachineIp']
          @MachineName = params['MachineName']
          @UserName = params['UserName']
          @SrcIp = params['SrcIp']
          @Status = params['Status']
          @Country = params['Country']
          @City = params['City']
          @Province = params['Province']
          @LoginTime = params['LoginTime']
          @ModifyTime = params['ModifyTime']
          @IsRiskArea = params['IsRiskArea']
          @IsRiskUser = params['IsRiskUser']
          @IsRiskTime = params['IsRiskTime']
          @IsRiskSrcIp = params['IsRiskSrcIp']
          @RiskLevel = params['RiskLevel']
          @Location = params['Location']
          @Quuid = params['Quuid']
        end
      end

      # 忽略的基线检测项信息
      class IgnoreBaselineRule < TencentCloud::Common::AbstractModel
        # @param RuleName: 基线检测项名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleName: String
        # @param RuleId: 基线检测项id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: Integer
        # @param ModifyTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyTime: String
        # @param Fix: 修复建议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Fix: String
        # @param EffectHostCount: 影响主机数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EffectHostCount: Integer

        attr_accessor :RuleName, :RuleId, :ModifyTime, :Fix, :EffectHostCount
        
        def initialize(rulename=nil, ruleid=nil, modifytime=nil, fix=nil, effecthostcount=nil)
          @RuleName = rulename
          @RuleId = ruleid
          @ModifyTime = modifytime
          @Fix = fix
          @EffectHostCount = effecthostcount
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          @RuleId = params['RuleId']
          @ModifyTime = params['ModifyTime']
          @Fix = params['Fix']
          @EffectHostCount = params['EffectHostCount']
        end
      end

      # IgnoreImpactedHosts请求参数结构体
      class IgnoreImpactedHostsRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 漏洞ID数组。
        # @type Ids: Array

        attr_accessor :Ids
        
        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # IgnoreImpactedHosts返回参数结构体
      class IgnoreImpactedHostsResponse < TencentCloud::Common::AbstractModel
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

      # 忽略检测项影响主机信息
      class IgnoreRuleEffectHostInfo < TencentCloud::Common::AbstractModel
        # @param HostName: 主机名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostName: String
        # @param Level: 危害等级：1-低位，2-中危，3-高危，4-严重
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: Integer
        # @param TagList: 主机标签数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagList: Array
        # @param Status: 状态：0-未通过，1-忽略，3-已通过，5-检测中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param LastScanTime: 最后检测时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastScanTime: String
        # @param EventId: 事件id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventId: Integer
        # @param Quuid: 主机quuid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Quuid: String

        attr_accessor :HostName, :Level, :TagList, :Status, :LastScanTime, :EventId, :Quuid
        
        def initialize(hostname=nil, level=nil, taglist=nil, status=nil, lastscantime=nil, eventid=nil, quuid=nil)
          @HostName = hostname
          @Level = level
          @TagList = taglist
          @Status = status
          @LastScanTime = lastscantime
          @EventId = eventid
          @Quuid = quuid
        end

        def deserialize(params)
          @HostName = params['HostName']
          @Level = params['Level']
          @TagList = params['TagList']
          @Status = params['Status']
          @LastScanTime = params['LastScanTime']
          @EventId = params['EventId']
          @Quuid = params['Quuid']
        end
      end

      # 授权绑定详情信息
      class LicenseBindDetail < TencentCloud::Common::AbstractModel
        # @param MachineName: 机器别名
        # @type MachineName: String
        # @param MachineWanIp: 机器公网IP
        # @type MachineWanIp: String
        # @param MachineIp: 机器内网IP
        # @type MachineIp: String
        # @param Quuid: 云服务器UUID
        # @type Quuid: String
        # @param Uuid: 云镜客户端UUID
        # @type Uuid: String
        # @param Tags: 标签信息
        # @type Tags: Array
        # @param AgentStatus: 云镜客户端状态,OFFLINE 离线,ONLINE 在线,UNINSTALL 未安装
        # @type AgentStatus: String
        # @param IsUnBind: 是否允许解绑,false 不允许解绑
        # @type IsUnBind: Boolean
        # @param IsSwitchBind: 是否允许换绑,false 不允许换绑
        # @type IsSwitchBind: Boolean

        attr_accessor :MachineName, :MachineWanIp, :MachineIp, :Quuid, :Uuid, :Tags, :AgentStatus, :IsUnBind, :IsSwitchBind
        
        def initialize(machinename=nil, machinewanip=nil, machineip=nil, quuid=nil, uuid=nil, tags=nil, agentstatus=nil, isunbind=nil, isswitchbind=nil)
          @MachineName = machinename
          @MachineWanIp = machinewanip
          @MachineIp = machineip
          @Quuid = quuid
          @Uuid = uuid
          @Tags = tags
          @AgentStatus = agentstatus
          @IsUnBind = isunbind
          @IsSwitchBind = isswitchbind
        end

        def deserialize(params)
          @MachineName = params['MachineName']
          @MachineWanIp = params['MachineWanIp']
          @MachineIp = params['MachineIp']
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
          @Tags = params['Tags']
          @AgentStatus = params['AgentStatus']
          @IsUnBind = params['IsUnBind']
          @IsSwitchBind = params['IsSwitchBind']
        end
      end

      # 授权绑定任务详情
      class LicenseBindTaskDetail < TencentCloud::Common::AbstractModel
        # @param Quuid: 云服务器UUID
        # @type Quuid: String
        # @param ErrMsg: 错误信息
        # @type ErrMsg: String
        # @param Status: 0 执行中, 1 成功,2失败
        # @type Status: Integer

        attr_accessor :Quuid, :ErrMsg, :Status
        
        def initialize(quuid=nil, errmsg=nil, status=nil)
          @Quuid = quuid
          @ErrMsg = errmsg
          @Status = status
        end

        def deserialize(params)
          @Quuid = params['Quuid']
          @ErrMsg = params['ErrMsg']
          @Status = params['Status']
        end
      end

      # 授权订单列表对象
      class LicenseDetail < TencentCloud::Common::AbstractModel
        # @param LicenseId: 授权ID
        # @type LicenseId: Integer
        # @param LicenseType: 授权类型,0 专业版-按量计费, 1专业版-包年包月 , 2 旗舰版-包年包月
        # @type LicenseType: Integer
        # @param LicenseStatus: 授权状态 0 未使用,1 部分使用, 2 已用完, 3 不可用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LicenseStatus: Integer
        # @param LicenseCnt: 总授权数
        # @type LicenseCnt: Integer
        # @param UsedLicenseCnt: 已使用授权数
        # @type UsedLicenseCnt: Integer
        # @param OrderStatus: 订单状态 1 正常 2隔离, 3销毁
        # @type OrderStatus: Integer
        # @param Deadline: 截止日期
        # @type Deadline: String
        # @param ResourceId: 订单资源ID
        # @type ResourceId: String
        # @param AutoRenewFlag: 0 初始化,1 自动续费,2 不自动续费
        # @type AutoRenewFlag: Integer
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param TaskId: 任务ID ,默认0 ,查询绑定进度用
        # @type TaskId: Integer
        # @param BuyTime: 购买时间
        # @type BuyTime: String
        # @param SourceType: 是否试用订单.
        # @type SourceType: Integer
        # @param Alias: 资源别名
        # @type Alias: String
        # @param Tags: 平台标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :LicenseId, :LicenseType, :LicenseStatus, :LicenseCnt, :UsedLicenseCnt, :OrderStatus, :Deadline, :ResourceId, :AutoRenewFlag, :ProjectId, :TaskId, :BuyTime, :SourceType, :Alias, :Tags
        
        def initialize(licenseid=nil, licensetype=nil, licensestatus=nil, licensecnt=nil, usedlicensecnt=nil, orderstatus=nil, deadline=nil, resourceid=nil, autorenewflag=nil, projectid=nil, taskid=nil, buytime=nil, sourcetype=nil, _alias=nil, tags=nil)
          @LicenseId = licenseid
          @LicenseType = licensetype
          @LicenseStatus = licensestatus
          @LicenseCnt = licensecnt
          @UsedLicenseCnt = usedlicensecnt
          @OrderStatus = orderstatus
          @Deadline = deadline
          @ResourceId = resourceid
          @AutoRenewFlag = autorenewflag
          @ProjectId = projectid
          @TaskId = taskid
          @BuyTime = buytime
          @SourceType = sourcetype
          @Alias = _alias
          @Tags = tags
        end

        def deserialize(params)
          @LicenseId = params['LicenseId']
          @LicenseType = params['LicenseType']
          @LicenseStatus = params['LicenseStatus']
          @LicenseCnt = params['LicenseCnt']
          @UsedLicenseCnt = params['UsedLicenseCnt']
          @OrderStatus = params['OrderStatus']
          @Deadline = params['Deadline']
          @ResourceId = params['ResourceId']
          @AutoRenewFlag = params['AutoRenewFlag']
          @ProjectId = params['ProjectId']
          @TaskId = params['TaskId']
          @BuyTime = params['BuyTime']
          @SourceType = params['SourceType']
          @Alias = params['Alias']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tags_tmp = Tags.new
              tags_tmp.deserialize(i)
              @Tags << tags_tmp
            end
          end
        end
      end

      # 授权订单对象内容
      class LicenseOrder < TencentCloud::Common::AbstractModel
        # @param LicenseId: 授权ID
        # @type LicenseId: Integer
        # @param LicenseType: 授权类型
        # @type LicenseType: Integer
        # @param Status: 授权订单资源状态
        # @type Status: Integer
        # @param SourceType: 订单类型
        # @type SourceType: Integer
        # @param ResourceId: 资源ID
        # @type ResourceId: String

        attr_accessor :LicenseId, :LicenseType, :Status, :SourceType, :ResourceId
        
        def initialize(licenseid=nil, licensetype=nil, status=nil, sourcetype=nil, resourceid=nil)
          @LicenseId = licenseid
          @LicenseType = licensetype
          @Status = status
          @SourceType = sourcetype
          @ResourceId = resourceid
        end

        def deserialize(params)
          @LicenseId = params['LicenseId']
          @LicenseType = params['LicenseType']
          @Status = params['Status']
          @SourceType = params['SourceType']
          @ResourceId = params['ResourceId']
        end
      end

      # 授权解绑信息
      class LicenseUnBindRsp < TencentCloud::Common::AbstractModel
        # @param Quuid: QUUID 云服务器uuid,轻量服务器uuid,边缘计算 uuid
        # @type Quuid: String
        # @param ErrMsg: 失败原因
        # @type ErrMsg: String

        attr_accessor :Quuid, :ErrMsg
        
        def initialize(quuid=nil, errmsg=nil)
          @Quuid = quuid
          @ErrMsg = errmsg
        end

        def deserialize(params)
          @Quuid = params['Quuid']
          @ErrMsg = params['ErrMsg']
        end
      end

      # 异地登录合并后白名单
      class LoginWhiteCombinedInfo < TencentCloud::Common::AbstractModel
        # @param Places: 白名单地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Places: Array
        # @param UserName: 白名单用户（多个用户逗号隔开）
        # @type UserName: String
        # @param SrcIp: 白名单IP（多个IP逗号隔开）
        # @type SrcIp: String
        # @param Locale: 地域字符串
        # @type Locale: String
        # @param Remark: 备注
        # @type Remark: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param IsGlobal: 是否对全局生效, 1：全局有效 0: 对指定主机列表生效'
        # @type IsGlobal: Integer
        # @param Name: 白名单名字：IsLocal=1时固定为：全部服务器；单台机器时为机器内网IP，多台服务器时为服务器数量，如：11台
        # @type Name: String
        # @param Desc: 仅在单台服务器时，返回服务器名称
        # @type Desc: String
        # @param Id: 白名单ID
        # @type Id: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 最近修改时间
        # @type ModifyTime: String
        # @param Uuid: 服务器Uuid
        # @type Uuid: String

        attr_accessor :Places, :UserName, :SrcIp, :Locale, :Remark, :StartTime, :EndTime, :IsGlobal, :Name, :Desc, :Id, :CreateTime, :ModifyTime, :Uuid
        
        def initialize(places=nil, username=nil, srcip=nil, locale=nil, remark=nil, starttime=nil, endtime=nil, isglobal=nil, name=nil, desc=nil, id=nil, createtime=nil, modifytime=nil, uuid=nil)
          @Places = places
          @UserName = username
          @SrcIp = srcip
          @Locale = locale
          @Remark = remark
          @StartTime = starttime
          @EndTime = endtime
          @IsGlobal = isglobal
          @Name = name
          @Desc = desc
          @Id = id
          @CreateTime = createtime
          @ModifyTime = modifytime
          @Uuid = uuid
        end

        def deserialize(params)
          unless params['Places'].nil?
            @Places = []
            params['Places'].each do |i|
              place_tmp = Place.new
              place_tmp.deserialize(i)
              @Places << place_tmp
            end
          end
          @UserName = params['UserName']
          @SrcIp = params['SrcIp']
          @Locale = params['Locale']
          @Remark = params['Remark']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @IsGlobal = params['IsGlobal']
          @Name = params['Name']
          @Desc = params['Desc']
          @Id = params['Id']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @Uuid = params['Uuid']
        end
      end

      # 异地登录白名单
      class LoginWhiteLists < TencentCloud::Common::AbstractModel
        # @param Id: 记录ID
        # @type Id: Integer
        # @param Uuid: 云镜客户端ID
        # @type Uuid: String
        # @param Places: 白名单地域
        # @type Places: Array
        # @param UserName: 白名单用户（多个用户逗号隔开）
        # @type UserName: String
        # @param SrcIp: 白名单IP（多个IP逗号隔开）
        # @type SrcIp: String
        # @param IsGlobal: 是否为全局规则
        # @type IsGlobal: Boolean
        # @param CreateTime: 创建白名单时间
        # @type CreateTime: String
        # @param ModifyTime: 修改白名单时间
        # @type ModifyTime: String
        # @param MachineName: 机器名
        # @type MachineName: String
        # @param HostIp: 机器IP
        # @type HostIp: String
        # @param StartTime: 起始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String

        attr_accessor :Id, :Uuid, :Places, :UserName, :SrcIp, :IsGlobal, :CreateTime, :ModifyTime, :MachineName, :HostIp, :StartTime, :EndTime
        
        def initialize(id=nil, uuid=nil, places=nil, username=nil, srcip=nil, isglobal=nil, createtime=nil, modifytime=nil, machinename=nil, hostip=nil, starttime=nil, endtime=nil)
          @Id = id
          @Uuid = uuid
          @Places = places
          @UserName = username
          @SrcIp = srcip
          @IsGlobal = isglobal
          @CreateTime = createtime
          @ModifyTime = modifytime
          @MachineName = machinename
          @HostIp = hostip
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuid = params['Uuid']
          unless params['Places'].nil?
            @Places = []
            params['Places'].each do |i|
              place_tmp = Place.new
              place_tmp.deserialize(i)
              @Places << place_tmp
            end
          end
          @UserName = params['UserName']
          @SrcIp = params['SrcIp']
          @IsGlobal = params['IsGlobal']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @MachineName = params['MachineName']
          @HostIp = params['HostIp']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 主机列表
      class Machine < TencentCloud::Common::AbstractModel
        # @param MachineName: 主机名称。
        # @type MachineName: String
        # @param MachineOs: 主机系统。
        # @type MachineOs: String
        # @param MachineStatus: 主机状态。
        # <li>OFFLINE: 离线  </li>
        # <li>ONLINE: 在线</li>
        # <li>SHUTDOWN: 已关机</li>
        # <li>UNINSTALLED: 未防护</li>
        # @type MachineStatus: String
        # @param Uuid: 云镜客户端唯一Uuid，若客户端长时间不在线将返回空字符。
        # @type Uuid: String
        # @param Quuid: CVM或BM机器唯一Uuid。
        # @type Quuid: String
        # @param VulNum: 漏洞数。
        # @type VulNum: Integer
        # @param MachineIp: 主机IP。
        # @type MachineIp: String
        # @param IsProVersion: 是否是专业版。
        # <li>true： 是</li>
        # <li>false：否</li>
        # @type IsProVersion: Boolean
        # @param MachineWanIp: 主机外网IP。
        # @type MachineWanIp: String
        # @param PayMode: 主机状态。
        # <li>POSTPAY: 表示后付费，即按量计费  </li>
        # <li>PREPAY: 表示预付费，即包年包月</li>
        # @type PayMode: String
        # @param MalwareNum: 木马数。
        # @type MalwareNum: Integer
        # @param Tag: 标签信息
        # @type Tag: Array
        # @param BaselineNum: 基线风险数。
        # @type BaselineNum: Integer
        # @param CyberAttackNum: 网络风险数。
        # @type CyberAttackNum: Integer
        # @param SecurityStatus: 风险状态。
        # <li>SAFE：安全</li>
        # <li>RISK：风险</li>
        # <li>UNKNOWN：未知</li>
        # @type SecurityStatus: String
        # @param InvasionNum: 入侵事件数
        # @type InvasionNum: Integer
        # @param RegionInfo: 地域信息
        # @type RegionInfo: :class:`Tencentcloud::Cwp.v20180228.models.RegionInfo`
        # @param InstanceState: 实例状态 TERMINATED_PRO_VERSION 已销毁
        # @type InstanceState: String
        # @param LicenseStatus: 防篡改 授权状态 1 授权 0 未授权
        # @type LicenseStatus: Integer
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param HasAssetScan: 是否有资产扫描接口，0无，1有
        # @type HasAssetScan: Integer
        # @param MachineType: 机器所属专区类型 CVM 云服务器, BM 黑石, ECM 边缘计算, LH 轻量应用服务器 ,Other 混合云专区
        # @type MachineType: String
        # @param KernelVersion: 内核版本
        # @type KernelVersion: String
        # @param ProtectType: 防护版本：BASIC_VERSION 基础版， PRO_VERSION 专业版，Flagship 旗舰版，GENERAL_DISCOUNT 普惠版
        # @type ProtectType: String
        # @param CloudTags: 云标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CloudTags: Array
        # @param IsAddedOnTheFifteen: 是否15天内新增的主机 0：非15天内新增的主机，1：15天内增加的主机
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAddedOnTheFifteen: Integer

        attr_accessor :MachineName, :MachineOs, :MachineStatus, :Uuid, :Quuid, :VulNum, :MachineIp, :IsProVersion, :MachineWanIp, :PayMode, :MalwareNum, :Tag, :BaselineNum, :CyberAttackNum, :SecurityStatus, :InvasionNum, :RegionInfo, :InstanceState, :LicenseStatus, :ProjectId, :HasAssetScan, :MachineType, :KernelVersion, :ProtectType, :CloudTags, :IsAddedOnTheFifteen
        
        def initialize(machinename=nil, machineos=nil, machinestatus=nil, uuid=nil, quuid=nil, vulnum=nil, machineip=nil, isproversion=nil, machinewanip=nil, paymode=nil, malwarenum=nil, tag=nil, baselinenum=nil, cyberattacknum=nil, securitystatus=nil, invasionnum=nil, regioninfo=nil, instancestate=nil, licensestatus=nil, projectid=nil, hasassetscan=nil, machinetype=nil, kernelversion=nil, protecttype=nil, cloudtags=nil, isaddedonthefifteen=nil)
          @MachineName = machinename
          @MachineOs = machineos
          @MachineStatus = machinestatus
          @Uuid = uuid
          @Quuid = quuid
          @VulNum = vulnum
          @MachineIp = machineip
          @IsProVersion = isproversion
          @MachineWanIp = machinewanip
          @PayMode = paymode
          @MalwareNum = malwarenum
          @Tag = tag
          @BaselineNum = baselinenum
          @CyberAttackNum = cyberattacknum
          @SecurityStatus = securitystatus
          @InvasionNum = invasionnum
          @RegionInfo = regioninfo
          @InstanceState = instancestate
          @LicenseStatus = licensestatus
          @ProjectId = projectid
          @HasAssetScan = hasassetscan
          @MachineType = machinetype
          @KernelVersion = kernelversion
          @ProtectType = protecttype
          @CloudTags = cloudtags
          @IsAddedOnTheFifteen = isaddedonthefifteen
        end

        def deserialize(params)
          @MachineName = params['MachineName']
          @MachineOs = params['MachineOs']
          @MachineStatus = params['MachineStatus']
          @Uuid = params['Uuid']
          @Quuid = params['Quuid']
          @VulNum = params['VulNum']
          @MachineIp = params['MachineIp']
          @IsProVersion = params['IsProVersion']
          @MachineWanIp = params['MachineWanIp']
          @PayMode = params['PayMode']
          @MalwareNum = params['MalwareNum']
          unless params['Tag'].nil?
            @Tag = []
            params['Tag'].each do |i|
              machinetag_tmp = MachineTag.new
              machinetag_tmp.deserialize(i)
              @Tag << machinetag_tmp
            end
          end
          @BaselineNum = params['BaselineNum']
          @CyberAttackNum = params['CyberAttackNum']
          @SecurityStatus = params['SecurityStatus']
          @InvasionNum = params['InvasionNum']
          unless params['RegionInfo'].nil?
            @RegionInfo = RegionInfo.new
            @RegionInfo.deserialize(params['RegionInfo'])
          end
          @InstanceState = params['InstanceState']
          @LicenseStatus = params['LicenseStatus']
          @ProjectId = params['ProjectId']
          @HasAssetScan = params['HasAssetScan']
          @MachineType = params['MachineType']
          @KernelVersion = params['KernelVersion']
          @ProtectType = params['ProtectType']
          unless params['CloudTags'].nil?
            @CloudTags = []
            params['CloudTags'].each do |i|
              tags_tmp = Tags.new
              tags_tmp.deserialize(i)
              @CloudTags << tags_tmp
            end
          end
          @IsAddedOnTheFifteen = params['IsAddedOnTheFifteen']
        end
      end

      # 服务器标签信息
      class MachineTag < TencentCloud::Common::AbstractModel
        # @param Rid: 关联标签ID
        # @type Rid: Integer
        # @param Name: 标签名
        # @type Name: String
        # @param TagId: 标签ID
        # @type TagId: Integer

        attr_accessor :Rid, :Name, :TagId
        
        def initialize(rid=nil, name=nil, tagid=nil)
          @Rid = rid
          @Name = name
          @TagId = tagid
        end

        def deserialize(params)
          @Rid = params['Rid']
          @Name = params['Name']
          @TagId = params['TagId']
        end
      end

      # 木马列表集合
      class MalWareList < TencentCloud::Common::AbstractModel
        # @param HostIp: 服务器ip
        # @type HostIp: String
        # @param Uuid: 唯一UUID
        # @type Uuid: String
        # @param FilePath: 路径
        # @type FilePath: String
        # @param VirusName: 描述
        # @type VirusName: String
        # @param Status: 状态；4-:待处理，5-已信任，6-已隔离，8-文件已删除
        # @type Status: Integer
        # @param Id: 唯一ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Alias: 主机别名
        # @type Alias: String
        # @param Tags: 特性标签，已废弃字段，不会再返回标签，详情中才会返回标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param FileCreateTime: 首次运行时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileCreateTime: String
        # @param FileModifierTime: 最近运行时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileModifierTime: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param LatestScanTime: 最近扫描时间
        # @type LatestScanTime: String
        # @param Level: 风险等级 0未知、1低、2中、3高、4严重
        # @type Level: Integer
        # @param CheckPlatform: '木马检测平台用,分割 1云查杀引擎、2TAV、3binaryAi、4异常行为、5威胁情报
        # @type CheckPlatform: String
        # @param ProcessExists: 木马进程是否存在 0:不存在，1:存在
        # @type ProcessExists: Integer
        # @param FileExists: 木马文件是否存在 0:不存在，1:存在
        # @type FileExists: Integer
        # @param Quuid: cvm quuid
        # @type Quuid: String
        # @param MD5: 木马样本md5
        # @type MD5: String

        attr_accessor :HostIp, :Uuid, :FilePath, :VirusName, :Status, :Id, :Alias, :Tags, :FileCreateTime, :FileModifierTime, :CreateTime, :LatestScanTime, :Level, :CheckPlatform, :ProcessExists, :FileExists, :Quuid, :MD5
        
        def initialize(hostip=nil, uuid=nil, filepath=nil, virusname=nil, status=nil, id=nil, _alias=nil, tags=nil, filecreatetime=nil, filemodifiertime=nil, createtime=nil, latestscantime=nil, level=nil, checkplatform=nil, processexists=nil, fileexists=nil, quuid=nil, md5=nil)
          @HostIp = hostip
          @Uuid = uuid
          @FilePath = filepath
          @VirusName = virusname
          @Status = status
          @Id = id
          @Alias = _alias
          @Tags = tags
          @FileCreateTime = filecreatetime
          @FileModifierTime = filemodifiertime
          @CreateTime = createtime
          @LatestScanTime = latestscantime
          @Level = level
          @CheckPlatform = checkplatform
          @ProcessExists = processexists
          @FileExists = fileexists
          @Quuid = quuid
          @MD5 = md5
        end

        def deserialize(params)
          @HostIp = params['HostIp']
          @Uuid = params['Uuid']
          @FilePath = params['FilePath']
          @VirusName = params['VirusName']
          @Status = params['Status']
          @Id = params['Id']
          @Alias = params['Alias']
          @Tags = params['Tags']
          @FileCreateTime = params['FileCreateTime']
          @FileModifierTime = params['FileModifierTime']
          @CreateTime = params['CreateTime']
          @LatestScanTime = params['LatestScanTime']
          @Level = params['Level']
          @CheckPlatform = params['CheckPlatform']
          @ProcessExists = params['ProcessExists']
          @FileExists = params['FileExists']
          @Quuid = params['Quuid']
          @MD5 = params['MD5']
        end
      end

      # 恶意请求白名单列表信息
      class MaliciousRequestWhiteListInfo < TencentCloud::Common::AbstractModel
        # @param Id: 白名单id
        # @type Id: Integer
        # @param Domain: 域名
        # @type Domain: String
        # @param Mark: 备注
        # @type Mark: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 更新时间
        # @type ModifyTime: String

        attr_accessor :Id, :Domain, :Mark, :CreateTime, :ModifyTime
        
        def initialize(id=nil, domain=nil, mark=nil, createtime=nil, modifytime=nil)
          @Id = id
          @Domain = domain
          @Mark = mark
          @CreateTime = createtime
          @ModifyTime = modifytime
        end

        def deserialize(params)
          @Id = params['Id']
          @Domain = params['Domain']
          @Mark = params['Mark']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
        end
      end

      # 恶意文件详情
      class MalwareInfo < TencentCloud::Common::AbstractModel
        # @param VirusName: 病毒名称
        # @type VirusName: String
        # @param FileSize: 文件大小
        # @type FileSize: Integer
        # @param MD5: 文件MD5
        # @type MD5: String
        # @param FilePath: 文件地址
        # @type FilePath: String
        # @param FileCreateTime: 首次运行时间
        # @type FileCreateTime: String
        # @param FileModifierTime: 最近一次运行时间
        # @type FileModifierTime: String
        # @param HarmDescribe: 危害描述
        # @type HarmDescribe: String
        # @param SuggestScheme: 建议方案
        # @type SuggestScheme: String
        # @param ServersName: 服务器名称
        # @type ServersName: String
        # @param HostIp: 服务器IP
        # @type HostIp: String
        # @param ProcessName: 进程名称
        # @type ProcessName: String
        # @param ProcessID: 进程ID
        # @type ProcessID: String
        # @param Tags: 标签特性
        # @type Tags: Array
        # @param Breadth: 影响广度 // 暂时不提供
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Breadth: String
        # @param Heat: 查询热度 // 暂时不提供
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Heat: String
        # @param Id: 唯一ID
        # @type Id: Integer
        # @param FileName: 文件名称
        # @type FileName: String
        # @param CreateTime: 首次发现时间
        # @type CreateTime: String
        # @param LatestScanTime: 最近扫描时间
        # @type LatestScanTime: String
        # @param Reference: 参考链接
        # @type Reference: String
        # @param MachineWanIp: 外网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MachineWanIp: String
        # @param PsTree: 进程树 json  pid:进程id，exe:文件路径 ，account:进程所属用组和用户 ,cmdline:执行命令，ssh_service: SSH服务ip, ssh_soure:登录源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PsTree: String
        # @param MachineStatus: 主机在线状态 OFFLINE  ONLINE
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MachineStatus: String
        # @param Status: 状态；4-:待处理，5-已信任，6-已隔离
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param Level: 风险等级 0提示、1低、2中、3高、4严重
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: Integer
        # @param CheckPlatform: 木马检测平台用,分割 1云查杀引擎、2TAV、3binaryAi、4异常行为、5威胁情报
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckPlatform: String
        # @param Uuid: 主机uuid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uuid: String
        # @param ModifyTime: 最近修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyTime: String
        # @param StrFileAccessTime: 最近访问时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrFileAccessTime: String

        attr_accessor :VirusName, :FileSize, :MD5, :FilePath, :FileCreateTime, :FileModifierTime, :HarmDescribe, :SuggestScheme, :ServersName, :HostIp, :ProcessName, :ProcessID, :Tags, :Breadth, :Heat, :Id, :FileName, :CreateTime, :LatestScanTime, :Reference, :MachineWanIp, :PsTree, :MachineStatus, :Status, :Level, :CheckPlatform, :Uuid, :ModifyTime, :StrFileAccessTime
        
        def initialize(virusname=nil, filesize=nil, md5=nil, filepath=nil, filecreatetime=nil, filemodifiertime=nil, harmdescribe=nil, suggestscheme=nil, serversname=nil, hostip=nil, processname=nil, processid=nil, tags=nil, breadth=nil, heat=nil, id=nil, filename=nil, createtime=nil, latestscantime=nil, reference=nil, machinewanip=nil, pstree=nil, machinestatus=nil, status=nil, level=nil, checkplatform=nil, uuid=nil, modifytime=nil, strfileaccesstime=nil)
          @VirusName = virusname
          @FileSize = filesize
          @MD5 = md5
          @FilePath = filepath
          @FileCreateTime = filecreatetime
          @FileModifierTime = filemodifiertime
          @HarmDescribe = harmdescribe
          @SuggestScheme = suggestscheme
          @ServersName = serversname
          @HostIp = hostip
          @ProcessName = processname
          @ProcessID = processid
          @Tags = tags
          @Breadth = breadth
          @Heat = heat
          @Id = id
          @FileName = filename
          @CreateTime = createtime
          @LatestScanTime = latestscantime
          @Reference = reference
          @MachineWanIp = machinewanip
          @PsTree = pstree
          @MachineStatus = machinestatus
          @Status = status
          @Level = level
          @CheckPlatform = checkplatform
          @Uuid = uuid
          @ModifyTime = modifytime
          @StrFileAccessTime = strfileaccesstime
        end

        def deserialize(params)
          @VirusName = params['VirusName']
          @FileSize = params['FileSize']
          @MD5 = params['MD5']
          @FilePath = params['FilePath']
          @FileCreateTime = params['FileCreateTime']
          @FileModifierTime = params['FileModifierTime']
          @HarmDescribe = params['HarmDescribe']
          @SuggestScheme = params['SuggestScheme']
          @ServersName = params['ServersName']
          @HostIp = params['HostIp']
          @ProcessName = params['ProcessName']
          @ProcessID = params['ProcessID']
          @Tags = params['Tags']
          @Breadth = params['Breadth']
          @Heat = params['Heat']
          @Id = params['Id']
          @FileName = params['FileName']
          @CreateTime = params['CreateTime']
          @LatestScanTime = params['LatestScanTime']
          @Reference = params['Reference']
          @MachineWanIp = params['MachineWanIp']
          @PsTree = params['PsTree']
          @MachineStatus = params['MachineStatus']
          @Status = params['Status']
          @Level = params['Level']
          @CheckPlatform = params['CheckPlatform']
          @Uuid = params['Uuid']
          @ModifyTime = params['ModifyTime']
          @StrFileAccessTime = params['StrFileAccessTime']
        end
      end

      # 恶意文件风险提示列表信息
      class MalwareRisk < TencentCloud::Common::AbstractModel
        # @param MachineIp: 机器IP
        # @type MachineIp: String
        # @param VirusName: 病毒名
        # @type VirusName: String
        # @param CreateTime: 发现时间
        # @type CreateTime: String
        # @param Id: 唯一ID
        # @type Id: Integer

        attr_accessor :MachineIp, :VirusName, :CreateTime, :Id
        
        def initialize(machineip=nil, virusname=nil, createtime=nil, id=nil)
          @MachineIp = machineip
          @VirusName = virusname
          @CreateTime = createtime
          @Id = id
        end

        def deserialize(params)
          @MachineIp = params['MachineIp']
          @VirusName = params['VirusName']
          @CreateTime = params['CreateTime']
          @Id = params['Id']
        end
      end

      # ModifyAutoOpenProVersionConfig请求参数结构体
      class ModifyAutoOpenProVersionConfigRequest < TencentCloud::Common::AbstractModel
        # @param Status: 设置自动开通状态。
        # <li>CLOSE：关闭</li>
        # <li>OPEN：打开</li>
        # @type Status: String

        attr_accessor :Status
        
        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # ModifyAutoOpenProVersionConfig返回参数结构体
      class ModifyAutoOpenProVersionConfigResponse < TencentCloud::Common::AbstractModel
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

      # ModifyBanMode请求参数结构体
      class ModifyBanModeRequest < TencentCloud::Common::AbstractModel
        # @param Mode: 阻断模式，STANDARD_MODE：标准阻断，DEEP_MODE：深度阻断
        # @type Mode: String
        # @param Ttl: 阻断时间，用于标准阻断模式
        # @type Ttl: Integer

        attr_accessor :Mode, :Ttl
        
        def initialize(mode=nil, ttl=nil)
          @Mode = mode
          @Ttl = ttl
        end

        def deserialize(params)
          @Mode = params['Mode']
          @Ttl = params['Ttl']
        end
      end

      # ModifyBanMode返回参数结构体
      class ModifyBanModeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyBanStatus请求参数结构体
      class ModifyBanStatusRequest < TencentCloud::Common::AbstractModel
        # @param Status: 阻断状态 0:关闭 1:开启
        # @type Status: Integer

        attr_accessor :Status
        
        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # ModifyBanStatus返回参数结构体
      class ModifyBanStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyBruteAttackRules请求参数结构体
      class ModifyBruteAttackRulesRequest < TencentCloud::Common::AbstractModel
        # @param Rules: 暴力破解判断规则
        # @type Rules: Array

        attr_accessor :Rules
        
        def initialize(rules=nil)
          @Rules = rules
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              bruteattackrule_tmp = BruteAttackRule.new
              bruteattackrule_tmp.deserialize(i)
              @Rules << bruteattackrule_tmp
            end
          end
        end
      end

      # ModifyBruteAttackRules返回参数结构体
      class ModifyBruteAttackRulesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLicenseBinds请求参数结构体
      class ModifyLicenseBindsRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param LicenseType: 授权类型
        # @type LicenseType: Integer
        # @param IsAll: 是否全部机器(当全部机器数大于当前订单可用授权数时,多余机器会被跳过)
        # @type IsAll: Boolean
        # @param QuuidList: 需要绑定的机器quuid列表, 当IsAll = false 时必填,反之忽略该参数. 最大长度=2000
        # @type QuuidList: Array

        attr_accessor :ResourceId, :LicenseType, :IsAll, :QuuidList
        
        def initialize(resourceid=nil, licensetype=nil, isall=nil, quuidlist=nil)
          @ResourceId = resourceid
          @LicenseType = licensetype
          @IsAll = isall
          @QuuidList = quuidlist
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @LicenseType = params['LicenseType']
          @IsAll = params['IsAll']
          @QuuidList = params['QuuidList']
        end
      end

      # ModifyLicenseBinds返回参数结构体
      class ModifyLicenseBindsResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyLicenseUnBinds请求参数结构体
      class ModifyLicenseUnBindsRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param LicenseType: 授权类型
        # @type LicenseType: Integer
        # @param IsAll: 是否全部机器(当全部机器数大于当前订单可用授权数时,多余机器会被跳过)
        # @type IsAll: Boolean
        # @param QuuidList: 需要绑定的机器quuid列表, 当IsAll = false 时必填,反之忽略该参数.
        # 最大长度=100
        # @type QuuidList: Array

        attr_accessor :ResourceId, :LicenseType, :IsAll, :QuuidList
        
        def initialize(resourceid=nil, licensetype=nil, isall=nil, quuidlist=nil)
          @ResourceId = resourceid
          @LicenseType = licensetype
          @IsAll = isall
          @QuuidList = quuidlist
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @LicenseType = params['LicenseType']
          @IsAll = params['IsAll']
          @QuuidList = params['QuuidList']
        end
      end

      # ModifyLicenseUnBinds返回参数结构体
      class ModifyLicenseUnBindsResponse < TencentCloud::Common::AbstractModel
        # @param ErrMsg: 只有解绑失败的才有该值.
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMsg: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrMsg, :RequestId
        
        def initialize(errmsg=nil, requestid=nil)
          @ErrMsg = errmsg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrMsg'].nil?
            @ErrMsg = []
            params['ErrMsg'].each do |i|
              licenseunbindrsp_tmp = LicenseUnBindRsp.new
              licenseunbindrsp_tmp.deserialize(i)
              @ErrMsg << licenseunbindrsp_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyMalwareTimingScanSettings请求参数结构体
      class ModifyMalwareTimingScanSettingsRequest < TencentCloud::Common::AbstractModel
        # @param CheckPattern: 检测模式 0 全盘检测  1快速检测
        # @type CheckPattern: Integer
        # @param StartTime: 检测周期 开始时间，如：02:00:00
        # @type StartTime: String
        # @param EndTime: 检测周期 超时结束时间，如：04:00:00
        # @type EndTime: String
        # @param IsGlobal: 是否全部服务器 1 全部 2 自选
        # @type IsGlobal: Integer
        # @param EnableScan: 定时检测开关 0 关闭 1开启
        # @type EnableScan: Integer
        # @param MonitoringPattern: 监控模式 0 标准 1深度
        # @type MonitoringPattern: Integer
        # @param Cycle: 扫描周期 默认每天 1
        # @type Cycle: Integer
        # @param RealTimeMonitoring: 实时监控 0 关闭 1开启
        # @type RealTimeMonitoring: Integer
        # @param QuuidList: 自选服务器时必须 主机quuid的string数组
        # @type QuuidList: Array
        # @param AutoIsolation: 是否自动隔离 1隔离 0 不隔离
        # @type AutoIsolation: Integer
        # @param KillProcess: 是否杀掉进程 1杀掉 0不杀掉
        # @type KillProcess: Integer
        # @param EngineType: 1标准模式（只报严重、高危）、2增强模式（报严重、高危、中危）、3严格模式（报严重、高、中、低、提示）
        # @type EngineType: Integer

        attr_accessor :CheckPattern, :StartTime, :EndTime, :IsGlobal, :EnableScan, :MonitoringPattern, :Cycle, :RealTimeMonitoring, :QuuidList, :AutoIsolation, :KillProcess, :EngineType
        
        def initialize(checkpattern=nil, starttime=nil, endtime=nil, isglobal=nil, enablescan=nil, monitoringpattern=nil, cycle=nil, realtimemonitoring=nil, quuidlist=nil, autoisolation=nil, killprocess=nil, enginetype=nil)
          @CheckPattern = checkpattern
          @StartTime = starttime
          @EndTime = endtime
          @IsGlobal = isglobal
          @EnableScan = enablescan
          @MonitoringPattern = monitoringpattern
          @Cycle = cycle
          @RealTimeMonitoring = realtimemonitoring
          @QuuidList = quuidlist
          @AutoIsolation = autoisolation
          @KillProcess = killprocess
          @EngineType = enginetype
        end

        def deserialize(params)
          @CheckPattern = params['CheckPattern']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @IsGlobal = params['IsGlobal']
          @EnableScan = params['EnableScan']
          @MonitoringPattern = params['MonitoringPattern']
          @Cycle = params['Cycle']
          @RealTimeMonitoring = params['RealTimeMonitoring']
          @QuuidList = params['QuuidList']
          @AutoIsolation = params['AutoIsolation']
          @KillProcess = params['KillProcess']
          @EngineType = params['EngineType']
        end
      end

      # ModifyMalwareTimingScanSettings返回参数结构体
      class ModifyMalwareTimingScanSettingsResponse < TencentCloud::Common::AbstractModel
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

      # ModifyOrderAttribute请求参数结构体
      class ModifyOrderAttributeRequest < TencentCloud::Common::AbstractModel
        # @param LicenseType: 授权类型 0 专业版-按量计费, 1专业版-包年包月 , 2 旗舰版-包年包月
        # @type LicenseType: Integer
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param AttrName: 可编辑的属性名称 ,当前支持的有: alias 资源别名
        # @type AttrName: String
        # @param AttrValue: 属性值
        # @type AttrValue: String

        attr_accessor :LicenseType, :ResourceId, :AttrName, :AttrValue
        
        def initialize(licensetype=nil, resourceid=nil, attrname=nil, attrvalue=nil)
          @LicenseType = licensetype
          @ResourceId = resourceid
          @AttrName = attrname
          @AttrValue = attrvalue
        end

        def deserialize(params)
          @LicenseType = params['LicenseType']
          @ResourceId = params['ResourceId']
          @AttrName = params['AttrName']
          @AttrValue = params['AttrValue']
        end
      end

      # ModifyOrderAttribute返回参数结构体
      class ModifyOrderAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyWarningSetting请求参数结构体
      class ModifyWarningSettingRequest < TencentCloud::Common::AbstractModel
        # @param WarningObjects: 告警设置的修改内容
        # @type WarningObjects: Array

        attr_accessor :WarningObjects
        
        def initialize(warningobjects=nil)
          @WarningObjects = warningobjects
        end

        def deserialize(params)
          unless params['WarningObjects'].nil?
            @WarningObjects = []
            params['WarningObjects'].each do |i|
              warningobject_tmp = WarningObject.new
              warningobject_tmp.deserialize(i)
              @WarningObjects << warningobject_tmp
            end
          end
        end
      end

      # ModifyWarningSetting返回参数结构体
      class ModifyWarningSettingResponse < TencentCloud::Common::AbstractModel
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

      # ModifyWebPageProtectDir请求参数结构体
      class ModifyWebPageProtectDirRequest < TencentCloud::Common::AbstractModel
        # @param ProtectDirAddr: 网站防护目录地址
        # @type ProtectDirAddr: String
        # @param ProtectDirName: 网站防护目录名称
        # @type ProtectDirName: String
        # @param ProtectFileType: 防护文件类型,分号分割 ;
        # @type ProtectFileType: String
        # @param HostConfig: 防护机器列表信息
        # @type HostConfig: Array

        attr_accessor :ProtectDirAddr, :ProtectDirName, :ProtectFileType, :HostConfig
        
        def initialize(protectdiraddr=nil, protectdirname=nil, protectfiletype=nil, hostconfig=nil)
          @ProtectDirAddr = protectdiraddr
          @ProtectDirName = protectdirname
          @ProtectFileType = protectfiletype
          @HostConfig = hostconfig
        end

        def deserialize(params)
          @ProtectDirAddr = params['ProtectDirAddr']
          @ProtectDirName = params['ProtectDirName']
          @ProtectFileType = params['ProtectFileType']
          unless params['HostConfig'].nil?
            @HostConfig = []
            params['HostConfig'].each do |i|
              protecthostconfig_tmp = ProtectHostConfig.new
              protecthostconfig_tmp.deserialize(i)
              @HostConfig << protecthostconfig_tmp
            end
          end
        end
      end

      # ModifyWebPageProtectDir返回参数结构体
      class ModifyWebPageProtectDirResponse < TencentCloud::Common::AbstractModel
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

      # ModifyWebPageProtectSetting请求参数结构体
      class ModifyWebPageProtectSettingRequest < TencentCloud::Common::AbstractModel
        # @param ModifyType: 需要操作的类型1 目录名称 2 防护文件类型
        # @type ModifyType: Integer
        # @param Value: 提交值
        # @type Value: String
        # @param Id: 配置对应的protect_path
        # @type Id: String

        attr_accessor :ModifyType, :Value, :Id
        
        def initialize(modifytype=nil, value=nil, id=nil)
          @ModifyType = modifytype
          @Value = value
          @Id = id
        end

        def deserialize(params)
          @ModifyType = params['ModifyType']
          @Value = params['Value']
          @Id = params['Id']
        end
      end

      # ModifyWebPageProtectSetting返回参数结构体
      class ModifyWebPageProtectSettingResponse < TencentCloud::Common::AbstractModel
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

      # ModifyWebPageProtectSwitch请求参数结构体
      class ModifyWebPageProtectSwitchRequest < TencentCloud::Common::AbstractModel
        # @param SwitchType: 开关类型 1 防护开关  2 自动恢复开关 3 移除防护目录
        # @type SwitchType: Integer
        # @param Ids: 需要操作开关的网站 最大100条
        # @type Ids: Array
        # @param Status: 1 开启 0 关闭 SwitchType 为 1 | 2 必填;
        # @type Status: Integer

        attr_accessor :SwitchType, :Ids, :Status
        
        def initialize(switchtype=nil, ids=nil, status=nil)
          @SwitchType = switchtype
          @Ids = ids
          @Status = status
        end

        def deserialize(params)
          @SwitchType = params['SwitchType']
          @Ids = params['Ids']
          @Status = params['Status']
        end
      end

      # ModifyWebPageProtectSwitch返回参数结构体
      class ModifyWebPageProtectSwitchResponse < TencentCloud::Common::AbstractModel
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

      # 专家服务-月巡检报告
      class MonthInspectionReport < TencentCloud::Common::AbstractModel
        # @param ReportName: 巡检报告名称
        # @type ReportName: String
        # @param ReportPath: 巡检报告下载地址
        # @type ReportPath: String
        # @param ModifyTime: 巡检报告更新时间
        # @type ModifyTime: String

        attr_accessor :ReportName, :ReportPath, :ModifyTime
        
        def initialize(reportname=nil, reportpath=nil, modifytime=nil)
          @ReportName = reportname
          @ReportPath = reportpath
          @ModifyTime = modifytime
        end

        def deserialize(params)
          @ReportName = params['ReportName']
          @ReportPath = params['ReportPath']
          @ModifyTime = params['ModifyTime']
        end
      end

      # 端口统计列表
      class OpenPortStatistics < TencentCloud::Common::AbstractModel
        # @param Port: 端口号
        # @type Port: Integer
        # @param MachineNum: 主机数量
        # @type MachineNum: Integer

        attr_accessor :Port, :MachineNum
        
        def initialize(port=nil, machinenum=nil)
          @Port = port
          @MachineNum = machinenum
        end

        def deserialize(params)
          @Port = params['Port']
          @MachineNum = params['MachineNum']
        end
      end

      # 操作系统名称
      class OsName < TencentCloud::Common::AbstractModel
        # @param Name: 系统名称
        # @type Name: String
        # @param MachineOSType: 操作系统类型枚举值
        # @type MachineOSType: Integer

        attr_accessor :Name, :MachineOSType
        
        def initialize(name=nil, machineostype=nil)
          @Name = name
          @MachineOSType = machineostype
        end

        def deserialize(params)
          @Name = params['Name']
          @MachineOSType = params['MachineOSType']
        end
      end

      # 登录地信息
      class Place < TencentCloud::Common::AbstractModel
        # @param CityId: 城市 ID。
        # @type CityId: Integer
        # @param ProvinceId: 省份 ID。
        # @type ProvinceId: Integer
        # @param CountryId: 国家ID，暂只支持国内：1。
        # @type CountryId: Integer
        # @param Location: 位置名称
        # @type Location: String

        attr_accessor :CityId, :ProvinceId, :CountryId, :Location
        
        def initialize(cityid=nil, provinceid=nil, countryid=nil, location=nil)
          @CityId = cityid
          @ProvinceId = provinceid
          @CountryId = countryid
          @Location = location
        end

        def deserialize(params)
          @CityId = params['CityId']
          @ProvinceId = params['ProvinceId']
          @CountryId = params['CountryId']
          @Location = params['Location']
        end
      end

      # 本地提权数据
      class PrivilegeEscalationProcess < TencentCloud::Common::AbstractModel
        # @param Id: 数据ID
        # @type Id: Integer
        # @param Uuid: 云镜ID
        # @type Uuid: String
        # @param Quuid: 主机ID
        # @type Quuid: String
        # @param Hostip: 主机内网IP
        # @type Hostip: String
        # @param ProcessName: 进程名
        # @type ProcessName: String
        # @param FullPath: 进程路径
        # @type FullPath: String
        # @param CmdLine: 执行命令
        # @type CmdLine: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param UserGroup: 用户组
        # @type UserGroup: String
        # @param ProcFilePrivilege: 进程文件权限
        # @type ProcFilePrivilege: String
        # @param ParentProcName: 父进程名
        # @type ParentProcName: String
        # @param ParentProcUser: 父进程用户名
        # @type ParentProcUser: String
        # @param ParentProcGroup: 父进程用户组
        # @type ParentProcGroup: String
        # @param ParentProcPath: 父进程路径
        # @type ParentProcPath: String
        # @param ProcTree: 进程树
        # @type ProcTree: String
        # @param Status: 处理状态：0-待处理 2-白名单 3-已处理 4-已忽略
        # @type Status: Integer
        # @param CreateTime: 发生时间
        # @type CreateTime: String
        # @param MachineName: 机器名
        # @type MachineName: String

        attr_accessor :Id, :Uuid, :Quuid, :Hostip, :ProcessName, :FullPath, :CmdLine, :UserName, :UserGroup, :ProcFilePrivilege, :ParentProcName, :ParentProcUser, :ParentProcGroup, :ParentProcPath, :ProcTree, :Status, :CreateTime, :MachineName
        
        def initialize(id=nil, uuid=nil, quuid=nil, hostip=nil, processname=nil, fullpath=nil, cmdline=nil, username=nil, usergroup=nil, procfileprivilege=nil, parentprocname=nil, parentprocuser=nil, parentprocgroup=nil, parentprocpath=nil, proctree=nil, status=nil, createtime=nil, machinename=nil)
          @Id = id
          @Uuid = uuid
          @Quuid = quuid
          @Hostip = hostip
          @ProcessName = processname
          @FullPath = fullpath
          @CmdLine = cmdline
          @UserName = username
          @UserGroup = usergroup
          @ProcFilePrivilege = procfileprivilege
          @ParentProcName = parentprocname
          @ParentProcUser = parentprocuser
          @ParentProcGroup = parentprocgroup
          @ParentProcPath = parentprocpath
          @ProcTree = proctree
          @Status = status
          @CreateTime = createtime
          @MachineName = machinename
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuid = params['Uuid']
          @Quuid = params['Quuid']
          @Hostip = params['Hostip']
          @ProcessName = params['ProcessName']
          @FullPath = params['FullPath']
          @CmdLine = params['CmdLine']
          @UserName = params['UserName']
          @UserGroup = params['UserGroup']
          @ProcFilePrivilege = params['ProcFilePrivilege']
          @ParentProcName = params['ParentProcName']
          @ParentProcUser = params['ParentProcUser']
          @ParentProcGroup = params['ParentProcGroup']
          @ParentProcPath = params['ParentProcPath']
          @ProcTree = params['ProcTree']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @MachineName = params['MachineName']
        end
      end

      # 本地提权规则
      class PrivilegeRule < TencentCloud::Common::AbstractModel
        # @param Id: 规则ID
        # @type Id: Integer
        # @param Uuid: 客户端ID
        # @type Uuid: String
        # @param ProcessName: 进程名
        # @type ProcessName: String
        # @param SMode: 是否S权限
        # @type SMode: Integer
        # @param Operator: 操作人
        # @type Operator: String
        # @param IsGlobal: 是否全局规则
        # @type IsGlobal: Integer
        # @param Status: 状态(0: 有效 1: 无效)
        # @type Status: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String
        # @param Hostip: 主机IP
        # @type Hostip: String

        attr_accessor :Id, :Uuid, :ProcessName, :SMode, :Operator, :IsGlobal, :Status, :CreateTime, :ModifyTime, :Hostip
        
        def initialize(id=nil, uuid=nil, processname=nil, smode=nil, operator=nil, isglobal=nil, status=nil, createtime=nil, modifytime=nil, hostip=nil)
          @Id = id
          @Uuid = uuid
          @ProcessName = processname
          @SMode = smode
          @Operator = operator
          @IsGlobal = isglobal
          @Status = status
          @CreateTime = createtime
          @ModifyTime = modifytime
          @Hostip = hostip
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuid = params['Uuid']
          @ProcessName = params['ProcessName']
          @SMode = params['SMode']
          @Operator = params['Operator']
          @IsGlobal = params['IsGlobal']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @Hostip = params['Hostip']
        end
      end

      # 进程数据统计数据。
      class ProcessStatistics < TencentCloud::Common::AbstractModel
        # @param ProcessName: 进程名。
        # @type ProcessName: String
        # @param MachineNum: 主机数量。
        # @type MachineNum: Integer

        attr_accessor :ProcessName, :MachineNum
        
        def initialize(processname=nil, machinenum=nil)
          @ProcessName = processname
          @MachineNum = machinenum
        end

        def deserialize(params)
          @ProcessName = params['ProcessName']
          @MachineNum = params['MachineNum']
        end
      end

      # 防护目录列表集
      class ProtectDirInfo < TencentCloud::Common::AbstractModel
        # @param DirName: 网站名称
        # @type DirName: String
        # @param DirPath: 网站防护目录地址
        # @type DirPath: String
        # @param RelatedServerNum: 关联服务器数
        # @type RelatedServerNum: Integer
        # @param ProtectServerNum: 防护服务器数
        # @type ProtectServerNum: Integer
        # @param NoProtectServerNum: 未防护服务器数
        # @type NoProtectServerNum: Integer
        # @param Id: 唯一ID
        # @type Id: String
        # @param ProtectStatus: 防护状态
        # @type ProtectStatus: Integer
        # @param ProtectException: 防护异常
        # @type ProtectException: Integer
        # @param AutoRestoreSwitchStatus: 自动恢复开关 (Filters 过滤Quuid 时 返回) 默认0
        # @type AutoRestoreSwitchStatus: Integer

        attr_accessor :DirName, :DirPath, :RelatedServerNum, :ProtectServerNum, :NoProtectServerNum, :Id, :ProtectStatus, :ProtectException, :AutoRestoreSwitchStatus
        
        def initialize(dirname=nil, dirpath=nil, relatedservernum=nil, protectservernum=nil, noprotectservernum=nil, id=nil, protectstatus=nil, protectexception=nil, autorestoreswitchstatus=nil)
          @DirName = dirname
          @DirPath = dirpath
          @RelatedServerNum = relatedservernum
          @ProtectServerNum = protectservernum
          @NoProtectServerNum = noprotectservernum
          @Id = id
          @ProtectStatus = protectstatus
          @ProtectException = protectexception
          @AutoRestoreSwitchStatus = autorestoreswitchstatus
        end

        def deserialize(params)
          @DirName = params['DirName']
          @DirPath = params['DirPath']
          @RelatedServerNum = params['RelatedServerNum']
          @ProtectServerNum = params['ProtectServerNum']
          @NoProtectServerNum = params['NoProtectServerNum']
          @Id = params['Id']
          @ProtectStatus = params['ProtectStatus']
          @ProtectException = params['ProtectException']
          @AutoRestoreSwitchStatus = params['AutoRestoreSwitchStatus']
        end
      end

      # 防护目录关联服务器列表信息
      class ProtectDirRelatedServer < TencentCloud::Common::AbstractModel
        # @param Id: 唯一ID
        # @type Id: String
        # @param HostName: 服务器名称
        # @type HostName: String
        # @param HostIp: 服务器IP
        # @type HostIp: String
        # @param MachineOs: 服务器系统
        # @type MachineOs: String
        # @param RelateDirNum: 关联目录数
        # @type RelateDirNum: Integer
        # @param ProtectStatus: 防护状态
        # @type ProtectStatus: Integer
        # @param ProtectSwitch: 防护开关
        # @type ProtectSwitch: Integer
        # @param AutoRestoreSwitchStatus: 自动恢复开关
        # @type AutoRestoreSwitchStatus: Integer
        # @param Quuid: 服务器唯一ID
        # @type Quuid: String
        # @param Authorization: 是否已经授权
        # @type Authorization: Boolean
        # @param Exception: 异常状态
        # @type Exception: Integer
        # @param Progress: 过渡进度
        # @type Progress: Integer
        # @param ExceptionMessage: 异常信息
        # @type ExceptionMessage: String

        attr_accessor :Id, :HostName, :HostIp, :MachineOs, :RelateDirNum, :ProtectStatus, :ProtectSwitch, :AutoRestoreSwitchStatus, :Quuid, :Authorization, :Exception, :Progress, :ExceptionMessage
        
        def initialize(id=nil, hostname=nil, hostip=nil, machineos=nil, relatedirnum=nil, protectstatus=nil, protectswitch=nil, autorestoreswitchstatus=nil, quuid=nil, authorization=nil, exception=nil, progress=nil, exceptionmessage=nil)
          @Id = id
          @HostName = hostname
          @HostIp = hostip
          @MachineOs = machineos
          @RelateDirNum = relatedirnum
          @ProtectStatus = protectstatus
          @ProtectSwitch = protectswitch
          @AutoRestoreSwitchStatus = autorestoreswitchstatus
          @Quuid = quuid
          @Authorization = authorization
          @Exception = exception
          @Progress = progress
          @ExceptionMessage = exceptionmessage
        end

        def deserialize(params)
          @Id = params['Id']
          @HostName = params['HostName']
          @HostIp = params['HostIp']
          @MachineOs = params['MachineOs']
          @RelateDirNum = params['RelateDirNum']
          @ProtectStatus = params['ProtectStatus']
          @ProtectSwitch = params['ProtectSwitch']
          @AutoRestoreSwitchStatus = params['AutoRestoreSwitchStatus']
          @Quuid = params['Quuid']
          @Authorization = params['Authorization']
          @Exception = params['Exception']
          @Progress = params['Progress']
          @ExceptionMessage = params['ExceptionMessage']
        end
      end

      # 防护事件列表信息
      class ProtectEventLists < TencentCloud::Common::AbstractModel
        # @param HostName: 服务器名称
        # @type HostName: String
        # @param HostIp: 服务器ip
        # @type HostIp: String
        # @param EventDir: 事件地址
        # @type EventDir: String
        # @param EventType: 事件类型 0-内容被修改恢复；1-权限被修改恢复；2-归属被修改恢复；3-被删除恢复；4-新增删除
        # @type EventType: Integer
        # @param EventStatus: 事件状态 1 已恢复 0 未恢复
        # @type EventStatus: Integer
        # @param CreateTime: 发现时间
        # @type CreateTime: String
        # @param RestoreTime: 恢复时间
        # @type RestoreTime: String
        # @param Id: 唯一ID
        # @type Id: Integer
        # @param FileType: 文件类型 0-常规文件；1-目录；2-软链
        # @type FileType: Integer

        attr_accessor :HostName, :HostIp, :EventDir, :EventType, :EventStatus, :CreateTime, :RestoreTime, :Id, :FileType
        
        def initialize(hostname=nil, hostip=nil, eventdir=nil, eventtype=nil, eventstatus=nil, createtime=nil, restoretime=nil, id=nil, filetype=nil)
          @HostName = hostname
          @HostIp = hostip
          @EventDir = eventdir
          @EventType = eventtype
          @EventStatus = eventstatus
          @CreateTime = createtime
          @RestoreTime = restoretime
          @Id = id
          @FileType = filetype
        end

        def deserialize(params)
          @HostName = params['HostName']
          @HostIp = params['HostIp']
          @EventDir = params['EventDir']
          @EventType = params['EventType']
          @EventStatus = params['EventStatus']
          @CreateTime = params['CreateTime']
          @RestoreTime = params['RestoreTime']
          @Id = params['Id']
          @FileType = params['FileType']
        end
      end

      # 防护机器信息
      class ProtectHostConfig < TencentCloud::Common::AbstractModel
        # @param Quuid: 机器唯一ID
        # @type Quuid: String
        # @param ProtectSwitch: 防护开关 0  关闭 1开启
        # @type ProtectSwitch: Integer
        # @param AutoRecovery: 自动恢复开关 0 关闭 1开启
        # @type AutoRecovery: Integer

        attr_accessor :Quuid, :ProtectSwitch, :AutoRecovery
        
        def initialize(quuid=nil, protectswitch=nil, autorecovery=nil)
          @Quuid = quuid
          @ProtectSwitch = protectswitch
          @AutoRecovery = autorecovery
        end

        def deserialize(params)
          @Quuid = params['Quuid']
          @ProtectSwitch = params['ProtectSwitch']
          @AutoRecovery = params['AutoRecovery']
        end
      end

      # 机器授权到期信息
      class ProtectMachine < TencentCloud::Common::AbstractModel
        # @param HostName: 机器名称
        # @type HostName: String
        # @param HostIp: 机器IP
        # @type HostIp: String
        # @param SafeguardDirNum: 防护目录数
        # @type SafeguardDirNum: Integer

        attr_accessor :HostName, :HostIp, :SafeguardDirNum
        
        def initialize(hostname=nil, hostip=nil, safeguarddirnum=nil)
          @HostName = hostname
          @HostIp = hostip
          @SafeguardDirNum = safeguarddirnum
        end

        def deserialize(params)
          @HostName = params['HostName']
          @HostIp = params['HostIp']
          @SafeguardDirNum = params['SafeguardDirNum']
        end
      end

      # 授权机器信息
      class ProtectMachineInfo < TencentCloud::Common::AbstractModel
        # @param HostName: 机器名称
        # @type HostName: String
        # @param HostIp: 机器IP
        # @type HostIp: String
        # @param CreateTime: 开通时间
        # @type CreateTime: String
        # @param ExpireTime: 到期时间
        # @type ExpireTime: String

        attr_accessor :HostName, :HostIp, :CreateTime, :ExpireTime
        
        def initialize(hostname=nil, hostip=nil, createtime=nil, expiretime=nil)
          @HostName = hostname
          @HostIp = hostip
          @CreateTime = createtime
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @HostName = params['HostName']
          @HostIp = params['HostIp']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
        end
      end

      # 专家服务-旗舰护网信息
      class ProtectNetInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param ProtectDays: 护网天数
        # @type ProtectDays: Integer
        # @param Status: 护网状态 0未启动，1护网中，2已完成
        # @type Status: Integer
        # @param StartTime: 护网启动时间
        # @type StartTime: String
        # @param EndTime: 护网完成时间
        # @type EndTime: String
        # @param ReportPath: 报告下载地址
        # @type ReportPath: String

        attr_accessor :TaskId, :ProtectDays, :Status, :StartTime, :EndTime, :ReportPath
        
        def initialize(taskid=nil, protectdays=nil, status=nil, starttime=nil, endtime=nil, reportpath=nil)
          @TaskId = taskid
          @ProtectDays = protectdays
          @Status = status
          @StartTime = starttime
          @EndTime = endtime
          @ReportPath = reportpath
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ProtectDays = params['ProtectDays']
          @Status = params['Status']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ReportPath = params['ReportPath']
        end
      end

      # 防护信息统计
      class ProtectStat < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Num: 数量
        # @type Num: Integer

        attr_accessor :Name, :Num
        
        def initialize(name=nil, num=nil)
          @Name = name
          @Num = num
        end

        def deserialize(params)
          @Name = params['Name']
          @Num = params['Num']
        end
      end

      # RecoverMalwares请求参数结构体
      class RecoverMalwaresRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 木马Id数组（最大100条）
        # @type Ids: Array

        attr_accessor :Ids
        
        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # RecoverMalwares返回参数结构体
      class RecoverMalwaresResponse < TencentCloud::Common::AbstractModel
        # @param SuccessIds: 恢复成功id数组，若无则返回空数组
        # @type SuccessIds: Array
        # @param FailedIds: 恢复失败id数组，若无则返回空数组
        # @type FailedIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessIds, :FailedIds, :RequestId
        
        def initialize(successids=nil, failedids=nil, requestid=nil)
          @SuccessIds = successids
          @FailedIds = failedids
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessIds = params['SuccessIds']
          @FailedIds = params['FailedIds']
          @RequestId = params['RequestId']
        end
      end

      # 地域信息
      class RegionInfo < TencentCloud::Common::AbstractModel
        # @param Region: 地域标志，如 ap-guangzhou，ap-shanghai，ap-beijing
        # @type Region: String
        # @param RegionName: 地域中文名，如华南地区（广州），华东地区（上海金融），华北地区（北京）
        # @type RegionName: String
        # @param RegionId: 地域ID
        # @type RegionId: Integer
        # @param RegionCode: 地域代码，如 gz，sh，bj
        # @type RegionCode: String
        # @param RegionNameEn: 地域英文名
        # @type RegionNameEn: String

        attr_accessor :Region, :RegionName, :RegionId, :RegionCode, :RegionNameEn
        
        def initialize(region=nil, regionname=nil, regionid=nil, regioncode=nil, regionnameen=nil)
          @Region = region
          @RegionName = regionname
          @RegionId = regionid
          @RegionCode = regioncode
          @RegionNameEn = regionnameen
        end

        def deserialize(params)
          @Region = params['Region']
          @RegionName = params['RegionName']
          @RegionId = params['RegionId']
          @RegionCode = params['RegionCode']
          @RegionNameEn = params['RegionNameEn']
        end
      end

      # 地域信息
      class RegionSet < TencentCloud::Common::AbstractModel
        # @param RegionName: 地域名称
        # @type RegionName: String
        # @param ZoneSet: 可用区信息
        # @type ZoneSet: Array

        attr_accessor :RegionName, :ZoneSet
        
        def initialize(regionname=nil, zoneset=nil)
          @RegionName = regionname
          @ZoneSet = zoneset
        end

        def deserialize(params)
          @RegionName = params['RegionName']
          unless params['ZoneSet'].nil?
            @ZoneSet = []
            params['ZoneSet'].each do |i|
              zoneinfo_tmp = ZoneInfo.new
              zoneinfo_tmp.deserialize(i)
              @ZoneSet << zoneinfo_tmp
            end
          end
        end
      end

      # 反弹Shell数据
      class ReverseShell < TencentCloud::Common::AbstractModel
        # @param Id: ID 主键
        # @type Id: Integer
        # @param Uuid: 云镜UUID
        # @type Uuid: String
        # @param Quuid: 主机ID
        # @type Quuid: String
        # @param Hostip: 主机内网IP
        # @type Hostip: String
        # @param DstIp: 目标IP
        # @type DstIp: String
        # @param DstPort: 目标端口
        # @type DstPort: Integer
        # @param ProcessName: 进程名
        # @type ProcessName: String
        # @param FullPath: 进程路径
        # @type FullPath: String
        # @param CmdLine: 命令详情
        # @type CmdLine: String
        # @param UserName: 执行用户
        # @type UserName: String
        # @param UserGroup: 执行用户组
        # @type UserGroup: String
        # @param ParentProcName: 父进程名
        # @type ParentProcName: String
        # @param ParentProcUser: 父进程用户
        # @type ParentProcUser: String
        # @param ParentProcGroup: 父进程用户组
        # @type ParentProcGroup: String
        # @param ParentProcPath: 父进程路径
        # @type ParentProcPath: String
        # @param Status: 处理状态：0-待处理 2-白名单 3-已处理 4-已忽略
        # @type Status: Integer
        # @param CreateTime: 产生时间
        # @type CreateTime: String
        # @param MachineName: 主机名
        # @type MachineName: String
        # @param ProcTree: 进程树
        # @type ProcTree: String
        # @param DetectBy: 检测方法
        # @type DetectBy: Integer

        attr_accessor :Id, :Uuid, :Quuid, :Hostip, :DstIp, :DstPort, :ProcessName, :FullPath, :CmdLine, :UserName, :UserGroup, :ParentProcName, :ParentProcUser, :ParentProcGroup, :ParentProcPath, :Status, :CreateTime, :MachineName, :ProcTree, :DetectBy
        
        def initialize(id=nil, uuid=nil, quuid=nil, hostip=nil, dstip=nil, dstport=nil, processname=nil, fullpath=nil, cmdline=nil, username=nil, usergroup=nil, parentprocname=nil, parentprocuser=nil, parentprocgroup=nil, parentprocpath=nil, status=nil, createtime=nil, machinename=nil, proctree=nil, detectby=nil)
          @Id = id
          @Uuid = uuid
          @Quuid = quuid
          @Hostip = hostip
          @DstIp = dstip
          @DstPort = dstport
          @ProcessName = processname
          @FullPath = fullpath
          @CmdLine = cmdline
          @UserName = username
          @UserGroup = usergroup
          @ParentProcName = parentprocname
          @ParentProcUser = parentprocuser
          @ParentProcGroup = parentprocgroup
          @ParentProcPath = parentprocpath
          @Status = status
          @CreateTime = createtime
          @MachineName = machinename
          @ProcTree = proctree
          @DetectBy = detectby
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuid = params['Uuid']
          @Quuid = params['Quuid']
          @Hostip = params['Hostip']
          @DstIp = params['DstIp']
          @DstPort = params['DstPort']
          @ProcessName = params['ProcessName']
          @FullPath = params['FullPath']
          @CmdLine = params['CmdLine']
          @UserName = params['UserName']
          @UserGroup = params['UserGroup']
          @ParentProcName = params['ParentProcName']
          @ParentProcUser = params['ParentProcUser']
          @ParentProcGroup = params['ParentProcGroup']
          @ParentProcPath = params['ParentProcPath']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @MachineName = params['MachineName']
          @ProcTree = params['ProcTree']
          @DetectBy = params['DetectBy']
        end
      end

      # 反弹Shell规则
      class ReverseShellRule < TencentCloud::Common::AbstractModel
        # @param Id: 规则ID
        # @type Id: Integer
        # @param Uuid: 客户端ID
        # @type Uuid: String
        # @param ProcessName: 进程名称
        # @type ProcessName: String
        # @param DestIp: 目标IP
        # @type DestIp: String
        # @param DestPort: 目标端口
        # @type DestPort: String
        # @param Operator: 操作人
        # @type Operator: String
        # @param IsGlobal: 是否全局规则
        # @type IsGlobal: Integer
        # @param Status: 状态 (0: 有效 1: 无效)
        # @type Status: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String
        # @param Hostip: 主机IP
        # @type Hostip: String

        attr_accessor :Id, :Uuid, :ProcessName, :DestIp, :DestPort, :Operator, :IsGlobal, :Status, :CreateTime, :ModifyTime, :Hostip
        
        def initialize(id=nil, uuid=nil, processname=nil, destip=nil, destport=nil, operator=nil, isglobal=nil, status=nil, createtime=nil, modifytime=nil, hostip=nil)
          @Id = id
          @Uuid = uuid
          @ProcessName = processname
          @DestIp = destip
          @DestPort = destport
          @Operator = operator
          @IsGlobal = isglobal
          @Status = status
          @CreateTime = createtime
          @ModifyTime = modifytime
          @Hostip = hostip
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuid = params['Uuid']
          @ProcessName = params['ProcessName']
          @DestIp = params['DestIp']
          @DestPort = params['DestPort']
          @Operator = params['Operator']
          @IsGlobal = params['IsGlobal']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @Hostip = params['Hostip']
        end
      end

      # 恶意请求列表
      class RiskDnsList < TencentCloud::Common::AbstractModel
        # @param Url: 对外访问域名
        # @type Url: String
        # @param AccessCount: 访问次数
        # @type AccessCount: Integer
        # @param ProcessName: 进程名
        # @type ProcessName: String
        # @param ProcessMd5: 进程MD5
        # @type ProcessMd5: String
        # @param GlobalRuleId: 是否为全局规则，0否，1是
        # @type GlobalRuleId: Integer
        # @param UserRuleId: 用户规则id
        # @type UserRuleId: Integer
        # @param Status: 状态；0-待处理，2-已加白，3-非信任状态，4-已处理，5-已忽略
        # @type Status: Integer
        # @param CreateTime: 首次访问时间
        # @type CreateTime: String
        # @param MergeTime: 最近访问时间
        # @type MergeTime: String
        # @param Quuid: 唯一 Quuid
        # @type Quuid: String
        # @param HostIp: 主机ip
        # @type HostIp: String
        # @param Alias: 别名
        # @type Alias: String
        # @param Description: 描述
        # @type Description: String
        # @param Id: 唯一ID
        # @type Id: Integer
        # @param Reference: 参考
        # @type Reference: String
        # @param CmdLine: 命令行
        # @type CmdLine: String
        # @param Pid: 进程号
        # @type Pid: Integer
        # @param Uuid: 唯一UUID
        # @type Uuid: String
        # @param SuggestScheme: 建议方案
        # @type SuggestScheme: String
        # @param Tags: 标签特性
        # @type Tags: Array
        # @param MachineWanIp: 外网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MachineWanIp: String
        # @param MachineStatus: 主机在线状态 OFFLINE  ONLINE
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MachineStatus: String

        attr_accessor :Url, :AccessCount, :ProcessName, :ProcessMd5, :GlobalRuleId, :UserRuleId, :Status, :CreateTime, :MergeTime, :Quuid, :HostIp, :Alias, :Description, :Id, :Reference, :CmdLine, :Pid, :Uuid, :SuggestScheme, :Tags, :MachineWanIp, :MachineStatus
        
        def initialize(url=nil, accesscount=nil, processname=nil, processmd5=nil, globalruleid=nil, userruleid=nil, status=nil, createtime=nil, mergetime=nil, quuid=nil, hostip=nil, _alias=nil, description=nil, id=nil, reference=nil, cmdline=nil, pid=nil, uuid=nil, suggestscheme=nil, tags=nil, machinewanip=nil, machinestatus=nil)
          @Url = url
          @AccessCount = accesscount
          @ProcessName = processname
          @ProcessMd5 = processmd5
          @GlobalRuleId = globalruleid
          @UserRuleId = userruleid
          @Status = status
          @CreateTime = createtime
          @MergeTime = mergetime
          @Quuid = quuid
          @HostIp = hostip
          @Alias = _alias
          @Description = description
          @Id = id
          @Reference = reference
          @CmdLine = cmdline
          @Pid = pid
          @Uuid = uuid
          @SuggestScheme = suggestscheme
          @Tags = tags
          @MachineWanIp = machinewanip
          @MachineStatus = machinestatus
        end

        def deserialize(params)
          @Url = params['Url']
          @AccessCount = params['AccessCount']
          @ProcessName = params['ProcessName']
          @ProcessMd5 = params['ProcessMd5']
          @GlobalRuleId = params['GlobalRuleId']
          @UserRuleId = params['UserRuleId']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @MergeTime = params['MergeTime']
          @Quuid = params['Quuid']
          @HostIp = params['HostIp']
          @Alias = params['Alias']
          @Description = params['Description']
          @Id = params['Id']
          @Reference = params['Reference']
          @CmdLine = params['CmdLine']
          @Pid = params['Pid']
          @Uuid = params['Uuid']
          @SuggestScheme = params['SuggestScheme']
          @Tags = params['Tags']
          @MachineWanIp = params['MachineWanIp']
          @MachineStatus = params['MachineStatus']
        end
      end

      # ScanAsset请求参数结构体
      class ScanAssetRequest < TencentCloud::Common::AbstractModel
        # @param AssetTypeIds: 资产指纹类型id列表
        # @type AssetTypeIds: Array
        # @param Quuids: Quuid列表
        # @type Quuids: Array

        attr_accessor :AssetTypeIds, :Quuids
        
        def initialize(assettypeids=nil, quuids=nil)
          @AssetTypeIds = assettypeids
          @Quuids = quuids
        end

        def deserialize(params)
          @AssetTypeIds = params['AssetTypeIds']
          @Quuids = params['Quuids']
        end
      end

      # ScanAsset返回参数结构体
      class ScanAssetResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 扫描任务详情列表信息
      class ScanTaskDetails < TencentCloud::Common::AbstractModel
        # @param HostIp: 服务器IP
        # @type HostIp: String
        # @param HostName: 服务器名称
        # @type HostName: String
        # @param OsName: 操作系统
        # @type OsName: String
        # @param RiskNum: 风险数量
        # @type RiskNum: Integer
        # @param ScanBeginTime: 扫描开始时间
        # @type ScanBeginTime: String
        # @param ScanEndTime: 扫描结束时间
        # @type ScanEndTime: String
        # @param Uuid: 唯一Uuid
        # @type Uuid: String
        # @param Quuid: 唯一Quuid
        # @type Quuid: String
        # @param Status: 状态码
        # @type Status: String
        # @param Description: 描述
        # @type Description: String
        # @param Id: id唯一
        # @type Id: Integer
        # @param FailType: 失败详情
        # @type FailType: Integer
        # @param MachineWanIp: 外网ip
        # @type MachineWanIp: String

        attr_accessor :HostIp, :HostName, :OsName, :RiskNum, :ScanBeginTime, :ScanEndTime, :Uuid, :Quuid, :Status, :Description, :Id, :FailType, :MachineWanIp
        
        def initialize(hostip=nil, hostname=nil, osname=nil, risknum=nil, scanbegintime=nil, scanendtime=nil, uuid=nil, quuid=nil, status=nil, description=nil, id=nil, failtype=nil, machinewanip=nil)
          @HostIp = hostip
          @HostName = hostname
          @OsName = osname
          @RiskNum = risknum
          @ScanBeginTime = scanbegintime
          @ScanEndTime = scanendtime
          @Uuid = uuid
          @Quuid = quuid
          @Status = status
          @Description = description
          @Id = id
          @FailType = failtype
          @MachineWanIp = machinewanip
        end

        def deserialize(params)
          @HostIp = params['HostIp']
          @HostName = params['HostName']
          @OsName = params['OsName']
          @RiskNum = params['RiskNum']
          @ScanBeginTime = params['ScanBeginTime']
          @ScanEndTime = params['ScanEndTime']
          @Uuid = params['Uuid']
          @Quuid = params['Quuid']
          @Status = params['Status']
          @Description = params['Description']
          @Id = params['Id']
          @FailType = params['FailType']
          @MachineWanIp = params['MachineWanIp']
        end
      end

      # ScanVulAgain请求参数结构体
      class ScanVulAgainRequest < TencentCloud::Common::AbstractModel
        # @param EventIds: 漏洞事件id串，多个用英文逗号分隔
        # @type EventIds: String
        # @param Uuids: 重新检查的机器uuid,多个逗号分隔
        # @type Uuids: String

        attr_accessor :EventIds, :Uuids
        
        def initialize(eventids=nil, uuids=nil)
          @EventIds = eventids
          @Uuids = uuids
        end

        def deserialize(params)
          @EventIds = params['EventIds']
          @Uuids = params['Uuids']
        end
      end

      # ScanVulAgain返回参数结构体
      class ScanVulAgainResponse < TencentCloud::Common::AbstractModel
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

      # ScanVul请求参数结构体
      class ScanVulRequest < TencentCloud::Common::AbstractModel
        # @param VulLevels: 危害等级：1-低危；2-中危；3-高危；4-严重 (多选英文;分隔)
        # @type VulLevels: String
        # @param HostType: 服务器分类：1:专业版服务器；2:自选服务器
        # @type HostType: Integer
        # @param VulCategories: 漏洞类型：1: web-cms漏洞 2:应用漏洞  4: Linux软件漏洞 5: Windows系统漏洞 (多选英文;分隔)
        # @type VulCategories: String
        # @param QuuidList: 自选服务器时生效，主机quuid的string数组
        # @type QuuidList: Array
        # @param VulEmergency: 是否是应急漏洞 0 否 1 是
        # @type VulEmergency: Integer
        # @param TimeoutPeriod: 超时时长 单位秒 默认 3600 秒
        # @type TimeoutPeriod: Integer
        # @param VulIds: 需要扫描的漏洞id
        # @type VulIds: Array

        attr_accessor :VulLevels, :HostType, :VulCategories, :QuuidList, :VulEmergency, :TimeoutPeriod, :VulIds
        
        def initialize(vullevels=nil, hosttype=nil, vulcategories=nil, quuidlist=nil, vulemergency=nil, timeoutperiod=nil, vulids=nil)
          @VulLevels = vullevels
          @HostType = hosttype
          @VulCategories = vulcategories
          @QuuidList = quuidlist
          @VulEmergency = vulemergency
          @TimeoutPeriod = timeoutperiod
          @VulIds = vulids
        end

        def deserialize(params)
          @VulLevels = params['VulLevels']
          @HostType = params['HostType']
          @VulCategories = params['VulCategories']
          @QuuidList = params['QuuidList']
          @VulEmergency = params['VulEmergency']
          @TimeoutPeriod = params['TimeoutPeriod']
          @VulIds = params['VulIds']
        end
      end

      # ScanVul返回参数结构体
      class ScanVulResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ScanVulSetting请求参数结构体
      class ScanVulSettingRequest < TencentCloud::Common::AbstractModel
        # @param TimerInterval: 定期检测间隔时间（天）
        # @type TimerInterval: Integer
        # @param VulCategories: 漏洞类型：1: web-cms漏洞 2:应用漏洞  4: Linux软件漏洞 5: Windows系统漏洞, 以数组方式传参[1,2]
        # @type VulCategories: Array
        # @param VulLevels: 危害等级：1-低危；2-中危；3-高危；4-严重,以数组方式传参[1,2,3]
        # @type VulLevels: Array
        # @param TimerTime: 定期检测时间，如：02:10:50
        # @type TimerTime: String
        # @param VulEmergency: 是否是应急漏洞 0 否 1 是
        # @type VulEmergency: Integer
        # @param StartTime: 扫描开始时间，如：00:00
        # @type StartTime: String
        # @param EndTime: 扫描结束时间，如：08:00
        # @type EndTime: String
        # @param EnableScan: 是否开启扫描 1开启 0不开启
        # @type EnableScan: Integer

        attr_accessor :TimerInterval, :VulCategories, :VulLevels, :TimerTime, :VulEmergency, :StartTime, :EndTime, :EnableScan
        
        def initialize(timerinterval=nil, vulcategories=nil, vullevels=nil, timertime=nil, vulemergency=nil, starttime=nil, endtime=nil, enablescan=nil)
          @TimerInterval = timerinterval
          @VulCategories = vulcategories
          @VulLevels = vullevels
          @TimerTime = timertime
          @VulEmergency = vulemergency
          @StartTime = starttime
          @EndTime = endtime
          @EnableScan = enablescan
        end

        def deserialize(params)
          @TimerInterval = params['TimerInterval']
          @VulCategories = params['VulCategories']
          @VulLevels = params['VulLevels']
          @TimerTime = params['TimerTime']
          @VulEmergency = params['VulEmergency']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @EnableScan = params['EnableScan']
        end
      end

      # ScanVulSetting返回参数结构体
      class ScanVulSettingResponse < TencentCloud::Common::AbstractModel
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

      # 快速搜索模板
      class SearchTemplate < TencentCloud::Common::AbstractModel
        # @param Name: 检索名称
        # @type Name: String
        # @param LogType: 检索索引类型
        # @type LogType: String
        # @param Condition: 检索语句
        # @type Condition: String
        # @param TimeRange: 时间范围
        # @type TimeRange: String
        # @param Query: 转换的检索语句内容
        # @type Query: String
        # @param Flag: 检索方式。输入框检索：standard,过滤，检索：simple
        # @type Flag: String
        # @param DisplayData: 展示数据
        # @type DisplayData: String
        # @param Id: 规则ID
        # @type Id: Integer

        attr_accessor :Name, :LogType, :Condition, :TimeRange, :Query, :Flag, :DisplayData, :Id
        
        def initialize(name=nil, logtype=nil, condition=nil, timerange=nil, query=nil, flag=nil, displaydata=nil, id=nil)
          @Name = name
          @LogType = logtype
          @Condition = condition
          @TimeRange = timerange
          @Query = query
          @Flag = flag
          @DisplayData = displaydata
          @Id = id
        end

        def deserialize(params)
          @Name = params['Name']
          @LogType = params['LogType']
          @Condition = params['Condition']
          @TimeRange = params['TimeRange']
          @Query = params['Query']
          @Flag = params['Flag']
          @DisplayData = params['DisplayData']
          @Id = params['Id']
        end
      end

      # 安全管家列表信息
      class SecurityButlerInfo < TencentCloud::Common::AbstractModel
        # @param Id: 数据id
        # @type Id: Integer
        # @param OrderId: 订单id
        # @type OrderId: Integer
        # @param Quuid: cvm id
        # @type Quuid: String
        # @param Status: 服务状态 0-服务中,1-已到期 2已销毁
        # @type Status: Integer
        # @param StartTime: 服务开始时间
        # @type StartTime: String
        # @param EndTime: 服务结束时间
        # @type EndTime: String
        # @param HostName: 主机名称
        # @type HostName: String
        # @param HostIp: 主机Ip
        # @type HostIp: String
        # @param Uuid: 主机 uuid
        # @type Uuid: String
        # @param RiskCount: 主机风险数
        # @type RiskCount: Integer

        attr_accessor :Id, :OrderId, :Quuid, :Status, :StartTime, :EndTime, :HostName, :HostIp, :Uuid, :RiskCount
        
        def initialize(id=nil, orderid=nil, quuid=nil, status=nil, starttime=nil, endtime=nil, hostname=nil, hostip=nil, uuid=nil, riskcount=nil)
          @Id = id
          @OrderId = orderid
          @Quuid = quuid
          @Status = status
          @StartTime = starttime
          @EndTime = endtime
          @HostName = hostname
          @HostIp = hostip
          @Uuid = uuid
          @RiskCount = riskcount
        end

        def deserialize(params)
          @Id = params['Id']
          @OrderId = params['OrderId']
          @Quuid = params['Quuid']
          @Status = params['Status']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @HostName = params['HostName']
          @HostIp = params['HostIp']
          @Uuid = params['Uuid']
          @RiskCount = params['RiskCount']
        end
      end

      # 安全事件消息数据。
      class SecurityDynamic < TencentCloud::Common::AbstractModel
        # @param Uuid: 云镜客户端UUID。
        # @type Uuid: String
        # @param EventTime: 安全事件发生时间。
        # @type EventTime: String
        # @param EventType: 安全事件类型。
        # <li>MALWARE：木马事件</li>
        # <li>NON_LOCAL_LOGIN：异地登录</li>
        # <li>BRUTEATTACK_SUCCESS：密码破解成功</li>
        # <li>VUL：漏洞</li>
        # <li>BASELINE：安全基线</li>
        # @type EventType: String
        # @param Message: 安全事件消息。
        # @type Message: String
        # @param SecurityLevel: 安全事件等级。
        # <li>RISK: 严重</li>
        # <li>HIGH: 高危</li>
        # <li>NORMAL: 中危</li>
        # <li>LOW: 低危</li>
        # @type SecurityLevel: String

        attr_accessor :Uuid, :EventTime, :EventType, :Message, :SecurityLevel
        
        def initialize(uuid=nil, eventtime=nil, eventtype=nil, message=nil, securitylevel=nil)
          @Uuid = uuid
          @EventTime = eventtime
          @EventType = eventtype
          @Message = message
          @SecurityLevel = securitylevel
        end

        def deserialize(params)
          @Uuid = params['Uuid']
          @EventTime = params['EventTime']
          @EventType = params['EventType']
          @Message = params['Message']
          @SecurityLevel = params['SecurityLevel']
        end
      end

      # 安全事件统计列表
      class SecurityEventInfo < TencentCloud::Common::AbstractModel
        # @param EventCnt: 安全事件数
        # @type EventCnt: Integer
        # @param UuidCnt: 受影响机器数
        # @type UuidCnt: Integer

        attr_accessor :EventCnt, :UuidCnt
        
        def initialize(eventcnt=nil, uuidcnt=nil)
          @EventCnt = eventcnt
          @UuidCnt = uuidcnt
        end

        def deserialize(params)
          @EventCnt = params['EventCnt']
          @UuidCnt = params['UuidCnt']
        end
      end

      # 安全趋势统计数据。
      class SecurityTrend < TencentCloud::Common::AbstractModel
        # @param Date: 事件时间。
        # @type Date: String
        # @param EventNum: 事件数量。
        # @type EventNum: Integer

        attr_accessor :Date, :EventNum
        
        def initialize(date=nil, eventnum=nil)
          @Date = date
          @EventNum = eventnum
        end

        def deserialize(params)
          @Date = params['Date']
          @EventNum = params['EventNum']
        end
      end

      # SeparateMalwares请求参数结构体
      class SeparateMalwaresRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 木马事件ID数组。(最大100条)
        # @type Ids: Array
        # @param KillProcess: 是否杀掉进程
        # @type KillProcess: Boolean

        attr_accessor :Ids, :KillProcess
        
        def initialize(ids=nil, killprocess=nil)
          @Ids = ids
          @KillProcess = killprocess
        end

        def deserialize(params)
          @Ids = params['Ids']
          @KillProcess = params['KillProcess']
        end
      end

      # SeparateMalwares返回参数结构体
      class SeparateMalwaresResponse < TencentCloud::Common::AbstractModel
        # @param SuccessIds: 隔离成功的id数组，若无则返回空数组
        # @type SuccessIds: Array
        # @param FailedIds: 隔离失败的id数组，若无则返回空数组
        # @type FailedIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessIds, :FailedIds, :RequestId
        
        def initialize(successids=nil, failedids=nil, requestid=nil)
          @SuccessIds = successids
          @FailedIds = failedids
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessIds = params['SuccessIds']
          @FailedIds = params['FailedIds']
          @RequestId = params['RequestId']
        end
      end

      # SetBashEventsStatus请求参数结构体
      class SetBashEventsStatusRequest < TencentCloud::Common::AbstractModel
        # @param Ids: ID数组，最大100条。
        # @type Ids: Array
        # @param Status: 新状态(0-待处理 1-高危 2-正常)
        # @type Status: Integer

        attr_accessor :Ids, :Status
        
        def initialize(ids=nil, status=nil)
          @Ids = ids
          @Status = status
        end

        def deserialize(params)
          @Ids = params['Ids']
          @Status = params['Status']
        end
      end

      # SetBashEventsStatus返回参数结构体
      class SetBashEventsStatusResponse < TencentCloud::Common::AbstractModel
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

      # 标准模式阻断配置
      class StandardModeConfig < TencentCloud::Common::AbstractModel
        # @param Ttl: 阻断时长，单位：秒
        # @type Ttl: Integer

        attr_accessor :Ttl
        
        def initialize(ttl=nil)
          @Ttl = ttl
        end

        def deserialize(params)
          @Ttl = params['Ttl']
        end
      end

      # StopNoticeBanTips请求参数结构体
      class StopNoticeBanTipsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # StopNoticeBanTips返回参数结构体
      class StopNoticeBanTipsResponse < TencentCloud::Common::AbstractModel
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

      # 基线安全用户策略信息
      class Strategy < TencentCloud::Common::AbstractModel
        # @param StrategyName: 策略名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrategyName: String
        # @param StrategyId: 策略id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrategyId: Integer
        # @param RuleCount: 基线检测项总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleCount: Integer
        # @param HostCount: 主机数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostCount: Integer
        # @param ScanCycle: 扫描周期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanCycle: Integer
        # @param ScanAt: 扫描时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScanAt: String
        # @param Enabled: 是否可用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enabled: Integer
        # @param PassRate: 通过率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PassRate: Integer
        # @param CategoryIds: 基线id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CategoryIds: String
        # @param IsDefault: 是否默认策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDefault: Integer

        attr_accessor :StrategyName, :StrategyId, :RuleCount, :HostCount, :ScanCycle, :ScanAt, :Enabled, :PassRate, :CategoryIds, :IsDefault
        
        def initialize(strategyname=nil, strategyid=nil, rulecount=nil, hostcount=nil, scancycle=nil, scanat=nil, enabled=nil, passrate=nil, categoryids=nil, isdefault=nil)
          @StrategyName = strategyname
          @StrategyId = strategyid
          @RuleCount = rulecount
          @HostCount = hostcount
          @ScanCycle = scancycle
          @ScanAt = scanat
          @Enabled = enabled
          @PassRate = passrate
          @CategoryIds = categoryids
          @IsDefault = isdefault
        end

        def deserialize(params)
          @StrategyName = params['StrategyName']
          @StrategyId = params['StrategyId']
          @RuleCount = params['RuleCount']
          @HostCount = params['HostCount']
          @ScanCycle = params['ScanCycle']
          @ScanAt = params['ScanAt']
          @Enabled = params['Enabled']
          @PassRate = params['PassRate']
          @CategoryIds = params['CategoryIds']
          @IsDefault = params['IsDefault']
        end
      end

      # SwitchBashRules请求参数结构体
      class SwitchBashRulesRequest < TencentCloud::Common::AbstractModel
        # @param Id: 规则ID
        # @type Id: Integer
        # @param Disabled: 是否禁用
        # @type Disabled: Integer

        attr_accessor :Id, :Disabled
        
        def initialize(id=nil, disabled=nil)
          @Id = id
          @Disabled = disabled
        end

        def deserialize(params)
          @Id = params['Id']
          @Disabled = params['Disabled']
        end
      end

      # SwitchBashRules返回参数结构体
      class SwitchBashRulesResponse < TencentCloud::Common::AbstractModel
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

      # SyncAssetScan请求参数结构体
      class SyncAssetScanRequest < TencentCloud::Common::AbstractModel
        # @param Sync: 是否同步：true-是 false-否；默认false
        # @type Sync: Boolean

        attr_accessor :Sync
        
        def initialize(sync=nil)
          @Sync = sync
        end

        def deserialize(params)
          @Sync = params['Sync']
        end
      end

      # SyncAssetScan返回参数结构体
      class SyncAssetScanResponse < TencentCloud::Common::AbstractModel
        # @param State: 枚举值有(大写)：NOTASK（没有同步任务），SYNCING（同步中），FINISHED（同步完成）
        # @type State: String
        # @param LatestStartTime: 最新开始同步时间
        # @type LatestStartTime: String
        # @param LatestEndTime: 最新结束同步时间
        # @type LatestEndTime: String
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :State, :LatestStartTime, :LatestEndTime, :TaskId, :RequestId
        
        def initialize(state=nil, lateststarttime=nil, latestendtime=nil, taskid=nil, requestid=nil)
          @State = state
          @LatestStartTime = lateststarttime
          @LatestEndTime = latestendtime
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @State = params['State']
          @LatestStartTime = params['LatestStartTime']
          @LatestEndTime = params['LatestEndTime']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 标签信息
      class Tag < TencentCloud::Common::AbstractModel
        # @param Id: 标签ID
        # @type Id: Integer
        # @param Name: 标签名
        # @type Name: String
        # @param Count: 服务器数
        # @type Count: Integer

        attr_accessor :Id, :Name, :Count
        
        def initialize(id=nil, name=nil, count=nil)
          @Id = id
          @Name = name
          @Count = count
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Count = params['Count']
        end
      end

      # 标签相关服务器信息
      class TagMachine < TencentCloud::Common::AbstractModel
        # @param Id: ID
        # @type Id: String
        # @param Quuid: 主机ID
        # @type Quuid: String
        # @param MachineName: 主机名称
        # @type MachineName: String
        # @param MachineIp: 主机内网IP
        # @type MachineIp: String
        # @param MachineWanIp: 主机外网IP
        # @type MachineWanIp: String
        # @param MachineRegion: 主机区域
        # @type MachineRegion: String
        # @param MachineType: 主机区域类型
        # @type MachineType: String

        attr_accessor :Id, :Quuid, :MachineName, :MachineIp, :MachineWanIp, :MachineRegion, :MachineType
        
        def initialize(id=nil, quuid=nil, machinename=nil, machineip=nil, machinewanip=nil, machineregion=nil, machinetype=nil)
          @Id = id
          @Quuid = quuid
          @MachineName = machinename
          @MachineIp = machineip
          @MachineWanIp = machinewanip
          @MachineRegion = machineregion
          @MachineType = machinetype
        end

        def deserialize(params)
          @Id = params['Id']
          @Quuid = params['Quuid']
          @MachineName = params['MachineName']
          @MachineIp = params['MachineIp']
          @MachineWanIp = params['MachineWanIp']
          @MachineRegion = params['MachineRegion']
          @MachineType = params['MachineType']
        end
      end

      # 平台标签
      class Tags < TencentCloud::Common::AbstractModel
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

      # 任务扫描状态列表
      class TaskStatus < TencentCloud::Common::AbstractModel
        # @param Scanning: 扫描中（包含初始化）
        # @type Scanning: String
        # @param Ok: 扫描终止（包含终止中）
        # @type Ok: String
        # @param Fail: 扫描失败
        # @type Fail: String
        # @param Stop: 扫描失败（提示具体原因：扫描超时、客户端版本低、客户端离线）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Stop: String

        attr_accessor :Scanning, :Ok, :Fail, :Stop
        
        def initialize(scanning=nil, ok=nil, fail=nil, stop=nil)
          @Scanning = scanning
          @Ok = ok
          @Fail = fail
          @Stop = stop
        end

        def deserialize(params)
          @Scanning = params['Scanning']
          @Ok = params['Ok']
          @Fail = params['Fail']
          @Stop = params['Stop']
        end
      end

      # TrustMalwares请求参数结构体
      class TrustMalwaresRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 木马ID数组（单次不超过的最大条数：100）
        # @type Ids: Array

        attr_accessor :Ids
        
        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # TrustMalwares返回参数结构体
      class TrustMalwaresResponse < TencentCloud::Common::AbstractModel
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

      # UntrustMalwares请求参数结构体
      class UntrustMalwaresRequest < TencentCloud::Common::AbstractModel
        # @param Ids: 木马ID数组 (最大100条)
        # @type Ids: Array

        attr_accessor :Ids
        
        def initialize(ids=nil)
          @Ids = ids
        end

        def deserialize(params)
          @Ids = params['Ids']
        end
      end

      # UntrustMalwares返回参数结构体
      class UntrustMalwaresResponse < TencentCloud::Common::AbstractModel
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

      # UpdateBaselineStrategy请求参数结构体
      class UpdateBaselineStrategyRequest < TencentCloud::Common::AbstractModel
        # @param StrategyId: 策略id
        # @type StrategyId: Integer
        # @param StrategyName: 策略名称
        # @type StrategyName: String
        # @param ScanCycle: 检测周期
        # @type ScanCycle: Integer
        # @param ScanAt: 定期检测时间，该时间下发扫描
        # @type ScanAt: String
        # @param CategoryIds: 该策略下选择的基线id数组
        # @type CategoryIds: Array
        # @param IsGlobal: 扫描范围是否全部服务器, 1:是  0:否, 为1则为全部专业版主机
        # @type IsGlobal: Integer
        # @param MachineType: 云主机类型：
        # cvm：腾讯云服务器
        # bm：裸金属
        # ecm：边缘计算主机
        # lh:轻量应用服务器
        # other:混合云机器
        # @type MachineType: String
        # @param RegionCode: 主机地域 ap-guangzhou
        # @type RegionCode: String
        # @param Quuids: 主机id数组
        # @type Quuids: Array

        attr_accessor :StrategyId, :StrategyName, :ScanCycle, :ScanAt, :CategoryIds, :IsGlobal, :MachineType, :RegionCode, :Quuids
        
        def initialize(strategyid=nil, strategyname=nil, scancycle=nil, scanat=nil, categoryids=nil, isglobal=nil, machinetype=nil, regioncode=nil, quuids=nil)
          @StrategyId = strategyid
          @StrategyName = strategyname
          @ScanCycle = scancycle
          @ScanAt = scanat
          @CategoryIds = categoryids
          @IsGlobal = isglobal
          @MachineType = machinetype
          @RegionCode = regioncode
          @Quuids = quuids
        end

        def deserialize(params)
          @StrategyId = params['StrategyId']
          @StrategyName = params['StrategyName']
          @ScanCycle = params['ScanCycle']
          @ScanAt = params['ScanAt']
          @CategoryIds = params['CategoryIds']
          @IsGlobal = params['IsGlobal']
          @MachineType = params['MachineType']
          @RegionCode = params['RegionCode']
          @Quuids = params['Quuids']
        end
      end

      # UpdateBaselineStrategy返回参数结构体
      class UpdateBaselineStrategyResponse < TencentCloud::Common::AbstractModel
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

      # UpdateMachineTags请求参数结构体
      class UpdateMachineTagsRequest < TencentCloud::Common::AbstractModel
        # @param Quuid: 机器 Quuid
        # @type Quuid: String
        # @param MachineRegion: 服务器地区 如: ap-guangzhou
        # @type MachineRegion: String
        # @param MachineArea: 服务器类型(CVM|BM|ECM|LH|Other)
        # @type MachineArea: String
        # @param TagIds: 标签ID，该操作会覆盖原有的标签列表
        # @type TagIds: Array

        attr_accessor :Quuid, :MachineRegion, :MachineArea, :TagIds
        
        def initialize(quuid=nil, machineregion=nil, machinearea=nil, tagids=nil)
          @Quuid = quuid
          @MachineRegion = machineregion
          @MachineArea = machinearea
          @TagIds = tagids
        end

        def deserialize(params)
          @Quuid = params['Quuid']
          @MachineRegion = params['MachineRegion']
          @MachineArea = params['MachineArea']
          @TagIds = params['TagIds']
        end
      end

      # UpdateMachineTags返回参数结构体
      class UpdateMachineTagsResponse < TencentCloud::Common::AbstractModel
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

      # 常用登录地
      class UsualPlace < TencentCloud::Common::AbstractModel
        # @param Id: ID。
        # @type Id: Integer
        # @param Uuid: 云镜客户端唯一标识UUID。
        # @type Uuid: String
        # @param CountryId: 国家 ID。
        # @type CountryId: Integer
        # @param ProvinceId: 省份 ID。
        # @type ProvinceId: Integer
        # @param CityId: 城市 ID。
        # @type CityId: Integer

        attr_accessor :Id, :Uuid, :CountryId, :ProvinceId, :CityId
        
        def initialize(id=nil, uuid=nil, countryid=nil, provinceid=nil, cityid=nil)
          @Id = id
          @Uuid = uuid
          @CountryId = countryid
          @ProvinceId = provinceid
          @CityId = cityid
        end

        def deserialize(params)
          @Id = params['Id']
          @Uuid = params['Uuid']
          @CountryId = params['CountryId']
          @ProvinceId = params['ProvinceId']
          @CityId = params['CityId']
        end
      end

      # 漏洞详细信息
      class VulDetailInfo < TencentCloud::Common::AbstractModel
        # @param VulId: 漏洞ID
        # @type VulId: Integer
        # @param Level: 漏洞级别
        # @type Level: Integer
        # @param Name: 漏洞名称
        # @type Name: String
        # @param CveId: cve编号
        # @type CveId: String
        # @param VulCategory: 1: web-cms漏洞 2:应用漏洞  4: Linux软件漏洞 5: Windows系统漏洞 0= 应急漏洞
        # @type VulCategory: Integer
        # @param Descript: 漏洞描述
        # @type Descript: String
        # @param Fix: 修复建议
        # @type Fix: String
        # @param Reference: 参考链接
        # @type Reference: String
        # @param CvssScore: CVSS评分
        # @type CvssScore: Float
        # @param Cvss: CVSS详情
        # @type Cvss: String
        # @param PublishTime: 发布时间
        # @type PublishTime: String

        attr_accessor :VulId, :Level, :Name, :CveId, :VulCategory, :Descript, :Fix, :Reference, :CvssScore, :Cvss, :PublishTime
        
        def initialize(vulid=nil, level=nil, name=nil, cveid=nil, vulcategory=nil, descript=nil, fix=nil, reference=nil, cvssscore=nil, cvss=nil, publishtime=nil)
          @VulId = vulid
          @Level = level
          @Name = name
          @CveId = cveid
          @VulCategory = vulcategory
          @Descript = descript
          @Fix = fix
          @Reference = reference
          @CvssScore = cvssscore
          @Cvss = cvss
          @PublishTime = publishtime
        end

        def deserialize(params)
          @VulId = params['VulId']
          @Level = params['Level']
          @Name = params['Name']
          @CveId = params['CveId']
          @VulCategory = params['VulCategory']
          @Descript = params['Descript']
          @Fix = params['Fix']
          @Reference = params['Reference']
          @CvssScore = params['CvssScore']
          @Cvss = params['Cvss']
          @PublishTime = params['PublishTime']
        end
      end

      # 漏洞影响主机列表
      class VulEffectHostList < TencentCloud::Common::AbstractModel
        # @param EventId: 事件id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventId: Integer
        # @param Status: 状态：0: 待处理 1:忽略  3:已修复  5:检测中 6:修复中 7: 回滚中 8:修复失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param LastTime: 最后检测时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastTime: String
        # @param Level: 危害等级：1-低危；2-中危；3-高危；4-严重
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: Integer
        # @param Quuid: 主机Quuid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Quuid: String
        # @param Uuid: 主机Uuid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uuid: String
        # @param HostIp: 主机HostIp
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostIp: String
        # @param AliasName: 主机别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AliasName: String
        # @param Tags: 主机标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Description: 说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param HostVersion: 版本信息：0-基础版 1-专业版 2-旗舰版 3-普惠版
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostVersion: Integer
        # @param IsSupportAutoFix: 是否能自动修复 0 :漏洞不可自动修复，  1：可自动修复， 2：客户端已离线， 3：主机不是旗舰版只能手动修复， 4：机型不允许 ，5：修复中 ，6：已修复， 7：检测中  9:修复失败，10:已忽略 11:漏洞只支持linux不支持Windows 12：漏洞只支持Windows不支持linux，13:修复失败但此时主机已离线，14:修复失败但此时主机不是旗舰版， 15:已手动修复
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsSupportAutoFix: Integer
        # @param FixStatusMsg: 失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FixStatusMsg: String
        # @param FirstDiscoveryTime: 首次发现时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstDiscoveryTime: String
        # @param InstanceState: 实例状态："PENDING"-创建中 "LAUNCH_FAILED"-创建失败 "RUNNING"-运行中 "STOPPED"-关机 "STARTING"-表示开机中 "STOPPING"-表示关机中 "REBOOTING"-重启中 "SHUTDOWN"-表示停止待销毁 "TERMINATING"-表示销毁中 "
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceState: String
        # @param PublicIpAddresses: 外网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIpAddresses: String

        attr_accessor :EventId, :Status, :LastTime, :Level, :Quuid, :Uuid, :HostIp, :AliasName, :Tags, :Description, :HostVersion, :IsSupportAutoFix, :FixStatusMsg, :FirstDiscoveryTime, :InstanceState, :PublicIpAddresses
        
        def initialize(eventid=nil, status=nil, lasttime=nil, level=nil, quuid=nil, uuid=nil, hostip=nil, aliasname=nil, tags=nil, description=nil, hostversion=nil, issupportautofix=nil, fixstatusmsg=nil, firstdiscoverytime=nil, instancestate=nil, publicipaddresses=nil)
          @EventId = eventid
          @Status = status
          @LastTime = lasttime
          @Level = level
          @Quuid = quuid
          @Uuid = uuid
          @HostIp = hostip
          @AliasName = aliasname
          @Tags = tags
          @Description = description
          @HostVersion = hostversion
          @IsSupportAutoFix = issupportautofix
          @FixStatusMsg = fixstatusmsg
          @FirstDiscoveryTime = firstdiscoverytime
          @InstanceState = instancestate
          @PublicIpAddresses = publicipaddresses
        end

        def deserialize(params)
          @EventId = params['EventId']
          @Status = params['Status']
          @LastTime = params['LastTime']
          @Level = params['Level']
          @Quuid = params['Quuid']
          @Uuid = params['Uuid']
          @HostIp = params['HostIp']
          @AliasName = params['AliasName']
          @Tags = params['Tags']
          @Description = params['Description']
          @HostVersion = params['HostVersion']
          @IsSupportAutoFix = params['IsSupportAutoFix']
          @FixStatusMsg = params['FixStatusMsg']
          @FirstDiscoveryTime = params['FirstDiscoveryTime']
          @InstanceState = params['InstanceState']
          @PublicIpAddresses = params['PublicIpAddresses']
        end
      end

      # 服务器风险top5实体
      class VulHostTopInfo < TencentCloud::Common::AbstractModel
        # @param HostName: 主机名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostName: String
        # @param VulLevelList: 漏洞等级与数量统计列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulLevelList: Array
        # @param Quuid: 主机Quuid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Quuid: String
        # @param Score: top评分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Integer

        attr_accessor :HostName, :VulLevelList, :Quuid, :Score
        
        def initialize(hostname=nil, vullevellist=nil, quuid=nil, score=nil)
          @HostName = hostname
          @VulLevelList = vullevellist
          @Quuid = quuid
          @Score = score
        end

        def deserialize(params)
          @HostName = params['HostName']
          unless params['VulLevelList'].nil?
            @VulLevelList = []
            params['VulLevelList'].each do |i|
              vullevelcountinfo_tmp = VulLevelCountInfo.new
              vullevelcountinfo_tmp.deserialize(i)
              @VulLevelList << vullevelcountinfo_tmp
            end
          end
          @Quuid = params['Quuid']
          @Score = params['Score']
        end
      end

      # 主机安全-漏洞管理-漏洞列表
      class VulInfoList < TencentCloud::Common::AbstractModel
        # @param Ids: 漏洞包含的事件id串，多个用“,”分割
        # @type Ids: String
        # @param Name: 漏洞名
        # @type Name: String
        # @param Status: 0: 待处理 1:忽略  3:已修复  5:检测中 6:修复中  8:修复失败
        # @type Status: Integer
        # @param VulId: 漏洞id
        # @type VulId: Integer
        # @param PublishTime: 漏洞披露事件
        # @type PublishTime: String
        # @param LastTime: 最后检测时间
        # @type LastTime: String
        # @param HostCount: 影响主机数
        # @type HostCount: Integer
        # @param Level: 漏洞等级 1:低 2:中 3:高 4:严重
        # @type Level: Integer
        # @param From: 废弃字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type From: Integer
        # @param Descript: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Descript: String
        # @param PublishTimeWisteria: 废弃字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublishTimeWisteria: String
        # @param NameWisteria: 废弃字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NameWisteria: String
        # @param DescriptWisteria: 废弃字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DescriptWisteria: String
        # @param StatusStr: 聚合后事件状态串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusStr: String
        # @param CveId: cve编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CveId: String
        # @param CvssScore: CVSS评分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CvssScore: Float
        # @param Labels: 漏洞标签 多个逗号分割
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: String
        # @param FixSwitch: 是否能自动修复且包含能自动修复的主机， 0=否  1=是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FixSwitch: Integer
        # @param TaskId: 最后扫描任务的id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: Integer
        # @param IsSupportDefense: 是否支持防御， 0:不支持 1:支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsSupportDefense: Integer
        # @param DefenseAttackCount: 已防御的攻击次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefenseAttackCount: Integer
        # @param FirstAppearTime: 首次出现时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstAppearTime: String
        # @param VulCategory: 漏洞类别 1: web-cms漏洞 2:应用漏洞  4: Linux软件漏洞 5: Windows系统漏洞
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulCategory: Integer

        attr_accessor :Ids, :Name, :Status, :VulId, :PublishTime, :LastTime, :HostCount, :Level, :From, :Descript, :PublishTimeWisteria, :NameWisteria, :DescriptWisteria, :StatusStr, :CveId, :CvssScore, :Labels, :FixSwitch, :TaskId, :IsSupportDefense, :DefenseAttackCount, :FirstAppearTime, :VulCategory
        
        def initialize(ids=nil, name=nil, status=nil, vulid=nil, publishtime=nil, lasttime=nil, hostcount=nil, level=nil, from=nil, descript=nil, publishtimewisteria=nil, namewisteria=nil, descriptwisteria=nil, statusstr=nil, cveid=nil, cvssscore=nil, labels=nil, fixswitch=nil, taskid=nil, issupportdefense=nil, defenseattackcount=nil, firstappeartime=nil, vulcategory=nil)
          @Ids = ids
          @Name = name
          @Status = status
          @VulId = vulid
          @PublishTime = publishtime
          @LastTime = lasttime
          @HostCount = hostcount
          @Level = level
          @From = from
          @Descript = descript
          @PublishTimeWisteria = publishtimewisteria
          @NameWisteria = namewisteria
          @DescriptWisteria = descriptwisteria
          @StatusStr = statusstr
          @CveId = cveid
          @CvssScore = cvssscore
          @Labels = labels
          @FixSwitch = fixswitch
          @TaskId = taskid
          @IsSupportDefense = issupportdefense
          @DefenseAttackCount = defenseattackcount
          @FirstAppearTime = firstappeartime
          @VulCategory = vulcategory
        end

        def deserialize(params)
          @Ids = params['Ids']
          @Name = params['Name']
          @Status = params['Status']
          @VulId = params['VulId']
          @PublishTime = params['PublishTime']
          @LastTime = params['LastTime']
          @HostCount = params['HostCount']
          @Level = params['Level']
          @From = params['From']
          @Descript = params['Descript']
          @PublishTimeWisteria = params['PublishTimeWisteria']
          @NameWisteria = params['NameWisteria']
          @DescriptWisteria = params['DescriptWisteria']
          @StatusStr = params['StatusStr']
          @CveId = params['CveId']
          @CvssScore = params['CvssScore']
          @Labels = params['Labels']
          @FixSwitch = params['FixSwitch']
          @TaskId = params['TaskId']
          @IsSupportDefense = params['IsSupportDefense']
          @DefenseAttackCount = params['DefenseAttackCount']
          @FirstAppearTime = params['FirstAppearTime']
          @VulCategory = params['VulCategory']
        end
      end

      # 漏洞等级数量实体
      class VulLevelCountInfo < TencentCloud::Common::AbstractModel
        # @param VulLevel: 漏洞等级
        # @type VulLevel: Integer
        # @param VulCount: 漏洞数量
        # @type VulCount: Integer

        attr_accessor :VulLevel, :VulCount
        
        def initialize(vullevel=nil, vulcount=nil)
          @VulLevel = vullevel
          @VulCount = vulcount
        end

        def deserialize(params)
          @VulLevel = params['VulLevel']
          @VulCount = params['VulCount']
        end
      end

      # 漏洞数量按等级分布统计结果实体
      class VulLevelInfo < TencentCloud::Common::AbstractModel
        # @param VulLevel: // 危害等级：1-低危；2-中危；3-高危；4-严重
        # @type VulLevel: Integer
        # @param Count: 数量
        # @type Count: Integer

        attr_accessor :VulLevel, :Count
        
        def initialize(vullevel=nil, count=nil)
          @VulLevel = vullevel
          @Count = count
        end

        def deserialize(params)
          @VulLevel = params['VulLevel']
          @Count = params['Count']
        end
      end

      # 漏洞top统计实体
      class VulTopInfo < TencentCloud::Common::AbstractModel
        # @param VulName: 漏洞 名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulName: String
        # @param VulLevel: 危害等级：1-低危；2-中危；3-高危；4-严重
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulLevel: Integer
        # @param VulCount: 漏洞数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulCount: Integer
        # @param VulId: 漏洞id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulId: Integer

        attr_accessor :VulName, :VulLevel, :VulCount, :VulId
        
        def initialize(vulname=nil, vullevel=nil, vulcount=nil, vulid=nil)
          @VulName = vulname
          @VulLevel = vullevel
          @VulCount = vulcount
          @VulId = vulid
        end

        def deserialize(params)
          @VulName = params['VulName']
          @VulLevel = params['VulLevel']
          @VulCount = params['VulCount']
          @VulId = params['VulId']
        end
      end

      # 告警设置列表
      class WarningInfoObj < TencentCloud::Common::AbstractModel
        # @param Type: 事件告警类型；1：离线，2：木马，3：异常登录，4：爆破，5：漏洞（已拆分为9-12四种类型）6：高危命令，7：反弹sell，8：本地提权，9：应用漏洞，10：web-cms漏洞，11：应急漏洞，12：安全基线 ,13: 防篡改，14：恶意请求，15: 网络攻击，16：Windows系统漏洞，17：Linux软件漏洞，18：核心文件监控告警，19：客户端卸载告警。20：客户端离线告警
        # @type Type: Integer
        # @param DisablePhoneWarning: 1: 关闭告警 0: 开启告警
        # @type DisablePhoneWarning: Integer
        # @param BeginTime: 开始时间，格式: HH:mm
        # @type BeginTime: String
        # @param EndTime: 结束时间，格式: HH:mm
        # @type EndTime: String
        # @param TimeZone: 时区信息
        # @type TimeZone: String
        # @param ControlBit: 漏洞等级控制位（对应DB的十进制存储）
        # @type ControlBit: Integer
        # @param ControlBits: 漏洞等级控制位二进制，每一位对应页面漏洞等级的开启关闭：低中高（0:关闭；1：开启），例如：101 → 同时勾选低+高
        # @type ControlBits: String

        attr_accessor :Type, :DisablePhoneWarning, :BeginTime, :EndTime, :TimeZone, :ControlBit, :ControlBits
        
        def initialize(type=nil, disablephonewarning=nil, begintime=nil, endtime=nil, timezone=nil, controlbit=nil, controlbits=nil)
          @Type = type
          @DisablePhoneWarning = disablephonewarning
          @BeginTime = begintime
          @EndTime = endtime
          @TimeZone = timezone
          @ControlBit = controlbit
          @ControlBits = controlbits
        end

        def deserialize(params)
          @Type = params['Type']
          @DisablePhoneWarning = params['DisablePhoneWarning']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @TimeZone = params['TimeZone']
          @ControlBit = params['ControlBit']
          @ControlBits = params['ControlBits']
        end
      end

      # 告警更新或插入的参数
      class WarningObject < TencentCloud::Common::AbstractModel
        # @param Type: 事件告警类型；1：离线，2：木马，3：异常登录，4：爆破，5：漏洞（已拆分为9-12四种类型）6：高位命令，7：反弹sell，8：本地提权，9：系统组件漏洞，10：web应用漏洞，11：应急漏洞，12：安全基线
        # @type Type: Integer
        # @param DisablePhoneWarning: 1: 关闭告警 0: 开启告警
        # @type DisablePhoneWarning: Integer
        # @param BeginTime: 开始时间，格式: HH:mm
        # @type BeginTime: String
        # @param EndTime: 结束时间，格式: HH:mm
        # @type EndTime: String
        # @param ControlBits: 漏洞等级控制位二进制，每一位对应页面漏洞等级的开启关闭：低中高（0:关闭；1：开启），例如：101 → 同时勾选低+高；01→(登录审计)疑似不告警，高危告警
        # @type ControlBits: String

        attr_accessor :Type, :DisablePhoneWarning, :BeginTime, :EndTime, :ControlBits
        
        def initialize(type=nil, disablephonewarning=nil, begintime=nil, endtime=nil, controlbits=nil)
          @Type = type
          @DisablePhoneWarning = disablephonewarning
          @BeginTime = begintime
          @EndTime = endtime
          @ControlBits = controlbits
        end

        def deserialize(params)
          @Type = params['Type']
          @DisablePhoneWarning = params['DisablePhoneWarning']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @ControlBits = params['ControlBits']
        end
      end

      # 可用区信息
      class ZoneInfo < TencentCloud::Common::AbstractModel
        # @param ZoneName: 可用区名称
        # @type ZoneName: String

        attr_accessor :ZoneName
        
        def initialize(zonename=nil)
          @ZoneName = zonename
        end

        def deserialize(params)
          @ZoneName = params['ZoneName']
        end
      end

    end
  end
end

