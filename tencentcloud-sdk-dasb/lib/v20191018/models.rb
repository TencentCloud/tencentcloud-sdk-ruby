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
        # @param Name: 规则名
        # @type Name: String
        # @param AllowDiskRedirect: 是否开启磁盘映射
        # @type AllowDiskRedirect: Boolean
        # @param AllowClipFileUp: 是否开启剪贴板文件上行
        # @type AllowClipFileUp: Boolean
        # @param AllowClipFileDown: 是否开启剪贴板文件下行
        # @type AllowClipFileDown: Boolean
        # @param AllowClipTextUp: 是否开启剪贴板text（目前含图片）上行
        # @type AllowClipTextUp: Boolean
        # @param AllowClipTextDown: 是否开启剪贴板text（目前含图片）下行
        # @type AllowClipTextDown: Boolean
        # @param AllowFileUp: 是否开启文件传输上传
        # @type AllowFileUp: Boolean
        # @param MaxFileUpSize: 文件传输上传大小限制
        # @type MaxFileUpSize: Integer
        # @param AllowFileDown: 是否开启文件传输下载
        # @type AllowFileDown: Boolean
        # @param MaxFileDownSize: 文件传输下载大小限制
        # @type MaxFileDownSize: Integer
        # @param AllowAnyAccount: 是否允许任意账号登陆
        # @type AllowAnyAccount: Boolean
        # @param UserSet: 关联的用户列表
        # @type UserSet: Array
        # @param UserGroupSet: 关联的用户组列表
        # @type UserGroupSet: Array
        # @param DeviceSet: 关联的主机列表
        # @type DeviceSet: Array
        # @param DeviceGroupSet: 关联的主机组列表
        # @type DeviceGroupSet: Array
        # @param AccountSet: 关联的账号列表
        # @type AccountSet: Array
        # @param CmdTemplateSet: 关联的高危命令模板列表
        # @type CmdTemplateSet: Array
        # @param AllowDiskFileUp: 是否开启rdp磁盘映射文件上传
        # @type AllowDiskFileUp: Boolean
        # @param AllowDiskFileDown: 是否开启rdp磁盘映射文件下载
        # @type AllowDiskFileDown: Boolean
        # @param AllowShellFileUp: 是否开启rz sz文件上传
        # @type AllowShellFileUp: Boolean
        # @param AllowShellFileDown: 是否开启rz sz文件下载
        # @type AllowShellFileDown: Boolean
        # @param AllowFileDel: 是否开启SFTP文件删除
        # @type AllowFileDel: Boolean
        # @param ValidateFrom: 生效日期
        # @type ValidateFrom: String
        # @param ValidateTo: 失效日期
        # @type ValidateTo: String
        # @param Status: 策略状态，1-已生效，2-未生效，3-已过期
        # @type Status: Integer

        attr_accessor :Id, :Name, :AllowDiskRedirect, :AllowClipFileUp, :AllowClipFileDown, :AllowClipTextUp, :AllowClipTextDown, :AllowFileUp, :MaxFileUpSize, :AllowFileDown, :MaxFileDownSize, :AllowAnyAccount, :UserSet, :UserGroupSet, :DeviceSet, :DeviceGroupSet, :AccountSet, :CmdTemplateSet, :AllowDiskFileUp, :AllowDiskFileDown, :AllowShellFileUp, :AllowShellFileDown, :AllowFileDel, :ValidateFrom, :ValidateTo, :Status
        
        def initialize(id=nil, name=nil, allowdiskredirect=nil, allowclipfileup=nil, allowclipfiledown=nil, allowcliptextup=nil, allowcliptextdown=nil, allowfileup=nil, maxfileupsize=nil, allowfiledown=nil, maxfiledownsize=nil, allowanyaccount=nil, userset=nil, usergroupset=nil, deviceset=nil, devicegroupset=nil, accountset=nil, cmdtemplateset=nil, allowdiskfileup=nil, allowdiskfiledown=nil, allowshellfileup=nil, allowshellfiledown=nil, allowfiledel=nil, validatefrom=nil, validateto=nil, status=nil)
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
        end
      end

      # 命令模板
      class CmdTemplate < TencentCloud::Common::AbstractModel
        # @param Id: 模板ID
        # @type Id: Integer
        # @param Name: 模板名称
        # @type Name: String
        # @param CmdList: 命令列表，\n分隔
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
        # @param Name: 权限名称，最大32字符，不能为空，不能包含空白字符
        # @type Name: String
        # @param AllowDiskRedirect: 是否开启磁盘映射
        # @type AllowDiskRedirect: Boolean
        # @param AllowAnyAccount: 是否允许任意账号登陆
        # @type AllowAnyAccount: Boolean
        # @param AllowClipFileUp: 是否开启剪贴板文件上行
        # @type AllowClipFileUp: Boolean
        # @param AllowClipFileDown: 是否开启剪贴板文件下行
        # @type AllowClipFileDown: Boolean
        # @param AllowClipTextUp: 是否开启剪贴板text（含图片）上行
        # @type AllowClipTextUp: Boolean
        # @param AllowClipTextDown: 是否开启剪贴板text（含图片）下行
        # @type AllowClipTextDown: Boolean
        # @param AllowFileUp: 是否开启SFTP文件上传
        # @type AllowFileUp: Boolean
        # @param MaxFileUpSize: 文件传输上传大小限制
        # @type MaxFileUpSize: Integer
        # @param AllowFileDown: 是否开启SFTP文件下载
        # @type AllowFileDown: Boolean
        # @param MaxFileDownSize: 文件传输下载大小限制
        # @type MaxFileDownSize: Integer
        # @param UserIdSet: 关联的用户ID
        # @type UserIdSet: Array
        # @param UserGroupIdSet: 关联的用户组ID
        # @type UserGroupIdSet: Array
        # @param DeviceIdSet: 关联的主机ID
        # @type DeviceIdSet: Array
        # @param DeviceGroupIdSet: 关联的主机组ID
        # @type DeviceGroupIdSet: Array
        # @param AccountSet: 关联的账号，账号name
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
        # @param AllowFileDel: 是否开启SFTP文件删除
        # @type AllowFileDel: Boolean
        # @param ValidateFrom: 生效日期，如果为空，默认1970-01-01T08:00:01+08:00
        # @type ValidateFrom: String
        # @param ValidateTo: 失效日期，如果为空，默认1970-01-01T08:00:01+08:00
        # @type ValidateTo: String

        attr_accessor :Name, :AllowDiskRedirect, :AllowAnyAccount, :AllowClipFileUp, :AllowClipFileDown, :AllowClipTextUp, :AllowClipTextDown, :AllowFileUp, :MaxFileUpSize, :AllowFileDown, :MaxFileDownSize, :UserIdSet, :UserGroupIdSet, :DeviceIdSet, :DeviceGroupIdSet, :AccountSet, :CmdTemplateIdSet, :AllowDiskFileUp, :AllowDiskFileDown, :AllowShellFileUp, :AllowShellFileDown, :AllowFileDel, :ValidateFrom, :ValidateTo
        
        def initialize(name=nil, allowdiskredirect=nil, allowanyaccount=nil, allowclipfileup=nil, allowclipfiledown=nil, allowcliptextup=nil, allowcliptextdown=nil, allowfileup=nil, maxfileupsize=nil, allowfiledown=nil, maxfiledownsize=nil, useridset=nil, usergroupidset=nil, deviceidset=nil, devicegroupidset=nil, accountset=nil, cmdtemplateidset=nil, allowdiskfileup=nil, allowdiskfiledown=nil, allowshellfileup=nil, allowshellfiledown=nil, allowfiledel=nil, validatefrom=nil, validateto=nil)
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
        end
      end

      # CreateAcl返回参数结构体
      class CreateAclResponse < TencentCloud::Common::AbstractModel
        # @param Id: 访问权限ID
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
        # @param UserName: 用户名，最大长度32字符，不能为空
        # @type UserName: String
        # @param RealName: 用户姓名，最大长度32字符，不能为空
        # @type RealName: String
        # @param Phone: 手机号
        # @type Phone: String
        # @param Email: 电子邮件
        # @type Email: String
        # @param ValidateFrom: 生效起始时间,不设置则为1970-01-01T08:00:01+08:00
        # @type ValidateFrom: String
        # @param ValidateTo: 生效结束时间,不设置则为1970-01-01T08:00:01+08:00
        # @type ValidateTo: String
        # @param GroupIdSet: 所属用户组ID集合
        # @type GroupIdSet: Array
        # @param AuthType: 认证方式，0-本地 1-ldap 2-oauth,不传则默认为0
        # @type AuthType: Integer
        # @param ValidateTime: 生效时间段, 0、1组成的字符串，长度168(7*24), 代表该用户的生效时间. 0 - 未生效，1 - 生效
        # @type ValidateTime: String

        attr_accessor :UserName, :RealName, :Phone, :Email, :ValidateFrom, :ValidateTo, :GroupIdSet, :AuthType, :ValidateTime
        
        def initialize(username=nil, realname=nil, phone=nil, email=nil, validatefrom=nil, validateto=nil, groupidset=nil, authtype=nil, validatetime=nil)
          @UserName = username
          @RealName = realname
          @Phone = phone
          @Email = email
          @ValidateFrom = validatefrom
          @ValidateTo = validateto
          @GroupIdSet = groupidset
          @AuthType = authtype
          @ValidateTime = validatetime
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
        end
      end

      # CreateUser返回参数结构体
      class CreateUserResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAcls请求参数结构体
      class DescribeAclsRequest < TencentCloud::Common::AbstractModel
        # @param IdSet: 访问权限ID集合，非必需
        # @type IdSet: Array
        # @param Name: 访问权限名称，模糊查询，最长64字符
        # @type Name: String
        # @param Offset: 分页，偏移位置
        # @type Offset: Integer
        # @param Limit: 每页条目数量，默认20
        # @type Limit: Integer
        # @param Exact: 是否根据Name进行精确查询,默认值false
        # @type Exact: Boolean
        # @param AuthorizedUserIdSet: 有权限的用户ID集合
        # @type AuthorizedUserIdSet: Array
        # @param AuthorizedDeviceIdSet: 有权限的主机ID集合
        # @type AuthorizedDeviceIdSet: Array
        # @param Status: 策略状态，0-不限，1-已生效，2-未生效，3-已过期
        # @type Status: Integer

        attr_accessor :IdSet, :Name, :Offset, :Limit, :Exact, :AuthorizedUserIdSet, :AuthorizedDeviceIdSet, :Status
        
        def initialize(idset=nil, name=nil, offset=nil, limit=nil, exact=nil, authorizeduseridset=nil, authorizeddeviceidset=nil, status=nil)
          @IdSet = idset
          @Name = name
          @Offset = offset
          @Limit = limit
          @Exact = exact
          @AuthorizedUserIdSet = authorizeduseridset
          @AuthorizedDeviceIdSet = authorizeddeviceidset
          @Status = status
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
        end
      end

      # DescribeAcls返回参数结构体
      class DescribeAclsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录总数
        # @type TotalCount: Integer
        # @param AclSet: 访问权限记录集合，当前分页
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

      # DescribeDevices请求参数结构体
      class DescribeDevicesRequest < TencentCloud::Common::AbstractModel
        # @param IdSet: 主机ID集合，非必需
        # @type IdSet: Array
        # @param Name: 主机名或主机IP，模糊查询
        # @type Name: String
        # @param Ip: 暂未使用
        # @type Ip: String
        # @param ApCodeSet: 地域码集合
        # @type ApCodeSet: Array
        # @param Kind: 操作系统类型
        # @type Kind: Integer
        # @param Offset: 分页，偏移位置
        # @type Offset: Integer
        # @param Limit: 每页条目数量，默认20
        # @type Limit: Integer
        # @param AuthorizedUserIdSet: 有该主机访问权限的用户ID集合
        # @type AuthorizedUserIdSet: Array
        # @param ResourceIdSet: 过滤条件，主机绑定的堡垒机服务ID集合
        # @type ResourceIdSet: Array
        # @param KindSet: 可提供按照多种类型过滤, 1-Linux, 2-Windows, 3-MySQL
        # @type KindSet: Array

        attr_accessor :IdSet, :Name, :Ip, :ApCodeSet, :Kind, :Offset, :Limit, :AuthorizedUserIdSet, :ResourceIdSet, :KindSet
        
        def initialize(idset=nil, name=nil, ip=nil, apcodeset=nil, kind=nil, offset=nil, limit=nil, authorizeduseridset=nil, resourceidset=nil, kindset=nil)
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
        end
      end

      # DescribeDevices返回参数结构体
      class DescribeDevicesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录总数
        # @type TotalCount: Integer
        # @param DeviceSet: 主机信息列表
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

      # DescribeUsers请求参数结构体
      class DescribeUsersRequest < TencentCloud::Common::AbstractModel
        # @param IdSet: 如果IdSet不为空，则忽略其他参数
        # @type IdSet: Array
        # @param Name: 模糊查询，IdSet、UserName、Phone为空时才生效，对用户名和姓名进行模糊查询
        # @type Name: String
        # @param Offset: 分页，偏移位置
        # @type Offset: Integer
        # @param Limit: 每页条目数量，默认20
        # @type Limit: Integer
        # @param UserName: 精确查询，IdSet为空时才生效
        # @type UserName: String
        # @param Phone: 精确查询，IdSet、UserName为空时才生效
        # @type Phone: String
        # @param AuthorizedDeviceIdSet: 有访问权限的主机ID集合
        # @type AuthorizedDeviceIdSet: Array
        # @param AuthTypeSet: 认证方式，0-本地，1-ldap, 2-oauth 不传为全部
        # @type AuthTypeSet: Array

        attr_accessor :IdSet, :Name, :Offset, :Limit, :UserName, :Phone, :AuthorizedDeviceIdSet, :AuthTypeSet
        
        def initialize(idset=nil, name=nil, offset=nil, limit=nil, username=nil, phone=nil, authorizeddeviceidset=nil, authtypeset=nil)
          @IdSet = idset
          @Name = name
          @Offset = offset
          @Limit = limit
          @UserName = username
          @Phone = phone
          @AuthorizedDeviceIdSet = authorizeddeviceidset
          @AuthTypeSet = authtypeset
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
        end
      end

      # DescribeUsers返回参数结构体
      class DescribeUsersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录总数
        # @type TotalCount: Integer
        # @param UserSet: 用户信息列表
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

      # 主机信息
      class Device < TencentCloud::Common::AbstractModel
        # @param Id: 主机记录ID
        # @type Id: Integer
        # @param InstanceId: 主机ID，对应cvm实例id
        # @type InstanceId: String
        # @param Name: 主机名
        # @type Name: String
        # @param PublicIp: 公网IP
        # @type PublicIp: String
        # @param PrivateIp: 内网IP
        # @type PrivateIp: String
        # @param ApCode: 地域编码
        # @type ApCode: String
        # @param OsName: 操作系统名称
        # @type OsName: String
        # @param Kind: 主机类型，1-Linux, 2-Windows
        # @type Kind: Integer
        # @param Port: 管理端口
        # @type Port: Integer
        # @param GroupSet: 所属主机组信息列表
        # @type GroupSet: Array
        # @param AccountCount: 主机绑定的账号数
        # @type AccountCount: Integer
        # @param VpcId: VPC ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param Resource: 堡垒机服务信息，注意没有绑定服务时为null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resource: :class:`Tencentcloud::Dasb.v20191018.models.Resource`

        attr_accessor :Id, :InstanceId, :Name, :PublicIp, :PrivateIp, :ApCode, :OsName, :Kind, :Port, :GroupSet, :AccountCount, :VpcId, :SubnetId, :Resource
        
        def initialize(id=nil, instanceid=nil, name=nil, publicip=nil, privateip=nil, apcode=nil, osname=nil, kind=nil, port=nil, groupset=nil, accountcount=nil, vpcid=nil, subnetid=nil, resource=nil)
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
        end
      end

      # 组信息，用于用户组、主机组
      class Group < TencentCloud::Common::AbstractModel
        # @param Id: 组ID
        # @type Id: Integer
        # @param Name: 组名称
        # @type Name: String

        attr_accessor :Id, :Name
        
        def initialize(id=nil, name=nil)
          @Id = id
          @Name = name
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
        end
      end

      # ModifyAcl请求参数结构体
      class ModifyAclRequest < TencentCloud::Common::AbstractModel
        # @param Name: 权限名称，最大32字符，不能包含空白字符
        # @type Name: String
        # @param AllowDiskRedirect: 是否开启磁盘映射
        # @type AllowDiskRedirect: Boolean
        # @param AllowAnyAccount: 是否允许任意账号登陆
        # @type AllowAnyAccount: Boolean
        # @param Id: 访问权限ID
        # @type Id: Integer
        # @param AllowClipFileUp: 是否开启剪贴板文件上行
        # @type AllowClipFileUp: Boolean
        # @param AllowClipFileDown: 是否开启剪贴板文件下行
        # @type AllowClipFileDown: Boolean
        # @param AllowClipTextUp: 是否开启剪贴板text（含图片）上行
        # @type AllowClipTextUp: Boolean
        # @param AllowClipTextDown: 是否开启剪贴板text（含图片）下行
        # @type AllowClipTextDown: Boolean
        # @param AllowFileUp: 是否开启文件传输上传
        # @type AllowFileUp: Boolean
        # @param MaxFileUpSize: 文件传输上传大小限制
        # @type MaxFileUpSize: Integer
        # @param AllowFileDown: 是否开启文件传输下载
        # @type AllowFileDown: Boolean
        # @param MaxFileDownSize: 文件传输下载大小限制
        # @type MaxFileDownSize: Integer
        # @param UserIdSet: 关联的用户ID
        # @type UserIdSet: Array
        # @param UserGroupIdSet: 关联的用户组ID
        # @type UserGroupIdSet: Array
        # @param DeviceIdSet: 关联的主机ID
        # @type DeviceIdSet: Array
        # @param DeviceGroupIdSet: 关联的主机组ID
        # @type DeviceGroupIdSet: Array
        # @param AccountSet: 关联的账号，账号name
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
        # @param AllowFileDel: 是否开启SFTP文件删除
        # @type AllowFileDel: Boolean
        # @param ValidateFrom: 生效日期，如果为空，默认1970-01-01T08:00:01+08:00
        # @type ValidateFrom: String
        # @param ValidateTo: 失效日期，如果为空，默认1970-01-01T08:00:01+08:00
        # @type ValidateTo: String

        attr_accessor :Name, :AllowDiskRedirect, :AllowAnyAccount, :Id, :AllowClipFileUp, :AllowClipFileDown, :AllowClipTextUp, :AllowClipTextDown, :AllowFileUp, :MaxFileUpSize, :AllowFileDown, :MaxFileDownSize, :UserIdSet, :UserGroupIdSet, :DeviceIdSet, :DeviceGroupIdSet, :AccountSet, :CmdTemplateIdSet, :AllowDiskFileUp, :AllowDiskFileDown, :AllowShellFileUp, :AllowShellFileDown, :AllowFileDel, :ValidateFrom, :ValidateTo
        
        def initialize(name=nil, allowdiskredirect=nil, allowanyaccount=nil, id=nil, allowclipfileup=nil, allowclipfiledown=nil, allowcliptextup=nil, allowcliptextdown=nil, allowfileup=nil, maxfileupsize=nil, allowfiledown=nil, maxfiledownsize=nil, useridset=nil, usergroupidset=nil, deviceidset=nil, devicegroupidset=nil, accountset=nil, cmdtemplateidset=nil, allowdiskfileup=nil, allowdiskfiledown=nil, allowshellfileup=nil, allowshellfiledown=nil, allowfiledel=nil, validatefrom=nil, validateto=nil)
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

      # ModifyUser请求参数结构体
      class ModifyUserRequest < TencentCloud::Common::AbstractModel
        # @param Id: 用户ID
        # @type Id: Integer
        # @param RealName: 用户姓名，最大长度32字符，不能为空
        # @type RealName: String
        # @param Phone: 手机号
        # @type Phone: String
        # @param Email: 电子邮件
        # @type Email: String
        # @param ValidateFrom: 生效起始时间,不设置则为1970-01-01 08:00:01
        # @type ValidateFrom: String
        # @param ValidateTo: 生效结束时间,不设置则为1970-01-01 08:00:01
        # @type ValidateTo: String
        # @param GroupIdSet: 所属用户组ID集合
        # @type GroupIdSet: Array
        # @param AuthType: 认证方式，0-本地 1-ldap, 2-oauth不传则默认为0
        # @type AuthType: Integer
        # @param ValidateTime: 生效时间段, 0、1组成的字符串，长度168(7*24), 代表该用户的生效时间. 0 - 未生效，1 - 生效
        # @type ValidateTime: String

        attr_accessor :Id, :RealName, :Phone, :Email, :ValidateFrom, :ValidateTo, :GroupIdSet, :AuthType, :ValidateTime
        
        def initialize(id=nil, realname=nil, phone=nil, email=nil, validatefrom=nil, validateto=nil, groupidset=nil, authtype=nil, validatetime=nil)
          @Id = id
          @RealName = realname
          @Phone = phone
          @Email = email
          @ValidateFrom = validatefrom
          @ValidateTo = validateto
          @GroupIdSet = groupidset
          @AuthType = authtype
          @ValidateTime = validatetime
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

      # 用户购买的堡垒机资源信息
      class Resource < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源实例id，如bh-saas-s3ed4r5e
        # @type ResourceId: String
        # @param ApCode: 地域编码
        # @type ApCode: String
        # @param SvArgs: 实例规格信息（询价参数）
        # @type SvArgs: String
        # @param VpcId: vpc id
        # @type VpcId: String
        # @param Nodes: 堡垒机规格对应的资产数
        # @type Nodes: Integer
        # @param RenewFlag: 自动续费标记，0表示默认状态，1表示自动续费，2表示明确不自动续费
        # @type RenewFlag: Integer
        # @param ExpireTime: 过期时间
        # @type ExpireTime: String
        # @param Status: 资源状态，0未初始化，1正常，2隔离，3销毁，4初始化失败，5初始化中
        # @type Status: Integer
        # @param ResourceName: 实例名，如T-Sec-堡垒机（SaaS型）
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
        # @param VpcName: 开通服务的VPC名称
        # @type VpcName: String
        # @param VpcCidrBlock: 开通服务的VPC对应的网段
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
        # @param ModuleSet: 资源开通的高级功能列表，如:[DB]
        # @type ModuleSet: Array
        # @param UsedNodes: 已使用的授权点数
        # @type UsedNodes: Integer
        # @param ExtendPoints: 扩展点数
        # @type ExtendPoints: Integer
        # @param PackageBandwidth: 带宽扩展包个数(4M)
        # @type PackageBandwidth: Integer
        # @param PackageNode: 授权点数扩展包个数(50点)
        # @type PackageNode: Integer

        attr_accessor :ResourceId, :ApCode, :SvArgs, :VpcId, :Nodes, :RenewFlag, :ExpireTime, :Status, :ResourceName, :Pid, :CreateTime, :ProductCode, :SubProductCode, :Zone, :Expired, :Deployed, :VpcName, :VpcCidrBlock, :SubnetId, :SubnetName, :CidrBlock, :PublicIpSet, :PrivateIpSet, :ModuleSet, :UsedNodes, :ExtendPoints, :PackageBandwidth, :PackageNode
        
        def initialize(resourceid=nil, apcode=nil, svargs=nil, vpcid=nil, nodes=nil, renewflag=nil, expiretime=nil, status=nil, resourcename=nil, pid=nil, createtime=nil, productcode=nil, subproductcode=nil, zone=nil, expired=nil, deployed=nil, vpcname=nil, vpccidrblock=nil, subnetid=nil, subnetname=nil, cidrblock=nil, publicipset=nil, privateipset=nil, moduleset=nil, usednodes=nil, extendpoints=nil, packagebandwidth=nil, packagenode=nil)
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
        end
      end

      # 用户信息
      class User < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名
        # @type UserName: String
        # @param RealName: 用户姓名
        # @type RealName: String
        # @param Phone: 手机号码
        # @type Phone: String
        # @param Id: 用户ID
        # @type Id: Integer
        # @param Email: 电子邮件
        # @type Email: String
        # @param ValidateFrom: 生效起始时间
        # @type ValidateFrom: String
        # @param ValidateTo: 生效结束时间
        # @type ValidateTo: String
        # @param GroupSet: 所属用户组列表
        # @type GroupSet: Array
        # @param AuthType: 认证方式，0-本地 1-ldap
        # @type AuthType: Integer
        # @param ValidateTime: 生效时间段, 0、1组成的字符串，长度168(7*24), 代表该用户的生效时间. 0 - 未生效，1 - 生效
        # @type ValidateTime: String

        attr_accessor :UserName, :RealName, :Phone, :Id, :Email, :ValidateFrom, :ValidateTo, :GroupSet, :AuthType, :ValidateTime
        
        def initialize(username=nil, realname=nil, phone=nil, id=nil, email=nil, validatefrom=nil, validateto=nil, groupset=nil, authtype=nil, validatetime=nil)
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
        end
      end

    end
  end
end

