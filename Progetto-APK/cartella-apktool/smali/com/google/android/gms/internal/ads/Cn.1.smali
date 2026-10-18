.class public final Lcom/google/android/gms/internal/ads/Cn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;

.field public final b:Lcom/google/android/gms/internal/ads/oe;

.field public final c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/In;Lcom/google/android/gms/internal/ads/oe;Lcom/google/android/gms/internal/ads/Yv;Ljava/lang/String;Ljava/lang/String;Lk3/f;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cn;->c:Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/Jn;->a:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Cn;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Cn;->b:Lcom/google/android/gms/internal/ads/oe;

    .line 24
    .line 25
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 26
    .line 27
    invoke-virtual {p6, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const-string p3, "ad_format"

    .line 32
    .line 33
    invoke-virtual {v0, p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    sget-object p2, Lcom/google/android/gms/internal/ads/Q7;->M8:Lcom/google/android/gms/internal/ads/J7;

    .line 37
    .line 38
    sget-object p3, Ll3/q;->d:Ll3/q;

    .line 39
    .line 40
    iget-object p6, p3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 41
    .line 42
    invoke-virtual {p6, p2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    const/4 p6, 0x0

    .line 53
    const-string v1, "1"

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    if-eqz p2, :cond_3

    .line 57
    .line 58
    iget p2, p7, Lk3/f;->U:I

    .line 59
    .line 60
    add-int/lit8 p7, p2, -0x1

    .line 61
    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    if-eqz p7, :cond_1

    .line 65
    .line 66
    if-eq p7, v2, :cond_0

    .line 67
    .line 68
    const-string p2, "na"

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const-string p2, "2"

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    move-object p2, v1

    .line 75
    :goto_0
    const-string p7, "asv"

    .line 76
    .line 77
    invoke-virtual {v0, p7, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    throw p6

    .line 82
    :cond_3
    :goto_1
    sget-object p2, Lcom/google/android/gms/internal/ads/Q7;->U1:Lcom/google/android/gms/internal/ads/J7;

    .line 83
    .line 84
    iget-object p3, p3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 85
    .line 86
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    check-cast p2, Ljava/lang/Boolean;

    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    if-eqz p2, :cond_6

    .line 97
    .line 98
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-virtual {p2}, Ljava/lang/Runtime;->freeMemory()J

    .line 103
    .line 104
    .line 105
    move-result-wide v3

    .line 106
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p7

    .line 110
    const-string v3, "rt_f"

    .line 111
    .line 112
    invoke-virtual {p0, v3, p7}, Lcom/google/android/gms/internal/ads/Cn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2}, Ljava/lang/Runtime;->maxMemory()J

    .line 116
    .line 117
    .line 118
    move-result-wide v3

    .line 119
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p7

    .line 123
    const-string v3, "rt_m"

    .line 124
    .line 125
    invoke-virtual {p0, v3, p7}, Lcom/google/android/gms/internal/ads/Cn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2}, Ljava/lang/Runtime;->totalMemory()J

    .line 129
    .line 130
    .line 131
    move-result-wide v3

    .line 132
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    const-string p7, "rt_t"

    .line 137
    .line 138
    invoke-virtual {p0, p7, p2}, Lcom/google/android/gms/internal/ads/Cn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    sget-object p2, Lk3/l;->A:Lk3/l;

    .line 142
    .line 143
    iget-object p2, p2, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 144
    .line 145
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/le;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 146
    .line 147
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    const-string p7, "wv_c"

    .line 156
    .line 157
    invoke-virtual {p0, p7, p2}, Lcom/google/android/gms/internal/ads/Cn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    sget-object p2, Lcom/google/android/gms/internal/ads/Q7;->Z1:Lcom/google/android/gms/internal/ads/J7;

    .line 161
    .line 162
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    check-cast p2, Ljava/lang/Boolean;

    .line 167
    .line 168
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 169
    .line 170
    .line 171
    move-result p2

    .line 172
    if-eqz p2, :cond_6

    .line 173
    .line 174
    const-string p2, "activity"

    .line 175
    .line 176
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    check-cast p1, Landroid/app/ActivityManager;

    .line 181
    .line 182
    if-nez p1, :cond_4

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_4
    new-instance p6, Landroid/app/ActivityManager$MemoryInfo;

    .line 186
    .line 187
    invoke-direct {p6}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 188
    .line 189
    .line 190
    :try_start_0
    invoke-virtual {p1, p6}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :catch_0
    const-string p1, "Error retrieving the memory information."

    .line 195
    .line 196
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    :goto_2
    if-eqz p6, :cond_6

    .line 200
    .line 201
    iget-wide p1, p6, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 202
    .line 203
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    const-string p2, "mem_avl"

    .line 208
    .line 209
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/Cn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget-wide p1, p6, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 213
    .line 214
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    const-string p2, "mem_tt"

    .line 219
    .line 220
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/Cn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget-boolean p1, p6, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    .line 224
    .line 225
    if-eq v2, p1, :cond_5

    .line 226
    .line 227
    const-string v1, "0"

    .line 228
    .line 229
    :cond_5
    const-string p1, "low_m"

    .line 230
    .line 231
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/Cn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    :cond_6
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->w6:Lcom/google/android/gms/internal/ads/J7;

    .line 235
    .line 236
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    check-cast p1, Ljava/lang/Boolean;

    .line 241
    .line 242
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 243
    .line 244
    .line 245
    move-result p1

    .line 246
    if-nez p1, :cond_7

    .line 247
    .line 248
    return-void

    .line 249
    :cond_7
    invoke-static {p4}, LU2/m;->p(Lcom/google/android/gms/internal/ads/Yv;)I

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    add-int/lit8 p1, p1, -0x1

    .line 254
    .line 255
    const-string p2, "scar"

    .line 256
    .line 257
    const-string p3, "request_id"

    .line 258
    .line 259
    if-eqz p1, :cond_b

    .line 260
    .line 261
    const-string p6, "se"

    .line 262
    .line 263
    if-eq p1, v2, :cond_a

    .line 264
    .line 265
    const/4 p3, 0x2

    .line 266
    if-eq p1, p3, :cond_9

    .line 267
    .line 268
    const/4 p3, 0x3

    .line 269
    if-eq p1, p3, :cond_8

    .line 270
    .line 271
    const-string p1, "r_both"

    .line 272
    .line 273
    invoke-virtual {v0, p6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_8
    const-string p1, "r_adstring"

    .line 278
    .line 279
    invoke-virtual {v0, p6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    goto :goto_3

    .line 283
    :cond_9
    const-string p1, "r_adinfo"

    .line 284
    .line 285
    invoke-virtual {v0, p6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_a
    invoke-virtual {v0, p3, p5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    const-string p1, "query_g"

    .line 293
    .line 294
    invoke-virtual {v0, p6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    :goto_3
    const-string p1, "true"

    .line 298
    .line 299
    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    iget-object p1, p4, Lcom/google/android/gms/internal/ads/Yv;->d:Ll3/b1;

    .line 303
    .line 304
    iget-object p2, p1, Ll3/b1;->V:Ljava/lang/String;

    .line 305
    .line 306
    const-string p3, "ragent"

    .line 307
    .line 308
    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/internal/ads/Cn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-static {p1}, LU2/m;->k(Ll3/b1;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    invoke-static {p1}, LU2/m;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    const-string p2, "rtype"

    .line 320
    .line 321
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/Cn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    return-void

    .line 325
    :cond_b
    invoke-virtual {v0, p3, p5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    const-string p1, "false"

    .line 329
    .line 330
    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cn;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const-string v0, "cnt"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "network_coarse"

    .line 21
    .line 22
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/Cn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    const-string v0, "gnt"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, "network_fine"

    .line 42
    .line 43
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/Cn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_0
    return-void
.end method
