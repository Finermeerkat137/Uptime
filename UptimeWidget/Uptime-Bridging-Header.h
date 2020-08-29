//
//  Uptime-Bridging-Header.h
//  UptimeWidget
//
//  Created by Sudhip Nashi on 8/28/20.
//  Copyright © 2020 nashi. All rights reserved.
//

#ifndef Uptime_Bridging_Header_h
#define Uptime_Bridging_Header_h

struct timespec get_uptime(void);

unsigned long get_seconds(void);

unsigned long get_minutes(void);

unsigned long get_hours(void);

unsigned long get_days(void);

#endif /* Uptime_Bridging_Header_h */
