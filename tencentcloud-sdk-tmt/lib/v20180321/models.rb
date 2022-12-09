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
  module Tmt
    module V20180321
      # FileTranslate请求参数结构体
      class FileTranslateRequest < TencentCloud::Common::AbstractModel
        # @param Source: 源语言，支持
        # zh:简体中文
        # zh-HK：繁体中文
        # zh-TW : 繁体中文
        # zh-TR:  繁体中文
        # en ：英语
        # ar：阿拉伯语
        # de：德语
        # es：西班牙语
        # fr：法语
        # it：意大利语
        # ja：日语
        # pt：葡萄牙语
        # ru：俄语
        # ko：韩语
        # km：高棉语
        # lo：老挝语
        # @type Source: String
        # @param Target: 目标语言，各源语言的目标语言支持列表如下
        # zh（简体中文）： en （英语）、 ar (阿拉伯语）、 de （德语）、  es（西班牙语） 、fr（法语）、  it（意大利语） 、 ja （日语）、 pt （葡萄牙语）、 ru（俄语）、  ko（韩语）、 km（高棉语）、   lo（老挝语）
        # zh-HK（繁体中文） ：en （英语）、 ar (阿拉伯语）、 de （德语）、  es（西班牙语） 、fr（法语）、  it（意大利语） 、 ja （日语）、 pt （葡萄牙语）、 ru（俄语）、  ko（韩语）、 km（高棉语）、   lo（老挝语）
        # zh-TW（繁体中文）：en （英语）、 ar (阿拉伯语）、 de （德语）、  es（西班牙语） 、fr（法语）、  it（意大利语） 、 ja （日语）、 pt （葡萄牙语）、 ru（俄语）、  ko（韩语）、 km（高棉语）、   lo（老挝语）
        # zh-TR 繁体中文 : en （英语）、 ar (阿拉伯语）、 de （德语）、  es（西班牙语） 、fr（法语）、  it（意大利语） 、 ja （日语）、 pt （葡萄牙语）、 ru（俄语）、  ko（韩语）、 km（高棉语）、   lo（老挝语）
        # en （英语） ：zh（简体中文）、zh-HK（繁体中文）、 zh-TW（繁体中文)、 zh-TR(繁体中文）、 ar (阿拉伯语）、 de （德语）、  es（西班牙语） 、fr（法语）、  it（意大利语） 、 ja （日语）、 pt （葡萄牙语）、 ru（俄语）、  ko（韩语）、 km（高棉语）、   lo（老挝语）
        # ar（阿拉伯语） ：zh（简体中文）、zh-HK（繁体中文）、 zh-TW（繁体中文)、zh-TR(繁体中文）
        # de（德语 ）：zh（简体中文）、zh-HK（繁体中文）、 zh-TW（繁体中文)、zh-TR(繁体中文）
        # es（西班牙语）：zh（简体中文）、zh-HK（繁体中文）、 zh-TW（繁体中文)、zh-TR(繁体中文）
        # fr（法语）：zh（简体中文）、zh-HK（繁体中文）、 zh-TW（繁体中文)、zh-TR(繁体中文）
        # it（意大利语）：zh（简体中文）、zh-HK（繁体中文）、 zh-TW（繁体中文)、zh-TR(繁体中文）
        # ja（日语）：zh（简体中文）、zh-HK（繁体中文）、 zh-TW（繁体中文)、zh-TR(繁体中文）
        # pt（葡萄牙语）：zh（简体中文）、zh-HK（繁体中文）、 zh-TW（繁体中文)、zh-TR(繁体中文）
        # ru（俄语）：zh（简体中文）、zh-HK（繁体中文）、 zh-TW（繁体中文)、zh-TR(繁体中文）
        # ko（韩语）：zh（简体中文）、zh-HK（繁体中文）、 zh-TW（繁体中文)、zh-TR(繁体中文）
        # km（高棉语）：zh（简体中文）、zh-HK（繁体中文）、 zh-TW（繁体中文)、zh-TR(繁体中文）
        # lo（老挝语）：zh（简体中文）、zh-HK（繁体中文）、 zh-TW（繁体中文)、zh-TR(繁体中文）
        # @type Target: String
        # @param DocumentType: 文档类型：可支持以下几种(pdf,docx,pptx,xlsx,txt,xml,html,markdown,properties)
        # @type DocumentType: String
        # @param SourceType: 数据来源，0：url，1：直接传文件编码后数据
        # @type SourceType: Integer
        # @param Url: 需要翻译文件url
        # @type Url: String
        # @param BasicDocumentType: 原始文档类型
        # @type BasicDocumentType: String
        # @param CallbackUrl: 回调url
        # @type CallbackUrl: String
        # @param Data: 文件数据，当SourceType 值为1时必须填写，为0可不写。要base64编码(采用python语言时注意读取文件应该为string而不是byte，以byte格式读取后要decode()。编码后的数据不可带有回车换行符)。数据要小于5MB。
        # @type Data: String

        attr_accessor :Source, :Target, :DocumentType, :SourceType, :Url, :BasicDocumentType, :CallbackUrl, :Data
        
        def initialize(source=nil, target=nil, documenttype=nil, sourcetype=nil, url=nil, basicdocumenttype=nil, callbackurl=nil, data=nil)
          @Source = source
          @Target = target
          @DocumentType = documenttype
          @SourceType = sourcetype
          @Url = url
          @BasicDocumentType = basicdocumenttype
          @CallbackUrl = callbackurl
          @Data = data
        end

        def deserialize(params)
          @Source = params['Source']
          @Target = params['Target']
          @DocumentType = params['DocumentType']
          @SourceType = params['SourceType']
          @Url = params['Url']
          @BasicDocumentType = params['BasicDocumentType']
          @CallbackUrl = params['CallbackUrl']
          @Data = params['Data']
        end
      end

      # FileTranslate返回参数结构体
      class FileTranslateResponse < TencentCloud::Common::AbstractModel
        # @param Data: 文件翻译的请求返回结果，包含结果查询需要的TaskId
        # @type Data: :class:`Tencentcloud::Tmt.v20180321.models.Task`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = Task.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询文件翻译任务
      class GetFileTranslateData < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param Status: 状态
        # @type Status: String
        # @param FileData: 文件数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileData: String
        # @param Message: 错误提示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Progress: 翻译进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Progress: Integer

        attr_accessor :TaskId, :Status, :FileData, :Message, :Progress
        
        def initialize(taskid=nil, status=nil, filedata=nil, message=nil, progress=nil)
          @TaskId = taskid
          @Status = status
          @FileData = filedata
          @Message = message
          @Progress = progress
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @FileData = params['FileData']
          @Message = params['Message']
          @Progress = params['Progress']
        end
      end

      # GetFileTranslate请求参数结构体
      class GetFileTranslateRequest < TencentCloud::Common::AbstractModel
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

      # GetFileTranslate返回参数结构体
      class GetFileTranslateResponse < TencentCloud::Common::AbstractModel
        # @param Data: 任务id
        # @type Data: :class:`Tencentcloud::Tmt.v20180321.models.GetFileTranslateData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = GetFileTranslateData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 图片翻译结果
      class ImageRecord < TencentCloud::Common::AbstractModel
        # @param Value: 图片翻译结果
        # @type Value: Array

        attr_accessor :Value
        
        def initialize(value=nil)
          @Value = value
        end

        def deserialize(params)
          unless params['Value'].nil?
            @Value = []
            params['Value'].each do |i|
              itemvalue_tmp = ItemValue.new
              itemvalue_tmp.deserialize(i)
              @Value << itemvalue_tmp
            end
          end
        end
      end

      # ImageTranslate请求参数结构体
      class ImageTranslateRequest < TencentCloud::Common::AbstractModel
        # @param SessionUuid: 唯一id，返回时原样返回
        # @type SessionUuid: String
        # @param Scene: doc:文档扫描
        # @type Scene: String
        # @param Data: 图片数据的Base64字符串，图片大小上限为4M，建议对源图片进行一定程度压缩
        # @type Data: String
        # @param Source: 源语言，支持语言列表：<li> auto：自动识别（识别为一种语言）</li> <li>zh：简体中文</li> <li>zh-TW：繁体中文</li> <li>en：英语</li> <li>ja：日语</li> <li>ko：韩语</li> <li>ru：俄语</li> <li>fr：法语</li> <li>de：德语</li> <li>it：意大利语</li> <li>es：西班牙语</li> <li>pt：葡萄牙语</li> <li>ms：马来西亚语</li> <li>th：泰语</li><li>vi：越南语</li>
        # @type Source: String
        # @param Target: 目标语言，各源语言的目标语言支持列表如下：
        # <li>zh（简体中文）：en（英语）、ja（日语）、ko（韩语）、ru（俄语）、fr（法语）、de（德语）、it（意大利语）、es（西班牙语）、pt（葡萄牙语）、ms（马来语）、th（泰语）、vi（越南语）</li>
        # <li>zh-TW（繁体中文）：en（英语）、ja（日语）、ko（韩语）、ru（俄语）、fr（法语）、de（德语）、it（意大利语）、es（西班牙语）、pt（葡萄牙语）、ms（马来语）、th（泰语）、vi（越南语）</li>
        # <li>en（英语）：zh（中文）、ja（日语）、ko（韩语）、ru（俄语）、fr（法语）、de（德语）、it（意大利语）、es（西班牙语）、pt（葡萄牙语）、ms（马来语）、th（泰语）、vi（越南语）</li>
        # <li>ja（日语）：zh（中文）、en（英语）、ko（韩语）</li>
        # <li>ko（韩语）：zh（中文）、en（英语）、ja（日语）</li>
        # <li>ru：俄语：zh（中文）、en（英语）</li>
        # <li>fr：法语：zh（中文）、en（英语）</li>
        # <li>de：德语：zh（中文）、en（英语）</li>
        # <li>it：意大利语：zh（中文）、en（英语）</li>
        # <li>es：西班牙语：zh（中文）、en（英语）</li>
        # <li>pt：葡萄牙语：zh（中文）、en（英语）</li>
        # <li>ms：马来西亚语：zh（中文）、en（英语）</li>
        # <li>th：泰语：zh（中文）、en（英语）</li>
        # <li>vi：越南语：zh（中文）、en（英语）</li>
        # @type Target: String
        # @param ProjectId: 项目ID，可以根据控制台-账号中心-项目管理中的配置填写，如无配置请填写默认项目ID:0
        # @type ProjectId: Integer

        attr_accessor :SessionUuid, :Scene, :Data, :Source, :Target, :ProjectId
        
        def initialize(sessionuuid=nil, scene=nil, data=nil, source=nil, target=nil, projectid=nil)
          @SessionUuid = sessionuuid
          @Scene = scene
          @Data = data
          @Source = source
          @Target = target
          @ProjectId = projectid
        end

        def deserialize(params)
          @SessionUuid = params['SessionUuid']
          @Scene = params['Scene']
          @Data = params['Data']
          @Source = params['Source']
          @Target = params['Target']
          @ProjectId = params['ProjectId']
        end
      end

      # ImageTranslate返回参数结构体
      class ImageTranslateResponse < TencentCloud::Common::AbstractModel
        # @param SessionUuid: 请求的SessionUuid返回
        # @type SessionUuid: String
        # @param Source: 源语言
        # @type Source: String
        # @param Target: 目标语言
        # @type Target: String
        # @param ImageRecord: 图片翻译结果，翻译结果按识别的文本每一行独立翻译，后续会推出按段落划分并翻译的版本
        # @type ImageRecord: :class:`Tencentcloud::Tmt.v20180321.models.ImageRecord`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SessionUuid, :Source, :Target, :ImageRecord, :RequestId
        
        def initialize(sessionuuid=nil, source=nil, target=nil, imagerecord=nil, requestid=nil)
          @SessionUuid = sessionuuid
          @Source = source
          @Target = target
          @ImageRecord = imagerecord
          @RequestId = requestid
        end

        def deserialize(params)
          @SessionUuid = params['SessionUuid']
          @Source = params['Source']
          @Target = params['Target']
          unless params['ImageRecord'].nil?
            @ImageRecord = ImageRecord.new
            @ImageRecord.deserialize(params['ImageRecord'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 翻译结果
      class ItemValue < TencentCloud::Common::AbstractModel
        # @param SourceText: 识别出的源文
        # @type SourceText: String
        # @param TargetText: 翻译后的译文
        # @type TargetText: String
        # @param X: X坐标
        # @type X: Integer
        # @param Y: Y坐标
        # @type Y: Integer
        # @param W: 宽度
        # @type W: Integer
        # @param H: 高度
        # @type H: Integer

        attr_accessor :SourceText, :TargetText, :X, :Y, :W, :H
        
        def initialize(sourcetext=nil, targettext=nil, x=nil, y=nil, w=nil, h=nil)
          @SourceText = sourcetext
          @TargetText = targettext
          @X = x
          @Y = y
          @W = w
          @H = h
        end

        def deserialize(params)
          @SourceText = params['SourceText']
          @TargetText = params['TargetText']
          @X = params['X']
          @Y = params['Y']
          @W = params['W']
          @H = params['H']
        end
      end

      # LanguageDetect请求参数结构体
      class LanguageDetectRequest < TencentCloud::Common::AbstractModel
        # @param Text: 待识别的文本，文本统一使用utf-8格式编码，非utf-8格式编码字符会翻译失败。单次请求的文本长度需要低于2000。
        # @type Text: String
        # @param ProjectId: 项目ID，可以根据控制台-账号中心-项目管理中的配置填写，如无配置请填写默认项目ID:0
        # @type ProjectId: Integer

        attr_accessor :Text, :ProjectId
        
        def initialize(text=nil, projectid=nil)
          @Text = text
          @ProjectId = projectid
        end

        def deserialize(params)
          @Text = params['Text']
          @ProjectId = params['ProjectId']
        end
      end

      # LanguageDetect返回参数结构体
      class LanguageDetectResponse < TencentCloud::Common::AbstractModel
        # @param Lang: 识别出的语言种类，参考语言列表
        # <li> zh : 中文 </li> <li> en : 英文 </li><li> jp : 日语 </li> <li> kr : 韩语 </li><li> de : 德语 </li><li> fr : 法语 </li><li> es : 西班牙文 </li> <li> it : 意大利文 </li><li> tr : 土耳其文 </li><li> ru : 俄文 </li><li> pt : 葡萄牙文 </li><li> vi : 越南文 </li><li> id : 印度尼西亚文 </li><li> ms : 马来西亚文 </li><li> th : 泰文 </li>
        # @type Lang: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Lang, :RequestId
        
        def initialize(lang=nil, requestid=nil)
          @Lang = lang
          @RequestId = requestid
        end

        def deserialize(params)
          @Lang = params['Lang']
          @RequestId = params['RequestId']
        end
      end

      # SpeechTranslate请求参数结构体
      class SpeechTranslateRequest < TencentCloud::Common::AbstractModel
        # @param SessionUuid: 一段完整的语音对应一个SessionUuid
        # @type SessionUuid: String
        # @param Source: 音频中的语言类型，支持语言列表<li> zh : 中文 </li> <li> en : 英文 </li>
        # @type Source: String
        # @param Target: 翻译目标语言类型，支持的语言列表<li> zh : 中文 </li> <li> en : 英文 </li>
        # @type Target: String
        # @param AudioFormat: pcm : 146   speex : 16779154   mp3 : 83886080
        # @type AudioFormat: Integer
        # @param Seq: 语音分片的序号，从0开始
        # @type Seq: Integer
        # @param IsEnd: 是否最后一片语音分片，0-否，1-是
        # @type IsEnd: Integer
        # @param Data: 语音分片内容进行 Base64 编码后的字符串。音频内容需包含有效并可识别的文本信息。
        # @type Data: String
        # @param ProjectId: 项目ID，可以根据控制台-账号中心-项目管理中的配置填写，如无配置请填写默认项目ID:0
        # @type ProjectId: Integer
        # @param Mode: 识别模式，该参数已废弃
        # @type Mode: String
        # @param TransType: 该参数已废弃
        # @type TransType: Integer

        attr_accessor :SessionUuid, :Source, :Target, :AudioFormat, :Seq, :IsEnd, :Data, :ProjectId, :Mode, :TransType
        
        def initialize(sessionuuid=nil, source=nil, target=nil, audioformat=nil, seq=nil, isend=nil, data=nil, projectid=nil, mode=nil, transtype=nil)
          @SessionUuid = sessionuuid
          @Source = source
          @Target = target
          @AudioFormat = audioformat
          @Seq = seq
          @IsEnd = isend
          @Data = data
          @ProjectId = projectid
          @Mode = mode
          @TransType = transtype
        end

        def deserialize(params)
          @SessionUuid = params['SessionUuid']
          @Source = params['Source']
          @Target = params['Target']
          @AudioFormat = params['AudioFormat']
          @Seq = params['Seq']
          @IsEnd = params['IsEnd']
          @Data = params['Data']
          @ProjectId = params['ProjectId']
          @Mode = params['Mode']
          @TransType = params['TransType']
        end
      end

      # SpeechTranslate返回参数结构体
      class SpeechTranslateResponse < TencentCloud::Common::AbstractModel
        # @param SessionUuid: 请求的SessionUuid直接返回
        # @type SessionUuid: String
        # @param RecognizeStatus: 语音识别状态 1-进行中 0-完成
        # @type RecognizeStatus: Integer
        # @param SourceText: 识别出的原文
        # @type SourceText: String
        # @param TargetText: 翻译出的译文
        # @type TargetText: String
        # @param Seq: 第几个语音分片
        # @type Seq: Integer
        # @param Source: 原语言
        # @type Source: String
        # @param Target: 目标语言
        # @type Target: String
        # @param VadSeq: 当请求的Mode参数填写bvad是，启动VadSeq。此时Seq会被设置为后台vad（静音检测）后的新序号，而VadSeq代表客户端原始Seq值
        # @type VadSeq: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SessionUuid, :RecognizeStatus, :SourceText, :TargetText, :Seq, :Source, :Target, :VadSeq, :RequestId
        
        def initialize(sessionuuid=nil, recognizestatus=nil, sourcetext=nil, targettext=nil, seq=nil, source=nil, target=nil, vadseq=nil, requestid=nil)
          @SessionUuid = sessionuuid
          @RecognizeStatus = recognizestatus
          @SourceText = sourcetext
          @TargetText = targettext
          @Seq = seq
          @Source = source
          @Target = target
          @VadSeq = vadseq
          @RequestId = requestid
        end

        def deserialize(params)
          @SessionUuid = params['SessionUuid']
          @RecognizeStatus = params['RecognizeStatus']
          @SourceText = params['SourceText']
          @TargetText = params['TargetText']
          @Seq = params['Seq']
          @Source = params['Source']
          @Target = params['Target']
          @VadSeq = params['VadSeq']
          @RequestId = params['RequestId']
        end
      end

      # 文件翻译请求的返回数据
      class Task < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID，可通过此ID在轮询接口获取识别状态与结果。注意：TaskId数据类型为字符串类型
        # @type TaskId: String

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # TextTranslateBatch请求参数结构体
      class TextTranslateBatchRequest < TencentCloud::Common::AbstractModel
        # @param Source: 源语言，支持：
        # auto：自动识别（识别为一种语言）
        # zh：简体中文
        # zh-TW：繁体中文
        # en：英语
        # ja：日语
        # ko：韩语
        # fr：法语
        # es：西班牙语
        # it：意大利语
        # de：德语
        # tr：土耳其语
        # ru：俄语
        # pt：葡萄牙语
        # vi：越南语
        # id：印尼语
        # th：泰语
        # ms：马来西亚语
        # ar：阿拉伯语
        # hi：印地语
        # @type Source: String
        # @param Target: 目标语言，各源语言的目标语言支持列表如下

        # <li> zh（简体中文）：en（英语）、ja（日语）、ko（韩语）、fr（法语）、es（西班牙语）、it（意大利语）、de（德语）、tr（土耳其语）、ru（俄语）、pt（葡萄牙语）、vi（越南语）、id（印尼语）、th（泰语）、ms（马来语）</li>
        # <li>zh-TW（繁体中文）：en（英语）、ja（日语）、ko（韩语）、fr（法语）、es（西班牙语）、it（意大利语）、de（德语）、tr（土耳其语）、ru（俄语）、pt（葡萄牙语）、vi（越南语）、id（印尼语）、th（泰语）、ms（马来语）</li>
        # <li>en（英语）：zh（中文）、ja（日语）、ko（韩语）、fr（法语）、es（西班牙语）、it（意大利语）、de（德语）、tr（土耳其语）、ru（俄语）、pt（葡萄牙语）、vi（越南语）、id（印尼语）、th（泰语）、ms（马来语）、ar（阿拉伯语）、hi（印地语）</li>
        # <li>ja（日语）：zh（中文）、en（英语）、ko（韩语）</li>
        # <li>ko（韩语）：zh（中文）、en（英语）、ja（日语）</li>
        # <li>fr（法语）：zh（中文）、en（英语）、es（西班牙语）、it（意大利语）、de（德语）、tr（土耳其语）、ru（俄语）、pt（葡萄牙语）</li>
        # <li>es（西班牙语）：zh（中文）、en（英语）、fr（法语）、it（意大利语）、de（德语）、tr（土耳其语）、ru（俄语）、pt（葡萄牙语）</li>
        # <li>it（意大利语）：zh（中文）、en（英语）、fr（法语）、es（西班牙语）、de（德语）、tr（土耳其语）、ru（俄语）、pt（葡萄牙语）</li>
        # <li>de（德语）：zh（中文）、en（英语）、fr（法语）、es（西班牙语）、it（意大利语）、tr（土耳其语）、ru（俄语）、pt（葡萄牙语）</li>
        # <li>tr（土耳其语）：zh（中文）、en（英语）、fr（法语）、es（西班牙语）、it（意大利语）、de（德语）、ru（俄语）、pt（葡萄牙语）</li>
        # <li>ru（俄语）：zh（中文）、en（英语）、fr（法语）、es（西班牙语）、it（意大利语）、de（德语）、tr（土耳其语）、pt（葡萄牙语）</li>
        # <li>pt（葡萄牙语）：zh（中文）、en（英语）、fr（法语）、es（西班牙语）、it（意大利语）、de（德语）、tr（土耳其语）、ru（俄语）</li>
        # <li>vi（越南语）：zh（中文）、en（英语）</li>
        # <li>id（印尼语）：zh（中文）、en（英语）</li>
        # <li>th（泰语）：zh（中文）、en（英语）</li>
        # <li>ms（马来语）：zh（中文）、en（英语）</li>
        # <li>ar（阿拉伯语）：en（英语）</li>
        # <li>hi（印地语）：en（英语）</li>
        # @type Target: String
        # @param ProjectId: 项目ID，可以根据控制台-账号中心-项目管理中的配置填写，如无配置请填写默认项目ID:0
        # @type ProjectId: Integer
        # @param SourceTextList: 待翻译的文本列表，批量接口可以以数组方式在一次请求中填写多个待翻译文本。文本统一使用utf-8格式编码，非utf-8格式编码字符会翻译失败，请传入有效文本，html标记等非常规翻译文本可能会翻译失败。单次请求的文本长度总和需要低于2000字符。
        # @type SourceTextList: Array

        attr_accessor :Source, :Target, :ProjectId, :SourceTextList
        
        def initialize(source=nil, target=nil, projectid=nil, sourcetextlist=nil)
          @Source = source
          @Target = target
          @ProjectId = projectid
          @SourceTextList = sourcetextlist
        end

        def deserialize(params)
          @Source = params['Source']
          @Target = params['Target']
          @ProjectId = params['ProjectId']
          @SourceTextList = params['SourceTextList']
        end
      end

      # TextTranslateBatch返回参数结构体
      class TextTranslateBatchResponse < TencentCloud::Common::AbstractModel
        # @param Source: 源语言，详见入参Target
        # @type Source: String
        # @param Target: 目标语言，详见入参Target
        # @type Target: String
        # @param TargetTextList: 翻译后的文本列表
        # @type TargetTextList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Source, :Target, :TargetTextList, :RequestId
        
        def initialize(source=nil, target=nil, targettextlist=nil, requestid=nil)
          @Source = source
          @Target = target
          @TargetTextList = targettextlist
          @RequestId = requestid
        end

        def deserialize(params)
          @Source = params['Source']
          @Target = params['Target']
          @TargetTextList = params['TargetTextList']
          @RequestId = params['RequestId']
        end
      end

      # TextTranslate请求参数结构体
      class TextTranslateRequest < TencentCloud::Common::AbstractModel
        # @param SourceText: 待翻译的文本，文本统一使用utf-8格式编码，非utf-8格式编码字符会翻译失败，请传入有效文本，html标记等非常规翻译文本可能会翻译失败。单次请求的文本长度需要低于2000字符。
        # @type SourceText: String
        # @param Source: 源语言，支持：
        # auto：自动识别（识别为一种语言）
        # zh：简体中文
        # zh-TW：繁体中文
        # en：英语
        # ja：日语
        # ko：韩语
        # fr：法语
        # es：西班牙语
        # it：意大利语
        # de：德语
        # tr：土耳其语
        # ru：俄语
        # pt：葡萄牙语
        # vi：越南语
        # id：印尼语
        # th：泰语
        # ms：马来西亚语
        # ar：阿拉伯语
        # hi：印地语
        # @type Source: String
        # @param Target: 目标语言，各源语言的目标语言支持列表如下

        # <li> zh（简体中文）：en（英语）、ja（日语）、ko（韩语）、fr（法语）、es（西班牙语）、it（意大利语）、de（德语）、tr（土耳其语）、ru（俄语）、pt（葡萄牙语）、vi（越南语）、id（印尼语）、th（泰语）、ms（马来语）</li>
        # <li>zh-TW（繁体中文）：en（英语）、ja（日语）、ko（韩语）、fr（法语）、es（西班牙语）、it（意大利语）、de（德语）、tr（土耳其语）、ru（俄语）、pt（葡萄牙语）、vi（越南语）、id（印尼语）、th（泰语）、ms（马来语）</li>
        # <li>en（英语）：zh（中文）、ja（日语）、ko（韩语）、fr（法语）、es（西班牙语）、it（意大利语）、de（德语）、tr（土耳其语）、ru（俄语）、pt（葡萄牙语）、vi（越南语）、id（印尼语）、th（泰语）、ms（马来语）、ar（阿拉伯语）、hi（印地语）</li>
        # <li>ja（日语）：zh（中文）、en（英语）、ko（韩语）</li>
        # <li>ko（韩语）：zh（中文）、en（英语）、ja（日语）</li>
        # <li>fr（法语）：zh（中文）、en（英语）、es（西班牙语）、it（意大利语）、de（德语）、tr（土耳其语）、ru（俄语）、pt（葡萄牙语）</li>
        # <li>es（西班牙语）：zh（中文）、en（英语）、fr（法语）、it（意大利语）、de（德语）、tr（土耳其语）、ru（俄语）、pt（葡萄牙语）</li>
        # <li>it（意大利语）：zh（中文）、en（英语）、fr（法语）、es（西班牙语）、de（德语）、tr（土耳其语）、ru（俄语）、pt（葡萄牙语）</li>
        # <li>de（德语）：zh（中文）、en（英语）、fr（法语）、es（西班牙语）、it（意大利语）、tr（土耳其语）、ru（俄语）、pt（葡萄牙语）</li>
        # <li>tr（土耳其语）：zh（中文）、en（英语）、fr（法语）、es（西班牙语）、it（意大利语）、de（德语）、ru（俄语）、pt（葡萄牙语）</li>
        # <li>ru（俄语）：zh（中文）、en（英语）、fr（法语）、es（西班牙语）、it（意大利语）、de（德语）、tr（土耳其语）、pt（葡萄牙语）</li>
        # <li>pt（葡萄牙语）：zh（中文）、en（英语）、fr（法语）、es（西班牙语）、it（意大利语）、de（德语）、tr（土耳其语）、ru（俄语）</li>
        # <li>vi（越南语）：zh（中文）、en（英语）</li>
        # <li>id（印尼语）：zh（中文）、en（英语）</li>
        # <li>th（泰语）：zh（中文）、en（英语）</li>
        # <li>ms（马来语）：zh（中文）、en（英语）</li>
        # <li>ar（阿拉伯语）：en（英语）</li>
        # <li>hi（印地语）：en（英语）</li>
        # @type Target: String
        # @param ProjectId: 项目ID，可以根据控制台-账号中心-项目管理中的配置填写，如无配置请填写默认项目ID:0
        # @type ProjectId: Integer
        # @param UntranslatedText: 用来标记不希望被翻译的文本内容，如句子中的特殊符号、人名、地名等；每次请求只支持配置一个不被翻译的单词；仅支持配置人名、地名等名词，不要配置动词或短语，否则会影响翻译结果。
        # @type UntranslatedText: String

        attr_accessor :SourceText, :Source, :Target, :ProjectId, :UntranslatedText
        
        def initialize(sourcetext=nil, source=nil, target=nil, projectid=nil, untranslatedtext=nil)
          @SourceText = sourcetext
          @Source = source
          @Target = target
          @ProjectId = projectid
          @UntranslatedText = untranslatedtext
        end

        def deserialize(params)
          @SourceText = params['SourceText']
          @Source = params['Source']
          @Target = params['Target']
          @ProjectId = params['ProjectId']
          @UntranslatedText = params['UntranslatedText']
        end
      end

      # TextTranslate返回参数结构体
      class TextTranslateResponse < TencentCloud::Common::AbstractModel
        # @param TargetText: 翻译后的文本
        # @type TargetText: String
        # @param Source: 源语言，详见入参Target
        # @type Source: String
        # @param Target: 目标语言，详见入参Target
        # @type Target: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TargetText, :Source, :Target, :RequestId
        
        def initialize(targettext=nil, source=nil, target=nil, requestid=nil)
          @TargetText = targettext
          @Source = source
          @Target = target
          @RequestId = requestid
        end

        def deserialize(params)
          @TargetText = params['TargetText']
          @Source = params['Source']
          @Target = params['Target']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

