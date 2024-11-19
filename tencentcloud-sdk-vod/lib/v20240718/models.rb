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
  module Vod
    module V20240718
      # CreateStorageCredentials请求参数结构体
      class CreateStorageCredentialsRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: <b>点播专业版[应用](/document/product/266/14574) ID。</b>
        # @type SubAppId: Integer
        # @param Policy: 按照下方语法组装好策略后，先序列化为字符串，再做 URL Encode，结果作为 Policy 字段入参。服务端会对该字段做 URL Decode，并按解析后的策略授予临时访问凭证权限，请按规范传入参数。
        # 注意：
        # 1.策略语法参照[访问管理策略](/document/product/598/10603)。
        # 2.策略中不能包含 principal 元素。
        # 3.策略的 action 元素仅支持：<li>name/vod:PutObject;</li><li>name/vod:ListParts;</li><li>name/vod:PostObject;</li><li>name/vod:InitiateMultipartUpload;</li><li>name/vod:UploadPart;</li><li>name/vod:CompleteMultipartUpload;</li><li>name/vod:AbortMultipartUpload;</li><li>name/vod:ListMultipartUploads;</li>4.策略的 resource 元素填写格式为：`qcs::vod:[存储地域]:uid/[账号AppID]:prefix//[点播应用ID]/[存储桶ID]/[存储路径]`，其中存储地域、账号 AppID、点播应用 ID、存储桶 ID 和存储路径要按需填写，其他内容不允许改动，例：`qcs:ap-chongqing:vod::uid/1231456789:prefix//1234567890/2ceds3ew323w3mu/file_path`。
        # @type Policy: String
        # @param DurationSeconds: 指定临时证书的有效期，单位：秒。
        # 默认 1800 秒，最大 129600 秒。
        # @type DurationSeconds: Integer

        attr_accessor :SubAppId, :Policy, :DurationSeconds

        def initialize(subappid=nil, policy=nil, durationseconds=nil)
          @SubAppId = subappid
          @Policy = policy
          @DurationSeconds = durationseconds
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
          @Policy = params['Policy']
          @DurationSeconds = params['DurationSeconds']
        end
      end

      # CreateStorageCredentials返回参数结构体
      class CreateStorageCredentialsResponse < TencentCloud::Common::AbstractModel
        # @param Credentials: 临时访问凭证。
        # @type Credentials: :class:`Tencentcloud::Vod.v20240718.models.Credentials`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Credentials, :RequestId

        def initialize(credentials=nil, requestid=nil)
          @Credentials = credentials
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Credentials'].nil?
            @Credentials = Credentials.new
            @Credentials.deserialize(params['Credentials'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 临时访问凭证。
      class Credentials < TencentCloud::Common::AbstractModel
        # @param AccessKeyId: 访问凭证 ID。
        # @type AccessKeyId: String
        # @param SecretAccessKey: 访问凭证 Key。
        # @type SecretAccessKey: String
        # @param SessionToken: 访问凭证 Token，长度和绑定的策略有关，最长不超过 4096 字节。
        # @type SessionToken: String
        # @param Expiration: 访问凭证的过期时间。
        # @type Expiration: String

        attr_accessor :AccessKeyId, :SecretAccessKey, :SessionToken, :Expiration

        def initialize(accesskeyid=nil, secretaccesskey=nil, sessiontoken=nil, expiration=nil)
          @AccessKeyId = accesskeyid
          @SecretAccessKey = secretaccesskey
          @SessionToken = sessiontoken
          @Expiration = expiration
        end

        def deserialize(params)
          @AccessKeyId = params['AccessKeyId']
          @SecretAccessKey = params['SecretAccessKey']
          @SessionToken = params['SessionToken']
          @Expiration = params['Expiration']
        end
      end

    end
  end
end

