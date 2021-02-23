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
  module Youmall
    module V20180228
      # 客户到场信息
      class ArrivedMallInfo < TencentCloud::Common::AbstractModel
        # @param ArrivedTime: 到场时间
        # @type ArrivedTime: String
        # @param LeaveTime: 出场时间
        # @type LeaveTime: String
        # @param StaySecond: 停留时间，秒
        # @type StaySecond: Integer
        # @param InCapPic: 到场抓拍图片
        # @type InCapPic: String
        # @param OutCapPic: 出场抓拍图片
        # @type OutCapPic: String
        # @param TraceId: 轨迹编码
        # @type TraceId: String

        attr_accessor :ArrivedTime, :LeaveTime, :StaySecond, :InCapPic, :OutCapPic, :TraceId
        
        def initialize(arrivedtime=nil, leavetime=nil, staysecond=nil, incappic=nil, outcappic=nil, traceid=nil)
          @ArrivedTime = arrivedtime
          @LeaveTime = leavetime
          @StaySecond = staysecond
          @InCapPic = incappic
          @OutCapPic = outcappic
          @TraceId = traceid
        end

        def deserialize(params)
          @ArrivedTime = params['ArrivedTime']
          @LeaveTime = params['LeaveTime']
          @StaySecond = params['StaySecond']
          @InCapPic = params['InCapPic']
          @OutCapPic = params['OutCapPic']
          @TraceId = params['TraceId']
        end
      end

      # 摄像头抓图人物属性
      class CameraPersonInfo < TencentCloud::Common::AbstractModel
        # @param TempId: 临时id，还未生成face id时返回
        # @type TempId: String
        # @param FaceId: 人脸face id
        # @type FaceId: Integer
        # @param IdType: 确定当次返回的哪个id有效，1-FaceId，2-TempId
        # @type IdType: Integer
        # @param FacePic: 当次抓拍到的人脸图片base编码
        # @type FacePic: String
        # @param Time: 当次抓拍时间戳
        # @type Time: Integer
        # @param PersonInfo: 当前的person基本信息，图片以FacePic为准，结构体内未填
        # @type PersonInfo: :class:`Tencentcloud::Youmall.v20180228.models.PersonInfo`

        attr_accessor :TempId, :FaceId, :IdType, :FacePic, :Time, :PersonInfo
        
        def initialize(tempid=nil, faceid=nil, idtype=nil, facepic=nil, time=nil, personinfo=nil)
          @TempId = tempid
          @FaceId = faceid
          @IdType = idtype
          @FacePic = facepic
          @Time = time
          @PersonInfo = personinfo
        end

        def deserialize(params)
          @TempId = params['TempId']
          @FaceId = params['FaceId']
          @IdType = params['IdType']
          @FacePic = params['FacePic']
          @Time = params['Time']
          unless params['PersonInfo'].nil?
            @PersonInfo = PersonInfo.new.deserialize(params['PersonInfo'])
          end
        end
      end

      # CreateAccount请求参数结构体
      class CreateAccountRequest < TencentCloud::Common::AbstractModel
        # @param CompanyId: 集团ID
        # @type CompanyId: String
        # @param Name: 账号名；需要是手机号
        # @type Name: String
        # @param Password: 密码；需要是(`~!@#$%^&*()_+=-）中的至少两种且八位以上
        # @type Password: String
        # @param ShopCode: 客户门店编码
        # @type ShopCode: String
        # @param Remark: 备注说明; 30个字符以内
        # @type Remark: String

        attr_accessor :CompanyId, :Name, :Password, :ShopCode, :Remark
        
        def initialize(companyid=nil, name=nil, password=nil, shopcode=nil, remark=nil)
          @CompanyId = companyid
          @Name = name
          @Password = password
          @ShopCode = shopcode
          @Remark = remark
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @Name = params['Name']
          @Password = params['Password']
          @ShopCode = params['ShopCode']
          @Remark = params['Remark']
        end
      end

      # CreateAccount返回参数结构体
      class CreateAccountResponse < TencentCloud::Common::AbstractModel
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

      # CreateFacePicture请求参数结构体
      class CreateFacePictureRequest < TencentCloud::Common::AbstractModel
        # @param CompanyId: 集团ID
        # @type CompanyId: String
        # @param PersonType: 人物类型（0表示普通顾客，1 白名单，2 表示黑名单，101表示集团白名单，102表示集团黑名单）
        # @type PersonType: Integer
        # @param Picture: 图片BASE编码
        # @type Picture: String
        # @param PictureName: 图片名称
        # @type PictureName: String
        # @param ShopId: 店铺ID，如果不填表示操作集团身份库
        # @type ShopId: Integer
        # @param IsForceUpload: 是否强制更新：为ture时会为用户创建一个新的指定PersonType的身份;目前这个参数已废弃，可不传
        # @type IsForceUpload: Boolean

        attr_accessor :CompanyId, :PersonType, :Picture, :PictureName, :ShopId, :IsForceUpload
        
        def initialize(companyid=nil, persontype=nil, picture=nil, picturename=nil, shopid=nil, isforceupload=nil)
          @CompanyId = companyid
          @PersonType = persontype
          @Picture = picture
          @PictureName = picturename
          @ShopId = shopid
          @IsForceUpload = isforceupload
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @PersonType = params['PersonType']
          @Picture = params['Picture']
          @PictureName = params['PictureName']
          @ShopId = params['ShopId']
          @IsForceUpload = params['IsForceUpload']
        end
      end

      # CreateFacePicture返回参数结构体
      class CreateFacePictureResponse < TencentCloud::Common::AbstractModel
        # @param PersonId: 人物ID
        # @type PersonId: Integer
        # @param Status: 0.正常建档 1.重复身份 2.未检测到人脸 3.检测到多个人脸 4.人脸大小过小 5.人脸质量不达标 6.其他错误
        # @type Status: Integer
        # @param PictureUrl: 图片url
        # @type PictureUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PersonId, :Status, :PictureUrl, :RequestId
        
        def initialize(personid=nil, status=nil, pictureurl=nil, requestid=nil)
          @PersonId = personid
          @Status = status
          @PictureUrl = pictureurl
          @RequestId = requestid
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @Status = params['Status']
          @PictureUrl = params['PictureUrl']
          @RequestId = params['RequestId']
        end
      end

      # 客户天轨迹
      class DailyTracePoint < TencentCloud::Common::AbstractModel
        # @param TraceDate: 轨迹日期
        # @type TraceDate: String
        # @param TracePointSet: 轨迹点序列
        # @type TracePointSet: Array

        attr_accessor :TraceDate, :TracePointSet
        
        def initialize(tracedate=nil, tracepointset=nil)
          @TraceDate = tracedate
          @TracePointSet = tracepointset
        end

        def deserialize(params)
          @TraceDate = params['TraceDate']
          unless params['TracePointSet'].nil?
            @TracePointSet = []
            params['TracePointSet'].each do |i|
              @TracePointSet << PersonTracePoint.new.deserialize(i)
            end
          end
        end
      end

      # DeletePersonFeature请求参数结构体
      class DeletePersonFeatureRequest < TencentCloud::Common::AbstractModel
        # @param CompanyId: 公司ID
        # @type CompanyId: String
        # @param ShopId: 门店ID
        # @type ShopId: Integer
        # @param PersonId: 顾客ID
        # @type PersonId: Integer

        attr_accessor :CompanyId, :ShopId, :PersonId
        
        def initialize(companyid=nil, shopid=nil, personid=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @PersonId = personid
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @PersonId = params['PersonId']
        end
      end

      # DeletePersonFeature返回参数结构体
      class DeletePersonFeatureResponse < TencentCloud::Common::AbstractModel
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

      # DescribeCameraPerson请求参数结构体
      class DescribeCameraPersonRequest < TencentCloud::Common::AbstractModel
        # @param CompanyId: 优mall集团id，通过"指定身份标识获取客户门店列表"接口获取
        # @type CompanyId: String
        # @param ShopId: 优mall店铺id，通过"指定身份标识获取客户门店列表"接口获取
        # @type ShopId: Integer
        # @param CameraId: 摄像头id
        # @type CameraId: Integer
        # @param StartTime: 拉取开始时间戳，单位秒
        # @type StartTime: Integer
        # @param EndTime: 拉取结束时间戳，单位秒，不超过StartTime+10秒，超过默认为StartTime+10
        # @type EndTime: Integer
        # @param PosId: pos机id
        # @type PosId: String
        # @param Num: 拉取图片数，默认为1，最大为3
        # @type Num: Integer
        # @param IsNeedPic: 是否需要base64的图片，0-不需要，1-需要，默认0
        # @type IsNeedPic: Integer

        attr_accessor :CompanyId, :ShopId, :CameraId, :StartTime, :EndTime, :PosId, :Num, :IsNeedPic
        
        def initialize(companyid=nil, shopid=nil, cameraid=nil, starttime=nil, endtime=nil, posid=nil, num=nil, isneedpic=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @CameraId = cameraid
          @StartTime = starttime
          @EndTime = endtime
          @PosId = posid
          @Num = num
          @IsNeedPic = isneedpic
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @CameraId = params['CameraId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PosId = params['PosId']
          @Num = params['Num']
          @IsNeedPic = params['IsNeedPic']
        end
      end

      # DescribeCameraPerson返回参数结构体
      class DescribeCameraPersonResponse < TencentCloud::Common::AbstractModel
        # @param CompanyId: 集团id
        # @type CompanyId: String
        # @param ShopId: 店铺id
        # @type ShopId: Integer
        # @param CameraId: 摄像机id
        # @type CameraId: Integer
        # @param PosId: pos机id
        # @type PosId: String
        # @param Infos: 抓取的顾客信息
        # @type Infos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CompanyId, :ShopId, :CameraId, :PosId, :Infos, :RequestId
        
        def initialize(companyid=nil, shopid=nil, cameraid=nil, posid=nil, infos=nil, requestid=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @CameraId = cameraid
          @PosId = posid
          @Infos = infos
          @RequestId = requestid
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @CameraId = params['CameraId']
          @PosId = params['PosId']
          unless params['Infos'].nil?
            @Infos = []
            params['Infos'].each do |i|
              @Infos << CameraPersonInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterPersonArrivedMall请求参数结构体
      class DescribeClusterPersonArrivedMallRequest < TencentCloud::Common::AbstractModel
        # @param MallId: 卖场编码
        # @type MallId: String
        # @param PersonId: 客户编码
        # @type PersonId: String
        # @param StartTime: 查询开始时间
        # @type StartTime: String
        # @param EndTime: 查询结束时间
        # @type EndTime: String

        attr_accessor :MallId, :PersonId, :StartTime, :EndTime
        
        def initialize(mallid=nil, personid=nil, starttime=nil, endtime=nil)
          @MallId = mallid
          @PersonId = personid
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @MallId = params['MallId']
          @PersonId = params['PersonId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeClusterPersonArrivedMall返回参数结构体
      class DescribeClusterPersonArrivedMallResponse < TencentCloud::Common::AbstractModel
        # @param MallId: 卖场系统编码
        # @type MallId: String
        # @param MallCode: 卖场客户编码
        # @type MallCode: String
        # @param PersonId: 客户编码
        # @type PersonId: String
        # @param ArrivedMallSet: 到场信息
        # @type ArrivedMallSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MallId, :MallCode, :PersonId, :ArrivedMallSet, :RequestId
        
        def initialize(mallid=nil, mallcode=nil, personid=nil, arrivedmallset=nil, requestid=nil)
          @MallId = mallid
          @MallCode = mallcode
          @PersonId = personid
          @ArrivedMallSet = arrivedmallset
          @RequestId = requestid
        end

        def deserialize(params)
          @MallId = params['MallId']
          @MallCode = params['MallCode']
          @PersonId = params['PersonId']
          unless params['ArrivedMallSet'].nil?
            @ArrivedMallSet = []
            params['ArrivedMallSet'].each do |i|
              @ArrivedMallSet << ArrivedMallInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterPersonTrace请求参数结构体
      class DescribeClusterPersonTraceRequest < TencentCloud::Common::AbstractModel
        # @param MallId: 卖场编码
        # @type MallId: String
        # @param PersonId: 客户编码
        # @type PersonId: String
        # @param StartTime: 查询开始时间
        # @type StartTime: String
        # @param EndTime: 查询结束时间
        # @type EndTime: String

        attr_accessor :MallId, :PersonId, :StartTime, :EndTime
        
        def initialize(mallid=nil, personid=nil, starttime=nil, endtime=nil)
          @MallId = mallid
          @PersonId = personid
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @MallId = params['MallId']
          @PersonId = params['PersonId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeClusterPersonTrace返回参数结构体
      class DescribeClusterPersonTraceResponse < TencentCloud::Common::AbstractModel
        # @param MallId: 卖场系统编码
        # @type MallId: String
        # @param MallCode: 卖场用户编码
        # @type MallCode: String
        # @param PersonId: 客户编码
        # @type PersonId: String
        # @param TracePointSet: 轨迹序列
        # @type TracePointSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MallId, :MallCode, :PersonId, :TracePointSet, :RequestId
        
        def initialize(mallid=nil, mallcode=nil, personid=nil, tracepointset=nil, requestid=nil)
          @MallId = mallid
          @MallCode = mallcode
          @PersonId = personid
          @TracePointSet = tracepointset
          @RequestId = requestid
        end

        def deserialize(params)
          @MallId = params['MallId']
          @MallCode = params['MallCode']
          @PersonId = params['PersonId']
          unless params['TracePointSet'].nil?
            @TracePointSet = []
            params['TracePointSet'].each do |i|
              @TracePointSet << DailyTracePoint.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFaceIdByTempId请求参数结构体
      class DescribeFaceIdByTempIdRequest < TencentCloud::Common::AbstractModel
        # @param CompanyId: 优mall集团id，通过"指定身份标识获取客户门店列表"接口获取
        # @type CompanyId: String
        # @param ShopId: 优mall店铺id，通过"指定身份标识获取客户门店列表"接口获取
        # @type ShopId: Integer
        # @param TempId: 临时id
        # @type TempId: String
        # @param CameraId: 摄像头id
        # @type CameraId: Integer
        # @param PosId: pos机id
        # @type PosId: String
        # @param PictureExpires: 图片url过期时间：在当前时间+PictureExpires秒后，图片url无法继续正常访问；单位s；默认值1*24*60*60（1天）
        # @type PictureExpires: Integer

        attr_accessor :CompanyId, :ShopId, :TempId, :CameraId, :PosId, :PictureExpires
        
        def initialize(companyid=nil, shopid=nil, tempid=nil, cameraid=nil, posid=nil, pictureexpires=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @TempId = tempid
          @CameraId = cameraid
          @PosId = posid
          @PictureExpires = pictureexpires
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @TempId = params['TempId']
          @CameraId = params['CameraId']
          @PosId = params['PosId']
          @PictureExpires = params['PictureExpires']
        end
      end

      # DescribeFaceIdByTempId返回参数结构体
      class DescribeFaceIdByTempIdResponse < TencentCloud::Common::AbstractModel
        # @param CompanyId: 集团id
        # @type CompanyId: String
        # @param ShopId: 店铺id
        # @type ShopId: Integer
        # @param CameraId: 摄像机id
        # @type CameraId: Integer
        # @param PosId: pos机id
        # @type PosId: String
        # @param TempId: 请求的临时id
        # @type TempId: String
        # @param FaceId: 临时id对应的face id
        # @type FaceId: Integer
        # @param PersonInfo: 顾客属性信息
        # @type PersonInfo: :class:`Tencentcloud::Youmall.v20180228.models.PersonInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CompanyId, :ShopId, :CameraId, :PosId, :TempId, :FaceId, :PersonInfo, :RequestId
        
        def initialize(companyid=nil, shopid=nil, cameraid=nil, posid=nil, tempid=nil, faceid=nil, personinfo=nil, requestid=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @CameraId = cameraid
          @PosId = posid
          @TempId = tempid
          @FaceId = faceid
          @PersonInfo = personinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @CameraId = params['CameraId']
          @PosId = params['PosId']
          @TempId = params['TempId']
          @FaceId = params['FaceId']
          unless params['PersonInfo'].nil?
            @PersonInfo = PersonInfo.new.deserialize(params['PersonInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeHistoryNetworkInfo请求参数结构体
      class DescribeHistoryNetworkInfoRequest < TencentCloud::Common::AbstractModel
        # @param Time: 请求时间戳
        # @type Time: Integer
        # @param CompanyId: 优mall集团id，通过"指定身份标识获取客户门店列表"接口获取
        # @type CompanyId: String
        # @param ShopId: 优mall店铺id，通过"指定身份标识获取客户门店列表"接口获取，为0则拉取集团全部店铺当前
        # @type ShopId: Integer
        # @param StartDay: 拉取开始日期，格式：2018-09-05
        # @type StartDay: String
        # @param EndDay: 拉取结束日期，格式L:2018-09-05，超过StartDay 90天，按StartDay+90天算
        # @type EndDay: String
        # @param Limit: 拉取条数，默认10
        # @type Limit: Integer
        # @param Offset: 拉取偏移，返回offset之后的数据
        # @type Offset: Integer

        attr_accessor :Time, :CompanyId, :ShopId, :StartDay, :EndDay, :Limit, :Offset
        
        def initialize(time=nil, companyid=nil, shopid=nil, startday=nil, endday=nil, limit=nil, offset=nil)
          @Time = time
          @CompanyId = companyid
          @ShopId = shopid
          @StartDay = startday
          @EndDay = endday
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Time = params['Time']
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @StartDay = params['StartDay']
          @EndDay = params['EndDay']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeHistoryNetworkInfo返回参数结构体
      class DescribeHistoryNetworkInfoResponse < TencentCloud::Common::AbstractModel
        # @param InstanceSet: 网络状态数据
        # @type InstanceSet: :class:`Tencentcloud::Youmall.v20180228.models.NetworkHistoryInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceSet, :RequestId
        
        def initialize(instanceset=nil, requestid=nil)
          @InstanceSet = instanceset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceSet'].nil?
            @InstanceSet = NetworkHistoryInfo.new.deserialize(params['InstanceSet'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNetworkInfo请求参数结构体
      class DescribeNetworkInfoRequest < TencentCloud::Common::AbstractModel
        # @param Time: 请求时间戳
        # @type Time: Integer
        # @param CompanyId: 优mall集团id，通过"指定身份标识获取客户门店列表"接口获取
        # @type CompanyId: String
        # @param ShopId: 优mall店铺id，通过"指定身份标识获取客户门店列表"接口获取，不填则拉取集团全部店铺当前
        # @type ShopId: Integer

        attr_accessor :Time, :CompanyId, :ShopId
        
        def initialize(time=nil, companyid=nil, shopid=nil)
          @Time = time
          @CompanyId = companyid
          @ShopId = shopid
        end

        def deserialize(params)
          @Time = params['Time']
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
        end
      end

      # DescribeNetworkInfo返回参数结构体
      class DescribeNetworkInfoResponse < TencentCloud::Common::AbstractModel
        # @param InstanceSet: 网络状态详情
        # @type InstanceSet: :class:`Tencentcloud::Youmall.v20180228.models.NetworkLastInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceSet, :RequestId
        
        def initialize(instanceset=nil, requestid=nil)
          @InstanceSet = instanceset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceSet'].nil?
            @InstanceSet = NetworkLastInfo.new.deserialize(params['InstanceSet'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePersonArrivedMall请求参数结构体
      class DescribePersonArrivedMallRequest < TencentCloud::Common::AbstractModel
        # @param MallId: 卖场编码
        # @type MallId: String
        # @param PersonId: 客户编码
        # @type PersonId: String
        # @param StartTime: 查询开始时间
        # @type StartTime: String
        # @param EndTime: 查询结束时间
        # @type EndTime: String

        attr_accessor :MallId, :PersonId, :StartTime, :EndTime
        
        def initialize(mallid=nil, personid=nil, starttime=nil, endtime=nil)
          @MallId = mallid
          @PersonId = personid
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @MallId = params['MallId']
          @PersonId = params['PersonId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribePersonArrivedMall返回参数结构体
      class DescribePersonArrivedMallResponse < TencentCloud::Common::AbstractModel
        # @param MallId: 卖场系统编码
        # @type MallId: String
        # @param MallCode: 卖场用户编码
        # @type MallCode: String
        # @param PersonId: 客户编码
        # @type PersonId: String
        # @param ArrivedMallSet: 到场轨迹
        # @type ArrivedMallSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MallId, :MallCode, :PersonId, :ArrivedMallSet, :RequestId
        
        def initialize(mallid=nil, mallcode=nil, personid=nil, arrivedmallset=nil, requestid=nil)
          @MallId = mallid
          @MallCode = mallcode
          @PersonId = personid
          @ArrivedMallSet = arrivedmallset
          @RequestId = requestid
        end

        def deserialize(params)
          @MallId = params['MallId']
          @MallCode = params['MallCode']
          @PersonId = params['PersonId']
          unless params['ArrivedMallSet'].nil?
            @ArrivedMallSet = []
            params['ArrivedMallSet'].each do |i|
              @ArrivedMallSet << ArrivedMallInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePersonInfoByFacePicture请求参数结构体
      class DescribePersonInfoByFacePictureRequest < TencentCloud::Common::AbstractModel
        # @param CompanyId: 优mall集团id，通过"指定身份标识获取客户门店列表"接口获取
        # @type CompanyId: String
        # @param ShopId: 优mall店铺id，通过"指定身份标识获取客户门店列表"接口获取
        # @type ShopId: Integer
        # @param Picture: 人脸图片BASE编码
        # @type Picture: String

        attr_accessor :CompanyId, :ShopId, :Picture
        
        def initialize(companyid=nil, shopid=nil, picture=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @Picture = picture
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @Picture = params['Picture']
        end
      end

      # DescribePersonInfoByFacePicture返回参数结构体
      class DescribePersonInfoByFacePictureResponse < TencentCloud::Common::AbstractModel
        # @param CompanyId: 集团id
        # @type CompanyId: String
        # @param ShopId: 店铺id
        # @type ShopId: Integer
        # @param PersonId: 顾客face id
        # @type PersonId: Integer
        # @param PictureUrl: 顾客底图url
        # @type PictureUrl: String
        # @param PersonType: 顾客类型（0表示普通顾客，1 白名单，2 表示黑名单，101表示集团白名单，102表示集团黑名单）
        # @type PersonType: Integer
        # @param FirstVisitTime: 顾客首次进店时间
        # @type FirstVisitTime: String
        # @param VisitTimes: 顾客历史到访次数
        # @type VisitTimes: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CompanyId, :ShopId, :PersonId, :PictureUrl, :PersonType, :FirstVisitTime, :VisitTimes, :RequestId
        
        def initialize(companyid=nil, shopid=nil, personid=nil, pictureurl=nil, persontype=nil, firstvisittime=nil, visittimes=nil, requestid=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @PersonId = personid
          @PictureUrl = pictureurl
          @PersonType = persontype
          @FirstVisitTime = firstvisittime
          @VisitTimes = visittimes
          @RequestId = requestid
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @PersonId = params['PersonId']
          @PictureUrl = params['PictureUrl']
          @PersonType = params['PersonType']
          @FirstVisitTime = params['FirstVisitTime']
          @VisitTimes = params['VisitTimes']
          @RequestId = params['RequestId']
        end
      end

      # DescribePersonInfo请求参数结构体
      class DescribePersonInfoRequest < TencentCloud::Common::AbstractModel
        # @param CompanyId: 公司ID
        # @type CompanyId: String
        # @param ShopId: 门店ID
        # @type ShopId: Integer
        # @param StartPersonId: 起始ID，第一次拉取时StartPersonId传0，后续送入的值为上一页最后一条数据项的PersonId
        # @type StartPersonId: Integer
        # @param Offset: 偏移量：分页控制参数，第一页传0，第n页Offset=(n-1)*Limit
        # @type Offset: Integer
        # @param Limit: Limit:每页的数据项，最大100，超过100会被强制指定为100
        # @type Limit: Integer
        # @param PictureExpires: 图片url过期时间：在当前时间+PictureExpires秒后，图片url无法继续正常访问；单位s；默认值1*24*60*60（1天）
        # @type PictureExpires: Integer
        # @param PersonType: 身份类型(0表示普通顾客，1 白名单，2 表示黑名单）
        # @type PersonType: Integer

        attr_accessor :CompanyId, :ShopId, :StartPersonId, :Offset, :Limit, :PictureExpires, :PersonType
        
        def initialize(companyid=nil, shopid=nil, startpersonid=nil, offset=nil, limit=nil, pictureexpires=nil, persontype=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @StartPersonId = startpersonid
          @Offset = offset
          @Limit = limit
          @PictureExpires = pictureexpires
          @PersonType = persontype
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @StartPersonId = params['StartPersonId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @PictureExpires = params['PictureExpires']
          @PersonType = params['PersonType']
        end
      end

      # DescribePersonInfo返回参数结构体
      class DescribePersonInfoResponse < TencentCloud::Common::AbstractModel
        # @param CompanyId: 公司ID
        # @type CompanyId: String
        # @param ShopId: 门店ID
        # @type ShopId: Integer
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param PersonInfoSet: 用户信息
        # @type PersonInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CompanyId, :ShopId, :TotalCount, :PersonInfoSet, :RequestId
        
        def initialize(companyid=nil, shopid=nil, totalcount=nil, personinfoset=nil, requestid=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @TotalCount = totalcount
          @PersonInfoSet = personinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @TotalCount = params['TotalCount']
          unless params['PersonInfoSet'].nil?
            @PersonInfoSet = []
            params['PersonInfoSet'].each do |i|
              @PersonInfoSet << PersonInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePerson请求参数结构体
      class DescribePersonRequest < TencentCloud::Common::AbstractModel
        # @param MallId: 卖场编码
        # @type MallId: String
        # @param Offset: 查询偏移
        # @type Offset: Integer
        # @param Limit: 查询数量，默认20，最大查询数量100
        # @type Limit: Integer

        attr_accessor :MallId, :Offset, :Limit
        
        def initialize(mallid=nil, offset=nil, limit=nil)
          @MallId = mallid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @MallId = params['MallId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribePerson返回参数结构体
      class DescribePersonResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总计客户数量
        # @type TotalCount: Integer
        # @param PersonSet: 客户信息
        # @type PersonSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :PersonSet, :RequestId
        
        def initialize(totalcount=nil, personset=nil, requestid=nil)
          @TotalCount = totalcount
          @PersonSet = personset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['PersonSet'].nil?
            @PersonSet = []
            params['PersonSet'].each do |i|
              @PersonSet << PersonProfile.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePersonTraceDetail请求参数结构体
      class DescribePersonTraceDetailRequest < TencentCloud::Common::AbstractModel
        # @param MallId: 卖场编码
        # @type MallId: String
        # @param PersonId: 客户编码
        # @type PersonId: String
        # @param TraceId: 轨迹编码
        # @type TraceId: String

        attr_accessor :MallId, :PersonId, :TraceId
        
        def initialize(mallid=nil, personid=nil, traceid=nil)
          @MallId = mallid
          @PersonId = personid
          @TraceId = traceid
        end

        def deserialize(params)
          @MallId = params['MallId']
          @PersonId = params['PersonId']
          @TraceId = params['TraceId']
        end
      end

      # DescribePersonTraceDetail返回参数结构体
      class DescribePersonTraceDetailResponse < TencentCloud::Common::AbstractModel
        # @param MallId: 卖场编码
        # @type MallId: String
        # @param PersonId: 客户编码
        # @type PersonId: String
        # @param TraceId: 轨迹编码
        # @type TraceId: String
        # @param CoordinateSet: 轨迹点坐标序列
        # @type CoordinateSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MallId, :PersonId, :TraceId, :CoordinateSet, :RequestId
        
        def initialize(mallid=nil, personid=nil, traceid=nil, coordinateset=nil, requestid=nil)
          @MallId = mallid
          @PersonId = personid
          @TraceId = traceid
          @CoordinateSet = coordinateset
          @RequestId = requestid
        end

        def deserialize(params)
          @MallId = params['MallId']
          @PersonId = params['PersonId']
          @TraceId = params['TraceId']
          unless params['CoordinateSet'].nil?
            @CoordinateSet = []
            params['CoordinateSet'].each do |i|
              @CoordinateSet << PersonCoordinate.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePersonTrace请求参数结构体
      class DescribePersonTraceRequest < TencentCloud::Common::AbstractModel
        # @param MallId: 卖场编码
        # @type MallId: String
        # @param PersonId: 客户编码
        # @type PersonId: String
        # @param StartTime: 查询开始时间
        # @type StartTime: String
        # @param EndTime: 查询结束时间
        # @type EndTime: String

        attr_accessor :MallId, :PersonId, :StartTime, :EndTime
        
        def initialize(mallid=nil, personid=nil, starttime=nil, endtime=nil)
          @MallId = mallid
          @PersonId = personid
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @MallId = params['MallId']
          @PersonId = params['PersonId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribePersonTrace返回参数结构体
      class DescribePersonTraceResponse < TencentCloud::Common::AbstractModel
        # @param MallId: 卖场系统编码
        # @type MallId: String
        # @param MallCode: 卖场用户编码
        # @type MallCode: String
        # @param PersonId: 客户编码
        # @type PersonId: String
        # @param TraceRouteSet: 轨迹列表
        # @type TraceRouteSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MallId, :MallCode, :PersonId, :TraceRouteSet, :RequestId
        
        def initialize(mallid=nil, mallcode=nil, personid=nil, tracerouteset=nil, requestid=nil)
          @MallId = mallid
          @MallCode = mallcode
          @PersonId = personid
          @TraceRouteSet = tracerouteset
          @RequestId = requestid
        end

        def deserialize(params)
          @MallId = params['MallId']
          @MallCode = params['MallCode']
          @PersonId = params['PersonId']
          unless params['TraceRouteSet'].nil?
            @TraceRouteSet = []
            params['TraceRouteSet'].each do |i|
              @TraceRouteSet << PersonTraceRoute.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePersonVisitInfo请求参数结构体
      class DescribePersonVisitInfoRequest < TencentCloud::Common::AbstractModel
        # @param CompanyId: 公司ID
        # @type CompanyId: String
        # @param ShopId: 门店ID
        # @type ShopId: Integer
        # @param Offset: 偏移量：分页控制参数，第一页传0，第n页Offset=(n-1)*Limit
        # @type Offset: Integer
        # @param Limit: Limit:每页的数据项，最大100，超过100会被强制指定为100
        # @type Limit: Integer
        # @param StartDate: 开始日期，格式yyyy-MM-dd，已废弃，请使用StartDateTime
        # @type StartDate: String
        # @param EndDate: 结束日期，格式yyyy-MM-dd，已废弃，请使用EndDateTime
        # @type EndDate: String
        # @param PictureExpires: 图片url过期时间：在当前时间+PictureExpires秒后，图片url无法继续正常访问；单位s；默认值1*24*60*60（1天）
        # @type PictureExpires: Integer
        # @param StartDateTime: 开始时间，格式yyyy-MM-dd HH:mm:ss
        # @type StartDateTime: String
        # @param EndDateTime: 结束时间，格式yyyy-MM-dd HH:mm:ss
        # @type EndDateTime: String

        attr_accessor :CompanyId, :ShopId, :Offset, :Limit, :StartDate, :EndDate, :PictureExpires, :StartDateTime, :EndDateTime
        
        def initialize(companyid=nil, shopid=nil, offset=nil, limit=nil, startdate=nil, enddate=nil, pictureexpires=nil, startdatetime=nil, enddatetime=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @Offset = offset
          @Limit = limit
          @StartDate = startdate
          @EndDate = enddate
          @PictureExpires = pictureexpires
          @StartDateTime = startdatetime
          @EndDateTime = enddatetime
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @PictureExpires = params['PictureExpires']
          @StartDateTime = params['StartDateTime']
          @EndDateTime = params['EndDateTime']
        end
      end

      # DescribePersonVisitInfo返回参数结构体
      class DescribePersonVisitInfoResponse < TencentCloud::Common::AbstractModel
        # @param CompanyId: 公司ID
        # @type CompanyId: String
        # @param ShopId: 门店ID
        # @type ShopId: Integer
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param PersonVisitInfoSet: 用户到访明细
        # @type PersonVisitInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CompanyId, :ShopId, :TotalCount, :PersonVisitInfoSet, :RequestId
        
        def initialize(companyid=nil, shopid=nil, totalcount=nil, personvisitinfoset=nil, requestid=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @TotalCount = totalcount
          @PersonVisitInfoSet = personvisitinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @TotalCount = params['TotalCount']
          unless params['PersonVisitInfoSet'].nil?
            @PersonVisitInfoSet = []
            params['PersonVisitInfoSet'].each do |i|
              @PersonVisitInfoSet << PersonVisitInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeShopHourTrafficInfo请求参数结构体
      class DescribeShopHourTrafficInfoRequest < TencentCloud::Common::AbstractModel
        # @param CompanyId: 公司ID
        # @type CompanyId: String
        # @param ShopId: 门店ID
        # @type ShopId: Integer
        # @param StartDate: 开始日期，格式：yyyy-MM-dd
        # @type StartDate: String
        # @param EndDate: 结束日期，格式：yyyy-MM-dd
        # @type EndDate: String
        # @param Offset: 偏移量：分页控制参数，第一页传0，第n页Offset=(n-1)*Limit
        # @type Offset: Integer
        # @param Limit: Limit:每页的数据项，最大100，超过100会被强制指定为100
        # @type Limit: Integer

        attr_accessor :CompanyId, :ShopId, :StartDate, :EndDate, :Offset, :Limit
        
        def initialize(companyid=nil, shopid=nil, startdate=nil, enddate=nil, offset=nil, limit=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @StartDate = startdate
          @EndDate = enddate
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeShopHourTrafficInfo返回参数结构体
      class DescribeShopHourTrafficInfoResponse < TencentCloud::Common::AbstractModel
        # @param CompanyId: 公司ID
        # @type CompanyId: String
        # @param ShopId: 门店ID
        # @type ShopId: Integer
        # @param TotalCount: 查询结果总数
        # @type TotalCount: Integer
        # @param ShopHourTrafficInfoSet: 分时客流信息
        # @type ShopHourTrafficInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CompanyId, :ShopId, :TotalCount, :ShopHourTrafficInfoSet, :RequestId
        
        def initialize(companyid=nil, shopid=nil, totalcount=nil, shophourtrafficinfoset=nil, requestid=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @TotalCount = totalcount
          @ShopHourTrafficInfoSet = shophourtrafficinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @TotalCount = params['TotalCount']
          unless params['ShopHourTrafficInfoSet'].nil?
            @ShopHourTrafficInfoSet = []
            params['ShopHourTrafficInfoSet'].each do |i|
              @ShopHourTrafficInfoSet << ShopHourTrafficInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeShopInfo请求参数结构体
      class DescribeShopInfoRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量：分页控制参数，第一页传0，第n页Offset=(n-1)*Limit
        # @type Offset: Integer
        # @param Limit: Limit:每页的数据项，最大100，超过100会被强制指定为100
        # @type Limit: Integer

        attr_accessor :Offset, :Limit
        
        def initialize(offset=nil, limit=nil)
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeShopInfo返回参数结构体
      class DescribeShopInfoResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 门店总数
        # @type TotalCount: Integer
        # @param ShopInfoSet: 门店列表信息
        # @type ShopInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ShopInfoSet, :RequestId
        
        def initialize(totalcount=nil, shopinfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @ShopInfoSet = shopinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ShopInfoSet'].nil?
            @ShopInfoSet = []
            params['ShopInfoSet'].each do |i|
              @ShopInfoSet << ShopInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeShopTrafficInfo请求参数结构体
      class DescribeShopTrafficInfoRequest < TencentCloud::Common::AbstractModel
        # @param CompanyId: 公司ID
        # @type CompanyId: String
        # @param ShopId: 门店ID
        # @type ShopId: Integer
        # @param StartDate: 开始日期，格式yyyy-MM-dd
        # @type StartDate: String
        # @param EndDate: 介绍日期，格式yyyy-MM-dd
        # @type EndDate: String
        # @param Offset: 偏移量：分页控制参数，第一页传0，第n页Offset=(n-1)*Limit
        # @type Offset: Integer
        # @param Limit: Limit:每页的数据项，最大100，超过100会被强制指定为100
        # @type Limit: Integer

        attr_accessor :CompanyId, :ShopId, :StartDate, :EndDate, :Offset, :Limit
        
        def initialize(companyid=nil, shopid=nil, startdate=nil, enddate=nil, offset=nil, limit=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @StartDate = startdate
          @EndDate = enddate
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeShopTrafficInfo返回参数结构体
      class DescribeShopTrafficInfoResponse < TencentCloud::Common::AbstractModel
        # @param CompanyId: 公司ID
        # @type CompanyId: String
        # @param ShopId: 门店ID
        # @type ShopId: Integer
        # @param TotalCount: 查询结果总数
        # @type TotalCount: Integer
        # @param ShopDayTrafficInfoSet: 客流信息列表
        # @type ShopDayTrafficInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CompanyId, :ShopId, :TotalCount, :ShopDayTrafficInfoSet, :RequestId
        
        def initialize(companyid=nil, shopid=nil, totalcount=nil, shopdaytrafficinfoset=nil, requestid=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @TotalCount = totalcount
          @ShopDayTrafficInfoSet = shopdaytrafficinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @TotalCount = params['TotalCount']
          unless params['ShopDayTrafficInfoSet'].nil?
            @ShopDayTrafficInfoSet = []
            params['ShopDayTrafficInfoSet'].each do |i|
              @ShopDayTrafficInfoSet << ShopDayTrafficInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrajectoryData请求参数结构体
      class DescribeTrajectoryDataRequest < TencentCloud::Common::AbstractModel
        # @param CompanyId: 集团ID
        # @type CompanyId: String
        # @param ShopId: 店铺ID
        # @type ShopId: Integer
        # @param StartDate: 开始日期，格式yyyy-MM-dd
        # @type StartDate: String
        # @param EndDate: 结束日期，格式yyyy-MM-dd
        # @type EndDate: String
        # @param Limit: 限制返回数据的最大条数，最大 400（负数代为 400）
        # @type Limit: Integer
        # @param Gender: 顾客性别顾虑，0是男，1是女，其它代表不分性别
        # @type Gender: Integer

        attr_accessor :CompanyId, :ShopId, :StartDate, :EndDate, :Limit, :Gender
        
        def initialize(companyid=nil, shopid=nil, startdate=nil, enddate=nil, limit=nil, gender=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @StartDate = startdate
          @EndDate = enddate
          @Limit = limit
          @Gender = gender
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @Limit = params['Limit']
          @Gender = params['Gender']
        end
      end

      # DescribeTrajectoryData返回参数结构体
      class DescribeTrajectoryDataResponse < TencentCloud::Common::AbstractModel
        # @param CompanyId: 集团ID
        # @type CompanyId: String
        # @param ShopId: 店铺ID
        # @type ShopId: Integer
        # @param TotalPerson: 总人数
        # @type TotalPerson: Integer
        # @param TotalTrajectory: 总动迹数目
        # @type TotalTrajectory: Integer
        # @param Person: 返回动迹中的总人数
        # @type Person: Integer
        # @param Trajectory: 返回动迹的数目
        # @type Trajectory: Integer
        # @param Data: 返回动迹的具体信息
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CompanyId, :ShopId, :TotalPerson, :TotalTrajectory, :Person, :Trajectory, :Data, :RequestId
        
        def initialize(companyid=nil, shopid=nil, totalperson=nil, totaltrajectory=nil, person=nil, trajectory=nil, data=nil, requestid=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @TotalPerson = totalperson
          @TotalTrajectory = totaltrajectory
          @Person = person
          @Trajectory = trajectory
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @TotalPerson = params['TotalPerson']
          @TotalTrajectory = params['TotalTrajectory']
          @Person = params['Person']
          @Trajectory = params['Trajectory']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              @Data << TrajectorySunData.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeZoneFlowAgeInfoByZoneId请求参数结构体
      class DescribeZoneFlowAgeInfoByZoneIdRequest < TencentCloud::Common::AbstractModel
        # @param CompanyId: 集团ID
        # @type CompanyId: String
        # @param ShopId: 店铺ID
        # @type ShopId: Integer
        # @param ZoneId: 区域ID
        # @type ZoneId: Integer
        # @param StartDate: 开始日期，格式yyyy-MM-dd
        # @type StartDate: String
        # @param EndDate: 结束日期，格式yyyy-MM-dd
        # @type EndDate: String

        attr_accessor :CompanyId, :ShopId, :ZoneId, :StartDate, :EndDate
        
        def initialize(companyid=nil, shopid=nil, zoneid=nil, startdate=nil, enddate=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @ZoneId = zoneid
          @StartDate = startdate
          @EndDate = enddate
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @ZoneId = params['ZoneId']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
        end
      end

      # DescribeZoneFlowAgeInfoByZoneId返回参数结构体
      class DescribeZoneFlowAgeInfoByZoneIdResponse < TencentCloud::Common::AbstractModel
        # @param CompanyId: 集团ID
        # @type CompanyId: String
        # @param ShopId: 店铺ID
        # @type ShopId: Integer
        # @param ZoneId: 区域ID
        # @type ZoneId: Integer
        # @param ZoneName: 区域名称
        # @type ZoneName: String
        # @param Data: 当前年龄段占比
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CompanyId, :ShopId, :ZoneId, :ZoneName, :Data, :RequestId
        
        def initialize(companyid=nil, shopid=nil, zoneid=nil, zonename=nil, data=nil, requestid=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @ZoneId = zoneid
          @ZoneName = zonename
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeZoneFlowAndStayTime请求参数结构体
      class DescribeZoneFlowAndStayTimeRequest < TencentCloud::Common::AbstractModel
        # @param CompanyId: 集团ID
        # @type CompanyId: String
        # @param ShopId: 店铺ID
        # @type ShopId: Integer
        # @param StartDate: 开始日期，格式yyyy-MM-dd
        # @type StartDate: String
        # @param EndDate: 结束日期，格式yyyy-MM-dd
        # @type EndDate: String

        attr_accessor :CompanyId, :ShopId, :StartDate, :EndDate
        
        def initialize(companyid=nil, shopid=nil, startdate=nil, enddate=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @StartDate = startdate
          @EndDate = enddate
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
        end
      end

      # DescribeZoneFlowAndStayTime返回参数结构体
      class DescribeZoneFlowAndStayTimeResponse < TencentCloud::Common::AbstractModel
        # @param CompanyId: 集团id
        # @type CompanyId: String
        # @param ShopId: 店铺id
        # @type ShopId: Integer
        # @param Data: 各区域人流数目和停留时长
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CompanyId, :ShopId, :Data, :RequestId
        
        def initialize(companyid=nil, shopid=nil, data=nil, requestid=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              @Data << ZoneFlowAndAvrStayTime.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeZoneFlowDailyByZoneId请求参数结构体
      class DescribeZoneFlowDailyByZoneIdRequest < TencentCloud::Common::AbstractModel
        # @param CompanyId: 集团ID
        # @type CompanyId: String
        # @param ShopId: 店铺ID
        # @type ShopId: Integer
        # @param ZoneId: 区域ID
        # @type ZoneId: Integer
        # @param StartDate: 开始日期，格式yyyy-MM-dd
        # @type StartDate: String
        # @param EndDate: 结束日期，格式yyyy-MM-dd
        # @type EndDate: String

        attr_accessor :CompanyId, :ShopId, :ZoneId, :StartDate, :EndDate
        
        def initialize(companyid=nil, shopid=nil, zoneid=nil, startdate=nil, enddate=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @ZoneId = zoneid
          @StartDate = startdate
          @EndDate = enddate
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @ZoneId = params['ZoneId']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
        end
      end

      # DescribeZoneFlowDailyByZoneId返回参数结构体
      class DescribeZoneFlowDailyByZoneIdResponse < TencentCloud::Common::AbstractModel
        # @param CompanyId: 集团id
        # @type CompanyId: String
        # @param ShopId: 店铺id
        # @type ShopId: Integer
        # @param ZoneId: 区域ID
        # @type ZoneId: Integer
        # @param ZoneName: 区域名称
        # @type ZoneName: String
        # @param Data: 每日人流量
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CompanyId, :ShopId, :ZoneId, :ZoneName, :Data, :RequestId
        
        def initialize(companyid=nil, shopid=nil, zoneid=nil, zonename=nil, data=nil, requestid=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @ZoneId = zoneid
          @ZoneName = zonename
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              @Data << ZoneDayFlow.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeZoneFlowGenderAvrStayTimeByZoneId请求参数结构体
      class DescribeZoneFlowGenderAvrStayTimeByZoneIdRequest < TencentCloud::Common::AbstractModel
        # @param CompanyId: 集团ID
        # @type CompanyId: String
        # @param ShopId: 店铺ID
        # @type ShopId: Integer
        # @param ZoneId: 区域ID
        # @type ZoneId: Integer
        # @param StartDate: 开始日期，格式yyyy-MM-dd
        # @type StartDate: String
        # @param EndDate: 结束日期，格式yyyy-MM-dd
        # @type EndDate: String

        attr_accessor :CompanyId, :ShopId, :ZoneId, :StartDate, :EndDate
        
        def initialize(companyid=nil, shopid=nil, zoneid=nil, startdate=nil, enddate=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @ZoneId = zoneid
          @StartDate = startdate
          @EndDate = enddate
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @ZoneId = params['ZoneId']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
        end
      end

      # DescribeZoneFlowGenderAvrStayTimeByZoneId返回参数结构体
      class DescribeZoneFlowGenderAvrStayTimeByZoneIdResponse < TencentCloud::Common::AbstractModel
        # @param CompanyId: 集团ID
        # @type CompanyId: String
        # @param ShopId: 店铺ID
        # @type ShopId: Integer
        # @param ZoneId: 区域ID
        # @type ZoneId: Integer
        # @param ZoneName: 区域名称
        # @type ZoneName: String
        # @param Data: 不同年龄段男女停留时间（返回格式为数组，从第 1 个到最后一个数据，年龄段分别为 0-17，18 - 23,  24 - 30, 31 - 40, 41 - 50, 51 - 60, 61 - 100）
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CompanyId, :ShopId, :ZoneId, :ZoneName, :Data, :RequestId
        
        def initialize(companyid=nil, shopid=nil, zoneid=nil, zonename=nil, data=nil, requestid=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @ZoneId = zoneid
          @ZoneName = zonename
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              @Data << ZoneAgeGroupAvrStayTime.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeZoneFlowGenderInfoByZoneId请求参数结构体
      class DescribeZoneFlowGenderInfoByZoneIdRequest < TencentCloud::Common::AbstractModel
        # @param CompanyId: 集团ID
        # @type CompanyId: String
        # @param ShopId: 店铺ID
        # @type ShopId: Integer
        # @param ZoneId: 区域ID
        # @type ZoneId: Integer
        # @param StartDate: 开始日期，格式yyyy-MM-dd
        # @type StartDate: String
        # @param EndDate: 结束日期，格式yyyy-MM-dd
        # @type EndDate: String

        attr_accessor :CompanyId, :ShopId, :ZoneId, :StartDate, :EndDate
        
        def initialize(companyid=nil, shopid=nil, zoneid=nil, startdate=nil, enddate=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @ZoneId = zoneid
          @StartDate = startdate
          @EndDate = enddate
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @ZoneId = params['ZoneId']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
        end
      end

      # DescribeZoneFlowGenderInfoByZoneId返回参数结构体
      class DescribeZoneFlowGenderInfoByZoneIdResponse < TencentCloud::Common::AbstractModel
        # @param CompanyId: 集团ID
        # @type CompanyId: String
        # @param ShopId: 店铺ID
        # @type ShopId: Integer
        # @param ZoneId: 区域ID
        # @type ZoneId: Integer
        # @param ZoneName: 区域名称
        # @type ZoneName: String
        # @param MalePercent: 男性占比
        # @type MalePercent: Float
        # @param FemalePercent: 女性占比
        # @type FemalePercent: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CompanyId, :ShopId, :ZoneId, :ZoneName, :MalePercent, :FemalePercent, :RequestId
        
        def initialize(companyid=nil, shopid=nil, zoneid=nil, zonename=nil, malepercent=nil, femalepercent=nil, requestid=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @ZoneId = zoneid
          @ZoneName = zonename
          @MalePercent = malepercent
          @FemalePercent = femalepercent
          @RequestId = requestid
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @MalePercent = params['MalePercent']
          @FemalePercent = params['FemalePercent']
          @RequestId = params['RequestId']
        end
      end

      # DescribeZoneFlowHourlyByZoneId请求参数结构体
      class DescribeZoneFlowHourlyByZoneIdRequest < TencentCloud::Common::AbstractModel
        # @param CompanyId: 集团ID
        # @type CompanyId: String
        # @param ShopId: 店铺ID
        # @type ShopId: Integer
        # @param ZoneId: 区域ID
        # @type ZoneId: Integer
        # @param StartDate: 开始日期，格式yyyy-MM-dd
        # @type StartDate: String
        # @param EndDate: 结束日期，格式yyyy-MM-dd
        # @type EndDate: String

        attr_accessor :CompanyId, :ShopId, :ZoneId, :StartDate, :EndDate
        
        def initialize(companyid=nil, shopid=nil, zoneid=nil, startdate=nil, enddate=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @ZoneId = zoneid
          @StartDate = startdate
          @EndDate = enddate
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @ZoneId = params['ZoneId']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
        end
      end

      # DescribeZoneFlowHourlyByZoneId返回参数结构体
      class DescribeZoneFlowHourlyByZoneIdResponse < TencentCloud::Common::AbstractModel
        # @param CompanyId: 集团ID
        # @type CompanyId: String
        # @param ShopId: 店铺ID
        # @type ShopId: Integer
        # @param ZoneId: 区域ID
        # @type ZoneId: Integer
        # @param ZoneName: 区域名称
        # @type ZoneName: String
        # @param Data: 各个分时人流量
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CompanyId, :ShopId, :ZoneId, :ZoneName, :Data, :RequestId
        
        def initialize(companyid=nil, shopid=nil, zoneid=nil, zonename=nil, data=nil, requestid=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @ZoneId = zoneid
          @ZoneName = zonename
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              @Data << ZoneHourFlow.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeZoneTrafficInfo请求参数结构体
      class DescribeZoneTrafficInfoRequest < TencentCloud::Common::AbstractModel
        # @param CompanyId: 公司ID
        # @type CompanyId: String
        # @param ShopId: 店铺ID
        # @type ShopId: Integer
        # @param StartDate: 开始日期，格式yyyy-MM-dd
        # @type StartDate: String
        # @param EndDate: 结束日期，格式yyyy-MM-dd
        # @type EndDate: String
        # @param Offset: 偏移量：分页控制参数，第一页传0，第n页Offset=(n-1)*Limit
        # @type Offset: Integer
        # @param Limit: Limit:每页的数据项，最大100，超过100会被强制指定为100
        # @type Limit: Integer

        attr_accessor :CompanyId, :ShopId, :StartDate, :EndDate, :Offset, :Limit
        
        def initialize(companyid=nil, shopid=nil, startdate=nil, enddate=nil, offset=nil, limit=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @StartDate = startdate
          @EndDate = enddate
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeZoneTrafficInfo返回参数结构体
      class DescribeZoneTrafficInfoResponse < TencentCloud::Common::AbstractModel
        # @param CompanyId: 公司ID
        # @type CompanyId: String
        # @param ShopId: 门店ID
        # @type ShopId: Integer
        # @param TotalCount: 查询结果总数
        # @type TotalCount: Integer
        # @param ZoneTrafficInfoSet: 区域客流信息列表
        # @type ZoneTrafficInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CompanyId, :ShopId, :TotalCount, :ZoneTrafficInfoSet, :RequestId
        
        def initialize(companyid=nil, shopid=nil, totalcount=nil, zonetrafficinfoset=nil, requestid=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @TotalCount = totalcount
          @ZoneTrafficInfoSet = zonetrafficinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @TotalCount = params['TotalCount']
          unless params['ZoneTrafficInfoSet'].nil?
            @ZoneTrafficInfoSet = []
            params['ZoneTrafficInfoSet'].each do |i|
              @ZoneTrafficInfoSet << ZoneTrafficInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 性别年龄分组下的客流信息
      class GenderAgeTrafficDetail < TencentCloud::Common::AbstractModel
        # @param Gender: 性别: 0男1女
        # @type Gender: Integer
        # @param AgeGap: 年龄区间，枚举值：0-17、18-23、24-30、31-40、41-50、51-60、>60
        # @type AgeGap: String
        # @param TrafficCount: 客流量
        # @type TrafficCount: Integer

        attr_accessor :Gender, :AgeGap, :TrafficCount
        
        def initialize(gender=nil, agegap=nil, trafficcount=nil)
          @Gender = gender
          @AgeGap = agegap
          @TrafficCount = trafficcount
        end

        def deserialize(params)
          @Gender = params['Gender']
          @AgeGap = params['AgeGap']
          @TrafficCount = params['TrafficCount']
        end
      end

      # 分时客流量详细信息
      class HourTrafficInfoDetail < TencentCloud::Common::AbstractModel
        # @param Hour: 小时 取值为：0，1，2，3，4，5，6，7，8，9，10，11，12，13，14，15，16，17，18，19，20，21，22，23
        # @type Hour: Integer
        # @param HourTrafficTotalCount: 分时客流量
        # @type HourTrafficTotalCount: Integer

        attr_accessor :Hour, :HourTrafficTotalCount
        
        def initialize(hour=nil, hourtraffictotalcount=nil)
          @Hour = hour
          @HourTrafficTotalCount = hourtraffictotalcount
        end

        def deserialize(params)
          @Hour = params['Hour']
          @HourTrafficTotalCount = params['HourTrafficTotalCount']
        end
      end

      # ModifyPersonFeatureInfo请求参数结构体
      class ModifyPersonFeatureInfoRequest < TencentCloud::Common::AbstractModel
        # @param CompanyId: 集团ID
        # @type CompanyId: String
        # @param PersonId: 需要修改的顾客id
        # @type PersonId: Integer
        # @param Picture: 图片BASE编码
        # @type Picture: String
        # @param PictureName: 图片名称（尽量不要重复）
        # @type PictureName: String
        # @param PersonType: 人物类型，仅能操作黑白名单顾客（1 白名单，2 表示黑名单，101表示集团白名单，102表示集团黑名单）
        # @type PersonType: Integer
        # @param ShopId: 店铺ID，如果不填表示操作集团身份库
        # @type ShopId: Integer

        attr_accessor :CompanyId, :PersonId, :Picture, :PictureName, :PersonType, :ShopId
        
        def initialize(companyid=nil, personid=nil, picture=nil, picturename=nil, persontype=nil, shopid=nil)
          @CompanyId = companyid
          @PersonId = personid
          @Picture = picture
          @PictureName = picturename
          @PersonType = persontype
          @ShopId = shopid
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @PersonId = params['PersonId']
          @Picture = params['Picture']
          @PictureName = params['PictureName']
          @PersonType = params['PersonType']
          @ShopId = params['ShopId']
        end
      end

      # ModifyPersonFeatureInfo返回参数结构体
      class ModifyPersonFeatureInfoResponse < TencentCloud::Common::AbstractModel
        # @param CompanyId: 集团ID
        # @type CompanyId: String
        # @param ShopId: 店铺ID，如果不填表示操作集团身份库
        # @type ShopId: Integer
        # @param PersonId: 请求的顾客id
        # @type PersonId: Integer
        # @param PersonIdBind: 图片实际绑定person_id，可能与请求的person_id不同，以此id为准
        # @type PersonIdBind: Integer
        # @param PersonType: 请求的顾客类型
        # @type PersonType: Integer
        # @param SimilarPersonIds: 与请求的person_id类型相同、与请求图片特征相似的一个或多个person_id，需要额外确认这些id是否是同一个人
        # @type SimilarPersonIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CompanyId, :ShopId, :PersonId, :PersonIdBind, :PersonType, :SimilarPersonIds, :RequestId
        
        def initialize(companyid=nil, shopid=nil, personid=nil, personidbind=nil, persontype=nil, similarpersonids=nil, requestid=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @PersonId = personid
          @PersonIdBind = personidbind
          @PersonType = persontype
          @SimilarPersonIds = similarpersonids
          @RequestId = requestid
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @PersonId = params['PersonId']
          @PersonIdBind = params['PersonIdBind']
          @PersonType = params['PersonType']
          @SimilarPersonIds = params['SimilarPersonIds']
          @RequestId = params['RequestId']
        end
      end

      # ModifyPersonTagInfo请求参数结构体
      class ModifyPersonTagInfoRequest < TencentCloud::Common::AbstractModel
        # @param CompanyId: 优mall集团id，通过"指定身份标识获取客户门店列表"接口获取
        # @type CompanyId: String
        # @param ShopId: 优mall店铺id，通过"指定身份标识获取客户门店列表"接口获取，为0则拉取集团全部店铺当前
        # @type ShopId: Integer
        # @param Tags: 需要设置的顾客信息，批量设置最大为10个
        # @type Tags: Array

        attr_accessor :CompanyId, :ShopId, :Tags
        
        def initialize(companyid=nil, shopid=nil, tags=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @Tags = tags
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              @Tags << PersonTagInfo.new.deserialize(i)
            end
          end
        end
      end

      # ModifyPersonTagInfo返回参数结构体
      class ModifyPersonTagInfoResponse < TencentCloud::Common::AbstractModel
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

      # ModifyPersonType请求参数结构体
      class ModifyPersonTypeRequest < TencentCloud::Common::AbstractModel
        # @param CompanyId: 集团ID
        # @type CompanyId: String
        # @param ShopId: 门店ID
        # @type ShopId: Integer
        # @param PersonId: 顾客ID
        # @type PersonId: Integer
        # @param PersonType: 身份类型(0表示普通顾客，1 白名单，2 表示黑名单）
        # @type PersonType: Integer
        # @param PersonSubType: 身份子类型:
        # PersonType=0时(普通顾客)，0普通顾客
        # PersonType=1时(白名单)，0店员，1商场人员，2其他类型人员，3区域经理，4注册会员，5VIP用户
        # PersonType=2时(黑名单)，0普通黑名单，1小偷)
        # @type PersonSubType: Integer

        attr_accessor :CompanyId, :ShopId, :PersonId, :PersonType, :PersonSubType
        
        def initialize(companyid=nil, shopid=nil, personid=nil, persontype=nil, personsubtype=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @PersonId = personid
          @PersonType = persontype
          @PersonSubType = personsubtype
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @PersonId = params['PersonId']
          @PersonType = params['PersonType']
          @PersonSubType = params['PersonSubType']
        end
      end

      # ModifyPersonType返回参数结构体
      class ModifyPersonTypeResponse < TencentCloud::Common::AbstractModel
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

      # 网络状态
      class NetworkAndShopInfo < TencentCloud::Common::AbstractModel
        # @param CompanyId: 集团id
        # @type CompanyId: String
        # @param ShopId: 店铺id
        # @type ShopId: Integer
        # @param Province: 店铺省份
        # @type Province: String
        # @param City: 店铺城市
        # @type City: String
        # @param ShopName: 店铺名
        # @type ShopName: String
        # @param Upload: 上传带宽，单位Mb/s，-1：未知
        # @type Upload: Float
        # @param Download: 下载带宽，单位Mb/s，-1：未知
        # @type Download: Float
        # @param MinRtt: 最小延迟，单位ms，-1：未知
        # @type MinRtt: Float
        # @param AvgRtt: 平均延迟，单位ms，-1：未知
        # @type AvgRtt: Float
        # @param MaxRtt: 最大延迟，单位ms，-1：未知
        # @type MaxRtt: Float
        # @param MdevRtt: 平均偏差延迟，单位ms，-1：未知
        # @type MdevRtt: Float
        # @param Loss: 丢包率百分比，-1：未知
        # @type Loss: Float
        # @param UpdateTime: 更新时间戳
        # @type UpdateTime: Integer
        # @param Mac: 上报网络状态设备
        # @type Mac: String

        attr_accessor :CompanyId, :ShopId, :Province, :City, :ShopName, :Upload, :Download, :MinRtt, :AvgRtt, :MaxRtt, :MdevRtt, :Loss, :UpdateTime, :Mac
        
        def initialize(companyid=nil, shopid=nil, province=nil, city=nil, shopname=nil, upload=nil, download=nil, minrtt=nil, avgrtt=nil, maxrtt=nil, mdevrtt=nil, loss=nil, updatetime=nil, mac=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @Province = province
          @City = city
          @ShopName = shopname
          @Upload = upload
          @Download = download
          @MinRtt = minrtt
          @AvgRtt = avgrtt
          @MaxRtt = maxrtt
          @MdevRtt = mdevrtt
          @Loss = loss
          @UpdateTime = updatetime
          @Mac = mac
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @Province = params['Province']
          @City = params['City']
          @ShopName = params['ShopName']
          @Upload = params['Upload']
          @Download = params['Download']
          @MinRtt = params['MinRtt']
          @AvgRtt = params['AvgRtt']
          @MaxRtt = params['MaxRtt']
          @MdevRtt = params['MdevRtt']
          @Loss = params['Loss']
          @UpdateTime = params['UpdateTime']
          @Mac = params['Mac']
        end
      end

      # 查询网络状态历史数据输出
      class NetworkHistoryInfo < TencentCloud::Common::AbstractModel
        # @param Count: 总数
        # @type Count: Integer
        # @param CompanyId: 集团id
        # @type CompanyId: String
        # @param ShopId: 店铺id
        # @type ShopId: Integer
        # @param Province: 店铺省份
        # @type Province: String
        # @param City: 店铺城市
        # @type City: String
        # @param ShopName: 店铺名称
        # @type ShopName: String
        # @param Infos: 网络信息
        # @type Infos: Array

        attr_accessor :Count, :CompanyId, :ShopId, :Province, :City, :ShopName, :Infos
        
        def initialize(count=nil, companyid=nil, shopid=nil, province=nil, city=nil, shopname=nil, infos=nil)
          @Count = count
          @CompanyId = companyid
          @ShopId = shopid
          @Province = province
          @City = city
          @ShopName = shopname
          @Infos = infos
        end

        def deserialize(params)
          @Count = params['Count']
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @Province = params['Province']
          @City = params['City']
          @ShopName = params['ShopName']
          unless params['Infos'].nil?
            @Infos = []
            params['Infos'].each do |i|
              @Infos << NetworkInfo.new.deserialize(i)
            end
          end
        end
      end

      # 没有店铺信息的网络状态
      class NetworkInfo < TencentCloud::Common::AbstractModel
        # @param Upload: 上传带宽，单位Mb/s，-1：未知
        # @type Upload: Float
        # @param Download: 下载带宽，单位Mb/s，-1：未知
        # @type Download: Float
        # @param MinRtt: 最小延迟，单位ms，-1：未知
        # @type MinRtt: Float
        # @param AvgRtt: 平均延迟，单位ms，-1：未知
        # @type AvgRtt: Float
        # @param MaxRtt: 最大延迟，单位ms，-1：未知
        # @type MaxRtt: Float
        # @param MdevRtt: 平均偏差延迟，单位ms，-1：未知
        # @type MdevRtt: Float
        # @param Loss: 丢包率百分比，-1：未知
        # @type Loss: Float
        # @param UpdateTime: 更新时间戳
        # @type UpdateTime: Integer
        # @param Mac: 上报网络状态设备
        # @type Mac: String

        attr_accessor :Upload, :Download, :MinRtt, :AvgRtt, :MaxRtt, :MdevRtt, :Loss, :UpdateTime, :Mac
        
        def initialize(upload=nil, download=nil, minrtt=nil, avgrtt=nil, maxrtt=nil, mdevrtt=nil, loss=nil, updatetime=nil, mac=nil)
          @Upload = upload
          @Download = download
          @MinRtt = minrtt
          @AvgRtt = avgrtt
          @MaxRtt = maxrtt
          @MdevRtt = mdevrtt
          @Loss = loss
          @UpdateTime = updatetime
          @Mac = mac
        end

        def deserialize(params)
          @Upload = params['Upload']
          @Download = params['Download']
          @MinRtt = params['MinRtt']
          @AvgRtt = params['AvgRtt']
          @MaxRtt = params['MaxRtt']
          @MdevRtt = params['MdevRtt']
          @Loss = params['Loss']
          @UpdateTime = params['UpdateTime']
          @Mac = params['Mac']
        end
      end

      # 获取当前门店最新网络状态数据返回结构
      class NetworkLastInfo < TencentCloud::Common::AbstractModel
        # @param Count: 总数
        # @type Count: Integer
        # @param Infos: 网络状态
        # @type Infos: Array

        attr_accessor :Count, :Infos
        
        def initialize(count=nil, infos=nil)
          @Count = count
          @Infos = infos
        end

        def deserialize(params)
          @Count = params['Count']
          unless params['Infos'].nil?
            @Infos = []
            params['Infos'].each do |i|
              @Infos << NetworkAndShopInfo.new.deserialize(i)
            end
          end
        end
      end

      # 轨迹点坐标
      class PersonCoordinate < TencentCloud::Common::AbstractModel
        # @param CADX: CAD图X坐标
        # @type CADX: Float
        # @param CADY: CAD图Y坐标
        # @type CADY: Float
        # @param CapTime: 抓拍时间点
        # @type CapTime: String
        # @param CapPic: 抓拍图片
        # @type CapPic: String
        # @param MallAreaType: 卖场区域类型
        # @type MallAreaType: Integer
        # @param PosId: 坐标编号
        # @type PosId: Integer
        # @param ShopId: 门店编号
        # @type ShopId: Integer
        # @param Event: 事件
        # @type Event: String

        attr_accessor :CADX, :CADY, :CapTime, :CapPic, :MallAreaType, :PosId, :ShopId, :Event
        
        def initialize(cadx=nil, cady=nil, captime=nil, cappic=nil, mallareatype=nil, posid=nil, shopid=nil, event=nil)
          @CADX = cadx
          @CADY = cady
          @CapTime = captime
          @CapPic = cappic
          @MallAreaType = mallareatype
          @PosId = posid
          @ShopId = shopid
          @Event = event
        end

        def deserialize(params)
          @CADX = params['CADX']
          @CADY = params['CADY']
          @CapTime = params['CapTime']
          @CapPic = params['CapPic']
          @MallAreaType = params['MallAreaType']
          @PosId = params['PosId']
          @ShopId = params['ShopId']
          @Event = params['Event']
        end
      end

      # 用户信息
      class PersonInfo < TencentCloud::Common::AbstractModel
        # @param PersonId: 用户ID
        # @type PersonId: Integer
        # @param PersonPicture: 人脸图片Base64内容，已弃用，返回默认空值
        # @type PersonPicture: String
        # @param Gender: 性别：0男1女
        # @type Gender: Integer
        # @param Age: 年龄
        # @type Age: Integer
        # @param PersonType: 身份类型（0表示普通顾客，1 白名单，2 表示黑名单）
        # @type PersonType: Integer
        # @param PersonPictureUrl: 人脸图片Url，在有效期内可以访问下载
        # @type PersonPictureUrl: String
        # @param PersonSubType: 身份子类型:
        # PersonType=0时(普通顾客)，0普通顾客
        # PersonType=1时(白名单)，0店员，1商场人员，2其他类型人员，3区域经理，4注册用户，5VIP用户
        # PersonType=2时(黑名单)，0普通黑名单，1小偷)
        # @type PersonSubType: Integer
        # @param VisitTimes: 到访次数，-1表示未知
        # @type VisitTimes: Integer
        # @param VisitDays: 到访天数，-1表示未知
        # @type VisitDays: Integer

        attr_accessor :PersonId, :PersonPicture, :Gender, :Age, :PersonType, :PersonPictureUrl, :PersonSubType, :VisitTimes, :VisitDays
        
        def initialize(personid=nil, personpicture=nil, gender=nil, age=nil, persontype=nil, personpictureurl=nil, personsubtype=nil, visittimes=nil, visitdays=nil)
          @PersonId = personid
          @PersonPicture = personpicture
          @Gender = gender
          @Age = age
          @PersonType = persontype
          @PersonPictureUrl = personpictureurl
          @PersonSubType = personsubtype
          @VisitTimes = visittimes
          @VisitDays = visitdays
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @PersonPicture = params['PersonPicture']
          @Gender = params['Gender']
          @Age = params['Age']
          @PersonType = params['PersonType']
          @PersonPictureUrl = params['PersonPictureUrl']
          @PersonSubType = params['PersonSubType']
          @VisitTimes = params['VisitTimes']
          @VisitDays = params['VisitDays']
        end
      end

      # 来访客人基本资料
      class PersonProfile < TencentCloud::Common::AbstractModel
        # @param PersonId: 客人编码
        # @type PersonId: String
        # @param Gender: 性别
        # @type Gender: Integer
        # @param Age: 年龄
        # @type Age: Integer
        # @param FirstArrivedTime: 首次到场时间
        # @type FirstArrivedTime: String
        # @param ArrivedCount: 来访次数
        # @type ArrivedCount: Integer
        # @param PicUrl: 客户图片
        # @type PicUrl: String
        # @param Similarity: 置信度
        # @type Similarity: Float

        attr_accessor :PersonId, :Gender, :Age, :FirstArrivedTime, :ArrivedCount, :PicUrl, :Similarity
        
        def initialize(personid=nil, gender=nil, age=nil, firstarrivedtime=nil, arrivedcount=nil, picurl=nil, similarity=nil)
          @PersonId = personid
          @Gender = gender
          @Age = age
          @FirstArrivedTime = firstarrivedtime
          @ArrivedCount = arrivedcount
          @PicUrl = picurl
          @Similarity = similarity
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @Gender = params['Gender']
          @Age = params['Age']
          @FirstArrivedTime = params['FirstArrivedTime']
          @ArrivedCount = params['ArrivedCount']
          @PicUrl = params['PicUrl']
          @Similarity = params['Similarity']
        end
      end

      # 修改顾客属性参数
      class PersonTagInfo < TencentCloud::Common::AbstractModel
        # @param OldType: 顾客原类型
        # @type OldType: Integer
        # @param NewType: 顾客新类型
        # @type NewType: Integer
        # @param PersonId: 顾客face id
        # @type PersonId: Integer

        attr_accessor :OldType, :NewType, :PersonId
        
        def initialize(oldtype=nil, newtype=nil, personid=nil)
          @OldType = oldtype
          @NewType = newtype
          @PersonId = personid
        end

        def deserialize(params)
          @OldType = params['OldType']
          @NewType = params['NewType']
          @PersonId = params['PersonId']
        end
      end

      # 客户轨迹点
      class PersonTracePoint < TencentCloud::Common::AbstractModel
        # @param MallAreaId: 卖场区域编码
        # @type MallAreaId: Integer
        # @param ShopId: 门店编码
        # @type ShopId: Integer
        # @param MallAreaType: 卖场区域类型
        # @type MallAreaType: Integer
        # @param TraceEventType: 轨迹事件
        # @type TraceEventType: Integer
        # @param TraceEventTime: 轨迹事件发生时间点
        # @type TraceEventTime: String
        # @param CapPic: 抓拍图片
        # @type CapPic: String
        # @param ShoppingBagType: 购物袋类型
        # @type ShoppingBagType: Integer
        # @param ShoppingBagCount: 购物袋数量
        # @type ShoppingBagCount: Integer

        attr_accessor :MallAreaId, :ShopId, :MallAreaType, :TraceEventType, :TraceEventTime, :CapPic, :ShoppingBagType, :ShoppingBagCount
        
        def initialize(mallareaid=nil, shopid=nil, mallareatype=nil, traceeventtype=nil, traceeventtime=nil, cappic=nil, shoppingbagtype=nil, shoppingbagcount=nil)
          @MallAreaId = mallareaid
          @ShopId = shopid
          @MallAreaType = mallareatype
          @TraceEventType = traceeventtype
          @TraceEventTime = traceeventtime
          @CapPic = cappic
          @ShoppingBagType = shoppingbagtype
          @ShoppingBagCount = shoppingbagcount
        end

        def deserialize(params)
          @MallAreaId = params['MallAreaId']
          @ShopId = params['ShopId']
          @MallAreaType = params['MallAreaType']
          @TraceEventType = params['TraceEventType']
          @TraceEventTime = params['TraceEventTime']
          @CapPic = params['CapPic']
          @ShoppingBagType = params['ShoppingBagType']
          @ShoppingBagCount = params['ShoppingBagCount']
        end
      end

      # 客户轨迹序列
      class PersonTraceRoute < TencentCloud::Common::AbstractModel
        # @param TraceId: 轨迹编码
        # @type TraceId: String
        # @param TracePointSet: 轨迹点序列
        # @type TracePointSet: Array

        attr_accessor :TraceId, :TracePointSet
        
        def initialize(traceid=nil, tracepointset=nil)
          @TraceId = traceid
          @TracePointSet = tracepointset
        end

        def deserialize(params)
          @TraceId = params['TraceId']
          unless params['TracePointSet'].nil?
            @TracePointSet = []
            params['TracePointSet'].each do |i|
              @TracePointSet << PersonTracePoint.new.deserialize(i)
            end
          end
        end
      end

      # 用户到访明细
      class PersonVisitInfo < TencentCloud::Common::AbstractModel
        # @param PersonId: 用户ID
        # @type PersonId: Integer
        # @param VisitId: 用户到访ID
        # @type VisitId: Integer
        # @param InTime: 到访时间：Unix时间戳
        # @type InTime: Integer
        # @param CapturedPicture: 抓拍到的头像Base64内容，已弃用，返回默认空值
        # @type CapturedPicture: String
        # @param MaskType: 口罩类型：0不戴口罩，1戴口罩
        # @type MaskType: Integer
        # @param GlassType: 眼镜类型：0不戴眼镜，1普通眼镜 , 2墨镜
        # @type GlassType: Integer
        # @param HairType: 发型：0 短发,  1长发
        # @type HairType: Integer
        # @param CapturedPictureUrl: 抓拍到的头像Url，在有效期内可以访问下载
        # @type CapturedPictureUrl: String
        # @param SceneInfo: 抓拍头像的场景图信息
        # @type SceneInfo: :class:`Tencentcloud::Youmall.v20180228.models.SceneInfo`

        attr_accessor :PersonId, :VisitId, :InTime, :CapturedPicture, :MaskType, :GlassType, :HairType, :CapturedPictureUrl, :SceneInfo
        
        def initialize(personid=nil, visitid=nil, intime=nil, capturedpicture=nil, masktype=nil, glasstype=nil, hairtype=nil, capturedpictureurl=nil, sceneinfo=nil)
          @PersonId = personid
          @VisitId = visitid
          @InTime = intime
          @CapturedPicture = capturedpicture
          @MaskType = masktype
          @GlassType = glasstype
          @HairType = hairtype
          @CapturedPictureUrl = capturedpictureurl
          @SceneInfo = sceneinfo
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @VisitId = params['VisitId']
          @InTime = params['InTime']
          @CapturedPicture = params['CapturedPicture']
          @MaskType = params['MaskType']
          @GlassType = params['GlassType']
          @HairType = params['HairType']
          @CapturedPictureUrl = params['CapturedPictureUrl']
          unless params['SceneInfo'].nil?
            @SceneInfo = SceneInfo.new.deserialize(params['SceneInfo'])
          end
        end
      end

      # RegisterCallback请求参数结构体
      class RegisterCallbackRequest < TencentCloud::Common::AbstractModel
        # @param CompanyId: 集团id，通过"指定身份标识获取客户门店列表"接口获取
        # @type CompanyId: String
        # @param BackUrl: 通知回调地址，完整url，示例（http://youmall.tencentcloudapi.com/）
        # @type BackUrl: String
        # @param Time: 请求时间戳
        # @type Time: Integer
        # @param NeedFacePic: 是否需要顾客图片，1-需要图片，其它-不需要图片
        # @type NeedFacePic: Integer

        attr_accessor :CompanyId, :BackUrl, :Time, :NeedFacePic
        
        def initialize(companyid=nil, backurl=nil, time=nil, needfacepic=nil)
          @CompanyId = companyid
          @BackUrl = backurl
          @Time = time
          @NeedFacePic = needfacepic
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @BackUrl = params['BackUrl']
          @Time = params['Time']
          @NeedFacePic = params['NeedFacePic']
        end
      end

      # RegisterCallback返回参数结构体
      class RegisterCallbackResponse < TencentCloud::Common::AbstractModel
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

      # 场景图信息
      class SceneInfo < TencentCloud::Common::AbstractModel
        # @param ScenePictureURL: 场景图
        # @type ScenePictureURL: String
        # @param HeadX: 抓拍头像左上角X坐标在场景图中的像素点位置
        # @type HeadX: Integer
        # @param HeadY: 抓拍头像左上角Y坐标在场景图中的像素点位置
        # @type HeadY: Integer
        # @param HeadWidth: 抓拍头像在场景图中占有的像素宽度
        # @type HeadWidth: Integer
        # @param HeadHeight: 抓拍头像在场景图中占有的像素高度
        # @type HeadHeight: Integer

        attr_accessor :ScenePictureURL, :HeadX, :HeadY, :HeadWidth, :HeadHeight
        
        def initialize(scenepictureurl=nil, headx=nil, heady=nil, headwidth=nil, headheight=nil)
          @ScenePictureURL = scenepictureurl
          @HeadX = headx
          @HeadY = heady
          @HeadWidth = headwidth
          @HeadHeight = headheight
        end

        def deserialize(params)
          @ScenePictureURL = params['ScenePictureURL']
          @HeadX = params['HeadX']
          @HeadY = params['HeadY']
          @HeadWidth = params['HeadWidth']
          @HeadHeight = params['HeadHeight']
        end
      end

      # 门店客流量列表信息
      class ShopDayTrafficInfo < TencentCloud::Common::AbstractModel
        # @param Date: 日期
        # @type Date: String
        # @param DayTrafficTotalCount: 客流量
        # @type DayTrafficTotalCount: Integer
        # @param GenderAgeTrafficDetailSet: 性别年龄分组下的客流信息
        # @type GenderAgeTrafficDetailSet: Array

        attr_accessor :Date, :DayTrafficTotalCount, :GenderAgeTrafficDetailSet
        
        def initialize(date=nil, daytraffictotalcount=nil, genderagetrafficdetailset=nil)
          @Date = date
          @DayTrafficTotalCount = daytraffictotalcount
          @GenderAgeTrafficDetailSet = genderagetrafficdetailset
        end

        def deserialize(params)
          @Date = params['Date']
          @DayTrafficTotalCount = params['DayTrafficTotalCount']
          unless params['GenderAgeTrafficDetailSet'].nil?
            @GenderAgeTrafficDetailSet = []
            params['GenderAgeTrafficDetailSet'].each do |i|
              @GenderAgeTrafficDetailSet << GenderAgeTrafficDetail.new.deserialize(i)
            end
          end
        end
      end

      # 分时客流量信息
      class ShopHourTrafficInfo < TencentCloud::Common::AbstractModel
        # @param Date: 日期，格式yyyy-MM-dd
        # @type Date: String
        # @param HourTrafficInfoDetailSet: 分时客流详细信息
        # @type HourTrafficInfoDetailSet: Array

        attr_accessor :Date, :HourTrafficInfoDetailSet
        
        def initialize(date=nil, hourtrafficinfodetailset=nil)
          @Date = date
          @HourTrafficInfoDetailSet = hourtrafficinfodetailset
        end

        def deserialize(params)
          @Date = params['Date']
          unless params['HourTrafficInfoDetailSet'].nil?
            @HourTrafficInfoDetailSet = []
            params['HourTrafficInfoDetailSet'].each do |i|
              @HourTrafficInfoDetailSet << HourTrafficInfoDetail.new.deserialize(i)
            end
          end
        end
      end

      # 客户所属的门店信息
      class ShopInfo < TencentCloud::Common::AbstractModel
        # @param CompanyId: 公司ID
        # @type CompanyId: String
        # @param ShopId: 门店ID
        # @type ShopId: Integer
        # @param ShopName: 门店名称
        # @type ShopName: String
        # @param ShopCode: 客户门店编码
        # @type ShopCode: String
        # @param Province: 省
        # @type Province: String
        # @param City: 市
        # @type City: String
        # @param CompanyName: 公司名称
        # @type CompanyName: String

        attr_accessor :CompanyId, :ShopId, :ShopName, :ShopCode, :Province, :City, :CompanyName
        
        def initialize(companyid=nil, shopid=nil, shopname=nil, shopcode=nil, province=nil, city=nil, companyname=nil)
          @CompanyId = companyid
          @ShopId = shopid
          @ShopName = shopname
          @ShopCode = shopcode
          @Province = province
          @City = city
          @CompanyName = companyname
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @ShopId = params['ShopId']
          @ShopName = params['ShopName']
          @ShopCode = params['ShopCode']
          @Province = params['Province']
          @City = params['City']
          @CompanyName = params['CompanyName']
        end
      end

      # 轨迹动线信息子结构
      class TrajectorySunData < TencentCloud::Common::AbstractModel
        # @param Zones: 区域动线，形如 x-x-x-x-x，其中 x 为区域 ID
        # @type Zones: String
        # @param Count: 该动线出现次数
        # @type Count: Integer
        # @param AvgStayTime: 该动线平均停留时间（秒）
        # @type AvgStayTime: Integer

        attr_accessor :Zones, :Count, :AvgStayTime
        
        def initialize(zones=nil, count=nil, avgstaytime=nil)
          @Zones = zones
          @Count = count
          @AvgStayTime = avgstaytime
        end

        def deserialize(params)
          @Zones = params['Zones']
          @Count = params['Count']
          @AvgStayTime = params['AvgStayTime']
        end
      end

      # 区域性别平均停留时间子结构
      class ZoneAgeGroupAvrStayTime < TencentCloud::Common::AbstractModel
        # @param MaleAvrStayTime: 男性平均停留时间
        # @type MaleAvrStayTime: Float
        # @param FemaleAvrStayTime: 女性平均停留时间
        # @type FemaleAvrStayTime: Float

        attr_accessor :MaleAvrStayTime, :FemaleAvrStayTime
        
        def initialize(maleavrstaytime=nil, femaleavrstaytime=nil)
          @MaleAvrStayTime = maleavrstaytime
          @FemaleAvrStayTime = femaleavrstaytime
        end

        def deserialize(params)
          @MaleAvrStayTime = params['MaleAvrStayTime']
          @FemaleAvrStayTime = params['FemaleAvrStayTime']
        end
      end

      # 每日客流统计子结构
      class ZoneDayFlow < TencentCloud::Common::AbstractModel
        # @param Day: 日期，如 2018-08-6
        # @type Day: String
        # @param FlowCount: 客流量
        # @type FlowCount: Integer

        attr_accessor :Day, :FlowCount
        
        def initialize(day=nil, flowcount=nil)
          @Day = day
          @FlowCount = flowcount
        end

        def deserialize(params)
          @Day = params['Day']
          @FlowCount = params['FlowCount']
        end
      end

      # 客流停留统计子结构
      class ZoneFlowAndAvrStayTime < TencentCloud::Common::AbstractModel
        # @param ZoneId: 区域id
        # @type ZoneId: Integer
        # @param ZoneName: 区域名称
        # @type ZoneName: String
        # @param FlowCount: 人流量
        # @type FlowCount: Integer
        # @param AvrStayTime: 平均停留时长
        # @type AvrStayTime: Integer

        attr_accessor :ZoneId, :ZoneName, :FlowCount, :AvrStayTime
        
        def initialize(zoneid=nil, zonename=nil, flowcount=nil, avrstaytime=nil)
          @ZoneId = zoneid
          @ZoneName = zonename
          @FlowCount = flowcount
          @AvrStayTime = avrstaytime
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @FlowCount = params['FlowCount']
          @AvrStayTime = params['AvrStayTime']
        end
      end

      # 客流统计分时数据子结构
      class ZoneHourFlow < TencentCloud::Common::AbstractModel
        # @param Hour: 分时 0~23
        # @type Hour: Integer
        # @param FlowCount: 客流量
        # @type FlowCount: Integer

        attr_accessor :Hour, :FlowCount
        
        def initialize(hour=nil, flowcount=nil)
          @Hour = hour
          @FlowCount = flowcount
        end

        def deserialize(params)
          @Hour = params['Hour']
          @FlowCount = params['FlowCount']
        end
      end

      # 门店区域客流信息
      class ZoneTrafficInfo < TencentCloud::Common::AbstractModel
        # @param Date: 日期
        # @type Date: String
        # @param ZoneTrafficInfoDetailSet: 门店区域客流详细信息
        # @type ZoneTrafficInfoDetailSet: Array

        attr_accessor :Date, :ZoneTrafficInfoDetailSet
        
        def initialize(date=nil, zonetrafficinfodetailset=nil)
          @Date = date
          @ZoneTrafficInfoDetailSet = zonetrafficinfodetailset
        end

        def deserialize(params)
          @Date = params['Date']
          unless params['ZoneTrafficInfoDetailSet'].nil?
            @ZoneTrafficInfoDetailSet = []
            params['ZoneTrafficInfoDetailSet'].each do |i|
              @ZoneTrafficInfoDetailSet << ZoneTrafficInfoDetail.new.deserialize(i)
            end
          end
        end
      end

      # 门店区域客流详细信息
      class ZoneTrafficInfoDetail < TencentCloud::Common::AbstractModel
        # @param ZoneId: 区域ID
        # @type ZoneId: Integer
        # @param ZoneName: 区域名称
        # @type ZoneName: String
        # @param TrafficTotalCount: 客流量
        # @type TrafficTotalCount: Integer
        # @param AvgStayTime: 平均停留时间
        # @type AvgStayTime: Integer

        attr_accessor :ZoneId, :ZoneName, :TrafficTotalCount, :AvgStayTime
        
        def initialize(zoneid=nil, zonename=nil, traffictotalcount=nil, avgstaytime=nil)
          @ZoneId = zoneid
          @ZoneName = zonename
          @TrafficTotalCount = traffictotalcount
          @AvgStayTime = avgstaytime
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @TrafficTotalCount = params['TrafficTotalCount']
          @AvgStayTime = params['AvgStayTime']
        end
      end

    end
  end
end

