//
//  get_days.c
//  UptimeLibrary
//
//  Created by Sudhip Nashi on 9/1/20.
//  Copyright © 2020 nashi. All rights reserved.
//

#include "uptime.h"

unsigned long get_days(void) {
    struct timespec uptime = get_uptime();
    return (uptime.tv_sec % (86400 * 30)) / 86400;
}
