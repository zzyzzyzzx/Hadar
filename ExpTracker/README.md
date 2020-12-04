This is my exp tracker,

+----------------------------[ExpTracker]------------------------------+

| hxp help                - Displays this helpfile                     |

| hxp select <type>       - Toggles xp tracker (hour,double,kills)     |

|                           EG. hxp select kills to turn it off        |

| hxp channel <channel>   - no arguments displays the channel          |

|                           EG. hxp channel spouse                     |

| hxp see <all|type>      - Shows you if type is active all shows all  |

| hxp show <type>         - Shows current hour or double(if running)   |

| hxp report <scren> <log>- screen main or comm, log = comm log        |

|                           EG. hxp report comm expTracker             |

|                           EG. hxp report main off                    |

| hxp session <command>   - Start, Stop, Status .. tracks exp/kill over|

|                           a time between start and stop              |

| hxp set <thing>         - Sets the message output for reports        |

|                           (kill,double,hour,logo,session,dblreport)  |

|                           (hrreport)                                 |

| hxp config <room|mob>   - Choose to reset timer after a mob or room  |

|  "    "    report         enable|disable, # EG. hxp config report 3  |

|                           will change the report from per mob to #   |

+----------------------------------------------------------------------+


hxp report <scren> <log> is kind of unique, so you would use
hxp report comm to toggle the comm log
hxp report main to toggle reports to the main window

the way hxp report comm expTracker works, is if you have a tab on your commlog called exptracker, and put that in, it will send all the tracker stuff to that log
if you set a tab you dont have nothing will report to fix it you use hxp report comm nil
