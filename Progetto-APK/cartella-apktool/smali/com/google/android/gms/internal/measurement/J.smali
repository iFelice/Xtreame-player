.class public abstract Lcom/google/android/gms/internal/measurement/J;
.super Lcom/google/android/gms/internal/measurement/x;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/K;


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/K;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/K;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    check-cast v1, Lcom/google/android/gms/internal/measurement/K;

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/measurement/I;

    .line 19
    .line 20
    const/4 v2, 0x4

    .line 21
    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    return-object v1
.end method


# virtual methods
.method public final Y(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11

    .line 1
    const/4 v1, 0x4

    .line 2
    const-string v2, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy"

    .line 3
    .line 4
    const/4 v8, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    const-string v4, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    .line 7
    .line 8
    const/4 v5, 0x0

    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    :pswitch_0
    return v3

    .line 13
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v3, "com.google.android.gms.measurement.api.internal.IDynamiteUploadBatchesCallback"

    .line 21
    .line 22
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/P;

    .line 27
    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    move-object v5, v4

    .line 31
    check-cast v5, Lcom/google/android/gms/internal/measurement/P;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v5, Lcom/google/android/gms/internal/measurement/N;

    .line 35
    .line 36
    invoke-direct {v5, v2, v3, v1}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/K;->retrieveAndUploadBatches(Lcom/google/android/gms/internal/measurement/P;)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_18

    .line 46
    .line 47
    :pswitch_2
    sget-object v1, Lcom/google/android/gms/internal/measurement/W;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 48
    .line 49
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/google/android/gms/internal/measurement/W;

    .line 54
    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-nez v2, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/M;

    .line 67
    .line 68
    if-eqz v4, :cond_3

    .line 69
    .line 70
    move-object v5, v3

    .line 71
    check-cast v5, Lcom/google/android/gms/internal/measurement/M;

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    new-instance v5, Lcom/google/android/gms/internal/measurement/L;

    .line 75
    .line 76
    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/measurement/L;-><init>(Landroid/os/IBinder;)V

    .line 77
    .line 78
    .line 79
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 80
    .line 81
    .line 82
    move-result-wide v2

    .line 83
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 84
    .line 85
    .line 86
    invoke-interface {p0, v1, v5, v2, v3}, Lcom/google/android/gms/internal/measurement/K;->onActivitySaveInstanceStateByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;Lcom/google/android/gms/internal/measurement/M;J)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_18

    .line 90
    .line 91
    :pswitch_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/W;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 92
    .line 93
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Lcom/google/android/gms/internal/measurement/W;

    .line 98
    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 100
    .line 101
    .line 102
    move-result-wide v2

    .line 103
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/K;->onActivityResumedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;J)V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_18

    .line 110
    .line 111
    :pswitch_4
    sget-object v1, Lcom/google/android/gms/internal/measurement/W;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 112
    .line 113
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Lcom/google/android/gms/internal/measurement/W;

    .line 118
    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 120
    .line 121
    .line 122
    move-result-wide v2

    .line 123
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/K;->onActivityPausedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;J)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_18

    .line 130
    .line 131
    :pswitch_5
    sget-object v1, Lcom/google/android/gms/internal/measurement/W;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 132
    .line 133
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Lcom/google/android/gms/internal/measurement/W;

    .line 138
    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 140
    .line 141
    .line 142
    move-result-wide v2

    .line 143
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 144
    .line 145
    .line 146
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/K;->onActivityDestroyedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;J)V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_18

    .line 150
    .line 151
    :pswitch_6
    sget-object v1, Lcom/google/android/gms/internal/measurement/W;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 152
    .line 153
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    check-cast v1, Lcom/google/android/gms/internal/measurement/W;

    .line 158
    .line 159
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 160
    .line 161
    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    check-cast v2, Landroid/os/Bundle;

    .line 166
    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 168
    .line 169
    .line 170
    move-result-wide v3

    .line 171
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 172
    .line 173
    .line 174
    invoke-interface {p0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/K;->onActivityCreatedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;Landroid/os/Bundle;J)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_18

    .line 178
    .line 179
    :pswitch_7
    sget-object v1, Lcom/google/android/gms/internal/measurement/W;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 180
    .line 181
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    check-cast v1, Lcom/google/android/gms/internal/measurement/W;

    .line 186
    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 188
    .line 189
    .line 190
    move-result-wide v2

    .line 191
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 192
    .line 193
    .line 194
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/K;->onActivityStoppedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;J)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_18

    .line 198
    .line 199
    :pswitch_8
    sget-object v1, Lcom/google/android/gms/internal/measurement/W;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 200
    .line 201
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    check-cast v1, Lcom/google/android/gms/internal/measurement/W;

    .line 206
    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 208
    .line 209
    .line 210
    move-result-wide v2

    .line 211
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 212
    .line 213
    .line 214
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/K;->onActivityStartedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;J)V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_18

    .line 218
    .line 219
    :pswitch_9
    sget-object v1, Lcom/google/android/gms/internal/measurement/W;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 220
    .line 221
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    check-cast v1, Lcom/google/android/gms/internal/measurement/W;

    .line 226
    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 236
    .line 237
    .line 238
    move-result-wide v4

    .line 239
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 240
    .line 241
    .line 242
    move-object v0, p0

    .line 243
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/K;->setCurrentScreenByScionActivityInfo(Lcom/google/android/gms/internal/measurement/W;Ljava/lang/String;Ljava/lang/String;J)V

    .line 244
    .line 245
    .line 246
    goto/16 :goto_18

    .line 247
    .line 248
    :pswitch_a
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 249
    .line 250
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    check-cast v1, Landroid/content/Intent;

    .line 255
    .line 256
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 257
    .line 258
    .line 259
    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/measurement/K;->setSgtmDebugInfo(Landroid/content/Intent;)V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_18

    .line 263
    .line 264
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    if-nez v1, :cond_4

    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_4
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/M;

    .line 276
    .line 277
    if-eqz v3, :cond_5

    .line 278
    .line 279
    move-object v5, v2

    .line 280
    check-cast v5, Lcom/google/android/gms/internal/measurement/M;

    .line 281
    .line 282
    goto :goto_2

    .line 283
    :cond_5
    new-instance v5, Lcom/google/android/gms/internal/measurement/L;

    .line 284
    .line 285
    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/L;-><init>(Landroid/os/IBinder;)V

    .line 286
    .line 287
    .line 288
    :goto_2
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 289
    .line 290
    .line 291
    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/K;->getSessionId(Lcom/google/android/gms/internal/measurement/M;)V

    .line 292
    .line 293
    .line 294
    goto/16 :goto_18

    .line 295
    .line 296
    :pswitch_c
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 297
    .line 298
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    check-cast v1, Landroid/os/Bundle;

    .line 303
    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 305
    .line 306
    .line 307
    move-result-wide v2

    .line 308
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 309
    .line 310
    .line 311
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/K;->setConsentThirdParty(Landroid/os/Bundle;J)V

    .line 312
    .line 313
    .line 314
    goto/16 :goto_18

    .line 315
    .line 316
    :pswitch_d
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 317
    .line 318
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    check-cast v1, Landroid/os/Bundle;

    .line 323
    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 325
    .line 326
    .line 327
    move-result-wide v2

    .line 328
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 329
    .line 330
    .line 331
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/K;->setConsent(Landroid/os/Bundle;J)V

    .line 332
    .line 333
    .line 334
    goto/16 :goto_18

    .line 335
    .line 336
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 337
    .line 338
    .line 339
    move-result-wide v1

    .line 340
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 341
    .line 342
    .line 343
    invoke-interface {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/K;->clearMeasurementEnabled(J)V

    .line 344
    .line 345
    .line 346
    goto/16 :goto_18

    .line 347
    .line 348
    :pswitch_f
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 349
    .line 350
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    check-cast v1, Landroid/os/Bundle;

    .line 355
    .line 356
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 357
    .line 358
    .line 359
    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/measurement/K;->setDefaultEventParameters(Landroid/os/Bundle;)V

    .line 360
    .line 361
    .line 362
    goto/16 :goto_18

    .line 363
    .line 364
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    if-nez v1, :cond_6

    .line 369
    .line 370
    goto :goto_3

    .line 371
    :cond_6
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/M;

    .line 376
    .line 377
    if-eqz v3, :cond_7

    .line 378
    .line 379
    move-object v5, v2

    .line 380
    check-cast v5, Lcom/google/android/gms/internal/measurement/M;

    .line 381
    .line 382
    goto :goto_3

    .line 383
    :cond_7
    new-instance v5, Lcom/google/android/gms/internal/measurement/L;

    .line 384
    .line 385
    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/L;-><init>(Landroid/os/IBinder;)V

    .line 386
    .line 387
    .line 388
    :goto_3
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 389
    .line 390
    .line 391
    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/K;->isDataCollectionEnabled(Lcom/google/android/gms/internal/measurement/M;)V

    .line 392
    .line 393
    .line 394
    goto/16 :goto_18

    .line 395
    .line 396
    :pswitch_11
    sget-object v1, Lcom/google/android/gms/internal/measurement/y;->a:Ljava/lang/ClassLoader;

    .line 397
    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    if-eqz v1, :cond_8

    .line 403
    .line 404
    const/4 v3, 0x1

    .line 405
    :cond_8
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 406
    .line 407
    .line 408
    invoke-interface {p0, v3}, Lcom/google/android/gms/internal/measurement/K;->setDataCollectionEnabled(Z)V

    .line 409
    .line 410
    .line 411
    goto/16 :goto_18

    .line 412
    .line 413
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    if-nez v1, :cond_9

    .line 418
    .line 419
    goto :goto_4

    .line 420
    :cond_9
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/M;

    .line 425
    .line 426
    if-eqz v3, :cond_a

    .line 427
    .line 428
    move-object v5, v2

    .line 429
    check-cast v5, Lcom/google/android/gms/internal/measurement/M;

    .line 430
    .line 431
    goto :goto_4

    .line 432
    :cond_a
    new-instance v5, Lcom/google/android/gms/internal/measurement/L;

    .line 433
    .line 434
    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/L;-><init>(Landroid/os/IBinder;)V

    .line 435
    .line 436
    .line 437
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 438
    .line 439
    .line 440
    move-result v1

    .line 441
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 442
    .line 443
    .line 444
    invoke-interface {p0, v5, v1}, Lcom/google/android/gms/internal/measurement/K;->getTestFlag(Lcom/google/android/gms/internal/measurement/M;I)V

    .line 445
    .line 446
    .line 447
    goto/16 :goto_18

    .line 448
    .line 449
    :pswitch_13
    sget-object v1, Lcom/google/android/gms/internal/measurement/y;->a:Ljava/lang/ClassLoader;

    .line 450
    .line 451
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 456
    .line 457
    .line 458
    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/measurement/K;->initForTests(Ljava/util/Map;)V

    .line 459
    .line 460
    .line 461
    goto/16 :goto_18

    .line 462
    .line 463
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    if-nez v1, :cond_b

    .line 468
    .line 469
    goto :goto_5

    .line 470
    :cond_b
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/S;

    .line 475
    .line 476
    if-eqz v3, :cond_c

    .line 477
    .line 478
    move-object v5, v2

    .line 479
    check-cast v5, Lcom/google/android/gms/internal/measurement/S;

    .line 480
    .line 481
    goto :goto_5

    .line 482
    :cond_c
    new-instance v5, Lcom/google/android/gms/internal/measurement/Q;

    .line 483
    .line 484
    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/Q;-><init>(Landroid/os/IBinder;)V

    .line 485
    .line 486
    .line 487
    :goto_5
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 488
    .line 489
    .line 490
    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/K;->unregisterOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/S;)V

    .line 491
    .line 492
    .line 493
    goto/16 :goto_18

    .line 494
    .line 495
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    if-nez v1, :cond_d

    .line 500
    .line 501
    goto :goto_6

    .line 502
    :cond_d
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 503
    .line 504
    .line 505
    move-result-object v2

    .line 506
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/S;

    .line 507
    .line 508
    if-eqz v3, :cond_e

    .line 509
    .line 510
    move-object v5, v2

    .line 511
    check-cast v5, Lcom/google/android/gms/internal/measurement/S;

    .line 512
    .line 513
    goto :goto_6

    .line 514
    :cond_e
    new-instance v5, Lcom/google/android/gms/internal/measurement/Q;

    .line 515
    .line 516
    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/Q;-><init>(Landroid/os/IBinder;)V

    .line 517
    .line 518
    .line 519
    :goto_6
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 520
    .line 521
    .line 522
    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/K;->registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/S;)V

    .line 523
    .line 524
    .line 525
    goto/16 :goto_18

    .line 526
    .line 527
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    if-nez v1, :cond_f

    .line 532
    .line 533
    goto :goto_7

    .line 534
    :cond_f
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 535
    .line 536
    .line 537
    move-result-object v2

    .line 538
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/S;

    .line 539
    .line 540
    if-eqz v3, :cond_10

    .line 541
    .line 542
    move-object v5, v2

    .line 543
    check-cast v5, Lcom/google/android/gms/internal/measurement/S;

    .line 544
    .line 545
    goto :goto_7

    .line 546
    :cond_10
    new-instance v5, Lcom/google/android/gms/internal/measurement/Q;

    .line 547
    .line 548
    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/Q;-><init>(Landroid/os/IBinder;)V

    .line 549
    .line 550
    .line 551
    :goto_7
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 552
    .line 553
    .line 554
    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/K;->setEventInterceptor(Lcom/google/android/gms/internal/measurement/S;)V

    .line 555
    .line 556
    .line 557
    goto/16 :goto_18

    .line 558
    .line 559
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 560
    .line 561
    .line 562
    move-result v1

    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v2

    .line 567
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 568
    .line 569
    .line 570
    move-result-object v3

    .line 571
    invoke-static {v3}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 572
    .line 573
    .line 574
    move-result-object v3

    .line 575
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 576
    .line 577
    .line 578
    move-result-object v4

    .line 579
    invoke-static {v4}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 580
    .line 581
    .line 582
    move-result-object v4

    .line 583
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 584
    .line 585
    .line 586
    move-result-object v5

    .line 587
    invoke-static {v5}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 588
    .line 589
    .line 590
    move-result-object v5

    .line 591
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 592
    .line 593
    .line 594
    move-object v0, p0

    .line 595
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/K;->logHealthData(ILjava/lang/String;LR3/a;LR3/a;LR3/a;)V

    .line 596
    .line 597
    .line 598
    goto/16 :goto_18

    .line 599
    .line 600
    :pswitch_18
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 601
    .line 602
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 603
    .line 604
    .line 605
    move-result-object v1

    .line 606
    check-cast v1, Landroid/os/Bundle;

    .line 607
    .line 608
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 609
    .line 610
    .line 611
    move-result-object v2

    .line 612
    if-nez v2, :cond_11

    .line 613
    .line 614
    goto :goto_8

    .line 615
    :cond_11
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 616
    .line 617
    .line 618
    move-result-object v3

    .line 619
    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/M;

    .line 620
    .line 621
    if-eqz v4, :cond_12

    .line 622
    .line 623
    move-object v5, v3

    .line 624
    check-cast v5, Lcom/google/android/gms/internal/measurement/M;

    .line 625
    .line 626
    goto :goto_8

    .line 627
    :cond_12
    new-instance v5, Lcom/google/android/gms/internal/measurement/L;

    .line 628
    .line 629
    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/measurement/L;-><init>(Landroid/os/IBinder;)V

    .line 630
    .line 631
    .line 632
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 633
    .line 634
    .line 635
    move-result-wide v2

    .line 636
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 637
    .line 638
    .line 639
    invoke-interface {p0, v1, v5, v2, v3}, Lcom/google/android/gms/internal/measurement/K;->performAction(Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/M;J)V

    .line 640
    .line 641
    .line 642
    goto/16 :goto_18

    .line 643
    .line 644
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 645
    .line 646
    .line 647
    move-result-object v1

    .line 648
    invoke-static {v1}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 649
    .line 650
    .line 651
    move-result-object v1

    .line 652
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 653
    .line 654
    .line 655
    move-result-object v2

    .line 656
    if-nez v2, :cond_13

    .line 657
    .line 658
    goto :goto_9

    .line 659
    :cond_13
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 660
    .line 661
    .line 662
    move-result-object v3

    .line 663
    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/M;

    .line 664
    .line 665
    if-eqz v4, :cond_14

    .line 666
    .line 667
    move-object v5, v3

    .line 668
    check-cast v5, Lcom/google/android/gms/internal/measurement/M;

    .line 669
    .line 670
    goto :goto_9

    .line 671
    :cond_14
    new-instance v5, Lcom/google/android/gms/internal/measurement/L;

    .line 672
    .line 673
    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/measurement/L;-><init>(Landroid/os/IBinder;)V

    .line 674
    .line 675
    .line 676
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 677
    .line 678
    .line 679
    move-result-wide v2

    .line 680
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 681
    .line 682
    .line 683
    invoke-interface {p0, v1, v5, v2, v3}, Lcom/google/android/gms/internal/measurement/K;->onActivitySaveInstanceState(LR3/a;Lcom/google/android/gms/internal/measurement/M;J)V

    .line 684
    .line 685
    .line 686
    goto/16 :goto_18

    .line 687
    .line 688
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 689
    .line 690
    .line 691
    move-result-object v1

    .line 692
    invoke-static {v1}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 693
    .line 694
    .line 695
    move-result-object v1

    .line 696
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 697
    .line 698
    .line 699
    move-result-wide v2

    .line 700
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 701
    .line 702
    .line 703
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/K;->onActivityResumed(LR3/a;J)V

    .line 704
    .line 705
    .line 706
    goto/16 :goto_18

    .line 707
    .line 708
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 709
    .line 710
    .line 711
    move-result-object v1

    .line 712
    invoke-static {v1}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 713
    .line 714
    .line 715
    move-result-object v1

    .line 716
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 717
    .line 718
    .line 719
    move-result-wide v2

    .line 720
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 721
    .line 722
    .line 723
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/K;->onActivityPaused(LR3/a;J)V

    .line 724
    .line 725
    .line 726
    goto/16 :goto_18

    .line 727
    .line 728
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 729
    .line 730
    .line 731
    move-result-object v1

    .line 732
    invoke-static {v1}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 733
    .line 734
    .line 735
    move-result-object v1

    .line 736
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 737
    .line 738
    .line 739
    move-result-wide v2

    .line 740
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 741
    .line 742
    .line 743
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/K;->onActivityDestroyed(LR3/a;J)V

    .line 744
    .line 745
    .line 746
    goto/16 :goto_18

    .line 747
    .line 748
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 749
    .line 750
    .line 751
    move-result-object v1

    .line 752
    invoke-static {v1}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 753
    .line 754
    .line 755
    move-result-object v1

    .line 756
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 757
    .line 758
    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 759
    .line 760
    .line 761
    move-result-object v2

    .line 762
    check-cast v2, Landroid/os/Bundle;

    .line 763
    .line 764
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 765
    .line 766
    .line 767
    move-result-wide v3

    .line 768
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 769
    .line 770
    .line 771
    invoke-interface {p0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/K;->onActivityCreated(LR3/a;Landroid/os/Bundle;J)V

    .line 772
    .line 773
    .line 774
    goto/16 :goto_18

    .line 775
    .line 776
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 777
    .line 778
    .line 779
    move-result-object v1

    .line 780
    invoke-static {v1}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 781
    .line 782
    .line 783
    move-result-object v1

    .line 784
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 785
    .line 786
    .line 787
    move-result-wide v2

    .line 788
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 789
    .line 790
    .line 791
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/K;->onActivityStopped(LR3/a;J)V

    .line 792
    .line 793
    .line 794
    goto/16 :goto_18

    .line 795
    .line 796
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 797
    .line 798
    .line 799
    move-result-object v1

    .line 800
    invoke-static {v1}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 801
    .line 802
    .line 803
    move-result-object v1

    .line 804
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 805
    .line 806
    .line 807
    move-result-wide v2

    .line 808
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 809
    .line 810
    .line 811
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/K;->onActivityStarted(LR3/a;J)V

    .line 812
    .line 813
    .line 814
    goto/16 :goto_18

    .line 815
    .line 816
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v1

    .line 820
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 821
    .line 822
    .line 823
    move-result-wide v2

    .line 824
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 825
    .line 826
    .line 827
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/K;->endAdUnitExposure(Ljava/lang/String;J)V

    .line 828
    .line 829
    .line 830
    goto/16 :goto_18

    .line 831
    .line 832
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    move-result-object v1

    .line 836
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 837
    .line 838
    .line 839
    move-result-wide v2

    .line 840
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 841
    .line 842
    .line 843
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/K;->beginAdUnitExposure(Ljava/lang/String;J)V

    .line 844
    .line 845
    .line 846
    goto/16 :goto_18

    .line 847
    .line 848
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 849
    .line 850
    .line 851
    move-result-object v1

    .line 852
    if-nez v1, :cond_15

    .line 853
    .line 854
    goto :goto_a

    .line 855
    :cond_15
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 856
    .line 857
    .line 858
    move-result-object v2

    .line 859
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/M;

    .line 860
    .line 861
    if-eqz v3, :cond_16

    .line 862
    .line 863
    move-object v5, v2

    .line 864
    check-cast v5, Lcom/google/android/gms/internal/measurement/M;

    .line 865
    .line 866
    goto :goto_a

    .line 867
    :cond_16
    new-instance v5, Lcom/google/android/gms/internal/measurement/L;

    .line 868
    .line 869
    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/L;-><init>(Landroid/os/IBinder;)V

    .line 870
    .line 871
    .line 872
    :goto_a
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 873
    .line 874
    .line 875
    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/K;->generateEventId(Lcom/google/android/gms/internal/measurement/M;)V

    .line 876
    .line 877
    .line 878
    goto/16 :goto_18

    .line 879
    .line 880
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 881
    .line 882
    .line 883
    move-result-object v1

    .line 884
    if-nez v1, :cond_17

    .line 885
    .line 886
    goto :goto_b

    .line 887
    :cond_17
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 888
    .line 889
    .line 890
    move-result-object v2

    .line 891
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/M;

    .line 892
    .line 893
    if-eqz v3, :cond_18

    .line 894
    .line 895
    move-object v5, v2

    .line 896
    check-cast v5, Lcom/google/android/gms/internal/measurement/M;

    .line 897
    .line 898
    goto :goto_b

    .line 899
    :cond_18
    new-instance v5, Lcom/google/android/gms/internal/measurement/L;

    .line 900
    .line 901
    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/L;-><init>(Landroid/os/IBinder;)V

    .line 902
    .line 903
    .line 904
    :goto_b
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 905
    .line 906
    .line 907
    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/K;->getGmpAppId(Lcom/google/android/gms/internal/measurement/M;)V

    .line 908
    .line 909
    .line 910
    goto/16 :goto_18

    .line 911
    .line 912
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 913
    .line 914
    .line 915
    move-result-object v1

    .line 916
    if-nez v1, :cond_19

    .line 917
    .line 918
    goto :goto_c

    .line 919
    :cond_19
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 920
    .line 921
    .line 922
    move-result-object v2

    .line 923
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/M;

    .line 924
    .line 925
    if-eqz v3, :cond_1a

    .line 926
    .line 927
    move-object v5, v2

    .line 928
    check-cast v5, Lcom/google/android/gms/internal/measurement/M;

    .line 929
    .line 930
    goto :goto_c

    .line 931
    :cond_1a
    new-instance v5, Lcom/google/android/gms/internal/measurement/L;

    .line 932
    .line 933
    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/L;-><init>(Landroid/os/IBinder;)V

    .line 934
    .line 935
    .line 936
    :goto_c
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 937
    .line 938
    .line 939
    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/K;->getAppInstanceId(Lcom/google/android/gms/internal/measurement/M;)V

    .line 940
    .line 941
    .line 942
    goto/16 :goto_18

    .line 943
    .line 944
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 945
    .line 946
    .line 947
    move-result-object v1

    .line 948
    if-nez v1, :cond_1b

    .line 949
    .line 950
    goto :goto_d

    .line 951
    :cond_1b
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 952
    .line 953
    .line 954
    move-result-object v2

    .line 955
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/M;

    .line 956
    .line 957
    if-eqz v3, :cond_1c

    .line 958
    .line 959
    move-object v5, v2

    .line 960
    check-cast v5, Lcom/google/android/gms/internal/measurement/M;

    .line 961
    .line 962
    goto :goto_d

    .line 963
    :cond_1c
    new-instance v5, Lcom/google/android/gms/internal/measurement/L;

    .line 964
    .line 965
    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/L;-><init>(Landroid/os/IBinder;)V

    .line 966
    .line 967
    .line 968
    :goto_d
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 969
    .line 970
    .line 971
    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/K;->getCachedAppInstanceId(Lcom/google/android/gms/internal/measurement/M;)V

    .line 972
    .line 973
    .line 974
    goto/16 :goto_18

    .line 975
    .line 976
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 977
    .line 978
    .line 979
    move-result-object v2

    .line 980
    if-nez v2, :cond_1d

    .line 981
    .line 982
    goto :goto_e

    .line 983
    :cond_1d
    const-string v3, "com.google.android.gms.measurement.api.internal.IStringProvider"

    .line 984
    .line 985
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 986
    .line 987
    .line 988
    move-result-object v4

    .line 989
    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/U;

    .line 990
    .line 991
    if-eqz v5, :cond_1e

    .line 992
    .line 993
    move-object v5, v4

    .line 994
    check-cast v5, Lcom/google/android/gms/internal/measurement/U;

    .line 995
    .line 996
    goto :goto_e

    .line 997
    :cond_1e
    new-instance v5, Lcom/google/android/gms/internal/measurement/T;

    .line 998
    .line 999
    invoke-direct {v5, v2, v3, v1}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 1000
    .line 1001
    .line 1002
    :goto_e
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 1003
    .line 1004
    .line 1005
    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/K;->setInstanceIdProvider(Lcom/google/android/gms/internal/measurement/U;)V

    .line 1006
    .line 1007
    .line 1008
    goto/16 :goto_18

    .line 1009
    .line 1010
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v1

    .line 1014
    if-nez v1, :cond_1f

    .line 1015
    .line 1016
    goto :goto_f

    .line 1017
    :cond_1f
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v2

    .line 1021
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/M;

    .line 1022
    .line 1023
    if-eqz v3, :cond_20

    .line 1024
    .line 1025
    move-object v5, v2

    .line 1026
    check-cast v5, Lcom/google/android/gms/internal/measurement/M;

    .line 1027
    .line 1028
    goto :goto_f

    .line 1029
    :cond_20
    new-instance v5, Lcom/google/android/gms/internal/measurement/L;

    .line 1030
    .line 1031
    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/L;-><init>(Landroid/os/IBinder;)V

    .line 1032
    .line 1033
    .line 1034
    :goto_f
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 1035
    .line 1036
    .line 1037
    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/K;->getCurrentScreenClass(Lcom/google/android/gms/internal/measurement/M;)V

    .line 1038
    .line 1039
    .line 1040
    goto/16 :goto_18

    .line 1041
    .line 1042
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v1

    .line 1046
    if-nez v1, :cond_21

    .line 1047
    .line 1048
    goto :goto_10

    .line 1049
    :cond_21
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v2

    .line 1053
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/M;

    .line 1054
    .line 1055
    if-eqz v3, :cond_22

    .line 1056
    .line 1057
    move-object v5, v2

    .line 1058
    check-cast v5, Lcom/google/android/gms/internal/measurement/M;

    .line 1059
    .line 1060
    goto :goto_10

    .line 1061
    :cond_22
    new-instance v5, Lcom/google/android/gms/internal/measurement/L;

    .line 1062
    .line 1063
    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/L;-><init>(Landroid/os/IBinder;)V

    .line 1064
    .line 1065
    .line 1066
    :goto_10
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 1067
    .line 1068
    .line 1069
    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/K;->getCurrentScreenName(Lcom/google/android/gms/internal/measurement/M;)V

    .line 1070
    .line 1071
    .line 1072
    goto/16 :goto_18

    .line 1073
    .line 1074
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v1

    .line 1078
    invoke-static {v1}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v1

    .line 1082
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v2

    .line 1086
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v3

    .line 1090
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1091
    .line 1092
    .line 1093
    move-result-wide v4

    .line 1094
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 1095
    .line 1096
    .line 1097
    move-object v0, p0

    .line 1098
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/K;->setCurrentScreen(LR3/a;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1099
    .line 1100
    .line 1101
    goto/16 :goto_18

    .line 1102
    .line 1103
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1104
    .line 1105
    .line 1106
    move-result-wide v1

    .line 1107
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 1108
    .line 1109
    .line 1110
    invoke-interface {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/K;->setSessionTimeoutDuration(J)V

    .line 1111
    .line 1112
    .line 1113
    goto/16 :goto_18

    .line 1114
    .line 1115
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1116
    .line 1117
    .line 1118
    move-result-wide v1

    .line 1119
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 1120
    .line 1121
    .line 1122
    invoke-interface {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/K;->setMinimumSessionDuration(J)V

    .line 1123
    .line 1124
    .line 1125
    goto/16 :goto_18

    .line 1126
    .line 1127
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1128
    .line 1129
    .line 1130
    move-result-wide v1

    .line 1131
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 1132
    .line 1133
    .line 1134
    invoke-interface {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/K;->resetAnalyticsData(J)V

    .line 1135
    .line 1136
    .line 1137
    goto/16 :goto_18

    .line 1138
    .line 1139
    :pswitch_2d
    sget-object v1, Lcom/google/android/gms/internal/measurement/y;->a:Ljava/lang/ClassLoader;

    .line 1140
    .line 1141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1142
    .line 1143
    .line 1144
    move-result v1

    .line 1145
    if-eqz v1, :cond_23

    .line 1146
    .line 1147
    const/4 v3, 0x1

    .line 1148
    :cond_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1149
    .line 1150
    .line 1151
    move-result-wide v1

    .line 1152
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 1153
    .line 1154
    .line 1155
    invoke-interface {p0, v3, v1, v2}, Lcom/google/android/gms/internal/measurement/K;->setMeasurementEnabled(ZJ)V

    .line 1156
    .line 1157
    .line 1158
    goto/16 :goto_18

    .line 1159
    .line 1160
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v1

    .line 1164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v2

    .line 1168
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v3

    .line 1172
    if-nez v3, :cond_24

    .line 1173
    .line 1174
    goto :goto_11

    .line 1175
    :cond_24
    invoke-interface {v3, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v4

    .line 1179
    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/M;

    .line 1180
    .line 1181
    if-eqz v5, :cond_25

    .line 1182
    .line 1183
    move-object v5, v4

    .line 1184
    check-cast v5, Lcom/google/android/gms/internal/measurement/M;

    .line 1185
    .line 1186
    goto :goto_11

    .line 1187
    :cond_25
    new-instance v5, Lcom/google/android/gms/internal/measurement/L;

    .line 1188
    .line 1189
    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/measurement/L;-><init>(Landroid/os/IBinder;)V

    .line 1190
    .line 1191
    .line 1192
    :goto_11
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 1193
    .line 1194
    .line 1195
    invoke-interface {p0, v1, v2, v5}, Lcom/google/android/gms/internal/measurement/K;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/M;)V

    .line 1196
    .line 1197
    .line 1198
    goto/16 :goto_18

    .line 1199
    .line 1200
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v1

    .line 1204
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v2

    .line 1208
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1209
    .line 1210
    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v3

    .line 1214
    check-cast v3, Landroid/os/Bundle;

    .line 1215
    .line 1216
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 1217
    .line 1218
    .line 1219
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/K;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1220
    .line 1221
    .line 1222
    goto/16 :goto_18

    .line 1223
    .line 1224
    :pswitch_30
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1225
    .line 1226
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v1

    .line 1230
    check-cast v1, Landroid/os/Bundle;

    .line 1231
    .line 1232
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1233
    .line 1234
    .line 1235
    move-result-wide v2

    .line 1236
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 1237
    .line 1238
    .line 1239
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/K;->setConditionalUserProperty(Landroid/os/Bundle;J)V

    .line 1240
    .line 1241
    .line 1242
    goto/16 :goto_18

    .line 1243
    .line 1244
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v1

    .line 1248
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1249
    .line 1250
    .line 1251
    move-result-wide v2

    .line 1252
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 1253
    .line 1254
    .line 1255
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/K;->setUserId(Ljava/lang/String;J)V

    .line 1256
    .line 1257
    .line 1258
    goto/16 :goto_18

    .line 1259
    .line 1260
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v1

    .line 1264
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v2

    .line 1268
    if-nez v2, :cond_26

    .line 1269
    .line 1270
    goto :goto_12

    .line 1271
    :cond_26
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v3

    .line 1275
    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/M;

    .line 1276
    .line 1277
    if-eqz v4, :cond_27

    .line 1278
    .line 1279
    move-object v5, v3

    .line 1280
    check-cast v5, Lcom/google/android/gms/internal/measurement/M;

    .line 1281
    .line 1282
    goto :goto_12

    .line 1283
    :cond_27
    new-instance v5, Lcom/google/android/gms/internal/measurement/L;

    .line 1284
    .line 1285
    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/measurement/L;-><init>(Landroid/os/IBinder;)V

    .line 1286
    .line 1287
    .line 1288
    :goto_12
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 1289
    .line 1290
    .line 1291
    invoke-interface {p0, v1, v5}, Lcom/google/android/gms/internal/measurement/K;->getMaxUserProperties(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/M;)V

    .line 1292
    .line 1293
    .line 1294
    goto/16 :goto_18

    .line 1295
    .line 1296
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v1

    .line 1300
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v2

    .line 1304
    sget-object v6, Lcom/google/android/gms/internal/measurement/y;->a:Ljava/lang/ClassLoader;

    .line 1305
    .line 1306
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1307
    .line 1308
    .line 1309
    move-result v6

    .line 1310
    if-eqz v6, :cond_28

    .line 1311
    .line 1312
    const/4 v3, 0x1

    .line 1313
    :cond_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v6

    .line 1317
    if-nez v6, :cond_29

    .line 1318
    .line 1319
    goto :goto_13

    .line 1320
    :cond_29
    invoke-interface {v6, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v4

    .line 1324
    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/M;

    .line 1325
    .line 1326
    if-eqz v5, :cond_2a

    .line 1327
    .line 1328
    move-object v5, v4

    .line 1329
    check-cast v5, Lcom/google/android/gms/internal/measurement/M;

    .line 1330
    .line 1331
    goto :goto_13

    .line 1332
    :cond_2a
    new-instance v5, Lcom/google/android/gms/internal/measurement/L;

    .line 1333
    .line 1334
    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/measurement/L;-><init>(Landroid/os/IBinder;)V

    .line 1335
    .line 1336
    .line 1337
    :goto_13
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 1338
    .line 1339
    .line 1340
    invoke-interface {p0, v1, v2, v3, v5}, Lcom/google/android/gms/internal/measurement/K;->getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/M;)V

    .line 1341
    .line 1342
    .line 1343
    goto/16 :goto_18

    .line 1344
    .line 1345
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v1

    .line 1349
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1350
    .line 1351
    .line 1352
    move-result-object v2

    .line 1353
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v4

    .line 1357
    invoke-static {v4}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v4

    .line 1361
    sget-object v5, Lcom/google/android/gms/internal/measurement/y;->a:Ljava/lang/ClassLoader;

    .line 1362
    .line 1363
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1364
    .line 1365
    .line 1366
    move-result v5

    .line 1367
    if-eqz v5, :cond_2b

    .line 1368
    .line 1369
    const/4 v5, 0x1

    .line 1370
    goto :goto_14

    .line 1371
    :cond_2b
    const/4 v5, 0x0

    .line 1372
    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1373
    .line 1374
    .line 1375
    move-result-wide v6

    .line 1376
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 1377
    .line 1378
    .line 1379
    move-object v0, p0

    .line 1380
    move-object v3, v4

    .line 1381
    move v4, v5

    .line 1382
    move-wide v5, v6

    .line 1383
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/K;->setUserProperty(Ljava/lang/String;Ljava/lang/String;LR3/a;ZJ)V

    .line 1384
    .line 1385
    .line 1386
    goto/16 :goto_18

    .line 1387
    .line 1388
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v1

    .line 1392
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v2

    .line 1396
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1397
    .line 1398
    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v3

    .line 1402
    check-cast v3, Landroid/os/Bundle;

    .line 1403
    .line 1404
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1405
    .line 1406
    .line 1407
    move-result-object v6

    .line 1408
    if-nez v6, :cond_2c

    .line 1409
    .line 1410
    move-object v4, v5

    .line 1411
    goto :goto_15

    .line 1412
    :cond_2c
    invoke-interface {v6, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v4

    .line 1416
    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/M;

    .line 1417
    .line 1418
    if-eqz v5, :cond_2d

    .line 1419
    .line 1420
    check-cast v4, Lcom/google/android/gms/internal/measurement/M;

    .line 1421
    .line 1422
    goto :goto_15

    .line 1423
    :cond_2d
    new-instance v4, Lcom/google/android/gms/internal/measurement/L;

    .line 1424
    .line 1425
    invoke-direct {v4, v6}, Lcom/google/android/gms/internal/measurement/L;-><init>(Landroid/os/IBinder;)V

    .line 1426
    .line 1427
    .line 1428
    :goto_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1429
    .line 1430
    .line 1431
    move-result-wide v5

    .line 1432
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 1433
    .line 1434
    .line 1435
    move-object v0, p0

    .line 1436
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/K;->logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/M;J)V

    .line 1437
    .line 1438
    .line 1439
    goto :goto_18

    .line 1440
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v1

    .line 1444
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v2

    .line 1448
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1449
    .line 1450
    invoke-static {p2, v4}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v4

    .line 1454
    check-cast v4, Landroid/os/Bundle;

    .line 1455
    .line 1456
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1457
    .line 1458
    .line 1459
    move-result v5

    .line 1460
    if-eqz v5, :cond_2e

    .line 1461
    .line 1462
    const/4 v5, 0x1

    .line 1463
    goto :goto_16

    .line 1464
    :cond_2e
    const/4 v5, 0x0

    .line 1465
    :goto_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1466
    .line 1467
    .line 1468
    move-result v6

    .line 1469
    if-eqz v6, :cond_2f

    .line 1470
    .line 1471
    const/4 v6, 0x1

    .line 1472
    goto :goto_17

    .line 1473
    :cond_2f
    const/4 v6, 0x0

    .line 1474
    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1475
    .line 1476
    .line 1477
    move-result-wide v9

    .line 1478
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 1479
    .line 1480
    .line 1481
    move-object v0, p0

    .line 1482
    move-object v3, v4

    .line 1483
    move v4, v5

    .line 1484
    move v5, v6

    .line 1485
    move-wide v6, v9

    .line 1486
    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/K;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    .line 1487
    .line 1488
    .line 1489
    goto :goto_18

    .line 1490
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v1

    .line 1494
    invoke-static {v1}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v1

    .line 1498
    sget-object v2, Lcom/google/android/gms/internal/measurement/V;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1499
    .line 1500
    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/y;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1501
    .line 1502
    .line 1503
    move-result-object v2

    .line 1504
    check-cast v2, Lcom/google/android/gms/internal/measurement/V;

    .line 1505
    .line 1506
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1507
    .line 1508
    .line 1509
    move-result-wide v3

    .line 1510
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/y;->b(Landroid/os/Parcel;)V

    .line 1511
    .line 1512
    .line 1513
    invoke-interface {p0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/K;->initialize(LR3/a;Lcom/google/android/gms/internal/measurement/V;J)V

    .line 1514
    .line 1515
    .line 1516
    :goto_18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1517
    .line 1518
    .line 1519
    return v8

    .line 1520
    nop

    .line 1521
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
