//
//  get_seconds.c
//  UptimeLibrary
//
//  Created by Sudhip Nashi on 9/1/20.
//  Copyright © 2020 nashi. All rights reserved.
//

#include "uptime.h"

unsigned long get_seconds(void) {
    struct timespec uptime = get_uptime();
    return uptime.tv_sec % 60;
}
