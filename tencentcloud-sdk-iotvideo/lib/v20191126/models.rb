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
  module Iotvideo
    module V20191126
      # 终端用户绑定的设备
      class BindDevInfo < TencentCloud::Common::AbstractModel
        # @param Tid: 设备TID
        # @type Tid: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param DeviceModel: 设备型号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceModel: String
        # @param Role: 用户角色，owner：主人，guest：访客
        # @type Role: String

        attr_accessor :Tid, :DeviceName, :DeviceModel, :Role

        def initialize(tid=nil, devicename=nil, devicemodel=nil, role=nil)
          @Tid = tid
          @DeviceName = devicename
          @DeviceModel = devicemodel
          @Role = role
        end

        def deserialize(params)
          @Tid = params['Tid']
          @DeviceName = params['DeviceName']
          @DeviceModel = params['DeviceModel']
          @Role = params['Role']
        end
      end

      # 设备绑定的终端用户
      class BindUsrInfo < TencentCloud::Common::AbstractModel
        # @param AccessId: IotVideo平台分配给终端用户的用户id
        # @type AccessId: String
        # @param Role: 用户角色，owner：主人，guest：访客
        # @type Role: String

        attr_accessor :AccessId, :Role

        def initialize(accessid=nil, role=nil)
          @AccessId = accessid
          @Role = role
        end

        def deserialize(params)
          @AccessId = params['AccessId']
          @Role = params['Role']
        end
      end

      # 证书信息
      class CertificateInfo < TencentCloud::Common::AbstractModel
        # @param SecretId: SecretId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecretId: String
        # @param SecretKey: SecretKey
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecretKey: String
        # @param Token: Token
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Token: String
        # @param ExpiredTime: 过期时间，UNIX时间戳，单位秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpiredTime: Integer

        attr_accessor :SecretId, :SecretKey, :Token, :ExpiredTime

        def initialize(secretid=nil, secretkey=nil, token=nil, expiredtime=nil)
          @SecretId = secretid
          @SecretKey = secretkey
          @Token = token
          @ExpiredTime = expiredtime
        end

        def deserialize(params)
          @SecretId = params['SecretId']
          @SecretKey = params['SecretKey']
          @Token = params['Token']
          @ExpiredTime = params['ExpiredTime']
        end
      end

      # ClearDeviceActiveCode请求参数结构体
      class ClearDeviceActiveCodeRequest < TencentCloud::Common::AbstractModel
        # @param Tids: 设备TID列表，0<元素数量<=100
        # @type Tids: Array

        attr_accessor :Tids

        def initialize(tids=nil)
          @Tids = tids
        end

        def deserialize(params)
          @Tids = params['Tids']
        end
      end

      # ClearDeviceActiveCode返回参数结构体
      class ClearDeviceActiveCodeResponse < TencentCloud::Common::AbstractModel
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

      # 版本发布的描述信息，需要国际化，可以为空
      class Contents < TencentCloud::Common::AbstractModel
        # @param En: 英文，长度不超过300个字符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type En: String
        # @param Cn: 中文简体，长度不超过300个字符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cn: String
        # @param Tc: 中文繁体(Traditional Chinese)，长度不超过300个字符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tc: String
        # @param Default: 默认语言，最多不超过300个字符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Default: String

        attr_accessor :En, :Cn, :Tc, :Default

        def initialize(en=nil, cn=nil, tc=nil, default=nil)
          @En = en
          @Cn = cn
          @Tc = tc
          @Default = default
        end

        def deserialize(params)
          @En = params['En']
          @Cn = params['Cn']
          @Tc = params['Tc']
          @Default = params['Default']
        end
      end

      # 申请上传证书回包
      class CosCertificate < TencentCloud::Common::AbstractModel
        # @param StorageBucket: cos存储桶
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageBucket: String
        # @param StorageRegion: cos存储园区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageRegion: String
        # @param StoragePath: 存储路径，录制场景下该值为存储目录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StoragePath: String
        # @param TempCertificate: 证书信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TempCertificate: :class:`Tencentcloud::Iotvideo.v20191126.models.CertificateInfo`
        # @param SessionKey: SessionKey
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionKey: String

        attr_accessor :StorageBucket, :StorageRegion, :StoragePath, :TempCertificate, :SessionKey

        def initialize(storagebucket=nil, storageregion=nil, storagepath=nil, tempcertificate=nil, sessionkey=nil)
          @StorageBucket = storagebucket
          @StorageRegion = storageregion
          @StoragePath = storagepath
          @TempCertificate = tempcertificate
          @SessionKey = sessionkey
        end

        def deserialize(params)
          @StorageBucket = params['StorageBucket']
          @StorageRegion = params['StorageRegion']
          @StoragePath = params['StoragePath']
          unless params['TempCertificate'].nil?
            @TempCertificate = CertificateInfo.new
            @TempCertificate.deserialize(params['TempCertificate'])
          end
          @SessionKey = params['SessionKey']
        end
      end

      # CreateAnonymousAccessToken请求参数结构体
      class CreateAnonymousAccessTokenRequest < TencentCloud::Common::AbstractModel
        # @param TtlMinutes: Token的TTL(time to alive)分钟数,最大值1440(即24小时)
        # @type TtlMinutes: Integer
        # @param Tid: 设备ID。创建Token时, 此参数为必须项
        # @type Tid: String
        # @param OldAccessToken: 旧的AccessToken。续期Token时，此参数为必须
        # @type OldAccessToken: String

        attr_accessor :TtlMinutes, :Tid, :OldAccessToken

        def initialize(ttlminutes=nil, tid=nil, oldaccesstoken=nil)
          @TtlMinutes = ttlminutes
          @Tid = tid
          @OldAccessToken = oldaccesstoken
        end

        def deserialize(params)
          @TtlMinutes = params['TtlMinutes']
          @Tid = params['Tid']
          @OldAccessToken = params['OldAccessToken']
        end
      end

      # CreateAnonymousAccessToken返回参数结构体
      class CreateAnonymousAccessTokenResponse < TencentCloud::Common::AbstractModel
        # @param AccessId: 终端用户在IoT Video上的唯一标识ID
        # @type AccessId: String
        # @param AccessToken: IoT Video平台的AccessToken
        # @type AccessToken: String
        # @param ExpireTime: Token的过期时间，单位秒(UTC时间)
        # @type ExpireTime: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccessId, :AccessToken, :ExpireTime, :RequestId

        def initialize(accessid=nil, accesstoken=nil, expiretime=nil, requestid=nil)
          @AccessId = accessid
          @AccessToken = accesstoken
          @ExpireTime = expiretime
          @RequestId = requestid
        end

        def deserialize(params)
          @AccessId = params['AccessId']
          @AccessToken = params['AccessToken']
          @ExpireTime = params['ExpireTime']
          @RequestId = params['RequestId']
        end
      end

      # CreateAppUsr请求参数结构体
      class CreateAppUsrRequest < TencentCloud::Common::AbstractModel
        # @param CunionId: 标识用户的唯一ID，防止同一个用户多次注册
        # @type CunionId: String
        # @param Mobile: 用于小程序关联手机号
        # @type Mobile: String

        attr_accessor :CunionId, :Mobile

        def initialize(cunionid=nil, mobile=nil)
          @CunionId = cunionid
          @Mobile = mobile
        end

        def deserialize(params)
          @CunionId = params['CunionId']
          @Mobile = params['Mobile']
        end
      end

      # CreateAppUsr返回参数结构体
      class CreateAppUsrResponse < TencentCloud::Common::AbstractModel
        # @param CunionId: 厂商云标识用户的唯一ID
        # @type CunionId: String
        # @param AccessId: 客户的终端用户在IoT Video上的唯一标识ID
        # @type AccessId: String
        # @param NewRegist: 用户是否为新创建
        # @type NewRegist: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CunionId, :AccessId, :NewRegist, :RequestId

        def initialize(cunionid=nil, accessid=nil, newregist=nil, requestid=nil)
          @CunionId = cunionid
          @AccessId = accessid
          @NewRegist = newregist
          @RequestId = requestid
        end

        def deserialize(params)
          @CunionId = params['CunionId']
          @AccessId = params['AccessId']
          @NewRegist = params['NewRegist']
          @RequestId = params['RequestId']
        end
      end

      # CreateBinding请求参数结构体
      class CreateBindingRequest < TencentCloud::Common::AbstractModel
        # @param AccessId: 终端用户在IoT Video上的唯一标识ID
        # @type AccessId: String
        # @param Tid: 设备TID
        # @type Tid: String
        # @param Role: 用户角色，owner：主人，guest：访客
        # @type Role: String
        # @param ForceBind: 是否踢掉之前的主人，true：踢掉；false：不踢掉。当role为guest时，可以不填
        # @type ForceBind: Boolean
        # @param Nick: 设备昵称，最多不超过64个字符
        # @type Nick: String
        # @param BindToken: 绑定过程中的会话token，由设备通过SDK接口确认是否允许绑定的token，用于增加设备被绑定的安全性
        # @type BindToken: String

        attr_accessor :AccessId, :Tid, :Role, :ForceBind, :Nick, :BindToken

        def initialize(accessid=nil, tid=nil, role=nil, forcebind=nil, nick=nil, bindtoken=nil)
          @AccessId = accessid
          @Tid = tid
          @Role = role
          @ForceBind = forcebind
          @Nick = nick
          @BindToken = bindtoken
        end

        def deserialize(params)
          @AccessId = params['AccessId']
          @Tid = params['Tid']
          @Role = params['Role']
          @ForceBind = params['ForceBind']
          @Nick = params['Nick']
          @BindToken = params['BindToken']
        end
      end

      # CreateBinding返回参数结构体
      class CreateBindingResponse < TencentCloud::Common::AbstractModel
        # @param AccessToken: 访问设备的AccessToken
        # @type AccessToken: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccessToken, :RequestId

        def initialize(accesstoken=nil, requestid=nil)
          @AccessToken = accesstoken
          @RequestId = requestid
        end

        def deserialize(params)
          @AccessToken = params['AccessToken']
          @RequestId = params['RequestId']
        end
      end

      # CreateDevToken请求参数结构体
      class CreateDevTokenRequest < TencentCloud::Common::AbstractModel
        # @param AccessId: 客户的终端用户在IoT Video上的唯一标识ID
        # @type AccessId: String
        # @param Tids: 设备TID列表,0<元素数量<=100
        # @type Tids: Array
        # @param TtlMinutes: Token的TTL(time to alive)分钟数
        # @type TtlMinutes: Integer

        attr_accessor :AccessId, :Tids, :TtlMinutes

        def initialize(accessid=nil, tids=nil, ttlminutes=nil)
          @AccessId = accessid
          @Tids = tids
          @TtlMinutes = ttlminutes
        end

        def deserialize(params)
          @AccessId = params['AccessId']
          @Tids = params['Tids']
          @TtlMinutes = params['TtlMinutes']
        end
      end

      # CreateDevToken返回参数结构体
      class CreateDevTokenResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回的用户token列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              devtokeninfo_tmp = DevTokenInfo.new
              devtokeninfo_tmp.deserialize(i)
              @Data << devtokeninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateDevices请求参数结构体
      class CreateDevicesRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param Number: 创建设备的数量，数量范围1-100
        # @type Number: Integer
        # @param NamePrefix: 设备名称前缀，支持英文、数字，不超过10字符
        # @type NamePrefix: String
        # @param Operator: 操作人
        # @type Operator: String

        attr_accessor :ProductId, :Number, :NamePrefix, :Operator

        def initialize(productid=nil, number=nil, nameprefix=nil, operator=nil)
          @ProductId = productid
          @Number = number
          @NamePrefix = nameprefix
          @Operator = operator
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @Number = params['Number']
          @NamePrefix = params['NamePrefix']
          @Operator = params['Operator']
        end
      end

      # CreateDevices返回参数结构体
      class CreateDevicesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 新创建设备的认证信息
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              devicecertificate_tmp = DeviceCertificate.new
              devicecertificate_tmp.deserialize(i)
              @Data << devicecertificate_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateGencode请求参数结构体
      class CreateGencodeRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param Revision: 物模型发布版本号,-1代表未发布的，保存的是草稿箱的版本。1代表已发布的物模型。
        # @type Revision: Integer

        attr_accessor :ProductId, :Revision

        def initialize(productid=nil, revision=nil)
          @ProductId = productid
          @Revision = revision
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @Revision = params['Revision']
        end
      end

      # CreateGencode返回参数结构体
      class CreateGencodeResponse < TencentCloud::Common::AbstractModel
        # @param ZipCode: 生成的源代码(zip压缩后的base64编码)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZipCode: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ZipCode, :RequestId

        def initialize(zipcode=nil, requestid=nil)
          @ZipCode = zipcode
          @RequestId = requestid
        end

        def deserialize(params)
          @ZipCode = params['ZipCode']
          @RequestId = params['RequestId']
        end
      end

      # CreateIotDataType请求参数结构体
      class CreateIotDataTypeRequest < TencentCloud::Common::AbstractModel
        # @param IotDataType: 用户自定义数据类型，json格式的字符串
        # @type IotDataType: String

        attr_accessor :IotDataType

        def initialize(iotdatatype=nil)
          @IotDataType = iotdatatype
        end

        def deserialize(params)
          @IotDataType = params['IotDataType']
        end
      end

      # CreateIotDataType返回参数结构体
      class CreateIotDataTypeResponse < TencentCloud::Common::AbstractModel
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

      # CreateIotModel请求参数结构体
      class CreateIotModelRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param IotModel: 物模型json串
        # @type IotModel: String

        attr_accessor :ProductId, :IotModel

        def initialize(productid=nil, iotmodel=nil)
          @ProductId = productid
          @IotModel = iotmodel
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @IotModel = params['IotModel']
        end
      end

      # CreateIotModel返回参数结构体
      class CreateIotModelResponse < TencentCloud::Common::AbstractModel
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

      # CreateProduct请求参数结构体
      class CreateProductRequest < TencentCloud::Common::AbstractModel
        # @param ProductModel: 产器型号(APP产品,为APP包名)
        # @type ProductModel: String
        # @param ProductName: 产品名称
        # 仅支持中文、英文、数字、下划线，不超过32个字符
        # @type ProductName: String
        # @param ProductDescription: 产品描述信息
        # 不支持单引号、双引号、退格符、回车符、换行符、制表符、反斜杠、下划线、“%”、“#”、“$”，不超过128字符
        # @type ProductDescription: String
        # @param Features: 设备功能码（ypsxth:音频双向通话 ，spdxth:视频单向通话）
        # @type Features: Array
        # @param ChipManufactureId: 主芯片产商ID
        # @type ChipManufactureId: String
        # @param ChipId: 主芯片ID
        # @type ChipId: String
        # @param ProductRegion: 地域：
        # China-Mainland（中国大陆）
        # China-Hong Kong, Macao and Taiwan（港澳台地区）
        # America（美国）
        # Europe（欧洲）
        # India（印度）
        # Other-Overseas（其他境外地区）
        # @type ProductRegion: String
        # @param ProductCate: 设备类型, 0-普通视频设备，1-NVR设备
        # @type ProductCate: Integer
        # @param AccessMode: 接入模型，bit0是0：公版小程序未接入，bit0是1：公版小程序已接入
        # @type AccessMode: Integer
        # @param Os: Linux,Android,Liteos等系统
        # @type Os: String
        # @param ChipArch: 芯片架构，只是针对操作系统为android的
        # @type ChipArch: String

        attr_accessor :ProductModel, :ProductName, :ProductDescription, :Features, :ChipManufactureId, :ChipId, :ProductRegion, :ProductCate, :AccessMode, :Os, :ChipArch

        def initialize(productmodel=nil, productname=nil, productdescription=nil, features=nil, chipmanufactureid=nil, chipid=nil, productregion=nil, productcate=nil, accessmode=nil, os=nil, chiparch=nil)
          @ProductModel = productmodel
          @ProductName = productname
          @ProductDescription = productdescription
          @Features = features
          @ChipManufactureId = chipmanufactureid
          @ChipId = chipid
          @ProductRegion = productregion
          @ProductCate = productcate
          @AccessMode = accessmode
          @Os = os
          @ChipArch = chiparch
        end

        def deserialize(params)
          @ProductModel = params['ProductModel']
          @ProductName = params['ProductName']
          @ProductDescription = params['ProductDescription']
          @Features = params['Features']
          @ChipManufactureId = params['ChipManufactureId']
          @ChipId = params['ChipId']
          @ProductRegion = params['ProductRegion']
          @ProductCate = params['ProductCate']
          @AccessMode = params['AccessMode']
          @Os = params['Os']
          @ChipArch = params['ChipArch']
        end
      end

      # CreateProduct返回参数结构体
      class CreateProductResponse < TencentCloud::Common::AbstractModel
        # @param Data: 产品详细信息
        # @type Data: :class:`Tencentcloud::Iotvideo.v20191126.models.ProductBase`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ProductBase.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateStorage请求参数结构体
      class CreateStorageRequest < TencentCloud::Common::AbstractModel
        # @param PkgId: 云存套餐ID
        # @type PkgId: String
        # @param Tid: 设备TID
        # @type Tid: String
        # @param UserTag: 用户唯一标识，由厂商保证内部唯一性
        # @type UserTag: String

        attr_accessor :PkgId, :Tid, :UserTag

        def initialize(pkgid=nil, tid=nil, usertag=nil)
          @PkgId = pkgid
          @Tid = tid
          @UserTag = usertag
        end

        def deserialize(params)
          @PkgId = params['PkgId']
          @Tid = params['Tid']
          @UserTag = params['UserTag']
        end
      end

      # CreateStorage返回参数结构体
      class CreateStorageResponse < TencentCloud::Common::AbstractModel
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

      # CreateStorageService请求参数结构体
      class CreateStorageServiceRequest < TencentCloud::Common::AbstractModel
        # @param PkgId: 云存套餐ID：
        # yc1m3d ： 全时3天存储月套餐。
        # yc1m7d ： 全时7天存储月套餐。
        # yc1m30d ：全时30天存储月套餐。
        # yc1y3d ：全时3天存储年套餐。
        # yc1y7d ：全时7天存储年套餐。
        # yc1y30d ：全时30天存储年套餐。
        # ye1m3d ：事件3天存储月套餐。
        # ye1m7d ：事件7天存储月套餐。
        # ye1m30d ：事件30天存储月套餐 。
        # ye1y3d ：事件3天存储年套餐。
        # ye1y7d ：事件7天存储年套餐。
        # ye1y30d ：事件30天存储年套餐。
        # yc1w7d : 全时7天存储周套餐。
        # ye1w7d : 事件7天存储周套餐。
        # @type PkgId: String
        # @param Tid: 设备TID
        # @type Tid: String
        # @param OrderCount: 订单数量,可一次性创建多个订单
        # @type OrderCount: Integer
        # @param StorageRegion: 云存服务所在的区域,如ap-guangzhou,ap-singapore, na-siliconvalley, eu-frankfurt
        # @type StorageRegion: String
        # @param ChnNum: 视频流通道号。(对于存在多路视频流的设备，如NVR设备，与设备实际视频流通道号对应)
        # @type ChnNum: Integer
        # @param AccessId: 设备主人用户在IoT Video平台的注册ID。该参数用于验证Paas/Saas平台的设备/用户关系链是否一致
        # @type AccessId: String
        # @param EnableTime: 服务生效时间,若不指定此参数，服务立即生效
        # @type EnableTime: Integer

        attr_accessor :PkgId, :Tid, :OrderCount, :StorageRegion, :ChnNum, :AccessId, :EnableTime

        def initialize(pkgid=nil, tid=nil, ordercount=nil, storageregion=nil, chnnum=nil, accessid=nil, enabletime=nil)
          @PkgId = pkgid
          @Tid = tid
          @OrderCount = ordercount
          @StorageRegion = storageregion
          @ChnNum = chnnum
          @AccessId = accessid
          @EnableTime = enabletime
        end

        def deserialize(params)
          @PkgId = params['PkgId']
          @Tid = params['Tid']
          @OrderCount = params['OrderCount']
          @StorageRegion = params['StorageRegion']
          @ChnNum = params['ChnNum']
          @AccessId = params['AccessId']
          @EnableTime = params['EnableTime']
        end
      end

      # CreateStorageService返回参数结构体
      class CreateStorageServiceResponse < TencentCloud::Common::AbstractModel
        # @param IsRenew: 标志是否为续订
        # @type IsRenew: Boolean
        # @param ServiceId: 云存服务ID
        # @type ServiceId: String
        # @param StorageRegion: 云存服务所在的区域
        # @type StorageRegion: String
        # @param Tid: 设备TID
        # @type Tid: String
        # @param ChnNum: 视频流通道号。(对于存在多路视频流的设备，如NVR设备，与设备实际视频流通道号对应)
        # @type ChnNum: Integer
        # @param AccessId: 终端用户在IoT Video平台的注册ID
        # @type AccessId: String
        # @param StartTime: 服务开始时间
        # @type StartTime: Integer
        # @param EndTime: 服务失效时间
        # @type EndTime: Integer
        # @param Status: 服务状态
        # 1：正常使用中
        # 2：待续费。设备云存服务已到期，但是历史云存数据未过期。续费后仍可查看这些历史数据。
        # 3：已过期。查询不到设备保存在云端的数据。
        # 4：等待服务生效。
        # @type Status: Integer
        # @param Data: 新增的云存定单列表
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsRenew, :ServiceId, :StorageRegion, :Tid, :ChnNum, :AccessId, :StartTime, :EndTime, :Status, :Data, :RequestId

        def initialize(isrenew=nil, serviceid=nil, storageregion=nil, tid=nil, chnnum=nil, accessid=nil, starttime=nil, endtime=nil, status=nil, data=nil, requestid=nil)
          @IsRenew = isrenew
          @ServiceId = serviceid
          @StorageRegion = storageregion
          @Tid = tid
          @ChnNum = chnnum
          @AccessId = accessid
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @IsRenew = params['IsRenew']
          @ServiceId = params['ServiceId']
          @StorageRegion = params['StorageRegion']
          @Tid = params['Tid']
          @ChnNum = params['ChnNum']
          @AccessId = params['AccessId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              storageorder_tmp = StorageOrder.new
              storageorder_tmp.deserialize(i)
              @Data << storageorder_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateTraceIds请求参数结构体
      class CreateTraceIdsRequest < TencentCloud::Common::AbstractModel
        # @param Tids: 设备TID列表
        # @type Tids: Array

        attr_accessor :Tids

        def initialize(tids=nil)
          @Tids = tids
        end

        def deserialize(params)
          @Tids = params['Tids']
        end
      end

      # CreateTraceIds返回参数结构体
      class CreateTraceIdsResponse < TencentCloud::Common::AbstractModel
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

      # CreateUploadPath请求参数结构体
      class CreateUploadPathRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param FileName: 固件文件名
        # @type FileName: String

        attr_accessor :ProductId, :FileName

        def initialize(productid=nil, filename=nil)
          @ProductId = productid
          @FileName = filename
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @FileName = params['FileName']
        end
      end

      # CreateUploadPath返回参数结构体
      class CreateUploadPathResponse < TencentCloud::Common::AbstractModel
        # @param Data: 固件上传地址URL，用户可将本地的固件文件通过该URL以PUT的请求方式上传。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateUploadTest请求参数结构体
      class CreateUploadTestRequest < TencentCloud::Common::AbstractModel
        # @param PkgId: package ID
        # @type PkgId: String
        # @param Tid: 设备TID
        # @type Tid: String

        attr_accessor :PkgId, :Tid

        def initialize(pkgid=nil, tid=nil)
          @PkgId = pkgid
          @Tid = tid
        end

        def deserialize(params)
          @PkgId = params['PkgId']
          @Tid = params['Tid']
        end
      end

      # CreateUploadTest返回参数结构体
      class CreateUploadTestResponse < TencentCloud::Common::AbstractModel
        # @param Data: 申请设备证书返回的信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Iotvideo.v20191126.models.CosCertificate`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CosCertificate.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateUsrToken请求参数结构体
      class CreateUsrTokenRequest < TencentCloud::Common::AbstractModel
        # @param AccessId: 终端用户在IoT Video上的唯一标识ID
        # @type AccessId: String
        # @param UniqueId: 终端唯一ID，用于区分同一个用户的多个终端
        # @type UniqueId: String
        # @param TtlMinutes: Token的TTL(time to alive)分钟数
        # @type TtlMinutes: Integer
        # @param OldAccessToken: 旧的AccessToken。续期Token时，此参数为必须。
        # @type OldAccessToken: String

        attr_accessor :AccessId, :UniqueId, :TtlMinutes, :OldAccessToken

        def initialize(accessid=nil, uniqueid=nil, ttlminutes=nil, oldaccesstoken=nil)
          @AccessId = accessid
          @UniqueId = uniqueid
          @TtlMinutes = ttlminutes
          @OldAccessToken = oldaccesstoken
        end

        def deserialize(params)
          @AccessId = params['AccessId']
          @UniqueId = params['UniqueId']
          @TtlMinutes = params['TtlMinutes']
          @OldAccessToken = params['OldAccessToken']
        end
      end

      # CreateUsrToken返回参数结构体
      class CreateUsrTokenResponse < TencentCloud::Common::AbstractModel
        # @param AccessId: 终端用户在IoT Video上的唯一标识ID
        # @type AccessId: String
        # @param AccessToken: IoT Video平台的AccessToken
        # @type AccessToken: String
        # @param ExpireTime: Token的过期时间，单位秒(UTC时间)
        # @type ExpireTime: Integer
        # @param TerminalId: 终端ID
        # @type TerminalId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccessId, :AccessToken, :ExpireTime, :TerminalId, :RequestId

        def initialize(accessid=nil, accesstoken=nil, expiretime=nil, terminalid=nil, requestid=nil)
          @AccessId = accessid
          @AccessToken = accesstoken
          @ExpireTime = expiretime
          @TerminalId = terminalid
          @RequestId = requestid
        end

        def deserialize(params)
          @AccessId = params['AccessId']
          @AccessToken = params['AccessToken']
          @ExpireTime = params['ExpireTime']
          @TerminalId = params['TerminalId']
          @RequestId = params['RequestId']
        end
      end

      # 接口DescribeStream输出参数
      class Data < TencentCloud::Common::AbstractModel
        # @param Protocol: 直播协议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param URI: 流媒体播放地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type URI: String
        # @param ExpireTime: 流媒体地址过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: Integer
        # @param VideoCodec: 视频编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoCodec: String
        # @param AudioCodec: 音频编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AudioCodec: String

        attr_accessor :Protocol, :URI, :ExpireTime, :VideoCodec, :AudioCodec

        def initialize(protocol=nil, uri=nil, expiretime=nil, videocodec=nil, audiocodec=nil)
          @Protocol = protocol
          @URI = uri
          @ExpireTime = expiretime
          @VideoCodec = videocodec
          @AudioCodec = audiocodec
        end

        def deserialize(params)
          @Protocol = params['Protocol']
          @URI = params['URI']
          @ExpireTime = params['ExpireTime']
          @VideoCodec = params['VideoCodec']
          @AudioCodec = params['AudioCodec']
        end
      end

      # DeleteAppUsr请求参数结构体
      class DeleteAppUsrRequest < TencentCloud::Common::AbstractModel
        # @param AccessId: 客户的终端用户在IoT Video上的唯一标识ID
        # @type AccessId: String

        attr_accessor :AccessId

        def initialize(accessid=nil)
          @AccessId = accessid
        end

        def deserialize(params)
          @AccessId = params['AccessId']
        end
      end

      # DeleteAppUsr返回参数结构体
      class DeleteAppUsrResponse < TencentCloud::Common::AbstractModel
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

      # DeleteBinding请求参数结构体
      class DeleteBindingRequest < TencentCloud::Common::AbstractModel
        # @param AccessId: 终端用户在IoT Video上的唯一标识ID
        # @type AccessId: String
        # @param Tid: 设备TID
        # @type Tid: String
        # @param Role: 用户角色，owner：主人，guest：访客
        # @type Role: String

        attr_accessor :AccessId, :Tid, :Role

        def initialize(accessid=nil, tid=nil, role=nil)
          @AccessId = accessid
          @Tid = tid
          @Role = role
        end

        def deserialize(params)
          @AccessId = params['AccessId']
          @Tid = params['Tid']
          @Role = params['Role']
        end
      end

      # DeleteBinding返回参数结构体
      class DeleteBindingResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDevice请求参数结构体
      class DeleteDeviceRequest < TencentCloud::Common::AbstractModel
        # @param Tids: 设备TID列表
        # @type Tids: Array

        attr_accessor :Tids

        def initialize(tids=nil)
          @Tids = tids
        end

        def deserialize(params)
          @Tids = params['Tids']
        end
      end

      # DeleteDevice返回参数结构体
      class DeleteDeviceResponse < TencentCloud::Common::AbstractModel
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

      # DeleteIotDataType请求参数结构体
      class DeleteIotDataTypeRequest < TencentCloud::Common::AbstractModel
        # @param TypeId: 自定义数据类型的标识符
        # @type TypeId: String

        attr_accessor :TypeId

        def initialize(typeid=nil)
          @TypeId = typeid
        end

        def deserialize(params)
          @TypeId = params['TypeId']
        end
      end

      # DeleteIotDataType返回参数结构体
      class DeleteIotDataTypeResponse < TencentCloud::Common::AbstractModel
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

      # DeleteMessageQueue请求参数结构体
      class DeleteMessageQueueRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String

        attr_accessor :ProductId

        def initialize(productid=nil)
          @ProductId = productid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
        end
      end

      # DeleteMessageQueue返回参数结构体
      class DeleteMessageQueueResponse < TencentCloud::Common::AbstractModel
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

      # DeleteOtaVersion请求参数结构体
      class DeleteOtaVersionRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param OtaVersion: 固件版本号，格式为x.y.z， x，y 范围0-63，z范围1~524288
        # @type OtaVersion: String
        # @param Operator: 操作人
        # @type Operator: String

        attr_accessor :ProductId, :OtaVersion, :Operator

        def initialize(productid=nil, otaversion=nil, operator=nil)
          @ProductId = productid
          @OtaVersion = otaversion
          @Operator = operator
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @OtaVersion = params['OtaVersion']
          @Operator = params['Operator']
        end
      end

      # DeleteOtaVersion返回参数结构体
      class DeleteOtaVersionResponse < TencentCloud::Common::AbstractModel
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

      # DeleteProduct请求参数结构体
      class DeleteProductRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String

        attr_accessor :ProductId

        def initialize(productid=nil)
          @ProductId = productid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
        end
      end

      # DeleteProduct返回参数结构体
      class DeleteProductResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTraceIds请求参数结构体
      class DeleteTraceIdsRequest < TencentCloud::Common::AbstractModel
        # @param Tids: 设备TID列表
        # @type Tids: Array

        attr_accessor :Tids

        def initialize(tids=nil)
          @Tids = tids
        end

        def deserialize(params)
          @Tids = params['Tids']
        end
      end

      # DeleteTraceIds返回参数结构体
      class DeleteTraceIdsResponse < TencentCloud::Common::AbstractModel
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

      # DeliverStorageService请求参数结构体
      class DeliverStorageServiceRequest < TencentCloud::Common::AbstractModel
        # @param SrcServiceId: 待转移的源云存服务ID
        # @type SrcServiceId: String
        # @param Tid: 设备TID
        # @type Tid: String
        # @param ChnNum: 视频流通道号。(对于存在多路视频流的设备，如NVR设备，与设备实际视频流通道号对应)
        # @type ChnNum: Integer
        # @param AccessId: 设备主人用户在IoT Video平台的注册ID。该参数用于验证Paas/Saas平台的设备/用户关系链是否一致
        # @type AccessId: String

        attr_accessor :SrcServiceId, :Tid, :ChnNum, :AccessId

        def initialize(srcserviceid=nil, tid=nil, chnnum=nil, accessid=nil)
          @SrcServiceId = srcserviceid
          @Tid = tid
          @ChnNum = chnnum
          @AccessId = accessid
        end

        def deserialize(params)
          @SrcServiceId = params['SrcServiceId']
          @Tid = params['Tid']
          @ChnNum = params['ChnNum']
          @AccessId = params['AccessId']
        end
      end

      # DeliverStorageService返回参数结构体
      class DeliverStorageServiceResponse < TencentCloud::Common::AbstractModel
        # @param SrcServiceId: 被转出的云存服务ID
        # @type SrcServiceId: String
        # @param ServiceId: 被转入的云存服务ID
        # @type ServiceId: String
        # @param StorageRegion: 云存服务所在的区域
        # @type StorageRegion: String
        # @param Tid: 设备TID
        # @type Tid: String
        # @param ChnNum: 视频流通道号。(对于存在多路视频流的设备，如NVR设备，与设备实际视频流通道号对应)
        # @type ChnNum: Integer
        # @param AccessId: 终端用户在IoT Video平台的注册ID
        # @type AccessId: String
        # @param StartTime: 服务开始时间
        # @type StartTime: Integer
        # @param EndTime: 服务失效时间
        # @type EndTime: Integer
        # @param Status: 服务状态
        # 1：正常使用中
        # 2：待续费。设备云存服务已到期，但是历史云存数据未过期。续费后仍可查看这些历史数据。
        # 3：已过期。查询不到设备保存在云端的数据。
        # 4：等待服务生效。
        # @type Status: Integer
        # @param Data: 新增的云存定单列表
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SrcServiceId, :ServiceId, :StorageRegion, :Tid, :ChnNum, :AccessId, :StartTime, :EndTime, :Status, :Data, :RequestId

        def initialize(srcserviceid=nil, serviceid=nil, storageregion=nil, tid=nil, chnnum=nil, accessid=nil, starttime=nil, endtime=nil, status=nil, data=nil, requestid=nil)
          @SrcServiceId = srcserviceid
          @ServiceId = serviceid
          @StorageRegion = storageregion
          @Tid = tid
          @ChnNum = chnnum
          @AccessId = accessid
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @SrcServiceId = params['SrcServiceId']
          @ServiceId = params['ServiceId']
          @StorageRegion = params['StorageRegion']
          @Tid = params['Tid']
          @ChnNum = params['ChnNum']
          @AccessId = params['AccessId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              storageorder_tmp = StorageOrder.new
              storageorder_tmp.deserialize(i)
              @Data << storageorder_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAccountBalance请求参数结构体
      class DescribeAccountBalanceRequest < TencentCloud::Common::AbstractModel
        # @param AccountType: 账户类型 1:设备接入 2:云存
        # @type AccountType: Integer

        attr_accessor :AccountType

        def initialize(accounttype=nil)
          @AccountType = accounttype
        end

        def deserialize(params)
          @AccountType = params['AccountType']
        end
      end

      # DescribeAccountBalance返回参数结构体
      class DescribeAccountBalanceResponse < TencentCloud::Common::AbstractModel
        # @param AccountType: 账户类型 1=设备接入;2=云存。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountType: Integer
        # @param Balance: 余额, 单位 : 分(人民币)。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Balance: Integer
        # @param State: 账户状态，1=正常；8=冻结；9=销户。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type State: Integer
        # @param LastUpdateTime: 最后修改时间，UTC值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastUpdateTime: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccountType, :Balance, :State, :LastUpdateTime, :RequestId

        def initialize(accounttype=nil, balance=nil, state=nil, lastupdatetime=nil, requestid=nil)
          @AccountType = accounttype
          @Balance = balance
          @State = state
          @LastUpdateTime = lastupdatetime
          @RequestId = requestid
        end

        def deserialize(params)
          @AccountType = params['AccountType']
          @Balance = params['Balance']
          @State = params['State']
          @LastUpdateTime = params['LastUpdateTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBindDev请求参数结构体
      class DescribeBindDevRequest < TencentCloud::Common::AbstractModel
        # @param AccessId: 终端用户在IoT Video上的唯一标识ID
        # @type AccessId: String

        attr_accessor :AccessId

        def initialize(accessid=nil)
          @AccessId = accessid
        end

        def deserialize(params)
          @AccessId = params['AccessId']
        end
      end

      # DescribeBindDev返回参数结构体
      class DescribeBindDevResponse < TencentCloud::Common::AbstractModel
        # @param Data: 绑定的设备列表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              binddevinfo_tmp = BindDevInfo.new
              binddevinfo_tmp.deserialize(i)
              @Data << binddevinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBindUsr请求参数结构体
      class DescribeBindUsrRequest < TencentCloud::Common::AbstractModel
        # @param Tid: 设备TID
        # @type Tid: String
        # @param AccessId: 设备主人的AccessId
        # @type AccessId: String

        attr_accessor :Tid, :AccessId

        def initialize(tid=nil, accessid=nil)
          @Tid = tid
          @AccessId = accessid
        end

        def deserialize(params)
          @Tid = params['Tid']
          @AccessId = params['AccessId']
        end
      end

      # DescribeBindUsr返回参数结构体
      class DescribeBindUsrResponse < TencentCloud::Common::AbstractModel
        # @param Data: 具有绑定关系的终端用户信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              bindusrinfo_tmp = BindUsrInfo.new
              bindusrinfo_tmp.deserialize(i)
              @Data << bindusrinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceModel请求参数结构体
      class DescribeDeviceModelRequest < TencentCloud::Common::AbstractModel
        # @param Tid: 设备TID
        # @type Tid: String
        # @param Branch: 物模型的分支路径
        # @type Branch: String

        attr_accessor :Tid, :Branch

        def initialize(tid=nil, branch=nil)
          @Tid = tid
          @Branch = branch
        end

        def deserialize(params)
          @Tid = params['Tid']
          @Branch = params['Branch']
        end
      end

      # DescribeDeviceModel返回参数结构体
      class DescribeDeviceModelResponse < TencentCloud::Common::AbstractModel
        # @param Data: 设备物模型信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Iotvideo.v20191126.models.DeviceModelData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeviceModelData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDevice请求参数结构体
      class DescribeDeviceRequest < TencentCloud::Common::AbstractModel
        # @param Tid: 设备TID
        # @type Tid: String

        attr_accessor :Tid

        def initialize(tid=nil)
          @Tid = tid
        end

        def deserialize(params)
          @Tid = params['Tid']
        end
      end

      # DescribeDevice返回参数结构体
      class DescribeDeviceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 设备信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Iotvideo.v20191126.models.DeviceData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeviceData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDevices请求参数结构体
      class DescribeDevicesRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param ReturnModel: 是否返回全量数据
        # 当该值为false时，返回值中的设备物模型、固件版本、在线状态、最后在线时间字段等字段，都将返回数据类型的零值。
        # @type ReturnModel: Boolean
        # @param Limit: 分页数量,0<取值范围<=100
        # @type Limit: Integer
        # @param Offset: 分页偏移，取值＞0
        # @type Offset: Integer
        # @param OtaVersion: 指定固件版本号，为空查询此产品下所有设备
        # @type OtaVersion: String
        # @param DeviceName: 设备名称，支持左前缀模糊匹配
        # @type DeviceName: String

        attr_accessor :ProductId, :ReturnModel, :Limit, :Offset, :OtaVersion, :DeviceName

        def initialize(productid=nil, returnmodel=nil, limit=nil, offset=nil, otaversion=nil, devicename=nil)
          @ProductId = productid
          @ReturnModel = returnmodel
          @Limit = limit
          @Offset = offset
          @OtaVersion = otaversion
          @DeviceName = devicename
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ReturnModel = params['ReturnModel']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OtaVersion = params['OtaVersion']
          @DeviceName = params['DeviceName']
        end
      end

      # DescribeDevices返回参数结构体
      class DescribeDevicesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 设备信息 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param TotalCount: 设备总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TotalCount, :RequestId

        def initialize(data=nil, totalcount=nil, requestid=nil)
          @Data = data
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              devicesdata_tmp = DevicesData.new
              devicesdata_tmp.deserialize(i)
              @Data << devicesdata_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIotDataType请求参数结构体
      class DescribeIotDataTypeRequest < TencentCloud::Common::AbstractModel
        # @param TypeId: 自定义数据类型的标识符，为空则返回全量自定义类型的列表
        # @type TypeId: String

        attr_accessor :TypeId

        def initialize(typeid=nil)
          @TypeId = typeid
        end

        def deserialize(params)
          @TypeId = params['TypeId']
        end
      end

      # DescribeIotDataType返回参数结构体
      class DescribeIotDataTypeResponse < TencentCloud::Common::AbstractModel
        # @param Data: 自定义数据类型，json格式的字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeIotModel请求参数结构体
      class DescribeIotModelRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param Revision: 物模型版本号， -1表示最新编辑的（未发布）
        # @type Revision: Integer

        attr_accessor :ProductId, :Revision

        def initialize(productid=nil, revision=nil)
          @ProductId = productid
          @Revision = revision
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @Revision = params['Revision']
        end
      end

      # DescribeIotModel返回参数结构体
      class DescribeIotModelResponse < TencentCloud::Common::AbstractModel
        # @param Data: 物模型定义，json格式的字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeIotModels请求参数结构体
      class DescribeIotModelsRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String

        attr_accessor :ProductId

        def initialize(productid=nil)
          @ProductId = productid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
        end
      end

      # DescribeIotModels返回参数结构体
      class DescribeIotModelsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 历史版本列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              iotmodeldata_tmp = IotModelData.new
              iotmodeldata_tmp.deserialize(i)
              @Data << iotmodeldata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLogs请求参数结构体
      class DescribeLogsRequest < TencentCloud::Common::AbstractModel
        # @param Tid: 设备TID
        # @type Tid: String
        # @param Limit: 当前分页的最大条数,0<取值范围<=100
        # @type Limit: Integer
        # @param Offset: 分页偏移量,取值范围>0
        # @type Offset: Integer
        # @param LogType: 日志类型 1.在线状态变更 2.ProConst变更 3.ProWritable变更 4.Action控制 5.ProReadonly变更 6.Event事件
        # @type LogType: Integer
        # @param StartTime: 查询的起始时间 UNIX时间戳，单位秒
        # @type StartTime: Integer
        # @param DataObject: 物模型对象索引，用于模糊查询，字符长度<=255，每层节点的字符长度<=16
        # @type DataObject: String
        # @param EndTime: 查询的结束时间 UNIX时间戳，单位秒
        # @type EndTime: Integer

        attr_accessor :Tid, :Limit, :Offset, :LogType, :StartTime, :DataObject, :EndTime

        def initialize(tid=nil, limit=nil, offset=nil, logtype=nil, starttime=nil, dataobject=nil, endtime=nil)
          @Tid = tid
          @Limit = limit
          @Offset = offset
          @LogType = logtype
          @StartTime = starttime
          @DataObject = dataobject
          @EndTime = endtime
        end

        def deserialize(params)
          @Tid = params['Tid']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @LogType = params['LogType']
          @StartTime = params['StartTime']
          @DataObject = params['DataObject']
          @EndTime = params['EndTime']
        end
      end

      # DescribeLogs返回参数结构体
      class DescribeLogsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 设备日志信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param TotalCount: Data数组所包含的信息条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TotalCount, :RequestId

        def initialize(data=nil, totalcount=nil, requestid=nil)
          @Data = data
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              logdata_tmp = LogData.new
              logdata_tmp.deserialize(i)
              @Data << logdata_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMessageQueue请求参数结构体
      class DescribeMessageQueueRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String

        attr_accessor :ProductId

        def initialize(productid=nil)
          @ProductId = productid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
        end
      end

      # DescribeMessageQueue返回参数结构体
      class DescribeMessageQueueResponse < TencentCloud::Common::AbstractModel
        # @param Data: 消息队列配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Iotvideo.v20191126.models.MsgQueueData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = MsgQueueData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeModelDataRet请求参数结构体
      class DescribeModelDataRetRequest < TencentCloud::Common::AbstractModel
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

      # DescribeModelDataRet返回参数结构体
      class DescribeModelDataRetResponse < TencentCloud::Common::AbstractModel
        # @param Data: 设备响应结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeOsList请求参数结构体
      class DescribeOsListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeOsList返回参数结构体
      class DescribeOsListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 系统类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Iotvideo.v20191126.models.SystemType`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = SystemType.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeOtaVersions请求参数结构体
      class DescribeOtaVersionsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页偏移量
        # @type Offset: Integer
        # @param Limit: 每页数量，0<取值范围<=100
        # @type Limit: Integer
        # @param ProductId: 产品ID，为空时查询客户所有产品的版本信息
        # @type ProductId: String
        # @param OtaVersion: 版本号，支持模糊匹配
        # @type OtaVersion: String
        # @param PubStatus: 版本类型 1未发布 2测试发布 3正式发布 4禁用
        # @type PubStatus: Integer

        attr_accessor :Offset, :Limit, :ProductId, :OtaVersion, :PubStatus

        def initialize(offset=nil, limit=nil, productid=nil, otaversion=nil, pubstatus=nil)
          @Offset = offset
          @Limit = limit
          @ProductId = productid
          @OtaVersion = otaversion
          @PubStatus = pubstatus
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ProductId = params['ProductId']
          @OtaVersion = params['OtaVersion']
          @PubStatus = params['PubStatus']
        end
      end

      # DescribeOtaVersions返回参数结构体
      class DescribeOtaVersionsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 版本数量
        # @type TotalCount: Integer
        # @param Data: 版本详细信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :RequestId

        def initialize(totalcount=nil, data=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              versiondata_tmp = VersionData.new
              versiondata_tmp.deserialize(i)
              @Data << versiondata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProduct请求参数结构体
      class DescribeProductRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String

        attr_accessor :ProductId

        def initialize(productid=nil)
          @ProductId = productid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
        end
      end

      # DescribeProduct返回参数结构体
      class DescribeProductResponse < TencentCloud::Common::AbstractModel
        # @param Data: 产品详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Iotvideo.v20191126.models.ProductData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ProductData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProducts请求参数结构体
      class DescribeProductsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页大小，当前页面中显示的最大数量，值范围 1-100
        # @type Limit: Integer
        # @param Offset: 分页偏移，Offset从0开始
        # @type Offset: Integer
        # @param ProductModel: 产器型号(APP产品,为APP包名)
        # @type ProductModel: String
        # @param StartTime: 开始时间 ，UNIX 时间戳，单位秒
        # @type StartTime: Integer
        # @param EndTime: 结束时间 ，UNIX 时间戳，单位秒
        # @type EndTime: Integer

        attr_accessor :Limit, :Offset, :ProductModel, :StartTime, :EndTime

        def initialize(limit=nil, offset=nil, productmodel=nil, starttime=nil, endtime=nil)
          @Limit = limit
          @Offset = offset
          @ProductModel = productmodel
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @ProductModel = params['ProductModel']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeProducts返回参数结构体
      class DescribeProductsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 产品详细信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param TotalCount: 产品总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TotalCount, :RequestId

        def initialize(data=nil, totalcount=nil, requestid=nil)
          @Data = data
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              productdata_tmp = ProductData.new
              productdata_tmp.deserialize(i)
              @Data << productdata_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribePubVersions请求参数结构体
      class DescribePubVersionsRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String

        attr_accessor :ProductId

        def initialize(productid=nil)
          @ProductId = productid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
        end
      end

      # DescribePubVersions返回参数结构体
      class DescribePubVersionsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 历史发布的版本列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              otapubhistory_tmp = OtaPubHistory.new
              otapubhistory_tmp.deserialize(i)
              @Data << otapubhistory_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRechargeRecords请求参数结构体
      class DescribeRechargeRecordsRequest < TencentCloud::Common::AbstractModel
        # @param AccountType: 账户类型 1:设备接入 2:云存。
        # @type AccountType: Integer
        # @param Offset: 从第几条记录开始显示, 默认值为0。
        # @type Offset: Integer
        # @param Limit: 总共查询多少条记录，默认为值50。
        # @type Limit: Integer

        attr_accessor :AccountType, :Offset, :Limit

        def initialize(accounttype=nil, offset=nil, limit=nil)
          @AccountType = accounttype
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @AccountType = params['AccountType']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeRechargeRecords返回参数结构体
      class DescribeRechargeRecordsResponse < TencentCloud::Common::AbstractModel
        # @param AccountType: 账户类型 1:设备接入 2:云存
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountType: Integer
        # @param Records: 充值记录列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Records: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccountType, :Records, :RequestId

        def initialize(accounttype=nil, records=nil, requestid=nil)
          @AccountType = accounttype
          @Records = records
          @RequestId = requestid
        end

        def deserialize(params)
          @AccountType = params['AccountType']
          unless params['Records'].nil?
            @Records = []
            params['Records'].each do |i|
              rechargerecord_tmp = RechargeRecord.new
              rechargerecord_tmp.deserialize(i)
              @Records << rechargerecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRegistrationStatus请求参数结构体
      class DescribeRegistrationStatusRequest < TencentCloud::Common::AbstractModel
        # @param CunionIds: 终端用户的唯一ID列表，0<元素数量<=100
        # @type CunionIds: Array

        attr_accessor :CunionIds

        def initialize(cunionids=nil)
          @CunionIds = cunionids
        end

        def deserialize(params)
          @CunionIds = params['CunionIds']
        end
      end

      # DescribeRegistrationStatus返回参数结构体
      class DescribeRegistrationStatusResponse < TencentCloud::Common::AbstractModel
        # @param Data: 终端用户注册状态列表
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              registeredstatus_tmp = RegisteredStatus.new
              registeredstatus_tmp.deserialize(i)
              @Data << registeredstatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRunLog请求参数结构体
      class DescribeRunLogRequest < TencentCloud::Common::AbstractModel
        # @param Tid: 设备TID
        # @type Tid: String

        attr_accessor :Tid

        def initialize(tid=nil)
          @Tid = tid
        end

        def deserialize(params)
          @Tid = params['Tid']
        end
      end

      # DescribeRunLog返回参数结构体
      class DescribeRunLogResponse < TencentCloud::Common::AbstractModel
        # @param Data: 设备运行日志文本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeStorageService请求参数结构体
      class DescribeStorageServiceRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 云存服务ID
        # @type ServiceId: String
        # @param GetFinishedOrder: 是否返回已结束的订单信息(已过期/已退订/已转移)
        # @type GetFinishedOrder: Boolean

        attr_accessor :ServiceId, :GetFinishedOrder

        def initialize(serviceid=nil, getfinishedorder=nil)
          @ServiceId = serviceid
          @GetFinishedOrder = getfinishedorder
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @GetFinishedOrder = params['GetFinishedOrder']
        end
      end

      # DescribeStorageService返回参数结构体
      class DescribeStorageServiceResponse < TencentCloud::Common::AbstractModel
        # @param ServiceId: 云存服务ID
        # @type ServiceId: String
        # @param StorageRegion: 云存服务所在的区域
        # @type StorageRegion: String
        # @param Tid: 设备TID
        # @type Tid: String
        # @param ChnNum: 视频流通道号。(对于存在多路视频流的设备，如NVR设备，与设备实际视频流通道号对应)
        # @type ChnNum: Integer
        # @param AccessId: 终端用户在IoT Video平台的注册ID
        # @type AccessId: String
        # @param StartTime: 服务开始时间
        # @type StartTime: Integer
        # @param EndTime: 服务失效时间
        # @type EndTime: Integer
        # @param Status: 服务状态
        # 1：正常使用中
        # 2：待续费。设备云存服务已到期，但是历史云存数据未过期。续费后仍可查看这些历史数据。
        # 3：已过期。查询不到设备保存在云端的数据。
        # 4：等待服务生效。
        # @type Status: Integer
        # @param Data: 云存定单列表
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceId, :StorageRegion, :Tid, :ChnNum, :AccessId, :StartTime, :EndTime, :Status, :Data, :RequestId

        def initialize(serviceid=nil, storageregion=nil, tid=nil, chnnum=nil, accessid=nil, starttime=nil, endtime=nil, status=nil, data=nil, requestid=nil)
          @ServiceId = serviceid
          @StorageRegion = storageregion
          @Tid = tid
          @ChnNum = chnnum
          @AccessId = accessid
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @StorageRegion = params['StorageRegion']
          @Tid = params['Tid']
          @ChnNum = params['ChnNum']
          @AccessId = params['AccessId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              storageorder_tmp = StorageOrder.new
              storageorder_tmp.deserialize(i)
              @Data << storageorder_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeStream请求参数结构体
      class DescribeStreamRequest < TencentCloud::Common::AbstractModel
        # @param Tid: 设备TID
        # @type Tid: String
        # @param AccessId: 终端用户ID
        # @type AccessId: String
        # @param Protocol: 直播协议, 可选值：RTSP、RTMP、HLS、HLS-fmp4
        # @type Protocol: String
        # @param Address: 音视频流地址
        # @type Address: String
        # @param AccessToken: 设备访问token，访问用户未绑定的设备时，需提供该参数
        # @type AccessToken: String

        attr_accessor :Tid, :AccessId, :Protocol, :Address, :AccessToken

        def initialize(tid=nil, accessid=nil, protocol=nil, address=nil, accesstoken=nil)
          @Tid = tid
          @AccessId = accessid
          @Protocol = protocol
          @Address = address
          @AccessToken = accesstoken
        end

        def deserialize(params)
          @Tid = params['Tid']
          @AccessId = params['AccessId']
          @Protocol = params['Protocol']
          @Address = params['Address']
          @AccessToken = params['AccessToken']
        end
      end

      # DescribeStream返回参数结构体
      class DescribeStreamResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回参数结构
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Iotvideo.v20191126.models.Data`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = Data.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTraceIds请求参数结构体
      class DescribeTraceIdsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeTraceIds返回参数结构体
      class DescribeTraceIdsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 设备TID列表，列表元素之间以“,”分隔
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeTraceStatus请求参数结构体
      class DescribeTraceStatusRequest < TencentCloud::Common::AbstractModel
        # @param Tids: 设备TID列表
        # @type Tids: Array

        attr_accessor :Tids

        def initialize(tids=nil)
          @Tids = tids
        end

        def deserialize(params)
          @Tids = params['Tids']
        end
      end

      # DescribeTraceStatus返回参数结构体
      class DescribeTraceStatusResponse < TencentCloud::Common::AbstractModel
        # @param Data: 设备追踪状态列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              tracestatus_tmp = TraceStatus.new
              tracestatus_tmp.deserialize(i)
              @Data << tracestatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 用于终端用户临时访问设备的token授权信息
      class DevTokenInfo < TencentCloud::Common::AbstractModel
        # @param AccessId: 客户的终端用户在IotVideo上的唯一标识id
        # @type AccessId: String
        # @param Tid: 设备TID
        # @type Tid: String
        # @param AccessToken: IotVideo平台的accessToken
        # @type AccessToken: String
        # @param ExpireTime: Token的过期时间，单位秒(UTC时间)
        # @type ExpireTime: Integer

        attr_accessor :AccessId, :Tid, :AccessToken, :ExpireTime

        def initialize(accessid=nil, tid=nil, accesstoken=nil, expiretime=nil)
          @AccessId = accessid
          @Tid = tid
          @AccessToken = accesstoken
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @AccessId = params['AccessId']
          @Tid = params['Tid']
          @AccessToken = params['AccessToken']
          @ExpireTime = params['ExpireTime']
        end
      end

      # 设备证书及密钥
      class DeviceCertificate < TencentCloud::Common::AbstractModel
        # @param Tid: 设备TID
        # @type Tid: String
        # @param Certificate: 设备初始证书信息，base64编码
        # @type Certificate: String
        # @param WhiteBoxSoUrl: 设备私钥下载地址
        # @type WhiteBoxSoUrl: String

        attr_accessor :Tid, :Certificate, :WhiteBoxSoUrl

        def initialize(tid=nil, certificate=nil, whiteboxsourl=nil)
          @Tid = tid
          @Certificate = certificate
          @WhiteBoxSoUrl = whiteboxsourl
        end

        def deserialize(params)
          @Tid = params['Tid']
          @Certificate = params['Certificate']
          @WhiteBoxSoUrl = params['WhiteBoxSoUrl']
        end
      end

      # 设备信息
      class DeviceData < TencentCloud::Common::AbstractModel
        # @param Tid: 设备TID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tid: String
        # @param ActiveTime: 激活时间 0代表未激活
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActiveTime: Integer
        # @param Disabled: 设备是否被禁用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Disabled: Boolean
        # @param OtaVersion: 固件版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OtaVersion: String
        # @param Online: 设备在线状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Online: Integer
        # @param LastOnlineTime: 设备最后上线时间（mqtt连接成功时间），UNIX时间戳，单位秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastOnlineTime: Integer
        # @param IotModel: 物模型json数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IotModel: String
        # @param DeviceName: 设备名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceName: String
        # @param ProductId: 产品ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductId: String
        # @param Certificate: 设备初始证书信息，base64编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Certificate: String
        # @param WhiteBoxSoUrl: 设备私钥下载地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WhiteBoxSoUrl: String
        # @param StreamStatus: 设备推流状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StreamStatus: Boolean

        attr_accessor :Tid, :ActiveTime, :Disabled, :OtaVersion, :Online, :LastOnlineTime, :IotModel, :DeviceName, :ProductId, :Certificate, :WhiteBoxSoUrl, :StreamStatus

        def initialize(tid=nil, activetime=nil, disabled=nil, otaversion=nil, online=nil, lastonlinetime=nil, iotmodel=nil, devicename=nil, productid=nil, certificate=nil, whiteboxsourl=nil, streamstatus=nil)
          @Tid = tid
          @ActiveTime = activetime
          @Disabled = disabled
          @OtaVersion = otaversion
          @Online = online
          @LastOnlineTime = lastonlinetime
          @IotModel = iotmodel
          @DeviceName = devicename
          @ProductId = productid
          @Certificate = certificate
          @WhiteBoxSoUrl = whiteboxsourl
          @StreamStatus = streamstatus
        end

        def deserialize(params)
          @Tid = params['Tid']
          @ActiveTime = params['ActiveTime']
          @Disabled = params['Disabled']
          @OtaVersion = params['OtaVersion']
          @Online = params['Online']
          @LastOnlineTime = params['LastOnlineTime']
          @IotModel = params['IotModel']
          @DeviceName = params['DeviceName']
          @ProductId = params['ProductId']
          @Certificate = params['Certificate']
          @WhiteBoxSoUrl = params['WhiteBoxSoUrl']
          @StreamStatus = params['StreamStatus']
        end
      end

      # 设备物模型数据
      class DeviceModelData < TencentCloud::Common::AbstractModel
        # @param Tid: 设备TID
        # @type Tid: String
        # @param Branch: 物模型分支路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Branch: String
        # @param IotModel: 物模型数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IotModel: String

        attr_accessor :Tid, :Branch, :IotModel

        def initialize(tid=nil, branch=nil, iotmodel=nil)
          @Tid = tid
          @Branch = branch
          @IotModel = iotmodel
        end

        def deserialize(params)
          @Tid = params['Tid']
          @Branch = params['Branch']
          @IotModel = params['IotModel']
        end
      end

      # 设备列表元素所包含的设备基本信息
      class DevicesData < TencentCloud::Common::AbstractModel
        # @param Tid: 设备TID
        # @type Tid: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ActiveTime: 激活时间 0代表未激活
        # @type ActiveTime: Integer
        # @param Disabled: 设备是否被禁用
        # @type Disabled: Boolean
        # @param StreamStatus: 设备推流状态
        # @type StreamStatus: Boolean
        # @param OtaVersion: 固件版本
        # @type OtaVersion: String
        # @param Online: 设备在线状态
        # @type Online: Integer
        # @param LastOnlineTime: 设备最后上线时间（mqtt连接成功时间），UNIX时间戳，单位秒
        # @type LastOnlineTime: Integer
        # @param IotModel: 物模型json数据
        # @type IotModel: String
        # @param LastUpdateTime: 设备固件最新更新时间，UNIX时间戳，单位秒
        # @type LastUpdateTime: Integer

        attr_accessor :Tid, :DeviceName, :ActiveTime, :Disabled, :StreamStatus, :OtaVersion, :Online, :LastOnlineTime, :IotModel, :LastUpdateTime

        def initialize(tid=nil, devicename=nil, activetime=nil, disabled=nil, streamstatus=nil, otaversion=nil, online=nil, lastonlinetime=nil, iotmodel=nil, lastupdatetime=nil)
          @Tid = tid
          @DeviceName = devicename
          @ActiveTime = activetime
          @Disabled = disabled
          @StreamStatus = streamstatus
          @OtaVersion = otaversion
          @Online = online
          @LastOnlineTime = lastonlinetime
          @IotModel = iotmodel
          @LastUpdateTime = lastupdatetime
        end

        def deserialize(params)
          @Tid = params['Tid']
          @DeviceName = params['DeviceName']
          @ActiveTime = params['ActiveTime']
          @Disabled = params['Disabled']
          @StreamStatus = params['StreamStatus']
          @OtaVersion = params['OtaVersion']
          @Online = params['Online']
          @LastOnlineTime = params['LastOnlineTime']
          @IotModel = params['IotModel']
          @LastUpdateTime = params['LastUpdateTime']
        end
      end

      # DisableDevice请求参数结构体
      class DisableDeviceRequest < TencentCloud::Common::AbstractModel
        # @param Tids: 设备TID ≤100
        # @type Tids: Array

        attr_accessor :Tids

        def initialize(tids=nil)
          @Tids = tids
        end

        def deserialize(params)
          @Tids = params['Tids']
        end
      end

      # DisableDevice返回参数结构体
      class DisableDeviceResponse < TencentCloud::Common::AbstractModel
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

      # DisableDeviceStream请求参数结构体
      class DisableDeviceStreamRequest < TencentCloud::Common::AbstractModel
        # @param Tids: 设备TID列表
        # @type Tids: Array

        attr_accessor :Tids

        def initialize(tids=nil)
          @Tids = tids
        end

        def deserialize(params)
          @Tids = params['Tids']
        end
      end

      # DisableDeviceStream返回参数结构体
      class DisableDeviceStreamResponse < TencentCloud::Common::AbstractModel
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

      # DisableOtaVersion请求参数结构体
      class DisableOtaVersionRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param OtaVersion: 固件版本号，格式为x.y.z， x，y 范围0-63，z范围1~524288
        # @type OtaVersion: String
        # @param Operator: 操作人
        # @type Operator: String

        attr_accessor :ProductId, :OtaVersion, :Operator

        def initialize(productid=nil, otaversion=nil, operator=nil)
          @ProductId = productid
          @OtaVersion = otaversion
          @Operator = operator
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @OtaVersion = params['OtaVersion']
          @Operator = params['Operator']
        end
      end

      # DisableOtaVersion返回参数结构体
      class DisableOtaVersionResponse < TencentCloud::Common::AbstractModel
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

      # 物模型历史版本
      class IotModelData < TencentCloud::Common::AbstractModel
        # @param Revision: 版本号
        # @type Revision: Integer
        # @param ReleaseTime: 发布时间
        # @type ReleaseTime: Integer

        attr_accessor :Revision, :ReleaseTime

        def initialize(revision=nil, releasetime=nil)
          @Revision = revision
          @ReleaseTime = releasetime
        end

        def deserialize(params)
          @Revision = params['Revision']
          @ReleaseTime = params['ReleaseTime']
        end
      end

      # 设备日志信息
      class LogData < TencentCloud::Common::AbstractModel
        # @param Occurtime: 发生时间 UNIX时间戳，单位秒
        # @type Occurtime: Integer
        # @param LogType: 日志类型 1在线状态变更 2FP变更 3SP变更 4CO控制 5ST变更 6EV事件
        # @type LogType: Integer
        # @param DataObject: 物模型对象索引
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataObject: String
        # @param OldValue: 物模型旧值  json串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OldValue: String
        # @param NewValue: 物模型新值  json串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewValue: String

        attr_accessor :Occurtime, :LogType, :DataObject, :OldValue, :NewValue

        def initialize(occurtime=nil, logtype=nil, dataobject=nil, oldvalue=nil, newvalue=nil)
          @Occurtime = occurtime
          @LogType = logtype
          @DataObject = dataobject
          @OldValue = oldvalue
          @NewValue = newvalue
        end

        def deserialize(params)
          @Occurtime = params['Occurtime']
          @LogType = params['LogType']
          @DataObject = params['DataObject']
          @OldValue = params['OldValue']
          @NewValue = params['NewValue']
        end
      end

      # ModifyDeviceAction请求参数结构体
      class ModifyDeviceActionRequest < TencentCloud::Common::AbstractModel
        # @param Tid: 设备TID
        # @type Tid: String
        # @param Wakeup: 如果设备处于休眠状态，是否唤醒设备
        # @type Wakeup: Boolean
        # @param Branch: 物模型的分支路径
        # @type Branch: String
        # @param Value: 写入的物模型数据，如果是json需要转义成字符串
        # @type Value: String
        # @param IsNum: Value字段的类型是否为数值（float、int）
        # @type IsNum: Boolean

        attr_accessor :Tid, :Wakeup, :Branch, :Value, :IsNum

        def initialize(tid=nil, wakeup=nil, branch=nil, value=nil, isnum=nil)
          @Tid = tid
          @Wakeup = wakeup
          @Branch = branch
          @Value = value
          @IsNum = isnum
        end

        def deserialize(params)
          @Tid = params['Tid']
          @Wakeup = params['Wakeup']
          @Branch = params['Branch']
          @Value = params['Value']
          @IsNum = params['IsNum']
        end
      end

      # ModifyDeviceAction返回参数结构体
      class ModifyDeviceActionResponse < TencentCloud::Common::AbstractModel
        # @param Data: 设备端的响应结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param TaskId: 任务ID
        # 若设备端未能及时响应时，会返回此字段，用户可以通过DescribeModelDataRet获取设备的最终响应结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TaskId, :RequestId

        def initialize(data=nil, taskid=nil, requestid=nil)
          @Data = data
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDeviceProperty请求参数结构体
      class ModifyDevicePropertyRequest < TencentCloud::Common::AbstractModel
        # @param Tid: 设备TID
        # @type Tid: String
        # @param Wakeup: 如果设备处于休眠状态，是否唤醒设备
        # @type Wakeup: Boolean
        # @param Branch: 物模型的分支路径
        # @type Branch: String
        # @param Value: 写入的物模型数据，如果是json需要转义成字符串
        # @type Value: String
        # @param IsNum: Value字段是否为数值（float、int）
        # @type IsNum: Boolean

        attr_accessor :Tid, :Wakeup, :Branch, :Value, :IsNum

        def initialize(tid=nil, wakeup=nil, branch=nil, value=nil, isnum=nil)
          @Tid = tid
          @Wakeup = wakeup
          @Branch = branch
          @Value = value
          @IsNum = isnum
        end

        def deserialize(params)
          @Tid = params['Tid']
          @Wakeup = params['Wakeup']
          @Branch = params['Branch']
          @Value = params['Value']
          @IsNum = params['IsNum']
        end
      end

      # ModifyDeviceProperty返回参数结构体
      class ModifyDevicePropertyResponse < TencentCloud::Common::AbstractModel
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
        # @param Tid: 设备ID
        # @type Tid: String
        # @param AccessId: 用户ID
        # @type AccessId: String
        # @param Nick: 设备昵称，最多不超过64个字符
        # @type Nick: String

        attr_accessor :Tid, :AccessId, :Nick

        def initialize(tid=nil, accessid=nil, nick=nil)
          @Tid = tid
          @AccessId = accessid
          @Nick = nick
        end

        def deserialize(params)
          @Tid = params['Tid']
          @AccessId = params['AccessId']
          @Nick = params['Nick']
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

      # ModifyProduct请求参数结构体
      class ModifyProductRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param ProductDescription: 产品描述
        # @type ProductDescription: String
        # @param ChipManufactureId: 主芯片产商ID
        # @type ChipManufactureId: String
        # @param ChipId: 主芯片ID
        # @type ChipId: String

        attr_accessor :ProductId, :ProductName, :ProductDescription, :ChipManufactureId, :ChipId

        def initialize(productid=nil, productname=nil, productdescription=nil, chipmanufactureid=nil, chipid=nil)
          @ProductId = productid
          @ProductName = productname
          @ProductDescription = productdescription
          @ChipManufactureId = chipmanufactureid
          @ChipId = chipid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ProductName = params['ProductName']
          @ProductDescription = params['ProductDescription']
          @ChipManufactureId = params['ChipManufactureId']
          @ChipId = params['ChipId']
        end
      end

      # ModifyProduct返回参数结构体
      class ModifyProductResponse < TencentCloud::Common::AbstractModel
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

      # ModifyVerContent请求参数结构体
      class ModifyVerContentRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品id
        # @type ProductId: String
        # @param OtaVersion: 需要修改的版本号
        # @type OtaVersion: String
        # @param Operator: 操作人,字符长度<=64
        # @type Operator: String
        # @param Remark: 备注信息
        # @type Remark: String
        # @param Contents: 版本发布的描述信息，需要国际化，可以为空
        # @type Contents: :class:`Tencentcloud::Iotvideo.v20191126.models.Contents`

        attr_accessor :ProductId, :OtaVersion, :Operator, :Remark, :Contents

        def initialize(productid=nil, otaversion=nil, operator=nil, remark=nil, contents=nil)
          @ProductId = productid
          @OtaVersion = otaversion
          @Operator = operator
          @Remark = remark
          @Contents = contents
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @OtaVersion = params['OtaVersion']
          @Operator = params['Operator']
          @Remark = params['Remark']
          unless params['Contents'].nil?
            @Contents = Contents.new
            @Contents.deserialize(params['Contents'])
          end
        end
      end

      # ModifyVerContent返回参数结构体
      class ModifyVerContentResponse < TencentCloud::Common::AbstractModel
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

      # 产品转发消息队列配置
      class MsgQueueData < TencentCloud::Common::AbstractModel
        # @param MsgQueueType: 消息队列类型 1：CMQ 2：kafka
        # @type MsgQueueType: Integer
        # @param MsgType: 消息类型列表，整型值（0-31）之间以“,”分隔
        # @type MsgType: String
        # @param Topic: 主题名称
        # @type Topic: String
        # @param Instance: 实例名称
        # @type Instance: String
        # @param MsgRegion: 消息地域
        # @type MsgRegion: String

        attr_accessor :MsgQueueType, :MsgType, :Topic, :Instance, :MsgRegion

        def initialize(msgqueuetype=nil, msgtype=nil, topic=nil, instance=nil, msgregion=nil)
          @MsgQueueType = msgqueuetype
          @MsgType = msgtype
          @Topic = topic
          @Instance = instance
          @MsgRegion = msgregion
        end

        def deserialize(params)
          @MsgQueueType = params['MsgQueueType']
          @MsgType = params['MsgType']
          @Topic = params['Topic']
          @Instance = params['Instance']
          @MsgRegion = params['MsgRegion']
        end
      end

      # 操作系统信息
      class OsData < TencentCloud::Common::AbstractModel
        # @param ChipId: 芯片型号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChipId: String
        # @param ChipManufacture: 芯片厂商
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChipManufacture: String

        attr_accessor :ChipId, :ChipManufacture

        def initialize(chipid=nil, chipmanufacture=nil)
          @ChipId = chipid
          @ChipManufacture = chipmanufacture
        end

        def deserialize(params)
          @ChipId = params['ChipId']
          @ChipManufacture = params['ChipManufacture']
        end
      end

      # 产品发布过的全部版本
      class OtaPubHistory < TencentCloud::Common::AbstractModel
        # @param OtaVersion: 版本名称
        # @type OtaVersion: String
        # @param PublishTime: 发布时间，unix时间戳，单位：秒
        # @type PublishTime: Integer

        attr_accessor :OtaVersion, :PublishTime

        def initialize(otaversion=nil, publishtime=nil)
          @OtaVersion = otaversion
          @PublishTime = publishtime
        end

        def deserialize(params)
          @OtaVersion = params['OtaVersion']
          @PublishTime = params['PublishTime']
        end
      end

      # 产品信息摘要
      class ProductBase < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param ProductModel: 产器型号(APP产品,为APP包名)
        # @type ProductModel: String
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param ProductDescription: 产品描述信息
        # @type ProductDescription: String
        # @param CreateTime: 创建时间，UNIX 时间戳，单位秒
        # @type CreateTime: Integer
        # @param IotModelRevision: 物模型发布版本号,0代表物模型尚未发布
        # @type IotModelRevision: Integer
        # @param SecretKey: 产品密钥
        # @type SecretKey: String
        # @param FuncCode: 设备功能码
        # ypsxth : 音频双向通话;
        # spdxth : 视频单向通话(监控);
        # NVR0824 : NVR设备,大于8路，小于等于24路;
        # WifiKeepalive : Wifi保活(低功耗产品);
        # Alexa : Alexa接入;
        # Google : Google接入;
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FuncCode: Array
        # @param ProductCate: 产品类别，0 : 普通视频设备；1 : NVR设备
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductCate: Integer
        # @param ProductRegion: 产品地域
        # China-Mainland（中国大陆）
        # China-Hong Kong, Macao and Taiwan（港澳台地区）
        # America（美国）
        # Europe（欧洲）
        # India（印度）
        # Other-Overseas（其他境外地区）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductRegion: String

        attr_accessor :ProductId, :ProductModel, :ProductName, :ProductDescription, :CreateTime, :IotModelRevision, :SecretKey, :FuncCode, :ProductCate, :ProductRegion

        def initialize(productid=nil, productmodel=nil, productname=nil, productdescription=nil, createtime=nil, iotmodelrevision=nil, secretkey=nil, funccode=nil, productcate=nil, productregion=nil)
          @ProductId = productid
          @ProductModel = productmodel
          @ProductName = productname
          @ProductDescription = productdescription
          @CreateTime = createtime
          @IotModelRevision = iotmodelrevision
          @SecretKey = secretkey
          @FuncCode = funccode
          @ProductCate = productcate
          @ProductRegion = productregion
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ProductModel = params['ProductModel']
          @ProductName = params['ProductName']
          @ProductDescription = params['ProductDescription']
          @CreateTime = params['CreateTime']
          @IotModelRevision = params['IotModelRevision']
          @SecretKey = params['SecretKey']
          @FuncCode = params['FuncCode']
          @ProductCate = params['ProductCate']
          @ProductRegion = params['ProductRegion']
        end
      end

      # 产品信息
      class ProductData < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductId: String
        # @param ProductName: 产品名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductName: String
        # @param ProductDescription: 产品描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductDescription: String
        # @param CreateTime: 创建时间，UNIX 时间戳，单位秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param IotModelRevision: 物模型发布版本号,0代表物模型尚未发布
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IotModelRevision: Integer
        # @param SecretKey: 产品密钥
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecretKey: String
        # @param Features: 设备功能码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Features: Array
        # @param ProductModel: 产器型号(APP产品,为APP包名)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductModel: String
        # @param ChipManufactureId: 主芯片厂商id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChipManufactureId: String
        # @param ChipId: 主芯片型号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChipId: String
        # @param ProductCate: 产品类别，0：普通视频设备；1：NVR设备
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductCate: Integer
        # @param ProductRegion: 产品地区
        # China-Mainland（中国大陆）
        # China-Hong Kong, Macao and Taiwan（港澳台地区）
        # America（美国）
        # Europe（欧洲）
        # India（印度）
        # Other-Overseas（其他境外地区）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductRegion: String
        # @param AccessMode: 接入模型，bit0是0：公版小程序未接入，bit0是1：公版小程序已接入
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessMode: Integer
        # @param Os: linux,android,liteos
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Os: String

        attr_accessor :ProductId, :ProductName, :ProductDescription, :CreateTime, :IotModelRevision, :SecretKey, :Features, :ProductModel, :ChipManufactureId, :ChipId, :ProductCate, :ProductRegion, :AccessMode, :Os

        def initialize(productid=nil, productname=nil, productdescription=nil, createtime=nil, iotmodelrevision=nil, secretkey=nil, features=nil, productmodel=nil, chipmanufactureid=nil, chipid=nil, productcate=nil, productregion=nil, accessmode=nil, os=nil)
          @ProductId = productid
          @ProductName = productname
          @ProductDescription = productdescription
          @CreateTime = createtime
          @IotModelRevision = iotmodelrevision
          @SecretKey = secretkey
          @Features = features
          @ProductModel = productmodel
          @ChipManufactureId = chipmanufactureid
          @ChipId = chipid
          @ProductCate = productcate
          @ProductRegion = productregion
          @AccessMode = accessmode
          @Os = os
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ProductName = params['ProductName']
          @ProductDescription = params['ProductDescription']
          @CreateTime = params['CreateTime']
          @IotModelRevision = params['IotModelRevision']
          @SecretKey = params['SecretKey']
          @Features = params['Features']
          @ProductModel = params['ProductModel']
          @ChipManufactureId = params['ChipManufactureId']
          @ChipId = params['ChipId']
          @ProductCate = params['ProductCate']
          @ProductRegion = params['ProductRegion']
          @AccessMode = params['AccessMode']
          @Os = params['Os']
        end
      end

      # 充值记录列表
      class RechargeRecord < TencentCloud::Common::AbstractModel
        # @param WaterId: 流水记录号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WaterId: Integer
        # @param BalanceBeforeRecharge: 充值前的余额，单位0.01元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BalanceBeforeRecharge: Integer
        # @param Money: 充值金额，单位0.01元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Money: Integer
        # @param OperateTime: 充值时间, UTC值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperateTime: Integer

        attr_accessor :WaterId, :BalanceBeforeRecharge, :Money, :OperateTime

        def initialize(waterid=nil, balancebeforerecharge=nil, money=nil, operatetime=nil)
          @WaterId = waterid
          @BalanceBeforeRecharge = balancebeforerecharge
          @Money = money
          @OperateTime = operatetime
        end

        def deserialize(params)
          @WaterId = params['WaterId']
          @BalanceBeforeRecharge = params['BalanceBeforeRecharge']
          @Money = params['Money']
          @OperateTime = params['OperateTime']
        end
      end

      # RefundStorageService请求参数结构体
      class RefundStorageServiceRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 云存服务ID
        # @type ServiceId: String
        # @param OrderId: 云存子订单ID。如果指定子订单ID,则仅退订该子订单，如果未指定子定单ID，则退订所有子订单
        # @type OrderId: String

        attr_accessor :ServiceId, :OrderId

        def initialize(serviceid=nil, orderid=nil)
          @ServiceId = serviceid
          @OrderId = orderid
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @OrderId = params['OrderId']
        end
      end

      # RefundStorageService返回参数结构体
      class RefundStorageServiceResponse < TencentCloud::Common::AbstractModel
        # @param ServiceId: 云存服务ID
        # @type ServiceId: String
        # @param StorageRegion: 云存服务所在的区域
        # @type StorageRegion: String
        # @param Tid: 设备TID
        # @type Tid: String
        # @param ChnNum: 视频流通道号。(对于存在多路视频流的设备，如NVR设备，与设备实际视频流通道号对应)
        # @type ChnNum: Integer
        # @param AccessId: 终端用户在IoT Video平台的注册ID
        # @type AccessId: String
        # @param StartTime: 服务开始时间
        # @type StartTime: Integer
        # @param EndTime: 服务失效时间
        # @type EndTime: Integer
        # @param Status: 服务状态
        # 1：正常使用中
        # 2：待续费。设备云存服务已到期，但是历史云存数据未过期。续费后仍可查看这些历史数据。
        # 3：已过期。查询不到设备保存在云端的数据。
        # 4：等待服务生效。
        # @type Status: Integer
        # @param Data: 有效云存定单列表
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceId, :StorageRegion, :Tid, :ChnNum, :AccessId, :StartTime, :EndTime, :Status, :Data, :RequestId

        def initialize(serviceid=nil, storageregion=nil, tid=nil, chnnum=nil, accessid=nil, starttime=nil, endtime=nil, status=nil, data=nil, requestid=nil)
          @ServiceId = serviceid
          @StorageRegion = storageregion
          @Tid = tid
          @ChnNum = chnnum
          @AccessId = accessid
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @StorageRegion = params['StorageRegion']
          @Tid = params['Tid']
          @ChnNum = params['ChnNum']
          @AccessId = params['AccessId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              storageorder_tmp = StorageOrder.new
              storageorder_tmp.deserialize(i)
              @Data << storageorder_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 终端用户注册状态
      class RegisteredStatus < TencentCloud::Common::AbstractModel
        # @param CunionId: 终端用户的唯一ID
        # @type CunionId: String
        # @param IsRegisted: 注册状态
        # @type IsRegisted: Boolean

        attr_accessor :CunionId, :IsRegisted

        def initialize(cunionid=nil, isregisted=nil)
          @CunionId = cunionid
          @IsRegisted = isregisted
        end

        def deserialize(params)
          @CunionId = params['CunionId']
          @IsRegisted = params['IsRegisted']
        end
      end

      # 刷新证书信息
      class RenewCertificate < TencentCloud::Common::AbstractModel
        # @param TempCertificate: 刷新证书信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TempCertificate: :class:`Tencentcloud::Iotvideo.v20191126.models.CertificateInfo`

        attr_accessor :TempCertificate

        def initialize(tempcertificate=nil)
          @TempCertificate = tempcertificate
        end

        def deserialize(params)
          unless params['TempCertificate'].nil?
            @TempCertificate = CertificateInfo.new
            @TempCertificate.deserialize(params['TempCertificate'])
          end
        end
      end

      # RenewUploadTest请求参数结构体
      class RenewUploadTestRequest < TencentCloud::Common::AbstractModel
        # @param PkgId: package ID
        # @type PkgId: String
        # @param Tid: 设备TID
        # @type Tid: String
        # @param SessionKey: SessionKeys
        # @type SessionKey: String

        attr_accessor :PkgId, :Tid, :SessionKey

        def initialize(pkgid=nil, tid=nil, sessionkey=nil)
          @PkgId = pkgid
          @Tid = tid
          @SessionKey = sessionkey
        end

        def deserialize(params)
          @PkgId = params['PkgId']
          @Tid = params['Tid']
          @SessionKey = params['SessionKey']
        end
      end

      # RenewUploadTest返回参数结构体
      class RenewUploadTestResponse < TencentCloud::Common::AbstractModel
        # @param Data: 刷新证书返回的信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Iotvideo.v20191126.models.RenewCertificate`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RenewCertificate.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # RunDevice请求参数结构体
      class RunDeviceRequest < TencentCloud::Common::AbstractModel
        # @param Tids: TID列表 ≤100
        # @type Tids: Array

        attr_accessor :Tids

        def initialize(tids=nil)
          @Tids = tids
        end

        def deserialize(params)
          @Tids = params['Tids']
        end
      end

      # RunDevice返回参数结构体
      class RunDeviceResponse < TencentCloud::Common::AbstractModel
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

      # RunDeviceStream请求参数结构体
      class RunDeviceStreamRequest < TencentCloud::Common::AbstractModel
        # @param Tids: 设备TID 列表
        # @type Tids: Array

        attr_accessor :Tids

        def initialize(tids=nil)
          @Tids = tids
        end

        def deserialize(params)
          @Tids = params['Tids']
        end
      end

      # RunDeviceStream返回参数结构体
      class RunDeviceStreamResponse < TencentCloud::Common::AbstractModel
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

      # RunIotModel请求参数结构体
      class RunIotModelRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param IotModel: 物模型定义，json格式的字符串
        # @type IotModel: String

        attr_accessor :ProductId, :IotModel

        def initialize(productid=nil, iotmodel=nil)
          @ProductId = productid
          @IotModel = iotmodel
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @IotModel = params['IotModel']
        end
      end

      # RunIotModel返回参数结构体
      class RunIotModelResponse < TencentCloud::Common::AbstractModel
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

      # RunOtaVersion请求参数结构体
      class RunOtaVersionRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param OtaVersion: 固件版本号，格式为x.y.z， x，y 范围0-63，z范围1~524288
        # @type OtaVersion: String
        # @param GrayValue: 灰度值,取值范围0-100，为0时相当于暂停发布
        # @type GrayValue: Integer
        # @param OldVersions: 指定的旧版本
        # @type OldVersions: Array
        # @param Operator: 操作人
        # @type Operator: String
        # @param Remark: 备注信息
        # @type Remark: String
        # @param Contents: 版本发布的描述信息，需要国际化，可以为空
        # @type Contents: :class:`Tencentcloud::Iotvideo.v20191126.models.Contents`

        attr_accessor :ProductId, :OtaVersion, :GrayValue, :OldVersions, :Operator, :Remark, :Contents

        def initialize(productid=nil, otaversion=nil, grayvalue=nil, oldversions=nil, operator=nil, remark=nil, contents=nil)
          @ProductId = productid
          @OtaVersion = otaversion
          @GrayValue = grayvalue
          @OldVersions = oldversions
          @Operator = operator
          @Remark = remark
          @Contents = contents
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @OtaVersion = params['OtaVersion']
          @GrayValue = params['GrayValue']
          @OldVersions = params['OldVersions']
          @Operator = params['Operator']
          @Remark = params['Remark']
          unless params['Contents'].nil?
            @Contents = Contents.new
            @Contents.deserialize(params['Contents'])
          end
        end
      end

      # RunOtaVersion返回参数结构体
      class RunOtaVersionResponse < TencentCloud::Common::AbstractModel
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

      # RunTestOtaVersion请求参数结构体
      class RunTestOtaVersionRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param OtaVersion: 固件版本号，格式为x.y.z， x，y 范围0-63，z范围1~524288
        # @type OtaVersion: String
        # @param Tids: 指定可升级的设备TID
        # @type Tids: Array
        # @param Operator: 操作人
        # @type Operator: String
        # @param Remark: 备注信息
        # @type Remark: String

        attr_accessor :ProductId, :OtaVersion, :Tids, :Operator, :Remark

        def initialize(productid=nil, otaversion=nil, tids=nil, operator=nil, remark=nil)
          @ProductId = productid
          @OtaVersion = otaversion
          @Tids = tids
          @Operator = operator
          @Remark = remark
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @OtaVersion = params['OtaVersion']
          @Tids = params['Tids']
          @Operator = params['Operator']
          @Remark = params['Remark']
        end
      end

      # RunTestOtaVersion返回参数结构体
      class RunTestOtaVersionResponse < TencentCloud::Common::AbstractModel
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

      # SendOnlineMsg请求参数结构体
      class SendOnlineMsgRequest < TencentCloud::Common::AbstractModel
        # @param Tid: 设备TID
        # @type Tid: String
        # @param Wakeup: 如果设备处于休眠状态，是否唤醒设备
        # @type Wakeup: Boolean
        # @param WaitResp: 等待回应类型
        # 0：不等待设备回应直接响应请求;
        # 1：要求设备确认消息已接收,或等待超时后返回;
        # 2：要求设备进行响应处理,收到设备的响应数据后,将设备响应数据回应给请求方;
        # @type WaitResp: Integer
        # @param MsgTopic: 消息主题
        # @type MsgTopic: String
        # @param MsgContent: 消息内容，最大长度不超过8k字节
        # @type MsgContent: String

        attr_accessor :Tid, :Wakeup, :WaitResp, :MsgTopic, :MsgContent

        def initialize(tid=nil, wakeup=nil, waitresp=nil, msgtopic=nil, msgcontent=nil)
          @Tid = tid
          @Wakeup = wakeup
          @WaitResp = waitresp
          @MsgTopic = msgtopic
          @MsgContent = msgcontent
        end

        def deserialize(params)
          @Tid = params['Tid']
          @Wakeup = params['Wakeup']
          @WaitResp = params['WaitResp']
          @MsgTopic = params['MsgTopic']
          @MsgContent = params['MsgContent']
        end
      end

      # SendOnlineMsg返回参数结构体
      class SendOnlineMsgResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 若返回此项则表明需要用户用此taskID进行查询请求是否成功(只有waitresp不等于0的情况下才可能会返回该taskID项)
        # @type TaskId: String
        # @param Data: 设备响应信息
        # @type Data: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Data, :RequestId

        def initialize(taskid=nil, data=nil, requestid=nil)
          @TaskId = taskid
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # SetMessageQueue请求参数结构体
      class SetMessageQueueRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param MsgQueueType: 消息队列类型 1-CMQ; 2-Ckafka
        # @type MsgQueueType: Integer
        # @param MsgType: 消息类型,整型值（0-31）之间以“,”分隔
        # 0.设备在线状态变更
        # 1.常亮属性(ProConst)变更
        # 2.可写属性(ProWritable)变更
        # 3.只读属性(ProReadonly)变更
        # 4.设备控制(Action)
        # 5.设备事件(Event)
        # 6.系统事件(System)
        # @type MsgType: String
        # @param Topic: 消息队列主题，不超过32字符
        # @type Topic: String
        # @param Instance: kafka消息队列的实例名，不超过64字符
        # @type Instance: String
        # @param MsgRegion: 消息地域，不超过32字符
        # @type MsgRegion: String

        attr_accessor :ProductId, :MsgQueueType, :MsgType, :Topic, :Instance, :MsgRegion

        def initialize(productid=nil, msgqueuetype=nil, msgtype=nil, topic=nil, instance=nil, msgregion=nil)
          @ProductId = productid
          @MsgQueueType = msgqueuetype
          @MsgType = msgtype
          @Topic = topic
          @Instance = instance
          @MsgRegion = msgregion
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @MsgQueueType = params['MsgQueueType']
          @MsgType = params['MsgType']
          @Topic = params['Topic']
          @Instance = params['Instance']
          @MsgRegion = params['MsgRegion']
        end
      end

      # SetMessageQueue返回参数结构体
      class SetMessageQueueResponse < TencentCloud::Common::AbstractModel
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

      # 云存订单信息
      class StorageOrder < TencentCloud::Common::AbstractModel
        # @param OrderId: 定单唯一性ID
        # @type OrderId: String
        # @param PkgId: 云存套餐ID
        # @type PkgId: String
        # @param Status: 定单服务状态
        # 1;订单正在使用。
        # 2:订单未开始。
        # 3:订单已经使用过，现在暂时未开始使用(该订单从其他服务转移而来)。
        # 4:订单已过期。
        # 5:订单已被退订。
        # 6:定单已被转移到其他云存服务。
        # @type Status: Integer
        # @param StartTime: 定单服务生效时间
        # @type StartTime: Integer
        # @param EndTime: 定单服务失效时间
        # @type EndTime: Integer

        attr_accessor :OrderId, :PkgId, :Status, :StartTime, :EndTime

        def initialize(orderid=nil, pkgid=nil, status=nil, starttime=nil, endtime=nil)
          @OrderId = orderid
          @PkgId = pkgid
          @Status = status
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @PkgId = params['PkgId']
          @Status = params['Status']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 系统类型
      class SystemType < TencentCloud::Common::AbstractModel
        # @param Android: 安卓系统
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Android: Array
        # @param Linux: linux系统
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Linux: Array
        # @param LiteOs: LiteOs系统
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LiteOs: Array

        attr_accessor :Android, :Linux, :LiteOs

        def initialize(android=nil, linux=nil, liteos=nil)
          @Android = android
          @Linux = linux
          @LiteOs = liteos
        end

        def deserialize(params)
          unless params['Android'].nil?
            @Android = []
            params['Android'].each do |i|
              osdata_tmp = OsData.new
              osdata_tmp.deserialize(i)
              @Android << osdata_tmp
            end
          end
          unless params['Linux'].nil?
            @Linux = []
            params['Linux'].each do |i|
              osdata_tmp = OsData.new
              osdata_tmp.deserialize(i)
              @Linux << osdata_tmp
            end
          end
          unless params['LiteOs'].nil?
            @LiteOs = []
            params['LiteOs'].each do |i|
              osdata_tmp = OsData.new
              osdata_tmp.deserialize(i)
              @LiteOs << osdata_tmp
            end
          end
        end
      end

      # 布尔值，标识指定设备是否在白名单中
      class TraceStatus < TencentCloud::Common::AbstractModel
        # @param Tid: 设备TID
        # @type Tid: String
        # @param IsExist: 设备追踪状态
        # @type IsExist: Boolean

        attr_accessor :Tid, :IsExist

        def initialize(tid=nil, isexist=nil)
          @Tid = tid
          @IsExist = isexist
        end

        def deserialize(params)
          @Tid = params['Tid']
          @IsExist = params['IsExist']
        end
      end

      # UpgradeDevice请求参数结构体
      class UpgradeDeviceRequest < TencentCloud::Common::AbstractModel
        # @param Tid: 设备TID
        # @type Tid: String
        # @param OtaVersion: 固件版本号
        # @type OtaVersion: String
        # @param UpgradeNow: 是否立即升级
        # @type UpgradeNow: Boolean

        attr_accessor :Tid, :OtaVersion, :UpgradeNow

        def initialize(tid=nil, otaversion=nil, upgradenow=nil)
          @Tid = tid
          @OtaVersion = otaversion
          @UpgradeNow = upgradenow
        end

        def deserialize(params)
          @Tid = params['Tid']
          @OtaVersion = params['OtaVersion']
          @UpgradeNow = params['UpgradeNow']
        end
      end

      # UpgradeDevice返回参数结构体
      class UpgradeDeviceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 设备端返回的数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # UploadOtaVersion请求参数结构体
      class UploadOtaVersionRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param OtaVersion: 固件版本号，格式为x.y.z， x，y 范围0-63，z范围1~524288
        # @type OtaVersion: String
        # @param VersionUrl: 固件版本URL
        # @type VersionUrl: String
        # @param FileSize: 文件大小，单位：byte
        # @type FileSize: Integer
        # @param Md5: 文件md5校验码（32字符）
        # @type Md5: String
        # @param Operator: 操作人
        # @type Operator: String
        # @param Remark: 备注信息
        # @type Remark: String
        # @param Contents: 版本发布的描述信息，需要国际化，可以为空
        # @type Contents: :class:`Tencentcloud::Iotvideo.v20191126.models.Contents`

        attr_accessor :ProductId, :OtaVersion, :VersionUrl, :FileSize, :Md5, :Operator, :Remark, :Contents

        def initialize(productid=nil, otaversion=nil, versionurl=nil, filesize=nil, md5=nil, operator=nil, remark=nil, contents=nil)
          @ProductId = productid
          @OtaVersion = otaversion
          @VersionUrl = versionurl
          @FileSize = filesize
          @Md5 = md5
          @Operator = operator
          @Remark = remark
          @Contents = contents
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @OtaVersion = params['OtaVersion']
          @VersionUrl = params['VersionUrl']
          @FileSize = params['FileSize']
          @Md5 = params['Md5']
          @Operator = params['Operator']
          @Remark = params['Remark']
          unless params['Contents'].nil?
            @Contents = Contents.new
            @Contents.deserialize(params['Contents'])
          end
        end
      end

      # UploadOtaVersion返回参数结构体
      class UploadOtaVersionResponse < TencentCloud::Common::AbstractModel
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

      # 固件版本详细信息
      class VersionData < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductId: String
        # @param OtaVersion: 固件版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OtaVersion: String
        # @param PubStatus: 版本类型 1未发布 2测试发布 3正式发布 4禁用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PubStatus: Integer
        # @param VersionUrl: 固件版本存储路径URL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionUrl: String
        # @param FileSize: 文件大小，byte
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileSize: Integer
        # @param Md5: 文件校验码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Md5: String
        # @param OldVersions: 指定的允许升级的旧版本，PubStatus=3时有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OldVersions: String
        # @param Tids: 指定的允许升级的旧设备id，PubStatus=2时有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tids: String
        # @param GrayValue: 灰度值（0-100）,PubStatus=3时有效，表示n%的升级总量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GrayValue: Integer
        # @param PublishTime: 最近一次发布时间，UNIX时间戳，单位秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublishTime: Integer
        # @param ActiveCount: 此版本激活的设备总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActiveCount: Integer
        # @param OnlineCount: 此版本在线的设备总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OnlineCount: Integer
        # @param UpdateTime: 上传固件文件的时间，UNIX时间戳，单位秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: Integer
        # @param UploadTime: 发布记录的最后变更时间，UNIX时间戳，单位秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UploadTime: Integer
        # @param ModifyTimes: 该固件版本发布的变更次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyTimes: Integer
        # @param Remark: 备注信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param Contents: 版本发布的描述信息，需要国际化，可以为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Contents: :class:`Tencentcloud::Iotvideo.v20191126.models.Contents`
        # @param AliveInMonthCnt: 月活设备数，当月第一天开始有上线的设备数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AliveInMonthCnt: Integer

        attr_accessor :ProductId, :OtaVersion, :PubStatus, :VersionUrl, :FileSize, :Md5, :OldVersions, :Tids, :GrayValue, :PublishTime, :ActiveCount, :OnlineCount, :UpdateTime, :UploadTime, :ModifyTimes, :Remark, :Contents, :AliveInMonthCnt

        def initialize(productid=nil, otaversion=nil, pubstatus=nil, versionurl=nil, filesize=nil, md5=nil, oldversions=nil, tids=nil, grayvalue=nil, publishtime=nil, activecount=nil, onlinecount=nil, updatetime=nil, uploadtime=nil, modifytimes=nil, remark=nil, contents=nil, aliveinmonthcnt=nil)
          @ProductId = productid
          @OtaVersion = otaversion
          @PubStatus = pubstatus
          @VersionUrl = versionurl
          @FileSize = filesize
          @Md5 = md5
          @OldVersions = oldversions
          @Tids = tids
          @GrayValue = grayvalue
          @PublishTime = publishtime
          @ActiveCount = activecount
          @OnlineCount = onlinecount
          @UpdateTime = updatetime
          @UploadTime = uploadtime
          @ModifyTimes = modifytimes
          @Remark = remark
          @Contents = contents
          @AliveInMonthCnt = aliveinmonthcnt
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @OtaVersion = params['OtaVersion']
          @PubStatus = params['PubStatus']
          @VersionUrl = params['VersionUrl']
          @FileSize = params['FileSize']
          @Md5 = params['Md5']
          @OldVersions = params['OldVersions']
          @Tids = params['Tids']
          @GrayValue = params['GrayValue']
          @PublishTime = params['PublishTime']
          @ActiveCount = params['ActiveCount']
          @OnlineCount = params['OnlineCount']
          @UpdateTime = params['UpdateTime']
          @UploadTime = params['UploadTime']
          @ModifyTimes = params['ModifyTimes']
          @Remark = params['Remark']
          unless params['Contents'].nil?
            @Contents = Contents.new
            @Contents.deserialize(params['Contents'])
          end
          @AliveInMonthCnt = params['AliveInMonthCnt']
        end
      end

    end
  end
end

