.class public final Lcom/google/android/gms/internal/ads/As;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/tu;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/Yv;

.field public final b:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Yv;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "the targeting must not be null"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/As;->a:Lcom/google/android/gms/internal/ads/Yv;

    .line 10
    .line 11
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/As;->b:J

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroid/os/Bundle;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/As;->a:Lcom/google/android/gms/internal/ads/Yv;

    .line 8
    .line 9
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/Yv;->d:Ll3/b1;

    .line 10
    .line 11
    iget v4, v3, Ll3/b1;->c0:I

    .line 12
    .line 13
    const-string v5, "http_timeout_millis"

    .line 14
    .line 15
    invoke-virtual {v1, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    const-string v4, "slotname"

    .line 19
    .line 20
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/Yv;->f:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Yv;->o:Landroidx/leanback/widget/j;

    .line 26
    .line 27
    iget v2, v2, Landroidx/leanback/widget/j;->H:I

    .line 28
    .line 29
    if-eqz v2, :cond_15

    .line 30
    .line 31
    const/4 v4, -0x1

    .line 32
    add-int/2addr v2, v4

    .line 33
    const/4 v5, 0x2

    .line 34
    const/4 v6, 0x1

    .line 35
    if-eq v2, v6, :cond_1

    .line 36
    .line 37
    if-eq v2, v5, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const-string v2, "is_rewarded_interstitial"

    .line 41
    .line 42
    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string v2, "is_new_rewarded"

    .line 47
    .line 48
    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    :goto_0
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/As;->b:J

    .line 52
    .line 53
    const-string v2, "start_signals_timestamp"

    .line 54
    .line 55
    invoke-virtual {v1, v2, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 56
    .line 57
    .line 58
    iget-object v2, v3, Ll3/b1;->I:Landroid/os/Bundle;

    .line 59
    .line 60
    const-string v7, "is_sdk_preload"

    .line 61
    .line 62
    const/4 v8, 0x0

    .line 63
    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    invoke-static {v1, v7, v6, v9}, Lcom/bumptech/glide/c;->I(Landroid/os/Bundle;Ljava/lang/String;ZZ)V

    .line 68
    .line 69
    .line 70
    new-instance v7, Ljava/text/SimpleDateFormat;

    .line 71
    .line 72
    const-string v9, "yyyyMMdd"

    .line 73
    .line 74
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 75
    .line 76
    invoke-direct {v7, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 77
    .line 78
    .line 79
    new-instance v9, Ljava/util/Date;

    .line 80
    .line 81
    iget-wide v10, v3, Ll3/b1;->H:J

    .line 82
    .line 83
    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    const-wide/16 v12, -0x1

    .line 91
    .line 92
    cmp-long v9, v10, v12

    .line 93
    .line 94
    if-eqz v9, :cond_2

    .line 95
    .line 96
    const/4 v9, 0x1

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    const/4 v9, 0x0

    .line 99
    :goto_1
    const-string v10, "cust_age"

    .line 100
    .line 101
    invoke-static {v1, v10, v7, v9}, Lcom/bumptech/glide/c;->H(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 102
    .line 103
    .line 104
    if-eqz v2, :cond_3

    .line 105
    .line 106
    const-string v7, "extras"

    .line 107
    .line 108
    invoke-virtual {v1, v7, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 109
    .line 110
    .line 111
    :cond_3
    iget v2, v3, Ll3/b1;->J:I

    .line 112
    .line 113
    if-eq v2, v4, :cond_4

    .line 114
    .line 115
    const/4 v7, 0x1

    .line 116
    goto :goto_2

    .line 117
    :cond_4
    const/4 v7, 0x0

    .line 118
    :goto_2
    if-eqz v7, :cond_5

    .line 119
    .line 120
    const-string v7, "cust_gender"

    .line 121
    .line 122
    invoke-virtual {v1, v7, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 123
    .line 124
    .line 125
    :cond_5
    iget-object v2, v3, Ll3/b1;->K:Ljava/util/List;

    .line 126
    .line 127
    if-eqz v2, :cond_6

    .line 128
    .line 129
    new-instance v7, Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 132
    .line 133
    .line 134
    const-string v2, "kw"

    .line 135
    .line 136
    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 137
    .line 138
    .line 139
    :cond_6
    iget v2, v3, Ll3/b1;->M:I

    .line 140
    .line 141
    if-eq v2, v4, :cond_7

    .line 142
    .line 143
    const/4 v7, 0x1

    .line 144
    goto :goto_3

    .line 145
    :cond_7
    const/4 v7, 0x0

    .line 146
    :goto_3
    if-eqz v7, :cond_8

    .line 147
    .line 148
    const-string v7, "tag_for_child_directed_treatment"

    .line 149
    .line 150
    invoke-virtual {v1, v7, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 151
    .line 152
    .line 153
    :cond_8
    iget-boolean v2, v3, Ll3/b1;->L:Z

    .line 154
    .line 155
    if-eqz v2, :cond_9

    .line 156
    .line 157
    const-string v2, "test_request"

    .line 158
    .line 159
    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    .line 161
    .line 162
    :cond_9
    iget v2, v3, Ll3/b1;->e0:I

    .line 163
    .line 164
    const-string v7, "ppt_p13n"

    .line 165
    .line 166
    invoke-virtual {v1, v7, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 167
    .line 168
    .line 169
    iget v2, v3, Ll3/b1;->G:I

    .line 170
    .line 171
    if-lt v2, v5, :cond_a

    .line 172
    .line 173
    iget-boolean v7, v3, Ll3/b1;->N:Z

    .line 174
    .line 175
    if-eqz v7, :cond_a

    .line 176
    .line 177
    const/4 v7, 0x1

    .line 178
    goto :goto_4

    .line 179
    :cond_a
    const/4 v7, 0x0

    .line 180
    :goto_4
    if-eqz v7, :cond_b

    .line 181
    .line 182
    const-string v7, "d_imp_hdr"

    .line 183
    .line 184
    invoke-virtual {v1, v7, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 185
    .line 186
    .line 187
    :cond_b
    iget-object v7, v3, Ll3/b1;->O:Ljava/lang/String;

    .line 188
    .line 189
    if-lt v2, v5, :cond_c

    .line 190
    .line 191
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    if-nez v5, :cond_c

    .line 196
    .line 197
    const/4 v5, 0x1

    .line 198
    goto :goto_5

    .line 199
    :cond_c
    const/4 v5, 0x0

    .line 200
    :goto_5
    const-string v9, "ppid"

    .line 201
    .line 202
    invoke-static {v1, v9, v7, v5}, Lcom/bumptech/glide/c;->H(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 203
    .line 204
    .line 205
    iget-object v5, v3, Ll3/b1;->Q:Landroid/location/Location;

    .line 206
    .line 207
    if-eqz v5, :cond_d

    .line 208
    .line 209
    invoke-virtual {v5}, Landroid/location/Location;->getAccuracy()F

    .line 210
    .line 211
    .line 212
    move-result v7

    .line 213
    const/high16 v9, 0x447a0000    # 1000.0f

    .line 214
    .line 215
    mul-float v7, v7, v9

    .line 216
    .line 217
    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    .line 218
    .line 219
    .line 220
    move-result-wide v9

    .line 221
    const-wide/16 v11, 0x3e8

    .line 222
    .line 223
    mul-long v9, v9, v11

    .line 224
    .line 225
    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    .line 226
    .line 227
    .line 228
    move-result-wide v11

    .line 229
    const-wide v13, 0x416312d000000000L    # 1.0E7

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    mul-double v11, v11, v13

    .line 235
    .line 236
    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    .line 237
    .line 238
    .line 239
    move-result-wide v15

    .line 240
    mul-double v13, v13, v15

    .line 241
    .line 242
    new-instance v5, Landroid/os/Bundle;

    .line 243
    .line 244
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 245
    .line 246
    .line 247
    const-string v15, "radius"

    .line 248
    .line 249
    invoke-virtual {v5, v15, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 250
    .line 251
    .line 252
    const-string v7, "lat"

    .line 253
    .line 254
    double-to-long v11, v11

    .line 255
    invoke-virtual {v5, v7, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 256
    .line 257
    .line 258
    const-string v7, "long"

    .line 259
    .line 260
    double-to-long v11, v13

    .line 261
    invoke-virtual {v5, v7, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 262
    .line 263
    .line 264
    const-string v7, "time"

    .line 265
    .line 266
    invoke-virtual {v5, v7, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 267
    .line 268
    .line 269
    const-string v7, "uule"

    .line 270
    .line 271
    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 272
    .line 273
    .line 274
    :cond_d
    iget-object v5, v3, Ll3/b1;->R:Ljava/lang/String;

    .line 275
    .line 276
    const-string v7, "url"

    .line 277
    .line 278
    invoke-static {v7, v5, v1}, Lcom/bumptech/glide/c;->E(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 279
    .line 280
    .line 281
    iget-object v5, v3, Ll3/b1;->b0:Ljava/util/List;

    .line 282
    .line 283
    if-eqz v5, :cond_e

    .line 284
    .line 285
    new-instance v7, Ljava/util/ArrayList;

    .line 286
    .line 287
    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 288
    .line 289
    .line 290
    const-string v5, "neighboring_content_urls"

    .line 291
    .line 292
    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 293
    .line 294
    .line 295
    :cond_e
    iget-object v5, v3, Ll3/b1;->T:Landroid/os/Bundle;

    .line 296
    .line 297
    if-eqz v5, :cond_f

    .line 298
    .line 299
    const-string v7, "custom_targeting"

    .line 300
    .line 301
    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 302
    .line 303
    .line 304
    :cond_f
    iget-object v5, v3, Ll3/b1;->U:Ljava/util/List;

    .line 305
    .line 306
    if-eqz v5, :cond_10

    .line 307
    .line 308
    new-instance v7, Ljava/util/ArrayList;

    .line 309
    .line 310
    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 311
    .line 312
    .line 313
    const-string v5, "category_exclusions"

    .line 314
    .line 315
    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 316
    .line 317
    .line 318
    :cond_10
    iget-object v5, v3, Ll3/b1;->V:Ljava/lang/String;

    .line 319
    .line 320
    const-string v7, "request_agent"

    .line 321
    .line 322
    invoke-static {v7, v5, v1}, Lcom/bumptech/glide/c;->E(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 323
    .line 324
    .line 325
    iget-object v5, v3, Ll3/b1;->W:Ljava/lang/String;

    .line 326
    .line 327
    const-string v7, "request_pkg"

    .line 328
    .line 329
    invoke-static {v7, v5, v1}, Lcom/bumptech/glide/c;->E(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 330
    .line 331
    .line 332
    const/4 v5, 0x7

    .line 333
    if-lt v2, v5, :cond_11

    .line 334
    .line 335
    const/4 v5, 0x1

    .line 336
    goto :goto_6

    .line 337
    :cond_11
    const/4 v5, 0x0

    .line 338
    :goto_6
    const-string v7, "is_designed_for_families"

    .line 339
    .line 340
    iget-boolean v9, v3, Ll3/b1;->X:Z

    .line 341
    .line 342
    invoke-static {v1, v7, v9, v5}, Lcom/bumptech/glide/c;->I(Landroid/os/Bundle;Ljava/lang/String;ZZ)V

    .line 343
    .line 344
    .line 345
    const/16 v5, 0x8

    .line 346
    .line 347
    if-lt v2, v5, :cond_14

    .line 348
    .line 349
    iget v2, v3, Ll3/b1;->Z:I

    .line 350
    .line 351
    if-eq v2, v4, :cond_12

    .line 352
    .line 353
    goto :goto_7

    .line 354
    :cond_12
    const/4 v6, 0x0

    .line 355
    :goto_7
    if-eqz v6, :cond_13

    .line 356
    .line 357
    const-string v4, "tag_for_under_age_of_consent"

    .line 358
    .line 359
    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 360
    .line 361
    .line 362
    :cond_13
    iget-object v2, v3, Ll3/b1;->a0:Ljava/lang/String;

    .line 363
    .line 364
    const-string v3, "max_ad_content_rating"

    .line 365
    .line 366
    invoke-static {v3, v2, v1}, Lcom/bumptech/glide/c;->E(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 367
    .line 368
    .line 369
    :cond_14
    return-void

    .line 370
    :cond_15
    const/4 v1, 0x0

    .line 371
    throw v1
.end method
