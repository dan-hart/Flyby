//
//  File.swift
//  
//
//  Created by Dan Hart on 5/9/22.
//

import Foundation

public class ExampleData {
    static let response =
    """
    {"sat_commlink_portal": {"status": "conn_ok", "time": "Sun May  1 18:35:10 2022"}, "pcent_flt_complete": 2, "altVal": "11334", "lon": "-90.228", "satcomm_status": {"commlink": "active", "linkparams": "not-stale"}, "dtzone": "EDT", "within_us": true, "etad": "11:58 PM", "lat": "38.888", "gspdVal": "434", "ttgc": "1h 27m", "dist_remain": "710", "actime24": "22:31"}
    """
    
    static let example =
    """
    [
        {"sat_commlink_portal": {"status": "conn_ok", "time": "Sun May  1 18:35:10 2022"}, "pcent_flt_complete": 0, "altVal": "505", "lon": "-90.355", "satcomm_status": {"commlink": "active", "linkparams": "not-stale"}, "dtzone": "EDT", "within_us": true, "etad": "08:00 PM", "lat": "38.735", "gspdVal": "0", "ttgc": "", "dist_remain": "718", "actime24": "22:13"},
        {"sat_commlink_portal": {"status": "conn_ok", "time": "Sun May  1 18:35:10 2022"}, "pcent_flt_complete": 0, "altVal": "504", "lon": "-90.354", "satcomm_status": {"commlink": "active", "linkparams": "not-stale"}, "dtzone": "EDT", "within_us": true, "etad": "11:50 PM", "lat": "38.735", "gspdVal": "1", "ttgc": "1h 31m", "dist_remain": "718", "actime24": "22:19"},
        {"sat_commlink_portal": {"status": "conn_ok", "time": "Sun May  1 18:35:10 2022"}, "pcent_flt_complete": 0, "altVal": "503", "lon": "-90.354", "satcomm_status": {"commlink": "inactive", "linkparams": "not-stale"}, "dtzone": "EDT", "within_us": true, "etad": "11:52 PM", "lat": "38.737", "gspdVal": "15", "ttgc": "1h 30m", "dist_remain": "718", "actime24": "22:22"},
        {"sat_commlink_portal": {"status": "conn_ok", "time": "Sun May  1 18:35:10 2022"}, "pcent_flt_complete": 0, "altVal": "539", "lon": "-90.403", "satcomm_status": {"commlink": "active", "linkparams": "not-stale"}, "dtzone": "EDT", "within_us": true, "etad": "11:58 PM", "lat": "38.754", "gspdVal": "179", "ttgc": "1h 31m", "dist_remain": "720", "actime24": "22:27"},
        {"sat_commlink_portal": {"status": "conn_ok", "time": "Sun May  1 18:35:10 2022"}, "pcent_flt_complete": 1, "altVal": "4047", "lon": "-90.439", "satcomm_status": {"commlink": "active", "linkparams": "not-stale"}, "dtzone": "EDT", "within_us": true, "etad": "11:58 PM", "lat": "38.818", "gspdVal": "237", "ttgc": "1h 29m", "dist_remain": "722", "actime24": "22:29"},
        {"sat_commlink_portal": {"status": "conn_ok", "time": "Sun May  1 18:35:10 2022"}, "pcent_flt_complete": 2, "altVal": "11334", "lon": "-90.228", "satcomm_status": {"commlink": "active", "linkparams": "not-stale"}, "dtzone": "EDT", "within_us": true, "etad": "11:58 PM", "lat": "38.888", "gspdVal": "434", "ttgc": "1h 27m", "dist_remain": "710", "actime24": "22:31"}
    ]
    """
    
    static let simulated =
    """
    [
        {"sat_commlink_portal": {"status": "conn_ok", "time": "Sun May  1 18:35:10 2022"}, "pcent_flt_complete": 0, "altVal": "505", "lon": "-90.355", "satcomm_status": {"commlink": "active", "linkparams": "not-stale"}, "dtzone": "EDT", "within_us": true, "etad": "08:00 PM", "lat": "38.735", "gspdVal": "0", "ttgc": "", "dist_remain": "718", "actime24": "22:13"},
        {"sat_commlink_portal": {"status": "conn_ok", "time": "Sun May  1 18:35:10 2022"}, "pcent_flt_complete": 0, "altVal": "504", "lon": "-90.354", "satcomm_status": {"commlink": "active", "linkparams": "not-stale"}, "dtzone": "EDT", "within_us": true, "etad": "11:50 PM", "lat": "38.735", "gspdVal": "1", "ttgc": "1h 31m", "dist_remain": "718", "actime24": "22:19"},
        {"sat_commlink_portal": {"status": "conn_ok", "time": "Sun May  1 18:35:10 2022"}, "pcent_flt_complete": 0, "altVal": "503", "lon": "-90.354", "satcomm_status": {"commlink": "inactive", "linkparams": "not-stale"}, "dtzone": "EDT", "within_us": true, "etad": "11:52 PM", "lat": "38.737", "gspdVal": "15", "ttgc": "1h 30m", "dist_remain": "718", "actime24": "22:22"},
        {"sat_commlink_portal": {"status": "conn_ok", "time": "Sun May  1 18:35:10 2022"}, "pcent_flt_complete": 0, "altVal": "539", "lon": "-90.403", "satcomm_status": {"commlink": "active", "linkparams": "not-stale"}, "dtzone": "EDT", "within_us": true, "etad": "11:58 PM", "lat": "38.754", "gspdVal": "179", "ttgc": "1h 31m", "dist_remain": "720", "actime24": "22:27"},
        {"sat_commlink_portal": {"status": "conn_ok", "time": "Sun May  1 18:35:10 2022"}, "pcent_flt_complete": 1, "altVal": "4047", "lon": "-90.439", "satcomm_status": {"commlink": "active", "linkparams": "not-stale"}, "dtzone": "EDT", "within_us": true, "etad": "11:58 PM", "lat": "38.818", "gspdVal": "237", "ttgc": "1h 29m", "dist_remain": "722", "actime24": "22:29"},
        {"sat_commlink_portal": {"status": "conn_ok", "time": "Sun May  1 18:35:10 2022"}, "pcent_flt_complete": 2, "altVal": "11334", "lon": "-90.228", "satcomm_status": {"commlink": "active", "linkparams": "not-stale"}, "dtzone": "EDT", "within_us": true, "etad": "11:58 PM", "lat": "38.888", "gspdVal": "434", "ttgc": "1h 27m", "dist_remain": "710", "actime24": "22:31"},
        {"sat_commlink_portal": {"status": "conn_ok", "time": "Sun May  1 18:35:10 2022"}, "pcent_flt_complete": 4, "altVal": "14000", "lon": "-90.228", "satcomm_status": {"commlink": "active", "linkparams": "not-stale"}, "dtzone": "EDT", "within_us": true, "etad": "11:58 PM", "lat": "38.888", "gspdVal": "434", "ttgc": "1h 26m", "dist_remain": "700", "actime24": "22:32"},
        {"sat_commlink_portal": {"status": "conn_ok", "time": "Sun May  1 18:35:10 2022"}, "pcent_flt_complete": 8, "altVal": "15000", "lon": "-90.228", "satcomm_status": {"commlink": "active", "linkparams": "not-stale"}, "dtzone": "EDT", "within_us": true, "etad": "11:58 PM", "lat": "38.888", "gspdVal": "434", "ttgc": "1h 25m", "dist_remain": "680", "actime24": "22:33"},
        {"sat_commlink_portal": {"status": "conn_ok", "time": "Sun May  1 18:35:10 2022"}, "pcent_flt_complete": 10, "altVal": "16000", "lon": "-90.228", "satcomm_status": {"commlink": "active", "linkparams": "not-stale"}, "dtzone": "EDT", "within_us": true, "etad": "11:58 PM", "lat": "38.888", "gspdVal": "440", "ttgc": "1h 24m", "dist_remain": "670", "actime24": "22:33"},
    ]
    """
}
