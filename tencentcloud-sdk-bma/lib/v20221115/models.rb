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
  module Bma
    module V20221115
      # CreateBPFakeAPPList请求参数结构体
      class CreateBPFakeAPPListRequest < TencentCloud::Common::AbstractModel
        # @param FakeAPPs: 仿冒应用下载链接。请严格按照模版进行填写：https://bma-privacy-detection-1251316161.cosgz.myqcloud.com/20221206/f8c7521fbd84f4c4e7c2a25ac233857e/批量仿冒应用举报模板.xlsx
        # @type FakeAPPs: String

        attr_accessor :FakeAPPs
        
        def initialize(fakeapps=nil)
          @FakeAPPs = fakeapps
        end

        def deserialize(params)
          @FakeAPPs = params['FakeAPPs']
        end
      end

      # CreateBPFakeAPPList返回参数结构体
      class CreateBPFakeAPPListResponse < TencentCloud::Common::AbstractModel
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

      # CreateBPFakeAPP请求参数结构体
      class CreateBPFakeAPPRequest < TencentCloud::Common::AbstractModel
        # @param CompanyId: 企业id
        # @type CompanyId: Integer
        # @param FakeAPPName: 仿冒应用名称
        # @type FakeAPPName: String
        # @param APPChan: 仿冒来源
        # @type APPChan: String
        # @param FakeAPPPackageName: 仿冒应用包名
        # @type FakeAPPPackageName: String
        # @param FakeAPPCert: 仿冒应用证书
        # @type FakeAPPCert: String
        # @param FakeAPPSize: 仿冒应用大小
        # @type FakeAPPSize: String
        # @param FakeAPPSnapshots: 仿冒截图
        # @type FakeAPPSnapshots: Array
        # @param Note: 备注
        # @type Note: String

        attr_accessor :CompanyId, :FakeAPPName, :APPChan, :FakeAPPPackageName, :FakeAPPCert, :FakeAPPSize, :FakeAPPSnapshots, :Note
        
        def initialize(companyid=nil, fakeappname=nil, appchan=nil, fakeapppackagename=nil, fakeappcert=nil, fakeappsize=nil, fakeappsnapshots=nil, note=nil)
          @CompanyId = companyid
          @FakeAPPName = fakeappname
          @APPChan = appchan
          @FakeAPPPackageName = fakeapppackagename
          @FakeAPPCert = fakeappcert
          @FakeAPPSize = fakeappsize
          @FakeAPPSnapshots = fakeappsnapshots
          @Note = note
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @FakeAPPName = params['FakeAPPName']
          @APPChan = params['APPChan']
          @FakeAPPPackageName = params['FakeAPPPackageName']
          @FakeAPPCert = params['FakeAPPCert']
          @FakeAPPSize = params['FakeAPPSize']
          @FakeAPPSnapshots = params['FakeAPPSnapshots']
          @Note = params['Note']
        end
      end

      # CreateBPFakeAPP返回参数结构体
      class CreateBPFakeAPPResponse < TencentCloud::Common::AbstractModel
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

      # CreateBPFakeURL请求参数结构体
      class CreateBPFakeURLRequest < TencentCloud::Common::AbstractModel
        # @param CompanyId: 企业id
        # @type CompanyId: Integer
        # @param FakeURL: 仿冒网址
        # @type FakeURL: String
        # @param FakeURLSnapshots: 仿冒网址截图
        # @type FakeURLSnapshots: Array
        # @param Note: 备注
        # @type Note: String

        attr_accessor :CompanyId, :FakeURL, :FakeURLSnapshots, :Note
        
        def initialize(companyid=nil, fakeurl=nil, fakeurlsnapshots=nil, note=nil)
          @CompanyId = companyid
          @FakeURL = fakeurl
          @FakeURLSnapshots = fakeurlsnapshots
          @Note = note
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @FakeURL = params['FakeURL']
          @FakeURLSnapshots = params['FakeURLSnapshots']
          @Note = params['Note']
        end
      end

      # CreateBPFakeURL返回参数结构体
      class CreateBPFakeURLResponse < TencentCloud::Common::AbstractModel
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

      # CreateBPFakeURLs请求参数结构体
      class CreateBPFakeURLsRequest < TencentCloud::Common::AbstractModel
        # @param FakeURLs: 仿冒网址下载链接：请严格按照模版要求填写，https://bma-privacy-detection-1251316161.cosgz.myqcloud.com/20221124/ff3273b24104d03fa3a8d0629a7f71a9/批量仿冒网址举报模板.xlsx
        # @type FakeURLs: String

        attr_accessor :FakeURLs
        
        def initialize(fakeurls=nil)
          @FakeURLs = fakeurls
        end

        def deserialize(params)
          @FakeURLs = params['FakeURLs']
        end
      end

      # CreateBPFakeURLs返回参数结构体
      class CreateBPFakeURLsResponse < TencentCloud::Common::AbstractModel
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

    end
  end
end

