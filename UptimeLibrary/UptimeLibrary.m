//
//  uptime.c
//  Uptime
//
//  Created by Sudhip Nashi on 8/27/20.
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


unsigned long get_seconds(void) {
    struct timespec uptime = get_uptime();
    return uptime.tv_sec % 60;
}


unsigned long get_minutes(void) {
    struct timespec uptime = get_uptime();
    return (uptime.tv_sec % 3600) / 60;
}


unsigned long get_hours(void) {
    struct timespec uptime = get_uptime();
    return (uptime.tv_sec % 86400) / 3600;
}


unsigned long get_days(void) {
    struct timespec uptime = get_uptime();
    return (uptime.tv_sec % (86400 * 30)) / 86400;
}
