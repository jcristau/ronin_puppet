# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

define shellprofile::file (
    Enum['present', 'absent'] $ensure,
    String $filename = $title,
    String $content = '',
) {

    require shellprofile
    include shellprofile::settings

    file { "${::shellprofile::settings::profile_puppet_d}/${filename}.sh":
        ensure  => $ensure,
        content => "${content}\n",
    }
}
