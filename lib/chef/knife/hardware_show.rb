#
# Author:: Paul Thomas (<paul@paulthomas.eu>)
# Copyright:: Copyright (c) 2012 Paul Thomas
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'chef/knife/hardware_base'
require 'chef/knife/data_bag_show'

class Chef
  class Knife
    class HardwareShow < Knife
      include Knife::HardwareBase
      banner "knife hardware show NODE"

      def run
        uuid = getUuid()
        dbshow = Chef::Knife::DataBagShow.new
        puts "Showing data bag item hardware #{uuid}"
        dbshow.name_args = ['hardware', uuid]
        dbshow.run
      end
    end
  end
end
