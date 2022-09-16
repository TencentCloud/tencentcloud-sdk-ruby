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
  module Live
    module V20180801
      # AddDelayLiveStream请求参数结构体
      class AddDelayLiveStreamRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 推流路径，与推流和播放地址中的 AppName 保持一致，默认为 live。
        # @type AppName: String
        # @param DomainName: 推流域名。
        # @type DomainName: String
        # @param StreamName: 流名称。
        # @type StreamName: String
        # @param DelayTime: 延播时间，单位：秒，上限：600秒。
        # @type DelayTime: Integer
        # @param ExpireTime: 延播设置的过期时间。UTC 格式，例如：2018-11-29T19:00:00Z。
        # 注意：
        # 1. 默认7天后过期，且最长支持7天内生效。
        # 2. 北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type ExpireTime: String

        attr_accessor :AppName, :DomainName, :StreamName, :DelayTime, :ExpireTime
        
        def initialize(appname=nil, domainname=nil, streamname=nil, delaytime=nil, expiretime=nil)
          @AppName = appname
          @DomainName = domainname
          @StreamName = streamname
          @DelayTime = delaytime
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @AppName = params['AppName']
          @DomainName = params['DomainName']
          @StreamName = params['StreamName']
          @DelayTime = params['DelayTime']
          @ExpireTime = params['ExpireTime']
        end
      end

      # AddDelayLiveStream返回参数结构体
      class AddDelayLiveStreamResponse < TencentCloud::Common::AbstractModel
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

      # AddLiveDomain请求参数结构体
      class AddLiveDomainRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 域名名称。
        # @type DomainName: String
        # @param DomainType: 域名类型，
        # 0：推流域名，
        # 1：播放域名。
        # @type DomainType: Integer
        # @param PlayType: 拉流域名类型：
        # 1：国内，
        # 2：全球，
        # 3：境外。
        # 默认值：1。
        # @type PlayType: Integer
        # @param IsDelayLive: 是否是慢直播：
        # 0： 普通直播，
        # 1 ：慢直播 。
        # 默认值： 0。
        # @type IsDelayLive: Integer
        # @param IsMiniProgramLive: 是否是小程序直播：
        # 0： 标准直播，
        # 1 ：小程序直播 。
        # 默认值： 0。
        # @type IsMiniProgramLive: Integer
        # @param VerifyOwnerType: 域名归属校验类型。
        # 可取值（与 AuthenticateDomainOwner 接口的 VerifyType 参数一致。）：
        # dnsCheck ：立即验证配置 dns 的解析记录是否与待验证内容一致，成功则保存记录。
        # fileCheck ：立即验证 web 文件是否与待验证内容一致，成功则保存记录。
        # dbCheck :  检查是否已经验证成功过。
        # 若不传默认为 dbCheck 。
        # @type VerifyOwnerType: String

        attr_accessor :DomainName, :DomainType, :PlayType, :IsDelayLive, :IsMiniProgramLive, :VerifyOwnerType
        
        def initialize(domainname=nil, domaintype=nil, playtype=nil, isdelaylive=nil, isminiprogramlive=nil, verifyownertype=nil)
          @DomainName = domainname
          @DomainType = domaintype
          @PlayType = playtype
          @IsDelayLive = isdelaylive
          @IsMiniProgramLive = isminiprogramlive
          @VerifyOwnerType = verifyownertype
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @DomainType = params['DomainType']
          @PlayType = params['PlayType']
          @IsDelayLive = params['IsDelayLive']
          @IsMiniProgramLive = params['IsMiniProgramLive']
          @VerifyOwnerType = params['VerifyOwnerType']
        end
      end

      # AddLiveDomain返回参数结构体
      class AddLiveDomainResponse < TencentCloud::Common::AbstractModel
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

      # AddLiveWatermark请求参数结构体
      class AddLiveWatermarkRequest < TencentCloud::Common::AbstractModel
        # @param PictureUrl: 水印图片 URL。
        # URL中禁止包含的字符：
        #  ;(){}$>`#"\'|
        # @type PictureUrl: String
        # @param WatermarkName: 水印名称。
        # 最长16字节。
        # @type WatermarkName: String
        # @param XPosition: 显示位置，X轴偏移，单位是百分比，默认 0。
        # @type XPosition: Integer
        # @param YPosition: 显示位置，Y轴偏移，单位是百分比，默认 0。
        # @type YPosition: Integer
        # @param Width: 水印宽度，占直播原始画面宽度百分比，建议高宽只设置一项，另外一项会自适应缩放，避免变形。默认原始宽度。
        # @type Width: Integer
        # @param Height: 水印高度，占直播原始画面高度百分比，建议高宽只设置一项，另外一项会自适应缩放，避免变形。默认原始高度。
        # @type Height: Integer

        attr_accessor :PictureUrl, :WatermarkName, :XPosition, :YPosition, :Width, :Height
        
        def initialize(pictureurl=nil, watermarkname=nil, xposition=nil, yposition=nil, width=nil, height=nil)
          @PictureUrl = pictureurl
          @WatermarkName = watermarkname
          @XPosition = xposition
          @YPosition = yposition
          @Width = width
          @Height = height
        end

        def deserialize(params)
          @PictureUrl = params['PictureUrl']
          @WatermarkName = params['WatermarkName']
          @XPosition = params['XPosition']
          @YPosition = params['YPosition']
          @Width = params['Width']
          @Height = params['Height']
        end
      end

      # AddLiveWatermark返回参数结构体
      class AddLiveWatermarkResponse < TencentCloud::Common::AbstractModel
        # @param WatermarkId: 水印ID。
        # @type WatermarkId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WatermarkId, :RequestId
        
        def initialize(watermarkid=nil, requestid=nil)
          @WatermarkId = watermarkid
          @RequestId = requestid
        end

        def deserialize(params)
          @WatermarkId = params['WatermarkId']
          @RequestId = params['RequestId']
        end
      end

      # AuthenticateDomainOwner请求参数结构体
      class AuthenticateDomainOwnerRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 要验证的域名。
        # @type DomainName: String
        # @param VerifyType: 验证类型。可取值：
        # dnsCheck ：立即验证配置 dns 的解析记录是否与待验证内容一致，成功则保存记录。
        # fileCheck ：立即验证 web 文件是否与待验证内容一致，成功则保存记录。
        # dbCheck :  检查是否已经验证成功过。
        # @type VerifyType: String

        attr_accessor :DomainName, :VerifyType
        
        def initialize(domainname=nil, verifytype=nil)
          @DomainName = domainname
          @VerifyType = verifytype
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @VerifyType = params['VerifyType']
        end
      end

      # AuthenticateDomainOwner返回参数结构体
      class AuthenticateDomainOwnerResponse < TencentCloud::Common::AbstractModel
        # @param Content: 验证内容。
        # VerifyType 传 dnsCheck 时，为要配的 TXT 记录值。
        # VerifyType 传 fileCheck 时，为文件内容。
        # @type Content: String
        # @param Status: 域名验证状态。
        # >=0 为已验证归属。
        # <0 未验证归属权。
        # @type Status: Integer
        # @param MainDomain: DomainName 对应的主域名。
        # 同一主域名下的所有域名只需成功验证一次，后续均无需再验证。
        # @type MainDomain: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Content, :Status, :MainDomain, :RequestId
        
        def initialize(content=nil, status=nil, maindomain=nil, requestid=nil)
          @Content = content
          @Status = status
          @MainDomain = maindomain
          @RequestId = requestid
        end

        def deserialize(params)
          @Content = params['Content']
          @Status = params['Status']
          @MainDomain = params['MainDomain']
          @RequestId = params['RequestId']
        end
      end

      # 带宽信息
      class BandwidthInfo < TencentCloud::Common::AbstractModel
        # @param Time: 返回格式：
        # yyyy-mm-dd HH:MM:SS
        # 根据粒度会有不同程度的缩减。
        # @type Time: String
        # @param Bandwidth: 带宽。
        # @type Bandwidth: Float

        attr_accessor :Time, :Bandwidth
        
        def initialize(time=nil, bandwidth=nil)
          @Time = time
          @Bandwidth = bandwidth
        end

        def deserialize(params)
          @Time = params['Time']
          @Bandwidth = params['Bandwidth']
        end
      end

      # 批量操作域名相关接口，若其中个别域名操作失败将会跳过，相应的域名错误信息将统一汇总在此类型中
      class BatchDomainOperateErrors < TencentCloud::Common::AbstractModel
        # @param DomainName: 操作失败的域名。
        # @type DomainName: String
        # @param Code: API3.0错误码。
        # @type Code: String
        # @param Message: API3.0错误信息。
        # @type Message: String

        attr_accessor :DomainName, :Code, :Message
        
        def initialize(domainname=nil, code=nil, message=nil)
          @DomainName = domainname
          @Code = code
          @Message = message
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @Code = params['Code']
          @Message = params['Message']
        end
      end

      # 海外分区直播带宽出参，分区信息
      class BillAreaInfo < TencentCloud::Common::AbstractModel
        # @param Name: 大区名称。
        # @type Name: String
        # @param Countrys: 国家或地区明细数据。
        # @type Countrys: Array

        attr_accessor :Name, :Countrys
        
        def initialize(name=nil, countrys=nil)
          @Name = name
          @Countrys = countrys
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['Countrys'].nil?
            @Countrys = []
            params['Countrys'].each do |i|
              billcountryinfo_tmp = BillCountryInfo.new
              billcountryinfo_tmp.deserialize(i)
              @Countrys << billcountryinfo_tmp
            end
          end
        end
      end

      # 海外分区直播带宽出参国家带宽信息
      class BillCountryInfo < TencentCloud::Common::AbstractModel
        # @param Name: 国家名称
        # @type Name: String
        # @param BandInfoList: 带宽明细数据信息。
        # @type BandInfoList: Array

        attr_accessor :Name, :BandInfoList
        
        def initialize(name=nil, bandinfolist=nil)
          @Name = name
          @BandInfoList = bandinfolist
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['BandInfoList'].nil?
            @BandInfoList = []
            params['BandInfoList'].each do |i|
              billdatainfo_tmp = BillDataInfo.new
              billdatainfo_tmp.deserialize(i)
              @BandInfoList << billdatainfo_tmp
            end
          end
        end
      end

      # 带宽和流量信息。
      class BillDataInfo < TencentCloud::Common::AbstractModel
        # @param Time: 时间点，格式: yyyy-mm-dd HH:MM:SS。
        # @type Time: String
        # @param Bandwidth: 带宽，单位是 Mbps。
        # @type Bandwidth: Float
        # @param Flux: 流量，单位是 MB。
        # @type Flux: Float
        # @param PeakTime: 峰值时间点，格式: yyyy-mm-dd HH:MM:SS，原始数据为5分钟粒度，如果查询小时和天粒度数据，则返回对应粒度内的带宽峰值时间点。
        # @type PeakTime: String

        attr_accessor :Time, :Bandwidth, :Flux, :PeakTime
        
        def initialize(time=nil, bandwidth=nil, flux=nil, peaktime=nil)
          @Time = time
          @Bandwidth = bandwidth
          @Flux = flux
          @PeakTime = peaktime
        end

        def deserialize(params)
          @Time = params['Time']
          @Bandwidth = params['Bandwidth']
          @Flux = params['Flux']
          @PeakTime = params['PeakTime']
        end
      end

      # 规则信息
      class CallBackRuleInfo < TencentCloud::Common::AbstractModel
        # @param CreateTime: 规则创建时间。
        # @type CreateTime: String
        # @param UpdateTime: 规则更新时间。
        # @type UpdateTime: String
        # @param TemplateId: 模板 ID。
        # @type TemplateId: Integer
        # @param DomainName: 推流域名。
        # @type DomainName: String
        # @param AppName: 推流路径。
        # @type AppName: String

        attr_accessor :CreateTime, :UpdateTime, :TemplateId, :DomainName, :AppName
        
        def initialize(createtime=nil, updatetime=nil, templateid=nil, domainname=nil, appname=nil)
          @CreateTime = createtime
          @UpdateTime = updatetime
          @TemplateId = templateid
          @DomainName = domainname
          @AppName = appname
        end

        def deserialize(params)
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @TemplateId = params['TemplateId']
          @DomainName = params['DomainName']
          @AppName = params['AppName']
        end
      end

      # 回调模板信息。
      class CallBackTemplateInfo < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板 ID。
        # @type TemplateId: Integer
        # @param TemplateName: 模板名称。
        # @type TemplateName: String
        # @param Description: 描述信息。
        # @type Description: String
        # @param StreamBeginNotifyUrl: 开播回调 URL。
        # @type StreamBeginNotifyUrl: String
        # @param StreamMixNotifyUrl: 混流回调 URL。(参数已弃用)。
        # @type StreamMixNotifyUrl: String
        # @param StreamEndNotifyUrl: 断流回调 URL。
        # @type StreamEndNotifyUrl: String
        # @param RecordNotifyUrl: 录制回调 URL。
        # @type RecordNotifyUrl: String
        # @param SnapshotNotifyUrl: 截图回调 URL。
        # @type SnapshotNotifyUrl: String
        # @param PornCensorshipNotifyUrl: 鉴黄回调 URL。
        # @type PornCensorshipNotifyUrl: String
        # @param CallbackKey: 回调的鉴权 key。
        # @type CallbackKey: String

        attr_accessor :TemplateId, :TemplateName, :Description, :StreamBeginNotifyUrl, :StreamMixNotifyUrl, :StreamEndNotifyUrl, :RecordNotifyUrl, :SnapshotNotifyUrl, :PornCensorshipNotifyUrl, :CallbackKey
        
        def initialize(templateid=nil, templatename=nil, description=nil, streambeginnotifyurl=nil, streammixnotifyurl=nil, streamendnotifyurl=nil, recordnotifyurl=nil, snapshotnotifyurl=nil, porncensorshipnotifyurl=nil, callbackkey=nil)
          @TemplateId = templateid
          @TemplateName = templatename
          @Description = description
          @StreamBeginNotifyUrl = streambeginnotifyurl
          @StreamMixNotifyUrl = streammixnotifyurl
          @StreamEndNotifyUrl = streamendnotifyurl
          @RecordNotifyUrl = recordnotifyurl
          @SnapshotNotifyUrl = snapshotnotifyurl
          @PornCensorshipNotifyUrl = porncensorshipnotifyurl
          @CallbackKey = callbackkey
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
          @Description = params['Description']
          @StreamBeginNotifyUrl = params['StreamBeginNotifyUrl']
          @StreamMixNotifyUrl = params['StreamMixNotifyUrl']
          @StreamEndNotifyUrl = params['StreamEndNotifyUrl']
          @RecordNotifyUrl = params['RecordNotifyUrl']
          @SnapshotNotifyUrl = params['SnapshotNotifyUrl']
          @PornCensorshipNotifyUrl = params['PornCensorshipNotifyUrl']
          @CallbackKey = params['CallbackKey']
        end
      end

      # 回调事件信息
      class CallbackEventInfo < TencentCloud::Common::AbstractModel
        # @param EventTime: 事件时间
        # @type EventTime: String
        # @param EventType: 事件类型
        # @type EventType: Integer
        # @param Request: 回调请求
        # @type Request: String
        # @param Response: 回调响应
        # @type Response: String
        # @param ResponseTime: 客户接口响应时间
        # @type ResponseTime: String
        # @param ResultCode: 回调结果
        # @type ResultCode: Integer
        # @param StreamId: 流名称
        # @type StreamId: String

        attr_accessor :EventTime, :EventType, :Request, :Response, :ResponseTime, :ResultCode, :StreamId
        
        def initialize(eventtime=nil, eventtype=nil, request=nil, response=nil, responsetime=nil, resultcode=nil, streamid=nil)
          @EventTime = eventtime
          @EventType = eventtype
          @Request = request
          @Response = response
          @ResponseTime = responsetime
          @ResultCode = resultcode
          @StreamId = streamid
        end

        def deserialize(params)
          @EventTime = params['EventTime']
          @EventType = params['EventType']
          @Request = params['Request']
          @Response = params['Response']
          @ResponseTime = params['ResponseTime']
          @ResultCode = params['ResultCode']
          @StreamId = params['StreamId']
        end
      end

      # CancelCommonMixStream请求参数结构体
      class CancelCommonMixStreamRequest < TencentCloud::Common::AbstractModel
        # @param MixStreamSessionId: 混流会话（申请混流开始到取消混流结束）标识 ID。
        # 该值与CreateCommonMixStream中的MixStreamSessionId保持一致。
        # @type MixStreamSessionId: String

        attr_accessor :MixStreamSessionId
        
        def initialize(mixstreamsessionid=nil)
          @MixStreamSessionId = mixstreamsessionid
        end

        def deserialize(params)
          @MixStreamSessionId = params['MixStreamSessionId']
        end
      end

      # CancelCommonMixStream返回参数结构体
      class CancelCommonMixStreamResponse < TencentCloud::Common::AbstractModel
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

      # 下行播放统计指标
      class CdnPlayStatData < TencentCloud::Common::AbstractModel
        # @param Time: 时间点，格式: yyyy-mm-dd HH:MM:SS。
        # @type Time: String
        # @param Bandwidth: 带宽，单位: Mbps。
        # @type Bandwidth: Float
        # @param Flux: 流量，单位: MB。
        # @type Flux: Float
        # @param Request: 新增请求数。
        # @type Request: Integer
        # @param Online: 并发连接数。
        # @type Online: Integer

        attr_accessor :Time, :Bandwidth, :Flux, :Request, :Online
        
        def initialize(time=nil, bandwidth=nil, flux=nil, request=nil, online=nil)
          @Time = time
          @Bandwidth = bandwidth
          @Flux = flux
          @Request = request
          @Online = online
        end

        def deserialize(params)
          @Time = params['Time']
          @Bandwidth = params['Bandwidth']
          @Flux = params['Flux']
          @Request = params['Request']
          @Online = params['Online']
        end
      end

      # 证书信息。
      class CertInfo < TencentCloud::Common::AbstractModel
        # @param CertId: 证书 ID。
        # @type CertId: Integer
        # @param CertName: 证书名称。
        # @type CertName: String
        # @param Description: 描述信息。
        # @type Description: String
        # @param CreateTime: 创建时间，UTC 格式。
        # @type CreateTime: String
        # @param HttpsCrt: 证书内容。
        # @type HttpsCrt: String
        # @param CertType: 证书类型。
        # 0：用户添加证书，
        # 1：腾讯云托管证书。
        # @type CertType: Integer
        # @param CertExpireTime: 证书过期时间，UTC 格式。
        # @type CertExpireTime: String
        # @param DomainList: 使用此证书的域名列表。
        # @type DomainList: Array

        attr_accessor :CertId, :CertName, :Description, :CreateTime, :HttpsCrt, :CertType, :CertExpireTime, :DomainList
        
        def initialize(certid=nil, certname=nil, description=nil, createtime=nil, httpscrt=nil, certtype=nil, certexpiretime=nil, domainlist=nil)
          @CertId = certid
          @CertName = certname
          @Description = description
          @CreateTime = createtime
          @HttpsCrt = httpscrt
          @CertType = certtype
          @CertExpireTime = certexpiretime
          @DomainList = domainlist
        end

        def deserialize(params)
          @CertId = params['CertId']
          @CertName = params['CertName']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @HttpsCrt = params['HttpsCrt']
          @CertType = params['CertType']
          @CertExpireTime = params['CertExpireTime']
          @DomainList = params['DomainList']
        end
      end

      # 客户端ip播放汇总信息。
      class ClientIpPlaySumInfo < TencentCloud::Common::AbstractModel
        # @param ClientIp: 客户端 IP，点分型。
        # @type ClientIp: String
        # @param Province: 客户端所在省份。
        # @type Province: String
        # @param TotalFlux: 总流量。
        # @type TotalFlux: Float
        # @param TotalRequest: 总请求数。
        # @type TotalRequest: Integer
        # @param TotalFailedRequest: 总失败请求数。
        # @type TotalFailedRequest: Integer
        # @param CountryArea: 客户端所在国家。
        # @type CountryArea: String

        attr_accessor :ClientIp, :Province, :TotalFlux, :TotalRequest, :TotalFailedRequest, :CountryArea
        
        def initialize(clientip=nil, province=nil, totalflux=nil, totalrequest=nil, totalfailedrequest=nil, countryarea=nil)
          @ClientIp = clientip
          @Province = province
          @TotalFlux = totalflux
          @TotalRequest = totalrequest
          @TotalFailedRequest = totalfailedrequest
          @CountryArea = countryarea
        end

        def deserialize(params)
          @ClientIp = params['ClientIp']
          @Province = params['Province']
          @TotalFlux = params['TotalFlux']
          @TotalRequest = params['TotalRequest']
          @TotalFailedRequest = params['TotalFailedRequest']
          @CountryArea = params['CountryArea']
        end
      end

      # 通用混流控制参数
      class CommonMixControlParams < TencentCloud::Common::AbstractModel
        # @param UseMixCropCenter: 取值范围[0,1]。
        # 填1时，当参数中图层分辨率参数与视频实际分辨率不一致时，自动从视频中按图层设置的分辨率比例进行裁剪。
        # @type UseMixCropCenter: Integer
        # @param AllowCopy: 取值范围[0,1]
        # 填1时，当InputStreamList中个数为1时，且OutputParams.OutputStreamType为1时，不执行取消操作，执行拷贝流操作
        # @type AllowCopy: Integer
        # @param PassInputSei: 取值范围[0,1]
        # 填1时，透传原始流的sei
        # @type PassInputSei: Integer

        attr_accessor :UseMixCropCenter, :AllowCopy, :PassInputSei
        
        def initialize(usemixcropcenter=nil, allowcopy=nil, passinputsei=nil)
          @UseMixCropCenter = usemixcropcenter
          @AllowCopy = allowcopy
          @PassInputSei = passinputsei
        end

        def deserialize(params)
          @UseMixCropCenter = params['UseMixCropCenter']
          @AllowCopy = params['AllowCopy']
          @PassInputSei = params['PassInputSei']
        end
      end

      # 通用混流输入裁剪参数。
      class CommonMixCropParams < TencentCloud::Common::AbstractModel
        # @param CropWidth: 裁剪的宽度。取值范围[0，2000]。
        # @type CropWidth: Float
        # @param CropHeight: 裁剪的高度。取值范围[0，2000]。
        # @type CropHeight: Float
        # @param CropStartLocationX: 裁剪的起始X坐标。取值范围[0，2000]。
        # @type CropStartLocationX: Float
        # @param CropStartLocationY: 裁剪的起始Y坐标。取值范围[0，2000]。
        # @type CropStartLocationY: Float

        attr_accessor :CropWidth, :CropHeight, :CropStartLocationX, :CropStartLocationY
        
        def initialize(cropwidth=nil, cropheight=nil, cropstartlocationx=nil, cropstartlocationy=nil)
          @CropWidth = cropwidth
          @CropHeight = cropheight
          @CropStartLocationX = cropstartlocationx
          @CropStartLocationY = cropstartlocationy
        end

        def deserialize(params)
          @CropWidth = params['CropWidth']
          @CropHeight = params['CropHeight']
          @CropStartLocationX = params['CropStartLocationX']
          @CropStartLocationY = params['CropStartLocationY']
        end
      end

      # 通用混流输入参数。
      class CommonMixInputParam < TencentCloud::Common::AbstractModel
        # @param InputStreamName: 输入流名称。80字节以内，仅含字母、数字以及下划线的字符串。
        # 当LayoutParams.InputType=0(音视频)/4(纯音频)/5(纯视频)时，该值为需要混流的流名称。
        # 当LayoutParams.InputType=2(图片)/3(画布)时，该值仅用作标识输入，可用类似Canvas1、Pictrue1的名称。
        # @type InputStreamName: String
        # @param LayoutParams: 输入流布局参数。
        # @type LayoutParams: :class:`Tencentcloud::Live.v20180801.models.CommonMixLayoutParams`
        # @param CropParams: 输入流裁剪参数。
        # @type CropParams: :class:`Tencentcloud::Live.v20180801.models.CommonMixCropParams`

        attr_accessor :InputStreamName, :LayoutParams, :CropParams
        
        def initialize(inputstreamname=nil, layoutparams=nil, cropparams=nil)
          @InputStreamName = inputstreamname
          @LayoutParams = layoutparams
          @CropParams = cropparams
        end

        def deserialize(params)
          @InputStreamName = params['InputStreamName']
          unless params['LayoutParams'].nil?
            @LayoutParams = CommonMixLayoutParams.new
            @LayoutParams.deserialize(params['LayoutParams'])
          end
          unless params['CropParams'].nil?
            @CropParams = CommonMixCropParams.new
            @CropParams.deserialize(params['CropParams'])
          end
        end
      end

      # 通用混流布局参数。
      class CommonMixLayoutParams < TencentCloud::Common::AbstractModel
        # @param ImageLayer: 输入图层。取值范围[1，16]。
        # 1)背景流（即大主播画面或画布）的 image_layer 填1。
        # 2)纯音频混流，该参数也需填。
        # 注意：不同输入，该值不可重复
        # @type ImageLayer: Integer
        # @param InputType: 输入类型。取值范围[0，5]。
        # 不填默认为0。
        # 0表示输入流为音视频。
        # 2表示输入流为图片。
        # 3表示输入流为画布。
        # 4表示输入流为音频。
        # 5表示输入流为纯视频。
        # @type InputType: Integer
        # @param ImageHeight: 输入画面在输出时的高度。取值范围：
        # 像素：[0，2000]
        # 百分比：[0.01，0.99]
        # 不填默认为输入流的高度。
        # 使用百分比时，期望输出为（百分比 * 背景高）。
        # @type ImageHeight: Float
        # @param ImageWidth: 输入画面在输出时的宽度。取值范围：
        # 像素：[0，2000]
        # 百分比：[0.01，0.99]
        # 不填默认为输入流的宽度。
        # 使用百分比时，期望输出为（百分比 * 背景宽）。
        # @type ImageWidth: Float
        # @param LocationX: 输入在输出画面的X偏移。取值范围：
        # 像素：[0，2000]
        # 百分比：[0.01，0.99]
        # 不填默认为0。
        # 相对于大主播背景画面左上角的横向偏移。
        # 使用百分比时，期望输出为（百分比 * 背景宽）。
        # @type LocationX: Float
        # @param LocationY: 输入在输出画面的Y偏移。取值范围：
        # 像素：[0，2000]
        # 百分比：[0.01，0.99]
        # 不填默认为0。
        # 相对于大主播背景画面左上角的纵向偏移。
        # 使用百分比时，期望输出为（百分比 * 背景宽）
        # @type LocationY: Float
        # @param Color: 当InputType为3(画布)时，该值表示画布的颜色。
        # 常用的颜色有：
        # 红色：0xcc0033。
        # 黄色：0xcc9900。
        # 绿色：0xcccc33。
        # 蓝色：0x99CCFF。
        # 黑色：0x000000。
        # 白色：0xFFFFFF。
        # 灰色：0x999999。
        # @type Color: String
        # @param WatermarkId: 当InputType为2(图片)时，该值是水印ID。
        # @type WatermarkId: Integer

        attr_accessor :ImageLayer, :InputType, :ImageHeight, :ImageWidth, :LocationX, :LocationY, :Color, :WatermarkId
        
        def initialize(imagelayer=nil, inputtype=nil, imageheight=nil, imagewidth=nil, locationx=nil, locationy=nil, color=nil, watermarkid=nil)
          @ImageLayer = imagelayer
          @InputType = inputtype
          @ImageHeight = imageheight
          @ImageWidth = imagewidth
          @LocationX = locationx
          @LocationY = locationy
          @Color = color
          @WatermarkId = watermarkid
        end

        def deserialize(params)
          @ImageLayer = params['ImageLayer']
          @InputType = params['InputType']
          @ImageHeight = params['ImageHeight']
          @ImageWidth = params['ImageWidth']
          @LocationX = params['LocationX']
          @LocationY = params['LocationY']
          @Color = params['Color']
          @WatermarkId = params['WatermarkId']
        end
      end

      # 通用混流输出参数。
      class CommonMixOutputParams < TencentCloud::Common::AbstractModel
        # @param OutputStreamName: 输出流名称。
        # @type OutputStreamName: String
        # @param OutputStreamType: 输出流类型，取值范围[0,1]。
        # 不填默认为0。
        # 当输出流为输入流 list 中的一条时，填写0。
        # 当期望生成的混流结果成为一条新流时，该值填为1。
        # 该值为1时，output_stream_id 不能出现在 input_stram_list 中，且直播后台中，不能存在相同 ID 的流。
        # @type OutputStreamType: Integer
        # @param OutputStreamBitRate: 输出流比特率。取值范围[1，50000]。
        # 不填的情况下，系统会自动判断。
        # @type OutputStreamBitRate: Integer
        # @param OutputStreamGop: 输出流GOP大小。取值范围[1,10]。
        # 不填的情况下，系统会自动判断。
        # @type OutputStreamGop: Integer
        # @param OutputStreamFrameRate: 输出流帧率大小。取值范围[1,60]。
        # 不填的情况下，系统会自动判断。
        # @type OutputStreamFrameRate: Integer
        # @param OutputAudioBitRate: 输出流音频比特率。取值范围[1,500]
        # 不填的情况下，系统会自动判断。
        # @type OutputAudioBitRate: Integer
        # @param OutputAudioSampleRate: 输出流音频采样率。取值范围[96000, 88200, 64000, 48000, 44100, 32000,24000, 22050, 16000, 12000, 11025, 8000]。
        # 不填的情况下，系统会自动判断。
        # @type OutputAudioSampleRate: Integer
        # @param OutputAudioChannels: 输出流音频声道数。取值范围[1,2]。
        # 不填的情况下，系统会自动判断。
        # @type OutputAudioChannels: Integer
        # @param MixSei: 输出流中的sei信息。如果无特殊需要，不填。
        # @type MixSei: String

        attr_accessor :OutputStreamName, :OutputStreamType, :OutputStreamBitRate, :OutputStreamGop, :OutputStreamFrameRate, :OutputAudioBitRate, :OutputAudioSampleRate, :OutputAudioChannels, :MixSei
        
        def initialize(outputstreamname=nil, outputstreamtype=nil, outputstreambitrate=nil, outputstreamgop=nil, outputstreamframerate=nil, outputaudiobitrate=nil, outputaudiosamplerate=nil, outputaudiochannels=nil, mixsei=nil)
          @OutputStreamName = outputstreamname
          @OutputStreamType = outputstreamtype
          @OutputStreamBitRate = outputstreambitrate
          @OutputStreamGop = outputstreamgop
          @OutputStreamFrameRate = outputstreamframerate
          @OutputAudioBitRate = outputaudiobitrate
          @OutputAudioSampleRate = outputaudiosamplerate
          @OutputAudioChannels = outputaudiochannels
          @MixSei = mixsei
        end

        def deserialize(params)
          @OutputStreamName = params['OutputStreamName']
          @OutputStreamType = params['OutputStreamType']
          @OutputStreamBitRate = params['OutputStreamBitRate']
          @OutputStreamGop = params['OutputStreamGop']
          @OutputStreamFrameRate = params['OutputStreamFrameRate']
          @OutputAudioBitRate = params['OutputAudioBitRate']
          @OutputAudioSampleRate = params['OutputAudioSampleRate']
          @OutputAudioChannels = params['OutputAudioChannels']
          @MixSei = params['MixSei']
        end
      end

      # 并发录制路数
      class ConcurrentRecordStreamNum < TencentCloud::Common::AbstractModel
        # @param Time: 时间点。
        # @type Time: String
        # @param Num: 路数。
        # @type Num: Integer

        attr_accessor :Time, :Num
        
        def initialize(time=nil, num=nil)
          @Time = time
          @Num = num
        end

        def deserialize(params)
          @Time = params['Time']
          @Num = params['Num']
        end
      end

      # CreateCommonMixStream请求参数结构体
      class CreateCommonMixStreamRequest < TencentCloud::Common::AbstractModel
        # @param MixStreamSessionId: 混流会话（申请混流开始到取消混流结束）标识 ID。80字节以内，仅含字母、数字以及下划线的字符串。
        # @type MixStreamSessionId: String
        # @param InputStreamList: 混流输入流列表。
        # @type InputStreamList: Array
        # @param OutputParams: 混流输出流参数。
        # @type OutputParams: :class:`Tencentcloud::Live.v20180801.models.CommonMixOutputParams`
        # @param MixStreamTemplateId: 输入模板 ID，若设置该参数，将按默认模板布局输出，无需填入自定义位置参数。
        # 不填默认为0。
        # 两输入源支持10，20，30，40，50。
        # 三输入源支持310，390，391。
        # 四输入源支持410。
        # 五输入源支持510，590。
        # 六输入源支持610。
        # @type MixStreamTemplateId: Integer
        # @param ControlParams: 混流的特殊控制参数。如无特殊需求，无需填写。
        # @type ControlParams: :class:`Tencentcloud::Live.v20180801.models.CommonMixControlParams`

        attr_accessor :MixStreamSessionId, :InputStreamList, :OutputParams, :MixStreamTemplateId, :ControlParams
        
        def initialize(mixstreamsessionid=nil, inputstreamlist=nil, outputparams=nil, mixstreamtemplateid=nil, controlparams=nil)
          @MixStreamSessionId = mixstreamsessionid
          @InputStreamList = inputstreamlist
          @OutputParams = outputparams
          @MixStreamTemplateId = mixstreamtemplateid
          @ControlParams = controlparams
        end

        def deserialize(params)
          @MixStreamSessionId = params['MixStreamSessionId']
          unless params['InputStreamList'].nil?
            @InputStreamList = []
            params['InputStreamList'].each do |i|
              commonmixinputparam_tmp = CommonMixInputParam.new
              commonmixinputparam_tmp.deserialize(i)
              @InputStreamList << commonmixinputparam_tmp
            end
          end
          unless params['OutputParams'].nil?
            @OutputParams = CommonMixOutputParams.new
            @OutputParams.deserialize(params['OutputParams'])
          end
          @MixStreamTemplateId = params['MixStreamTemplateId']
          unless params['ControlParams'].nil?
            @ControlParams = CommonMixControlParams.new
            @ControlParams.deserialize(params['ControlParams'])
          end
        end
      end

      # CreateCommonMixStream返回参数结构体
      class CreateCommonMixStreamResponse < TencentCloud::Common::AbstractModel
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

      # CreateLiveCallbackRule请求参数结构体
      class CreateLiveCallbackRuleRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 推流域名。
        # @type DomainName: String
        # @param AppName: 推流路径，与推流和播放地址中的AppName保持一致，默认为live。
        # @type AppName: String
        # @param TemplateId: 模板ID。
        # @type TemplateId: Integer

        attr_accessor :DomainName, :AppName, :TemplateId
        
        def initialize(domainname=nil, appname=nil, templateid=nil)
          @DomainName = domainname
          @AppName = appname
          @TemplateId = templateid
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @AppName = params['AppName']
          @TemplateId = params['TemplateId']
        end
      end

      # CreateLiveCallbackRule返回参数结构体
      class CreateLiveCallbackRuleResponse < TencentCloud::Common::AbstractModel
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

      # CreateLiveCallbackTemplate请求参数结构体
      class CreateLiveCallbackTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateName: 模板名称。
        # 长度上限：255字节。
        # 仅支持中文、英文、数字、_、-。
        # @type TemplateName: String
        # @param Description: 描述信息。
        # 长度上限：1024字节。
        # 仅支持中文、英文、数字、_、-。
        # @type Description: String
        # @param StreamBeginNotifyUrl: 开播回调 URL，
        # 相关协议文档：[事件消息通知](/document/product/267/32744)。
        # @type StreamBeginNotifyUrl: String
        # @param StreamEndNotifyUrl: 断流回调 URL，
        # 相关协议文档：[事件消息通知](/document/product/267/32744)。
        # @type StreamEndNotifyUrl: String
        # @param RecordNotifyUrl: 录制回调 URL，
        # 相关协议文档：[事件消息通知](/document/product/267/32744)。
        # @type RecordNotifyUrl: String
        # @param SnapshotNotifyUrl: 截图回调 URL，
        # 相关协议文档：[事件消息通知](/document/product/267/32744)。
        # @type SnapshotNotifyUrl: String
        # @param PornCensorshipNotifyUrl: 鉴黄回调 URL，
        # 相关协议文档：[事件消息通知](/document/product/267/32741)。
        # @type PornCensorshipNotifyUrl: String
        # @param CallbackKey: 回调 Key，回调 URL 公用，回调签名详见事件消息通知文档。
        # [事件消息通知](/document/product/267/32744)。
        # @type CallbackKey: String
        # @param StreamMixNotifyUrl: 参数已弃用。
        # @type StreamMixNotifyUrl: String

        attr_accessor :TemplateName, :Description, :StreamBeginNotifyUrl, :StreamEndNotifyUrl, :RecordNotifyUrl, :SnapshotNotifyUrl, :PornCensorshipNotifyUrl, :CallbackKey, :StreamMixNotifyUrl
        
        def initialize(templatename=nil, description=nil, streambeginnotifyurl=nil, streamendnotifyurl=nil, recordnotifyurl=nil, snapshotnotifyurl=nil, porncensorshipnotifyurl=nil, callbackkey=nil, streammixnotifyurl=nil)
          @TemplateName = templatename
          @Description = description
          @StreamBeginNotifyUrl = streambeginnotifyurl
          @StreamEndNotifyUrl = streamendnotifyurl
          @RecordNotifyUrl = recordnotifyurl
          @SnapshotNotifyUrl = snapshotnotifyurl
          @PornCensorshipNotifyUrl = porncensorshipnotifyurl
          @CallbackKey = callbackkey
          @StreamMixNotifyUrl = streammixnotifyurl
        end

        def deserialize(params)
          @TemplateName = params['TemplateName']
          @Description = params['Description']
          @StreamBeginNotifyUrl = params['StreamBeginNotifyUrl']
          @StreamEndNotifyUrl = params['StreamEndNotifyUrl']
          @RecordNotifyUrl = params['RecordNotifyUrl']
          @SnapshotNotifyUrl = params['SnapshotNotifyUrl']
          @PornCensorshipNotifyUrl = params['PornCensorshipNotifyUrl']
          @CallbackKey = params['CallbackKey']
          @StreamMixNotifyUrl = params['StreamMixNotifyUrl']
        end
      end

      # CreateLiveCallbackTemplate返回参数结构体
      class CreateLiveCallbackTemplateResponse < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID。
        # @type TemplateId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TemplateId, :RequestId
        
        def initialize(templateid=nil, requestid=nil)
          @TemplateId = templateid
          @RequestId = requestid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @RequestId = params['RequestId']
        end
      end

      # CreateLivePullStreamTask请求参数结构体
      class CreateLivePullStreamTaskRequest < TencentCloud::Common::AbstractModel
        # @param SourceType: 拉流源的类型：
        # PullLivePushLive -直播，
        # PullVodPushLive -点播。
        # @type SourceType: String
        # @param SourceUrls: 拉流源 url 列表。
        # SourceType 为直播（PullLivePushLive）只可以填1个，
        # SourceType 为点播（PullVodPushLive）可以填多个，上限30个。
        # 当前支持的文件格式：flv，mp4，hls。
        # 当前支持的拉流协议：http，https，rtmp，rtmps，rtsp，srt。
        # 注意：
        # 1. 建议优先使用 flv 文件，对于 mp4 未交织好的文件轮播推流易产生卡顿，可通过点播转码进行重新交织后再轮播。
        # 2. 拒绝内网域名等攻击性拉流地址，如有使用，则做账号封禁处理。
        # 3. 源文件请保持时间戳正常交织递增，避免因源文件异常影响推流及播放。
        # 4. 视频编码格式仅支持: H264, H265。
        # 5. 音频编码格式仅支持: AAC。
        # 6. 点播源请使用小文件，尽量时长保持在1小时内，较大文件打开和续播耗时较久，耗时超过15秒会有无法正常转推风险。
        # @type SourceUrls: Array
        # @param DomainName: 推流域名。
        # 将拉取过来的流推到该域名。
        # 注意：如果目标地址为非云直播，且样式不同于云直播，请使用 ToUrl 传入完整推流地址，详细用法请参考 ToUrl 参数说明。
        # @type DomainName: String
        # @param AppName: 推流路径。
        # 将拉取过来的流推到该路径。
        # @type AppName: String
        # @param StreamName: 推流名称。
        # 将拉取过来的流推到该流名称。
        # @type StreamName: String
        # @param StartTime: 开始时间。
        # 使用 UTC 格式时间，
        # 例如：2019-01-08T10:00:00Z。
        # 注意：北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type StartTime: String
        # @param EndTime: 结束时间，注意：
        # 1. 结束时间必须大于开始时间；
        # 2. 结束时间和开始时间必须大于当前时间；
        # 3. 结束时间 和 开始时间 间隔必须小于七天。
        # 使用 UTC 格式时间，
        # 例如：2019-01-08T10:00:00Z。
        # 注意：北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type EndTime: String
        # @param Operator: 任务操作人备注。
        # @type Operator: String
        # @param PushArgs: 推流参数。
        # 推流时携带自定义参数。
        # 示例：
        # bak=1&test=2 。
        # @type PushArgs: String
        # @param CallbackEvents: 选择需要回调的事件（不填则回调全部）：
        # TaskStart：任务启动回调，
        # TaskExit：任务停止回调，
        # VodSourceFileStart：从点播源文件开始拉流回调，
        # VodSourceFileFinish：从点播源文件拉流结束回调，
        # ResetTaskConfig：任务更新回调。

        # TaskAlarm: 用于告警事件通知，AlarmType 示例:
        # PullFileUnstable - 文件拉取不稳定，
        # PushStreamUnstable - 推流不稳定，
        # PullFileFailed - 文件拉取出错，
        # PushStreamFailed - 推流出现失败，
        # FileEndEarly - 文件提前结束。
        # @type CallbackEvents: Array
        # @param VodLoopTimes: 点播拉流转推循环次数。默认：-1。
        # -1：无限循环，直到任务结束。
        # 0：不循环。
        # >0：具体循环次数。次数和时间以先结束的为准。
        # 注意：该配置仅对拉流源为点播时生效。
        # @type VodLoopTimes: String
        # @param VodRefreshType: 点播更新SourceUrls后的播放方式：
        # ImmediateNewSource：立即播放新的拉流源内容；
        # ContinueBreakPoint：播放完当前正在播放的点播 url 后再使用新的拉流源播放。（旧拉流源未播放的点播 url 不会再播放）

        # 注意：该配置生效仅对变更前拉流源为点播时生效。
        # @type VodRefreshType: String
        # @param CallbackUrl: 自定义回调地址。
        # 拉流转推任务相关事件会回调到该地址。
        # @type CallbackUrl: String
        # @param ExtraCmd: 其他参数。
        # 示例: ignore_region  用于忽略传入地域, 内部按负载分配。
        # @type ExtraCmd: String
        # @param Comment: 任务描述，限制 512 字节。
        # @type Comment: String
        # @param ToUrl: 完整目标 URL 地址。
        # 用法注意：如果使用该参数来传完整目标地址，则 DomainName, AppName, StreamName 需要传入空字符串，任务将会使用该 ToUrl 参数指定的目标地址。

        # 注意：签名时间需要超过任务结束时间，避免因签名过期造成任务失败。
        # @type ToUrl: String
        # @param BackupSourceType: 备源的类型：
        # PullLivePushLive -直播，
        # PullVodPushLive -点播。
        # 注意：
        # 1. 仅当主源类型为直播源时，备源才会生效。
        # 2. 主直播源拉流中断时，自动使用备源进行拉流。
        # 3. 如果备源为点播文件时，则每次轮播完点播文件就检查主源是否恢复，如果主源恢复则自动切回到主源，否则继续拉备源。
        # @type BackupSourceType: String
        # @param BackupSourceUrl: 备源 URL。
        # 只允许填一个备源 URL
        # @type BackupSourceUrl: String
        # @param WatermarkList: 水印信息列表。
        # 注意：
        # 1. 最多支持4个不同位置的水印。
        # 2. 水印图片 URL 请使用合法外网可访问地址。
        # 3. 支持的水印图片格式：png，jpg，gif 等。
        # @type WatermarkList: Array

        attr_accessor :SourceType, :SourceUrls, :DomainName, :AppName, :StreamName, :StartTime, :EndTime, :Operator, :PushArgs, :CallbackEvents, :VodLoopTimes, :VodRefreshType, :CallbackUrl, :ExtraCmd, :Comment, :ToUrl, :BackupSourceType, :BackupSourceUrl, :WatermarkList
        
        def initialize(sourcetype=nil, sourceurls=nil, domainname=nil, appname=nil, streamname=nil, starttime=nil, endtime=nil, operator=nil, pushargs=nil, callbackevents=nil, vodlooptimes=nil, vodrefreshtype=nil, callbackurl=nil, extracmd=nil, comment=nil, tourl=nil, backupsourcetype=nil, backupsourceurl=nil, watermarklist=nil)
          @SourceType = sourcetype
          @SourceUrls = sourceurls
          @DomainName = domainname
          @AppName = appname
          @StreamName = streamname
          @StartTime = starttime
          @EndTime = endtime
          @Operator = operator
          @PushArgs = pushargs
          @CallbackEvents = callbackevents
          @VodLoopTimes = vodlooptimes
          @VodRefreshType = vodrefreshtype
          @CallbackUrl = callbackurl
          @ExtraCmd = extracmd
          @Comment = comment
          @ToUrl = tourl
          @BackupSourceType = backupsourcetype
          @BackupSourceUrl = backupsourceurl
          @WatermarkList = watermarklist
        end

        def deserialize(params)
          @SourceType = params['SourceType']
          @SourceUrls = params['SourceUrls']
          @DomainName = params['DomainName']
          @AppName = params['AppName']
          @StreamName = params['StreamName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Operator = params['Operator']
          @PushArgs = params['PushArgs']
          @CallbackEvents = params['CallbackEvents']
          @VodLoopTimes = params['VodLoopTimes']
          @VodRefreshType = params['VodRefreshType']
          @CallbackUrl = params['CallbackUrl']
          @ExtraCmd = params['ExtraCmd']
          @Comment = params['Comment']
          @ToUrl = params['ToUrl']
          @BackupSourceType = params['BackupSourceType']
          @BackupSourceUrl = params['BackupSourceUrl']
          unless params['WatermarkList'].nil?
            @WatermarkList = []
            params['WatermarkList'].each do |i|
              pullpushwatermarkinfo_tmp = PullPushWatermarkInfo.new
              pullpushwatermarkinfo_tmp.deserialize(i)
              @WatermarkList << pullpushwatermarkinfo_tmp
            end
          end
        end
      end

      # CreateLivePullStreamTask返回参数结构体
      class CreateLivePullStreamTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 Id 。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # CreateLiveRecord请求参数结构体
      class CreateLiveRecordRequest < TencentCloud::Common::AbstractModel
        # @param StreamName: 流名称。
        # @type StreamName: String
        # @param AppName: 推流路径，与推流和播放地址中的 AppName保持一致，默认为 live。
        # @type AppName: String
        # @param DomainName: 推流域名。多域名推流必须设置。
        # @type DomainName: String
        # @param StartTime: 录制开始时间。中国标准时间，需要 URLEncode(rfc3986)。如 2017-01-01 10:10:01，编码为：2017-01-01+10%3a10%3a01。
        # 定时录制模式，必须设置该字段；实时视频录制模式，忽略该字段。
        # @type StartTime: String
        # @param EndTime: 录制结束时间。中国标准时间，需要 URLEncode(rfc3986)。如 2017-01-01 10:30:01，编码为：2017-01-01+10%3a30%3a01。
        # 定时录制模式，必须设置该字段；实时录制模式，为可选字段。如果通过Highlight参数，设置录制为实时视频录制模式，其设置的结束时间不应超过当前时间+30分钟，如果设置的结束时间超过当前时间+30分钟或者小于当前时间或者不设置该参数，则实际结束时间为当前时间+30分钟。
        # @type EndTime: String
        # @param RecordType: 录制类型。
        # “video” : 音视频录制【默认】。
        # “audio” : 纯音频录制。
        # 在定时录制模式或实时视频录制模式下，该参数均有效，不区分大小写。
        # @type RecordType: String
        # @param FileFormat: 录制文件格式。其值为：
        # “flv”【默认】,“hls”,”mp4”,“aac”,”mp3”。
        # 在定时录制模式或实时视频录制模式下，该参数均有效，不区分大小写。
        # @type FileFormat: String
        # @param Highlight: 开启实时视频录制模式标志。
        # 0：不开启实时视频录制模式，即定时录制模式【默认】。见[示例一](#.E7.A4.BA.E4.BE.8B1-.E5.88.9B.E5.BB.BA.E5.AE.9A.E6.97.B6.E5.BD.95.E5.88.B6.E4.BB.BB.E5.8A.A1)。
        # 1：开启实时视频录制模式。见[示例二](#.E7.A4.BA.E4.BE.8B2-.E5.88.9B.E5.BB.BA.E5.AE.9E.E6.97.B6.E5.BD.95.E5.88.B6.E4.BB.BB.E5.8A.A1)。
        # @type Highlight: Integer
        # @param MixStream: 开启 A+B=C混流C流录制标志。
        # 0：不开启 A+B=C混流C流录制【默认】。
        # 1：开启 A+B=C混流C流录制。
        # 在定时录制模式或实时视频录制模式下，该参数均有效。
        # @type MixStream: Integer
        # @param StreamParam: 录制流参数。当前支持以下参数：
        # record_interval - 录制分片时长，单位 秒，1800 - 7200。
        # storage_time - 录制文件存储时长，单位 秒。
        # eg. record_interval=3600&storage_time=2592000。
        # 注：参数需要url encode。
        # 在定时录制模式或实时视频录制模式下，该参数均有效。
        # @type StreamParam: String

        attr_accessor :StreamName, :AppName, :DomainName, :StartTime, :EndTime, :RecordType, :FileFormat, :Highlight, :MixStream, :StreamParam
        
        def initialize(streamname=nil, appname=nil, domainname=nil, starttime=nil, endtime=nil, recordtype=nil, fileformat=nil, highlight=nil, mixstream=nil, streamparam=nil)
          @StreamName = streamname
          @AppName = appname
          @DomainName = domainname
          @StartTime = starttime
          @EndTime = endtime
          @RecordType = recordtype
          @FileFormat = fileformat
          @Highlight = highlight
          @MixStream = mixstream
          @StreamParam = streamparam
        end

        def deserialize(params)
          @StreamName = params['StreamName']
          @AppName = params['AppName']
          @DomainName = params['DomainName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @RecordType = params['RecordType']
          @FileFormat = params['FileFormat']
          @Highlight = params['Highlight']
          @MixStream = params['MixStream']
          @StreamParam = params['StreamParam']
        end
      end

      # CreateLiveRecord返回参数结构体
      class CreateLiveRecordResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID，全局唯一标识录制任务。
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # CreateLiveRecordRule请求参数结构体
      class CreateLiveRecordRuleRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 推流域名。
        # @type DomainName: String
        # @param TemplateId: 模板 ID。
        # @type TemplateId: Integer
        # @param AppName: 推流路径，与推流和播放地址中的AppName保持一致，默认为 live。
        # @type AppName: String
        # @param StreamName: 流名称。
        # 注：如果本参数设置为非空字符串，规则将只对此推流起作用。
        # @type StreamName: String

        attr_accessor :DomainName, :TemplateId, :AppName, :StreamName
        
        def initialize(domainname=nil, templateid=nil, appname=nil, streamname=nil)
          @DomainName = domainname
          @TemplateId = templateid
          @AppName = appname
          @StreamName = streamname
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @TemplateId = params['TemplateId']
          @AppName = params['AppName']
          @StreamName = params['StreamName']
        end
      end

      # CreateLiveRecordRule返回参数结构体
      class CreateLiveRecordRuleResponse < TencentCloud::Common::AbstractModel
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

      # CreateLiveRecordTemplate请求参数结构体
      class CreateLiveRecordTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateName: 模板名。仅支持中文、英文、数字、_、-。
        # @type TemplateName: String
        # @param Description: 描述信息。
        # @type Description: String
        # @param FlvParam: Flv录制参数，开启Flv录制时设置。
        # @type FlvParam: :class:`Tencentcloud::Live.v20180801.models.RecordParam`
        # @param HlsParam: Hls录制参数，开启hls录制时设置。
        # @type HlsParam: :class:`Tencentcloud::Live.v20180801.models.RecordParam`
        # @param Mp4Param: Mp4录制参数，开启Mp4录制时设置。
        # @type Mp4Param: :class:`Tencentcloud::Live.v20180801.models.RecordParam`
        # @param AacParam: Aac录制参数，开启Aac录制时设置。
        # @type AacParam: :class:`Tencentcloud::Live.v20180801.models.RecordParam`
        # @param IsDelayLive: 直播类型，默认 0。
        # 0：普通直播，
        # 1：慢直播。
        # @type IsDelayLive: Integer
        # @param HlsSpecialParam: HLS专属录制参数。
        # @type HlsSpecialParam: :class:`Tencentcloud::Live.v20180801.models.HlsSpecialParam`
        # @param Mp3Param: Mp3录制参数，开启Mp3录制时设置。
        # @type Mp3Param: :class:`Tencentcloud::Live.v20180801.models.RecordParam`
        # @param RemoveWatermark: 是否去除水印，类型为慢直播时此参数无效。
        # @type RemoveWatermark: Boolean
        # @param FlvSpecialParam: FLV 录制特殊参数。
        # @type FlvSpecialParam: :class:`Tencentcloud::Live.v20180801.models.FlvSpecialParam`

        attr_accessor :TemplateName, :Description, :FlvParam, :HlsParam, :Mp4Param, :AacParam, :IsDelayLive, :HlsSpecialParam, :Mp3Param, :RemoveWatermark, :FlvSpecialParam
        
        def initialize(templatename=nil, description=nil, flvparam=nil, hlsparam=nil, mp4param=nil, aacparam=nil, isdelaylive=nil, hlsspecialparam=nil, mp3param=nil, removewatermark=nil, flvspecialparam=nil)
          @TemplateName = templatename
          @Description = description
          @FlvParam = flvparam
          @HlsParam = hlsparam
          @Mp4Param = mp4param
          @AacParam = aacparam
          @IsDelayLive = isdelaylive
          @HlsSpecialParam = hlsspecialparam
          @Mp3Param = mp3param
          @RemoveWatermark = removewatermark
          @FlvSpecialParam = flvspecialparam
        end

        def deserialize(params)
          @TemplateName = params['TemplateName']
          @Description = params['Description']
          unless params['FlvParam'].nil?
            @FlvParam = RecordParam.new
            @FlvParam.deserialize(params['FlvParam'])
          end
          unless params['HlsParam'].nil?
            @HlsParam = RecordParam.new
            @HlsParam.deserialize(params['HlsParam'])
          end
          unless params['Mp4Param'].nil?
            @Mp4Param = RecordParam.new
            @Mp4Param.deserialize(params['Mp4Param'])
          end
          unless params['AacParam'].nil?
            @AacParam = RecordParam.new
            @AacParam.deserialize(params['AacParam'])
          end
          @IsDelayLive = params['IsDelayLive']
          unless params['HlsSpecialParam'].nil?
            @HlsSpecialParam = HlsSpecialParam.new
            @HlsSpecialParam.deserialize(params['HlsSpecialParam'])
          end
          unless params['Mp3Param'].nil?
            @Mp3Param = RecordParam.new
            @Mp3Param.deserialize(params['Mp3Param'])
          end
          @RemoveWatermark = params['RemoveWatermark']
          unless params['FlvSpecialParam'].nil?
            @FlvSpecialParam = FlvSpecialParam.new
            @FlvSpecialParam.deserialize(params['FlvSpecialParam'])
          end
        end
      end

      # CreateLiveRecordTemplate返回参数结构体
      class CreateLiveRecordTemplateResponse < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板Id。
        # @type TemplateId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TemplateId, :RequestId
        
        def initialize(templateid=nil, requestid=nil)
          @TemplateId = templateid
          @RequestId = requestid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @RequestId = params['RequestId']
        end
      end

      # CreateLiveSnapshotRule请求参数结构体
      class CreateLiveSnapshotRuleRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 推流域名。
        # @type DomainName: String
        # @param TemplateId: 模板 ID。
        # @type TemplateId: Integer
        # @param AppName: 推流路径，与推流和播放地址中的 AppName 保持一致，默认为 live。
        # @type AppName: String
        # @param StreamName: 流名称。
        # 注：如果本参数设置为非空字符串，规则将只对此推流起作用。
        # @type StreamName: String

        attr_accessor :DomainName, :TemplateId, :AppName, :StreamName
        
        def initialize(domainname=nil, templateid=nil, appname=nil, streamname=nil)
          @DomainName = domainname
          @TemplateId = templateid
          @AppName = appname
          @StreamName = streamname
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @TemplateId = params['TemplateId']
          @AppName = params['AppName']
          @StreamName = params['StreamName']
        end
      end

      # CreateLiveSnapshotRule返回参数结构体
      class CreateLiveSnapshotRuleResponse < TencentCloud::Common::AbstractModel
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

      # CreateLiveSnapshotTemplate请求参数结构体
      class CreateLiveSnapshotTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateName: 模板名称。
        # 长度上限：255字节。
        # 仅支持中文、英文、数字、_、-。
        # @type TemplateName: String
        # @param CosAppId: Cos 应用 ID。
        # @type CosAppId: Integer
        # @param CosBucket: Cos Bucket名称。
        # 注：CosBucket参数值不能包含-[appid] 部分。
        # @type CosBucket: String
        # @param CosRegion: Cos地区。
        # @type CosRegion: String
        # @param Description: 描述信息。
        # 长度上限：1024字节。
        # 仅支持中文、英文、数字、_、-。
        # @type Description: String
        # @param SnapshotInterval: 截图间隔，单位s，默认10s。
        # 范围： 2s ~ 300s。
        # @type SnapshotInterval: Integer
        # @param Width: 截图宽度。默认：0（原始宽）。
        # 范围：0-3000 。
        # @type Width: Integer
        # @param Height: 截图高度。默认：0（原始高）。
        # 范围：0-2000 。
        # @type Height: Integer
        # @param PornFlag: 是否开启鉴黄，0：不开启，1：开启。默认：0。
        # @type PornFlag: Integer
        # @param CosPrefix: Cos Bucket文件夹前缀。
        # 如不传，实际按默认值
        # /{Year}-{Month}-{Day}
        # 生效
        # @type CosPrefix: String
        # @param CosFileName: Cos 文件名称。
        # 如不传，实际按默认值
        # {StreamID}-screenshot-{Hour}-{Minute}-{Second}-{Width}x{Height}{Ext}
        # 生效
        # @type CosFileName: String

        attr_accessor :TemplateName, :CosAppId, :CosBucket, :CosRegion, :Description, :SnapshotInterval, :Width, :Height, :PornFlag, :CosPrefix, :CosFileName
        
        def initialize(templatename=nil, cosappid=nil, cosbucket=nil, cosregion=nil, description=nil, snapshotinterval=nil, width=nil, height=nil, pornflag=nil, cosprefix=nil, cosfilename=nil)
          @TemplateName = templatename
          @CosAppId = cosappid
          @CosBucket = cosbucket
          @CosRegion = cosregion
          @Description = description
          @SnapshotInterval = snapshotinterval
          @Width = width
          @Height = height
          @PornFlag = pornflag
          @CosPrefix = cosprefix
          @CosFileName = cosfilename
        end

        def deserialize(params)
          @TemplateName = params['TemplateName']
          @CosAppId = params['CosAppId']
          @CosBucket = params['CosBucket']
          @CosRegion = params['CosRegion']
          @Description = params['Description']
          @SnapshotInterval = params['SnapshotInterval']
          @Width = params['Width']
          @Height = params['Height']
          @PornFlag = params['PornFlag']
          @CosPrefix = params['CosPrefix']
          @CosFileName = params['CosFileName']
        end
      end

      # CreateLiveSnapshotTemplate返回参数结构体
      class CreateLiveSnapshotTemplateResponse < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板Id。
        # @type TemplateId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TemplateId, :RequestId
        
        def initialize(templateid=nil, requestid=nil)
          @TemplateId = templateid
          @RequestId = requestid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @RequestId = params['RequestId']
        end
      end

      # CreateLiveTranscodeRule请求参数结构体
      class CreateLiveTranscodeRuleRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 播放域名。
        # @type DomainName: String
        # @param AppName: 推流路径，与推流和播放地址中的AppName保持一致。如果只绑定域名，则此处填空。
        # @type AppName: String
        # @param StreamName: 流名称。如果只绑定域名或路径，则此处填空。
        # @type StreamName: String
        # @param TemplateId: 指定已有的模板Id。
        # @type TemplateId: Integer

        attr_accessor :DomainName, :AppName, :StreamName, :TemplateId
        
        def initialize(domainname=nil, appname=nil, streamname=nil, templateid=nil)
          @DomainName = domainname
          @AppName = appname
          @StreamName = streamname
          @TemplateId = templateid
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @AppName = params['AppName']
          @StreamName = params['StreamName']
          @TemplateId = params['TemplateId']
        end
      end

      # CreateLiveTranscodeRule返回参数结构体
      class CreateLiveTranscodeRuleResponse < TencentCloud::Common::AbstractModel
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

      # CreateLiveTranscodeTemplate请求参数结构体
      class CreateLiveTranscodeTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateName: 模板名称，例： 900p 仅支持字母和数字的组合。
        # 长度限制：
        #   标准转码：1-10个字符
        #   极速高清转码：3-10个字符
        # @type TemplateName: String
        # @param VideoBitrate: 视频码率。范围：0kbps - 8000kbps。
        # 0为保持原始码率。
        # 注: 转码模板有码率唯一要求，最终保存的码率可能与输入码率有所差别。
        # @type VideoBitrate: Integer
        # @param Acodec: 音频编码：aac，默认aac。
        # 注意：当前该参数未生效，待后续支持！
        # @type Acodec: String
        # @param AudioBitrate: 音频码率，默认0。
        # 范围：0-500。
        # @type AudioBitrate: Integer
        # @param Vcodec: 视频编码：h264/h265/origin，默认origin。

        # origin: 保持原始编码格式
        # @type Vcodec: String
        # @param Description: 模板描述。
        # @type Description: String
        # @param NeedVideo: 是否保留视频，0：否，1：是。默认1。
        # @type NeedVideo: Integer
        # @param Width: 宽，默认0。
        # 范围[0-3000]
        # 数值必须是2的倍数，0是原始宽度
        # @type Width: Integer
        # @param NeedAudio: 是否保留音频，0：否，1：是。默认1。
        # @type NeedAudio: Integer
        # @param Height: 高，默认0。
        # 范围[0-3000]
        # 数值必须是2的倍数，0是原始高度。
        # 极速高清模板（AiTransCode = 1 的时候）必须传。
        # @type Height: Integer
        # @param Fps: 帧率，默认0。
        # 范围0-60fps
        # @type Fps: Integer
        # @param Gop: 关键帧间隔，单位：秒。
        # 默认原始的间隔
        # 范围2-6
        # @type Gop: Integer
        # @param Rotate: 旋转角度，默认0。
        # 可取值：0，90，180，270
        # @type Rotate: Integer
        # @param Profile: 编码质量：
        # baseline/main/high。默认baseline
        # @type Profile: String
        # @param BitrateToOrig: 当设置的码率>原始码率时，是否以原始码率为准。
        # 0：否， 1：是
        # 默认 0。
        # @type BitrateToOrig: Integer
        # @param HeightToOrig: 当设置的高度>原始高度时，是否以原始高度为准。
        # 0：否， 1：是
        # 默认 0。
        # @type HeightToOrig: Integer
        # @param FpsToOrig: 当设置的帧率>原始帧率时，是否以原始帧率为准。
        # 0：否， 1：是
        # 默认 0。
        # @type FpsToOrig: Integer
        # @param AiTransCode: 是否是极速高清模板，0：否，1：是。默认0。
        # @type AiTransCode: Integer
        # @param AdaptBitratePercent: 极速高清视频码率压缩比。
        # 极速高清目标码率=VideoBitrate * (1-AdaptBitratePercent)

        # 取值范围：0.0到0.5
        # @type AdaptBitratePercent: Float
        # @param ShortEdgeAsHeight: 是否以短边作为高度，0：否，1：是。默认0。
        # @type ShortEdgeAsHeight: Integer
        # @param DRMType: DRM 加密类型，可选值：fairplay、normalaes、widevine。
        # 不传递或着为空字符串，清空之前的DRM配置。
        # @type DRMType: String
        # @param DRMTracks: DRM 加密项，可选值：AUDIO、SD、HD、UHD1、UHD2，后四个为一组，同组中的内容只能选一个。
        # 不传递或着为空字符串，清空之前的DRM配置。
        # @type DRMTracks: String

        attr_accessor :TemplateName, :VideoBitrate, :Acodec, :AudioBitrate, :Vcodec, :Description, :NeedVideo, :Width, :NeedAudio, :Height, :Fps, :Gop, :Rotate, :Profile, :BitrateToOrig, :HeightToOrig, :FpsToOrig, :AiTransCode, :AdaptBitratePercent, :ShortEdgeAsHeight, :DRMType, :DRMTracks
        
        def initialize(templatename=nil, videobitrate=nil, acodec=nil, audiobitrate=nil, vcodec=nil, description=nil, needvideo=nil, width=nil, needaudio=nil, height=nil, fps=nil, gop=nil, rotate=nil, profile=nil, bitratetoorig=nil, heighttoorig=nil, fpstoorig=nil, aitranscode=nil, adaptbitratepercent=nil, shortedgeasheight=nil, drmtype=nil, drmtracks=nil)
          @TemplateName = templatename
          @VideoBitrate = videobitrate
          @Acodec = acodec
          @AudioBitrate = audiobitrate
          @Vcodec = vcodec
          @Description = description
          @NeedVideo = needvideo
          @Width = width
          @NeedAudio = needaudio
          @Height = height
          @Fps = fps
          @Gop = gop
          @Rotate = rotate
          @Profile = profile
          @BitrateToOrig = bitratetoorig
          @HeightToOrig = heighttoorig
          @FpsToOrig = fpstoorig
          @AiTransCode = aitranscode
          @AdaptBitratePercent = adaptbitratepercent
          @ShortEdgeAsHeight = shortedgeasheight
          @DRMType = drmtype
          @DRMTracks = drmtracks
        end

        def deserialize(params)
          @TemplateName = params['TemplateName']
          @VideoBitrate = params['VideoBitrate']
          @Acodec = params['Acodec']
          @AudioBitrate = params['AudioBitrate']
          @Vcodec = params['Vcodec']
          @Description = params['Description']
          @NeedVideo = params['NeedVideo']
          @Width = params['Width']
          @NeedAudio = params['NeedAudio']
          @Height = params['Height']
          @Fps = params['Fps']
          @Gop = params['Gop']
          @Rotate = params['Rotate']
          @Profile = params['Profile']
          @BitrateToOrig = params['BitrateToOrig']
          @HeightToOrig = params['HeightToOrig']
          @FpsToOrig = params['FpsToOrig']
          @AiTransCode = params['AiTransCode']
          @AdaptBitratePercent = params['AdaptBitratePercent']
          @ShortEdgeAsHeight = params['ShortEdgeAsHeight']
          @DRMType = params['DRMType']
          @DRMTracks = params['DRMTracks']
        end
      end

      # CreateLiveTranscodeTemplate返回参数结构体
      class CreateLiveTranscodeTemplateResponse < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板Id。
        # @type TemplateId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TemplateId, :RequestId
        
        def initialize(templateid=nil, requestid=nil)
          @TemplateId = templateid
          @RequestId = requestid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @RequestId = params['RequestId']
        end
      end

      # CreateLiveWatermarkRule请求参数结构体
      class CreateLiveWatermarkRuleRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 推流域名。
        # @type DomainName: String
        # @param AppName: 推流路径，与推流和播放地址中的AppName保持一致，默认为live。
        # @type AppName: String
        # @param StreamName: 流名称。
        # @type StreamName: String
        # @param TemplateId: 水印Id，即调用[AddLiveWatermark](/document/product/267/30154)接口返回的WatermarkId。
        # @type TemplateId: Integer

        attr_accessor :DomainName, :AppName, :StreamName, :TemplateId
        
        def initialize(domainname=nil, appname=nil, streamname=nil, templateid=nil)
          @DomainName = domainname
          @AppName = appname
          @StreamName = streamname
          @TemplateId = templateid
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @AppName = params['AppName']
          @StreamName = params['StreamName']
          @TemplateId = params['TemplateId']
        end
      end

      # CreateLiveWatermarkRule返回参数结构体
      class CreateLiveWatermarkRuleResponse < TencentCloud::Common::AbstractModel
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

      # CreatePullStreamConfig请求参数结构体
      class CreatePullStreamConfigRequest < TencentCloud::Common::AbstractModel
        # @param FromUrl: 源 Url ，用于拉流的地址。目前可支持直播流及点播文件。
        # 注意：
        # 1. 多个点播url之间使用空格拼接。
        # 2. 目前上限支持10个url。
        # 3. 支持拉流文件格式：flv，rtmp，hls，mp4。
        # @type FromUrl: String
        # @param ToUrl: 目的 Url ，用于推流的地址，目前限制该目标地址为腾讯域名。
        # 仅支持：rtmp 协议。
        # @type ToUrl: String
        # @param AreaId: 选择完成转拉推的服务所在区域:
        # 1-深圳，
        # 2-上海，
        # 3-天津，
        # 4-中国香港。
        # @type AreaId: Integer
        # @param IspId: 选择完成转拉推服务使用的运营商网络：
        # 1-电信，
        # 2-移动，
        # 3-联通，
        # 4-其他。
        # 注：AreaId 为4的时候，IspId 只能为其他。
        # @type IspId: Integer
        # @param StartTime: 开始时间。
        # 使用 UTC 格式时间，
        # 例如：2019-01-08T10:00:00Z。
        # 注意：北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type StartTime: String
        # @param EndTime: 结束时间，注意：
        # 1. 结束时间必须大于开始时间；
        # 2. 结束时间和开始时间必须大于当前时间；
        # 3. 结束时间 和 开始时间 间隔必须小于七天。
        # 使用 UTC 格式时间，
        # 例如：2019-01-08T10:00:00Z。
        # 注意：北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type EndTime: String

        attr_accessor :FromUrl, :ToUrl, :AreaId, :IspId, :StartTime, :EndTime
        
        def initialize(fromurl=nil, tourl=nil, areaid=nil, ispid=nil, starttime=nil, endtime=nil)
          @FromUrl = fromurl
          @ToUrl = tourl
          @AreaId = areaid
          @IspId = ispid
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @FromUrl = params['FromUrl']
          @ToUrl = params['ToUrl']
          @AreaId = params['AreaId']
          @IspId = params['IspId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # CreatePullStreamConfig返回参数结构体
      class CreatePullStreamConfigResponse < TencentCloud::Common::AbstractModel
        # @param ConfigId: 配置成功后的 ID。
        # @type ConfigId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConfigId, :RequestId
        
        def initialize(configid=nil, requestid=nil)
          @ConfigId = configid
          @RequestId = requestid
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
          @RequestId = params['RequestId']
        end
      end

      # CreateRecordTask请求参数结构体
      class CreateRecordTaskRequest < TencentCloud::Common::AbstractModel
        # @param StreamName: 流名称。
        # @type StreamName: String
        # @param DomainName: 推流域名。
        # @type DomainName: String
        # @param AppName: 推流路径。
        # @type AppName: String
        # @param EndTime: 录制任务结束时间，Unix时间戳。设置时间必须大于StartTime及当前时间，且EndTime - StartTime不能超过24小时。
        # @type EndTime: Integer
        # @param StartTime: 录制任务开始时间，Unix时间戳。如果不填表示立即启动录制。StartTime不能超过当前时间+6天。
        # @type StartTime: Integer
        # @param StreamType: 推流类型，默认0。取值：
        # 0-直播推流。
        # 1-合成流，即 A+B=C 类型混流。
        # @type StreamType: Integer
        # @param TemplateId: 录制模板ID，CreateLiveRecordTemplate 返回值。如果不填或者传入错误ID，则默认录制HLS格式、永久存储。
        # @type TemplateId: Integer
        # @param Extension: 扩展字段，暂无定义。默认为空。
        # @type Extension: String

        attr_accessor :StreamName, :DomainName, :AppName, :EndTime, :StartTime, :StreamType, :TemplateId, :Extension
        
        def initialize(streamname=nil, domainname=nil, appname=nil, endtime=nil, starttime=nil, streamtype=nil, templateid=nil, extension=nil)
          @StreamName = streamname
          @DomainName = domainname
          @AppName = appname
          @EndTime = endtime
          @StartTime = starttime
          @StreamType = streamtype
          @TemplateId = templateid
          @Extension = extension
        end

        def deserialize(params)
          @StreamName = params['StreamName']
          @DomainName = params['DomainName']
          @AppName = params['AppName']
          @EndTime = params['EndTime']
          @StartTime = params['StartTime']
          @StreamType = params['StreamType']
          @TemplateId = params['TemplateId']
          @Extension = params['Extension']
        end
      end

      # CreateRecordTask返回参数结构体
      class CreateRecordTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID，全局唯一标识录制任务。返回TaskId字段说明录制任务创建成功。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # CreateScreenshotTask请求参数结构体
      class CreateScreenshotTaskRequest < TencentCloud::Common::AbstractModel
        # @param StreamName: 流名称。
        # @type StreamName: String
        # @param DomainName: 推流域名。
        # @type DomainName: String
        # @param AppName: 推流路径。
        # @type AppName: String
        # @param EndTime: 截图任务结束时间，Unix时间戳。设置时间必须大于StartTime及当前时间，且EndTime - StartTime不能超过24小时。
        # @type EndTime: Integer
        # @param TemplateId: 截图模板ID，CreateLiveSnapshotTemplate 返回值。如果传入错误ID，则不拉起截图。
        # @type TemplateId: Integer
        # @param StartTime: 截图任务开始时间，Unix时间戳。如果不填表示立即启动截图。StartTime不能超过当前时间+6天。
        # @type StartTime: Integer
        # @param StreamType: 推流类型，默认0。取值：
        # 0-直播推流。
        # 1-合成流，即 A+B=C 类型混流。
        # @type StreamType: Integer
        # @param Extension: 扩展字段，暂无定义。默认为空。
        # @type Extension: String

        attr_accessor :StreamName, :DomainName, :AppName, :EndTime, :TemplateId, :StartTime, :StreamType, :Extension
        
        def initialize(streamname=nil, domainname=nil, appname=nil, endtime=nil, templateid=nil, starttime=nil, streamtype=nil, extension=nil)
          @StreamName = streamname
          @DomainName = domainname
          @AppName = appname
          @EndTime = endtime
          @TemplateId = templateid
          @StartTime = starttime
          @StreamType = streamtype
          @Extension = extension
        end

        def deserialize(params)
          @StreamName = params['StreamName']
          @DomainName = params['DomainName']
          @AppName = params['AppName']
          @EndTime = params['EndTime']
          @TemplateId = params['TemplateId']
          @StartTime = params['StartTime']
          @StreamType = params['StreamType']
          @Extension = params['Extension']
        end
      end

      # CreateScreenshotTask返回参数结构体
      class CreateScreenshotTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID，全局唯一标识截图任务。返回TaskId字段说明截图任务创建成功。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 流播放信息
      class DayStreamPlayInfo < TencentCloud::Common::AbstractModel
        # @param Time: 数据时间点，格式：yyyy-mm-dd HH:MM:SS。
        # @type Time: String
        # @param Bandwidth: 带宽（单位Mbps）。
        # @type Bandwidth: Float
        # @param Flux: 流量 （单位MB）。
        # @type Flux: Float
        # @param Request: 请求数。
        # @type Request: Integer
        # @param Online: 在线人数。
        # @type Online: Integer

        attr_accessor :Time, :Bandwidth, :Flux, :Request, :Online
        
        def initialize(time=nil, bandwidth=nil, flux=nil, request=nil, online=nil)
          @Time = time
          @Bandwidth = bandwidth
          @Flux = flux
          @Request = request
          @Online = online
        end

        def deserialize(params)
          @Time = params['Time']
          @Bandwidth = params['Bandwidth']
          @Flux = params['Flux']
          @Request = params['Request']
          @Online = params['Online']
        end
      end

      # 延播信息。
      class DelayInfo < TencentCloud::Common::AbstractModel
        # @param DomainName: 推流域名。
        # @type DomainName: String
        # @param AppName: 推流路径，与推流和播放地址中的
        #  AppName 保持一致，默认为 live。
        # @type AppName: String
        # @param StreamName: 流名称。
        # @type StreamName: String
        # @param DelayInterval: 延播时间，单位：秒。
        # @type DelayInterval: Integer
        # @param CreateTime: 创建时间，UTC 时间。
        # 注意：UTC时间和北京时间相差8小时。
        # 例如：2019-06-18T12:00:00Z（为北京时间 2019 年 6 月 18 日 20 点 0 分 0 秒）。
        # @type CreateTime: String
        # @param ExpireTime: 过期时间，UTC 时间。
        # 注意：UTC时间和北京时间相差8小时。
        # 例如：2019-06-18T12:00:00Z（为北京时间 2019 年 6 月 18 日 20 点 0 分 0 秒）。
        # @type ExpireTime: String
        # @param Status: 当前状态:
        # -1：已过期。
        # 1： 生效中。
        # @type Status: Integer

        attr_accessor :DomainName, :AppName, :StreamName, :DelayInterval, :CreateTime, :ExpireTime, :Status
        
        def initialize(domainname=nil, appname=nil, streamname=nil, delayinterval=nil, createtime=nil, expiretime=nil, status=nil)
          @DomainName = domainname
          @AppName = appname
          @StreamName = streamname
          @DelayInterval = delayinterval
          @CreateTime = createtime
          @ExpireTime = expiretime
          @Status = status
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @AppName = params['AppName']
          @StreamName = params['StreamName']
          @DelayInterval = params['DelayInterval']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
          @Status = params['Status']
        end
      end

      # DeleteLiveCallbackRule请求参数结构体
      class DeleteLiveCallbackRuleRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 推流域名。
        # @type DomainName: String
        # @param AppName: 推流路径，与推流和播放地址中的 AppName 保持一致，默认为 live。
        # @type AppName: String

        attr_accessor :DomainName, :AppName
        
        def initialize(domainname=nil, appname=nil)
          @DomainName = domainname
          @AppName = appname
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @AppName = params['AppName']
        end
      end

      # DeleteLiveCallbackRule返回参数结构体
      class DeleteLiveCallbackRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLiveCallbackTemplate请求参数结构体
      class DeleteLiveCallbackTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板 ID。
        # 1. 在创建回调模板接口 [CreateLiveCallbackTemplate](/document/product/267/32637) 调用的返回值中获取模板 ID。
        # 2. 可以从接口 [DescribeLiveCallbackTemplates](/document/product/267/32632) 查询已经创建的过的模板列表。
        # @type TemplateId: Integer

        attr_accessor :TemplateId
        
        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # DeleteLiveCallbackTemplate返回参数结构体
      class DeleteLiveCallbackTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLiveDomain请求参数结构体
      class DeleteLiveDomainRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 要删除的域名
        # @type DomainName: String
        # @param DomainType: 类型。0-推流，1-播放
        # @type DomainType: Integer

        attr_accessor :DomainName, :DomainType
        
        def initialize(domainname=nil, domaintype=nil)
          @DomainName = domainname
          @DomainType = domaintype
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @DomainType = params['DomainType']
        end
      end

      # DeleteLiveDomain返回参数结构体
      class DeleteLiveDomainResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLivePullStreamTask请求参数结构体
      class DeleteLivePullStreamTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 Id。
        # @type TaskId: String
        # @param Operator: 操作人姓名。
        # @type Operator: String

        attr_accessor :TaskId, :Operator
        
        def initialize(taskid=nil, operator=nil)
          @TaskId = taskid
          @Operator = operator
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Operator = params['Operator']
        end
      end

      # DeleteLivePullStreamTask返回参数结构体
      class DeleteLivePullStreamTaskResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLiveRecord请求参数结构体
      class DeleteLiveRecordRequest < TencentCloud::Common::AbstractModel
        # @param StreamName: 流名称。
        # @type StreamName: String
        # @param TaskId: 任务ID，由CreateLiveRecord接口返回。
        # @type TaskId: Integer

        attr_accessor :StreamName, :TaskId
        
        def initialize(streamname=nil, taskid=nil)
          @StreamName = streamname
          @TaskId = taskid
        end

        def deserialize(params)
          @StreamName = params['StreamName']
          @TaskId = params['TaskId']
        end
      end

      # DeleteLiveRecord返回参数结构体
      class DeleteLiveRecordResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLiveRecordRule请求参数结构体
      class DeleteLiveRecordRuleRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 推流域名。
        # 域名+AppName+StreamName唯一标识单个转码规则，如需删除需要强匹配，例如AppName为空也需要传空字符串进行强匹配。
        # @type DomainName: String
        # @param AppName: 推流路径，与推流和播放地址中的AppName保持一致，默认为 live。
        # 域名+AppName+StreamName唯一标识单个转码规则，如需删除需要强匹配，例如AppName为空也需要传空字符串进行强匹配。
        # @type AppName: String
        # @param StreamName: 流名称。
        # 域名+AppName+StreamName唯一标识单个转码规则，如需删除需要强匹配，例如AppName为空也需要传空字符串进行强匹配。
        # @type StreamName: String

        attr_accessor :DomainName, :AppName, :StreamName
        
        def initialize(domainname=nil, appname=nil, streamname=nil)
          @DomainName = domainname
          @AppName = appname
          @StreamName = streamname
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @AppName = params['AppName']
          @StreamName = params['StreamName']
        end
      end

      # DeleteLiveRecordRule返回参数结构体
      class DeleteLiveRecordRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLiveRecordTemplate请求参数结构体
      class DeleteLiveRecordTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: DescribeRecordTemplates接口获取到的模板 ID。
        # @type TemplateId: Integer

        attr_accessor :TemplateId
        
        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # DeleteLiveRecordTemplate返回参数结构体
      class DeleteLiveRecordTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLiveSnapshotRule请求参数结构体
      class DeleteLiveSnapshotRuleRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 推流域名。
        # @type DomainName: String
        # @param AppName: 推流路径，与推流和播放地址中的 AppName 保持一致，默认为 live。
        # @type AppName: String
        # @param StreamName: 流名称。
        # @type StreamName: String

        attr_accessor :DomainName, :AppName, :StreamName
        
        def initialize(domainname=nil, appname=nil, streamname=nil)
          @DomainName = domainname
          @AppName = appname
          @StreamName = streamname
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @AppName = params['AppName']
          @StreamName = params['StreamName']
        end
      end

      # DeleteLiveSnapshotRule返回参数结构体
      class DeleteLiveSnapshotRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLiveSnapshotTemplate请求参数结构体
      class DeleteLiveSnapshotTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板 ID。
        # 1. 在创建截图模板接口 [CreateLiveSnapshotTemplate](/document/product/267/32624) 调用的返回值中获取。
        # 2. 可以从接口 [DescribeLiveSnapshotTemplates](/document/product/267/32619) 中查询已创建的截图模板列表。
        # @type TemplateId: Integer

        attr_accessor :TemplateId
        
        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # DeleteLiveSnapshotTemplate返回参数结构体
      class DeleteLiveSnapshotTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLiveTranscodeRule请求参数结构体
      class DeleteLiveTranscodeRuleRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 播放域名。
        # @type DomainName: String
        # @param AppName: 推流路径，与推流和播放地址中的AppName保持一致，默认为 live。
        # @type AppName: String
        # @param StreamName: 流名称。
        # @type StreamName: String
        # @param TemplateId: 模板ID。
        # @type TemplateId: Integer

        attr_accessor :DomainName, :AppName, :StreamName, :TemplateId
        
        def initialize(domainname=nil, appname=nil, streamname=nil, templateid=nil)
          @DomainName = domainname
          @AppName = appname
          @StreamName = streamname
          @TemplateId = templateid
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @AppName = params['AppName']
          @StreamName = params['StreamName']
          @TemplateId = params['TemplateId']
        end
      end

      # DeleteLiveTranscodeRule返回参数结构体
      class DeleteLiveTranscodeRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLiveTranscodeTemplate请求参数结构体
      class DeleteLiveTranscodeTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板 ID。
        # 1. 在创建转码模板接口 [CreateLiveTranscodeTemplate](/document/product/267/32646) 调用的返回值中获取模板 ID。
        # 2. 可以从接口 [DescribeLiveTranscodeTemplates](/document/product/267/32641) 查询已经创建的过的模板列表。
        # @type TemplateId: Integer

        attr_accessor :TemplateId
        
        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # DeleteLiveTranscodeTemplate返回参数结构体
      class DeleteLiveTranscodeTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLiveWatermark请求参数结构体
      class DeleteLiveWatermarkRequest < TencentCloud::Common::AbstractModel
        # @param WatermarkId: 水印 ID。
        # 在添加水印接口 [AddLiveWatermark](/document/product/267/30154) 调用返回值中获取水印 ID。
        # 或DescribeLiveWatermarks接口返回的水印ID。
        # @type WatermarkId: Integer

        attr_accessor :WatermarkId
        
        def initialize(watermarkid=nil)
          @WatermarkId = watermarkid
        end

        def deserialize(params)
          @WatermarkId = params['WatermarkId']
        end
      end

      # DeleteLiveWatermark返回参数结构体
      class DeleteLiveWatermarkResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLiveWatermarkRule请求参数结构体
      class DeleteLiveWatermarkRuleRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 推流域名。
        # @type DomainName: String
        # @param AppName: 推流路径。与推流和播放地址中的 AppName 保持一致，默认为live。
        # @type AppName: String
        # @param StreamName: 流名称。
        # @type StreamName: String

        attr_accessor :DomainName, :AppName, :StreamName
        
        def initialize(domainname=nil, appname=nil, streamname=nil)
          @DomainName = domainname
          @AppName = appname
          @StreamName = streamname
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @AppName = params['AppName']
          @StreamName = params['StreamName']
        end
      end

      # DeleteLiveWatermarkRule返回参数结构体
      class DeleteLiveWatermarkRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeletePullStreamConfig请求参数结构体
      class DeletePullStreamConfigRequest < TencentCloud::Common::AbstractModel
        # @param ConfigId: 配置 ID。
        # 1. 在添加拉流配置接口 [CreatePullStreamConfig](/document/api/267/30159) 调用返回值中获取配置 ID。
        # 2. 可以从接口 [DescribePullStreamConfigs](/document/api/267/30158) 中查询已创建过的拉流配置列表。
        # @type ConfigId: String

        attr_accessor :ConfigId
        
        def initialize(configid=nil)
          @ConfigId = configid
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
        end
      end

      # DeletePullStreamConfig返回参数结构体
      class DeletePullStreamConfigResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRecordTask请求参数结构体
      class DeleteRecordTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID，CreateRecordTask返回。删除TaskId指定的录制任务。
        # @type TaskId: String

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DeleteRecordTask返回参数结构体
      class DeleteRecordTaskResponse < TencentCloud::Common::AbstractModel
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

      # DeleteScreenshotTask请求参数结构体
      class DeleteScreenshotTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID，CreateScreenshotTask返回。删除TaskId指定的截图任务。
        # @type TaskId: String

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DeleteScreenshotTask返回参数结构体
      class DeleteScreenshotTaskResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAllStreamPlayInfoList请求参数结构体
      class DescribeAllStreamPlayInfoListRequest < TencentCloud::Common::AbstractModel
        # @param QueryTime: 查询时间点，精确到分钟粒度，支持最近1个月的数据查询，数据延迟为5分钟左右，如果要查询实时的数据，建议传递5分钟前的时间点，格式为yyyy-mm-dd HH:MM:00。（只精确至分钟，秒数填00）。
        # @type QueryTime: String
        # @param PlayDomains: 播放域名列表，若不填，表示总体数据。
        # @type PlayDomains: Array

        attr_accessor :QueryTime, :PlayDomains
        
        def initialize(querytime=nil, playdomains=nil)
          @QueryTime = querytime
          @PlayDomains = playdomains
        end

        def deserialize(params)
          @QueryTime = params['QueryTime']
          @PlayDomains = params['PlayDomains']
        end
      end

      # DescribeAllStreamPlayInfoList返回参数结构体
      class DescribeAllStreamPlayInfoListResponse < TencentCloud::Common::AbstractModel
        # @param QueryTime: 查询时间点，回传的输入参数中的查询时间。
        # @type QueryTime: String
        # @param DataInfoList: 数据信息列表。
        # @type DataInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QueryTime, :DataInfoList, :RequestId
        
        def initialize(querytime=nil, datainfolist=nil, requestid=nil)
          @QueryTime = querytime
          @DataInfoList = datainfolist
          @RequestId = requestid
        end

        def deserialize(params)
          @QueryTime = params['QueryTime']
          unless params['DataInfoList'].nil?
            @DataInfoList = []
            params['DataInfoList'].each do |i|
              monitorstreamplayinfo_tmp = MonitorStreamPlayInfo.new
              monitorstreamplayinfo_tmp.deserialize(i)
              @DataInfoList << monitorstreamplayinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAreaBillBandwidthAndFluxList请求参数结构体
      class DescribeAreaBillBandwidthAndFluxListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间点，格式为yyyy-mm-dd HH:MM:SS。
        # @type StartTime: String
        # @param EndTime: 结束时间点，格式为yyyy-mm-dd HH:MM:SS，起始和结束时间跨度不支持超过1天。
        # @type EndTime: String
        # @param PlayDomains: 直播播放域名，若不填，表示总体数据。
        # @type PlayDomains: Array

        attr_accessor :StartTime, :EndTime, :PlayDomains
        
        def initialize(starttime=nil, endtime=nil, playdomains=nil)
          @StartTime = starttime
          @EndTime = endtime
          @PlayDomains = playdomains
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PlayDomains = params['PlayDomains']
        end
      end

      # DescribeAreaBillBandwidthAndFluxList返回参数结构体
      class DescribeAreaBillBandwidthAndFluxListResponse < TencentCloud::Common::AbstractModel
        # @param DataInfoList: 明细数据信息。
        # @type DataInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataInfoList, :RequestId
        
        def initialize(datainfolist=nil, requestid=nil)
          @DataInfoList = datainfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataInfoList'].nil?
            @DataInfoList = []
            params['DataInfoList'].each do |i|
              billareainfo_tmp = BillAreaInfo.new
              billareainfo_tmp.deserialize(i)
              @DataInfoList << billareainfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBillBandwidthAndFluxList请求参数结构体
      class DescribeBillBandwidthAndFluxListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间点，格式为yyyy-mm-dd HH:MM:SS。
        # @type StartTime: String
        # @param EndTime: 结束时间点，格式为yyyy-mm-dd HH:MM:SS，起始和结束时间跨度不支持超过31天。支持最近3年的数据查询
        # @type EndTime: String
        # @param PlayDomains: 直播播放域名，若不填，表示总体数据。
        # @type PlayDomains: Array
        # @param MainlandOrOversea: 可选值：
        # Mainland：查询国内数据，
        # Oversea：则查询国外数据，
        # 默认：查询国内+国外的数据。
        # 注：LEB（快直播）只支持国内+国外数据查询。
        # @type MainlandOrOversea: String
        # @param Granularity: 数据粒度，支持如下粒度：
        # 5：5分钟粒度，（跨度不支持超过1天），
        # 60：1小时粒度（跨度不支持超过一个月），
        # 1440：天粒度（跨度不支持超过一个月）。
        # 默认值：5。
        # @type Granularity: Integer
        # @param ServiceName: 服务名称，可选值包括LVB(标准直播)，LEB(快直播)，不填则查LVB+LEB总值。
        # @type ServiceName: String
        # @param RegionNames: 大区，映射表如下：
        # China Mainland 中国大陆
        # Asia Pacific I 亚太一区
        # Asia Pacific II 亚太二区
        # Asia Pacific III 亚太三区
        # Europe 欧洲
        # North America 北美
        # South America 南美
        # Middle East 中东
        # Africa 非洲。
        # @type RegionNames: Array

        attr_accessor :StartTime, :EndTime, :PlayDomains, :MainlandOrOversea, :Granularity, :ServiceName, :RegionNames
        
        def initialize(starttime=nil, endtime=nil, playdomains=nil, mainlandoroversea=nil, granularity=nil, servicename=nil, regionnames=nil)
          @StartTime = starttime
          @EndTime = endtime
          @PlayDomains = playdomains
          @MainlandOrOversea = mainlandoroversea
          @Granularity = granularity
          @ServiceName = servicename
          @RegionNames = regionnames
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PlayDomains = params['PlayDomains']
          @MainlandOrOversea = params['MainlandOrOversea']
          @Granularity = params['Granularity']
          @ServiceName = params['ServiceName']
          @RegionNames = params['RegionNames']
        end
      end

      # DescribeBillBandwidthAndFluxList返回参数结构体
      class DescribeBillBandwidthAndFluxListResponse < TencentCloud::Common::AbstractModel
        # @param PeakBandwidthTime: 峰值带宽所在时间点，格式为yyyy-mm-dd HH:MM:SS。
        # @type PeakBandwidthTime: String
        # @param PeakBandwidth: 峰值带宽，单位是Mbps。
        # @type PeakBandwidth: Float
        # @param P95PeakBandwidthTime: 95峰值带宽所在时间点，格式为yyyy-mm-dd HH:MM:SS。
        # @type P95PeakBandwidthTime: String
        # @param P95PeakBandwidth: 95峰值带宽，单位是Mbps。
        # @type P95PeakBandwidth: Float
        # @param SumFlux: 总流量，单位是MB。
        # @type SumFlux: Float
        # @param DataInfoList: 明细数据信息。
        # @type DataInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PeakBandwidthTime, :PeakBandwidth, :P95PeakBandwidthTime, :P95PeakBandwidth, :SumFlux, :DataInfoList, :RequestId
        
        def initialize(peakbandwidthtime=nil, peakbandwidth=nil, p95peakbandwidthtime=nil, p95peakbandwidth=nil, sumflux=nil, datainfolist=nil, requestid=nil)
          @PeakBandwidthTime = peakbandwidthtime
          @PeakBandwidth = peakbandwidth
          @P95PeakBandwidthTime = p95peakbandwidthtime
          @P95PeakBandwidth = p95peakbandwidth
          @SumFlux = sumflux
          @DataInfoList = datainfolist
          @RequestId = requestid
        end

        def deserialize(params)
          @PeakBandwidthTime = params['PeakBandwidthTime']
          @PeakBandwidth = params['PeakBandwidth']
          @P95PeakBandwidthTime = params['P95PeakBandwidthTime']
          @P95PeakBandwidth = params['P95PeakBandwidth']
          @SumFlux = params['SumFlux']
          unless params['DataInfoList'].nil?
            @DataInfoList = []
            params['DataInfoList'].each do |i|
              billdatainfo_tmp = BillDataInfo.new
              billdatainfo_tmp.deserialize(i)
              @DataInfoList << billdatainfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCallbackRecordsList请求参数结构体
      class DescribeCallbackRecordsListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间点，格式为yyyy-mm-dd HH:MM:SS。
        # @type StartTime: String
        # @param EndTime: 结束时间点，格式为yyyy-mm-dd HH:MM:SS，起始和结束时间跨度不支持超过1天。
        # @type EndTime: String
        # @param StreamName: 流名称，精确匹配。
        # @type StreamName: String
        # @param PageNum: 页码。
        # @type PageNum: Integer
        # @param PageSize: 每页条数。
        # @type PageSize: Integer
        # @param EventType: 事件类型。
        # 0: "断流",
        # 1: "推流",
        # 100: "录制"
        # 200: "截图回调"。
        # @type EventType: Integer
        # @param ResultCode: 回调结果。
        # 0为成功，其他为失败。
        # @type ResultCode: Integer

        attr_accessor :StartTime, :EndTime, :StreamName, :PageNum, :PageSize, :EventType, :ResultCode
        
        def initialize(starttime=nil, endtime=nil, streamname=nil, pagenum=nil, pagesize=nil, eventtype=nil, resultcode=nil)
          @StartTime = starttime
          @EndTime = endtime
          @StreamName = streamname
          @PageNum = pagenum
          @PageSize = pagesize
          @EventType = eventtype
          @ResultCode = resultcode
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @StreamName = params['StreamName']
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          @EventType = params['EventType']
          @ResultCode = params['ResultCode']
        end
      end

      # DescribeCallbackRecordsList返回参数结构体
      class DescribeCallbackRecordsListResponse < TencentCloud::Common::AbstractModel
        # @param DataInfoList: 回调事件列表。
        # @type DataInfoList: Array
        # @param PageNum: 页码。
        # @type PageNum: Integer
        # @param PageSize: 每页条数。
        # @type PageSize: Integer
        # @param TotalNum: 总条数。
        # @type TotalNum: Integer
        # @param TotalPage: 总页数。
        # @type TotalPage: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataInfoList, :PageNum, :PageSize, :TotalNum, :TotalPage, :RequestId
        
        def initialize(datainfolist=nil, pagenum=nil, pagesize=nil, totalnum=nil, totalpage=nil, requestid=nil)
          @DataInfoList = datainfolist
          @PageNum = pagenum
          @PageSize = pagesize
          @TotalNum = totalnum
          @TotalPage = totalpage
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataInfoList'].nil?
            @DataInfoList = []
            params['DataInfoList'].each do |i|
              callbackeventinfo_tmp = CallbackEventInfo.new
              callbackeventinfo_tmp.deserialize(i)
              @DataInfoList << callbackeventinfo_tmp
            end
          end
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          @TotalNum = params['TotalNum']
          @TotalPage = params['TotalPage']
          @RequestId = params['RequestId']
        end
      end

      # DescribeConcurrentRecordStreamNum请求参数结构体
      class DescribeConcurrentRecordStreamNumRequest < TencentCloud::Common::AbstractModel
        # @param LiveType: 直播类型，SlowLive：慢直播。
        # NormalLive：普通直播。
        # @type LiveType: String
        # @param StartTime: 起始时间，格式：yyyy-mm-dd HH:MM:SS。
        # 可以查询最近180天的数据。
        # @type StartTime: String
        # @param EndTime: 结束时间，格式：yyyy-mm-dd HH:MM:SS。
        # 时间跨度最大支持31天。
        # @type EndTime: String
        # @param MainlandOrOversea: 如果为空，查询所有地区数据；如果为“Mainland”，查询国内数据；如果为“Oversea”，则查询国外数据。
        # @type MainlandOrOversea: String
        # @param PushDomains: 推流域名列表，不填表示总体数据。
        # @type PushDomains: Array

        attr_accessor :LiveType, :StartTime, :EndTime, :MainlandOrOversea, :PushDomains
        
        def initialize(livetype=nil, starttime=nil, endtime=nil, mainlandoroversea=nil, pushdomains=nil)
          @LiveType = livetype
          @StartTime = starttime
          @EndTime = endtime
          @MainlandOrOversea = mainlandoroversea
          @PushDomains = pushdomains
        end

        def deserialize(params)
          @LiveType = params['LiveType']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MainlandOrOversea = params['MainlandOrOversea']
          @PushDomains = params['PushDomains']
        end
      end

      # DescribeConcurrentRecordStreamNum返回参数结构体
      class DescribeConcurrentRecordStreamNumResponse < TencentCloud::Common::AbstractModel
        # @param DataInfoList: 统计信息列表。
        # @type DataInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataInfoList, :RequestId
        
        def initialize(datainfolist=nil, requestid=nil)
          @DataInfoList = datainfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataInfoList'].nil?
            @DataInfoList = []
            params['DataInfoList'].each do |i|
              concurrentrecordstreamnum_tmp = ConcurrentRecordStreamNum.new
              concurrentrecordstreamnum_tmp.deserialize(i)
              @DataInfoList << concurrentrecordstreamnum_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeliverBandwidthList请求参数结构体
      class DescribeDeliverBandwidthListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间，格式为%Y-%m-%d %H:%M:%S。
        # @type StartTime: String
        # @param EndTime: 结束时间，格式为%Y-%m-%d %H:%M:%S，支持最近三个月的数据查询，时间跨度最大是1个月。
        # @type EndTime: String

        attr_accessor :StartTime, :EndTime
        
        def initialize(starttime=nil, endtime=nil)
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeDeliverBandwidthList返回参数结构体
      class DescribeDeliverBandwidthListResponse < TencentCloud::Common::AbstractModel
        # @param DataInfoList: 转推计费带宽数据
        # @type DataInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataInfoList, :RequestId
        
        def initialize(datainfolist=nil, requestid=nil)
          @DataInfoList = datainfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataInfoList'].nil?
            @DataInfoList = []
            params['DataInfoList'].each do |i|
              bandwidthinfo_tmp = BandwidthInfo.new
              bandwidthinfo_tmp.deserialize(i)
              @DataInfoList << bandwidthinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGroupProIspPlayInfoList请求参数结构体
      class DescribeGroupProIspPlayInfoListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间点，格式为yyyy-mm-dd HH:MM:SS。
        # @type StartTime: String
        # @param EndTime: 结束时间点，格式为yyyy-mm-dd HH:MM:SS
        # 时间跨度在（0,3小时]，支持最近1个月数据查询。
        # @type EndTime: String
        # @param PlayDomains: 播放域名，默认为不填，表示求总体数据。
        # @type PlayDomains: Array
        # @param ProvinceNames: 省份列表，默认不填，则返回各省份的数据。
        # @type ProvinceNames: Array
        # @param IspNames: 运营商列表，默认不填，则返回整个运营商的数据。
        # @type IspNames: Array
        # @param MainlandOrOversea: 国内还是国外，如果为空，查询所有地区数据；如果为“Mainland”，查询国内数据；如果为“Oversea”，则查询国外数据。
        # @type MainlandOrOversea: String

        attr_accessor :StartTime, :EndTime, :PlayDomains, :ProvinceNames, :IspNames, :MainlandOrOversea
        
        def initialize(starttime=nil, endtime=nil, playdomains=nil, provincenames=nil, ispnames=nil, mainlandoroversea=nil)
          @StartTime = starttime
          @EndTime = endtime
          @PlayDomains = playdomains
          @ProvinceNames = provincenames
          @IspNames = ispnames
          @MainlandOrOversea = mainlandoroversea
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PlayDomains = params['PlayDomains']
          @ProvinceNames = params['ProvinceNames']
          @IspNames = params['IspNames']
          @MainlandOrOversea = params['MainlandOrOversea']
        end
      end

      # DescribeGroupProIspPlayInfoList返回参数结构体
      class DescribeGroupProIspPlayInfoListResponse < TencentCloud::Common::AbstractModel
        # @param DataInfoList: 数据内容。
        # @type DataInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataInfoList, :RequestId
        
        def initialize(datainfolist=nil, requestid=nil)
          @DataInfoList = datainfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataInfoList'].nil?
            @DataInfoList = []
            params['DataInfoList'].each do |i|
              groupproispdatainfo_tmp = GroupProIspDataInfo.new
              groupproispdatainfo_tmp.deserialize(i)
              @DataInfoList << groupproispdatainfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeHttpStatusInfoList请求参数结构体
      class DescribeHttpStatusInfoListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间，北京时间，
        # 格式：yyyy-mm-dd HH:MM:SS。
        # @type StartTime: String
        # @param EndTime: 结束时间，北京时间，
        # 格式：yyyy-mm-dd HH:MM:SS。
        # 注：最大时间跨度支持1天，支持最近3个月的数据查询。
        # @type EndTime: String
        # @param PlayDomains: 播放域名列表。
        # @type PlayDomains: Array

        attr_accessor :StartTime, :EndTime, :PlayDomains
        
        def initialize(starttime=nil, endtime=nil, playdomains=nil)
          @StartTime = starttime
          @EndTime = endtime
          @PlayDomains = playdomains
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PlayDomains = params['PlayDomains']
        end
      end

      # DescribeHttpStatusInfoList返回参数结构体
      class DescribeHttpStatusInfoListResponse < TencentCloud::Common::AbstractModel
        # @param DataInfoList: 播放状态码列表。
        # @type DataInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataInfoList, :RequestId
        
        def initialize(datainfolist=nil, requestid=nil)
          @DataInfoList = datainfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataInfoList'].nil?
            @DataInfoList = []
            params['DataInfoList'].each do |i|
              httpstatusdata_tmp = HttpStatusData.new
              httpstatusdata_tmp.deserialize(i)
              @DataInfoList << httpstatusdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveCallbackRules请求参数结构体
      class DescribeLiveCallbackRulesRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeLiveCallbackRules返回参数结构体
      class DescribeLiveCallbackRulesResponse < TencentCloud::Common::AbstractModel
        # @param Rules: 规则信息列表。
        # @type Rules: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rules, :RequestId
        
        def initialize(rules=nil, requestid=nil)
          @Rules = rules
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              callbackruleinfo_tmp = CallBackRuleInfo.new
              callbackruleinfo_tmp.deserialize(i)
              @Rules << callbackruleinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveCallbackTemplate请求参数结构体
      class DescribeLiveCallbackTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板 ID。
        # 1. 在创建回调模板接口 [CreateLiveCallbackTemplate](/document/product/267/32637) 调用的返回值中获取模板 ID。
        # 2. 可以从接口 [DescribeLiveCallbackTemplates](/document/product/267/32632) 查询已经创建的过的模板列表。
        # @type TemplateId: Integer

        attr_accessor :TemplateId
        
        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # DescribeLiveCallbackTemplate返回参数结构体
      class DescribeLiveCallbackTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Template: 回调模板信息。
        # @type Template: :class:`Tencentcloud::Live.v20180801.models.CallBackTemplateInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Template, :RequestId
        
        def initialize(template=nil, requestid=nil)
          @Template = template
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Template'].nil?
            @Template = CallBackTemplateInfo.new
            @Template.deserialize(params['Template'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveCallbackTemplates请求参数结构体
      class DescribeLiveCallbackTemplatesRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeLiveCallbackTemplates返回参数结构体
      class DescribeLiveCallbackTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param Templates: 模板信息列表。
        # @type Templates: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Templates, :RequestId
        
        def initialize(templates=nil, requestid=nil)
          @Templates = templates
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Templates'].nil?
            @Templates = []
            params['Templates'].each do |i|
              callbacktemplateinfo_tmp = CallBackTemplateInfo.new
              callbacktemplateinfo_tmp.deserialize(i)
              @Templates << callbacktemplateinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveCert请求参数结构体
      class DescribeLiveCertRequest < TencentCloud::Common::AbstractModel
        # @param CertId: DescribeLiveCerts接口获取到的证书Id。
        # @type CertId: Integer

        attr_accessor :CertId
        
        def initialize(certid=nil)
          @CertId = certid
        end

        def deserialize(params)
          @CertId = params['CertId']
        end
      end

      # DescribeLiveCert返回参数结构体
      class DescribeLiveCertResponse < TencentCloud::Common::AbstractModel
        # @param CertInfo: 证书信息。
        # @type CertInfo: :class:`Tencentcloud::Live.v20180801.models.CertInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertInfo, :RequestId
        
        def initialize(certinfo=nil, requestid=nil)
          @CertInfo = certinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CertInfo'].nil?
            @CertInfo = CertInfo.new
            @CertInfo.deserialize(params['CertInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveCerts请求参数结构体
      class DescribeLiveCertsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeLiveCerts返回参数结构体
      class DescribeLiveCertsResponse < TencentCloud::Common::AbstractModel
        # @param CertInfoSet: 证书信息列表。
        # @type CertInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertInfoSet, :RequestId
        
        def initialize(certinfoset=nil, requestid=nil)
          @CertInfoSet = certinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CertInfoSet'].nil?
            @CertInfoSet = []
            params['CertInfoSet'].each do |i|
              certinfo_tmp = CertInfo.new
              certinfo_tmp.deserialize(i)
              @CertInfoSet << certinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveDelayInfoList请求参数结构体
      class DescribeLiveDelayInfoListRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeLiveDelayInfoList返回参数结构体
      class DescribeLiveDelayInfoListResponse < TencentCloud::Common::AbstractModel
        # @param DelayInfoList: 延播信息列表。
        # @type DelayInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DelayInfoList, :RequestId
        
        def initialize(delayinfolist=nil, requestid=nil)
          @DelayInfoList = delayinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DelayInfoList'].nil?
            @DelayInfoList = []
            params['DelayInfoList'].each do |i|
              delayinfo_tmp = DelayInfo.new
              delayinfo_tmp.deserialize(i)
              @DelayInfoList << delayinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveDomainCertBindings请求参数结构体
      class DescribeLiveDomainCertBindingsRequest < TencentCloud::Common::AbstractModel
        # @param DomainSearch: 要搜索的域名字符串。
        # @type DomainSearch: String
        # @param Offset: 记录行的位置，从0开始。默认0。
        # @type Offset: Integer
        # @param Length: 记录行的最大数目。默认50。
        # 若不传，则最多返回50条数据。
        # @type Length: Integer
        # @param DomainName: 要查询的单个域名。
        # @type DomainName: String
        # @param OrderBy: 可取值：
        # ExpireTimeAsc：证书过期时间升序。
        # ExpireTimeDesc：证书过期时间降序。
        # @type OrderBy: String

        attr_accessor :DomainSearch, :Offset, :Length, :DomainName, :OrderBy
        
        def initialize(domainsearch=nil, offset=nil, length=nil, domainname=nil, orderby=nil)
          @DomainSearch = domainsearch
          @Offset = offset
          @Length = length
          @DomainName = domainname
          @OrderBy = orderby
        end

        def deserialize(params)
          @DomainSearch = params['DomainSearch']
          @Offset = params['Offset']
          @Length = params['Length']
          @DomainName = params['DomainName']
          @OrderBy = params['OrderBy']
        end
      end

      # DescribeLiveDomainCertBindings返回参数结构体
      class DescribeLiveDomainCertBindingsResponse < TencentCloud::Common::AbstractModel
        # @param LiveDomainCertBindings: 有绑定证书的域名信息数组。
        # @type LiveDomainCertBindings: Array
        # @param TotalNum: 总的记录行数，便于分页。
        # @type TotalNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LiveDomainCertBindings, :TotalNum, :RequestId
        
        def initialize(livedomaincertbindings=nil, totalnum=nil, requestid=nil)
          @LiveDomainCertBindings = livedomaincertbindings
          @TotalNum = totalnum
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LiveDomainCertBindings'].nil?
            @LiveDomainCertBindings = []
            params['LiveDomainCertBindings'].each do |i|
              livedomaincertbindings_tmp = LiveDomainCertBindings.new
              livedomaincertbindings_tmp.deserialize(i)
              @LiveDomainCertBindings << livedomaincertbindings_tmp
            end
          end
          @TotalNum = params['TotalNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveDomainCert请求参数结构体
      class DescribeLiveDomainCertRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 播放域名。
        # @type DomainName: String

        attr_accessor :DomainName
        
        def initialize(domainname=nil)
          @DomainName = domainname
        end

        def deserialize(params)
          @DomainName = params['DomainName']
        end
      end

      # DescribeLiveDomainCert返回参数结构体
      class DescribeLiveDomainCertResponse < TencentCloud::Common::AbstractModel
        # @param DomainCertInfo: 证书信息。
        # @type DomainCertInfo: :class:`Tencentcloud::Live.v20180801.models.DomainCertInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DomainCertInfo, :RequestId
        
        def initialize(domaincertinfo=nil, requestid=nil)
          @DomainCertInfo = domaincertinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DomainCertInfo'].nil?
            @DomainCertInfo = DomainCertInfo.new
            @DomainCertInfo.deserialize(params['DomainCertInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveDomainPlayInfoList请求参数结构体
      class DescribeLiveDomainPlayInfoListRequest < TencentCloud::Common::AbstractModel
        # @param PlayDomains: 播放域名列表。
        # @type PlayDomains: Array

        attr_accessor :PlayDomains
        
        def initialize(playdomains=nil)
          @PlayDomains = playdomains
        end

        def deserialize(params)
          @PlayDomains = params['PlayDomains']
        end
      end

      # DescribeLiveDomainPlayInfoList返回参数结构体
      class DescribeLiveDomainPlayInfoListResponse < TencentCloud::Common::AbstractModel
        # @param Time: 数据时间，格式为yyyy-mm-dd HH:MM:SS。
        # @type Time: String
        # @param TotalBandwidth: 实时总带宽。
        # @type TotalBandwidth: Float
        # @param TotalFlux: 实时总流量。
        # @type TotalFlux: Float
        # @param TotalRequest: 总请求数。
        # @type TotalRequest: Integer
        # @param TotalOnline: 实时总连接数。
        # @type TotalOnline: Integer
        # @param DomainInfoList: 分域名的数据情况。
        # @type DomainInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Time, :TotalBandwidth, :TotalFlux, :TotalRequest, :TotalOnline, :DomainInfoList, :RequestId
        
        def initialize(time=nil, totalbandwidth=nil, totalflux=nil, totalrequest=nil, totalonline=nil, domaininfolist=nil, requestid=nil)
          @Time = time
          @TotalBandwidth = totalbandwidth
          @TotalFlux = totalflux
          @TotalRequest = totalrequest
          @TotalOnline = totalonline
          @DomainInfoList = domaininfolist
          @RequestId = requestid
        end

        def deserialize(params)
          @Time = params['Time']
          @TotalBandwidth = params['TotalBandwidth']
          @TotalFlux = params['TotalFlux']
          @TotalRequest = params['TotalRequest']
          @TotalOnline = params['TotalOnline']
          unless params['DomainInfoList'].nil?
            @DomainInfoList = []
            params['DomainInfoList'].each do |i|
              domaininfolist_tmp = DomainInfoList.new
              domaininfolist_tmp.deserialize(i)
              @DomainInfoList << domaininfolist_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveDomainReferer请求参数结构体
      class DescribeLiveDomainRefererRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 播放域名。
        # @type DomainName: String

        attr_accessor :DomainName
        
        def initialize(domainname=nil)
          @DomainName = domainname
        end

        def deserialize(params)
          @DomainName = params['DomainName']
        end
      end

      # DescribeLiveDomainReferer返回参数结构体
      class DescribeLiveDomainRefererResponse < TencentCloud::Common::AbstractModel
        # @param RefererAuthConfig: 域名 Referer 黑白名单配置。
        # @type RefererAuthConfig: :class:`Tencentcloud::Live.v20180801.models.RefererAuthConfig`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RefererAuthConfig, :RequestId
        
        def initialize(refererauthconfig=nil, requestid=nil)
          @RefererAuthConfig = refererauthconfig
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RefererAuthConfig'].nil?
            @RefererAuthConfig = RefererAuthConfig.new
            @RefererAuthConfig.deserialize(params['RefererAuthConfig'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveDomain请求参数结构体
      class DescribeLiveDomainRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 域名。
        # @type DomainName: String

        attr_accessor :DomainName
        
        def initialize(domainname=nil)
          @DomainName = domainname
        end

        def deserialize(params)
          @DomainName = params['DomainName']
        end
      end

      # DescribeLiveDomain返回参数结构体
      class DescribeLiveDomainResponse < TencentCloud::Common::AbstractModel
        # @param DomainInfo: 域名信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainInfo: :class:`Tencentcloud::Live.v20180801.models.DomainInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DomainInfo, :RequestId
        
        def initialize(domaininfo=nil, requestid=nil)
          @DomainInfo = domaininfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DomainInfo'].nil?
            @DomainInfo = DomainInfo.new
            @DomainInfo.deserialize(params['DomainInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveDomains请求参数结构体
      class DescribeLiveDomainsRequest < TencentCloud::Common::AbstractModel
        # @param DomainStatus: 域名状态过滤。0-停用，1-启用。
        # @type DomainStatus: Integer
        # @param DomainType: 域名类型过滤。0-推流，1-播放。
        # @type DomainType: Integer
        # @param PageSize: 分页大小，范围：10~100。默认10。
        # @type PageSize: Integer
        # @param PageNum: 取第几页，范围：1~100000。默认1。
        # @type PageNum: Integer
        # @param IsDelayLive: 0 普通直播 1慢直播 默认0。
        # @type IsDelayLive: Integer
        # @param DomainPrefix: 域名前缀。
        # @type DomainPrefix: String
        # @param PlayType: 播放区域，只在 DomainType=1 时该参数有意义。
        # 1: 国内。
        # 2: 全球。
        # 3: 海外。
        # @type PlayType: Integer

        attr_accessor :DomainStatus, :DomainType, :PageSize, :PageNum, :IsDelayLive, :DomainPrefix, :PlayType
        
        def initialize(domainstatus=nil, domaintype=nil, pagesize=nil, pagenum=nil, isdelaylive=nil, domainprefix=nil, playtype=nil)
          @DomainStatus = domainstatus
          @DomainType = domaintype
          @PageSize = pagesize
          @PageNum = pagenum
          @IsDelayLive = isdelaylive
          @DomainPrefix = domainprefix
          @PlayType = playtype
        end

        def deserialize(params)
          @DomainStatus = params['DomainStatus']
          @DomainType = params['DomainType']
          @PageSize = params['PageSize']
          @PageNum = params['PageNum']
          @IsDelayLive = params['IsDelayLive']
          @DomainPrefix = params['DomainPrefix']
          @PlayType = params['PlayType']
        end
      end

      # DescribeLiveDomains返回参数结构体
      class DescribeLiveDomainsResponse < TencentCloud::Common::AbstractModel
        # @param AllCount: 总记录数。
        # @type AllCount: Integer
        # @param DomainList: 域名详细信息列表。
        # @type DomainList: Array
        # @param CreateLimitCount: 可继续添加域名数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateLimitCount: Integer
        # @param PlayTypeCount: 启用的播放域名加速区域统计，数组元素分别为：中国大陆（境内），全球地区，国际/港澳台（境外）域名数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlayTypeCount: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AllCount, :DomainList, :CreateLimitCount, :PlayTypeCount, :RequestId
        
        def initialize(allcount=nil, domainlist=nil, createlimitcount=nil, playtypecount=nil, requestid=nil)
          @AllCount = allcount
          @DomainList = domainlist
          @CreateLimitCount = createlimitcount
          @PlayTypeCount = playtypecount
          @RequestId = requestid
        end

        def deserialize(params)
          @AllCount = params['AllCount']
          unless params['DomainList'].nil?
            @DomainList = []
            params['DomainList'].each do |i|
              domaininfo_tmp = DomainInfo.new
              domaininfo_tmp.deserialize(i)
              @DomainList << domaininfo_tmp
            end
          end
          @CreateLimitCount = params['CreateLimitCount']
          @PlayTypeCount = params['PlayTypeCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveForbidStreamList请求参数结构体
      class DescribeLiveForbidStreamListRequest < TencentCloud::Common::AbstractModel
        # @param PageNum: 取得第几页，默认1。
        # @type PageNum: Integer
        # @param PageSize: 每页大小，最大100。
        # 取值：1~100之前的任意整数。
        # 默认值：10。
        # @type PageSize: Integer
        # @param StreamName: 按流名称查询。
        # @type StreamName: String

        attr_accessor :PageNum, :PageSize, :StreamName
        
        def initialize(pagenum=nil, pagesize=nil, streamname=nil)
          @PageNum = pagenum
          @PageSize = pagesize
          @StreamName = streamname
        end

        def deserialize(params)
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          @StreamName = params['StreamName']
        end
      end

      # DescribeLiveForbidStreamList返回参数结构体
      class DescribeLiveForbidStreamListResponse < TencentCloud::Common::AbstractModel
        # @param TotalNum: 符合条件的总个数。
        # @type TotalNum: Integer
        # @param TotalPage: 总页数。
        # @type TotalPage: Integer
        # @param PageNum: 分页的页码。
        # @type PageNum: Integer
        # @param PageSize: 每页显示的条数。
        # @type PageSize: Integer
        # @param ForbidStreamList: 禁推流列表。
        # @type ForbidStreamList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalNum, :TotalPage, :PageNum, :PageSize, :ForbidStreamList, :RequestId
        
        def initialize(totalnum=nil, totalpage=nil, pagenum=nil, pagesize=nil, forbidstreamlist=nil, requestid=nil)
          @TotalNum = totalnum
          @TotalPage = totalpage
          @PageNum = pagenum
          @PageSize = pagesize
          @ForbidStreamList = forbidstreamlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalNum = params['TotalNum']
          @TotalPage = params['TotalPage']
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          unless params['ForbidStreamList'].nil?
            @ForbidStreamList = []
            params['ForbidStreamList'].each do |i|
              forbidstreaminfo_tmp = ForbidStreamInfo.new
              forbidstreaminfo_tmp.deserialize(i)
              @ForbidStreamList << forbidstreaminfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLivePackageInfo请求参数结构体
      class DescribeLivePackageInfoRequest < TencentCloud::Common::AbstractModel
        # @param PackageType: 包类型，可选值：
        # 0：流量包
        # 1：转码包
        # 2: 连麦包。
        # @type PackageType: Integer
        # @param OrderBy: 排序规则:
        # 1. BuyTimeDesc： 最新购买的排在最前面
        # 2. BuyTimeAsc： 最老购买的排在最前面
        # 3. ExpireTimeDesc： 最后过期的排在最前面
        # 4. ExpireTimeAsc：最先过期的排在最前面。

        # 注意：
        # 1. PackageType 为 2（连麦包） 的时候，不支持 3、4 排序。
        # @type OrderBy: String
        # @param PageNum: 取得第几页的数据，和 PageSize 同时传递才会生效。
        # @type PageNum: Integer
        # @param PageSize: 分页大小，和 PageNum 同时传递才会生效。
        # 取值：10 ～ 100 之间的任意整数。
        # @type PageSize: Integer

        attr_accessor :PackageType, :OrderBy, :PageNum, :PageSize
        
        def initialize(packagetype=nil, orderby=nil, pagenum=nil, pagesize=nil)
          @PackageType = packagetype
          @OrderBy = orderby
          @PageNum = pagenum
          @PageSize = pagesize
        end

        def deserialize(params)
          @PackageType = params['PackageType']
          @OrderBy = params['OrderBy']
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
        end
      end

      # DescribeLivePackageInfo返回参数结构体
      class DescribeLivePackageInfoResponse < TencentCloud::Common::AbstractModel
        # @param LivePackageInfoList: 套餐包信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LivePackageInfoList: Array
        # @param PackageBillMode: 套餐包当前计费方式:
        # -1: 无计费方式或获取失败
        # 0: 无计费方式
        # 201: 月结带宽
        # 202: 月结流量
        # 203: 日结带宽
        # 204: 日结流量
        # 205: 日结时长
        # 206: 月结时长
        # 304: 日结流量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageBillMode: Integer
        # @param TotalPage: 总页数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPage: Integer
        # @param TotalNum: 数据总条数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalNum: Integer
        # @param PageNum: 当前页数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNum: Integer
        # @param PageSize: 当前每页数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param FluxPackageBillMode: 当请求参数 PackageType = 0 时生效，逗号分隔，从第一个到最后一个分别表示：
        # 标准直播，中国大陆（境内全地区）计费方式。
        # 标准直播，国际/港澳台（境外多地区）计费方式。
        # 快直播，中国大陆（境内全地区）计费方式。
        # 快直播，国际/港澳台（境外多地区）计费方式。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FluxPackageBillMode: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LivePackageInfoList, :PackageBillMode, :TotalPage, :TotalNum, :PageNum, :PageSize, :FluxPackageBillMode, :RequestId
        
        def initialize(livepackageinfolist=nil, packagebillmode=nil, totalpage=nil, totalnum=nil, pagenum=nil, pagesize=nil, fluxpackagebillmode=nil, requestid=nil)
          @LivePackageInfoList = livepackageinfolist
          @PackageBillMode = packagebillmode
          @TotalPage = totalpage
          @TotalNum = totalnum
          @PageNum = pagenum
          @PageSize = pagesize
          @FluxPackageBillMode = fluxpackagebillmode
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LivePackageInfoList'].nil?
            @LivePackageInfoList = []
            params['LivePackageInfoList'].each do |i|
              livepackageinfo_tmp = LivePackageInfo.new
              livepackageinfo_tmp.deserialize(i)
              @LivePackageInfoList << livepackageinfo_tmp
            end
          end
          @PackageBillMode = params['PackageBillMode']
          @TotalPage = params['TotalPage']
          @TotalNum = params['TotalNum']
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          @FluxPackageBillMode = params['FluxPackageBillMode']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLivePlayAuthKey请求参数结构体
      class DescribeLivePlayAuthKeyRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 域名。
        # @type DomainName: String

        attr_accessor :DomainName
        
        def initialize(domainname=nil)
          @DomainName = domainname
        end

        def deserialize(params)
          @DomainName = params['DomainName']
        end
      end

      # DescribeLivePlayAuthKey返回参数结构体
      class DescribeLivePlayAuthKeyResponse < TencentCloud::Common::AbstractModel
        # @param PlayAuthKeyInfo: 播放鉴权key信息。
        # @type PlayAuthKeyInfo: :class:`Tencentcloud::Live.v20180801.models.PlayAuthKeyInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PlayAuthKeyInfo, :RequestId
        
        def initialize(playauthkeyinfo=nil, requestid=nil)
          @PlayAuthKeyInfo = playauthkeyinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PlayAuthKeyInfo'].nil?
            @PlayAuthKeyInfo = PlayAuthKeyInfo.new
            @PlayAuthKeyInfo.deserialize(params['PlayAuthKeyInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLivePullStreamTasks请求参数结构体
      class DescribeLivePullStreamTasksRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID。
        # 来源：调用 CreateLivePullStreamTask 接口时返回。
        # 不填默认查询所有任务，按更新时间倒序排序。
        # @type TaskId: String
        # @param PageNum: 取得第几页，默认值：1。
        # @type PageNum: Integer
        # @param PageSize: 分页大小，默认值：10。
        # 取值范围：1~20 之前的任意整数。
        # @type PageSize: Integer

        attr_accessor :TaskId, :PageNum, :PageSize
        
        def initialize(taskid=nil, pagenum=nil, pagesize=nil)
          @TaskId = taskid
          @PageNum = pagenum
          @PageSize = pagesize
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
        end
      end

      # DescribeLivePullStreamTasks返回参数结构体
      class DescribeLivePullStreamTasksResponse < TencentCloud::Common::AbstractModel
        # @param TaskInfos: 直播拉流任务信息列表。
        # @type TaskInfos: Array
        # @param PageNum: 分页的页码。
        # @type PageNum: Integer
        # @param PageSize: 每页大小。
        # @type PageSize: Integer
        # @param TotalNum: 符合条件的总个数。
        # @type TotalNum: Integer
        # @param TotalPage: 总页数。
        # @type TotalPage: Integer
        # @param LimitTaskNum: 限制可创建的最大任务数。
        # @type LimitTaskNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskInfos, :PageNum, :PageSize, :TotalNum, :TotalPage, :LimitTaskNum, :RequestId
        
        def initialize(taskinfos=nil, pagenum=nil, pagesize=nil, totalnum=nil, totalpage=nil, limittasknum=nil, requestid=nil)
          @TaskInfos = taskinfos
          @PageNum = pagenum
          @PageSize = pagesize
          @TotalNum = totalnum
          @TotalPage = totalpage
          @LimitTaskNum = limittasknum
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskInfos'].nil?
            @TaskInfos = []
            params['TaskInfos'].each do |i|
              pullstreamtaskinfo_tmp = PullStreamTaskInfo.new
              pullstreamtaskinfo_tmp.deserialize(i)
              @TaskInfos << pullstreamtaskinfo_tmp
            end
          end
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          @TotalNum = params['TotalNum']
          @TotalPage = params['TotalPage']
          @LimitTaskNum = params['LimitTaskNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLivePushAuthKey请求参数结构体
      class DescribeLivePushAuthKeyRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 推流域名。
        # @type DomainName: String

        attr_accessor :DomainName
        
        def initialize(domainname=nil)
          @DomainName = domainname
        end

        def deserialize(params)
          @DomainName = params['DomainName']
        end
      end

      # DescribeLivePushAuthKey返回参数结构体
      class DescribeLivePushAuthKeyResponse < TencentCloud::Common::AbstractModel
        # @param PushAuthKeyInfo: 推流鉴权key信息。
        # @type PushAuthKeyInfo: :class:`Tencentcloud::Live.v20180801.models.PushAuthKeyInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PushAuthKeyInfo, :RequestId
        
        def initialize(pushauthkeyinfo=nil, requestid=nil)
          @PushAuthKeyInfo = pushauthkeyinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PushAuthKeyInfo'].nil?
            @PushAuthKeyInfo = PushAuthKeyInfo.new
            @PushAuthKeyInfo.deserialize(params['PushAuthKeyInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveRecordRules请求参数结构体
      class DescribeLiveRecordRulesRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeLiveRecordRules返回参数结构体
      class DescribeLiveRecordRulesResponse < TencentCloud::Common::AbstractModel
        # @param Rules: 规则列表。
        # @type Rules: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rules, :RequestId
        
        def initialize(rules=nil, requestid=nil)
          @Rules = rules
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              ruleinfo_tmp = RuleInfo.new
              ruleinfo_tmp.deserialize(i)
              @Rules << ruleinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveRecordTemplate请求参数结构体
      class DescribeLiveRecordTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: [DescribeLiveRecordTemplates](/document/product/267/32609)接口获取到的模板 ID。
        # @type TemplateId: Integer

        attr_accessor :TemplateId
        
        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # DescribeLiveRecordTemplate返回参数结构体
      class DescribeLiveRecordTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Template: 录制模板信息。
        # @type Template: :class:`Tencentcloud::Live.v20180801.models.RecordTemplateInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Template, :RequestId
        
        def initialize(template=nil, requestid=nil)
          @Template = template
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Template'].nil?
            @Template = RecordTemplateInfo.new
            @Template.deserialize(params['Template'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveRecordTemplates请求参数结构体
      class DescribeLiveRecordTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param IsDelayLive: 是否属于慢直播模板，默认：0。
        # 0： 标准直播。
        # 1：慢直播。
        # @type IsDelayLive: Integer

        attr_accessor :IsDelayLive
        
        def initialize(isdelaylive=nil)
          @IsDelayLive = isdelaylive
        end

        def deserialize(params)
          @IsDelayLive = params['IsDelayLive']
        end
      end

      # DescribeLiveRecordTemplates返回参数结构体
      class DescribeLiveRecordTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param Templates: 录制模板信息列表。
        # @type Templates: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Templates, :RequestId
        
        def initialize(templates=nil, requestid=nil)
          @Templates = templates
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Templates'].nil?
            @Templates = []
            params['Templates'].each do |i|
              recordtemplateinfo_tmp = RecordTemplateInfo.new
              recordtemplateinfo_tmp.deserialize(i)
              @Templates << recordtemplateinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveSnapshotRules请求参数结构体
      class DescribeLiveSnapshotRulesRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeLiveSnapshotRules返回参数结构体
      class DescribeLiveSnapshotRulesResponse < TencentCloud::Common::AbstractModel
        # @param Rules: 规则列表。
        # @type Rules: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rules, :RequestId
        
        def initialize(rules=nil, requestid=nil)
          @Rules = rules
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              ruleinfo_tmp = RuleInfo.new
              ruleinfo_tmp.deserialize(i)
              @Rules << ruleinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveSnapshotTemplate请求参数结构体
      class DescribeLiveSnapshotTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板 ID。
        # 调用 [CreateLiveSnapshotTemplate](/document/product/267/32624) 时返回的模板 ID。
        # @type TemplateId: Integer

        attr_accessor :TemplateId
        
        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # DescribeLiveSnapshotTemplate返回参数结构体
      class DescribeLiveSnapshotTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Template: 截图模板信息。
        # @type Template: :class:`Tencentcloud::Live.v20180801.models.SnapshotTemplateInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Template, :RequestId
        
        def initialize(template=nil, requestid=nil)
          @Template = template
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Template'].nil?
            @Template = SnapshotTemplateInfo.new
            @Template.deserialize(params['Template'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveSnapshotTemplates请求参数结构体
      class DescribeLiveSnapshotTemplatesRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeLiveSnapshotTemplates返回参数结构体
      class DescribeLiveSnapshotTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param Templates: 截图模板列表。
        # @type Templates: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Templates, :RequestId
        
        def initialize(templates=nil, requestid=nil)
          @Templates = templates
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Templates'].nil?
            @Templates = []
            params['Templates'].each do |i|
              snapshottemplateinfo_tmp = SnapshotTemplateInfo.new
              snapshottemplateinfo_tmp.deserialize(i)
              @Templates << snapshottemplateinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveStreamEventList请求参数结构体
      class DescribeLiveStreamEventListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间。
        # UTC 格式，例如：2018-12-29T19:00:00Z。
        # 支持查询60天内的历史记录。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # UTC 格式，例如：2018-12-29T20:00:00Z。
        # 不超过当前时间，且和起始时间相差不得超过30天。
        # @type EndTime: String
        # @param AppName: 推流路径，与推流和播放地址中的AppName保持一致，默认为 live。
        # @type AppName: String
        # @param DomainName: 推流域名。
        # @type DomainName: String
        # @param StreamName: 流名称，不支持通配符（*）查询，默认模糊匹配。
        # 可使用IsStrict字段改为精确查询。
        # @type StreamName: String
        # @param PageNum: 取得第几页。
        # 默认值：1。
        # 注： 目前只支持10000条内的查询。
        # @type PageNum: Integer
        # @param PageSize: 分页大小。
        # 最大值：100。
        # 取值范围：1~100 之间的任意整数。
        # 默认值：10。
        # 注： 目前只支持10000条内的查询。
        # @type PageSize: Integer
        # @param IsFilter: 是否过滤，默认不过滤。
        # 0：不进行任何过滤。
        # 1：过滤掉开播失败的，只返回开播成功的。
        # @type IsFilter: Integer
        # @param IsStrict: 是否精确查询，默认模糊匹配。
        # 0：模糊匹配。
        # 1：精确查询。
        # 注：使用StreamName时该参数生效。
        # @type IsStrict: Integer
        # @param IsAsc: 是否按结束时间正序显示，默认逆序。
        # 0：逆序。
        # 1：正序。
        # @type IsAsc: Integer

        attr_accessor :StartTime, :EndTime, :AppName, :DomainName, :StreamName, :PageNum, :PageSize, :IsFilter, :IsStrict, :IsAsc
        
        def initialize(starttime=nil, endtime=nil, appname=nil, domainname=nil, streamname=nil, pagenum=nil, pagesize=nil, isfilter=nil, isstrict=nil, isasc=nil)
          @StartTime = starttime
          @EndTime = endtime
          @AppName = appname
          @DomainName = domainname
          @StreamName = streamname
          @PageNum = pagenum
          @PageSize = pagesize
          @IsFilter = isfilter
          @IsStrict = isstrict
          @IsAsc = isasc
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @AppName = params['AppName']
          @DomainName = params['DomainName']
          @StreamName = params['StreamName']
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          @IsFilter = params['IsFilter']
          @IsStrict = params['IsStrict']
          @IsAsc = params['IsAsc']
        end
      end

      # DescribeLiveStreamEventList返回参数结构体
      class DescribeLiveStreamEventListResponse < TencentCloud::Common::AbstractModel
        # @param EventList: 推断流事件列表。
        # @type EventList: Array
        # @param PageNum: 分页的页码。
        # @type PageNum: Integer
        # @param PageSize: 每页大小。
        # @type PageSize: Integer
        # @param TotalNum: 符合条件的总个数。
        # @type TotalNum: Integer
        # @param TotalPage: 总页数。
        # @type TotalPage: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EventList, :PageNum, :PageSize, :TotalNum, :TotalPage, :RequestId
        
        def initialize(eventlist=nil, pagenum=nil, pagesize=nil, totalnum=nil, totalpage=nil, requestid=nil)
          @EventList = eventlist
          @PageNum = pagenum
          @PageSize = pagesize
          @TotalNum = totalnum
          @TotalPage = totalpage
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EventList'].nil?
            @EventList = []
            params['EventList'].each do |i|
              streameventinfo_tmp = StreamEventInfo.new
              streameventinfo_tmp.deserialize(i)
              @EventList << streameventinfo_tmp
            end
          end
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          @TotalNum = params['TotalNum']
          @TotalPage = params['TotalPage']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveStreamOnlineList请求参数结构体
      class DescribeLiveStreamOnlineListRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 推流域名。多域名用户需要填写 DomainName。
        # @type DomainName: String
        # @param AppName: 推流路径，与推流和播放地址中的 AppName 保持一致，默认为 live。多路径用户需要填写 AppName。
        # @type AppName: String
        # @param PageNum: 取得第几页，默认1。
        # @type PageNum: Integer
        # @param PageSize: 每页大小，最大100。
        # 取值：10~100之间的任意整数。
        # 默认值：10。
        # @type PageSize: Integer
        # @param StreamName: 流名称，用于精确查询。
        # @type StreamName: String

        attr_accessor :DomainName, :AppName, :PageNum, :PageSize, :StreamName
        
        def initialize(domainname=nil, appname=nil, pagenum=nil, pagesize=nil, streamname=nil)
          @DomainName = domainname
          @AppName = appname
          @PageNum = pagenum
          @PageSize = pagesize
          @StreamName = streamname
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @AppName = params['AppName']
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          @StreamName = params['StreamName']
        end
      end

      # DescribeLiveStreamOnlineList返回参数结构体
      class DescribeLiveStreamOnlineListResponse < TencentCloud::Common::AbstractModel
        # @param TotalNum: 符合条件的总个数。
        # @type TotalNum: Integer
        # @param TotalPage: 总页数。
        # @type TotalPage: Integer
        # @param PageNum: 分页的页码。
        # @type PageNum: Integer
        # @param PageSize: 每页显示的条数。
        # @type PageSize: Integer
        # @param OnlineInfo: 正在推送流的信息列表。
        # @type OnlineInfo: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalNum, :TotalPage, :PageNum, :PageSize, :OnlineInfo, :RequestId
        
        def initialize(totalnum=nil, totalpage=nil, pagenum=nil, pagesize=nil, onlineinfo=nil, requestid=nil)
          @TotalNum = totalnum
          @TotalPage = totalpage
          @PageNum = pagenum
          @PageSize = pagesize
          @OnlineInfo = onlineinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalNum = params['TotalNum']
          @TotalPage = params['TotalPage']
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          unless params['OnlineInfo'].nil?
            @OnlineInfo = []
            params['OnlineInfo'].each do |i|
              streamonlineinfo_tmp = StreamOnlineInfo.new
              streamonlineinfo_tmp.deserialize(i)
              @OnlineInfo << streamonlineinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveStreamPublishedList请求参数结构体
      class DescribeLiveStreamPublishedListRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 您的推流域名。
        # @type DomainName: String
        # @param EndTime: 结束时间。
        # UTC 格式，例如：2016-06-30T19:00:00Z。
        # 不超过当前时间。
        # 注意：EndTime和StartTime相差不可超过30天。
        # @type EndTime: String
        # @param StartTime: 起始时间。
        # UTC 格式，例如：2016-06-29T19:00:00Z。
        # 最长支持查询60天内数据。
        # @type StartTime: String
        # @param AppName: 推流路径，与推流和播放地址中的 AppName 保持一致，默认为 live。不支持模糊匹配。
        # @type AppName: String
        # @param PageNum: 取得第几页。
        # 默认值：1。
        # @type PageNum: Integer
        # @param PageSize: 分页大小。
        # 最大值：100。
        # 取值范围：10~100 之前的任意整数。
        # 默认值：10。
        # @type PageSize: Integer
        # @param StreamName: 流名称，支持模糊匹配。
        # @type StreamName: String

        attr_accessor :DomainName, :EndTime, :StartTime, :AppName, :PageNum, :PageSize, :StreamName
        
        def initialize(domainname=nil, endtime=nil, starttime=nil, appname=nil, pagenum=nil, pagesize=nil, streamname=nil)
          @DomainName = domainname
          @EndTime = endtime
          @StartTime = starttime
          @AppName = appname
          @PageNum = pagenum
          @PageSize = pagesize
          @StreamName = streamname
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @EndTime = params['EndTime']
          @StartTime = params['StartTime']
          @AppName = params['AppName']
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          @StreamName = params['StreamName']
        end
      end

      # DescribeLiveStreamPublishedList返回参数结构体
      class DescribeLiveStreamPublishedListResponse < TencentCloud::Common::AbstractModel
        # @param PublishInfo: 推流记录信息。
        # @type PublishInfo: Array
        # @param PageNum: 分页的页码。
        # @type PageNum: Integer
        # @param PageSize: 每页大小
        # @type PageSize: Integer
        # @param TotalNum: 符合条件的总个数。
        # @type TotalNum: Integer
        # @param TotalPage: 总页数。
        # @type TotalPage: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PublishInfo, :PageNum, :PageSize, :TotalNum, :TotalPage, :RequestId
        
        def initialize(publishinfo=nil, pagenum=nil, pagesize=nil, totalnum=nil, totalpage=nil, requestid=nil)
          @PublishInfo = publishinfo
          @PageNum = pagenum
          @PageSize = pagesize
          @TotalNum = totalnum
          @TotalPage = totalpage
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PublishInfo'].nil?
            @PublishInfo = []
            params['PublishInfo'].each do |i|
              streamname_tmp = StreamName.new
              streamname_tmp.deserialize(i)
              @PublishInfo << streamname_tmp
            end
          end
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          @TotalNum = params['TotalNum']
          @TotalPage = params['TotalPage']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveStreamPushInfoList请求参数结构体
      class DescribeLiveStreamPushInfoListRequest < TencentCloud::Common::AbstractModel
        # @param PushDomain: 推流域名。
        # @type PushDomain: String
        # @param AppName: 推流路径，与推流和播放地址中的AppName保持一致，默认为live。
        # @type AppName: String
        # @param PageNum: 页数，
        # 范围[1,10000]，
        # 默认值：1。
        # @type PageNum: Integer
        # @param PageSize: 每页个数，
        # 范围：[1,1000]，
        # 默认值： 200。
        # @type PageSize: Integer

        attr_accessor :PushDomain, :AppName, :PageNum, :PageSize
        
        def initialize(pushdomain=nil, appname=nil, pagenum=nil, pagesize=nil)
          @PushDomain = pushdomain
          @AppName = appname
          @PageNum = pagenum
          @PageSize = pagesize
        end

        def deserialize(params)
          @PushDomain = params['PushDomain']
          @AppName = params['AppName']
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
        end
      end

      # DescribeLiveStreamPushInfoList返回参数结构体
      class DescribeLiveStreamPushInfoListResponse < TencentCloud::Common::AbstractModel
        # @param DataInfoList: 直播流的统计信息列表。
        # @type DataInfoList: Array
        # @param TotalNum: 所有在线流的总数量。
        # @type TotalNum: Integer
        # @param TotalPage: 总页数。
        # @type TotalPage: Integer
        # @param PageNum: 当前数据所在页码。
        # @type PageNum: Integer
        # @param PageSize: 每页的在线流的个数。
        # @type PageSize: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataInfoList, :TotalNum, :TotalPage, :PageNum, :PageSize, :RequestId
        
        def initialize(datainfolist=nil, totalnum=nil, totalpage=nil, pagenum=nil, pagesize=nil, requestid=nil)
          @DataInfoList = datainfolist
          @TotalNum = totalnum
          @TotalPage = totalpage
          @PageNum = pagenum
          @PageSize = pagesize
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataInfoList'].nil?
            @DataInfoList = []
            params['DataInfoList'].each do |i|
              pushdatainfo_tmp = PushDataInfo.new
              pushdatainfo_tmp.deserialize(i)
              @DataInfoList << pushdatainfo_tmp
            end
          end
          @TotalNum = params['TotalNum']
          @TotalPage = params['TotalPage']
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveStreamState请求参数结构体
      class DescribeLiveStreamStateRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 推流路径，与推流和播放地址中的AppName保持一致，默认为 live。
        # @type AppName: String
        # @param DomainName: 您的推流域名。
        # @type DomainName: String
        # @param StreamName: 流名称。
        # @type StreamName: String

        attr_accessor :AppName, :DomainName, :StreamName
        
        def initialize(appname=nil, domainname=nil, streamname=nil)
          @AppName = appname
          @DomainName = domainname
          @StreamName = streamname
        end

        def deserialize(params)
          @AppName = params['AppName']
          @DomainName = params['DomainName']
          @StreamName = params['StreamName']
        end
      end

      # DescribeLiveStreamState返回参数结构体
      class DescribeLiveStreamStateResponse < TencentCloud::Common::AbstractModel
        # @param StreamState: 流状态，
        # active：活跃，
        # inactive：非活跃，
        # forbid：禁播。
        # @type StreamState: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StreamState, :RequestId
        
        def initialize(streamstate=nil, requestid=nil)
          @StreamState = streamstate
          @RequestId = requestid
        end

        def deserialize(params)
          @StreamState = params['StreamState']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveTimeShiftBillInfoList请求参数结构体
      class DescribeLiveTimeShiftBillInfoListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: UTC开始时间，支持最近三个月的查询，查询时间最长跨度为一个月。

        # 使用 UTC 格式时间，
        # 例如：2019-01-08T10:00:00Z。
        # 注意：北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type StartTime: String
        # @param EndTime: UTC结束时间，支持最近三个月的查询，查询时间最长跨度为一个月。

        # 使用 UTC 格式时间，
        # 例如：2019-01-08T10:00:00Z。
        # 注意：北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type EndTime: String
        # @param PushDomains: 推流域名列表，若不传递此参数，则表示查询总体数据。
        # @type PushDomains: Array

        attr_accessor :StartTime, :EndTime, :PushDomains
        
        def initialize(starttime=nil, endtime=nil, pushdomains=nil)
          @StartTime = starttime
          @EndTime = endtime
          @PushDomains = pushdomains
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PushDomains = params['PushDomains']
        end
      end

      # DescribeLiveTimeShiftBillInfoList返回参数结构体
      class DescribeLiveTimeShiftBillInfoListResponse < TencentCloud::Common::AbstractModel
        # @param DataInfoList: 时移计费明细数据。
        # @type DataInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataInfoList, :RequestId
        
        def initialize(datainfolist=nil, requestid=nil)
          @DataInfoList = datainfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataInfoList'].nil?
            @DataInfoList = []
            params['DataInfoList'].each do |i|
              timeshiftbilldata_tmp = TimeShiftBillData.new
              timeshiftbilldata_tmp.deserialize(i)
              @DataInfoList << timeshiftbilldata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveTranscodeDetailInfo请求参数结构体
      class DescribeLiveTranscodeDetailInfoRequest < TencentCloud::Common::AbstractModel
        # @param PushDomain: 推流域名。
        # @type PushDomain: String
        # @param StreamName: 流名称。
        # @type StreamName: String
        # @param DayTime: 查询时间，北京时间，
        # 格式：yyyymmdd。
        # 注意：支持查询近1个月内某天的详细数据，截止到昨天。
        # @type DayTime: String
        # @param PageNum: 页数，默认1，
        # 不超过100页。
        # @type PageNum: Integer
        # @param PageSize: 每页个数，默认20，
        # 范围：[10,1000]。
        # @type PageSize: Integer
        # @param StartDayTime: 起始天时间，北京时间，
        # 格式：yyyymmdd。
        # 注意：支持查询近1个月内的详细数据。
        # @type StartDayTime: String
        # @param EndDayTime: 结束天时间，北京时间，
        # 格式：yyyymmdd。
        # 注意：支持查询近1个月内的详细数据，截止到昨天，注意DayTime 与（StartDayTime，EndDayTime）必须要传一个，如果都传，会以DayTime为准 。
        # @type EndDayTime: String

        attr_accessor :PushDomain, :StreamName, :DayTime, :PageNum, :PageSize, :StartDayTime, :EndDayTime
        
        def initialize(pushdomain=nil, streamname=nil, daytime=nil, pagenum=nil, pagesize=nil, startdaytime=nil, enddaytime=nil)
          @PushDomain = pushdomain
          @StreamName = streamname
          @DayTime = daytime
          @PageNum = pagenum
          @PageSize = pagesize
          @StartDayTime = startdaytime
          @EndDayTime = enddaytime
        end

        def deserialize(params)
          @PushDomain = params['PushDomain']
          @StreamName = params['StreamName']
          @DayTime = params['DayTime']
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          @StartDayTime = params['StartDayTime']
          @EndDayTime = params['EndDayTime']
        end
      end

      # DescribeLiveTranscodeDetailInfo返回参数结构体
      class DescribeLiveTranscodeDetailInfoResponse < TencentCloud::Common::AbstractModel
        # @param DataInfoList: 统计数据列表。
        # @type DataInfoList: Array
        # @param PageNum: 页码。
        # @type PageNum: Integer
        # @param PageSize: 每页个数。
        # @type PageSize: Integer
        # @param TotalNum: 总个数。
        # @type TotalNum: Integer
        # @param TotalPage: 总页数。
        # @type TotalPage: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataInfoList, :PageNum, :PageSize, :TotalNum, :TotalPage, :RequestId
        
        def initialize(datainfolist=nil, pagenum=nil, pagesize=nil, totalnum=nil, totalpage=nil, requestid=nil)
          @DataInfoList = datainfolist
          @PageNum = pagenum
          @PageSize = pagesize
          @TotalNum = totalnum
          @TotalPage = totalpage
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataInfoList'].nil?
            @DataInfoList = []
            params['DataInfoList'].each do |i|
              transcodedetailinfo_tmp = TranscodeDetailInfo.new
              transcodedetailinfo_tmp.deserialize(i)
              @DataInfoList << transcodedetailinfo_tmp
            end
          end
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          @TotalNum = params['TotalNum']
          @TotalPage = params['TotalPage']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveTranscodeRules请求参数结构体
      class DescribeLiveTranscodeRulesRequest < TencentCloud::Common::AbstractModel
        # @param TemplateIds: 要筛选的模板ID数组。
        # @type TemplateIds: Array
        # @param DomainNames: 要筛选的域名数组。
        # @type DomainNames: Array

        attr_accessor :TemplateIds, :DomainNames
        
        def initialize(templateids=nil, domainnames=nil)
          @TemplateIds = templateids
          @DomainNames = domainnames
        end

        def deserialize(params)
          @TemplateIds = params['TemplateIds']
          @DomainNames = params['DomainNames']
        end
      end

      # DescribeLiveTranscodeRules返回参数结构体
      class DescribeLiveTranscodeRulesResponse < TencentCloud::Common::AbstractModel
        # @param Rules: 转码规则列表。
        # @type Rules: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rules, :RequestId
        
        def initialize(rules=nil, requestid=nil)
          @Rules = rules
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              ruleinfo_tmp = RuleInfo.new
              ruleinfo_tmp.deserialize(i)
              @Rules << ruleinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveTranscodeTemplate请求参数结构体
      class DescribeLiveTranscodeTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板 ID。
        # 注意：在创建转码模板接口 [CreateLiveTranscodeTemplate](/document/product/267/32646) 调用的返回值中获取模板 ID。
        # @type TemplateId: Integer

        attr_accessor :TemplateId
        
        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # DescribeLiveTranscodeTemplate返回参数结构体
      class DescribeLiveTranscodeTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Template: 模板信息。
        # @type Template: :class:`Tencentcloud::Live.v20180801.models.TemplateInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Template, :RequestId
        
        def initialize(template=nil, requestid=nil)
          @Template = template
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Template'].nil?
            @Template = TemplateInfo.new
            @Template.deserialize(params['Template'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveTranscodeTemplates请求参数结构体
      class DescribeLiveTranscodeTemplatesRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeLiveTranscodeTemplates返回参数结构体
      class DescribeLiveTranscodeTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param Templates: 转码模板列表。
        # @type Templates: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Templates, :RequestId
        
        def initialize(templates=nil, requestid=nil)
          @Templates = templates
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Templates'].nil?
            @Templates = []
            params['Templates'].each do |i|
              templateinfo_tmp = TemplateInfo.new
              templateinfo_tmp.deserialize(i)
              @Templates << templateinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveTranscodeTotalInfo请求参数结构体
      class DescribeLiveTranscodeTotalInfoRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间，北京时间。
        # 格式：yyyy-mm-dd HH:MM:SS。
        # @type StartTime: String
        # @param EndTime: 结束时间，北京时间。
        # 格式：yyyy-mm-dd HH:MM:SS。
        # @type EndTime: String
        # @param PushDomains: 推流域名列表，若不填，表示查询所有域名总体数据。
        # 指定域名时返回1小时粒度数据。
        # @type PushDomains: Array
        # @param MainlandOrOversea: 可选值：
        # Mainland：查询中国大陆（境内）数据，
        # Oversea：则查询国际/港澳台（境外）数据，
        # 默认：查询全球地区（境内+境外）的数据。
        # @type MainlandOrOversea: String

        attr_accessor :StartTime, :EndTime, :PushDomains, :MainlandOrOversea
        
        def initialize(starttime=nil, endtime=nil, pushdomains=nil, mainlandoroversea=nil)
          @StartTime = starttime
          @EndTime = endtime
          @PushDomains = pushdomains
          @MainlandOrOversea = mainlandoroversea
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PushDomains = params['PushDomains']
          @MainlandOrOversea = params['MainlandOrOversea']
        end
      end

      # DescribeLiveTranscodeTotalInfo返回参数结构体
      class DescribeLiveTranscodeTotalInfoResponse < TencentCloud::Common::AbstractModel
        # @param DataInfoList: 统计数据列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataInfoList, :RequestId
        
        def initialize(datainfolist=nil, requestid=nil)
          @DataInfoList = datainfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataInfoList'].nil?
            @DataInfoList = []
            params['DataInfoList'].each do |i|
              transcodetotalinfo_tmp = TranscodeTotalInfo.new
              transcodetotalinfo_tmp.deserialize(i)
              @DataInfoList << transcodetotalinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveWatermark请求参数结构体
      class DescribeLiveWatermarkRequest < TencentCloud::Common::AbstractModel
        # @param WatermarkId: DescribeLiveWatermarks接口返回的水印 ID。
        # @type WatermarkId: Integer

        attr_accessor :WatermarkId
        
        def initialize(watermarkid=nil)
          @WatermarkId = watermarkid
        end

        def deserialize(params)
          @WatermarkId = params['WatermarkId']
        end
      end

      # DescribeLiveWatermark返回参数结构体
      class DescribeLiveWatermarkResponse < TencentCloud::Common::AbstractModel
        # @param Watermark: 水印信息。
        # @type Watermark: :class:`Tencentcloud::Live.v20180801.models.WatermarkInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Watermark, :RequestId
        
        def initialize(watermark=nil, requestid=nil)
          @Watermark = watermark
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Watermark'].nil?
            @Watermark = WatermarkInfo.new
            @Watermark.deserialize(params['Watermark'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveWatermarkRules请求参数结构体
      class DescribeLiveWatermarkRulesRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeLiveWatermarkRules返回参数结构体
      class DescribeLiveWatermarkRulesResponse < TencentCloud::Common::AbstractModel
        # @param Rules: 水印规则列表。
        # @type Rules: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rules, :RequestId
        
        def initialize(rules=nil, requestid=nil)
          @Rules = rules
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              ruleinfo_tmp = RuleInfo.new
              ruleinfo_tmp.deserialize(i)
              @Rules << ruleinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveWatermarks请求参数结构体
      class DescribeLiveWatermarksRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeLiveWatermarks返回参数结构体
      class DescribeLiveWatermarksResponse < TencentCloud::Common::AbstractModel
        # @param TotalNum: 水印总个数。
        # @type TotalNum: Integer
        # @param WatermarkList: 水印信息列表。
        # @type WatermarkList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalNum, :WatermarkList, :RequestId
        
        def initialize(totalnum=nil, watermarklist=nil, requestid=nil)
          @TotalNum = totalnum
          @WatermarkList = watermarklist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalNum = params['TotalNum']
          unless params['WatermarkList'].nil?
            @WatermarkList = []
            params['WatermarkList'].each do |i|
              watermarkinfo_tmp = WatermarkInfo.new
              watermarkinfo_tmp.deserialize(i)
              @WatermarkList << watermarkinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLogDownloadList请求参数结构体
      class DescribeLogDownloadListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间，北京时间。
        # 格式：yyyy-mm-dd HH:MM:SS。
        # @type StartTime: String
        # @param EndTime: 结束时间，北京时间。
        # 格式：yyyy-mm-dd HH:MM:SS。
        # 注意：结束时间 - 开始时间 <=7天。
        # @type EndTime: String
        # @param PlayDomains: 域名列表。
        # @type PlayDomains: Array

        attr_accessor :StartTime, :EndTime, :PlayDomains
        
        def initialize(starttime=nil, endtime=nil, playdomains=nil)
          @StartTime = starttime
          @EndTime = endtime
          @PlayDomains = playdomains
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PlayDomains = params['PlayDomains']
        end
      end

      # DescribeLogDownloadList返回参数结构体
      class DescribeLogDownloadListResponse < TencentCloud::Common::AbstractModel
        # @param LogInfoList: 日志信息列表。
        # @type LogInfoList: Array
        # @param TotalNum: 总条数。
        # @type TotalNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LogInfoList, :TotalNum, :RequestId
        
        def initialize(loginfolist=nil, totalnum=nil, requestid=nil)
          @LogInfoList = loginfolist
          @TotalNum = totalnum
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LogInfoList'].nil?
            @LogInfoList = []
            params['LogInfoList'].each do |i|
              loginfo_tmp = LogInfo.new
              loginfo_tmp.deserialize(i)
              @LogInfoList << loginfo_tmp
            end
          end
          @TotalNum = params['TotalNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribePlayErrorCodeDetailInfoList请求参数结构体
      class DescribePlayErrorCodeDetailInfoListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间，北京时间，
        # 格式：yyyy-mm-dd HH:MM:SS。
        # @type StartTime: String
        # @param EndTime: 结束时间，北京时间，
        # 格式：yyyy-mm-dd HH:MM:SS。
        # 注：EndTime 和 StartTime 只支持最近1天的数据查询。
        # @type EndTime: String
        # @param Granularity: 查询粒度：
        # 1-1分钟粒度。
        # @type Granularity: Integer
        # @param StatType: 是，可选值包括”4xx”,”5xx”，支持”4xx,5xx”等这种混合模式。
        # @type StatType: String
        # @param PlayDomains: 播放域名列表。
        # @type PlayDomains: Array
        # @param MainlandOrOversea: 地域，可选值：Mainland，Oversea，China，Foreign，Global（默认值）；如果为空，查询总的数据；如果为“Mainland”，查询中国大陆的数据；如果为“Oversea”，则查询中国大陆以外的数据；如果为China，查询中国的数据（包括港澳台）；如果为Foreign，查询国外的数据（不包括港澳台）。
        # @type MainlandOrOversea: String

        attr_accessor :StartTime, :EndTime, :Granularity, :StatType, :PlayDomains, :MainlandOrOversea
        
        def initialize(starttime=nil, endtime=nil, granularity=nil, stattype=nil, playdomains=nil, mainlandoroversea=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Granularity = granularity
          @StatType = stattype
          @PlayDomains = playdomains
          @MainlandOrOversea = mainlandoroversea
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Granularity = params['Granularity']
          @StatType = params['StatType']
          @PlayDomains = params['PlayDomains']
          @MainlandOrOversea = params['MainlandOrOversea']
        end
      end

      # DescribePlayErrorCodeDetailInfoList返回参数结构体
      class DescribePlayErrorCodeDetailInfoListResponse < TencentCloud::Common::AbstractModel
        # @param HttpCodeList: 统计信息列表。
        # @type HttpCodeList: Array
        # @param StatType: 统计类型。
        # @type StatType: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HttpCodeList, :StatType, :RequestId
        
        def initialize(httpcodelist=nil, stattype=nil, requestid=nil)
          @HttpCodeList = httpcodelist
          @StatType = stattype
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['HttpCodeList'].nil?
            @HttpCodeList = []
            params['HttpCodeList'].each do |i|
              httpcodeinfo_tmp = HttpCodeInfo.new
              httpcodeinfo_tmp.deserialize(i)
              @HttpCodeList << httpcodeinfo_tmp
            end
          end
          @StatType = params['StatType']
          @RequestId = params['RequestId']
        end
      end

      # DescribePlayErrorCodeSumInfoList请求参数结构体
      class DescribePlayErrorCodeSumInfoListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间点，北京时间。
        # 格式：yyyy-mm-dd HH:MM:SS。
        # @type StartTime: String
        # @param EndTime: 结束时间点，北京时间。
        # 格式：yyyy-mm-dd HH:MM:SS。
        # 注：EndTime 和 StartTime 只支持最近1天的数据查询。
        # @type EndTime: String
        # @param PlayDomains: 播放域名列表，不填表示总体数据。
        # @type PlayDomains: Array
        # @param PageNum: 页数，范围[1,1000]，默认值是1。
        # @type PageNum: Integer
        # @param PageSize: 每页个数，范围：[1,1000]，默认值是20。
        # @type PageSize: Integer
        # @param MainlandOrOversea: 地域，可选值：Mainland，Oversea，China，Foreign，Global（默认值）；如果为空，查询总的数据；如果为“Mainland”，查询中国大陆的数据；如果为“Oversea”，则查询中国大陆以外的数据；如果为China，查询中国的数据（包括港澳台）；如果为Foreign，查询国外的数据（不包括港澳台）。
        # @type MainlandOrOversea: String
        # @param GroupType: 分组参数，可选值：CountryProIsp（默认值），Country（国家），默认是按照国家+省份+运营商来进行分组；目前国外的省份和运营商暂时无法识别。
        # @type GroupType: String
        # @param OutLanguage: 输出字段使用的语言，可选值：Chinese（默认值），English，目前国家，省份和运营商支持多语言。
        # @type OutLanguage: String

        attr_accessor :StartTime, :EndTime, :PlayDomains, :PageNum, :PageSize, :MainlandOrOversea, :GroupType, :OutLanguage
        
        def initialize(starttime=nil, endtime=nil, playdomains=nil, pagenum=nil, pagesize=nil, mainlandoroversea=nil, grouptype=nil, outlanguage=nil)
          @StartTime = starttime
          @EndTime = endtime
          @PlayDomains = playdomains
          @PageNum = pagenum
          @PageSize = pagesize
          @MainlandOrOversea = mainlandoroversea
          @GroupType = grouptype
          @OutLanguage = outlanguage
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PlayDomains = params['PlayDomains']
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          @MainlandOrOversea = params['MainlandOrOversea']
          @GroupType = params['GroupType']
          @OutLanguage = params['OutLanguage']
        end
      end

      # DescribePlayErrorCodeSumInfoList返回参数结构体
      class DescribePlayErrorCodeSumInfoListResponse < TencentCloud::Common::AbstractModel
        # @param ProIspInfoList: 分省份分运营商错误码为2或3或4或5开头的状态码数据信息。
        # @type ProIspInfoList: Array
        # @param TotalCodeAll: 所有状态码的加和的次数。
        # @type TotalCodeAll: Integer
        # @param TotalCode4xx: 状态码为4开头的总次数。
        # @type TotalCode4xx: Integer
        # @param TotalCode5xx: 状态码为5开头的总次数。
        # @type TotalCode5xx: Integer
        # @param TotalCodeList: 各状态码的总次数。
        # @type TotalCodeList: Array
        # @param PageNum: 页号。
        # @type PageNum: Integer
        # @param PageSize: 每页大小。
        # @type PageSize: Integer
        # @param TotalPage: 总页数。
        # @type TotalPage: Integer
        # @param TotalNum: 总记录数。
        # @type TotalNum: Integer
        # @param TotalCode2xx: 状态码为2开头的总次数。
        # @type TotalCode2xx: Integer
        # @param TotalCode3xx: 状态码为3开头的总次数。
        # @type TotalCode3xx: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProIspInfoList, :TotalCodeAll, :TotalCode4xx, :TotalCode5xx, :TotalCodeList, :PageNum, :PageSize, :TotalPage, :TotalNum, :TotalCode2xx, :TotalCode3xx, :RequestId
        
        def initialize(proispinfolist=nil, totalcodeall=nil, totalcode4xx=nil, totalcode5xx=nil, totalcodelist=nil, pagenum=nil, pagesize=nil, totalpage=nil, totalnum=nil, totalcode2xx=nil, totalcode3xx=nil, requestid=nil)
          @ProIspInfoList = proispinfolist
          @TotalCodeAll = totalcodeall
          @TotalCode4xx = totalcode4xx
          @TotalCode5xx = totalcode5xx
          @TotalCodeList = totalcodelist
          @PageNum = pagenum
          @PageSize = pagesize
          @TotalPage = totalpage
          @TotalNum = totalnum
          @TotalCode2xx = totalcode2xx
          @TotalCode3xx = totalcode3xx
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ProIspInfoList'].nil?
            @ProIspInfoList = []
            params['ProIspInfoList'].each do |i|
              proispplaycodedatainfo_tmp = ProIspPlayCodeDataInfo.new
              proispplaycodedatainfo_tmp.deserialize(i)
              @ProIspInfoList << proispplaycodedatainfo_tmp
            end
          end
          @TotalCodeAll = params['TotalCodeAll']
          @TotalCode4xx = params['TotalCode4xx']
          @TotalCode5xx = params['TotalCode5xx']
          unless params['TotalCodeList'].nil?
            @TotalCodeList = []
            params['TotalCodeList'].each do |i|
              playcodetotalinfo_tmp = PlayCodeTotalInfo.new
              playcodetotalinfo_tmp.deserialize(i)
              @TotalCodeList << playcodetotalinfo_tmp
            end
          end
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          @TotalPage = params['TotalPage']
          @TotalNum = params['TotalNum']
          @TotalCode2xx = params['TotalCode2xx']
          @TotalCode3xx = params['TotalCode3xx']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProIspPlaySumInfoList请求参数结构体
      class DescribeProIspPlaySumInfoListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间，北京时间，
        # 格式：yyyy-mm-dd HH:MM:SS。
        # @type StartTime: String
        # @param EndTime: 结束时间，北京时间，
        # 格式：yyyy-mm-dd HH:MM:SS。
        # 注：EndTime 和 StartTime 只支持最近1天的数据查询。
        # @type EndTime: String
        # @param StatType: 统计的类型，可选值：”Province”(省份)，”Isp”(运营商)，“CountryOrArea”(国家或地区)。
        # @type StatType: String
        # @param PlayDomains: 播放域名列表，不填则为全部。
        # @type PlayDomains: Array
        # @param PageNum: 页号，范围是[1,1000]，默认值是1。
        # @type PageNum: Integer
        # @param PageSize: 每页个数，范围是[1,1000]，默认值是20。
        # @type PageSize: Integer
        # @param MainlandOrOversea: 地域，可选值：Mainland，Oversea，China，Foreign，Global（默认值）；如果为空，查询总的数据；如果为“Mainland”，查询中国大陆的数据；如果为“Oversea”，则查询中国大陆以外的数据；如果为China，查询中国的数据（包括港澳台）；如果为Foreign，查询国外的数据（不包括港澳台）。
        # @type MainlandOrOversea: String
        # @param OutLanguage: 输出字段使用的语言，可选值：Chinese（默认值），English；目前国家，省份和运营商支持多语言。
        # @type OutLanguage: String

        attr_accessor :StartTime, :EndTime, :StatType, :PlayDomains, :PageNum, :PageSize, :MainlandOrOversea, :OutLanguage
        
        def initialize(starttime=nil, endtime=nil, stattype=nil, playdomains=nil, pagenum=nil, pagesize=nil, mainlandoroversea=nil, outlanguage=nil)
          @StartTime = starttime
          @EndTime = endtime
          @StatType = stattype
          @PlayDomains = playdomains
          @PageNum = pagenum
          @PageSize = pagesize
          @MainlandOrOversea = mainlandoroversea
          @OutLanguage = outlanguage
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @StatType = params['StatType']
          @PlayDomains = params['PlayDomains']
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          @MainlandOrOversea = params['MainlandOrOversea']
          @OutLanguage = params['OutLanguage']
        end
      end

      # DescribeProIspPlaySumInfoList返回参数结构体
      class DescribeProIspPlaySumInfoListResponse < TencentCloud::Common::AbstractModel
        # @param TotalFlux: 总流量。
        # @type TotalFlux: Float
        # @param TotalRequest: 总请求数。
        # @type TotalRequest: Integer
        # @param StatType: 统计的类型。
        # @type StatType: String
        # @param PageSize: 每页的记录数。
        # @type PageSize: Integer
        # @param PageNum: 页号。
        # @type PageNum: Integer
        # @param TotalNum: 总记录数。
        # @type TotalNum: Integer
        # @param TotalPage: 总页数。
        # @type TotalPage: Integer
        # @param DataInfoList: 省份，运营商，国家或地区汇总数据列表。
        # @type DataInfoList: Array
        # @param AvgFluxPerSecond: 下载速度，单位：MB/s，计算方式：总流量/总时长。
        # @type AvgFluxPerSecond: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalFlux, :TotalRequest, :StatType, :PageSize, :PageNum, :TotalNum, :TotalPage, :DataInfoList, :AvgFluxPerSecond, :RequestId
        
        def initialize(totalflux=nil, totalrequest=nil, stattype=nil, pagesize=nil, pagenum=nil, totalnum=nil, totalpage=nil, datainfolist=nil, avgfluxpersecond=nil, requestid=nil)
          @TotalFlux = totalflux
          @TotalRequest = totalrequest
          @StatType = stattype
          @PageSize = pagesize
          @PageNum = pagenum
          @TotalNum = totalnum
          @TotalPage = totalpage
          @DataInfoList = datainfolist
          @AvgFluxPerSecond = avgfluxpersecond
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalFlux = params['TotalFlux']
          @TotalRequest = params['TotalRequest']
          @StatType = params['StatType']
          @PageSize = params['PageSize']
          @PageNum = params['PageNum']
          @TotalNum = params['TotalNum']
          @TotalPage = params['TotalPage']
          unless params['DataInfoList'].nil?
            @DataInfoList = []
            params['DataInfoList'].each do |i|
              proispplaysuminfo_tmp = ProIspPlaySumInfo.new
              proispplaysuminfo_tmp.deserialize(i)
              @DataInfoList << proispplaysuminfo_tmp
            end
          end
          @AvgFluxPerSecond = params['AvgFluxPerSecond']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProvinceIspPlayInfoList请求参数结构体
      class DescribeProvinceIspPlayInfoListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间点，当前使用北京时间，
        # 例：2019-02-21 10:00:00。
        # @type StartTime: String
        # @param EndTime: 结束时间点，当前使用北京时间，
        # 例：2019-02-21 12:00:00。
        # 注：EndTime 和 StartTime 只支持最近1天的数据查询。
        # @type EndTime: String
        # @param Granularity: 支持如下粒度：
        # 1：1分钟粒度（跨度不支持超过1天）
        # @type Granularity: Integer
        # @param StatType: 统计指标类型：
        # “Bandwidth”：带宽
        # “FluxPerSecond”：平均流量
        # “Flux”：流量
        # “Request”：请求数
        # “Online”：并发连接数
        # @type StatType: String
        # @param PlayDomains: 播放域名列表。
        # @type PlayDomains: Array
        # @param ProvinceNames: 要查询的省份（地区）英文名称列表，如 Beijing。
        # @type ProvinceNames: Array
        # @param IspNames: 要查询的运营商英文名称列表，如 China Mobile ，如果为空，查询所有运营商的数据。
        # @type IspNames: Array
        # @param MainlandOrOversea: 地域，可选值：Mainland，Oversea，China，Foreign，Global（默认值）；如果为空，查询总的数据；如果为“Mainland”，查询中国大陆的数据；如果为“Oversea”，则查询中国大陆以外的数据；如果为China，查询中国的数据（包括港澳台）；如果为Foreign，查询国外的数据（不包括港澳台）。
        # @type MainlandOrOversea: String
        # @param IpType: ip类型：
        # “Ipv6”：Ipv6数据
        # 如果为空，查询总的数据；
        # @type IpType: String

        attr_accessor :StartTime, :EndTime, :Granularity, :StatType, :PlayDomains, :ProvinceNames, :IspNames, :MainlandOrOversea, :IpType
        
        def initialize(starttime=nil, endtime=nil, granularity=nil, stattype=nil, playdomains=nil, provincenames=nil, ispnames=nil, mainlandoroversea=nil, iptype=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Granularity = granularity
          @StatType = stattype
          @PlayDomains = playdomains
          @ProvinceNames = provincenames
          @IspNames = ispnames
          @MainlandOrOversea = mainlandoroversea
          @IpType = iptype
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Granularity = params['Granularity']
          @StatType = params['StatType']
          @PlayDomains = params['PlayDomains']
          @ProvinceNames = params['ProvinceNames']
          @IspNames = params['IspNames']
          @MainlandOrOversea = params['MainlandOrOversea']
          @IpType = params['IpType']
        end
      end

      # DescribeProvinceIspPlayInfoList返回参数结构体
      class DescribeProvinceIspPlayInfoListResponse < TencentCloud::Common::AbstractModel
        # @param DataInfoList: 播放信息列表。
        # @type DataInfoList: Array
        # @param StatType: 统计的类型，和输入参数保持一致。
        # @type StatType: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataInfoList, :StatType, :RequestId
        
        def initialize(datainfolist=nil, stattype=nil, requestid=nil)
          @DataInfoList = datainfolist
          @StatType = stattype
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataInfoList'].nil?
            @DataInfoList = []
            params['DataInfoList'].each do |i|
              playstatinfo_tmp = PlayStatInfo.new
              playstatinfo_tmp.deserialize(i)
              @DataInfoList << playstatinfo_tmp
            end
          end
          @StatType = params['StatType']
          @RequestId = params['RequestId']
        end
      end

      # DescribePullStreamConfigs请求参数结构体
      class DescribePullStreamConfigsRequest < TencentCloud::Common::AbstractModel
        # @param ConfigId: 配置 ID。
        # 获取途径：从 CreatePullStreamConfig 接口返回值获取。
        # @type ConfigId: String

        attr_accessor :ConfigId
        
        def initialize(configid=nil)
          @ConfigId = configid
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
        end
      end

      # DescribePullStreamConfigs返回参数结构体
      class DescribePullStreamConfigsResponse < TencentCloud::Common::AbstractModel
        # @param PullStreamConfigs: 拉流配置。
        # @type PullStreamConfigs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PullStreamConfigs, :RequestId
        
        def initialize(pullstreamconfigs=nil, requestid=nil)
          @PullStreamConfigs = pullstreamconfigs
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PullStreamConfigs'].nil?
            @PullStreamConfigs = []
            params['PullStreamConfigs'].each do |i|
              pullstreamconfig_tmp = PullStreamConfig.new
              pullstreamconfig_tmp.deserialize(i)
              @PullStreamConfigs << pullstreamconfig_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePushBandwidthAndFluxList请求参数结构体
      class DescribePushBandwidthAndFluxListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间点，格式为 yyyy-mm-dd HH:MM:SS。
        # @type StartTime: String
        # @param EndTime: 结束时间点，格式为 yyyy-mm-dd HH:MM:SS，起始和结束时间跨度不支持超过31天。
        # @type EndTime: String
        # @param PushDomains: 域名，可以填多个，若不填，表示总体数据。
        # @type PushDomains: Array
        # @param MainlandOrOversea: 可选值：
        # Mainland：查询中国大陆（境内）数据，
        # Oversea：则查询国际/港澳台（境外）数据，
        # 不填则默认查询全球地区（境内+境外）的数据。
        # @type MainlandOrOversea: String
        # @param Granularity: 数据粒度，支持如下粒度：
        # 5：5分钟粒度，（跨度不支持超过1天），
        # 60：1小时粒度（跨度不支持超过一个月），
        # 1440：天粒度（跨度不支持超过一个月）。
        # 默认值：5。
        # @type Granularity: Integer
        # @param RegionNames: 大区，映射表如下：
        # China Mainland 中国大陆
        # Asia Pacific I 亚太一区
        # Asia Pacific II 亚太二区
        # Asia Pacific III 亚太三区
        # Europe 欧洲
        # North America 北美
        # South America 南美
        # Middle East 中东
        # Africa 非洲。
        # @type RegionNames: Array
        # @param CountryNames: 国家，映射表参照如下文档：
        # https://cloud.tencent.com/document/product/267/34019。
        # @type CountryNames: Array

        attr_accessor :StartTime, :EndTime, :PushDomains, :MainlandOrOversea, :Granularity, :RegionNames, :CountryNames
        
        def initialize(starttime=nil, endtime=nil, pushdomains=nil, mainlandoroversea=nil, granularity=nil, regionnames=nil, countrynames=nil)
          @StartTime = starttime
          @EndTime = endtime
          @PushDomains = pushdomains
          @MainlandOrOversea = mainlandoroversea
          @Granularity = granularity
          @RegionNames = regionnames
          @CountryNames = countrynames
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PushDomains = params['PushDomains']
          @MainlandOrOversea = params['MainlandOrOversea']
          @Granularity = params['Granularity']
          @RegionNames = params['RegionNames']
          @CountryNames = params['CountryNames']
        end
      end

      # DescribePushBandwidthAndFluxList返回参数结构体
      class DescribePushBandwidthAndFluxListResponse < TencentCloud::Common::AbstractModel
        # @param PeakBandwidthTime: 峰值带宽所在时间点，格式为 yyyy-mm-dd HH:MM:SS。
        # @type PeakBandwidthTime: String
        # @param PeakBandwidth: 峰值带宽，单位是 Mbps。
        # @type PeakBandwidth: Float
        # @param P95PeakBandwidthTime: 95峰值带宽所在时间点，格式为 yyyy-mm-dd HH:MM:SS。
        # @type P95PeakBandwidthTime: String
        # @param P95PeakBandwidth: 95峰值带宽，单位是 Mbps。
        # @type P95PeakBandwidth: Float
        # @param SumFlux: 总流量，单位是 MB。
        # @type SumFlux: Float
        # @param DataInfoList: 明细数据信息。
        # @type DataInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PeakBandwidthTime, :PeakBandwidth, :P95PeakBandwidthTime, :P95PeakBandwidth, :SumFlux, :DataInfoList, :RequestId
        
        def initialize(peakbandwidthtime=nil, peakbandwidth=nil, p95peakbandwidthtime=nil, p95peakbandwidth=nil, sumflux=nil, datainfolist=nil, requestid=nil)
          @PeakBandwidthTime = peakbandwidthtime
          @PeakBandwidth = peakbandwidth
          @P95PeakBandwidthTime = p95peakbandwidthtime
          @P95PeakBandwidth = p95peakbandwidth
          @SumFlux = sumflux
          @DataInfoList = datainfolist
          @RequestId = requestid
        end

        def deserialize(params)
          @PeakBandwidthTime = params['PeakBandwidthTime']
          @PeakBandwidth = params['PeakBandwidth']
          @P95PeakBandwidthTime = params['P95PeakBandwidthTime']
          @P95PeakBandwidth = params['P95PeakBandwidth']
          @SumFlux = params['SumFlux']
          unless params['DataInfoList'].nil?
            @DataInfoList = []
            params['DataInfoList'].each do |i|
              billdatainfo_tmp = BillDataInfo.new
              billdatainfo_tmp.deserialize(i)
              @DataInfoList << billdatainfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRecordTask请求参数结构体
      class DescribeRecordTaskRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询任务开始时间，Unix 时间戳。设置时间不早于当前时间之前90天的时间，且查询时间跨度不超过一周。
        # @type StartTime: Integer
        # @param EndTime: 查询任务结束时间，Unix 时间戳。EndTime 必须大于 StartTime，设置时间不早于当前时间之前90天的时间，且查询时间跨度不超过一周。（注意：任务开始结束时间必须在查询时间范围内）。
        # @type EndTime: Integer
        # @param StreamName: 流名称。
        # @type StreamName: String
        # @param DomainName: 推流域名。
        # @type DomainName: String
        # @param AppName: 推流路径。
        # @type AppName: String
        # @param ScrollToken: 翻页标识，分批拉取时使用：当单次请求无法拉取所有数据，接口将会返回 ScrollToken，下一次请求携带该 Token，将会从下一条记录开始获取。
        # @type ScrollToken: String

        attr_accessor :StartTime, :EndTime, :StreamName, :DomainName, :AppName, :ScrollToken
        
        def initialize(starttime=nil, endtime=nil, streamname=nil, domainname=nil, appname=nil, scrolltoken=nil)
          @StartTime = starttime
          @EndTime = endtime
          @StreamName = streamname
          @DomainName = domainname
          @AppName = appname
          @ScrollToken = scrolltoken
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @StreamName = params['StreamName']
          @DomainName = params['DomainName']
          @AppName = params['AppName']
          @ScrollToken = params['ScrollToken']
        end
      end

      # DescribeRecordTask返回参数结构体
      class DescribeRecordTaskResponse < TencentCloud::Common::AbstractModel
        # @param ScrollToken: 翻页标识，当请求未返回所有数据，该字段表示下一条记录的 Token。当该字段为空，说明已无更多数据。
        # @type ScrollToken: String
        # @param TaskList: 录制任务列表。当该字段为空，说明已返回所有数据。
        # @type TaskList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ScrollToken, :TaskList, :RequestId
        
        def initialize(scrolltoken=nil, tasklist=nil, requestid=nil)
          @ScrollToken = scrolltoken
          @TaskList = tasklist
          @RequestId = requestid
        end

        def deserialize(params)
          @ScrollToken = params['ScrollToken']
          unless params['TaskList'].nil?
            @TaskList = []
            params['TaskList'].each do |i|
              recordtask_tmp = RecordTask.new
              recordtask_tmp.deserialize(i)
              @TaskList << recordtask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeScreenShotSheetNumList请求参数结构体
      class DescribeScreenShotSheetNumListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: utc起始时间，格式为yyyy-mm-ddTHH:MM:SSZ
        # @type StartTime: String
        # @param EndTime: utc结束时间，格式为yyyy-mm-ddTHH:MM:SSZ，支持查询最近1年数据。
        # @type EndTime: String
        # @param Zone: 地域信息，可选值包括Mainland，Oversea，前者是查询中国大陆范围内的数据，后者是除中国大陆范围之外的数据，若不传该参数，则查询所有地区的数据。
        # @type Zone: String
        # @param PushDomains: 推流域名（支持查询2019年11 月1日之后的域名维度数据）。
        # @type PushDomains: Array
        # @param Granularity: 数据维度，数据延迟1个半小时，可选值包括：1、Minute（5分钟粒度，最大支持查询时间范围是31天），2、Day（天粒度，默认值，按照北京时间做跨天处理，最大支持查询时间范围是186天当天）。
        # @type Granularity: String

        attr_accessor :StartTime, :EndTime, :Zone, :PushDomains, :Granularity
        
        def initialize(starttime=nil, endtime=nil, zone=nil, pushdomains=nil, granularity=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Zone = zone
          @PushDomains = pushdomains
          @Granularity = granularity
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Zone = params['Zone']
          @PushDomains = params['PushDomains']
          @Granularity = params['Granularity']
        end
      end

      # DescribeScreenShotSheetNumList返回参数结构体
      class DescribeScreenShotSheetNumListResponse < TencentCloud::Common::AbstractModel
        # @param DataInfoList: 数据信息列表。
        # @type DataInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataInfoList, :RequestId
        
        def initialize(datainfolist=nil, requestid=nil)
          @DataInfoList = datainfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataInfoList'].nil?
            @DataInfoList = []
            params['DataInfoList'].each do |i|
              timevalue_tmp = TimeValue.new
              timevalue_tmp.deserialize(i)
              @DataInfoList << timevalue_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeScreenshotTask请求参数结构体
      class DescribeScreenshotTaskRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询任务开始时间，Unix 时间戳。设置时间不早于当前时间之前90天的时间，且查询时间跨度不超过一周。
        # @type StartTime: Integer
        # @param EndTime: 查询任务结束时间，Unix 时间戳。EndTime 必须大于 StartTime，设置时间不早于当前时间之前90天的时间，且查询时间跨度不超过一周。（注意：任务开始结束时间必须在查询时间范围内）。
        # @type EndTime: Integer
        # @param StreamName: 流名称。
        # @type StreamName: String
        # @param DomainName: 推流域名。
        # @type DomainName: String
        # @param AppName: 推流路径。
        # @type AppName: String
        # @param ScrollToken: 翻页标识，分批拉取时使用：当单次请求无法拉取所有数据，接口将会返回 ScrollToken，下一次请求携带该 Token，将会从下一条记录开始获取。
        # @type ScrollToken: String

        attr_accessor :StartTime, :EndTime, :StreamName, :DomainName, :AppName, :ScrollToken
        
        def initialize(starttime=nil, endtime=nil, streamname=nil, domainname=nil, appname=nil, scrolltoken=nil)
          @StartTime = starttime
          @EndTime = endtime
          @StreamName = streamname
          @DomainName = domainname
          @AppName = appname
          @ScrollToken = scrolltoken
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @StreamName = params['StreamName']
          @DomainName = params['DomainName']
          @AppName = params['AppName']
          @ScrollToken = params['ScrollToken']
        end
      end

      # DescribeScreenshotTask返回参数结构体
      class DescribeScreenshotTaskResponse < TencentCloud::Common::AbstractModel
        # @param ScrollToken: 翻页标识，当请求未返回所有数据，该字段表示下一条记录的 Token。当该字段为空，说明已无更多数据。
        # @type ScrollToken: String
        # @param TaskList: 截图任务列表。当该字段为空，说明已返回所有数据。
        # @type TaskList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ScrollToken, :TaskList, :RequestId
        
        def initialize(scrolltoken=nil, tasklist=nil, requestid=nil)
          @ScrollToken = scrolltoken
          @TaskList = tasklist
          @RequestId = requestid
        end

        def deserialize(params)
          @ScrollToken = params['ScrollToken']
          unless params['TaskList'].nil?
            @TaskList = []
            params['TaskList'].each do |i|
              screenshottask_tmp = ScreenshotTask.new
              screenshottask_tmp.deserialize(i)
              @TaskList << screenshottask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeStreamDayPlayInfoList请求参数结构体
      class DescribeStreamDayPlayInfoListRequest < TencentCloud::Common::AbstractModel
        # @param DayTime: 日期，格式：YYYY-mm-dd。
        # 第二天凌晨3点出昨天的数据，建议在这个时间点之后查询最新数据。支持最近3个月的数据查询。
        # @type DayTime: String
        # @param PlayDomain: 播放域名。
        # @type PlayDomain: String
        # @param PageNum: 页号，范围[1,1000]，默认值是1。
        # @type PageNum: Integer
        # @param PageSize: 每页个数，范围[100,1000]，默认值是1000。
        # @type PageSize: Integer
        # @param MainlandOrOversea: 可选值：
        # Mainland：查询国内数据，
        # Oversea：则查询国外数据，
        # 默认：查询国内+国外的数据。
        # @type MainlandOrOversea: String
        # @param ServiceName: 服务名称，可选值包括LVB(标准直播)，LEB(快直播)，不填则查LVB+LEB总值。
        # @type ServiceName: String

        attr_accessor :DayTime, :PlayDomain, :PageNum, :PageSize, :MainlandOrOversea, :ServiceName
        
        def initialize(daytime=nil, playdomain=nil, pagenum=nil, pagesize=nil, mainlandoroversea=nil, servicename=nil)
          @DayTime = daytime
          @PlayDomain = playdomain
          @PageNum = pagenum
          @PageSize = pagesize
          @MainlandOrOversea = mainlandoroversea
          @ServiceName = servicename
        end

        def deserialize(params)
          @DayTime = params['DayTime']
          @PlayDomain = params['PlayDomain']
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          @MainlandOrOversea = params['MainlandOrOversea']
          @ServiceName = params['ServiceName']
        end
      end

      # DescribeStreamDayPlayInfoList返回参数结构体
      class DescribeStreamDayPlayInfoListResponse < TencentCloud::Common::AbstractModel
        # @param DataInfoList: 播放数据信息列表。
        # @type DataInfoList: Array
        # @param TotalNum: 总数量。
        # @type TotalNum: Integer
        # @param TotalPage: 总页数。
        # @type TotalPage: Integer
        # @param PageNum: 当前数据所处页码。
        # @type PageNum: Integer
        # @param PageSize: 每页个数。
        # @type PageSize: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataInfoList, :TotalNum, :TotalPage, :PageNum, :PageSize, :RequestId
        
        def initialize(datainfolist=nil, totalnum=nil, totalpage=nil, pagenum=nil, pagesize=nil, requestid=nil)
          @DataInfoList = datainfolist
          @TotalNum = totalnum
          @TotalPage = totalpage
          @PageNum = pagenum
          @PageSize = pagesize
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataInfoList'].nil?
            @DataInfoList = []
            params['DataInfoList'].each do |i|
              playdatainfobystream_tmp = PlayDataInfoByStream.new
              playdatainfobystream_tmp.deserialize(i)
              @DataInfoList << playdatainfobystream_tmp
            end
          end
          @TotalNum = params['TotalNum']
          @TotalPage = params['TotalPage']
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          @RequestId = params['RequestId']
        end
      end

      # DescribeStreamPlayInfoList请求参数结构体
      class DescribeStreamPlayInfoListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间，北京时间，格式为yyyy-mm-dd HH:MM:SS
        # @type StartTime: String
        # @param EndTime: 结束时间，北京时间，格式为yyyy-mm-dd HH:MM:SS，
        # 结束时间 和 开始时间跨度不支持超过24小时，支持距当前时间一个月内的数据查询。
        # @type EndTime: String
        # @param PlayDomain: 播放域名，
        # 若不填，则为查询所有播放域名的在线流数据。
        # @type PlayDomain: String
        # @param StreamName: 流名称，精确匹配。
        # 若不填，则为查询总体播放数据。
        # @type StreamName: String
        # @param AppName: 推流路径，与播放地址中的AppName保持一致，会精确匹配，在同时传递了StreamName时生效。
        # 若不填，则为查询总体播放数据。
        # 注意：按AppName查询请先联系工单申请，开通后配置生效预计需要5个工作日左右，具体时间以最终回复为准。
        # @type AppName: String
        # @param ServiceName: 服务名称，可选值包括LVB(标准直播)，LEB(快直播)，不填则查LVB+LEB总值。
        # @type ServiceName: String

        attr_accessor :StartTime, :EndTime, :PlayDomain, :StreamName, :AppName, :ServiceName
        
        def initialize(starttime=nil, endtime=nil, playdomain=nil, streamname=nil, appname=nil, servicename=nil)
          @StartTime = starttime
          @EndTime = endtime
          @PlayDomain = playdomain
          @StreamName = streamname
          @AppName = appname
          @ServiceName = servicename
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PlayDomain = params['PlayDomain']
          @StreamName = params['StreamName']
          @AppName = params['AppName']
          @ServiceName = params['ServiceName']
        end
      end

      # DescribeStreamPlayInfoList返回参数结构体
      class DescribeStreamPlayInfoListResponse < TencentCloud::Common::AbstractModel
        # @param DataInfoList: 统计信息列表，时间粒度是1分钟。
        # @type DataInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataInfoList, :RequestId
        
        def initialize(datainfolist=nil, requestid=nil)
          @DataInfoList = datainfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataInfoList'].nil?
            @DataInfoList = []
            params['DataInfoList'].each do |i|
              daystreamplayinfo_tmp = DayStreamPlayInfo.new
              daystreamplayinfo_tmp.deserialize(i)
              @DataInfoList << daystreamplayinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeStreamPushInfoList请求参数结构体
      class DescribeStreamPushInfoListRequest < TencentCloud::Common::AbstractModel
        # @param StreamName: 流名称。
        # @type StreamName: String
        # @param StartTime: 起始时间点，北京时间，格式为yyyy-mm-dd HH:MM:SS。
        # @type StartTime: String
        # @param EndTime: 结束时间点，北京时间，格式为yyyy-mm-dd HH:MM:SS，支持查询最近7天数据，建议查询时间跨度在3小时之内。
        # @type EndTime: String
        # @param PushDomain: 推流域名。
        # @type PushDomain: String
        # @param AppName: 推流路径，与推流和播放地址中的AppName保持一致，默认为 live。
        # @type AppName: String

        attr_accessor :StreamName, :StartTime, :EndTime, :PushDomain, :AppName
        
        def initialize(streamname=nil, starttime=nil, endtime=nil, pushdomain=nil, appname=nil)
          @StreamName = streamname
          @StartTime = starttime
          @EndTime = endtime
          @PushDomain = pushdomain
          @AppName = appname
        end

        def deserialize(params)
          @StreamName = params['StreamName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PushDomain = params['PushDomain']
          @AppName = params['AppName']
        end
      end

      # DescribeStreamPushInfoList返回参数结构体
      class DescribeStreamPushInfoListResponse < TencentCloud::Common::AbstractModel
        # @param DataInfoList: 返回的数据列表。
        # @type DataInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataInfoList, :RequestId
        
        def initialize(datainfolist=nil, requestid=nil)
          @DataInfoList = datainfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataInfoList'].nil?
            @DataInfoList = []
            params['DataInfoList'].each do |i|
              pushqualitydata_tmp = PushQualityData.new
              pushqualitydata_tmp.deserialize(i)
              @DataInfoList << pushqualitydata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopClientIpSumInfoList请求参数结构体
      class DescribeTopClientIpSumInfoListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间点，格式为yyyy-mm-dd HH:MM:SS。
        # @type StartTime: String
        # @param EndTime: 结束时间点，格式为yyyy-mm-dd HH:MM:SS
        # 时间跨度在[0,4小时]，支持最近1天数据查询。
        # @type EndTime: String
        # @param PlayDomains: 播放域名，默认为不填，表示求总体数据。
        # @type PlayDomains: Array
        # @param PageNum: 页号，范围是[1,1000]，默认值是1。
        # @type PageNum: Integer
        # @param PageSize: 每页个数，范围是[1,1000]，默认值是20。
        # @type PageSize: Integer
        # @param OrderParam: 排序指标，可选值包括TotalRequest（默认值），FailedRequest,TotalFlux。
        # @type OrderParam: String
        # @param MainlandOrOversea: 地域，可选值：Mainland，Oversea，China，Foreign，Global（默认值）；如果为空，查询总的数据；如果为“Mainland”，查询中国大陆的数据；如果为“Oversea”，则查询中国大陆以外的数据；如果为China，查询中国的数据（包括港澳台）；如果为Foreign，查询国外的数据（不包括港澳台）。
        # @type MainlandOrOversea: String
        # @param OutLanguage: 输出字段使用的语言，可选值：Chinese（默认值），English；目前国家，省份和运营商支持多语言。
        # @type OutLanguage: String

        attr_accessor :StartTime, :EndTime, :PlayDomains, :PageNum, :PageSize, :OrderParam, :MainlandOrOversea, :OutLanguage
        
        def initialize(starttime=nil, endtime=nil, playdomains=nil, pagenum=nil, pagesize=nil, orderparam=nil, mainlandoroversea=nil, outlanguage=nil)
          @StartTime = starttime
          @EndTime = endtime
          @PlayDomains = playdomains
          @PageNum = pagenum
          @PageSize = pagesize
          @OrderParam = orderparam
          @MainlandOrOversea = mainlandoroversea
          @OutLanguage = outlanguage
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PlayDomains = params['PlayDomains']
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          @OrderParam = params['OrderParam']
          @MainlandOrOversea = params['MainlandOrOversea']
          @OutLanguage = params['OutLanguage']
        end
      end

      # DescribeTopClientIpSumInfoList返回参数结构体
      class DescribeTopClientIpSumInfoListResponse < TencentCloud::Common::AbstractModel
        # @param PageNum: 页号，范围是[1,1000]，默认值是1。
        # @type PageNum: Integer
        # @param PageSize: 每页个数，范围是[1,1000]，默认值是20。
        # @type PageSize: Integer
        # @param OrderParam: 排序指标，可选值包括”TotalRequest”，”FailedRequest”,“TotalFlux”。
        # @type OrderParam: String
        # @param TotalNum: 记录总数。
        # @type TotalNum: Integer
        # @param TotalPage: 记录总页数。
        # @type TotalPage: Integer
        # @param DataInfoList: 数据内容。
        # @type DataInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PageNum, :PageSize, :OrderParam, :TotalNum, :TotalPage, :DataInfoList, :RequestId
        
        def initialize(pagenum=nil, pagesize=nil, orderparam=nil, totalnum=nil, totalpage=nil, datainfolist=nil, requestid=nil)
          @PageNum = pagenum
          @PageSize = pagesize
          @OrderParam = orderparam
          @TotalNum = totalnum
          @TotalPage = totalpage
          @DataInfoList = datainfolist
          @RequestId = requestid
        end

        def deserialize(params)
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          @OrderParam = params['OrderParam']
          @TotalNum = params['TotalNum']
          @TotalPage = params['TotalPage']
          unless params['DataInfoList'].nil?
            @DataInfoList = []
            params['DataInfoList'].each do |i|
              clientipplaysuminfo_tmp = ClientIpPlaySumInfo.new
              clientipplaysuminfo_tmp.deserialize(i)
              @DataInfoList << clientipplaysuminfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTranscodeTaskNum请求参数结构体
      class DescribeTranscodeTaskNumRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间，格式：yyyy-mm-dd HH:MM:SS。
        # @type StartTime: String
        # @param EndTime: 结束时间，格式：yyyy-mm-dd HH:MM:SS。
        # @type EndTime: String
        # @param PushDomains: 推流域名列表，不填表示总体数据。
        # @type PushDomains: Array

        attr_accessor :StartTime, :EndTime, :PushDomains
        
        def initialize(starttime=nil, endtime=nil, pushdomains=nil)
          @StartTime = starttime
          @EndTime = endtime
          @PushDomains = pushdomains
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PushDomains = params['PushDomains']
        end
      end

      # DescribeTranscodeTaskNum返回参数结构体
      class DescribeTranscodeTaskNumResponse < TencentCloud::Common::AbstractModel
        # @param DataInfoList: 任务数列表。
        # @type DataInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataInfoList, :RequestId
        
        def initialize(datainfolist=nil, requestid=nil)
          @DataInfoList = datainfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataInfoList'].nil?
            @DataInfoList = []
            params['DataInfoList'].each do |i|
              transcodetasknum_tmp = TranscodeTaskNum.new
              transcodetasknum_tmp.deserialize(i)
              @DataInfoList << transcodetasknum_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUploadStreamNums请求参数结构体
      class DescribeUploadStreamNumsRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间点，格式为yyyy-mm-dd HH:MM:SS。
        # @type StartTime: String
        # @param EndTime: 结束时间点，格式为yyyy-mm-dd HH:MM:SS，起始和结束时间跨度不支持超过31天。支持最近31天的数据查询
        # @type EndTime: String
        # @param Domains: 直播域名，若不填，表示总体数据。
        # @type Domains: Array
        # @param Granularity: 数据粒度，支持如下粒度：
        # 5：5分钟粒度，（跨度不支持超过1天），
        # 1440：天粒度（跨度不支持超过一个月）。
        # 默认值：5。
        # @type Granularity: Integer

        attr_accessor :StartTime, :EndTime, :Domains, :Granularity
        
        def initialize(starttime=nil, endtime=nil, domains=nil, granularity=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Domains = domains
          @Granularity = granularity
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Domains = params['Domains']
          @Granularity = params['Granularity']
        end
      end

      # DescribeUploadStreamNums返回参数结构体
      class DescribeUploadStreamNumsResponse < TencentCloud::Common::AbstractModel
        # @param DataInfoList: 明细数据信息
        # @type DataInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataInfoList, :RequestId
        
        def initialize(datainfolist=nil, requestid=nil)
          @DataInfoList = datainfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataInfoList'].nil?
            @DataInfoList = []
            params['DataInfoList'].each do |i|
              concurrentrecordstreamnum_tmp = ConcurrentRecordStreamNum.new
              concurrentrecordstreamnum_tmp.deserialize(i)
              @DataInfoList << concurrentrecordstreamnum_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVisitTopSumInfoList请求参数结构体
      class DescribeVisitTopSumInfoListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间点，格式为yyyy-mm-dd HH:MM:SS。
        # @type StartTime: String
        # @param EndTime: 结束时间点，格式为yyyy-mm-dd HH:MM:SS
        # 时间跨度在(0,4小时]，支持最近1天数据查询。
        # @type EndTime: String
        # @param TopIndex: 峰值指标，可选值包括”Domain”，”StreamId”。
        # @type TopIndex: String
        # @param PlayDomains: 播放域名，默认为不填，表示求总体数据。
        # @type PlayDomains: Array
        # @param PageNum: 页号，
        # 范围是[1,1000]，
        # 默认值是1。
        # @type PageNum: Integer
        # @param PageSize: 每页个数，范围是[1,1000]，
        # 默认值是20。
        # @type PageSize: Integer
        # @param OrderParam: 排序指标，可选值包括” AvgFluxPerSecond”，”TotalRequest”（默认）,“TotalFlux”。
        # @type OrderParam: String

        attr_accessor :StartTime, :EndTime, :TopIndex, :PlayDomains, :PageNum, :PageSize, :OrderParam
        
        def initialize(starttime=nil, endtime=nil, topindex=nil, playdomains=nil, pagenum=nil, pagesize=nil, orderparam=nil)
          @StartTime = starttime
          @EndTime = endtime
          @TopIndex = topindex
          @PlayDomains = playdomains
          @PageNum = pagenum
          @PageSize = pagesize
          @OrderParam = orderparam
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @TopIndex = params['TopIndex']
          @PlayDomains = params['PlayDomains']
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          @OrderParam = params['OrderParam']
        end
      end

      # DescribeVisitTopSumInfoList返回参数结构体
      class DescribeVisitTopSumInfoListResponse < TencentCloud::Common::AbstractModel
        # @param PageNum: 页号，
        # 范围是[1,1000]，
        # 默认值是1。
        # @type PageNum: Integer
        # @param PageSize: 每页个数，范围是[1,1000]，
        # 默认值是20。
        # @type PageSize: Integer
        # @param TopIndex: 峰值指标，可选值包括”Domain”，”StreamId”。
        # @type TopIndex: String
        # @param OrderParam: 排序指标，可选值包括” AvgFluxPerSecond”(按每秒平均流量排序)，”TotalRequest”（默认，按总请求数排序）,“TotalFlux”（按总流量排序）。
        # @type OrderParam: String
        # @param TotalNum: 记录总数。
        # @type TotalNum: Integer
        # @param TotalPage: 记录总页数。
        # @type TotalPage: Integer
        # @param DataInfoList: 数据内容。
        # @type DataInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PageNum, :PageSize, :TopIndex, :OrderParam, :TotalNum, :TotalPage, :DataInfoList, :RequestId
        
        def initialize(pagenum=nil, pagesize=nil, topindex=nil, orderparam=nil, totalnum=nil, totalpage=nil, datainfolist=nil, requestid=nil)
          @PageNum = pagenum
          @PageSize = pagesize
          @TopIndex = topindex
          @OrderParam = orderparam
          @TotalNum = totalnum
          @TotalPage = totalpage
          @DataInfoList = datainfolist
          @RequestId = requestid
        end

        def deserialize(params)
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          @TopIndex = params['TopIndex']
          @OrderParam = params['OrderParam']
          @TotalNum = params['TotalNum']
          @TotalPage = params['TotalPage']
          unless params['DataInfoList'].nil?
            @DataInfoList = []
            params['DataInfoList'].each do |i|
              playsumstatinfo_tmp = PlaySumStatInfo.new
              playsumstatinfo_tmp.deserialize(i)
              @DataInfoList << playsumstatinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 域名证书信息
      class DomainCertInfo < TencentCloud::Common::AbstractModel
        # @param CertId: 证书Id。
        # @type CertId: Integer
        # @param CertName: 证书名称。
        # @type CertName: String
        # @param Description: 描述信息。
        # @type Description: String
        # @param CreateTime: 创建时间，UTC格式。
        # @type CreateTime: String
        # @param HttpsCrt: 证书内容。
        # @type HttpsCrt: String
        # @param CertType: 证书类型。
        # 0：用户添加证书，
        # 1：腾讯云托管证书。
        # @type CertType: Integer
        # @param CertExpireTime: 证书过期时间，UTC格式。
        # @type CertExpireTime: String
        # @param DomainName: 使用此证书的域名名称。
        # @type DomainName: String
        # @param Status: 证书状态。
        # @type Status: Integer
        # @param CertDomains: 证书本身标识的域名列表。
        # 比如: ["*.x.com"]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertDomains: Array
        # @param CloudCertId: 腾讯云ssl的证书Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CloudCertId: String

        attr_accessor :CertId, :CertName, :Description, :CreateTime, :HttpsCrt, :CertType, :CertExpireTime, :DomainName, :Status, :CertDomains, :CloudCertId
        
        def initialize(certid=nil, certname=nil, description=nil, createtime=nil, httpscrt=nil, certtype=nil, certexpiretime=nil, domainname=nil, status=nil, certdomains=nil, cloudcertid=nil)
          @CertId = certid
          @CertName = certname
          @Description = description
          @CreateTime = createtime
          @HttpsCrt = httpscrt
          @CertType = certtype
          @CertExpireTime = certexpiretime
          @DomainName = domainname
          @Status = status
          @CertDomains = certdomains
          @CloudCertId = cloudcertid
        end

        def deserialize(params)
          @CertId = params['CertId']
          @CertName = params['CertName']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @HttpsCrt = params['HttpsCrt']
          @CertType = params['CertType']
          @CertExpireTime = params['CertExpireTime']
          @DomainName = params['DomainName']
          @Status = params['Status']
          @CertDomains = params['CertDomains']
          @CloudCertId = params['CloudCertId']
        end
      end

      # 每个域名的统计信息。
      class DomainDetailInfo < TencentCloud::Common::AbstractModel
        # @param MainlandOrOversea: 国内还是国外:
        # Mainland: 表示国内数据。
        # Oversea: 表示国外数据。
        # @type MainlandOrOversea: String
        # @param Bandwidth: 带宽，单位: Mbps。
        # @type Bandwidth: Float
        # @param Flux: 流量，单位: MB。
        # @type Flux: Float
        # @param Online: 人数。
        # @type Online: Integer
        # @param Request: 请求数。
        # @type Request: Integer

        attr_accessor :MainlandOrOversea, :Bandwidth, :Flux, :Online, :Request
        
        def initialize(mainlandoroversea=nil, bandwidth=nil, flux=nil, online=nil, request=nil)
          @MainlandOrOversea = mainlandoroversea
          @Bandwidth = bandwidth
          @Flux = flux
          @Online = online
          @Request = request
        end

        def deserialize(params)
          @MainlandOrOversea = params['MainlandOrOversea']
          @Bandwidth = params['Bandwidth']
          @Flux = params['Flux']
          @Online = params['Online']
          @Request = params['Request']
        end
      end

      # 直播域名信息
      class DomainInfo < TencentCloud::Common::AbstractModel
        # @param Name: 直播域名。
        # @type Name: String
        # @param Type: 域名类型:
        # 0: 推流。
        # 1: 播放。
        # @type Type: Integer
        # @param Status: 域名状态:
        # 0: 停用。
        # 1: 启用。
        # @type Status: Integer
        # @param CreateTime: 添加时间。
        # @type CreateTime: String
        # @param BCName: 是否有 CName 到固定规则域名:
        # 0: 否。
        # 1: 是。
        # @type BCName: Integer
        # @param TargetDomain: cname 对应的域名。
        # @type TargetDomain: String
        # @param PlayType: 播放区域，只在 Type=1 时该参数有意义。
        # 1: 国内。
        # 2: 全球。
        # 3: 海外。
        # @type PlayType: Integer
        # @param IsDelayLive: 是否慢直播:
        # 0: 普通直播。
        # 1: 慢直播。
        # @type IsDelayLive: Integer
        # @param CurrentCName: 当前客户使用的 cname 信息。
        # @type CurrentCName: String
        # @param RentTag: 失效参数，可忽略。
        # @type RentTag: Integer
        # @param RentExpireTime: 失效参数，可忽略。
        # @type RentExpireTime: String
        # @param IsMiniProgramLive: 0: 标准直播。
        # 1: 小程序直播。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsMiniProgramLive: Integer

        attr_accessor :Name, :Type, :Status, :CreateTime, :BCName, :TargetDomain, :PlayType, :IsDelayLive, :CurrentCName, :RentTag, :RentExpireTime, :IsMiniProgramLive
        
        def initialize(name=nil, type=nil, status=nil, createtime=nil, bcname=nil, targetdomain=nil, playtype=nil, isdelaylive=nil, currentcname=nil, renttag=nil, rentexpiretime=nil, isminiprogramlive=nil)
          @Name = name
          @Type = type
          @Status = status
          @CreateTime = createtime
          @BCName = bcname
          @TargetDomain = targetdomain
          @PlayType = playtype
          @IsDelayLive = isdelaylive
          @CurrentCName = currentcname
          @RentTag = renttag
          @RentExpireTime = rentexpiretime
          @IsMiniProgramLive = isminiprogramlive
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @BCName = params['BCName']
          @TargetDomain = params['TargetDomain']
          @PlayType = params['PlayType']
          @IsDelayLive = params['IsDelayLive']
          @CurrentCName = params['CurrentCName']
          @RentTag = params['RentTag']
          @RentExpireTime = params['RentExpireTime']
          @IsMiniProgramLive = params['IsMiniProgramLive']
        end
      end

      # 多个域名信息列表
      class DomainInfoList < TencentCloud::Common::AbstractModel
        # @param Domain: 域名。
        # @type Domain: String
        # @param DetailInfoList: 明细信息。
        # @type DetailInfoList: Array

        attr_accessor :Domain, :DetailInfoList
        
        def initialize(domain=nil, detailinfolist=nil)
          @Domain = domain
          @DetailInfoList = detailinfolist
        end

        def deserialize(params)
          @Domain = params['Domain']
          unless params['DetailInfoList'].nil?
            @DetailInfoList = []
            params['DetailInfoList'].each do |i|
              domaindetailinfo_tmp = DomainDetailInfo.new
              domaindetailinfo_tmp.deserialize(i)
              @DetailInfoList << domaindetailinfo_tmp
            end
          end
        end
      end

      # DropLiveStream请求参数结构体
      class DropLiveStreamRequest < TencentCloud::Common::AbstractModel
        # @param StreamName: 流名称。
        # @type StreamName: String
        # @param DomainName: 您的推流域名。
        # @type DomainName: String
        # @param AppName: 推流路径，与推流和播放地址中的AppName保持一致，默认为 live。
        # @type AppName: String

        attr_accessor :StreamName, :DomainName, :AppName
        
        def initialize(streamname=nil, domainname=nil, appname=nil)
          @StreamName = streamname
          @DomainName = domainname
          @AppName = appname
        end

        def deserialize(params)
          @StreamName = params['StreamName']
          @DomainName = params['DomainName']
          @AppName = params['AppName']
        end
      end

      # DropLiveStream返回参数结构体
      class DropLiveStreamResponse < TencentCloud::Common::AbstractModel
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

      # EnableLiveDomain请求参数结构体
      class EnableLiveDomainRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 待启用的直播域名。
        # @type DomainName: String

        attr_accessor :DomainName
        
        def initialize(domainname=nil)
          @DomainName = domainname
        end

        def deserialize(params)
          @DomainName = params['DomainName']
        end
      end

      # EnableLiveDomain返回参数结构体
      class EnableLiveDomainResponse < TencentCloud::Common::AbstractModel
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

      # flv格式特殊配置
      class FlvSpecialParam < TencentCloud::Common::AbstractModel
        # @param UploadInRecording: 是否开启边录边传，仅flv格式有效。
        # @type UploadInRecording: Boolean

        attr_accessor :UploadInRecording
        
        def initialize(uploadinrecording=nil)
          @UploadInRecording = uploadinrecording
        end

        def deserialize(params)
          @UploadInRecording = params['UploadInRecording']
        end
      end

      # ForbidLiveDomain请求参数结构体
      class ForbidLiveDomainRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 待停用的直播域名。
        # @type DomainName: String

        attr_accessor :DomainName
        
        def initialize(domainname=nil)
          @DomainName = domainname
        end

        def deserialize(params)
          @DomainName = params['DomainName']
        end
      end

      # ForbidLiveDomain返回参数结构体
      class ForbidLiveDomainResponse < TencentCloud::Common::AbstractModel
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

      # ForbidLiveStream请求参数结构体
      class ForbidLiveStreamRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 推流路径，与推流和播放地址中的AppName保持一致，默认为 live。
        # @type AppName: String
        # @param DomainName: 您的推流域名。
        # @type DomainName: String
        # @param StreamName: 流名称。
        # @type StreamName: String
        # @param ResumeTime: 恢复流的时间。UTC 格式，例如：2018-11-29T19:00:00Z。
        # 注意：
        # 1. 默认禁推7天，且最长支持禁推90天。
        # 2. 北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type ResumeTime: String
        # @param Reason: 禁推原因。
        # 注明：请务必填写禁推原因，防止误操作。
        # 长度限制：2048字节。
        # @type Reason: String

        attr_accessor :AppName, :DomainName, :StreamName, :ResumeTime, :Reason
        
        def initialize(appname=nil, domainname=nil, streamname=nil, resumetime=nil, reason=nil)
          @AppName = appname
          @DomainName = domainname
          @StreamName = streamname
          @ResumeTime = resumetime
          @Reason = reason
        end

        def deserialize(params)
          @AppName = params['AppName']
          @DomainName = params['DomainName']
          @StreamName = params['StreamName']
          @ResumeTime = params['ResumeTime']
          @Reason = params['Reason']
        end
      end

      # ForbidLiveStream返回参数结构体
      class ForbidLiveStreamResponse < TencentCloud::Common::AbstractModel
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

      # 禁推流列表
      class ForbidStreamInfo < TencentCloud::Common::AbstractModel
        # @param StreamName: 流名称。
        # @type StreamName: String
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param ExpireTime: 禁推过期时间。
        # @type ExpireTime: String
        # @param AppName: 推流路径。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppName: String
        # @param DomainName: 推流域名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainName: String

        attr_accessor :StreamName, :CreateTime, :ExpireTime, :AppName, :DomainName
        
        def initialize(streamname=nil, createtime=nil, expiretime=nil, appname=nil, domainname=nil)
          @StreamName = streamname
          @CreateTime = createtime
          @ExpireTime = expiretime
          @AppName = appname
          @DomainName = domainname
        end

        def deserialize(params)
          @StreamName = params['StreamName']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
          @AppName = params['AppName']
          @DomainName = params['DomainName']
        end
      end

      # 某省份某运营商在某段时间内的带宽，流量，请求数和并发数
      class GroupProIspDataInfo < TencentCloud::Common::AbstractModel
        # @param ProvinceName: 省份。
        # @type ProvinceName: String
        # @param IspName: 运营商。
        # @type IspName: String
        # @param DetailInfoList: 分钟维度的明细数据。
        # @type DetailInfoList: Array

        attr_accessor :ProvinceName, :IspName, :DetailInfoList
        
        def initialize(provincename=nil, ispname=nil, detailinfolist=nil)
          @ProvinceName = provincename
          @IspName = ispname
          @DetailInfoList = detailinfolist
        end

        def deserialize(params)
          @ProvinceName = params['ProvinceName']
          @IspName = params['IspName']
          unless params['DetailInfoList'].nil?
            @DetailInfoList = []
            params['DetailInfoList'].each do |i|
              cdnplaystatdata_tmp = CdnPlayStatData.new
              cdnplaystatdata_tmp.deserialize(i)
              @DetailInfoList << cdnplaystatdata_tmp
            end
          end
        end
      end

      # HLS专属录制参数
      class HlsSpecialParam < TencentCloud::Common::AbstractModel
        # @param FlowContinueDuration: HLS续流超时时间。
        # 取值范围[0，1800]。
        # @type FlowContinueDuration: Integer

        attr_accessor :FlowContinueDuration
        
        def initialize(flowcontinueduration=nil)
          @FlowContinueDuration = flowcontinueduration
        end

        def deserialize(params)
          @FlowContinueDuration = params['FlowContinueDuration']
        end
      end

      # HTTP返回码和统计数据
      class HttpCodeInfo < TencentCloud::Common::AbstractModel
        # @param HttpCode: HTTP协议返回码。
        # 例："2xx", "3xx", "4xx", "5xx"。
        # @type HttpCode: String
        # @param ValueList: 统计信息，对于无数据的时间点，会补0。
        # @type ValueList: Array

        attr_accessor :HttpCode, :ValueList
        
        def initialize(httpcode=nil, valuelist=nil)
          @HttpCode = httpcode
          @ValueList = valuelist
        end

        def deserialize(params)
          @HttpCode = params['HttpCode']
          unless params['ValueList'].nil?
            @ValueList = []
            params['ValueList'].each do |i|
              httpcodevalue_tmp = HttpCodeValue.new
              httpcodevalue_tmp.deserialize(i)
              @ValueList << httpcodevalue_tmp
            end
          end
        end
      end

      # HTTP返回码数据信息
      class HttpCodeValue < TencentCloud::Common::AbstractModel
        # @param Time: 时间，格式：yyyy-mm-dd HH:MM:SS。
        # @type Time: String
        # @param Numbers: 次数。
        # @type Numbers: Integer
        # @param Percentage: 占比。
        # @type Percentage: Float

        attr_accessor :Time, :Numbers, :Percentage
        
        def initialize(time=nil, numbers=nil, percentage=nil)
          @Time = time
          @Numbers = numbers
          @Percentage = percentage
        end

        def deserialize(params)
          @Time = params['Time']
          @Numbers = params['Numbers']
          @Percentage = params['Percentage']
        end
      end

      # 播放错误码信息
      class HttpStatusData < TencentCloud::Common::AbstractModel
        # @param Time: 数据时间点，
        # 格式：yyyy-mm-dd HH:MM:SS。
        # @type Time: String
        # @param HttpStatusInfoList: 播放状态码详细信息。
        # @type HttpStatusInfoList: Array

        attr_accessor :Time, :HttpStatusInfoList
        
        def initialize(time=nil, httpstatusinfolist=nil)
          @Time = time
          @HttpStatusInfoList = httpstatusinfolist
        end

        def deserialize(params)
          @Time = params['Time']
          unless params['HttpStatusInfoList'].nil?
            @HttpStatusInfoList = []
            params['HttpStatusInfoList'].each do |i|
              httpstatusinfo_tmp = HttpStatusInfo.new
              httpstatusinfo_tmp.deserialize(i)
              @HttpStatusInfoList << httpstatusinfo_tmp
            end
          end
        end
      end

      # 播放错误码信息
      class HttpStatusInfo < TencentCloud::Common::AbstractModel
        # @param HttpStatus: 播放HTTP状态码。
        # @type HttpStatus: String
        # @param Num: 个数。
        # @type Num: Integer

        attr_accessor :HttpStatus, :Num
        
        def initialize(httpstatus=nil, num=nil)
          @HttpStatus = httpstatus
          @Num = num
        end

        def deserialize(params)
          @HttpStatus = params['HttpStatus']
          @Num = params['Num']
        end
      end

      # 用作批量绑定域名和证书。
      class LiveCertDomainInfo < TencentCloud::Common::AbstractModel
        # @param DomainName: 域名。
        # @type DomainName: String
        # @param Status: 是否启用域名的https规则。
        # 1：启用
        # 0：禁用
        # -1：保持不变
        # @type Status: Integer

        attr_accessor :DomainName, :Status
        
        def initialize(domainname=nil, status=nil)
          @DomainName = domainname
          @Status = status
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @Status = params['Status']
        end
      end

      # DescribeLiveDomainCertBindings, DescribeLiveDomainCertBindingsGray接口返回的域名证书信息
      class LiveDomainCertBindings < TencentCloud::Common::AbstractModel
        # @param DomainName: 域名。
        # @type DomainName: String
        # @param CertificateAlias: 证书备注。与CertName同义。
        # @type CertificateAlias: String
        # @param CertType: 证书类型。
        # 0：自有证书
        # 1：腾讯云ssl托管证书
        # @type CertType: Integer
        # @param Status: https状态。
        # 1：已开启。
        # 0：已关闭。
        # @type Status: Integer
        # @param CertExpireTime: 证书过期时间。
        # @type CertExpireTime: String
        # @param CertId: 证书Id。
        # @type CertId: Integer
        # @param CloudCertId: 腾讯云ssl的证书Id。
        # @type CloudCertId: String
        # @param UpdateTime: 规则最后更新时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :DomainName, :CertificateAlias, :CertType, :Status, :CertExpireTime, :CertId, :CloudCertId, :UpdateTime
        
        def initialize(domainname=nil, certificatealias=nil, certtype=nil, status=nil, certexpiretime=nil, certid=nil, cloudcertid=nil, updatetime=nil)
          @DomainName = domainname
          @CertificateAlias = certificatealias
          @CertType = certtype
          @Status = status
          @CertExpireTime = certexpiretime
          @CertId = certid
          @CloudCertId = cloudcertid
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @CertificateAlias = params['CertificateAlias']
          @CertType = params['CertType']
          @Status = params['Status']
          @CertExpireTime = params['CertExpireTime']
          @CertId = params['CertId']
          @CloudCertId = params['CloudCertId']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 直播包信息。
      class LivePackageInfo < TencentCloud::Common::AbstractModel
        # @param Id: 包 ID。
        # @type Id: String
        # @param Total: 总量。
        # 注意：当为流量包时单位为字节。
        # 当为转码包时单位为分钟。
        # @type Total: Integer
        # @param Used: 使用量。
        # 注意：当为流量包时单位为字节。
        # 当为转码包时单位为分钟。
        # 当为连麦包时单位为小时。
        # @type Used: Integer
        # @param Left: 剩余量。
        # 注意：当为流量包时单位为字节。
        # 当为转码包时单位为分钟。
        # 当为连麦包时单位为小时。
        # @type Left: Integer
        # @param BuyTime: 购买时间。
        # @type BuyTime: String
        # @param ExpireTime: 过期时间。
        # @type ExpireTime: String
        # @param Type: 包类型，可选值:
        # 0: 流量包。
        # 1: 普通转码包。
        # 2: 极速高清包。
        # 3: 连麦包。
        # @type Type: Integer
        # @param Status: 包状态，可选值:
        # 0: 未使用。
        # 1: 使用中。
        # 2: 已过期。
        # 3: 已冻结。
        # 4: 已耗尽。
        # 5: 已退款
        # @type Status: Integer

        attr_accessor :Id, :Total, :Used, :Left, :BuyTime, :ExpireTime, :Type, :Status
        
        def initialize(id=nil, total=nil, used=nil, left=nil, buytime=nil, expiretime=nil, type=nil, status=nil)
          @Id = id
          @Total = total
          @Used = used
          @Left = left
          @BuyTime = buytime
          @ExpireTime = expiretime
          @Type = type
          @Status = status
        end

        def deserialize(params)
          @Id = params['Id']
          @Total = params['Total']
          @Used = params['Used']
          @Left = params['Left']
          @BuyTime = params['BuyTime']
          @ExpireTime = params['ExpireTime']
          @Type = params['Type']
          @Status = params['Status']
        end
      end

      # 日志url信息。
      class LogInfo < TencentCloud::Common::AbstractModel
        # @param LogName: 日志名称。
        # @type LogName: String
        # @param LogUrl: 日志 URL。
        # @type LogUrl: String
        # @param LogTime: 日志生成时间。
        # @type LogTime: String
        # @param FileSize: 文件大小。
        # @type FileSize: Integer

        attr_accessor :LogName, :LogUrl, :LogTime, :FileSize
        
        def initialize(logname=nil, logurl=nil, logtime=nil, filesize=nil)
          @LogName = logname
          @LogUrl = logurl
          @LogTime = logtime
          @FileSize = filesize
        end

        def deserialize(params)
          @LogName = params['LogName']
          @LogUrl = params['LogUrl']
          @LogTime = params['LogTime']
          @FileSize = params['FileSize']
        end
      end

      # ModifyLiveCallbackTemplate请求参数结构体
      class ModifyLiveCallbackTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: DescribeLiveCallbackTemplates接口返回的模板 ID。
        # @type TemplateId: Integer
        # @param TemplateName: 模板名称。
        # @type TemplateName: String
        # @param Description: 描述信息。
        # @type Description: String
        # @param StreamBeginNotifyUrl: 开播回调 URL。
        # @type StreamBeginNotifyUrl: String
        # @param StreamEndNotifyUrl: 断流回调 URL。
        # @type StreamEndNotifyUrl: String
        # @param RecordNotifyUrl: 录制回调 URL。
        # @type RecordNotifyUrl: String
        # @param SnapshotNotifyUrl: 截图回调 URL。
        # @type SnapshotNotifyUrl: String
        # @param PornCensorshipNotifyUrl: 鉴黄回调 URL。
        # @type PornCensorshipNotifyUrl: String
        # @param CallbackKey: 回调 Key，回调 URL 公用，回调签名详见事件消息通知文档。
        # [事件消息通知](/document/product/267/32744)。
        # @type CallbackKey: String

        attr_accessor :TemplateId, :TemplateName, :Description, :StreamBeginNotifyUrl, :StreamEndNotifyUrl, :RecordNotifyUrl, :SnapshotNotifyUrl, :PornCensorshipNotifyUrl, :CallbackKey
        
        def initialize(templateid=nil, templatename=nil, description=nil, streambeginnotifyurl=nil, streamendnotifyurl=nil, recordnotifyurl=nil, snapshotnotifyurl=nil, porncensorshipnotifyurl=nil, callbackkey=nil)
          @TemplateId = templateid
          @TemplateName = templatename
          @Description = description
          @StreamBeginNotifyUrl = streambeginnotifyurl
          @StreamEndNotifyUrl = streamendnotifyurl
          @RecordNotifyUrl = recordnotifyurl
          @SnapshotNotifyUrl = snapshotnotifyurl
          @PornCensorshipNotifyUrl = porncensorshipnotifyurl
          @CallbackKey = callbackkey
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
          @Description = params['Description']
          @StreamBeginNotifyUrl = params['StreamBeginNotifyUrl']
          @StreamEndNotifyUrl = params['StreamEndNotifyUrl']
          @RecordNotifyUrl = params['RecordNotifyUrl']
          @SnapshotNotifyUrl = params['SnapshotNotifyUrl']
          @PornCensorshipNotifyUrl = params['PornCensorshipNotifyUrl']
          @CallbackKey = params['CallbackKey']
        end
      end

      # ModifyLiveCallbackTemplate返回参数结构体
      class ModifyLiveCallbackTemplateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLiveDomainCertBindings请求参数结构体
      class ModifyLiveDomainCertBindingsRequest < TencentCloud::Common::AbstractModel
        # @param DomainInfos: 要绑定证书的播放域名/状态 信息列表。
        # 如果CloudCertId和证书公钥私钥对均不传，且域名列表已有绑定规则，只批量更新域名https规则的启用状态，并把未上传至腾讯云ssl的已有自有证书上传。
        # @type DomainInfos: Array
        # @param CloudCertId: 腾讯云ssl的证书Id。
        # 见 https://cloud.tencent.com/document/api/400/41665
        # @type CloudCertId: String
        # @param CertificatePublicKey: 证书公钥。
        # CloudCertId和公钥私钥对二选一，若CloudCertId将会舍弃公钥和私钥参数，否则将自动先把公钥私钥对上传至ssl新建证书，并使用上传成功后返回的CloudCertId。
        # @type CertificatePublicKey: String
        # @param CertificatePrivateKey: 证书私钥。
        # CloudCertId和公钥私钥对二选一，若传CloudCertId将会舍弃公钥和私钥参数，否则将自动先把公钥私钥对上传至ssl新建证书，并使用上传成功后返回的CloudCertId。
        # @type CertificatePrivateKey: String
        # @param CertificateAlias: 上传至ssl证书中心的备注信息，只有新建证书时有效。传CloudCertId时会忽略。
        # @type CertificateAlias: String

        attr_accessor :DomainInfos, :CloudCertId, :CertificatePublicKey, :CertificatePrivateKey, :CertificateAlias
        
        def initialize(domaininfos=nil, cloudcertid=nil, certificatepublickey=nil, certificateprivatekey=nil, certificatealias=nil)
          @DomainInfos = domaininfos
          @CloudCertId = cloudcertid
          @CertificatePublicKey = certificatepublickey
          @CertificatePrivateKey = certificateprivatekey
          @CertificateAlias = certificatealias
        end

        def deserialize(params)
          unless params['DomainInfos'].nil?
            @DomainInfos = []
            params['DomainInfos'].each do |i|
              livecertdomaininfo_tmp = LiveCertDomainInfo.new
              livecertdomaininfo_tmp.deserialize(i)
              @DomainInfos << livecertdomaininfo_tmp
            end
          end
          @CloudCertId = params['CloudCertId']
          @CertificatePublicKey = params['CertificatePublicKey']
          @CertificatePrivateKey = params['CertificatePrivateKey']
          @CertificateAlias = params['CertificateAlias']
        end
      end

      # ModifyLiveDomainCertBindings返回参数结构体
      class ModifyLiveDomainCertBindingsResponse < TencentCloud::Common::AbstractModel
        # @param MismatchedDomainNames: DomainNames 入参中，与证书不匹配的域名列表，将会跳过处理。
        # @type MismatchedDomainNames: Array
        # @param Errors: 操作失败的域名及错误码，错误信息，包括MismatchedDomainNames中的域名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Errors: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MismatchedDomainNames, :Errors, :RequestId
        
        def initialize(mismatcheddomainnames=nil, errors=nil, requestid=nil)
          @MismatchedDomainNames = mismatcheddomainnames
          @Errors = errors
          @RequestId = requestid
        end

        def deserialize(params)
          @MismatchedDomainNames = params['MismatchedDomainNames']
          unless params['Errors'].nil?
            @Errors = []
            params['Errors'].each do |i|
              batchdomainoperateerrors_tmp = BatchDomainOperateErrors.new
              batchdomainoperateerrors_tmp.deserialize(i)
              @Errors << batchdomainoperateerrors_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyLiveDomainReferer请求参数结构体
      class ModifyLiveDomainRefererRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 播放域名。
        # @type DomainName: String
        # @param Enable: 是否开启当前域名的 Referer 黑白名单鉴权。
        # @type Enable: Integer
        # @param Type: 名单类型，0：黑名单，1：白名单。
        # @type Type: Integer
        # @param AllowEmpty: 是否允许空 Referer，0：不允许，1：允许。
        # @type AllowEmpty: Integer
        # @param Rules: Referer 名单列表，以;分隔。
        # @type Rules: String

        attr_accessor :DomainName, :Enable, :Type, :AllowEmpty, :Rules
        
        def initialize(domainname=nil, enable=nil, type=nil, allowempty=nil, rules=nil)
          @DomainName = domainname
          @Enable = enable
          @Type = type
          @AllowEmpty = allowempty
          @Rules = rules
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @Enable = params['Enable']
          @Type = params['Type']
          @AllowEmpty = params['AllowEmpty']
          @Rules = params['Rules']
        end
      end

      # ModifyLiveDomainReferer返回参数结构体
      class ModifyLiveDomainRefererResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLivePlayAuthKey请求参数结构体
      class ModifyLivePlayAuthKeyRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 播放域名。
        # @type DomainName: String
        # @param Enable: 是否启用，0：关闭，1：启用。
        # 不传表示不修改当前值。
        # @type Enable: Integer
        # @param AuthKey: 鉴权key。
        # 不传表示不修改当前值。
        # @type AuthKey: String
        # @param AuthDelta: 有效时间，单位：秒。
        # 不传表示不修改当前值。
        # @type AuthDelta: Integer
        # @param AuthBackKey: 鉴权备用key。
        # 不传表示不修改当前值。
        # @type AuthBackKey: String

        attr_accessor :DomainName, :Enable, :AuthKey, :AuthDelta, :AuthBackKey
        
        def initialize(domainname=nil, enable=nil, authkey=nil, authdelta=nil, authbackkey=nil)
          @DomainName = domainname
          @Enable = enable
          @AuthKey = authkey
          @AuthDelta = authdelta
          @AuthBackKey = authbackkey
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @Enable = params['Enable']
          @AuthKey = params['AuthKey']
          @AuthDelta = params['AuthDelta']
          @AuthBackKey = params['AuthBackKey']
        end
      end

      # ModifyLivePlayAuthKey返回参数结构体
      class ModifyLivePlayAuthKeyResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLivePlayDomain请求参数结构体
      class ModifyLivePlayDomainRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 播放域名。
        # @type DomainName: String
        # @param PlayType: 拉流域名类型。1-国内；2-全球；3-境外
        # @type PlayType: Integer

        attr_accessor :DomainName, :PlayType
        
        def initialize(domainname=nil, playtype=nil)
          @DomainName = domainname
          @PlayType = playtype
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @PlayType = params['PlayType']
        end
      end

      # ModifyLivePlayDomain返回参数结构体
      class ModifyLivePlayDomainResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLivePullStreamTask请求参数结构体
      class ModifyLivePullStreamTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id。
        # @type TaskId: String
        # @param Operator: 操作人姓名。
        # @type Operator: String
        # @param SourceUrls: 拉流源url列表。
        # SourceType为直播（PullLivePushLive）只可以填1个，
        # SourceType为点播（PullVodPushLive）可以填多个，上限30个。
        # @type SourceUrls: Array
        # @param StartTime: 开始时间。
        # 使用UTC格式时间，
        # 例如：2019-01-08T10:00:00Z。
        # 注意：北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type StartTime: String
        # @param EndTime: 结束时间，注意：
        # 1. 结束时间必须大于开始时间；
        # 2. 结束时间和开始时间必须大于当前时间；
        # 3. 结束时间 和 开始时间 间隔必须小于七天。
        # 使用UTC格式时间，
        # 例如：2019-01-08T10:00:00Z。
        # 注意：北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type EndTime: String
        # @param VodLoopTimes: 点播拉流转推循环次数。
        # -1：无限循环，直到任务结束。
        # 0：不循环。
        # >0：具体循环次数。次数和时间以先结束的为准。
        # 注意：拉流源为点播，该配置生效。
        # @type VodLoopTimes: Integer
        # @param VodRefreshType: 点播更新SourceUrls后的播放方式：
        # ImmediateNewSource：立即从更新的拉流源开始播放；
        # ContinueBreakPoint：从上次断流url源的断点处继续，结束后再使用新的拉流源。
        # 注意：拉流源为点播，该配置生效。
        # @type VodRefreshType: String
        # @param Status: 任务状态：
        # enable - 启用，
        # pause - 暂停。
        # @type Status: String
        # @param CallbackEvents: 选择需要回调的事件（不填则回调全部）：
        # TaskStart：任务启动回调，
        # TaskExit：任务停止回调，
        # VodSourceFileStart：从点播源文件开始拉流回调，
        # VodSourceFileFinish：从点播源文件拉流结束回调，
        # ResetTaskConfig：任务更新回调。
        # @type CallbackEvents: Array
        # @param CallbackUrl: 自定义回调地址。
        # 相关事件会回调到该地址。
        # @type CallbackUrl: String
        # @param FileIndex: 指定播放文件索引。
        # 注意： 从1开始，不大于SourceUrls中文件个数。
        # @type FileIndex: Integer
        # @param OffsetTime: 指定播放文件偏移。
        # 注意：
        # 1. 单位：秒，配合FileIndex使用。
        # @type OffsetTime: Integer
        # @param Comment: 任务备注。
        # @type Comment: String
        # @param BackupSourceType: 备源的类型：
        # PullLivePushLive -直播，
        # PullVodPushLive -点播。
        # 注意：
        # 1. 仅当主源类型为直播源时，备源才会生效。
        # 2. 主直播源拉流中断时，自动使用备源进行拉流。
        # 3. 如果备源为点播文件时，则每次轮播完点播文件就检查主源是否恢复，如果主源恢复则自动切回到主源，否则继续拉备源。
        # @type BackupSourceType: String
        # @param BackupSourceUrl: 备源 URL。
        # 只允许填一个备源 URL
        # @type BackupSourceUrl: String
        # @param WatermarkList: 水印信息列表。
        # 注意：
        # 1. 最多支持4个不同位置的水印。
        # 2. 水印图片 URL 请使用合法外网可访问地址。
        # 3. 支持的水印图片格式：png，jpg等。
        # 4. 轮播任务修改水印后，轮播到下一个文件时新水印生效。
        # 5. 直播源任务修改水印后，水印立即生效。
        # 6. 清除水印时，需携带该水印列表参数，内容为空数组。
        # 7. 暂不支持动图水印。
        # @type WatermarkList: Array

        attr_accessor :TaskId, :Operator, :SourceUrls, :StartTime, :EndTime, :VodLoopTimes, :VodRefreshType, :Status, :CallbackEvents, :CallbackUrl, :FileIndex, :OffsetTime, :Comment, :BackupSourceType, :BackupSourceUrl, :WatermarkList
        
        def initialize(taskid=nil, operator=nil, sourceurls=nil, starttime=nil, endtime=nil, vodlooptimes=nil, vodrefreshtype=nil, status=nil, callbackevents=nil, callbackurl=nil, fileindex=nil, offsettime=nil, comment=nil, backupsourcetype=nil, backupsourceurl=nil, watermarklist=nil)
          @TaskId = taskid
          @Operator = operator
          @SourceUrls = sourceurls
          @StartTime = starttime
          @EndTime = endtime
          @VodLoopTimes = vodlooptimes
          @VodRefreshType = vodrefreshtype
          @Status = status
          @CallbackEvents = callbackevents
          @CallbackUrl = callbackurl
          @FileIndex = fileindex
          @OffsetTime = offsettime
          @Comment = comment
          @BackupSourceType = backupsourcetype
          @BackupSourceUrl = backupsourceurl
          @WatermarkList = watermarklist
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Operator = params['Operator']
          @SourceUrls = params['SourceUrls']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @VodLoopTimes = params['VodLoopTimes']
          @VodRefreshType = params['VodRefreshType']
          @Status = params['Status']
          @CallbackEvents = params['CallbackEvents']
          @CallbackUrl = params['CallbackUrl']
          @FileIndex = params['FileIndex']
          @OffsetTime = params['OffsetTime']
          @Comment = params['Comment']
          @BackupSourceType = params['BackupSourceType']
          @BackupSourceUrl = params['BackupSourceUrl']
          unless params['WatermarkList'].nil?
            @WatermarkList = []
            params['WatermarkList'].each do |i|
              pullpushwatermarkinfo_tmp = PullPushWatermarkInfo.new
              pullpushwatermarkinfo_tmp.deserialize(i)
              @WatermarkList << pullpushwatermarkinfo_tmp
            end
          end
        end
      end

      # ModifyLivePullStreamTask返回参数结构体
      class ModifyLivePullStreamTaskResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLivePushAuthKey请求参数结构体
      class ModifyLivePushAuthKeyRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 推流域名。
        # @type DomainName: String
        # @param Enable: 是否启用，0：关闭，1：启用。
        # 不传表示不修改当前值。
        # @type Enable: Integer
        # @param MasterAuthKey: 主鉴权key。
        # 不传表示不修改当前值。
        # @type MasterAuthKey: String
        # @param BackupAuthKey: 备鉴权key。
        # 不传表示不修改当前值。
        # @type BackupAuthKey: String
        # @param AuthDelta: 有效时间，单位：秒。
        # @type AuthDelta: Integer

        attr_accessor :DomainName, :Enable, :MasterAuthKey, :BackupAuthKey, :AuthDelta
        
        def initialize(domainname=nil, enable=nil, masterauthkey=nil, backupauthkey=nil, authdelta=nil)
          @DomainName = domainname
          @Enable = enable
          @MasterAuthKey = masterauthkey
          @BackupAuthKey = backupauthkey
          @AuthDelta = authdelta
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @Enable = params['Enable']
          @MasterAuthKey = params['MasterAuthKey']
          @BackupAuthKey = params['BackupAuthKey']
          @AuthDelta = params['AuthDelta']
        end
      end

      # ModifyLivePushAuthKey返回参数结构体
      class ModifyLivePushAuthKeyResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLiveRecordTemplate请求参数结构体
      class ModifyLiveRecordTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: DescribeRecordTemplates接口获取到的模板 ID。
        # @type TemplateId: Integer
        # @param TemplateName: 模板名称。
        # @type TemplateName: String
        # @param Description: 描述信息。
        # @type Description: String
        # @param FlvParam: FLV 录制参数，开启 FLV 录制时设置。
        # @type FlvParam: :class:`Tencentcloud::Live.v20180801.models.RecordParam`
        # @param HlsParam: HLS 录制参数，开启 HLS 录制时设置。
        # @type HlsParam: :class:`Tencentcloud::Live.v20180801.models.RecordParam`
        # @param Mp4Param: MP4 录制参数，开启 MP4 录制时设置。
        # @type Mp4Param: :class:`Tencentcloud::Live.v20180801.models.RecordParam`
        # @param AacParam: AAC 录制参数，开启 AAC 录制时设置。
        # @type AacParam: :class:`Tencentcloud::Live.v20180801.models.RecordParam`
        # @param HlsSpecialParam: HLS 录制定制参数。
        # @type HlsSpecialParam: :class:`Tencentcloud::Live.v20180801.models.HlsSpecialParam`
        # @param Mp3Param: MP3 录制参数，开启 MP3 录制时设置。
        # @type Mp3Param: :class:`Tencentcloud::Live.v20180801.models.RecordParam`
        # @param RemoveWatermark: 是否去除水印，类型为慢直播时此参数无效。
        # @type RemoveWatermark: Boolean
        # @param FlvSpecialParam: FLV 录制定制参数。
        # @type FlvSpecialParam: :class:`Tencentcloud::Live.v20180801.models.FlvSpecialParam`

        attr_accessor :TemplateId, :TemplateName, :Description, :FlvParam, :HlsParam, :Mp4Param, :AacParam, :HlsSpecialParam, :Mp3Param, :RemoveWatermark, :FlvSpecialParam
        
        def initialize(templateid=nil, templatename=nil, description=nil, flvparam=nil, hlsparam=nil, mp4param=nil, aacparam=nil, hlsspecialparam=nil, mp3param=nil, removewatermark=nil, flvspecialparam=nil)
          @TemplateId = templateid
          @TemplateName = templatename
          @Description = description
          @FlvParam = flvparam
          @HlsParam = hlsparam
          @Mp4Param = mp4param
          @AacParam = aacparam
          @HlsSpecialParam = hlsspecialparam
          @Mp3Param = mp3param
          @RemoveWatermark = removewatermark
          @FlvSpecialParam = flvspecialparam
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
          @Description = params['Description']
          unless params['FlvParam'].nil?
            @FlvParam = RecordParam.new
            @FlvParam.deserialize(params['FlvParam'])
          end
          unless params['HlsParam'].nil?
            @HlsParam = RecordParam.new
            @HlsParam.deserialize(params['HlsParam'])
          end
          unless params['Mp4Param'].nil?
            @Mp4Param = RecordParam.new
            @Mp4Param.deserialize(params['Mp4Param'])
          end
          unless params['AacParam'].nil?
            @AacParam = RecordParam.new
            @AacParam.deserialize(params['AacParam'])
          end
          unless params['HlsSpecialParam'].nil?
            @HlsSpecialParam = HlsSpecialParam.new
            @HlsSpecialParam.deserialize(params['HlsSpecialParam'])
          end
          unless params['Mp3Param'].nil?
            @Mp3Param = RecordParam.new
            @Mp3Param.deserialize(params['Mp3Param'])
          end
          @RemoveWatermark = params['RemoveWatermark']
          unless params['FlvSpecialParam'].nil?
            @FlvSpecialParam = FlvSpecialParam.new
            @FlvSpecialParam.deserialize(params['FlvSpecialParam'])
          end
        end
      end

      # ModifyLiveRecordTemplate返回参数结构体
      class ModifyLiveRecordTemplateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLiveSnapshotTemplate请求参数结构体
      class ModifyLiveSnapshotTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板 ID。
        # @type TemplateId: Integer
        # @param TemplateName: 模板名称。
        # 长度上限：255字节。
        # @type TemplateName: String
        # @param Description: 描述信息。
        # 长度上限：1024字节。
        # @type Description: String
        # @param SnapshotInterval: 截图间隔，单位s，默认10s。
        # 范围： 5s ~ 300s。
        # @type SnapshotInterval: Integer
        # @param Width: 截图宽度。默认：0（原始宽）。
        # @type Width: Integer
        # @param Height: 截图高度。默认：0（原始高）。
        # @type Height: Integer
        # @param PornFlag: 是否开启鉴黄，默认 0 。
        # 0：不开启。
        # 1：开启。
        # @type PornFlag: Integer
        # @param CosAppId: Cos 应用 ID。
        # @type CosAppId: Integer
        # @param CosBucket: Cos Bucket名称。
        # 注：CosBucket参数值不能包含-[appid] 部分。
        # @type CosBucket: String
        # @param CosRegion: Cos 地域。
        # @type CosRegion: String
        # @param CosPrefix: Cos Bucket文件夹前缀。
        # @type CosPrefix: String
        # @param CosFileName: Cos 文件名称。
        # @type CosFileName: String

        attr_accessor :TemplateId, :TemplateName, :Description, :SnapshotInterval, :Width, :Height, :PornFlag, :CosAppId, :CosBucket, :CosRegion, :CosPrefix, :CosFileName
        
        def initialize(templateid=nil, templatename=nil, description=nil, snapshotinterval=nil, width=nil, height=nil, pornflag=nil, cosappid=nil, cosbucket=nil, cosregion=nil, cosprefix=nil, cosfilename=nil)
          @TemplateId = templateid
          @TemplateName = templatename
          @Description = description
          @SnapshotInterval = snapshotinterval
          @Width = width
          @Height = height
          @PornFlag = pornflag
          @CosAppId = cosappid
          @CosBucket = cosbucket
          @CosRegion = cosregion
          @CosPrefix = cosprefix
          @CosFileName = cosfilename
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
          @Description = params['Description']
          @SnapshotInterval = params['SnapshotInterval']
          @Width = params['Width']
          @Height = params['Height']
          @PornFlag = params['PornFlag']
          @CosAppId = params['CosAppId']
          @CosBucket = params['CosBucket']
          @CosRegion = params['CosRegion']
          @CosPrefix = params['CosPrefix']
          @CosFileName = params['CosFileName']
        end
      end

      # ModifyLiveSnapshotTemplate返回参数结构体
      class ModifyLiveSnapshotTemplateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLiveTranscodeTemplate请求参数结构体
      class ModifyLiveTranscodeTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板 Id。
        # @type TemplateId: Integer
        # @param Vcodec: 视频编码：h264/h265/origin，默认origin。

        # origin: 保持原始编码格式
        # @type Vcodec: String
        # @param Acodec: 音频编码：aac，默认aac。
        # 注意：当前该参数未生效，待后续支持！
        # @type Acodec: String
        # @param AudioBitrate: 音频码率，默认0。
        # 范围：0-500。
        # @type AudioBitrate: Integer
        # @param Description: 模板描述。
        # @type Description: String
        # @param VideoBitrate: 视频码率。范围：0kbps - 8000kbps。
        # 0为保持原始码率。
        # 注: 转码模板有码率唯一要求，最终保存的码率可能与输入码率有所差别。
        # @type VideoBitrate: Integer
        # @param Width: 宽。0-3000。
        # 数值必须是2的倍数，0是原始宽度
        # @type Width: Integer
        # @param NeedVideo: 是否保留视频，0：否，1：是。默认1。
        # @type NeedVideo: Integer
        # @param NeedAudio: 是否保留音频，0：否，1：是。默认1。
        # @type NeedAudio: Integer
        # @param Height: 高。0-3000。
        # 数值必须是2的倍数，0是原始宽度
        # @type Height: Integer
        # @param Fps: 帧率，默认0。
        # 范围0-60
        # @type Fps: Integer
        # @param Gop: 关键帧间隔，单位：秒。
        # 范围2-6
        # @type Gop: Integer
        # @param Rotate: 旋转角度，默认0。
        # 可取值：0，90，180，270
        # @type Rotate: Integer
        # @param Profile: 编码质量：
        # baseline/main/high。
        # @type Profile: String
        # @param BitrateToOrig: 当设置的码率>原始码率时，是否以原始码率为准。
        # 0：否， 1：是
        # 默认 0。
        # @type BitrateToOrig: Integer
        # @param HeightToOrig: 当设置的高度>原始高度时，是否以原始高度为准。
        # 0：否， 1：是
        # 默认 0。
        # @type HeightToOrig: Integer
        # @param FpsToOrig: 当设置的帧率>原始帧率时，是否以原始帧率为准。
        # 0：否， 1：是
        # 默认 0。
        # @type FpsToOrig: Integer
        # @param AdaptBitratePercent: 极速高清视频码率压缩比。
        # 极速高清目标码率=VideoBitrate * (1-AdaptBitratePercent)

        # 取值范围：0.0到0.5
        # @type AdaptBitratePercent: Float
        # @param ShortEdgeAsHeight: 是否以短边作为高度，0：否，1：是。默认0。
        # @type ShortEdgeAsHeight: Integer
        # @param DRMType: DRM 加密类型，可选值：fairplay、normalaes、widevine。
        # 不传递或着为空字符串，清空之前的DRM配置。
        # @type DRMType: String
        # @param DRMTracks: DRM 加密项，可选值：AUDIO、SD、HD、UHD1、UHD2，后四个为一组，同组中的内容只能选一个。
        # 不传递或着为空字符串，清空之前的DRM配置。
        # @type DRMTracks: String

        attr_accessor :TemplateId, :Vcodec, :Acodec, :AudioBitrate, :Description, :VideoBitrate, :Width, :NeedVideo, :NeedAudio, :Height, :Fps, :Gop, :Rotate, :Profile, :BitrateToOrig, :HeightToOrig, :FpsToOrig, :AdaptBitratePercent, :ShortEdgeAsHeight, :DRMType, :DRMTracks
        
        def initialize(templateid=nil, vcodec=nil, acodec=nil, audiobitrate=nil, description=nil, videobitrate=nil, width=nil, needvideo=nil, needaudio=nil, height=nil, fps=nil, gop=nil, rotate=nil, profile=nil, bitratetoorig=nil, heighttoorig=nil, fpstoorig=nil, adaptbitratepercent=nil, shortedgeasheight=nil, drmtype=nil, drmtracks=nil)
          @TemplateId = templateid
          @Vcodec = vcodec
          @Acodec = acodec
          @AudioBitrate = audiobitrate
          @Description = description
          @VideoBitrate = videobitrate
          @Width = width
          @NeedVideo = needvideo
          @NeedAudio = needaudio
          @Height = height
          @Fps = fps
          @Gop = gop
          @Rotate = rotate
          @Profile = profile
          @BitrateToOrig = bitratetoorig
          @HeightToOrig = heighttoorig
          @FpsToOrig = fpstoorig
          @AdaptBitratePercent = adaptbitratepercent
          @ShortEdgeAsHeight = shortedgeasheight
          @DRMType = drmtype
          @DRMTracks = drmtracks
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @Vcodec = params['Vcodec']
          @Acodec = params['Acodec']
          @AudioBitrate = params['AudioBitrate']
          @Description = params['Description']
          @VideoBitrate = params['VideoBitrate']
          @Width = params['Width']
          @NeedVideo = params['NeedVideo']
          @NeedAudio = params['NeedAudio']
          @Height = params['Height']
          @Fps = params['Fps']
          @Gop = params['Gop']
          @Rotate = params['Rotate']
          @Profile = params['Profile']
          @BitrateToOrig = params['BitrateToOrig']
          @HeightToOrig = params['HeightToOrig']
          @FpsToOrig = params['FpsToOrig']
          @AdaptBitratePercent = params['AdaptBitratePercent']
          @ShortEdgeAsHeight = params['ShortEdgeAsHeight']
          @DRMType = params['DRMType']
          @DRMTracks = params['DRMTracks']
        end
      end

      # ModifyLiveTranscodeTemplate返回参数结构体
      class ModifyLiveTranscodeTemplateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyPullStreamConfig请求参数结构体
      class ModifyPullStreamConfigRequest < TencentCloud::Common::AbstractModel
        # @param ConfigId: 配置 ID。
        # 获取来源：
        # 1. 创建拉流配置接口CreatePullStreamConfig返回的配置 ID。
        # 2. 通过查询接口DescribePullStreamConfigs获取配置 ID。
        # @type ConfigId: String
        # @param FromUrl: 源 URL，用于拉流的地址。目前可支持直播流及点播文件。
        # 注意：
        # 1. 多个点播 URL 之间使用空格拼接。
        # 2. 目前上限支持10个 URL。
        # 3. 支持拉流文件格式：FLV，RTMP，HLS，MP4。
        # 4. 使用标准三层样式，如：http://test.com/live/stream.flv。
        # @type FromUrl: String
        # @param ToUrl: 目的 URL，用于推流的地址，目前限制该目标地址为腾讯域名。
        # 1. 仅支持 RTMP 协议。
        # 2. 使用标准三层样式，如：http://test.com/live/stream.flv。
        # @type ToUrl: String
        # @param AreaId: 区域 ID：
        # 1-深圳。
        # 2-上海。
        # 3-天津。
        # 4-中国香港。
        # 如有改动，需同时传入IspId。
        # @type AreaId: Integer
        # @param IspId: 运营商 ID，
        # 1：电信。
        # 2：移动。
        # 3：联通。
        # 4：其他。
        # AreaId为4的时候，IspId只能为其他。如有改动，需同时传入AreaId。
        # @type IspId: Integer
        # @param StartTime: 开始时间。
        # 使用UTC格式时间，
        # 例如：2019-01-08T10:00:00Z。
        # 注意：北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type StartTime: String
        # @param EndTime: 结束时间，注意：
        # 1. 结束时间必须大于开始时间；
        # 2. 结束时间和开始时间必须大于当前时间；
        # 3. 结束时间 和 开始时间 间隔必须小于七天。

        # 使用UTC格式时间，
        # 例如：2019-01-08T10:00:00Z。
        # 注意：北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type EndTime: String

        attr_accessor :ConfigId, :FromUrl, :ToUrl, :AreaId, :IspId, :StartTime, :EndTime
        
        def initialize(configid=nil, fromurl=nil, tourl=nil, areaid=nil, ispid=nil, starttime=nil, endtime=nil)
          @ConfigId = configid
          @FromUrl = fromurl
          @ToUrl = tourl
          @AreaId = areaid
          @IspId = ispid
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
          @FromUrl = params['FromUrl']
          @ToUrl = params['ToUrl']
          @AreaId = params['AreaId']
          @IspId = params['IspId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # ModifyPullStreamConfig返回参数结构体
      class ModifyPullStreamConfigResponse < TencentCloud::Common::AbstractModel
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

      # ModifyPullStreamStatus请求参数结构体
      class ModifyPullStreamStatusRequest < TencentCloud::Common::AbstractModel
        # @param ConfigIds: 配置 ID 列表。
        # @type ConfigIds: Array
        # @param Status: 目标状态。0无效，2正在运行，4暂停。
        # @type Status: String

        attr_accessor :ConfigIds, :Status
        
        def initialize(configids=nil, status=nil)
          @ConfigIds = configids
          @Status = status
        end

        def deserialize(params)
          @ConfigIds = params['ConfigIds']
          @Status = params['Status']
        end
      end

      # ModifyPullStreamStatus返回参数结构体
      class ModifyPullStreamStatusResponse < TencentCloud::Common::AbstractModel
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

      # 监控播放数据
      class MonitorStreamPlayInfo < TencentCloud::Common::AbstractModel
        # @param PlayDomain: 播放域名。
        # @type PlayDomain: String
        # @param StreamName: 流id。
        # @type StreamName: String
        # @param Rate: 播放码率，0表示原始码率。
        # @type Rate: Integer
        # @param Protocol: 播放协议，可选值包括 Unknown，Flv，Hls，Rtmp，Huyap2p。
        # @type Protocol: String
        # @param Bandwidth: 带宽，单位是Mbps。
        # @type Bandwidth: Float
        # @param Online: 在线人数，1分钟采样一个点，统计采样点的tcp链接数目。
        # @type Online: Integer
        # @param Request: 请求数。
        # @type Request: Integer

        attr_accessor :PlayDomain, :StreamName, :Rate, :Protocol, :Bandwidth, :Online, :Request
        
        def initialize(playdomain=nil, streamname=nil, rate=nil, protocol=nil, bandwidth=nil, online=nil, request=nil)
          @PlayDomain = playdomain
          @StreamName = streamname
          @Rate = rate
          @Protocol = protocol
          @Bandwidth = bandwidth
          @Online = online
          @Request = request
        end

        def deserialize(params)
          @PlayDomain = params['PlayDomain']
          @StreamName = params['StreamName']
          @Rate = params['Rate']
          @Protocol = params['Protocol']
          @Bandwidth = params['Bandwidth']
          @Online = params['Online']
          @Request = params['Request']
        end
      end

      # 播放鉴权key信息。
      class PlayAuthKeyInfo < TencentCloud::Common::AbstractModel
        # @param DomainName: 域名。
        # @type DomainName: String
        # @param Enable: 是否启用:
        # 0: 关闭。
        # 1: 启用。
        # @type Enable: Integer
        # @param AuthKey: 鉴权 Key。
        # @type AuthKey: String
        # @param AuthDelta: 有效时间，单位：秒。
        # @type AuthDelta: Integer
        # @param AuthBackKey: 鉴权 BackKey。
        # @type AuthBackKey: String

        attr_accessor :DomainName, :Enable, :AuthKey, :AuthDelta, :AuthBackKey
        
        def initialize(domainname=nil, enable=nil, authkey=nil, authdelta=nil, authbackkey=nil)
          @DomainName = domainname
          @Enable = enable
          @AuthKey = authkey
          @AuthDelta = authdelta
          @AuthBackKey = authbackkey
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @Enable = params['Enable']
          @AuthKey = params['AuthKey']
          @AuthDelta = params['AuthDelta']
          @AuthBackKey = params['AuthBackKey']
        end
      end

      # 各状态码的总次数，支持大多数的 HTTP 协议返回码。
      class PlayCodeTotalInfo < TencentCloud::Common::AbstractModel
        # @param Code: HTTP code，可选值包括:
        # 400，403，404，500，502，503，504。
        # @type Code: String
        # @param Num: 总次数。
        # @type Num: Integer

        attr_accessor :Code, :Num
        
        def initialize(code=nil, num=nil)
          @Code = code
          @Num = num
        end

        def deserialize(params)
          @Code = params['Code']
          @Num = params['Num']
        end
      end

      # 流维度的播放信息。
      class PlayDataInfoByStream < TencentCloud::Common::AbstractModel
        # @param StreamName: 流名称。
        # @type StreamName: String
        # @param TotalFlux: 总流量，单位: MB。
        # @type TotalFlux: Float

        attr_accessor :StreamName, :TotalFlux
        
        def initialize(streamname=nil, totalflux=nil)
          @StreamName = streamname
          @TotalFlux = totalflux
        end

        def deserialize(params)
          @StreamName = params['StreamName']
          @TotalFlux = params['TotalFlux']
        end
      end

      # 按省份运营商查询的播放信息。
      class PlayStatInfo < TencentCloud::Common::AbstractModel
        # @param Time: 数据时间点。
        # @type Time: String
        # @param Value: 带宽/流量/请求数/并发连接数/下载速度的值，若没数据返回时该值为0。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: Float

        attr_accessor :Time, :Value
        
        def initialize(time=nil, value=nil)
          @Time = time
          @Value = value
        end

        def deserialize(params)
          @Time = params['Time']
          @Value = params['Value']
        end
      end

      # 播放汇总统计信息。
      class PlaySumStatInfo < TencentCloud::Common::AbstractModel
        # @param Name: 域名或流 ID。
        # @type Name: String
        # @param AvgFluxPerSecond: 平均下载速度，
        # 单位: MB/s。
        # 计算公式: 每分钟的下载速度求平均值。
        # @type AvgFluxPerSecond: Float
        # @param TotalFlux: 总流量，单位: MB。
        # @type TotalFlux: Float
        # @param TotalRequest: 总请求数。
        # @type TotalRequest: Integer

        attr_accessor :Name, :AvgFluxPerSecond, :TotalFlux, :TotalRequest
        
        def initialize(name=nil, avgfluxpersecond=nil, totalflux=nil, totalrequest=nil)
          @Name = name
          @AvgFluxPerSecond = avgfluxpersecond
          @TotalFlux = totalflux
          @TotalRequest = totalrequest
        end

        def deserialize(params)
          @Name = params['Name']
          @AvgFluxPerSecond = params['AvgFluxPerSecond']
          @TotalFlux = params['TotalFlux']
          @TotalRequest = params['TotalRequest']
        end
      end

      # 播放错误码信息
      class ProIspPlayCodeDataInfo < TencentCloud::Common::AbstractModel
        # @param CountryAreaName: 国家或地区。
        # @type CountryAreaName: String
        # @param ProvinceName: 省份。
        # @type ProvinceName: String
        # @param IspName: 运营商。
        # @type IspName: String
        # @param Code2xx: 错误码为2开头的次数。
        # @type Code2xx: Integer
        # @param Code3xx: 错误码为3开头的次数。
        # @type Code3xx: Integer
        # @param Code4xx: 错误码为4开头的次数。
        # @type Code4xx: Integer
        # @param Code5xx: 错误码为5开头的次数。
        # @type Code5xx: Integer

        attr_accessor :CountryAreaName, :ProvinceName, :IspName, :Code2xx, :Code3xx, :Code4xx, :Code5xx
        
        def initialize(countryareaname=nil, provincename=nil, ispname=nil, code2xx=nil, code3xx=nil, code4xx=nil, code5xx=nil)
          @CountryAreaName = countryareaname
          @ProvinceName = provincename
          @IspName = ispname
          @Code2xx = code2xx
          @Code3xx = code3xx
          @Code4xx = code4xx
          @Code5xx = code5xx
        end

        def deserialize(params)
          @CountryAreaName = params['CountryAreaName']
          @ProvinceName = params['ProvinceName']
          @IspName = params['IspName']
          @Code2xx = params['Code2xx']
          @Code3xx = params['Code3xx']
          @Code4xx = params['Code4xx']
          @Code5xx = params['Code5xx']
        end
      end

      # 获取省份/运营商的播放信息。
      class ProIspPlaySumInfo < TencentCloud::Common::AbstractModel
        # @param Name: 省份/运营商/国家或地区。
        # @type Name: String
        # @param TotalFlux: 总流量，单位: MB。
        # @type TotalFlux: Float
        # @param TotalRequest: 总请求数。
        # @type TotalRequest: Integer
        # @param AvgFluxPerSecond: 平均下载流量，单位: MB/s。
        # @type AvgFluxPerSecond: Float

        attr_accessor :Name, :TotalFlux, :TotalRequest, :AvgFluxPerSecond
        
        def initialize(name=nil, totalflux=nil, totalrequest=nil, avgfluxpersecond=nil)
          @Name = name
          @TotalFlux = totalflux
          @TotalRequest = totalrequest
          @AvgFluxPerSecond = avgfluxpersecond
        end

        def deserialize(params)
          @Name = params['Name']
          @TotalFlux = params['TotalFlux']
          @TotalRequest = params['TotalRequest']
          @AvgFluxPerSecond = params['AvgFluxPerSecond']
        end
      end

      # 推流时间。
      class PublishTime < TencentCloud::Common::AbstractModel
        # @param PublishTime: 推流时间。
        # UTC 格式，例如：2018-06-29T19:00:00Z。
        # @type PublishTime: String

        attr_accessor :PublishTime
        
        def initialize(publishtime=nil)
          @PublishTime = publishtime
        end

        def deserialize(params)
          @PublishTime = params['PublishTime']
        end
      end

      # 云转推水印信息。
      class PullPushWatermarkInfo < TencentCloud::Common::AbstractModel
        # @param PictureUrl: 水印图片 URL。
        # URL中禁止包含的字符：
        # ;(){}$>`#"'|
        # @type PictureUrl: String
        # @param XPosition: 显示位置，X轴偏移，单位是百分比，默认 0。
        # @type XPosition: Integer
        # @param YPosition: 显示位置，Y轴偏移，单位是百分比，默认 0。
        # @type YPosition: Integer
        # @param Width: 水印宽度，占直播原始画面宽度百分比，建议高宽只设置一项，另外一项会自适应缩放，避免变形。默认原始宽度。
        # @type Width: Integer
        # @param Height: 水印高度，占直播原始画面高度百分比，建议高宽只设置一项，另外一项会自适应缩放，避免变形。默认原始高度。
        # @type Height: Integer
        # @param Location: 水印位置，默认 0。
        # 0：左上角。
        # 1：右上角。
        # 2：右下角。
        # 3：左下角。
        # @type Location: Integer

        attr_accessor :PictureUrl, :XPosition, :YPosition, :Width, :Height, :Location
        
        def initialize(pictureurl=nil, xposition=nil, yposition=nil, width=nil, height=nil, location=nil)
          @PictureUrl = pictureurl
          @XPosition = xposition
          @YPosition = yposition
          @Width = width
          @Height = height
          @Location = location
        end

        def deserialize(params)
          @PictureUrl = params['PictureUrl']
          @XPosition = params['XPosition']
          @YPosition = params['YPosition']
          @Width = params['Width']
          @Height = params['Height']
          @Location = params['Location']
        end
      end

      # 拉流配置。
      class PullStreamConfig < TencentCloud::Common::AbstractModel
        # @param ConfigId: 拉流配置 ID。
        # @type ConfigId: String
        # @param FromUrl: 源 URL。
        # @type FromUrl: String
        # @param ToUrl: 目的 URL。
        # @type ToUrl: String
        # @param AreaName: 区域名。
        # @type AreaName: String
        # @param IspName: 运营商名。
        # @type IspName: String
        # @param StartTime: 开始时间。
        # UTC格式时间，例如: 2019-01-08T10:00:00Z。
        # 注意：北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type StartTime: String
        # @param EndTime: 结束时间。

        # UTC格式时间，例如：2019-01-08T10:00:00Z。
        # 注意：北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type EndTime: String
        # @param Status: 状态:
        # 0: 无效。
        # 1: 初始状态。
        # 2: 正在运行。
        # 3: 拉起失败。
        # 4: 暂停。
        # @type Status: String

        attr_accessor :ConfigId, :FromUrl, :ToUrl, :AreaName, :IspName, :StartTime, :EndTime, :Status
        
        def initialize(configid=nil, fromurl=nil, tourl=nil, areaname=nil, ispname=nil, starttime=nil, endtime=nil, status=nil)
          @ConfigId = configid
          @FromUrl = fromurl
          @ToUrl = tourl
          @AreaName = areaname
          @IspName = ispname
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
        end

        def deserialize(params)
          @ConfigId = params['ConfigId']
          @FromUrl = params['FromUrl']
          @ToUrl = params['ToUrl']
          @AreaName = params['AreaName']
          @IspName = params['IspName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
        end
      end

      # 直播拉流任务信息。
      class PullStreamTaskInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 拉流任务Id。
        # @type TaskId: String
        # @param SourceType: 拉流源的类型：
        # PullLivePushLive -直播，
        # PullVodPushLive -点播。
        # @type SourceType: String
        # @param SourceUrls: 拉流源url列表。
        # SourceType为直播（PullLiveToLive）只可以填1个，
        # SourceType为点播（PullVodToLive）可以填多个，上限10个。
        # @type SourceUrls: Array
        # @param DomainName: 推流域名。
        # 将拉到的源推到该域名。
        # @type DomainName: String
        # @param AppName: 推流路径。
        # 将拉到的源推到该路径。
        # @type AppName: String
        # @param StreamName: 流名称。
        # 将拉到的源推到该流名称。
        # @type StreamName: String
        # @param PushArgs: 推流参数。
        # 推流携带的自定义参数。
        # @type PushArgs: String
        # @param StartTime: 开始时间。
        # 使用UTC格式时间，
        # 例如：2019-01-08T10:00:00Z。
        # 注意：北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type StartTime: String
        # @param EndTime: 结束时间，注意：
        # 1. 结束时间必须大于开始时间；
        # 2. 结束时间和开始时间必须大于当前时间；
        # 3. 结束时间 和 开始时间 间隔必须小于七天。
        # 使用UTC格式时间，
        # 例如：2019-01-08T10:00:00Z。
        # 注意：北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type EndTime: String
        # @param Region: 拉流源所在地域（请就近选取）：
        # ap-beijing - 华北地区(北京)，
        # ap-shanghai -华东地区(上海)，
        # ap-guangzhou -华南地区(广州)，
        # ap-mumbai - 印度。
        # @type Region: String
        # @param VodLoopTimes: 点播拉流转推循环次数。
        # -1：无限循环，直到任务结束。
        # 0：不循环。
        # >0：具体循环次数。次数和时间以先结束的为准。
        # 注意：拉流源为点播，该配置生效。
        # @type VodLoopTimes: Integer
        # @param VodRefreshType: 点播更新SourceUrls后的播放方式：
        # ImmediateNewSource：立即从更新的拉流源开始播放；
        # ContinueBreakPoint：从上次断流url源的断点处继续，结束后再使用新的拉流源。

        # 注意：拉流源为点播，该配置生效。
        # @type VodRefreshType: String
        # @param CreateTime: 任务创建时间。
        # 使用UTC格式时间，
        # 例如：2019-01-08T10:00:00Z。
        # 注意：北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param UpdateTime: 任务更新时间。
        # 使用UTC格式时间，
        # 例如：2019-01-08T10:00:00Z。
        # 注意：北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type UpdateTime: String
        # @param CreateBy: 创建任务的操作者。
        # @type CreateBy: String
        # @param UpdateBy: 最后更新任务的操作者。
        # @type UpdateBy: String
        # @param CallbackUrl: 回调地址。
        # @type CallbackUrl: String
        # @param CallbackEvents: 选择需要回调的事件：
        # TaskStart：任务启动回调，
        # TaskExit：任务停止回调，
        # VodSourceFileStart：从点播源文件开始拉流回调，
        # VodSourceFileFinish：从点播源文件拉流结束回调，
        # ResetTaskConfig：任务更新回调。
        # @type CallbackEvents: Array
        # @param CallbackInfo: 注意：该信息暂不返回。
        # 最后一次回调信息。
        # @type CallbackInfo: String
        # @param ErrorInfo: 注意：该信息暂不返回。
        # 错误信息。
        # @type ErrorInfo: String
        # @param Status: 状态。
        # enable：生效中。
        # pause：暂停中。
        # @type Status: String
        # @param RecentPullInfo: 注意：该信息仅在查询单个任务时返回。
        # 任务最新拉流信息。
        # 包含：源 url，偏移时间，上报时间。
        # @type RecentPullInfo: :class:`Tencentcloud::Live.v20180801.models.RecentPullInfo`
        # @param Comment: 任务备注信息。
        # @type Comment: String
        # @param BackupSourceType: 备源类型：
        # PullLivePushLive -直播，
        # PullVodPushLive -点播。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupSourceType: String
        # @param BackupSourceUrl: 备源URL。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupSourceUrl: String
        # @param WatermarkList: 水印信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WatermarkList: Array

        attr_accessor :TaskId, :SourceType, :SourceUrls, :DomainName, :AppName, :StreamName, :PushArgs, :StartTime, :EndTime, :Region, :VodLoopTimes, :VodRefreshType, :CreateTime, :UpdateTime, :CreateBy, :UpdateBy, :CallbackUrl, :CallbackEvents, :CallbackInfo, :ErrorInfo, :Status, :RecentPullInfo, :Comment, :BackupSourceType, :BackupSourceUrl, :WatermarkList
        
        def initialize(taskid=nil, sourcetype=nil, sourceurls=nil, domainname=nil, appname=nil, streamname=nil, pushargs=nil, starttime=nil, endtime=nil, region=nil, vodlooptimes=nil, vodrefreshtype=nil, createtime=nil, updatetime=nil, createby=nil, updateby=nil, callbackurl=nil, callbackevents=nil, callbackinfo=nil, errorinfo=nil, status=nil, recentpullinfo=nil, comment=nil, backupsourcetype=nil, backupsourceurl=nil, watermarklist=nil)
          @TaskId = taskid
          @SourceType = sourcetype
          @SourceUrls = sourceurls
          @DomainName = domainname
          @AppName = appname
          @StreamName = streamname
          @PushArgs = pushargs
          @StartTime = starttime
          @EndTime = endtime
          @Region = region
          @VodLoopTimes = vodlooptimes
          @VodRefreshType = vodrefreshtype
          @CreateTime = createtime
          @UpdateTime = updatetime
          @CreateBy = createby
          @UpdateBy = updateby
          @CallbackUrl = callbackurl
          @CallbackEvents = callbackevents
          @CallbackInfo = callbackinfo
          @ErrorInfo = errorinfo
          @Status = status
          @RecentPullInfo = recentpullinfo
          @Comment = comment
          @BackupSourceType = backupsourcetype
          @BackupSourceUrl = backupsourceurl
          @WatermarkList = watermarklist
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @SourceType = params['SourceType']
          @SourceUrls = params['SourceUrls']
          @DomainName = params['DomainName']
          @AppName = params['AppName']
          @StreamName = params['StreamName']
          @PushArgs = params['PushArgs']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Region = params['Region']
          @VodLoopTimes = params['VodLoopTimes']
          @VodRefreshType = params['VodRefreshType']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @CreateBy = params['CreateBy']
          @UpdateBy = params['UpdateBy']
          @CallbackUrl = params['CallbackUrl']
          @CallbackEvents = params['CallbackEvents']
          @CallbackInfo = params['CallbackInfo']
          @ErrorInfo = params['ErrorInfo']
          @Status = params['Status']
          unless params['RecentPullInfo'].nil?
            @RecentPullInfo = RecentPullInfo.new
            @RecentPullInfo.deserialize(params['RecentPullInfo'])
          end
          @Comment = params['Comment']
          @BackupSourceType = params['BackupSourceType']
          @BackupSourceUrl = params['BackupSourceUrl']
          unless params['WatermarkList'].nil?
            @WatermarkList = []
            params['WatermarkList'].each do |i|
              pullpushwatermarkinfo_tmp = PullPushWatermarkInfo.new
              pullpushwatermarkinfo_tmp.deserialize(i)
              @WatermarkList << pullpushwatermarkinfo_tmp
            end
          end
        end
      end

      # 推流鉴权key信息。
      class PushAuthKeyInfo < TencentCloud::Common::AbstractModel
        # @param DomainName: 域名。
        # @type DomainName: String
        # @param Enable: 是否启用，0：关闭，1：启用。
        # @type Enable: Integer
        # @param MasterAuthKey: 主鉴权 Key。
        # @type MasterAuthKey: String
        # @param BackupAuthKey: 备鉴权 Key。
        # @type BackupAuthKey: String
        # @param AuthDelta: 有效时间，单位：秒。
        # @type AuthDelta: Integer

        attr_accessor :DomainName, :Enable, :MasterAuthKey, :BackupAuthKey, :AuthDelta
        
        def initialize(domainname=nil, enable=nil, masterauthkey=nil, backupauthkey=nil, authdelta=nil)
          @DomainName = domainname
          @Enable = enable
          @MasterAuthKey = masterauthkey
          @BackupAuthKey = backupauthkey
          @AuthDelta = authdelta
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @Enable = params['Enable']
          @MasterAuthKey = params['MasterAuthKey']
          @BackupAuthKey = params['BackupAuthKey']
          @AuthDelta = params['AuthDelta']
        end
      end

      # 推流数据信息
      class PushDataInfo < TencentCloud::Common::AbstractModel
        # @param StreamName: 流名称。
        # @type StreamName: String
        # @param AppName: 推流路径。
        # @type AppName: String
        # @param ClientIp: 推流客户端 IP。
        # @type ClientIp: String
        # @param ServerIp: 接流服务器 IP。
        # @type ServerIp: String
        # @param VideoFps: 推流视频帧率，单位: Hz。
        # @type VideoFps: Integer
        # @param VideoSpeed: 推流视频码率，单位: bps。
        # @type VideoSpeed: Integer
        # @param AudioFps: 推流音频帧率，单位: Hz。
        # @type AudioFps: Integer
        # @param AudioSpeed: 推流音频码率，单位: bps。
        # @type AudioSpeed: Integer
        # @param PushDomain: 推流域名。
        # @type PushDomain: String
        # @param BeginPushTime: 推流开始时间。
        # @type BeginPushTime: String
        # @param Acodec: 音频编码格式，
        # 例："AAC"。
        # @type Acodec: String
        # @param Vcodec: 视频编码格式，
        # 例："H264"。
        # @type Vcodec: String
        # @param Resolution: 分辨率。
        # @type Resolution: String
        # @param AsampleRate: 采样率。
        # @type AsampleRate: Integer
        # @param MetaAudioSpeed: metadata 中的音频码率，单位: bps。
        # @type MetaAudioSpeed: Integer
        # @param MetaVideoSpeed: metadata 中的视频码率，单位: bps。
        # @type MetaVideoSpeed: Integer
        # @param MetaFps: metadata 中的帧率。
        # @type MetaFps: Integer

        attr_accessor :StreamName, :AppName, :ClientIp, :ServerIp, :VideoFps, :VideoSpeed, :AudioFps, :AudioSpeed, :PushDomain, :BeginPushTime, :Acodec, :Vcodec, :Resolution, :AsampleRate, :MetaAudioSpeed, :MetaVideoSpeed, :MetaFps
        
        def initialize(streamname=nil, appname=nil, clientip=nil, serverip=nil, videofps=nil, videospeed=nil, audiofps=nil, audiospeed=nil, pushdomain=nil, beginpushtime=nil, acodec=nil, vcodec=nil, resolution=nil, asamplerate=nil, metaaudiospeed=nil, metavideospeed=nil, metafps=nil)
          @StreamName = streamname
          @AppName = appname
          @ClientIp = clientip
          @ServerIp = serverip
          @VideoFps = videofps
          @VideoSpeed = videospeed
          @AudioFps = audiofps
          @AudioSpeed = audiospeed
          @PushDomain = pushdomain
          @BeginPushTime = beginpushtime
          @Acodec = acodec
          @Vcodec = vcodec
          @Resolution = resolution
          @AsampleRate = asamplerate
          @MetaAudioSpeed = metaaudiospeed
          @MetaVideoSpeed = metavideospeed
          @MetaFps = metafps
        end

        def deserialize(params)
          @StreamName = params['StreamName']
          @AppName = params['AppName']
          @ClientIp = params['ClientIp']
          @ServerIp = params['ServerIp']
          @VideoFps = params['VideoFps']
          @VideoSpeed = params['VideoSpeed']
          @AudioFps = params['AudioFps']
          @AudioSpeed = params['AudioSpeed']
          @PushDomain = params['PushDomain']
          @BeginPushTime = params['BeginPushTime']
          @Acodec = params['Acodec']
          @Vcodec = params['Vcodec']
          @Resolution = params['Resolution']
          @AsampleRate = params['AsampleRate']
          @MetaAudioSpeed = params['MetaAudioSpeed']
          @MetaVideoSpeed = params['MetaVideoSpeed']
          @MetaFps = params['MetaFps']
        end
      end

      # 某条流的推流质量详情数据。
      class PushQualityData < TencentCloud::Common::AbstractModel
        # @param Time: 数据时间，格式: %Y-%m-%d %H:%M:%S.%ms，精确到毫秒级。
        # @type Time: String
        # @param PushDomain: 推流域名。
        # @type PushDomain: String
        # @param AppName: 推流路径。
        # @type AppName: String
        # @param ClientIp: 推流客户端 IP。
        # @type ClientIp: String
        # @param BeginPushTime: 开始推流时间，格式: %Y-%m-%d %H:%M:%S.%ms，精确到毫秒级。
        # @type BeginPushTime: String
        # @param Resolution: 分辨率信息。
        # @type Resolution: String
        # @param VCodec: 视频编码格式。
        # @type VCodec: String
        # @param ACodec: 音频编码格式。
        # @type ACodec: String
        # @param Sequence: 推流序列号，用来唯一的标志一次推流。
        # @type Sequence: String
        # @param VideoFps: 视频帧率。
        # @type VideoFps: Integer
        # @param VideoRate: 视频码率，单位: bps。
        # @type VideoRate: Integer
        # @param AudioFps: 音频帧率。
        # @type AudioFps: Integer
        # @param AudioRate: 音频码率，单位: bps。
        # @type AudioRate: Integer
        # @param LocalTs: 本地流逝时间，单位: ms，音视频流逝时间与本地流逝时间的差距越大表示推流质量越差，上行卡顿越严重。
        # @type LocalTs: Integer
        # @param VideoTs: 视频流逝时间，单位: ms。
        # @type VideoTs: Integer
        # @param AudioTs: 音频流逝时间，单位: ms。
        # @type AudioTs: Integer
        # @param MetaVideoRate: metadata 中的视频码率，单位: kbps。
        # @type MetaVideoRate: Integer
        # @param MetaAudioRate: metadata 中的音频码率，单位: kbps。
        # @type MetaAudioRate: Integer
        # @param MateFps: metadata 中的帧率。
        # @type MateFps: Integer
        # @param StreamParam: 推流参数
        # @type StreamParam: String
        # @param Bandwidth: 带宽，单位Mbps。
        # @type Bandwidth: Float
        # @param Flux: 流量，单位MB。
        # @type Flux: Float

        attr_accessor :Time, :PushDomain, :AppName, :ClientIp, :BeginPushTime, :Resolution, :VCodec, :ACodec, :Sequence, :VideoFps, :VideoRate, :AudioFps, :AudioRate, :LocalTs, :VideoTs, :AudioTs, :MetaVideoRate, :MetaAudioRate, :MateFps, :StreamParam, :Bandwidth, :Flux
        
        def initialize(time=nil, pushdomain=nil, appname=nil, clientip=nil, beginpushtime=nil, resolution=nil, vcodec=nil, acodec=nil, sequence=nil, videofps=nil, videorate=nil, audiofps=nil, audiorate=nil, localts=nil, videots=nil, audiots=nil, metavideorate=nil, metaaudiorate=nil, matefps=nil, streamparam=nil, bandwidth=nil, flux=nil)
          @Time = time
          @PushDomain = pushdomain
          @AppName = appname
          @ClientIp = clientip
          @BeginPushTime = beginpushtime
          @Resolution = resolution
          @VCodec = vcodec
          @ACodec = acodec
          @Sequence = sequence
          @VideoFps = videofps
          @VideoRate = videorate
          @AudioFps = audiofps
          @AudioRate = audiorate
          @LocalTs = localts
          @VideoTs = videots
          @AudioTs = audiots
          @MetaVideoRate = metavideorate
          @MetaAudioRate = metaaudiorate
          @MateFps = matefps
          @StreamParam = streamparam
          @Bandwidth = bandwidth
          @Flux = flux
        end

        def deserialize(params)
          @Time = params['Time']
          @PushDomain = params['PushDomain']
          @AppName = params['AppName']
          @ClientIp = params['ClientIp']
          @BeginPushTime = params['BeginPushTime']
          @Resolution = params['Resolution']
          @VCodec = params['VCodec']
          @ACodec = params['ACodec']
          @Sequence = params['Sequence']
          @VideoFps = params['VideoFps']
          @VideoRate = params['VideoRate']
          @AudioFps = params['AudioFps']
          @AudioRate = params['AudioRate']
          @LocalTs = params['LocalTs']
          @VideoTs = params['VideoTs']
          @AudioTs = params['AudioTs']
          @MetaVideoRate = params['MetaVideoRate']
          @MetaAudioRate = params['MetaAudioRate']
          @MateFps = params['MateFps']
          @StreamParam = params['StreamParam']
          @Bandwidth = params['Bandwidth']
          @Flux = params['Flux']
        end
      end

      # 直播拉流当前正在拉的文件信息。
      class RecentPullInfo < TencentCloud::Common::AbstractModel
        # @param FileUrl: 当前正在拉的文件地址。
        # @type FileUrl: String
        # @param OffsetTime: 当前正在拉的文件偏移，单位：秒。
        # @type OffsetTime: Integer
        # @param ReportTime: 最新上报偏移信息时间。UTC格式。
        # 如：2020-07-23T03:20:39Z。
        # 注意：与北京时间相差八小时。
        # @type ReportTime: String
        # @param LoopedTimes: 已经轮播的次数。
        # @type LoopedTimes: Integer

        attr_accessor :FileUrl, :OffsetTime, :ReportTime, :LoopedTimes
        
        def initialize(fileurl=nil, offsettime=nil, reporttime=nil, loopedtimes=nil)
          @FileUrl = fileurl
          @OffsetTime = offsettime
          @ReportTime = reporttime
          @LoopedTimes = loopedtimes
        end

        def deserialize(params)
          @FileUrl = params['FileUrl']
          @OffsetTime = params['OffsetTime']
          @ReportTime = params['ReportTime']
          @LoopedTimes = params['LoopedTimes']
        end
      end

      # 录制模板参数。
      class RecordParam < TencentCloud::Common::AbstractModel
        # @param RecordInterval: 录制间隔。
        # 单位秒，默认：1800。
        # 取值范围：30-7200。
        # 此参数对 HLS 无效，当录制 HLS 时从推流到断流生成一个文件。
        # @type RecordInterval: Integer
        # @param StorageTime: 录制存储时长。
        # 单位秒，取值范围： 0 - 1500天。
        # 0：表示永久存储。
        # @type StorageTime: Integer
        # @param Enable: 是否开启当前格式录制，默认值为0，0：否， 1：是。
        # @type Enable: Integer
        # @param VodSubAppId: 点播子应用 ID。
        # @type VodSubAppId: Integer
        # @param VodFileName: 录制文件名。
        # 支持的特殊占位符有：
        # {StreamID}: 流ID
        # {StartYear}: 开始时间-年
        # {StartMonth}: 开始时间-月
        # {StartDay}: 开始时间-日
        # {StartHour}: 开始时间-小时
        # {StartMinute}: 开始时间-分钟
        # {StartSecond}: 开始时间-秒
        # {StartMillisecond}: 开始时间-毫秒
        # {EndYear}: 结束时间-年
        # {EndMonth}: 结束时间-月
        # {EndDay}: 结束时间-日
        # {EndHour}: 结束时间-小时
        # {EndMinute}: 结束时间-分钟
        # {EndSecond}: 结束时间-秒
        # {EndMillisecond}: 结束时间-毫秒

        # 若未设置默认录制文件名为{StreamID}_{StartYear}-{StartMonth}-{StartDay}-{StartHour}-{StartMinute}-{StartSecond}_{EndYear}-{EndMonth}-{EndDay}-{EndHour}-{EndMinute}-{EndSecond}
        # @type VodFileName: String
        # @param Procedure: 任务流
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Procedure: String
        # @param StorageMode: 视频存储策略。
        # normal：标准存储。
        # cold：低频存储。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageMode: String
        # @param ClassId: 点播应用分类
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClassId: Integer

        attr_accessor :RecordInterval, :StorageTime, :Enable, :VodSubAppId, :VodFileName, :Procedure, :StorageMode, :ClassId
        
        def initialize(recordinterval=nil, storagetime=nil, enable=nil, vodsubappid=nil, vodfilename=nil, procedure=nil, storagemode=nil, classid=nil)
          @RecordInterval = recordinterval
          @StorageTime = storagetime
          @Enable = enable
          @VodSubAppId = vodsubappid
          @VodFileName = vodfilename
          @Procedure = procedure
          @StorageMode = storagemode
          @ClassId = classid
        end

        def deserialize(params)
          @RecordInterval = params['RecordInterval']
          @StorageTime = params['StorageTime']
          @Enable = params['Enable']
          @VodSubAppId = params['VodSubAppId']
          @VodFileName = params['VodFileName']
          @Procedure = params['Procedure']
          @StorageMode = params['StorageMode']
          @ClassId = params['ClassId']
        end
      end

      # 录制任务
      class RecordTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 录制任务ID。
        # @type TaskId: String
        # @param DomainName: 推流域名。
        # @type DomainName: String
        # @param AppName: 推流路径。
        # @type AppName: String
        # @param StreamName: 流名称。
        # @type StreamName: String
        # @param StartTime: 任务开始时间，Unix时间戳。
        # @type StartTime: Integer
        # @param EndTime: 任务结束时间，Unix时间戳。
        # @type EndTime: Integer
        # @param TemplateId: 录制模板ID。
        # @type TemplateId: Integer
        # @param Stopped: 调用 StopRecordTask 停止任务时间，Unix时间戳。值为0表示未曾调用接口停止任务。
        # @type Stopped: Integer

        attr_accessor :TaskId, :DomainName, :AppName, :StreamName, :StartTime, :EndTime, :TemplateId, :Stopped
        
        def initialize(taskid=nil, domainname=nil, appname=nil, streamname=nil, starttime=nil, endtime=nil, templateid=nil, stopped=nil)
          @TaskId = taskid
          @DomainName = domainname
          @AppName = appname
          @StreamName = streamname
          @StartTime = starttime
          @EndTime = endtime
          @TemplateId = templateid
          @Stopped = stopped
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @DomainName = params['DomainName']
          @AppName = params['AppName']
          @StreamName = params['StreamName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @TemplateId = params['TemplateId']
          @Stopped = params['Stopped']
        end
      end

      # 录制模板信息
      class RecordTemplateInfo < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板 ID。
        # @type TemplateId: Integer
        # @param TemplateName: 模板名称。
        # @type TemplateName: String
        # @param Description: 描述信息。
        # @type Description: String
        # @param FlvParam: FLV 录制参数。
        # @type FlvParam: :class:`Tencentcloud::Live.v20180801.models.RecordParam`
        # @param HlsParam: HLS 录制参数。
        # @type HlsParam: :class:`Tencentcloud::Live.v20180801.models.RecordParam`
        # @param Mp4Param: MP4 录制参数。
        # @type Mp4Param: :class:`Tencentcloud::Live.v20180801.models.RecordParam`
        # @param AacParam: AAC 录制参数。
        # @type AacParam: :class:`Tencentcloud::Live.v20180801.models.RecordParam`
        # @param IsDelayLive: 0：普通直播，
        # 1：慢直播。
        # @type IsDelayLive: Integer
        # @param HlsSpecialParam: HLS 录制定制参数。
        # @type HlsSpecialParam: :class:`Tencentcloud::Live.v20180801.models.HlsSpecialParam`
        # @param Mp3Param: MP3 录制参数。
        # @type Mp3Param: :class:`Tencentcloud::Live.v20180801.models.RecordParam`
        # @param RemoveWatermark: 是否去除水印。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RemoveWatermark: Boolean
        # @param FlvSpecialParam: FLV 录制定制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlvSpecialParam: :class:`Tencentcloud::Live.v20180801.models.FlvSpecialParam`

        attr_accessor :TemplateId, :TemplateName, :Description, :FlvParam, :HlsParam, :Mp4Param, :AacParam, :IsDelayLive, :HlsSpecialParam, :Mp3Param, :RemoveWatermark, :FlvSpecialParam
        
        def initialize(templateid=nil, templatename=nil, description=nil, flvparam=nil, hlsparam=nil, mp4param=nil, aacparam=nil, isdelaylive=nil, hlsspecialparam=nil, mp3param=nil, removewatermark=nil, flvspecialparam=nil)
          @TemplateId = templateid
          @TemplateName = templatename
          @Description = description
          @FlvParam = flvparam
          @HlsParam = hlsparam
          @Mp4Param = mp4param
          @AacParam = aacparam
          @IsDelayLive = isdelaylive
          @HlsSpecialParam = hlsspecialparam
          @Mp3Param = mp3param
          @RemoveWatermark = removewatermark
          @FlvSpecialParam = flvspecialparam
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
          @Description = params['Description']
          unless params['FlvParam'].nil?
            @FlvParam = RecordParam.new
            @FlvParam.deserialize(params['FlvParam'])
          end
          unless params['HlsParam'].nil?
            @HlsParam = RecordParam.new
            @HlsParam.deserialize(params['HlsParam'])
          end
          unless params['Mp4Param'].nil?
            @Mp4Param = RecordParam.new
            @Mp4Param.deserialize(params['Mp4Param'])
          end
          unless params['AacParam'].nil?
            @AacParam = RecordParam.new
            @AacParam.deserialize(params['AacParam'])
          end
          @IsDelayLive = params['IsDelayLive']
          unless params['HlsSpecialParam'].nil?
            @HlsSpecialParam = HlsSpecialParam.new
            @HlsSpecialParam.deserialize(params['HlsSpecialParam'])
          end
          unless params['Mp3Param'].nil?
            @Mp3Param = RecordParam.new
            @Mp3Param.deserialize(params['Mp3Param'])
          end
          @RemoveWatermark = params['RemoveWatermark']
          unless params['FlvSpecialParam'].nil?
            @FlvSpecialParam = FlvSpecialParam.new
            @FlvSpecialParam.deserialize(params['FlvSpecialParam'])
          end
        end
      end

      # 直播域名Referer黑白名单配置
      class RefererAuthConfig < TencentCloud::Common::AbstractModel
        # @param DomainName: 域名。
        # @type DomainName: String
        # @param Enable: 是否启用，0：关闭，1：启用。
        # @type Enable: Integer
        # @param Type: 名单类型，0：黑名单，1：白名单。
        # @type Type: Integer
        # @param AllowEmpty: 是否允许空Referer，0：不允许，1：允许。
        # @type AllowEmpty: Integer
        # @param Rules: 名单列表，以分号(;)分隔。
        # @type Rules: String

        attr_accessor :DomainName, :Enable, :Type, :AllowEmpty, :Rules
        
        def initialize(domainname=nil, enable=nil, type=nil, allowempty=nil, rules=nil)
          @DomainName = domainname
          @Enable = enable
          @Type = type
          @AllowEmpty = allowempty
          @Rules = rules
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @Enable = params['Enable']
          @Type = params['Type']
          @AllowEmpty = params['AllowEmpty']
          @Rules = params['Rules']
        end
      end

      # ResumeDelayLiveStream请求参数结构体
      class ResumeDelayLiveStreamRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 推流路径，与推流和播放地址中的AppName保持一致，默认为live。
        # @type AppName: String
        # @param DomainName: 推流域名。
        # @type DomainName: String
        # @param StreamName: 流名称。
        # @type StreamName: String

        attr_accessor :AppName, :DomainName, :StreamName
        
        def initialize(appname=nil, domainname=nil, streamname=nil)
          @AppName = appname
          @DomainName = domainname
          @StreamName = streamname
        end

        def deserialize(params)
          @AppName = params['AppName']
          @DomainName = params['DomainName']
          @StreamName = params['StreamName']
        end
      end

      # ResumeDelayLiveStream返回参数结构体
      class ResumeDelayLiveStreamResponse < TencentCloud::Common::AbstractModel
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

      # ResumeLiveStream请求参数结构体
      class ResumeLiveStreamRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 推流路径，与推流和播放地址中的AppName保持一致，默认为 live。
        # @type AppName: String
        # @param DomainName: 您的推流域名。
        # @type DomainName: String
        # @param StreamName: 流名称。
        # @type StreamName: String

        attr_accessor :AppName, :DomainName, :StreamName
        
        def initialize(appname=nil, domainname=nil, streamname=nil)
          @AppName = appname
          @DomainName = domainname
          @StreamName = streamname
        end

        def deserialize(params)
          @AppName = params['AppName']
          @DomainName = params['DomainName']
          @StreamName = params['StreamName']
        end
      end

      # ResumeLiveStream返回参数结构体
      class ResumeLiveStreamResponse < TencentCloud::Common::AbstractModel
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

      # 规则信息。
      class RuleInfo < TencentCloud::Common::AbstractModel
        # @param CreateTime: 规则创建时间。
        # @type CreateTime: String
        # @param UpdateTime: 规则更新时间。
        # @type UpdateTime: String
        # @param TemplateId: 模板 ID。
        # @type TemplateId: Integer
        # @param DomainName: 推流域名。
        # @type DomainName: String
        # @param AppName: 推流路径。
        # @type AppName: String
        # @param StreamName: 流名称。
        # @type StreamName: String

        attr_accessor :CreateTime, :UpdateTime, :TemplateId, :DomainName, :AppName, :StreamName
        
        def initialize(createtime=nil, updatetime=nil, templateid=nil, domainname=nil, appname=nil, streamname=nil)
          @CreateTime = createtime
          @UpdateTime = updatetime
          @TemplateId = templateid
          @DomainName = domainname
          @AppName = appname
          @StreamName = streamname
        end

        def deserialize(params)
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @TemplateId = params['TemplateId']
          @DomainName = params['DomainName']
          @AppName = params['AppName']
          @StreamName = params['StreamName']
        end
      end

      # 截图任务
      class ScreenshotTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 截图任务ID。
        # @type TaskId: String
        # @param DomainName: 推流域名。
        # @type DomainName: String
        # @param AppName: 推流路径。
        # @type AppName: String
        # @param StreamName: 流名称。
        # @type StreamName: String
        # @param StartTime: 任务开始时间，Unix时间戳。
        # @type StartTime: Integer
        # @param EndTime: 任务结束时间，Unix时间戳。
        # @type EndTime: Integer
        # @param TemplateId: 截图模板ID。
        # @type TemplateId: Integer
        # @param Stopped: 调用 StopScreenshotTask 停止任务时间，Unix时间戳。值为0表示未曾调用接口停止任务。
        # @type Stopped: Integer

        attr_accessor :TaskId, :DomainName, :AppName, :StreamName, :StartTime, :EndTime, :TemplateId, :Stopped
        
        def initialize(taskid=nil, domainname=nil, appname=nil, streamname=nil, starttime=nil, endtime=nil, templateid=nil, stopped=nil)
          @TaskId = taskid
          @DomainName = domainname
          @AppName = appname
          @StreamName = streamname
          @StartTime = starttime
          @EndTime = endtime
          @TemplateId = templateid
          @Stopped = stopped
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @DomainName = params['DomainName']
          @AppName = params['AppName']
          @StreamName = params['StreamName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @TemplateId = params['TemplateId']
          @Stopped = params['Stopped']
        end
      end

      # 截图模板信息。
      class SnapshotTemplateInfo < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板 ID。
        # @type TemplateId: Integer
        # @param TemplateName: 模板名称。
        # @type TemplateName: String
        # @param SnapshotInterval: 截图时间间隔，5-300秒。
        # @type SnapshotInterval: Integer
        # @param Width: 截图宽度，范围：0-3000。
        # 0：原始宽度并适配原始比例。
        # @type Width: Integer
        # @param Height: 截图高度，范围：0-2000。
        # 0：原始高度并适配原始比例。
        # @type Height: Integer
        # @param PornFlag: 是否开启鉴黄，0：不开启，1：开启。
        # @type PornFlag: Integer
        # @param CosAppId: Cos 应用 ID。
        # @type CosAppId: Integer
        # @param CosBucket: Cos Bucket名称。
        # @type CosBucket: String
        # @param CosRegion: Cos 地域。
        # @type CosRegion: String
        # @param Description: 模板描述。
        # @type Description: String
        # @param CosPrefix: Cos Bucket文件夹前缀。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CosPrefix: String
        # @param CosFileName: Cos 文件名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CosFileName: String

        attr_accessor :TemplateId, :TemplateName, :SnapshotInterval, :Width, :Height, :PornFlag, :CosAppId, :CosBucket, :CosRegion, :Description, :CosPrefix, :CosFileName
        
        def initialize(templateid=nil, templatename=nil, snapshotinterval=nil, width=nil, height=nil, pornflag=nil, cosappid=nil, cosbucket=nil, cosregion=nil, description=nil, cosprefix=nil, cosfilename=nil)
          @TemplateId = templateid
          @TemplateName = templatename
          @SnapshotInterval = snapshotinterval
          @Width = width
          @Height = height
          @PornFlag = pornflag
          @CosAppId = cosappid
          @CosBucket = cosbucket
          @CosRegion = cosregion
          @Description = description
          @CosPrefix = cosprefix
          @CosFileName = cosfilename
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
          @SnapshotInterval = params['SnapshotInterval']
          @Width = params['Width']
          @Height = params['Height']
          @PornFlag = params['PornFlag']
          @CosAppId = params['CosAppId']
          @CosBucket = params['CosBucket']
          @CosRegion = params['CosRegion']
          @Description = params['Description']
          @CosPrefix = params['CosPrefix']
          @CosFileName = params['CosFileName']
        end
      end

      # StopLiveRecord请求参数结构体
      class StopLiveRecordRequest < TencentCloud::Common::AbstractModel
        # @param StreamName: 流名称。
        # @type StreamName: String
        # @param TaskId: 任务ID，由CreateLiveRecord接口返回。
        # @type TaskId: Integer

        attr_accessor :StreamName, :TaskId
        
        def initialize(streamname=nil, taskid=nil)
          @StreamName = streamname
          @TaskId = taskid
        end

        def deserialize(params)
          @StreamName = params['StreamName']
          @TaskId = params['TaskId']
        end
      end

      # StopLiveRecord返回参数结构体
      class StopLiveRecordResponse < TencentCloud::Common::AbstractModel
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

      # StopRecordTask请求参数结构体
      class StopRecordTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 录制任务ID。
        # @type TaskId: String

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # StopRecordTask返回参数结构体
      class StopRecordTaskResponse < TencentCloud::Common::AbstractModel
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

      # StopScreenshotTask请求参数结构体
      class StopScreenshotTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 截图任务ID。
        # @type TaskId: String

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # StopScreenshotTask返回参数结构体
      class StopScreenshotTaskResponse < TencentCloud::Common::AbstractModel
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

      # 推断流事件信息。
      class StreamEventInfo < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称。
        # @type AppName: String
        # @param DomainName: 推流域名。
        # @type DomainName: String
        # @param StreamName: 流名称。
        # @type StreamName: String
        # @param StreamStartTime: 推流开始时间。
        # UTC 格式时间，例如：2019-01-07T12:00:00Z。
        # @type StreamStartTime: String
        # @param StreamEndTime: 推流结束时间。
        # UTC 格式时间，例如：2019-01-07T15:00:00Z。
        # @type StreamEndTime: String
        # @param StopReason: 停止原因。
        # @type StopReason: String
        # @param Duration: 推流持续时长，单位：秒。
        # @type Duration: Integer
        # @param ClientIp: 主播 IP。
        # @type ClientIp: String
        # @param Resolution: 分辨率。
        # @type Resolution: String

        attr_accessor :AppName, :DomainName, :StreamName, :StreamStartTime, :StreamEndTime, :StopReason, :Duration, :ClientIp, :Resolution
        
        def initialize(appname=nil, domainname=nil, streamname=nil, streamstarttime=nil, streamendtime=nil, stopreason=nil, duration=nil, clientip=nil, resolution=nil)
          @AppName = appname
          @DomainName = domainname
          @StreamName = streamname
          @StreamStartTime = streamstarttime
          @StreamEndTime = streamendtime
          @StopReason = stopreason
          @Duration = duration
          @ClientIp = clientip
          @Resolution = resolution
        end

        def deserialize(params)
          @AppName = params['AppName']
          @DomainName = params['DomainName']
          @StreamName = params['StreamName']
          @StreamStartTime = params['StreamStartTime']
          @StreamEndTime = params['StreamEndTime']
          @StopReason = params['StopReason']
          @Duration = params['Duration']
          @ClientIp = params['ClientIp']
          @Resolution = params['Resolution']
        end
      end

      # 流名称列表。
      class StreamName < TencentCloud::Common::AbstractModel
        # @param StreamName: 流名称。
        # @type StreamName: String
        # @param AppName: 应用名称。
        # @type AppName: String
        # @param DomainName: 推流域名。
        # @type DomainName: String
        # @param StreamStartTime: 推流开始时间。
        # UTC格式时间，例如：2019-01-07T12:00:00Z。
        # @type StreamStartTime: String
        # @param StreamEndTime: 推流结束时间。
        # UTC格式时间，例如：2019-01-07T15:00:00Z。
        # @type StreamEndTime: String
        # @param StopReason: 停止原因。
        # @type StopReason: String
        # @param Duration: 推流持续时长，单位：秒。
        # @type Duration: Integer
        # @param ClientIp: 主播 IP。
        # @type ClientIp: String
        # @param Resolution: 分辨率。
        # @type Resolution: String

        attr_accessor :StreamName, :AppName, :DomainName, :StreamStartTime, :StreamEndTime, :StopReason, :Duration, :ClientIp, :Resolution
        
        def initialize(streamname=nil, appname=nil, domainname=nil, streamstarttime=nil, streamendtime=nil, stopreason=nil, duration=nil, clientip=nil, resolution=nil)
          @StreamName = streamname
          @AppName = appname
          @DomainName = domainname
          @StreamStartTime = streamstarttime
          @StreamEndTime = streamendtime
          @StopReason = stopreason
          @Duration = duration
          @ClientIp = clientip
          @Resolution = resolution
        end

        def deserialize(params)
          @StreamName = params['StreamName']
          @AppName = params['AppName']
          @DomainName = params['DomainName']
          @StreamStartTime = params['StreamStartTime']
          @StreamEndTime = params['StreamEndTime']
          @StopReason = params['StopReason']
          @Duration = params['Duration']
          @ClientIp = params['ClientIp']
          @Resolution = params['Resolution']
        end
      end

      # 查询当前正在推流的信息
      class StreamOnlineInfo < TencentCloud::Common::AbstractModel
        # @param StreamName: 流名称。
        # @type StreamName: String
        # @param PublishTimeList: 推流时间列表
        # @type PublishTimeList: Array
        # @param AppName: 应用名称。
        # @type AppName: String
        # @param DomainName: 推流域名。
        # @type DomainName: String

        attr_accessor :StreamName, :PublishTimeList, :AppName, :DomainName
        
        def initialize(streamname=nil, publishtimelist=nil, appname=nil, domainname=nil)
          @StreamName = streamname
          @PublishTimeList = publishtimelist
          @AppName = appname
          @DomainName = domainname
        end

        def deserialize(params)
          @StreamName = params['StreamName']
          unless params['PublishTimeList'].nil?
            @PublishTimeList = []
            params['PublishTimeList'].each do |i|
              publishtime_tmp = PublishTime.new
              publishtime_tmp.deserialize(i)
              @PublishTimeList << publishtime_tmp
            end
          end
          @AppName = params['AppName']
          @DomainName = params['DomainName']
        end
      end

      # 转码模板信息。
      class TemplateInfo < TencentCloud::Common::AbstractModel
        # @param Vcodec: 视频编码：h264/h265/origin，默认h264。

        # origin: 保持原始编码格式
        # @type Vcodec: String
        # @param VideoBitrate: 视频码率。范围：0kbps - 8000kbps。
        # 0为保持原始码率。
        # 注: 转码模板有码率唯一要求，最终保存的码率可能与输入码率有所差别。
        # @type VideoBitrate: Integer
        # @param Acodec: 音频编码：aac，默认aac。
        # 注意：当前该参数未生效，待后续支持！
        # @type Acodec: String
        # @param AudioBitrate: 音频码率。取值范围：0kbps - 500kbps。
        # 默认0。
        # @type AudioBitrate: Integer
        # @param Width: 宽，默认0。
        # 范围[0-3000]
        # 数值必须是2的倍数，0是原始宽度
        # @type Width: Integer
        # @param Height: 高，默认0。
        # 范围[0-3000]
        # 数值必须是2的倍数，0是原始宽度
        # @type Height: Integer
        # @param Fps: 帧率，默认0。
        # 范围0-60fps
        # @type Fps: Integer
        # @param Gop: 关键帧间隔，单位：秒。
        # 默认原始的间隔
        # 范围2-6
        # @type Gop: Integer
        # @param Rotate: 旋转角度，默认0。
        # 可取值：0，90，180，270
        # @type Rotate: Integer
        # @param Profile: 编码质量：
        # baseline/main/high。默认baseline
        # @type Profile: String
        # @param BitrateToOrig: 当设置的码率>原始码率时，是否以原始码率为准。
        # 0：否， 1：是
        # 默认 0。
        # @type BitrateToOrig: Integer
        # @param HeightToOrig: 当设置的高度>原始高度时，是否以原始高度为准。
        # 0：否， 1：是
        # 默认 0。
        # @type HeightToOrig: Integer
        # @param FpsToOrig: 当设置的帧率>原始帧率时，是否以原始帧率为准。
        # 0：否， 1：是
        # 默认 0。
        # @type FpsToOrig: Integer
        # @param NeedVideo: 是否保留视频。0：否，1：是。
        # @type NeedVideo: Integer
        # @param NeedAudio: 是否保留音频。0：否，1：是。
        # @type NeedAudio: Integer
        # @param TemplateId: 模板 ID。
        # @type TemplateId: Integer
        # @param TemplateName: 模板名称。
        # @type TemplateName: String
        # @param Description: 模板描述。
        # @type Description: String
        # @param AiTransCode: 是否是极速高清模板，0：否，1：是。默认0。
        # @type AiTransCode: Integer
        # @param AdaptBitratePercent: 极速高清视频码率压缩比。
        # 极速高清目标码率=VideoBitrate * (1-AdaptBitratePercent)

        # 取值范围：0.0到0.5
        # @type AdaptBitratePercent: Float
        # @param ShortEdgeAsHeight: 是否以短边作为高度，0：否，1：是。默认0。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShortEdgeAsHeight: Integer
        # @param DRMType: DRM 加密类型，可选值：fairplay、normalaes、widevine。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DRMType: String
        # @param DRMTracks: DRM 加密项，多个用|分割，可选值：AUDIO、SD、HD、UHD1、UHD2，后四个为一组，同组中的内容只能选一个。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DRMTracks: String

        attr_accessor :Vcodec, :VideoBitrate, :Acodec, :AudioBitrate, :Width, :Height, :Fps, :Gop, :Rotate, :Profile, :BitrateToOrig, :HeightToOrig, :FpsToOrig, :NeedVideo, :NeedAudio, :TemplateId, :TemplateName, :Description, :AiTransCode, :AdaptBitratePercent, :ShortEdgeAsHeight, :DRMType, :DRMTracks
        
        def initialize(vcodec=nil, videobitrate=nil, acodec=nil, audiobitrate=nil, width=nil, height=nil, fps=nil, gop=nil, rotate=nil, profile=nil, bitratetoorig=nil, heighttoorig=nil, fpstoorig=nil, needvideo=nil, needaudio=nil, templateid=nil, templatename=nil, description=nil, aitranscode=nil, adaptbitratepercent=nil, shortedgeasheight=nil, drmtype=nil, drmtracks=nil)
          @Vcodec = vcodec
          @VideoBitrate = videobitrate
          @Acodec = acodec
          @AudioBitrate = audiobitrate
          @Width = width
          @Height = height
          @Fps = fps
          @Gop = gop
          @Rotate = rotate
          @Profile = profile
          @BitrateToOrig = bitratetoorig
          @HeightToOrig = heighttoorig
          @FpsToOrig = fpstoorig
          @NeedVideo = needvideo
          @NeedAudio = needaudio
          @TemplateId = templateid
          @TemplateName = templatename
          @Description = description
          @AiTransCode = aitranscode
          @AdaptBitratePercent = adaptbitratepercent
          @ShortEdgeAsHeight = shortedgeasheight
          @DRMType = drmtype
          @DRMTracks = drmtracks
        end

        def deserialize(params)
          @Vcodec = params['Vcodec']
          @VideoBitrate = params['VideoBitrate']
          @Acodec = params['Acodec']
          @AudioBitrate = params['AudioBitrate']
          @Width = params['Width']
          @Height = params['Height']
          @Fps = params['Fps']
          @Gop = params['Gop']
          @Rotate = params['Rotate']
          @Profile = params['Profile']
          @BitrateToOrig = params['BitrateToOrig']
          @HeightToOrig = params['HeightToOrig']
          @FpsToOrig = params['FpsToOrig']
          @NeedVideo = params['NeedVideo']
          @NeedAudio = params['NeedAudio']
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
          @Description = params['Description']
          @AiTransCode = params['AiTransCode']
          @AdaptBitratePercent = params['AdaptBitratePercent']
          @ShortEdgeAsHeight = params['ShortEdgeAsHeight']
          @DRMType = params['DRMType']
          @DRMTracks = params['DRMTracks']
        end
      end

      # 时移计费明细数据。
      class TimeShiftBillData < TencentCloud::Common::AbstractModel
        # @param Domain: 推流域名。
        # @type Domain: String
        # @param Duration: 时移文件时长，单位分钟。
        # @type Duration: Float
        # @param StoragePeriod: 时移配置天数，单位天。
        # @type StoragePeriod: Float
        # @param Time: 时间点，格式: yyyy-mm-ddTHH:MM:SSZ。
        # @type Time: String
        # @param TotalDuration: 时移总时长，单位分钟。
        # @type TotalDuration: Float

        attr_accessor :Domain, :Duration, :StoragePeriod, :Time, :TotalDuration
        
        def initialize(domain=nil, duration=nil, storageperiod=nil, time=nil, totalduration=nil)
          @Domain = domain
          @Duration = duration
          @StoragePeriod = storageperiod
          @Time = time
          @TotalDuration = totalduration
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Duration = params['Duration']
          @StoragePeriod = params['StoragePeriod']
          @Time = params['Time']
          @TotalDuration = params['TotalDuration']
        end
      end

      # 某个时间点的指标的数值是多少。
      class TimeValue < TencentCloud::Common::AbstractModel
        # @param Time: UTC 时间，时间格式：yyyy-mm-ddTHH:MM:SSZ。
        # @type Time: String
        # @param Num: 数值。
        # @type Num: Integer

        attr_accessor :Time, :Num
        
        def initialize(time=nil, num=nil)
          @Time = time
          @Num = num
        end

        def deserialize(params)
          @Time = params['Time']
          @Num = params['Num']
        end
      end

      # 转码详细信息。
      class TranscodeDetailInfo < TencentCloud::Common::AbstractModel
        # @param StreamName: 流名称。
        # @type StreamName: String
        # @param StartTime: 开始时间（北京时间），格式：yyyy-mm-dd HH:MM。
        # @type StartTime: String
        # @param EndTime: 结束时间（北京时间），格式：yyyy-mm-dd HH:MM。
        # @type EndTime: String
        # @param Duration: 转码时长，单位：分钟。
        # 注意：因推流过程中可能有中断重推情况，此处时长为真实转码时长累加值，并非结束时间和开始时间的间隔。
        # @type Duration: Integer
        # @param ModuleCodec: 编码方式，带模块，
        # 示例：
        # liveprocessor_H264：直播转码-H264，
        # liveprocessor_H265： 直播转码-H265，
        # topspeed_H264：极速高清-H264，
        # topspeed_H265：极速高清-H265。
        # @type ModuleCodec: String
        # @param Bitrate: 码率。
        # @type Bitrate: Integer
        # @param Type: 类型，包含：转码（Transcode），混流（MixStream），水印（WaterMark）。
        # @type Type: String
        # @param PushDomain: 推流域名。
        # @type PushDomain: String
        # @param Resolution: 分辨率。
        # @type Resolution: String

        attr_accessor :StreamName, :StartTime, :EndTime, :Duration, :ModuleCodec, :Bitrate, :Type, :PushDomain, :Resolution
        
        def initialize(streamname=nil, starttime=nil, endtime=nil, duration=nil, modulecodec=nil, bitrate=nil, type=nil, pushdomain=nil, resolution=nil)
          @StreamName = streamname
          @StartTime = starttime
          @EndTime = endtime
          @Duration = duration
          @ModuleCodec = modulecodec
          @Bitrate = bitrate
          @Type = type
          @PushDomain = pushdomain
          @Resolution = resolution
        end

        def deserialize(params)
          @StreamName = params['StreamName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Duration = params['Duration']
          @ModuleCodec = params['ModuleCodec']
          @Bitrate = params['Bitrate']
          @Type = params['Type']
          @PushDomain = params['PushDomain']
          @Resolution = params['Resolution']
        end
      end

      # 转码任务数。
      class TranscodeTaskNum < TencentCloud::Common::AbstractModel
        # @param Time: 时间点。
        # @type Time: String
        # @param CodeRate: 码率。
        # @type CodeRate: Integer
        # @param Num: 任务数。
        # @type Num: Integer

        attr_accessor :Time, :CodeRate, :Num
        
        def initialize(time=nil, coderate=nil, num=nil)
          @Time = time
          @CodeRate = coderate
          @Num = num
        end

        def deserialize(params)
          @Time = params['Time']
          @CodeRate = params['CodeRate']
          @Num = params['Num']
        end
      end

      # 转码总量数据
      class TranscodeTotalInfo < TencentCloud::Common::AbstractModel
        # @param Time: 时间点，北京时间，
        # 示例：2019-03-01 00:00:00。
        # @type Time: String
        # @param Duration: 转码时长，单位：分钟。
        # @type Duration: Integer
        # @param ModuleCodec: 编码方式，带模块，
        # 示例：
        # liveprocessor_H264 =》直播转码-H264，
        # liveprocessor_H265 =》 直播转码-H265，
        # topspeed_H264 =》极速高清-H264，
        # topspeed_H265 =》极速高清-H265。
        # @type ModuleCodec: String
        # @param Resolution: 分辨率，
        # 示例：540*480。
        # @type Resolution: String

        attr_accessor :Time, :Duration, :ModuleCodec, :Resolution
        
        def initialize(time=nil, duration=nil, modulecodec=nil, resolution=nil)
          @Time = time
          @Duration = duration
          @ModuleCodec = modulecodec
          @Resolution = resolution
        end

        def deserialize(params)
          @Time = params['Time']
          @Duration = params['Duration']
          @ModuleCodec = params['ModuleCodec']
          @Resolution = params['Resolution']
        end
      end

      # UnBindLiveDomainCert请求参数结构体
      class UnBindLiveDomainCertRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 播放域名。
        # @type DomainName: String
        # @param Type: 枚举值：
        # gray: 解绑灰度规则
        # formal(默认): 解绑正式规则

        # 不传则为formal
        # @type Type: String

        attr_accessor :DomainName, :Type
        
        def initialize(domainname=nil, type=nil)
          @DomainName = domainname
          @Type = type
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @Type = params['Type']
        end
      end

      # UnBindLiveDomainCert返回参数结构体
      class UnBindLiveDomainCertResponse < TencentCloud::Common::AbstractModel
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

      # UpdateLiveWatermark请求参数结构体
      class UpdateLiveWatermarkRequest < TencentCloud::Common::AbstractModel
        # @param WatermarkId: 水印 ID。
        # 在添加水印接口 [AddLiveWatermark](/document/product/267/30154) 调用返回值中获取水印 ID。
        # @type WatermarkId: Integer
        # @param PictureUrl: 水印图片 URL。
        # URL中禁止包含的字符：
        #  ;(){}$>`#"\'|
        # @type PictureUrl: String
        # @param XPosition: 显示位置，X轴偏移，单位是百分比，默认 0。
        # @type XPosition: Integer
        # @param YPosition: 显示位置，Y轴偏移，单位是百分比，默认 0。
        # @type YPosition: Integer
        # @param WatermarkName: 水印名称。
        # 最长16字节。
        # @type WatermarkName: String
        # @param Width: 水印宽度，占直播原始画面宽度百分比，建议高宽只设置一项，另外一项会自适应缩放，避免变形。默认原始宽度。
        # @type Width: Integer
        # @param Height: 水印高度，占直播原始画面宽度百分比，建议高宽只设置一项，另外一项会自适应缩放，避免变形。默认原始高度。
        # @type Height: Integer

        attr_accessor :WatermarkId, :PictureUrl, :XPosition, :YPosition, :WatermarkName, :Width, :Height
        
        def initialize(watermarkid=nil, pictureurl=nil, xposition=nil, yposition=nil, watermarkname=nil, width=nil, height=nil)
          @WatermarkId = watermarkid
          @PictureUrl = pictureurl
          @XPosition = xposition
          @YPosition = yposition
          @WatermarkName = watermarkname
          @Width = width
          @Height = height
        end

        def deserialize(params)
          @WatermarkId = params['WatermarkId']
          @PictureUrl = params['PictureUrl']
          @XPosition = params['XPosition']
          @YPosition = params['YPosition']
          @WatermarkName = params['WatermarkName']
          @Width = params['Width']
          @Height = params['Height']
        end
      end

      # UpdateLiveWatermark返回参数结构体
      class UpdateLiveWatermarkResponse < TencentCloud::Common::AbstractModel
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

      # 水印信息。
      class WatermarkInfo < TencentCloud::Common::AbstractModel
        # @param WatermarkId: 水印 ID。
        # @type WatermarkId: Integer
        # @param PictureUrl: 水印图片 URL。
        # @type PictureUrl: String
        # @param XPosition: 显示位置，X 轴偏移。
        # @type XPosition: Integer
        # @param YPosition: 显示位置，Y 轴偏移。
        # @type YPosition: Integer
        # @param WatermarkName: 水印名称。
        # @type WatermarkName: String
        # @param Status: 当前状态。0：未使用，1:使用中。
        # @type Status: Integer
        # @param CreateTime: 添加时间。
        # @type CreateTime: String
        # @param Width: 水印宽。
        # @type Width: Integer
        # @param Height: 水印高。
        # @type Height: Integer

        attr_accessor :WatermarkId, :PictureUrl, :XPosition, :YPosition, :WatermarkName, :Status, :CreateTime, :Width, :Height
        
        def initialize(watermarkid=nil, pictureurl=nil, xposition=nil, yposition=nil, watermarkname=nil, status=nil, createtime=nil, width=nil, height=nil)
          @WatermarkId = watermarkid
          @PictureUrl = pictureurl
          @XPosition = xposition
          @YPosition = yposition
          @WatermarkName = watermarkname
          @Status = status
          @CreateTime = createtime
          @Width = width
          @Height = height
        end

        def deserialize(params)
          @WatermarkId = params['WatermarkId']
          @PictureUrl = params['PictureUrl']
          @XPosition = params['XPosition']
          @YPosition = params['YPosition']
          @WatermarkName = params['WatermarkName']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @Width = params['Width']
          @Height = params['Height']
        end
      end

    end
  end
end

