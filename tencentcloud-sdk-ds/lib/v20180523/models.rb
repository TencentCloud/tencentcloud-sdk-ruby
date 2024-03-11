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
  module Ds
    module V20180523
      # CheckVcode请求参数结构体
      class CheckVcodeRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名VerifyCode
        # @type Module: String
        # @param Operation: 操作名CheckVcode
        # @type Operation: String
        # @param AccountResId: 帐号ID
        # @type AccountResId: String
        # @param ContractResId: 合同ID
        # @type ContractResId: String
        # @param VerifyCode: 验证码
        # @type VerifyCode: String

        attr_accessor :Module, :Operation, :AccountResId, :ContractResId, :VerifyCode

        def initialize(_module=nil, operation=nil, accountresid=nil, contractresid=nil, verifycode=nil)
          @Module = _module
          @Operation = operation
          @AccountResId = accountresid
          @ContractResId = contractresid
          @VerifyCode = verifycode
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @AccountResId = params['AccountResId']
          @ContractResId = params['ContractResId']
          @VerifyCode = params['VerifyCode']
        end
      end

      # CheckVcode返回参数结构体
      class CheckVcodeResponse < TencentCloud::Common::AbstractModel
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

      # CreateContractByUpload请求参数结构体
      class CreateContractByUploadRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名ContractMng
        # @type Module: String
        # @param Operation: 操作名CreateContractByUpload
        # @type Operation: String
        # @param SignInfos: 签署人信息
        # @type SignInfos: Array
        # @param ContractFile: 合同上传链接地址
        # @type ContractFile: String
        # @param ContractName: 合同名称
        # @type ContractName: String
        # @param Remarks: 备注
        # @type Remarks: String
        # @param Initiator: 合同发起方腾讯云帐号ID（由平台自动填写）
        # @type Initiator: String
        # @param ExpireTime: 合同长时间未签署的过期时间
        # @type ExpireTime: String

        attr_accessor :Module, :Operation, :SignInfos, :ContractFile, :ContractName, :Remarks, :Initiator, :ExpireTime

        def initialize(_module=nil, operation=nil, signinfos=nil, contractfile=nil, contractname=nil, remarks=nil, initiator=nil, expiretime=nil)
          @Module = _module
          @Operation = operation
          @SignInfos = signinfos
          @ContractFile = contractfile
          @ContractName = contractname
          @Remarks = remarks
          @Initiator = initiator
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          unless params['SignInfos'].nil?
            @SignInfos = []
            params['SignInfos'].each do |i|
              signinfo_tmp = SignInfo.new
              signinfo_tmp.deserialize(i)
              @SignInfos << signinfo_tmp
            end
          end
          @ContractFile = params['ContractFile']
          @ContractName = params['ContractName']
          @Remarks = params['Remarks']
          @Initiator = params['Initiator']
          @ExpireTime = params['ExpireTime']
        end
      end

      # CreateContractByUpload返回参数结构体
      class CreateContractByUploadResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # CreateEnterpriseAccount请求参数结构体
      class CreateEnterpriseAccountRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名AccountMng
        # @type Module: String
        # @param Operation: 操作名CreateEnterpriseAccount
        # @type Operation: String
        # @param Name: 企业用户名称
        # @type Name: String
        # @param IdentType: 企业用户证件类型，8代表营业执照，详情请见常见问题
        # @type IdentType: Integer
        # @param IdentNo: 企业用户营业执照号码
        # @type IdentNo: String
        # @param MobilePhone: 企业联系人手机号
        # @type MobilePhone: String
        # @param TransactorName: 经办人姓名
        # @type TransactorName: String
        # @param TransactorIdentType: 经办人证件类型，0代表身份证
        # @type TransactorIdentType: Integer
        # @param TransactorIdentNo: 经办人证件号码
        # @type TransactorIdentNo: String
        # @param TransactorPhone: 经办人手机号
        # @type TransactorPhone: String
        # @param Email: 企业联系人邮箱
        # @type Email: String

        attr_accessor :Module, :Operation, :Name, :IdentType, :IdentNo, :MobilePhone, :TransactorName, :TransactorIdentType, :TransactorIdentNo, :TransactorPhone, :Email

        def initialize(_module=nil, operation=nil, name=nil, identtype=nil, identno=nil, mobilephone=nil, transactorname=nil, transactoridenttype=nil, transactoridentno=nil, transactorphone=nil, email=nil)
          @Module = _module
          @Operation = operation
          @Name = name
          @IdentType = identtype
          @IdentNo = identno
          @MobilePhone = mobilephone
          @TransactorName = transactorname
          @TransactorIdentType = transactoridenttype
          @TransactorIdentNo = transactoridentno
          @TransactorPhone = transactorphone
          @Email = email
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @Name = params['Name']
          @IdentType = params['IdentType']
          @IdentNo = params['IdentNo']
          @MobilePhone = params['MobilePhone']
          @TransactorName = params['TransactorName']
          @TransactorIdentType = params['TransactorIdentType']
          @TransactorIdentNo = params['TransactorIdentNo']
          @TransactorPhone = params['TransactorPhone']
          @Email = params['Email']
        end
      end

      # CreateEnterpriseAccount返回参数结构体
      class CreateEnterpriseAccountResponse < TencentCloud::Common::AbstractModel
        # @param AccountResId: 帐号ID
        # @type AccountResId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccountResId, :RequestId

        def initialize(accountresid=nil, requestid=nil)
          @AccountResId = accountresid
          @RequestId = requestid
        end

        def deserialize(params)
          @AccountResId = params['AccountResId']
          @RequestId = params['RequestId']
        end
      end

      # CreatePersonalAccount请求参数结构体
      class CreatePersonalAccountRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名AccountMng
        # @type Module: String
        # @param Operation: 操作名CreatePersonalAccount
        # @type Operation: String
        # @param Name: 个人用户姓名
        # @type Name: String
        # @param IdentType: 个人用户证件类型，0代表身份证，详情请见常见问题
        # @type IdentType: Integer
        # @param IdentNo: 个人用户证件号码
        # @type IdentNo: String
        # @param MobilePhone: 个人用户手机号
        # @type MobilePhone: String

        attr_accessor :Module, :Operation, :Name, :IdentType, :IdentNo, :MobilePhone

        def initialize(_module=nil, operation=nil, name=nil, identtype=nil, identno=nil, mobilephone=nil)
          @Module = _module
          @Operation = operation
          @Name = name
          @IdentType = identtype
          @IdentNo = identno
          @MobilePhone = mobilephone
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @Name = params['Name']
          @IdentType = params['IdentType']
          @IdentNo = params['IdentNo']
          @MobilePhone = params['MobilePhone']
        end
      end

      # CreatePersonalAccount返回参数结构体
      class CreatePersonalAccountResponse < TencentCloud::Common::AbstractModel
        # @param AccountResId: 账号ID
        # @type AccountResId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccountResId, :RequestId

        def initialize(accountresid=nil, requestid=nil)
          @AccountResId = accountresid
          @RequestId = requestid
        end

        def deserialize(params)
          @AccountResId = params['AccountResId']
          @RequestId = params['RequestId']
        end
      end

      # CreateSeal请求参数结构体
      class CreateSealRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名SealMng
        # @type Module: String
        # @param Operation: 操作名CreateSeal
        # @type Operation: String
        # @param AccountResId: 帐号ID
        # @type AccountResId: String
        # @param ImgUrl: 签章链接，图片必须为png格式
        # @type ImgUrl: String
        # @param ImgData: 图片数据，base64编码
        # @type ImgData: String

        attr_accessor :Module, :Operation, :AccountResId, :ImgUrl, :ImgData

        def initialize(_module=nil, operation=nil, accountresid=nil, imgurl=nil, imgdata=nil)
          @Module = _module
          @Operation = operation
          @AccountResId = accountresid
          @ImgUrl = imgurl
          @ImgData = imgdata
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @AccountResId = params['AccountResId']
          @ImgUrl = params['ImgUrl']
          @ImgData = params['ImgData']
        end
      end

      # CreateSeal返回参数结构体
      class CreateSealResponse < TencentCloud::Common::AbstractModel
        # @param SealResId: 签章ID
        # @type SealResId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SealResId, :RequestId

        def initialize(sealresid=nil, requestid=nil)
          @SealResId = sealresid
          @RequestId = requestid
        end

        def deserialize(params)
          @SealResId = params['SealResId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteAccount请求参数结构体
      class DeleteAccountRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名AccountMng
        # @type Module: String
        # @param Operation: 操作名DeleteAccount
        # @type Operation: String
        # @param AccountList: 帐号ID列表
        # @type AccountList: Array

        attr_accessor :Module, :Operation, :AccountList

        def initialize(_module=nil, operation=nil, accountlist=nil)
          @Module = _module
          @Operation = operation
          @AccountList = accountlist
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @AccountList = params['AccountList']
        end
      end

      # DeleteAccount返回参数结构体
      class DeleteAccountResponse < TencentCloud::Common::AbstractModel
        # @param DelSuccessList: 删除成功帐号ID列表
        # @type DelSuccessList: Array
        # @param DelFailedList: 删除失败帐号ID列表
        # @type DelFailedList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DelSuccessList, :DelFailedList, :RequestId

        def initialize(delsuccesslist=nil, delfailedlist=nil, requestid=nil)
          @DelSuccessList = delsuccesslist
          @DelFailedList = delfailedlist
          @RequestId = requestid
        end

        def deserialize(params)
          @DelSuccessList = params['DelSuccessList']
          @DelFailedList = params['DelFailedList']
          @RequestId = params['RequestId']
        end
      end

      # DeleteSeal请求参数结构体
      class DeleteSealRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名SealMng
        # @type Module: String
        # @param Operation: 操作名DeleteSeal
        # @type Operation: String
        # @param AccountResId: 帐号ID
        # @type AccountResId: String
        # @param SealResId: 签章ID
        # @type SealResId: String

        attr_accessor :Module, :Operation, :AccountResId, :SealResId

        def initialize(_module=nil, operation=nil, accountresid=nil, sealresid=nil)
          @Module = _module
          @Operation = operation
          @AccountResId = accountresid
          @SealResId = sealresid
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @AccountResId = params['AccountResId']
          @SealResId = params['SealResId']
        end
      end

      # DeleteSeal返回参数结构体
      class DeleteSealResponse < TencentCloud::Common::AbstractModel
        # @param SealResId: 签章ID
        # @type SealResId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SealResId, :RequestId

        def initialize(sealresid=nil, requestid=nil)
          @SealResId = sealresid
          @RequestId = requestid
        end

        def deserialize(params)
          @SealResId = params['SealResId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskStatus请求参数结构体
      class DescribeTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名CommonMng
        # @type Module: String
        # @param Operation: 操作名DescribeTaskStatus
        # @type Operation: String
        # @param TaskId: 任务ID
        # @type TaskId: Integer

        attr_accessor :Module, :Operation, :TaskId

        def initialize(_module=nil, operation=nil, taskid=nil)
          @Module = _module
          @Operation = operation
          @TaskId = taskid
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @TaskId = params['TaskId']
        end
      end

      # DescribeTaskStatus返回参数结构体
      class DescribeTaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param TaskResult: 任务结果
        # @type TaskResult: String
        # @param TaskType: 任务类型，010代表合同上传结果，020代表合同下载结果
        # @type TaskType: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskResult, :TaskType, :RequestId

        def initialize(taskresult=nil, tasktype=nil, requestid=nil)
          @TaskResult = taskresult
          @TaskType = tasktype
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskResult = params['TaskResult']
          @TaskType = params['TaskType']
          @RequestId = params['RequestId']
        end
      end

      # DownloadContract请求参数结构体
      class DownloadContractRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名ContractMng
        # @type Module: String
        # @param Operation: 操作名DownloadContract
        # @type Operation: String
        # @param ContractResId: 合同ID
        # @type ContractResId: String

        attr_accessor :Module, :Operation, :ContractResId

        def initialize(_module=nil, operation=nil, contractresid=nil)
          @Module = _module
          @Operation = operation
          @ContractResId = contractresid
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @ContractResId = params['ContractResId']
        end
      end

      # DownloadContract返回参数结构体
      class DownloadContractResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # SendVcode请求参数结构体
      class SendVcodeRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名VerifyCode
        # @type Module: String
        # @param Operation: 操作名SendVcode
        # @type Operation: String
        # @param ContractResId: 合同ID
        # @type ContractResId: String
        # @param AccountResId: 帐号ID
        # @type AccountResId: String

        attr_accessor :Module, :Operation, :ContractResId, :AccountResId

        def initialize(_module=nil, operation=nil, contractresid=nil, accountresid=nil)
          @Module = _module
          @Operation = operation
          @ContractResId = contractresid
          @AccountResId = accountresid
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @ContractResId = params['ContractResId']
          @AccountResId = params['AccountResId']
        end
      end

      # SendVcode返回参数结构体
      class SendVcodeResponse < TencentCloud::Common::AbstractModel
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

      # SignContractByCoordinate请求参数结构体
      class SignContractByCoordinateRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名ContractMng
        # @type Module: String
        # @param Operation: 操作名SignContractByCoordinate
        # @type Operation: String
        # @param ContractResId: 合同ID
        # @type ContractResId: String
        # @param AccountResId: 帐户ID
        # @type AccountResId: String
        # @param SignLocations: 签署坐标，坐标原点在文件左下角，坐标单位为磅，坐标不得超过合同文件边界
        # @type SignLocations: Array
        # @param AuthorizationTime: 授权时间（由平台自动填充）
        # @type AuthorizationTime: String
        # @param Position: 授权IP地址（由平台自动填充）
        # @type Position: String
        # @param SealResId: 签章ID
        # @type SealResId: String
        # @param CertType: 选用证书类型：1  表示RSA证书， 2 表示国密证书， 参数不传时默认为1
        # @type CertType: Integer
        # @param ImageData: 签名图片，base64编码
        # @type ImageData: String

        attr_accessor :Module, :Operation, :ContractResId, :AccountResId, :SignLocations, :AuthorizationTime, :Position, :SealResId, :CertType, :ImageData

        def initialize(_module=nil, operation=nil, contractresid=nil, accountresid=nil, signlocations=nil, authorizationtime=nil, position=nil, sealresid=nil, certtype=nil, imagedata=nil)
          @Module = _module
          @Operation = operation
          @ContractResId = contractresid
          @AccountResId = accountresid
          @SignLocations = signlocations
          @AuthorizationTime = authorizationtime
          @Position = position
          @SealResId = sealresid
          @CertType = certtype
          @ImageData = imagedata
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @ContractResId = params['ContractResId']
          @AccountResId = params['AccountResId']
          unless params['SignLocations'].nil?
            @SignLocations = []
            params['SignLocations'].each do |i|
              signlocation_tmp = SignLocation.new
              signlocation_tmp.deserialize(i)
              @SignLocations << signlocation_tmp
            end
          end
          @AuthorizationTime = params['AuthorizationTime']
          @Position = params['Position']
          @SealResId = params['SealResId']
          @CertType = params['CertType']
          @ImageData = params['ImageData']
        end
      end

      # SignContractByCoordinate返回参数结构体
      class SignContractByCoordinateResponse < TencentCloud::Common::AbstractModel
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

      # SignContractByKeyword请求参数结构体
      class SignContractByKeywordRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名ContractMng
        # @type Module: String
        # @param Operation: 操作名SignContractByKeyword
        # @type Operation: String
        # @param ContractResId: 合同ID
        # @type ContractResId: String
        # @param AccountResId: 账户ID
        # @type AccountResId: String
        # @param SignKeyword: 签署关键字，偏移坐标原点为关键字中心
        # @type SignKeyword: :class:`Tencentcloud::Ds.v20180523.models.SignKeyword`
        # @param AuthorizationTime: 授权时间（由平台自动填充）
        # @type AuthorizationTime: String
        # @param Position: 授权IP地址（由平台自动填充）
        # @type Position: String
        # @param SealResId: 签章ID
        # @type SealResId: String
        # @param CertType: 选用证书类型：1  表示RSA证书， 2 表示国密证书， 参数不传时默认为1
        # @type CertType: Integer
        # @param ImageData: 签名图片，base64编码
        # @type ImageData: String

        attr_accessor :Module, :Operation, :ContractResId, :AccountResId, :SignKeyword, :AuthorizationTime, :Position, :SealResId, :CertType, :ImageData

        def initialize(_module=nil, operation=nil, contractresid=nil, accountresid=nil, signkeyword=nil, authorizationtime=nil, position=nil, sealresid=nil, certtype=nil, imagedata=nil)
          @Module = _module
          @Operation = operation
          @ContractResId = contractresid
          @AccountResId = accountresid
          @SignKeyword = signkeyword
          @AuthorizationTime = authorizationtime
          @Position = position
          @SealResId = sealresid
          @CertType = certtype
          @ImageData = imagedata
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @ContractResId = params['ContractResId']
          @AccountResId = params['AccountResId']
          unless params['SignKeyword'].nil?
            @SignKeyword = SignKeyword.new
            @SignKeyword.deserialize(params['SignKeyword'])
          end
          @AuthorizationTime = params['AuthorizationTime']
          @Position = params['Position']
          @SealResId = params['SealResId']
          @CertType = params['CertType']
          @ImageData = params['ImageData']
        end
      end

      # SignContractByKeyword返回参数结构体
      class SignContractByKeywordResponse < TencentCloud::Common::AbstractModel
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

      # 签署人信息
      class SignInfo < TencentCloud::Common::AbstractModel
        # @param AccountResId: 账户ID
        # @type AccountResId: String
        # @param AuthorizationTime: 授权时间（上传合同可不传该参数）
        # @type AuthorizationTime: String
        # @param Location: 授权IP地址（上传合同可不传该参数）
        # @type Location: String
        # @param SealId: 签章ID
        # @type SealId: String
        # @param ImageData: 签名图片，优先级比SealId高
        # @type ImageData: String
        # @param CertType: 默认值：1  表示RSA证书， 2 表示国密证书， 参数不传时默认为1
        # @type CertType: Integer
        # @param SignLocation: 签名域的标签值
        # @type SignLocation: String

        attr_accessor :AccountResId, :AuthorizationTime, :Location, :SealId, :ImageData, :CertType, :SignLocation

        def initialize(accountresid=nil, authorizationtime=nil, location=nil, sealid=nil, imagedata=nil, certtype=nil, signlocation=nil)
          @AccountResId = accountresid
          @AuthorizationTime = authorizationtime
          @Location = location
          @SealId = sealid
          @ImageData = imagedata
          @CertType = certtype
          @SignLocation = signlocation
        end

        def deserialize(params)
          @AccountResId = params['AccountResId']
          @AuthorizationTime = params['AuthorizationTime']
          @Location = params['Location']
          @SealId = params['SealId']
          @ImageData = params['ImageData']
          @CertType = params['CertType']
          @SignLocation = params['SignLocation']
        end
      end

      # 签署关键字信息
      class SignKeyword < TencentCloud::Common::AbstractModel
        # @param Keyword: 关键字
        # @type Keyword: String
        # @param OffsetCoordX: X轴偏移坐标
        # @type OffsetCoordX: String
        # @param OffsetCoordY: Y轴偏移坐标
        # @type OffsetCoordY: String
        # @param ImageWidth: 签章图片宽度
        # @type ImageWidth: String
        # @param ImageHeight: 签章图片高度
        # @type ImageHeight: String

        attr_accessor :Keyword, :OffsetCoordX, :OffsetCoordY, :ImageWidth, :ImageHeight

        def initialize(keyword=nil, offsetcoordx=nil, offsetcoordy=nil, imagewidth=nil, imageheight=nil)
          @Keyword = keyword
          @OffsetCoordX = offsetcoordx
          @OffsetCoordY = offsetcoordy
          @ImageWidth = imagewidth
          @ImageHeight = imageheight
        end

        def deserialize(params)
          @Keyword = params['Keyword']
          @OffsetCoordX = params['OffsetCoordX']
          @OffsetCoordY = params['OffsetCoordY']
          @ImageWidth = params['ImageWidth']
          @ImageHeight = params['ImageHeight']
        end
      end

      # 签署坐标对象
      class SignLocation < TencentCloud::Common::AbstractModel
        # @param SignOnPage: 签名域页数
        # @type SignOnPage: String
        # @param SignLocationLBX: 签名域左下角X轴坐标轴
        # @type SignLocationLBX: String
        # @param SignLocationLBY: 签名域左下角Y轴坐标轴
        # @type SignLocationLBY: String
        # @param SignLocationRUX: 签名域右上角X轴坐标轴
        # @type SignLocationRUX: String
        # @param SignLocationRUY: 签名域右上角Y轴坐标轴
        # @type SignLocationRUY: String

        attr_accessor :SignOnPage, :SignLocationLBX, :SignLocationLBY, :SignLocationRUX, :SignLocationRUY

        def initialize(signonpage=nil, signlocationlbx=nil, signlocationlby=nil, signlocationrux=nil, signlocationruy=nil)
          @SignOnPage = signonpage
          @SignLocationLBX = signlocationlbx
          @SignLocationLBY = signlocationlby
          @SignLocationRUX = signlocationrux
          @SignLocationRUY = signlocationruy
        end

        def deserialize(params)
          @SignOnPage = params['SignOnPage']
          @SignLocationLBX = params['SignLocationLBX']
          @SignLocationLBY = params['SignLocationLBY']
          @SignLocationRUX = params['SignLocationRUX']
          @SignLocationRUY = params['SignLocationRUY']
        end
      end

    end
  end
end

