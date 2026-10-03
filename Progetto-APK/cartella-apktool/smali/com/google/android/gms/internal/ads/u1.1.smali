.class public final synthetic Lcom/google/android/gms/internal/ads/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/vz;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/u1;->a:I

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/u1;->a:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    const-string v0, "fakeForAdDebugLog"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/gms/internal/ads/u1;->a:I

    .line 6
    .line 7
    const-string v3, "failure_click_attok"

    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x4

    .line 11
    const/4 v6, 0x0

    .line 12
    packed-switch v2, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p1, Lcom/google/android/gms/internal/ads/Ve;

    .line 16
    .line 17
    sget-object v0, Lcom/google/android/gms/internal/ads/bO;->d:Lcom/google/android/gms/internal/ads/bO;

    .line 18
    .line 19
    iget p1, p1, Lcom/google/android/gms/internal/ads/Ve;->c:I

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/vN;

    .line 27
    .line 28
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/vN;->zzi()Lcom/google/android/gms/internal/ads/bO;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/u1;

    .line 36
    .line 37
    const/16 v1, 0x19

    .line 38
    .line 39
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/u1;-><init>(I)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bO;->b:Lcom/google/android/gms/internal/ads/PA;

    .line 43
    .line 44
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/Cw;->F0(Ljava/util/List;Lcom/google/android/gms/internal/ads/u1;)Ljava/util/AbstractList;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/uA;->t(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/uA;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/ads/L;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    return-object p1

    .line 67
    :pswitch_2
    new-instance v0, Lcom/google/android/gms/internal/ads/tL;

    .line 68
    .line 69
    check-cast p1, Lcom/google/android/gms/internal/ads/pl;

    .line 70
    .line 71
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/tL;-><init>(Lcom/google/android/gms/internal/ads/pl;)V

    .line 72
    .line 73
    .line 74
    return-object v0

    .line 75
    :pswitch_3
    check-cast p1, Lcom/google/android/gms/internal/ads/Uv;

    .line 76
    .line 77
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Uv;->b:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_0

    .line 84
    .line 85
    move-object v0, v1

    .line 86
    goto :goto_0

    .line 87
    :cond_0
    invoke-static {}, Lp3/g;->c()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    move-object v0, p1

    .line 95
    :goto_0
    return-object v0

    .line 96
    :pswitch_4
    check-cast p1, Lcom/google/android/gms/internal/ads/Uv;

    .line 97
    .line 98
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Uv;->a:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_2

    .line 105
    .line 106
    move-object v0, v1

    .line 107
    goto :goto_1

    .line 108
    :cond_2
    invoke-static {}, Lp3/g;->c()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_3

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    move-object v0, p1

    .line 116
    :goto_1
    return-object v0

    .line 117
    :pswitch_5
    check-cast p1, Lcom/google/android/gms/internal/ads/rv;

    .line 118
    .line 119
    return-object p1

    .line 120
    :pswitch_6
    check-cast p1, Ljava/lang/Exception;

    .line 121
    .line 122
    return-object v6

    .line 123
    :pswitch_7
    check-cast p1, Ljava/lang/String;

    .line 124
    .line 125
    if-nez p1, :cond_4

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_4
    new-instance v6, Lcom/google/android/gms/internal/ads/Cs;

    .line 129
    .line 130
    const/4 v0, 0x6

    .line 131
    invoke-direct {v6, p1, v0}, Lcom/google/android/gms/internal/ads/Cs;-><init>(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    :goto_2
    return-object v6

    .line 135
    :pswitch_8
    new-instance v0, Lcom/google/android/gms/internal/ads/Bt;

    .line 136
    .line 137
    check-cast p1, Landroid/os/Bundle;

    .line 138
    .line 139
    invoke-direct {v0, v5, p1}, Lcom/google/android/gms/internal/ads/Bt;-><init>(ILandroid/os/Bundle;)V

    .line 140
    .line 141
    .line 142
    return-object v0

    .line 143
    :pswitch_9
    check-cast p1, Ljava/lang/String;

    .line 144
    .line 145
    if-nez p1, :cond_5

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_5
    new-instance v6, Lcom/google/android/gms/internal/ads/Cs;

    .line 149
    .line 150
    const/4 v0, 0x5

    .line 151
    invoke-direct {v6, p1, v0}, Lcom/google/android/gms/internal/ads/Cs;-><init>(Ljava/lang/String;I)V

    .line 152
    .line 153
    .line 154
    :goto_3
    return-object v6

    .line 155
    :pswitch_a
    new-instance v0, Lcom/google/android/gms/internal/ads/Cs;

    .line 156
    .line 157
    check-cast p1, Ljava/lang/String;

    .line 158
    .line 159
    invoke-direct {v0, p1, v5}, Lcom/google/android/gms/internal/ads/Cs;-><init>(Ljava/lang/String;I)V

    .line 160
    .line 161
    .line 162
    return-object v0

    .line 163
    :pswitch_b
    check-cast p1, Ljava/lang/Exception;

    .line 164
    .line 165
    invoke-static {v1, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    .line 167
    .line 168
    new-instance p1, Lcom/google/android/gms/internal/ads/Cs;

    .line 169
    .line 170
    invoke-direct {p1, v6, v4}, Lcom/google/android/gms/internal/ads/Cs;-><init>(Ljava/lang/String;I)V

    .line 171
    .line 172
    .line 173
    return-object p1

    .line 174
    :pswitch_c
    check-cast p1, Lv3/r;

    .line 175
    .line 176
    new-instance v0, Lcom/google/android/gms/internal/ads/Cs;

    .line 177
    .line 178
    if-eqz p1, :cond_6

    .line 179
    .line 180
    iget-object p1, p1, Lv3/r;->a:Ljava/lang/String;

    .line 181
    .line 182
    invoke-direct {v0, p1, v4}, Lcom/google/android/gms/internal/ads/Cs;-><init>(Ljava/lang/String;I)V

    .line 183
    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_6
    invoke-direct {v0, v6, v4}, Lcom/google/android/gms/internal/ads/Cs;-><init>(Ljava/lang/String;I)V

    .line 187
    .line 188
    .line 189
    :goto_4
    return-object v0

    .line 190
    :pswitch_d
    check-cast p1, LA3/b;

    .line 191
    .line 192
    new-instance v0, Lcom/google/android/gms/internal/ads/Xs;

    .line 193
    .line 194
    iget-object v1, p1, LA3/b;->a:Ljava/lang/String;

    .line 195
    .line 196
    const/4 v2, 0x0

    .line 197
    iget p1, p1, LA3/b;->b:I

    .line 198
    .line 199
    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/Xs;-><init>(Ljava/lang/String;II)V

    .line 200
    .line 201
    .line 202
    return-object v0

    .line 203
    :pswitch_e
    check-cast p1, Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-eqz v0, :cond_7

    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_7
    new-instance v6, Lcom/google/android/gms/internal/ads/Js;

    .line 213
    .line 214
    const/4 v0, 0x1

    .line 215
    invoke-direct {v6, p1, v0}, Lcom/google/android/gms/internal/ads/Js;-><init>(Ljava/util/ArrayList;I)V

    .line 216
    .line 217
    .line 218
    :goto_5
    return-object v6

    .line 219
    :pswitch_f
    check-cast p1, Lcom/google/android/gms/internal/ads/El;

    .line 220
    .line 221
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    return-object p1

    .line 230
    :pswitch_10
    check-cast p1, Ljava/util/List;

    .line 231
    .line 232
    new-instance v0, Ljava/util/ArrayList;

    .line 233
    .line 234
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .line 236
    .line 237
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    :cond_8
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    if-eqz v1, :cond_9

    .line 246
    .line 247
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    check-cast v1, Lcom/google/android/gms/internal/ads/wm;

    .line 252
    .line 253
    if-eqz v1, :cond_8

    .line 254
    .line 255
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    goto :goto_6

    .line 259
    :cond_9
    return-object v0

    .line 260
    :pswitch_11
    check-cast p1, Ljava/util/List;

    .line 261
    .line 262
    new-instance v0, Ljava/util/ArrayList;

    .line 263
    .line 264
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .line 266
    .line 267
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    :cond_a
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    if-eqz v1, :cond_b

    .line 276
    .line 277
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    check-cast v1, Lcom/google/android/gms/internal/ads/K8;

    .line 282
    .line 283
    if-eqz v1, :cond_a

    .line 284
    .line 285
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    goto :goto_7

    .line 289
    :cond_b
    return-object v0

    .line 290
    :pswitch_12
    new-instance v0, Lcom/google/android/gms/internal/ads/Ai;

    .line 291
    .line 292
    check-cast p1, Lcom/google/android/gms/internal/ads/xi;

    .line 293
    .line 294
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/Ai;-><init>(Lcom/google/android/gms/internal/ads/xi;)V

    .line 295
    .line 296
    .line 297
    return-object v0

    .line 298
    :pswitch_13
    new-instance v0, Lcom/google/android/gms/internal/ads/Ai;

    .line 299
    .line 300
    check-cast p1, Ljava/util/List;

    .line 301
    .line 302
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/Ai;-><init>(Ljava/util/List;)V

    .line 303
    .line 304
    .line 305
    return-object v0

    .line 306
    :pswitch_14
    check-cast p1, Ljava/lang/Throwable;

    .line 307
    .line 308
    return-object v3

    .line 309
    :pswitch_15
    check-cast p1, Ljava/lang/String;

    .line 310
    .line 311
    sget-object p1, Lcom/google/android/gms/internal/ads/Fd;->l:Ljava/util/List;

    .line 312
    .line 313
    return-object v6

    .line 314
    :pswitch_16
    check-cast p1, Ljava/lang/Throwable;

    .line 315
    .line 316
    sget-object v0, Lcom/google/android/gms/internal/ads/M9;->a:Lcom/google/android/gms/internal/ads/H9;

    .line 317
    .line 318
    sget-object v0, Lcom/google/android/gms/internal/ads/q8;->i:Lcom/google/android/gms/internal/ads/f8;

    .line 319
    .line 320
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    check-cast v0, Ljava/lang/Boolean;

    .line 325
    .line 326
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    if-eqz v0, :cond_c

    .line 331
    .line 332
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 333
    .line 334
    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 335
    .line 336
    const-string v1, "prepareClickUrl.attestation1"

    .line 337
    .line 338
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 339
    .line 340
    .line 341
    :cond_c
    return-object v3

    .line 342
    :pswitch_17
    check-cast p1, Lcom/google/android/gms/internal/ads/D1;

    .line 343
    .line 344
    return-object p1

    .line 345
    :pswitch_18
    check-cast p1, Lcom/google/android/gms/internal/ads/D1;

    .line 346
    .line 347
    return-object p1

    .line 348
    nop

    .line 349
    :pswitch_data_0
    .packed-switch 0x0
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
