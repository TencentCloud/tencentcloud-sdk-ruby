# frozen_string_literal: true

# Copyright (c) 2017-2025 Tencent. All Rights Reserved.
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
  module Monitor
    module V20230616
      # CreateNoticeContentTmpl请求参数结构体
      class CreateNoticeContentTmplRequest < TencentCloud::Common::AbstractModel
        # @param TmplName: 模板名称
        # @type TmplName: String
        # @param MonitorType: 监控类型
        # @type MonitorType: String
        # @param TmplContents: 模板内容
        # @type TmplContents: :class:`Tencentcloud::Monitor.v20230616.models.NoticeContentTmplItem`
        # @param TmplLanguage: 模板语言 en/zh
        # @type TmplLanguage: String

        attr_accessor :TmplName, :MonitorType, :TmplContents, :TmplLanguage

        def initialize(tmplname=nil, monitortype=nil, tmplcontents=nil, tmpllanguage=nil)
          @TmplName = tmplname
          @MonitorType = monitortype
          @TmplContents = tmplcontents
          @TmplLanguage = tmpllanguage
        end

        def deserialize(params)
          @TmplName = params['TmplName']
          @MonitorType = params['MonitorType']
          unless params['TmplContents'].nil?
            @TmplContents = NoticeContentTmplItem.new
            @TmplContents.deserialize(params['TmplContents'])
          end
          @TmplLanguage = params['TmplLanguage']
        end
      end

      # CreateNoticeContentTmpl返回参数结构体
      class CreateNoticeContentTmplResponse < TencentCloud::Common::AbstractModel
        # @param TmplID: 自定义内容模板ID
        # @type TmplID: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TmplID, :RequestId

        def initialize(tmplid=nil, requestid=nil)
          @TmplID = tmplid
          @RequestId = requestid
        end

        def deserialize(params)
          @TmplID = params['TmplID']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAlarmNotifyHistories请求参数结构体
      class DescribeAlarmNotifyHistoriesRequest < TencentCloud::Common::AbstractModel
        # @param MonitorType: 监控类型
        # @type MonitorType: String
        # @param QueryBaseTime: 起始时间点，unix秒级时间戳
        # @type QueryBaseTime: Integer
        # @param QueryBeforeSeconds: 从 QueryBaseTime 开始，需要查询往前多久的时间，单位秒
        # @type QueryBeforeSeconds: Integer
        # @param PageParams: 分页参数
        # @type PageParams: :class:`Tencentcloud::Monitor.v20230616.models.PageByNoParams`
        # @param Namespace: 当监控类型为 MT_QCE 时候需要填写，归属的命名空间
        # @type Namespace: String
        # @param ModelName: 当监控类型为 MT_QCE 时候需要填写， 告警策略类型
        # @type ModelName: String
        # @param PolicyId: 查询某个策略的通知历史
        # @type PolicyId: String

        attr_accessor :MonitorType, :QueryBaseTime, :QueryBeforeSeconds, :PageParams, :Namespace, :ModelName, :PolicyId

        def initialize(monitortype=nil, querybasetime=nil, querybeforeseconds=nil, pageparams=nil, namespace=nil, modelname=nil, policyid=nil)
          @MonitorType = monitortype
          @QueryBaseTime = querybasetime
          @QueryBeforeSeconds = querybeforeseconds
          @PageParams = pageparams
          @Namespace = namespace
          @ModelName = modelname
          @PolicyId = policyid
        end

        def deserialize(params)
          @MonitorType = params['MonitorType']
          @QueryBaseTime = params['QueryBaseTime']
          @QueryBeforeSeconds = params['QueryBeforeSeconds']
          unless params['PageParams'].nil?
            @PageParams = PageByNoParams.new
            @PageParams.deserialize(params['PageParams'])
          end
          @Namespace = params['Namespace']
          @ModelName = params['ModelName']
          @PolicyId = params['PolicyId']
        end
      end

      # DescribeAlarmNotifyHistories返回参数结构体
      class DescribeAlarmNotifyHistoriesResponse < TencentCloud::Common::AbstractModel
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

      # 钉钉机器人内容模板配置
      class DingDingRobotNoticeTmpl < TencentCloud::Common::AbstractModel
        # @param ContentTmpl: 内容模板
        # @type ContentTmpl: String
        # @param TitleTmpl: 标题模板
        # @type TitleTmpl: String

        attr_accessor :ContentTmpl, :TitleTmpl

        def initialize(contenttmpl=nil, titletmpl=nil)
          @ContentTmpl = contenttmpl
          @TitleTmpl = titletmpl
        end

        def deserialize(params)
          @ContentTmpl = params['ContentTmpl']
          @TitleTmpl = params['TitleTmpl']
        end
      end

      # 钉钉机器人通知模板的匹配器
      class DingDingRobotNoticeTmplMatcher < TencentCloud::Common::AbstractModel
        # @param MatchingStatus: 匹配状态 Invalid;
        # Trigger 告警触发; Recovery 告警恢复
        # @type MatchingStatus: Array
        # @param Template: 模板配置
        # @type Template: :class:`Tencentcloud::Monitor.v20230616.models.DingDingRobotNoticeTmpl`

        attr_accessor :MatchingStatus, :Template

        def initialize(matchingstatus=nil, template=nil)
          @MatchingStatus = matchingstatus
          @Template = template
        end

        def deserialize(params)
          @MatchingStatus = params['MatchingStatus']
          unless params['Template'].nil?
            @Template = DingDingRobotNoticeTmpl.new
            @Template.deserialize(params['Template'])
          end
        end
      end

      # 飞书机器人内容模板配置
      class FeiShuRobotNoticeTmpl < TencentCloud::Common::AbstractModel
        # @param ContentTmpl: 内容模板
        # @type ContentTmpl: String
        # @param TitleTmpl: 标题模板
        # @type TitleTmpl: String

        attr_accessor :ContentTmpl, :TitleTmpl

        def initialize(contenttmpl=nil, titletmpl=nil)
          @ContentTmpl = contenttmpl
          @TitleTmpl = titletmpl
        end

        def deserialize(params)
          @ContentTmpl = params['ContentTmpl']
          @TitleTmpl = params['TitleTmpl']
        end
      end

      # 飞书机器人通知模板的匹配器
      class FeiShuRobotNoticeTmplMatcher < TencentCloud::Common::AbstractModel
        # @param MatchingStatus: 匹配状态 Invalid;
        # Trigger 告警触发; Recovery 告警恢复
        # @type MatchingStatus: Array
        # @param Template: 模板配置
        # @type Template: :class:`Tencentcloud::Monitor.v20230616.models.FeiShuRobotNoticeTmpl`

        attr_accessor :MatchingStatus, :Template

        def initialize(matchingstatus=nil, template=nil)
          @MatchingStatus = matchingstatus
          @Template = template
        end

        def deserialize(params)
          @MatchingStatus = params['MatchingStatus']
          unless params['Template'].nil?
            @Template = FeiShuRobotNoticeTmpl.new
            @Template.deserialize(params['Template'])
          end
        end
      end

      # 内容通知模板元素
      class NoticeContentTmplItem < TencentCloud::Common::AbstractModel
        # @param QCloudYehe: 官网通知渠道配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QCloudYehe: Array
        # @param WeWorkRobot: 企业微信机器人通知渠道配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WeWorkRobot: Array
        # @param DingDingRobot: 钉钉机器人通知渠道配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DingDingRobot: Array
        # @param FeiShuRobot: 飞书机器人通知渠道配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FeiShuRobot: Array
        # @param Webhook: 自定义Webhook通知渠道配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Webhook: Array
        # @param TeamsRobot: Teams机器人通知渠道配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TeamsRobot: Array
        # @param PagerDutyRobot: PagerDutyRobot机器人通知渠道配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PagerDutyRobot: Array

        attr_accessor :QCloudYehe, :WeWorkRobot, :DingDingRobot, :FeiShuRobot, :Webhook, :TeamsRobot, :PagerDutyRobot

        def initialize(qcloudyehe=nil, weworkrobot=nil, dingdingrobot=nil, feishurobot=nil, webhook=nil, teamsrobot=nil, pagerdutyrobot=nil)
          @QCloudYehe = qcloudyehe
          @WeWorkRobot = weworkrobot
          @DingDingRobot = dingdingrobot
          @FeiShuRobot = feishurobot
          @Webhook = webhook
          @TeamsRobot = teamsrobot
          @PagerDutyRobot = pagerdutyrobot
        end

        def deserialize(params)
          unless params['QCloudYehe'].nil?
            @QCloudYehe = []
            params['QCloudYehe'].each do |i|
              qcloudyehenoticetmplmatcher_tmp = QCloudYeheNoticeTmplMatcher.new
              qcloudyehenoticetmplmatcher_tmp.deserialize(i)
              @QCloudYehe << qcloudyehenoticetmplmatcher_tmp
            end
          end
          unless params['WeWorkRobot'].nil?
            @WeWorkRobot = []
            params['WeWorkRobot'].each do |i|
              weworkrobotnoticetmplmatcher_tmp = WeWorkRobotNoticeTmplMatcher.new
              weworkrobotnoticetmplmatcher_tmp.deserialize(i)
              @WeWorkRobot << weworkrobotnoticetmplmatcher_tmp
            end
          end
          unless params['DingDingRobot'].nil?
            @DingDingRobot = []
            params['DingDingRobot'].each do |i|
              dingdingrobotnoticetmplmatcher_tmp = DingDingRobotNoticeTmplMatcher.new
              dingdingrobotnoticetmplmatcher_tmp.deserialize(i)
              @DingDingRobot << dingdingrobotnoticetmplmatcher_tmp
            end
          end
          unless params['FeiShuRobot'].nil?
            @FeiShuRobot = []
            params['FeiShuRobot'].each do |i|
              feishurobotnoticetmplmatcher_tmp = FeiShuRobotNoticeTmplMatcher.new
              feishurobotnoticetmplmatcher_tmp.deserialize(i)
              @FeiShuRobot << feishurobotnoticetmplmatcher_tmp
            end
          end
          unless params['Webhook'].nil?
            @Webhook = []
            params['Webhook'].each do |i|
              webhooknoticetmplmatcher_tmp = WebhookNoticeTmplMatcher.new
              webhooknoticetmplmatcher_tmp.deserialize(i)
              @Webhook << webhooknoticetmplmatcher_tmp
            end
          end
          unless params['TeamsRobot'].nil?
            @TeamsRobot = []
            params['TeamsRobot'].each do |i|
              teamsrobotnoticetmplmatcher_tmp = TeamsRobotNoticeTmplMatcher.new
              teamsrobotnoticetmplmatcher_tmp.deserialize(i)
              @TeamsRobot << teamsrobotnoticetmplmatcher_tmp
            end
          end
          unless params['PagerDutyRobot'].nil?
            @PagerDutyRobot = []
            params['PagerDutyRobot'].each do |i|
              pagerdutyrobotnoticetmplmatcher_tmp = PagerDutyRobotNoticeTmplMatcher.new
              pagerdutyrobotnoticetmplmatcher_tmp.deserialize(i)
              @PagerDutyRobot << pagerdutyrobotnoticetmplmatcher_tmp
            end
          end
        end
      end

      # 分页请求参数
      class PageByNoParams < TencentCloud::Common::AbstractModel
        # @param PerPage: 每个分页的数量是多少
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PerPage: Integer
        # @param PageNo: 第几个分页，从1开始
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNo: String

        attr_accessor :PerPage, :PageNo

        def initialize(perpage=nil, pageno=nil)
          @PerPage = perpage
          @PageNo = pageno
        end

        def deserialize(params)
          @PerPage = params['PerPage']
          @PageNo = params['PageNo']
        end
      end

      # 告警通知自定义PagerDutyRobot内容模板
      class PagerDutyRobotNoticeTmpl < TencentCloud::Common::AbstractModel
        # @param Body: 请求体模板 仅支持json
        # @type Body: String
        # @param Headers: 请求头 暂时未支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Headers: Array
        # @param TitleTmpl: 标题模板
        # @type TitleTmpl: String

        attr_accessor :Body, :Headers, :TitleTmpl

        def initialize(body=nil, headers=nil, titletmpl=nil)
          @Body = body
          @Headers = headers
          @TitleTmpl = titletmpl
        end

        def deserialize(params)
          @Body = params['Body']
          unless params['Headers'].nil?
            @Headers = []
            params['Headers'].each do |i|
              pagerdutyrobotnoticetmplheader_tmp = PagerDutyRobotNoticeTmplHeader.new
              pagerdutyrobotnoticetmplheader_tmp.deserialize(i)
              @Headers << pagerdutyrobotnoticetmplheader_tmp
            end
          end
          @TitleTmpl = params['TitleTmpl']
        end
      end

      # 告警通知自定义PagerDutyRobot模板中的请求体头部描述
      class PagerDutyRobotNoticeTmplHeader < TencentCloud::Common::AbstractModel
        # @param Key: http请求中header的key
        # @type Key: String
        # @param Values: http请求中header的value
        # @type Values: Array

        attr_accessor :Key, :Values

        def initialize(key=nil, values=nil)
          @Key = key
          @Values = values
        end

        def deserialize(params)
          @Key = params['Key']
          @Values = params['Values']
        end
      end

      # 告警通知自定义PagerDutyRobot的通知内容模板匹配器
      class PagerDutyRobotNoticeTmplMatcher < TencentCloud::Common::AbstractModel
        # @param MatchingStatus: 匹配状态 Invalid; Trigger 告警触发; Recovery 告警恢复
        # @type MatchingStatus: Array
        # @param Template: 自定义PagerDutyRobot内容模板
        # @type Template: :class:`Tencentcloud::Monitor.v20230616.models.PagerDutyRobotNoticeTmpl`

        attr_accessor :MatchingStatus, :Template

        def initialize(matchingstatus=nil, template=nil)
          @MatchingStatus = matchingstatus
          @Template = template
        end

        def deserialize(params)
          @MatchingStatus = params['MatchingStatus']
          unless params['Template'].nil?
            @Template = PagerDutyRobotNoticeTmpl.new
            @Template.deserialize(params['Template'])
          end
        end
      end

      # 官网通知内容模板
      class QCloudYeheNoticeTmpl < TencentCloud::Common::AbstractModel
        # @param Email: 邮件通知渠道
        # @type Email: :class:`Tencentcloud::Monitor.v20230616.models.QCloudYeheNoticeTmplItem`
        # @param QYWX: 企业微信通知渠道
        # @type QYWX: :class:`Tencentcloud::Monitor.v20230616.models.QCloudYeheNoticeTmplItem`
        # @param SMS: 短信通知渠道
        # @type SMS: :class:`Tencentcloud::Monitor.v20230616.models.QCloudYeheNoticeTmplItem`
        # @param Voice: 语音通知渠道
        # @type Voice: :class:`Tencentcloud::Monitor.v20230616.models.QCloudYeheNoticeTmplItem`
        # @param WeChat: 微信通知渠道
        # @type WeChat: :class:`Tencentcloud::Monitor.v20230616.models.QCloudYeheWeChatNoticeTmplItem`
        # @param Site: 站内信通知渠道
        # @type Site: :class:`Tencentcloud::Monitor.v20230616.models.QCloudYeheNoticeTmplItem`
        # @param Andon: 安灯通知渠道
        # @type Andon: :class:`Tencentcloud::Monitor.v20230616.models.QCloudYeheNoticeTmplItem`

        attr_accessor :Email, :QYWX, :SMS, :Voice, :WeChat, :Site, :Andon

        def initialize(email=nil, qywx=nil, sms=nil, voice=nil, wechat=nil, site=nil, andon=nil)
          @Email = email
          @QYWX = qywx
          @SMS = sms
          @Voice = voice
          @WeChat = wechat
          @Site = site
          @Andon = andon
        end

        def deserialize(params)
          unless params['Email'].nil?
            @Email = QCloudYeheNoticeTmplItem.new
            @Email.deserialize(params['Email'])
          end
          unless params['QYWX'].nil?
            @QYWX = QCloudYeheNoticeTmplItem.new
            @QYWX.deserialize(params['QYWX'])
          end
          unless params['SMS'].nil?
            @SMS = QCloudYeheNoticeTmplItem.new
            @SMS.deserialize(params['SMS'])
          end
          unless params['Voice'].nil?
            @Voice = QCloudYeheNoticeTmplItem.new
            @Voice.deserialize(params['Voice'])
          end
          unless params['WeChat'].nil?
            @WeChat = QCloudYeheWeChatNoticeTmplItem.new
            @WeChat.deserialize(params['WeChat'])
          end
          unless params['Site'].nil?
            @Site = QCloudYeheNoticeTmplItem.new
            @Site.deserialize(params['Site'])
          end
          unless params['Andon'].nil?
            @Andon = QCloudYeheNoticeTmplItem.new
            @Andon.deserialize(params['Andon'])
          end
        end
      end

      # 官网通知内容模板元素
      class QCloudYeheNoticeTmplItem < TencentCloud::Common::AbstractModel
        # @param ContentTmpl: 内容模板
        # @type ContentTmpl: String
        # @param TitleTmpl: 标题
        # @type TitleTmpl: String

        attr_accessor :ContentTmpl, :TitleTmpl

        def initialize(contenttmpl=nil, titletmpl=nil)
          @ContentTmpl = contenttmpl
          @TitleTmpl = titletmpl
        end

        def deserialize(params)
          @ContentTmpl = params['ContentTmpl']
          @TitleTmpl = params['TitleTmpl']
        end
      end

      # 官网内容通知模板的匹配器
      class QCloudYeheNoticeTmplMatcher < TencentCloud::Common::AbstractModel
        # @param MatchingStatus: 匹配状态 Invalid;
        # Trigger 告警触发; Recovery 告警恢复
        # @type MatchingStatus: Array
        # @param Template: 模板配置
        # @type Template: :class:`Tencentcloud::Monitor.v20230616.models.QCloudYeheNoticeTmpl`

        attr_accessor :MatchingStatus, :Template

        def initialize(matchingstatus=nil, template=nil)
          @MatchingStatus = matchingstatus
          @Template = template
        end

        def deserialize(params)
          @MatchingStatus = params['MatchingStatus']
          unless params['Template'].nil?
            @Template = QCloudYeheNoticeTmpl.new
            @Template.deserialize(params['Template'])
          end
        end
      end

      # 官网通知内容模板元素
      class QCloudYeheWeChatNoticeTmplItem < TencentCloud::Common::AbstractModel
        # @param AlarmContentTmpl: 告警内容模板
        # @type AlarmContentTmpl: String
        # @param AlarmObjectTmpl: 告警对象模板
        # @type AlarmObjectTmpl: String
        # @param AlarmRegionTmpl: 告警地域模板
        # @type AlarmRegionTmpl: String
        # @param AlarmTimeTmpl: 告警时间模板
        # @type AlarmTimeTmpl: String

        attr_accessor :AlarmContentTmpl, :AlarmObjectTmpl, :AlarmRegionTmpl, :AlarmTimeTmpl

        def initialize(alarmcontenttmpl=nil, alarmobjecttmpl=nil, alarmregiontmpl=nil, alarmtimetmpl=nil)
          @AlarmContentTmpl = alarmcontenttmpl
          @AlarmObjectTmpl = alarmobjecttmpl
          @AlarmRegionTmpl = alarmregiontmpl
          @AlarmTimeTmpl = alarmtimetmpl
        end

        def deserialize(params)
          @AlarmContentTmpl = params['AlarmContentTmpl']
          @AlarmObjectTmpl = params['AlarmObjectTmpl']
          @AlarmRegionTmpl = params['AlarmRegionTmpl']
          @AlarmTimeTmpl = params['AlarmTimeTmpl']
        end
      end

      # 企业微信机器人内容模板配置
      class TeamsRobotNoticeTmpl < TencentCloud::Common::AbstractModel
        # @param ContentTmpl: 内容模板
        # @type ContentTmpl: String

        attr_accessor :ContentTmpl

        def initialize(contenttmpl=nil)
          @ContentTmpl = contenttmpl
        end

        def deserialize(params)
          @ContentTmpl = params['ContentTmpl']
        end
      end

      # 企业微信机器人通知模板的匹配器
      class TeamsRobotNoticeTmplMatcher < TencentCloud::Common::AbstractModel
        # @param MatchingStatus: 匹配状态 Invalid;
        # Trigger 告警触发; Recovery 告警恢复
        # @type MatchingStatus: Array
        # @param Template: 模板配置
        # @type Template: :class:`Tencentcloud::Monitor.v20230616.models.TeamsRobotNoticeTmpl`

        attr_accessor :MatchingStatus, :Template

        def initialize(matchingstatus=nil, template=nil)
          @MatchingStatus = matchingstatus
          @Template = template
        end

        def deserialize(params)
          @MatchingStatus = params['MatchingStatus']
          unless params['Template'].nil?
            @Template = TeamsRobotNoticeTmpl.new
            @Template.deserialize(params['Template'])
          end
        end
      end

      # 企业微信机器人内容模板配置
      class WeWorkRobotNoticeTmpl < TencentCloud::Common::AbstractModel
        # @param ContentTmpl: 内容模板
        # @type ContentTmpl: String

        attr_accessor :ContentTmpl

        def initialize(contenttmpl=nil)
          @ContentTmpl = contenttmpl
        end

        def deserialize(params)
          @ContentTmpl = params['ContentTmpl']
        end
      end

      # 企业微信机器人通知模板的匹配器
      class WeWorkRobotNoticeTmplMatcher < TencentCloud::Common::AbstractModel
        # @param MatchingStatus: 匹配状态 Invalid;
        # Trigger 告警触发; Recovery 告警恢复
        # @type MatchingStatus: Array
        # @param Template: 模板配置
        # @type Template: :class:`Tencentcloud::Monitor.v20230616.models.WeWorkRobotNoticeTmpl`

        attr_accessor :MatchingStatus, :Template

        def initialize(matchingstatus=nil, template=nil)
          @MatchingStatus = matchingstatus
          @Template = template
        end

        def deserialize(params)
          @MatchingStatus = params['MatchingStatus']
          unless params['Template'].nil?
            @Template = WeWorkRobotNoticeTmpl.new
            @Template.deserialize(params['Template'])
          end
        end
      end

      # 告警通知自定义Webhook内容模板
      class WebhookNoticeTmpl < TencentCloud::Common::AbstractModel
        # @param Body: 请求体
        # @type Body: String
        # @param BodyContentType: 请求体的类型，非必填、默认为JSON
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BodyContentType: String
        # @param Headers: 请求头
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Headers: Array

        attr_accessor :Body, :BodyContentType, :Headers

        def initialize(body=nil, bodycontenttype=nil, headers=nil)
          @Body = body
          @BodyContentType = bodycontenttype
          @Headers = headers
        end

        def deserialize(params)
          @Body = params['Body']
          @BodyContentType = params['BodyContentType']
          unless params['Headers'].nil?
            @Headers = []
            params['Headers'].each do |i|
              webhooknoticetmplheader_tmp = WebhookNoticeTmplHeader.new
              webhooknoticetmplheader_tmp.deserialize(i)
              @Headers << webhooknoticetmplheader_tmp
            end
          end
        end
      end

      # 告警通知自定义Webhook模板中的请求体头部描述
      class WebhookNoticeTmplHeader < TencentCloud::Common::AbstractModel
        # @param Key: http请求中header的key
        # @type Key: String
        # @param Values: http请求中header的value
        # @type Values: Array

        attr_accessor :Key, :Values

        def initialize(key=nil, values=nil)
          @Key = key
          @Values = values
        end

        def deserialize(params)
          @Key = params['Key']
          @Values = params['Values']
        end
      end

      # 告警通知自定义Webhook的通知内容模板匹配器
      class WebhookNoticeTmplMatcher < TencentCloud::Common::AbstractModel
        # @param MatchingStatus: 匹配状态 Invalid; Trigger 告警触发; Recovery 告警恢复
        # @type MatchingStatus: Array
        # @param Template: 自定义Webhook内容模板
        # @type Template: :class:`Tencentcloud::Monitor.v20230616.models.WebhookNoticeTmpl`

        attr_accessor :MatchingStatus, :Template

        def initialize(matchingstatus=nil, template=nil)
          @MatchingStatus = matchingstatus
          @Template = template
        end

        def deserialize(params)
          @MatchingStatus = params['MatchingStatus']
          unless params['Template'].nil?
            @Template = WebhookNoticeTmpl.new
            @Template.deserialize(params['Template'])
          end
        end
      end

    end
  end
end

