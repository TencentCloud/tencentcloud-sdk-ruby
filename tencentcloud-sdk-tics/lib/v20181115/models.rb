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
  module Tics
    module V20181115
      # DescribeDomainInfo请求参数结构体
      class DescribeDomainInfoRequest < TencentCloud::Common::AbstractModel
        # @param Key: 要查询的域名
        # @type Key: String
        # @param Option: 附加字段，是否返回上下文。当为0时不返回上下文，当为1时返回上下文。
        # @type Option: Integer

        attr_accessor :Key, :Option
        
        def initialize(key=nil, option=nil)
          @Key = key
          @Option = option
        end

        def deserialize(params)
          @Key = params['Key']
          @Option = params['Option']
        end
      end

      # DescribeDomainInfo返回参数结构体
      class DescribeDomainInfoResponse < TencentCloud::Common::AbstractModel
        # @param ReturnCode: 是否有数据，0代表有数据，1代表没有数据
        # @type ReturnCode: Integer
        # @param Result: 判定结果，如：black、white、grey
        # @type Result: String
        # @param Confidence: 置信度，取值0-100
        # @type Confidence: Integer
        # @param ThreatTypes: 威胁类型。
        # botnet = 僵尸网络
        # trojan = 木马
        # ransomware = 勒索软件
        # worm = 蠕虫
        # dga = 域名生成算法
        # c2 = c&c
        # compromised = 失陷主机
        # dynamicIP = 动态IP
        # proxy = 代理
        # idc = idc 机房
        # whitelist = 白名单
        # tor = 暗网
        # miner = 挖矿
        # maleware site = 恶意站点
        # malware IP = 恶意IP
        # 等等
        # @type ThreatTypes: Array
        # @param Tags: 恶意标签，对应的团伙，家族等信息。
        # @type Tags: Array
        # @param Intelligences: 对应的历史上的威胁情报事件
        # @type Intelligences: Array
        # @param Context: 情报相关的上下文
        # @type Context: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReturnCode, :Result, :Confidence, :ThreatTypes, :Tags, :Intelligences, :Context, :RequestId
        
        def initialize(returncode=nil, result=nil, confidence=nil, threattypes=nil, tags=nil, intelligences=nil, context=nil, requestid=nil)
          @ReturnCode = returncode
          @Result = result
          @Confidence = confidence
          @ThreatTypes = threattypes
          @Tags = tags
          @Intelligences = intelligences
          @Context = context
          @RequestId = requestid
        end

        def deserialize(params)
          @ReturnCode = params['ReturnCode']
          @Result = params['Result']
          @Confidence = params['Confidence']
          @ThreatTypes = params['ThreatTypes']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tagtype_tmp = TagType.new
              tagtype_tmp.deserialize(i)
              @Tags << tagtype_tmp
            end
          end
          unless params['Intelligences'].nil?
            @Intelligences = []
            params['Intelligences'].each do |i|
              intelligencetype_tmp = IntelligenceType.new
              intelligencetype_tmp.deserialize(i)
              @Intelligences << intelligencetype_tmp
            end
          end
          @Context = params['Context']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFileInfo请求参数结构体
      class DescribeFileInfoRequest < TencentCloud::Common::AbstractModel
        # @param Key: 要查询文件的MD5
        # @type Key: String
        # @param Option: 附加字段，是否返回上下文。当为0时不返回上下文，当为1时返回上下文。
        # @type Option: Integer

        attr_accessor :Key, :Option
        
        def initialize(key=nil, option=nil)
          @Key = key
          @Option = option
        end

        def deserialize(params)
          @Key = params['Key']
          @Option = params['Option']
        end
      end

      # DescribeFileInfo返回参数结构体
      class DescribeFileInfoResponse < TencentCloud::Common::AbstractModel
        # @param ReturnCode: 是否有数据，0代表有数据，1代表没有数据
        # @type ReturnCode: Integer
        # @param Result: 判定结果，如：black、white、grey
        # @type Result: String
        # @param Confidence: 置信度，取值0-100
        # @type Confidence: Integer
        # @param FileInfo: 文件类型，文件hash
        # （md5,sha1,sha256）,文件大小等等文件
        # 基础信息
        # @type FileInfo: Array
        # @param Tags: 恶意标签，对应的团伙，家族等信息。
        # @type Tags: Array
        # @param Intelligences: 对应的历史上的威胁情报事件
        # @type Intelligences: Array
        # @param Context: 情报相关的上下文
        # @type Context: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReturnCode, :Result, :Confidence, :FileInfo, :Tags, :Intelligences, :Context, :RequestId
        
        def initialize(returncode=nil, result=nil, confidence=nil, fileinfo=nil, tags=nil, intelligences=nil, context=nil, requestid=nil)
          @ReturnCode = returncode
          @Result = result
          @Confidence = confidence
          @FileInfo = fileinfo
          @Tags = tags
          @Intelligences = intelligences
          @Context = context
          @RequestId = requestid
        end

        def deserialize(params)
          @ReturnCode = params['ReturnCode']
          @Result = params['Result']
          @Confidence = params['Confidence']
          unless params['FileInfo'].nil?
            @FileInfo = []
            params['FileInfo'].each do |i|
              fileinfotype_tmp = FileInfoType.new
              fileinfotype_tmp.deserialize(i)
              @FileInfo << fileinfotype_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tagtype_tmp = TagType.new
              tagtype_tmp.deserialize(i)
              @Tags << tagtype_tmp
            end
          end
          unless params['Intelligences'].nil?
            @Intelligences = []
            params['Intelligences'].each do |i|
              intelligencetype_tmp = IntelligenceType.new
              intelligencetype_tmp.deserialize(i)
              @Intelligences << intelligencetype_tmp
            end
          end
          @Context = params['Context']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIpInfo请求参数结构体
      class DescribeIpInfoRequest < TencentCloud::Common::AbstractModel
        # @param Key: 要查询的IP
        # @type Key: String
        # @param Option: 附加字段，是否返回上下文。当为0时不返回上下文，当为1时返回上下文。
        # @type Option: Integer

        attr_accessor :Key, :Option
        
        def initialize(key=nil, option=nil)
          @Key = key
          @Option = option
        end

        def deserialize(params)
          @Key = params['Key']
          @Option = params['Option']
        end
      end

      # DescribeIpInfo返回参数结构体
      class DescribeIpInfoResponse < TencentCloud::Common::AbstractModel
        # @param ReturnCode: 是否有数据，0代表有数据，1代表没有数据
        # @type ReturnCode: Integer
        # @param Result: 判定结果，如：black、white、grey
        # @type Result: String
        # @param Confidence: 置信度，取值0-100
        # @type Confidence: Integer
        # @param ThreatTypes: 威胁类型。
        # botnet = 僵尸网络
        # trojan = 木马
        # ransomware = 勒索软件
        # worm = 蠕虫
        # dga = 域名生成算法
        # c2 = c&c
        # compromised = 失陷主机
        # dynamicIP = 动态IP
        # proxy = 代理
        # idc = idc 机房
        # whitelist = 白名单
        # tor = 暗网
        # miner = 挖矿
        # maleware site = 恶意站点
        # malware IP = 恶意IP
        # 等等
        # @type ThreatTypes: Array
        # @param Tags: 恶意标签，对应的团伙，家族等信息。
        # @type Tags: Array
        # @param Intelligences: 对应的历史上的威胁情报事件
        # @type Intelligences: Array
        # @param Context: 情报相关的上下文
        # @type Context: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReturnCode, :Result, :Confidence, :ThreatTypes, :Tags, :Intelligences, :Context, :RequestId
        
        def initialize(returncode=nil, result=nil, confidence=nil, threattypes=nil, tags=nil, intelligences=nil, context=nil, requestid=nil)
          @ReturnCode = returncode
          @Result = result
          @Confidence = confidence
          @ThreatTypes = threattypes
          @Tags = tags
          @Intelligences = intelligences
          @Context = context
          @RequestId = requestid
        end

        def deserialize(params)
          @ReturnCode = params['ReturnCode']
          @Result = params['Result']
          @Confidence = params['Confidence']
          @ThreatTypes = params['ThreatTypes']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tagtype_tmp = TagType.new
              tagtype_tmp.deserialize(i)
              @Tags << tagtype_tmp
            end
          end
          unless params['Intelligences'].nil?
            @Intelligences = []
            params['Intelligences'].each do |i|
              intelligencetype_tmp = IntelligenceType.new
              intelligencetype_tmp.deserialize(i)
              @Intelligences << intelligencetype_tmp
            end
          end
          @Context = params['Context']
          @RequestId = params['RequestId']
        end
      end

      # DescribeThreatInfo请求参数结构体
      class DescribeThreatInfoRequest < TencentCloud::Common::AbstractModel
        # @param Key: 查询对象，域名或IP
        # @type Key: String
        # @param Type: 查询类型，当前取值为domain或ip
        # @type Type: String
        # @param Option: 附加字段，是否返回上下文。当为0时不返回上下文，当为1时返回上下文。
        # @type Option: Integer

        attr_accessor :Key, :Type, :Option
        
        def initialize(key=nil, type=nil, option=nil)
          @Key = key
          @Type = type
          @Option = option
        end

        def deserialize(params)
          @Key = params['Key']
          @Type = params['Type']
          @Option = params['Option']
        end
      end

      # DescribeThreatInfo返回参数结构体
      class DescribeThreatInfoResponse < TencentCloud::Common::AbstractModel
        # @param ReturnCode: 是否有数据，0代表有数据，1代表没有数据
        # @type ReturnCode: Integer
        # @param Result: 判定结果，如：black、white、grey
        # @type Result: String
        # @param Confidence: 置信度，取值0-100
        # @type Confidence: Integer
        # @param ThreatTypes: 威胁类型。
        # botnet = 僵尸网络
        # trojan = 木马
        # ransomware = 勒索软件
        # worm = 蠕虫
        # dga = 域名生成算法
        # c2 = c&c
        # compromised = 失陷主机
        # dynamicIP = 动态IP
        # proxy = 代理
        # idc = idc 机房
        # whitelist = 白名单
        # tor = 暗网
        # miner = 挖矿
        # maleware site = 恶意站点
        # malware IP = 恶意IP
        # 等等
        # @type ThreatTypes: Array
        # @param Tags: 恶意标签，对应的团伙，家族等信息。
        # @type Tags: Array
        # @param Status: 当前状态
        # active = 活跃
        # sinkholed = sinkholed
        # inactive = 不活跃
        # unknown = 未知
        # expired = 过期
        # @type Status: String
        # @param Context: 情报相关的上下文，参数option=1 的时候提供
        # 每个数据默认为3 条
        # @type Context: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReturnCode, :Result, :Confidence, :ThreatTypes, :Tags, :Status, :Context, :RequestId
        
        def initialize(returncode=nil, result=nil, confidence=nil, threattypes=nil, tags=nil, status=nil, context=nil, requestid=nil)
          @ReturnCode = returncode
          @Result = result
          @Confidence = confidence
          @ThreatTypes = threattypes
          @Tags = tags
          @Status = status
          @Context = context
          @RequestId = requestid
        end

        def deserialize(params)
          @ReturnCode = params['ReturnCode']
          @Result = params['Result']
          @Confidence = params['Confidence']
          @ThreatTypes = params['ThreatTypes']
          @Tags = params['Tags']
          @Status = params['Status']
          @Context = params['Context']
          @RequestId = params['RequestId']
        end
      end

      # 文件信息类型
      class FileInfoType < TencentCloud::Common::AbstractModel
        # @param DetectId: 判定渠道
        # @type DetectId: String
        # @param DetectPriority: 检测优先级
        # @type DetectPriority: String
        # @param EnginePriority: 引擎优先级
        # @type EnginePriority: String
        # @param FileExist: 样本是否存在
        # @type FileExist: String
        # @param FileForceUpload: 文件上传
        # @type FileForceUpload: String
        # @param FileSize: 文件大小
        # @type FileSize: String
        # @param FileupTime: 文件上传时间
        # @type FileupTime: String
        # @param FullVirusName: 病毒文件全名
        # @type FullVirusName: String
        # @param IdcPosition: IDC位置
        # @type IdcPosition: String
        # @param Md5Type: 文件md5值
        # @type Md5Type: String
        # @param PeExist: PE结构是否存在
        # @type PeExist: String
        # @param PeForceUpload: PE结构上传
        # @type PeForceUpload: String
        # @param SafeLevel: 安全性等级
        # @type SafeLevel: String
        # @param ScanModiTime: 扫描时间
        # @type ScanModiTime: String
        # @param SubdetectId: 子判定渠道
        # @type SubdetectId: String
        # @param UserDefName: 病毒名
        # @type UserDefName: String
        # @param VirusType: 病毒类型
        # @type VirusType: String
        # @param WhiteScore: 白名单分数
        # @type WhiteScore: String

        attr_accessor :DetectId, :DetectPriority, :EnginePriority, :FileExist, :FileForceUpload, :FileSize, :FileupTime, :FullVirusName, :IdcPosition, :Md5Type, :PeExist, :PeForceUpload, :SafeLevel, :ScanModiTime, :SubdetectId, :UserDefName, :VirusType, :WhiteScore
        
        def initialize(detectid=nil, detectpriority=nil, enginepriority=nil, fileexist=nil, fileforceupload=nil, filesize=nil, fileuptime=nil, fullvirusname=nil, idcposition=nil, md5type=nil, peexist=nil, peforceupload=nil, safelevel=nil, scanmoditime=nil, subdetectid=nil, userdefname=nil, virustype=nil, whitescore=nil)
          @DetectId = detectid
          @DetectPriority = detectpriority
          @EnginePriority = enginepriority
          @FileExist = fileexist
          @FileForceUpload = fileforceupload
          @FileSize = filesize
          @FileupTime = fileuptime
          @FullVirusName = fullvirusname
          @IdcPosition = idcposition
          @Md5Type = md5type
          @PeExist = peexist
          @PeForceUpload = peforceupload
          @SafeLevel = safelevel
          @ScanModiTime = scanmoditime
          @SubdetectId = subdetectid
          @UserDefName = userdefname
          @VirusType = virustype
          @WhiteScore = whitescore
        end

        def deserialize(params)
          @DetectId = params['DetectId']
          @DetectPriority = params['DetectPriority']
          @EnginePriority = params['EnginePriority']
          @FileExist = params['FileExist']
          @FileForceUpload = params['FileForceUpload']
          @FileSize = params['FileSize']
          @FileupTime = params['FileupTime']
          @FullVirusName = params['FullVirusName']
          @IdcPosition = params['IdcPosition']
          @Md5Type = params['Md5Type']
          @PeExist = params['PeExist']
          @PeForceUpload = params['PeForceUpload']
          @SafeLevel = params['SafeLevel']
          @ScanModiTime = params['ScanModiTime']
          @SubdetectId = params['SubdetectId']
          @UserDefName = params['UserDefName']
          @VirusType = params['VirusType']
          @WhiteScore = params['WhiteScore']
        end
      end

      # { "source": "inergj_ai_predict", "stamp": "msraminer", "time": 1531994023 }
      class IntelligenceType < TencentCloud::Common::AbstractModel
        # @param Source: 来源
        # @type Source: String
        # @param Stamp: 标记
        # @type Stamp: String
        # @param Time: 时间
        # @type Time: Integer

        attr_accessor :Source, :Stamp, :Time
        
        def initialize(source=nil, stamp=nil, time=nil)
          @Source = source
          @Stamp = stamp
          @Time = time
        end

        def deserialize(params)
          @Source = params['Source']
          @Stamp = params['Stamp']
          @Time = params['Time']
        end
      end

      # 标签及对应的解释
      class TagType < TencentCloud::Common::AbstractModel
        # @param Tag: 标签
        # @type Tag: String
        # @param Desc: 标签对应的中文解释
        # @type Desc: String

        attr_accessor :Tag, :Desc
        
        def initialize(tag=nil, desc=nil)
          @Tag = tag
          @Desc = desc
        end

        def deserialize(params)
          @Tag = params['Tag']
          @Desc = params['Desc']
        end
      end

    end
  end
end

