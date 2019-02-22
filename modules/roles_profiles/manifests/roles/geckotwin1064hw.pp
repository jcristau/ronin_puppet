# Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/

class roles_profiles::roles::geckotwin1064hw {

    # System
    include roles_profiles::profiles::disable_services
    include roles_profiles::profiles::files_system_managment
    include roles_profiles::profiles::firewall
    include roles_profiles::profiles::ntp
    include roles_profiles::profiles::power_management

    # Adminstration
    include roles_profiles::profiles::logging
    include roles_profiles::profiles::common_tools
    include roles_profiles::profiles::ssh

    # Worker
}