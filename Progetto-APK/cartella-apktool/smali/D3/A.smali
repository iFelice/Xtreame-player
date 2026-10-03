.class public final LD3/A;
.super Lcom/google/android/gms/internal/cast/o;
.source "SourceFile"


# instance fields
.field public final synthetic H:LD3/f;


# direct methods
.method public constructor <init>(LD3/f;)V
    .locals 1

    .line 1
    iput-object p1, p0, LD3/A;->H:LD3/f;

    .line 2
    .line 3
    const-string p1, "com.google.android.gms.cast.framework.ISessionProxy"

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/o;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final Y(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, LD3/A;->H:LD3/f;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    goto/16 :goto_6

    .line 11
    .line 12
    :pswitch_0
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    .line 14
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/u;->b(Landroid/os/Parcel;)V

    .line 21
    .line 22
    .line 23
    check-cast v3, LD3/c;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/google/android/gms/cast/CastDevice;->i(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_4

    .line 33
    .line 34
    iget-object p2, v3, LD3/c;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lcom/google/android/gms/cast/CastDevice;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-nez p2, :cond_4

    .line 41
    .line 42
    iget-object p2, p1, Lcom/google/android/gms/cast/CastDevice;->J:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    iget-object v4, v3, LD3/c;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 51
    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    iget-object v4, v4, Lcom/google/android/gms/cast/CastDevice;->J:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-nez p2, :cond_1

    .line 61
    .line 62
    :cond_0
    const/4 p2, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/4 p2, 0x0

    .line 65
    :goto_0
    iput-object p1, v3, LD3/c;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 66
    .line 67
    new-array v0, v0, [Ljava/lang/Object;

    .line 68
    .line 69
    aput-object p1, v0, v2

    .line 70
    .line 71
    if-eq v1, p2, :cond_2

    .line 72
    .line 73
    const-string p1, "unchanged"

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const-string p1, "changed"

    .line 77
    .line 78
    :goto_1
    aput-object p1, v0, v1

    .line 79
    .line 80
    const-string p1, "update to device (%s) with name %s"

    .line 81
    .line 82
    sget-object v4, LD3/c;->m:LH3/b;

    .line 83
    .line 84
    invoke-virtual {v4, p1, v0}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    if-eqz p2, :cond_4

    .line 88
    .line 89
    iget-object p1, v3, LD3/c;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 90
    .line 91
    if-eqz p1, :cond_4

    .line 92
    .line 93
    iget-object p2, v3, LD3/c;->h:LF3/l;

    .line 94
    .line 95
    if-eqz p2, :cond_3

    .line 96
    .line 97
    new-array v0, v1, [Ljava/lang/Object;

    .line 98
    .line 99
    aput-object p1, v0, v2

    .line 100
    .line 101
    sget-object v2, LF3/l;->v:LH3/b;

    .line 102
    .line 103
    iget-object v4, v2, LH3/b;->a:Ljava/lang/String;

    .line 104
    .line 105
    const-string v5, "update Cast device to %s"

    .line 106
    .line 107
    invoke-virtual {v2, v5, v0}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    iput-object p1, p2, LF3/l;->o:Lcom/google/android/gms/cast/CastDevice;

    .line 115
    .line 116
    invoke-virtual {p2}, LF3/l;->b()V

    .line 117
    .line 118
    .line 119
    :cond_3
    iget-object p1, v3, LD3/c;->d:Ljava/util/HashSet;

    .line 120
    .line 121
    new-instance p2, Ljava/util/HashSet;

    .line 122
    .line 123
    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    if-eqz p2, :cond_4

    .line 135
    .line 136
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    check-cast p2, LD3/I;

    .line 141
    .line 142
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_6

    .line 150
    .line 151
    :pswitch_1
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 152
    .line 153
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Landroid/os/Bundle;

    .line 158
    .line 159
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/u;->b(Landroid/os/Parcel;)V

    .line 160
    .line 161
    .line 162
    check-cast v3, LD3/c;

    .line 163
    .line 164
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    invoke-static {p1}, Lcom/google/android/gms/cast/CastDevice;->i(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    iput-object p1, v3, LD3/c;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 172
    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    .line 175
    .line 176
    goto/16 :goto_6

    .line 177
    .line 178
    :pswitch_2
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 179
    .line 180
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    check-cast p1, Landroid/os/Bundle;

    .line 185
    .line 186
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/u;->b(Landroid/os/Parcel;)V

    .line 187
    .line 188
    .line 189
    check-cast v3, LD3/c;

    .line 190
    .line 191
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    invoke-static {p1}, Lcom/google/android/gms/cast/CastDevice;->i(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    iput-object p1, v3, LD3/c;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 199
    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    .line 202
    .line 203
    goto/16 :goto_6

    .line 204
    .line 205
    :pswitch_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    .line 207
    .line 208
    const p1, 0xbdfcb8

    .line 209
    .line 210
    .line 211
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    .line 213
    .line 214
    goto/16 :goto_6

    .line 215
    .line 216
    :pswitch_4
    check-cast v3, LD3/c;

    .line 217
    .line 218
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    const-string p1, "Must be called from the main thread."

    .line 222
    .line 223
    invoke-static {p1}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    iget-object p1, v3, LD3/c;->j:LE3/j;

    .line 227
    .line 228
    if-nez p1, :cond_5

    .line 229
    .line 230
    const-wide/16 p1, 0x0

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_5
    invoke-virtual {p1}, LE3/j;->f()J

    .line 234
    .line 235
    .line 236
    move-result-wide p1

    .line 237
    iget-object v0, v3, LD3/c;->j:LE3/j;

    .line 238
    .line 239
    invoke-virtual {v0}, LE3/j;->a()J

    .line 240
    .line 241
    .line 242
    move-result-wide v2

    .line 243
    sub-long/2addr p1, v2

    .line 244
    :goto_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 248
    .line 249
    .line 250
    goto/16 :goto_6

    .line 251
    .line 252
    :pswitch_5
    sget p1, Lcom/google/android/gms/internal/cast/u;->a:I

    .line 253
    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    if-eqz p1, :cond_6

    .line 259
    .line 260
    const/4 p1, 0x1

    .line 261
    goto :goto_4

    .line 262
    :cond_6
    const/4 p1, 0x0

    .line 263
    :goto_4
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/u;->b(Landroid/os/Parcel;)V

    .line 264
    .line 265
    .line 266
    check-cast v3, LD3/c;

    .line 267
    .line 268
    iget-object p2, v3, LD3/c;->e:LD3/r;

    .line 269
    .line 270
    if-eqz p2, :cond_7

    .line 271
    .line 272
    :try_start_0
    check-cast p2, LD3/p;

    .line 273
    .line 274
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    invoke-virtual {v4, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    .line 283
    .line 284
    const/4 p1, 0x6

    .line 285
    invoke-virtual {p2, p1, v4}, Lcom/google/android/gms/internal/ads/y5;->r1(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .line 287
    .line 288
    goto :goto_5

    .line 289
    :catch_0
    move-exception p1

    .line 290
    const-class p2, LD3/r;

    .line 291
    .line 292
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p2

    .line 296
    new-array v0, v0, [Ljava/lang/Object;

    .line 297
    .line 298
    const-string v4, "disconnectFromDevice"

    .line 299
    .line 300
    aput-object v4, v0, v2

    .line 301
    .line 302
    aput-object p2, v0, v1

    .line 303
    .line 304
    const-string p2, "Unable to call %s on %s."

    .line 305
    .line 306
    sget-object v4, LD3/c;->m:LH3/b;

    .line 307
    .line 308
    invoke-virtual {v4, p1, p2, v0}, LH3/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    :goto_5
    invoke-virtual {v3, v2}, LD3/f;->a(I)V

    .line 312
    .line 313
    .line 314
    :cond_7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    .line 316
    .line 317
    goto :goto_6

    .line 318
    :pswitch_6
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 319
    .line 320
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    check-cast p1, Landroid/os/Bundle;

    .line 325
    .line 326
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/u;->b(Landroid/os/Parcel;)V

    .line 327
    .line 328
    .line 329
    check-cast v3, LD3/c;

    .line 330
    .line 331
    invoke-virtual {v3, p1}, LD3/c;->f(Landroid/os/Bundle;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    .line 336
    .line 337
    goto :goto_6

    .line 338
    :pswitch_7
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 339
    .line 340
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/u;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    check-cast p1, Landroid/os/Bundle;

    .line 345
    .line 346
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/u;->b(Landroid/os/Parcel;)V

    .line 347
    .line 348
    .line 349
    check-cast v3, LD3/c;

    .line 350
    .line 351
    invoke-virtual {v3, p1}, LD3/c;->f(Landroid/os/Bundle;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    .line 356
    .line 357
    goto :goto_6

    .line 358
    :pswitch_8
    new-instance p1, LR3/b;

    .line 359
    .line 360
    invoke-direct {p1, v3}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    .line 365
    .line 366
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/cast/u;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 367
    .line 368
    .line 369
    :goto_6
    return v1

    .line 370
    nop

    .line 371
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
