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
  module Tsi
    module V20210325
      # 同传结果数据
      class DisplayInfo < TencentCloud::Common::AbstractModel
        # @param SeId: 句子 ID
        # @type SeId: String
        # @param SeVer: 句子版本号
        # @type SeVer: Integer
        # @param SourceText: 识别结果
        # @type SourceText: String
        # @param TargetText:  翻译结果
        # @type TargetText: String
        # @param StartTime: 句子开始时间
        # @type StartTime: Integer
        # @param EndTime: 句子结束时间
        # @type EndTime: Integer
        # @param IsEnd:  当前句子是否已结束
        # @type IsEnd: Boolean

        attr_accessor :SeId, :SeVer, :SourceText, :TargetText, :StartTime, :EndTime, :IsEnd

        def initialize(seid=nil, sever=nil, sourcetext=nil, targettext=nil, starttime=nil, endtime=nil, isend=nil)
          @SeId = seid
          @SeVer = sever
          @SourceText = sourcetext
          @TargetText = targettext
          @StartTime = starttime
          @EndTime = endtime
          @IsEnd = isend
        end

        def deserialize(params)
          @SeId = params['SeId']
          @SeVer = params['SeVer']
          @SourceText = params['SourceText']
          @TargetText = params['TargetText']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @IsEnd = params['IsEnd']
        end
      end

      # TongChuanDisplay请求参数结构体
      class TongChuanDisplayRequest < TencentCloud::Common::AbstractModel
        # @param SessionUuid: 一段完整的语音对应一个SessionUuid
        # @type SessionUuid: String
        # @param IsNew: 句子排序方式，1-由新到旧
        # @type IsNew: Integer
        # @param SeMax: 最多返回几句，目前只支持 5 条数据
        # @type SeMax: Integer

        attr_accessor :SessionUuid, :IsNew, :SeMax

        def initialize(sessionuuid=nil, isnew=nil, semax=nil)
          @SessionUuid = sessionuuid
          @IsNew = isnew
          @SeMax = semax
        end

        def deserialize(params)
          @SessionUuid = params['SessionUuid']
          @IsNew = params['IsNew']
          @SeMax = params['SeMax']
        end
      end

      # TongChuanDisplay返回参数结构体
      class TongChuanDisplayResponse < TencentCloud::Common::AbstractModel
        # @param List: 同传结果数组
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              displayinfo_tmp = DisplayInfo.new
              displayinfo_tmp.deserialize(i)
              @List << displayinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # TongChuanRecognize请求参数结构体
      class TongChuanRecognizeRequest < TencentCloud::Common::AbstractModel
        # @param SessionUuid: 一段完整的语音对应一个SessionUuid
        # @type SessionUuid: String
        # @param Source: 源语言，支持：
        # zh：中文
        # en：英语
        # ja：日语
        # ko：韩语
        # yue：粤语
        # @type Source: String
        # @param Target: 目标语言，各源语言的目标语言支持列表如下
        # <li>zh（中文）：en（英语）、ja（日语）、ko（韩语）、yue（粤语）</li>
        # <li>en（英语）：zh（中文）</li>
        # <li>ja（日语）：zh（中文）</li>
        # <li>ko（韩语）：zh（中文）</li>
        # <li>yue（粤语）：zh（中文）</li>
        # @type Target: String
        # @param AudioFormat: 语音编码类型，1-pcm
        # @type AudioFormat: Integer
        # @param Seq: 语音分片的序号，从0开始
        # @type Seq: Integer
        # @param Utc: 语音开始的时间戳
        # @type Utc: Integer
        # @param IsEnd: 是否最后一片语音分片，0-否，1-是
        # @type IsEnd: Integer
        # @param TranslateTime: 翻译时机，0-不翻译 2-句子实时翻译
        # @type TranslateTime: Integer
        # @param Data: 语音分片内容进行 Base64 编码后的字符串。音频内容需包含有效并可识别的文本信息。
        # @type Data: String

        attr_accessor :SessionUuid, :Source, :Target, :AudioFormat, :Seq, :Utc, :IsEnd, :TranslateTime, :Data

        def initialize(sessionuuid=nil, source=nil, target=nil, audioformat=nil, seq=nil, utc=nil, isend=nil, translatetime=nil, data=nil)
          @SessionUuid = sessionuuid
          @Source = source
          @Target = target
          @AudioFormat = audioformat
          @Seq = seq
          @Utc = utc
          @IsEnd = isend
          @TranslateTime = translatetime
          @Data = data
        end

        def deserialize(params)
          @SessionUuid = params['SessionUuid']
          @Source = params['Source']
          @Target = params['Target']
          @AudioFormat = params['AudioFormat']
          @Seq = params['Seq']
          @Utc = params['Utc']
          @IsEnd = params['IsEnd']
          @TranslateTime = params['TranslateTime']
          @Data = params['Data']
        end
      end

      # TongChuanRecognize返回参数结构体
      class TongChuanRecognizeResponse < TencentCloud::Common::AbstractModel
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

      # TongChuanSync请求参数结构体
      class TongChuanSyncRequest < TencentCloud::Common::AbstractModel
        # @param SessionUuid: 一段完整的语音对应一个SessionUuid
        # @type SessionUuid: String
        # @param Source: 源语言，支持：
        # zh：中文
        # en：英语
        # ja：日语
        # ko：韩语
        # yue：粤语
        # @type Source: String
        # @param Target: 目标语言，各源语言的目标语言支持列表如下
        # <li>zh（中文）：en（英语）、ja（日语）、ko（韩语）、yue（粤语）</li>
        # <li>en（英语）：zh（中文）</li>
        # <li>ja（日语）：zh（中文）</li>
        # <li>ko（韩语）：zh（中文）</li>
        # <li>yue（粤语）：zh（中文）</li>
        # @type Target: String
        # @param AudioFormat: 语音编码类型，1-pcm
        # @type AudioFormat: Integer
        # @param Seq: 语音分片的序号，从0开始
        # @type Seq: Integer
        # @param Utc: 语音开始的时间戳
        # @type Utc: Integer
        # @param IsEnd: 是否最后一片语音分片，0-否，1-是
        # @type IsEnd: Integer
        # @param TranslateTime: 翻译时机，0-不翻译 2-句子实时翻译
        # @type TranslateTime: Integer
        # @param Data: 语音分片内容进行 Base64 编码后的字符串。音频内容需包含有效并可识别的文本信息。
        # @type Data: String

        attr_accessor :SessionUuid, :Source, :Target, :AudioFormat, :Seq, :Utc, :IsEnd, :TranslateTime, :Data

        def initialize(sessionuuid=nil, source=nil, target=nil, audioformat=nil, seq=nil, utc=nil, isend=nil, translatetime=nil, data=nil)
          @SessionUuid = sessionuuid
          @Source = source
          @Target = target
          @AudioFormat = audioformat
          @Seq = seq
          @Utc = utc
          @IsEnd = isend
          @TranslateTime = translatetime
          @Data = data
        end

        def deserialize(params)
          @SessionUuid = params['SessionUuid']
          @Source = params['Source']
          @Target = params['Target']
          @AudioFormat = params['AudioFormat']
          @Seq = params['Seq']
          @Utc = params['Utc']
          @IsEnd = params['IsEnd']
          @TranslateTime = params['TranslateTime']
          @Data = params['Data']
        end
      end

      # TongChuanSync返回参数结构体
      class TongChuanSyncResponse < TencentCloud::Common::AbstractModel
        # @param List: 同传结果数组
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              displayinfo_tmp = DisplayInfo.new
              displayinfo_tmp.deserialize(i)
              @List << displayinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

