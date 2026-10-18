.class public final Lcom/google/android/gms/internal/measurement/V1;
.super Lcom/google/android/gms/internal/measurement/h;
.source "SourceFile"


# instance fields
.field public final synthetic I:I

.field public final J:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LF/i;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/V1;->I:I

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/V1;->J:Ljava/lang/Object;

    const-string p1, "getValue"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/h;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(LZ3/o;)V
    .locals 6

    .line 3
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/V1;->I:I

    .line 4
    const-string v1, "internal.logger"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/h;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/V1;->J:Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/h;->H:Ljava/util/HashMap;

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/measurement/M4;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/gms/internal/measurement/M4;-><init>(Lcom/google/android/gms/internal/measurement/V1;ZZ)V

    const-string v4, "log"

    invoke-virtual {p1, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/measurement/K2;

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/measurement/K2;-><init>(I)V

    const-string v5, "silent"

    invoke-virtual {p1, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/h;

    new-instance v5, Lcom/google/android/gms/internal/measurement/M4;

    invoke-direct {v5, p0, v3, v3}, Lcom/google/android/gms/internal/measurement/M4;-><init>(Lcom/google/android/gms/internal/measurement/V1;ZZ)V

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/h;->i(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/measurement/K2;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/K2;-><init>(I)V

    const-string v0, "unmonitored"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/h;

    new-instance v0, Lcom/google/android/gms/internal/measurement/M4;

    invoke-direct {v0, p0, v2, v2}, Lcom/google/android/gms/internal/measurement/M4;-><init>(Lcom/google/android/gms/internal/measurement/V1;ZZ)V

    invoke-virtual {p1, v4, v0}, Lcom/google/android/gms/internal/measurement/h;->i(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    return-void
.end method

.method public constructor <init>(Lc4/d0;)V
    .locals 1

    .line 10
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/measurement/V1;->I:I

    .line 11
    const-string v0, "internal.appMetadata"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/h;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/V1;->J:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/bD;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/V1;->I:I

    .line 12
    const-string v0, "internal.eventLogger"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/h;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/V1;->J:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/atv_ads_framework/x0;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/V1;->I:I

    .line 13
    const-string v0, "internal.registerCallback"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/h;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/V1;->J:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lm2/i;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/n;
    .locals 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/n;->s:Lcom/google/android/gms/internal/measurement/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget v2, p0, Lcom/google/android/gms/internal/measurement/V1;->I:I

    .line 5
    .line 6
    const/4 v3, 0x3

    .line 7
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/h;->G:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v5, 0x2

    .line 10
    const/4 v6, 0x1

    .line 11
    const/4 v7, 0x0

    .line 12
    iget-object v8, p0, Lcom/google/android/gms/internal/measurement/V1;->J:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v2, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    invoke-static {v4, v3, p2}, Lcom/google/android/gms/internal/ads/Cw;->O1(Ljava/lang/String;ILjava/util/List;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/n;->zzi()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/m;

    .line 44
    .line 45
    if-eqz v2, :cond_6

    .line 46
    .line 47
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/k;

    .line 58
    .line 59
    if-eqz p2, :cond_5

    .line 60
    .line 61
    check-cast p1, Lcom/google/android/gms/internal/measurement/k;

    .line 62
    .line 63
    iget-object p2, p1, Lcom/google/android/gms/internal/measurement/k;->G:Ljava/util/HashMap;

    .line 64
    .line 65
    const-string v2, "type"

    .line 66
    .line 67
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-eqz p2, :cond_4

    .line 72
    .line 73
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/k;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->zzi()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/k;->G:Ljava/util/HashMap;

    .line 82
    .line 83
    const-string v3, "priority"

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_0

    .line 90
    .line 91
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/k;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->zzh()Ljava/lang/Double;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 100
    .line 101
    .line 102
    move-result-wide v2

    .line 103
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/Cw;->v0(D)I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    goto :goto_0

    .line 108
    :cond_0
    const/16 p1, 0x3e8

    .line 109
    .line 110
    :goto_0
    check-cast v8, Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 111
    .line 112
    check-cast v1, Lcom/google/android/gms/internal/measurement/m;

    .line 113
    .line 114
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    const-string v2, "create"

    .line 118
    .line 119
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_1

    .line 124
    .line 125
    iget-object p2, v8, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast p2, Ljava/util/TreeMap;

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_1
    const-string v2, "edit"

    .line 131
    .line 132
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_3

    .line 137
    .line 138
    iget-object p2, v8, Lcom/google/android/gms/internal/atv_ads_framework/x0;->H:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast p2, Ljava/util/TreeMap;

    .line 141
    .line 142
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {p2, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eqz v2, :cond_2

    .line 151
    .line 152
    invoke-virtual {p2}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    check-cast p1, Ljava/lang/Integer;

    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    add-int/2addr p1, v6

    .line 163
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p2, p1, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    return-object v0

    .line 171
    :cond_3
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 176
    .line 177
    const-string v0, "Unknown callback type: "

    .line 178
    .line 179
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw p2

    .line 187
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 188
    .line 189
    const-string p2, "Undefined rule type"

    .line 190
    .line 191
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw p1

    .line 195
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 196
    .line 197
    const-string p2, "Invalid callback params"

    .line 198
    .line 199
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw p1

    .line 203
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 204
    .line 205
    const-string p2, "Invalid callback type"

    .line 206
    .line 207
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw p1

    .line 211
    :pswitch_0
    :try_start_0
    check-cast v8, Ljava/util/concurrent/Callable;

    .line 212
    .line 213
    invoke-interface {v8}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->C0(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/n;

    .line 218
    .line 219
    .line 220
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :catch_0
    :pswitch_1
    return-object v0

    .line 222
    :pswitch_2
    const-string v0, "getValue"

    .line 223
    .line 224
    invoke-static {v0, v5, p2}, Lcom/google/android/gms/internal/ads/Cw;->O1(Ljava/lang/String;ILjava/util/List;)V

    .line 225
    .line 226
    .line 227
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 232
    .line 233
    invoke-virtual {p1, v0}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 242
    .line 243
    invoke-virtual {p1, p2}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzi()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    check-cast v8, LF/i;

    .line 252
    .line 253
    iget-object v0, v8, LF/i;->I:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast v0, Lc4/f0;

    .line 256
    .line 257
    iget-object v0, v0, Lc4/f0;->J:Lr/f;

    .line 258
    .line 259
    iget-object v2, v8, LF/i;->H:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast v2, Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {v0, v2}, Lr/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    check-cast v0, Ljava/util/Map;

    .line 268
    .line 269
    if-eqz v0, :cond_8

    .line 270
    .line 271
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    if-nez v2, :cond_7

    .line 276
    .line 277
    goto :goto_2

    .line 278
    :cond_7
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object p2

    .line 282
    move-object v1, p2

    .line 283
    check-cast v1, Ljava/lang/String;

    .line 284
    .line 285
    :cond_8
    :goto_2
    if-eqz v1, :cond_9

    .line 286
    .line 287
    new-instance p1, Lcom/google/android/gms/internal/measurement/q;

    .line 288
    .line 289
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    :cond_9
    return-object p1

    .line 293
    :pswitch_3
    invoke-static {v4, v3, p2}, Lcom/google/android/gms/internal/ads/Cw;->O1(Ljava/lang/String;ILjava/util/List;)V

    .line 294
    .line 295
    .line 296
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    check-cast v2, Lcom/google/android/gms/internal/measurement/n;

    .line 301
    .line 302
    invoke-virtual {p1, v2}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/n;->zzi()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    check-cast v3, Lcom/google/android/gms/internal/measurement/n;

    .line 315
    .line 316
    invoke-virtual {p1, v3}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/n;->zzh()Ljava/lang/Double;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 325
    .line 326
    .line 327
    move-result-wide v3

    .line 328
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/Cw;->r(D)D

    .line 329
    .line 330
    .line 331
    move-result-wide v3

    .line 332
    double-to-long v3, v3

    .line 333
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object p2

    .line 337
    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 338
    .line 339
    invoke-virtual {p1, p2}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/k;

    .line 344
    .line 345
    if-eqz p2, :cond_a

    .line 346
    .line 347
    check-cast p1, Lcom/google/android/gms/internal/measurement/k;

    .line 348
    .line 349
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->I1(Lcom/google/android/gms/internal/measurement/k;)Ljava/util/HashMap;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    goto :goto_3

    .line 354
    :cond_a
    new-instance p1, Ljava/util/HashMap;

    .line 355
    .line 356
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 357
    .line 358
    .line 359
    :goto_3
    check-cast v8, Lcom/google/android/gms/internal/ads/bD;

    .line 360
    .line 361
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    new-instance p2, Ljava/util/HashMap;

    .line 365
    .line 366
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 367
    .line 368
    .line 369
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 370
    .line 371
    .line 372
    move-result-object v5

    .line 373
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 374
    .line 375
    .line 376
    move-result-object v5

    .line 377
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 378
    .line 379
    .line 380
    move-result v6

    .line 381
    if-eqz v6, :cond_c

    .line 382
    .line 383
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v6

    .line 387
    check-cast v6, Ljava/lang/String;

    .line 388
    .line 389
    iget-object v7, v8, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 390
    .line 391
    check-cast v7, Lcom/google/android/gms/internal/measurement/b;

    .line 392
    .line 393
    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/b;->c:Ljava/util/HashMap;

    .line 394
    .line 395
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v9

    .line 399
    if-eqz v9, :cond_b

    .line 400
    .line 401
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v7

    .line 405
    goto :goto_5

    .line 406
    :cond_b
    move-object v7, v1

    .line 407
    :goto_5
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v9

    .line 411
    invoke-static {v7, v9, v6}, Lcom/google/android/gms/internal/measurement/b;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v7

    .line 415
    invoke-virtual {p2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    goto :goto_4

    .line 419
    :cond_c
    iget-object p1, v8, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 420
    .line 421
    check-cast p1, Ljava/util/List;

    .line 422
    .line 423
    new-instance v1, Lcom/google/android/gms/internal/measurement/b;

    .line 424
    .line 425
    invoke-direct {v1, v2, v3, v4, p2}, Lcom/google/android/gms/internal/measurement/b;-><init>(Ljava/lang/String;JLjava/util/HashMap;)V

    .line 426
    .line 427
    .line 428
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    return-object v0

    .line 432
    nop

    .line 433
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
