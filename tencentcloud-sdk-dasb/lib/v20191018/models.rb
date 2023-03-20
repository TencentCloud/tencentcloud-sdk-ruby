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
  module Dasb
    module V20191018
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Department: :class:`Tencentcloud::Dasb.v20191018.models.Department`

        attr_accessor :Id, :Name, :AllowDiskRedirect, :AllowClipFileUp, :AllowClipFileDown, :AllowClipTextUp, :AllowClipTextDown, :AllowFileUp, :MaxFileUpSize, :AllowFileDown, :MaxFileDownSize, :AllowAnyAccount, :UserSet, :UserGroupSet, :DeviceSet, :DeviceGroupSet, :AccountSet, :CmdTemplateSet, :AllowDiskFileUp, :AllowDiskFileDown, :AllowShellFileUp, :AllowShellFileDown, :AllowFileDel, :ValidateFrom, :ValidateTo, :Status, :Department
        
        def initialize(id=nil, name=nil, allowdiskredirect=nil, allowclipfileup=nil, allowclipfiledown=nil, allowcliptextup=nil, allowcliptextdown=nil, allowfileup=nil, maxfileupsize=nil, allowfiledown=nil, maxfiledownsize=nil, allowanyaccount=nil, userset=nil, usergroupset=nil, deviceset=nil, devicegroupset=nil, accountset=nil, cmdtemplateset=nil, allowdiskfileup=nil, allowdiskfiledown=nil, allowshellfileup=nil, allowshellfiledown=nil, allowfiledel=nil, validatefrom=nil, validateto=nil, status=nil, department=nil)
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

      # 资产同步状态
      class AssetSyncStatus < TencentCloud::Common::AbstractModel
        # @param LastTime: 上一次同步完成的时间
        # @type LastTime: String
        # @param LastStatus: 上一次同步的结果。 0 - 从未进行, 1 - 成功， 2 - 失败
        # @type LastStatus: Integer
        # @param InProcess: 同步任务是否正在进行中
        # @type InProcess: Boolean

        attr_accessor :LastTime, :LastStatus, :InProcess
        
        def initialize(lasttime=nil, laststatus=nil, inprocess=nil)
          @LastTime = lasttime
          @LastStatus = laststatus
          @InProcess = inprocess
        end

        def deserialize(params)
          @LastTime = params['LastTime']
          @LastStatus = params['LastStatus']
          @InProcess = params['InProcess']
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

      # BindDeviceAccountPrivateKey请求参数结构体
      class BindDeviceAccountPrivateKeyRequest < TencentCloud::Common::AbstractModel
        # @param Id: 主机账号ID
        # @type Id: Integer
        # @param PrivateKey: 主机账号私钥，最新长度128字节，最大长度8192字节
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

      # BindDeviceResource请求参数结构体
      class BindDeviceResourceRequest < TencentCloud::Common::AbstractModel
        # @param DeviceIdSet: 资产ID集合
        # @type DeviceIdSet: Array
        # @param ResourceId: 堡垒机服务ID
        # @type ResourceId: String

        attr_accessor :DeviceIdSet, :ResourceId
        
        def initialize(deviceidset=nil, resourceid=nil)
          @DeviceIdSet = deviceidset
          @ResourceId = resourceid
        end

        def deserialize(params)
          @DeviceIdSet = params['DeviceIdSet']
          @ResourceId = params['ResourceId']
        end
      end

      # BindDeviceResource返回参数结构体
      class BindDeviceResourceResponse < TencentCloud::Common::AbstractModel
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

      # 高危命令模板
      class CmdTemplate < TencentCloud::Common::AbstractModel
        # @param Id: 高危命令模板ID
        # @type Id: Integer
        # @param Name: 高危命令模板名称
        # @type Name: String
        # @param CmdList: 命令列表，命令之间用换行符（"\n"）分隔
        # @type CmdList: String

        attr_accessor :Id, :Name, :CmdList
        
        def initialize(id=nil, name=nil, cmdlist=nil)
          @Id = id
          @Name = name
          @CmdList = cmdlist
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @CmdList = params['CmdList']
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
        # @param DeviceGroupIdSet: 关联的资产组ID
        # @type DeviceGroupIdSet: Array
        # @param AccountSet: 关联的账号
        # @type AccountSet: Array
        # @param CmdTemplateIdSet: 关联的高危命令模板ID
        # @type CmdTemplateIdSet: Array
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

        attr_accessor :Name, :AllowDiskRedirect, :AllowAnyAccount, :AllowClipFileUp, :AllowClipFileDown, :AllowClipTextUp, :AllowClipTextDown, :AllowFileUp, :MaxFileUpSize, :AllowFileDown, :MaxFileDownSize, :UserIdSet, :UserGroupIdSet, :DeviceIdSet, :DeviceGroupIdSet, :AccountSet, :CmdTemplateIdSet, :AllowDiskFileUp, :AllowDiskFileDown, :AllowShellFileUp, :AllowShellFileDown, :AllowFileDel, :ValidateFrom, :ValidateTo, :DepartmentId
        
        def initialize(name=nil, allowdiskredirect=nil, allowanyaccount=nil, allowclipfileup=nil, allowclipfiledown=nil, allowcliptextup=nil, allowcliptextdown=nil, allowfileup=nil, maxfileupsize=nil, allowfiledown=nil, maxfiledownsize=nil, useridset=nil, usergroupidset=nil, deviceidset=nil, devicegroupidset=nil, accountset=nil, cmdtemplateidset=nil, allowdiskfileup=nil, allowdiskfiledown=nil, allowshellfileup=nil, allowshellfiledown=nil, allowfiledel=nil, validatefrom=nil, validateto=nil, departmentid=nil)
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
          @DeviceGroupIdSet = devicegroupidset
          @AccountSet = accountset
          @CmdTemplateIdSet = cmdtemplateidset
          @AllowDiskFileUp = allowdiskfileup
          @AllowDiskFileDown = allowdiskfiledown
          @AllowShellFileUp = allowshellfileup
          @AllowShellFileDown = allowshellfiledown
          @AllowFileDel = allowfiledel
          @ValidateFrom = validatefrom
          @ValidateTo = validateto
          @DepartmentId = departmentid
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
          @DeviceGroupIdSet = params['DeviceGroupIdSet']
          @AccountSet = params['AccountSet']
          @CmdTemplateIdSet = params['CmdTemplateIdSet']
          @AllowDiskFileUp = params['AllowDiskFileUp']
          @AllowDiskFileDown = params['AllowDiskFileDown']
          @AllowShellFileUp = params['AllowShellFileUp']
          @AllowShellFileDown = params['AllowShellFileDown']
          @AllowFileDel = params['AllowFileDel']
          @ValidateFrom = params['ValidateFrom']
          @ValidateTo = params['ValidateTo']
          @DepartmentId = params['DepartmentId']
        end
      end

      # CreateAcl返回参数结构体
      class CreateAclResponse < TencentCloud::Common::AbstractModel
        # @param Id: 新建成功的访问权限ID
        # @type Id: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # CreateCmdTemplate请求参数结构体
      class CreateCmdTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Name: 模板名，最大长度32字符，不能包含空白字符
        # @type Name: String
        # @param CmdList: 命令列表，\n分隔，最大长度32768字节
        # @type CmdList: String

        attr_accessor :Name, :CmdList
        
        def initialize(name=nil, cmdlist=nil)
          @Name = name
          @CmdList = cmdlist
        end

        def deserialize(params)
          @Name = params['Name']
          @CmdList = params['CmdList']
        end
      end

      # CreateCmdTemplate返回参数结构体
      class CreateCmdTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Id: 新建成功后返回的记录ID
        # @type Id: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param Phone: 大陆手机号直接填写，如果是其他国家、地区号码， 按照"国家地区代码|手机号"的格式输入。如: "+852|xxxxxxxx"
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 部门信息
      class Department < TencentCloud::Common::AbstractModel
        # @param Id: 部门ID
        # @type Id: String
        # @param Name: 部门名称，1 - 256个字符
        # @type Name: String
        # @param Managers: 部门管理员账号ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Managers: Array

        attr_accessor :Id, :Name, :Managers
        
        def initialize(id=nil, name=nil, managers=nil)
          @Id = id
          @Name = name
          @Managers = managers
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Managers = params['Managers']
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

        attr_accessor :ResourceId, :ApCode, :Zone, :VpcId, :SubnetId, :CidrBlock, :VpcName, :VpcCidrBlock, :SubnetName
        
        def initialize(resourceid=nil, apcode=nil, zone=nil, vpcid=nil, subnetid=nil, cidrblock=nil, vpcname=nil, vpccidrblock=nil, subnetname=nil)
          @ResourceId = resourceid
          @ApCode = apcode
          @Zone = zone
          @VpcId = vpcid
          @SubnetId = subnetid
          @CidrBlock = cidrblock
          @VpcName = vpcname
          @VpcCidrBlock = vpccidrblock
          @SubnetName = subnetname
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
        end
      end

      # DeployResource返回参数结构体
      class DeployResourceResponse < TencentCloud::Common::AbstractModel
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
        # @param Status: 访问权限状态，1 - 已生效，2 - 未生效，3 - 已过期
        # @type Status: Integer
        # @param DepartmentId: 部门ID，用于过滤属于某个部门的访问权限
        # @type DepartmentId: String

        attr_accessor :IdSet, :Name, :Offset, :Limit, :Exact, :AuthorizedUserIdSet, :AuthorizedDeviceIdSet, :Status, :DepartmentId
        
        def initialize(idset=nil, name=nil, offset=nil, limit=nil, exact=nil, authorizeduseridset=nil, authorizeddeviceidset=nil, status=nil, departmentid=nil)
          @IdSet = idset
          @Name = name
          @Offset = offset
          @Limit = limit
          @Exact = exact
          @AuthorizedUserIdSet = authorizeduseridset
          @AuthorizedDeviceIdSet = authorizeddeviceidset
          @Status = status
          @DepartmentId = departmentid
        end

        def deserialize(params)
          @IdSet = params['IdSet']
          @Name = params['Name']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Exact = params['Exact']
          @AuthorizedUserIdSet = params['AuthorizedUserIdSet']
          @AuthorizedDeviceIdSet = params['AuthorizedDeviceIdSet']
          @Status = params['Status']
          @DepartmentId = params['DepartmentId']
        end
      end

      # DescribeAcls返回参数结构体
      class DescribeAclsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 访问权限总数
        # @type TotalCount: Integer
        # @param AclSet: 访问权限列表
        # @type AclSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @type Status: :class:`Tencentcloud::Dasb.v20191018.models.AssetSyncStatus`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeCmdTemplates请求参数结构体
      class DescribeCmdTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param IdSet: 命令模板ID集合，非必需
        # @type IdSet: Array
        # @param Name: 命令模板名，模糊查询，最大长度64字符
        # @type Name: String
        # @param Offset: 分页偏移位置，默认值为0
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

      # DescribeCmdTemplates返回参数结构体
      class DescribeCmdTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param CmdTemplateSet: 命令模板列表
        # @type CmdTemplateSet: Array
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeDasbImageIds请求参数结构体
      class DescribeDasbImageIdsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeDasbImageIds返回参数结构体
      class DescribeDasbImageIdsResponse < TencentCloud::Common::AbstractModel
        # @param BaseImageId: 基础镜像ID
        # @type BaseImageId: String
        # @param AiImageId: AI镜像ID
        # @type AiImageId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BaseImageId, :AiImageId, :RequestId
        
        def initialize(baseimageid=nil, aiimageid=nil, requestid=nil)
          @BaseImageId = baseimageid
          @AiImageId = aiimageid
          @RequestId = requestid
        end

        def deserialize(params)
          @BaseImageId = params['BaseImageId']
          @AiImageId = params['AiImageId']
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param Id: 资产组ID
        # @type Id: Integer
        # @param Bound: true - 查询已在该资产组的资产，false - 查询未在该资产组的资产
        # @type Bound: Boolean
        # @param Name: 资产名或资产IP，模糊查询
        # @type Name: String
        # @param Offset: 分页偏移位置，默认值为0
        # @type Offset: Integer
        # @param Limit: 每页条目数，默认20, 最大500
        # @type Limit: Integer
        # @param Kind: 资产类型，1 - Linux，2 - Windows，3 - MySQL，4 - SQLServer
        # @type Kind: Integer
        # @param DepartmentId: 所属部门ID
        # @type DepartmentId: String
        # @param TagFilters: 过滤条件，可按照标签键、标签进行过滤。如果同时指定标签键和标签过滤条件，它们之间为“AND”的关系
        # @type TagFilters: Array

        attr_accessor :Id, :Bound, :Name, :Offset, :Limit, :Kind, :DepartmentId, :TagFilters
        
        def initialize(id=nil, bound=nil, name=nil, offset=nil, limit=nil, kind=nil, departmentid=nil, tagfilters=nil)
          @Id = id
          @Bound = bound
          @Name = name
          @Offset = offset
          @Limit = limit
          @Kind = kind
          @DepartmentId = departmentid
          @TagFilters = tagfilters
        end

        def deserialize(params)
          @Id = params['Id']
          @Bound = params['Bound']
          @Name = params['Name']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Kind = params['Kind']
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param DepartmentId: 过滤条件，可按照部门ID进行过滤
        # @type DepartmentId: String
        # @param TagFilters: 过滤条件，可按照标签键、标签进行过滤。如果同时指定标签键和标签过滤条件，它们之间为“AND”的关系
        # @type TagFilters: Array
        # @param Filters: 过滤数组。支持的Name：
        # BindingStatus 绑定状态
        # @type Filters: Array

        attr_accessor :IdSet, :Name, :Ip, :ApCodeSet, :Kind, :Offset, :Limit, :AuthorizedUserIdSet, :ResourceIdSet, :KindSet, :DepartmentId, :TagFilters, :Filters
        
        def initialize(idset=nil, name=nil, ip=nil, apcodeset=nil, kind=nil, offset=nil, limit=nil, authorizeduseridset=nil, resourceidset=nil, kindset=nil, departmentid=nil, tagfilters=nil, filters=nil)
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeResources请求参数结构体
      class DescribeResourcesRequest < TencentCloud::Common::AbstractModel
        # @param ApCode: 地域码, 如: ap-guangzhou
        # @type ApCode: String
        # @param VpcId: 按照堡垒机开通的 VPC 实例ID查询
        # @type VpcId: String
        # @param ResourceIds: 资源ID集合，当传入ID集合时忽略 ApCode 和 VpcId
        # @type ResourceIds: Array

        attr_accessor :ApCode, :VpcId, :ResourceIds
        
        def initialize(apcode=nil, vpcid=nil, resourceids=nil)
          @ApCode = apcode
          @VpcId = vpcid
          @ResourceIds = resourceids
        end

        def deserialize(params)
          @ApCode = params['ApCode']
          @VpcId = params['VpcId']
          @ResourceIds = params['ResourceIds']
        end
      end

      # DescribeResources返回参数结构体
      class DescribeResourcesResponse < TencentCloud::Common::AbstractModel
        # @param ResourceSet: 堡垒机资源列表
        # @type ResourceSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceSet, :RequestId
        
        def initialize(resourceset=nil, requestid=nil)
          @ResourceSet = resourceset
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param AuthorizedDeviceIdSet: 查询具有指定资产ID访问权限的用户
        # @type AuthorizedDeviceIdSet: Array
        # @param AuthTypeSet: 认证方式，0 - 本地, 1 - LDAP, 2 - OAuth, 不传为全部
        # @type AuthTypeSet: Array
        # @param DepartmentId: 部门ID，用于过滤属于某个部门的用户
        # @type DepartmentId: String

        attr_accessor :IdSet, :Name, :Offset, :Limit, :UserName, :Phone, :AuthorizedDeviceIdSet, :AuthTypeSet, :DepartmentId
        
        def initialize(idset=nil, name=nil, offset=nil, limit=nil, username=nil, phone=nil, authorizeddeviceidset=nil, authtypeset=nil, departmentid=nil)
          @IdSet = idset
          @Name = name
          @Offset = offset
          @Limit = limit
          @UserName = username
          @Phone = phone
          @AuthorizedDeviceIdSet = authorizeddeviceidset
          @AuthTypeSet = authtypeset
          @DepartmentId = departmentid
        end

        def deserialize(params)
          @IdSet = params['IdSet']
          @Name = params['Name']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @UserName = params['UserName']
          @Phone = params['Phone']
          @AuthorizedDeviceIdSet = params['AuthorizedDeviceIdSet']
          @AuthTypeSet = params['AuthTypeSet']
          @DepartmentId = params['DepartmentId']
        end
      end

      # DescribeUsers返回参数结构体
      class DescribeUsersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 用户总数
        # @type TotalCount: Integer
        # @param UserSet: 用户列表
        # @type UserSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: :class:`Tencentcloud::Dasb.v20191018.models.Resource`
        # @param Department: 资产所属部门
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Department: :class:`Tencentcloud::Dasb.v20191018.models.Department`

        attr_accessor :Id, :InstanceId, :Name, :PublicIp, :PrivateIp, :ApCode, :OsName, :Kind, :Port, :GroupSet, :AccountCount, :VpcId, :SubnetId, :Resource, :Department
        
        def initialize(id=nil, instanceid=nil, name=nil, publicip=nil, privateip=nil, apcode=nil, osname=nil, kind=nil, port=nil, groupset=nil, accountcount=nil, vpcid=nil, subnetid=nil, resource=nil, department=nil)
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

        attr_accessor :Id, :DeviceId, :Account, :BoundPassword, :BoundPrivateKey
        
        def initialize(id=nil, deviceid=nil, account=nil, boundpassword=nil, boundprivatekey=nil)
          @Id = id
          @DeviceId = deviceid
          @Account = account
          @BoundPassword = boundpassword
          @BoundPrivateKey = boundprivatekey
        end

        def deserialize(params)
          @Id = params['Id']
          @DeviceId = params['DeviceId']
          @Account = params['Account']
          @BoundPassword = params['BoundPassword']
          @BoundPrivateKey = params['BoundPrivateKey']
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

        attr_accessor :OsName, :Ip, :Port, :Name, :DepartmentId
        
        def initialize(osname=nil, ip=nil, port=nil, name=nil, departmentid=nil)
          @OsName = osname
          @Ip = ip
          @Port = port
          @Name = name
          @DepartmentId = departmentid
        end

        def deserialize(params)
          @OsName = params['OsName']
          @Ip = params['Ip']
          @Port = params['Port']
          @Name = params['Name']
          @DepartmentId = params['DepartmentId']
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Department: :class:`Tencentcloud::Dasb.v20191018.models.Department`
        # @param Count: 个数
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param DeviceGroupIdSet: 关联的资产组ID
        # @type DeviceGroupIdSet: Array
        # @param AccountSet: 关联的账号
        # @type AccountSet: Array
        # @param CmdTemplateIdSet: 关联的高危命令模板ID
        # @type CmdTemplateIdSet: Array
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

        attr_accessor :Name, :AllowDiskRedirect, :AllowAnyAccount, :Id, :AllowClipFileUp, :AllowClipFileDown, :AllowClipTextUp, :AllowClipTextDown, :AllowFileUp, :MaxFileUpSize, :AllowFileDown, :MaxFileDownSize, :UserIdSet, :UserGroupIdSet, :DeviceIdSet, :DeviceGroupIdSet, :AccountSet, :CmdTemplateIdSet, :AllowDiskFileUp, :AllowDiskFileDown, :AllowShellFileUp, :AllowShellFileDown, :AllowFileDel, :ValidateFrom, :ValidateTo, :DepartmentId
        
        def initialize(name=nil, allowdiskredirect=nil, allowanyaccount=nil, id=nil, allowclipfileup=nil, allowclipfiledown=nil, allowcliptextup=nil, allowcliptextdown=nil, allowfileup=nil, maxfileupsize=nil, allowfiledown=nil, maxfiledownsize=nil, useridset=nil, usergroupidset=nil, deviceidset=nil, devicegroupidset=nil, accountset=nil, cmdtemplateidset=nil, allowdiskfileup=nil, allowdiskfiledown=nil, allowshellfileup=nil, allowshellfiledown=nil, allowfiledel=nil, validatefrom=nil, validateto=nil, departmentid=nil)
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
          @DeviceGroupIdSet = devicegroupidset
          @AccountSet = accountset
          @CmdTemplateIdSet = cmdtemplateidset
          @AllowDiskFileUp = allowdiskfileup
          @AllowDiskFileDown = allowdiskfiledown
          @AllowShellFileUp = allowshellfileup
          @AllowShellFileDown = allowshellfiledown
          @AllowFileDel = allowfiledel
          @ValidateFrom = validatefrom
          @ValidateTo = validateto
          @DepartmentId = departmentid
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
          @DeviceGroupIdSet = params['DeviceGroupIdSet']
          @AccountSet = params['AccountSet']
          @CmdTemplateIdSet = params['CmdTemplateIdSet']
          @AllowDiskFileUp = params['AllowDiskFileUp']
          @AllowDiskFileDown = params['AllowDiskFileDown']
          @AllowShellFileUp = params['AllowShellFileUp']
          @AllowShellFileDown = params['AllowShellFileDown']
          @AllowFileDel = params['AllowFileDel']
          @ValidateFrom = params['ValidateFrom']
          @ValidateTo = params['ValidateTo']
          @DepartmentId = params['DepartmentId']
        end
      end

      # ModifyAcl返回参数结构体
      class ModifyAclResponse < TencentCloud::Common::AbstractModel
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

        attr_accessor :Id, :Port, :GroupIdSet, :DepartmentId
        
        def initialize(id=nil, port=nil, groupidset=nil, departmentid=nil)
          @Id = id
          @Port = port
          @GroupIdSet = groupidset
          @DepartmentId = departmentid
        end

        def deserialize(params)
          @Id = params['Id']
          @Port = params['Port']
          @GroupIdSet = params['GroupIdSet']
          @DepartmentId = params['DepartmentId']
        end
      end

      # ModifyDevice返回参数结构体
      class ModifyDeviceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyUser请求参数结构体
      class ModifyUserRequest < TencentCloud::Common::AbstractModel
        # @param Id: 用户ID
        # @type Id: Integer
        # @param RealName: 用户姓名，最大长度20个字符，不能包含空格
        # @type RealName: String
        # @param Phone: 大陆手机号直接填写，如果是其他国家、地区号码,按照"国家地区代码|手机号"的格式输入。如: "+852|xxxxxxxx"
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogDeliveryArgs: String

        attr_accessor :ResourceId, :ApCode, :SvArgs, :VpcId, :Nodes, :RenewFlag, :ExpireTime, :Status, :ResourceName, :Pid, :CreateTime, :ProductCode, :SubProductCode, :Zone, :Expired, :Deployed, :VpcName, :VpcCidrBlock, :SubnetId, :SubnetName, :CidrBlock, :PublicIpSet, :PrivateIpSet, :ModuleSet, :UsedNodes, :ExtendPoints, :PackageBandwidth, :PackageNode, :LogDeliveryArgs
        
        def initialize(resourceid=nil, apcode=nil, svargs=nil, vpcid=nil, nodes=nil, renewflag=nil, expiretime=nil, status=nil, resourcename=nil, pid=nil, createtime=nil, productcode=nil, subproductcode=nil, zone=nil, expired=nil, deployed=nil, vpcname=nil, vpccidrblock=nil, subnetid=nil, subnetname=nil, cidrblock=nil, publicipset=nil, privateipset=nil, moduleset=nil, usednodes=nil, extendpoints=nil, packagebandwidth=nil, packagenode=nil, logdeliveryargs=nil)
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

      # 用户信息
      class User < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名, 3-20个字符 必须以英文字母开头，且不能包含字母、数字、.、_、-以外的字符
        # @type UserName: String
        # @param RealName: 用户姓名， 最大20个字符，不能包含空白字符
        # @type RealName: String
        # @param Phone: 手机号码， 大陆手机号直接填写，如果是其他国家、地区号码,按照"国家地区代码|手机号"的格式输入。如: "+852|xxxxxxxx"
        # @type Phone: String
        # @param Id: 用户ID
        # @type Id: Integer
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Department: :class:`Tencentcloud::Dasb.v20191018.models.Department`
        # @param DepartmentId: 用户所属部门（用于入参）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DepartmentId: String

        attr_accessor :UserName, :RealName, :Phone, :Id, :Email, :ValidateFrom, :ValidateTo, :GroupSet, :AuthType, :ValidateTime, :Department, :DepartmentId
        
        def initialize(username=nil, realname=nil, phone=nil, id=nil, email=nil, validatefrom=nil, validateto=nil, groupset=nil, authtype=nil, validatetime=nil, department=nil, departmentid=nil)
          @UserName = username
          @RealName = realname
          @Phone = phone
          @Id = id
          @Email = email
          @ValidateFrom = validatefrom
          @ValidateTo = validateto
          @GroupSet = groupset
          @AuthType = authtype
          @ValidateTime = validatetime
          @Department = department
          @DepartmentId = departmentid
        end

        def deserialize(params)
          @UserName = params['UserName']
          @RealName = params['RealName']
          @Phone = params['Phone']
          @Id = params['Id']
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
        end
      end

    end
  end
end

