# frozen_string_literal: true

# Copyright (c) 2017 Tencent. All Rights Reserved.
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

  spec.add_dependency('tencentcloud-sdk-nlp', '~> 1')
  spec.add_dependency('tencentcloud-sdk-iai', '~> 1')
  spec.add_dependency('tencentcloud-sdk-iotcloud', '~> 1')
  spec.add_dependency('tencentcloud-sdk-rp', '~> 1')
  spec.add_dependency('tencentcloud-sdk-tiw', '~> 1')
  spec.add_dependency('tencentcloud-sdk-mps', '~> 1')
  spec.add_dependency('tencentcloud-sdk-ft', '~> 1')
  spec.add_dependency('tencentcloud-sdk-youmall', '~> 1')
  spec.add_dependency('tencentcloud-sdk-vod', '~> 1')
  spec.add_dependency('tencentcloud-sdk-aai', '~> 1')
  spec.add_dependency('tencentcloud-sdk-ssl', '~> 1')
  spec.add_dependency('tencentcloud-sdk-cme', '~> 1')
  spec.add_dependency('tencentcloud-sdk-tbm', '~> 1')
  spec.add_dependency('tencentcloud-sdk-bri', '~> 1')
  spec.add_dependency('tencentcloud-sdk-ame', '~> 1')
  spec.add_dependency('tencentcloud-sdk-cis', '~> 1')
  spec.add_dependency('tencentcloud-sdk-smpn', '~> 1')
  spec.add_dependency('tencentcloud-sdk-kms', '~> 1')
  spec.add_dependency('tencentcloud-sdk-cpdp', '~> 1')
  spec.add_dependency('tencentcloud-sdk-cat', '~> 1')
  spec.add_dependency('tencentcloud-sdk-as', '~> 1')
  spec.add_dependency('tencentcloud-sdk-aa', '~> 1')
  spec.add_dependency('tencentcloud-sdk-mvj', '~> 1')
  spec.add_dependency('tencentcloud-sdk-ocr', '~> 1')
  spec.add_dependency('tencentcloud-sdk-cim', '~> 1')
  spec.add_dependency('tencentcloud-sdk-ssm', '~> 1')
  spec.add_dependency('tencentcloud-sdk-dc', '~> 1')
  spec.add_dependency('tencentcloud-sdk-partners', '~> 1')
  spec.add_dependency('tencentcloud-sdk-mongodb', '~> 1')
  spec.add_dependency('tencentcloud-sdk-fmu', '~> 1')
  spec.add_dependency('tencentcloud-sdk-cds', '~> 1')
  spec.add_dependency('tencentcloud-sdk-iotexplorer', '~> 1')
  spec.add_dependency('tencentcloud-sdk-tcaplusdb', '~> 1')
  spec.add_dependency('tencentcloud-sdk-dcdb', '~> 1')
  spec.add_dependency('tencentcloud-sdk-batch', '~> 1')
  spec.add_dependency('tencentcloud-sdk-apigateway', '~> 1')
  spec.add_dependency('tencentcloud-sdk-yunsou', '~> 1')
  spec.add_dependency('tencentcloud-sdk-soe', '~> 1')
  spec.add_dependency('tencentcloud-sdk-tcr', '~> 1')
  spec.add_dependency('tencentcloud-sdk-tics', '~> 1')
  spec.add_dependency('tencentcloud-sdk-postgres', '~> 1')
  spec.add_dependency('tencentcloud-sdk-gme', '~> 1')
  spec.add_dependency('tencentcloud-sdk-tbaas', '~> 1')
  spec.add_dependency('tencentcloud-sdk-drm', '~> 1')
  spec.add_dependency('tencentcloud-sdk-bizlive', '~> 1')
  spec.add_dependency('tencentcloud-sdk-cdn', '~> 1')
  spec.add_dependency('tencentcloud-sdk-asr', '~> 1')
  spec.add_dependency('tencentcloud-sdk-solar', '~> 1')
  spec.add_dependency('tencentcloud-sdk-tiems', '~> 1')
  spec.add_dependency('tencentcloud-sdk-afc', '~> 1')
  spec.add_dependency('tencentcloud-sdk-iot', '~> 1')
  spec.add_dependency('tencentcloud-sdk-tione', '~> 1')
  spec.add_dependency('tencentcloud-sdk-tsf', '~> 1')
  spec.add_dependency('tencentcloud-sdk-cbs', '~> 1')
  spec.add_dependency('tencentcloud-sdk-yunjing', '~> 1')
  spec.add_dependency('tencentcloud-sdk-sms', '~> 1')
  spec.add_dependency('tencentcloud-sdk-bda', '~> 1')
  spec.add_dependency('tencentcloud-sdk-billing', '~> 1')
  spec.add_dependency('tencentcloud-sdk-ie', '~> 1')
  spec.add_dependency('tencentcloud-sdk-ecdn', '~> 1')
  spec.add_dependency('tencentcloud-sdk-tmt', '~> 1')
  spec.add_dependency('tencentcloud-sdk-ticm', '~> 1')
  spec.add_dependency('tencentcloud-sdk-wss', '~> 1')
  spec.add_dependency('tencentcloud-sdk-bmvpc', '~> 1')
  spec.add_dependency('tencentcloud-sdk-trtc', '~> 1')
  spec.add_dependency('tencentcloud-sdk-dbbrain', '~> 1')
  spec.add_dependency('tencentcloud-sdk-iir', '~> 1')
  spec.add_dependency('tencentcloud-sdk-gs', '~> 1')
  spec.add_dependency('tencentcloud-sdk-tci', '~> 1')
  spec.add_dependency('tencentcloud-sdk-taf', '~> 1')
  spec.add_dependency('tencentcloud-sdk-es', '~> 1')
  spec.add_dependency('tencentcloud-sdk-bm', '~> 1')
  spec.add_dependency('tencentcloud-sdk-cms', '~> 1')
  spec.add_dependency('tencentcloud-sdk-npp', '~> 1')
  spec.add_dependency('tencentcloud-sdk-mariadb', '~> 1')
  spec.add_dependency('tencentcloud-sdk-ds', '~> 1')
  spec.add_dependency('tencentcloud-sdk-chdfs', '~> 1')
  spec.add_dependency('tencentcloud-sdk-cmq', '~> 1')
  spec.add_dependency('tencentcloud-sdk-tcb', '~> 1')
  spec.add_dependency('tencentcloud-sdk-captcha', '~> 1')
  spec.add_dependency('tencentcloud-sdk-memcached', '~> 1')
  spec.add_dependency('tencentcloud-sdk-ms', '~> 1')
  spec.add_dependency('tencentcloud-sdk-tia', '~> 1')
  spec.add_dependency('tencentcloud-sdk-sqlserver', '~> 1')
  spec.add_dependency('tencentcloud-sdk-domain', '~> 1')
  spec.add_dependency('tencentcloud-sdk-redis', '~> 1')
  spec.add_dependency('tencentcloud-sdk-dts', '~> 1')
  spec.add_dependency('tencentcloud-sdk-lp', '~> 1')
  spec.add_dependency('tencentcloud-sdk-tkgdq', '~> 1')
  spec.add_dependency('tencentcloud-sdk-cam', '~> 1')
  spec.add_dependency('tencentcloud-sdk-ecm', '~> 1')
  spec.add_dependency('tencentcloud-sdk-sts', '~> 1')
  spec.add_dependency('tencentcloud-sdk-msp', '~> 1')
  spec.add_dependency('tencentcloud-sdk-tke', '~> 1')
  spec.add_dependency('tencentcloud-sdk-facefusion', '~> 1')
  spec.add_dependency('tencentcloud-sdk-habo', '~> 1')
  spec.add_dependency('tencentcloud-sdk-bmeip', '~> 1')
  spec.add_dependency('tencentcloud-sdk-tdmq', '~> 1')
  spec.add_dependency('tencentcloud-sdk-iottid', '~> 1')
  spec.add_dependency('tencentcloud-sdk-dayu', '~> 1')
  spec.add_dependency('tencentcloud-sdk-cvm', '~> 1')
  spec.add_dependency('tencentcloud-sdk-cloudaudit', '~> 1')
  spec.add_dependency('tencentcloud-sdk-gaap', '~> 1')
  spec.add_dependency('tencentcloud-sdk-tbp', '~> 1')
  spec.add_dependency('tencentcloud-sdk-tav', '~> 1')
  spec.add_dependency('tencentcloud-sdk-gse', '~> 1')
  spec.add_dependency('tencentcloud-sdk-live', '~> 1')
  spec.add_dependency('tencentcloud-sdk-cfs', '~> 1')
  spec.add_dependency('tencentcloud-sdk-cr', '~> 1')
  spec.add_dependency('tencentcloud-sdk-af', '~> 1')
  spec.add_dependency('tencentcloud-sdk-iotvideo', '~> 1')
  spec.add_dependency('tencentcloud-sdk-ic', '~> 1')
  spec.add_dependency('tencentcloud-sdk-tts', '~> 1')
  spec.add_dependency('tencentcloud-sdk-scf', '~> 1')
  spec.add_dependency('tencentcloud-sdk-ckafka', '~> 1')
  spec.add_dependency('tencentcloud-sdk-tag', '~> 1')
  spec.add_dependency('tencentcloud-sdk-ecc', '~> 1')
  spec.add_dependency('tencentcloud-sdk-hcm', '~> 1')
  spec.add_dependency('tencentcloud-sdk-monitor', '~> 1')
  spec.add_dependency('tencentcloud-sdk-faceid', '~> 1')
  spec.add_dependency('tencentcloud-sdk-vpc', '~> 1')
  spec.add_dependency('tencentcloud-sdk-emr', '~> 1')
  spec.add_dependency('tencentcloud-sdk-tiia', '~> 1')
  spec.add_dependency('tencentcloud-sdk-clb', '~> 1')
  spec.add_dependency('tencentcloud-sdk-bmlb', '~> 1')
  spec.add_dependency('tencentcloud-sdk-cdb', '~> 1')
  spec.add_dependency('tencentcloud-sdk-organization', '~> 1')
  spec.add_dependency('tencentcloud-sdk-cloudhsm', '~> 1')
  spec.add_dependency('tencentcloud-sdk-cws', '~> 1')

  spec.metadata = {
    'source_code_uri' => 'https://github.com/TencentCloud/tencentcloud-sdk-ruby/tencentcloud-sdk',
    'changelog_uri' => 'https://github.com/TencentCloud/tencentcloud-sdk-ruby/blob/master/CHANGELOG.md'
  }
end
