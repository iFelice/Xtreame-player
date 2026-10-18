.class public final Lcom/google/android/gms/internal/ads/ng;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/IJ;


# instance fields
.field public final synthetic a:I

.field public final b:Lcom/google/android/gms/internal/ads/QJ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/MJ;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/ng;->a:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ng;->b:Lcom/google/android/gms/internal/ads/QJ;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/MJ;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/ng;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ng;->b:Lcom/google/android/gms/internal/ads/QJ;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/MJ;II)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/ng;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ng;->b:Lcom/google/android/gms/internal/ads/QJ;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/MJ;ILjava/lang/Object;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/ng;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ng;->b:Lcom/google/android/gms/internal/ads/QJ;

    return-void
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/ng;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ng;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/google/android/gms/internal/ads/Rj;

    .line 15
    .line 16
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lcom/google/android/gms/internal/ads/Lk;

    .line 22
    .line 23
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 24
    .line 25
    .line 26
    return-object v2

    .line 27
    :pswitch_0
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/google/android/gms/internal/ads/Fj;

    .line 32
    .line 33
    new-instance v1, Lcom/google/android/gms/internal/ads/Gi;

    .line 34
    .line 35
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/Gi;-><init>(Lcom/google/android/gms/internal/ads/Fj;)V

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :pswitch_1
    check-cast v3, Lcom/google/android/gms/internal/ads/KJ;

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/KJ;->b()Ljava/util/Map;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Lcom/google/android/gms/internal/ads/yi;

    .line 46
    .line 47
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/yi;-><init>(Ljava/util/Map;)V

    .line 48
    .line 49
    .line 50
    return-object v1

    .line 51
    :pswitch_2
    check-cast v3, Lcom/google/android/gms/internal/ads/Zh;

    .line 52
    .line 53
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/Zh;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 54
    .line 55
    check-cast v0, Lcom/google/android/gms/internal/ads/jg;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jg;->a()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/Zh;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 62
    .line 63
    check-cast v1, Lcom/google/android/gms/internal/ads/jj;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jj;->a()Lcom/google/android/gms/internal/ads/Yv;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    new-instance v2, Lcom/google/android/gms/internal/ads/Od;

    .line 70
    .line 71
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Yv;->f:Ljava/lang/String;

    .line 72
    .line 73
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/Od;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance v0, Lcom/google/android/gms/internal/ads/ui;

    .line 77
    .line 78
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/ui;-><init>(Lcom/google/android/gms/internal/ads/Od;)V

    .line 79
    .line 80
    .line 81
    return-object v0

    .line 82
    :pswitch_3
    check-cast v3, Lcom/google/android/gms/internal/ads/si;

    .line 83
    .line 84
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/si;->a:Lcom/google/android/gms/internal/ads/qi;

    .line 85
    .line 86
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qi;->a:Lcom/google/android/gms/internal/ads/Vj;

    .line 87
    .line 88
    new-instance v1, Lcom/google/android/gms/internal/ads/Lk;

    .line 89
    .line 90
    new-instance v3, Lcom/google/android/gms/internal/ads/Rh;

    .line 91
    .line 92
    invoke-direct {v3, v0, v2}, Lcom/google/android/gms/internal/ads/Rh;-><init>(Ljava/lang/Object;I)V

    .line 93
    .line 94
    .line 95
    sget-object v0, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 96
    .line 97
    invoke-direct {v1, v3, v0}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 98
    .line 99
    .line 100
    return-object v1

    .line 101
    :pswitch_4
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Lcom/google/android/gms/internal/ads/ui;

    .line 106
    .line 107
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 108
    .line 109
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    new-instance v2, Lcom/google/android/gms/internal/ads/Lk;

    .line 113
    .line 114
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 115
    .line 116
    .line 117
    return-object v2

    .line 118
    :pswitch_5
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Lcom/google/android/gms/internal/ads/oi;

    .line 123
    .line 124
    new-instance v1, Lcom/google/android/gms/internal/ads/Lk;

    .line 125
    .line 126
    sget-object v2, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 127
    .line 128
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 129
    .line 130
    .line 131
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    return-object v0

    .line 139
    :pswitch_6
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    check-cast v0, Lcom/google/android/gms/internal/ads/ni;

    .line 144
    .line 145
    new-instance v1, Lcom/google/android/gms/internal/ads/Lk;

    .line 146
    .line 147
    sget-object v2, Lcom/google/android/gms/internal/ads/se;->e:Lcom/google/android/gms/internal/ads/re;

    .line 148
    .line 149
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 150
    .line 151
    .line 152
    return-object v1

    .line 153
    :pswitch_7
    check-cast v3, Lcom/google/android/gms/internal/ads/hi;

    .line 154
    .line 155
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/hi;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 156
    .line 157
    check-cast v0, Lcom/google/android/gms/internal/ads/ai;

    .line 158
    .line 159
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ai;->a:Lcom/google/android/gms/internal/ads/xc;

    .line 160
    .line 161
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v0, Lcom/google/android/gms/internal/ads/Ef;

    .line 164
    .line 165
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/hi;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 166
    .line 167
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    check-cast v1, Ljava/util/concurrent/Executor;

    .line 172
    .line 173
    new-instance v2, Lcom/google/android/gms/internal/ads/gi;

    .line 174
    .line 175
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/gi;-><init>(Lcom/google/android/gms/internal/ads/Ef;Ljava/util/concurrent/Executor;)V

    .line 176
    .line 177
    .line 178
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->Qb:Lcom/google/android/gms/internal/ads/J7;

    .line 179
    .line 180
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 181
    .line 182
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 183
    .line 184
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    check-cast v0, Ljava/lang/Boolean;

    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_0

    .line 195
    .line 196
    new-instance v0, Lcom/google/android/gms/internal/ads/Lk;

    .line 197
    .line 198
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 199
    .line 200
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 201
    .line 202
    .line 203
    sget v1, Lcom/google/android/gms/internal/ads/zA;->I:I

    .line 204
    .line 205
    new-instance v1, Lcom/google/android/gms/internal/ads/dB;

    .line 206
    .line 207
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/dB;-><init>(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    goto :goto_0

    .line 211
    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/zA;->I:I

    .line 212
    .line 213
    sget-object v1, Lcom/google/android/gms/internal/ads/VA;->P:Lcom/google/android/gms/internal/ads/VA;

    .line 214
    .line 215
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    return-object v1

    .line 219
    :pswitch_8
    check-cast v3, Lcom/google/android/gms/internal/ads/ci;

    .line 220
    .line 221
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ci;->a()Lcom/google/android/gms/internal/ads/bi;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    new-instance v1, Lcom/google/android/gms/internal/ads/Lk;

    .line 226
    .line 227
    sget-object v2, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 228
    .line 229
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 230
    .line 231
    .line 232
    return-object v1

    .line 233
    :pswitch_9
    check-cast v3, Lcom/google/android/gms/internal/ads/Ci;

    .line 234
    .line 235
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/Ci;->a:La3/b;

    .line 236
    .line 237
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ci;->a(La3/b;)Lcom/google/android/gms/internal/ads/Ov;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 242
    .line 243
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ov;->z:Ljava/lang/String;

    .line 244
    .line 245
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .line 247
    .line 248
    goto :goto_1

    .line 249
    :catch_0
    const/4 v1, 0x0

    .line 250
    :goto_1
    return-object v1

    .line 251
    :pswitch_a
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    check-cast v0, Lcom/google/android/gms/internal/ads/Qa;

    .line 256
    .line 257
    new-instance v1, Lcom/google/android/gms/internal/ads/Wa;

    .line 258
    .line 259
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Qa;->a:Lcom/google/android/gms/internal/ads/Ja;

    .line 260
    .line 261
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/Wa;-><init>(Lcom/google/android/gms/internal/ads/Ja;)V

    .line 262
    .line 263
    .line 264
    return-object v1

    .line 265
    :pswitch_b
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    check-cast v0, Lcom/google/android/gms/internal/ads/qo;

    .line 270
    .line 271
    new-instance v2, Lcom/google/android/gms/internal/ads/gh;

    .line 272
    .line 273
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/gh;-><init>(Lcom/google/android/gms/internal/ads/qo;I)V

    .line 274
    .line 275
    .line 276
    return-object v2

    .line 277
    :pswitch_c
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    check-cast v0, Landroid/content/Context;

    .line 282
    .line 283
    new-instance v0, Lcom/google/android/gms/internal/ads/ih;

    .line 284
    .line 285
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ih;-><init>()V

    .line 286
    .line 287
    .line 288
    return-object v0

    .line 289
    :pswitch_d
    check-cast v3, Lcom/google/android/gms/internal/ads/Yg;

    .line 290
    .line 291
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/Yg;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 292
    .line 293
    check-cast v0, Lcom/google/android/gms/internal/ads/jg;

    .line 294
    .line 295
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jg;->a()Landroid/content/Context;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nd;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Nd;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Nd;->g:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast v2, Lcom/google/android/gms/internal/ads/MJ;

    .line 306
    .line 307
    new-instance v3, Lcom/google/android/gms/internal/ads/Ld;

    .line 308
    .line 309
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    check-cast v2, Lcom/google/android/gms/internal/ads/Kd;

    .line 314
    .line 315
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Nd;->a:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast v0, LP3/a;

    .line 318
    .line 319
    invoke-direct {v3, v0, v2}, Lcom/google/android/gms/internal/ads/Ld;-><init>(LP3/a;Lcom/google/android/gms/internal/ads/Kd;)V

    .line 320
    .line 321
    .line 322
    new-instance v0, Lcom/google/android/gms/internal/ads/jh;

    .line 323
    .line 324
    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/internal/ads/jh;-><init>(Ljava/lang/Object;I)V

    .line 325
    .line 326
    .line 327
    return-object v0

    .line 328
    :pswitch_e
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    check-cast v0, Lcom/google/android/gms/internal/ads/Nv;

    .line 333
    .line 334
    new-instance v2, Lcom/google/android/gms/internal/ads/ih;

    .line 335
    .line 336
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/ih;-><init>(Ljava/lang/Object;I)V

    .line 337
    .line 338
    .line 339
    return-object v2

    .line 340
    :pswitch_f
    check-cast v3, Lcom/google/android/gms/internal/ads/jg;

    .line 341
    .line 342
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/jg;->a()Landroid/content/Context;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    new-instance v1, Lcom/google/android/gms/internal/ads/lh;

    .line 347
    .line 348
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/lh;-><init>(Landroid/content/Context;)V

    .line 349
    .line 350
    .line 351
    return-object v1

    .line 352
    :pswitch_10
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    check-cast v0, Lcom/google/android/gms/internal/ads/qo;

    .line 357
    .line 358
    new-instance v1, Lcom/google/android/gms/internal/ads/jh;

    .line 359
    .line 360
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/jh;-><init>(Ljava/lang/Object;I)V

    .line 361
    .line 362
    .line 363
    return-object v1

    .line 364
    :pswitch_11
    check-cast v3, Lcom/google/android/gms/internal/ads/oq;

    .line 365
    .line 366
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/oq;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 367
    .line 368
    check-cast v0, Lcom/google/android/gms/internal/ads/jg;

    .line 369
    .line 370
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jg;->a()Landroid/content/Context;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    new-instance v1, Lcom/google/android/gms/internal/ads/Mx;

    .line 375
    .line 376
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/Mx;-><init>(Landroid/content/Context;)V

    .line 377
    .line 378
    .line 379
    new-instance v0, Lcom/google/android/gms/internal/ads/ih;

    .line 380
    .line 381
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ih;-><init>(Ljava/lang/Object;I)V

    .line 382
    .line 383
    .line 384
    return-object v0

    .line 385
    :pswitch_12
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    check-cast v0, Lcom/google/android/gms/internal/ads/qo;

    .line 390
    .line 391
    new-instance v1, Lcom/google/android/gms/internal/ads/gh;

    .line 392
    .line 393
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/gh;-><init>(Lcom/google/android/gms/internal/ads/qo;I)V

    .line 394
    .line 395
    .line 396
    return-object v1

    .line 397
    :pswitch_13
    check-cast v3, Lcom/google/android/gms/internal/ads/ig;

    .line 398
    .line 399
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ig;->a()Lo3/L;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    new-instance v2, Lcom/google/android/gms/internal/ads/fh;

    .line 404
    .line 405
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/fh;-><init>(Lo3/L;I)V

    .line 406
    .line 407
    .line 408
    return-object v2

    .line 409
    :pswitch_14
    check-cast v3, Lcom/google/android/gms/internal/ads/ig;

    .line 410
    .line 411
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ig;->a()Lo3/L;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    new-instance v1, Lcom/google/android/gms/internal/ads/fh;

    .line 416
    .line 417
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/fh;-><init>(Lo3/L;I)V

    .line 418
    .line 419
    .line 420
    return-object v1

    .line 421
    :pswitch_15
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    check-cast v0, Ljava/lang/String;

    .line 426
    .line 427
    new-instance v1, Lp3/k;

    .line 428
    .line 429
    invoke-direct {v1, v0}, Lp3/k;-><init>(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    return-object v1

    .line 433
    :pswitch_16
    check-cast v3, Lcom/google/android/gms/internal/ads/jg;

    .line 434
    .line 435
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/jg;->a()Landroid/content/Context;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    new-instance v1, Lo3/v;

    .line 440
    .line 441
    invoke-direct {v1, v0}, Lo3/v;-><init>(Landroid/content/Context;)V

    .line 442
    .line 443
    .line 444
    return-object v1

    .line 445
    :pswitch_17
    check-cast v3, Lcom/google/android/gms/internal/ads/jg;

    .line 446
    .line 447
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/jg;->a()Landroid/content/Context;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    new-instance v1, Lcom/google/android/gms/internal/ads/hy;

    .line 452
    .line 453
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 454
    .line 455
    iget-object v2, v2, Lk3/l;->r:LB0/w0;

    .line 456
    .line 457
    invoke-virtual {v2}, LB0/w0;->j()Landroid/os/Looper;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/hy;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 462
    .line 463
    .line 464
    return-object v1

    .line 465
    :pswitch_18
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    check-cast v0, Lcom/google/android/gms/internal/ads/Rm;

    .line 470
    .line 471
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 472
    .line 473
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 474
    .line 475
    .line 476
    new-instance v2, Lcom/google/android/gms/internal/ads/hw;

    .line 477
    .line 478
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/hw;-><init>(Lcom/google/android/gms/internal/ads/Rm;Lcom/google/android/gms/internal/ads/re;)V

    .line 479
    .line 480
    .line 481
    return-object v2

    .line 482
    :pswitch_19
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    check-cast v0, Lcom/google/android/gms/internal/ads/qn;

    .line 487
    .line 488
    new-instance v1, Lcom/google/android/gms/internal/ads/Ar;

    .line 489
    .line 490
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/Ar;-><init>(Lcom/google/android/gms/internal/ads/qn;)V

    .line 491
    .line 492
    .line 493
    return-object v1

    .line 494
    :pswitch_1a
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    check-cast v0, Lcom/google/android/gms/internal/ads/qn;

    .line 499
    .line 500
    new-instance v1, Lcom/google/android/gms/internal/ads/Wq;

    .line 501
    .line 502
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/Wq;-><init>(Lcom/google/android/gms/internal/ads/qn;)V

    .line 503
    .line 504
    .line 505
    return-object v1

    .line 506
    :pswitch_1b
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    check-cast v0, Lcom/google/android/gms/internal/ads/fo;

    .line 511
    .line 512
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 513
    .line 514
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 515
    .line 516
    .line 517
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->v1:Lcom/google/android/gms/internal/ads/J7;

    .line 518
    .line 519
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 520
    .line 521
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 522
    .line 523
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v2

    .line 527
    check-cast v2, Ljava/lang/Boolean;

    .line 528
    .line 529
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 530
    .line 531
    .line 532
    move-result v2

    .line 533
    if-eqz v2, :cond_1

    .line 534
    .line 535
    new-instance v2, Lcom/google/android/gms/internal/ads/Lk;

    .line 536
    .line 537
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 538
    .line 539
    .line 540
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    goto :goto_2

    .line 545
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 550
    .line 551
    .line 552
    return-object v0

    .line 553
    :pswitch_1c
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    check-cast v0, Lk3/f;

    .line 558
    .line 559
    new-instance v1, Lcom/google/android/gms/internal/ads/H4;

    .line 560
    .line 561
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/H4;-><init>(Lcom/google/android/gms/internal/ads/E4;)V

    .line 562
    .line 563
    .line 564
    return-object v1

    .line 565
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
