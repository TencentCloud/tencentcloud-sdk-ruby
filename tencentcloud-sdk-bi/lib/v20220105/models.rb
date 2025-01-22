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
  module Bi
    module V20220105
      # ApplyEmbedInterval请求参数结构体
      class ApplyEmbedIntervalRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 分享项目id，必选
        # @type ProjectId: Integer
        # @param PageId: 分享页面id，嵌出看板时此为空值0，ChatBI嵌出时不传
        # @type PageId: Integer
        # @param BIToken: 需要申请延期的Token
        # @type BIToken: String
        # @param ExtraParam: 备用字段
        # @type ExtraParam: String
        # @param Intention: embed：页面/看板嵌出
        # chatBIEmbed：ChatBI嵌出
        # @type Intention: String
        # @param Scope: panel, 看板；page，页面
        # project，ChatBI嵌出时
        # @type Scope: String

        attr_accessor :ProjectId, :PageId, :BIToken, :ExtraParam, :Intention, :Scope

        def initialize(projectid=nil, pageid=nil, bitoken=nil, extraparam=nil, intention=nil, scope=nil)
          @ProjectId = projectid
          @PageId = pageid
          @BIToken = bitoken
          @ExtraParam = extraparam
          @Intention = intention
          @Scope = scope
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageId = params['PageId']
          @BIToken = params['BIToken']
          @ExtraParam = params['ExtraParam']
          @Intention = params['Intention']
          @Scope = params['Scope']
        end
      end

      # ApplyEmbedInterval返回参数结构体
      class ApplyEmbedIntervalResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 额外参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Data: 结果数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.ApplyEmbedTokenInfo`
        # @param Msg: 结果描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Data, :Msg, :RequestId

        def initialize(errorinfo=nil, extra=nil, data=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Data = data
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          unless params['Data'].nil?
            @Data = ApplyEmbedTokenInfo.new
            @Data.deserialize(params['Data'])
          end
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # 申请Token延期
      class ApplyEmbedTokenInfo < TencentCloud::Common::AbstractModel
        # @param Result: 申请结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean

        attr_accessor :Result

        def initialize(result=nil)
          @Result = result
        end

        def deserialize(params)
          @Result = params['Result']
        end
      end

      # 列表查询返回的每条记录的操作属性
      class BaseStateAction < TencentCloud::Common::AbstractModel
        # @param ShowEdit: 编辑是否可见
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShowEdit: Boolean
        # @param IsEdit: 编辑是否可点击
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsEdit: Boolean
        # @param EditText: 编辑按钮的文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EditText: String
        # @param EditTips: 编辑不可用时的提示文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EditTips: String
        # @param ShowDel: 删除是否可见
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShowDel: Boolean
        # @param IsDel: 删除是否可点击
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDel: Boolean
        # @param DelText: 删除按钮的文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DelText: String
        # @param DelTips: 删除不可用时的提示文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DelTips: String
        # @param ShowCopy: 复制是否可见
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShowCopy: Boolean
        # @param ShowView: 是否可见
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShowView: Boolean
        # @param ShowRename: 是否可重命名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShowRename: Boolean

        attr_accessor :ShowEdit, :IsEdit, :EditText, :EditTips, :ShowDel, :IsDel, :DelText, :DelTips, :ShowCopy, :ShowView, :ShowRename

        def initialize(showedit=nil, isedit=nil, edittext=nil, edittips=nil, showdel=nil, isdel=nil, deltext=nil, deltips=nil, showcopy=nil, showview=nil, showrename=nil)
          @ShowEdit = showedit
          @IsEdit = isedit
          @EditText = edittext
          @EditTips = edittips
          @ShowDel = showdel
          @IsDel = isdel
          @DelText = deltext
          @DelTips = deltips
          @ShowCopy = showcopy
          @ShowView = showview
          @ShowRename = showrename
        end

        def deserialize(params)
          @ShowEdit = params['ShowEdit']
          @IsEdit = params['IsEdit']
          @EditText = params['EditText']
          @EditTips = params['EditTips']
          @ShowDel = params['ShowDel']
          @IsDel = params['IsDel']
          @DelText = params['DelText']
          @DelTips = params['DelTips']
          @ShowCopy = params['ShowCopy']
          @ShowView = params['ShowView']
          @ShowRename = params['ShowRename']
        end
      end

      # 企业用户列表
      class CorpUserListData < TencentCloud::Common::AbstractModel
        # @param List: 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param TotalPages: 页数
        # @type TotalPages: Integer

        attr_accessor :List, :Total, :TotalPages

        def initialize(list=nil, total=nil, totalpages=nil)
          @List = list
          @Total = total
          @TotalPages = totalpages
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              useridandusername_tmp = UserIdAndUserName.new
              useridandusername_tmp.deserialize(i)
              @List << useridandusername_tmp
            end
          end
          @Total = params['Total']
          @TotalPages = params['TotalPages']
        end
      end

      # CreateDatasourceCloud请求参数结构体
      class CreateDatasourceCloudRequest < TencentCloud::Common::AbstractModel
        # @param ServiceType: 后端提供字典：域类型，1、腾讯云，2、本地
        # @type ServiceType: String
        # @param DbType: 驱动
        # @type DbType: String
        # @param Charset: 数据库编码
        # @type Charset: String
        # @param DbUser: 用户名
        # @type DbUser: String
        # @param DbPwd: 密码
        # @type DbPwd: String
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param SourceName: 数据库别名
        # @type SourceName: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param Vip: 公有云内网ip
        # @type Vip: String
        # @param Vport: 公有云内网端口
        # @type Vport: String
        # @param VpcId: vpc标识
        # @type VpcId: String
        # @param UniqVpcId: 统一vpc标识
        # @type UniqVpcId: String
        # @param RegionId: 区域标识（gz,bj)
        # @type RegionId: String
        # @param ExtraParam: 扩展参数
        # @type ExtraParam: String
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param ProdDbName: 数据源产品名
        # @type ProdDbName: String
        # @param DataOrigin: 第三方数据源标识
        # @type DataOrigin: String
        # @param DataOriginProjectId: 第三方项目id
        # @type DataOriginProjectId: String
        # @param DataOriginDatasourceId: 第三方数据源id
        # @type DataOriginDatasourceId: String
        # @param ClusterId: 集群id
        # @type ClusterId: String

        attr_accessor :ServiceType, :DbType, :Charset, :DbUser, :DbPwd, :DbName, :SourceName, :ProjectId, :Vip, :Vport, :VpcId, :UniqVpcId, :RegionId, :ExtraParam, :InstanceId, :ProdDbName, :DataOrigin, :DataOriginProjectId, :DataOriginDatasourceId, :ClusterId

        def initialize(servicetype=nil, dbtype=nil, charset=nil, dbuser=nil, dbpwd=nil, dbname=nil, sourcename=nil, projectid=nil, vip=nil, vport=nil, vpcid=nil, uniqvpcid=nil, regionid=nil, extraparam=nil, instanceid=nil, proddbname=nil, dataorigin=nil, dataoriginprojectid=nil, dataorigindatasourceid=nil, clusterid=nil)
          @ServiceType = servicetype
          @DbType = dbtype
          @Charset = charset
          @DbUser = dbuser
          @DbPwd = dbpwd
          @DbName = dbname
          @SourceName = sourcename
          @ProjectId = projectid
          @Vip = vip
          @Vport = vport
          @VpcId = vpcid
          @UniqVpcId = uniqvpcid
          @RegionId = regionid
          @ExtraParam = extraparam
          @InstanceId = instanceid
          @ProdDbName = proddbname
          @DataOrigin = dataorigin
          @DataOriginProjectId = dataoriginprojectid
          @DataOriginDatasourceId = dataorigindatasourceid
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ServiceType = params['ServiceType']
          @DbType = params['DbType']
          @Charset = params['Charset']
          @DbUser = params['DbUser']
          @DbPwd = params['DbPwd']
          @DbName = params['DbName']
          @SourceName = params['SourceName']
          @ProjectId = params['ProjectId']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @VpcId = params['VpcId']
          @UniqVpcId = params['UniqVpcId']
          @RegionId = params['RegionId']
          @ExtraParam = params['ExtraParam']
          @InstanceId = params['InstanceId']
          @ProdDbName = params['ProdDbName']
          @DataOrigin = params['DataOrigin']
          @DataOriginProjectId = params['DataOriginProjectId']
          @DataOriginDatasourceId = params['DataOriginDatasourceId']
          @ClusterId = params['ClusterId']
        end
      end

      # CreateDatasourceCloud返回参数结构体
      class CreateDatasourceCloudResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Data: 成功无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.IdDTO`
        # @param Extra: 额外信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: 提示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Data, :Extra, :Msg, :RequestId

        def initialize(errorinfo=nil, data=nil, extra=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Data = data
          @Extra = extra
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          unless params['Data'].nil?
            @Data = IdDTO.new
            @Data.deserialize(params['Data'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # CreateDatasource请求参数结构体
      class CreateDatasourceRequest < TencentCloud::Common::AbstractModel
        # @param DbHost: HOST
        # @type DbHost: String
        # @param DbPort: 端口
        # @type DbPort: Integer
        # @param ServiceType: 后端提供字典：域类型，1、腾讯云，2、本地
        # @type ServiceType: String
        # @param DbType: 驱动
        # @type DbType: String
        # @param Charset: 数据库编码
        # @type Charset: String
        # @param DbUser: 用户名
        # @type DbUser: String
        # @param DbPwd: 密码
        # @type DbPwd: String
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param SourceName: 数据库别名
        # @type SourceName: String
        # @param ProjectId: 项目id
        # @type ProjectId: Integer
        # @param Catalog: catalog值
        # @type Catalog: String
        # @param DataOrigin: 第三方数据源标识
        # @type DataOrigin: String
        # @param DataOriginProjectId: 第三方项目id
        # @type DataOriginProjectId: String
        # @param DataOriginDatasourceId: 第三方数据源id
        # @type DataOriginDatasourceId: String
        # @param ExtraParam: 扩展参数
        # @type ExtraParam: String
        # @param UniqVpcId: 腾讯云私有网络统一标识
        # @type UniqVpcId: String
        # @param Vip: 私有网络ip
        # @type Vip: String
        # @param Vport: 私有网络端口
        # @type Vport: String
        # @param VpcId: 腾讯云私有网络标识
        # @type VpcId: String
        # @param OperationAuthLimit: 操作权限限制
        # @type OperationAuthLimit: Array
        # @param UseVPC: 开启vpc
        # @type UseVPC: Boolean
        # @param RegionId: 地域
        # @type RegionId: String

        attr_accessor :DbHost, :DbPort, :ServiceType, :DbType, :Charset, :DbUser, :DbPwd, :DbName, :SourceName, :ProjectId, :Catalog, :DataOrigin, :DataOriginProjectId, :DataOriginDatasourceId, :ExtraParam, :UniqVpcId, :Vip, :Vport, :VpcId, :OperationAuthLimit, :UseVPC, :RegionId

        def initialize(dbhost=nil, dbport=nil, servicetype=nil, dbtype=nil, charset=nil, dbuser=nil, dbpwd=nil, dbname=nil, sourcename=nil, projectid=nil, catalog=nil, dataorigin=nil, dataoriginprojectid=nil, dataorigindatasourceid=nil, extraparam=nil, uniqvpcid=nil, vip=nil, vport=nil, vpcid=nil, operationauthlimit=nil, usevpc=nil, regionid=nil)
          @DbHost = dbhost
          @DbPort = dbport
          @ServiceType = servicetype
          @DbType = dbtype
          @Charset = charset
          @DbUser = dbuser
          @DbPwd = dbpwd
          @DbName = dbname
          @SourceName = sourcename
          @ProjectId = projectid
          @Catalog = catalog
          @DataOrigin = dataorigin
          @DataOriginProjectId = dataoriginprojectid
          @DataOriginDatasourceId = dataorigindatasourceid
          @ExtraParam = extraparam
          @UniqVpcId = uniqvpcid
          @Vip = vip
          @Vport = vport
          @VpcId = vpcid
          @OperationAuthLimit = operationauthlimit
          @UseVPC = usevpc
          @RegionId = regionid
        end

        def deserialize(params)
          @DbHost = params['DbHost']
          @DbPort = params['DbPort']
          @ServiceType = params['ServiceType']
          @DbType = params['DbType']
          @Charset = params['Charset']
          @DbUser = params['DbUser']
          @DbPwd = params['DbPwd']
          @DbName = params['DbName']
          @SourceName = params['SourceName']
          @ProjectId = params['ProjectId']
          @Catalog = params['Catalog']
          @DataOrigin = params['DataOrigin']
          @DataOriginProjectId = params['DataOriginProjectId']
          @DataOriginDatasourceId = params['DataOriginDatasourceId']
          @ExtraParam = params['ExtraParam']
          @UniqVpcId = params['UniqVpcId']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @VpcId = params['VpcId']
          @OperationAuthLimit = params['OperationAuthLimit']
          @UseVPC = params['UseVPC']
          @RegionId = params['RegionId']
        end
      end

      # CreateDatasource返回参数结构体
      class CreateDatasourceResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Data: 数据源id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.IdDTO`
        # @param Extra: 额外信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: 提示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Data, :Extra, :Msg, :RequestId

        def initialize(errorinfo=nil, data=nil, extra=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Data = data
          @Extra = extra
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          unless params['Data'].nil?
            @Data = IdDTO.new
            @Data.deserialize(params['Data'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # CreateEmbedToken请求参数结构体
      class CreateEmbedTokenRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 分享项目id
        # @type ProjectId: Integer
        # @param PageId: 分享页面id，嵌出看板时此为空值0，ChatBI嵌出时不传
        # @type PageId: Integer
        # @param Intention: embed表示页面看板嵌出，chatBIEmbed表示ChatBI嵌出
        # @type Intention: String
        # @param Scope: page表示嵌出页面，panel表示嵌出整个看板，ChatBI嵌出时使用project
        # @type Scope: String
        # @param ExpireTime: 过期时间。 单位：分钟 最大值：240。即，4小时 默认值：240
        # @type ExpireTime: String
        # @param ExtraParam: 备用字段
        # @type ExtraParam: String
        # @param UserCorpId: 使用者企业Id(仅用于多用户)
        # @type UserCorpId: String
        # @param UserId: 使用者Id(仅用于多用户)
        # @type UserId: String
        # @param TicketNum: 访问次数限制，限制范围1-99999，为空则不设置访问次数限制
        # @type TicketNum: Integer
        # @param GlobalParam: 全局筛选参数 报表过滤条件的全局参数。 格式为JSON格式的字符串
        # **目前仅支持字符类型页面参数绑定到全局参数
        # **
        # [
        #     {
        #         "ParamKey": "name",  //页面参数名称
        #         "JoinType": "AND",     // 连接方式,目前仅支持AND
        #         "WhereList": [
        #             {
        #                 "Operator": "-neq",   // 操作符，参考以下说明
        #                 "Value": [                   //操作值，单值数组只传一个值
        #                     "zZWJMD",
        #                     "ZzVGHX",
        #                     "湖南省",
        #                     "河北省"
        #                 ]
        #             }
        #         ]
        #     },
        #     {
        #         "ParamKey": "genderParam",
        #         "JoinType": "AND",
        #         "WhereList": [
        #             {
        #                 "Operator": "-neq",
        #                 "Value": [
        #                     "男"
        #                 ]
        #             }
        #         ]
        #     }
        # ]



        # Operator 目前支持
        # -neq  不等于!=操作符
        # -eq  等于=操作符
        # -is     in操作符
        # @type GlobalParam: String
        # @param TokenType: 100 不绑定用户  200 单用户单token  300 单用户多token
        # @type TokenType: Integer
        # @param TokenNum: 一次创建的token数
        # @type TokenNum: Integer

        attr_accessor :ProjectId, :PageId, :Intention, :Scope, :ExpireTime, :ExtraParam, :UserCorpId, :UserId, :TicketNum, :GlobalParam, :TokenType, :TokenNum

        def initialize(projectid=nil, pageid=nil, intention=nil, scope=nil, expiretime=nil, extraparam=nil, usercorpid=nil, userid=nil, ticketnum=nil, globalparam=nil, tokentype=nil, tokennum=nil)
          @ProjectId = projectid
          @PageId = pageid
          @Intention = intention
          @Scope = scope
          @ExpireTime = expiretime
          @ExtraParam = extraparam
          @UserCorpId = usercorpid
          @UserId = userid
          @TicketNum = ticketnum
          @GlobalParam = globalparam
          @TokenType = tokentype
          @TokenNum = tokennum
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageId = params['PageId']
          @Intention = params['Intention']
          @Scope = params['Scope']
          @ExpireTime = params['ExpireTime']
          @ExtraParam = params['ExtraParam']
          @UserCorpId = params['UserCorpId']
          @UserId = params['UserId']
          @TicketNum = params['TicketNum']
          @GlobalParam = params['GlobalParam']
          @TokenType = params['TokenType']
          @TokenNum = params['TokenNum']
        end
      end

      # CreateEmbedToken返回参数结构体
      class CreateEmbedTokenResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 额外信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.EmbedTokenInfo`
        # @param Msg: 结果描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Data, :Msg, :RequestId

        def initialize(errorinfo=nil, extra=nil, data=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Data = data
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          unless params['Data'].nil?
            @Data = EmbedTokenInfo.new
            @Data.deserialize(params['Data'])
          end
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # CreateProject请求参数结构体
      class CreateProjectRequest < TencentCloud::Common::AbstractModel
        # @param Name: 项目名称
        # @type Name: String
        # @param ColorCode: logo底色
        # @type ColorCode: String
        # @param Logo: 项目Logo
        # @type Logo: String
        # @param Mark: 备注
        # @type Mark: String
        # @param IsApply: 是否允许用户申请
        # @type IsApply: Boolean
        # @param DefaultPanelType: 默认看板
        # @type DefaultPanelType: Integer
        # @param ManagePlatform: 管理平台
        # @type ManagePlatform: String

        attr_accessor :Name, :ColorCode, :Logo, :Mark, :IsApply, :DefaultPanelType, :ManagePlatform

        def initialize(name=nil, colorcode=nil, logo=nil, mark=nil, isapply=nil, defaultpaneltype=nil, manageplatform=nil)
          @Name = name
          @ColorCode = colorcode
          @Logo = logo
          @Mark = mark
          @IsApply = isapply
          @DefaultPanelType = defaultpaneltype
          @ManagePlatform = manageplatform
        end

        def deserialize(params)
          @Name = params['Name']
          @ColorCode = params['ColorCode']
          @Logo = params['Logo']
          @Mark = params['Mark']
          @IsApply = params['IsApply']
          @DefaultPanelType = params['DefaultPanelType']
          @ManagePlatform = params['ManagePlatform']
        end
      end

      # CreateProject返回参数结构体
      class CreateProjectResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 额外数据
        # @type Extra: String
        # @param Data: 数据
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.Data`
        # @param Msg: 返回信息
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Data, :Msg, :RequestId

        def initialize(errorinfo=nil, extra=nil, data=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Data = data
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          unless params['Data'].nil?
            @Data = Data.new
            @Data.deserialize(params['Data'])
          end
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # CreateUserRoleProject请求参数结构体
      class CreateUserRoleProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param RoleIdList: 角色ID列表
        # @type RoleIdList: Array
        # @param UserList: 用户列表（废弃）
        # @type UserList: Array
        # @param UserInfoList: 用户列表（新）
        # @type UserInfoList: Array

        attr_accessor :ProjectId, :RoleIdList, :UserList, :UserInfoList

        def initialize(projectid=nil, roleidlist=nil, userlist=nil, userinfolist=nil)
          @ProjectId = projectid
          @RoleIdList = roleidlist
          @UserList = userlist
          @UserInfoList = userinfolist
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @RoleIdList = params['RoleIdList']
          unless params['UserList'].nil?
            @UserList = []
            params['UserList'].each do |i|
              useridandusername_tmp = UserIdAndUserName.new
              useridandusername_tmp.deserialize(i)
              @UserList << useridandusername_tmp
            end
          end
          unless params['UserInfoList'].nil?
            @UserInfoList = []
            params['UserInfoList'].each do |i|
              userinfo_tmp = UserInfo.new
              userinfo_tmp.deserialize(i)
              @UserInfoList << userinfo_tmp
            end
          end
        end
      end

      # CreateUserRoleProject返回参数结构体
      class CreateUserRoleProjectResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 扩展
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.DataId`
        # @param Msg: 消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Data, :Msg, :RequestId

        def initialize(errorinfo=nil, extra=nil, data=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Data = data
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          unless params['Data'].nil?
            @Data = DataId.new
            @Data.deserialize(params['Data'])
          end
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # CreateUserRole请求参数结构体
      class CreateUserRoleRequest < TencentCloud::Common::AbstractModel
        # @param RoleIdList: 角色ID列表
        # @type RoleIdList: Array
        # @param UserList: 用户列表（废弃）
        # @type UserList: Array
        # @param UserInfoList: 用户列表（新）
        # @type UserInfoList: Array

        attr_accessor :RoleIdList, :UserList, :UserInfoList

        def initialize(roleidlist=nil, userlist=nil, userinfolist=nil)
          @RoleIdList = roleidlist
          @UserList = userlist
          @UserInfoList = userinfolist
        end

        def deserialize(params)
          @RoleIdList = params['RoleIdList']
          unless params['UserList'].nil?
            @UserList = []
            params['UserList'].each do |i|
              useridandusername_tmp = UserIdAndUserName.new
              useridandusername_tmp.deserialize(i)
              @UserList << useridandusername_tmp
            end
          end
          unless params['UserInfoList'].nil?
            @UserInfoList = []
            params['UserInfoList'].each do |i|
              userinfo_tmp = UserInfo.new
              userinfo_tmp.deserialize(i)
              @UserInfoList << userinfo_tmp
            end
          end
        end
      end

      # CreateUserRole返回参数结构体
      class CreateUserRoleResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 扩展
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.DataId`
        # @param Msg: 消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Data, :Msg, :RequestId

        def initialize(errorinfo=nil, extra=nil, data=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Data = data
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          unless params['Data'].nil?
            @Data = DataId.new
            @Data.deserialize(params['Data'])
          end
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # 数据
      class Data < TencentCloud::Common::AbstractModel
        # @param Id: 项目Id
        # @type Id: Integer

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # 数据ID
      class DataId < TencentCloud::Common::AbstractModel
        # @param Id: 数据id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # 数据源详情
      class DatasourceInfo < TencentCloud::Common::AbstractModel
        # @param Id: 数据库ID
        # @type Id: Integer
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param ServiceType: 域类型，1、腾讯云，2、本地
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceType: String
        # @param SourceName: 数据库别名
        # @type SourceName: String
        # @param DbType: 数据库驱动
        # @type DbType: String
        # @param DbHost: HOST
        # @type DbHost: String
        # @param DbPort: 端口
        # @type DbPort: Integer
        # @param DbUser: 用户名
        # @type DbUser: String
        # @param Charset: 数据库编码
        # @type Charset: String
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param UpdatedAt: 修改时间
        # @type UpdatedAt: String
        # @param CreatedUser: 创建人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedUser: String
        # @param Catalog: catalog值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Catalog: String
        # @param ConnectType: 连接类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConnectType: String
        # @param ProjectId: 项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param Desc: 数据源描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Desc: String
        # @param Status: 数据源状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param SourcePlat: 来源平台
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourcePlat: String
        # @param ExtraParam: 扩展参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraParam: String
        # @param AddInfo: 额外信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddInfo: String
        # @param ProjectName: 项目名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param EngineType: 引擎类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EngineType: String
        # @param Manager: 数据源负责人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Manager: String
        # @param OperatorWhitelist: 特定操作人员白名单
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperatorWhitelist: String
        # @param VpcId: 数据源的vpc信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param UniqVpcId: 数据源的uniqVpc信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param RegionId: 数据源的地域信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionId: String
        # @param StateAction: 操作属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StateAction: :class:`Tencentcloud::Bi.v20220105.models.BaseStateAction`
        # @param UpdatedUser: 更新人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedUser: String
        # @param PermissionList: 权限列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PermissionList: Array
        # @param AuthList: 权限值列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthList: Array
        # @param DataOrigin: 第三方数据源标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataOrigin: String
        # @param DataOriginProjectId: 第三方项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataOriginProjectId: String
        # @param DataOriginDatasourceId: 第三方数据源id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataOriginDatasourceId: String
        # @param ClusterId: 集群id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param DbTypeName: 数据源名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbTypeName: String
        # @param UseVPC: 开启vpc
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UseVPC: Boolean

        attr_accessor :Id, :DbName, :ServiceType, :SourceName, :DbType, :DbHost, :DbPort, :DbUser, :Charset, :CreatedAt, :UpdatedAt, :CreatedUser, :Catalog, :ConnectType, :ProjectId, :Desc, :Status, :SourcePlat, :ExtraParam, :AddInfo, :ProjectName, :EngineType, :Manager, :OperatorWhitelist, :VpcId, :UniqVpcId, :RegionId, :StateAction, :UpdatedUser, :PermissionList, :AuthList, :DataOrigin, :DataOriginProjectId, :DataOriginDatasourceId, :ClusterId, :DbTypeName, :UseVPC

        def initialize(id=nil, dbname=nil, servicetype=nil, sourcename=nil, dbtype=nil, dbhost=nil, dbport=nil, dbuser=nil, charset=nil, createdat=nil, updatedat=nil, createduser=nil, catalog=nil, connecttype=nil, projectid=nil, desc=nil, status=nil, sourceplat=nil, extraparam=nil, addinfo=nil, projectname=nil, enginetype=nil, manager=nil, operatorwhitelist=nil, vpcid=nil, uniqvpcid=nil, regionid=nil, stateaction=nil, updateduser=nil, permissionlist=nil, authlist=nil, dataorigin=nil, dataoriginprojectid=nil, dataorigindatasourceid=nil, clusterid=nil, dbtypename=nil, usevpc=nil)
          @Id = id
          @DbName = dbname
          @ServiceType = servicetype
          @SourceName = sourcename
          @DbType = dbtype
          @DbHost = dbhost
          @DbPort = dbport
          @DbUser = dbuser
          @Charset = charset
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @CreatedUser = createduser
          @Catalog = catalog
          @ConnectType = connecttype
          @ProjectId = projectid
          @Desc = desc
          @Status = status
          @SourcePlat = sourceplat
          @ExtraParam = extraparam
          @AddInfo = addinfo
          @ProjectName = projectname
          @EngineType = enginetype
          @Manager = manager
          @OperatorWhitelist = operatorwhitelist
          @VpcId = vpcid
          @UniqVpcId = uniqvpcid
          @RegionId = regionid
          @StateAction = stateaction
          @UpdatedUser = updateduser
          @PermissionList = permissionlist
          @AuthList = authlist
          @DataOrigin = dataorigin
          @DataOriginProjectId = dataoriginprojectid
          @DataOriginDatasourceId = dataorigindatasourceid
          @ClusterId = clusterid
          @DbTypeName = dbtypename
          @UseVPC = usevpc
        end

        def deserialize(params)
          @Id = params['Id']
          @DbName = params['DbName']
          @ServiceType = params['ServiceType']
          @SourceName = params['SourceName']
          @DbType = params['DbType']
          @DbHost = params['DbHost']
          @DbPort = params['DbPort']
          @DbUser = params['DbUser']
          @Charset = params['Charset']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @CreatedUser = params['CreatedUser']
          @Catalog = params['Catalog']
          @ConnectType = params['ConnectType']
          @ProjectId = params['ProjectId']
          @Desc = params['Desc']
          @Status = params['Status']
          @SourcePlat = params['SourcePlat']
          @ExtraParam = params['ExtraParam']
          @AddInfo = params['AddInfo']
          @ProjectName = params['ProjectName']
          @EngineType = params['EngineType']
          @Manager = params['Manager']
          @OperatorWhitelist = params['OperatorWhitelist']
          @VpcId = params['VpcId']
          @UniqVpcId = params['UniqVpcId']
          @RegionId = params['RegionId']
          unless params['StateAction'].nil?
            @StateAction = BaseStateAction.new
            @StateAction.deserialize(params['StateAction'])
          end
          @UpdatedUser = params['UpdatedUser']
          unless params['PermissionList'].nil?
            @PermissionList = []
            params['PermissionList'].each do |i|
              permissiongroup_tmp = PermissionGroup.new
              permissiongroup_tmp.deserialize(i)
              @PermissionList << permissiongroup_tmp
            end
          end
          @AuthList = params['AuthList']
          @DataOrigin = params['DataOrigin']
          @DataOriginProjectId = params['DataOriginProjectId']
          @DataOriginDatasourceId = params['DataOriginDatasourceId']
          @ClusterId = params['ClusterId']
          @DbTypeName = params['DbTypeName']
          @UseVPC = params['UseVPC']
        end
      end

      # 数据源详情列表
      class DatasourceInfoData < TencentCloud::Common::AbstractModel
        # @param List: 数据源详情列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param TotalPages: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPages: Integer

        attr_accessor :List, :Total, :TotalPages

        def initialize(list=nil, total=nil, totalpages=nil)
          @List = list
          @Total = total
          @TotalPages = totalpages
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              datasourceinfo_tmp = DatasourceInfo.new
              datasourceinfo_tmp.deserialize(i)
              @List << datasourceinfo_tmp
            end
          end
          @Total = params['Total']
          @TotalPages = params['TotalPages']
        end
      end

      # DeleteDatasource请求参数结构体
      class DeleteDatasourceRequest < TencentCloud::Common::AbstractModel
        # @param Id: 数据源id
        # @type Id: Integer
        # @param ProjectId: 项目id
        # @type ProjectId: Integer

        attr_accessor :Id, :ProjectId

        def initialize(id=nil, projectid=nil)
          @Id = id
          @ProjectId = projectid
        end

        def deserialize(params)
          @Id = params['Id']
          @ProjectId = params['ProjectId']
        end
      end

      # DeleteDatasource返回参数结构体
      class DeleteDatasourceResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param Extra: 扩展
        # @type Extra: String
        # @param Msg: 信息
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Data, :Extra, :Msg, :RequestId

        def initialize(errorinfo=nil, data=nil, extra=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Data = data
          @Extra = extra
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Data = params['Data']
          @Extra = params['Extra']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DeleteProject请求参数结构体
      class DeleteProjectRequest < TencentCloud::Common::AbstractModel
        # @param Id: 项目ID
        # @type Id: Integer
        # @param Seed: 随机数
        # @type Seed: String
        # @param DefaultPanelType: 默认看板
        # @type DefaultPanelType: Integer

        attr_accessor :Id, :Seed, :DefaultPanelType

        def initialize(id=nil, seed=nil, defaultpaneltype=nil)
          @Id = id
          @Seed = seed
          @DefaultPanelType = defaultpaneltype
        end

        def deserialize(params)
          @Id = params['Id']
          @Seed = params['Seed']
          @DefaultPanelType = params['DefaultPanelType']
        end
      end

      # DeleteProject返回参数结构体
      class DeleteProjectResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: ”“
        # @type Extra: String
        # @param Data: ""
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param Msg: ""
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Data, :Msg, :RequestId

        def initialize(errorinfo=nil, extra=nil, data=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Data = data
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Data = params['Data']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DeleteUserRoleProject请求参数结构体
      class DeleteUserRoleProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param UserId: 用户ID
        # @type UserId: String

        attr_accessor :ProjectId, :UserId

        def initialize(projectid=nil, userid=nil)
          @ProjectId = projectid
          @UserId = userid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @UserId = params['UserId']
        end
      end

      # DeleteUserRoleProject返回参数结构体
      class DeleteUserRoleProjectResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 扩展
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param Msg: 消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Data, :Msg, :RequestId

        def initialize(errorinfo=nil, extra=nil, data=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Data = data
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Data = params['Data']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DeleteUserRole请求参数结构体
      class DeleteUserRoleRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID
        # @type UserId: String

        attr_accessor :UserId

        def initialize(userid=nil)
          @UserId = userid
        end

        def deserialize(params)
          @UserId = params['UserId']
        end
      end

      # DeleteUserRole返回参数结构体
      class DeleteUserRoleResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 扩展
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param Msg: 消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Data, :Msg, :RequestId

        def initialize(errorinfo=nil, extra=nil, data=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Data = data
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Data = params['Data']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatasourceList请求参数结构体
      class DescribeDatasourceListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 无
        # @type ProjectId: Integer
        # @param AllPage: 返回所有页面，默认false
        # @type AllPage: Boolean
        # @param DbName: 数据库名称检索
        # @type DbName: String
        # @param PageNo: 无
        # @type PageNo: Integer
        # @param PageSize: 无
        # @type PageSize: Integer
        # @param Keyword: 搜索关键词
        # @type Keyword: String
        # @param PermissionType: 过滤无权限列表的参数（0 全量，1 使用权限，2 编辑权限）
        # @type PermissionType: Integer

        attr_accessor :ProjectId, :AllPage, :DbName, :PageNo, :PageSize, :Keyword, :PermissionType

        def initialize(projectid=nil, allpage=nil, dbname=nil, pageno=nil, pagesize=nil, keyword=nil, permissiontype=nil)
          @ProjectId = projectid
          @AllPage = allpage
          @DbName = dbname
          @PageNo = pageno
          @PageSize = pagesize
          @Keyword = keyword
          @PermissionType = permissiontype
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @AllPage = params['AllPage']
          @DbName = params['DbName']
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
          @Keyword = params['Keyword']
          @PermissionType = params['PermissionType']
        end
      end

      # DescribeDatasourceList返回参数结构体
      class DescribeDatasourceListResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Data: 列表详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.DatasourceInfoData`
        # @param Extra: 信息
        # @type Extra: String
        # @param Msg: 信息
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Data, :Extra, :Msg, :RequestId

        def initialize(errorinfo=nil, data=nil, extra=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Data = data
          @Extra = extra
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          unless params['Data'].nil?
            @Data = DatasourceInfoData.new
            @Data.deserialize(params['Data'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DescribePageWidgetList请求参数结构体
      class DescribePageWidgetListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param PageId: 页面id
        # @type PageId: String

        attr_accessor :ProjectId, :PageId

        def initialize(projectid=nil, pageid=nil)
          @ProjectId = projectid
          @PageId = pageid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageId = params['PageId']
        end
      end

      # DescribePageWidgetList返回参数结构体
      class DescribePageWidgetListResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 扩展参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Data: 返回数据结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.WidgetListVO`
        # @param Msg: 返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Data, :Msg, :RequestId

        def initialize(errorinfo=nil, extra=nil, data=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Data = data
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          unless params['Data'].nil?
            @Data = WidgetListVO.new
            @Data.deserialize(params['Data'])
          end
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProjectInfo请求参数结构体
      class DescribeProjectInfoRequest < TencentCloud::Common::AbstractModel
        # @param Id: 项目Id
        # @type Id: Integer
        # @param DefaultPanelType: 默认看板
        # @type DefaultPanelType: Integer

        attr_accessor :Id, :DefaultPanelType

        def initialize(id=nil, defaultpaneltype=nil)
          @Id = id
          @DefaultPanelType = defaultpaneltype
        end

        def deserialize(params)
          @Id = params['Id']
          @DefaultPanelType = params['DefaultPanelType']
        end
      end

      # DescribeProjectInfo返回参数结构体
      class DescribeProjectInfoResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: ""
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: ""
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Data: 项目详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.Project`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Msg, :Data, :RequestId

        def initialize(errorinfo=nil, extra=nil, msg=nil, data=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Msg = msg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          unless params['Data'].nil?
            @Data = Project.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProjectList请求参数结构体
      class DescribeProjectListRequest < TencentCloud::Common::AbstractModel
        # @param PageSize: 页容，初版默认20，将来可能根据屏幕宽度动态变化
        # @type PageSize: Integer
        # @param PageNo: 页标
        # @type PageNo: Integer
        # @param Keyword: 检索模糊字段
        # @type Keyword: String
        # @param AllPage: 是否全部展示，如果是ture，则忽略分页
        # @type AllPage: Boolean
        # @param ModuleCollection: 角色信息
        # @type ModuleCollection: String
        # @param ModuleIdList: moduleId集合
        # @type ModuleIdList: Array

        attr_accessor :PageSize, :PageNo, :Keyword, :AllPage, :ModuleCollection, :ModuleIdList

        def initialize(pagesize=nil, pageno=nil, keyword=nil, allpage=nil, modulecollection=nil, moduleidlist=nil)
          @PageSize = pagesize
          @PageNo = pageno
          @Keyword = keyword
          @AllPage = allpage
          @ModuleCollection = modulecollection
          @ModuleIdList = moduleidlist
        end

        def deserialize(params)
          @PageSize = params['PageSize']
          @PageNo = params['PageNo']
          @Keyword = params['Keyword']
          @AllPage = params['AllPage']
          @ModuleCollection = params['ModuleCollection']
          @ModuleIdList = params['ModuleIdList']
        end
      end

      # DescribeProjectList返回参数结构体
      class DescribeProjectListResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 额外信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: 接口信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.ProjectListData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Msg, :Data, :RequestId

        def initialize(errorinfo=nil, extra=nil, msg=nil, data=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Msg = msg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          unless params['Data'].nil?
            @Data = ProjectListData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserProjectList请求参数结构体
      class DescribeUserProjectListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param AllPage: 无
        # @type AllPage: Boolean
        # @param PageNo: 无
        # @type PageNo: Integer
        # @param PageSize: 无
        # @type PageSize: Integer

        attr_accessor :ProjectId, :AllPage, :PageNo, :PageSize

        def initialize(projectid=nil, allpage=nil, pageno=nil, pagesize=nil)
          @ProjectId = projectid
          @AllPage = allpage
          @PageNo = pageno
          @PageSize = pagesize
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @AllPage = params['AllPage']
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
        end
      end

      # DescribeUserProjectList返回参数结构体
      class DescribeUserProjectListResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.CorpUserListData`
        # @param Extra: 扩展
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: 消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Data, :Extra, :Msg, :RequestId

        def initialize(errorinfo=nil, data=nil, extra=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Data = data
          @Extra = extra
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          unless params['Data'].nil?
            @Data = CorpUserListData.new
            @Data.deserialize(params['Data'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserRoleList请求参数结构体
      class DescribeUserRoleListRequest < TencentCloud::Common::AbstractModel
        # @param PageNo: 页码
        # @type PageNo: Integer
        # @param PageSize: 页数
        # @type PageSize: Integer
        # @param AllPage: 全部页码
        # @type AllPage: Boolean
        # @param UserType: 0 企业用户 1 访客 不填表示所有用户
        # @type UserType: String
        # @param Keyword: 模糊搜索的关键字
        # @type Keyword: String
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param IsOnlyBindAppUser: 是否只获取绑定企微应用的
        # @type IsOnlyBindAppUser: Boolean

        attr_accessor :PageNo, :PageSize, :AllPage, :UserType, :Keyword, :ProjectId, :IsOnlyBindAppUser

        def initialize(pageno=nil, pagesize=nil, allpage=nil, usertype=nil, keyword=nil, projectid=nil, isonlybindappuser=nil)
          @PageNo = pageno
          @PageSize = pagesize
          @AllPage = allpage
          @UserType = usertype
          @Keyword = keyword
          @ProjectId = projectid
          @IsOnlyBindAppUser = isonlybindappuser
        end

        def deserialize(params)
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
          @AllPage = params['AllPage']
          @UserType = params['UserType']
          @Keyword = params['Keyword']
          @ProjectId = params['ProjectId']
          @IsOnlyBindAppUser = params['IsOnlyBindAppUser']
        end
      end

      # DescribeUserRoleList返回参数结构体
      class DescribeUserRoleListResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 扩展描述信息(提供更多异常信息,用于辅助判断)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.UserRoleListData`
        # @param Msg: 消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Data, :Msg, :RequestId

        def initialize(errorinfo=nil, extra=nil, data=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Data = data
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          unless params['Data'].nil?
            @Data = UserRoleListData.new
            @Data.deserialize(params['Data'])
          end
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserRoleProjectList请求参数结构体
      class DescribeUserRoleProjectListRequest < TencentCloud::Common::AbstractModel
        # @param PageNo: 页码
        # @type PageNo: Integer
        # @param PageSize: 页数
        # @type PageSize: Integer
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param IsOnlyBindAppUser: 是否只获取绑定企微应用的
        # @type IsOnlyBindAppUser: Boolean

        attr_accessor :PageNo, :PageSize, :ProjectId, :IsOnlyBindAppUser

        def initialize(pageno=nil, pagesize=nil, projectid=nil, isonlybindappuser=nil)
          @PageNo = pageno
          @PageSize = pagesize
          @ProjectId = projectid
          @IsOnlyBindAppUser = isonlybindappuser
        end

        def deserialize(params)
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
          @ProjectId = params['ProjectId']
          @IsOnlyBindAppUser = params['IsOnlyBindAppUser']
        end
      end

      # DescribeUserRoleProjectList返回参数结构体
      class DescribeUserRoleProjectListResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 扩展
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.UserRoleListData`
        # @param Msg: 消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Data, :Msg, :RequestId

        def initialize(errorinfo=nil, extra=nil, data=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Data = data
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          unless params['Data'].nil?
            @Data = UserRoleListData.new
            @Data.deserialize(params['Data'])
          end
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # 报表嵌出数据结构-强鉴权
      class EmbedTokenInfo < TencentCloud::Common::AbstractModel
        # @param Id: 信息标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param BIToken: 令牌
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BIToken: String
        # @param ProjectId: 项目Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param CreatedUser: 创建人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedUser: String
        # @param CreatedAt: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param UpdatedUser: 更新人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedUser: String
        # @param UpdatedAt: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String
        # @param PageId: 页面Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageId: String
        # @param ExtraParam: 备用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraParam: String
        # @param Scope: 嵌出类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Scope: String
        # @param ExpireTime: 过期时间，分钟为单位，最大240
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: Integer
        # @param UserCorpId: 使用者企业Id(仅用于多用户)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserCorpId: String
        # @param UserId: 使用者Id(仅用于多用户)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param TicketNum: 访问次数限制，限制范围1-99999，为空则不设置访问次数限制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TicketNum: Integer
        # @param GlobalParam: 全局参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GlobalParam: String
        # @param Intention: embed表示页面看板嵌出，chatBIEmbed表示ChatBI嵌出
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Intention: String
        # @param TokenType: 100 无绑定用户
        # 200 单用户单token
        # 300 单用户 多token
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TokenType: Integer
        # @param TokenNum: token 数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TokenNum: Integer
        # @param SingleUserMultiToken: 是否单用户多token
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SingleUserMultiToken: Boolean

        attr_accessor :Id, :BIToken, :ProjectId, :CreatedUser, :CreatedAt, :UpdatedUser, :UpdatedAt, :PageId, :ExtraParam, :Scope, :ExpireTime, :UserCorpId, :UserId, :TicketNum, :GlobalParam, :Intention, :TokenType, :TokenNum, :SingleUserMultiToken

        def initialize(id=nil, bitoken=nil, projectid=nil, createduser=nil, createdat=nil, updateduser=nil, updatedat=nil, pageid=nil, extraparam=nil, scope=nil, expiretime=nil, usercorpid=nil, userid=nil, ticketnum=nil, globalparam=nil, intention=nil, tokentype=nil, tokennum=nil, singleusermultitoken=nil)
          @Id = id
          @BIToken = bitoken
          @ProjectId = projectid
          @CreatedUser = createduser
          @CreatedAt = createdat
          @UpdatedUser = updateduser
          @UpdatedAt = updatedat
          @PageId = pageid
          @ExtraParam = extraparam
          @Scope = scope
          @ExpireTime = expiretime
          @UserCorpId = usercorpid
          @UserId = userid
          @TicketNum = ticketnum
          @GlobalParam = globalparam
          @Intention = intention
          @TokenType = tokentype
          @TokenNum = tokennum
          @SingleUserMultiToken = singleusermultitoken
        end

        def deserialize(params)
          @Id = params['Id']
          @BIToken = params['BIToken']
          @ProjectId = params['ProjectId']
          @CreatedUser = params['CreatedUser']
          @CreatedAt = params['CreatedAt']
          @UpdatedUser = params['UpdatedUser']
          @UpdatedAt = params['UpdatedAt']
          @PageId = params['PageId']
          @ExtraParam = params['ExtraParam']
          @Scope = params['Scope']
          @ExpireTime = params['ExpireTime']
          @UserCorpId = params['UserCorpId']
          @UserId = params['UserId']
          @TicketNum = params['TicketNum']
          @GlobalParam = params['GlobalParam']
          @Intention = params['Intention']
          @TokenType = params['TokenType']
          @TokenNum = params['TokenNum']
          @SingleUserMultiToken = params['SingleUserMultiToken']
        end
      end

      # 自定义错误信息对象
      class ErrorInfo < TencentCloud::Common::AbstractModel
        # @param ErrorTip: 错误说明字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorTip: String
        # @param ErrorMessage: 原始异常信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param ErrorLevel: 错误等级字段
        # ERROR
        # WARN
        # INFO
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorLevel: String
        # @param DocLink: 指引文档链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DocLink: String
        # @param FAQ: 快速指引说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FAQ: String
        # @param ReservedField: 预留字段1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedField: String

        attr_accessor :ErrorTip, :ErrorMessage, :ErrorLevel, :DocLink, :FAQ, :ReservedField

        def initialize(errortip=nil, errormessage=nil, errorlevel=nil, doclink=nil, faq=nil, reservedfield=nil)
          @ErrorTip = errortip
          @ErrorMessage = errormessage
          @ErrorLevel = errorlevel
          @DocLink = doclink
          @FAQ = faq
          @ReservedField = reservedfield
        end

        def deserialize(params)
          @ErrorTip = params['ErrorTip']
          @ErrorMessage = params['ErrorMessage']
          @ErrorLevel = params['ErrorLevel']
          @DocLink = params['DocLink']
          @FAQ = params['FAQ']
          @ReservedField = params['ReservedField']
        end
      end

      # ExportScreenPage请求参数结构体
      class ExportScreenPageRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param PageId: 页面id
        # @type PageId: String
        # @param CanvasType: 画布类型。栅格画布：GRID；自由画布：FREE
        # @type CanvasType: String
        # @param PicType: 图片导出类型。base64；url（有效期：1天）
        # @type PicType: String
        # @param WidgetIds: 组件Ids。为空时，导出整个页面
        # @type WidgetIds: Array
        # @param AsyncRequest: 是否是异步请求
        # @type AsyncRequest: Boolean
        # @param TranId: 事务id
        # @type TranId: String

        attr_accessor :ProjectId, :PageId, :CanvasType, :PicType, :WidgetIds, :AsyncRequest, :TranId

        def initialize(projectid=nil, pageid=nil, canvastype=nil, pictype=nil, widgetids=nil, asyncrequest=nil, tranid=nil)
          @ProjectId = projectid
          @PageId = pageid
          @CanvasType = canvastype
          @PicType = pictype
          @WidgetIds = widgetids
          @AsyncRequest = asyncrequest
          @TranId = tranid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageId = params['PageId']
          @CanvasType = params['CanvasType']
          @PicType = params['PicType']
          @WidgetIds = params['WidgetIds']
          @AsyncRequest = params['AsyncRequest']
          @TranId = params['TranId']
        end
      end

      # ExportScreenPage返回参数结构体
      class ExportScreenPageResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 扩展参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Data: 返回数据结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Bi.v20220105.models.PageScreenListVO`
        # @param Msg: 返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Data, :Msg, :RequestId

        def initialize(errorinfo=nil, extra=nil, data=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Data = data
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          unless params['Data'].nil?
            @Data = PageScreenListVO.new
            @Data.deserialize(params['Data'])
          end
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # 仅包含id的对象
      class IdDTO < TencentCloud::Common::AbstractModel
        # @param Id: 请求id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param AccessKey: key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessKey: String
        # @param ProjectId: id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: Integer
        # @param TranId: 事务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranId: String
        # @param TranStatus: 事务状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranStatus: Integer

        attr_accessor :Id, :AccessKey, :ProjectId, :TranId, :TranStatus

        def initialize(id=nil, accesskey=nil, projectid=nil, tranid=nil, transtatus=nil)
          @Id = id
          @AccessKey = accesskey
          @ProjectId = projectid
          @TranId = tranid
          @TranStatus = transtatus
        end

        def deserialize(params)
          @Id = params['Id']
          @AccessKey = params['AccessKey']
          @ProjectId = params['ProjectId']
          @TranId = params['TranId']
          @TranStatus = params['TranStatus']
        end
      end

      # ModifyDatasourceCloud请求参数结构体
      class ModifyDatasourceCloudRequest < TencentCloud::Common::AbstractModel
        # @param ServiceType: 后端提供字典：域类型，1、腾讯云，2、本地
        # @type ServiceType: String
        # @param DbType: 驱动
        # @type DbType: String
        # @param Charset: 数据库编码
        # @type Charset: String
        # @param DbUser: 用户名
        # @type DbUser: String
        # @param DbPwd: 密码
        # @type DbPwd: String
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param SourceName: 数据库别名
        # @type SourceName: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param Id: 住键
        # @type Id: Integer
        # @param Vip: 公有云内网ip
        # @type Vip: String
        # @param Vport: 公有云内网端口
        # @type Vport: String
        # @param VpcId: vpc标识
        # @type VpcId: String
        # @param UniqVpcId: 统一vpc标识
        # @type UniqVpcId: String
        # @param RegionId: 区域标识（gz,bj)
        # @type RegionId: String
        # @param ExtraParam: 扩展参数
        # @type ExtraParam: String
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param ProdDbName: 数据源产品名
        # @type ProdDbName: String
        # @param DataOrigin: 第三方数据源标识
        # @type DataOrigin: String
        # @param DataOriginProjectId: 第三方项目id
        # @type DataOriginProjectId: String
        # @param DataOriginDatasourceId: 第三方数据源id
        # @type DataOriginDatasourceId: String
        # @param ClusterId: 集群id
        # @type ClusterId: String

        attr_accessor :ServiceType, :DbType, :Charset, :DbUser, :DbPwd, :DbName, :SourceName, :ProjectId, :Id, :Vip, :Vport, :VpcId, :UniqVpcId, :RegionId, :ExtraParam, :InstanceId, :ProdDbName, :DataOrigin, :DataOriginProjectId, :DataOriginDatasourceId, :ClusterId

        def initialize(servicetype=nil, dbtype=nil, charset=nil, dbuser=nil, dbpwd=nil, dbname=nil, sourcename=nil, projectid=nil, id=nil, vip=nil, vport=nil, vpcid=nil, uniqvpcid=nil, regionid=nil, extraparam=nil, instanceid=nil, proddbname=nil, dataorigin=nil, dataoriginprojectid=nil, dataorigindatasourceid=nil, clusterid=nil)
          @ServiceType = servicetype
          @DbType = dbtype
          @Charset = charset
          @DbUser = dbuser
          @DbPwd = dbpwd
          @DbName = dbname
          @SourceName = sourcename
          @ProjectId = projectid
          @Id = id
          @Vip = vip
          @Vport = vport
          @VpcId = vpcid
          @UniqVpcId = uniqvpcid
          @RegionId = regionid
          @ExtraParam = extraparam
          @InstanceId = instanceid
          @ProdDbName = proddbname
          @DataOrigin = dataorigin
          @DataOriginProjectId = dataoriginprojectid
          @DataOriginDatasourceId = dataorigindatasourceid
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ServiceType = params['ServiceType']
          @DbType = params['DbType']
          @Charset = params['Charset']
          @DbUser = params['DbUser']
          @DbPwd = params['DbPwd']
          @DbName = params['DbName']
          @SourceName = params['SourceName']
          @ProjectId = params['ProjectId']
          @Id = params['Id']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @VpcId = params['VpcId']
          @UniqVpcId = params['UniqVpcId']
          @RegionId = params['RegionId']
          @ExtraParam = params['ExtraParam']
          @InstanceId = params['InstanceId']
          @ProdDbName = params['ProdDbName']
          @DataOrigin = params['DataOrigin']
          @DataOriginProjectId = params['DataOriginProjectId']
          @DataOriginDatasourceId = params['DataOriginDatasourceId']
          @ClusterId = params['ClusterId']
        end
      end

      # ModifyDatasourceCloud返回参数结构体
      class ModifyDatasourceCloudResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Data: 成功无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param Extra: 额外信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: 提示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Data, :Extra, :Msg, :RequestId

        def initialize(errorinfo=nil, data=nil, extra=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Data = data
          @Extra = extra
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Data = params['Data']
          @Extra = params['Extra']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDatasource请求参数结构体
      class ModifyDatasourceRequest < TencentCloud::Common::AbstractModel
        # @param DbHost: HOST
        # @type DbHost: String
        # @param DbPort: 端口
        # @type DbPort: Integer
        # @param ServiceType: 后端提供字典：域类型，1、腾讯云，2、本地
        # @type ServiceType: String
        # @param DbType: 驱动
        # @type DbType: String
        # @param Charset: 数据库编码
        # @type Charset: String
        # @param DbUser: 用户名
        # @type DbUser: String
        # @param DbPwd: 密码
        # @type DbPwd: String
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param SourceName: 数据库别名
        # @type SourceName: String
        # @param Id: 数据源id
        # @type Id: Integer
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param Catalog: catalog值
        # @type Catalog: String
        # @param DataOrigin: 第三方数据源标识
        # @type DataOrigin: String
        # @param DataOriginProjectId: 第三方项目id
        # @type DataOriginProjectId: String
        # @param DataOriginDatasourceId: 第三方数据源id
        # @type DataOriginDatasourceId: String
        # @param ExtraParam: 扩展参数
        # @type ExtraParam: String
        # @param UniqVpcId: 腾讯云私有网络统一标识
        # @type UniqVpcId: String
        # @param Vip: 私有网络ip
        # @type Vip: String
        # @param Vport: 私有网络端口
        # @type Vport: String
        # @param VpcId: 腾讯云私有网络标识
        # @type VpcId: String
        # @param UseVPC: 开启vpc
        # @type UseVPC: Boolean
        # @param RegionId: 地域
        # @type RegionId: String

        attr_accessor :DbHost, :DbPort, :ServiceType, :DbType, :Charset, :DbUser, :DbPwd, :DbName, :SourceName, :Id, :ProjectId, :Catalog, :DataOrigin, :DataOriginProjectId, :DataOriginDatasourceId, :ExtraParam, :UniqVpcId, :Vip, :Vport, :VpcId, :UseVPC, :RegionId

        def initialize(dbhost=nil, dbport=nil, servicetype=nil, dbtype=nil, charset=nil, dbuser=nil, dbpwd=nil, dbname=nil, sourcename=nil, id=nil, projectid=nil, catalog=nil, dataorigin=nil, dataoriginprojectid=nil, dataorigindatasourceid=nil, extraparam=nil, uniqvpcid=nil, vip=nil, vport=nil, vpcid=nil, usevpc=nil, regionid=nil)
          @DbHost = dbhost
          @DbPort = dbport
          @ServiceType = servicetype
          @DbType = dbtype
          @Charset = charset
          @DbUser = dbuser
          @DbPwd = dbpwd
          @DbName = dbname
          @SourceName = sourcename
          @Id = id
          @ProjectId = projectid
          @Catalog = catalog
          @DataOrigin = dataorigin
          @DataOriginProjectId = dataoriginprojectid
          @DataOriginDatasourceId = dataorigindatasourceid
          @ExtraParam = extraparam
          @UniqVpcId = uniqvpcid
          @Vip = vip
          @Vport = vport
          @VpcId = vpcid
          @UseVPC = usevpc
          @RegionId = regionid
        end

        def deserialize(params)
          @DbHost = params['DbHost']
          @DbPort = params['DbPort']
          @ServiceType = params['ServiceType']
          @DbType = params['DbType']
          @Charset = params['Charset']
          @DbUser = params['DbUser']
          @DbPwd = params['DbPwd']
          @DbName = params['DbName']
          @SourceName = params['SourceName']
          @Id = params['Id']
          @ProjectId = params['ProjectId']
          @Catalog = params['Catalog']
          @DataOrigin = params['DataOrigin']
          @DataOriginProjectId = params['DataOriginProjectId']
          @DataOriginDatasourceId = params['DataOriginDatasourceId']
          @ExtraParam = params['ExtraParam']
          @UniqVpcId = params['UniqVpcId']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @VpcId = params['VpcId']
          @UseVPC = params['UseVPC']
          @RegionId = params['RegionId']
        end
      end

      # ModifyDatasource返回参数结构体
      class ModifyDatasourceResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Data: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param Extra: 额外信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: 提示
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Data, :Extra, :Msg, :RequestId

        def initialize(errorinfo=nil, data=nil, extra=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Data = data
          @Extra = extra
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Data = params['Data']
          @Extra = params['Extra']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # ModifyProject请求参数结构体
      class ModifyProjectRequest < TencentCloud::Common::AbstractModel
        # @param Id: 项目Id
        # @type Id: Integer
        # @param Name: 名字
        # @type Name: String
        # @param ColorCode: 颜色值
        # @type ColorCode: String
        # @param Logo: 图标
        # @type Logo: String
        # @param Mark: 备注
        # @type Mark: String
        # @param IsApply: 可申请
        # @type IsApply: Boolean
        # @param Seed: 种子
        # @type Seed: String
        # @param DefaultPanelType: 默认看板
        # @type DefaultPanelType: Integer
        # @param PanelScope: 2
        # @type PanelScope: String
        # @param ManagePlatform: 项目管理平台
        # @type ManagePlatform: String

        attr_accessor :Id, :Name, :ColorCode, :Logo, :Mark, :IsApply, :Seed, :DefaultPanelType, :PanelScope, :ManagePlatform

        def initialize(id=nil, name=nil, colorcode=nil, logo=nil, mark=nil, isapply=nil, seed=nil, defaultpaneltype=nil, panelscope=nil, manageplatform=nil)
          @Id = id
          @Name = name
          @ColorCode = colorcode
          @Logo = logo
          @Mark = mark
          @IsApply = isapply
          @Seed = seed
          @DefaultPanelType = defaultpaneltype
          @PanelScope = panelscope
          @ManagePlatform = manageplatform
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @ColorCode = params['ColorCode']
          @Logo = params['Logo']
          @Mark = params['Mark']
          @IsApply = params['IsApply']
          @Seed = params['Seed']
          @DefaultPanelType = params['DefaultPanelType']
          @PanelScope = params['PanelScope']
          @ManagePlatform = params['ManagePlatform']
        end
      end

      # ModifyProject返回参数结构体
      class ModifyProjectResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 额外信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Data: 返回数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param Msg: 结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Data, :Msg, :RequestId

        def initialize(errorinfo=nil, extra=nil, data=nil, msg=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Data = data
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Data = params['Data']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # ModifyUserRoleProject请求参数结构体
      class ModifyUserRoleProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param UserId: 用户ID
        # @type UserId: String
        # @param RoleIdList: 角色ID 列表
        # @type RoleIdList: Array
        # @param Email: 邮箱
        # @type Email: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param AppUserId: 企业微信应用用户id
        # @type AppUserId: String

        attr_accessor :ProjectId, :UserId, :RoleIdList, :Email, :UserName, :AppUserId

        def initialize(projectid=nil, userid=nil, roleidlist=nil, email=nil, username=nil, appuserid=nil)
          @ProjectId = projectid
          @UserId = userid
          @RoleIdList = roleidlist
          @Email = email
          @UserName = username
          @AppUserId = appuserid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @UserId = params['UserId']
          @RoleIdList = params['RoleIdList']
          @Email = params['Email']
          @UserName = params['UserName']
          @AppUserId = params['AppUserId']
        end
      end

      # ModifyUserRoleProject返回参数结构体
      class ModifyUserRoleProjectResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 扩展
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: 消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Msg, :Data, :RequestId

        def initialize(errorinfo=nil, extra=nil, msg=nil, data=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Msg = msg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # ModifyUserRole请求参数结构体
      class ModifyUserRoleRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID
        # @type UserId: String
        # @param RoleIdList: 角色ID 列表
        # @type RoleIdList: Array
        # @param Email: 邮箱
        # @type Email: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param PhoneNumber: 手机号
        # @type PhoneNumber: String
        # @param AreaCode: 手机区号
        # @type AreaCode: String
        # @param AppUserId: 企业微信应用用户id
        # @type AppUserId: String
        # @param LoginSecurityStatus: 是否开启手机验证码登录（0 关闭，1 开启）
        # @type LoginSecurityStatus: Integer
        # @param ResetPassWordTip: 是否开启密码过期提醒（0 关闭，1 开启
        # @type ResetPassWordTip: Integer
        # @param ForceResetPassWord: 强制修改密码（0 关闭，1 开启）
        # @type ForceResetPassWord: Integer
        # @param PasswordExpired: 密码过期提醒时间，30、60、90（默认）、180天
        # @type PasswordExpired: Integer

        attr_accessor :UserId, :RoleIdList, :Email, :UserName, :PhoneNumber, :AreaCode, :AppUserId, :LoginSecurityStatus, :ResetPassWordTip, :ForceResetPassWord, :PasswordExpired

        def initialize(userid=nil, roleidlist=nil, email=nil, username=nil, phonenumber=nil, areacode=nil, appuserid=nil, loginsecuritystatus=nil, resetpasswordtip=nil, forceresetpassword=nil, passwordexpired=nil)
          @UserId = userid
          @RoleIdList = roleidlist
          @Email = email
          @UserName = username
          @PhoneNumber = phonenumber
          @AreaCode = areacode
          @AppUserId = appuserid
          @LoginSecurityStatus = loginsecuritystatus
          @ResetPassWordTip = resetpasswordtip
          @ForceResetPassWord = forceresetpassword
          @PasswordExpired = passwordexpired
        end

        def deserialize(params)
          @UserId = params['UserId']
          @RoleIdList = params['RoleIdList']
          @Email = params['Email']
          @UserName = params['UserName']
          @PhoneNumber = params['PhoneNumber']
          @AreaCode = params['AreaCode']
          @AppUserId = params['AppUserId']
          @LoginSecurityStatus = params['LoginSecurityStatus']
          @ResetPassWordTip = params['ResetPassWordTip']
          @ForceResetPassWord = params['ForceResetPassWord']
          @PasswordExpired = params['PasswordExpired']
        end
      end

      # ModifyUserRole返回参数结构体
      class ModifyUserRoleResponse < TencentCloud::Common::AbstractModel
        # @param ErrorInfo: 自定义错误信息对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorInfo: :class:`Tencentcloud::Bi.v20220105.models.ErrorInfo`
        # @param Extra: 扩展
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param Msg: 消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorInfo, :Extra, :Msg, :Data, :RequestId

        def initialize(errorinfo=nil, extra=nil, msg=nil, data=nil, requestid=nil)
          @ErrorInfo = errorinfo
          @Extra = extra
          @Msg = msg
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorInfo'].nil?
            @ErrorInfo = ErrorInfo.new
            @ErrorInfo.deserialize(params['ErrorInfo'])
          end
          @Extra = params['Extra']
          @Msg = params['Msg']
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # 页面截图列表
      class PageScreenListVO < TencentCloud::Common::AbstractModel
        # @param PicType: 图片导出类型。base64；url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PicType: String
        # @param List: 图片列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param TranId: 异步事务id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranId: String
        # @param TranStatus: 事务状态
        # 1: 处理中; 2: 处理成功; 3 处理失败(错误内容见外层Msg)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranStatus: Integer

        attr_accessor :PicType, :List, :TranId, :TranStatus

        def initialize(pictype=nil, list=nil, tranid=nil, transtatus=nil)
          @PicType = pictype
          @List = list
          @TranId = tranid
          @TranStatus = transtatus
        end

        def deserialize(params)
          @PicType = params['PicType']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              pagescreenvo_tmp = PageScreenVO.new
              pagescreenvo_tmp.deserialize(i)
              @List << pagescreenvo_tmp
            end
          end
          @TranId = params['TranId']
          @TranStatus = params['TranStatus']
        end
      end

      # 页面截图信息
      class PageScreenVO < TencentCloud::Common::AbstractModel
        # @param Content: 截图base64或 url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String
        # @param WidgetId: 组件Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WidgetId: String

        attr_accessor :Content, :WidgetId

        def initialize(content=nil, widgetid=nil)
          @Content = content
          @WidgetId = widgetid
        end

        def deserialize(params)
          @Content = params['Content']
          @WidgetId = params['WidgetId']
        end
      end

      # 商业版本权限单元
      class PermissionComponent < TencentCloud::Common::AbstractModel
        # @param ModuleId: 权限值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModuleId: String
        # @param IncludeType: 可见/可用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncludeType: String
        # @param UpgradeVersionType: 目标升级版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpgradeVersionType: String
        # @param Tips: 补充信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tips: String
        # @param TipsKey: 补充信息的key值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TipsKey: String

        attr_accessor :ModuleId, :IncludeType, :UpgradeVersionType, :Tips, :TipsKey

        def initialize(moduleid=nil, includetype=nil, upgradeversiontype=nil, tips=nil, tipskey=nil)
          @ModuleId = moduleid
          @IncludeType = includetype
          @UpgradeVersionType = upgradeversiontype
          @Tips = tips
          @TipsKey = tipskey
        end

        def deserialize(params)
          @ModuleId = params['ModuleId']
          @IncludeType = params['IncludeType']
          @UpgradeVersionType = params['UpgradeVersionType']
          @Tips = params['Tips']
          @TipsKey = params['TipsKey']
        end
      end

      # 商业化版本权限分组
      class PermissionGroup < TencentCloud::Common::AbstractModel
        # @param ModuleGroup: 分组名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModuleGroup: String
        # @param Components: 权限列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Components: Array

        attr_accessor :ModuleGroup, :Components

        def initialize(modulegroup=nil, components=nil)
          @ModuleGroup = modulegroup
          @Components = components
        end

        def deserialize(params)
          @ModuleGroup = params['ModuleGroup']
          unless params['Components'].nil?
            @Components = []
            params['Components'].each do |i|
              permissioncomponent_tmp = PermissionComponent.new
              permissioncomponent_tmp.deserialize(i)
              @Components << permissioncomponent_tmp
            end
          end
        end
      end

      # 项目信息描述
      class Project < TencentCloud::Common::AbstractModel
        # @param Id: 项目ID
        # @type Id: Integer
        # @param Logo: 项目Logo
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Logo: String
        # @param Name: 项目名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param ColorCode: logo底色
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColorCode: String
        # @param CreatedUser: 创建人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedUser: String
        # @param CreatedAt: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param MemberCount: 成员个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberCount: Integer
        # @param PageCount: 页面个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageCount: Integer
        # @param LastModifyName: 最后修改报表、简报名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastModifyName: String
        # @param Source: ""
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: String
        # @param Apply: ""
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Apply: Boolean
        # @param UpdatedUser: ""
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedUser: String
        # @param UpdatedAt: ""
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String
        # @param CorpId: ""
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CorpId: String
        # @param Mark: ""
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mark: String
        # @param Seed: ""
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Seed: String
        # @param AuthList: 项目内权限列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthList: Array
        # @param PanelScope: 默认看板
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PanelScope: String
        # @param IsExternalManage: 是否被托管
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsExternalManage: Boolean
        # @param ManagePlatform: 托管平台名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ManagePlatform: String
        # @param ConfigList: 定制化参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigList: Array

        attr_accessor :Id, :Logo, :Name, :ColorCode, :CreatedUser, :CreatedAt, :MemberCount, :PageCount, :LastModifyName, :Source, :Apply, :UpdatedUser, :UpdatedAt, :CorpId, :Mark, :Seed, :AuthList, :PanelScope, :IsExternalManage, :ManagePlatform, :ConfigList

        def initialize(id=nil, logo=nil, name=nil, colorcode=nil, createduser=nil, createdat=nil, membercount=nil, pagecount=nil, lastmodifyname=nil, source=nil, apply=nil, updateduser=nil, updatedat=nil, corpid=nil, mark=nil, seed=nil, authlist=nil, panelscope=nil, isexternalmanage=nil, manageplatform=nil, configlist=nil)
          @Id = id
          @Logo = logo
          @Name = name
          @ColorCode = colorcode
          @CreatedUser = createduser
          @CreatedAt = createdat
          @MemberCount = membercount
          @PageCount = pagecount
          @LastModifyName = lastmodifyname
          @Source = source
          @Apply = apply
          @UpdatedUser = updateduser
          @UpdatedAt = updatedat
          @CorpId = corpid
          @Mark = mark
          @Seed = seed
          @AuthList = authlist
          @PanelScope = panelscope
          @IsExternalManage = isexternalmanage
          @ManagePlatform = manageplatform
          @ConfigList = configlist
        end

        def deserialize(params)
          @Id = params['Id']
          @Logo = params['Logo']
          @Name = params['Name']
          @ColorCode = params['ColorCode']
          @CreatedUser = params['CreatedUser']
          @CreatedAt = params['CreatedAt']
          @MemberCount = params['MemberCount']
          @PageCount = params['PageCount']
          @LastModifyName = params['LastModifyName']
          @Source = params['Source']
          @Apply = params['Apply']
          @UpdatedUser = params['UpdatedUser']
          @UpdatedAt = params['UpdatedAt']
          @CorpId = params['CorpId']
          @Mark = params['Mark']
          @Seed = params['Seed']
          @AuthList = params['AuthList']
          @PanelScope = params['PanelScope']
          @IsExternalManage = params['IsExternalManage']
          @ManagePlatform = params['ManagePlatform']
          unless params['ConfigList'].nil?
            @ConfigList = []
            params['ConfigList'].each do |i|
              projectconfiglist_tmp = ProjectConfigList.new
              projectconfiglist_tmp.deserialize(i)
              @ConfigList << projectconfiglist_tmp
            end
          end
        end
      end

      # 定制化查询
      class ProjectConfigList < TencentCloud::Common::AbstractModel
        # @param ModuleGroup: 模块组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModuleGroup: String
        # @param Components: 内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Components: Array

        attr_accessor :ModuleGroup, :Components

        def initialize(modulegroup=nil, components=nil)
          @ModuleGroup = modulegroup
          @Components = components
        end

        def deserialize(params)
          @ModuleGroup = params['ModuleGroup']
          unless params['Components'].nil?
            @Components = []
            params['Components'].each do |i|
              projectconfigresult_tmp = ProjectConfigResult.new
              projectconfigresult_tmp.deserialize(i)
              @Components << projectconfigresult_tmp
            end
          end
        end
      end

      # 定制化查询
      class ProjectConfigResult < TencentCloud::Common::AbstractModel
        # @param ModuleId: 配置名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModuleId: String
        # @param IncludeType: 配置方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncludeType: String
        # @param Params: 额外参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Params: String

        attr_accessor :ModuleId, :IncludeType, :Params

        def initialize(moduleid=nil, includetype=nil, params=nil)
          @ModuleId = moduleid
          @IncludeType = includetype
          @Params = params
        end

        def deserialize(params)
          @ModuleId = params['ModuleId']
          @IncludeType = params['IncludeType']
          @Params = params['Params']
        end
      end

      # 项目列表数据
      class ProjectListData < TencentCloud::Common::AbstractModel
        # @param List: 数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param TotalPages: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPages: Integer

        attr_accessor :List, :Total, :TotalPages

        def initialize(list=nil, total=nil, totalpages=nil)
          @List = list
          @Total = total
          @TotalPages = totalpages
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              project_tmp = Project.new
              project_tmp.deserialize(i)
              @List << project_tmp
            end
          end
          @Total = params['Total']
          @TotalPages = params['TotalPages']
        end
      end

      # 用户ID和用户名
      class UserIdAndUserName < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID
        # @type UserId: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param CorpId: 企业ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CorpId: String
        # @param Email: 电子邮箱
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Email: String
        # @param LastLogin: 最后一次登录时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastLogin: String
        # @param Status: 停启用状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param FirstModify: 首次登陆是否修改密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstModify: Integer
        # @param PhoneNumber: 手机号码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneNumber: String
        # @param AreaCode: 手机区号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AreaCode: String
        # @param CreatedUser: 创建人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedUser: String
        # @param CreatedAt: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param UpdatedUser: 更改人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedUser: String
        # @param UpdatedAt: 更改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String
        # @param GlobalUserName: 全局角色
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GlobalUserName: String
        # @param Mobile: 手机号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mobile: String
        # @param AppId: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String
        # @param AppUserId: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppUserId: String
        # @param AppUserAliasName: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppUserAliasName: String
        # @param AppUserName: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppUserName: String
        # @param InValidateAppRange: 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InValidateAppRange: Boolean

        attr_accessor :UserId, :UserName, :CorpId, :Email, :LastLogin, :Status, :FirstModify, :PhoneNumber, :AreaCode, :CreatedUser, :CreatedAt, :UpdatedUser, :UpdatedAt, :GlobalUserName, :Mobile, :AppId, :AppUserId, :AppUserAliasName, :AppUserName, :InValidateAppRange

        def initialize(userid=nil, username=nil, corpid=nil, email=nil, lastlogin=nil, status=nil, firstmodify=nil, phonenumber=nil, areacode=nil, createduser=nil, createdat=nil, updateduser=nil, updatedat=nil, globalusername=nil, mobile=nil, appid=nil, appuserid=nil, appuseraliasname=nil, appusername=nil, invalidateapprange=nil)
          @UserId = userid
          @UserName = username
          @CorpId = corpid
          @Email = email
          @LastLogin = lastlogin
          @Status = status
          @FirstModify = firstmodify
          @PhoneNumber = phonenumber
          @AreaCode = areacode
          @CreatedUser = createduser
          @CreatedAt = createdat
          @UpdatedUser = updateduser
          @UpdatedAt = updatedat
          @GlobalUserName = globalusername
          @Mobile = mobile
          @AppId = appid
          @AppUserId = appuserid
          @AppUserAliasName = appuseraliasname
          @AppUserName = appusername
          @InValidateAppRange = invalidateapprange
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserName = params['UserName']
          @CorpId = params['CorpId']
          @Email = params['Email']
          @LastLogin = params['LastLogin']
          @Status = params['Status']
          @FirstModify = params['FirstModify']
          @PhoneNumber = params['PhoneNumber']
          @AreaCode = params['AreaCode']
          @CreatedUser = params['CreatedUser']
          @CreatedAt = params['CreatedAt']
          @UpdatedUser = params['UpdatedUser']
          @UpdatedAt = params['UpdatedAt']
          @GlobalUserName = params['GlobalUserName']
          @Mobile = params['Mobile']
          @AppId = params['AppId']
          @AppUserId = params['AppUserId']
          @AppUserAliasName = params['AppUserAliasName']
          @AppUserName = params['AppUserName']
          @InValidateAppRange = params['InValidateAppRange']
        end
      end

      # 用户ID和用户名
      class UserInfo < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID
        # @type UserId: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param Email: 邮箱
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Email: String
        # @param PhoneNumber: 手机号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneNumber: String
        # @param AreaCode: 手机号区号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AreaCode: String
        # @param AppUserId: 企微账号id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppUserId: String
        # @param AppUserName: 企微账号名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppUserName: String

        attr_accessor :UserId, :UserName, :Email, :PhoneNumber, :AreaCode, :AppUserId, :AppUserName

        def initialize(userid=nil, username=nil, email=nil, phonenumber=nil, areacode=nil, appuserid=nil, appusername=nil)
          @UserId = userid
          @UserName = username
          @Email = email
          @PhoneNumber = phonenumber
          @AreaCode = areacode
          @AppUserId = appuserid
          @AppUserName = appusername
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserName = params['UserName']
          @Email = params['Email']
          @PhoneNumber = params['PhoneNumber']
          @AreaCode = params['AreaCode']
          @AppUserId = params['AppUserId']
          @AppUserName = params['AppUserName']
        end
      end

      # 用户角色信息
      class UserRoleListData < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param TotalPages: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPages: Integer
        # @param List: 列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array

        attr_accessor :Total, :TotalPages, :List

        def initialize(total=nil, totalpages=nil, list=nil)
          @Total = total
          @TotalPages = totalpages
          @List = list
        end

        def deserialize(params)
          @Total = params['Total']
          @TotalPages = params['TotalPages']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              userrolelistdatauserroleinfo_tmp = UserRoleListDataUserRoleInfo.new
              userrolelistdatauserroleinfo_tmp.deserialize(i)
              @List << userrolelistdatauserroleinfo_tmp
            end
          end
        end
      end

      # 用户角色列表角色信息
      class UserRoleListDataRoleInfo < TencentCloud::Common::AbstractModel
        # @param RoleName: 角色名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleName: String
        # @param RoleId: 角色ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleId: Integer
        # @param ProjectId: 项目ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: Integer
        # @param ProjectName: 项目名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param ScopeType: 是否为全局角色（0 不是 1 是）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScopeType: Integer
        # @param ModuleCollection: 角色key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModuleCollection: String

        attr_accessor :RoleName, :RoleId, :ProjectId, :ProjectName, :ScopeType, :ModuleCollection

        def initialize(rolename=nil, roleid=nil, projectid=nil, projectname=nil, scopetype=nil, modulecollection=nil)
          @RoleName = rolename
          @RoleId = roleid
          @ProjectId = projectid
          @ProjectName = projectname
          @ScopeType = scopetype
          @ModuleCollection = modulecollection
        end

        def deserialize(params)
          @RoleName = params['RoleName']
          @RoleId = params['RoleId']
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @ScopeType = params['ScopeType']
          @ModuleCollection = params['ModuleCollection']
        end
      end

      # 用户角色信息
      class UserRoleListDataUserRoleInfo < TencentCloud::Common::AbstractModel
        # @param Id: 业务ID
        # @type Id: Integer
        # @param RoleList: 角色列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleList: Array
        # @param RoleIdList: 角色ID列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleIdList: Array
        # @param UserId: 用户ID
        # @type UserId: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param CorpId: 企业ID
        # @type CorpId: String
        # @param Email: 邮箱
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Email: String
        # @param CreatedUser: 创建人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedUser: String
        # @param CreatedAt: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param UpdatedUser: 更新人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedUser: String
        # @param UpdatedAt: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String
        # @param LastLogin: 最后一次登录时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastLogin: String
        # @param Status: 账号状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param PhoneNumber: 手机号码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneNumber: String
        # @param AreaCode: 手机号区号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AreaCode: String
        # @param RootAccount: 是否为主账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RootAccount: Boolean
        # @param CorpAdmin: 是否为企业管理员
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CorpAdmin: Boolean
        # @param AppUserId: 企微用户id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppUserId: String
        # @param AppUserAliasName: 昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppUserAliasName: String
        # @param AppUserName: 应用用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppUserName: String
        # @param InValidateAppRange: 是否在可见范围内
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InValidateAppRange: Boolean
        # @param AppOpenUserId: 用户openid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppOpenUserId: String

        attr_accessor :Id, :RoleList, :RoleIdList, :UserId, :UserName, :CorpId, :Email, :CreatedUser, :CreatedAt, :UpdatedUser, :UpdatedAt, :LastLogin, :Status, :PhoneNumber, :AreaCode, :RootAccount, :CorpAdmin, :AppUserId, :AppUserAliasName, :AppUserName, :InValidateAppRange, :AppOpenUserId

        def initialize(id=nil, rolelist=nil, roleidlist=nil, userid=nil, username=nil, corpid=nil, email=nil, createduser=nil, createdat=nil, updateduser=nil, updatedat=nil, lastlogin=nil, status=nil, phonenumber=nil, areacode=nil, rootaccount=nil, corpadmin=nil, appuserid=nil, appuseraliasname=nil, appusername=nil, invalidateapprange=nil, appopenuserid=nil)
          @Id = id
          @RoleList = rolelist
          @RoleIdList = roleidlist
          @UserId = userid
          @UserName = username
          @CorpId = corpid
          @Email = email
          @CreatedUser = createduser
          @CreatedAt = createdat
          @UpdatedUser = updateduser
          @UpdatedAt = updatedat
          @LastLogin = lastlogin
          @Status = status
          @PhoneNumber = phonenumber
          @AreaCode = areacode
          @RootAccount = rootaccount
          @CorpAdmin = corpadmin
          @AppUserId = appuserid
          @AppUserAliasName = appuseraliasname
          @AppUserName = appusername
          @InValidateAppRange = invalidateapprange
          @AppOpenUserId = appopenuserid
        end

        def deserialize(params)
          @Id = params['Id']
          unless params['RoleList'].nil?
            @RoleList = []
            params['RoleList'].each do |i|
              userrolelistdataroleinfo_tmp = UserRoleListDataRoleInfo.new
              userrolelistdataroleinfo_tmp.deserialize(i)
              @RoleList << userrolelistdataroleinfo_tmp
            end
          end
          @RoleIdList = params['RoleIdList']
          @UserId = params['UserId']
          @UserName = params['UserName']
          @CorpId = params['CorpId']
          @Email = params['Email']
          @CreatedUser = params['CreatedUser']
          @CreatedAt = params['CreatedAt']
          @UpdatedUser = params['UpdatedUser']
          @UpdatedAt = params['UpdatedAt']
          @LastLogin = params['LastLogin']
          @Status = params['Status']
          @PhoneNumber = params['PhoneNumber']
          @AreaCode = params['AreaCode']
          @RootAccount = params['RootAccount']
          @CorpAdmin = params['CorpAdmin']
          @AppUserId = params['AppUserId']
          @AppUserAliasName = params['AppUserAliasName']
          @AppUserName = params['AppUserName']
          @InValidateAppRange = params['InValidateAppRange']
          @AppOpenUserId = params['AppOpenUserId']
        end
      end

      # 页面组件信息
      class WidgetListVO < TencentCloud::Common::AbstractModel
        # @param CorpId: uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CorpId: String
        # @param ProjectId: 项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param PageId: 页面id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageId: String
        # @param WidgetList: 组件数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WidgetList: Array

        attr_accessor :CorpId, :ProjectId, :PageId, :WidgetList

        def initialize(corpid=nil, projectid=nil, pageid=nil, widgetlist=nil)
          @CorpId = corpid
          @ProjectId = projectid
          @PageId = pageid
          @WidgetList = widgetlist
        end

        def deserialize(params)
          @CorpId = params['CorpId']
          @ProjectId = params['ProjectId']
          @PageId = params['PageId']
          unless params['WidgetList'].nil?
            @WidgetList = []
            params['WidgetList'].each do |i|
              widgetvo_tmp = WidgetVO.new
              widgetvo_tmp.deserialize(i)
              @WidgetList << widgetvo_tmp
            end
          end
        end
      end

      # 组件信息
      class WidgetVO < TencentCloud::Common::AbstractModel
        # @param WidgetId: 组件Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WidgetId: String
        # @param WidgetName: 组件name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WidgetName: String

        attr_accessor :WidgetId, :WidgetName

        def initialize(widgetid=nil, widgetname=nil)
          @WidgetId = widgetid
          @WidgetName = widgetname
        end

        def deserialize(params)
          @WidgetId = params['WidgetId']
          @WidgetName = params['WidgetName']
        end
      end

    end
  end
end

