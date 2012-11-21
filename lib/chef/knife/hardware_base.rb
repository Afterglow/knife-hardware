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

require 'chef/knife'

class Chef
  class Knife
    module HardwareBase
      def getUuid
        unless name_args.size == 1
          puts "You need to specify a node"
          show_usage
          exit 1
        end

        node = Chef::Node.load(name_args[0])
        unless node.has_key? 'uuid'
          puts "Node has no UUID, cannot link to a hardware data bag item"
          show_usage
          exit 1
        end
        if node.uuid.nil?
          puts "UUID was nil so I can't lookup the data bag"
          show_usage
          exit 1
        end
        puts "Working on #{node.uuid}"
        return node.uuid
      end
    end
  end
end
