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
      # CreateVerifyReport请求参数结构体
      class CreateVerifyReportRequest < TencentCloud::Common::AbstractModel
        # @param ApplyCustomerType: 客户类型 1:个人，2:企业
        # @type ApplyCustomerType: String
        # @param ApplyCustomerName: 申请企业 or 自然人名称
        # @type ApplyCustomerName: String
        # @param ApplyName: 验签申请人姓名
        # @type ApplyName: String
        # @param ApplyMobile: 验签申请人电弧
        # @type ApplyMobile: String
        # @param FileId: 验签文件id
        # @type FileId: String
        # @param ApplyEmail: 验签申请人邮箱
        # @type ApplyEmail: String

        attr_accessor :ApplyCustomerType, :ApplyCustomerName, :ApplyName, :ApplyMobile, :FileId, :ApplyEmail

        def initialize(applycustomertype=nil, applycustomername=nil, applyname=nil, applymobile=nil, fileid=nil, applyemail=nil)
          @ApplyCustomerType = applycustomertype
          @ApplyCustomerName = applycustomername
          @ApplyName = applyname
          @ApplyMobile = applymobile
          @FileId = fileid
          @ApplyEmail = applyemail
        end

        def deserialize(params)
          @ApplyCustomerType = params['ApplyCustomerType']
          @ApplyCustomerName = params['ApplyCustomerName']
          @ApplyName = params['ApplyName']
          @ApplyMobile = params['ApplyMobile']
          @FileId = params['FileId']
          @ApplyEmail = params['ApplyEmail']
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
        # @param FileName: 文件名，最大长度不超过200字符
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

