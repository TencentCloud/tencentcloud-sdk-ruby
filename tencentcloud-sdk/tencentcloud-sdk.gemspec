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

Gem::Specification.new do |spec|
  spec.name          = 'tencentcloud-sdk'
  spec.version       = File.read(File.expand_path('lib/VERSION', __dir__)).strip
  spec.summary       = 'Tencent Cloud SDK for Ruby'
  spec.description   = 'Tencent Cloud Ruby SDK is the official software development kit, which allows Ruby developers to write software that makes use of Tencent Cloud service.'
  spec.author        = 'Tencent Cloud'
  spec.homepage      = 'https://github.com/TencentCloud/tencentcloud-sdk-ruby'
  spec.license       = 'Apache-2.0'
  spec.email         = ['tencentcloudapi@tencent.com']
  spec.require_paths = ['lib']
  spec.files         = Dir['lib/**/*.rb', 'lib/VERSION']

  spec.add_dependency('tencentcloud-sdk-nlp', '~> 3')
  spec.add_dependency('tencentcloud-sdk-iai', '~> 3')
  spec.add_dependency('tencentcloud-sdk-iotcloud', '~> 3')
  spec.add_dependency('tencentcloud-sdk-rp', '~> 3')
  spec.add_dependency('tencentcloud-sdk-tiw', '~> 3')
  spec.add_dependency('tencentcloud-sdk-mps', '~> 3')
  spec.add_dependency('tencentcloud-sdk-ft', '~> 3')
  spec.add_dependency('tencentcloud-sdk-youmall', '~> 3')
  spec.add_dependency('tencentcloud-sdk-vod', '~> 3')
  spec.add_dependency('tencentcloud-sdk-aai', '~> 3')
  spec.add_dependency('tencentcloud-sdk-ssl', '~> 3')
  spec.add_dependency('tencentcloud-sdk-cme', '~> 3')
  spec.add_dependency('tencentcloud-sdk-tbm', '~> 3')
  spec.add_dependency('tencentcloud-sdk-bri', '~> 3')
  spec.add_dependency('tencentcloud-sdk-ame', '~> 3')
  spec.add_dependency('tencentcloud-sdk-cis', '~> 3')
  spec.add_dependency('tencentcloud-sdk-smpn', '~> 3')
  spec.add_dependency('tencentcloud-sdk-kms', '~> 3')
  spec.add_dependency('tencentcloud-sdk-cpdp', '~> 3')
  spec.add_dependency('tencentcloud-sdk-cat', '~> 3')
  spec.add_dependency('tencentcloud-sdk-as', '~> 3')
  spec.add_dependency('tencentcloud-sdk-aa', '~> 3')
  spec.add_dependency('tencentcloud-sdk-mvj', '~> 3')
  spec.add_dependency('tencentcloud-sdk-ocr', '~> 3')
  spec.add_dependency('tencentcloud-sdk-cim', '~> 3')
  spec.add_dependency('tencentcloud-sdk-ssm', '~> 3')
  spec.add_dependency('tencentcloud-sdk-dc', '~> 3')
  spec.add_dependency('tencentcloud-sdk-partners', '~> 3')
  spec.add_dependency('tencentcloud-sdk-mongodb', '~> 3')
  spec.add_dependency('tencentcloud-sdk-fmu', '~> 3')
  spec.add_dependency('tencentcloud-sdk-cds', '~> 3')
  spec.add_dependency('tencentcloud-sdk-iotexplorer', '~> 3')
  spec.add_dependency('tencentcloud-sdk-tcaplusdb', '~> 3')
  spec.add_dependency('tencentcloud-sdk-dcdb', '~> 3')
  spec.add_dependency('tencentcloud-sdk-batch', '~> 3')
  spec.add_dependency('tencentcloud-sdk-apigateway', '~> 3')
  spec.add_dependency('tencentcloud-sdk-yunsou', '~> 3')
  spec.add_dependency('tencentcloud-sdk-soe', '~> 3')
  spec.add_dependency('tencentcloud-sdk-tcr', '~> 3')
  spec.add_dependency('tencentcloud-sdk-tics', '~> 3')
  spec.add_dependency('tencentcloud-sdk-postgres', '~> 3')
  spec.add_dependency('tencentcloud-sdk-gme', '~> 3')
  spec.add_dependency('tencentcloud-sdk-tbaas', '~> 3')
  spec.add_dependency('tencentcloud-sdk-drm', '~> 3')
  spec.add_dependency('tencentcloud-sdk-bizlive', '~> 3')
  spec.add_dependency('tencentcloud-sdk-cdn', '~> 3')
  spec.add_dependency('tencentcloud-sdk-asr', '~> 3')
  spec.add_dependency('tencentcloud-sdk-solar', '~> 3')
  spec.add_dependency('tencentcloud-sdk-tiems', '~> 3')
  spec.add_dependency('tencentcloud-sdk-afc', '~> 3')
  spec.add_dependency('tencentcloud-sdk-iot', '~> 3')
  spec.add_dependency('tencentcloud-sdk-tione', '~> 3')
  spec.add_dependency('tencentcloud-sdk-tsf', '~> 3')
  spec.add_dependency('tencentcloud-sdk-cbs', '~> 3')
  spec.add_dependency('tencentcloud-sdk-yunjing', '~> 3')
  spec.add_dependency('tencentcloud-sdk-sms', '~> 3')
  spec.add_dependency('tencentcloud-sdk-bda', '~> 3')
  spec.add_dependency('tencentcloud-sdk-billing', '~> 3')
  spec.add_dependency('tencentcloud-sdk-ie', '~> 3')
  spec.add_dependency('tencentcloud-sdk-ecdn', '~> 3')
  spec.add_dependency('tencentcloud-sdk-tmt', '~> 3')
  spec.add_dependency('tencentcloud-sdk-ticm', '~> 3')
  spec.add_dependency('tencentcloud-sdk-wss', '~> 3')
  spec.add_dependency('tencentcloud-sdk-bmvpc', '~> 3')
  spec.add_dependency('tencentcloud-sdk-trtc', '~> 3')
  spec.add_dependency('tencentcloud-sdk-dbbrain', '~> 3')
  spec.add_dependency('tencentcloud-sdk-iir', '~> 3')
  spec.add_dependency('tencentcloud-sdk-gs', '~> 3')
  spec.add_dependency('tencentcloud-sdk-tci', '~> 3')
  spec.add_dependency('tencentcloud-sdk-taf', '~> 3')
  spec.add_dependency('tencentcloud-sdk-es', '~> 3')
  spec.add_dependency('tencentcloud-sdk-bm', '~> 3')
  spec.add_dependency('tencentcloud-sdk-cms', '~> 3')
  spec.add_dependency('tencentcloud-sdk-npp', '~> 3')
  spec.add_dependency('tencentcloud-sdk-mariadb', '~> 3')
  spec.add_dependency('tencentcloud-sdk-ds', '~> 3')
  spec.add_dependency('tencentcloud-sdk-chdfs', '~> 3')
  spec.add_dependency('tencentcloud-sdk-cmq', '~> 3')
  spec.add_dependency('tencentcloud-sdk-tcb', '~> 3')
  spec.add_dependency('tencentcloud-sdk-captcha', '~> 3')
  spec.add_dependency('tencentcloud-sdk-memcached', '~> 3')
  spec.add_dependency('tencentcloud-sdk-ms', '~> 3')
  spec.add_dependency('tencentcloud-sdk-tia', '~> 3')
  spec.add_dependency('tencentcloud-sdk-sqlserver', '~> 3')
  spec.add_dependency('tencentcloud-sdk-domain', '~> 3')
  spec.add_dependency('tencentcloud-sdk-redis', '~> 3')
  spec.add_dependency('tencentcloud-sdk-dts', '~> 3')
  spec.add_dependency('tencentcloud-sdk-lp', '~> 3')
  spec.add_dependency('tencentcloud-sdk-tkgdq', '~> 3')
  spec.add_dependency('tencentcloud-sdk-cam', '~> 3')
  spec.add_dependency('tencentcloud-sdk-ecm', '~> 3')
  spec.add_dependency('tencentcloud-sdk-sts', '~> 3')
  spec.add_dependency('tencentcloud-sdk-msp', '~> 3')
  spec.add_dependency('tencentcloud-sdk-tke', '~> 3')
  spec.add_dependency('tencentcloud-sdk-facefusion', '~> 3')
  spec.add_dependency('tencentcloud-sdk-habo', '~> 3')
  spec.add_dependency('tencentcloud-sdk-bmeip', '~> 3')
  spec.add_dependency('tencentcloud-sdk-tdmq', '~> 3')
  spec.add_dependency('tencentcloud-sdk-iottid', '~> 3')
  spec.add_dependency('tencentcloud-sdk-dayu', '~> 3')
  spec.add_dependency('tencentcloud-sdk-cvm', '~> 3')
  spec.add_dependency('tencentcloud-sdk-cloudaudit', '~> 3')
  spec.add_dependency('tencentcloud-sdk-gaap', '~> 3')
  spec.add_dependency('tencentcloud-sdk-tbp', '~> 3')
  spec.add_dependency('tencentcloud-sdk-tav', '~> 3')
  spec.add_dependency('tencentcloud-sdk-gse', '~> 3')
  spec.add_dependency('tencentcloud-sdk-live', '~> 3')
  spec.add_dependency('tencentcloud-sdk-cfs', '~> 3')
  spec.add_dependency('tencentcloud-sdk-cr', '~> 3')
  spec.add_dependency('tencentcloud-sdk-af', '~> 3')
  spec.add_dependency('tencentcloud-sdk-iotvideo', '~> 3')
  spec.add_dependency('tencentcloud-sdk-ic', '~> 3')
  spec.add_dependency('tencentcloud-sdk-tts', '~> 3')
  spec.add_dependency('tencentcloud-sdk-scf', '~> 3')
  spec.add_dependency('tencentcloud-sdk-ckafka', '~> 3')
  spec.add_dependency('tencentcloud-sdk-tag', '~> 3')
  spec.add_dependency('tencentcloud-sdk-ecc', '~> 3')
  spec.add_dependency('tencentcloud-sdk-hcm', '~> 3')
  spec.add_dependency('tencentcloud-sdk-monitor', '~> 3')
  spec.add_dependency('tencentcloud-sdk-faceid', '~> 3')
  spec.add_dependency('tencentcloud-sdk-vpc', '~> 3')
  spec.add_dependency('tencentcloud-sdk-emr', '~> 3')
  spec.add_dependency('tencentcloud-sdk-tiia', '~> 3')
  spec.add_dependency('tencentcloud-sdk-clb', '~> 3')
  spec.add_dependency('tencentcloud-sdk-bmlb', '~> 3')
  spec.add_dependency('tencentcloud-sdk-cdb', '~> 3')
  spec.add_dependency('tencentcloud-sdk-organization', '~> 3')
  spec.add_dependency('tencentcloud-sdk-cloudhsm', '~> 3')
  spec.add_dependency('tencentcloud-sdk-cws', '~> 3')

  spec.metadata = {
    'source_code_uri' => 'https://github.com/TencentCloud/tencentcloud-sdk-ruby/tencentcloud-sdk',
    'changelog_uri' => 'https://github.com/TencentCloud/tencentcloud-sdk-ruby/blob/master/CHANGELOG.md'
  }
end
