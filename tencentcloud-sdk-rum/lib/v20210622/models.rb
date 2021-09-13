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
  module Rum
    module V20210622
      # CreateProject请求参数结构体
      class CreateProjectRequest < TencentCloud::Common::AbstractModel
        # @param Name: 创建的项目名(不为空且最长为 200)
        # @type Name: String
        # @param InstanceID: 项目对应实例 id
        # @type InstanceID: String
        # @param Rate: 项目抽样率(大于等于 0)
        # @type Rate: String
        # @param EnableURLGroup: 是否开启聚类
        # @type EnableURLGroup: Integer
        # @param Type: 项目类型("web", "mp", "android", "ios", "node", "hippy", "weex", "viola", "rn")
        # @type Type: String
        # @param Repo: 项目对应仓库地址(可选，最长为 256)
        # @type Repo: String
        # @param URL: 项目对应网页地址(可选，最长为 256)
        # @type URL: String
        # @param Desc: 创建的项目描述(可选，最长为 1000)
        # @type Desc: String

        attr_accessor :Name, :InstanceID, :Rate, :EnableURLGroup, :Type, :Repo, :URL, :Desc
        
        def initialize(name=nil, instanceid=nil, rate=nil, enableurlgroup=nil, type=nil, repo=nil, url=nil, desc=nil)
          @Name = name
          @InstanceID = instanceid
          @Rate = rate
          @EnableURLGroup = enableurlgroup
          @Type = type
          @Repo = repo
          @URL = url
          @Desc = desc
        end

        def deserialize(params)
          @Name = params['Name']
          @InstanceID = params['InstanceID']
          @Rate = params['Rate']
          @EnableURLGroup = params['EnableURLGroup']
          @Type = params['Type']
          @Repo = params['Repo']
          @URL = params['URL']
          @Desc = params['Desc']
        end
      end

      # CreateProject返回参数结构体
      class CreateProjectResponse < TencentCloud::Common::AbstractModel
        # @param ID: 项目 id
        # @type ID: Integer
        # @param Key: 项目唯一key
        # @type Key: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ID, :Key, :RequestId
        
        def initialize(id=nil, key=nil, requestid=nil)
          @ID = id
          @Key = key
          @RequestId = requestid
        end

        def deserialize(params)
          @ID = params['ID']
          @Key = params['Key']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataLogUrlStatistics请求参数结构体
      class DescribeDataLogUrlStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: "analysis", "compare", "samp", "version", "ext3","nettype", "platform","isp","region","device","browser","ext1","ext2"
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 是否海外
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser
        
        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
        end
      end

      # DescribeDataLogUrlStatistics返回参数结构体
      class DescribeDataLogUrlStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataPerformancePage请求参数结构体
      class DescribeDataPerformancePageRequest < TencentCloud::Common::AbstractModel
        # @param ID: 项目ID
        # @type ID: Integer
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param Type: ["pagepv", "allcount"]
        # @type Type: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param Area: 地区
        # @type Area: String
        # @param NetType: 网络类型
        # @type NetType: String
        # @param Platform: 平台
        # @type Platform: String
        # @param Device: 机型
        # @type Device: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param IsAbroad: 是否海外
        # @type IsAbroad: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param From: 来源页面
        # @type From: String
        # @param CostType: 耗时计算方式
        # @type CostType: String

        attr_accessor :ID, :StartTime, :EndTime, :Type, :Level, :Isp, :Area, :NetType, :Platform, :Device, :VersionNum, :ExtFirst, :ExtSecond, :ExtThird, :IsAbroad, :Browser, :Os, :Engine, :Brand, :From, :CostType
        
        def initialize(id=nil, starttime=nil, endtime=nil, type=nil, level=nil, isp=nil, area=nil, nettype=nil, platform=nil, device=nil, versionnum=nil, extfirst=nil, extsecond=nil, extthird=nil, isabroad=nil, browser=nil, os=nil, engine=nil, brand=nil, from=nil, costtype=nil)
          @ID = id
          @StartTime = starttime
          @EndTime = endtime
          @Type = type
          @Level = level
          @Isp = isp
          @Area = area
          @NetType = nettype
          @Platform = platform
          @Device = device
          @VersionNum = versionnum
          @ExtFirst = extfirst
          @ExtSecond = extsecond
          @ExtThird = extthird
          @IsAbroad = isabroad
          @Browser = browser
          @Os = os
          @Engine = engine
          @Brand = brand
          @From = from
          @CostType = costtype
        end

        def deserialize(params)
          @ID = params['ID']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Type = params['Type']
          @Level = params['Level']
          @Isp = params['Isp']
          @Area = params['Area']
          @NetType = params['NetType']
          @Platform = params['Platform']
          @Device = params['Device']
          @VersionNum = params['VersionNum']
          @ExtFirst = params['ExtFirst']
          @ExtSecond = params['ExtSecond']
          @ExtThird = params['ExtThird']
          @IsAbroad = params['IsAbroad']
          @Browser = params['Browser']
          @Os = params['Os']
          @Engine = params['Engine']
          @Brand = params['Brand']
          @From = params['From']
          @CostType = params['CostType']
        end
      end

      # DescribeDataPerformancePage返回参数结构体
      class DescribeDataPerformancePageResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeError请求参数结构体
      class DescribeErrorRequest < TencentCloud::Common::AbstractModel
        # @param Date: 日期
        # @type Date: String
        # @param ID: 项目ID
        # @type ID: Integer

        attr_accessor :Date, :ID
        
        def initialize(date=nil, id=nil)
          @Date = date
          @ID = id
        end

        def deserialize(params)
          @Date = params['Date']
          @ID = params['ID']
        end
      end

      # DescribeError返回参数结构体
      class DescribeErrorResponse < TencentCloud::Common::AbstractModel
        # @param Content: 内容
        # @type Content: String
        # @param ID: 项目ID
        # @type ID: Integer
        # @param CreateTime: 时间
        # @type CreateTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Content, :ID, :CreateTime, :RequestId
        
        def initialize(content=nil, id=nil, createtime=nil, requestid=nil)
          @Content = content
          @ID = id
          @CreateTime = createtime
          @RequestId = requestid
        end

        def deserialize(params)
          @Content = params['Content']
          @ID = params['ID']
          @CreateTime = params['CreateTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLogList请求参数结构体
      class DescribeLogListRequest < TencentCloud::Common::AbstractModel
        # @param Sort: 排序方式  desc  asc
        # @type Sort: String
        # @param ActionType: searchlog   histogram
        # @type ActionType: String
        # @param ID: 项目ID
        # @type ID: Integer
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param Limit: 限制
        # @type Limit: Integer
        # @param Context: 上下文
        # @type Context: String
        # @param Query: 查询语句
        # @type Query: String
        # @param EndTime: 结束时间
        # @type EndTime: String

        attr_accessor :Sort, :ActionType, :ID, :StartTime, :Limit, :Context, :Query, :EndTime
        
        def initialize(sort=nil, actiontype=nil, id=nil, starttime=nil, limit=nil, context=nil, query=nil, endtime=nil)
          @Sort = sort
          @ActionType = actiontype
          @ID = id
          @StartTime = starttime
          @Limit = limit
          @Context = context
          @Query = query
          @EndTime = endtime
        end

        def deserialize(params)
          @Sort = params['Sort']
          @ActionType = params['ActionType']
          @ID = params['ID']
          @StartTime = params['StartTime']
          @Limit = params['Limit']
          @Context = params['Context']
          @Query = params['Query']
          @EndTime = params['EndTime']
        end
      end

      # DescribeLogList返回参数结构体
      class DescribeLogListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回字符串
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

