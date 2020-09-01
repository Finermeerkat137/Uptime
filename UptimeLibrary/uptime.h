//
//  uptime.h
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

#ifndef uptime_h
#define uptime_h

struct timespec get_uptime(void);

#endif /* uptime_h */
