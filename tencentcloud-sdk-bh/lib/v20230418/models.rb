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
  module Bh
    module V20230418
      # 权限控制模板对象
      class ACTemplate < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板id
        # @type TemplateId: String
        # @param TemplateName: 模板名称
        # @type TemplateName: String
        # @param Description: 模板描述
        # @type Description: String

        attr_accessor :TemplateId, :TemplateName, :Description

        def initialize(templateid=nil, templatename=nil, description=nil)
          @TemplateId = templateid
          @TemplateName = templatename
          @Description = description
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
          @Description = params['Description']
        end
      end

      # AccessDevices请求参数结构体
      class AccessDevicesRequest < TencentCloud::Common::AbstractModel
        # @param Account: 资产的登录账号
        # @type Account: String
        # @param LoginAccount: 运维端登录账号
        # @type LoginAccount: String
        # @param LoginPassword: 运维端登录密码
        # @type LoginPassword: String
        # @param DeviceId: 资产ID
        # @type DeviceId: Integer
        # @param InstanceId: 资源id(优先使用DeviceId)
        # @type InstanceId: String
        # @param Password: 未托管密码私钥时，填入
        # @type Password: String
        # @param PrivateKey: 未托管密码私钥时，填入
        # @type PrivateKey: String
        # @param PrivateKeyPassword: 未托管密码私钥时，填入
        # @type PrivateKeyPassword: String
        # @param Exe: 客户端工具
        # @type Exe: String
        # @param Drivers: RDP挂载盘符驱动（mstsc支持）
        # @type Drivers: Array
        # @param Width: 窗口宽度（RDP支持）
        # @type Width: Integer
        # @param Height: 窗口高度（RDP支持）
        # @type Height: Integer
        # @param IntranetAccess: 是否内网访问（默认不是）
        # @type IntranetAccess: Boolean
        # @param AutoManageAccessCredential: 是否自动管理访问串，删掉过期的，新建可用的（默认false）
        # @type AutoManageAccessCredential: Boolean

        attr_accessor :Account, :LoginAccount, :LoginPassword, :DeviceId, :InstanceId, :Password, :PrivateKey, :PrivateKeyPassword, :Exe, :Drivers, :Width, :Height, :IntranetAccess, :AutoManageAccessCredential
        extend Gem::Deprecate
        deprecate :LoginAccount, :none, 2025, 7
        deprecate :LoginAccount=, :none, 2025, 7
        deprecate :LoginPassword, :none, 2025, 7
        deprecate :LoginPassword=, :none, 2025, 7

        def initialize(account=nil, loginaccount=nil, loginpassword=nil, deviceid=nil, instanceid=nil, password=nil, privatekey=nil, privatekeypassword=nil, exe=nil, drivers=nil, width=nil, height=nil, intranetaccess=nil, automanageaccesscredential=nil)
          @Account = account
          @LoginAccount = loginaccount
          @LoginPassword = loginpassword
          @DeviceId = deviceid
          @InstanceId = instanceid
          @Password = password
          @PrivateKey = privatekey
          @PrivateKeyPassword = privatekeypassword
          @Exe = exe
          @Drivers = drivers
          @Width = width
          @Height = height
          @IntranetAccess = intranetaccess
          @AutoManageAccessCredential = automanageaccesscredential
        end

        def deserialize(params)
          @Account = params['Account']
          @LoginAccount = params['LoginAccount']
          @LoginPassword = params['LoginPassword']
          @DeviceId = params['DeviceId']
          @InstanceId = params['InstanceId']
          @Password = params['Password']
          @PrivateKey = params['PrivateKey']
          @PrivateKeyPassword = params['PrivateKeyPassword']
          @Exe = params['Exe']
          @Drivers = params['Drivers']
          @Width = params['Width']
          @Height = params['Height']
          @IntranetAccess = params['IntranetAccess']
          @AutoManageAccessCredential = params['AutoManageAccessCredential']
        end
      end

      # AccessDevices返回参数结构体
      class AccessDevicesResponse < TencentCloud::Common::AbstractModel
        # @param AccessInfo: 认证信息
        # @type AccessInfo: :class:`Tencentcloud::Bh.v20230418.models.AccessInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccessInfo, :RequestId

        def initialize(accessinfo=nil, requestid=nil)
          @AccessInfo = accessinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AccessInfo'].nil?
            @AccessInfo = AccessInfo.new
            @AccessInfo.deserialize(params['AccessInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 认证信息
      class AccessInfo < TencentCloud::Common::AbstractModel
        # @param Ip: 地址
        # @type Ip: String
        # @param Port: 端口
        # @type Port: Integer
        # @param User: 账号
        # @type User: String
        # @param Password: 密码
        # @type Password: String
        # @param AccessURL: 唤起链接｜wss链接
        # @type AccessURL: String

        attr_accessor :Ip, :Port, :User, :Password, :AccessURL

        def initialize(ip=nil, port=nil, user=nil, password=nil, accessurl=nil)
          @Ip = ip
          @Port = port
          @User = user
          @Password = password
          @AccessURL = accessurl
        end

        def deserialize(params)
          @Ip = params['Ip']
          @Port = params['Port']
          @User = params['User']
          @Password = params['Password']
          @AccessURL = params['AccessURL']
        end
      end

      # 访问白名单规则
      class AccessWhiteListRule < TencentCloud::Common::AbstractModel
        # @param Id: 规则ID
        # @type Id: Integer
        # @param Source: IP或者网段
        # @type Source: String
        # @param Remark: 备注信息
        # @type Remark: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String

        attr_accessor :Id, :Source, :Remark, :ModifyTime

        def initialize(id=nil, source=nil, remark=nil, modifytime=nil)
          @Id = id
          @Source = source
          @Remark = remark
          @ModifyTime = modifytime
        end

        def deserialize(params)
          @Id = params['Id']
          @Source = params['Source']
          @Remark = params['Remark']
          @ModifyTime = params['ModifyTime']
        end
      end

      # 访问权限
      class Acl < TencentCloud::Common::AbstractModel
        # @param Id: 访问权限ID
        # @type Id: Integer
        # @param Name: 访问权限名称
        # @type Name: String
        # @param AllowDiskRedirect: 是否开启磁盘映射
        # @type AllowDiskRedirect: Boolean
        # @param AllowClipFileUp: 是否开启剪贴板文件上行
        # @type AllowClipFileUp: Boolean
        # @param AllowClipFileDown: 是否开启剪贴板文件下行
        # @type AllowClipFileDown: Boolean
        # @param AllowClipTextUp: 是否开启剪贴板文本（目前含图片）上行
        # @type AllowClipTextUp: Boolean
        # @param AllowClipTextDown: 是否开启剪贴板文本（目前含图片）下行
        # @type AllowClipTextDown: Boolean
        # @param AllowFileUp: 是否开启文件传输上传
        # @type AllowFileUp: Boolean
        # @param MaxFileUpSize: 文件传输上传大小限制（预留参数，暂未启用）
        # @type MaxFileUpSize: Integer
        # @param AllowFileDown: 是否开启文件传输下载
        # @type AllowFileDown: Boolean
        # @param MaxFileDownSize: 文件传输下载大小限制（预留参数，暂未启用）
        # @type MaxFileDownSize: Integer
        # @param AllowAnyAccount: 是否允许任意账号登录
        # @type AllowAnyAccount: Boolean
        # @param UserSet: 关联的用户列表
        # @type UserSet: Array
        # @param UserGroupSet: 关联的用户组列表
        # @type UserGroupSet: Array
        # @param DeviceSet: 关联的资产列表
        # @type DeviceSet: Array
        # @param DeviceGroupSet: 关联的资产组列表
        # @type DeviceGroupSet: Array
        # @param AccountSet: 关联的账号列表
        # @type AccountSet: Array
        # @param CmdTemplateSet: 关联的高危命令模板列表
        # @type CmdTemplateSet: Array
        # @param AllowDiskFileUp: 是否开启 RDP 磁盘映射文件上传
        # @type AllowDiskFileUp: Boolean
        # @param AllowDiskFileDown: 是否开启 RDP 磁盘映射文件下载
        # @type AllowDiskFileDown: Boolean
        # @param AllowShellFileUp: 是否开启 rz sz 文件上传
        # @type AllowShellFileUp: Boolean
        # @param AllowShellFileDown: 是否开启 rz sz 文件下载
        # @type AllowShellFileDown: Boolean
        # @param AllowFileDel: 是否开启 SFTP 文件删除
        # @type AllowFileDel: Boolean
        # @param ValidateFrom: 访问权限生效时间，如:"2021-09-22T00:00:00+00:00"
        # 生效、失效时间不填则访问权限长期有效
        # @type ValidateFrom: String
        # @param ValidateTo: 访问权限失效时间，如:"2021-09-23T00:00:00+00:00"
        # 生效、失效时间不填则访问权限长期有效
        # @type ValidateTo: String
        # @param Status: 访问权限状态，1 - 已生效，2 - 未生效，3 - 已过期
        # @type Status: Integer
        # @param Department: 所属部门的信息
        # @type Department: :class:`Tencentcloud::Bh.v20230418.models.Department`
        # @param AllowAccessCredential: 是否允许使用访问串，默认允许
        # @type AllowAccessCredential: Boolean
        # @param ACTemplateSet: 关联的数据库高危命令列表
        # @type ACTemplateSet: Array
        # @param WhiteCmds: 关联的白命令命令
        # @type WhiteCmds: Array
        # @param AllowKeyboardLogger: 是否允许记录键盘
        # @type AllowKeyboardLogger: Boolean
        # @param AppAssetSet: 关联的应用资产列表
        # @type AppAssetSet: Array

        attr_accessor :Id, :Name, :AllowDiskRedirect, :AllowClipFileUp, :AllowClipFileDown, :AllowClipTextUp, :AllowClipTextDown, :AllowFileUp, :MaxFileUpSize, :AllowFileDown, :MaxFileDownSize, :AllowAnyAccount, :UserSet, :UserGroupSet, :DeviceSet, :DeviceGroupSet, :AccountSet, :CmdTemplateSet, :AllowDiskFileUp, :AllowDiskFileDown, :AllowShellFileUp, :AllowShellFileDown, :AllowFileDel, :ValidateFrom, :ValidateTo, :Status, :Department, :AllowAccessCredential, :ACTemplateSet, :WhiteCmds, :AllowKeyboardLogger, :AppAssetSet

        def initialize(id=nil, name=nil, allowdiskredirect=nil, allowclipfileup=nil, allowclipfiledown=nil, allowcliptextup=nil, allowcliptextdown=nil, allowfileup=nil, maxfileupsize=nil, allowfiledown=nil, maxfiledownsize=nil, allowanyaccount=nil, userset=nil, usergroupset=nil, deviceset=nil, devicegroupset=nil, accountset=nil, cmdtemplateset=nil, allowdiskfileup=nil, allowdiskfiledown=nil, allowshellfileup=nil, allowshellfiledown=nil, allowfiledel=nil, validatefrom=nil, validateto=nil, status=nil, department=nil, allowaccesscredential=nil, actemplateset=nil, whitecmds=nil, allowkeyboardlogger=nil, appassetset=nil)
          @Id = id
          @Name = name
          @AllowDiskRedirect = allowdiskredirect
          @AllowClipFileUp = allowclipfileup
          @AllowClipFileDown = allowclipfiledown
          @AllowClipTextUp = allowcliptextup
          @AllowClipTextDown = allowcliptextdown
          @AllowFileUp = allowfileup
          @MaxFileUpSize = maxfileupsize
          @AllowFileDown = allowfiledown
          @MaxFileDownSize = maxfiledownsize
          @AllowAnyAccount = allowanyaccount
          @UserSet = userset
          @UserGroupSet = usergroupset
          @DeviceSet = deviceset
          @DeviceGroupSet = devicegroupset
          @AccountSet = accountset
          @CmdTemplateSet = cmdtemplateset
          @AllowDiskFileUp = allowdiskfileup
          @AllowDiskFileDown = allowdiskfiledown
          @AllowShellFileUp = allowshellfileup
          @AllowShellFileDown = allowshellfiledown
          @AllowFileDel = allowfiledel
          @ValidateFrom = validatefrom
          @ValidateTo = validateto
          @Status = status
          @Department = department
          @AllowAccessCredential = allowaccesscredential
          @ACTemplateSet = actemplateset
          @WhiteCmds = whitecmds
          @AllowKeyboardLogger = allowkeyboardlogger
          @AppAssetSet = appassetset
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @AllowDiskRedirect = params['AllowDiskRedirect']
          @AllowClipFileUp = params['AllowClipFileUp']
          @AllowClipFileDown = params['AllowClipFileDown']
          @AllowClipTextUp = params['AllowClipTextUp']
          @AllowClipTextDown = params['AllowClipTextDown']
          @AllowFileUp = params['AllowFileUp']
          @MaxFileUpSize = params['MaxFileUpSize']
          @AllowFileDown = params['AllowFileDown']
          @MaxFileDownSize = params['MaxFileDownSize']
          @AllowAnyAccount = params['AllowAnyAccount']
          unless params['UserSet'].nil?
            @UserSet = []
            params['UserSet'].each do |i|
              user_tmp = User.new
              user_tmp.deserialize(i)
              @UserSet << user_tmp
            end
          end
          unless params['UserGroupSet'].nil?
            @UserGroupSet = []
            params['UserGroupSet'].each do |i|
              group_tmp = Group.new
              group_tmp.deserialize(i)
              @UserGroupSet << group_tmp
            end
          end
          unless params['DeviceSet'].nil?
            @DeviceSet = []
            params['DeviceSet'].each do |i|
              device_tmp = Device.new
              device_tmp.deserialize(i)
              @DeviceSet << device_tmp
            end
          end
          unless params['DeviceGroupSet'].nil?
            @DeviceGroupSet = []
            params['DeviceGroupSet'].each do |i|
              group_tmp = Group.new
              group_tmp.deserialize(i)
              @DeviceGroupSet << group_tmp
            end
          end
          @AccountSet = params['AccountSet']
          unless params['CmdTemplateSet'].nil?
            @CmdTemplateSet = []
            params['CmdTemplateSet'].each do |i|
              cmdtemplate_tmp = CmdTemplate.new
              cmdtemplate_tmp.deserialize(i)
              @CmdTemplateSet << cmdtemplate_tmp
            end
          end
          @AllowDiskFileUp = params['AllowDiskFileUp']
          @AllowDiskFileDown = params['AllowDiskFileDown']
          @AllowShellFileUp = params['AllowShellFileUp']
          @AllowShellFileDown = params['AllowShellFileDown']
          @AllowFileDel = params['AllowFileDel']
          @ValidateFrom = params['ValidateFrom']
          @ValidateTo = params['ValidateTo']
          @Status = params['Status']
          unless params['Department'].nil?
            @Department = Department.new
            @Department.deserialize(params['Department'])
          end
          @AllowAccessCredential = params['AllowAccessCredential']
          unless params['ACTemplateSet'].nil?
            @ACTemplateSet = []
            params['ACTemplateSet'].each do |i|
              actemplate_tmp = ACTemplate.new
              actemplate_tmp.deserialize(i)
              @ACTemplateSet << actemplate_tmp
            end
          end
          @WhiteCmds = params['WhiteCmds']
          @AllowKeyboardLogger = params['AllowKeyboardLogger']
          unless params['AppAssetSet'].nil?
            @AppAssetSet = []
            params['AppAssetSet'].each do |i|
              appasset_tmp = AppAsset.new
              appasset_tmp.deserialize(i)
              @AppAssetSet << appasset_tmp
            end
          end
        end
      end

      # AddDeviceGroupMembers请求参数结构体
      class AddDeviceGroupMembersRequest < TencentCloud::Common::AbstractModel
        # @param Id: 资产组ID
        # @type Id: Integer
        # @param MemberIdSet: 需要添加到资产组的资产ID集合
        # @type MemberIdSet: Array

        attr_accessor :Id, :MemberIdSet

        def initialize(id=nil, memberidset=nil)
          @Id = id
          @MemberIdSet = memberidset
        end

        def deserialize(params)
          @Id = params['Id']
          @MemberIdSet = params['MemberIdSet']
        end
      end

      # AddDeviceGroupMembers返回参数结构体
      class AddDeviceGroupMembersResponse < TencentCloud::Common::AbstractModel
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

      # AddUserGroupMembers请求参数结构体
      class AddUserGroupMembersRequest < TencentCloud::Common::AbstractModel
        # @param Id: 用户组ID
        # @type Id: Integer
        # @param MemberIdSet: 成员用户ID集合
        # @type MemberIdSet: Array

        attr_accessor :Id, :MemberIdSet

        def initialize(id=nil, memberidset=nil)
          @Id = id
          @MemberIdSet = memberidset
        end

        def deserialize(params)
          @Id = params['Id']
          @MemberIdSet = params['MemberIdSet']
        end
      end

      # AddUserGroupMembers返回参数结构体
      class AddUserGroupMembersResponse < TencentCloud::Common::AbstractModel
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

      # 应用资产信息
      class AppAsset < TencentCloud::Common::AbstractModel
        # @param Id: 应用资产id
        # @type Id: Integer
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param Name: 资产名称
        # @type Name: String
        # @param DeviceId: 应用服务器id
        # @type DeviceId: Integer
        # @param DeviceAccountId: 应用服务器账号id
        # @type DeviceAccountId: Integer
        # @param Kind: 应用资产类型。1-web应用
        # @type Kind: Integer
        # @param ClientAppPath: 客户端工具路径
        # @type ClientAppPath: String
        # @param ClientAppKind: 客户端工具类型
        # @type ClientAppKind: String
        # @param Url: 应用资产url
        # @type Url: String
        # @param BindStatus: 托管状态。0-未托管，1-已托管
        # @type BindStatus: Integer
        # @param DeviceInstanceId: 应用服务器实例id
        # @type DeviceInstanceId: String
        # @param DeviceName: 应用服务器名称
        # @type DeviceName: String
        # @param DeviceAccountName: 应用服务器账号名称
        # @type DeviceAccountName: String
        # @param ResourceId: 堡垒机实例id
        # @type ResourceId: String
        # @param Resource: 堡垒机实例信息
        # @type Resource: :class:`Tencentcloud::Bh.v20230418.models.Resource`
        # @param DomainId: 网络域id
        # @type DomainId: String
        # @param DomainName: 网络域名称
        # @type DomainName: String
        # @param GroupSet: 资产组信息
        # @type GroupSet: Array
        # @param Department: 资产所属部门
        # @type Department: :class:`Tencentcloud::Bh.v20230418.models.Department`

        attr_accessor :Id, :InstanceId, :Name, :DeviceId, :DeviceAccountId, :Kind, :ClientAppPath, :ClientAppKind, :Url, :BindStatus, :DeviceInstanceId, :DeviceName, :DeviceAccountName, :ResourceId, :Resource, :DomainId, :DomainName, :GroupSet, :Department

        def initialize(id=nil, instanceid=nil, name=nil, deviceid=nil, deviceaccountid=nil, kind=nil, clientapppath=nil, clientappkind=nil, url=nil, bindstatus=nil, deviceinstanceid=nil, devicename=nil, deviceaccountname=nil, resourceid=nil, resource=nil, domainid=nil, domainname=nil, groupset=nil, department=nil)
          @Id = id
          @InstanceId = instanceid
          @Name = name
          @DeviceId = deviceid
          @DeviceAccountId = deviceaccountid
          @Kind = kind
          @ClientAppPath = clientapppath
          @ClientAppKind = clientappkind
          @Url = url
          @BindStatus = bindstatus
          @DeviceInstanceId = deviceinstanceid
          @DeviceName = devicename
          @DeviceAccountName = deviceaccountname
          @ResourceId = resourceid
          @Resource = resource
          @DomainId = domainid
          @DomainName = domainname
          @GroupSet = groupset
          @Department = department
        end

        def deserialize(params)
          @Id = params['Id']
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @DeviceId = params['DeviceId']
          @DeviceAccountId = params['DeviceAccountId']
          @Kind = params['Kind']
          @ClientAppPath = params['ClientAppPath']
          @ClientAppKind = params['ClientAppKind']
          @Url = params['Url']
          @BindStatus = params['BindStatus']
          @DeviceInstanceId = params['DeviceInstanceId']
          @DeviceName = params['DeviceName']
          @DeviceAccountName = params['DeviceAccountName']
          @ResourceId = params['ResourceId']
          unless params['Resource'].nil?
            @Resource = Resource.new
            @Resource.deserialize(params['Resource'])
          end
          @DomainId = params['DomainId']
          @DomainName = params['DomainName']
          unless params['GroupSet'].nil?
            @GroupSet = []
            params['GroupSet'].each do |i|
              group_tmp = Group.new
              group_tmp.deserialize(i)
              @GroupSet << group_tmp
            end
          end
          unless params['Department'].nil?
            @Department = Department.new
            @Department.deserialize(params['Department'])
          end
        end
      end

      # 资产同步状态
      class AssetSyncStatus < TencentCloud::Common::AbstractModel
        # @param LastTime: 上一次同步完成的时间
        # @type LastTime: String
        # @param LastStatus: 上一次同步的结果。 0 - 从未进行, 1 - 成功， 2 - 失败
        # @type LastStatus: Integer
        # @param InProcess: 同步任务是否正在进行中
        # @type InProcess: Boolean
        # @param ErrMsg: 任务错误消息
        # @type ErrMsg: String

        attr_accessor :LastTime, :LastStatus, :InProcess, :ErrMsg

        def initialize(lasttime=nil, laststatus=nil, inprocess=nil, errmsg=nil)
          @LastTime = lasttime
          @LastStatus = laststatus
          @InProcess = inprocess
          @ErrMsg = errmsg
        end

        def deserialize(params)
          @LastTime = params['LastTime']
          @LastStatus = params['LastStatus']
          @InProcess = params['InProcess']
          @ErrMsg = params['ErrMsg']
        end
      end

      # BindDeviceAccountPassword请求参数结构体
      class BindDeviceAccountPasswordRequest < TencentCloud::Common::AbstractModel
        # @param Id: 主机账号ID
        # @type Id: Integer
        # @param Password: 主机账号密码
        # @type Password: String

        attr_accessor :Id, :Password

        def initialize(id=nil, password=nil)
          @Id = id
          @Password = password
        end

        def deserialize(params)
          @Id = params['Id']
          @Password = params['Password']
        end
      end

      # BindDeviceAccountPassword返回参数结构体
      class BindDeviceAccountPasswordResponse < TencentCloud::Common::AbstractModel
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

      # BindDeviceAccountPrivateKey请求参数结构体
      class BindDeviceAccountPrivateKeyRequest < TencentCloud::Common::AbstractModel
        # @param Id: 主机账号ID
        # @type Id: Integer
        # @param PrivateKey: 主机账号私钥，最小长度128字节，最大长度8192字节
        # @type PrivateKey: String
        # @param PrivateKeyPassword: 主机账号私钥口令，最大长度256字节
        # @type PrivateKeyPassword: String

        attr_accessor :Id, :PrivateKey, :PrivateKeyPassword

        def initialize(id=nil, privatekey=nil, privatekeypassword=nil)
          @Id = id
          @PrivateKey = privatekey
          @PrivateKeyPassword = privatekeypassword
        end

        def deserialize(params)
          @Id = params['Id']
          @PrivateKey = params['PrivateKey']
          @PrivateKeyPassword = params['PrivateKeyPassword']
        end
      end

      # BindDeviceAccountPrivateKey返回参数结构体
      class BindDeviceAccountPrivateKeyResponse < TencentCloud::Common::AbstractModel
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

      # BindDeviceResource请求参数结构体
      class BindDeviceResourceRequest < TencentCloud::Common::AbstractModel
        # @param DeviceIdSet: 资产ID集合
        # @type DeviceIdSet: Array
        # @param ResourceId: 堡垒机服务ID
        # @type ResourceId: String
        # @param DomainId: 网络域ID
        # @type DomainId: String
        # @param ManageDimension: K8S集群托管账号维度。1-集群，2-命名空间，3-工作负载
        # @type ManageDimension: Integer
        # @param ManageAccountId: K8S集群托管账号id
        # @type ManageAccountId: Integer
        # @param ManageAccount: K8S集群托管账号名称
        # @type ManageAccount: String
        # @param ManageKubeconfig: K8S集群托管账号凭证
        # @type ManageKubeconfig: String
        # @param Namespace: K8S集群托管的namespace
        # @type Namespace: String
        # @param Workload: K8S集群托管的workload
        # @type Workload: String

        attr_accessor :DeviceIdSet, :ResourceId, :DomainId, :ManageDimension, :ManageAccountId, :ManageAccount, :ManageKubeconfig, :Namespace, :Workload

        def initialize(deviceidset=nil, resourceid=nil, domainid=nil, managedimension=nil, manageaccountid=nil, manageaccount=nil, managekubeconfig=nil, namespace=nil, workload=nil)
          @DeviceIdSet = deviceidset
          @ResourceId = resourceid
          @DomainId = domainid
          @ManageDimension = managedimension
          @ManageAccountId = manageaccountid
          @ManageAccount = manageaccount
          @ManageKubeconfig = managekubeconfig
          @Namespace = namespace
          @Workload = workload
        end

        def deserialize(params)
          @DeviceIdSet = params['DeviceIdSet']
          @ResourceId = params['ResourceId']
          @DomainId = params['DomainId']
          @ManageDimension = params['ManageDimension']
          @ManageAccountId = params['ManageAccountId']
          @ManageAccount = params['ManageAccount']
          @ManageKubeconfig = params['ManageKubeconfig']
          @Namespace = params['Namespace']
          @Workload = params['Workload']
        end
      end

      # BindDeviceResource返回参数结构体
      class BindDeviceResourceResponse < TencentCloud::Common::AbstractModel
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

      # 查询改密计划详情
      class ChangePwdTaskDetail < TencentCloud::Common::AbstractModel
        # @param Device: 资产信息
        # @type Device: :class:`Tencentcloud::Bh.v20230418.models.Device`
        # @param Account: 资产账号
        # @type Account: String
        # @param LastChangeStatus: 上次改密结果。0-未改密  1-改密成功 2-改密失败
        # @type LastChangeStatus: Integer

        attr_accessor :Device, :Account, :LastChangeStatus

        def initialize(device=nil, account=nil, lastchangestatus=nil)
          @Device = device
          @Account = account
          @LastChangeStatus = lastchangestatus
        end

        def deserialize(params)
          unless params['Device'].nil?
            @Device = Device.new
            @Device.deserialize(params['Device'])
          end
          @Account = params['Account']
          @LastChangeStatus = params['LastChangeStatus']
        end
      end

      # 修改密码任务信息
      class ChangePwdTaskInfo < TencentCloud::Common::AbstractModel
        # @param Id: id
        # @type Id: Integer
        # @param OperationId: 任务id
        # @type OperationId: String
        # @param TaskName: 任务名
        # @type TaskName: String
        # @param Department: 所属部门信息
        # @type Department: :class:`Tencentcloud::Bh.v20230418.models.Department`
        # @param ChangeMethod: 改密方式。1：使用执行账号。2：修改自身密码
        # @type ChangeMethod: Integer
        # @param RunAccount: 执行账号
        # @type RunAccount: String
        # @param AuthGenerationStrategy: 密码生成策略
        # @type AuthGenerationStrategy: Integer
        # @param PasswordLength: 密码长度
        # @type PasswordLength: Integer
        # @param SmallLetter: 包含小写字母
        # @type SmallLetter: Integer
        # @param BigLetter: 包含大写字母
        # @type BigLetter: Integer
        # @param Digit: 包含数字
        # @type Digit: Integer
        # @param Symbol: 包含的特殊字符，入参base64
        # @type Symbol: String
        # @param CompleteNotify: 改密完成通知。0-通知，1-不通知
        # @type CompleteNotify: Integer
        # @param NotifyEmails: 通知人邮箱
        # @type NotifyEmails: Array
        # @param FilePassword: 加密附件密码
        # @type FilePassword: String
        # @param AccountSet: 需要改密的账户
        # @type AccountSet: Array
        # @param DeviceSet: 需要改密的主机
        # @type DeviceSet: Array
        # @param Type: 任务类型：4手动，5自动
        # @type Type: Integer
        # @param Period: 周期
        # @type Period: Integer
        # @param FirstTime: 首次执行时间
        # @type FirstTime: String
        # @param NextTime: 下次执行时间
        # @type NextTime: String
        # @param LastTime: 上次执行时间
        # @type LastTime: String

        attr_accessor :Id, :OperationId, :TaskName, :Department, :ChangeMethod, :RunAccount, :AuthGenerationStrategy, :PasswordLength, :SmallLetter, :BigLetter, :Digit, :Symbol, :CompleteNotify, :NotifyEmails, :FilePassword, :AccountSet, :DeviceSet, :Type, :Period, :FirstTime, :NextTime, :LastTime

        def initialize(id=nil, operationid=nil, taskname=nil, department=nil, changemethod=nil, runaccount=nil, authgenerationstrategy=nil, passwordlength=nil, smallletter=nil, bigletter=nil, digit=nil, symbol=nil, completenotify=nil, notifyemails=nil, filepassword=nil, accountset=nil, deviceset=nil, type=nil, period=nil, firsttime=nil, nexttime=nil, lasttime=nil)
          @Id = id
          @OperationId = operationid
          @TaskName = taskname
          @Department = department
          @ChangeMethod = changemethod
          @RunAccount = runaccount
          @AuthGenerationStrategy = authgenerationstrategy
          @PasswordLength = passwordlength
          @SmallLetter = smallletter
          @BigLetter = bigletter
          @Digit = digit
          @Symbol = symbol
          @CompleteNotify = completenotify
          @NotifyEmails = notifyemails
          @FilePassword = filepassword
          @AccountSet = accountset
          @DeviceSet = deviceset
          @Type = type
          @Period = period
          @FirstTime = firsttime
          @NextTime = nexttime
          @LastTime = lasttime
        end

        def deserialize(params)
          @Id = params['Id']
          @OperationId = params['OperationId']
          @TaskName = params['TaskName']
          unless params['Department'].nil?
            @Department = Department.new
            @Department.deserialize(params['Department'])
          end
          @ChangeMethod = params['ChangeMethod']
          @RunAccount = params['RunAccount']
          @AuthGenerationStrategy = params['AuthGenerationStrategy']
          @PasswordLength = params['PasswordLength']
          @SmallLetter = params['SmallLetter']
          @BigLetter = params['BigLetter']
          @Digit = params['Digit']
          @Symbol = params['Symbol']
          @CompleteNotify = params['CompleteNotify']
          @NotifyEmails = params['NotifyEmails']
          @FilePassword = params['FilePassword']
          @AccountSet = params['AccountSet']
          unless params['DeviceSet'].nil?
            @DeviceSet = []
            params['DeviceSet'].each do |i|
              device_tmp = Device.new
              device_tmp.deserialize(i)
              @DeviceSet << device_tmp
            end
          end
          @Type = params['Type']
          @Period = params['Period']
          @FirstTime = params['FirstTime']
          @NextTime = params['NextTime']
          @LastTime = params['LastTime']
        end
      end

      # CheckLDAPConnection请求参数结构体
      class CheckLDAPConnectionRequest < TencentCloud::Common::AbstractModel
        # @param Enable: 是否开启LDAP认证，必须为true
        # @type Enable: Boolean
        # @param Ip: 服务器地址
        # @type Ip: String
        # @param Port: 服务端口
        # @type Port: Integer
        # @param EnableSSL: 是否开启SSL，false-不开启，true-开启
        # @type EnableSSL: Boolean
        # @param BaseDN: Base DN
        # @type BaseDN: String
        # @param AdminAccount: 管理员账号
        # @type AdminAccount: String
        # @param AdminPassword: 管理员密码
        # @type AdminPassword: String
        # @param IpBackup: 备用服务器地址
        # @type IpBackup: String
        # @param DomainId: 网络域id
        # @type DomainId: String

        attr_accessor :Enable, :Ip, :Port, :EnableSSL, :BaseDN, :AdminAccount, :AdminPassword, :IpBackup, :DomainId

        def initialize(enable=nil, ip=nil, port=nil, enablessl=nil, basedn=nil, adminaccount=nil, adminpassword=nil, ipbackup=nil, domainid=nil)
          @Enable = enable
          @Ip = ip
          @Port = port
          @EnableSSL = enablessl
          @BaseDN = basedn
          @AdminAccount = adminaccount
          @AdminPassword = adminpassword
          @IpBackup = ipbackup
          @DomainId = domainid
        end

        def deserialize(params)
          @Enable = params['Enable']
          @Ip = params['Ip']
          @Port = params['Port']
          @EnableSSL = params['EnableSSL']
          @BaseDN = params['BaseDN']
          @AdminAccount = params['AdminAccount']
          @AdminPassword = params['AdminPassword']
          @IpBackup = params['IpBackup']
          @DomainId = params['DomainId']
        end
      end

      # CheckLDAPConnection返回参数结构体
      class CheckLDAPConnectionResponse < TencentCloud::Common::AbstractModel
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

      # 负载均衡
      class Clb < TencentCloud::Common::AbstractModel
        # @param ClbIp: 负载均衡IP
        # @type ClbIp: String

        attr_accessor :ClbIp

        def initialize(clbip=nil)
          @ClbIp = clbip
        end

        def deserialize(params)
          @ClbIp = params['ClbIp']
        end
      end

      # 高危命令模板
      class CmdTemplate < TencentCloud::Common::AbstractModel
        # @param Id: 高危命令模板ID
        # @type Id: Integer
        # @param Name: 高危命令模板名称
        # @type Name: String
        # @param CmdList: 命令列表，命令之间用换行符（"\n"）分隔
        # @type CmdList: String
        # @param Type: 命令模板类型 1-内置 2-自定义
        # @type Type: Integer

        attr_accessor :Id, :Name, :CmdList, :Type

        def initialize(id=nil, name=nil, cmdlist=nil, type=nil)
          @Id = id
          @Name = name
          @CmdList = cmdlist
          @Type = type
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @CmdList = params['CmdList']
          @Type = params['Type']
        end
      end

      # 命令集合
      class Command < TencentCloud::Common::AbstractModel
        # @param Cmd: 命令
        # @type Cmd: String
        # @param Time: 命令输入的时间
        # @type Time: String
        # @param TimeOffset: 命令执行时间相对于所属会话开始时间的偏移量，单位ms
        # @type TimeOffset: Integer
        # @param Action: 命令执行情况，1--允许，2--拒绝，3--确认
        # @type Action: Integer
        # @param Sid: 会话id
        # @type Sid: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param Account: 设备account
        # @type Account: String
        # @param InstanceId: 设备ip
        # @type InstanceId: String
        # @param FromIp: source ip
        # @type FromIp: String
        # @param SessTime: 该命令所属会话的会话开始时间
        # @type SessTime: String
        # @param SessionTime: 该命令所属会话的会话开始时间
        # @type SessionTime: String
        # @param ConfirmTime: 复核时间
        # @type ConfirmTime: String
        # @param UserDepartmentId: 用户部门id
        # @type UserDepartmentId: String
        # @param UserDepartmentName: 用户部门name
        # @type UserDepartmentName: String
        # @param DeviceDepartmentId: 设备部门id
        # @type DeviceDepartmentId: String
        # @param DeviceDepartmentName: 设备部门name
        # @type DeviceDepartmentName: String
        # @param Size: 会话大小
        # @type Size: Integer
        # @param SignValue: 签名值
        # @type SignValue: String
        # @param DeviceKind: 资产类型
        # @type DeviceKind: String

        attr_accessor :Cmd, :Time, :TimeOffset, :Action, :Sid, :UserName, :Account, :InstanceId, :FromIp, :SessTime, :SessionTime, :ConfirmTime, :UserDepartmentId, :UserDepartmentName, :DeviceDepartmentId, :DeviceDepartmentName, :Size, :SignValue, :DeviceKind

        def initialize(cmd=nil, time=nil, timeoffset=nil, action=nil, sid=nil, username=nil, account=nil, instanceid=nil, fromip=nil, sesstime=nil, sessiontime=nil, confirmtime=nil, userdepartmentid=nil, userdepartmentname=nil, devicedepartmentid=nil, devicedepartmentname=nil, size=nil, signvalue=nil, devicekind=nil)
          @Cmd = cmd
          @Time = time
          @TimeOffset = timeoffset
          @Action = action
          @Sid = sid
          @UserName = username
          @Account = account
          @InstanceId = instanceid
          @FromIp = fromip
          @SessTime = sesstime
          @SessionTime = sessiontime
          @ConfirmTime = confirmtime
          @UserDepartmentId = userdepartmentid
          @UserDepartmentName = userdepartmentname
          @DeviceDepartmentId = devicedepartmentid
          @DeviceDepartmentName = devicedepartmentname
          @Size = size
          @SignValue = signvalue
          @DeviceKind = devicekind
        end

        def deserialize(params)
          @Cmd = params['Cmd']
          @Time = params['Time']
          @TimeOffset = params['TimeOffset']
          @Action = params['Action']
          @Sid = params['Sid']
          @UserName = params['UserName']
          @Account = params['Account']
          @InstanceId = params['InstanceId']
          @FromIp = params['FromIp']
          @SessTime = params['SessTime']
          @SessionTime = params['SessionTime']
          @ConfirmTime = params['ConfirmTime']
          @UserDepartmentId = params['UserDepartmentId']
          @UserDepartmentName = params['UserDepartmentName']
          @DeviceDepartmentId = params['DeviceDepartmentId']
          @DeviceDepartmentName = params['DeviceDepartmentName']
          @Size = params['Size']
          @SignValue = params['SignValue']
          @DeviceKind = params['DeviceKind']
        end
      end

      # CreateAccessWhiteListRule请求参数结构体
      class CreateAccessWhiteListRuleRequest < TencentCloud::Common::AbstractModel
        # @param Source: ip 10.10.10.1或者网段10.10.10.0/24，最小长度4字节，最大长度40字节。
        # @type Source: String
        # @param Remark: 备注信息，最小长度0字符，最大长度40字符。
        # @type Remark: String

        attr_accessor :Source, :Remark

        def initialize(source=nil, remark=nil)
          @Source = source
          @Remark = remark
        end

        def deserialize(params)
          @Source = params['Source']
          @Remark = params['Remark']
        end
      end

      # CreateAccessWhiteListRule返回参数结构体
      class CreateAccessWhiteListRuleResponse < TencentCloud::Common::AbstractModel
        # @param Id: 新建成功后返回的记录ID
        # @type Id: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :RequestId

        def initialize(id=nil, requestid=nil)
          @Id = id
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @RequestId = params['RequestId']
        end
      end

      # CreateAcl请求参数结构体
      class CreateAclRequest < TencentCloud::Common::AbstractModel
        # @param Name: 权限名称，最大32字符，不能包含空白字符
        # @type Name: String
        # @param AllowDiskRedirect: 是否开启磁盘映射
        # @type AllowDiskRedirect: Boolean
        # @param AllowAnyAccount: 是否允许任意账号登录
        # @type AllowAnyAccount: Boolean
        # @param AllowClipFileUp: 是否开启剪贴板文件上行
        # @type AllowClipFileUp: Boolean
        # @param AllowClipFileDown: 是否开启剪贴板文件下行
        # @type AllowClipFileDown: Boolean
        # @param AllowClipTextUp: 是否开启剪贴板文本（含图片）上行
        # @type AllowClipTextUp: Boolean
        # @param AllowClipTextDown: 是否开启剪贴板文本（含图片）下行
        # @type AllowClipTextDown: Boolean
        # @param AllowFileUp: 是否开启 SFTP 文件上传
        # @type AllowFileUp: Boolean
        # @param MaxFileUpSize: 文件传输上传大小限制（预留参数，目前暂未使用）
        # @type MaxFileUpSize: Integer
        # @param AllowFileDown: 是否开启 SFTP 文件下载
        # @type AllowFileDown: Boolean
        # @param MaxFileDownSize: 文件传输下载大小限制（预留参数，目前暂未使用）
        # @type MaxFileDownSize: Integer
        # @param UserIdSet: 关联的用户ID集合
        # @type UserIdSet: Array
        # @param UserGroupIdSet: 关联的用户组ID
        # @type UserGroupIdSet: Array
        # @param DeviceIdSet: 关联的资产ID集合
        # @type DeviceIdSet: Array
        # @param AppAssetIdSet: 关联的应用资产ID集合
        # @type AppAssetIdSet: Array
        # @param DeviceGroupIdSet: 关联的资产组ID
        # @type DeviceGroupIdSet: Array
        # @param AccountSet: 关联的账号
        # @type AccountSet: Array
        # @param CmdTemplateIdSet: 关联的高危命令模板ID
        # @type CmdTemplateIdSet: Array
        # @param ACTemplateIdSet: 关联高危DB模板ID
        # @type ACTemplateIdSet: Array
        # @param AllowDiskFileUp: 是否开启rdp磁盘映射文件上传
        # @type AllowDiskFileUp: Boolean
        # @param AllowDiskFileDown: 是否开启rdp磁盘映射文件下载
        # @type AllowDiskFileDown: Boolean
        # @param AllowShellFileUp: 是否开启rz sz文件上传
        # @type AllowShellFileUp: Boolean
        # @param AllowShellFileDown: 是否开启rz sz文件下载
        # @type AllowShellFileDown: Boolean
        # @param AllowFileDel: 是否开启 SFTP 文件删除
        # @type AllowFileDel: Boolean
        # @param ValidateFrom: 访问权限生效时间，如:"2021-09-22T00:00:00+00:00"
        # 生效、失效时间不填则访问权限长期有效
        # @type ValidateFrom: String
        # @param ValidateTo: 访问权限失效时间，如:"2021-09-23T00:00:00+00:00"
        # 生效、失效时间不填则访问权限长期有效
        # @type ValidateTo: String
        # @param DepartmentId: 访问权限所属部门的ID
        # @type DepartmentId: String
        # @param AllowAccessCredential: 是否允许使用访问串，默认允许
        # @type AllowAccessCredential: Boolean
        # @param AllowKeyboardLogger: 是否允许键盘记录
        # @type AllowKeyboardLogger: Boolean

        attr_accessor :Name, :AllowDiskRedirect, :AllowAnyAccount, :AllowClipFileUp, :AllowClipFileDown, :AllowClipTextUp, :AllowClipTextDown, :AllowFileUp, :MaxFileUpSize, :AllowFileDown, :MaxFileDownSize, :UserIdSet, :UserGroupIdSet, :DeviceIdSet, :AppAssetIdSet, :DeviceGroupIdSet, :AccountSet, :CmdTemplateIdSet, :ACTemplateIdSet, :AllowDiskFileUp, :AllowDiskFileDown, :AllowShellFileUp, :AllowShellFileDown, :AllowFileDel, :ValidateFrom, :ValidateTo, :DepartmentId, :AllowAccessCredential, :AllowKeyboardLogger

        def initialize(name=nil, allowdiskredirect=nil, allowanyaccount=nil, allowclipfileup=nil, allowclipfiledown=nil, allowcliptextup=nil, allowcliptextdown=nil, allowfileup=nil, maxfileupsize=nil, allowfiledown=nil, maxfiledownsize=nil, useridset=nil, usergroupidset=nil, deviceidset=nil, appassetidset=nil, devicegroupidset=nil, accountset=nil, cmdtemplateidset=nil, actemplateidset=nil, allowdiskfileup=nil, allowdiskfiledown=nil, allowshellfileup=nil, allowshellfiledown=nil, allowfiledel=nil, validatefrom=nil, validateto=nil, departmentid=nil, allowaccesscredential=nil, allowkeyboardlogger=nil)
          @Name = name
          @AllowDiskRedirect = allowdiskredirect
          @AllowAnyAccount = allowanyaccount
          @AllowClipFileUp = allowclipfileup
          @AllowClipFileDown = allowclipfiledown
          @AllowClipTextUp = allowcliptextup
          @AllowClipTextDown = allowcliptextdown
          @AllowFileUp = allowfileup
          @MaxFileUpSize = maxfileupsize
          @AllowFileDown = allowfiledown
          @MaxFileDownSize = maxfiledownsize
          @UserIdSet = useridset
          @UserGroupIdSet = usergroupidset
          @DeviceIdSet = deviceidset
          @AppAssetIdSet = appassetidset
          @DeviceGroupIdSet = devicegroupidset
          @AccountSet = accountset
          @CmdTemplateIdSet = cmdtemplateidset
          @ACTemplateIdSet = actemplateidset
          @AllowDiskFileUp = allowdiskfileup
          @AllowDiskFileDown = allowdiskfiledown
          @AllowShellFileUp = allowshellfileup
          @AllowShellFileDown = allowshellfiledown
          @AllowFileDel = allowfiledel
          @ValidateFrom = validatefrom
          @ValidateTo = validateto
          @DepartmentId = departmentid
          @AllowAccessCredential = allowaccesscredential
          @AllowKeyboardLogger = allowkeyboardlogger
        end

        def deserialize(params)
          @Name = params['Name']
          @AllowDiskRedirect = params['AllowDiskRedirect']
          @AllowAnyAccount = params['AllowAnyAccount']
          @AllowClipFileUp = params['AllowClipFileUp']
          @AllowClipFileDown = params['AllowClipFileDown']
          @AllowClipTextUp = params['AllowClipTextUp']
          @AllowClipTextDown = params['AllowClipTextDown']
          @AllowFileUp = params['AllowFileUp']
          @MaxFileUpSize = params['MaxFileUpSize']
          @AllowFileDown = params['AllowFileDown']
          @MaxFileDownSize = params['MaxFileDownSize']
          @UserIdSet = params['UserIdSet']
          @UserGroupIdSet = params['UserGroupIdSet']
          @DeviceIdSet = params['DeviceIdSet']
          @AppAssetIdSet = params['AppAssetIdSet']
          @DeviceGroupIdSet = params['DeviceGroupIdSet']
          @AccountSet = params['AccountSet']
          @CmdTemplateIdSet = params['CmdTemplateIdSet']
          @ACTemplateIdSet = params['ACTemplateIdSet']
          @AllowDiskFileUp = params['AllowDiskFileUp']
          @AllowDiskFileDown = params['AllowDiskFileDown']
          @AllowShellFileUp = params['AllowShellFileUp']
          @AllowShellFileDown = params['AllowShellFileDown']
          @AllowFileDel = params['AllowFileDel']
          @ValidateFrom = params['ValidateFrom']
          @ValidateTo = params['ValidateTo']
          @DepartmentId = params['DepartmentId']
          @AllowAccessCredential = params['AllowAccessCredential']
          @AllowKeyboardLogger = params['AllowKeyboardLogger']
        end
      end

      # CreateAcl返回参数结构体
      class CreateAclResponse < TencentCloud::Common::AbstractModel
        # @param Id: 新建成功的访问权限ID
        # @type Id: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :RequestId

        def initialize(id=nil, requestid=nil)
          @Id = id
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @RequestId = params['RequestId']
        end
      end

      # CreateAssetSyncJob请求参数结构体
      class CreateAssetSyncJobRequest < TencentCloud::Common::AbstractModel
        # @param Category: 同步资产类别，1 - 主机资产, 2 - 数据库资产
        # @type Category: Integer

        attr_accessor :Category

        def initialize(category=nil)
          @Category = category
        end

        def deserialize(params)
          @Category = params['Category']
        end
      end

      # CreateAssetSyncJob返回参数结构体
      class CreateAssetSyncJobResponse < TencentCloud::Common::AbstractModel
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

      # CreateChangePwdTask请求参数结构体
      class CreateChangePwdTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskName: 任务名
        # @type TaskName: String
        # @param DeviceIdSet: 资产id数组
        # @type DeviceIdSet: Array
        # @param AccountSet: 修改的账户数组
        # @type AccountSet: Array
        # @param ChangeMethod: 改密方式。1：使用执行账号修改密码；2：修改自身密码
        # @type ChangeMethod: Integer
        # @param AuthGenerationStrategy: 认证生成方式。 1:自动生成相同密码 2:自动生成不同密码 3:手动指定相同密码
        # @type AuthGenerationStrategy: Integer
        # @param RunAccount: 执行账号
        # @type RunAccount: String
        # @param Password: 手动指定密码时必传
        # @type Password: String
        # @param PasswordLength: 密码限制长度，长度大于 12 位
        # @type PasswordLength: Integer
        # @param SmallLetter: 密码包含小写字母。0：否，1：是
        # @type SmallLetter: Integer
        # @param BigLetter: 密码包含大写字母。0：否，1：是
        # @type BigLetter: Integer
        # @param Digit: 密码包含数字。0：否，1：是
        # @type Digit: Integer
        # @param Symbol: 密码包含的特殊字符（base64编码），包含：^[-_#();%~!+=]*$
        # @type Symbol: String
        # @param CompleteNotify: 改密完成通知。0：不通知
        #   1：通知
        # @type CompleteNotify: Integer
        # @param NotifyEmails: 通知邮箱
        # @type NotifyEmails: Array
        # @param FilePassword: 加密压缩文件密码
        # @type FilePassword: String
        # @param DepartmentId: 所属部门id。“1.2.3”
        # @type DepartmentId: String
        # @param Type: 任务类型  4-手工执行  5-周期自动执行
        # @type Type: Integer
        # @param Period: 执行周期，单位天（大于等于 1，小于等于 365）
        # @type Period: Integer
        # @param FirstTime: 周期任务首次执行时间
        # @type FirstTime: String

        attr_accessor :TaskName, :DeviceIdSet, :AccountSet, :ChangeMethod, :AuthGenerationStrategy, :RunAccount, :Password, :PasswordLength, :SmallLetter, :BigLetter, :Digit, :Symbol, :CompleteNotify, :NotifyEmails, :FilePassword, :DepartmentId, :Type, :Period, :FirstTime

        def initialize(taskname=nil, deviceidset=nil, accountset=nil, changemethod=nil, authgenerationstrategy=nil, runaccount=nil, password=nil, passwordlength=nil, smallletter=nil, bigletter=nil, digit=nil, symbol=nil, completenotify=nil, notifyemails=nil, filepassword=nil, departmentid=nil, type=nil, period=nil, firsttime=nil)
          @TaskName = taskname
          @DeviceIdSet = deviceidset
          @AccountSet = accountset
          @ChangeMethod = changemethod
          @AuthGenerationStrategy = authgenerationstrategy
          @RunAccount = runaccount
          @Password = password
          @PasswordLength = passwordlength
          @SmallLetter = smallletter
          @BigLetter = bigletter
          @Digit = digit
          @Symbol = symbol
          @CompleteNotify = completenotify
          @NotifyEmails = notifyemails
          @FilePassword = filepassword
          @DepartmentId = departmentid
          @Type = type
          @Period = period
          @FirstTime = firsttime
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @DeviceIdSet = params['DeviceIdSet']
          @AccountSet = params['AccountSet']
          @ChangeMethod = params['ChangeMethod']
          @AuthGenerationStrategy = params['AuthGenerationStrategy']
          @RunAccount = params['RunAccount']
          @Password = params['Password']
          @PasswordLength = params['PasswordLength']
          @SmallLetter = params['SmallLetter']
          @BigLetter = params['BigLetter']
          @Digit = params['Digit']
          @Symbol = params['Symbol']
          @CompleteNotify = params['CompleteNotify']
          @NotifyEmails = params['NotifyEmails']
          @FilePassword = params['FilePassword']
          @DepartmentId = params['DepartmentId']
          @Type = params['Type']
          @Period = params['Period']
          @FirstTime = params['FirstTime']
        end
      end

      # CreateChangePwdTask返回参数结构体
      class CreateChangePwdTaskResponse < TencentCloud::Common::AbstractModel
        # @param OperationId: 任务id
        # @type OperationId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OperationId, :RequestId

        def initialize(operationid=nil, requestid=nil)
          @OperationId = operationid
          @RequestId = requestid
        end

        def deserialize(params)
          @OperationId = params['OperationId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCmdTemplate请求参数结构体
      class CreateCmdTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Name: 模板名，最大长度32字符，不能包含空白字符
        # @type Name: String
        # @param CmdList: 命令列表，\n分隔，最大长度32768字节
        # @type CmdList: String
        # @param Encoding: 标识CmdList字段前端是否为base64加密传值.0:表示非base64加密1:表示是base64加密
        # @type Encoding: Integer

        attr_accessor :Name, :CmdList, :Encoding

        def initialize(name=nil, cmdlist=nil, encoding=nil)
          @Name = name
          @CmdList = cmdlist
          @Encoding = encoding
        end

        def deserialize(params)
          @Name = params['Name']
          @CmdList = params['CmdList']
          @Encoding = params['Encoding']
        end
      end

      # CreateCmdTemplate返回参数结构体
      class CreateCmdTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Id: 新建成功后返回的记录ID
        # @type Id: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :RequestId

        def initialize(id=nil, requestid=nil)
          @Id = id
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @RequestId = params['RequestId']
        end
      end

      # CreateDeviceAccount请求参数结构体
      class CreateDeviceAccountRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 主机记录ID
        # @type DeviceId: Integer
        # @param Account: 账号名
        # @type Account: String

        attr_accessor :DeviceId, :Account

        def initialize(deviceid=nil, account=nil)
          @DeviceId = deviceid
          @Account = account
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @Account = params['Account']
        end
      end

      # CreateDeviceAccount返回参数结构体
      class CreateDeviceAccountResponse < TencentCloud::Common::AbstractModel
        # @param Id: 新建成功后返回的记录ID
        # @type Id: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :RequestId

        def initialize(id=nil, requestid=nil)
          @Id = id
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @RequestId = params['RequestId']
        end
      end

      # CreateDeviceGroup请求参数结构体
      class CreateDeviceGroupRequest < TencentCloud::Common::AbstractModel
        # @param Name: 资产组名，最大长度32字符
        # @type Name: String
        # @param DepartmentId: 资产组所属部门ID，如：1.2.3
        # @type DepartmentId: String

        attr_accessor :Name, :DepartmentId

        def initialize(name=nil, departmentid=nil)
          @Name = name
          @DepartmentId = departmentid
        end

        def deserialize(params)
          @Name = params['Name']
          @DepartmentId = params['DepartmentId']
        end
      end

      # CreateDeviceGroup返回参数结构体
      class CreateDeviceGroupResponse < TencentCloud::Common::AbstractModel
        # @param Id: 新建成功的资产组ID
        # @type Id: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :RequestId

        def initialize(id=nil, requestid=nil)
          @Id = id
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @RequestId = params['RequestId']
        end
      end

      # CreateOperationTask请求参数结构体
      class CreateOperationTaskRequest < TencentCloud::Common::AbstractModel
        # @param Name: 运维任务名称
        # @type Name: String
        # @param Type: 运维任务类型,1 - 手工执行, 2 - 周期性自动执行
        # @type Type: Integer
        # @param Account: 执行账号
        # @type Account: String
        # @param Timeout: 超时时间,单位秒
        # @type Timeout: Integer
        # @param Script: 执行脚本内容
        # @type Script: String
        # @param DeviceIdSet: 执行主机集合，满足条件以下三个条件：1. 资产绑定可用的专业版或国密版堡垒机服务；2、资产类型为linux资产；3、用户具有资产权限，且资产添加了指定执行账号
        # @type DeviceIdSet: Array
        # @param Period: 执行间隔，单位天. 手工执行时无需传入
        # @type Period: Integer
        # @param FirstTime: 首次执行日期 默认1970-01-01T08:00:01+08:00,手工执行时无需传入
        # @type FirstTime: String
        # @param Encoding: Script参数是否需要进行base64编码后传递，1-需要进行base64编码后传递，非1值-不需要进行base64编码后传递
        # @type Encoding: Integer

        attr_accessor :Name, :Type, :Account, :Timeout, :Script, :DeviceIdSet, :Period, :FirstTime, :Encoding

        def initialize(name=nil, type=nil, account=nil, timeout=nil, script=nil, deviceidset=nil, period=nil, firsttime=nil, encoding=nil)
          @Name = name
          @Type = type
          @Account = account
          @Timeout = timeout
          @Script = script
          @DeviceIdSet = deviceidset
          @Period = period
          @FirstTime = firsttime
          @Encoding = encoding
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @Account = params['Account']
          @Timeout = params['Timeout']
          @Script = params['Script']
          @DeviceIdSet = params['DeviceIdSet']
          @Period = params['Period']
          @FirstTime = params['FirstTime']
          @Encoding = params['Encoding']
        end
      end

      # CreateOperationTask返回参数结构体
      class CreateOperationTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 运维任务ID
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateResource请求参数结构体
      class CreateResourceRequest < TencentCloud::Common::AbstractModel
        # @param DeployRegion: 部署region
        # @type DeployRegion: String
        # @param VpcId: 部署堡垒机的VpcId
        # @type VpcId: String
        # @param SubnetId: 部署堡垒机的SubnetId
        # @type SubnetId: String
        # @param ResourceEdition: 资源类型。取值:standard/pro
        # @type ResourceEdition: String
        # @param ResourceNode: 资源节点数
        # @type ResourceNode: Integer
        # @param TimeUnit: 计费周期
        # @type TimeUnit: String
        # @param TimeSpan: 计费时长
        # @type TimeSpan: Integer
        # @param PayMode: 计费模式 1预付费
        # @type PayMode: Integer
        # @param AutoRenewFlag: 自动续费
        # @type AutoRenewFlag: Integer
        # @param DeployZone: 部署zone
        # @type DeployZone: String
        # @param Trial: 0非试用版，1试用版
        # @type Trial: Integer
        # @param ShareClb: 是否共享clb，0：不共享，1：共享
        # @type ShareClb: Integer

        attr_accessor :DeployRegion, :VpcId, :SubnetId, :ResourceEdition, :ResourceNode, :TimeUnit, :TimeSpan, :PayMode, :AutoRenewFlag, :DeployZone, :Trial, :ShareClb

        def initialize(deployregion=nil, vpcid=nil, subnetid=nil, resourceedition=nil, resourcenode=nil, timeunit=nil, timespan=nil, paymode=nil, autorenewflag=nil, deployzone=nil, trial=nil, shareclb=nil)
          @DeployRegion = deployregion
          @VpcId = vpcid
          @SubnetId = subnetid
          @ResourceEdition = resourceedition
          @ResourceNode = resourcenode
          @TimeUnit = timeunit
          @TimeSpan = timespan
          @PayMode = paymode
          @AutoRenewFlag = autorenewflag
          @DeployZone = deployzone
          @Trial = trial
          @ShareClb = shareclb
        end

        def deserialize(params)
          @DeployRegion = params['DeployRegion']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @ResourceEdition = params['ResourceEdition']
          @ResourceNode = params['ResourceNode']
          @TimeUnit = params['TimeUnit']
          @TimeSpan = params['TimeSpan']
          @PayMode = params['PayMode']
          @AutoRenewFlag = params['AutoRenewFlag']
          @DeployZone = params['DeployZone']
          @Trial = params['Trial']
          @ShareClb = params['ShareClb']
        end
      end

      # CreateResource返回参数结构体
      class CreateResourceResponse < TencentCloud::Common::AbstractModel
        # @param ResourceId: 实例Id
        # @type ResourceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceId, :RequestId

        def initialize(resourceid=nil, requestid=nil)
          @ResourceId = resourceid
          @RequestId = requestid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @RequestId = params['RequestId']
        end
      end

      # CreateUserGroup请求参数结构体
      class CreateUserGroupRequest < TencentCloud::Common::AbstractModel
        # @param Name: 用户组名，最大长度32字符
        # @type Name: String
        # @param DepartmentId: 用户组所属部门的ID，如：1.2.3
        # @type DepartmentId: String

        attr_accessor :Name, :DepartmentId

        def initialize(name=nil, departmentid=nil)
          @Name = name
          @DepartmentId = departmentid
        end

        def deserialize(params)
          @Name = params['Name']
          @DepartmentId = params['DepartmentId']
        end
      end

      # CreateUserGroup返回参数结构体
      class CreateUserGroupResponse < TencentCloud::Common::AbstractModel
        # @param Id: 新建成功的用户组ID
        # @type Id: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :RequestId

        def initialize(id=nil, requestid=nil)
          @Id = id
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @RequestId = params['RequestId']
        end
      end

      # CreateUser请求参数结构体
      class CreateUserRequest < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名, 3-20个字符, 必须以英文字母开头，且不能包含字母、数字、.、_、-以外的字符
        # @type UserName: String
        # @param RealName: 用户姓名，最大长度20个字符，不能包含空白字符
        # @type RealName: String
        # @param Phone: 按照"国家地区代码|手机号"的格式输入，如: "+86|xxxxxxxx"。手机号和邮箱参数至少传一项
        # @type Phone: String
        # @param Email: 电子邮件。手机号和邮箱参数至少传一项
        # @type Email: String
        # @param ValidateFrom: 用户生效时间，如:"2021-09-22T00:00:00+00:00"
        # 生效、失效时间不填则用户长期有效
        # @type ValidateFrom: String
        # @param ValidateTo: 用户失效时间，如:"2021-09-23T00:00:00+00:00"
        # 生效、失效时间不填则用户长期有效
        # @type ValidateTo: String
        # @param GroupIdSet: 所属用户组ID集合
        # @type GroupIdSet: Array
        # @param AuthType: 认证方式，0 - 本地， 1 - LDAP， 2 - OAuth 不传则默认为0
        # @type AuthType: Integer
        # @param ValidateTime: 访问时间段限制， 由0、1组成的字符串，长度168(7 × 24)，代表该用户在一周中允许访问的时间段。字符串中第N个字符代表在一周中的第N个小时， 0 - 代表不允许访问，1 - 代表允许访问
        # @type ValidateTime: String
        # @param DepartmentId: 所属部门ID，如：“1.2.3”
        # @type DepartmentId: String

        attr_accessor :UserName, :RealName, :Phone, :Email, :ValidateFrom, :ValidateTo, :GroupIdSet, :AuthType, :ValidateTime, :DepartmentId

        def initialize(username=nil, realname=nil, phone=nil, email=nil, validatefrom=nil, validateto=nil, groupidset=nil, authtype=nil, validatetime=nil, departmentid=nil)
          @UserName = username
          @RealName = realname
          @Phone = phone
          @Email = email
          @ValidateFrom = validatefrom
          @ValidateTo = validateto
          @GroupIdSet = groupidset
          @AuthType = authtype
          @ValidateTime = validatetime
          @DepartmentId = departmentid
        end

        def deserialize(params)
          @UserName = params['UserName']
          @RealName = params['RealName']
          @Phone = params['Phone']
          @Email = params['Email']
          @ValidateFrom = params['ValidateFrom']
          @ValidateTo = params['ValidateTo']
          @GroupIdSet = params['GroupIdSet']
          @AuthType = params['AuthType']
          @ValidateTime = params['ValidateTime']
          @DepartmentId = params['DepartmentId']
        end
      end

      # CreateUser返回参数结构体
      class CreateUserResponse < TencentCloud::Common::AbstractModel
        # @param Id: 新建用户的ID
        # @type Id: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :RequestId

        def initialize(id=nil, requestid=nil)
          @Id = id
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @RequestId = params['RequestId']
        end
      end

      # DeleteAccessWhiteListRules请求参数结构体
      class DeleteAccessWhiteListRulesRequest < TencentCloud::Common::AbstractModel
        # @param IdSet: 待删除的ID集合
        # @type IdSet: Array

        attr_accessor :IdSet

        def initialize(idset=nil)
          @IdSet = idset
        end

        def deserialize(params)
          @IdSet = params['IdSet']
        end
      end

      # DeleteAccessWhiteListRules返回参数结构体
      class DeleteAccessWhiteListRulesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAcls请求参数结构体
      class DeleteAclsRequest < TencentCloud::Common::AbstractModel
        # @param IdSet: 待删除的权限ID集合
        # @type IdSet: Array

        attr_accessor :IdSet

        def initialize(idset=nil)
          @IdSet = idset
        end

        def deserialize(params)
          @IdSet = params['IdSet']
        end
      end

      # DeleteAcls返回参数结构体
      class DeleteAclsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteChangePwdTask请求参数结构体
      class DeleteChangePwdTaskRequest < TencentCloud::Common::AbstractModel
        # @param IdSet: 改密任务id列表
        # @type IdSet: Array

        attr_accessor :IdSet

        def initialize(idset=nil)
          @IdSet = idset
        end

        def deserialize(params)
          @IdSet = params['IdSet']
        end
      end

      # DeleteChangePwdTask返回参数结构体
      class DeleteChangePwdTaskResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCmdTemplates请求参数结构体
      class DeleteCmdTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param IdSet: 待删除的ID集合
        # @type IdSet: Array

        attr_accessor :IdSet

        def initialize(idset=nil)
          @IdSet = idset
        end

        def deserialize(params)
          @IdSet = params['IdSet']
        end
      end

      # DeleteCmdTemplates返回参数结构体
      class DeleteCmdTemplatesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDeviceAccounts请求参数结构体
      class DeleteDeviceAccountsRequest < TencentCloud::Common::AbstractModel
        # @param IdSet: 待删除的ID集合
        # @type IdSet: Array

        attr_accessor :IdSet

        def initialize(idset=nil)
          @IdSet = idset
        end

        def deserialize(params)
          @IdSet = params['IdSet']
        end
      end

      # DeleteDeviceAccounts返回参数结构体
      class DeleteDeviceAccountsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDeviceGroupMembers请求参数结构体
      class DeleteDeviceGroupMembersRequest < TencentCloud::Common::AbstractModel
        # @param Id: 资产组ID
        # @type Id: Integer
        # @param MemberIdSet: 需要删除的资产ID集合
        # @type MemberIdSet: Array

        attr_accessor :Id, :MemberIdSet

        def initialize(id=nil, memberidset=nil)
          @Id = id
          @MemberIdSet = memberidset
        end

        def deserialize(params)
          @Id = params['Id']
          @MemberIdSet = params['MemberIdSet']
        end
      end

      # DeleteDeviceGroupMembers返回参数结构体
      class DeleteDeviceGroupMembersResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDeviceGroups请求参数结构体
      class DeleteDeviceGroupsRequest < TencentCloud::Common::AbstractModel
        # @param IdSet: 待删除的资产组ID集合
        # @type IdSet: Array

        attr_accessor :IdSet

        def initialize(idset=nil)
          @IdSet = idset
        end

        def deserialize(params)
          @IdSet = params['IdSet']
        end
      end

      # DeleteDeviceGroups返回参数结构体
      class DeleteDeviceGroupsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDevices请求参数结构体
      class DeleteDevicesRequest < TencentCloud::Common::AbstractModel
        # @param IdSet: 待删除的ID集合
        # @type IdSet: Array

        attr_accessor :IdSet

        def initialize(idset=nil)
          @IdSet = idset
        end

        def deserialize(params)
          @IdSet = params['IdSet']
        end
      end

      # DeleteDevices返回参数结构体
      class DeleteDevicesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteOperationTasks请求参数结构体
      class DeleteOperationTasksRequest < TencentCloud::Common::AbstractModel
        # @param IdSet: 运维任务ID集合
        # @type IdSet: Array

        attr_accessor :IdSet

        def initialize(idset=nil)
          @IdSet = idset
        end

        def deserialize(params)
          @IdSet = params['IdSet']
        end
      end

      # DeleteOperationTasks返回参数结构体
      class DeleteOperationTasksResponse < TencentCloud::Common::AbstractModel
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

      # DeleteUserGroupMembers请求参数结构体
      class DeleteUserGroupMembersRequest < TencentCloud::Common::AbstractModel
        # @param Id: 用户组ID
        # @type Id: Integer
        # @param MemberIdSet: 需删除的成员用户ID集合
        # @type MemberIdSet: Array

        attr_accessor :Id, :MemberIdSet

        def initialize(id=nil, memberidset=nil)
          @Id = id
          @MemberIdSet = memberidset
        end

        def deserialize(params)
          @Id = params['Id']
          @MemberIdSet = params['MemberIdSet']
        end
      end

      # DeleteUserGroupMembers返回参数结构体
      class DeleteUserGroupMembersResponse < TencentCloud::Common::AbstractModel
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

      # DeleteUserGroups请求参数结构体
      class DeleteUserGroupsRequest < TencentCloud::Common::AbstractModel
        # @param IdSet: 待删除的用户组ID集合
        # @type IdSet: Array

        attr_accessor :IdSet

        def initialize(idset=nil)
          @IdSet = idset
        end

        def deserialize(params)
          @IdSet = params['IdSet']
        end
      end

      # DeleteUserGroups返回参数结构体
      class DeleteUserGroupsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteUsers请求参数结构体
      class DeleteUsersRequest < TencentCloud::Common::AbstractModel
        # @param IdSet: 待删除的用户ID集合
        # @type IdSet: Array

        attr_accessor :IdSet

        def initialize(idset=nil)
          @IdSet = idset
        end

        def deserialize(params)
          @IdSet = params['IdSet']
        end
      end

      # DeleteUsers返回参数结构体
      class DeleteUsersResponse < TencentCloud::Common::AbstractModel
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

      # 部门信息
      class Department < TencentCloud::Common::AbstractModel
        # @param Id: 部门ID
        # @type Id: String
        # @param Name: 部门名称，1 - 256个字符
        # @type Name: String
        # @param Managers: 部门管理员账号ID
        # @type Managers: Array
        # @param ManagerUsers: 管理员用户
        # @type ManagerUsers: Array

        attr_accessor :Id, :Name, :Managers, :ManagerUsers

        def initialize(id=nil, name=nil, managers=nil, managerusers=nil)
          @Id = id
          @Name = name
          @Managers = managers
          @ManagerUsers = managerusers
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Managers = params['Managers']
          unless params['ManagerUsers'].nil?
            @ManagerUsers = []
            params['ManagerUsers'].each do |i|
              departmentmanageruser_tmp = DepartmentManagerUser.new
              departmentmanageruser_tmp.deserialize(i)
              @ManagerUsers << departmentmanageruser_tmp
            end
          end
        end
      end

      # 部门管理员信息
      class DepartmentManagerUser < TencentCloud::Common::AbstractModel
        # @param ManagerId: 管理员Id
        # @type ManagerId: String
        # @param ManagerName: 管理员姓名
        # @type ManagerName: String

        attr_accessor :ManagerId, :ManagerName

        def initialize(managerid=nil, managername=nil)
          @ManagerId = managerid
          @ManagerName = managername
        end

        def deserialize(params)
          @ManagerId = params['ManagerId']
          @ManagerName = params['ManagerName']
        end
      end

      # DeployResource请求参数结构体
      class DeployResourceRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 需要开通服务的资源ID
        # @type ResourceId: String
        # @param ApCode: 需要开通服务的地域
        # @type ApCode: String
        # @param Zone: 子网所在可用区
        # @type Zone: String
        # @param VpcId: 需要开通服务的VPC
        # @type VpcId: String
        # @param SubnetId: 需要开通服务的子网ID
        # @type SubnetId: String
        # @param CidrBlock: 需要开通服务的子网网段
        # @type CidrBlock: String
        # @param VpcName: 需要开通服务的VPC名称
        # @type VpcName: String
        # @param VpcCidrBlock: 需要开通服务的VPC对应的网段
        # @type VpcCidrBlock: String
        # @param SubnetName: 需要开通服务的子网名称
        # @type SubnetName: String
        # @param CdcClusterId: 需要开通实例所属的CDC集群ID
        # @type CdcClusterId: String
        # @param ShareClbId: 开通堡垒机指定共享的clbId
        # @type ShareClbId: String
        # @param WebAccess: 0-关闭web访问堡垒机，1-开启web访问堡垒机
        # @type WebAccess: Integer
        # @param ClientAccess: 0-关闭客户端访问堡垒机，1-开启客户端访问堡垒机
        # @type ClientAccess: Integer
        # @param IntranetAccess: 0-关闭内网访问堡垒机，1-开启内网访问堡垒机
        # @type IntranetAccess: Integer
        # @param ExternalAccess: 0-关闭公网访问堡垒机，1-开启公网访问堡垒机
        # @type ExternalAccess: Integer

        attr_accessor :ResourceId, :ApCode, :Zone, :VpcId, :SubnetId, :CidrBlock, :VpcName, :VpcCidrBlock, :SubnetName, :CdcClusterId, :ShareClbId, :WebAccess, :ClientAccess, :IntranetAccess, :ExternalAccess

        def initialize(resourceid=nil, apcode=nil, zone=nil, vpcid=nil, subnetid=nil, cidrblock=nil, vpcname=nil, vpccidrblock=nil, subnetname=nil, cdcclusterid=nil, shareclbid=nil, webaccess=nil, clientaccess=nil, intranetaccess=nil, externalaccess=nil)
          @ResourceId = resourceid
          @ApCode = apcode
          @Zone = zone
          @VpcId = vpcid
          @SubnetId = subnetid
          @CidrBlock = cidrblock
          @VpcName = vpcname
          @VpcCidrBlock = vpccidrblock
          @SubnetName = subnetname
          @CdcClusterId = cdcclusterid
          @ShareClbId = shareclbid
          @WebAccess = webaccess
          @ClientAccess = clientaccess
          @IntranetAccess = intranetaccess
          @ExternalAccess = externalaccess
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ApCode = params['ApCode']
          @Zone = params['Zone']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @CidrBlock = params['CidrBlock']
          @VpcName = params['VpcName']
          @VpcCidrBlock = params['VpcCidrBlock']
          @SubnetName = params['SubnetName']
          @CdcClusterId = params['CdcClusterId']
          @ShareClbId = params['ShareClbId']
          @WebAccess = params['WebAccess']
          @ClientAccess = params['ClientAccess']
          @IntranetAccess = params['IntranetAccess']
          @ExternalAccess = params['ExternalAccess']
        end
      end

      # DeployResource返回参数结构体
      class DeployResourceResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAccessWhiteListRules请求参数结构体
      class DescribeAccessWhiteListRulesRequest < TencentCloud::Common::AbstractModel
        # @param IdSet: 用户ID集合，非必需，如果使用IdSet参数则忽略Name参数
        # @type IdSet: Array
        # @param Name: 来源IP或网段，模糊查询，最大长度64字符
        # @type Name: String
        # @param Offset: 分页偏移位置，默认0
        # @type Offset: Integer
        # @param Limit: 每页条目数量，默认20
        # @type Limit: Integer

        attr_accessor :IdSet, :Name, :Offset, :Limit

        def initialize(idset=nil, name=nil, offset=nil, limit=nil)
          @IdSet = idset
          @Name = name
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @IdSet = params['IdSet']
          @Name = params['Name']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAccessWhiteListRules返回参数结构体
      class DescribeAccessWhiteListRulesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录总数
        # @type TotalCount: Integer
        # @param AccessWhiteListRuleSet: 访问白名单规则列表
        # @type AccessWhiteListRuleSet: Array
        # @param AllowAny: 是否放开全部来源IP，如果为true，TotalCount为0，AccessWhiteListRuleSet为空
        # @type AllowAny: Boolean
        # @param AllowAuto: 是否开启自动添加来源IP, 如果为true, 在开启访问白名单的情况下将自动添加来源IP
        # @type AllowAuto: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AccessWhiteListRuleSet, :AllowAny, :AllowAuto, :RequestId

        def initialize(totalcount=nil, accesswhitelistruleset=nil, allowany=nil, allowauto=nil, requestid=nil)
          @TotalCount = totalcount
          @AccessWhiteListRuleSet = accesswhitelistruleset
          @AllowAny = allowany
          @AllowAuto = allowauto
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AccessWhiteListRuleSet'].nil?
            @AccessWhiteListRuleSet = []
            params['AccessWhiteListRuleSet'].each do |i|
              accesswhitelistrule_tmp = AccessWhiteListRule.new
              accesswhitelistrule_tmp.deserialize(i)
              @AccessWhiteListRuleSet << accesswhitelistrule_tmp
            end
          end
          @AllowAny = params['AllowAny']
          @AllowAuto = params['AllowAuto']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAcls请求参数结构体
      class DescribeAclsRequest < TencentCloud::Common::AbstractModel
        # @param IdSet: 访问权限ID集合
        # @type IdSet: Array
        # @param Name: 访问权限名称，模糊查询，最长64字符
        # @type Name: String
        # @param Offset: 分页偏移位置，默认值为0
        # @type Offset: Integer
        # @param Limit: 每页条目数量，默认20，最大500
        # @type Limit: Integer
        # @param Exact: 是否根据Name进行精确查询，默认值false
        # @type Exact: Boolean
        # @param AuthorizedUserIdSet: 有访问权限的用户ID集合
        # @type AuthorizedUserIdSet: Array
        # @param AuthorizedDeviceIdSet: 有访问权限的资产ID集合
        # @type AuthorizedDeviceIdSet: Array
        # @param AuthorizedAppAssetIdSet: 有访问权限的应用资产ID集合
        # @type AuthorizedAppAssetIdSet: Array
        # @param Status: 访问权限状态，1 - 已生效，2 - 未生效，3 - 已过期
        # @type Status: Integer
        # @param DepartmentId: 部门ID，用于过滤属于某个部门的访问权限
        # @type DepartmentId: String
        # @param ExactAccount: 是否根据AuthorizedDeviceIdSet,对资产账号进行精确匹配，默认false, 设置true时，确保AuthorizedDeviceIdSet只有一个元素
        # @type ExactAccount: Boolean
        # @param Filters: 过滤数组
        # @type Filters: Array

        attr_accessor :IdSet, :Name, :Offset, :Limit, :Exact, :AuthorizedUserIdSet, :AuthorizedDeviceIdSet, :AuthorizedAppAssetIdSet, :Status, :DepartmentId, :ExactAccount, :Filters

        def initialize(idset=nil, name=nil, offset=nil, limit=nil, exact=nil, authorizeduseridset=nil, authorizeddeviceidset=nil, authorizedappassetidset=nil, status=nil, departmentid=nil, exactaccount=nil, filters=nil)
          @IdSet = idset
          @Name = name
          @Offset = offset
          @Limit = limit
          @Exact = exact
          @AuthorizedUserIdSet = authorizeduseridset
          @AuthorizedDeviceIdSet = authorizeddeviceidset
          @AuthorizedAppAssetIdSet = authorizedappassetidset
          @Status = status
          @DepartmentId = departmentid
          @ExactAccount = exactaccount
          @Filters = filters
        end

        def deserialize(params)
          @IdSet = params['IdSet']
          @Name = params['Name']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Exact = params['Exact']
          @AuthorizedUserIdSet = params['AuthorizedUserIdSet']
          @AuthorizedDeviceIdSet = params['AuthorizedDeviceIdSet']
          @AuthorizedAppAssetIdSet = params['AuthorizedAppAssetIdSet']
          @Status = params['Status']
          @DepartmentId = params['DepartmentId']
          @ExactAccount = params['ExactAccount']
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

      # DescribeAcls返回参数结构体
      class DescribeAclsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 访问权限总数
        # @type TotalCount: Integer
        # @param AclSet: 访问权限列表
        # @type AclSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AclSet, :RequestId

        def initialize(totalcount=nil, aclset=nil, requestid=nil)
          @TotalCount = totalcount
          @AclSet = aclset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AclSet'].nil?
            @AclSet = []
            params['AclSet'].each do |i|
              acl_tmp = Acl.new
              acl_tmp.deserialize(i)
              @AclSet << acl_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAssetSyncStatus请求参数结构体
      class DescribeAssetSyncStatusRequest < TencentCloud::Common::AbstractModel
        # @param Category: 查询的资产同步类型。1 -主机资产， 2 - 数据库资产
        # @type Category: Integer

        attr_accessor :Category

        def initialize(category=nil)
          @Category = category
        end

        def deserialize(params)
          @Category = params['Category']
        end
      end

      # DescribeAssetSyncStatus返回参数结构体
      class DescribeAssetSyncStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 资产同步结果
        # @type Status: :class:`Tencentcloud::Bh.v20230418.models.AssetSyncStatus`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId

        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Status'].nil?
            @Status = AssetSyncStatus.new
            @Status.deserialize(params['Status'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeChangePwdTaskDetail请求参数结构体
      class DescribeChangePwdTaskDetailRequest < TencentCloud::Common::AbstractModel
        # @param OperationId: 改密任务Id
        # @type OperationId: String
        # @param DepartmentId: 所属部门ID，如：“1.2.3”
        # @type DepartmentId: String
        # @param Filters: 过滤数组，支持：InstanceId 资产ID，DeviceName 资产名称，Ip 内外IP，Account 资产账号，LastChangeStatus 上次改密状态。
        # @type Filters: Array
        # @param Offset: 分页偏移位置，默认0
        # @type Offset: Integer
        # @param Limit: 每页条目。默认20
        # @type Limit: Integer

        attr_accessor :OperationId, :DepartmentId, :Filters, :Offset, :Limit

        def initialize(operationid=nil, departmentid=nil, filters=nil, offset=nil, limit=nil)
          @OperationId = operationid
          @DepartmentId = departmentid
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @OperationId = params['OperationId']
          @DepartmentId = params['DepartmentId']
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
        end
      end

      # DescribeChangePwdTaskDetail返回参数结构体
      class DescribeChangePwdTaskDetailResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param Details: 任务详情
        # @type Details: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Details, :RequestId

        def initialize(totalcount=nil, details=nil, requestid=nil)
          @TotalCount = totalcount
          @Details = details
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              changepwdtaskdetail_tmp = ChangePwdTaskDetail.new
              changepwdtaskdetail_tmp.deserialize(i)
              @Details << changepwdtaskdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeChangePwdTask请求参数结构体
      class DescribeChangePwdTaskRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤数组。过滤数组。Name支持以下值: OperationId 任务ID TaskName 任务名
        # @type Filters: Array
        # @param DepartmentId: 所属部门ID
        # @type DepartmentId: String
        # @param Offset: 分页偏移量，默认0
        # @type Offset: Integer
        # @param Limit: 每页条目数量，默认20
        # @type Limit: Integer

        attr_accessor :Filters, :DepartmentId, :Offset, :Limit

        def initialize(filters=nil, departmentid=nil, offset=nil, limit=nil)
          @Filters = filters
          @DepartmentId = departmentid
          @Offset = offset
          @Limit = limit
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
          @DepartmentId = params['DepartmentId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeChangePwdTask返回参数结构体
      class DescribeChangePwdTaskResponse < TencentCloud::Common::AbstractModel
        # @param Tasks: 任务详情
        # @type Tasks: Array
        # @param TotalCount: 任务总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Tasks, :TotalCount, :RequestId

        def initialize(tasks=nil, totalcount=nil, requestid=nil)
          @Tasks = tasks
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              changepwdtaskinfo_tmp = ChangePwdTaskInfo.new
              changepwdtaskinfo_tmp.deserialize(i)
              @Tasks << changepwdtaskinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCmdTemplates请求参数结构体
      class DescribeCmdTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param IdSet: 命令模板ID集合，非必需
        # @type IdSet: Array
        # @param Name: 命令模板名，模糊查询，最大长度64字符
        # @type Name: String
        # @param Type: 命令模板类型 1-内置模板 2-自定义模板
        # @type Type: Integer
        # @param Offset: 分页偏移位置，默认值为0
        # @type Offset: Integer
        # @param Limit: 每页条目数量，默认20
        # @type Limit: Integer

        attr_accessor :IdSet, :Name, :Type, :Offset, :Limit

        def initialize(idset=nil, name=nil, type=nil, offset=nil, limit=nil)
          @IdSet = idset
          @Name = name
          @Type = type
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @IdSet = params['IdSet']
          @Name = params['Name']
          @Type = params['Type']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeCmdTemplates返回参数结构体
      class DescribeCmdTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param CmdTemplateSet: 命令模板列表
        # @type CmdTemplateSet: Array
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CmdTemplateSet, :TotalCount, :RequestId

        def initialize(cmdtemplateset=nil, totalcount=nil, requestid=nil)
          @CmdTemplateSet = cmdtemplateset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CmdTemplateSet'].nil?
            @CmdTemplateSet = []
            params['CmdTemplateSet'].each do |i|
              cmdtemplate_tmp = CmdTemplate.new
              cmdtemplate_tmp.deserialize(i)
              @CmdTemplateSet << cmdtemplate_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceAccounts请求参数结构体
      class DescribeDeviceAccountsRequest < TencentCloud::Common::AbstractModel
        # @param IdSet: 主机账号ID集合，非必需，如果使用IdSet则忽略其他过滤参数
        # @type IdSet: Array
        # @param Account: 主机账号名，模糊查询，不能单独出现，必须于DeviceId一起提交
        # @type Account: String
        # @param DeviceId: 主机ID，未使用IdSet时必须携带
        # @type DeviceId: Integer
        # @param Offset: 分页偏移位置，默认值为0
        # @type Offset: Integer
        # @param Limit: 每页条目数量，默认20
        # @type Limit: Integer

        attr_accessor :IdSet, :Account, :DeviceId, :Offset, :Limit

        def initialize(idset=nil, account=nil, deviceid=nil, offset=nil, limit=nil)
          @IdSet = idset
          @Account = account
          @DeviceId = deviceid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @IdSet = params['IdSet']
          @Account = params['Account']
          @DeviceId = params['DeviceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeDeviceAccounts返回参数结构体
      class DescribeDeviceAccountsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录总数
        # @type TotalCount: Integer
        # @param DeviceAccountSet: 账号信息列表
        # @type DeviceAccountSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DeviceAccountSet, :RequestId

        def initialize(totalcount=nil, deviceaccountset=nil, requestid=nil)
          @TotalCount = totalcount
          @DeviceAccountSet = deviceaccountset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DeviceAccountSet'].nil?
            @DeviceAccountSet = []
            params['DeviceAccountSet'].each do |i|
              deviceaccount_tmp = DeviceAccount.new
              deviceaccount_tmp.deserialize(i)
              @DeviceAccountSet << deviceaccount_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceGroupMembers请求参数结构体
      class DescribeDeviceGroupMembersRequest < TencentCloud::Common::AbstractModel
        # @param Bound: true - 查询已在该资产组的资产，false - 查询未在该资产组的资产
        # @type Bound: Boolean
        # @param Id: 资产组ID，Id和IdSet二选一
        # @type Id: Integer
        # @param IdSet: 资产组ID集合，传Id，IdSet不生效。
        # @type IdSet: Array
        # @param Name: 资产名或资产IP，模糊查询
        # @type Name: String
        # @param Offset: 分页偏移位置，默认值为0
        # @type Offset: Integer
        # @param Limit: 每页条目数，默认20, 最大500
        # @type Limit: Integer
        # @param Kind: 资产类型，1 - Linux，2 - Windows，3 - MySQL，4 - SQLServer
        # @type Kind: Integer
        # @param KindSet: 资产类型集合，1 - Linux，2 - Windows，3 - MySQL，4 - SQLServer
        # @type KindSet: Array
        # @param DepartmentId: 所属部门ID
        # @type DepartmentId: String
        # @param TagFilters: 过滤条件，可按照标签键、标签进行过滤。如果同时指定标签键和标签过滤条件，它们之间为“AND”的关系
        # @type TagFilters: Array

        attr_accessor :Bound, :Id, :IdSet, :Name, :Offset, :Limit, :Kind, :KindSet, :DepartmentId, :TagFilters

        def initialize(bound=nil, id=nil, idset=nil, name=nil, offset=nil, limit=nil, kind=nil, kindset=nil, departmentid=nil, tagfilters=nil)
          @Bound = bound
          @Id = id
          @IdSet = idset
          @Name = name
          @Offset = offset
          @Limit = limit
          @Kind = kind
          @KindSet = kindset
          @DepartmentId = departmentid
          @TagFilters = tagfilters
        end

        def deserialize(params)
          @Bound = params['Bound']
          @Id = params['Id']
          @IdSet = params['IdSet']
          @Name = params['Name']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Kind = params['Kind']
          @KindSet = params['KindSet']
          @DepartmentId = params['DepartmentId']
          unless params['TagFilters'].nil?
            @TagFilters = []
            params['TagFilters'].each do |i|
              tagfilter_tmp = TagFilter.new
              tagfilter_tmp.deserialize(i)
              @TagFilters << tagfilter_tmp
            end
          end
        end
      end

      # DescribeDeviceGroupMembers返回参数结构体
      class DescribeDeviceGroupMembersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 资产组成员总数
        # @type TotalCount: Integer
        # @param DeviceSet: 资产组成员列表
        # @type DeviceSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DeviceSet, :RequestId

        def initialize(totalcount=nil, deviceset=nil, requestid=nil)
          @TotalCount = totalcount
          @DeviceSet = deviceset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DeviceSet'].nil?
            @DeviceSet = []
            params['DeviceSet'].each do |i|
              device_tmp = Device.new
              device_tmp.deserialize(i)
              @DeviceSet << device_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceGroups请求参数结构体
      class DescribeDeviceGroupsRequest < TencentCloud::Common::AbstractModel
        # @param IdSet: 资产组ID集合
        # @type IdSet: Array
        # @param Name: 资产组名，最长64个字符，模糊查询
        # @type Name: String
        # @param Offset: 分页偏移位置，默认值为0
        # @type Offset: Integer
        # @param Limit: 每页条目数量，缺省20，最大500
        # @type Limit: Integer
        # @param DepartmentId: 部门ID，用于过滤属于某个部门的资产组
        # @type DepartmentId: String

        attr_accessor :IdSet, :Name, :Offset, :Limit, :DepartmentId

        def initialize(idset=nil, name=nil, offset=nil, limit=nil, departmentid=nil)
          @IdSet = idset
          @Name = name
          @Offset = offset
          @Limit = limit
          @DepartmentId = departmentid
        end

        def deserialize(params)
          @IdSet = params['IdSet']
          @Name = params['Name']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @DepartmentId = params['DepartmentId']
        end
      end

      # DescribeDeviceGroups返回参数结构体
      class DescribeDeviceGroupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 资产组总数
        # @type TotalCount: Integer
        # @param GroupSet: 资产组列表
        # @type GroupSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :GroupSet, :RequestId

        def initialize(totalcount=nil, groupset=nil, requestid=nil)
          @TotalCount = totalcount
          @GroupSet = groupset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['GroupSet'].nil?
            @GroupSet = []
            params['GroupSet'].each do |i|
              group_tmp = Group.new
              group_tmp.deserialize(i)
              @GroupSet << group_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDevices请求参数结构体
      class DescribeDevicesRequest < TencentCloud::Common::AbstractModel
        # @param IdSet: 资产ID集合
        # @type IdSet: Array
        # @param Name: 资产名或资产IP，模糊查询
        # @type Name: String
        # @param Ip: 暂未使用
        # @type Ip: String
        # @param ApCodeSet: 地域码集合
        # @type ApCodeSet: Array
        # @param Kind: 操作系统类型, 1 - Linux, 2 - Windows, 3 - MySQL, 4 - SQLServer
        # @type Kind: Integer
        # @param Offset: 分页偏移位置，默认值为0
        # @type Offset: Integer
        # @param Limit: 每页条目数量，默认20
        # @type Limit: Integer
        # @param AuthorizedUserIdSet: 有该资产访问权限的用户ID集合
        # @type AuthorizedUserIdSet: Array
        # @param ResourceIdSet: 过滤条件，资产绑定的堡垒机服务ID集合
        # @type ResourceIdSet: Array
        # @param KindSet: 可提供按照多种类型过滤, 1 - Linux, 2 - Windows, 3 - MySQL, 4 - SQLServer
        # @type KindSet: Array
        # @param ManagedAccount: 资产是否包含托管账号。1，包含；0，不包含
        # @type ManagedAccount: String
        # @param DepartmentId: 过滤条件，可按照部门ID进行过滤
        # @type DepartmentId: String
        # @param TagFilters: 过滤条件，可按照标签键、标签进行过滤。如果同时指定标签键和标签过滤条件，它们之间为“AND”的关系
        # @type TagFilters: Array
        # @param Filters: 过滤数组。支持的Name：
        # BindingStatus 绑定状态
        # @type Filters: Array

        attr_accessor :IdSet, :Name, :Ip, :ApCodeSet, :Kind, :Offset, :Limit, :AuthorizedUserIdSet, :ResourceIdSet, :KindSet, :ManagedAccount, :DepartmentId, :TagFilters, :Filters

        def initialize(idset=nil, name=nil, ip=nil, apcodeset=nil, kind=nil, offset=nil, limit=nil, authorizeduseridset=nil, resourceidset=nil, kindset=nil, managedaccount=nil, departmentid=nil, tagfilters=nil, filters=nil)
          @IdSet = idset
          @Name = name
          @Ip = ip
          @ApCodeSet = apcodeset
          @Kind = kind
          @Offset = offset
          @Limit = limit
          @AuthorizedUserIdSet = authorizeduseridset
          @ResourceIdSet = resourceidset
          @KindSet = kindset
          @ManagedAccount = managedaccount
          @DepartmentId = departmentid
          @TagFilters = tagfilters
          @Filters = filters
        end

        def deserialize(params)
          @IdSet = params['IdSet']
          @Name = params['Name']
          @Ip = params['Ip']
          @ApCodeSet = params['ApCodeSet']
          @Kind = params['Kind']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @AuthorizedUserIdSet = params['AuthorizedUserIdSet']
          @ResourceIdSet = params['ResourceIdSet']
          @KindSet = params['KindSet']
          @ManagedAccount = params['ManagedAccount']
          @DepartmentId = params['DepartmentId']
          unless params['TagFilters'].nil?
            @TagFilters = []
            params['TagFilters'].each do |i|
              tagfilter_tmp = TagFilter.new
              tagfilter_tmp.deserialize(i)
              @TagFilters << tagfilter_tmp
            end
          end
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

      # DescribeDevices返回参数结构体
      class DescribeDevicesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 资产总数
        # @type TotalCount: Integer
        # @param DeviceSet: 资产信息列表
        # @type DeviceSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DeviceSet, :RequestId

        def initialize(totalcount=nil, deviceset=nil, requestid=nil)
          @TotalCount = totalcount
          @DeviceSet = deviceset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DeviceSet'].nil?
            @DeviceSet = []
            params['DeviceSet'].each do |i|
              device_tmp = Device.new
              device_tmp.deserialize(i)
              @DeviceSet << device_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomains请求参数结构体
      class DescribeDomainsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 每页条目数量，默认20，最大500
        # @type Limit: Integer
        # @param Filters: 过滤数组
        # @type Filters: Array
        # @param Offset: 分页偏移位置，默认值为0
        # @type Offset: Integer

        attr_accessor :Limit, :Filters, :Offset

        def initialize(limit=nil, filters=nil, offset=nil)
          @Limit = limit
          @Filters = filters
          @Offset = offset
        end

        def deserialize(params)
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Offset = params['Offset']
        end
      end

      # DescribeDomains返回参数结构体
      class DescribeDomainsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 网络域总数
        # @type TotalCount: Integer
        # @param DomainSet: 网络域列表
        # @type DomainSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DomainSet, :RequestId

        def initialize(totalcount=nil, domainset=nil, requestid=nil)
          @TotalCount = totalcount
          @DomainSet = domainset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DomainSet'].nil?
            @DomainSet = []
            params['DomainSet'].each do |i|
              domain_tmp = Domain.new
              domain_tmp.deserialize(i)
              @DomainSet << domain_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLDAPUnitSet请求参数结构体
      class DescribeLDAPUnitSetRequest < TencentCloud::Common::AbstractModel
        # @param Enable: 是否开启LDAP认证，true-开启
        # @type Enable: Boolean
        # @param Ip: 服务器地址
        # @type Ip: String
        # @param Port: 服务端口
        # @type Port: Integer
        # @param EnableSSL: 是否开启SSL，false-不开启，true-开启
        # @type EnableSSL: Boolean
        # @param BaseDN: Base DN
        # @type BaseDN: String
        # @param AdminAccount: 管理员账号
        # @type AdminAccount: String
        # @param AdminPassword: 管理员密码
        # @type AdminPassword: String
        # @param AttributeUserName: 用户名映射属性
        # @type AttributeUserName: String
        # @param AttributeUnit: 部门过滤
        # @type AttributeUnit: String
        # @param IpBackup: 备用服务器地址
        # @type IpBackup: String
        # @param DomainId: 网络域Id
        # @type DomainId: String

        attr_accessor :Enable, :Ip, :Port, :EnableSSL, :BaseDN, :AdminAccount, :AdminPassword, :AttributeUserName, :AttributeUnit, :IpBackup, :DomainId

        def initialize(enable=nil, ip=nil, port=nil, enablessl=nil, basedn=nil, adminaccount=nil, adminpassword=nil, attributeusername=nil, attributeunit=nil, ipbackup=nil, domainid=nil)
          @Enable = enable
          @Ip = ip
          @Port = port
          @EnableSSL = enablessl
          @BaseDN = basedn
          @AdminAccount = adminaccount
          @AdminPassword = adminpassword
          @AttributeUserName = attributeusername
          @AttributeUnit = attributeunit
          @IpBackup = ipbackup
          @DomainId = domainid
        end

        def deserialize(params)
          @Enable = params['Enable']
          @Ip = params['Ip']
          @Port = params['Port']
          @EnableSSL = params['EnableSSL']
          @BaseDN = params['BaseDN']
          @AdminAccount = params['AdminAccount']
          @AdminPassword = params['AdminPassword']
          @AttributeUserName = params['AttributeUserName']
          @AttributeUnit = params['AttributeUnit']
          @IpBackup = params['IpBackup']
          @DomainId = params['DomainId']
        end
      end

      # DescribeLDAPUnitSet返回参数结构体
      class DescribeLDAPUnitSetResponse < TencentCloud::Common::AbstractModel
        # @param UnitSet: ou 列表
        # @type UnitSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UnitSet, :RequestId

        def initialize(unitset=nil, requestid=nil)
          @UnitSet = unitset
          @RequestId = requestid
        end

        def deserialize(params)
          @UnitSet = params['UnitSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoginEvent请求参数结构体
      class DescribeLoginEventRequest < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名，如果不包含其他条件时对user_name or real_name两个字段模糊查询
        # @type UserName: String
        # @param RealName: 姓名，模糊查询
        # @type RealName: String
        # @param StartTime: 查询时间范围，起始时间
        # @type StartTime: String
        # @param EndTime: 查询时间范围，结束时间
        # @type EndTime: String
        # @param SourceIp: 来源IP，模糊查询
        # @type SourceIp: String
        # @param Entry: 登录入口：1-字符界面,2-图形界面，3-web页面, 4-API
        # @type Entry: Integer
        # @param Result: 操作结果，1-成功，2-失败
        # @type Result: Integer
        # @param Offset: 分页偏移位置，默认值为0
        # @type Offset: Integer
        # @param Limit: 分页每页记录数，默认20
        # @type Limit: Integer

        attr_accessor :UserName, :RealName, :StartTime, :EndTime, :SourceIp, :Entry, :Result, :Offset, :Limit

        def initialize(username=nil, realname=nil, starttime=nil, endtime=nil, sourceip=nil, entry=nil, result=nil, offset=nil, limit=nil)
          @UserName = username
          @RealName = realname
          @StartTime = starttime
          @EndTime = endtime
          @SourceIp = sourceip
          @Entry = entry
          @Result = result
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @UserName = params['UserName']
          @RealName = params['RealName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SourceIp = params['SourceIp']
          @Entry = params['Entry']
          @Result = params['Result']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeLoginEvent返回参数结构体
      class DescribeLoginEventResponse < TencentCloud::Common::AbstractModel
        # @param LoginEventSet: 登录日志列表
        # @type LoginEventSet: Array
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoginEventSet, :TotalCount, :RequestId

        def initialize(logineventset=nil, totalcount=nil, requestid=nil)
          @LoginEventSet = logineventset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LoginEventSet'].nil?
            @LoginEventSet = []
            params['LoginEventSet'].each do |i|
              loginevent_tmp = LoginEvent.new
              loginevent_tmp.deserialize(i)
              @LoginEventSet << loginevent_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOperationEvent请求参数结构体
      class DescribeOperationEventRequest < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名，如果不包含其他条件时对user_name or real_name两个字段模糊查询
        # @type UserName: String
        # @param RealName: 姓名，模糊查询
        # @type RealName: String
        # @param StartTime: 查询时间范围，起始时间
        # @type StartTime: String
        # @param EndTime: 查询时间范围，结束时间
        # @type EndTime: String
        # @param SourceIp: 来源IP，模糊查询
        # @type SourceIp: String
        # @param Kind: 操作类型，参考DescribeOperationType返回结果
        # @type Kind: Integer
        # @param Result: 操作结果，1-成功，2-失败
        # @type Result: Integer
        # @param Offset: 分页偏移位置，默认值为0
        # @type Offset: Integer
        # @param Limit: 分页每页记录数，默认20
        # @type Limit: Integer

        attr_accessor :UserName, :RealName, :StartTime, :EndTime, :SourceIp, :Kind, :Result, :Offset, :Limit

        def initialize(username=nil, realname=nil, starttime=nil, endtime=nil, sourceip=nil, kind=nil, result=nil, offset=nil, limit=nil)
          @UserName = username
          @RealName = realname
          @StartTime = starttime
          @EndTime = endtime
          @SourceIp = sourceip
          @Kind = kind
          @Result = result
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @UserName = params['UserName']
          @RealName = params['RealName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SourceIp = params['SourceIp']
          @Kind = params['Kind']
          @Result = params['Result']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeOperationEvent返回参数结构体
      class DescribeOperationEventResponse < TencentCloud::Common::AbstractModel
        # @param OperationEventSet: 操作日志列表
        # @type OperationEventSet: Array
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OperationEventSet, :TotalCount, :RequestId

        def initialize(operationeventset=nil, totalcount=nil, requestid=nil)
          @OperationEventSet = operationeventset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['OperationEventSet'].nil?
            @OperationEventSet = []
            params['OperationEventSet'].each do |i|
              operationevent_tmp = OperationEvent.new
              operationevent_tmp.deserialize(i)
              @OperationEventSet << operationevent_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOperationTask请求参数结构体
      class DescribeOperationTaskRequest < TencentCloud::Common::AbstractModel
        # @param Name: 运维任务名称
        # @type Name: String
        # @param Type: 运维任务类型，1 - 手工执行任务， 2 - 周期性任务
        # @type Type: Integer
        # @param Offset: 分页偏移位置，默认值为0
        # @type Offset: Integer
        # @param Limit: 每页条目数，默认20
        # @type Limit: Integer

        attr_accessor :Name, :Type, :Offset, :Limit

        def initialize(name=nil, type=nil, offset=nil, limit=nil)
          @Name = name
          @Type = type
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeOperationTask返回参数结构体
      class DescribeOperationTaskResponse < TencentCloud::Common::AbstractModel
        # @param OperationTasks: 运维任务列表
        # @type OperationTasks: Array
        # @param TotalCount: 任务总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OperationTasks, :TotalCount, :RequestId

        def initialize(operationtasks=nil, totalcount=nil, requestid=nil)
          @OperationTasks = operationtasks
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['OperationTasks'].nil?
            @OperationTasks = []
            params['OperationTasks'].each do |i|
              operationtask_tmp = OperationTask.new
              operationtask_tmp.deserialize(i)
              @OperationTasks << operationtask_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeResources请求参数结构体
      class DescribeResourcesRequest < TencentCloud::Common::AbstractModel
        # @param ApCode: 地域码, 如: ap-guangzhou
        # @type ApCode: String
        # @param VpcId: 按照堡垒机开通的 VPC 实例ID查询
        # @type VpcId: String
        # @param ResourceIds: 资源ID集合，当传入ID集合时忽略 ApCode 和 VpcId
        # @type ResourceIds: Array
        # @param Limit: 每页条目数量
        # @type Limit: Integer
        # @param Offset: 分页偏移位置
        # @type Offset: Integer

        attr_accessor :ApCode, :VpcId, :ResourceIds, :Limit, :Offset

        def initialize(apcode=nil, vpcid=nil, resourceids=nil, limit=nil, offset=nil)
          @ApCode = apcode
          @VpcId = vpcid
          @ResourceIds = resourceids
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ApCode = params['ApCode']
          @VpcId = params['VpcId']
          @ResourceIds = params['ResourceIds']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeResources返回参数结构体
      class DescribeResourcesResponse < TencentCloud::Common::AbstractModel
        # @param ResourceSet: 堡垒机资源列表
        # @type ResourceSet: Array
        # @param TotalCount: 堡垒机资源数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceSet, :TotalCount, :RequestId

        def initialize(resourceset=nil, totalcount=nil, requestid=nil)
          @ResourceSet = resourceset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ResourceSet'].nil?
            @ResourceSet = []
            params['ResourceSet'].each do |i|
              resource_tmp = Resource.new
              resource_tmp.deserialize(i)
              @ResourceSet << resource_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserGroupMembers请求参数结构体
      class DescribeUserGroupMembersRequest < TencentCloud::Common::AbstractModel
        # @param Id: 用户组ID
        # @type Id: Integer
        # @param Bound: true - 查询已添加到该用户组的用户，false - 查询未添加到该用户组的用户
        # @type Bound: Boolean
        # @param Name: 用户名或用户姓名，最长64个字符，模糊查询
        # @type Name: String
        # @param Offset: 分页偏移位置，默认值为0
        # @type Offset: Integer
        # @param Limit: 每页条目数量，默认20, 最大500
        # @type Limit: Integer
        # @param DepartmentId: 所属部门ID
        # @type DepartmentId: String

        attr_accessor :Id, :Bound, :Name, :Offset, :Limit, :DepartmentId

        def initialize(id=nil, bound=nil, name=nil, offset=nil, limit=nil, departmentid=nil)
          @Id = id
          @Bound = bound
          @Name = name
          @Offset = offset
          @Limit = limit
          @DepartmentId = departmentid
        end

        def deserialize(params)
          @Id = params['Id']
          @Bound = params['Bound']
          @Name = params['Name']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @DepartmentId = params['DepartmentId']
        end
      end

      # DescribeUserGroupMembers返回参数结构体
      class DescribeUserGroupMembersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 用户组成员总数
        # @type TotalCount: Integer
        # @param UserSet: 用户组成员列表
        # @type UserSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :UserSet, :RequestId

        def initialize(totalcount=nil, userset=nil, requestid=nil)
          @TotalCount = totalcount
          @UserSet = userset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['UserSet'].nil?
            @UserSet = []
            params['UserSet'].each do |i|
              user_tmp = User.new
              user_tmp.deserialize(i)
              @UserSet << user_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserGroups请求参数结构体
      class DescribeUserGroupsRequest < TencentCloud::Common::AbstractModel
        # @param IdSet: 用户组ID集合
        # @type IdSet: Array
        # @param Name: 用户组名，模糊查询,长度：0-64字符
        # @type Name: String
        # @param Offset: 分页偏移位置，默认值为0
        # @type Offset: Integer
        # @param Limit: 每页条目数量，缺省20，最大500
        # @type Limit: Integer
        # @param DepartmentId: 部门ID，用于过滤属于某个部门的用户组
        # @type DepartmentId: String

        attr_accessor :IdSet, :Name, :Offset, :Limit, :DepartmentId

        def initialize(idset=nil, name=nil, offset=nil, limit=nil, departmentid=nil)
          @IdSet = idset
          @Name = name
          @Offset = offset
          @Limit = limit
          @DepartmentId = departmentid
        end

        def deserialize(params)
          @IdSet = params['IdSet']
          @Name = params['Name']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @DepartmentId = params['DepartmentId']
        end
      end

      # DescribeUserGroups返回参数结构体
      class DescribeUserGroupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 用户组总数
        # @type TotalCount: Integer
        # @param GroupSet: 用户组列表
        # @type GroupSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :GroupSet, :RequestId

        def initialize(totalcount=nil, groupset=nil, requestid=nil)
          @TotalCount = totalcount
          @GroupSet = groupset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['GroupSet'].nil?
            @GroupSet = []
            params['GroupSet'].each do |i|
              group_tmp = Group.new
              group_tmp.deserialize(i)
              @GroupSet << group_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUsers请求参数结构体
      class DescribeUsersRequest < TencentCloud::Common::AbstractModel
        # @param IdSet: 如果IdSet不为空，则忽略其他参数
        # @type IdSet: Array
        # @param Name: 模糊查询，IdSet、UserName、Phone为空时才生效，对用户名和姓名进行模糊查询
        # @type Name: String
        # @param Offset: 分页偏移位置，默认值为0
        # @type Offset: Integer
        # @param Limit: 每页条目数量，默认20, 最大500
        # @type Limit: Integer
        # @param UserName: 精确查询，IdSet为空时才生效
        # @type UserName: String
        # @param Phone: 精确查询，IdSet、UserName为空时才生效。
        # 大陆手机号直接填写，如果是其他国家、地区号码,按照"国家地区代码|手机号"的格式输入。如: "+852|xxxxxxxx"
        # @type Phone: String
        # @param Email: 邮箱，精确查询
        # @type Email: String
        # @param AuthorizedDeviceIdSet: 查询具有指定资产ID访问权限的用户
        # @type AuthorizedDeviceIdSet: Array
        # @param AuthorizedAppAssetIdSet: 查询具有指定应用资产ID访问权限的用户
        # @type AuthorizedAppAssetIdSet: Array
        # @param AuthTypeSet: 认证方式，0 - 本地, 1 - LDAP, 2 - OAuth, 3-ioa 不传为全部
        # @type AuthTypeSet: Array
        # @param DepartmentId: 部门ID，用于过滤属于某个部门的用户
        # @type DepartmentId: String
        # @param Filters: 参数过滤数组
        # @type Filters: Array
        # @param IsCamUser: 是否获取cam用户, 0-否，1-是
        # @type IsCamUser: Integer
        # @param UserFromSet: 用户来源，0-bh，1-ioa,不传为全部
        # @type UserFromSet: Array

        attr_accessor :IdSet, :Name, :Offset, :Limit, :UserName, :Phone, :Email, :AuthorizedDeviceIdSet, :AuthorizedAppAssetIdSet, :AuthTypeSet, :DepartmentId, :Filters, :IsCamUser, :UserFromSet

        def initialize(idset=nil, name=nil, offset=nil, limit=nil, username=nil, phone=nil, email=nil, authorizeddeviceidset=nil, authorizedappassetidset=nil, authtypeset=nil, departmentid=nil, filters=nil, iscamuser=nil, userfromset=nil)
          @IdSet = idset
          @Name = name
          @Offset = offset
          @Limit = limit
          @UserName = username
          @Phone = phone
          @Email = email
          @AuthorizedDeviceIdSet = authorizeddeviceidset
          @AuthorizedAppAssetIdSet = authorizedappassetidset
          @AuthTypeSet = authtypeset
          @DepartmentId = departmentid
          @Filters = filters
          @IsCamUser = iscamuser
          @UserFromSet = userfromset
        end

        def deserialize(params)
          @IdSet = params['IdSet']
          @Name = params['Name']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @UserName = params['UserName']
          @Phone = params['Phone']
          @Email = params['Email']
          @AuthorizedDeviceIdSet = params['AuthorizedDeviceIdSet']
          @AuthorizedAppAssetIdSet = params['AuthorizedAppAssetIdSet']
          @AuthTypeSet = params['AuthTypeSet']
          @DepartmentId = params['DepartmentId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @IsCamUser = params['IsCamUser']
          @UserFromSet = params['UserFromSet']
        end
      end

      # DescribeUsers返回参数结构体
      class DescribeUsersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 用户总数
        # @type TotalCount: Integer
        # @param UserSet: 用户列表
        # @type UserSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :UserSet, :RequestId

        def initialize(totalcount=nil, userset=nil, requestid=nil)
          @TotalCount = totalcount
          @UserSet = userset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['UserSet'].nil?
            @UserSet = []
            params['UserSet'].each do |i|
              user_tmp = User.new
              user_tmp.deserialize(i)
              @UserSet << user_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 资产信息
      class Device < TencentCloud::Common::AbstractModel
        # @param Id: 资产ID
        # @type Id: Integer
        # @param InstanceId: 实例ID，对应CVM、CDB等实例ID
        # @type InstanceId: String
        # @param Name: 资产名
        # @type Name: String
        # @param PublicIp: 公网IP
        # @type PublicIp: String
        # @param PrivateIp: 内网IP
        # @type PrivateIp: String
        # @param ApCode: 地域编码
        # @type ApCode: String
        # @param OsName: 操作系统名称
        # @type OsName: String
        # @param Kind: 资产类型 1 - Linux, 2 - Windows, 3 - MySQL, 4 - SQLServer
        # @type Kind: Integer
        # @param Port: 管理端口
        # @type Port: Integer
        # @param GroupSet: 所属资产组列表
        # @type GroupSet: Array
        # @param AccountCount: 资产绑定的账号数
        # @type AccountCount: Integer
        # @param VpcId: VPC ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param Resource: 堡垒机服务信息，注意没有绑定服务时为null
        # @type Resource: :class:`Tencentcloud::Bh.v20230418.models.Resource`
        # @param Department: 资产所属部门
        # @type Department: :class:`Tencentcloud::Bh.v20230418.models.Department`
        # @param IpPortSet: 数据库资产的多节点
        # @type IpPortSet: Array
        # @param DomainId: 网络域Id
        # @type DomainId: String
        # @param DomainName: 网络域名称
        # @type DomainName: String
        # @param EnableSSL: 是否启用SSL，仅支持Redis资产。0：禁用 1：启用
        # @type EnableSSL: Integer
        # @param SSLCertName: 已上传的SSL证书名称
        # @type SSLCertName: String
        # @param IOAId: IOA侧的资源ID
        # @type IOAId: Integer
        # @param ManageDimension: K8S集群托管维度。1-集群，2-命名空间，3-工作负载
        # @type ManageDimension: Integer
        # @param ManageAccountId: K8S集群托管账号id
        # @type ManageAccountId: Integer
        # @param Namespace: K8S集群命名空间
        # @type Namespace: String
        # @param Workload: K8S集群工作负载
        # @type Workload: String
        # @param SyncPodCount: K8S集群pod已同步数量
        # @type SyncPodCount: Integer
        # @param TotalPodCount: K8S集群pod总数量
        # @type TotalPodCount: Integer

        attr_accessor :Id, :InstanceId, :Name, :PublicIp, :PrivateIp, :ApCode, :OsName, :Kind, :Port, :GroupSet, :AccountCount, :VpcId, :SubnetId, :Resource, :Department, :IpPortSet, :DomainId, :DomainName, :EnableSSL, :SSLCertName, :IOAId, :ManageDimension, :ManageAccountId, :Namespace, :Workload, :SyncPodCount, :TotalPodCount

        def initialize(id=nil, instanceid=nil, name=nil, publicip=nil, privateip=nil, apcode=nil, osname=nil, kind=nil, port=nil, groupset=nil, accountcount=nil, vpcid=nil, subnetid=nil, resource=nil, department=nil, ipportset=nil, domainid=nil, domainname=nil, enablessl=nil, sslcertname=nil, ioaid=nil, managedimension=nil, manageaccountid=nil, namespace=nil, workload=nil, syncpodcount=nil, totalpodcount=nil)
          @Id = id
          @InstanceId = instanceid
          @Name = name
          @PublicIp = publicip
          @PrivateIp = privateip
          @ApCode = apcode
          @OsName = osname
          @Kind = kind
          @Port = port
          @GroupSet = groupset
          @AccountCount = accountcount
          @VpcId = vpcid
          @SubnetId = subnetid
          @Resource = resource
          @Department = department
          @IpPortSet = ipportset
          @DomainId = domainid
          @DomainName = domainname
          @EnableSSL = enablessl
          @SSLCertName = sslcertname
          @IOAId = ioaid
          @ManageDimension = managedimension
          @ManageAccountId = manageaccountid
          @Namespace = namespace
          @Workload = workload
          @SyncPodCount = syncpodcount
          @TotalPodCount = totalpodcount
        end

        def deserialize(params)
          @Id = params['Id']
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @PublicIp = params['PublicIp']
          @PrivateIp = params['PrivateIp']
          @ApCode = params['ApCode']
          @OsName = params['OsName']
          @Kind = params['Kind']
          @Port = params['Port']
          unless params['GroupSet'].nil?
            @GroupSet = []
            params['GroupSet'].each do |i|
              group_tmp = Group.new
              group_tmp.deserialize(i)
              @GroupSet << group_tmp
            end
          end
          @AccountCount = params['AccountCount']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          unless params['Resource'].nil?
            @Resource = Resource.new
            @Resource.deserialize(params['Resource'])
          end
          unless params['Department'].nil?
            @Department = Department.new
            @Department.deserialize(params['Department'])
          end
          @IpPortSet = params['IpPortSet']
          @DomainId = params['DomainId']
          @DomainName = params['DomainName']
          @EnableSSL = params['EnableSSL']
          @SSLCertName = params['SSLCertName']
          @IOAId = params['IOAId']
          @ManageDimension = params['ManageDimension']
          @ManageAccountId = params['ManageAccountId']
          @Namespace = params['Namespace']
          @Workload = params['Workload']
          @SyncPodCount = params['SyncPodCount']
          @TotalPodCount = params['TotalPodCount']
        end
      end

      # 主机账号
      class DeviceAccount < TencentCloud::Common::AbstractModel
        # @param Id: 账号ID
        # @type Id: Integer
        # @param DeviceId: 主机ID
        # @type DeviceId: Integer
        # @param Account: 账号名
        # @type Account: String
        # @param BoundPassword: true-已托管密码，false-未托管密码
        # @type BoundPassword: Boolean
        # @param BoundPrivateKey: true-已托管私钥，false-未托管私钥
        # @type BoundPrivateKey: Boolean
        # @param BoundKubeconfig: 是否托管凭证, true-托管，false-未托管
        # @type BoundKubeconfig: Boolean
        # @param IsK8SManageAccount: 是否为k8s资产管理账号
        # @type IsK8SManageAccount: Boolean

        attr_accessor :Id, :DeviceId, :Account, :BoundPassword, :BoundPrivateKey, :BoundKubeconfig, :IsK8SManageAccount

        def initialize(id=nil, deviceid=nil, account=nil, boundpassword=nil, boundprivatekey=nil, boundkubeconfig=nil, isk8smanageaccount=nil)
          @Id = id
          @DeviceId = deviceid
          @Account = account
          @BoundPassword = boundpassword
          @BoundPrivateKey = boundprivatekey
          @BoundKubeconfig = boundkubeconfig
          @IsK8SManageAccount = isk8smanageaccount
        end

        def deserialize(params)
          @Id = params['Id']
          @DeviceId = params['DeviceId']
          @Account = params['Account']
          @BoundPassword = params['BoundPassword']
          @BoundPrivateKey = params['BoundPrivateKey']
          @BoundKubeconfig = params['BoundKubeconfig']
          @IsK8SManageAccount = params['IsK8SManageAccount']
        end
      end

      # 网络域
      class Domain < TencentCloud::Common::AbstractModel
        # @param Id: 自增id
        # @type Id: Integer
        # @param DomainId: 网络域id
        # @type DomainId: String
        # @param DomainName: 网络域名称
        # @type DomainName: String
        # @param ResourceId: 堡垒机id
        # @type ResourceId: String
        # @param WhiteIpSet: ip，网段
        # @type WhiteIpSet: Array
        # @param Enabled: 是否启用  默认 1启用 0禁用
        # @type Enabled: Integer
        # @param Status: 状态 0-已断开  1-已连接
        # @type Status: Integer
        # @param CreateTime: 网络域创建时间
        # @type CreateTime: String
        # @param Default: 是否资源默认网络域 1-资源默认网络域 0-用户添加网络域
        # @type Default: Integer

        attr_accessor :Id, :DomainId, :DomainName, :ResourceId, :WhiteIpSet, :Enabled, :Status, :CreateTime, :Default

        def initialize(id=nil, domainid=nil, domainname=nil, resourceid=nil, whiteipset=nil, enabled=nil, status=nil, createtime=nil, default=nil)
          @Id = id
          @DomainId = domainid
          @DomainName = domainname
          @ResourceId = resourceid
          @WhiteIpSet = whiteipset
          @Enabled = enabled
          @Status = status
          @CreateTime = createtime
          @Default = default
        end

        def deserialize(params)
          @Id = params['Id']
          @DomainId = params['DomainId']
          @DomainName = params['DomainName']
          @ResourceId = params['ResourceId']
          @WhiteIpSet = params['WhiteIpSet']
          @Enabled = params['Enabled']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @Default = params['Default']
        end
      end

      # 主机参数，导入外部主机时使用
      class ExternalDevice < TencentCloud::Common::AbstractModel
        # @param OsName: 操作系统名称，只能是Linux、Windows或MySQL
        # @type OsName: String
        # @param Ip: IP地址
        # @type Ip: String
        # @param Port: 管理端口
        # @type Port: Integer
        # @param Name: 主机名，可为空
        # @type Name: String
        # @param DepartmentId: 资产所属的部门ID
        # @type DepartmentId: String
        # @param IpPortSet: 资产多节点：字段ip和端口
        # @type IpPortSet: Array
        # @param EnableSSL: 是否启用SSL,1:启用 0：禁用，仅支持Redis资产
        # @type EnableSSL: Integer
        # @param SSLCert: SSL证书，EnableSSL时必填
        # @type SSLCert: String
        # @param SSLCertName: SSL证书名称，EnableSSL时必填
        # @type SSLCertName: String

        attr_accessor :OsName, :Ip, :Port, :Name, :DepartmentId, :IpPortSet, :EnableSSL, :SSLCert, :SSLCertName

        def initialize(osname=nil, ip=nil, port=nil, name=nil, departmentid=nil, ipportset=nil, enablessl=nil, sslcert=nil, sslcertname=nil)
          @OsName = osname
          @Ip = ip
          @Port = port
          @Name = name
          @DepartmentId = departmentid
          @IpPortSet = ipportset
          @EnableSSL = enablessl
          @SSLCert = sslcert
          @SSLCertName = sslcertname
        end

        def deserialize(params)
          @OsName = params['OsName']
          @Ip = params['Ip']
          @Port = params['Port']
          @Name = params['Name']
          @DepartmentId = params['DepartmentId']
          @IpPortSet = params['IpPortSet']
          @EnableSSL = params['EnableSSL']
          @SSLCert = params['SSLCert']
          @SSLCertName = params['SSLCertName']
        end
      end

      # 描述键值对过滤器，用于条件过滤查询
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 需要过滤的字段。
        # @type Name: String
        # @param Values: 字段的过滤值。
        # 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
        # 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
        # @type Values: Array

        attr_accessor :Name, :Values

        def initialize(name=nil, values=nil)
          @Name = name
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
        end
      end

      # 组信息，用于用户组、主机组
      class Group < TencentCloud::Common::AbstractModel
        # @param Id: 组ID
        # @type Id: Integer
        # @param Name: 组名称
        # @type Name: String
        # @param Department: 所属部门信息
        # @type Department: :class:`Tencentcloud::Bh.v20230418.models.Department`
        # @param Count: 个数
        # @type Count: Integer

        attr_accessor :Id, :Name, :Department, :Count

        def initialize(id=nil, name=nil, department=nil, count=nil)
          @Id = id
          @Name = name
          @Department = department
          @Count = count
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          unless params['Department'].nil?
            @Department = Department.new
            @Department.deserialize(params['Department'])
          end
          @Count = params['Count']
        end
      end

      # 同步过来的ioa用户分组信息
      class IOAUserGroup < TencentCloud::Common::AbstractModel
        # @param OrgId: ioa用户组织id
        # @type OrgId: Integer
        # @param OrgName: ioa用户组织名称
        # @type OrgName: String
        # @param OrgIdPath: ioa用户组织id路径
        # @type OrgIdPath: String
        # @param OrgNamePath: ioa用户组织名称路径
        # @type OrgNamePath: String
        # @param Source: ioa关联用户源类型
        # @type Source: Integer

        attr_accessor :OrgId, :OrgName, :OrgIdPath, :OrgNamePath, :Source

        def initialize(orgid=nil, orgname=nil, orgidpath=nil, orgnamepath=nil, source=nil)
          @OrgId = orgid
          @OrgName = orgname
          @OrgIdPath = orgidpath
          @OrgNamePath = orgnamepath
          @Source = source
        end

        def deserialize(params)
          @OrgId = params['OrgId']
          @OrgName = params['OrgName']
          @OrgIdPath = params['OrgIdPath']
          @OrgNamePath = params['OrgNamePath']
          @Source = params['Source']
        end
      end

      # ImportExternalDevice请求参数结构体
      class ImportExternalDeviceRequest < TencentCloud::Common::AbstractModel
        # @param DeviceSet: 资产参数列表
        # @type DeviceSet: Array

        attr_accessor :DeviceSet

        def initialize(deviceset=nil)
          @DeviceSet = deviceset
        end

        def deserialize(params)
          unless params['DeviceSet'].nil?
            @DeviceSet = []
            params['DeviceSet'].each do |i|
              externaldevice_tmp = ExternalDevice.new
              externaldevice_tmp.deserialize(i)
              @DeviceSet << externaldevice_tmp
            end
          end
        end
      end

      # ImportExternalDevice返回参数结构体
      class ImportExternalDeviceResponse < TencentCloud::Common::AbstractModel
        # @param DeviceIdSet: 资产ID列表
        # @type DeviceIdSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeviceIdSet, :RequestId

        def initialize(deviceidset=nil, requestid=nil)
          @DeviceIdSet = deviceidset
          @RequestId = requestid
        end

        def deserialize(params)
          @DeviceIdSet = params['DeviceIdSet']
          @RequestId = params['RequestId']
        end
      end

      # 登录日志
      class LoginEvent < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名
        # @type UserName: String
        # @param RealName: 姓名
        # @type RealName: String
        # @param Time: 操作时间
        # @type Time: String
        # @param SourceIp: 来源IP
        # @type SourceIp: String
        # @param Entry: 登录入口：1-字符界面,2-图形界面，3-web页面, 4-API
        # @type Entry: Integer
        # @param Result: 操作结果，1-成功，2-失败
        # @type Result: Integer

        attr_accessor :UserName, :RealName, :Time, :SourceIp, :Entry, :Result

        def initialize(username=nil, realname=nil, time=nil, sourceip=nil, entry=nil, result=nil)
          @UserName = username
          @RealName = realname
          @Time = time
          @SourceIp = sourceip
          @Entry = entry
          @Result = result
        end

        def deserialize(params)
          @UserName = params['UserName']
          @RealName = params['RealName']
          @Time = params['Time']
          @SourceIp = params['SourceIp']
          @Entry = params['Entry']
          @Result = params['Result']
        end
      end

      # ModifyAcl请求参数结构体
      class ModifyAclRequest < TencentCloud::Common::AbstractModel
        # @param Name: 访问权限名称，最大32字符，不能包含空白字符
        # @type Name: String
        # @param AllowDiskRedirect: 是否开启磁盘映射
        # @type AllowDiskRedirect: Boolean
        # @param AllowAnyAccount: 是否允许任意账号登录
        # @type AllowAnyAccount: Boolean
        # @param Id: 访问权限ID
        # @type Id: Integer
        # @param AllowClipFileUp: 是否开启剪贴板文件上行
        # @type AllowClipFileUp: Boolean
        # @param AllowClipFileDown: 是否开启剪贴板文件下行
        # @type AllowClipFileDown: Boolean
        # @param AllowClipTextUp: 是否开启剪贴板文本（含图片）上行
        # @type AllowClipTextUp: Boolean
        # @param AllowClipTextDown: 是否开启剪贴板文本（含图片）下行
        # @type AllowClipTextDown: Boolean
        # @param AllowFileUp: 是否开启文件传输上传
        # @type AllowFileUp: Boolean
        # @param MaxFileUpSize: 文件传输上传大小限制（预留参数，目前暂未使用）
        # @type MaxFileUpSize: Integer
        # @param AllowFileDown: 是否开启文件传输下载
        # @type AllowFileDown: Boolean
        # @param MaxFileDownSize: 文件传输下载大小限制（预留参数，目前暂未使用）
        # @type MaxFileDownSize: Integer
        # @param UserIdSet: 关联的用户ID
        # @type UserIdSet: Array
        # @param UserGroupIdSet: 关联的用户组ID
        # @type UserGroupIdSet: Array
        # @param DeviceIdSet: 关联的资产ID
        # @type DeviceIdSet: Array
        # @param AppAssetIdSet: 关联的应用资产ID集合
        # @type AppAssetIdSet: Array
        # @param DeviceGroupIdSet: 关联的资产组ID
        # @type DeviceGroupIdSet: Array
        # @param AccountSet: 关联的账号
        # @type AccountSet: Array
        # @param CmdTemplateIdSet: 关联的高危命令模板ID
        # @type CmdTemplateIdSet: Array
        # @param ACTemplateIdSet: 关联高危DB模板ID
        # @type ACTemplateIdSet: Array
        # @param AllowDiskFileUp: 是否开启 RDP 磁盘映射文件上传
        # @type AllowDiskFileUp: Boolean
        # @param AllowDiskFileDown: 是否开启 RDP 磁盘映射文件下载
        # @type AllowDiskFileDown: Boolean
        # @param AllowShellFileUp: 是否开启rz sz文件上传
        # @type AllowShellFileUp: Boolean
        # @param AllowShellFileDown: 是否开启rz sz文件下载
        # @type AllowShellFileDown: Boolean
        # @param AllowFileDel: 是否开启 SFTP 文件删除
        # @type AllowFileDel: Boolean
        # @param ValidateFrom: 访问权限生效时间，如:"2021-09-22T00:00:00+00:00"
        # 生效、失效时间不填则访问权限长期有效
        # @type ValidateFrom: String
        # @param ValidateTo: 访问权限失效时间，如:"2021-09-23T00:00:00+00:00"
        # 生效、失效时间不填则访问权限长期有效
        # @type ValidateTo: String
        # @param DepartmentId: 权限所属部门的ID，如：1.2.3
        # @type DepartmentId: String
        # @param AllowAccessCredential: 是否允许使用访问串
        # @type AllowAccessCredential: Boolean
        # @param AllowKeyboardLogger: 是否允许键盘记录
        # @type AllowKeyboardLogger: Boolean

        attr_accessor :Name, :AllowDiskRedirect, :AllowAnyAccount, :Id, :AllowClipFileUp, :AllowClipFileDown, :AllowClipTextUp, :AllowClipTextDown, :AllowFileUp, :MaxFileUpSize, :AllowFileDown, :MaxFileDownSize, :UserIdSet, :UserGroupIdSet, :DeviceIdSet, :AppAssetIdSet, :DeviceGroupIdSet, :AccountSet, :CmdTemplateIdSet, :ACTemplateIdSet, :AllowDiskFileUp, :AllowDiskFileDown, :AllowShellFileUp, :AllowShellFileDown, :AllowFileDel, :ValidateFrom, :ValidateTo, :DepartmentId, :AllowAccessCredential, :AllowKeyboardLogger

        def initialize(name=nil, allowdiskredirect=nil, allowanyaccount=nil, id=nil, allowclipfileup=nil, allowclipfiledown=nil, allowcliptextup=nil, allowcliptextdown=nil, allowfileup=nil, maxfileupsize=nil, allowfiledown=nil, maxfiledownsize=nil, useridset=nil, usergroupidset=nil, deviceidset=nil, appassetidset=nil, devicegroupidset=nil, accountset=nil, cmdtemplateidset=nil, actemplateidset=nil, allowdiskfileup=nil, allowdiskfiledown=nil, allowshellfileup=nil, allowshellfiledown=nil, allowfiledel=nil, validatefrom=nil, validateto=nil, departmentid=nil, allowaccesscredential=nil, allowkeyboardlogger=nil)
          @Name = name
          @AllowDiskRedirect = allowdiskredirect
          @AllowAnyAccount = allowanyaccount
          @Id = id
          @AllowClipFileUp = allowclipfileup
          @AllowClipFileDown = allowclipfiledown
          @AllowClipTextUp = allowcliptextup
          @AllowClipTextDown = allowcliptextdown
          @AllowFileUp = allowfileup
          @MaxFileUpSize = maxfileupsize
          @AllowFileDown = allowfiledown
          @MaxFileDownSize = maxfiledownsize
          @UserIdSet = useridset
          @UserGroupIdSet = usergroupidset
          @DeviceIdSet = deviceidset
          @AppAssetIdSet = appassetidset
          @DeviceGroupIdSet = devicegroupidset
          @AccountSet = accountset
          @CmdTemplateIdSet = cmdtemplateidset
          @ACTemplateIdSet = actemplateidset
          @AllowDiskFileUp = allowdiskfileup
          @AllowDiskFileDown = allowdiskfiledown
          @AllowShellFileUp = allowshellfileup
          @AllowShellFileDown = allowshellfiledown
          @AllowFileDel = allowfiledel
          @ValidateFrom = validatefrom
          @ValidateTo = validateto
          @DepartmentId = departmentid
          @AllowAccessCredential = allowaccesscredential
          @AllowKeyboardLogger = allowkeyboardlogger
        end

        def deserialize(params)
          @Name = params['Name']
          @AllowDiskRedirect = params['AllowDiskRedirect']
          @AllowAnyAccount = params['AllowAnyAccount']
          @Id = params['Id']
          @AllowClipFileUp = params['AllowClipFileUp']
          @AllowClipFileDown = params['AllowClipFileDown']
          @AllowClipTextUp = params['AllowClipTextUp']
          @AllowClipTextDown = params['AllowClipTextDown']
          @AllowFileUp = params['AllowFileUp']
          @MaxFileUpSize = params['MaxFileUpSize']
          @AllowFileDown = params['AllowFileDown']
          @MaxFileDownSize = params['MaxFileDownSize']
          @UserIdSet = params['UserIdSet']
          @UserGroupIdSet = params['UserGroupIdSet']
          @DeviceIdSet = params['DeviceIdSet']
          @AppAssetIdSet = params['AppAssetIdSet']
          @DeviceGroupIdSet = params['DeviceGroupIdSet']
          @AccountSet = params['AccountSet']
          @CmdTemplateIdSet = params['CmdTemplateIdSet']
          @ACTemplateIdSet = params['ACTemplateIdSet']
          @AllowDiskFileUp = params['AllowDiskFileUp']
          @AllowDiskFileDown = params['AllowDiskFileDown']
          @AllowShellFileUp = params['AllowShellFileUp']
          @AllowShellFileDown = params['AllowShellFileDown']
          @AllowFileDel = params['AllowFileDel']
          @ValidateFrom = params['ValidateFrom']
          @ValidateTo = params['ValidateTo']
          @DepartmentId = params['DepartmentId']
          @AllowAccessCredential = params['AllowAccessCredential']
          @AllowKeyboardLogger = params['AllowKeyboardLogger']
        end
      end

      # ModifyAcl返回参数结构体
      class ModifyAclResponse < TencentCloud::Common::AbstractModel
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

      # ModifyChangePwdTask请求参数结构体
      class ModifyChangePwdTaskRequest < TencentCloud::Common::AbstractModel
        # @param OperationId: 改密任务id
        # @type OperationId: String
        # @param DeviceIdSet: 改密资产id列表
        # @type DeviceIdSet: Array
        # @param AccountSet: 改密资产的账号列表
        # @type AccountSet: Array
        # @param ModifyType: 修改类型：1：修改任务信息  2：关联任务资产账号
        # @type ModifyType: Integer
        # @param ChangeMethod: 改密方式。1：使用执行账号修改密码；2：修改自身密码
        # @type ChangeMethod: Integer
        # @param AuthGenerationStrategy: 密码生成方式。 1:自动生成相同密码 2:自动生成不同密码 3:手动指定相同密码
        # @type AuthGenerationStrategy: Integer
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param DepartmentId: 所属部门ID，"1,2,3"
        # @type DepartmentId: String
        # @param RunAccount: 任务的执行账号
        # @type RunAccount: String
        # @param Password: 密码，手动指定密码时必传。
        # @type Password: String
        # @param PasswordLength: 密码限制长度，自动生成密码必传。
        # @type PasswordLength: Integer
        # @param SmallLetter: 密码包含小写字母，0：否，1：是。
        # @type SmallLetter: Integer
        # @param BigLetter: 密码包含大写字母，0：否，1：是。
        # @type BigLetter: Integer
        # @param Digit: 密码包含数字，0：否，1：是。
        # @type Digit: Integer
        # @param Symbol: 密码包含的特殊字符（base64编码），包含：^[-_#();%~!+=]*$
        # @type Symbol: String
        # @param CompleteNotify: 改密完成通知。0：不通知 1：通知
        # @type CompleteNotify: Integer
        # @param NotifyEmails: 通知邮箱
        # @type NotifyEmails: Array
        # @param FilePassword: 加密压缩文件密码
        # @type FilePassword: String
        # @param Type: 任务类型， 4：手工执行  5：周期自动执行
        # @type Type: Integer
        # @param Period: 周期任务周期，单位天（大于等于 1，小于等于 365）
        # @type Period: Integer
        # @param FirstTime: 周期任务首次执行时间
        # @type FirstTime: String

        attr_accessor :OperationId, :DeviceIdSet, :AccountSet, :ModifyType, :ChangeMethod, :AuthGenerationStrategy, :TaskName, :DepartmentId, :RunAccount, :Password, :PasswordLength, :SmallLetter, :BigLetter, :Digit, :Symbol, :CompleteNotify, :NotifyEmails, :FilePassword, :Type, :Period, :FirstTime

        def initialize(operationid=nil, deviceidset=nil, accountset=nil, modifytype=nil, changemethod=nil, authgenerationstrategy=nil, taskname=nil, departmentid=nil, runaccount=nil, password=nil, passwordlength=nil, smallletter=nil, bigletter=nil, digit=nil, symbol=nil, completenotify=nil, notifyemails=nil, filepassword=nil, type=nil, period=nil, firsttime=nil)
          @OperationId = operationid
          @DeviceIdSet = deviceidset
          @AccountSet = accountset
          @ModifyType = modifytype
          @ChangeMethod = changemethod
          @AuthGenerationStrategy = authgenerationstrategy
          @TaskName = taskname
          @DepartmentId = departmentid
          @RunAccount = runaccount
          @Password = password
          @PasswordLength = passwordlength
          @SmallLetter = smallletter
          @BigLetter = bigletter
          @Digit = digit
          @Symbol = symbol
          @CompleteNotify = completenotify
          @NotifyEmails = notifyemails
          @FilePassword = filepassword
          @Type = type
          @Period = period
          @FirstTime = firsttime
        end

        def deserialize(params)
          @OperationId = params['OperationId']
          @DeviceIdSet = params['DeviceIdSet']
          @AccountSet = params['AccountSet']
          @ModifyType = params['ModifyType']
          @ChangeMethod = params['ChangeMethod']
          @AuthGenerationStrategy = params['AuthGenerationStrategy']
          @TaskName = params['TaskName']
          @DepartmentId = params['DepartmentId']
          @RunAccount = params['RunAccount']
          @Password = params['Password']
          @PasswordLength = params['PasswordLength']
          @SmallLetter = params['SmallLetter']
          @BigLetter = params['BigLetter']
          @Digit = params['Digit']
          @Symbol = params['Symbol']
          @CompleteNotify = params['CompleteNotify']
          @NotifyEmails = params['NotifyEmails']
          @FilePassword = params['FilePassword']
          @Type = params['Type']
          @Period = params['Period']
          @FirstTime = params['FirstTime']
        end
      end

      # ModifyChangePwdTask返回参数结构体
      class ModifyChangePwdTaskResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCmdTemplate请求参数结构体
      class ModifyCmdTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Name: 模板名，最长32字符，不能包含空白字符
        # @type Name: String
        # @param CmdList: 命令列表，\n分隔，最长32768字节
        # @type CmdList: String
        # @param Id: 命令模板ID
        # @type Id: Integer
        # @param Encoding: CmdList字段前端是否base64传值。
        # 0：否，1：是
        # @type Encoding: Integer
        # @param Type: 命令模板类型 1-内置模板 2-自定义模板
        # @type Type: Integer

        attr_accessor :Name, :CmdList, :Id, :Encoding, :Type

        def initialize(name=nil, cmdlist=nil, id=nil, encoding=nil, type=nil)
          @Name = name
          @CmdList = cmdlist
          @Id = id
          @Encoding = encoding
          @Type = type
        end

        def deserialize(params)
          @Name = params['Name']
          @CmdList = params['CmdList']
          @Id = params['Id']
          @Encoding = params['Encoding']
          @Type = params['Type']
        end
      end

      # ModifyCmdTemplate返回参数结构体
      class ModifyCmdTemplateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDeviceGroup请求参数结构体
      class ModifyDeviceGroupRequest < TencentCloud::Common::AbstractModel
        # @param Name: 资产组名，最大长度32字符，不能为空
        # @type Name: String
        # @param Id: 资产组ID
        # @type Id: Integer
        # @param DepartmentId: 资产组所属部门ID，如：1.2.3
        # @type DepartmentId: String

        attr_accessor :Name, :Id, :DepartmentId

        def initialize(name=nil, id=nil, departmentid=nil)
          @Name = name
          @Id = id
          @DepartmentId = departmentid
        end

        def deserialize(params)
          @Name = params['Name']
          @Id = params['Id']
          @DepartmentId = params['DepartmentId']
        end
      end

      # ModifyDeviceGroup返回参数结构体
      class ModifyDeviceGroupResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDevice请求参数结构体
      class ModifyDeviceRequest < TencentCloud::Common::AbstractModel
        # @param Id: 资产记录ID
        # @type Id: Integer
        # @param Port: 管理端口
        # @type Port: Integer
        # @param GroupIdSet: 资产所属组ID集合
        # @type GroupIdSet: Array
        # @param DepartmentId: 资产所属部门ID
        # @type DepartmentId: String
        # @param DomainId: 网络域Id
        # @type DomainId: String

        attr_accessor :Id, :Port, :GroupIdSet, :DepartmentId, :DomainId

        def initialize(id=nil, port=nil, groupidset=nil, departmentid=nil, domainid=nil)
          @Id = id
          @Port = port
          @GroupIdSet = groupidset
          @DepartmentId = departmentid
          @DomainId = domainid
        end

        def deserialize(params)
          @Id = params['Id']
          @Port = params['Port']
          @GroupIdSet = params['GroupIdSet']
          @DepartmentId = params['DepartmentId']
          @DomainId = params['DomainId']
        end
      end

      # ModifyDevice返回参数结构体
      class ModifyDeviceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLDAPSetting请求参数结构体
      class ModifyLDAPSettingRequest < TencentCloud::Common::AbstractModel
        # @param Enable: 是否开启LDAP认证，false-不开启，true-开启
        # @type Enable: Boolean
        # @param Ip: 服务器地址
        # @type Ip: String
        # @param IpBackup: 备用服务器地址
        # @type IpBackup: String
        # @param Port: 服务端口
        # @type Port: Integer
        # @param EnableSSL: 是否开启SSL，false-不开启，true-开启
        # @type EnableSSL: Boolean
        # @param BaseDN: Base DN
        # @type BaseDN: String
        # @param AdminAccount: 管理员账号
        # @type AdminAccount: String
        # @param AdminPassword: 管理员密码
        # @type AdminPassword: String
        # @param AttributeUser: 用户属性
        # @type AttributeUser: String
        # @param AttributeUserName: 用户名属性
        # @type AttributeUserName: String
        # @param AutoSync: 自动同步，false-不开启，true-开启
        # @type AutoSync: Boolean
        # @param Overwrite: 覆盖用户信息，false-不开启，true-开启
        # @type Overwrite: Boolean
        # @param SyncPeriod: 同步周期，30～60000之间的整数
        # @type SyncPeriod: Integer
        # @param SyncAll: 是否同步全部，false-不开启，true-开启
        # @type SyncAll: Boolean
        # @param SyncUnitSet: 同步OU列表，SyncAll为false时必传
        # @type SyncUnitSet: Array
        # @param AttributeUnit: 组织单元属性
        # @type AttributeUnit: String
        # @param AttributeRealName: 用户姓名属性
        # @type AttributeRealName: String
        # @param AttributePhone: 手机号属性
        # @type AttributePhone: String
        # @param AttributeEmail: 邮箱属性
        # @type AttributeEmail: String
        # @param DomainId: 网络域Id
        # @type DomainId: String

        attr_accessor :Enable, :Ip, :IpBackup, :Port, :EnableSSL, :BaseDN, :AdminAccount, :AdminPassword, :AttributeUser, :AttributeUserName, :AutoSync, :Overwrite, :SyncPeriod, :SyncAll, :SyncUnitSet, :AttributeUnit, :AttributeRealName, :AttributePhone, :AttributeEmail, :DomainId

        def initialize(enable=nil, ip=nil, ipbackup=nil, port=nil, enablessl=nil, basedn=nil, adminaccount=nil, adminpassword=nil, attributeuser=nil, attributeusername=nil, autosync=nil, overwrite=nil, syncperiod=nil, syncall=nil, syncunitset=nil, attributeunit=nil, attributerealname=nil, attributephone=nil, attributeemail=nil, domainid=nil)
          @Enable = enable
          @Ip = ip
          @IpBackup = ipbackup
          @Port = port
          @EnableSSL = enablessl
          @BaseDN = basedn
          @AdminAccount = adminaccount
          @AdminPassword = adminpassword
          @AttributeUser = attributeuser
          @AttributeUserName = attributeusername
          @AutoSync = autosync
          @Overwrite = overwrite
          @SyncPeriod = syncperiod
          @SyncAll = syncall
          @SyncUnitSet = syncunitset
          @AttributeUnit = attributeunit
          @AttributeRealName = attributerealname
          @AttributePhone = attributephone
          @AttributeEmail = attributeemail
          @DomainId = domainid
        end

        def deserialize(params)
          @Enable = params['Enable']
          @Ip = params['Ip']
          @IpBackup = params['IpBackup']
          @Port = params['Port']
          @EnableSSL = params['EnableSSL']
          @BaseDN = params['BaseDN']
          @AdminAccount = params['AdminAccount']
          @AdminPassword = params['AdminPassword']
          @AttributeUser = params['AttributeUser']
          @AttributeUserName = params['AttributeUserName']
          @AutoSync = params['AutoSync']
          @Overwrite = params['Overwrite']
          @SyncPeriod = params['SyncPeriod']
          @SyncAll = params['SyncAll']
          @SyncUnitSet = params['SyncUnitSet']
          @AttributeUnit = params['AttributeUnit']
          @AttributeRealName = params['AttributeRealName']
          @AttributePhone = params['AttributePhone']
          @AttributeEmail = params['AttributeEmail']
          @DomainId = params['DomainId']
        end
      end

      # ModifyLDAPSetting返回参数结构体
      class ModifyLDAPSettingResponse < TencentCloud::Common::AbstractModel
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

      # ModifyOAuthSetting请求参数结构体
      class ModifyOAuthSettingRequest < TencentCloud::Common::AbstractModel
        # @param Enable: 是否开启OAuth认证，false-不开启，true-开启。
        # @type Enable: Boolean
        # @param AuthMethod: OAuth认证方式。
        # @type AuthMethod: String
        # @param ClientId: OAuth认证客户端Id
        # @type ClientId: String
        # @param ClientSecret: OAuth认证客户端密钥
        # @type ClientSecret: String
        # @param CodeUrl: 获取OAuth认证授权码URL
        # @type CodeUrl: String
        # @param TokenUrl: 获取OAuth令牌URL
        # @type TokenUrl: String
        # @param UserInfoUrl: 获取OAuth用户信息URL
        # @type UserInfoUrl: String
        # @param Scopes: 使用Okta认证时指定范围。为空时默认使用 openid、profile、email。
        # @type Scopes: Array

        attr_accessor :Enable, :AuthMethod, :ClientId, :ClientSecret, :CodeUrl, :TokenUrl, :UserInfoUrl, :Scopes

        def initialize(enable=nil, authmethod=nil, clientid=nil, clientsecret=nil, codeurl=nil, tokenurl=nil, userinfourl=nil, scopes=nil)
          @Enable = enable
          @AuthMethod = authmethod
          @ClientId = clientid
          @ClientSecret = clientsecret
          @CodeUrl = codeurl
          @TokenUrl = tokenurl
          @UserInfoUrl = userinfourl
          @Scopes = scopes
        end

        def deserialize(params)
          @Enable = params['Enable']
          @AuthMethod = params['AuthMethod']
          @ClientId = params['ClientId']
          @ClientSecret = params['ClientSecret']
          @CodeUrl = params['CodeUrl']
          @TokenUrl = params['TokenUrl']
          @UserInfoUrl = params['UserInfoUrl']
          @Scopes = params['Scopes']
        end
      end

      # ModifyOAuthSetting返回参数结构体
      class ModifyOAuthSettingResponse < TencentCloud::Common::AbstractModel
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

      # ModifyOperationTask请求参数结构体
      class ModifyOperationTaskRequest < TencentCloud::Common::AbstractModel
        # @param Id: 任务Id
        # @type Id: Integer
        # @param Name: 任务名称
        # @type Name: String
        # @param Type: 任务类型, 1 - 手工执行, 2 - 周期性自动执行
        # @type Type: Integer
        # @param Account: 执行账号
        # @type Account: String
        # @param Timeout: 超时时间,单位秒
        # @type Timeout: Integer
        # @param Script: 执行脚本内容
        # @type Script: String
        # @param DeviceIdSet: 执行主机集合，满足条件以下三个条件：1. 资产绑定可用的专业版或国密版堡垒机服务；2、资产类型为linux资产；3、用户具有资产权限，且资产添加了指定执行账号
        # @type DeviceIdSet: Array
        # @param Period: 执行间隔，单位天. 手工执行时无需传入
        # @type Period: Integer
        # @param FirstTime: 首次执行日期，默认1970-01-01T08:00:01+08:00,手工执行时无需传入
        # @type FirstTime: String
        # @param Encoding: Script参数是否需要进行base64编码后传递，1-需要进行base64编码后传递，非1值-不需要进行base64编码后传递
        # @type Encoding: Integer

        attr_accessor :Id, :Name, :Type, :Account, :Timeout, :Script, :DeviceIdSet, :Period, :FirstTime, :Encoding

        def initialize(id=nil, name=nil, type=nil, account=nil, timeout=nil, script=nil, deviceidset=nil, period=nil, firsttime=nil, encoding=nil)
          @Id = id
          @Name = name
          @Type = type
          @Account = account
          @Timeout = timeout
          @Script = script
          @DeviceIdSet = deviceidset
          @Period = period
          @FirstTime = firsttime
          @Encoding = encoding
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Type = params['Type']
          @Account = params['Account']
          @Timeout = params['Timeout']
          @Script = params['Script']
          @DeviceIdSet = params['DeviceIdSet']
          @Period = params['Period']
          @FirstTime = params['FirstTime']
          @Encoding = params['Encoding']
        end
      end

      # ModifyOperationTask返回参数结构体
      class ModifyOperationTaskResponse < TencentCloud::Common::AbstractModel
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

      # ModifyResource请求参数结构体
      class ModifyResourceRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 需要开通服务的资源ID
        # @type ResourceId: String
        # @param Status: 状态
        # @type Status: String
        # @param ResourceEdition: 实例版本
        # @type ResourceEdition: String
        # @param ResourceNode: 资源节点数
        # @type ResourceNode: Integer
        # @param AutoRenewFlag: 自动续费
        # @type AutoRenewFlag: Integer
        # @param PackageBandwidth: 带宽扩展包个数(4M)
        # @type PackageBandwidth: Integer
        # @param PackageNode: 授权点数扩展包个数(50点)
        # @type PackageNode: Integer
        # @param LogDelivery: 日志投递
        # @type LogDelivery: Integer

        attr_accessor :ResourceId, :Status, :ResourceEdition, :ResourceNode, :AutoRenewFlag, :PackageBandwidth, :PackageNode, :LogDelivery
        extend Gem::Deprecate
        deprecate :Status, :none, 2025, 7
        deprecate :Status=, :none, 2025, 7

        def initialize(resourceid=nil, status=nil, resourceedition=nil, resourcenode=nil, autorenewflag=nil, packagebandwidth=nil, packagenode=nil, logdelivery=nil)
          @ResourceId = resourceid
          @Status = status
          @ResourceEdition = resourceedition
          @ResourceNode = resourcenode
          @AutoRenewFlag = autorenewflag
          @PackageBandwidth = packagebandwidth
          @PackageNode = packagenode
          @LogDelivery = logdelivery
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @Status = params['Status']
          @ResourceEdition = params['ResourceEdition']
          @ResourceNode = params['ResourceNode']
          @AutoRenewFlag = params['AutoRenewFlag']
          @PackageBandwidth = params['PackageBandwidth']
          @PackageNode = params['PackageNode']
          @LogDelivery = params['LogDelivery']
        end
      end

      # ModifyResource返回参数结构体
      class ModifyResourceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyUserGroup请求参数结构体
      class ModifyUserGroupRequest < TencentCloud::Common::AbstractModel
        # @param Id: 用户组ID
        # @type Id: Integer
        # @param Name: 用户组名
        # @type Name: String
        # @param DepartmentId: 用户组所属的部门ID，如：1.2.3
        # @type DepartmentId: String

        attr_accessor :Id, :Name, :DepartmentId

        def initialize(id=nil, name=nil, departmentid=nil)
          @Id = id
          @Name = name
          @DepartmentId = departmentid
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @DepartmentId = params['DepartmentId']
        end
      end

      # ModifyUserGroup返回参数结构体
      class ModifyUserGroupResponse < TencentCloud::Common::AbstractModel
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

      # ModifyUser请求参数结构体
      class ModifyUserRequest < TencentCloud::Common::AbstractModel
        # @param Id: 用户ID
        # @type Id: Integer
        # @param RealName: 用户姓名，最大长度20个字符，不能包含空格
        # @type RealName: String
        # @param Phone: 按照"国家地区代码|手机号"的格式输入。如: "+86|xxxxxxxx"
        # @type Phone: String
        # @param Email: 电子邮件
        # @type Email: String
        # @param ValidateFrom: 用户生效时间，如:"2021-09-22T00:00:00+00:00"
        # 生效、失效时间不填则用户长期有效
        # @type ValidateFrom: String
        # @param ValidateTo: 用户失效时间，如:"2021-09-23T00:00:00+00:00"
        # 生效、失效时间不填则用户长期有效
        # @type ValidateTo: String
        # @param GroupIdSet: 所属用户组ID集合
        # @type GroupIdSet: Array
        # @param AuthType: 认证方式，0 - 本地，1 - LDAP，2 - OAuth 不传则默认为0
        # @type AuthType: Integer
        # @param ValidateTime: 访问时间段限制， 由0、1组成的字符串，长度168(7 × 24)，代表该用户在一周中允许访问的时间段。字符串中第N个字符代表在一周中的第N个小时， 0 - 代表不允许访问，1 - 代表允许访问
        # @type ValidateTime: String
        # @param DepartmentId: 用户所属部门的ID，如1.2.3
        # @type DepartmentId: String

        attr_accessor :Id, :RealName, :Phone, :Email, :ValidateFrom, :ValidateTo, :GroupIdSet, :AuthType, :ValidateTime, :DepartmentId

        def initialize(id=nil, realname=nil, phone=nil, email=nil, validatefrom=nil, validateto=nil, groupidset=nil, authtype=nil, validatetime=nil, departmentid=nil)
          @Id = id
          @RealName = realname
          @Phone = phone
          @Email = email
          @ValidateFrom = validatefrom
          @ValidateTo = validateto
          @GroupIdSet = groupidset
          @AuthType = authtype
          @ValidateTime = validatetime
          @DepartmentId = departmentid
        end

        def deserialize(params)
          @Id = params['Id']
          @RealName = params['RealName']
          @Phone = params['Phone']
          @Email = params['Email']
          @ValidateFrom = params['ValidateFrom']
          @ValidateTo = params['ValidateTo']
          @GroupIdSet = params['GroupIdSet']
          @AuthType = params['AuthType']
          @ValidateTime = params['ValidateTime']
          @DepartmentId = params['DepartmentId']
        end
      end

      # ModifyUser返回参数结构体
      class ModifyUserResponse < TencentCloud::Common::AbstractModel
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

      # 操作日志
      class OperationEvent < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名
        # @type UserName: String
        # @param RealName: 姓名
        # @type RealName: String
        # @param Time: 操作时间
        # @type Time: String
        # @param SourceIp: 来源IP
        # @type SourceIp: String
        # @param Kind: 操作类型
        # @type Kind: Integer
        # @param Operation: 具体操作内容
        # @type Operation: String
        # @param Result: 操作结果，1-成功，2-失败
        # @type Result: Integer
        # @param SignValue: 签名值
        # @type SignValue: String

        attr_accessor :UserName, :RealName, :Time, :SourceIp, :Kind, :Operation, :Result, :SignValue

        def initialize(username=nil, realname=nil, time=nil, sourceip=nil, kind=nil, operation=nil, result=nil, signvalue=nil)
          @UserName = username
          @RealName = realname
          @Time = time
          @SourceIp = sourceip
          @Kind = kind
          @Operation = operation
          @Result = result
          @SignValue = signvalue
        end

        def deserialize(params)
          @UserName = params['UserName']
          @RealName = params['RealName']
          @Time = params['Time']
          @SourceIp = params['SourceIp']
          @Kind = params['Kind']
          @Operation = params['Operation']
          @Result = params['Result']
          @SignValue = params['SignValue']
        end
      end

      # 运维任务信息
      class OperationTask < TencentCloud::Common::AbstractModel
        # @param Id: 运维任务主键ID
        # @type Id: Integer
        # @param OperationId: 运维任务ID
        # @type OperationId: String
        # @param Name: 运维任务名称
        # @type Name: String
        # @param UserName: 创建用户
        # @type UserName: String
        # @param RealName: 运维人员姓名
        # @type RealName: String
        # @param Type: 任务类型，1 - 手工执行任务， 2 - 周期性任务
        # @type Type: Integer
        # @param Period: 周期性任务执行间隔，单位天
        # @type Period: Integer
        # @param NextTime: 执行账户
        # @type NextTime: String
        # @param FirstTime: 下一次执行时间
        # @type FirstTime: String

        attr_accessor :Id, :OperationId, :Name, :UserName, :RealName, :Type, :Period, :NextTime, :FirstTime

        def initialize(id=nil, operationid=nil, name=nil, username=nil, realname=nil, type=nil, period=nil, nexttime=nil, firsttime=nil)
          @Id = id
          @OperationId = operationid
          @Name = name
          @UserName = username
          @RealName = realname
          @Type = type
          @Period = period
          @NextTime = nexttime
          @FirstTime = firsttime
        end

        def deserialize(params)
          @Id = params['Id']
          @OperationId = params['OperationId']
          @Name = params['Name']
          @UserName = params['UserName']
          @RealName = params['RealName']
          @Type = params['Type']
          @Period = params['Period']
          @NextTime = params['NextTime']
          @FirstTime = params['FirstTime']
        end
      end

      # 回放所需字段信息
      class ReplayInformation < TencentCloud::Common::AbstractModel
        # @param Token: 令牌
        # @type Token: String
        # @param StartTime: 会话开始时间
        # @type StartTime: String
        # @param Address: 回放链接
        # @type Address: String
        # @param ReplayType: 回放类型 ，默认0， 1-rfb 2-mp4 3-ssh
        # @type ReplayType: Integer

        attr_accessor :Token, :StartTime, :Address, :ReplayType

        def initialize(token=nil, starttime=nil, address=nil, replaytype=nil)
          @Token = token
          @StartTime = starttime
          @Address = address
          @ReplayType = replaytype
        end

        def deserialize(params)
          @Token = params['Token']
          @StartTime = params['StartTime']
          @Address = params['Address']
          @ReplayType = params['ReplayType']
        end
      end

      # ReplaySession请求参数结构体
      class ReplaySessionRequest < TencentCloud::Common::AbstractModel
        # @param Sid: 会话Sid
        # @type Sid: String

        attr_accessor :Sid

        def initialize(sid=nil)
          @Sid = sid
        end

        def deserialize(params)
          @Sid = params['Sid']
        end
      end

      # ReplaySession返回参数结构体
      class ReplaySessionResponse < TencentCloud::Common::AbstractModel
        # @param ReplayInfo: 回放所需信息
        # @type ReplayInfo: :class:`Tencentcloud::Bh.v20230418.models.ReplayInformation`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReplayInfo, :RequestId

        def initialize(replayinfo=nil, requestid=nil)
          @ReplayInfo = replayinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ReplayInfo'].nil?
            @ReplayInfo = ReplayInformation.new
            @ReplayInfo.deserialize(params['ReplayInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ResetDeviceAccountPassword请求参数结构体
      class ResetDeviceAccountPasswordRequest < TencentCloud::Common::AbstractModel
        # @param IdSet: ID集合
        # @type IdSet: Array

        attr_accessor :IdSet

        def initialize(idset=nil)
          @IdSet = idset
        end

        def deserialize(params)
          @IdSet = params['IdSet']
        end
      end

      # ResetDeviceAccountPassword返回参数结构体
      class ResetDeviceAccountPasswordResponse < TencentCloud::Common::AbstractModel
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

      # ResetDeviceAccountPrivateKey请求参数结构体
      class ResetDeviceAccountPrivateKeyRequest < TencentCloud::Common::AbstractModel
        # @param IdSet: ID集合
        # @type IdSet: Array

        attr_accessor :IdSet

        def initialize(idset=nil)
          @IdSet = idset
        end

        def deserialize(params)
          @IdSet = params['IdSet']
        end
      end

      # ResetDeviceAccountPrivateKey返回参数结构体
      class ResetDeviceAccountPrivateKeyResponse < TencentCloud::Common::AbstractModel
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

      # ResetUser请求参数结构体
      class ResetUserRequest < TencentCloud::Common::AbstractModel
        # @param IdSet: 用户ID集合
        # @type IdSet: Array

        attr_accessor :IdSet

        def initialize(idset=nil)
          @IdSet = idset
        end

        def deserialize(params)
          @IdSet = params['IdSet']
        end
      end

      # ResetUser返回参数结构体
      class ResetUserResponse < TencentCloud::Common::AbstractModel
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

      # 堡垒机服务信息
      class Resource < TencentCloud::Common::AbstractModel
        # @param ResourceId: 服务实例ID，如bh-saas-s3ed4r5e
        # @type ResourceId: String
        # @param ApCode: 地域编码
        # @type ApCode: String
        # @param SvArgs: 服务实例规格信息
        # @type SvArgs: String
        # @param VpcId: VPC ID
        # @type VpcId: String
        # @param Nodes: 服务规格对应的资产数
        # @type Nodes: Integer
        # @param RenewFlag: 自动续费标记，0 - 表示默认状态，1 - 表示自动续费，2 - 表示明确不自动续费
        # @type RenewFlag: Integer
        # @param ExpireTime: 过期时间
        # @type ExpireTime: String
        # @param Status: 资源状态，0 - 未初始化，1 - 正常，2 - 隔离，3 - 销毁，4 - 初始化失败，5 - 初始化中
        # @type Status: Integer
        # @param ResourceName: 服务实例名，如T-Sec-堡垒机（SaaS型）
        # @type ResourceName: String
        # @param Pid: 定价模型ID
        # @type Pid: Integer
        # @param CreateTime: 资源创建时间
        # @type CreateTime: String
        # @param ProductCode: 商品码, p_cds_dasb
        # @type ProductCode: String
        # @param SubProductCode: 子商品码, sp_cds_dasb_bh_saas
        # @type SubProductCode: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param Expired: 是否过期，true-过期，false-未过期
        # @type Expired: Boolean
        # @param Deployed: 是否开通，true-开通，false-未开通
        # @type Deployed: Boolean
        # @param VpcName: 开通服务的 VPC 名称
        # @type VpcName: String
        # @param VpcCidrBlock: 开通服务的 VPC 对应的网段
        # @type VpcCidrBlock: String
        # @param SubnetId: 开通服务的子网ID
        # @type SubnetId: String
        # @param SubnetName: 开通服务的子网名称
        # @type SubnetName: String
        # @param CidrBlock: 开通服务的子网网段
        # @type CidrBlock: String
        # @param PublicIpSet: 外部IP
        # @type PublicIpSet: Array
        # @param PrivateIpSet: 内部IP
        # @type PrivateIpSet: Array
        # @param ModuleSet: 服务开通的高级功能列表，如:[DB]
        # @type ModuleSet: Array
        # @param UsedNodes: 已使用的授权点数
        # @type UsedNodes: Integer
        # @param ExtendPoints: 扩展点数
        # @type ExtendPoints: Integer
        # @param PackageBandwidth: 带宽扩展包个数(4M)
        # @type PackageBandwidth: Integer
        # @param PackageNode: 授权点数扩展包个数(50点)
        # @type PackageNode: Integer
        # @param LogDeliveryArgs: 日志投递规格信息
        # @type LogDeliveryArgs: String
        # @param ClbSet: 堡垒机资源LB
        # @type ClbSet: Array
        # @param DomainCount: 网络域个数
        # @type DomainCount: Integer
        # @param UsedDomainCount: 已经使用的网络域个数
        # @type UsedDomainCount: Integer
        # @param Trial: 0 非试用版，1 试用版
        # @type Trial: Integer
        # @param LogDelivery: 日志投递规格信息
        # @type LogDelivery: String
        # @param CdcClusterId: cdc集群id
        # @type CdcClusterId: String
        # @param DeployModel: 部署模式 默认0 0-cvm 1-tke
        # @type DeployModel: Integer
        # @param IntranetAccess: 0 默认值，非内网访问，1 内网访问，2 内网访问开通中，3 内网访问关闭中
        # @type IntranetAccess: Integer
        # @param IntranetPrivateIpSet: 内网访问的ip
        # @type IntranetPrivateIpSet: Array
        # @param IntranetVpcId: 开通内网访问的vpc
        # @type IntranetVpcId: String
        # @param IntranetVpcCidr: 开通内网访问vpc的网段
        # @type IntranetVpcCidr: String
        # @param ShareClb: 是否共享clb，true-共享clb，false-独享clb
        # @type ShareClb: Boolean
        # @param OpenClbId: 共享clb id
        # @type OpenClbId: String
        # @param LbVipIsp: 运营商信息
        # @type LbVipIsp: String
        # @param TUICmdPort: linux资产命令行运维端口
        # @type TUICmdPort: Integer
        # @param TUIDirectPort: linux资产直连端口
        # @type TUIDirectPort: Integer
        # @param WebAccess: 1 默认值，web访问开启，0 web访问关闭，2 web访问开通中，3 web访问关闭中
        # @type WebAccess: Integer
        # @param ClientAccess: 1 默认值，客户单访问开启，0 客户端访问关闭，2 客户端访问开通中，3 客户端访问关闭中
        # @type ClientAccess: Integer
        # @param ExternalAccess: 1 默认值，外网访问开启，0 外网访问关闭，2 外网访问开通中，3 外网访问关闭中
        # @type ExternalAccess: Integer
        # @param IOAResource: 0默认值。0-免费版（试用版）ioa，1-付费版ioa
        # @type IOAResource: Integer
        # @param PackageIOAUserCount: 零信任堡垒机用户扩展包个数。1个扩展包对应20个用户数
        # @type PackageIOAUserCount: Integer
        # @param PackageIOABandwidth:  零信任堡垒机带宽扩展包个数。一个扩展包表示4M带宽
        # @type PackageIOABandwidth: Integer
        # @param IOAResourceId: 堡垒机实例对应的零信任实例id
        # @type IOAResourceId: String

        attr_accessor :ResourceId, :ApCode, :SvArgs, :VpcId, :Nodes, :RenewFlag, :ExpireTime, :Status, :ResourceName, :Pid, :CreateTime, :ProductCode, :SubProductCode, :Zone, :Expired, :Deployed, :VpcName, :VpcCidrBlock, :SubnetId, :SubnetName, :CidrBlock, :PublicIpSet, :PrivateIpSet, :ModuleSet, :UsedNodes, :ExtendPoints, :PackageBandwidth, :PackageNode, :LogDeliveryArgs, :ClbSet, :DomainCount, :UsedDomainCount, :Trial, :LogDelivery, :CdcClusterId, :DeployModel, :IntranetAccess, :IntranetPrivateIpSet, :IntranetVpcId, :IntranetVpcCidr, :ShareClb, :OpenClbId, :LbVipIsp, :TUICmdPort, :TUIDirectPort, :WebAccess, :ClientAccess, :ExternalAccess, :IOAResource, :PackageIOAUserCount, :PackageIOABandwidth, :IOAResourceId

        def initialize(resourceid=nil, apcode=nil, svargs=nil, vpcid=nil, nodes=nil, renewflag=nil, expiretime=nil, status=nil, resourcename=nil, pid=nil, createtime=nil, productcode=nil, subproductcode=nil, zone=nil, expired=nil, deployed=nil, vpcname=nil, vpccidrblock=nil, subnetid=nil, subnetname=nil, cidrblock=nil, publicipset=nil, privateipset=nil, moduleset=nil, usednodes=nil, extendpoints=nil, packagebandwidth=nil, packagenode=nil, logdeliveryargs=nil, clbset=nil, domaincount=nil, useddomaincount=nil, trial=nil, logdelivery=nil, cdcclusterid=nil, deploymodel=nil, intranetaccess=nil, intranetprivateipset=nil, intranetvpcid=nil, intranetvpccidr=nil, shareclb=nil, openclbid=nil, lbvipisp=nil, tuicmdport=nil, tuidirectport=nil, webaccess=nil, clientaccess=nil, externalaccess=nil, ioaresource=nil, packageioausercount=nil, packageioabandwidth=nil, ioaresourceid=nil)
          @ResourceId = resourceid
          @ApCode = apcode
          @SvArgs = svargs
          @VpcId = vpcid
          @Nodes = nodes
          @RenewFlag = renewflag
          @ExpireTime = expiretime
          @Status = status
          @ResourceName = resourcename
          @Pid = pid
          @CreateTime = createtime
          @ProductCode = productcode
          @SubProductCode = subproductcode
          @Zone = zone
          @Expired = expired
          @Deployed = deployed
          @VpcName = vpcname
          @VpcCidrBlock = vpccidrblock
          @SubnetId = subnetid
          @SubnetName = subnetname
          @CidrBlock = cidrblock
          @PublicIpSet = publicipset
          @PrivateIpSet = privateipset
          @ModuleSet = moduleset
          @UsedNodes = usednodes
          @ExtendPoints = extendpoints
          @PackageBandwidth = packagebandwidth
          @PackageNode = packagenode
          @LogDeliveryArgs = logdeliveryargs
          @ClbSet = clbset
          @DomainCount = domaincount
          @UsedDomainCount = useddomaincount
          @Trial = trial
          @LogDelivery = logdelivery
          @CdcClusterId = cdcclusterid
          @DeployModel = deploymodel
          @IntranetAccess = intranetaccess
          @IntranetPrivateIpSet = intranetprivateipset
          @IntranetVpcId = intranetvpcid
          @IntranetVpcCidr = intranetvpccidr
          @ShareClb = shareclb
          @OpenClbId = openclbid
          @LbVipIsp = lbvipisp
          @TUICmdPort = tuicmdport
          @TUIDirectPort = tuidirectport
          @WebAccess = webaccess
          @ClientAccess = clientaccess
          @ExternalAccess = externalaccess
          @IOAResource = ioaresource
          @PackageIOAUserCount = packageioausercount
          @PackageIOABandwidth = packageioabandwidth
          @IOAResourceId = ioaresourceid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ApCode = params['ApCode']
          @SvArgs = params['SvArgs']
          @VpcId = params['VpcId']
          @Nodes = params['Nodes']
          @RenewFlag = params['RenewFlag']
          @ExpireTime = params['ExpireTime']
          @Status = params['Status']
          @ResourceName = params['ResourceName']
          @Pid = params['Pid']
          @CreateTime = params['CreateTime']
          @ProductCode = params['ProductCode']
          @SubProductCode = params['SubProductCode']
          @Zone = params['Zone']
          @Expired = params['Expired']
          @Deployed = params['Deployed']
          @VpcName = params['VpcName']
          @VpcCidrBlock = params['VpcCidrBlock']
          @SubnetId = params['SubnetId']
          @SubnetName = params['SubnetName']
          @CidrBlock = params['CidrBlock']
          @PublicIpSet = params['PublicIpSet']
          @PrivateIpSet = params['PrivateIpSet']
          @ModuleSet = params['ModuleSet']
          @UsedNodes = params['UsedNodes']
          @ExtendPoints = params['ExtendPoints']
          @PackageBandwidth = params['PackageBandwidth']
          @PackageNode = params['PackageNode']
          @LogDeliveryArgs = params['LogDeliveryArgs']
          unless params['ClbSet'].nil?
            @ClbSet = []
            params['ClbSet'].each do |i|
              clb_tmp = Clb.new
              clb_tmp.deserialize(i)
              @ClbSet << clb_tmp
            end
          end
          @DomainCount = params['DomainCount']
          @UsedDomainCount = params['UsedDomainCount']
          @Trial = params['Trial']
          @LogDelivery = params['LogDelivery']
          @CdcClusterId = params['CdcClusterId']
          @DeployModel = params['DeployModel']
          @IntranetAccess = params['IntranetAccess']
          @IntranetPrivateIpSet = params['IntranetPrivateIpSet']
          @IntranetVpcId = params['IntranetVpcId']
          @IntranetVpcCidr = params['IntranetVpcCidr']
          @ShareClb = params['ShareClb']
          @OpenClbId = params['OpenClbId']
          @LbVipIsp = params['LbVipIsp']
          @TUICmdPort = params['TUICmdPort']
          @TUIDirectPort = params['TUIDirectPort']
          @WebAccess = params['WebAccess']
          @ClientAccess = params['ClientAccess']
          @ExternalAccess = params['ExternalAccess']
          @IOAResource = params['IOAResource']
          @PackageIOAUserCount = params['PackageIOAUserCount']
          @PackageIOABandwidth = params['PackageIOABandwidth']
          @IOAResourceId = params['IOAResourceId']
        end
      end

      # 立即执行改密任务的入参
      class RunChangePwdTaskDetail < TencentCloud::Common::AbstractModel
        # @param DeviceId: 资产id
        # @type DeviceId: Integer
        # @param Account: 资产账号
        # @type Account: String

        attr_accessor :DeviceId, :Account

        def initialize(deviceid=nil, account=nil)
          @DeviceId = deviceid
          @Account = account
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @Account = params['Account']
        end
      end

      # RunChangePwdTask请求参数结构体
      class RunChangePwdTaskRequest < TencentCloud::Common::AbstractModel
        # @param OperationId: 任务Id
        # @type OperationId: String
        # @param DepartmentId: 部门id
        # @type DepartmentId: String
        # @param Details: 改密任务详情
        # @type Details: Array

        attr_accessor :OperationId, :DepartmentId, :Details

        def initialize(operationid=nil, departmentid=nil, details=nil)
          @OperationId = operationid
          @DepartmentId = departmentid
          @Details = details
        end

        def deserialize(params)
          @OperationId = params['OperationId']
          @DepartmentId = params['DepartmentId']
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              runchangepwdtaskdetail_tmp = RunChangePwdTaskDetail.new
              runchangepwdtaskdetail_tmp.deserialize(i)
              @Details << runchangepwdtaskdetail_tmp
            end
          end
        end
      end

      # RunChangePwdTask返回参数结构体
      class RunChangePwdTaskResponse < TencentCloud::Common::AbstractModel
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

      # RunOperationTask请求参数结构体
      class RunOperationTaskRequest < TencentCloud::Common::AbstractModel
        # @param Id: 运维任务ID
        # @type Id: Integer

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # RunOperationTask返回参数结构体
      class RunOperationTaskResponse < TencentCloud::Common::AbstractModel
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

      # SearchAuditLog请求参数结构体
      class SearchAuditLogRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间，不得早于当前时间的180天前
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 每页容量，默认为20，最大200
        # @type Limit: Integer

        attr_accessor :StartTime, :EndTime, :Offset, :Limit

        def initialize(starttime=nil, endtime=nil, offset=nil, limit=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # SearchAuditLog返回参数结构体
      class SearchAuditLogResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 日志总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RequestId

        def initialize(totalcount=nil, requestid=nil)
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # SearchCommandBySid请求参数结构体
      class SearchCommandBySidRequest < TencentCloud::Common::AbstractModel
        # @param Sid: 会话Id
        # @type Sid: String
        # @param Cmd: 命令，可模糊搜索
        # @type Cmd: String
        # @param Encoding: Cmd字段是前端传值是否进行base64.
        # 0:否，1：是
        # @type Encoding: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 每页容量，默认20，最大200
        # @type Limit: Integer
        # @param AuditAction: 根据拦截状态进行过滤
        # @type AuditAction: Array

        attr_accessor :Sid, :Cmd, :Encoding, :Offset, :Limit, :AuditAction

        def initialize(sid=nil, cmd=nil, encoding=nil, offset=nil, limit=nil, auditaction=nil)
          @Sid = sid
          @Cmd = cmd
          @Encoding = encoding
          @Offset = offset
          @Limit = limit
          @AuditAction = auditaction
        end

        def deserialize(params)
          @Sid = params['Sid']
          @Cmd = params['Cmd']
          @Encoding = params['Encoding']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @AuditAction = params['AuditAction']
        end
      end

      # SearchCommandBySid返回参数结构体
      class SearchCommandBySidResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param CommandSet: 命令列表
        # @type CommandSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :CommandSet, :RequestId

        def initialize(totalcount=nil, commandset=nil, requestid=nil)
          @TotalCount = totalcount
          @CommandSet = commandset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['CommandSet'].nil?
            @CommandSet = []
            params['CommandSet'].each do |i|
              command_tmp = Command.new
              command_tmp.deserialize(i)
              @CommandSet << command_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # SearchCommand请求参数结构体
      class SearchCommandRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 搜索区间的开始时间
        # @type StartTime: String
        # @param EndTime: 搜索区间的结束时间，不填默认为开始时间到现在为止
        # @type EndTime: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param RealName: 姓名
        # @type RealName: String
        # @param InstanceId: 资产实例ID
        # @type InstanceId: String
        # @param DeviceName: 资产名称
        # @type DeviceName: String
        # @param PublicIp: 资产的公网IP
        # @type PublicIp: String
        # @param PrivateIp: 资产的内网IP
        # @type PrivateIp: String
        # @param Cmd: 执行的命令
        # @type Cmd: String
        # @param Encoding: Cmd字段是前端传值是否进行base64.
        # 0:否，1：是
        # @type Encoding: Integer
        # @param AuditAction: 根据拦截状态进行过滤：1 - 已执行，2 - 被阻断
        # @type AuditAction: Array
        # @param Limit: 每页容量，默认20，最大200
        # @type Limit: Integer
        # @param Offset: 分页偏移位置，默认值为0
        # @type Offset: Integer

        attr_accessor :StartTime, :EndTime, :UserName, :RealName, :InstanceId, :DeviceName, :PublicIp, :PrivateIp, :Cmd, :Encoding, :AuditAction, :Limit, :Offset

        def initialize(starttime=nil, endtime=nil, username=nil, realname=nil, instanceid=nil, devicename=nil, publicip=nil, privateip=nil, cmd=nil, encoding=nil, auditaction=nil, limit=nil, offset=nil)
          @StartTime = starttime
          @EndTime = endtime
          @UserName = username
          @RealName = realname
          @InstanceId = instanceid
          @DeviceName = devicename
          @PublicIp = publicip
          @PrivateIp = privateip
          @Cmd = cmd
          @Encoding = encoding
          @AuditAction = auditaction
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @UserName = params['UserName']
          @RealName = params['RealName']
          @InstanceId = params['InstanceId']
          @DeviceName = params['DeviceName']
          @PublicIp = params['PublicIp']
          @PrivateIp = params['PrivateIp']
          @Cmd = params['Cmd']
          @Encoding = params['Encoding']
          @AuditAction = params['AuditAction']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # SearchCommand返回参数结构体
      class SearchCommandResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param Commands: 命令列表
        # @type Commands: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Commands, :RequestId

        def initialize(totalcount=nil, commands=nil, requestid=nil)
          @TotalCount = totalcount
          @Commands = commands
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Commands'].nil?
            @Commands = []
            params['Commands'].each do |i|
              searchcommandresult_tmp = SearchCommandResult.new
              searchcommandresult_tmp.deserialize(i)
              @Commands << searchcommandresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 命令执行检索结果
      class SearchCommandResult < TencentCloud::Common::AbstractModel
        # @param Time: 命令输入的时间
        # @type Time: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param RealName: 姓名
        # @type RealName: String
        # @param InstanceId: 资产ID
        # @type InstanceId: String
        # @param DeviceName: 资产名称
        # @type DeviceName: String
        # @param PublicIp: 资产公网IP
        # @type PublicIp: String
        # @param PrivateIp: 资产内网IP
        # @type PrivateIp: String
        # @param Cmd: 命令
        # @type Cmd: String
        # @param Action: 命令执行情况，1--允许，2--拒绝
        # @type Action: Integer
        # @param Sid: 命令所属的会话ID
        # @type Sid: String
        # @param TimeOffset: 命令执行时间相对于所属会话开始时间的偏移量，单位ms
        # @type TimeOffset: Integer
        # @param Account: 账号
        # @type Account: String
        # @param FromIp: source ip
        # @type FromIp: String
        # @param SessionTime: 该命令所属会话的会话开始时间
        # @type SessionTime: String
        # @param SessTime: 该命令所属会话的会话开始时间（使用SessionTime）
        # @type SessTime: String
        # @param ConfirmTime: 复核时间
        # @type ConfirmTime: String
        # @param UserDepartmentId: 部门id
        # @type UserDepartmentId: String
        # @param UserDepartmentName: 用户部门名称
        # @type UserDepartmentName: String
        # @param DeviceDepartmentId: 设备部门id
        # @type DeviceDepartmentId: String
        # @param DeviceDepartmentName: 设备部门名称
        # @type DeviceDepartmentName: String
        # @param Size: 会话大小
        # @type Size: Integer
        # @param SignValue: 签名值
        # @type SignValue: String
        # @param DeviceKind: 资产类型
        # @type DeviceKind: String

        attr_accessor :Time, :UserName, :RealName, :InstanceId, :DeviceName, :PublicIp, :PrivateIp, :Cmd, :Action, :Sid, :TimeOffset, :Account, :FromIp, :SessionTime, :SessTime, :ConfirmTime, :UserDepartmentId, :UserDepartmentName, :DeviceDepartmentId, :DeviceDepartmentName, :Size, :SignValue, :DeviceKind

        def initialize(time=nil, username=nil, realname=nil, instanceid=nil, devicename=nil, publicip=nil, privateip=nil, cmd=nil, action=nil, sid=nil, timeoffset=nil, account=nil, fromip=nil, sessiontime=nil, sesstime=nil, confirmtime=nil, userdepartmentid=nil, userdepartmentname=nil, devicedepartmentid=nil, devicedepartmentname=nil, size=nil, signvalue=nil, devicekind=nil)
          @Time = time
          @UserName = username
          @RealName = realname
          @InstanceId = instanceid
          @DeviceName = devicename
          @PublicIp = publicip
          @PrivateIp = privateip
          @Cmd = cmd
          @Action = action
          @Sid = sid
          @TimeOffset = timeoffset
          @Account = account
          @FromIp = fromip
          @SessionTime = sessiontime
          @SessTime = sesstime
          @ConfirmTime = confirmtime
          @UserDepartmentId = userdepartmentid
          @UserDepartmentName = userdepartmentname
          @DeviceDepartmentId = devicedepartmentid
          @DeviceDepartmentName = devicedepartmentname
          @Size = size
          @SignValue = signvalue
          @DeviceKind = devicekind
        end

        def deserialize(params)
          @Time = params['Time']
          @UserName = params['UserName']
          @RealName = params['RealName']
          @InstanceId = params['InstanceId']
          @DeviceName = params['DeviceName']
          @PublicIp = params['PublicIp']
          @PrivateIp = params['PrivateIp']
          @Cmd = params['Cmd']
          @Action = params['Action']
          @Sid = params['Sid']
          @TimeOffset = params['TimeOffset']
          @Account = params['Account']
          @FromIp = params['FromIp']
          @SessionTime = params['SessionTime']
          @SessTime = params['SessTime']
          @ConfirmTime = params['ConfirmTime']
          @UserDepartmentId = params['UserDepartmentId']
          @UserDepartmentName = params['UserDepartmentName']
          @DeviceDepartmentId = params['DeviceDepartmentId']
          @DeviceDepartmentName = params['DeviceDepartmentName']
          @Size = params['Size']
          @SignValue = params['SignValue']
          @DeviceKind = params['DeviceKind']
        end
      end

      # SearchFileBySid请求参数结构体
      class SearchFileBySidRequest < TencentCloud::Common::AbstractModel
        # @param Sid: 若入参为Id，则其他入参字段不作为搜索依据，仅按照Id来搜索会话
        # @type Sid: String
        # @param AuditLog: 是否创建审计日志,通过查看按钮调用时为true,其他为false
        # @type AuditLog: Boolean
        # @param Limit: 分页的页内记录数，默认为20，最大200
        # @type Limit: Integer
        # @param FileName: 可填写路径名或文件名
        # @type FileName: String
        # @param Offset: 分页用偏移量
        # @type Offset: Integer
        # @param AuditAction: 1-已执行，  2-被阻断
        # @type AuditAction: Integer
        # @param TypeFilters: 以Protocol和Method为条件查询
        # @type TypeFilters: Array

        attr_accessor :Sid, :AuditLog, :Limit, :FileName, :Offset, :AuditAction, :TypeFilters

        def initialize(sid=nil, auditlog=nil, limit=nil, filename=nil, offset=nil, auditaction=nil, typefilters=nil)
          @Sid = sid
          @AuditLog = auditlog
          @Limit = limit
          @FileName = filename
          @Offset = offset
          @AuditAction = auditaction
          @TypeFilters = typefilters
        end

        def deserialize(params)
          @Sid = params['Sid']
          @AuditLog = params['AuditLog']
          @Limit = params['Limit']
          @FileName = params['FileName']
          @Offset = params['Offset']
          @AuditAction = params['AuditAction']
          unless params['TypeFilters'].nil?
            @TypeFilters = []
            params['TypeFilters'].each do |i|
              searchfiletypefilter_tmp = SearchFileTypeFilter.new
              searchfiletypefilter_tmp.deserialize(i)
              @TypeFilters << searchfiletypefilter_tmp
            end
          end
        end
      end

      # SearchFileBySid返回参数结构体
      class SearchFileBySidResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录数
        # @type TotalCount: Integer
        # @param SearchFileBySidResult: 某会话的文件操作列表
        # @type SearchFileBySidResult: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SearchFileBySidResult, :RequestId

        def initialize(totalcount=nil, searchfilebysidresult=nil, requestid=nil)
          @TotalCount = totalcount
          @SearchFileBySidResult = searchfilebysidresult
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SearchFileBySidResult'].nil?
            @SearchFileBySidResult = []
            params['SearchFileBySidResult'].each do |i|
              searchfilebysidresult_tmp = SearchFileBySidResult.new
              searchfilebysidresult_tmp.deserialize(i)
              @SearchFileBySidResult << searchfilebysidresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 文件操作搜索结果
      class SearchFileBySidResult < TencentCloud::Common::AbstractModel
        # @param Sid: 会话Id
        # @type Sid: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Account: 资产账号
        # @type Account: String
        # @param FromIp: 来源Ip
        # @type FromIp: String
        # @param Time: 文件操作时间
        # @type Time: String
        # @param Method: 1-上传文件 2-下载文件 3-删除文件 4-移动文件 5-重命名文件 6-新建文件夹 7-移动文件夹 8-重命名文件夹 9-删除文件夹
        # @type Method: Integer
        # @param Protocol: 文件传输协议
        # @type Protocol: String
        # @param FileCurr: method为上传、下载、删除时文件在服务器上的位置, 或重命名、移动文件前文件的位置
        # @type FileCurr: String
        # @param FileNew: method为重命名、移动文件时代表移动后的新位置.其他情况为null
        # @type FileNew: String
        # @param Size: method为上传文件、下载文件、删除文件时显示文件大小。其他情况为null
        # @type Size: Integer
        # @param Action: 堡垒机拦截情况, 1-已执行，  2-被阻断
        # @type Action: Integer
        # @param ConfirmTime: 复核时间，当Action是3时，需有复核时间
        # @type ConfirmTime: String
        # @param UserDepartmentId: 用户部门Id
        # @type UserDepartmentId: String
        # @param UserDepartmentName: 用户部门name
        # @type UserDepartmentName: String
        # @param DeviceDepartmentId: 设备部门id
        # @type DeviceDepartmentId: String
        # @param DeviceDepartmentName: 设备部门name
        # @type DeviceDepartmentName: String
        # @param SignValue: 签名值
        # @type SignValue: String

        attr_accessor :Sid, :UserName, :InstanceId, :Account, :FromIp, :Time, :Method, :Protocol, :FileCurr, :FileNew, :Size, :Action, :ConfirmTime, :UserDepartmentId, :UserDepartmentName, :DeviceDepartmentId, :DeviceDepartmentName, :SignValue

        def initialize(sid=nil, username=nil, instanceid=nil, account=nil, fromip=nil, time=nil, method=nil, protocol=nil, filecurr=nil, filenew=nil, size=nil, action=nil, confirmtime=nil, userdepartmentid=nil, userdepartmentname=nil, devicedepartmentid=nil, devicedepartmentname=nil, signvalue=nil)
          @Sid = sid
          @UserName = username
          @InstanceId = instanceid
          @Account = account
          @FromIp = fromip
          @Time = time
          @Method = method
          @Protocol = protocol
          @FileCurr = filecurr
          @FileNew = filenew
          @Size = size
          @Action = action
          @ConfirmTime = confirmtime
          @UserDepartmentId = userdepartmentid
          @UserDepartmentName = userdepartmentname
          @DeviceDepartmentId = devicedepartmentid
          @DeviceDepartmentName = devicedepartmentname
          @SignValue = signvalue
        end

        def deserialize(params)
          @Sid = params['Sid']
          @UserName = params['UserName']
          @InstanceId = params['InstanceId']
          @Account = params['Account']
          @FromIp = params['FromIp']
          @Time = params['Time']
          @Method = params['Method']
          @Protocol = params['Protocol']
          @FileCurr = params['FileCurr']
          @FileNew = params['FileNew']
          @Size = params['Size']
          @Action = params['Action']
          @ConfirmTime = params['ConfirmTime']
          @UserDepartmentId = params['UserDepartmentId']
          @UserDepartmentName = params['UserDepartmentName']
          @DeviceDepartmentId = params['DeviceDepartmentId']
          @DeviceDepartmentName = params['DeviceDepartmentName']
          @SignValue = params['SignValue']
        end
      end

      # SearchFile请求参数结构体
      class SearchFileRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询开始时间
        # @type StartTime: String
        # @param EndTime: 查询结束时间
        # @type EndTime: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param RealName: 姓名
        # @type RealName: String
        # @param InstanceId: 资产ID
        # @type InstanceId: String
        # @param DeviceName: 资产名称
        # @type DeviceName: String
        # @param PublicIp: 资产公网IP
        # @type PublicIp: String
        # @param PrivateIp: 资产内网IP
        # @type PrivateIp: String
        # @param Method: 操作类型：1 - 文件上传，2 - 文件下载，3 - 文件删除，4 - 文件(夹)移动，5 - 文件(夹)重命名，6 - 新建文件夹，9 - 删除文件夹
        # @type Method: Array
        # @param FileName: 可填写路径名或文件（夹）名
        # @type FileName: String
        # @param AuditAction: 1-已执行，  2-被阻断
        # @type AuditAction: Array
        # @param Limit: 分页的页内记录数，默认为20，最大200
        # @type Limit: Integer
        # @param Offset: 分页偏移位置，默认值为0
        # @type Offset: Integer

        attr_accessor :StartTime, :EndTime, :UserName, :RealName, :InstanceId, :DeviceName, :PublicIp, :PrivateIp, :Method, :FileName, :AuditAction, :Limit, :Offset

        def initialize(starttime=nil, endtime=nil, username=nil, realname=nil, instanceid=nil, devicename=nil, publicip=nil, privateip=nil, method=nil, filename=nil, auditaction=nil, limit=nil, offset=nil)
          @StartTime = starttime
          @EndTime = endtime
          @UserName = username
          @RealName = realname
          @InstanceId = instanceid
          @DeviceName = devicename
          @PublicIp = publicip
          @PrivateIp = privateip
          @Method = method
          @FileName = filename
          @AuditAction = auditaction
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @UserName = params['UserName']
          @RealName = params['RealName']
          @InstanceId = params['InstanceId']
          @DeviceName = params['DeviceName']
          @PublicIp = params['PublicIp']
          @PrivateIp = params['PrivateIp']
          @Method = params['Method']
          @FileName = params['FileName']
          @AuditAction = params['AuditAction']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # SearchFile返回参数结构体
      class SearchFileResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录数
        # @type TotalCount: Integer
        # @param Files: 文件操作列表
        # @type Files: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Files, :RequestId

        def initialize(totalcount=nil, files=nil, requestid=nil)
          @TotalCount = totalcount
          @Files = files
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Files'].nil?
            @Files = []
            params['Files'].each do |i|
              searchfileresult_tmp = SearchFileResult.new
              searchfileresult_tmp.deserialize(i)
              @Files << searchfileresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 文件传输检索结果
      class SearchFileResult < TencentCloud::Common::AbstractModel
        # @param Time: 文件传输的时间
        # @type Time: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param RealName: 姓名
        # @type RealName: String
        # @param InstanceId: 资产ID
        # @type InstanceId: String
        # @param DeviceName: 资产名称
        # @type DeviceName: String
        # @param PublicIp: 资产公网IP
        # @type PublicIp: String
        # @param PrivateIp: 资产内网IP
        # @type PrivateIp: String
        # @param Action: 操作结果：1 - 已执行，2 - 已阻断
        # @type Action: Integer
        # @param Method: 操作类型：1 - 文件上传，2 - 文件下载，3 - 文件删除，4 - 文件(夹)移动，5 - 文件(夹)重命名，6 - 新建文件夹，9 - 删除文件夹
        # @type Method: Integer
        # @param FileCurr: 下载的文件（夹）路径及名称
        # @type FileCurr: String
        # @param FileNew: 上传或新建文件（夹）路径及名称
        # @type FileNew: String
        # @param Sid: 会话id
        # @type Sid: String
        # @param Account: 账号
        # @type Account: String
        # @param FromIp: 来源id
        # @type FromIp: String
        # @param Protocol: 协议
        # @type Protocol: String
        # @param Size: 文件大小
        # @type Size: Integer
        # @param ConfirmTime: 复核时间
        # @type ConfirmTime: String
        # @param UserDepartmentId: 用户部门id
        # @type UserDepartmentId: String
        # @param UserDepartmentName: 用户部门name
        # @type UserDepartmentName: String
        # @param DeviceDepartmentId: 设备部门id
        # @type DeviceDepartmentId: String
        # @param DeviceDepartmentName: 设备部门name
        # @type DeviceDepartmentName: String
        # @param SignValue: 签名值
        # @type SignValue: String

        attr_accessor :Time, :UserName, :RealName, :InstanceId, :DeviceName, :PublicIp, :PrivateIp, :Action, :Method, :FileCurr, :FileNew, :Sid, :Account, :FromIp, :Protocol, :Size, :ConfirmTime, :UserDepartmentId, :UserDepartmentName, :DeviceDepartmentId, :DeviceDepartmentName, :SignValue

        def initialize(time=nil, username=nil, realname=nil, instanceid=nil, devicename=nil, publicip=nil, privateip=nil, action=nil, method=nil, filecurr=nil, filenew=nil, sid=nil, account=nil, fromip=nil, protocol=nil, size=nil, confirmtime=nil, userdepartmentid=nil, userdepartmentname=nil, devicedepartmentid=nil, devicedepartmentname=nil, signvalue=nil)
          @Time = time
          @UserName = username
          @RealName = realname
          @InstanceId = instanceid
          @DeviceName = devicename
          @PublicIp = publicip
          @PrivateIp = privateip
          @Action = action
          @Method = method
          @FileCurr = filecurr
          @FileNew = filenew
          @Sid = sid
          @Account = account
          @FromIp = fromip
          @Protocol = protocol
          @Size = size
          @ConfirmTime = confirmtime
          @UserDepartmentId = userdepartmentid
          @UserDepartmentName = userdepartmentname
          @DeviceDepartmentId = devicedepartmentid
          @DeviceDepartmentName = devicedepartmentname
          @SignValue = signvalue
        end

        def deserialize(params)
          @Time = params['Time']
          @UserName = params['UserName']
          @RealName = params['RealName']
          @InstanceId = params['InstanceId']
          @DeviceName = params['DeviceName']
          @PublicIp = params['PublicIp']
          @PrivateIp = params['PrivateIp']
          @Action = params['Action']
          @Method = params['Method']
          @FileCurr = params['FileCurr']
          @FileNew = params['FileNew']
          @Sid = params['Sid']
          @Account = params['Account']
          @FromIp = params['FromIp']
          @Protocol = params['Protocol']
          @Size = params['Size']
          @ConfirmTime = params['ConfirmTime']
          @UserDepartmentId = params['UserDepartmentId']
          @UserDepartmentName = params['UserDepartmentName']
          @DeviceDepartmentId = params['DeviceDepartmentId']
          @DeviceDepartmentName = params['DeviceDepartmentName']
          @SignValue = params['SignValue']
        end
      end

      # 用于搜索文件传输记录等日志时按照protocol和method进行过滤
      class SearchFileTypeFilter < TencentCloud::Common::AbstractModel
        # @param Protocol: 需要查询的文件传输类型，如SFTP/CLIP/RDP/RZSZ
        # @type Protocol: String
        # @param Method: 在当前指定的protocol下进一步过滤具体操作类型,如剪贴板文件上传，剪贴板文件下载等
        # @type Method: Array

        attr_accessor :Protocol, :Method

        def initialize(protocol=nil, method=nil)
          @Protocol = protocol
          @Method = method
        end

        def deserialize(params)
          @Protocol = params['Protocol']
          @Method = params['Method']
        end
      end

      # SearchSessionCommand请求参数结构体
      class SearchSessionCommandRequest < TencentCloud::Common::AbstractModel
        # @param Cmd: 检索的目标命令，为模糊搜索
        # @type Cmd: String
        # @param StartTime: 开始时间，不得早于当前时间的180天前
        # @type StartTime: String
        # @param Offset: 分页偏移位置，默认值为0
        # @type Offset: Integer
        # @param Limit: 默认值为20，最大200
        # @type Limit: Integer
        # @param Encoding: Cmd字段前端是否做base64加密
        # 0：否，1：是
        # @type Encoding: Integer
        # @param EndTime: 结束时间
        # @type EndTime: String

        attr_accessor :Cmd, :StartTime, :Offset, :Limit, :Encoding, :EndTime

        def initialize(cmd=nil, starttime=nil, offset=nil, limit=nil, encoding=nil, endtime=nil)
          @Cmd = cmd
          @StartTime = starttime
          @Offset = offset
          @Limit = limit
          @Encoding = encoding
          @EndTime = endtime
        end

        def deserialize(params)
          @Cmd = params['Cmd']
          @StartTime = params['StartTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Encoding = params['Encoding']
          @EndTime = params['EndTime']
        end
      end

      # SearchSessionCommand返回参数结构体
      class SearchSessionCommandResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RequestId

        def initialize(totalcount=nil, requestid=nil)
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # SearchSession请求参数结构体
      class SearchSessionRequest < TencentCloud::Common::AbstractModel
        # @param PrivateIp: 内部Ip
        # @type PrivateIp: String
        # @param PublicIp: 外部Ip
        # @type PublicIp: String
        # @param UserName: 用户名，长度不超过20
        # @type UserName: String
        # @param Account: 账号，长度不超过64
        # @type Account: String
        # @param FromIp: 来源Ip
        # @type FromIp: String
        # @param StartTime: 搜索区间的开始时间。若入参是Id，则非必传，否则为必传。
        # @type StartTime: String
        # @param EndTime: 搜索区间的结束时间
        # @type EndTime: String
        # @param Kind: 会话协议类型，只能是1、2、3或4 对应关系为1-tui 2-gui 3-file 4-数据库。若入参是Id，则非必传，否则为必传。
        # @type Kind: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 分页的页内记录数，默认为20，最大200
        # @type Limit: Integer
        # @param RealName: 姓名，长度不超过20
        # @type RealName: String
        # @param DeviceName: 主机名，长度不超过64
        # @type DeviceName: String
        # @param Status: 状态，1为活跃，2为结束，3为强制离线，4为其他错误
        # @type Status: Integer
        # @param Id: 若入参为Id，则其他入参字段不作为搜索依据，仅按照Id来搜索会话
        # @type Id: String
        # @param AppAssetKindSet: 应用资产类型, 1-web
        # @type AppAssetKindSet: Array
        # @param AppAssetUrl: 应用资产Url
        # @type AppAssetUrl: String
        # @param DeviceKind: 资产类型
        # @type DeviceKind: String

        attr_accessor :PrivateIp, :PublicIp, :UserName, :Account, :FromIp, :StartTime, :EndTime, :Kind, :Offset, :Limit, :RealName, :DeviceName, :Status, :Id, :AppAssetKindSet, :AppAssetUrl, :DeviceKind

        def initialize(privateip=nil, publicip=nil, username=nil, account=nil, fromip=nil, starttime=nil, endtime=nil, kind=nil, offset=nil, limit=nil, realname=nil, devicename=nil, status=nil, id=nil, appassetkindset=nil, appasseturl=nil, devicekind=nil)
          @PrivateIp = privateip
          @PublicIp = publicip
          @UserName = username
          @Account = account
          @FromIp = fromip
          @StartTime = starttime
          @EndTime = endtime
          @Kind = kind
          @Offset = offset
          @Limit = limit
          @RealName = realname
          @DeviceName = devicename
          @Status = status
          @Id = id
          @AppAssetKindSet = appassetkindset
          @AppAssetUrl = appasseturl
          @DeviceKind = devicekind
        end

        def deserialize(params)
          @PrivateIp = params['PrivateIp']
          @PublicIp = params['PublicIp']
          @UserName = params['UserName']
          @Account = params['Account']
          @FromIp = params['FromIp']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Kind = params['Kind']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @RealName = params['RealName']
          @DeviceName = params['DeviceName']
          @Status = params['Status']
          @Id = params['Id']
          @AppAssetKindSet = params['AppAssetKindSet']
          @AppAssetUrl = params['AppAssetUrl']
          @DeviceKind = params['DeviceKind']
        end
      end

      # SearchSession返回参数结构体
      class SearchSessionResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录数
        # @type TotalCount: Integer
        # @param SessionSet: 会话信息列表
        # @type SessionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SessionSet, :RequestId

        def initialize(totalcount=nil, sessionset=nil, requestid=nil)
          @TotalCount = totalcount
          @SessionSet = sessionset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SessionSet'].nil?
            @SessionSet = []
            params['SessionSet'].each do |i|
              sessionresult_tmp = SessionResult.new
              sessionresult_tmp.deserialize(i)
              @SessionSet << sessionresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # SearchSubtaskResultById请求参数结构体
      class SearchSubtaskResultByIdRequest < TencentCloud::Common::AbstractModel
        # @param Name: 运维任务名称
        # @type Name: String
        # @param Offset: 查询偏移
        # @type Offset: Integer
        # @param Limit: 分页的页内记录数，默认为20，最大200
        # @type Limit: Integer
        # @param Id: 运维父任务执行日志ID
        # @type Id: String
        # @param Status: 运维父任务执行状态
        # @type Status: Array

        attr_accessor :Name, :Offset, :Limit, :Id, :Status

        def initialize(name=nil, offset=nil, limit=nil, id=nil, status=nil)
          @Name = name
          @Offset = offset
          @Limit = limit
          @Id = id
          @Status = status
        end

        def deserialize(params)
          @Name = params['Name']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Id = params['Id']
          @Status = params['Status']
        end
      end

      # SearchSubtaskResultById返回参数结构体
      class SearchSubtaskResultByIdResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RequestId

        def initialize(totalcount=nil, requestid=nil)
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # SearchTaskResult请求参数结构体
      class SearchTaskResultRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 搜索区间的开始时间
        # @type StartTime: String
        # @param EndTime: 搜索区间的结束时间
        # @type EndTime: String
        # @param OperationId: 运维任务ID
        # @type OperationId: String
        # @param Name: 运维任务名称
        # @type Name: String
        # @param UserName: 用户名，长度不超过20
        # @type UserName: String
        # @param RealName: 姓名，长度不超过20
        # @type RealName: String
        # @param TaskType: 任务类型
        # 1 手工运维任务
        # 2 定时任务
        # 3 账号推送任务
        # @type TaskType: Array
        # @param Offset: 查询偏移
        # @type Offset: Integer
        # @param Limit: 分页的页内记录数，默认为20，最大200
        # @type Limit: Integer

        attr_accessor :StartTime, :EndTime, :OperationId, :Name, :UserName, :RealName, :TaskType, :Offset, :Limit

        def initialize(starttime=nil, endtime=nil, operationid=nil, name=nil, username=nil, realname=nil, tasktype=nil, offset=nil, limit=nil)
          @StartTime = starttime
          @EndTime = endtime
          @OperationId = operationid
          @Name = name
          @UserName = username
          @RealName = realname
          @TaskType = tasktype
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @OperationId = params['OperationId']
          @Name = params['Name']
          @UserName = params['UserName']
          @RealName = params['RealName']
          @TaskType = params['TaskType']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # SearchTaskResult返回参数结构体
      class SearchTaskResultResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录数
        # @type TotalCount: Integer
        # @param TaskResult: 运维任务执行结果
        # @type TaskResult: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TaskResult, :RequestId

        def initialize(totalcount=nil, taskresult=nil, requestid=nil)
          @TotalCount = totalcount
          @TaskResult = taskresult
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TaskResult'].nil?
            @TaskResult = []
            params['TaskResult'].each do |i|
              taskresult_tmp = TaskResult.new
              taskresult_tmp.deserialize(i)
              @TaskResult << taskresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 搜索字符或图形会话时返回的SessionResul结构体
      class SessionResult < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名
        # @type UserName: String
        # @param RealName: 姓名
        # @type RealName: String
        # @param Account: 主机账号
        # @type Account: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Size: 会话大小
        # @type Size: Integer
        # @param InstanceId: 设备ID
        # @type InstanceId: String
        # @param DeviceName: 设备名
        # @type DeviceName: String
        # @param PrivateIp: 内部Ip
        # @type PrivateIp: String
        # @param PublicIp: 外部Ip
        # @type PublicIp: String
        # @param FromIp: 来源Ip
        # @type FromIp: String
        # @param Duration: 会话持续时长
        # @type Duration: Float
        # @param Count: 该会话内命令数量 ，搜索图形会话时该字段无意义
        # @type Count: Integer
        # @param DangerCount: 该会话内高危命令数，搜索图形时该字段无意义
        # @type DangerCount: Integer
        # @param Status: 会话状态，如1会话活跃  2会话结束  3强制离线  4其他错误
        # @type Status: Integer
        # @param Id: 会话Id
        # @type Id: String
        # @param ApCode: 设备所属的地域
        # @type ApCode: String
        # @param Protocol: 会话协议
        # @type Protocol: String
        # @param AppAssetKind: 应用资产类型：1-web
        # @type AppAssetKind: Integer
        # @param AppAssetUrl: 应用资产url
        # @type AppAssetUrl: String
        # @param ReplayType: 回放类型 默认0, 1-rfb 2-mp4 3-ssh
        # @type ReplayType: Integer
        # @param DeviceKind: 会话资产类型
        # @type DeviceKind: String
        # @param Namespace: K8S集群命名空间
        # @type Namespace: String
        # @param Workload: K8S集群工作负载
        # @type Workload: String
        # @param PodName: K8S集群容器名称
        # @type PodName: String

        attr_accessor :UserName, :RealName, :Account, :StartTime, :EndTime, :Size, :InstanceId, :DeviceName, :PrivateIp, :PublicIp, :FromIp, :Duration, :Count, :DangerCount, :Status, :Id, :ApCode, :Protocol, :AppAssetKind, :AppAssetUrl, :ReplayType, :DeviceKind, :Namespace, :Workload, :PodName

        def initialize(username=nil, realname=nil, account=nil, starttime=nil, endtime=nil, size=nil, instanceid=nil, devicename=nil, privateip=nil, publicip=nil, fromip=nil, duration=nil, count=nil, dangercount=nil, status=nil, id=nil, apcode=nil, protocol=nil, appassetkind=nil, appasseturl=nil, replaytype=nil, devicekind=nil, namespace=nil, workload=nil, podname=nil)
          @UserName = username
          @RealName = realname
          @Account = account
          @StartTime = starttime
          @EndTime = endtime
          @Size = size
          @InstanceId = instanceid
          @DeviceName = devicename
          @PrivateIp = privateip
          @PublicIp = publicip
          @FromIp = fromip
          @Duration = duration
          @Count = count
          @DangerCount = dangercount
          @Status = status
          @Id = id
          @ApCode = apcode
          @Protocol = protocol
          @AppAssetKind = appassetkind
          @AppAssetUrl = appasseturl
          @ReplayType = replaytype
          @DeviceKind = devicekind
          @Namespace = namespace
          @Workload = workload
          @PodName = podname
        end

        def deserialize(params)
          @UserName = params['UserName']
          @RealName = params['RealName']
          @Account = params['Account']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Size = params['Size']
          @InstanceId = params['InstanceId']
          @DeviceName = params['DeviceName']
          @PrivateIp = params['PrivateIp']
          @PublicIp = params['PublicIp']
          @FromIp = params['FromIp']
          @Duration = params['Duration']
          @Count = params['Count']
          @DangerCount = params['DangerCount']
          @Status = params['Status']
          @Id = params['Id']
          @ApCode = params['ApCode']
          @Protocol = params['Protocol']
          @AppAssetKind = params['AppAssetKind']
          @AppAssetUrl = params['AppAssetUrl']
          @ReplayType = params['ReplayType']
          @DeviceKind = params['DeviceKind']
          @Namespace = params['Namespace']
          @Workload = params['Workload']
          @PodName = params['PodName']
        end
      end

      # SetLDAPSyncFlag请求参数结构体
      class SetLDAPSyncFlagRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # SetLDAPSyncFlag返回参数结构体
      class SetLDAPSyncFlagResponse < TencentCloud::Common::AbstractModel
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

      # 资产标签
      class TagFilter < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: Array

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

      # 运维父任务执行结果
      class TaskResult < TencentCloud::Common::AbstractModel
        # @param Id: 运维任务结果日志ID
        # @type Id: String
        # @param OperationId: 运维任务ID
        # @type OperationId: String
        # @param Name: 运维任务名称
        # @type Name: String
        # @param FromIp: 执行任务来源IP
        # @type FromIp: String
        # @param UserName: 运维任务所属用户
        # @type UserName: String
        # @param RealName: 运维任务所属用户的姓名
        # @type RealName: String
        # @param Status: 运维任务执行状态 1 - 执行中，2 - 成功，3 - 失败，4 - 部分失败
        # @type Status: Integer
        # @param StartTime: 运维任务开始时间
        # @type StartTime: String
        # @param EndTime: 运维任务结束时间
        # @type EndTime: String

        attr_accessor :Id, :OperationId, :Name, :FromIp, :UserName, :RealName, :Status, :StartTime, :EndTime

        def initialize(id=nil, operationid=nil, name=nil, fromip=nil, username=nil, realname=nil, status=nil, starttime=nil, endtime=nil)
          @Id = id
          @OperationId = operationid
          @Name = name
          @FromIp = fromip
          @UserName = username
          @RealName = realname
          @Status = status
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Id = params['Id']
          @OperationId = params['OperationId']
          @Name = params['Name']
          @FromIp = params['FromIp']
          @UserName = params['UserName']
          @RealName = params['RealName']
          @Status = params['Status']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # UnlockUser请求参数结构体
      class UnlockUserRequest < TencentCloud::Common::AbstractModel
        # @param IdSet: 用户id
        # @type IdSet: Array

        attr_accessor :IdSet

        def initialize(idset=nil)
          @IdSet = idset
        end

        def deserialize(params)
          @IdSet = params['IdSet']
        end
      end

      # UnlockUser返回参数结构体
      class UnlockUserResponse < TencentCloud::Common::AbstractModel
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

      # 用户信息
      class User < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名, 3-20个字符 必须以英文字母开头，且不能包含字母、数字、.、_、-以外的字符
        # @type UserName: String
        # @param RealName: 用户姓名， 最大20个字符，不能包含空白字符
        # @type RealName: String
        # @param Id: 用户ID
        # @type Id: Integer
        # @param Phone: 手机号码， 大陆手机号直接填写，如果是其他国家、地区号码,按照"国家地区代码|手机号"的格式输入。如: "+852|xxxxxxxx"
        # @type Phone: String
        # @param Email: 电子邮件
        # @type Email: String
        # @param ValidateFrom: 用户生效时间，如:"2021-09-22T00:00:00+00:00"
        # 生效、失效时间不填则用户长期有效
        # @type ValidateFrom: String
        # @param ValidateTo: 用户失效时间，如:"2021-09-22T00:00:00+00:00"
        # 生效、失效时间不填则用户长期有效
        # @type ValidateTo: String
        # @param GroupSet: 所属用户组列表
        # @type GroupSet: Array
        # @param AuthType: 认证方式，0 - 本地，1 - LDAP，2 - OAuth
        # @type AuthType: Integer
        # @param ValidateTime: 访问时间段限制， 由0、1组成的字符串，长度168(7 × 24)，代表该用户在一周中允许访问的时间段。字符串中第N个字符代表在一周中的第N个小时， 0 - 代表不允许访问，1 - 代表允许访问
        # @type ValidateTime: String
        # @param Department: 用户所属部门（用于出参）
        # @type Department: :class:`Tencentcloud::Bh.v20230418.models.Department`
        # @param DepartmentId: 用户所属部门（用于入参）
        # @type DepartmentId: String
        # @param ActiveStatus: 激活状态 0 - 未激活 1 - 激活
        # @type ActiveStatus: Integer
        # @param LockStatus: 锁定状态 0 - 未锁定 1 - 锁定
        # @type LockStatus: Integer
        # @param UKeyStatus: ukey绑定状态 0 - 未绑定 1 - 已绑定
        # @type UKeyStatus: Integer
        # @param Status: 状态 与Filter中一致
        # @type Status: String
        # @param AclVersion: 权限版本
        # @type AclVersion: Integer
        # @param UserFrom: 用户来源，0-bh,1-ioa
        # @type UserFrom: Integer
        # @param IOAUserGroup: ioa同步过来的用户相关信息
        # @type IOAUserGroup: :class:`Tencentcloud::Bh.v20230418.models.IOAUserGroup`

        attr_accessor :UserName, :RealName, :Id, :Phone, :Email, :ValidateFrom, :ValidateTo, :GroupSet, :AuthType, :ValidateTime, :Department, :DepartmentId, :ActiveStatus, :LockStatus, :UKeyStatus, :Status, :AclVersion, :UserFrom, :IOAUserGroup

        def initialize(username=nil, realname=nil, id=nil, phone=nil, email=nil, validatefrom=nil, validateto=nil, groupset=nil, authtype=nil, validatetime=nil, department=nil, departmentid=nil, activestatus=nil, lockstatus=nil, ukeystatus=nil, status=nil, aclversion=nil, userfrom=nil, ioausergroup=nil)
          @UserName = username
          @RealName = realname
          @Id = id
          @Phone = phone
          @Email = email
          @ValidateFrom = validatefrom
          @ValidateTo = validateto
          @GroupSet = groupset
          @AuthType = authtype
          @ValidateTime = validatetime
          @Department = department
          @DepartmentId = departmentid
          @ActiveStatus = activestatus
          @LockStatus = lockstatus
          @UKeyStatus = ukeystatus
          @Status = status
          @AclVersion = aclversion
          @UserFrom = userfrom
          @IOAUserGroup = ioausergroup
        end

        def deserialize(params)
          @UserName = params['UserName']
          @RealName = params['RealName']
          @Id = params['Id']
          @Phone = params['Phone']
          @Email = params['Email']
          @ValidateFrom = params['ValidateFrom']
          @ValidateTo = params['ValidateTo']
          unless params['GroupSet'].nil?
            @GroupSet = []
            params['GroupSet'].each do |i|
              group_tmp = Group.new
              group_tmp.deserialize(i)
              @GroupSet << group_tmp
            end
          end
          @AuthType = params['AuthType']
          @ValidateTime = params['ValidateTime']
          unless params['Department'].nil?
            @Department = Department.new
            @Department.deserialize(params['Department'])
          end
          @DepartmentId = params['DepartmentId']
          @ActiveStatus = params['ActiveStatus']
          @LockStatus = params['LockStatus']
          @UKeyStatus = params['UKeyStatus']
          @Status = params['Status']
          @AclVersion = params['AclVersion']
          @UserFrom = params['UserFrom']
          unless params['IOAUserGroup'].nil?
            @IOAUserGroup = IOAUserGroup.new
            @IOAUserGroup.deserialize(params['IOAUserGroup'])
          end
        end
      end

    end
  end
end

