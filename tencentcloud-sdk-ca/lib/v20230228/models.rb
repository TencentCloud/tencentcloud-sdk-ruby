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
  module Ca
    module V20230228
      # 证书用户信息和身份鉴别信息。则该字段无需传入，默认为空。对电子签名者身份鉴别类型及措施有特殊展示要求的可使用该字段。
      class CertificateIdentityUser < TencentCloud::Common::AbstractModel
        # @param Name: 姓名
        # @type Name: String
        # @param IdentityUniqueId: 唯一身份id
        # @type IdentityUniqueId: String
        # @param IdCardNumber: 身份证号
        # @type IdCardNumber: String
        # @param IdentificationType: 身份鉴别类型
        # 1：授权金融机构身份鉴别
        # @type IdentificationType: String
        # @param IdentificationMeasures: 身份鉴别措施
        # 1、身份证鉴别
        # 2、银行卡鉴别
        # 3、支付账户密码验证
        # 4、人脸识别验证
        # @type IdentificationMeasures: Array

        attr_accessor :Name, :IdentityUniqueId, :IdCardNumber, :IdentificationType, :IdentificationMeasures

        def initialize(name=nil, identityuniqueid=nil, idcardnumber=nil, identificationtype=nil, identificationmeasures=nil)
          @Name = name
          @IdentityUniqueId = identityuniqueid
          @IdCardNumber = idcardnumber
          @IdentificationType = identificationtype
          @IdentificationMeasures = identificationmeasures
        end

        def deserialize(params)
          @Name = params['Name']
          @IdentityUniqueId = params['IdentityUniqueId']
          @IdCardNumber = params['IdCardNumber']
          @IdentificationType = params['IdentificationType']
          @IdentificationMeasures = params['IdentificationMeasures']
        end
      end

      # CreateVerifyReport请求参数结构体
      class CreateVerifyReportRequest < TencentCloud::Common::AbstractModel
        # @param ApplyCustomerType: 申请者类型 1:个人，2:企业
        # @type ApplyCustomerType: String
        # @param ApplyCustomerName: 申请企业 or 自然人名称
        # @type ApplyCustomerName: String
        # @param ApplyName: 验签申请经办人姓名
        # @type ApplyName: String
        # @param ApplyMobile: 验签申请经办人电话
        # @type ApplyMobile: String
        # @param FileId: 验签文件id
        # @type FileId: String
        # @param ApplyEmail: 验签申请经办人邮箱
        # @type ApplyEmail: String
        # @param CertificateIdentityUsers: 证书用户身份及身份鉴别信息
        # @type CertificateIdentityUsers: Array

        attr_accessor :ApplyCustomerType, :ApplyCustomerName, :ApplyName, :ApplyMobile, :FileId, :ApplyEmail, :CertificateIdentityUsers

        def initialize(applycustomertype=nil, applycustomername=nil, applyname=nil, applymobile=nil, fileid=nil, applyemail=nil, certificateidentityusers=nil)
          @ApplyCustomerType = applycustomertype
          @ApplyCustomerName = applycustomername
          @ApplyName = applyname
          @ApplyMobile = applymobile
          @FileId = fileid
          @ApplyEmail = applyemail
          @CertificateIdentityUsers = certificateidentityusers
        end

        def deserialize(params)
          @ApplyCustomerType = params['ApplyCustomerType']
          @ApplyCustomerName = params['ApplyCustomerName']
          @ApplyName = params['ApplyName']
          @ApplyMobile = params['ApplyMobile']
          @FileId = params['FileId']
          @ApplyEmail = params['ApplyEmail']
          unless params['CertificateIdentityUsers'].nil?
            @CertificateIdentityUsers = []
            params['CertificateIdentityUsers'].each do |i|
              certificateidentityuser_tmp = CertificateIdentityUser.new
              certificateidentityuser_tmp.deserialize(i)
              @CertificateIdentityUsers << certificateidentityuser_tmp
            end
          end
        end
      end

      # CreateVerifyReport返回参数结构体
      class CreateVerifyReportResponse < TencentCloud::Common::AbstractModel
        # @param SignatureId: 签名id
        # @type SignatureId: String
        # @param Code: code
        # @type Code: String
        # @param Message: message
        # @type Message: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SignatureId, :Code, :Message, :RequestId

        def initialize(signatureid=nil, code=nil, message=nil, requestid=nil)
          @SignatureId = signatureid
          @Code = code
          @Message = message
          @RequestId = requestid
        end

        def deserialize(params)
          @SignatureId = params['SignatureId']
          @Code = params['Code']
          @Message = params['Message']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVerifyReport请求参数结构体
      class DescribeVerifyReportRequest < TencentCloud::Common::AbstractModel
        # @param SignatureId: 签名id
        # @type SignatureId: String

        attr_accessor :SignatureId

        def initialize(signatureid=nil)
          @SignatureId = signatureid
        end

        def deserialize(params)
          @SignatureId = params['SignatureId']
        end
      end

      # DescribeVerifyReport返回参数结构体
      class DescribeVerifyReportResponse < TencentCloud::Common::AbstractModel
        # @param ReportUrl: 下载url
        # @type ReportUrl: String
        # @param Code: code
        # @type Code: String
        # @param Message: message
        # @type Message: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReportUrl, :Code, :Message, :RequestId

        def initialize(reporturl=nil, code=nil, message=nil, requestid=nil)
          @ReportUrl = reporturl
          @Code = code
          @Message = message
          @RequestId = requestid
        end

        def deserialize(params)
          @ReportUrl = params['ReportUrl']
          @Code = params['Code']
          @Message = params['Message']
          @RequestId = params['RequestId']
        end
      end

      # 文件列表信息
      class FileInfo < TencentCloud::Common::AbstractModel
        # @param FileBody: BASE64编码后的文件内容
        # @type FileBody: String
        # @param FileName: 文件名及类型，最大长度不超过200字符
        # @type FileName: String

        attr_accessor :FileBody, :FileName

        def initialize(filebody=nil, filename=nil)
          @FileBody = filebody
          @FileName = filename
        end

        def deserialize(params)
          @FileBody = params['FileBody']
          @FileName = params['FileName']
        end
      end

      # UploadFile请求参数结构体
      class UploadFileRequest < TencentCloud::Common::AbstractModel
        # @param FileInfos: 验签源文件信息列表
        # @type FileInfos: Array

        attr_accessor :FileInfos

        def initialize(fileinfos=nil)
          @FileInfos = fileinfos
        end

        def deserialize(params)
          unless params['FileInfos'].nil?
            @FileInfos = []
            params['FileInfos'].each do |i|
              fileinfo_tmp = FileInfo.new
              fileinfo_tmp.deserialize(i)
              @FileInfos << fileinfo_tmp
            end
          end
        end
      end

      # UploadFile返回参数结构体
      class UploadFileResponse < TencentCloud::Common::AbstractModel
        # @param FileIds: 文件id列表
        # @type FileIds: Array
        # @param TotalCount: 文件id总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileIds, :TotalCount, :RequestId

        def initialize(fileids=nil, totalcount=nil, requestid=nil)
          @FileIds = fileids
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @FileIds = params['FileIds']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

