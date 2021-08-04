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

    end
  end
end

