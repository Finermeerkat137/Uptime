//
//  get_uptime.c
//  UptimeLibrary
//
//  Created by Sudhip Nashi on 9/1/20.
//  Copyright © 2020 nashi. All rights reserved.
//

#include <sys/types.h>
#include <sys/stat.h>
#include <sys/sysctl.h>
#include <stdio.h>
#include <stdlib.h>

struct timespec get_uptime(void) {
    struct timespec uptime;
    clock_gettime(CLOCK_MONOTONIC_RAW, &uptime);
    return uptime;
}
