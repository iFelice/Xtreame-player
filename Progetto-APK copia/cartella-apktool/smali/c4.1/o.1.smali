.class public final Lc4/o;
.super Lc4/u1;
.source "SourceFile"


# static fields
.field public static final L:[Ljava/lang/String;

.field public static final M:[Ljava/lang/String;

.field public static final N:[Ljava/lang/String;

.field public static final O:[Ljava/lang/String;

.field public static final P:[Ljava/lang/String;

.field public static final Q:[Ljava/lang/String;

.field public static final R:[Ljava/lang/String;

.field public static final S:[Ljava/lang/String;

.field public static final T:[Ljava/lang/String;

.field public static final U:[Ljava/lang/String;

.field public static final V:[Ljava/lang/String;


# instance fields
.field public final J:Lc4/n;

.field public final K:Lf6/c;


# direct methods
.method static constructor <clinit>()V
    .locals 93

    .line 1
    const-string v10, "current_session_count"

    .line 2
    .line 3
    const-string v11, "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"

    .line 4
    .line 5
    const-string v0, "last_bundled_timestamp"

    .line 6
    .line 7
    const-string v1, "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;"

    .line 8
    .line 9
    const-string v2, "last_bundled_day"

    .line 10
    .line 11
    const-string v3, "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;"

    .line 12
    .line 13
    const-string v4, "last_sampled_complex_event_id"

    .line 14
    .line 15
    const-string v5, "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;"

    .line 16
    .line 17
    const-string v6, "last_sampling_rate"

    .line 18
    .line 19
    const-string v7, "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;"

    .line 20
    .line 21
    const-string v8, "last_exempt_from_sampling"

    .line 22
    .line 23
    const-string v9, "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;"

    .line 24
    .line 25
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lc4/o;->L:[Ljava/lang/String;

    .line 30
    .line 31
    const-string v0, "last_upload_timestamp"

    .line 32
    .line 33
    const-string v1, "ALTER TABLE upload_queue ADD COLUMN last_upload_timestamp INTEGER;"

    .line 34
    .line 35
    const-string v2, "associated_row_id"

    .line 36
    .line 37
    const-string v3, "ALTER TABLE upload_queue ADD COLUMN associated_row_id INTEGER;"

    .line 38
    .line 39
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lc4/o;->M:[Ljava/lang/String;

    .line 44
    .line 45
    const-string v0, "origin"

    .line 46
    .line 47
    const-string v1, "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"

    .line 48
    .line 49
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lc4/o;->N:[Ljava/lang/String;

    .line 54
    .line 55
    const-string v91, "client_upload_eligibility"

    .line 56
    .line 57
    const-string v92, "ALTER TABLE apps ADD COLUMN client_upload_eligibility INTEGER;"

    .line 58
    .line 59
    const-string v1, "app_version"

    .line 60
    .line 61
    const-string v2, "ALTER TABLE apps ADD COLUMN app_version TEXT;"

    .line 62
    .line 63
    const-string v3, "app_store"

    .line 64
    .line 65
    const-string v4, "ALTER TABLE apps ADD COLUMN app_store TEXT;"

    .line 66
    .line 67
    const-string v5, "gmp_version"

    .line 68
    .line 69
    const-string v6, "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;"

    .line 70
    .line 71
    const-string v7, "dev_cert_hash"

    .line 72
    .line 73
    const-string v8, "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;"

    .line 74
    .line 75
    const-string v9, "measurement_enabled"

    .line 76
    .line 77
    const-string v10, "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;"

    .line 78
    .line 79
    const-string v11, "last_bundle_start_timestamp"

    .line 80
    .line 81
    const-string v12, "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;"

    .line 82
    .line 83
    const-string v13, "day"

    .line 84
    .line 85
    const-string v14, "ALTER TABLE apps ADD COLUMN day INTEGER;"

    .line 86
    .line 87
    const-string v15, "daily_public_events_count"

    .line 88
    .line 89
    const-string v16, "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;"

    .line 90
    .line 91
    const-string v17, "daily_events_count"

    .line 92
    .line 93
    const-string v18, "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;"

    .line 94
    .line 95
    const-string v19, "daily_conversions_count"

    .line 96
    .line 97
    const-string v20, "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;"

    .line 98
    .line 99
    const-string v21, "remote_config"

    .line 100
    .line 101
    const-string v22, "ALTER TABLE apps ADD COLUMN remote_config BLOB;"

    .line 102
    .line 103
    const-string v23, "config_fetched_time"

    .line 104
    .line 105
    const-string v24, "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;"

    .line 106
    .line 107
    const-string v25, "failed_config_fetch_time"

    .line 108
    .line 109
    const-string v26, "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;"

    .line 110
    .line 111
    const-string v27, "app_version_int"

    .line 112
    .line 113
    const-string v28, "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;"

    .line 114
    .line 115
    const-string v29, "firebase_instance_id"

    .line 116
    .line 117
    const-string v30, "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;"

    .line 118
    .line 119
    const-string v31, "daily_error_events_count"

    .line 120
    .line 121
    const-string v32, "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;"

    .line 122
    .line 123
    const-string v33, "daily_realtime_events_count"

    .line 124
    .line 125
    const-string v34, "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;"

    .line 126
    .line 127
    const-string v35, "health_monitor_sample"

    .line 128
    .line 129
    const-string v36, "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;"

    .line 130
    .line 131
    const-string v37, "android_id"

    .line 132
    .line 133
    const-string v38, "ALTER TABLE apps ADD COLUMN android_id INTEGER;"

    .line 134
    .line 135
    const-string v39, "adid_reporting_enabled"

    .line 136
    .line 137
    const-string v40, "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;"

    .line 138
    .line 139
    const-string v41, "ssaid_reporting_enabled"

    .line 140
    .line 141
    const-string v42, "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;"

    .line 142
    .line 143
    const-string v43, "admob_app_id"

    .line 144
    .line 145
    const-string v44, "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;"

    .line 146
    .line 147
    const-string v45, "linked_admob_app_id"

    .line 148
    .line 149
    const-string v46, "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;"

    .line 150
    .line 151
    const-string v47, "dynamite_version"

    .line 152
    .line 153
    const-string v48, "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;"

    .line 154
    .line 155
    const-string v49, "safelisted_events"

    .line 156
    .line 157
    const-string v50, "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;"

    .line 158
    .line 159
    const-string v51, "ga_app_id"

    .line 160
    .line 161
    const-string v52, "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;"

    .line 162
    .line 163
    const-string v53, "config_last_modified_time"

    .line 164
    .line 165
    const-string v54, "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;"

    .line 166
    .line 167
    const-string v55, "e_tag"

    .line 168
    .line 169
    const-string v56, "ALTER TABLE apps ADD COLUMN e_tag TEXT;"

    .line 170
    .line 171
    const-string v57, "session_stitching_token"

    .line 172
    .line 173
    const-string v58, "ALTER TABLE apps ADD COLUMN session_stitching_token TEXT;"

    .line 174
    .line 175
    const-string v59, "sgtm_upload_enabled"

    .line 176
    .line 177
    const-string v60, "ALTER TABLE apps ADD COLUMN sgtm_upload_enabled INTEGER;"

    .line 178
    .line 179
    const-string v61, "target_os_version"

    .line 180
    .line 181
    const-string v62, "ALTER TABLE apps ADD COLUMN target_os_version INTEGER;"

    .line 182
    .line 183
    const-string v63, "session_stitching_token_hash"

    .line 184
    .line 185
    const-string v64, "ALTER TABLE apps ADD COLUMN session_stitching_token_hash INTEGER;"

    .line 186
    .line 187
    const-string v65, "ad_services_version"

    .line 188
    .line 189
    const-string v66, "ALTER TABLE apps ADD COLUMN ad_services_version INTEGER;"

    .line 190
    .line 191
    const-string v67, "unmatched_first_open_without_ad_id"

    .line 192
    .line 193
    const-string v68, "ALTER TABLE apps ADD COLUMN unmatched_first_open_without_ad_id INTEGER;"

    .line 194
    .line 195
    const-string v69, "npa_metadata_value"

    .line 196
    .line 197
    const-string v70, "ALTER TABLE apps ADD COLUMN npa_metadata_value INTEGER;"

    .line 198
    .line 199
    const-string v71, "attribution_eligibility_status"

    .line 200
    .line 201
    const-string v72, "ALTER TABLE apps ADD COLUMN attribution_eligibility_status INTEGER;"

    .line 202
    .line 203
    const-string v73, "sgtm_preview_key"

    .line 204
    .line 205
    const-string v74, "ALTER TABLE apps ADD COLUMN sgtm_preview_key TEXT;"

    .line 206
    .line 207
    const-string v75, "dma_consent_state"

    .line 208
    .line 209
    const-string v76, "ALTER TABLE apps ADD COLUMN dma_consent_state INTEGER;"

    .line 210
    .line 211
    const-string v77, "daily_realtime_dcu_count"

    .line 212
    .line 213
    const-string v78, "ALTER TABLE apps ADD COLUMN daily_realtime_dcu_count INTEGER;"

    .line 214
    .line 215
    const-string v79, "bundle_delivery_index"

    .line 216
    .line 217
    const-string v80, "ALTER TABLE apps ADD COLUMN bundle_delivery_index INTEGER;"

    .line 218
    .line 219
    const-string v81, "serialized_npa_metadata"

    .line 220
    .line 221
    const-string v82, "ALTER TABLE apps ADD COLUMN serialized_npa_metadata TEXT;"

    .line 222
    .line 223
    const-string v83, "unmatched_pfo"

    .line 224
    .line 225
    const-string v84, "ALTER TABLE apps ADD COLUMN unmatched_pfo INTEGER;"

    .line 226
    .line 227
    const-string v85, "unmatched_uwa"

    .line 228
    .line 229
    const-string v86, "ALTER TABLE apps ADD COLUMN unmatched_uwa INTEGER;"

    .line 230
    .line 231
    const-string v87, "ad_campaign_info"

    .line 232
    .line 233
    const-string v88, "ALTER TABLE apps ADD COLUMN ad_campaign_info BLOB;"

    .line 234
    .line 235
    const-string v89, "daily_registered_triggers_count"

    .line 236
    .line 237
    const-string v90, "ALTER TABLE apps ADD COLUMN daily_registered_triggers_count INTEGER;"

    .line 238
    .line 239
    filled-new-array/range {v1 .. v92}, [Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    sput-object v0, Lc4/o;->O:[Ljava/lang/String;

    .line 244
    .line 245
    const-string v0, "realtime"

    .line 246
    .line 247
    const-string v1, "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"

    .line 248
    .line 249
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    sput-object v0, Lc4/o;->P:[Ljava/lang/String;

    .line 254
    .line 255
    const-string v0, "retry_count"

    .line 256
    .line 257
    const-string v1, "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"

    .line 258
    .line 259
    const-string v2, "has_realtime"

    .line 260
    .line 261
    const-string v3, "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;"

    .line 262
    .line 263
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    sput-object v0, Lc4/o;->Q:[Ljava/lang/String;

    .line 268
    .line 269
    const-string v0, "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"

    .line 270
    .line 271
    const-string v1, "session_scoped"

    .line 272
    .line 273
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    sput-object v0, Lc4/o;->R:[Ljava/lang/String;

    .line 278
    .line 279
    const-string v0, "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"

    .line 280
    .line 281
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    sput-object v0, Lc4/o;->S:[Ljava/lang/String;

    .line 286
    .line 287
    const-string v0, "previous_install_count"

    .line 288
    .line 289
    const-string v1, "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"

    .line 290
    .line 291
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    sput-object v0, Lc4/o;->T:[Ljava/lang/String;

    .line 296
    .line 297
    const-string v5, "storage_consent_at_bundling"

    .line 298
    .line 299
    const-string v6, "ALTER TABLE consent_settings ADD COLUMN storage_consent_at_bundling TEXT;"

    .line 300
    .line 301
    const-string v1, "consent_source"

    .line 302
    .line 303
    const-string v2, "ALTER TABLE consent_settings ADD COLUMN consent_source INTEGER;"

    .line 304
    .line 305
    const-string v3, "dma_consent_settings"

    .line 306
    .line 307
    const-string v4, "ALTER TABLE consent_settings ADD COLUMN dma_consent_settings TEXT;"

    .line 308
    .line 309
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    sput-object v0, Lc4/o;->U:[Ljava/lang/String;

    .line 314
    .line 315
    const-string v0, "idempotent"

    .line 316
    .line 317
    const-string v1, "CREATE INDEX IF NOT EXISTS trigger_uris_index ON trigger_uris (app_id);"

    .line 318
    .line 319
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    sput-object v0, Lc4/o;->V:[Ljava/lang/String;

    .line 324
    .line 325
    return-void
.end method

.method public constructor <init>(Lc4/A1;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lc4/u1;-><init>(Lc4/A1;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lf6/c;

    .line 5
    .line 6
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lc4/l0;

    .line 9
    .line 10
    iget-object v0, v0, Lc4/l0;->T:LP3/b;

    .line 11
    .line 12
    invoke-direct {p1, v0}, Lf6/c;-><init>(LP3/a;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lc4/o;->K:Lf6/c;

    .line 16
    .line 17
    iget-object p1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Lc4/l0;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    new-instance p1, Lc4/n;

    .line 25
    .line 26
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lc4/l0;

    .line 29
    .line 30
    iget-object v0, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 31
    .line 32
    invoke-direct {p1, p0, v0}, Lc4/n;-><init>(Lc4/o;Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lc4/o;->J:Lc4/n;

    .line 36
    .line 37
    return-void
.end method

.method public static final W(Ljava/util/List;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, ""

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const-string v0, ", "

    .line 11
    .line 12
    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v0, " AND (upload_type IN ("

    .line 17
    .line 18
    const-string v1, "))"

    .line 19
    .line 20
    invoke-static {v0, p0, v1}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static final d0(Landroid/content/ContentValues;Ljava/lang/Object;)V
    .locals 2

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    instance-of v1, p1, Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast p1, Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    instance-of v1, p1, Ljava/lang/Long;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    check-cast p1, Ljava/lang/Long;

    .line 24
    .line 25
    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    instance-of v1, p1, Ljava/lang/Double;

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    check-cast p1, Ljava/lang/Double;

    .line 34
    .line 35
    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    const-string p1, "Invalid value type"

    .line 42
    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0
.end method


# virtual methods
.method public final A(Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lc4/u1;->n()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "rowid in ("

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ge v1, v2, :cond_1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    const-string v2, ","

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/Long;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-string v1, ")"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v2, "raw_events"

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eq v0, v1, :cond_2

    .line 72
    .line 73
    iget-object v1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v1, Lc4/l0;

    .line 76
    .line 77
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 78
    .line 79
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const-string v2, "Deleted fewer rows from raw events table than expected"

    .line 95
    .line 96
    iget-object v1, v1, Lc4/T;->L:Lc4/Q;

    .line 97
    .line 98
    invoke-virtual {v1, v0, p1, v2}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    return-void
.end method

.method public final B(Ljava/lang/Long;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc4/u1;->n()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lc4/l0;

    .line 10
    .line 11
    iget-object v1, v0, Lc4/l0;->M:Lc4/h;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    sget-object v3, Lc4/E;->N0:Lc4/D;

    .line 15
    .line 16
    invoke-virtual {v1, v2, v3}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    filled-new-array {p1}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :try_start_0
    const-string v2, "upload_queue"

    .line 36
    .line 37
    const-string v3, "rowid=?"

    .line 38
    .line 39
    invoke-virtual {v1, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    const/4 v1, 0x1

    .line 44
    if-eq p1, v1, :cond_1

    .line 45
    .line 46
    iget-object p1, v0, Lc4/l0;->O:Lc4/T;

    .line 47
    .line 48
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p1, Lc4/T;->O:Lc4/Q;

    .line 52
    .line 53
    const-string v0, "Deleted fewer rows from upload_queue than expected"

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lc4/Q;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catch_0
    move-exception p1

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    :goto_0
    return-void

    .line 62
    :goto_1
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Lc4/l0;

    .line 65
    .line 66
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 67
    .line 68
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 69
    .line 70
    .line 71
    const-string v1, "Failed to delete a MeasurementBatch in a upload_queue table"

    .line 72
    .line 73
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 74
    .line 75
    invoke-virtual {v0, p1, v1}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1
.end method

.method public final C()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc4/u1;->n()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final D(Ljava/util/List;)V
    .locals 6

    .line 1
    const-string v0, "UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN "

    .line 2
    .line 3
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lc4/u1;->n()V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Lc4/o;->Y()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const-string v1, ","

    .line 23
    .line 24
    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v1, "("

    .line 29
    .line 30
    const-string v2, ")"

    .line 31
    .line 32
    invoke-static {v1, p1, v2}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v2, "SELECT COUNT(1) FROM queue WHERE rowid IN "

    .line 39
    .line 40
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, " AND retry_count =  2147483647 LIMIT 1"

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-virtual {p0, v1, v2}, Lc4/o;->e0(Ljava/lang/String;[Ljava/lang/String;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v1

    .line 60
    const-wide/16 v3, 0x0

    .line 61
    .line 62
    cmp-long v5, v1, v3

    .line 63
    .line 64
    if-lez v5, :cond_1

    .line 65
    .line 66
    iget-object v1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v1, Lc4/l0;

    .line 69
    .line 70
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 71
    .line 72
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 73
    .line 74
    .line 75
    const-string v2, "The number of upload retries exceeds the limit. Will remain unchanged."

    .line 76
    .line 77
    iget-object v1, v1, Lc4/T;->O:Lc4/Q;

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p1, " AND (retry_count IS NULL OR retry_count < 2147483647)"

    .line 95
    .line 96
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :catch_0
    move-exception p1

    .line 108
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v0, Lc4/l0;

    .line 111
    .line 112
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 113
    .line 114
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 115
    .line 116
    .line 117
    const-string v1, "Error incrementing retry count. error"

    .line 118
    .line 119
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 120
    .line 121
    invoke-virtual {v0, p1, v1}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 126
    .line 127
    const-string v0, "Given Integer is zero"

    .line 128
    .line 129
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p1
.end method

.method public final E(Ljava/lang/Long;)V
    .locals 9

    .line 1
    const-string v0, "UPDATE upload_queue"

    .line 2
    .line 3
    const-string v1, " SET retry_count = retry_count + 1, last_upload_timestamp = "

    .line 4
    .line 5
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lc4/u1;->n()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Lc4/l0;

    .line 14
    .line 15
    iget-object v3, v2, Lc4/l0;->M:Lc4/h;

    .line 16
    .line 17
    sget-object v4, Lc4/E;->N0:Lc4/D;

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    invoke-virtual {v3, v5, v4}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0}, Lc4/o;->Y()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_3

    .line 33
    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v4, "SELECT COUNT(1) FROM upload_queue WHERE rowid = "

    .line 37
    .line 38
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v4, " AND retry_count =  2147483647 LIMIT 1"

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {p0, v3, v5}, Lc4/o;->e0(Ljava/lang/String;[Ljava/lang/String;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v3

    .line 57
    const-wide/16 v6, 0x0

    .line 58
    .line 59
    cmp-long v8, v3, v6

    .line 60
    .line 61
    if-lez v8, :cond_1

    .line 62
    .line 63
    iget-object v3, v2, Lc4/l0;->O:Lc4/T;

    .line 64
    .line 65
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 66
    .line 67
    .line 68
    const-string v4, "The number of upload retries exceeds the limit. Will remain unchanged."

    .line 69
    .line 70
    iget-object v3, v3, Lc4/T;->O:Lc4/Q;

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    iget-object v4, v2, Lc4/l0;->M:Lc4/h;

    .line 80
    .line 81
    sget-object v6, Lc4/E;->Q0:Lc4/D;

    .line 82
    .line 83
    invoke-virtual {v4, v5, v6}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_2

    .line 88
    .line 89
    iget-object v2, v2, Lc4/l0;->T:LP3/b;

    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 95
    .line 96
    .line 97
    move-result-wide v4

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    goto :goto_0

    .line 111
    :catch_0
    move-exception p1

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    const-string v1, " SET retry_count = retry_count + 1 "

    .line 114
    .line 115
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v0, " WHERE rowid = "

    .line 124
    .line 125
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string p1, " AND retry_count < 2147483647"

    .line 132
    .line 133
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :goto_1
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v0, Lc4/l0;

    .line 147
    .line 148
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 149
    .line 150
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 151
    .line 152
    .line 153
    const-string v1, "Error incrementing retry count. error"

    .line 154
    .line 155
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 156
    .line 157
    invoke-virtual {v0, p1, v1}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :cond_3
    :goto_2
    return-void
.end method

.method public final F()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc4/u1;->n()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lc4/o;->Y()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lc4/q1;->H:Lc4/A1;

    .line 16
    .line 17
    iget-object v1, v0, Lc4/A1;->O:Lc4/f1;

    .line 18
    .line 19
    iget-object v1, v1, Lc4/f1;->K:LE1/I;

    .line 20
    .line 21
    invoke-virtual {v1}, LE1/I;->a()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    iget-object v3, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v3, Lc4/l0;

    .line 28
    .line 29
    iget-object v4, v3, Lc4/l0;->T:LP3/b;

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    sub-long v1, v4, v1

    .line 39
    .line 40
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    sget-object v6, Lc4/E;->M:Lc4/D;

    .line 45
    .line 46
    const/4 v7, 0x0

    .line 47
    invoke-virtual {v6, v7}, Lc4/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    check-cast v6, Ljava/lang/Long;

    .line 52
    .line 53
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 54
    .line 55
    .line 56
    move-result-wide v8

    .line 57
    cmp-long v6, v1, v8

    .line 58
    .line 59
    if-lez v6, :cond_1

    .line 60
    .line 61
    iget-object v0, v0, Lc4/A1;->O:Lc4/f1;

    .line 62
    .line 63
    iget-object v0, v0, Lc4/f1;->K:LE1/I;

    .line 64
    .line 65
    invoke-virtual {v0, v4, v5}, LE1/I;->b(J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lc4/u1;->n()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lc4/o;->Y()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    invoke-virtual {p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v1, v3, Lc4/l0;->T:LP3/b;

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 90
    .line 91
    .line 92
    move-result-wide v1

    .line 93
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    sget-object v2, Lc4/E;->R:Lc4/D;

    .line 98
    .line 99
    invoke-virtual {v2, v7}, Lc4/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Ljava/lang/Long;

    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 106
    .line 107
    .line 108
    move-result-wide v4

    .line 109
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    const-string v2, "queue"

    .line 118
    .line 119
    const-string v4, "abs(bundle_end_timestamp - ?) > cast(? as integer)"

    .line 120
    .line 121
    invoke-virtual {v0, v2, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-lez v0, :cond_1

    .line 126
    .line 127
    iget-object v1, v3, Lc4/l0;->O:Lc4/T;

    .line 128
    .line 129
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iget-object v1, v1, Lc4/T;->T:Lc4/Q;

    .line 137
    .line 138
    const-string v2, "Deleted stale rows. rowsDeleted"

    .line 139
    .line 140
    invoke-virtual {v1, v0, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :cond_1
    :goto_0
    return-void
.end method

.method public final G(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lc4/u1;->n()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "user_attributes"

    .line 18
    .line 19
    const-string v2, "app_id=? and name=?"

    .line 20
    .line 21
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    iget-object v1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Lc4/l0;

    .line 33
    .line 34
    iget-object v2, v1, Lc4/l0;->O:Lc4/T;

    .line 35
    .line 36
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object v1, v1, Lc4/l0;->S:Lc4/O;

    .line 44
    .line 45
    invoke-virtual {v1, p2}, Lc4/O;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    const-string v1, "Error deleting user property. appId"

    .line 50
    .line 51
    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    .line 52
    .line 53
    invoke-virtual {v2, p1, p2, v0, v1}, Lc4/Q;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final H(Ljava/lang/String;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "events_snapshot"

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    const-string v4, "lifetime_count"

    .line 10
    .line 11
    const-string v5, "name"

    .line 12
    .line 13
    filled-new-array {v5, v4}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    .line 23
    .line 24
    const-string v4, "events"

    .line 25
    .line 26
    const-string v5, "_f"

    .line 27
    .line 28
    invoke-virtual {v1, v4, v2, v5}, Lc4/o;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc4/s;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    const-string v7, "_v"

    .line 33
    .line 34
    invoke-virtual {v1, v4, v2, v7}, Lc4/o;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc4/s;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    invoke-virtual {v1, v4, v2}, Lc4/o;->T(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v10, 0x0

    .line 43
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    const-string v12, "events_snapshot"

    .line 48
    .line 49
    new-array v13, v10, [Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    move-object v13, v0

    .line 56
    check-cast v13, [Ljava/lang/String;

    .line 57
    .line 58
    const-string v14, "app_id=?"

    .line 59
    .line 60
    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v15

    .line 64
    const/16 v18, 0x0

    .line 65
    .line 66
    const/16 v16, 0x0

    .line 67
    .line 68
    const/16 v17, 0x0

    .line 69
    .line 70
    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 75
    .line 76
    .line 77
    move-result v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 78
    if-nez v0, :cond_1

    .line 79
    .line 80
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 81
    .line 82
    .line 83
    if-eqz v6, :cond_0

    .line 84
    .line 85
    :goto_0
    invoke-virtual {v1, v4, v6}, Lc4/o;->U(Ljava/lang/String;Lc4/s;)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_8

    .line 89
    .line 90
    :cond_0
    if-eqz v8, :cond_8

    .line 91
    .line 92
    :goto_1
    invoke-virtual {v1, v4, v8}, Lc4/o;->U(Ljava/lang/String;Lc4/s;)V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_8

    .line 96
    .line 97
    :cond_1
    const/4 v11, 0x0

    .line 98
    const/4 v12, 0x0

    .line 99
    :cond_2
    :try_start_1
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const/4 v13, 0x1

    .line 104
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getLong(I)J

    .line 105
    .line 106
    .line 107
    move-result-wide v14

    .line 108
    const-wide/16 v16, 0x1

    .line 109
    .line 110
    cmp-long v18, v14, v16

    .line 111
    .line 112
    if-ltz v18, :cond_4

    .line 113
    .line 114
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v14

    .line 118
    if-eqz v14, :cond_3

    .line 119
    .line 120
    const/4 v11, 0x1

    .line 121
    goto :goto_2

    .line 122
    :cond_3
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v14

    .line 126
    if-eqz v14, :cond_4

    .line 127
    .line 128
    const/4 v12, 0x1

    .line 129
    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 130
    .line 131
    invoke-virtual {v1, v3, v2, v0}, Lc4/o;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc4/s;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    if-eqz v0, :cond_5

    .line 136
    .line 137
    invoke-virtual {v1, v4, v0}, Lc4/o;->U(Ljava/lang/String;Lc4/s;)V

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :catchall_0
    move-exception v0

    .line 142
    goto :goto_4

    .line 143
    :catch_0
    move-exception v0

    .line 144
    goto :goto_5

    .line 145
    :cond_5
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 146
    .line 147
    .line 148
    move-result v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    if-nez v0, :cond_2

    .line 150
    .line 151
    goto :goto_7

    .line 152
    :goto_4
    move v10, v11

    .line 153
    goto :goto_9

    .line 154
    :goto_5
    move v10, v11

    .line 155
    goto :goto_6

    .line 156
    :catchall_1
    move-exception v0

    .line 157
    const/4 v12, 0x0

    .line 158
    goto :goto_9

    .line 159
    :catch_1
    move-exception v0

    .line 160
    const/4 v12, 0x0

    .line 161
    :goto_6
    :try_start_2
    iget-object v5, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v5, Lc4/l0;

    .line 164
    .line 165
    iget-object v5, v5, Lc4/l0;->O:Lc4/T;

    .line 166
    .line 167
    invoke-static {v5}, Lc4/l0;->k(Lc4/s0;)V

    .line 168
    .line 169
    .line 170
    iget-object v5, v5, Lc4/T;->L:Lc4/Q;

    .line 171
    .line 172
    const-string v7, "Error querying snapshot. appId"

    .line 173
    .line 174
    invoke-static/range {p1 .. p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 175
    .line 176
    .line 177
    move-result-object v11

    .line 178
    invoke-virtual {v5, v11, v0, v7}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 179
    .line 180
    .line 181
    move v11, v10

    .line 182
    :goto_7
    if-eqz v9, :cond_6

    .line 183
    .line 184
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 185
    .line 186
    .line 187
    :cond_6
    if-nez v11, :cond_7

    .line 188
    .line 189
    if-eqz v6, :cond_7

    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_7
    if-nez v12, :cond_8

    .line 193
    .line 194
    if-eqz v8, :cond_8

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_8
    :goto_8
    invoke-virtual {v1, v3, v2}, Lc4/o;->T(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :catchall_2
    move-exception v0

    .line 202
    :goto_9
    if-eqz v9, :cond_9

    .line 203
    .line 204
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 205
    .line 206
    .line 207
    :cond_9
    if-nez v10, :cond_b

    .line 208
    .line 209
    if-nez v6, :cond_a

    .line 210
    .line 211
    goto :goto_a

    .line 212
    :cond_a
    invoke-virtual {v1, v4, v6}, Lc4/o;->U(Ljava/lang/String;Lc4/s;)V

    .line 213
    .line 214
    .line 215
    goto :goto_b

    .line 216
    :cond_b
    :goto_a
    if-nez v12, :cond_c

    .line 217
    .line 218
    if-eqz v8, :cond_c

    .line 219
    .line 220
    invoke-virtual {v1, v4, v8}, Lc4/o;->U(Ljava/lang/String;Lc4/s;)V

    .line 221
    .line 222
    .line 223
    :cond_c
    :goto_b
    invoke-virtual {v1, v3, v2}, Lc4/o;->T(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw v0
.end method

.method public final I()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc4/u1;->n()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final J(Lc4/P;Z)V
    .locals 11

    .line 1
    const-string v0, "apps"

    .line 2
    .line 3
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lc4/u1;->n()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lc4/P;->c()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Landroid/content/ContentValues;

    .line 17
    .line 18
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "app_id"

    .line 22
    .line 23
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object v3, Lc4/w0;->I:Lc4/w0;

    .line 27
    .line 28
    iget-object v4, p0, Lc4/q1;->H:Lc4/A1;

    .line 29
    .line 30
    const-string v5, "app_instance_id"

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v4, v1}, Lc4/A1;->i0(Ljava/lang/String;)Lc4/x0;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p2, v3}, Lc4/x0;->k(Lc4/w0;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    invoke-virtual {p1}, Lc4/P;->d()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {v2, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lc4/P;->g()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    const-string v5, "gmp_app_id"

    .line 61
    .line 62
    invoke-virtual {v2, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v1}, Lc4/A1;->i0(Ljava/lang/String;)Lc4/x0;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    sget-object v5, Lc4/w0;->H:Lc4/w0;

    .line 70
    .line 71
    invoke-virtual {p2, v5}, Lc4/x0;->k(Lc4/w0;)Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    iget-object v5, p1, Lc4/P;->a:Lc4/l0;

    .line 76
    .line 77
    if-eqz p2, :cond_2

    .line 78
    .line 79
    iget-object p2, v5, Lc4/l0;->P:Lc4/j0;

    .line 80
    .line 81
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Lc4/j0;->m()V

    .line 85
    .line 86
    .line 87
    iget-object p2, p1, Lc4/P;->e:Ljava/lang/String;

    .line 88
    .line 89
    const-string v7, "resettable_device_id_hash"

    .line 90
    .line 91
    invoke-virtual {v2, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    iget-object p2, v5, Lc4/l0;->P:Lc4/j0;

    .line 95
    .line 96
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Lc4/j0;->m()V

    .line 100
    .line 101
    .line 102
    iget-wide v7, p1, Lc4/P;->g:J

    .line 103
    .line 104
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    const-string v7, "last_bundle_index"

    .line 109
    .line 110
    invoke-virtual {v2, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 111
    .line 112
    .line 113
    iget-object p2, v5, Lc4/l0;->P:Lc4/j0;

    .line 114
    .line 115
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Lc4/j0;->m()V

    .line 119
    .line 120
    .line 121
    iget-wide v7, p1, Lc4/P;->h:J

    .line 122
    .line 123
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    const-string v7, "last_bundle_start_timestamp"

    .line 128
    .line 129
    invoke-virtual {v2, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 130
    .line 131
    .line 132
    iget-object p2, v5, Lc4/l0;->P:Lc4/j0;

    .line 133
    .line 134
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Lc4/j0;->m()V

    .line 138
    .line 139
    .line 140
    iget-wide v7, p1, Lc4/P;->i:J

    .line 141
    .line 142
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    const-string v7, "last_bundle_end_timestamp"

    .line 147
    .line 148
    invoke-virtual {v2, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Lc4/P;->e()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    const-string v7, "app_version"

    .line 156
    .line 157
    invoke-virtual {v2, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget-object p2, v5, Lc4/l0;->P:Lc4/j0;

    .line 161
    .line 162
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2}, Lc4/j0;->m()V

    .line 166
    .line 167
    .line 168
    iget-object p2, p1, Lc4/P;->l:Ljava/lang/String;

    .line 169
    .line 170
    const-string v7, "app_store"

    .line 171
    .line 172
    invoke-virtual {v2, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget-object p2, v5, Lc4/l0;->P:Lc4/j0;

    .line 176
    .line 177
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2}, Lc4/j0;->m()V

    .line 181
    .line 182
    .line 183
    iget-wide v7, p1, Lc4/P;->m:J

    .line 184
    .line 185
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    const-string v7, "gmp_version"

    .line 190
    .line 191
    invoke-virtual {v2, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 192
    .line 193
    .line 194
    iget-object p2, v5, Lc4/l0;->P:Lc4/j0;

    .line 195
    .line 196
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2}, Lc4/j0;->m()V

    .line 200
    .line 201
    .line 202
    iget-wide v7, p1, Lc4/P;->n:J

    .line 203
    .line 204
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    const-string v7, "dev_cert_hash"

    .line 209
    .line 210
    invoke-virtual {v2, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 211
    .line 212
    .line 213
    iget-object p2, v5, Lc4/l0;->P:Lc4/j0;

    .line 214
    .line 215
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2}, Lc4/j0;->m()V

    .line 219
    .line 220
    .line 221
    iget-boolean p2, p1, Lc4/P;->o:Z

    .line 222
    .line 223
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    const-string v7, "measurement_enabled"

    .line 228
    .line 229
    invoke-virtual {v2, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 230
    .line 231
    .line 232
    iget-object p2, v5, Lc4/l0;->P:Lc4/j0;

    .line 233
    .line 234
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p2}, Lc4/j0;->m()V

    .line 238
    .line 239
    .line 240
    iget-wide v7, p1, Lc4/P;->K:J

    .line 241
    .line 242
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    const-string v7, "day"

    .line 247
    .line 248
    invoke-virtual {v2, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 249
    .line 250
    .line 251
    iget-object p2, v5, Lc4/l0;->P:Lc4/j0;

    .line 252
    .line 253
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p2}, Lc4/j0;->m()V

    .line 257
    .line 258
    .line 259
    iget-wide v7, p1, Lc4/P;->L:J

    .line 260
    .line 261
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    const-string v8, "daily_public_events_count"

    .line 266
    .line 267
    invoke-virtual {v2, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 268
    .line 269
    .line 270
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p2}, Lc4/j0;->m()V

    .line 274
    .line 275
    .line 276
    iget-wide v7, p1, Lc4/P;->M:J

    .line 277
    .line 278
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    const-string v8, "daily_events_count"

    .line 283
    .line 284
    invoke-virtual {v2, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 285
    .line 286
    .line 287
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p2}, Lc4/j0;->m()V

    .line 291
    .line 292
    .line 293
    iget-wide v7, p1, Lc4/P;->N:J

    .line 294
    .line 295
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 296
    .line 297
    .line 298
    move-result-object v7

    .line 299
    const-string v8, "daily_conversions_count"

    .line 300
    .line 301
    invoke-virtual {v2, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 302
    .line 303
    .line 304
    iget-object v7, v5, Lc4/l0;->P:Lc4/j0;

    .line 305
    .line 306
    invoke-static {v7}, Lc4/l0;->k(Lc4/s0;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v7}, Lc4/j0;->m()V

    .line 310
    .line 311
    .line 312
    iget-wide v7, p1, Lc4/P;->S:J

    .line 313
    .line 314
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 315
    .line 316
    .line 317
    move-result-object v7

    .line 318
    const-string v8, "config_fetched_time"

    .line 319
    .line 320
    invoke-virtual {v2, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 321
    .line 322
    .line 323
    iget-object v7, v5, Lc4/l0;->P:Lc4/j0;

    .line 324
    .line 325
    invoke-static {v7}, Lc4/l0;->k(Lc4/s0;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v7}, Lc4/j0;->m()V

    .line 329
    .line 330
    .line 331
    iget-wide v7, p1, Lc4/P;->T:J

    .line 332
    .line 333
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 334
    .line 335
    .line 336
    move-result-object v7

    .line 337
    const-string v8, "failed_config_fetch_time"

    .line 338
    .line 339
    invoke-virtual {v2, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p1}, Lc4/P;->S()J

    .line 343
    .line 344
    .line 345
    move-result-wide v7

    .line 346
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 347
    .line 348
    .line 349
    move-result-object v7

    .line 350
    const-string v8, "app_version_int"

    .line 351
    .line 352
    invoke-virtual {v2, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {p1}, Lc4/P;->f()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v7

    .line 359
    const-string v8, "firebase_instance_id"

    .line 360
    .line 361
    invoke-virtual {v2, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p2}, Lc4/j0;->m()V

    .line 368
    .line 369
    .line 370
    iget-wide v7, p1, Lc4/P;->O:J

    .line 371
    .line 372
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 373
    .line 374
    .line 375
    move-result-object v7

    .line 376
    const-string v8, "daily_error_events_count"

    .line 377
    .line 378
    invoke-virtual {v2, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 379
    .line 380
    .line 381
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {p2}, Lc4/j0;->m()V

    .line 385
    .line 386
    .line 387
    iget-wide v7, p1, Lc4/P;->P:J

    .line 388
    .line 389
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 390
    .line 391
    .line 392
    move-result-object v7

    .line 393
    const-string v8, "daily_realtime_events_count"

    .line 394
    .line 395
    invoke-virtual {v2, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 396
    .line 397
    .line 398
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {p2}, Lc4/j0;->m()V

    .line 402
    .line 403
    .line 404
    iget-object v7, p1, Lc4/P;->Q:Ljava/lang/String;

    .line 405
    .line 406
    const-string v8, "health_monitor_sample"

    .line 407
    .line 408
    invoke-virtual {v2, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    const-wide/16 v7, 0x0

    .line 412
    .line 413
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 414
    .line 415
    .line 416
    move-result-object v9

    .line 417
    const-string v10, "android_id"

    .line 418
    .line 419
    invoke-virtual {v2, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 420
    .line 421
    .line 422
    iget-object v9, v5, Lc4/l0;->P:Lc4/j0;

    .line 423
    .line 424
    invoke-static {v9}, Lc4/l0;->k(Lc4/s0;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v9}, Lc4/j0;->m()V

    .line 428
    .line 429
    .line 430
    iget-boolean v9, p1, Lc4/P;->p:Z

    .line 431
    .line 432
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 433
    .line 434
    .line 435
    move-result-object v9

    .line 436
    const-string v10, "adid_reporting_enabled"

    .line 437
    .line 438
    invoke-virtual {v2, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {p1}, Lc4/P;->a()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v9

    .line 445
    const-string v10, "admob_app_id"

    .line 446
    .line 447
    invoke-virtual {v2, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {p1}, Lc4/P;->T()J

    .line 451
    .line 452
    .line 453
    move-result-wide v9

    .line 454
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 455
    .line 456
    .line 457
    move-result-object v9

    .line 458
    const-string v10, "dynamite_version"

    .line 459
    .line 460
    invoke-virtual {v2, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v4, v1}, Lc4/A1;->i0(Ljava/lang/String;)Lc4/x0;

    .line 464
    .line 465
    .line 466
    move-result-object v4

    .line 467
    invoke-virtual {v4, v3}, Lc4/x0;->k(Lc4/w0;)Z

    .line 468
    .line 469
    .line 470
    move-result v3

    .line 471
    if-eqz v3, :cond_3

    .line 472
    .line 473
    iget-object v3, v5, Lc4/l0;->P:Lc4/j0;

    .line 474
    .line 475
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v3}, Lc4/j0;->m()V

    .line 479
    .line 480
    .line 481
    iget-object v3, p1, Lc4/P;->u:Ljava/lang/String;

    .line 482
    .line 483
    const-string v4, "session_stitching_token"

    .line 484
    .line 485
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    :cond_3
    invoke-virtual {p1}, Lc4/P;->t()Z

    .line 489
    .line 490
    .line 491
    move-result v3

    .line 492
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 493
    .line 494
    .line 495
    move-result-object v3

    .line 496
    const-string v4, "sgtm_upload_enabled"

    .line 497
    .line 498
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 499
    .line 500
    .line 501
    iget-object v3, v5, Lc4/l0;->P:Lc4/j0;

    .line 502
    .line 503
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v3}, Lc4/j0;->m()V

    .line 507
    .line 508
    .line 509
    iget-wide v3, p1, Lc4/P;->w:J

    .line 510
    .line 511
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 512
    .line 513
    .line 514
    move-result-object v3

    .line 515
    const-string v4, "target_os_version"

    .line 516
    .line 517
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 518
    .line 519
    .line 520
    iget-object v3, v5, Lc4/l0;->P:Lc4/j0;

    .line 521
    .line 522
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v3}, Lc4/j0;->m()V

    .line 526
    .line 527
    .line 528
    iget-wide v3, p1, Lc4/P;->x:J

    .line 529
    .line 530
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    const-string v4, "session_stitching_token_hash"

    .line 535
    .line 536
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 537
    .line 538
    .line 539
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i4;->b()V

    .line 540
    .line 541
    .line 542
    iget-object v3, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 543
    .line 544
    check-cast v3, Lc4/l0;

    .line 545
    .line 546
    iget-object v4, v3, Lc4/l0;->M:Lc4/h;

    .line 547
    .line 548
    sget-object v9, Lc4/E;->W0:Lc4/D;

    .line 549
    .line 550
    invoke-virtual {v4, v1, v9}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 551
    .line 552
    .line 553
    move-result v4

    .line 554
    if-eqz v4, :cond_4

    .line 555
    .line 556
    iget-object v4, v5, Lc4/l0;->P:Lc4/j0;

    .line 557
    .line 558
    invoke-static {v4}, Lc4/l0;->k(Lc4/s0;)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v4}, Lc4/j0;->m()V

    .line 562
    .line 563
    .line 564
    iget v4, p1, Lc4/P;->y:I

    .line 565
    .line 566
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 567
    .line 568
    .line 569
    move-result-object v4

    .line 570
    const-string v9, "ad_services_version"

    .line 571
    .line 572
    invoke-virtual {v2, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 573
    .line 574
    .line 575
    iget-object v4, v5, Lc4/l0;->P:Lc4/j0;

    .line 576
    .line 577
    invoke-static {v4}, Lc4/l0;->k(Lc4/s0;)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v4}, Lc4/j0;->m()V

    .line 581
    .line 582
    .line 583
    iget-wide v9, p1, Lc4/P;->C:J

    .line 584
    .line 585
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 586
    .line 587
    .line 588
    move-result-object v4

    .line 589
    const-string v9, "attribution_eligibility_status"

    .line 590
    .line 591
    invoke-virtual {v2, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 592
    .line 593
    .line 594
    :cond_4
    iget-object v4, v5, Lc4/l0;->P:Lc4/j0;

    .line 595
    .line 596
    invoke-static {v4}, Lc4/l0;->k(Lc4/s0;)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v4}, Lc4/j0;->m()V

    .line 600
    .line 601
    .line 602
    iget-boolean v4, p1, Lc4/P;->z:Z

    .line 603
    .line 604
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 605
    .line 606
    .line 607
    move-result-object v4

    .line 608
    const-string v9, "unmatched_first_open_without_ad_id"

    .line 609
    .line 610
    invoke-virtual {v2, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {p1}, Lc4/P;->U()Ljava/lang/Boolean;

    .line 614
    .line 615
    .line 616
    move-result-object v4

    .line 617
    const-string v9, "npa_metadata_value"

    .line 618
    .line 619
    invoke-virtual {v2, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 620
    .line 621
    .line 622
    iget-object v4, v5, Lc4/l0;->P:Lc4/j0;

    .line 623
    .line 624
    invoke-static {v4}, Lc4/l0;->k(Lc4/s0;)V

    .line 625
    .line 626
    .line 627
    invoke-virtual {v4}, Lc4/j0;->m()V

    .line 628
    .line 629
    .line 630
    iget-wide v9, p1, Lc4/P;->G:J

    .line 631
    .line 632
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 633
    .line 634
    .line 635
    move-result-object v4

    .line 636
    const-string v9, "bundle_delivery_index"

    .line 637
    .line 638
    invoke-virtual {v2, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {p1}, Lc4/P;->i()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v4

    .line 645
    const-string v9, "sgtm_preview_key"

    .line 646
    .line 647
    invoke-virtual {v2, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {p2}, Lc4/j0;->m()V

    .line 654
    .line 655
    .line 656
    iget v4, p1, Lc4/P;->E:I

    .line 657
    .line 658
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 659
    .line 660
    .line 661
    move-result-object v4

    .line 662
    const-string v9, "dma_consent_state"

    .line 663
    .line 664
    invoke-virtual {v2, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 665
    .line 666
    .line 667
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {p2}, Lc4/j0;->m()V

    .line 671
    .line 672
    .line 673
    iget p2, p1, Lc4/P;->F:I

    .line 674
    .line 675
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 676
    .line 677
    .line 678
    move-result-object p2

    .line 679
    const-string v4, "daily_realtime_dcu_count"

    .line 680
    .line 681
    invoke-virtual {v2, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {p1}, Lc4/P;->h()Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object p2

    .line 688
    const-string v4, "serialized_npa_metadata"

    .line 689
    .line 690
    invoke-virtual {v2, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    sget-object p2, Lc4/E;->Q0:Lc4/D;

    .line 694
    .line 695
    iget-object v4, v3, Lc4/l0;->M:Lc4/h;

    .line 696
    .line 697
    invoke-virtual {v4, v1, p2}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 698
    .line 699
    .line 700
    move-result p2

    .line 701
    if-eqz p2, :cond_5

    .line 702
    .line 703
    invoke-virtual {p1}, Lc4/P;->R()I

    .line 704
    .line 705
    .line 706
    move-result p2

    .line 707
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 708
    .line 709
    .line 710
    move-result-object p2

    .line 711
    const-string v9, "client_upload_eligibility"

    .line 712
    .line 713
    invoke-virtual {v2, v9, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 714
    .line 715
    .line 716
    :cond_5
    iget-object p2, v5, Lc4/l0;->P:Lc4/j0;

    .line 717
    .line 718
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {p2}, Lc4/j0;->m()V

    .line 722
    .line 723
    .line 724
    iget-object p2, p1, Lc4/P;->t:Ljava/util/ArrayList;

    .line 725
    .line 726
    const-string v9, "safelisted_events"

    .line 727
    .line 728
    iget-object v3, v3, Lc4/l0;->O:Lc4/T;

    .line 729
    .line 730
    if-eqz p2, :cond_7

    .line 731
    .line 732
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 733
    .line 734
    .line 735
    move-result v10

    .line 736
    if-eqz v10, :cond_6

    .line 737
    .line 738
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 739
    .line 740
    .line 741
    const-string p2, "Safelisted events should not be an empty list. appId"

    .line 742
    .line 743
    iget-object v10, v3, Lc4/T;->O:Lc4/Q;

    .line 744
    .line 745
    invoke-virtual {v10, v1, p2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 746
    .line 747
    .line 748
    goto :goto_1

    .line 749
    :cond_6
    const-string v10, ","

    .line 750
    .line 751
    invoke-static {v10, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object p2

    .line 755
    invoke-virtual {v2, v9, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    :cond_7
    :goto_1
    sget-object p2, Lcom/google/android/gms/internal/measurement/E3;->H:Lcom/google/android/gms/internal/measurement/E3;

    .line 759
    .line 760
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/E3;->G:Ly4/w;

    .line 761
    .line 762
    iget-object p2, p2, Ly4/w;->G:Ljava/lang/Object;

    .line 763
    .line 764
    check-cast p2, Lcom/google/android/gms/internal/measurement/F3;

    .line 765
    .line 766
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 767
    .line 768
    .line 769
    sget-object p2, Lc4/E;->K0:Lc4/D;

    .line 770
    .line 771
    invoke-virtual {v4, v6, p2}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 772
    .line 773
    .line 774
    move-result p2

    .line 775
    if-eqz p2, :cond_8

    .line 776
    .line 777
    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 778
    .line 779
    .line 780
    move-result p2

    .line 781
    if-nez p2, :cond_8

    .line 782
    .line 783
    invoke-virtual {v2, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    .line 785
    .line 786
    :cond_8
    iget-object p2, v5, Lc4/l0;->P:Lc4/j0;

    .line 787
    .line 788
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 789
    .line 790
    .line 791
    invoke-virtual {p2}, Lc4/j0;->m()V

    .line 792
    .line 793
    .line 794
    iget-object p2, p1, Lc4/P;->A:Ljava/lang/Long;

    .line 795
    .line 796
    const-string v4, "unmatched_pfo"

    .line 797
    .line 798
    invoke-virtual {v2, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 799
    .line 800
    .line 801
    iget-object p2, v5, Lc4/l0;->P:Lc4/j0;

    .line 802
    .line 803
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 804
    .line 805
    .line 806
    invoke-virtual {p2}, Lc4/j0;->m()V

    .line 807
    .line 808
    .line 809
    iget-object p2, p1, Lc4/P;->B:Ljava/lang/Long;

    .line 810
    .line 811
    const-string v4, "unmatched_uwa"

    .line 812
    .line 813
    invoke-virtual {v2, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 814
    .line 815
    .line 816
    iget-object p2, v5, Lc4/l0;->P:Lc4/j0;

    .line 817
    .line 818
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 819
    .line 820
    .line 821
    invoke-virtual {p2}, Lc4/j0;->m()V

    .line 822
    .line 823
    .line 824
    iget-object p1, p1, Lc4/P;->I:[B

    .line 825
    .line 826
    const-string p2, "ad_campaign_info"

    .line 827
    .line 828
    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 829
    .line 830
    .line 831
    :try_start_0
    invoke-virtual {p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 832
    .line 833
    .line 834
    move-result-object p1

    .line 835
    const-string p2, "app_id = ?"

    .line 836
    .line 837
    filled-new-array {v1}, [Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v4

    .line 841
    invoke-virtual {p1, v0, v2, p2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 842
    .line 843
    .line 844
    move-result p2

    .line 845
    int-to-long v4, p2

    .line 846
    cmp-long p2, v4, v7

    .line 847
    .line 848
    if-nez p2, :cond_9

    .line 849
    .line 850
    const/4 p2, 0x5

    .line 851
    invoke-virtual {p1, v0, v6, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 852
    .line 853
    .line 854
    move-result-wide p1

    .line 855
    const-wide/16 v4, -0x1

    .line 856
    .line 857
    cmp-long v0, p1, v4

    .line 858
    .line 859
    if-nez v0, :cond_9

    .line 860
    .line 861
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 862
    .line 863
    .line 864
    iget-object p1, v3, Lc4/T;->L:Lc4/Q;

    .line 865
    .line 866
    const-string p2, "Failed to insert/update app (got -1). appId"

    .line 867
    .line 868
    invoke-static {v1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 869
    .line 870
    .line 871
    move-result-object v0

    .line 872
    invoke-virtual {p1, v0, p2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    .line 874
    .line 875
    return-void

    .line 876
    :catch_0
    move-exception p1

    .line 877
    goto :goto_2

    .line 878
    :cond_9
    return-void

    .line 879
    :goto_2
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 880
    .line 881
    check-cast p2, Lc4/l0;

    .line 882
    .line 883
    iget-object p2, p2, Lc4/l0;->O:Lc4/T;

    .line 884
    .line 885
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 886
    .line 887
    .line 888
    invoke-static {v1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 889
    .line 890
    .line 891
    move-result-object v0

    .line 892
    const-string v1, "Error storing app. appId"

    .line 893
    .line 894
    iget-object p2, p2, Lc4/T;->L:Lc4/Q;

    .line 895
    .line 896
    invoke-virtual {p2, v0, p1, v1}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 897
    .line 898
    .line 899
    return-void
.end method

.method public final K(Ljava/lang/String;Lc4/x0;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lc4/u1;->n()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lc4/o;->r0(Ljava/lang/String;)Lc4/x0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, p1, v0}, Lc4/o;->L(Ljava/lang/String;Lc4/x0;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Landroid/content/ContentValues;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v1, "app_id"

    .line 23
    .line 24
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string p1, "storage_consent_at_bundling"

    .line 28
    .line 29
    invoke-virtual {p2}, Lc4/x0;->j()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lc4/o;->V(Landroid/content/ContentValues;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final L(Ljava/lang/String;Lc4/x0;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lc4/u1;->n()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroid/content/ContentValues;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "app_id"

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string p1, "consent_state"

    .line 24
    .line 25
    invoke-virtual {p2}, Lc4/x0;->j()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget p1, p2, Lc4/x0;->b:I

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string p2, "consent_source"

    .line 39
    .line 40
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lc4/o;->V(Landroid/content/ContentValues;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final M(Ljava/lang/String;)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v2, Lc4/l0;

    .line 6
    .line 7
    iget-object v3, v2, Lc4/l0;->M:Lc4/h;

    .line 8
    .line 9
    sget-object v4, Lc4/E;->N0:Lc4/D;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    invoke-virtual {v3, v5, v4}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_2

    .line 17
    .line 18
    sget-object v3, Lc4/E;->Q0:Lc4/D;

    .line 19
    .line 20
    iget-object v2, v2, Lc4/l0;->M:Lc4/h;

    .line 21
    .line 22
    invoke-virtual {v2, v5, v3}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const-wide/16 v3, 0x0

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    new-array v2, v0, [Lc4/R0;

    .line 31
    .line 32
    sget-object v5, Lc4/R0;->I:Lc4/R0;

    .line 33
    .line 34
    aput-object v5, v2, v1

    .line 35
    .line 36
    new-instance v5, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .line 40
    .line 41
    aget-object v2, v2, v1

    .line 42
    .line 43
    iget v2, v2, Lc4/R0;->G:I

    .line 44
    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    invoke-static {v5}, Lc4/o;->W(Ljava/util/List;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {p0}, Lc4/o;->R()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    const-string v6, "SELECT COUNT(1) > 0 FROM upload_queue WHERE app_id=?"

    .line 61
    .line 62
    const-string v7, " AND NOT "

    .line 63
    .line 64
    invoke-static {v6, v2, v7, v5}, Lcom/google/protobuf/U2;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    filled-new-array {p1}, [Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p0, v2, p1}, Lc4/o;->e0(Ljava/lang/String;[Ljava/lang/String;)J

    .line 73
    .line 74
    .line 75
    move-result-wide v5

    .line 76
    cmp-long p1, v5, v3

    .line 77
    .line 78
    if-eqz p1, :cond_0

    .line 79
    .line 80
    return v0

    .line 81
    :cond_0
    return v1

    .line 82
    :cond_1
    invoke-virtual {p0}, Lc4/o;->R()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    filled-new-array {p1}, [Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const-string v5, "SELECT COUNT(1) > 0 FROM upload_queue WHERE app_id=? AND NOT "

    .line 91
    .line 92
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {p0, v2, p1}, Lc4/o;->e0(Ljava/lang/String;[Ljava/lang/String;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v5

    .line 100
    cmp-long p1, v5, v3

    .line 101
    .line 102
    if-eqz p1, :cond_2

    .line 103
    .line 104
    return v0

    .line 105
    :cond_2
    return v1
.end method

.method public final N(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "select count(1) from raw_events where app_id = ? and name = ?"

    .line 6
    .line 7
    invoke-virtual {p0, p2, p1}, Lc4/o;->e0(Ljava/lang/String;[Ljava/lang/String;)J

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    cmp-long v2, p1, v0

    .line 14
    .line 15
    if-lez v2, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public final O(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lc4/u1;->n()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "conditional_properties"

    .line 18
    .line 19
    const-string v2, "app_id=? and name=?"

    .line 20
    .line 21
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    iget-object v1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Lc4/l0;

    .line 33
    .line 34
    iget-object v2, v1, Lc4/l0;->O:Lc4/T;

    .line 35
    .line 36
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object v1, v1, Lc4/l0;->S:Lc4/O;

    .line 44
    .line 45
    invoke-virtual {v1, p2}, Lc4/O;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    const-string v1, "Error deleting conditional property"

    .line 50
    .line 51
    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    .line 52
    .line 53
    invoke-virtual {v2, p1, p2, v0, v1}, Lc4/Q;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc4/s;
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static/range {p2 .. p2}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static/range {p3 .. p3}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Lc1/d;->m()V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p0 .. p0}, Lc4/u1;->n()V

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    const-string v7, "last_sampled_complex_event_id"

    .line 18
    .line 19
    const-string v8, "last_sampling_rate"

    .line 20
    .line 21
    const-string v2, "lifetime_count"

    .line 22
    .line 23
    const-string v3, "current_bundle_count"

    .line 24
    .line 25
    const-string v4, "last_fire_timestamp"

    .line 26
    .line 27
    const-string v5, "last_bundled_timestamp"

    .line 28
    .line 29
    const-string v6, "last_bundled_day"

    .line 30
    .line 31
    const-string v9, "last_exempt_from_sampling"

    .line 32
    .line 33
    const-string v10, "current_session_count"

    .line 34
    .line 35
    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const/4 v11, 0x0

    .line 52
    new-array v4, v11, [Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    move-object v5, v0

    .line 59
    check-cast v5, [Ljava/lang/String;

    .line 60
    .line 61
    const-string v6, "app_id=? and name=?"

    .line 62
    .line 63
    filled-new-array/range {p2 .. p3}, [Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    const/4 v10, 0x0

    .line 68
    const/4 v8, 0x0

    .line 69
    const/4 v9, 0x0

    .line 70
    move-object/from16 v4, p1

    .line 71
    .line 72
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 73
    .line 74
    .line 75
    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 76
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_0

    .line 81
    .line 82
    goto/16 :goto_9

    .line 83
    .line 84
    :cond_0
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 85
    .line 86
    .line 87
    move-result-wide v15

    .line 88
    const/4 v0, 0x1

    .line 89
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 90
    .line 91
    .line 92
    move-result-wide v17

    .line 93
    const/4 v4, 0x2

    .line 94
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 95
    .line 96
    .line 97
    move-result-wide v21

    .line 98
    const/4 v4, 0x3

    .line 99
    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    const-wide/16 v6, 0x0

    .line 104
    .line 105
    if-eqz v5, :cond_1

    .line 106
    .line 107
    move-wide/from16 v23, v6

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_1
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 111
    .line 112
    .line 113
    move-result-wide v4

    .line 114
    move-wide/from16 v23, v4

    .line 115
    .line 116
    :goto_0
    const/4 v4, 0x4

    .line 117
    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-eqz v5, :cond_2

    .line 122
    .line 123
    move-object/from16 v25, v2

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_2
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 127
    .line 128
    .line 129
    move-result-wide v4

    .line 130
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    move-object/from16 v25, v4

    .line 135
    .line 136
    :goto_1
    const/4 v4, 0x5

    .line 137
    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-eqz v5, :cond_3

    .line 142
    .line 143
    move-object/from16 v26, v2

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_3
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 147
    .line 148
    .line 149
    move-result-wide v4

    .line 150
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    move-object/from16 v26, v4

    .line 155
    .line 156
    :goto_2
    const/4 v4, 0x6

    .line 157
    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    if-eqz v5, :cond_4

    .line 162
    .line 163
    move-object/from16 v27, v2

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_4
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 167
    .line 168
    .line 169
    move-result-wide v4

    .line 170
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    move-object/from16 v27, v4

    .line 175
    .line 176
    :goto_3
    const/4 v4, 0x7

    .line 177
    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-nez v5, :cond_6

    .line 182
    .line 183
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 184
    .line 185
    .line 186
    move-result-wide v4

    .line 187
    const-wide/16 v8, 0x1

    .line 188
    .line 189
    cmp-long v10, v4, v8

    .line 190
    .line 191
    if-nez v10, :cond_5

    .line 192
    .line 193
    const/4 v11, 0x1

    .line 194
    :cond_5
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    move-object/from16 v28, v0

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :catchall_0
    move-exception v0

    .line 202
    goto :goto_7

    .line 203
    :cond_6
    move-object/from16 v28, v2

    .line 204
    .line 205
    :goto_4
    const/16 v0, 0x8

    .line 206
    .line 207
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    if-eqz v4, :cond_7

    .line 212
    .line 213
    move-wide/from16 v19, v6

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_7
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 217
    .line 218
    .line 219
    move-result-wide v4

    .line 220
    move-wide/from16 v19, v4

    .line 221
    .line 222
    :goto_5
    new-instance v0, Lc4/s;

    .line 223
    .line 224
    move-object v12, v0

    .line 225
    move-object/from16 v13, p2

    .line 226
    .line 227
    move-object/from16 v14, p3

    .line 228
    .line 229
    invoke-direct/range {v12 .. v28}, Lc4/s;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 230
    .line 231
    .line 232
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    if-eqz v4, :cond_8

    .line 237
    .line 238
    iget-object v4, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v4, Lc4/l0;

    .line 241
    .line 242
    iget-object v4, v4, Lc4/l0;->O:Lc4/T;

    .line 243
    .line 244
    invoke-static {v4}, Lc4/l0;->k(Lc4/s0;)V

    .line 245
    .line 246
    .line 247
    iget-object v4, v4, Lc4/T;->L:Lc4/Q;

    .line 248
    .line 249
    const-string v5, "Got multiple records for event aggregates, expected one. appId"

    .line 250
    .line 251
    invoke-static/range {p2 .. p2}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 252
    .line 253
    .line 254
    move-result-object v6

    .line 255
    invoke-virtual {v4, v6, v5}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    .line 257
    .line 258
    goto :goto_6

    .line 259
    :catch_0
    move-exception v0

    .line 260
    goto :goto_8

    .line 261
    :cond_8
    :goto_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 262
    .line 263
    .line 264
    return-object v0

    .line 265
    :goto_7
    move-object v2, v3

    .line 266
    goto :goto_a

    .line 267
    :catchall_1
    move-exception v0

    .line 268
    goto :goto_a

    .line 269
    :catch_1
    move-exception v0

    .line 270
    move-object v3, v2

    .line 271
    :goto_8
    :try_start_2
    iget-object v4, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 272
    .line 273
    check-cast v4, Lc4/l0;

    .line 274
    .line 275
    iget-object v5, v4, Lc4/l0;->O:Lc4/T;

    .line 276
    .line 277
    invoke-static {v5}, Lc4/l0;->k(Lc4/s0;)V

    .line 278
    .line 279
    .line 280
    iget-object v5, v5, Lc4/T;->L:Lc4/Q;

    .line 281
    .line 282
    const-string v6, "Error querying events. appId"

    .line 283
    .line 284
    invoke-static/range {p2 .. p2}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 285
    .line 286
    .line 287
    move-result-object v7

    .line 288
    iget-object v4, v4, Lc4/l0;->S:Lc4/O;

    .line 289
    .line 290
    move-object/from16 v8, p3

    .line 291
    .line 292
    invoke-virtual {v4, v8}, Lc4/O;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    invoke-virtual {v5, v7, v4, v0, v6}, Lc4/Q;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    .line 298
    .line 299
    :goto_9
    if-eqz v3, :cond_9

    .line 300
    .line 301
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 302
    .line 303
    .line 304
    :cond_9
    return-object v2

    .line 305
    :goto_a
    if-eqz v2, :cond_a

    .line 306
    .line 307
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 308
    .line 309
    .line 310
    :cond_a
    throw v0
.end method

.method public final Q(Ljava/lang/String;J[BLjava/lang/String;Ljava/lang/String;IIJJJ)Lc4/C1;
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    move-object/from16 v0, p6

    .line 3
    .line 4
    move/from16 v13, p8

    .line 5
    .line 6
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v14, 0x0

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lc4/l0;

    .line 16
    .line 17
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 18
    .line 19
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 20
    .line 21
    .line 22
    const-string v2, "Upload uri is null or empty. Destination is unknown. Dropping batch. "

    .line 23
    .line 24
    iget-object v0, v0, Lc4/T;->S:Lc4/Q;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object v14

    .line 30
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/j1;->r()Lcom/google/android/gms/internal/measurement/h1;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    move-object/from16 v3, p4

    .line 35
    .line 36
    invoke-static {v2, v3}, Lc4/E1;->O(Lcom/google/android/gms/internal/measurement/r2;[B)Lcom/google/android/gms/internal/measurement/r2;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lcom/google/android/gms/internal/measurement/h1;

    .line 41
    .line 42
    invoke-static {}, Lc4/R0;->values()[Lc4/R0;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    array-length v4, v3

    .line 47
    const/4 v5, 0x0

    .line 48
    const/4 v6, 0x0

    .line 49
    :goto_0
    if-ge v6, v4, :cond_2

    .line 50
    .line 51
    aget-object v7, v3, v6

    .line 52
    .line 53
    iget v8, v7, Lc4/R0;->G:I

    .line 54
    .line 55
    move/from16 v9, p7

    .line 56
    .line 57
    if-ne v8, v9, :cond_1

    .line 58
    .line 59
    move-object v8, v7

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    sget-object v3, Lc4/R0;->M:Lc4/R0;

    .line 65
    .line 66
    move-object v8, v3

    .line 67
    :goto_1
    sget-object v3, Lc4/R0;->I:Lc4/R0;

    .line 68
    .line 69
    if-eq v8, v3, :cond_4

    .line 70
    .line 71
    sget-object v3, Lc4/R0;->L:Lc4/R0;

    .line 72
    .line 73
    if-eq v8, v3, :cond_4

    .line 74
    .line 75
    if-lez v13, :cond_4

    .line 76
    .line 77
    new-instance v3, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 83
    .line 84
    check-cast v4, Lcom/google/android/gms/internal/measurement/j1;

    .line 85
    .line 86
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/j1;->w()Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-eqz v6, :cond_3

    .line 103
    .line 104
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    check-cast v6, Lcom/google/android/gms/internal/measurement/l1;

    .line 109
    .line 110
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/s2;->g()Lcom/google/android/gms/internal/measurement/r2;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    check-cast v6, Lcom/google/android/gms/internal/measurement/k1;

    .line 115
    .line 116
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/r2;->g()V

    .line 117
    .line 118
    .line 119
    iget-object v7, v6, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 120
    .line 121
    check-cast v7, Lcom/google/android/gms/internal/measurement/l1;

    .line 122
    .line 123
    invoke-static {v7, v13}, Lcom/google/android/gms/internal/measurement/l1;->x1(Lcom/google/android/gms/internal/measurement/l1;I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/r2;->e()Lcom/google/android/gms/internal/measurement/s2;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    check-cast v6, Lcom/google/android/gms/internal/measurement/l1;

    .line 131
    .line 132
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :catch_0
    move-exception v0

    .line 137
    goto/16 :goto_5

    .line 138
    .line 139
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/r2;->g()V

    .line 140
    .line 141
    .line 142
    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 143
    .line 144
    check-cast v4, Lcom/google/android/gms/internal/measurement/j1;

    .line 145
    .line 146
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/j1;->z(Lcom/google/android/gms/internal/measurement/j1;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/r2;->g()V

    .line 150
    .line 151
    .line 152
    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 153
    .line 154
    check-cast v4, Lcom/google/android/gms/internal/measurement/j1;

    .line 155
    .line 156
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/j1;->x(Lcom/google/android/gms/internal/measurement/j1;Ljava/util/ArrayList;)V

    .line 157
    .line 158
    .line 159
    :cond_4
    new-instance v7, Ljava/util/HashMap;

    .line 160
    .line 161
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 162
    .line 163
    .line 164
    if-eqz v0, :cond_7

    .line 165
    .line 166
    const-string v3, "\r\n"

    .line 167
    .line 168
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    array-length v3, v0

    .line 173
    const/4 v4, 0x0

    .line 174
    :goto_3
    if-ge v4, v3, :cond_7

    .line 175
    .line 176
    aget-object v6, v0, v4

    .line 177
    .line 178
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 179
    .line 180
    .line 181
    move-result v9

    .line 182
    if-eqz v9, :cond_5

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_5
    const-string v9, "="

    .line 186
    .line 187
    const/4 v10, 0x2

    .line 188
    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v9

    .line 192
    array-length v11, v9

    .line 193
    if-eq v11, v10, :cond_6

    .line 194
    .line 195
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast v0, Lc4/l0;

    .line 198
    .line 199
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 200
    .line 201
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 202
    .line 203
    .line 204
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 205
    .line 206
    const-string v3, "Invalid upload header: "

    .line 207
    .line 208
    invoke-virtual {v0, v6, v3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_6
    aget-object v6, v9, v5

    .line 213
    .line 214
    const/4 v10, 0x1

    .line 215
    aget-object v9, v9, v10

    .line 216
    .line 217
    invoke-virtual {v7, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    add-int/lit8 v4, v4, 0x1

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_7
    :goto_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/r2;->e()Lcom/google/android/gms/internal/measurement/s2;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    move-object v5, v0

    .line 228
    check-cast v5, Lcom/google/android/gms/internal/measurement/j1;

    .line 229
    .line 230
    new-instance v0, Lc4/C1;

    .line 231
    .line 232
    move-object v2, v0

    .line 233
    move-wide/from16 v3, p2

    .line 234
    .line 235
    move-object/from16 v6, p5

    .line 236
    .line 237
    move-wide/from16 v9, p11

    .line 238
    .line 239
    move-wide/from16 v11, p13

    .line 240
    .line 241
    move/from16 v13, p8

    .line 242
    .line 243
    invoke-direct/range {v2 .. v13}, Lc4/C1;-><init>(JLcom/google/android/gms/internal/measurement/j1;Ljava/lang/String;Ljava/util/Map;Lc4/R0;JJI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .line 245
    .line 246
    return-object v0

    .line 247
    :goto_5
    iget-object v2, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast v2, Lc4/l0;

    .line 250
    .line 251
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 252
    .line 253
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 254
    .line 255
    .line 256
    const-string v3, "Failed to queued MeasurementBatch from upload_queue. appId"

    .line 257
    .line 258
    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    .line 259
    .line 260
    move-object/from16 v4, p1

    .line 261
    .line 262
    invoke-virtual {v2, v4, v0, v3}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    return-object v14
.end method

.method public final R()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lc4/l0;

    .line 4
    .line 5
    iget-object v0, v0, Lc4/l0;->T:LP3/b;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 15
    .line 16
    sget-object v2, Lc4/E;->S:Lc4/D;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {v2, v3}, Lc4/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/Long;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v5, "(upload_type = 1 AND ABS(creation_timestamp - "

    .line 31
    .line 32
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v5, ") > "

    .line 39
    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, ")"

    .line 47
    .line 48
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    sget-object v6, Lc4/E;->R:Lc4/D;

    .line 56
    .line 57
    invoke-virtual {v6, v3}, Lc4/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/lang/Long;

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 64
    .line 65
    .line 66
    move-result-wide v6

    .line 67
    const-string v3, "(upload_type != 1 AND ABS(creation_timestamp - "

    .line 68
    .line 69
    invoke-static {v3, v0, v1, v5}, Lt/a;->d(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0, v6, v7, v2}, La/r;->i(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v1, "("

    .line 78
    .line 79
    const-string v3, " OR "

    .line 80
    .line 81
    invoke-static {v1, v4, v3, v0, v2}, LA0/O;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method

.method public final S(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 22
    .line 23
    .line 24
    return-object p1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :catch_0
    move-exception p2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 30
    .line 31
    .line 32
    const-string p1, ""

    .line 33
    .line 34
    return-object p1

    .line 35
    :goto_0
    :try_start_1
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Lc4/l0;

    .line 38
    .line 39
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 40
    .line 41
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 45
    .line 46
    const-string v2, "Database error"

    .line 47
    .line 48
    invoke-virtual {v0, p1, p2, v2}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :goto_1
    if-eqz v1, :cond_1

    .line 53
    .line 54
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 55
    .line 56
    .line 57
    :cond_1
    throw p1
.end method

.method public final T(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p2}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lc4/u1;->n()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "app_id=?"

    .line 15
    .line 16
    filled-new-array {p2}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catch_0
    move-exception p1

    .line 25
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lc4/l0;

    .line 28
    .line 29
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 30
    .line 31
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p2}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    const-string v1, "Error deleting snapshot. appId"

    .line 39
    .line 40
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 41
    .line 42
    invoke-virtual {v0, p2, p1, v1}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final U(Ljava/lang/String;Lc4/s;)V
    .locals 5

    .line 1
    invoke-static {p2}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lc4/u1;->n()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroid/content/ContentValues;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "app_id"

    .line 16
    .line 17
    iget-object v2, p2, Lc4/s;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "name"

    .line 23
    .line 24
    iget-object v3, p2, Lc4/s;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-wide v3, p2, Lc4/s;->c:J

    .line 30
    .line 31
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v3, "lifetime_count"

    .line 36
    .line 37
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 38
    .line 39
    .line 40
    iget-wide v3, p2, Lc4/s;->d:J

    .line 41
    .line 42
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v3, "current_bundle_count"

    .line 47
    .line 48
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 49
    .line 50
    .line 51
    iget-wide v3, p2, Lc4/s;->f:J

    .line 52
    .line 53
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v3, "last_fire_timestamp"

    .line 58
    .line 59
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 60
    .line 61
    .line 62
    iget-wide v3, p2, Lc4/s;->g:J

    .line 63
    .line 64
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const-string v3, "last_bundled_timestamp"

    .line 69
    .line 70
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 71
    .line 72
    .line 73
    const-string v1, "last_bundled_day"

    .line 74
    .line 75
    iget-object v3, p2, Lc4/s;->h:Ljava/lang/Long;

    .line 76
    .line 77
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 78
    .line 79
    .line 80
    const-string v1, "last_sampled_complex_event_id"

    .line 81
    .line 82
    iget-object v3, p2, Lc4/s;->i:Ljava/lang/Long;

    .line 83
    .line 84
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 85
    .line 86
    .line 87
    const-string v1, "last_sampling_rate"

    .line 88
    .line 89
    iget-object v3, p2, Lc4/s;->j:Ljava/lang/Long;

    .line 90
    .line 91
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 92
    .line 93
    .line 94
    iget-wide v3, p2, Lc4/s;->e:J

    .line 95
    .line 96
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const-string v3, "current_session_count"

    .line 101
    .line 102
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 103
    .line 104
    .line 105
    const/4 v1, 0x0

    .line 106
    iget-object p2, p2, Lc4/s;->k:Ljava/lang/Boolean;

    .line 107
    .line 108
    if-eqz p2, :cond_0

    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    if-eqz p2, :cond_0

    .line 115
    .line 116
    const-wide/16 v3, 0x1

    .line 117
    .line 118
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    goto :goto_0

    .line 123
    :cond_0
    move-object p2, v1

    .line 124
    :goto_0
    const-string v3, "last_exempt_from_sampling"

    .line 125
    .line 126
    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 127
    .line 128
    .line 129
    :try_start_0
    invoke-virtual {p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    const/4 v3, 0x5

    .line 134
    invoke-virtual {p2, p1, v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 135
    .line 136
    .line 137
    move-result-wide p1

    .line 138
    const-wide/16 v0, -0x1

    .line 139
    .line 140
    cmp-long v3, p1, v0

    .line 141
    .line 142
    if-nez v3, :cond_1

    .line 143
    .line 144
    iget-object p1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast p1, Lc4/l0;

    .line 147
    .line 148
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 149
    .line 150
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 151
    .line 152
    .line 153
    iget-object p1, p1, Lc4/T;->L:Lc4/Q;

    .line 154
    .line 155
    const-string p2, "Failed to insert/update event aggregates (got -1). appId"

    .line 156
    .line 157
    invoke-static {v2}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {p1, v0, p2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :catch_0
    move-exception p1

    .line 166
    goto :goto_1

    .line 167
    :cond_1
    return-void

    .line 168
    :goto_1
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast p2, Lc4/l0;

    .line 171
    .line 172
    iget-object p2, p2, Lc4/l0;->O:Lc4/T;

    .line 173
    .line 174
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 175
    .line 176
    .line 177
    invoke-static {v2}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    const-string v1, "Error storing event aggregates. appId"

    .line 182
    .line 183
    iget-object p2, p2, Lc4/T;->L:Lc4/Q;

    .line 184
    .line 185
    invoke-virtual {p2, v0, p1, v1}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method public final V(Landroid/content/ContentValues;)V
    .locals 8

    .line 1
    const-string v0, "app_id"

    .line 2
    .line 3
    const-string v1, "consent_settings"

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Lc4/l0;

    .line 18
    .line 19
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 20
    .line 21
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p1, Lc4/T;->N:Lc4/Q;

    .line 25
    .line 26
    const-string v2, "Value of the primary key is not set."

    .line 27
    .line 28
    invoke-static {v0}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {p1, v3, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catch_0
    move-exception p1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string v4, "app_id = ?"

    .line 39
    .line 40
    filled-new-array {v3}, [Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v2, v1, p1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    int-to-long v3, v3

    .line 49
    const-wide/16 v5, 0x0

    .line 50
    .line 51
    cmp-long v7, v3, v5

    .line 52
    .line 53
    if-nez v7, :cond_1

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    const/4 v4, 0x5

    .line 57
    invoke-virtual {v2, v1, v3, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    const-wide/16 v4, -0x1

    .line 62
    .line 63
    cmp-long p1, v2, v4

    .line 64
    .line 65
    if-nez p1, :cond_1

    .line 66
    .line 67
    iget-object p1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p1, Lc4/l0;

    .line 70
    .line 71
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 72
    .line 73
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p1, Lc4/T;->L:Lc4/Q;

    .line 77
    .line 78
    const-string v2, "Failed to insert/update table (got -1). key"

    .line 79
    .line 80
    invoke-static {v1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-static {v0}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {p1, v3, v4, v2}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    :cond_1
    return-void

    .line 92
    :goto_0
    iget-object v2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v2, Lc4/l0;

    .line 95
    .line 96
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 97
    .line 98
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-static {v0}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-string v3, "Error storing into table. key"

    .line 110
    .line 111
    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    .line 112
    .line 113
    invoke-virtual {v2, v1, v0, p1, v3}, Lc4/Q;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final X(Ljava/lang/String;Lc4/o1;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc4/u1;->n()V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lc4/l0;

    .line 13
    .line 14
    iget-object v1, v0, Lc4/l0;->T:LP3/b;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    sget-object v3, Lc4/E;->v0:Lc4/D;

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-virtual {v3, v4}, Lc4/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Ljava/lang/Long;

    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 33
    .line 34
    .line 35
    move-result-wide v5

    .line 36
    sub-long v5, v1, v5

    .line 37
    .line 38
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 39
    .line 40
    iget-wide v7, p2, Lc4/o1;->H:J

    .line 41
    .line 42
    cmp-long v9, v7, v5

    .line 43
    .line 44
    if-ltz v9, :cond_0

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Lc4/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Ljava/lang/Long;

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 53
    .line 54
    .line 55
    move-result-wide v5

    .line 56
    add-long/2addr v5, v1

    .line 57
    cmp-long v3, v7, v5

    .line 58
    .line 59
    if-lez v3, :cond_1

    .line 60
    .line 61
    :cond_0
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const-string v5, "Storing trigger URI outside of the max retention time span. appId, now, timestamp"

    .line 77
    .line 78
    iget-object v6, v0, Lc4/T;->O:Lc4/Q;

    .line 79
    .line 80
    invoke-virtual {v6, v3, v1, v2, v5}, Lc4/Q;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 84
    .line 85
    .line 86
    const-string v1, "Saving trigger URI"

    .line 87
    .line 88
    iget-object v2, v0, Lc4/T;->T:Lc4/Q;

    .line 89
    .line 90
    invoke-virtual {v2, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    new-instance v1, Landroid/content/ContentValues;

    .line 94
    .line 95
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v2, "app_id"

    .line 99
    .line 100
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v2, p2, Lc4/o1;->G:Ljava/lang/String;

    .line 104
    .line 105
    const-string v3, "trigger_uri"

    .line 106
    .line 107
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget p2, p2, Lc4/o1;->I:I

    .line 111
    .line 112
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    const-string v2, "source"

    .line 117
    .line 118
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    const-string v2, "timestamp_millis"

    .line 126
    .line 127
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 128
    .line 129
    .line 130
    :try_start_0
    invoke-virtual {p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    const-string v2, "trigger_uris"

    .line 135
    .line 136
    invoke-virtual {p2, v2, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 137
    .line 138
    .line 139
    move-result-wide v1

    .line 140
    const-wide/16 v3, -0x1

    .line 141
    .line 142
    cmp-long p2, v1, v3

    .line 143
    .line 144
    if-nez p2, :cond_2

    .line 145
    .line 146
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 147
    .line 148
    .line 149
    iget-object p2, v0, Lc4/T;->L:Lc4/Q;

    .line 150
    .line 151
    const-string v0, "Failed to insert trigger URI (got -1). appId"

    .line 152
    .line 153
    invoke-static {p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {p2, v1, v0}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :catch_0
    move-exception p2

    .line 162
    goto :goto_0

    .line 163
    :cond_2
    return-void

    .line 164
    :goto_0
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v0, Lc4/l0;

    .line 167
    .line 168
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 169
    .line 170
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 171
    .line 172
    .line 173
    invoke-static {p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    const-string v1, "Error storing trigger URI. appId"

    .line 178
    .line 179
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 180
    .line 181
    invoke-virtual {v0, p1, p2, v1}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    return-void
.end method

.method public final Y()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lc4/l0;

    .line 4
    .line 5
    iget-object v0, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "google_app_measurement.db"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public final Z(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/b1;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc4/u1;->n()V

    .line 5
    .line 6
    .line 7
    invoke-static {p5}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lc4/l0;

    .line 16
    .line 17
    invoke-virtual {p5}, Lcom/google/android/gms/internal/measurement/c2;->c()[B

    .line 18
    .line 19
    .line 20
    move-result-object p5

    .line 21
    iget-object v1, v0, Lc4/l0;->O:Lc4/T;

    .line 22
    .line 23
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, v0, Lc4/l0;->S:Lc4/O;

    .line 27
    .line 28
    invoke-virtual {v2, p1}, Lc4/O;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    array-length v3, p5

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string v4, "Saving complex main event, appId, data size"

    .line 38
    .line 39
    iget-object v1, v1, Lc4/T;->T:Lc4/Q;

    .line 40
    .line 41
    invoke-virtual {v1, v2, v3, v4}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Landroid/content/ContentValues;

    .line 45
    .line 46
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v2, "app_id"

    .line 50
    .line 51
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v2, "event_id"

    .line 55
    .line 56
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    const-string p3, "children_to_process"

    .line 64
    .line 65
    invoke-virtual {v1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 66
    .line 67
    .line 68
    const-string p2, "main_event"

    .line 69
    .line 70
    invoke-virtual {v1, p2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 71
    .line 72
    .line 73
    :try_start_0
    invoke-virtual {p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    const-string p3, "main_event_params"

    .line 78
    .line 79
    const/4 p4, 0x0

    .line 80
    const/4 p5, 0x5

    .line 81
    invoke-virtual {p2, p3, p4, v1, p5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 82
    .line 83
    .line 84
    move-result-wide p2

    .line 85
    const-wide/16 p4, -0x1

    .line 86
    .line 87
    cmp-long v1, p2, p4

    .line 88
    .line 89
    if-nez v1, :cond_0

    .line 90
    .line 91
    iget-object p2, v0, Lc4/l0;->O:Lc4/T;

    .line 92
    .line 93
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 94
    .line 95
    .line 96
    iget-object p2, p2, Lc4/T;->L:Lc4/Q;

    .line 97
    .line 98
    const-string p3, "Failed to insert complex main event (got -1). appId"

    .line 99
    .line 100
    invoke-static {p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 101
    .line 102
    .line 103
    move-result-object p4

    .line 104
    invoke-virtual {p2, p4, p3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :catch_0
    move-exception p2

    .line 109
    goto :goto_0

    .line 110
    :cond_0
    return-void

    .line 111
    :goto_0
    iget-object p3, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast p3, Lc4/l0;

    .line 114
    .line 115
    iget-object p3, p3, Lc4/l0;->O:Lc4/T;

    .line 116
    .line 117
    invoke-static {p3}, Lc4/l0;->k(Lc4/s0;)V

    .line 118
    .line 119
    .line 120
    invoke-static {p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    const-string p4, "Error storing complex main event. appId"

    .line 125
    .line 126
    iget-object p3, p3, Lc4/T;->L:Lc4/Q;

    .line 127
    .line 128
    invoke-virtual {p3, p1, p2, p4}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public final a0(Lc4/f;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc4/u1;->n()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p1, Lc4/f;->G:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p1, Lc4/f;->I:Lc4/F1;

    .line 13
    .line 14
    iget-object v1, v1, Lc4/F1;->H:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Lc4/o;->t0(Ljava/lang/String;Ljava/lang/String;)Lc4/G1;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    filled-new-array {v0}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "SELECT COUNT(1) FROM conditional_properties WHERE app_id=?"

    .line 27
    .line 28
    invoke-virtual {p0, v2, v1}, Lc4/o;->e0(Ljava/lang/String;[Ljava/lang/String;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    iget-object v3, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v3, Lc4/l0;

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    const-wide/16 v3, 0x3e8

    .line 40
    .line 41
    cmp-long v5, v1, v3

    .line 42
    .line 43
    if-gez v5, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 p1, 0x0

    .line 47
    return p1

    .line 48
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    .line 49
    .line 50
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v2, "app_id"

    .line 54
    .line 55
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p1, Lc4/f;->H:Ljava/lang/String;

    .line 59
    .line 60
    const-string v3, "origin"

    .line 61
    .line 62
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v2, p1, Lc4/f;->I:Lc4/F1;

    .line 66
    .line 67
    iget-object v2, v2, Lc4/F1;->H:Ljava/lang/String;

    .line 68
    .line 69
    const-string v3, "name"

    .line 70
    .line 71
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v2, p1, Lc4/f;->I:Lc4/F1;

    .line 75
    .line 76
    invoke-virtual {v2}, Lc4/F1;->i()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v2}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v1, v2}, Lc4/o;->d0(Landroid/content/ContentValues;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    iget-boolean v2, p1, Lc4/f;->K:Z

    .line 87
    .line 88
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    const-string v3, "active"

    .line 93
    .line 94
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 95
    .line 96
    .line 97
    iget-object v2, p1, Lc4/f;->L:Ljava/lang/String;

    .line 98
    .line 99
    const-string v3, "trigger_event_name"

    .line 100
    .line 101
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-wide v2, p1, Lc4/f;->N:J

    .line 105
    .line 106
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    const-string v3, "trigger_timeout"

    .line 111
    .line 112
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 113
    .line 114
    .line 115
    iget-object v2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v2, Lc4/l0;

    .line 118
    .line 119
    iget-object v3, v2, Lc4/l0;->R:Lc4/I1;

    .line 120
    .line 121
    invoke-static {v3}, Lc4/l0;->i(Lc4/s0;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    iget-object v3, p1, Lc4/f;->M:Lc4/u;

    .line 128
    .line 129
    invoke-static {v3}, Lc4/I1;->o0(Landroid/os/Parcelable;)[B

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    const-string v4, "timed_out_event"

    .line 134
    .line 135
    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 136
    .line 137
    .line 138
    iget-wide v3, p1, Lc4/f;->J:J

    .line 139
    .line 140
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    const-string v4, "creation_timestamp"

    .line 145
    .line 146
    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 147
    .line 148
    .line 149
    iget-object v3, v2, Lc4/l0;->R:Lc4/I1;

    .line 150
    .line 151
    invoke-static {v3}, Lc4/l0;->i(Lc4/s0;)V

    .line 152
    .line 153
    .line 154
    iget-object v4, p1, Lc4/f;->O:Lc4/u;

    .line 155
    .line 156
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    invoke-static {v4}, Lc4/I1;->o0(Landroid/os/Parcelable;)[B

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    const-string v4, "triggered_event"

    .line 164
    .line 165
    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 166
    .line 167
    .line 168
    iget-object v3, p1, Lc4/f;->I:Lc4/F1;

    .line 169
    .line 170
    iget-wide v3, v3, Lc4/F1;->I:J

    .line 171
    .line 172
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    const-string v4, "triggered_timestamp"

    .line 177
    .line 178
    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 179
    .line 180
    .line 181
    iget-wide v3, p1, Lc4/f;->P:J

    .line 182
    .line 183
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    const-string v4, "time_to_live"

    .line 188
    .line 189
    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 190
    .line 191
    .line 192
    iget-object p1, p1, Lc4/f;->Q:Lc4/u;

    .line 193
    .line 194
    invoke-static {p1}, Lc4/I1;->o0(Landroid/os/Parcelable;)[B

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    const-string v3, "expired_event"

    .line 199
    .line 200
    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 201
    .line 202
    .line 203
    :try_start_0
    invoke-virtual {p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    const-string v3, "conditional_properties"

    .line 208
    .line 209
    const/4 v4, 0x0

    .line 210
    const/4 v5, 0x5

    .line 211
    invoke-virtual {p1, v3, v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 212
    .line 213
    .line 214
    move-result-wide v3

    .line 215
    const-wide/16 v5, -0x1

    .line 216
    .line 217
    cmp-long p1, v3, v5

    .line 218
    .line 219
    if-nez p1, :cond_2

    .line 220
    .line 221
    iget-object p1, v2, Lc4/l0;->O:Lc4/T;

    .line 222
    .line 223
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 224
    .line 225
    .line 226
    iget-object p1, p1, Lc4/T;->L:Lc4/Q;

    .line 227
    .line 228
    const-string v1, "Failed to insert/update conditional user property (got -1)"

    .line 229
    .line 230
    invoke-static {v0}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-virtual {p1, v2, v1}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .line 236
    .line 237
    goto :goto_1

    .line 238
    :catch_0
    move-exception p1

    .line 239
    iget-object v1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast v1, Lc4/l0;

    .line 242
    .line 243
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 244
    .line 245
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 246
    .line 247
    .line 248
    invoke-static {v0}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    const-string v2, "Error storing conditional user property"

    .line 253
    .line 254
    iget-object v1, v1, Lc4/T;->L:Lc4/Q;

    .line 255
    .line 256
    invoke-virtual {v1, v0, p1, v2}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 260
    return p1
.end method

.method public final b0(Lc4/G1;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc4/u1;->n()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p1, Lc4/G1;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p1, Lc4/G1;->c:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Lc4/o;->t0(Ljava/lang/String;Ljava/lang/String;)Lc4/G1;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p1, Lc4/G1;->b:Ljava/lang/String;

    .line 16
    .line 17
    if-nez v2, :cond_2

    .line 18
    .line 19
    invoke-static {v1}, Lc4/I1;->i0(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v4, 0x0

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    filled-new-array {v0}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v5, "select count(1) from user_attributes where app_id=? and name not like \'!_%\' escape \'!\'"

    .line 31
    .line 32
    invoke-virtual {p0, v5, v2}, Lc4/o;->e0(Ljava/lang/String;[Ljava/lang/String;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v5

    .line 36
    iget-object v2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v2, Lc4/l0;

    .line 39
    .line 40
    iget-object v2, v2, Lc4/l0;->M:Lc4/h;

    .line 41
    .line 42
    sget-object v7, Lc4/E;->V:Lc4/D;

    .line 43
    .line 44
    invoke-virtual {v2, v0, v7}, Lc4/h;->t(Ljava/lang/String;Lc4/D;)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    const/16 v7, 0x64

    .line 49
    .line 50
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    const/16 v7, 0x19

    .line 55
    .line 56
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    int-to-long v7, v2

    .line 61
    cmp-long v2, v5, v7

    .line 62
    .line 63
    if-gez v2, :cond_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    return v4

    .line 67
    :cond_1
    const-string v2, "_npa"

    .line 68
    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-nez v2, :cond_2

    .line 74
    .line 75
    filled-new-array {v0, v3}, [Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const-string v5, "select count(1) from user_attributes where app_id=? and origin=? AND name like \'!_%\' escape \'!\'"

    .line 80
    .line 81
    invoke-virtual {p0, v5, v2}, Lc4/o;->e0(Ljava/lang/String;[Ljava/lang/String;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v5

    .line 85
    iget-object v2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v2, Lc4/l0;

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    const-wide/16 v7, 0x19

    .line 93
    .line 94
    cmp-long v2, v5, v7

    .line 95
    .line 96
    if-ltz v2, :cond_2

    .line 97
    .line 98
    return v4

    .line 99
    :cond_2
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    .line 100
    .line 101
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v4, "app_id"

    .line 105
    .line 106
    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v4, "origin"

    .line 110
    .line 111
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string v3, "name"

    .line 115
    .line 116
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-wide v3, p1, Lc4/G1;->d:J

    .line 120
    .line 121
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    const-string v3, "set_timestamp"

    .line 126
    .line 127
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p1, Lc4/G1;->e:Ljava/lang/Object;

    .line 131
    .line 132
    invoke-static {v2, p1}, Lc4/o;->d0(Landroid/content/ContentValues;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    :try_start_0
    invoke-virtual {p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    const-string v1, "user_attributes"

    .line 140
    .line 141
    const/4 v3, 0x0

    .line 142
    const/4 v4, 0x5

    .line 143
    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 144
    .line 145
    .line 146
    move-result-wide v1

    .line 147
    const-wide/16 v3, -0x1

    .line 148
    .line 149
    cmp-long p1, v1, v3

    .line 150
    .line 151
    if-nez p1, :cond_3

    .line 152
    .line 153
    iget-object p1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast p1, Lc4/l0;

    .line 156
    .line 157
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 158
    .line 159
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p1, Lc4/T;->L:Lc4/Q;

    .line 163
    .line 164
    const-string v1, "Failed to insert/update user property (got -1). appId"

    .line 165
    .line 166
    invoke-static {v0}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {p1, v2, v1}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :catch_0
    move-exception p1

    .line 175
    iget-object v1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast v1, Lc4/l0;

    .line 178
    .line 179
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 180
    .line 181
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 182
    .line 183
    .line 184
    invoke-static {v0}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    iget-object v1, v1, Lc4/T;->L:Lc4/Q;

    .line 189
    .line 190
    const-string v2, "Error storing user property. appId"

    .line 191
    .line 192
    invoke-virtual {v1, v0, p1, v2}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 196
    return p1
.end method

.method public final c0(Ljava/lang/String;JJLt2/c;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p6

    .line 4
    .line 5
    const-string v0, "select metadata_fingerprint from raw_events where app_id = ?"

    .line 6
    .line 7
    const-string v3, "select app_id, metadata_fingerprint from raw_events where "

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Lc1/d;->m()V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p0 .. p0}, Lc4/u1;->n()V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 17
    .line 18
    .line 19
    move-result-object v14

    .line 20
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    const-string v6, ""

    .line 25
    .line 26
    const-wide/16 v15, -0x1

    .line 27
    .line 28
    const/4 v13, 0x2

    .line 29
    const/4 v12, 0x1

    .line 30
    const/4 v11, 0x0

    .line 31
    if-eqz v5, :cond_3

    .line 32
    .line 33
    cmp-long v0, p4, v15

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    :try_start_1
    new-array v5, v13, [Ljava/lang/String;

    .line 38
    .line 39
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    aput-object v7, v5, v11

    .line 44
    .line 45
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    aput-object v7, v5, v12

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-array v5, v12, [Ljava/lang/String;

    .line 53
    .line 54
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    aput-object v7, v5, v11

    .line 59
    .line 60
    :goto_0
    if-eqz v0, :cond_1

    .line 61
    .line 62
    const-string v6, "rowid <= ? and "

    .line 63
    .line 64
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v3, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    .line 73
    .line 74
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v14, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_2

    .line 90
    .line 91
    goto/16 :goto_5

    .line 92
    .line 93
    :cond_2
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :try_start_2
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    goto/16 :goto_6

    .line 107
    .line 108
    :catch_0
    move-exception v0

    .line 109
    goto/16 :goto_4

    .line 110
    .line 111
    :catch_1
    move-exception v0

    .line 112
    move-object/from16 v3, p1

    .line 113
    .line 114
    goto/16 :goto_4

    .line 115
    .line 116
    :cond_3
    cmp-long v3, p4, v15

    .line 117
    .line 118
    if-eqz v3, :cond_4

    .line 119
    .line 120
    :try_start_3
    new-array v5, v13, [Ljava/lang/String;

    .line 121
    .line 122
    aput-object p1, v5, v11

    .line 123
    .line 124
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    aput-object v7, v5, v12

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_4
    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    :goto_1
    if-eqz v3, :cond_5

    .line 136
    .line 137
    const-string v6, " and rowid <= ?"

    .line 138
    .line 139
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v0, " order by rowid limit 1;"

    .line 148
    .line 149
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v14, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_6

    .line 165
    .line 166
    goto/16 :goto_5

    .line 167
    .line 168
    :cond_6
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 173
    .line 174
    .line 175
    move-object/from16 v3, p1

    .line 176
    .line 177
    :goto_2
    :try_start_4
    const-string v6, "raw_events_metadata"

    .line 178
    .line 179
    new-array v7, v12, [Ljava/lang/String;

    .line 180
    .line 181
    const-string v5, "metadata"

    .line 182
    .line 183
    aput-object v5, v7, v11

    .line 184
    .line 185
    const-string v8, "app_id = ? and metadata_fingerprint = ?"

    .line 186
    .line 187
    filled-new-array {v3, v0}, [Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    const-string v17, "rowid"

    .line 192
    .line 193
    const-string v18, "2"

    .line 194
    .line 195
    const/4 v10, 0x0

    .line 196
    const/16 v19, 0x0

    .line 197
    .line 198
    move-object v5, v14

    .line 199
    const/4 v15, 0x0

    .line 200
    move-object/from16 v11, v19

    .line 201
    .line 202
    move-object/from16 v12, v17

    .line 203
    .line 204
    move-object/from16 v13, v18

    .line 205
    .line 206
    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    if-nez v5, :cond_7

    .line 215
    .line 216
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v0, Lc4/l0;

    .line 219
    .line 220
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 221
    .line 222
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 223
    .line 224
    .line 225
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 226
    .line 227
    const-string v2, "Raw event metadata record is missing. appId"

    .line 228
    .line 229
    invoke-static {v3}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    invoke-virtual {v0, v5, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    goto/16 :goto_5

    .line 237
    .line 238
    :cond_7
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getBlob(I)[B

    .line 239
    .line 240
    .line 241
    move-result-object v5
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 242
    :try_start_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/l1;->n2()Lcom/google/android/gms/internal/measurement/k1;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    invoke-static {v6, v5}, Lc4/E1;->O(Lcom/google/android/gms/internal/measurement/r2;[B)Lcom/google/android/gms/internal/measurement/r2;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    check-cast v5, Lcom/google/android/gms/internal/measurement/k1;

    .line 251
    .line 252
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/r2;->e()Lcom/google/android/gms/internal/measurement/s2;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    check-cast v5, Lcom/google/android/gms/internal/measurement/l1;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 257
    .line 258
    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 259
    .line 260
    .line 261
    move-result v6

    .line 262
    if-eqz v6, :cond_8

    .line 263
    .line 264
    iget-object v6, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast v6, Lc4/l0;

    .line 267
    .line 268
    iget-object v6, v6, Lc4/l0;->O:Lc4/T;

    .line 269
    .line 270
    invoke-static {v6}, Lc4/l0;->k(Lc4/s0;)V

    .line 271
    .line 272
    .line 273
    iget-object v6, v6, Lc4/T;->O:Lc4/Q;

    .line 274
    .line 275
    const-string v7, "Get multiple raw event metadata records, expected one. appId"

    .line 276
    .line 277
    invoke-static {v3}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 278
    .line 279
    .line 280
    move-result-object v8

    .line 281
    invoke-virtual {v6, v8, v7}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    :cond_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 285
    .line 286
    .line 287
    iput-object v5, v2, Lt2/c;->I:Ljava/lang/Object;

    .line 288
    .line 289
    const/4 v13, 0x3

    .line 290
    const-wide/16 v5, -0x1

    .line 291
    .line 292
    cmp-long v7, p4, v5

    .line 293
    .line 294
    if-eqz v7, :cond_9

    .line 295
    .line 296
    const-string v5, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    .line 297
    .line 298
    new-array v6, v13, [Ljava/lang/String;

    .line 299
    .line 300
    aput-object v3, v6, v15

    .line 301
    .line 302
    const/4 v12, 0x1

    .line 303
    aput-object v0, v6, v12

    .line 304
    .line 305
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    const/4 v11, 0x2

    .line 310
    aput-object v0, v6, v11

    .line 311
    .line 312
    move-object v8, v5

    .line 313
    move-object v9, v6

    .line 314
    goto :goto_3

    .line 315
    :cond_9
    const/4 v11, 0x2

    .line 316
    const/4 v12, 0x1

    .line 317
    const-string v5, "app_id = ? and metadata_fingerprint = ?"

    .line 318
    .line 319
    filled-new-array {v3, v0}, [Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    move-object v9, v0

    .line 324
    move-object v8, v5

    .line 325
    :goto_3
    const-string v6, "raw_events"

    .line 326
    .line 327
    const/4 v0, 0x4

    .line 328
    new-array v7, v0, [Ljava/lang/String;

    .line 329
    .line 330
    const-string v0, "rowid"

    .line 331
    .line 332
    aput-object v0, v7, v15

    .line 333
    .line 334
    const-string v0, "name"

    .line 335
    .line 336
    aput-object v0, v7, v12

    .line 337
    .line 338
    const-string v0, "timestamp"

    .line 339
    .line 340
    aput-object v0, v7, v11

    .line 341
    .line 342
    const-string v0, "data"

    .line 343
    .line 344
    aput-object v0, v7, v13

    .line 345
    .line 346
    const-string v0, "rowid"

    .line 347
    .line 348
    const/4 v10, 0x0

    .line 349
    const/16 v16, 0x0

    .line 350
    .line 351
    const/16 v17, 0x0

    .line 352
    .line 353
    move-object v5, v14

    .line 354
    const/4 v14, 0x2

    .line 355
    move-object/from16 v11, v16

    .line 356
    .line 357
    const/4 v14, 0x1

    .line 358
    move-object v12, v0

    .line 359
    const/4 v14, 0x3

    .line 360
    move-object/from16 v13, v17

    .line 361
    .line 362
    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 363
    .line 364
    .line 365
    move-result-object v4

    .line 366
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    if-eqz v0, :cond_c

    .line 371
    .line 372
    :cond_a
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    .line 373
    .line 374
    .line 375
    move-result-wide v5

    .line 376
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getBlob(I)[B

    .line 377
    .line 378
    .line 379
    move-result-object v0
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 380
    :try_start_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/b1;->u()Lcom/google/android/gms/internal/measurement/a1;

    .line 381
    .line 382
    .line 383
    move-result-object v7

    .line 384
    invoke-static {v7, v0}, Lc4/E1;->O(Lcom/google/android/gms/internal/measurement/r2;[B)Lcom/google/android/gms/internal/measurement/r2;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    check-cast v0, Lcom/google/android/gms/internal/measurement/a1;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 389
    .line 390
    const/4 v7, 0x1

    .line 391
    :try_start_8
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v8

    .line 395
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/r2;->g()V

    .line 396
    .line 397
    .line 398
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 399
    .line 400
    check-cast v9, Lcom/google/android/gms/internal/measurement/b1;

    .line 401
    .line 402
    invoke-static {v9, v8}, Lcom/google/android/gms/internal/measurement/b1;->C(Lcom/google/android/gms/internal/measurement/b1;Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    const/4 v8, 0x2

    .line 406
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 407
    .line 408
    .line 409
    move-result-wide v9

    .line 410
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/r2;->g()V

    .line 411
    .line 412
    .line 413
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 414
    .line 415
    check-cast v11, Lcom/google/android/gms/internal/measurement/b1;

    .line 416
    .line 417
    invoke-static {v9, v10, v11}, Lcom/google/android/gms/internal/measurement/b1;->F(JLcom/google/android/gms/internal/measurement/b1;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/r2;->e()Lcom/google/android/gms/internal/measurement/s2;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    check-cast v0, Lcom/google/android/gms/internal/measurement/b1;

    .line 425
    .line 426
    invoke-virtual {v2, v5, v6, v0}, Lt2/c;->d(JLcom/google/android/gms/internal/measurement/b1;)Z

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    if-nez v0, :cond_b

    .line 431
    .line 432
    goto :goto_5

    .line 433
    :catch_2
    move-exception v0

    .line 434
    const/4 v7, 0x1

    .line 435
    const/4 v8, 0x2

    .line 436
    iget-object v5, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 437
    .line 438
    check-cast v5, Lc4/l0;

    .line 439
    .line 440
    iget-object v5, v5, Lc4/l0;->O:Lc4/T;

    .line 441
    .line 442
    invoke-static {v5}, Lc4/l0;->k(Lc4/s0;)V

    .line 443
    .line 444
    .line 445
    iget-object v5, v5, Lc4/T;->L:Lc4/Q;

    .line 446
    .line 447
    const-string v6, "Data loss. Failed to merge raw event. appId"

    .line 448
    .line 449
    invoke-static {v3}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 450
    .line 451
    .line 452
    move-result-object v9

    .line 453
    invoke-virtual {v5, v9, v0, v6}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    :cond_b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 457
    .line 458
    .line 459
    move-result v0

    .line 460
    if-nez v0, :cond_a

    .line 461
    .line 462
    goto :goto_5

    .line 463
    :cond_c
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 464
    .line 465
    check-cast v0, Lc4/l0;

    .line 466
    .line 467
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 468
    .line 469
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 470
    .line 471
    .line 472
    iget-object v0, v0, Lc4/T;->O:Lc4/Q;

    .line 473
    .line 474
    const-string v2, "Raw event data disappeared while in transaction. appId"

    .line 475
    .line 476
    invoke-static {v3}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 477
    .line 478
    .line 479
    move-result-object v5

    .line 480
    invoke-virtual {v0, v5, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    goto :goto_5

    .line 484
    :catch_3
    move-exception v0

    .line 485
    iget-object v2, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 486
    .line 487
    check-cast v2, Lc4/l0;

    .line 488
    .line 489
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 490
    .line 491
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 492
    .line 493
    .line 494
    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    .line 495
    .line 496
    const-string v5, "Data loss. Failed to merge raw event metadata. appId"

    .line 497
    .line 498
    invoke-static {v3}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 499
    .line 500
    .line 501
    move-result-object v6

    .line 502
    invoke-virtual {v2, v6, v0, v5}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 503
    .line 504
    .line 505
    goto :goto_5

    .line 506
    :goto_4
    :try_start_9
    iget-object v2, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 507
    .line 508
    check-cast v2, Lc4/l0;

    .line 509
    .line 510
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 511
    .line 512
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 513
    .line 514
    .line 515
    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    .line 516
    .line 517
    const-string v5, "Data loss. Error selecting raw event. appId"

    .line 518
    .line 519
    invoke-static {v3}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 520
    .line 521
    .line 522
    move-result-object v3

    .line 523
    invoke-virtual {v2, v3, v0, v5}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 524
    .line 525
    .line 526
    :goto_5
    if-eqz v4, :cond_d

    .line 527
    .line 528
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 529
    .line 530
    .line 531
    :cond_d
    return-void

    .line 532
    :goto_6
    if-eqz v4, :cond_e

    .line 533
    .line 534
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 535
    .line 536
    .line 537
    :cond_e
    throw v0
.end method

.method public final e0(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getLong(I)J

    .line 18
    .line 19
    .line 20
    move-result-wide p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 22
    .line 23
    .line 24
    return-wide p1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :catch_0
    move-exception p2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    :try_start_1
    new-instance p2, Landroid/database/sqlite/SQLiteException;

    .line 30
    .line 31
    const-string v0, "Database returned empty set"

    .line 32
    .line 33
    invoke-direct {p2, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :goto_0
    :try_start_2
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Lc4/l0;

    .line 40
    .line 41
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 42
    .line 43
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 47
    .line 48
    const-string v2, "Database error"

    .line 49
    .line 50
    invoke-virtual {v0, p1, p2, v2}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    :goto_1
    if-eqz v1, :cond_1

    .line 55
    .line 56
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 57
    .line 58
    .line 59
    :cond_1
    throw p1
.end method

.method public final f0(Ljava/lang/String;[Ljava/lang/String;J)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getLong(I)J

    .line 18
    .line 19
    .line 20
    move-result-wide p3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_2

    .line 24
    :catch_0
    move-exception p2

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 27
    .line 28
    .line 29
    return-wide p3

    .line 30
    :goto_1
    :try_start_1
    iget-object p3, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p3, Lc4/l0;

    .line 33
    .line 34
    iget-object p3, p3, Lc4/l0;->O:Lc4/T;

    .line 35
    .line 36
    invoke-static {p3}, Lc4/l0;->k(Lc4/s0;)V

    .line 37
    .line 38
    .line 39
    iget-object p3, p3, Lc4/T;->L:Lc4/Q;

    .line 40
    .line 41
    const-string p4, "Database error"

    .line 42
    .line 43
    invoke-virtual {p3, p1, p2, p4}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :goto_2
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 50
    .line 51
    .line 52
    :cond_1
    throw p1
.end method

.method public final g0(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/j1;Ljava/lang/String;Ljava/util/Map;Lc4/R0;Ljava/lang/Long;)J
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p6

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lc1/d;->m()V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Lc4/u1;->n()V

    .line 11
    .line 12
    .line 13
    invoke-static/range {p2 .. p2}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lc4/l0;

    .line 22
    .line 23
    iget-object v4, v0, Lc4/l0;->M:Lc4/h;

    .line 24
    .line 25
    sget-object v5, Lc4/E;->N0:Lc4/D;

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    invoke-virtual {v4, v6, v5}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const-wide/16 v7, -0x1

    .line 33
    .line 34
    if-eqz v4, :cond_8

    .line 35
    .line 36
    invoke-virtual/range {p0 .. p0}, Lc1/d;->m()V

    .line 37
    .line 38
    .line 39
    invoke-virtual/range {p0 .. p0}, Lc4/u1;->n()V

    .line 40
    .line 41
    .line 42
    invoke-virtual/range {p0 .. p0}, Lc4/o;->Y()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const-string v5, "upload_queue"

    .line 47
    .line 48
    const/4 v9, 0x0

    .line 49
    if-nez v4, :cond_0

    .line 50
    .line 51
    goto/16 :goto_1

    .line 52
    .line 53
    :cond_0
    iget-object v4, v1, Lc4/q1;->H:Lc4/A1;

    .line 54
    .line 55
    iget-object v10, v4, Lc4/A1;->O:Lc4/f1;

    .line 56
    .line 57
    iget-object v10, v10, Lc4/f1;->L:LE1/I;

    .line 58
    .line 59
    invoke-virtual {v10}, LE1/I;->a()J

    .line 60
    .line 61
    .line 62
    move-result-wide v10

    .line 63
    iget-object v12, v0, Lc4/l0;->T:LP3/b;

    .line 64
    .line 65
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 69
    .line 70
    .line 71
    move-result-wide v12

    .line 72
    sub-long v10, v12, v10

    .line 73
    .line 74
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    .line 75
    .line 76
    .line 77
    move-result-wide v10

    .line 78
    sget-object v14, Lc4/E;->M:Lc4/D;

    .line 79
    .line 80
    invoke-virtual {v14, v6}, Lc4/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v14

    .line 84
    check-cast v14, Ljava/lang/Long;

    .line 85
    .line 86
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    .line 87
    .line 88
    .line 89
    move-result-wide v14

    .line 90
    cmp-long v16, v10, v14

    .line 91
    .line 92
    if-lez v16, :cond_3

    .line 93
    .line 94
    iget-object v4, v4, Lc4/A1;->O:Lc4/f1;

    .line 95
    .line 96
    iget-object v4, v4, Lc4/f1;->L:LE1/I;

    .line 97
    .line 98
    invoke-virtual {v4, v12, v13}, LE1/I;->b(J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual/range {p0 .. p0}, Lc1/d;->m()V

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {p0 .. p0}, Lc4/u1;->n()V

    .line 105
    .line 106
    .line 107
    invoke-virtual/range {p0 .. p0}, Lc4/o;->Y()Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-nez v4, :cond_1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-virtual/range {p0 .. p0}, Lc4/o;->R()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    new-array v11, v9, [Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v4, v5, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-lez v4, :cond_2

    .line 129
    .line 130
    iget-object v10, v0, Lc4/l0;->O:Lc4/T;

    .line 131
    .line 132
    invoke-static {v10}, Lc4/l0;->k(Lc4/s0;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    iget-object v10, v10, Lc4/T;->T:Lc4/Q;

    .line 140
    .line 141
    const-string v11, "Deleted stale MeasurementBatch rows from upload_queue. rowsDeleted"

    .line 142
    .line 143
    invoke-virtual {v10, v4, v11}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :cond_2
    :goto_0
    sget-object v4, Lc4/E;->Q0:Lc4/D;

    .line 147
    .line 148
    iget-object v0, v0, Lc4/l0;->M:Lc4/h;

    .line 149
    .line 150
    invoke-virtual {v0, v6, v4}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    if-eqz v4, :cond_3

    .line 155
    .line 156
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual/range {p0 .. p0}, Lc1/d;->m()V

    .line 160
    .line 161
    .line 162
    invoke-virtual/range {p0 .. p0}, Lc4/u1;->n()V

    .line 163
    .line 164
    .line 165
    :try_start_0
    sget-object v4, Lc4/E;->A:Lc4/D;

    .line 166
    .line 167
    invoke-virtual {v0, v2, v4}, Lc4/h;->t(Ljava/lang/String;Lc4/D;)I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-lez v0, :cond_3

    .line 172
    .line 173
    invoke-virtual/range {p0 .. p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    const-string v10, "rowid in (SELECT rowid FROM upload_queue WHERE app_id=? ORDER BY rowid DESC LIMIT -1 OFFSET ?)"

    .line 178
    .line 179
    const/4 v11, 0x2

    .line 180
    new-array v11, v11, [Ljava/lang/String;

    .line 181
    .line 182
    aput-object v2, v11, v9

    .line 183
    .line 184
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    const/4 v12, 0x1

    .line 189
    aput-object v0, v11, v12

    .line 190
    .line 191
    invoke-virtual {v4, v5, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :catch_0
    move-exception v0

    .line 196
    iget-object v4, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v4, Lc4/l0;

    .line 199
    .line 200
    iget-object v4, v4, Lc4/l0;->O:Lc4/T;

    .line 201
    .line 202
    invoke-static {v4}, Lc4/l0;->k(Lc4/s0;)V

    .line 203
    .line 204
    .line 205
    invoke-static/range {p1 .. p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 206
    .line 207
    .line 208
    move-result-object v10

    .line 209
    const-string v11, "Error deleting over the limit queued batches. appId"

    .line 210
    .line 211
    iget-object v4, v4, Lc4/T;->L:Lc4/Q;

    .line 212
    .line 213
    invoke-virtual {v4, v10, v0, v11}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :cond_3
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    .line 217
    .line 218
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 230
    .line 231
    .line 232
    move-result v10

    .line 233
    if-eqz v10, :cond_4

    .line 234
    .line 235
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v10

    .line 239
    check-cast v10, Ljava/util/Map$Entry;

    .line 240
    .line 241
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v11

    .line 245
    check-cast v11, Ljava/lang/String;

    .line 246
    .line 247
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v10

    .line 251
    check-cast v10, Ljava/lang/String;

    .line 252
    .line 253
    new-instance v12, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v11, "="

    .line 262
    .line 263
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v10

    .line 273
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    goto :goto_2

    .line 277
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/c2;->c()[B

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    new-instance v10, Landroid/content/ContentValues;

    .line 282
    .line 283
    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 284
    .line 285
    .line 286
    const-string v11, "app_id"

    .line 287
    .line 288
    invoke-virtual {v10, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    const-string v11, "measurement_batch"

    .line 292
    .line 293
    invoke-virtual {v10, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 294
    .line 295
    .line 296
    const-string v4, "upload_uri"

    .line 297
    .line 298
    move-object/from16 v11, p3

    .line 299
    .line 300
    invoke-virtual {v10, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 313
    .line 314
    .line 315
    move-result v11

    .line 316
    if-eqz v11, :cond_5

    .line 317
    .line 318
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v11

    .line 322
    check-cast v11, Ljava/lang/CharSequence;

    .line 323
    .line 324
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 328
    .line 329
    .line 330
    move-result v11

    .line 331
    if-eqz v11, :cond_5

    .line 332
    .line 333
    const-string v11, "\r\n"

    .line 334
    .line 335
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    goto :goto_3

    .line 339
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    const-string v4, "upload_headers"

    .line 344
    .line 345
    invoke-virtual {v10, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    move-object/from16 v4, p5

    .line 349
    .line 350
    iget v0, v4, Lc4/R0;->G:I

    .line 351
    .line 352
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    const-string v4, "upload_type"

    .line 357
    .line 358
    invoke-virtual {v10, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 359
    .line 360
    .line 361
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast v0, Lc4/l0;

    .line 364
    .line 365
    iget-object v4, v0, Lc4/l0;->T:LP3/b;

    .line 366
    .line 367
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    .line 369
    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 371
    .line 372
    .line 373
    move-result-wide v11

    .line 374
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    const-string v11, "creation_timestamp"

    .line 379
    .line 380
    invoke-virtual {v10, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 381
    .line 382
    .line 383
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    const-string v9, "retry_count"

    .line 388
    .line 389
    invoke-virtual {v10, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 390
    .line 391
    .line 392
    if-eqz v3, :cond_6

    .line 393
    .line 394
    const-string v4, "associated_row_id"

    .line 395
    .line 396
    invoke-virtual {v10, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 397
    .line 398
    .line 399
    :cond_6
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    invoke-virtual {v3, v5, v6, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 404
    .line 405
    .line 406
    move-result-wide v3

    .line 407
    cmp-long v5, v3, v7

    .line 408
    .line 409
    if-nez v5, :cond_7

    .line 410
    .line 411
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 412
    .line 413
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 414
    .line 415
    .line 416
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 417
    .line 418
    const-string v3, "Failed to insert MeasurementBatch (got -1) to upload_queue. appId"

    .line 419
    .line 420
    invoke-virtual {v0, v2, v3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 421
    .line 422
    .line 423
    goto :goto_4

    .line 424
    :catch_1
    move-exception v0

    .line 425
    goto :goto_5

    .line 426
    :cond_7
    move-wide v7, v3

    .line 427
    :goto_4
    return-wide v7

    .line 428
    :goto_5
    iget-object v3, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 429
    .line 430
    check-cast v3, Lc4/l0;

    .line 431
    .line 432
    iget-object v3, v3, Lc4/l0;->O:Lc4/T;

    .line 433
    .line 434
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 435
    .line 436
    .line 437
    const-string v4, "Error storing MeasurementBatch to upload_queue. appId"

    .line 438
    .line 439
    iget-object v3, v3, Lc4/T;->L:Lc4/Q;

    .line 440
    .line 441
    invoke-virtual {v3, v2, v0, v4}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    :cond_8
    return-wide v7
.end method

.method public final h0(Ljava/lang/String;)J
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    move-object/from16 v2, p1

    .line 3
    .line 4
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v3, "first_open_count"

    .line 8
    .line 9
    invoke-static {v3}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lc4/u1;->n()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 23
    .line 24
    .line 25
    const-wide/16 v5, 0x0

    .line 26
    .line 27
    :try_start_0
    const-string v0, "select first_open_count from app2 where app_id=?"

    .line 28
    .line 29
    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    const-wide/16 v8, -0x1

    .line 34
    .line 35
    invoke-virtual {p0, v0, v7, v8, v9}, Lc4/o;->f0(Ljava/lang/String;[Ljava/lang/String;J)J

    .line 36
    .line 37
    .line 38
    move-result-wide v10
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    const-string v0, "app2"

    .line 40
    .line 41
    const-string v7, "app_id"

    .line 42
    .line 43
    cmp-long v12, v10, v8

    .line 44
    .line 45
    if-nez v12, :cond_1

    .line 46
    .line 47
    :try_start_1
    new-instance v10, Landroid/content/ContentValues;

    .line 48
    .line 49
    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v10, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 v11, 0x0

    .line 56
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    invoke-virtual {v10, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 61
    .line 62
    .line 63
    const-string v12, "previous_install_count"

    .line 64
    .line 65
    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    .line 67
    .line 68
    const/4 v11, 0x0

    .line 69
    const/4 v12, 0x5

    .line 70
    invoke-virtual {v4, v0, v11, v10, v12}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 71
    .line 72
    .line 73
    move-result-wide v10

    .line 74
    cmp-long v12, v10, v8

    .line 75
    .line 76
    if-nez v12, :cond_0

    .line 77
    .line 78
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Lc4/l0;

    .line 81
    .line 82
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 83
    .line 84
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 88
    .line 89
    const-string v7, "Failed to insert column (got -1). appId"

    .line 90
    .line 91
    invoke-static/range {p1 .. p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    invoke-virtual {v0, v10, v3, v7}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    goto :goto_3

    .line 101
    :catch_0
    move-exception v0

    .line 102
    goto :goto_1

    .line 103
    :cond_0
    move-wide v10, v5

    .line 104
    :cond_1
    :try_start_2
    new-instance v12, Landroid/content/ContentValues;

    .line 105
    .line 106
    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v12, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-wide/16 v13, 0x1

    .line 113
    .line 114
    add-long/2addr v13, v10

    .line 115
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-virtual {v12, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 120
    .line 121
    .line 122
    const-string v7, "app_id = ?"

    .line 123
    .line 124
    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v13

    .line 128
    invoke-virtual {v4, v0, v12, v7, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    int-to-long v12, v0

    .line 133
    cmp-long v0, v12, v5

    .line 134
    .line 135
    if-nez v0, :cond_2

    .line 136
    .line 137
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v0, Lc4/l0;

    .line 140
    .line 141
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 142
    .line 143
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 147
    .line 148
    const-string v5, "Failed to update column (got 0). appId"

    .line 149
    .line 150
    invoke-static/range {p1 .. p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v0, v6, v3, v5}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :catch_1
    move-exception v0

    .line 159
    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    .line 162
    .line 163
    move-wide v8, v10

    .line 164
    goto :goto_2

    .line 165
    :goto_0
    move-wide v5, v10

    .line 166
    :goto_1
    :try_start_3
    iget-object v7, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v7, Lc4/l0;

    .line 169
    .line 170
    iget-object v7, v7, Lc4/l0;->O:Lc4/T;

    .line 171
    .line 172
    invoke-static {v7}, Lc4/l0;->k(Lc4/s0;)V

    .line 173
    .line 174
    .line 175
    iget-object v7, v7, Lc4/T;->L:Lc4/Q;

    .line 176
    .line 177
    const-string v8, "Error inserting column. appId"

    .line 178
    .line 179
    invoke-static/range {p1 .. p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v7, v2, v3, v0, v8}, Lc4/Q;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    .line 185
    .line 186
    move-wide v8, v5

    .line 187
    :goto_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 188
    .line 189
    .line 190
    return-wide v8

    .line 191
    :goto_3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 192
    .line 193
    .line 194
    throw v0
.end method

.method public final i0(Ljava/lang/String;)J
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    filled-new-array {p1}, [Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "select count(1) from events where app_id=? and name not like \'!_%\' escape \'!\'"

    .line 9
    .line 10
    const-wide/16 v1, 0x0

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1, v1, v2}, Lc4/o;->f0(Ljava/lang/String;[Ljava/lang/String;J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    return-wide v0
.end method

.method public final j0()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lc4/o;->J:Lc4/n;

    .line 5
    .line 6
    invoke-virtual {v0}, Lc4/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object v0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    iget-object v1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lc4/l0;

    .line 15
    .line 16
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 17
    .line 18
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 19
    .line 20
    .line 21
    const-string v2, "Error opening database"

    .line 22
    .line 23
    iget-object v1, v1, Lc4/T;->O:Lc4/Q;

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public final k0(Ljava/lang/String;)Lc4/P;
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Lc1/d;->m()V

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lc4/u1;->n()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    const-string v5, "apps"

    .line 19
    .line 20
    const/16 v6, 0x2d

    .line 21
    .line 22
    new-array v6, v6, [Ljava/lang/String;

    .line 23
    .line 24
    const-string v7, "app_instance_id"

    .line 25
    .line 26
    const/4 v12, 0x0

    .line 27
    aput-object v7, v6, v12

    .line 28
    .line 29
    const-string v7, "gmp_app_id"

    .line 30
    .line 31
    const/4 v13, 0x1

    .line 32
    aput-object v7, v6, v13

    .line 33
    .line 34
    const-string v7, "resettable_device_id_hash"

    .line 35
    .line 36
    const/4 v14, 0x2

    .line 37
    aput-object v7, v6, v14

    .line 38
    .line 39
    const-string v7, "last_bundle_index"

    .line 40
    .line 41
    const/4 v15, 0x3

    .line 42
    aput-object v7, v6, v15

    .line 43
    .line 44
    const-string v7, "last_bundle_start_timestamp"

    .line 45
    .line 46
    const/4 v11, 0x4

    .line 47
    aput-object v7, v6, v11

    .line 48
    .line 49
    const-string v7, "last_bundle_end_timestamp"

    .line 50
    .line 51
    const/4 v10, 0x5

    .line 52
    aput-object v7, v6, v10

    .line 53
    .line 54
    const-string v7, "app_version"

    .line 55
    .line 56
    const/4 v9, 0x6

    .line 57
    aput-object v7, v6, v9

    .line 58
    .line 59
    const-string v7, "app_store"

    .line 60
    .line 61
    const/4 v8, 0x7

    .line 62
    aput-object v7, v6, v8

    .line 63
    .line 64
    const-string v7, "gmp_version"

    .line 65
    .line 66
    const/16 v3, 0x8

    .line 67
    .line 68
    aput-object v7, v6, v3

    .line 69
    .line 70
    const-string v7, "dev_cert_hash"

    .line 71
    .line 72
    const/16 v3, 0x9

    .line 73
    .line 74
    aput-object v7, v6, v3

    .line 75
    .line 76
    const-string v7, "measurement_enabled"

    .line 77
    .line 78
    const/16 v3, 0xa

    .line 79
    .line 80
    aput-object v7, v6, v3

    .line 81
    .line 82
    const-string v7, "day"

    .line 83
    .line 84
    const/16 v3, 0xb

    .line 85
    .line 86
    aput-object v7, v6, v3

    .line 87
    .line 88
    const-string v7, "daily_public_events_count"

    .line 89
    .line 90
    const/16 v3, 0xc

    .line 91
    .line 92
    aput-object v7, v6, v3

    .line 93
    .line 94
    const-string v7, "daily_events_count"

    .line 95
    .line 96
    const/16 v3, 0xd

    .line 97
    .line 98
    aput-object v7, v6, v3

    .line 99
    .line 100
    const-string v7, "daily_conversions_count"

    .line 101
    .line 102
    const/16 v3, 0xe

    .line 103
    .line 104
    aput-object v7, v6, v3

    .line 105
    .line 106
    const-string v7, "config_fetched_time"

    .line 107
    .line 108
    const/16 v3, 0xf

    .line 109
    .line 110
    aput-object v7, v6, v3

    .line 111
    .line 112
    const-string v7, "failed_config_fetch_time"

    .line 113
    .line 114
    const/16 v3, 0x10

    .line 115
    .line 116
    aput-object v7, v6, v3

    .line 117
    .line 118
    const-string v7, "app_version_int"

    .line 119
    .line 120
    const/16 v3, 0x11

    .line 121
    .line 122
    aput-object v7, v6, v3

    .line 123
    .line 124
    const-string v7, "firebase_instance_id"

    .line 125
    .line 126
    const/16 v3, 0x12

    .line 127
    .line 128
    aput-object v7, v6, v3

    .line 129
    .line 130
    const-string v7, "daily_error_events_count"

    .line 131
    .line 132
    const/16 v3, 0x13

    .line 133
    .line 134
    aput-object v7, v6, v3

    .line 135
    .line 136
    const-string v7, "daily_realtime_events_count"

    .line 137
    .line 138
    const/16 v3, 0x14

    .line 139
    .line 140
    aput-object v7, v6, v3

    .line 141
    .line 142
    const-string v7, "health_monitor_sample"

    .line 143
    .line 144
    const/16 v3, 0x15

    .line 145
    .line 146
    aput-object v7, v6, v3

    .line 147
    .line 148
    const-string v7, "android_id"

    .line 149
    .line 150
    const/16 v16, 0x16

    .line 151
    .line 152
    aput-object v7, v6, v16

    .line 153
    .line 154
    const-string v7, "adid_reporting_enabled"

    .line 155
    .line 156
    const/16 v3, 0x17

    .line 157
    .line 158
    aput-object v7, v6, v3

    .line 159
    .line 160
    const-string v7, "admob_app_id"

    .line 161
    .line 162
    const/16 v3, 0x18

    .line 163
    .line 164
    aput-object v7, v6, v3

    .line 165
    .line 166
    const-string v7, "dynamite_version"

    .line 167
    .line 168
    const/16 v3, 0x19

    .line 169
    .line 170
    aput-object v7, v6, v3

    .line 171
    .line 172
    const-string v7, "safelisted_events"

    .line 173
    .line 174
    const/16 v3, 0x1a

    .line 175
    .line 176
    aput-object v7, v6, v3

    .line 177
    .line 178
    const-string v7, "ga_app_id"

    .line 179
    .line 180
    const/16 v17, 0x1b

    .line 181
    .line 182
    aput-object v7, v6, v17

    .line 183
    .line 184
    const-string v7, "session_stitching_token"

    .line 185
    .line 186
    const/16 v3, 0x1c

    .line 187
    .line 188
    aput-object v7, v6, v3

    .line 189
    .line 190
    const-string v7, "sgtm_upload_enabled"

    .line 191
    .line 192
    const/16 v3, 0x1d

    .line 193
    .line 194
    aput-object v7, v6, v3

    .line 195
    .line 196
    const-string v7, "target_os_version"

    .line 197
    .line 198
    const/16 v3, 0x1e

    .line 199
    .line 200
    aput-object v7, v6, v3

    .line 201
    .line 202
    const-string v7, "session_stitching_token_hash"

    .line 203
    .line 204
    const/16 v3, 0x1f

    .line 205
    .line 206
    aput-object v7, v6, v3

    .line 207
    .line 208
    const-string v7, "ad_services_version"

    .line 209
    .line 210
    const/16 v3, 0x20

    .line 211
    .line 212
    aput-object v7, v6, v3

    .line 213
    .line 214
    const-string v7, "unmatched_first_open_without_ad_id"

    .line 215
    .line 216
    const/16 v3, 0x21

    .line 217
    .line 218
    aput-object v7, v6, v3

    .line 219
    .line 220
    const-string v7, "npa_metadata_value"

    .line 221
    .line 222
    const/16 v3, 0x22

    .line 223
    .line 224
    aput-object v7, v6, v3

    .line 225
    .line 226
    const-string v7, "attribution_eligibility_status"

    .line 227
    .line 228
    const/16 v3, 0x23

    .line 229
    .line 230
    aput-object v7, v6, v3

    .line 231
    .line 232
    const-string v7, "sgtm_preview_key"

    .line 233
    .line 234
    const/16 v3, 0x24

    .line 235
    .line 236
    aput-object v7, v6, v3

    .line 237
    .line 238
    const-string v7, "dma_consent_state"

    .line 239
    .line 240
    const/16 v3, 0x25

    .line 241
    .line 242
    aput-object v7, v6, v3

    .line 243
    .line 244
    const-string v7, "daily_realtime_dcu_count"

    .line 245
    .line 246
    const/16 v18, 0x26

    .line 247
    .line 248
    aput-object v7, v6, v18

    .line 249
    .line 250
    const-string v7, "bundle_delivery_index"

    .line 251
    .line 252
    const/16 v18, 0x27

    .line 253
    .line 254
    aput-object v7, v6, v18

    .line 255
    .line 256
    const-string v7, "serialized_npa_metadata"

    .line 257
    .line 258
    const/16 v3, 0x28

    .line 259
    .line 260
    aput-object v7, v6, v3

    .line 261
    .line 262
    const-string v7, "unmatched_pfo"

    .line 263
    .line 264
    const/16 v3, 0x29

    .line 265
    .line 266
    aput-object v7, v6, v3

    .line 267
    .line 268
    const-string v7, "unmatched_uwa"

    .line 269
    .line 270
    const/16 v3, 0x2a

    .line 271
    .line 272
    aput-object v7, v6, v3

    .line 273
    .line 274
    const-string v7, "ad_campaign_info"

    .line 275
    .line 276
    const/16 v19, 0x2b

    .line 277
    .line 278
    aput-object v7, v6, v19

    .line 279
    .line 280
    const-string v7, "client_upload_eligibility"

    .line 281
    .line 282
    const/16 v3, 0x2c

    .line 283
    .line 284
    aput-object v7, v6, v3

    .line 285
    .line 286
    const-string v7, "app_id=?"

    .line 287
    .line 288
    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v20

    .line 292
    const/16 v21, 0x0

    .line 293
    .line 294
    const/16 v22, 0x0

    .line 295
    .line 296
    const/16 v23, 0x0

    .line 297
    .line 298
    const/4 v3, 0x7

    .line 299
    move-object/from16 v8, v20

    .line 300
    .line 301
    const/4 v3, 0x6

    .line 302
    move-object/from16 v9, v22

    .line 303
    .line 304
    const/4 v3, 0x5

    .line 305
    move-object/from16 v10, v23

    .line 306
    .line 307
    const/4 v3, 0x4

    .line 308
    move-object/from16 v11, v21

    .line 309
    .line 310
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 311
    .line 312
    .line 313
    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 314
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    if-nez v5, :cond_0

    .line 319
    .line 320
    goto/16 :goto_19

    .line 321
    .line 322
    :cond_0
    new-instance v5, Lc4/P;

    .line 323
    .line 324
    iget-object v6, v1, Lc4/q1;->H:Lc4/A1;

    .line 325
    .line 326
    iget-object v7, v6, Lc4/A1;->R:Lc4/l0;

    .line 327
    .line 328
    invoke-direct {v5, v7, v2}, Lc4/P;-><init>(Lc4/l0;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    iget-object v7, v5, Lc4/P;->a:Lc4/l0;

    .line 332
    .line 333
    invoke-virtual {v6, v2}, Lc4/A1;->i0(Ljava/lang/String;)Lc4/x0;

    .line 334
    .line 335
    .line 336
    move-result-object v8

    .line 337
    sget-object v9, Lc4/w0;->I:Lc4/w0;

    .line 338
    .line 339
    invoke-virtual {v8, v9}, Lc4/x0;->k(Lc4/w0;)Z

    .line 340
    .line 341
    .line 342
    move-result v8

    .line 343
    if-eqz v8, :cond_1

    .line 344
    .line 345
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v8

    .line 349
    invoke-virtual {v5, v8}, Lc4/P;->l(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    goto :goto_1

    .line 353
    :catchall_0
    move-exception v0

    .line 354
    :goto_0
    move-object v2, v0

    .line 355
    goto/16 :goto_15

    .line 356
    .line 357
    :cond_1
    :goto_1
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v8

    .line 361
    invoke-virtual {v5, v8}, Lc4/P;->H(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v6, v2}, Lc4/A1;->i0(Ljava/lang/String;)Lc4/x0;

    .line 365
    .line 366
    .line 367
    move-result-object v8

    .line 368
    sget-object v10, Lc4/w0;->H:Lc4/w0;

    .line 369
    .line 370
    invoke-virtual {v8, v10}, Lc4/x0;->k(Lc4/w0;)Z

    .line 371
    .line 372
    .line 373
    move-result v8

    .line 374
    if-eqz v8, :cond_2

    .line 375
    .line 376
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v8

    .line 380
    invoke-virtual {v5, v8}, Lc4/P;->P(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    :cond_2
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    .line 384
    .line 385
    .line 386
    move-result-wide v10

    .line 387
    invoke-virtual {v5, v10, v11}, Lc4/P;->M(J)V

    .line 388
    .line 389
    .line 390
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 391
    .line 392
    .line 393
    move-result-wide v10

    .line 394
    invoke-virtual {v5, v10, v11}, Lc4/P;->N(J)V

    .line 395
    .line 396
    .line 397
    const/4 v3, 0x5

    .line 398
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 399
    .line 400
    .line 401
    move-result-wide v10

    .line 402
    invoke-virtual {v5, v10, v11}, Lc4/P;->L(J)V

    .line 403
    .line 404
    .line 405
    const/4 v3, 0x6

    .line 406
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    invoke-virtual {v5, v3}, Lc4/P;->n(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    const/4 v3, 0x7

    .line 414
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    invoke-virtual {v5, v3}, Lc4/P;->m(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    const/16 v3, 0x8

    .line 422
    .line 423
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 424
    .line 425
    .line 426
    move-result-wide v10

    .line 427
    invoke-virtual {v5, v10, v11}, Lc4/P;->I(J)V

    .line 428
    .line 429
    .line 430
    const/16 v3, 0x9

    .line 431
    .line 432
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 433
    .line 434
    .line 435
    move-result-wide v10

    .line 436
    invoke-virtual {v5, v10, v11}, Lc4/P;->C(J)V

    .line 437
    .line 438
    .line 439
    const/16 v3, 0xa

    .line 440
    .line 441
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 442
    .line 443
    .line 444
    move-result v8

    .line 445
    if-nez v8, :cond_3

    .line 446
    .line 447
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 448
    .line 449
    .line 450
    move-result v3

    .line 451
    if-eqz v3, :cond_4

    .line 452
    .line 453
    :cond_3
    const/4 v3, 0x1

    .line 454
    goto :goto_2

    .line 455
    :cond_4
    const/4 v3, 0x0

    .line 456
    :goto_2
    invoke-virtual {v5, v3}, Lc4/P;->O(Z)V

    .line 457
    .line 458
    .line 459
    const/16 v3, 0xb

    .line 460
    .line 461
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 462
    .line 463
    .line 464
    move-result-wide v10

    .line 465
    invoke-virtual {v5, v10, v11}, Lc4/P;->B(J)V

    .line 466
    .line 467
    .line 468
    const/16 v3, 0xc

    .line 469
    .line 470
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 471
    .line 472
    .line 473
    move-result-wide v10

    .line 474
    invoke-virtual {v5, v10, v11}, Lc4/P;->y(J)V

    .line 475
    .line 476
    .line 477
    const/16 v3, 0xd

    .line 478
    .line 479
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 480
    .line 481
    .line 482
    move-result-wide v10

    .line 483
    invoke-virtual {v5, v10, v11}, Lc4/P;->x(J)V

    .line 484
    .line 485
    .line 486
    const/16 v3, 0xe

    .line 487
    .line 488
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 489
    .line 490
    .line 491
    move-result-wide v10

    .line 492
    invoke-virtual {v5, v10, v11}, Lc4/P;->v(J)V

    .line 493
    .line 494
    .line 495
    const/16 v3, 0xf

    .line 496
    .line 497
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 498
    .line 499
    .line 500
    move-result-wide v10

    .line 501
    invoke-virtual {v5, v10, v11}, Lc4/P;->u(J)V

    .line 502
    .line 503
    .line 504
    const/16 v3, 0x10

    .line 505
    .line 506
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 507
    .line 508
    .line 509
    move-result-wide v10

    .line 510
    invoke-virtual {v5, v10, v11}, Lc4/P;->F(J)V

    .line 511
    .line 512
    .line 513
    const/16 v3, 0x11

    .line 514
    .line 515
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 516
    .line 517
    .line 518
    move-result v8

    .line 519
    if-eqz v8, :cond_5

    .line 520
    .line 521
    const-wide/32 v10, -0x80000000

    .line 522
    .line 523
    .line 524
    goto :goto_3

    .line 525
    :cond_5
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 526
    .line 527
    .line 528
    move-result v3

    .line 529
    int-to-long v10, v3

    .line 530
    :goto_3
    invoke-virtual {v5, v10, v11}, Lc4/P;->o(J)V

    .line 531
    .line 532
    .line 533
    const/16 v3, 0x12

    .line 534
    .line 535
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v3

    .line 539
    invoke-virtual {v5, v3}, Lc4/P;->G(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    const/16 v3, 0x13

    .line 543
    .line 544
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 545
    .line 546
    .line 547
    move-result-wide v10

    .line 548
    invoke-virtual {v5, v10, v11}, Lc4/P;->w(J)V

    .line 549
    .line 550
    .line 551
    const/16 v3, 0x14

    .line 552
    .line 553
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 554
    .line 555
    .line 556
    move-result-wide v10

    .line 557
    invoke-virtual {v5, v10, v11}, Lc4/P;->A(J)V

    .line 558
    .line 559
    .line 560
    const/16 v3, 0x15

    .line 561
    .line 562
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v3

    .line 566
    invoke-virtual {v5, v3}, Lc4/P;->J(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    const/16 v3, 0x17

    .line 570
    .line 571
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 572
    .line 573
    .line 574
    move-result v8

    .line 575
    if-nez v8, :cond_6

    .line 576
    .line 577
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 578
    .line 579
    .line 580
    move-result v3

    .line 581
    if-eqz v3, :cond_7

    .line 582
    .line 583
    :cond_6
    const/4 v3, 0x1

    .line 584
    goto :goto_4

    .line 585
    :cond_7
    const/4 v3, 0x0

    .line 586
    :goto_4
    iget-object v8, v7, Lc4/l0;->P:Lc4/j0;

    .line 587
    .line 588
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v8}, Lc4/j0;->m()V

    .line 592
    .line 593
    .line 594
    iget-boolean v8, v5, Lc4/P;->R:Z

    .line 595
    .line 596
    iget-boolean v10, v5, Lc4/P;->p:Z

    .line 597
    .line 598
    if-eq v10, v3, :cond_8

    .line 599
    .line 600
    const/4 v10, 0x1

    .line 601
    goto :goto_5

    .line 602
    :cond_8
    const/4 v10, 0x0

    .line 603
    :goto_5
    or-int/2addr v8, v10

    .line 604
    iput-boolean v8, v5, Lc4/P;->R:Z

    .line 605
    .line 606
    iput-boolean v3, v5, Lc4/P;->p:Z

    .line 607
    .line 608
    const/16 v3, 0x18

    .line 609
    .line 610
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v3

    .line 614
    invoke-virtual {v5, v3}, Lc4/P;->k(Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    const/16 v3, 0x19

    .line 618
    .line 619
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 620
    .line 621
    .line 622
    move-result v8

    .line 623
    if-eqz v8, :cond_9

    .line 624
    .line 625
    const-wide/16 v10, 0x0

    .line 626
    .line 627
    goto :goto_6

    .line 628
    :cond_9
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 629
    .line 630
    .line 631
    move-result-wide v10

    .line 632
    :goto_6
    invoke-virtual {v5, v10, v11}, Lc4/P;->E(J)V

    .line 633
    .line 634
    .line 635
    const/16 v3, 0x1a

    .line 636
    .line 637
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 638
    .line 639
    .line 640
    move-result v8

    .line 641
    if-nez v8, :cond_a

    .line 642
    .line 643
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v3

    .line 647
    const-string v8, ","

    .line 648
    .line 649
    const/4 v10, -0x1

    .line 650
    invoke-virtual {v3, v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v3

    .line 654
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 655
    .line 656
    .line 657
    move-result-object v3

    .line 658
    invoke-virtual {v5, v3}, Lc4/P;->Q(Ljava/util/List;)V

    .line 659
    .line 660
    .line 661
    :cond_a
    invoke-virtual {v6, v2}, Lc4/A1;->i0(Ljava/lang/String;)Lc4/x0;

    .line 662
    .line 663
    .line 664
    move-result-object v3

    .line 665
    invoke-virtual {v3, v9}, Lc4/x0;->k(Lc4/w0;)Z

    .line 666
    .line 667
    .line 668
    move-result v3

    .line 669
    if-eqz v3, :cond_b

    .line 670
    .line 671
    const/16 v3, 0x1c

    .line 672
    .line 673
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v3

    .line 677
    iget-object v6, v7, Lc4/l0;->P:Lc4/j0;

    .line 678
    .line 679
    invoke-static {v6}, Lc4/l0;->k(Lc4/s0;)V

    .line 680
    .line 681
    .line 682
    invoke-virtual {v6}, Lc4/j0;->m()V

    .line 683
    .line 684
    .line 685
    iget-boolean v6, v5, Lc4/P;->R:Z

    .line 686
    .line 687
    iget-object v8, v5, Lc4/P;->u:Ljava/lang/String;

    .line 688
    .line 689
    invoke-static {v8, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 690
    .line 691
    .line 692
    move-result v8

    .line 693
    xor-int/2addr v8, v13

    .line 694
    or-int/2addr v6, v8

    .line 695
    iput-boolean v6, v5, Lc4/P;->R:Z

    .line 696
    .line 697
    iput-object v3, v5, Lc4/P;->u:Ljava/lang/String;

    .line 698
    .line 699
    :cond_b
    const/16 v3, 0x1d

    .line 700
    .line 701
    goto :goto_8

    .line 702
    :goto_7
    move-object v3, v0

    .line 703
    goto/16 :goto_18

    .line 704
    .line 705
    :catch_0
    move-exception v0

    .line 706
    goto :goto_7

    .line 707
    :goto_8
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 708
    .line 709
    .line 710
    move-result v6

    .line 711
    if-nez v6, :cond_c

    .line 712
    .line 713
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 714
    .line 715
    .line 716
    move-result v3

    .line 717
    if-eqz v3, :cond_c

    .line 718
    .line 719
    const/4 v3, 0x1

    .line 720
    goto :goto_9

    .line 721
    :cond_c
    const/4 v3, 0x0

    .line 722
    :goto_9
    iget-object v6, v7, Lc4/l0;->P:Lc4/j0;

    .line 723
    .line 724
    invoke-static {v6}, Lc4/l0;->k(Lc4/s0;)V

    .line 725
    .line 726
    .line 727
    invoke-virtual {v6}, Lc4/j0;->m()V

    .line 728
    .line 729
    .line 730
    iget-boolean v6, v5, Lc4/P;->R:Z

    .line 731
    .line 732
    iget-boolean v8, v5, Lc4/P;->v:Z

    .line 733
    .line 734
    if-eq v8, v3, :cond_d

    .line 735
    .line 736
    const/4 v8, 0x1

    .line 737
    goto :goto_a

    .line 738
    :cond_d
    const/4 v8, 0x0

    .line 739
    :goto_a
    or-int/2addr v6, v8

    .line 740
    iput-boolean v6, v5, Lc4/P;->R:Z

    .line 741
    .line 742
    iput-boolean v3, v5, Lc4/P;->v:Z

    .line 743
    .line 744
    const/16 v3, 0x27

    .line 745
    .line 746
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 747
    .line 748
    .line 749
    move-result-wide v8

    .line 750
    invoke-virtual {v5, v8, v9}, Lc4/P;->K(J)V

    .line 751
    .line 752
    .line 753
    const/16 v3, 0x24

    .line 754
    .line 755
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 756
    .line 757
    .line 758
    move-result-object v3

    .line 759
    iget-object v6, v7, Lc4/l0;->P:Lc4/j0;

    .line 760
    .line 761
    invoke-static {v6}, Lc4/l0;->k(Lc4/s0;)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v6}, Lc4/j0;->m()V

    .line 765
    .line 766
    .line 767
    iget-boolean v6, v5, Lc4/P;->R:Z

    .line 768
    .line 769
    iget-object v8, v5, Lc4/P;->D:Ljava/lang/String;

    .line 770
    .line 771
    if-eq v8, v3, :cond_e

    .line 772
    .line 773
    const/4 v8, 0x1

    .line 774
    goto :goto_b

    .line 775
    :cond_e
    const/4 v8, 0x0

    .line 776
    :goto_b
    or-int/2addr v6, v8

    .line 777
    iput-boolean v6, v5, Lc4/P;->R:Z

    .line 778
    .line 779
    iput-object v3, v5, Lc4/P;->D:Ljava/lang/String;

    .line 780
    .line 781
    const/16 v3, 0x1e

    .line 782
    .line 783
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 784
    .line 785
    .line 786
    move-result-wide v8

    .line 787
    invoke-virtual {v5, v8, v9}, Lc4/P;->r(J)V

    .line 788
    .line 789
    .line 790
    const/16 v3, 0x1f

    .line 791
    .line 792
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 793
    .line 794
    .line 795
    move-result-wide v8

    .line 796
    invoke-virtual {v5, v8, v9}, Lc4/P;->q(J)V

    .line 797
    .line 798
    .line 799
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i4;->b()V

    .line 800
    .line 801
    .line 802
    iget-object v3, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 803
    .line 804
    check-cast v3, Lc4/l0;

    .line 805
    .line 806
    iget-object v6, v3, Lc4/l0;->M:Lc4/h;

    .line 807
    .line 808
    sget-object v8, Lc4/E;->W0:Lc4/D;

    .line 809
    .line 810
    invoke-virtual {v6, v2, v8}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 811
    .line 812
    .line 813
    move-result v6

    .line 814
    if-eqz v6, :cond_10

    .line 815
    .line 816
    const/16 v6, 0x20

    .line 817
    .line 818
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 819
    .line 820
    .line 821
    move-result v6

    .line 822
    iget-object v8, v7, Lc4/l0;->P:Lc4/j0;

    .line 823
    .line 824
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 825
    .line 826
    .line 827
    invoke-virtual {v8}, Lc4/j0;->m()V

    .line 828
    .line 829
    .line 830
    iget-boolean v8, v5, Lc4/P;->R:Z

    .line 831
    .line 832
    iget v9, v5, Lc4/P;->y:I

    .line 833
    .line 834
    if-eq v9, v6, :cond_f

    .line 835
    .line 836
    const/4 v9, 0x1

    .line 837
    goto :goto_c

    .line 838
    :cond_f
    const/4 v9, 0x0

    .line 839
    :goto_c
    or-int/2addr v8, v9

    .line 840
    iput-boolean v8, v5, Lc4/P;->R:Z

    .line 841
    .line 842
    iput v6, v5, Lc4/P;->y:I

    .line 843
    .line 844
    const/16 v6, 0x23

    .line 845
    .line 846
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 847
    .line 848
    .line 849
    move-result-wide v8

    .line 850
    invoke-virtual {v5, v8, v9}, Lc4/P;->p(J)V

    .line 851
    .line 852
    .line 853
    :cond_10
    const/16 v6, 0x21

    .line 854
    .line 855
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 856
    .line 857
    .line 858
    move-result v8

    .line 859
    if-nez v8, :cond_11

    .line 860
    .line 861
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 862
    .line 863
    .line 864
    move-result v6

    .line 865
    if-eqz v6, :cond_11

    .line 866
    .line 867
    const/4 v6, 0x1

    .line 868
    goto :goto_d

    .line 869
    :cond_11
    const/4 v6, 0x0

    .line 870
    :goto_d
    iget-object v8, v7, Lc4/l0;->P:Lc4/j0;

    .line 871
    .line 872
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 873
    .line 874
    .line 875
    invoke-virtual {v8}, Lc4/j0;->m()V

    .line 876
    .line 877
    .line 878
    iget-boolean v8, v5, Lc4/P;->R:Z

    .line 879
    .line 880
    iget-boolean v9, v5, Lc4/P;->z:Z

    .line 881
    .line 882
    if-eq v9, v6, :cond_12

    .line 883
    .line 884
    const/4 v9, 0x1

    .line 885
    goto :goto_e

    .line 886
    :cond_12
    const/4 v9, 0x0

    .line 887
    :goto_e
    or-int/2addr v8, v9

    .line 888
    iput-boolean v8, v5, Lc4/P;->R:Z

    .line 889
    .line 890
    iput-boolean v6, v5, Lc4/P;->z:Z

    .line 891
    .line 892
    const/16 v6, 0x22

    .line 893
    .line 894
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 895
    .line 896
    .line 897
    move-result v8

    .line 898
    if-eqz v8, :cond_13

    .line 899
    .line 900
    const/4 v6, 0x0

    .line 901
    goto :goto_10

    .line 902
    :cond_13
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 903
    .line 904
    .line 905
    move-result v6

    .line 906
    if-eqz v6, :cond_14

    .line 907
    .line 908
    const/4 v6, 0x1

    .line 909
    goto :goto_f

    .line 910
    :cond_14
    const/4 v6, 0x0

    .line 911
    :goto_f
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 912
    .line 913
    .line 914
    move-result-object v6

    .line 915
    :goto_10
    iget-object v8, v7, Lc4/l0;->P:Lc4/j0;

    .line 916
    .line 917
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 918
    .line 919
    .line 920
    invoke-virtual {v8}, Lc4/j0;->m()V

    .line 921
    .line 922
    .line 923
    iget-boolean v8, v5, Lc4/P;->R:Z

    .line 924
    .line 925
    iget-object v9, v5, Lc4/P;->r:Ljava/lang/Boolean;

    .line 926
    .line 927
    invoke-static {v9, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 928
    .line 929
    .line 930
    move-result v9

    .line 931
    xor-int/2addr v9, v13

    .line 932
    or-int/2addr v8, v9

    .line 933
    iput-boolean v8, v5, Lc4/P;->R:Z

    .line 934
    .line 935
    iput-object v6, v5, Lc4/P;->r:Ljava/lang/Boolean;

    .line 936
    .line 937
    const/16 v6, 0x25

    .line 938
    .line 939
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 940
    .line 941
    .line 942
    move-result v6

    .line 943
    invoke-virtual {v5, v6}, Lc4/P;->D(I)V

    .line 944
    .line 945
    .line 946
    const/16 v6, 0x26

    .line 947
    .line 948
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 949
    .line 950
    .line 951
    move-result v6

    .line 952
    invoke-virtual {v5, v6}, Lc4/P;->z(I)V

    .line 953
    .line 954
    .line 955
    const/16 v6, 0x28

    .line 956
    .line 957
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 958
    .line 959
    .line 960
    move-result v8

    .line 961
    if-eqz v8, :cond_15

    .line 962
    .line 963
    const-string v6, ""

    .line 964
    .line 965
    goto :goto_11

    .line 966
    :cond_15
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 967
    .line 968
    .line 969
    move-result-object v6

    .line 970
    invoke-static {v6}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 971
    .line 972
    .line 973
    :goto_11
    iget-object v8, v7, Lc4/l0;->P:Lc4/j0;

    .line 974
    .line 975
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 976
    .line 977
    .line 978
    invoke-virtual {v8}, Lc4/j0;->m()V

    .line 979
    .line 980
    .line 981
    iget-boolean v8, v5, Lc4/P;->R:Z

    .line 982
    .line 983
    iget-object v9, v5, Lc4/P;->H:Ljava/lang/String;

    .line 984
    .line 985
    if-eq v9, v6, :cond_16

    .line 986
    .line 987
    const/4 v9, 0x1

    .line 988
    goto :goto_12

    .line 989
    :cond_16
    const/4 v9, 0x0

    .line 990
    :goto_12
    or-int/2addr v8, v9

    .line 991
    iput-boolean v8, v5, Lc4/P;->R:Z

    .line 992
    .line 993
    iput-object v6, v5, Lc4/P;->H:Ljava/lang/String;

    .line 994
    .line 995
    const/16 v6, 0x29

    .line 996
    .line 997
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 998
    .line 999
    .line 1000
    move-result v8

    .line 1001
    if-nez v8, :cond_17

    .line 1002
    .line 1003
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 1004
    .line 1005
    .line 1006
    move-result-wide v8

    .line 1007
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v6

    .line 1011
    iget-object v8, v7, Lc4/l0;->P:Lc4/j0;

    .line 1012
    .line 1013
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {v8}, Lc4/j0;->m()V

    .line 1017
    .line 1018
    .line 1019
    iget-boolean v8, v5, Lc4/P;->R:Z

    .line 1020
    .line 1021
    iget-object v9, v5, Lc4/P;->A:Ljava/lang/Long;

    .line 1022
    .line 1023
    invoke-static {v9, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1024
    .line 1025
    .line 1026
    move-result v9

    .line 1027
    xor-int/2addr v9, v13

    .line 1028
    or-int/2addr v8, v9

    .line 1029
    iput-boolean v8, v5, Lc4/P;->R:Z

    .line 1030
    .line 1031
    iput-object v6, v5, Lc4/P;->A:Ljava/lang/Long;

    .line 1032
    .line 1033
    :cond_17
    const/16 v6, 0x2a

    .line 1034
    .line 1035
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 1036
    .line 1037
    .line 1038
    move-result v8

    .line 1039
    if-nez v8, :cond_18

    .line 1040
    .line 1041
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 1042
    .line 1043
    .line 1044
    move-result-wide v8

    .line 1045
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v6

    .line 1049
    iget-object v8, v7, Lc4/l0;->P:Lc4/j0;

    .line 1050
    .line 1051
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 1052
    .line 1053
    .line 1054
    invoke-virtual {v8}, Lc4/j0;->m()V

    .line 1055
    .line 1056
    .line 1057
    iget-boolean v8, v5, Lc4/P;->R:Z

    .line 1058
    .line 1059
    iget-object v9, v5, Lc4/P;->B:Ljava/lang/Long;

    .line 1060
    .line 1061
    invoke-static {v9, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1062
    .line 1063
    .line 1064
    move-result v9

    .line 1065
    xor-int/2addr v9, v13

    .line 1066
    or-int/2addr v8, v9

    .line 1067
    iput-boolean v8, v5, Lc4/P;->R:Z

    .line 1068
    .line 1069
    iput-object v6, v5, Lc4/P;->B:Ljava/lang/Long;

    .line 1070
    .line 1071
    :cond_18
    const/16 v6, 0x2b

    .line 1072
    .line 1073
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getBlob(I)[B

    .line 1074
    .line 1075
    .line 1076
    move-result-object v6

    .line 1077
    iget-object v8, v7, Lc4/l0;->P:Lc4/j0;

    .line 1078
    .line 1079
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 1080
    .line 1081
    .line 1082
    invoke-virtual {v8}, Lc4/j0;->m()V

    .line 1083
    .line 1084
    .line 1085
    iget-boolean v8, v5, Lc4/P;->R:Z

    .line 1086
    .line 1087
    iget-object v9, v5, Lc4/P;->I:[B

    .line 1088
    .line 1089
    if-eq v9, v6, :cond_19

    .line 1090
    .line 1091
    const/4 v9, 0x1

    .line 1092
    goto :goto_13

    .line 1093
    :cond_19
    const/4 v9, 0x0

    .line 1094
    :goto_13
    or-int/2addr v8, v9

    .line 1095
    iput-boolean v8, v5, Lc4/P;->R:Z

    .line 1096
    .line 1097
    iput-object v6, v5, Lc4/P;->I:[B

    .line 1098
    .line 1099
    iget-object v6, v3, Lc4/l0;->M:Lc4/h;

    .line 1100
    .line 1101
    sget-object v8, Lc4/E;->Q0:Lc4/D;

    .line 1102
    .line 1103
    invoke-virtual {v6, v2, v8}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 1104
    .line 1105
    .line 1106
    move-result v6

    .line 1107
    if-eqz v6, :cond_1b

    .line 1108
    .line 1109
    const/16 v6, 0x2c

    .line 1110
    .line 1111
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 1112
    .line 1113
    .line 1114
    move-result v8

    .line 1115
    if-nez v8, :cond_1b

    .line 1116
    .line 1117
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 1118
    .line 1119
    .line 1120
    move-result v6

    .line 1121
    iget-object v8, v7, Lc4/l0;->P:Lc4/j0;

    .line 1122
    .line 1123
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 1124
    .line 1125
    .line 1126
    invoke-virtual {v8}, Lc4/j0;->m()V

    .line 1127
    .line 1128
    .line 1129
    iget-boolean v8, v5, Lc4/P;->R:Z

    .line 1130
    .line 1131
    iget v9, v5, Lc4/P;->J:I

    .line 1132
    .line 1133
    if-eq v9, v6, :cond_1a

    .line 1134
    .line 1135
    goto :goto_14

    .line 1136
    :cond_1a
    const/4 v13, 0x0

    .line 1137
    :goto_14
    or-int/2addr v8, v13

    .line 1138
    iput-boolean v8, v5, Lc4/P;->R:Z

    .line 1139
    .line 1140
    iput v6, v5, Lc4/P;->J:I

    .line 1141
    .line 1142
    :cond_1b
    iget-object v6, v7, Lc4/l0;->P:Lc4/j0;

    .line 1143
    .line 1144
    invoke-static {v6}, Lc4/l0;->k(Lc4/s0;)V

    .line 1145
    .line 1146
    .line 1147
    invoke-virtual {v6}, Lc4/j0;->m()V

    .line 1148
    .line 1149
    .line 1150
    iput-boolean v12, v5, Lc4/P;->R:Z

    .line 1151
    .line 1152
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 1153
    .line 1154
    .line 1155
    move-result v6

    .line 1156
    if-eqz v6, :cond_1c

    .line 1157
    .line 1158
    iget-object v3, v3, Lc4/l0;->O:Lc4/T;

    .line 1159
    .line 1160
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 1161
    .line 1162
    .line 1163
    iget-object v3, v3, Lc4/T;->L:Lc4/Q;

    .line 1164
    .line 1165
    const-string v6, "Got multiple records for app, expected one. appId"

    .line 1166
    .line 1167
    invoke-static/range {p1 .. p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v7

    .line 1171
    invoke-virtual {v3, v7, v6}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1172
    .line 1173
    .line 1174
    :cond_1c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1175
    .line 1176
    .line 1177
    return-object v5

    .line 1178
    :goto_15
    move-object v3, v4

    .line 1179
    goto :goto_1a

    .line 1180
    :catchall_1
    move-exception v0

    .line 1181
    move-object v2, v0

    .line 1182
    goto :goto_16

    .line 1183
    :catch_1
    move-exception v0

    .line 1184
    move-object v3, v0

    .line 1185
    goto :goto_17

    .line 1186
    :goto_16
    const/4 v3, 0x0

    .line 1187
    goto :goto_1a

    .line 1188
    :goto_17
    const/4 v4, 0x0

    .line 1189
    :goto_18
    :try_start_2
    iget-object v5, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 1190
    .line 1191
    check-cast v5, Lc4/l0;

    .line 1192
    .line 1193
    iget-object v5, v5, Lc4/l0;->O:Lc4/T;

    .line 1194
    .line 1195
    invoke-static {v5}, Lc4/l0;->k(Lc4/s0;)V

    .line 1196
    .line 1197
    .line 1198
    iget-object v5, v5, Lc4/T;->L:Lc4/Q;

    .line 1199
    .line 1200
    const-string v6, "Error querying app. appId"

    .line 1201
    .line 1202
    invoke-static/range {p1 .. p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v2

    .line 1206
    invoke-virtual {v5, v2, v3, v6}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1207
    .line 1208
    .line 1209
    :goto_19
    if-eqz v4, :cond_1d

    .line 1210
    .line 1211
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1212
    .line 1213
    .line 1214
    :cond_1d
    const/4 v2, 0x0

    .line 1215
    return-object v2

    .line 1216
    :catchall_2
    move-exception v0

    .line 1217
    goto/16 :goto_0

    .line 1218
    .line 1219
    :goto_1a
    if-eqz v3, :cond_1e

    .line 1220
    .line 1221
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1222
    .line 1223
    .line 1224
    :cond_1e
    throw v2
.end method

.method public final l0(Ljava/lang/String;Ljava/lang/String;)Lc4/f;
    .locals 35

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v8, p2

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static/range {p2 .. p2}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lc1/d;->m()V

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Lc4/u1;->n()V

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 18
    .line 19
    .line 20
    move-result-object v10

    .line 21
    const-string v11, "conditional_properties"

    .line 22
    .line 23
    const/16 v0, 0xb

    .line 24
    .line 25
    new-array v12, v0, [Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "origin"

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    aput-object v0, v12, v2

    .line 31
    .line 32
    const-string v0, "value"

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    aput-object v0, v12, v3

    .line 36
    .line 37
    const-string v0, "active"

    .line 38
    .line 39
    const/4 v4, 0x2

    .line 40
    aput-object v0, v12, v4

    .line 41
    .line 42
    const-string v0, "trigger_event_name"

    .line 43
    .line 44
    const/4 v5, 0x3

    .line 45
    aput-object v0, v12, v5

    .line 46
    .line 47
    const-string v0, "trigger_timeout"

    .line 48
    .line 49
    const/4 v6, 0x4

    .line 50
    aput-object v0, v12, v6

    .line 51
    .line 52
    const-string v0, "timed_out_event"

    .line 53
    .line 54
    const/4 v7, 0x5

    .line 55
    aput-object v0, v12, v7

    .line 56
    .line 57
    const-string v0, "creation_timestamp"

    .line 58
    .line 59
    const/4 v15, 0x6

    .line 60
    aput-object v0, v12, v15

    .line 61
    .line 62
    const-string v0, "triggered_event"

    .line 63
    .line 64
    const/4 v14, 0x7

    .line 65
    aput-object v0, v12, v14

    .line 66
    .line 67
    const-string v0, "triggered_timestamp"

    .line 68
    .line 69
    const/16 v13, 0x8

    .line 70
    .line 71
    aput-object v0, v12, v13

    .line 72
    .line 73
    const-string v0, "time_to_live"

    .line 74
    .line 75
    const/16 v9, 0x9

    .line 76
    .line 77
    aput-object v0, v12, v9

    .line 78
    .line 79
    const-string v0, "expired_event"

    .line 80
    .line 81
    const/16 v9, 0xa

    .line 82
    .line 83
    aput-object v0, v12, v9

    .line 84
    .line 85
    const-string v0, "app_id=? and name=?"

    .line 86
    .line 87
    filled-new-array/range {p1 .. p2}, [Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v16

    .line 91
    const/16 v17, 0x0

    .line 92
    .line 93
    const/16 v18, 0x0

    .line 94
    .line 95
    const/16 v19, 0x0

    .line 96
    .line 97
    const/16 v9, 0x8

    .line 98
    .line 99
    move-object v13, v0

    .line 100
    const/4 v0, 0x7

    .line 101
    move-object/from16 v14, v16

    .line 102
    .line 103
    const/4 v9, 0x6

    .line 104
    move-object/from16 v15, v18

    .line 105
    .line 106
    move-object/from16 v16, v19

    .line 107
    .line 108
    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 109
    .line 110
    .line 111
    move-result-object v10
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 112
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 113
    .line 114
    .line 115
    move-result v11

    .line 116
    if-nez v11, :cond_0

    .line 117
    .line 118
    goto/16 :goto_7

    .line 119
    .line 120
    :cond_0
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    if-nez v11, :cond_1

    .line 125
    .line 126
    const-string v11, ""

    .line 127
    .line 128
    :cond_1
    move-object/from16 v22, v11

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    .line 132
    goto/16 :goto_3

    .line 133
    .line 134
    :goto_0
    invoke-virtual {v1, v10, v3}, Lc4/o;->u0(Landroid/database/Cursor;I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-eqz v4, :cond_2

    .line 143
    .line 144
    const/16 v26, 0x1

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_2
    const/16 v26, 0x0

    .line 148
    .line 149
    :goto_1
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v27

    .line 153
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 154
    .line 155
    .line 156
    move-result-wide v29

    .line 157
    iget-object v2, v1, Lc4/q1;->H:Lc4/A1;

    .line 158
    .line 159
    iget-object v2, v2, Lc4/A1;->M:Lc4/E1;

    .line 160
    .line 161
    invoke-static {v2}, Lc4/A1;->I(Lc4/u1;)V

    .line 162
    .line 163
    .line 164
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getBlob(I)[B

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    sget-object v4, Lc4/u;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 169
    .line 170
    invoke-virtual {v2, v3, v4}, Lc4/E1;->K([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    move-object/from16 v28, v3

    .line 175
    .line 176
    check-cast v28, Lc4/u;

    .line 177
    .line 178
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 179
    .line 180
    .line 181
    move-result-wide v24

    .line 182
    invoke-static {v2}, Lc4/A1;->I(Lc4/u1;)V

    .line 183
    .line 184
    .line 185
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getBlob(I)[B

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v2, v0, v4}, Lc4/E1;->K([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    move-object/from16 v31, v0

    .line 194
    .line 195
    check-cast v31, Lc4/u;

    .line 196
    .line 197
    const/16 v0, 0x8

    .line 198
    .line 199
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 200
    .line 201
    .line 202
    move-result-wide v5

    .line 203
    const/16 v0, 0x9

    .line 204
    .line 205
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 206
    .line 207
    .line 208
    move-result-wide v32

    .line 209
    invoke-static {v2}, Lc4/A1;->I(Lc4/u1;)V

    .line 210
    .line 211
    .line 212
    const/16 v0, 0xa

    .line 213
    .line 214
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getBlob(I)[B

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {v2, v0, v4}, Lc4/E1;->K([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    move-object/from16 v34, v0

    .line 223
    .line 224
    check-cast v34, Lc4/u;

    .line 225
    .line 226
    new-instance v23, Lc4/F1;

    .line 227
    .line 228
    move-object/from16 v2, v23

    .line 229
    .line 230
    move-wide v3, v5

    .line 231
    move-object v5, v11

    .line 232
    move-object/from16 v6, p2

    .line 233
    .line 234
    move-object/from16 v7, v22

    .line 235
    .line 236
    invoke-direct/range {v2 .. v7}, Lc4/F1;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    new-instance v0, Lc4/f;

    .line 240
    .line 241
    move-object/from16 v20, v0

    .line 242
    .line 243
    move-object/from16 v21, p1

    .line 244
    .line 245
    invoke-direct/range {v20 .. v34}, Lc4/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lc4/F1;JZLjava/lang/String;Lc4/u;JLc4/u;JLc4/u;)V

    .line 246
    .line 247
    .line 248
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    if-eqz v2, :cond_3

    .line 253
    .line 254
    iget-object v2, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 255
    .line 256
    check-cast v2, Lc4/l0;

    .line 257
    .line 258
    iget-object v3, v2, Lc4/l0;->O:Lc4/T;

    .line 259
    .line 260
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 261
    .line 262
    .line 263
    iget-object v3, v3, Lc4/T;->L:Lc4/Q;

    .line 264
    .line 265
    const-string v4, "Got multiple records for conditional property, expected one"

    .line 266
    .line 267
    invoke-static/range {p1 .. p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    iget-object v2, v2, Lc4/l0;->S:Lc4/O;

    .line 272
    .line 273
    invoke-virtual {v2, v8}, Lc4/O;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-virtual {v3, v5, v2, v4}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    .line 279
    .line 280
    goto :goto_2

    .line 281
    :catch_0
    move-exception v0

    .line 282
    goto :goto_6

    .line 283
    :cond_3
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 284
    .line 285
    .line 286
    return-object v0

    .line 287
    :goto_3
    move-object v9, v10

    .line 288
    goto :goto_8

    .line 289
    :catchall_1
    move-exception v0

    .line 290
    goto :goto_4

    .line 291
    :catch_1
    move-exception v0

    .line 292
    goto :goto_5

    .line 293
    :goto_4
    const/4 v9, 0x0

    .line 294
    goto :goto_8

    .line 295
    :goto_5
    const/4 v10, 0x0

    .line 296
    :goto_6
    :try_start_2
    iget-object v2, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast v2, Lc4/l0;

    .line 299
    .line 300
    iget-object v3, v2, Lc4/l0;->O:Lc4/T;

    .line 301
    .line 302
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 303
    .line 304
    .line 305
    iget-object v3, v3, Lc4/T;->L:Lc4/Q;

    .line 306
    .line 307
    const-string v4, "Error querying conditional property"

    .line 308
    .line 309
    invoke-static/range {p1 .. p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 310
    .line 311
    .line 312
    move-result-object v5

    .line 313
    iget-object v2, v2, Lc4/l0;->S:Lc4/O;

    .line 314
    .line 315
    invoke-virtual {v2, v8}, Lc4/O;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    invoke-virtual {v3, v5, v2, v0, v4}, Lc4/Q;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 320
    .line 321
    .line 322
    :goto_7
    if-eqz v10, :cond_4

    .line 323
    .line 324
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 325
    .line 326
    .line 327
    :cond_4
    const/4 v2, 0x0

    .line 328
    return-object v2

    .line 329
    :goto_8
    if-eqz v9, :cond_5

    .line 330
    .line 331
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 332
    .line 333
    .line 334
    :cond_5
    throw v0
.end method

.method public final m0(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bD;
    .locals 12

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lc4/u1;->n()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :try_start_0
    invoke-virtual {p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "apps"

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    new-array v3, v3, [Ljava/lang/String;

    .line 19
    .line 20
    const-string v4, "remote_config"

    .line 21
    .line 22
    const/4 v9, 0x0

    .line 23
    aput-object v4, v3, v9

    .line 24
    .line 25
    const-string v4, "config_last_modified_time"

    .line 26
    .line 27
    const/4 v10, 0x1

    .line 28
    aput-object v4, v3, v10

    .line 29
    .line 30
    const-string v4, "e_tag"

    .line 31
    .line 32
    const/4 v11, 0x2

    .line 33
    aput-object v4, v3, v11

    .line 34
    .line 35
    const-string v4, "app_id=?"

    .line 36
    .line 37
    filled-new-array {p1}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const/4 v8, 0x0

    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 45
    .line 46
    .line 47
    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_0

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_0
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getBlob(I)[B

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_1

    .line 72
    .line 73
    iget-object v5, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v5, Lc4/l0;

    .line 76
    .line 77
    iget-object v5, v5, Lc4/l0;->O:Lc4/T;

    .line 78
    .line 79
    invoke-static {v5}, Lc4/l0;->k(Lc4/s0;)V

    .line 80
    .line 81
    .line 82
    iget-object v5, v5, Lc4/T;->L:Lc4/Q;

    .line 83
    .line 84
    const-string v6, "Got multiple records for app config, expected one. appId"

    .line 85
    .line 86
    invoke-static {p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    invoke-virtual {v5, v7, v6}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catchall_0
    move-exception p1

    .line 95
    goto :goto_1

    .line 96
    :catch_0
    move-exception v2

    .line 97
    goto :goto_2

    .line 98
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_2
    new-instance v5, Lcom/google/android/gms/internal/ads/bD;

    .line 102
    .line 103
    const/16 v6, 0xc

    .line 104
    .line 105
    invoke-direct {v5, v2, v3, v4, v6}, Lcom/google/android/gms/internal/ads/bD;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .line 107
    .line 108
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 109
    .line 110
    .line 111
    return-object v5

    .line 112
    :goto_1
    move-object v0, v1

    .line 113
    goto :goto_4

    .line 114
    :catchall_1
    move-exception p1

    .line 115
    goto :goto_4

    .line 116
    :catch_1
    move-exception v1

    .line 117
    move-object v2, v1

    .line 118
    move-object v1, v0

    .line 119
    :goto_2
    :try_start_2
    iget-object v3, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v3, Lc4/l0;

    .line 122
    .line 123
    iget-object v3, v3, Lc4/l0;->O:Lc4/T;

    .line 124
    .line 125
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 126
    .line 127
    .line 128
    iget-object v3, v3, Lc4/T;->L:Lc4/Q;

    .line 129
    .line 130
    const-string v4, "Error querying remote config. appId"

    .line 131
    .line 132
    invoke-static {p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {v3, p1, v2, v4}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    .line 138
    .line 139
    :goto_3
    if-eqz v1, :cond_3

    .line 140
    .line 141
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 142
    .line 143
    .line 144
    :cond_3
    return-object v0

    .line 145
    :goto_4
    if-eqz v0, :cond_4

    .line 146
    .line 147
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 148
    .line 149
    .line 150
    :cond_4
    throw p1
.end method

.method public final n0(JLjava/lang/String;ZZZZ)Lc4/k;
    .locals 13

    .line 1
    const-wide/16 v4, 0x1

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v7, 0x0

    .line 5
    const/4 v9, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-wide v1, p1

    .line 8
    move-object/from16 v3, p3

    .line 9
    .line 10
    move/from16 v8, p4

    .line 11
    .line 12
    move/from16 v10, p5

    .line 13
    .line 14
    move/from16 v11, p6

    .line 15
    .line 16
    move/from16 v12, p7

    .line 17
    .line 18
    invoke-virtual/range {v0 .. v12}, Lc4/o;->o0(JLjava/lang/String;JZZZZZZZ)Lc4/k;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public final o0(JLjava/lang/String;JZZZZZZZ)Lc4/k;
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "daily_registered_triggers_count"

    .line 4
    .line 5
    const-string v10, "daily_realtime_dcu_count"

    .line 6
    .line 7
    const-string v11, "daily_realtime_events_count"

    .line 8
    .line 9
    const-string v12, "daily_error_events_count"

    .line 10
    .line 11
    const-string v13, "daily_conversions_count"

    .line 12
    .line 13
    const-string v14, "daily_public_events_count"

    .line 14
    .line 15
    const-string v15, "daily_events_count"

    .line 16
    .line 17
    const-string v9, "day"

    .line 18
    .line 19
    invoke-static/range {p3 .. p3}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {p0 .. p0}, Lc1/d;->m()V

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Lc4/u1;->n()V

    .line 26
    .line 27
    .line 28
    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    new-instance v7, Lc4/k;

    .line 33
    .line 34
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    const/16 v16, 0x0

    .line 38
    .line 39
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    const-string v18, "apps"
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    .line 45
    move-object v2, v9

    .line 46
    move-object v3, v15

    .line 47
    move-object v4, v14

    .line 48
    move-object v5, v13

    .line 49
    move-object/from16 v25, v6

    .line 50
    .line 51
    move-object v6, v12

    .line 52
    move-object/from16 v26, v12

    .line 53
    .line 54
    move-object v12, v7

    .line 55
    move-object v7, v11

    .line 56
    move-object/from16 v27, v8

    .line 57
    .line 58
    move-object v8, v10

    .line 59
    move-object/from16 v28, v10

    .line 60
    .line 61
    move-object v10, v9

    .line 62
    move-object v9, v0

    .line 63
    :try_start_1
    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v19

    .line 67
    const-string v20, "app_id=?"

    .line 68
    .line 69
    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v21

    .line 73
    const/16 v24, 0x0

    .line 74
    .line 75
    const/16 v22, 0x0

    .line 76
    .line 77
    const/16 v23, 0x0

    .line 78
    .line 79
    move-object/from16 v17, v25

    .line 80
    .line 81
    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 82
    .line 83
    .line 84
    move-result-object v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-nez v3, :cond_0

    .line 90
    .line 91
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v0, Lc4/l0;

    .line 94
    .line 95
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 96
    .line 97
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, v0, Lc4/T;->O:Lc4/Q;

    .line 101
    .line 102
    const-string v3, "Not updating daily counts, app is not known. appId"

    .line 103
    .line 104
    invoke-static/range {p3 .. p3}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v0, v4, v3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_3

    .line 112
    .line 113
    :catchall_0
    move-exception v0

    .line 114
    goto/16 :goto_0

    .line 115
    .line 116
    :catch_0
    move-exception v0

    .line 117
    goto/16 :goto_1

    .line 118
    .line 119
    :cond_0
    const/4 v3, 0x0

    .line 120
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 121
    .line 122
    .line 123
    move-result-wide v3

    .line 124
    cmp-long v5, v3, p1

    .line 125
    .line 126
    if-nez v5, :cond_1

    .line 127
    .line 128
    const/4 v3, 0x1

    .line 129
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 130
    .line 131
    .line 132
    move-result-wide v3

    .line 133
    iput-wide v3, v12, Lc4/k;->b:J

    .line 134
    .line 135
    const/4 v3, 0x2

    .line 136
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 137
    .line 138
    .line 139
    move-result-wide v3

    .line 140
    iput-wide v3, v12, Lc4/k;->a:J

    .line 141
    .line 142
    const/4 v3, 0x3

    .line 143
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 144
    .line 145
    .line 146
    move-result-wide v3

    .line 147
    iput-wide v3, v12, Lc4/k;->c:J

    .line 148
    .line 149
    const/4 v3, 0x4

    .line 150
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 151
    .line 152
    .line 153
    move-result-wide v3

    .line 154
    iput-wide v3, v12, Lc4/k;->d:J

    .line 155
    .line 156
    const/4 v3, 0x5

    .line 157
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 158
    .line 159
    .line 160
    move-result-wide v3

    .line 161
    iput-wide v3, v12, Lc4/k;->e:J

    .line 162
    .line 163
    const/4 v3, 0x6

    .line 164
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 165
    .line 166
    .line 167
    move-result-wide v3

    .line 168
    iput-wide v3, v12, Lc4/k;->f:J

    .line 169
    .line 170
    const/4 v3, 0x7

    .line 171
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 172
    .line 173
    .line 174
    move-result-wide v3

    .line 175
    iput-wide v3, v12, Lc4/k;->g:J

    .line 176
    .line 177
    :cond_1
    if-eqz p6, :cond_2

    .line 178
    .line 179
    iget-wide v3, v12, Lc4/k;->b:J

    .line 180
    .line 181
    add-long v3, v3, p4

    .line 182
    .line 183
    iput-wide v3, v12, Lc4/k;->b:J

    .line 184
    .line 185
    :cond_2
    if-eqz p7, :cond_3

    .line 186
    .line 187
    iget-wide v3, v12, Lc4/k;->a:J

    .line 188
    .line 189
    add-long v3, v3, p4

    .line 190
    .line 191
    iput-wide v3, v12, Lc4/k;->a:J

    .line 192
    .line 193
    :cond_3
    if-eqz p8, :cond_4

    .line 194
    .line 195
    iget-wide v3, v12, Lc4/k;->c:J

    .line 196
    .line 197
    add-long v3, v3, p4

    .line 198
    .line 199
    iput-wide v3, v12, Lc4/k;->c:J

    .line 200
    .line 201
    :cond_4
    if-eqz p9, :cond_5

    .line 202
    .line 203
    iget-wide v3, v12, Lc4/k;->d:J

    .line 204
    .line 205
    add-long v3, v3, p4

    .line 206
    .line 207
    iput-wide v3, v12, Lc4/k;->d:J

    .line 208
    .line 209
    :cond_5
    if-eqz p10, :cond_6

    .line 210
    .line 211
    iget-wide v3, v12, Lc4/k;->e:J

    .line 212
    .line 213
    add-long v3, v3, p4

    .line 214
    .line 215
    iput-wide v3, v12, Lc4/k;->e:J

    .line 216
    .line 217
    :cond_6
    if-eqz p11, :cond_7

    .line 218
    .line 219
    iget-wide v3, v12, Lc4/k;->f:J

    .line 220
    .line 221
    add-long v3, v3, p4

    .line 222
    .line 223
    iput-wide v3, v12, Lc4/k;->f:J

    .line 224
    .line 225
    :cond_7
    if-eqz p12, :cond_8

    .line 226
    .line 227
    iget-wide v3, v12, Lc4/k;->g:J

    .line 228
    .line 229
    add-long v3, v3, p4

    .line 230
    .line 231
    iput-wide v3, v12, Lc4/k;->g:J

    .line 232
    .line 233
    :cond_8
    new-instance v3, Landroid/content/ContentValues;

    .line 234
    .line 235
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    invoke-virtual {v3, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 243
    .line 244
    .line 245
    iget-wide v4, v12, Lc4/k;->a:J

    .line 246
    .line 247
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    invoke-virtual {v3, v14, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 252
    .line 253
    .line 254
    iget-wide v4, v12, Lc4/k;->b:J

    .line 255
    .line 256
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    invoke-virtual {v3, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 261
    .line 262
    .line 263
    iget-wide v4, v12, Lc4/k;->c:J

    .line 264
    .line 265
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    invoke-virtual {v3, v13, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 270
    .line 271
    .line 272
    iget-wide v4, v12, Lc4/k;->d:J

    .line 273
    .line 274
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    move-object/from16 v5, v26

    .line 279
    .line 280
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 281
    .line 282
    .line 283
    iget-wide v4, v12, Lc4/k;->e:J

    .line 284
    .line 285
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    invoke-virtual {v3, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 290
    .line 291
    .line 292
    iget-wide v4, v12, Lc4/k;->f:J

    .line 293
    .line 294
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    move-object/from16 v5, v28

    .line 299
    .line 300
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 301
    .line 302
    .line 303
    iget-wide v4, v12, Lc4/k;->g:J

    .line 304
    .line 305
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 310
    .line 311
    .line 312
    const-string v0, "apps"

    .line 313
    .line 314
    const-string v4, "app_id=?"

    .line 315
    .line 316
    move-object/from16 v6, v25

    .line 317
    .line 318
    move-object/from16 v5, v27

    .line 319
    .line 320
    invoke-virtual {v6, v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 321
    .line 322
    .line 323
    goto :goto_3

    .line 324
    :goto_0
    move-object/from16 v16, v2

    .line 325
    .line 326
    goto :goto_4

    .line 327
    :goto_1
    move-object/from16 v16, v2

    .line 328
    .line 329
    goto :goto_2

    .line 330
    :catchall_1
    move-exception v0

    .line 331
    goto :goto_4

    .line 332
    :catch_1
    move-exception v0

    .line 333
    goto :goto_2

    .line 334
    :catch_2
    move-exception v0

    .line 335
    move-object v12, v7

    .line 336
    :goto_2
    :try_start_3
    iget-object v2, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 337
    .line 338
    check-cast v2, Lc4/l0;

    .line 339
    .line 340
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 341
    .line 342
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 343
    .line 344
    .line 345
    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    .line 346
    .line 347
    const-string v3, "Error updating daily counts. appId"

    .line 348
    .line 349
    invoke-static/range {p3 .. p3}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    invoke-virtual {v2, v4, v0, v3}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 354
    .line 355
    .line 356
    move-object/from16 v2, v16

    .line 357
    .line 358
    :goto_3
    if-eqz v2, :cond_9

    .line 359
    .line 360
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 361
    .line 362
    .line 363
    :cond_9
    return-object v12

    .line 364
    :goto_4
    if-eqz v16, :cond_a

    .line 365
    .line 366
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 367
    .line 368
    .line 369
    :cond_a
    throw v0
.end method

.method public final p()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final p0(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/b1;Ljava/lang/String;)Lc4/s;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/b1;->w()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "events"

    .line 8
    .line 9
    move-object/from16 v4, p1

    .line 10
    .line 11
    invoke-virtual {v0, v2, v4, v1}, Lc4/o;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc4/s;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lc4/l0;

    .line 20
    .line 21
    iget-object v2, v1, Lc4/l0;->O:Lc4/T;

    .line 22
    .line 23
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 24
    .line 25
    .line 26
    invoke-static/range {p1 .. p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iget-object v1, v1, Lc4/l0;->S:Lc4/O;

    .line 31
    .line 32
    move-object/from16 v5, p3

    .line 33
    .line 34
    invoke-virtual {v1, v5}, Lc4/O;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v5, "Event aggregate wasn\'t created during raw event logging. appId, event"

    .line 39
    .line 40
    iget-object v2, v2, Lc4/T;->O:Lc4/Q;

    .line 41
    .line 42
    invoke-virtual {v2, v3, v1, v5}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Lc4/s;

    .line 46
    .line 47
    move-object v3, v1

    .line 48
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/b1;->w()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/b1;->t()J

    .line 53
    .line 54
    .line 55
    move-result-wide v12

    .line 56
    const/16 v16, 0x0

    .line 57
    .line 58
    const/16 v17, 0x0

    .line 59
    .line 60
    const-wide/16 v6, 0x1

    .line 61
    .line 62
    const-wide/16 v8, 0x1

    .line 63
    .line 64
    const-wide/16 v10, 0x1

    .line 65
    .line 66
    const-wide/16 v14, 0x0

    .line 67
    .line 68
    const/16 v18, 0x0

    .line 69
    .line 70
    const/16 v19, 0x0

    .line 71
    .line 72
    move-object/from16 v4, p1

    .line 73
    .line 74
    invoke-direct/range {v3 .. v19}, Lc4/s;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    iget-wide v2, v1, Lc4/s;->e:J

    .line 79
    .line 80
    const-wide/16 v4, 0x1

    .line 81
    .line 82
    add-long v13, v2, v4

    .line 83
    .line 84
    iget-wide v2, v1, Lc4/s;->d:J

    .line 85
    .line 86
    add-long v11, v2, v4

    .line 87
    .line 88
    iget-wide v2, v1, Lc4/s;->c:J

    .line 89
    .line 90
    add-long v9, v2, v4

    .line 91
    .line 92
    new-instance v2, Lc4/s;

    .line 93
    .line 94
    move-object v6, v2

    .line 95
    iget-object v3, v1, Lc4/s;->h:Ljava/lang/Long;

    .line 96
    .line 97
    move-object/from16 v19, v3

    .line 98
    .line 99
    iget-object v3, v1, Lc4/s;->i:Ljava/lang/Long;

    .line 100
    .line 101
    move-object/from16 v20, v3

    .line 102
    .line 103
    iget-object v7, v1, Lc4/s;->a:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v8, v1, Lc4/s;->b:Ljava/lang/String;

    .line 106
    .line 107
    iget-wide v3, v1, Lc4/s;->f:J

    .line 108
    .line 109
    move-wide v15, v3

    .line 110
    iget-wide v3, v1, Lc4/s;->g:J

    .line 111
    .line 112
    move-wide/from16 v17, v3

    .line 113
    .line 114
    iget-object v3, v1, Lc4/s;->j:Ljava/lang/Long;

    .line 115
    .line 116
    move-object/from16 v21, v3

    .line 117
    .line 118
    iget-object v1, v1, Lc4/s;->k:Ljava/lang/Boolean;

    .line 119
    .line 120
    move-object/from16 v22, v1

    .line 121
    .line 122
    invoke-direct/range {v6 .. v22}, Lc4/s;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 123
    .line 124
    .line 125
    move-object v1, v2

    .line 126
    :goto_0
    return-object v1
.end method

.method public final q()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    const-string v2, "select app_id from queue order by has_realtime desc, rowid asc limit 1;"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v2

    .line 30
    goto :goto_1

    .line 31
    :goto_0
    move-object v5, v1

    .line 32
    move-object v1, v0

    .line 33
    move-object v0, v5

    .line 34
    goto :goto_2

    .line 35
    :catchall_1
    move-exception v0

    .line 36
    goto :goto_2

    .line 37
    :catch_1
    move-exception v0

    .line 38
    move-object v2, v0

    .line 39
    move-object v0, v1

    .line 40
    :goto_1
    :try_start_2
    iget-object v3, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v3, Lc4/l0;

    .line 43
    .line 44
    iget-object v3, v3, Lc4/l0;->O:Lc4/T;

    .line 45
    .line 46
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 47
    .line 48
    .line 49
    iget-object v3, v3, Lc4/T;->L:Lc4/Q;

    .line 50
    .line 51
    const-string v4, "Database error getting next bundle app id"

    .line 52
    .line 53
    invoke-virtual {v3, v2, v4}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    .line 55
    .line 56
    :cond_0
    if-eqz v0, :cond_1

    .line 57
    .line 58
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-object v1

    .line 62
    :goto_2
    if-eqz v1, :cond_2

    .line 63
    .line 64
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 65
    .line 66
    .line 67
    :cond_2
    throw v0
.end method

.method public final q0(Ljava/lang/String;)Lc4/x0;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lc4/u1;->n()V

    .line 8
    .line 9
    .line 10
    filled-new-array {p1}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "select storage_consent_at_bundling from consent_settings where app_id=? limit 1;"

    .line 15
    .line 16
    invoke-virtual {p0, v0, p1}, Lc4/o;->S(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/16 v0, 0x64

    .line 21
    .line 22
    invoke-static {v0, p1}, Lc4/x0;->e(ILjava/lang/String;)Lc4/x0;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lc4/u1;->n()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "app_id=?"

    .line 22
    .line 23
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    const-string p2, " and origin=?"

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-nez p2, :cond_1

    .line 45
    .line 46
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const-string p3, "*"

    .line 51
    .line 52
    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    const-string p2, " and name glob ?"

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    new-array p2, p2, [Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    check-cast p2, [Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p0, p1, p2}, Lc4/o;->s(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    return-object p1
.end method

.method public final r0(Ljava/lang/String;)Lc4/x0;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lc4/u1;->n()V

    .line 8
    .line 9
    .line 10
    filled-new-array {p1}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "select consent_state, consent_source from consent_settings where app_id=? limit 1;"

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :try_start_0
    invoke-virtual {p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 22
    .line 23
    .line 24
    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Lc4/l0;

    .line 34
    .line 35
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 36
    .line 37
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, v0, Lc4/T;->T:Lc4/Q;

    .line 41
    .line 42
    const-string v2, "No data found"

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Lc4/Q;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 48
    .line 49
    .line 50
    goto :goto_3

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    goto :goto_1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    goto :goto_2

    .line 55
    :cond_0
    const/4 v0, 0x0

    .line 56
    :try_start_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/4 v2, 0x1

    .line 61
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-static {v2, v0}, Lc4/x0;->e(ILjava/lang/String;)Lc4/x0;

    .line 66
    .line 67
    .line 68
    move-result-object v1
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    goto :goto_0

    .line 70
    :goto_1
    move-object v1, p1

    .line 71
    goto :goto_4

    .line 72
    :catchall_1
    move-exception p1

    .line 73
    move-object v0, p1

    .line 74
    goto :goto_4

    .line 75
    :catch_1
    move-exception p1

    .line 76
    move-object v0, p1

    .line 77
    move-object p1, v1

    .line 78
    :goto_2
    :try_start_3
    iget-object v2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v2, Lc4/l0;

    .line 81
    .line 82
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 83
    .line 84
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 85
    .line 86
    .line 87
    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    .line 88
    .line 89
    const-string v3, "Error querying database."

    .line 90
    .line 91
    invoke-virtual {v2, v0, v3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    .line 93
    .line 94
    if-eqz p1, :cond_1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    :goto_3
    if-nez v1, :cond_2

    .line 98
    .line 99
    sget-object p1, Lc4/x0;->c:Lc4/x0;

    .line 100
    .line 101
    return-object p1

    .line 102
    :cond_2
    return-object v1

    .line 103
    :goto_4
    if-eqz v1, :cond_3

    .line 104
    .line 105
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 106
    .line 107
    .line 108
    :cond_3
    throw v0
.end method

.method public final s(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 39

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lc1/d;->m()V

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p0 .. p0}, Lc4/u1;->n()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v10, "1001"

    .line 15
    .line 16
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "conditional_properties"

    .line 21
    .line 22
    const/16 v4, 0xd

    .line 23
    .line 24
    new-array v4, v4, [Ljava/lang/String;

    .line 25
    .line 26
    const-string v5, "app_id"

    .line 27
    .line 28
    const/4 v12, 0x0

    .line 29
    aput-object v5, v4, v12

    .line 30
    .line 31
    const-string v5, "origin"

    .line 32
    .line 33
    const/4 v13, 0x1

    .line 34
    aput-object v5, v4, v13

    .line 35
    .line 36
    const-string v5, "name"

    .line 37
    .line 38
    const/4 v14, 0x2

    .line 39
    aput-object v5, v4, v14

    .line 40
    .line 41
    const-string v5, "value"

    .line 42
    .line 43
    const/4 v15, 0x3

    .line 44
    aput-object v5, v4, v15

    .line 45
    .line 46
    const-string v5, "active"

    .line 47
    .line 48
    const/4 v9, 0x4

    .line 49
    aput-object v5, v4, v9

    .line 50
    .line 51
    const-string v5, "trigger_event_name"

    .line 52
    .line 53
    const/4 v8, 0x5

    .line 54
    aput-object v5, v4, v8

    .line 55
    .line 56
    const-string v5, "trigger_timeout"

    .line 57
    .line 58
    const/4 v7, 0x6

    .line 59
    aput-object v5, v4, v7

    .line 60
    .line 61
    const-string v5, "timed_out_event"

    .line 62
    .line 63
    const/4 v6, 0x7

    .line 64
    aput-object v5, v4, v6

    .line 65
    .line 66
    const-string v5, "creation_timestamp"

    .line 67
    .line 68
    const/16 v11, 0x8

    .line 69
    .line 70
    aput-object v5, v4, v11

    .line 71
    .line 72
    const-string v5, "triggered_event"

    .line 73
    .line 74
    const/16 v11, 0x9

    .line 75
    .line 76
    aput-object v5, v4, v11

    .line 77
    .line 78
    const-string v5, "triggered_timestamp"

    .line 79
    .line 80
    const/16 v11, 0xa

    .line 81
    .line 82
    aput-object v5, v4, v11

    .line 83
    .line 84
    const-string v5, "time_to_live"

    .line 85
    .line 86
    const/16 v11, 0xb

    .line 87
    .line 88
    aput-object v5, v4, v11

    .line 89
    .line 90
    const-string v5, "expired_event"

    .line 91
    .line 92
    const/16 v11, 0xc

    .line 93
    .line 94
    aput-object v5, v4, v11

    .line 95
    .line 96
    const-string v21, "rowid"

    .line 97
    .line 98
    iget-object v5, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v5, Lc4/l0;

    .line 101
    .line 102
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    const/16 v22, 0x0

    .line 106
    .line 107
    const/16 v23, 0x0

    .line 108
    .line 109
    move-object v11, v5

    .line 110
    move-object/from16 v5, p1

    .line 111
    .line 112
    move-object/from16 v6, p2

    .line 113
    .line 114
    move-object/from16 v7, v22

    .line 115
    .line 116
    move-object/from16 v8, v23

    .line 117
    .line 118
    move-object/from16 v9, v21

    .line 119
    .line 120
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 121
    .line 122
    .line 123
    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 124
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_3

    .line 129
    .line 130
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    const/16 v4, 0x3e8

    .line 135
    .line 136
    if-lt v3, v4, :cond_0

    .line 137
    .line 138
    iget-object v3, v11, Lc4/l0;->O:Lc4/T;

    .line 139
    .line 140
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 141
    .line 142
    .line 143
    iget-object v3, v3, Lc4/T;->L:Lc4/Q;

    .line 144
    .line 145
    const-string v5, "Read more than the max allowed conditional properties, ignoring extra"

    .line 146
    .line 147
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-virtual {v3, v4, v5}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_7

    .line 155
    .line 156
    :catchall_0
    move-exception v0

    .line 157
    goto/16 :goto_2

    .line 158
    .line 159
    :catch_0
    move-exception v0

    .line 160
    goto/16 :goto_3

    .line 161
    .line 162
    :cond_0
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v10

    .line 170
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    invoke-virtual {v1, v2, v15}, Lc4/o;->u0(Landroid/database/Cursor;I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    const/4 v9, 0x4

    .line 179
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    if-eqz v4, :cond_1

    .line 184
    .line 185
    const/4 v5, 0x5

    .line 186
    const/16 v22, 0x1

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_1
    const/4 v5, 0x5

    .line 190
    const/16 v22, 0x0

    .line 191
    .line 192
    :goto_1
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v23

    .line 196
    const/4 v6, 0x6

    .line 197
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 198
    .line 199
    .line 200
    move-result-wide v26

    .line 201
    iget-object v4, v1, Lc4/q1;->H:Lc4/A1;

    .line 202
    .line 203
    iget-object v4, v4, Lc4/A1;->M:Lc4/E1;

    .line 204
    .line 205
    invoke-static {v4}, Lc4/A1;->I(Lc4/u1;)V

    .line 206
    .line 207
    .line 208
    const/4 v12, 0x7

    .line 209
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getBlob(I)[B

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    sget-object v6, Lc4/u;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 214
    .line 215
    invoke-virtual {v4, v5, v6}, Lc4/E1;->K([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    move-object/from16 v25, v5

    .line 220
    .line 221
    check-cast v25, Lc4/u;

    .line 222
    .line 223
    const/16 v5, 0x8

    .line 224
    .line 225
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 226
    .line 227
    .line 228
    move-result-wide v28

    .line 229
    invoke-static {v4}, Lc4/A1;->I(Lc4/u1;)V

    .line 230
    .line 231
    .line 232
    const/16 v12, 0x9

    .line 233
    .line 234
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getBlob(I)[B

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    invoke-virtual {v4, v5, v6}, Lc4/E1;->K([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    move-object/from16 v30, v5

    .line 243
    .line 244
    check-cast v30, Lc4/u;

    .line 245
    .line 246
    const/16 v5, 0xa

    .line 247
    .line 248
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 249
    .line 250
    .line 251
    move-result-wide v18

    .line 252
    const/16 v12, 0xb

    .line 253
    .line 254
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 255
    .line 256
    .line 257
    move-result-wide v31

    .line 258
    invoke-static {v4}, Lc4/A1;->I(Lc4/u1;)V

    .line 259
    .line 260
    .line 261
    const/16 v12, 0xc

    .line 262
    .line 263
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getBlob(I)[B

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    invoke-virtual {v4, v5, v6}, Lc4/E1;->K([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    move-object/from16 v33, v4

    .line 272
    .line 273
    check-cast v33, Lc4/u;

    .line 274
    .line 275
    new-instance v24, Lc4/F1;

    .line 276
    .line 277
    move-object/from16 v4, v24

    .line 278
    .line 279
    const/16 v34, 0x5

    .line 280
    .line 281
    const/16 v35, 0x6

    .line 282
    .line 283
    const/16 v36, 0x8

    .line 284
    .line 285
    const/16 v37, 0xa

    .line 286
    .line 287
    move-wide/from16 v5, v18

    .line 288
    .line 289
    const/16 v38, 0x4

    .line 290
    .line 291
    move-object v9, v10

    .line 292
    invoke-direct/range {v4 .. v9}, Lc4/F1;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    new-instance v4, Lc4/f;

    .line 296
    .line 297
    move-object/from16 v16, v4

    .line 298
    .line 299
    move-object/from16 v17, v3

    .line 300
    .line 301
    move-object/from16 v18, v10

    .line 302
    .line 303
    move-object/from16 v19, v24

    .line 304
    .line 305
    move-wide/from16 v20, v28

    .line 306
    .line 307
    move-object/from16 v24, v25

    .line 308
    .line 309
    move-wide/from16 v25, v26

    .line 310
    .line 311
    move-object/from16 v27, v30

    .line 312
    .line 313
    move-wide/from16 v28, v31

    .line 314
    .line 315
    move-object/from16 v30, v33

    .line 316
    .line 317
    invoke-direct/range {v16 .. v30}, Lc4/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lc4/F1;JZLjava/lang/String;Lc4/u;JLc4/u;JLc4/u;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 324
    .line 325
    .line 326
    move-result v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    if-nez v3, :cond_2

    .line 328
    .line 329
    goto :goto_7

    .line 330
    :cond_2
    const/4 v12, 0x0

    .line 331
    goto/16 :goto_0

    .line 332
    .line 333
    :goto_2
    move-object v11, v2

    .line 334
    goto :goto_8

    .line 335
    :goto_3
    move-object v11, v2

    .line 336
    goto :goto_6

    .line 337
    :catchall_1
    move-exception v0

    .line 338
    goto :goto_4

    .line 339
    :catch_1
    move-exception v0

    .line 340
    goto :goto_5

    .line 341
    :goto_4
    const/4 v11, 0x0

    .line 342
    goto :goto_8

    .line 343
    :goto_5
    const/4 v11, 0x0

    .line 344
    :goto_6
    :try_start_2
    iget-object v2, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 345
    .line 346
    check-cast v2, Lc4/l0;

    .line 347
    .line 348
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 349
    .line 350
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 351
    .line 352
    .line 353
    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    .line 354
    .line 355
    const-string v3, "Error querying conditional user property value"

    .line 356
    .line 357
    invoke-virtual {v2, v0, v3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 361
    .line 362
    .line 363
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 364
    move-object v2, v11

    .line 365
    :cond_3
    :goto_7
    if-eqz v2, :cond_4

    .line 366
    .line 367
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 368
    .line 369
    .line 370
    :cond_4
    return-object v0

    .line 371
    :catchall_2
    move-exception v0

    .line 372
    :goto_8
    if-eqz v11, :cond_5

    .line 373
    .line 374
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 375
    .line 376
    .line 377
    :cond_5
    throw v0
.end method

.method public final s0(Ljava/lang/String;)Lc4/C1;
    .locals 22

    .line 1
    move-object/from16 v14, p0

    .line 2
    .line 3
    move-object/from16 v15, p1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    const-string v2, "app_id=? AND NOT "

    .line 8
    .line 9
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p0 .. p0}, Lc1/d;->m()V

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Lc4/u1;->n()V

    .line 16
    .line 17
    .line 18
    iget-object v3, v14, Lc1/d;->G:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v3, Lc4/l0;

    .line 21
    .line 22
    iget-object v4, v3, Lc4/l0;->M:Lc4/h;

    .line 23
    .line 24
    sget-object v5, Lc4/E;->N0:Lc4/D;

    .line 25
    .line 26
    const/4 v12, 0x0

    .line 27
    invoke-virtual {v4, v12, v5}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_5

    .line 32
    .line 33
    sget-object v4, Lc4/E;->Q0:Lc4/D;

    .line 34
    .line 35
    iget-object v3, v3, Lc4/l0;->M:Lc4/h;

    .line 36
    .line 37
    invoke-virtual {v3, v12, v4}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    new-array v2, v0, [Lc4/R0;

    .line 44
    .line 45
    sget-object v3, Lc4/R0;->I:Lc4/R0;

    .line 46
    .line 47
    aput-object v3, v2, v1

    .line 48
    .line 49
    new-instance v3, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    .line 53
    .line 54
    aget-object v2, v2, v1

    .line 55
    .line 56
    iget v2, v2, Lc4/R0;->G:I

    .line 57
    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    new-instance v2, Lc4/s1;

    .line 66
    .line 67
    invoke-direct {v2, v3}, Lc4/s1;-><init>(Ljava/util/ArrayList;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v14, v15, v2, v0}, Lc4/o;->t(Ljava/lang/String;Lc4/s1;I)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_0

    .line 79
    .line 80
    return-object v12

    .line 81
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lc4/C1;

    .line 86
    .line 87
    return-object v0

    .line 88
    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    const-string v4, "upload_queue"

    .line 93
    .line 94
    const/16 v5, 0xa

    .line 95
    .line 96
    new-array v5, v5, [Ljava/lang/String;

    .line 97
    .line 98
    const-string v6, "rowId"

    .line 99
    .line 100
    aput-object v6, v5, v1

    .line 101
    .line 102
    const-string v6, "app_id"

    .line 103
    .line 104
    aput-object v6, v5, v0

    .line 105
    .line 106
    const-string v0, "measurement_batch"

    .line 107
    .line 108
    const/4 v11, 0x2

    .line 109
    aput-object v0, v5, v11

    .line 110
    .line 111
    const-string v0, "upload_uri"

    .line 112
    .line 113
    const/4 v13, 0x3

    .line 114
    aput-object v0, v5, v13

    .line 115
    .line 116
    const-string v0, "upload_headers"

    .line 117
    .line 118
    const/4 v10, 0x4

    .line 119
    aput-object v0, v5, v10

    .line 120
    .line 121
    const-string v0, "upload_type"

    .line 122
    .line 123
    const/4 v9, 0x5

    .line 124
    aput-object v0, v5, v9

    .line 125
    .line 126
    const-string v0, "retry_count"

    .line 127
    .line 128
    const/4 v8, 0x6

    .line 129
    aput-object v0, v5, v8

    .line 130
    .line 131
    const-string v0, "creation_timestamp"

    .line 132
    .line 133
    const/4 v7, 0x7

    .line 134
    aput-object v0, v5, v7

    .line 135
    .line 136
    const-string v0, "associated_row_id"

    .line 137
    .line 138
    const/16 v6, 0x8

    .line 139
    .line 140
    aput-object v0, v5, v6

    .line 141
    .line 142
    const-string v0, "last_upload_timestamp"
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 143
    .line 144
    const/16 v12, 0x9

    .line 145
    .line 146
    :try_start_1
    aput-object v0, v5, v12

    .line 147
    .line 148
    invoke-virtual/range {p0 .. p0}, Lc4/o;->R()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    new-instance v6, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    const-string v18, "creation_timestamp ASC"

    .line 169
    .line 170
    const-string v19, "1"

    .line 171
    .line 172
    const/16 v20, 0x0

    .line 173
    .line 174
    const/16 v21, 0x0

    .line 175
    .line 176
    move-object v2, v3

    .line 177
    move-object v3, v4

    .line 178
    move-object v4, v5

    .line 179
    move-object v5, v0

    .line 180
    const/16 v0, 0x8

    .line 181
    .line 182
    const/4 v12, 0x7

    .line 183
    move-object/from16 v7, v20

    .line 184
    .line 185
    const/4 v0, 0x6

    .line 186
    move-object/from16 v8, v21

    .line 187
    .line 188
    const/4 v12, 0x5

    .line 189
    move-object/from16 v9, v18

    .line 190
    .line 191
    const/4 v0, 0x4

    .line 192
    move-object/from16 v10, v19

    .line 193
    .line 194
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 195
    .line 196
    .line 197
    move-result-object v10
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 198
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-nez v2, :cond_2

    .line 203
    .line 204
    move-object v1, v14

    .line 205
    const/16 v16, 0x0

    .line 206
    .line 207
    goto/16 :goto_5

    .line 208
    .line 209
    :cond_2
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 210
    .line 211
    .line 212
    move-result-wide v3

    .line 213
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getBlob(I)[B

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v7

    .line 225
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    const/4 v0, 0x6

    .line 230
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 231
    .line 232
    .line 233
    move-result v9

    .line 234
    const/4 v0, 0x7

    .line 235
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 236
    .line 237
    .line 238
    move-result-wide v11

    .line 239
    const/16 v0, 0x8

    .line 240
    .line 241
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 242
    .line 243
    .line 244
    move-result-wide v18

    .line 245
    const/16 v0, 0x9

    .line 246
    .line 247
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 248
    .line 249
    .line 250
    move-result-wide v20
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 251
    move-object/from16 v1, p0

    .line 252
    .line 253
    move-object/from16 v2, p1

    .line 254
    .line 255
    move-object/from16 v17, v10

    .line 256
    .line 257
    move-wide v10, v11

    .line 258
    const/16 v16, 0x0

    .line 259
    .line 260
    move-wide/from16 v12, v18

    .line 261
    .line 262
    move-wide/from16 v14, v20

    .line 263
    .line 264
    :try_start_3
    invoke-virtual/range {v1 .. v15}, Lc4/o;->Q(Ljava/lang/String;J[BLjava/lang/String;Ljava/lang/String;IIJJJ)Lc4/C1;

    .line 265
    .line 266
    .line 267
    move-result-object v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 269
    .line 270
    .line 271
    return-object v0

    .line 272
    :catchall_0
    move-exception v0

    .line 273
    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    goto :goto_1

    .line 276
    :catchall_1
    move-exception v0

    .line 277
    move-object/from16 v17, v10

    .line 278
    .line 279
    goto :goto_0

    .line 280
    :catch_1
    move-exception v0

    .line 281
    move-object/from16 v17, v10

    .line 282
    .line 283
    const/16 v16, 0x0

    .line 284
    .line 285
    goto :goto_1

    .line 286
    :goto_0
    move-object/from16 v1, p0

    .line 287
    .line 288
    move-object/from16 v12, v17

    .line 289
    .line 290
    goto :goto_6

    .line 291
    :goto_1
    move-object/from16 v1, p0

    .line 292
    .line 293
    move-object/from16 v12, v17

    .line 294
    .line 295
    goto :goto_4

    .line 296
    :catchall_2
    move-exception v0

    .line 297
    const/16 v16, 0x0

    .line 298
    .line 299
    goto :goto_2

    .line 300
    :catch_2
    move-exception v0

    .line 301
    const/16 v16, 0x0

    .line 302
    .line 303
    goto :goto_3

    .line 304
    :catchall_3
    move-exception v0

    .line 305
    move-object/from16 v16, v12

    .line 306
    .line 307
    goto :goto_2

    .line 308
    :catch_3
    move-exception v0

    .line 309
    move-object/from16 v16, v12

    .line 310
    .line 311
    goto :goto_3

    .line 312
    :goto_2
    move-object/from16 v1, p0

    .line 313
    .line 314
    move-object/from16 v12, v16

    .line 315
    .line 316
    goto :goto_6

    .line 317
    :goto_3
    move-object/from16 v1, p0

    .line 318
    .line 319
    move-object/from16 v12, v16

    .line 320
    .line 321
    :goto_4
    :try_start_4
    iget-object v2, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 322
    .line 323
    check-cast v2, Lc4/l0;

    .line 324
    .line 325
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 326
    .line 327
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 328
    .line 329
    .line 330
    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    .line 331
    .line 332
    const-string v3, "Error to querying MeasurementBatch from upload_queue. appId"

    .line 333
    .line 334
    move-object/from16 v4, p1

    .line 335
    .line 336
    invoke-virtual {v2, v4, v0, v3}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 337
    .line 338
    .line 339
    move-object v10, v12

    .line 340
    :goto_5
    if-eqz v10, :cond_3

    .line 341
    .line 342
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 343
    .line 344
    .line 345
    :cond_3
    return-object v16

    .line 346
    :catchall_4
    move-exception v0

    .line 347
    :goto_6
    if-eqz v12, :cond_4

    .line 348
    .line 349
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 350
    .line 351
    .line 352
    :cond_4
    throw v0

    .line 353
    :cond_5
    move-object/from16 v16, v12

    .line 354
    .line 355
    move-object v1, v14

    .line 356
    return-object v16
.end method

.method public final t(Ljava/lang/String;Lc4/s1;I)Ljava/util/List;
    .locals 27

    .line 1
    move-object/from16 v14, p0

    .line 2
    .line 3
    const-string v0, "app_id=?"

    .line 4
    .line 5
    iget-object v1, v14, Lc1/d;->G:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lc4/l0;

    .line 8
    .line 9
    iget-object v1, v1, Lc4/l0;->M:Lc4/h;

    .line 10
    .line 11
    sget-object v2, Lc4/E;->Q0:Lc4/D;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v1, v3, v2}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0

    .line 25
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p0 .. p0}, Lc1/d;->m()V

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p0 .. p0}, Lc4/u1;->n()V

    .line 32
    .line 33
    .line 34
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const-string v5, "upload_queue"

    .line 39
    .line 40
    const/16 v1, 0xa

    .line 41
    .line 42
    new-array v6, v1, [Ljava/lang/String;

    .line 43
    .line 44
    const-string v1, "rowId"

    .line 45
    .line 46
    const/4 v15, 0x0

    .line 47
    aput-object v1, v6, v15

    .line 48
    .line 49
    const-string v1, "app_id"

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    aput-object v1, v6, v2

    .line 53
    .line 54
    const-string v1, "measurement_batch"

    .line 55
    .line 56
    const/4 v13, 0x2

    .line 57
    aput-object v1, v6, v13

    .line 58
    .line 59
    const-string v1, "upload_uri"

    .line 60
    .line 61
    const/4 v2, 0x3

    .line 62
    aput-object v1, v6, v2

    .line 63
    .line 64
    const-string v1, "upload_headers"

    .line 65
    .line 66
    const/4 v12, 0x4

    .line 67
    aput-object v1, v6, v12

    .line 68
    .line 69
    const-string v1, "upload_type"

    .line 70
    .line 71
    const/4 v11, 0x5

    .line 72
    aput-object v1, v6, v11

    .line 73
    .line 74
    const-string v1, "retry_count"

    .line 75
    .line 76
    const/4 v10, 0x6

    .line 77
    aput-object v1, v6, v10

    .line 78
    .line 79
    const-string v1, "creation_timestamp"

    .line 80
    .line 81
    const/4 v9, 0x7

    .line 82
    aput-object v1, v6, v9

    .line 83
    .line 84
    const-string v1, "associated_row_id"

    .line 85
    .line 86
    const/16 v8, 0x8

    .line 87
    .line 88
    aput-object v1, v6, v8

    .line 89
    .line 90
    const-string v1, "last_upload_timestamp"

    .line 91
    .line 92
    const/16 v7, 0x9

    .line 93
    .line 94
    aput-object v1, v6, v7

    .line 95
    .line 96
    move-object/from16 v1, p2

    .line 97
    .line 98
    iget-object v1, v1, Lc4/s1;->G:Ljava/util/List;

    .line 99
    .line 100
    invoke-static {v1}, Lc4/o;->W(Ljava/util/List;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual/range {p0 .. p0}, Lc4/o;->R()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    new-instance v7, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v0, " AND NOT "

    .line 117
    .line 118
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const-string v1, "creation_timestamp ASC"

    .line 133
    .line 134
    if-lez p3, :cond_1

    .line 135
    .line 136
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    .line 142
    goto/16 :goto_4

    .line 143
    .line 144
    :catch_0
    move-exception v0

    .line 145
    goto/16 :goto_5

    .line 146
    .line 147
    :cond_1
    const/4 v3, 0x0

    .line 148
    :goto_0
    const/16 v18, 0x0

    .line 149
    .line 150
    const/16 v19, 0x0

    .line 151
    .line 152
    move-object v8, v0

    .line 153
    const/4 v0, 0x7

    .line 154
    move-object/from16 v9, v18

    .line 155
    .line 156
    const/4 v0, 0x6

    .line 157
    move-object/from16 v10, v19

    .line 158
    .line 159
    const/4 v0, 0x5

    .line 160
    move-object v11, v1

    .line 161
    const/4 v1, 0x4

    .line 162
    move-object v12, v3

    .line 163
    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 164
    .line 165
    .line 166
    move-result-object v12
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :try_start_1
    new-instance v10, Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .line 171
    .line 172
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-eqz v3, :cond_3

    .line 177
    .line 178
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getLong(I)J

    .line 179
    .line 180
    .line 181
    move-result-wide v3

    .line 182
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getBlob(I)[B

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    const/4 v11, 0x6

    .line 199
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 200
    .line 201
    .line 202
    move-result v9

    .line 203
    const/4 v0, 0x7

    .line 204
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 205
    .line 206
    .line 207
    move-result-wide v16

    .line 208
    const/16 v0, 0x8

    .line 209
    .line 210
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 211
    .line 212
    .line 213
    move-result-wide v21

    .line 214
    const/16 v0, 0x9

    .line 215
    .line 216
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 217
    .line 218
    .line 219
    move-result-wide v23
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 220
    const/16 v20, 0x4

    .line 221
    .line 222
    move-object/from16 v1, p0

    .line 223
    .line 224
    const/16 v25, 0x3

    .line 225
    .line 226
    move-object/from16 v2, p1

    .line 227
    .line 228
    move-object v0, v10

    .line 229
    const/16 v26, 0x6

    .line 230
    .line 231
    move-wide/from16 v10, v16

    .line 232
    .line 233
    move-object/from16 v16, v12

    .line 234
    .line 235
    const/16 v17, 0x2

    .line 236
    .line 237
    move-wide/from16 v12, v21

    .line 238
    .line 239
    const/16 v21, 0x0

    .line 240
    .line 241
    move-wide/from16 v14, v23

    .line 242
    .line 243
    :try_start_2
    invoke-virtual/range {v1 .. v15}, Lc4/o;->Q(Ljava/lang/String;J[BLjava/lang/String;Ljava/lang/String;IIJJJ)Lc4/C1;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    if-eqz v1, :cond_2

    .line 248
    .line 249
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 250
    .line 251
    .line 252
    :cond_2
    move-object/from16 v14, p0

    .line 253
    .line 254
    move-object v10, v0

    .line 255
    move-object/from16 v12, v16

    .line 256
    .line 257
    const/4 v0, 0x5

    .line 258
    const/4 v1, 0x4

    .line 259
    const/4 v2, 0x3

    .line 260
    const/4 v13, 0x2

    .line 261
    const/4 v15, 0x0

    .line 262
    goto :goto_1

    .line 263
    :catchall_1
    move-exception v0

    .line 264
    goto :goto_2

    .line 265
    :catch_1
    move-exception v0

    .line 266
    goto :goto_3

    .line 267
    :catchall_2
    move-exception v0

    .line 268
    move-object/from16 v16, v12

    .line 269
    .line 270
    goto :goto_2

    .line 271
    :catch_2
    move-exception v0

    .line 272
    move-object/from16 v16, v12

    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_3
    move-object v0, v10

    .line 276
    move-object/from16 v16, v12

    .line 277
    .line 278
    move-object/from16 v1, p0

    .line 279
    .line 280
    goto :goto_7

    .line 281
    :goto_2
    move-object/from16 v1, p0

    .line 282
    .line 283
    move-object/from16 v3, v16

    .line 284
    .line 285
    goto :goto_8

    .line 286
    :goto_3
    move-object/from16 v1, p0

    .line 287
    .line 288
    move-object/from16 v3, v16

    .line 289
    .line 290
    goto :goto_6

    .line 291
    :goto_4
    const/4 v3, 0x0

    .line 292
    move-object/from16 v1, p0

    .line 293
    .line 294
    goto :goto_8

    .line 295
    :goto_5
    const/4 v3, 0x0

    .line 296
    move-object/from16 v1, p0

    .line 297
    .line 298
    :goto_6
    :try_start_3
    iget-object v2, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 299
    .line 300
    check-cast v2, Lc4/l0;

    .line 301
    .line 302
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 303
    .line 304
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 305
    .line 306
    .line 307
    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    .line 308
    .line 309
    const-string v4, "Error to querying MeasurementBatch from upload_queue. appId"

    .line 310
    .line 311
    move-object/from16 v5, p1

    .line 312
    .line 313
    invoke-virtual {v2, v5, v0, v4}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 317
    .line 318
    .line 319
    move-result-object v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 320
    move-object v12, v3

    .line 321
    :goto_7
    if-eqz v12, :cond_4

    .line 322
    .line 323
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 324
    .line 325
    .line 326
    :cond_4
    return-object v10

    .line 327
    :catchall_3
    move-exception v0

    .line 328
    :goto_8
    if-eqz v3, :cond_5

    .line 329
    .line 330
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 331
    .line 332
    .line 333
    :cond_5
    throw v0
.end method

.method public final t0(Ljava/lang/String;Ljava/lang/String;)Lc4/G1;
    .locals 14

    .line 1
    move-object v1, p0

    .line 2
    invoke-static {p1}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    invoke-static/range {p2 .. p2}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lc1/d;->m()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lc4/u1;->n()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    :try_start_0
    invoke-virtual {p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v4, "user_attributes"

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    new-array v5, v0, [Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, "set_timestamp"

    .line 25
    .line 26
    const/4 v11, 0x0

    .line 27
    aput-object v0, v5, v11

    .line 28
    .line 29
    const-string v0, "value"

    .line 30
    .line 31
    const/4 v12, 0x1

    .line 32
    aput-object v0, v5, v12

    .line 33
    .line 34
    const-string v0, "origin"

    .line 35
    .line 36
    const/4 v13, 0x2

    .line 37
    aput-object v0, v5, v13

    .line 38
    .line 39
    const-string v6, "app_id=? and name=?"

    .line 40
    .line 41
    filled-new-array/range {p1 .. p2}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    const/4 v10, 0x0

    .line 46
    const/4 v8, 0x0

    .line 47
    const/4 v9, 0x0

    .line 48
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 49
    .line 50
    .line 51
    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 52
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_0

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_0
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 60
    .line 61
    .line 62
    move-result-wide v8

    .line 63
    invoke-virtual {p0, v3, v12}, Lc4/o;->u0(Landroid/database/Cursor;I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    if-nez v10, :cond_1

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_1
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    new-instance v0, Lc4/G1;

    .line 75
    .line 76
    move-object v4, v0

    .line 77
    move-object v5, p1

    .line 78
    move-object/from16 v7, p2

    .line 79
    .line 80
    invoke-direct/range {v4 .. v10}, Lc4/G1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_2

    .line 88
    .line 89
    iget-object v4, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v4, Lc4/l0;

    .line 92
    .line 93
    iget-object v4, v4, Lc4/l0;->O:Lc4/T;

    .line 94
    .line 95
    invoke-static {v4}, Lc4/l0;->k(Lc4/s0;)V

    .line 96
    .line 97
    .line 98
    iget-object v4, v4, Lc4/T;->L:Lc4/Q;

    .line 99
    .line 100
    const-string v5, "Got multiple records for user property, expected one. appId"

    .line 101
    .line 102
    invoke-static {p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-virtual {v4, v6, v5}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    goto :goto_1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    goto :goto_2

    .line 114
    :cond_2
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 115
    .line 116
    .line 117
    return-object v0

    .line 118
    :goto_1
    move-object v2, v3

    .line 119
    goto :goto_4

    .line 120
    :catchall_1
    move-exception v0

    .line 121
    goto :goto_4

    .line 122
    :catch_1
    move-exception v0

    .line 123
    move-object v3, v2

    .line 124
    :goto_2
    :try_start_2
    iget-object v4, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v4, Lc4/l0;

    .line 127
    .line 128
    iget-object v5, v4, Lc4/l0;->O:Lc4/T;

    .line 129
    .line 130
    invoke-static {v5}, Lc4/l0;->k(Lc4/s0;)V

    .line 131
    .line 132
    .line 133
    iget-object v5, v5, Lc4/T;->L:Lc4/Q;

    .line 134
    .line 135
    const-string v6, "Error querying user property. appId"

    .line 136
    .line 137
    invoke-static {p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    iget-object v4, v4, Lc4/l0;->S:Lc4/O;

    .line 142
    .line 143
    move-object/from16 v8, p2

    .line 144
    .line 145
    invoke-virtual {v4, v8}, Lc4/O;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v5, v7, v4, v0, v6}, Lc4/Q;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    .line 151
    .line 152
    :goto_3
    if-eqz v3, :cond_3

    .line 153
    .line 154
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 155
    .line 156
    .line 157
    :cond_3
    return-object v2

    .line 158
    :goto_4
    if-eqz v2, :cond_4

    .line 159
    .line 160
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 161
    .line 162
    .line 163
    :cond_4
    throw v0
.end method

.method public final u(Ljava/lang/String;)Ljava/util/List;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p0 .. p0}, Lc1/d;->m()V

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Lc4/u1;->n()V

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v10, "1000"

    .line 18
    .line 19
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "user_attributes"

    .line 24
    .line 25
    const/4 v4, 0x4

    .line 26
    new-array v4, v4, [Ljava/lang/String;

    .line 27
    .line 28
    const-string v5, "name"

    .line 29
    .line 30
    const/4 v12, 0x0

    .line 31
    aput-object v5, v4, v12

    .line 32
    .line 33
    const-string v5, "origin"

    .line 34
    .line 35
    const/4 v13, 0x1

    .line 36
    aput-object v5, v4, v13

    .line 37
    .line 38
    const-string v5, "set_timestamp"

    .line 39
    .line 40
    const/4 v14, 0x2

    .line 41
    aput-object v5, v4, v14

    .line 42
    .line 43
    const-string v5, "value"

    .line 44
    .line 45
    const/4 v15, 0x3

    .line 46
    aput-object v5, v4, v15

    .line 47
    .line 48
    const-string v5, "app_id=?"

    .line 49
    .line 50
    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    const-string v9, "rowid"

    .line 55
    .line 56
    iget-object v7, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 57
    .line 58
    move-object v8, v7

    .line 59
    check-cast v8, Lc4/l0;

    .line 60
    .line 61
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    const/4 v7, 0x0

    .line 65
    const/16 v16, 0x0

    .line 66
    .line 67
    move-object v11, v8

    .line 68
    move-object/from16 v8, v16

    .line 69
    .line 70
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 71
    .line 72
    .line 73
    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_3

    .line 79
    .line 80
    :cond_0
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    if-nez v3, :cond_1

    .line 89
    .line 90
    const-string v3, ""

    .line 91
    .line 92
    :cond_1
    move-object v6, v3

    .line 93
    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    goto :goto_2

    .line 96
    :catch_0
    move-exception v0

    .line 97
    goto :goto_3

    .line 98
    :goto_0
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    .line 99
    .line 100
    .line 101
    move-result-wide v8

    .line 102
    invoke-virtual {v1, v2, v15}, Lc4/o;->u0(Landroid/database/Cursor;I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    if-nez v10, :cond_2

    .line 107
    .line 108
    iget-object v3, v11, Lc4/l0;->O:Lc4/T;

    .line 109
    .line 110
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 111
    .line 112
    .line 113
    iget-object v3, v3, Lc4/T;->L:Lc4/Q;

    .line 114
    .line 115
    const-string v4, "Read invalid user property value, ignoring it. appId"

    .line 116
    .line 117
    invoke-static/range {p1 .. p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v3, v5, v4}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_2
    new-instance v3, Lc4/G1;

    .line 126
    .line 127
    move-object v4, v3

    .line 128
    move-object/from16 v5, p1

    .line 129
    .line 130
    invoke-direct/range {v4 .. v10}, Lc4/G1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 137
    .line 138
    .line 139
    move-result v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    if-nez v3, :cond_0

    .line 141
    .line 142
    goto :goto_7

    .line 143
    :goto_2
    move-object v11, v2

    .line 144
    goto :goto_8

    .line 145
    :goto_3
    move-object v11, v2

    .line 146
    goto :goto_6

    .line 147
    :catchall_1
    move-exception v0

    .line 148
    goto :goto_4

    .line 149
    :catch_1
    move-exception v0

    .line 150
    goto :goto_5

    .line 151
    :goto_4
    const/4 v11, 0x0

    .line 152
    goto :goto_8

    .line 153
    :goto_5
    const/4 v11, 0x0

    .line 154
    :goto_6
    :try_start_2
    iget-object v2, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v2, Lc4/l0;

    .line 157
    .line 158
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 159
    .line 160
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 161
    .line 162
    .line 163
    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    .line 164
    .line 165
    const-string v3, "Error querying user properties. appId"

    .line 166
    .line 167
    invoke-static/range {p1 .. p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-virtual {v2, v4, v0, v3}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 178
    move-object v2, v11

    .line 179
    :cond_3
    :goto_7
    if-eqz v2, :cond_4

    .line 180
    .line 181
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 182
    .line 183
    .line 184
    :cond_4
    return-object v0

    .line 185
    :catchall_2
    move-exception v0

    .line 186
    :goto_8
    if-eqz v11, :cond_5

    .line 187
    .line 188
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 189
    .line 190
    .line 191
    :cond_5
    throw v0
.end method

.method public final u0(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq v0, v2, :cond_3

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-eq v0, v2, :cond_2

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    if-eq v0, v2, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x4

    .line 18
    if-eq v0, p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Lc4/l0;

    .line 23
    .line 24
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 25
    .line 26
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const-string v0, "Loaded invalid unknown value type, ignoring it"

    .line 34
    .line 35
    iget-object p1, p1, Lc4/T;->L:Lc4/Q;

    .line 36
    .line 37
    invoke-virtual {p1, p2, v0}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_0
    iget-object p1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Lc4/l0;

    .line 44
    .line 45
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 46
    .line 47
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 48
    .line 49
    .line 50
    const-string p2, "Loaded invalid blob type value, ignoring it"

    .line 51
    .line 52
    iget-object p1, p1, Lc4/T;->L:Lc4/Q;

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v1

    .line 58
    :cond_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1

    .line 63
    :cond_2
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getDouble(I)D

    .line 64
    .line 65
    .line 66
    move-result-wide p1

    .line 67
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    return-object p1

    .line 72
    :cond_3
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    .line 73
    .line 74
    .line 75
    move-result-wide p1

    .line 76
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    return-object p1

    .line 81
    :cond_4
    iget-object p1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p1, Lc4/l0;

    .line 84
    .line 85
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 86
    .line 87
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 88
    .line 89
    .line 90
    const-string p2, "Loaded invalid null value from database"

    .line 91
    .line 92
    iget-object p1, p1, Lc4/T;->L:Lc4/Q;

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-object v1
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Lc1/d;->m()V

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lc4/u1;->n()V

    .line 12
    .line 13
    .line 14
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v11, "1001"

    .line 20
    .line 21
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    .line 22
    .line 23
    const/4 v13, 0x3

    .line 24
    invoke-direct {v3, v13}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    move-object/from16 v14, p1

    .line 28
    .line 29
    :try_start_1
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v5, "app_id=?"

    .line 35
    .line 36
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v5
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    if-nez v5, :cond_0

    .line 44
    .line 45
    move-object/from16 v15, p2

    .line 46
    .line 47
    :try_start_2
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    const-string v5, " and origin=?"

    .line 51
    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    goto/16 :goto_5

    .line 58
    .line 59
    :catch_0
    move-exception v0

    .line 60
    goto/16 :goto_6

    .line 61
    .line 62
    :cond_0
    move-object/from16 v15, p2

    .line 63
    .line 64
    :goto_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-nez v5, :cond_1

    .line 69
    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v6, "*"

    .line 79
    .line 80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    const-string v5, " and name glob ?"

    .line 91
    .line 92
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    new-array v5, v5, [Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    move-object v7, v3

    .line 106
    check-cast v7, [Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual/range {p0 .. p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    const-string v5, "user_attributes"

    .line 113
    .line 114
    const/4 v6, 0x4

    .line 115
    new-array v6, v6, [Ljava/lang/String;

    .line 116
    .line 117
    const-string v8, "name"

    .line 118
    .line 119
    const/4 v10, 0x0

    .line 120
    aput-object v8, v6, v10

    .line 121
    .line 122
    const-string v8, "set_timestamp"

    .line 123
    .line 124
    const/4 v9, 0x1

    .line 125
    aput-object v8, v6, v9

    .line 126
    .line 127
    const-string v8, "value"

    .line 128
    .line 129
    const/4 v12, 0x2

    .line 130
    aput-object v8, v6, v12

    .line 131
    .line 132
    const-string v8, "origin"

    .line 133
    .line 134
    aput-object v8, v6, v13

    .line 135
    .line 136
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    const-string v17, "rowid"

    .line 141
    .line 142
    iget-object v4, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v4, Lc4/l0;

    .line 145
    .line 146
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    const/16 v18, 0x0

    .line 150
    .line 151
    const/16 v19, 0x0

    .line 152
    .line 153
    move-object v13, v4

    .line 154
    move-object v4, v5

    .line 155
    move-object v5, v6

    .line 156
    move-object v6, v8

    .line 157
    move-object/from16 v8, v18

    .line 158
    .line 159
    const/4 v12, 0x1

    .line 160
    move-object/from16 v9, v19

    .line 161
    .line 162
    const/4 v12, 0x0

    .line 163
    move-object/from16 v10, v17

    .line 164
    .line 165
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 166
    .line 167
    .line 168
    move-result-object v3
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    if-nez v4, :cond_2

    .line 174
    .line 175
    goto/16 :goto_8

    .line 176
    .line 177
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 178
    .line 179
    .line 180
    move-result v4
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 181
    const/16 v5, 0x3e8

    .line 182
    .line 183
    iget-object v6, v13, Lc4/l0;->O:Lc4/T;

    .line 184
    .line 185
    if-lt v4, v5, :cond_3

    .line 186
    .line 187
    :try_start_4
    invoke-static {v6}, Lc4/l0;->k(Lc4/s0;)V

    .line 188
    .line 189
    .line 190
    iget-object v0, v6, Lc4/T;->L:Lc4/Q;

    .line 191
    .line 192
    const-string v4, "Read more than the max allowed user properties, ignoring excess"

    .line 193
    .line 194
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    invoke-virtual {v0, v5, v4}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_8

    .line 202
    .line 203
    :catchall_1
    move-exception v0

    .line 204
    goto :goto_3

    .line 205
    :cond_3
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v7

    .line 209
    const/4 v11, 0x1

    .line 210
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 211
    .line 212
    .line 213
    move-result-wide v8

    .line 214
    const/4 v10, 0x2

    .line 215
    invoke-virtual {v1, v3, v10}, Lc4/o;->u0(Landroid/database/Cursor;I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v16

    .line 219
    const/4 v5, 0x3

    .line 220
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v15

    .line 224
    if-nez v16, :cond_4

    .line 225
    .line 226
    invoke-static {v6}, Lc4/l0;->k(Lc4/s0;)V

    .line 227
    .line 228
    .line 229
    iget-object v4, v6, Lc4/T;->L:Lc4/Q;

    .line 230
    .line 231
    const-string v6, "(2)Read invalid user property value, ignoring it"

    .line 232
    .line 233
    invoke-static/range {p1 .. p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 234
    .line 235
    .line 236
    move-result-object v7

    .line 237
    invoke-virtual {v4, v7, v15, v0, v6}, Lc4/Q;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    const/16 v17, 0x3

    .line 241
    .line 242
    const/16 v18, 0x2

    .line 243
    .line 244
    goto :goto_1

    .line 245
    :catch_1
    move-exception v0

    .line 246
    goto :goto_2

    .line 247
    :cond_4
    new-instance v6, Lc4/G1;

    .line 248
    .line 249
    move-object v4, v6

    .line 250
    const/16 v17, 0x3

    .line 251
    .line 252
    move-object/from16 v5, p1

    .line 253
    .line 254
    move-object v11, v6

    .line 255
    move-object v6, v15

    .line 256
    const/16 v18, 0x2

    .line 257
    .line 258
    move-object/from16 v10, v16

    .line 259
    .line 260
    invoke-direct/range {v4 .. v10}, Lc4/G1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 267
    .line 268
    .line 269
    move-result v4
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 270
    if-nez v4, :cond_2

    .line 271
    .line 272
    goto :goto_8

    .line 273
    :goto_2
    move-object v12, v3

    .line 274
    goto :goto_7

    .line 275
    :goto_3
    move-object v12, v3

    .line 276
    goto :goto_9

    .line 277
    :catch_2
    move-exception v0

    .line 278
    :goto_4
    move-object/from16 v15, p2

    .line 279
    .line 280
    goto :goto_6

    .line 281
    :catch_3
    move-exception v0

    .line 282
    move-object/from16 v14, p1

    .line 283
    .line 284
    goto :goto_4

    .line 285
    :goto_5
    const/4 v12, 0x0

    .line 286
    goto :goto_9

    .line 287
    :goto_6
    const/4 v12, 0x0

    .line 288
    :goto_7
    :try_start_5
    iget-object v2, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 289
    .line 290
    check-cast v2, Lc4/l0;

    .line 291
    .line 292
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 293
    .line 294
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 295
    .line 296
    .line 297
    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    .line 298
    .line 299
    const-string v3, "(2)Error querying user properties"

    .line 300
    .line 301
    invoke-static/range {p1 .. p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    invoke-virtual {v2, v4, v15, v0, v3}, Lc4/Q;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 309
    .line 310
    .line 311
    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 312
    move-object v3, v12

    .line 313
    :goto_8
    if-eqz v3, :cond_5

    .line 314
    .line 315
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 316
    .line 317
    .line 318
    :cond_5
    return-object v2

    .line 319
    :catchall_2
    move-exception v0

    .line 320
    :goto_9
    if-eqz v12, :cond_6

    .line 321
    .line 322
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 323
    .line 324
    .line 325
    :cond_6
    throw v0
.end method

.method public final x(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lc1/d;->m()V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Lc4/u1;->n()V

    .line 9
    .line 10
    .line 11
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v13, v0

    .line 14
    check-cast v13, Lc4/l0;

    .line 15
    .line 16
    iget-object v0, v13, Lc4/l0;->M:Lc4/h;

    .line 17
    .line 18
    sget-object v2, Lc4/E;->f1:Lc4/D;

    .line 19
    .line 20
    const/4 v14, 0x0

    .line 21
    invoke-virtual {v0, v14, v2}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    new-instance v0, Lc4/m;

    .line 30
    .line 31
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    invoke-direct {v0, v1, v12, v2, v3}, Lc4/m;-><init>(Lc4/o;Ljava/lang/String;J)V

    .line 36
    .line 37
    .line 38
    :goto_0
    move-object v15, v0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    new-instance v0, Lc4/m;

    .line 41
    .line 42
    invoke-direct {v0, v1, v12}, Lc4/m;-><init>(Lc4/o;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :goto_1
    invoke-virtual {v15}, Lc4/m;->a()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_10

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v16

    .line 60
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_f

    .line 65
    .line 66
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    move-object v11, v0

    .line 71
    check-cast v11, Lc4/l;

    .line 72
    .line 73
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    const/4 v9, 0x0

    .line 78
    const/4 v10, 0x1

    .line 79
    if-nez v0, :cond_5

    .line 80
    .line 81
    iget-wide v2, v11, Lc4/l;->b:J

    .line 82
    .line 83
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 84
    .line 85
    .line 86
    move-result-object v17

    .line 87
    const-string v18, "raw_events_metadata"

    .line 88
    .line 89
    new-array v0, v10, [Ljava/lang/String;

    .line 90
    .line 91
    const-string v4, "metadata"

    .line 92
    .line 93
    aput-object v4, v0, v9

    .line 94
    .line 95
    const-string v20, "app_id = ? and metadata_fingerprint = ?"

    .line 96
    .line 97
    const/4 v4, 0x2

    .line 98
    new-array v4, v4, [Ljava/lang/String;

    .line 99
    .line 100
    aput-object v12, v4, v9

    .line 101
    .line 102
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    aput-object v2, v4, v10

    .line 107
    .line 108
    const-string v24, "rowid"

    .line 109
    .line 110
    const-string v25, "2"

    .line 111
    .line 112
    const/16 v22, 0x0

    .line 113
    .line 114
    const/16 v23, 0x0

    .line 115
    .line 116
    move-object/from16 v19, v0

    .line 117
    .line 118
    move-object/from16 v21, v4

    .line 119
    .line 120
    invoke-virtual/range {v17 .. v25}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 121
    .line 122
    .line 123
    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 124
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-nez v0, :cond_1

    .line 129
    .line 130
    iget-object v0, v13, Lc4/l0;->O:Lc4/T;

    .line 131
    .line 132
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 133
    .line 134
    .line 135
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 136
    .line 137
    const-string v3, "Raw event metadata record is missing. appId"

    .line 138
    .line 139
    invoke-static/range {p1 .. p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v0, v4, v3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    .line 145
    .line 146
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 147
    .line 148
    .line 149
    move-object v3, v14

    .line 150
    goto/16 :goto_a

    .line 151
    .line 152
    :catchall_0
    move-exception v0

    .line 153
    goto :goto_7

    .line 154
    :catch_0
    move-exception v0

    .line 155
    goto :goto_8

    .line 156
    :cond_1
    :try_start_2
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getBlob(I)[B

    .line 157
    .line 158
    .line 159
    move-result-object v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/l1;->n2()Lcom/google/android/gms/internal/measurement/k1;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-static {v3, v0}, Lc4/E1;->O(Lcom/google/android/gms/internal/measurement/r2;[B)Lcom/google/android/gms/internal/measurement/r2;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    check-cast v0, Lcom/google/android/gms/internal/measurement/k1;

    .line 169
    .line 170
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/r2;->e()Lcom/google/android/gms/internal/measurement/s2;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    move-object v3, v0

    .line 175
    check-cast v3, Lcom/google/android/gms/internal/measurement/l1;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 176
    .line 177
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_2

    .line 182
    .line 183
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast v0, Lc4/l0;

    .line 186
    .line 187
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 188
    .line 189
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 190
    .line 191
    .line 192
    iget-object v0, v0, Lc4/T;->O:Lc4/Q;

    .line 193
    .line 194
    const-string v4, "Get multiple raw event metadata records, expected one. appId"

    .line 195
    .line 196
    invoke-static/range {p1 .. p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    invoke-virtual {v0, v5, v4}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    goto :goto_5

    .line 204
    :catch_1
    move-exception v0

    .line 205
    goto :goto_9

    .line 206
    :cond_2
    :goto_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 207
    .line 208
    .line 209
    :goto_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 210
    .line 211
    .line 212
    goto :goto_a

    .line 213
    :catch_2
    move-exception v0

    .line 214
    :try_start_5
    iget-object v3, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast v3, Lc4/l0;

    .line 217
    .line 218
    iget-object v3, v3, Lc4/l0;->O:Lc4/T;

    .line 219
    .line 220
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 221
    .line 222
    .line 223
    iget-object v3, v3, Lc4/T;->L:Lc4/Q;

    .line 224
    .line 225
    const-string v4, "Data loss. Failed to merge raw event metadata. appId"

    .line 226
    .line 227
    invoke-static/range {p1 .. p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    invoke-virtual {v3, v5, v0, v4}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 232
    .line 233
    .line 234
    goto :goto_4

    .line 235
    :goto_7
    move-object v14, v2

    .line 236
    goto :goto_b

    .line 237
    :goto_8
    move-object v3, v14

    .line 238
    goto :goto_9

    .line 239
    :catchall_1
    move-exception v0

    .line 240
    goto :goto_b

    .line 241
    :catch_3
    move-exception v0

    .line 242
    move-object v2, v14

    .line 243
    move-object v3, v2

    .line 244
    :goto_9
    :try_start_6
    iget-object v4, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v4, Lc4/l0;

    .line 247
    .line 248
    iget-object v4, v4, Lc4/l0;->O:Lc4/T;

    .line 249
    .line 250
    invoke-static {v4}, Lc4/l0;->k(Lc4/s0;)V

    .line 251
    .line 252
    .line 253
    iget-object v4, v4, Lc4/T;->L:Lc4/Q;

    .line 254
    .line 255
    const-string v5, "Data loss. Error selecting raw event. appId"

    .line 256
    .line 257
    invoke-static/range {p1 .. p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 258
    .line 259
    .line 260
    move-result-object v6

    .line 261
    invoke-virtual {v4, v6, v0, v5}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 262
    .line 263
    .line 264
    if-eqz v2, :cond_3

    .line 265
    .line 266
    goto :goto_6

    .line 267
    :cond_3
    :goto_a
    if-eqz v3, :cond_5

    .line 268
    .line 269
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/l1;->N()Lcom/google/android/gms/internal/measurement/y2;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    if-eqz v2, :cond_5

    .line 282
    .line 283
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    check-cast v2, Lcom/google/android/gms/internal/measurement/y1;

    .line 288
    .line 289
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/y1;->v()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    move-object/from16 v7, p3

    .line 294
    .line 295
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    if-eqz v2, :cond_4

    .line 300
    .line 301
    goto/16 :goto_3

    .line 302
    .line 303
    :cond_5
    move-object/from16 v7, p3

    .line 304
    .line 305
    goto :goto_c

    .line 306
    :goto_b
    if-eqz v14, :cond_6

    .line 307
    .line 308
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 309
    .line 310
    .line 311
    :cond_6
    throw v0

    .line 312
    :goto_c
    iget-object v0, v1, Lc4/q1;->H:Lc4/A1;

    .line 313
    .line 314
    iget-object v2, v0, Lc4/A1;->M:Lc4/E1;

    .line 315
    .line 316
    invoke-static {v2}, Lc4/A1;->I(Lc4/u1;)V

    .line 317
    .line 318
    .line 319
    iget-object v3, v11, Lc4/l;->d:Lcom/google/android/gms/internal/measurement/b1;

    .line 320
    .line 321
    new-instance v8, Landroid/os/Bundle;

    .line 322
    .line 323
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/b1;->x()Ljava/util/List;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 335
    .line 336
    .line 337
    move-result v5

    .line 338
    if-eqz v5, :cond_c

    .line 339
    .line 340
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v5

    .line 344
    check-cast v5, Lcom/google/android/gms/internal/measurement/f1;

    .line 345
    .line 346
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f1;->I()Z

    .line 347
    .line 348
    .line 349
    move-result v6

    .line 350
    if-eqz v6, :cond_7

    .line 351
    .line 352
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f1;->v()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v6

    .line 356
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f1;->q()D

    .line 357
    .line 358
    .line 359
    move-result-wide v9

    .line 360
    invoke-virtual {v8, v6, v9, v10}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 361
    .line 362
    .line 363
    :goto_e
    const/4 v9, 0x0

    .line 364
    const/4 v10, 0x1

    .line 365
    goto :goto_d

    .line 366
    :cond_7
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f1;->J()Z

    .line 367
    .line 368
    .line 369
    move-result v6

    .line 370
    if-eqz v6, :cond_8

    .line 371
    .line 372
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f1;->v()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v6

    .line 376
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f1;->r()F

    .line 377
    .line 378
    .line 379
    move-result v5

    .line 380
    invoke-virtual {v8, v6, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 381
    .line 382
    .line 383
    goto :goto_e

    .line 384
    :cond_8
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f1;->K()Z

    .line 385
    .line 386
    .line 387
    move-result v6

    .line 388
    if-eqz v6, :cond_9

    .line 389
    .line 390
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f1;->v()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v6

    .line 394
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f1;->t()J

    .line 395
    .line 396
    .line 397
    move-result-wide v9

    .line 398
    invoke-virtual {v8, v6, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 399
    .line 400
    .line 401
    goto :goto_e

    .line 402
    :cond_9
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f1;->M()Z

    .line 403
    .line 404
    .line 405
    move-result v6

    .line 406
    if-eqz v6, :cond_a

    .line 407
    .line 408
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f1;->v()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v6

    .line 412
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f1;->w()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v5

    .line 416
    invoke-virtual {v8, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    goto :goto_e

    .line 420
    :cond_a
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f1;->x()Ljava/util/List;

    .line 421
    .line 422
    .line 423
    move-result-object v6

    .line 424
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 425
    .line 426
    .line 427
    move-result v6

    .line 428
    if-nez v6, :cond_b

    .line 429
    .line 430
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f1;->v()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v6

    .line 434
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/f1;->x()Ljava/util/List;

    .line 435
    .line 436
    .line 437
    move-result-object v5

    .line 438
    check-cast v5, Lcom/google/android/gms/internal/measurement/y2;

    .line 439
    .line 440
    invoke-static {v5}, Lc4/E1;->s(Lcom/google/android/gms/internal/measurement/y2;)[Landroid/os/Bundle;

    .line 441
    .line 442
    .line 443
    move-result-object v5

    .line 444
    invoke-virtual {v8, v6, v5}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 445
    .line 446
    .line 447
    goto :goto_e

    .line 448
    :cond_b
    iget-object v6, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 449
    .line 450
    check-cast v6, Lc4/l0;

    .line 451
    .line 452
    iget-object v6, v6, Lc4/l0;->O:Lc4/T;

    .line 453
    .line 454
    invoke-static {v6}, Lc4/l0;->k(Lc4/s0;)V

    .line 455
    .line 456
    .line 457
    const-string v9, "Unexpected parameter type for parameter"

    .line 458
    .line 459
    iget-object v6, v6, Lc4/T;->L:Lc4/Q;

    .line 460
    .line 461
    invoke-virtual {v6, v5, v9}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    goto :goto_e

    .line 465
    :cond_c
    const-string v2, "_o"

    .line 466
    .line 467
    invoke-virtual {v8, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v4

    .line 471
    invoke-virtual {v8, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    if-nez v4, :cond_d

    .line 475
    .line 476
    const-string v2, ""

    .line 477
    .line 478
    move-object v4, v2

    .line 479
    :cond_d
    iget-object v2, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 480
    .line 481
    move-object v9, v2

    .line 482
    check-cast v9, Lc4/l0;

    .line 483
    .line 484
    iget-object v2, v9, Lc4/l0;->R:Lc4/I1;

    .line 485
    .line 486
    invoke-static {v2}, Lc4/l0;->i(Lc4/s0;)V

    .line 487
    .line 488
    .line 489
    move-object/from16 v10, p4

    .line 490
    .line 491
    invoke-virtual {v2, v8, v10}, Lc4/I1;->D(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 492
    .line 493
    .line 494
    iget-object v2, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 495
    .line 496
    move-object v5, v2

    .line 497
    check-cast v5, Lc4/l0;

    .line 498
    .line 499
    new-instance v6, LE0/n;

    .line 500
    .line 501
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/b1;->w()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v18

    .line 505
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/b1;->t()J

    .line 506
    .line 507
    .line 508
    move-result-wide v19

    .line 509
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/b1;->s()J

    .line 510
    .line 511
    .line 512
    move-result-wide v21

    .line 513
    move-object v2, v6

    .line 514
    move-object v3, v5

    .line 515
    move-object/from16 v5, p1

    .line 516
    .line 517
    move-object v14, v6

    .line 518
    move-object/from16 v6, v18

    .line 519
    .line 520
    move-object/from16 v18, v8

    .line 521
    .line 522
    move-wide/from16 v7, v19

    .line 523
    .line 524
    move-object/from16 v26, v9

    .line 525
    .line 526
    const/4 v12, 0x1

    .line 527
    const/16 v17, 0x0

    .line 528
    .line 529
    move-wide/from16 v9, v21

    .line 530
    .line 531
    move-object v12, v11

    .line 532
    move-object/from16 v11, v18

    .line 533
    .line 534
    invoke-direct/range {v2 .. v11}, LE0/n;-><init>(Lc4/l0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 535
    .line 536
    .line 537
    iget-wide v2, v12, Lc4/l;->a:J

    .line 538
    .line 539
    invoke-virtual/range {p0 .. p0}, Lc1/d;->m()V

    .line 540
    .line 541
    .line 542
    invoke-virtual/range {p0 .. p0}, Lc4/u1;->n()V

    .line 543
    .line 544
    .line 545
    iget-object v4, v14, LE0/n;->d:Ljava/lang/Object;

    .line 546
    .line 547
    check-cast v4, Ljava/lang/String;

    .line 548
    .line 549
    invoke-static {v4}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    iget-object v0, v0, Lc4/A1;->M:Lc4/E1;

    .line 553
    .line 554
    invoke-static {v0}, Lc4/A1;->I(Lc4/u1;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v0, v14}, Lc4/E1;->N(LE0/n;)Lcom/google/android/gms/internal/measurement/b1;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c2;->c()[B

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    new-instance v5, Landroid/content/ContentValues;

    .line 566
    .line 567
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 568
    .line 569
    .line 570
    const-string v6, "app_id"

    .line 571
    .line 572
    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    iget-object v6, v14, LE0/n;->e:Ljava/lang/Object;

    .line 576
    .line 577
    check-cast v6, Ljava/lang/String;

    .line 578
    .line 579
    const-string v7, "name"

    .line 580
    .line 581
    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    iget-wide v6, v14, LE0/n;->b:J

    .line 585
    .line 586
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 587
    .line 588
    .line 589
    move-result-object v6

    .line 590
    const-string v7, "timestamp"

    .line 591
    .line 592
    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 593
    .line 594
    .line 595
    iget-wide v6, v12, Lc4/l;->b:J

    .line 596
    .line 597
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 598
    .line 599
    .line 600
    move-result-object v6

    .line 601
    const-string v7, "metadata_fingerprint"

    .line 602
    .line 603
    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 604
    .line 605
    .line 606
    const-string v6, "data"

    .line 607
    .line 608
    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 609
    .line 610
    .line 611
    iget-boolean v0, v12, Lc4/l;->c:Z

    .line 612
    .line 613
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    const-string v6, "realtime"

    .line 618
    .line 619
    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 620
    .line 621
    .line 622
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    const-string v6, "raw_events"

    .line 627
    .line 628
    const-string v7, "rowid = ?"

    .line 629
    .line 630
    const/4 v8, 0x1

    .line 631
    new-array v8, v8, [Ljava/lang/String;

    .line 632
    .line 633
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v2

    .line 637
    aput-object v2, v8, v17

    .line 638
    .line 639
    invoke-virtual {v0, v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 640
    .line 641
    .line 642
    move-result v0

    .line 643
    int-to-long v2, v0

    .line 644
    const-wide/16 v5, 0x1

    .line 645
    .line 646
    cmp-long v0, v2, v5

    .line 647
    .line 648
    if-eqz v0, :cond_e

    .line 649
    .line 650
    move-object/from16 v0, v26

    .line 651
    .line 652
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 653
    .line 654
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 655
    .line 656
    .line 657
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 658
    .line 659
    const-string v5, "Failed to update raw event. appId, updatedRows"

    .line 660
    .line 661
    invoke-static {v4}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 662
    .line 663
    .line 664
    move-result-object v6

    .line 665
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 666
    .line 667
    .line 668
    move-result-object v2

    .line 669
    invoke-virtual {v0, v6, v2, v5}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_4

    .line 670
    .line 671
    .line 672
    :cond_e
    :goto_f
    move-object/from16 v12, p1

    .line 673
    .line 674
    const/4 v14, 0x0

    .line 675
    goto/16 :goto_3

    .line 676
    .line 677
    :catch_4
    move-exception v0

    .line 678
    iget-object v2, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 679
    .line 680
    check-cast v2, Lc4/l0;

    .line 681
    .line 682
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 683
    .line 684
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 685
    .line 686
    .line 687
    invoke-static {v4}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 688
    .line 689
    .line 690
    move-result-object v3

    .line 691
    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    .line 692
    .line 693
    const-string v4, "Error updating raw event. appId"

    .line 694
    .line 695
    invoke-virtual {v2, v3, v0, v4}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    goto :goto_f

    .line 699
    :cond_f
    invoke-virtual {v15}, Lc4/m;->a()Ljava/util/List;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    move-object/from16 v12, p1

    .line 704
    .line 705
    const/4 v14, 0x0

    .line 706
    goto/16 :goto_2

    .line 707
    .line 708
    :cond_10
    return-void
.end method

.method public final y()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc4/u1;->n()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final z(Ljava/lang/String;)V
    .locals 12

    .line 1
    const-string v0, "events_snapshot"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lc4/o;->T(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "name"

    .line 7
    .line 8
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v4, "events"

    .line 18
    .line 19
    const/4 v11, 0x0

    .line 20
    new-array v5, v11, [Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    move-object v5, v1

    .line 27
    check-cast v5, [Ljava/lang/String;

    .line 28
    .line 29
    const-string v6, "app_id=?"

    .line 30
    .line 31
    filled-new-array {p1}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    const/4 v10, 0x0

    .line 36
    const/4 v8, 0x0

    .line 37
    const/4 v9, 0x0

    .line 38
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    :cond_0
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    const-string v3, "events"

    .line 55
    .line 56
    invoke-virtual {p0, v3, p1, v1}, Lc4/o;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc4/s;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    invoke-virtual {p0, v0, v1}, Lc4/o;->U(Ljava/lang/String;Lc4/s;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    goto :goto_3

    .line 68
    :catch_0
    move-exception v0

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 71
    .line 72
    .line 73
    move-result v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    if-nez v1, :cond_0

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :goto_1
    :try_start_1
    iget-object v1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v1, Lc4/l0;

    .line 80
    .line 81
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 82
    .line 83
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, v1, Lc4/T;->L:Lc4/Q;

    .line 87
    .line 88
    const-string v3, "Error creating snapshot. appId"

    .line 89
    .line 90
    invoke-static {p1}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {v1, p1, v0, v3}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .line 96
    .line 97
    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    .line 98
    .line 99
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 100
    .line 101
    .line 102
    :cond_3
    return-void

    .line 103
    :goto_3
    if-eqz v2, :cond_4

    .line 104
    .line 105
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 106
    .line 107
    .line 108
    :cond_4
    throw p1
.end method
