.class public final synthetic Lc4/E0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lc4/K0;


# direct methods
.method public synthetic constructor <init>(Lc4/K0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lc4/E0;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lc4/E0;->H:Lc4/K0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lc4/E0;->G:I

    .line 4
    .line 5
    const-wide/16 v4, 0x1

    .line 6
    .line 7
    iget-object v6, v0, Lc4/E0;->H:Lc4/K0;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v6}, Lc4/K0;->u()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v1, v6, Lc4/K0;->X:Lc4/k0;

    .line 17
    .line 18
    iget-object v6, v1, Lc4/k0;->G:Lc4/l0;

    .line 19
    .line 20
    iget-object v7, v6, Lc4/l0;->P:Lc4/j0;

    .line 21
    .line 22
    invoke-static {v7}, Lc4/l0;->k(Lc4/s0;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v7}, Lc4/j0;->m()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lc4/k0;->d()Z

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    if-nez v7, :cond_0

    .line 33
    .line 34
    goto/16 :goto_4

    .line 35
    .line 36
    :cond_0
    invoke-virtual {v1}, Lc4/k0;->e()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const-string v7, "_cc"

    .line 41
    .line 42
    const/4 v8, 0x0

    .line 43
    iget-object v9, v6, Lc4/l0;->V:Lc4/K0;

    .line 44
    .line 45
    iget-object v10, v6, Lc4/l0;->N:Lc4/Z;

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-static {v10}, Lc4/l0;->i(Lc4/s0;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v10, Lc4/Z;->d0:LB0/c;

    .line 53
    .line 54
    invoke-virtual {v1, v8}, LB0/c;->o(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Landroid/os/Bundle;

    .line 58
    .line 59
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v6, "source"

    .line 63
    .line 64
    const-string v8, "(not set)"

    .line 65
    .line 66
    invoke-virtual {v1, v6, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v6, "medium"

    .line 70
    .line 71
    invoke-virtual {v1, v6, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v6, "_cis"

    .line 75
    .line 76
    const-string v8, "intent"

    .line 77
    .line 78
    invoke-virtual {v1, v6, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v7, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 82
    .line 83
    .line 84
    invoke-static {v9}, Lc4/l0;->j(Lc4/B;)V

    .line 85
    .line 86
    .line 87
    const-string v4, "auto"

    .line 88
    .line 89
    const-string v5, "_cmpx"

    .line 90
    .line 91
    invoke-virtual {v9, v4, v5, v1}, Lc4/K0;->y(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_3

    .line 95
    .line 96
    :cond_1
    invoke-static {v10}, Lc4/l0;->i(Lc4/s0;)V

    .line 97
    .line 98
    .line 99
    iget-object v1, v10, Lc4/Z;->d0:LB0/c;

    .line 100
    .line 101
    invoke-virtual {v1}, LB0/c;->n()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_2

    .line 110
    .line 111
    iget-object v4, v6, Lc4/l0;->O:Lc4/T;

    .line 112
    .line 113
    invoke-static {v4}, Lc4/l0;->k(Lc4/s0;)V

    .line 114
    .line 115
    .line 116
    const-string v5, "Cache still valid but referrer not found"

    .line 117
    .line 118
    iget-object v4, v4, Lc4/T;->M:Lc4/Q;

    .line 119
    .line 120
    invoke-virtual {v4, v5}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_2
    iget-object v5, v10, Lc4/Z;->e0:LE1/I;

    .line 125
    .line 126
    invoke-virtual {v5}, LE1/I;->a()J

    .line 127
    .line 128
    .line 129
    move-result-wide v5

    .line 130
    const-wide/32 v11, 0x36ee80

    .line 131
    .line 132
    .line 133
    div-long/2addr v5, v11

    .line 134
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    new-instance v13, Landroid/os/Bundle;

    .line 139
    .line 140
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 141
    .line 142
    .line 143
    new-instance v14, Landroid/util/Pair;

    .line 144
    .line 145
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v15

    .line 149
    invoke-direct {v14, v15, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 153
    .line 154
    .line 155
    move-result-object v15

    .line 156
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object v15

    .line 160
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v16

    .line 164
    if-eqz v16, :cond_3

    .line 165
    .line 166
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v16

    .line 170
    move-object/from16 v2, v16

    .line 171
    .line 172
    check-cast v2, Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v4, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v13, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_3
    const-wide/16 v2, -0x1

    .line 183
    .line 184
    add-long/2addr v5, v2

    .line 185
    mul-long v5, v5, v11

    .line 186
    .line 187
    iget-object v2, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v2, Landroid/os/Bundle;

    .line 190
    .line 191
    invoke-virtual {v2, v7, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 192
    .line 193
    .line 194
    iget-object v2, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 195
    .line 196
    if-nez v2, :cond_4

    .line 197
    .line 198
    const-string v2, "app"

    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_4
    check-cast v2, Ljava/lang/String;

    .line 202
    .line 203
    :goto_1
    invoke-static {v9}, Lc4/l0;->j(Lc4/B;)V

    .line 204
    .line 205
    .line 206
    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v3, Landroid/os/Bundle;

    .line 209
    .line 210
    const-string v4, "_cmp"

    .line 211
    .line 212
    invoke-virtual {v9, v2, v4, v3}, Lc4/K0;->y(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 213
    .line 214
    .line 215
    :goto_2
    invoke-virtual {v1, v8}, LB0/c;->o(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    :goto_3
    invoke-static {v10}, Lc4/l0;->i(Lc4/s0;)V

    .line 219
    .line 220
    .line 221
    iget-object v1, v10, Lc4/Z;->e0:LE1/I;

    .line 222
    .line 223
    const-wide/16 v2, 0x0

    .line 224
    .line 225
    invoke-virtual {v1, v2, v3}, LE1/I;->b(J)V

    .line 226
    .line 227
    .line 228
    :goto_4
    return-void

    .line 229
    :pswitch_1
    invoke-virtual {v6}, Lc4/K0;->u()V

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :pswitch_2
    invoke-virtual {v6}, Lc4/z;->m()V

    .line 234
    .line 235
    .line 236
    iget-object v1, v6, Lc1/d;->G:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast v1, Lc4/l0;

    .line 239
    .line 240
    iget-object v2, v1, Lc4/l0;->N:Lc4/Z;

    .line 241
    .line 242
    invoke-static {v2}, Lc4/l0;->i(Lc4/s0;)V

    .line 243
    .line 244
    .line 245
    iget-object v2, v2, Lc4/Z;->a0:Lc4/Y;

    .line 246
    .line 247
    invoke-virtual {v2}, Lc4/Y;->b()Z

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    iget-object v3, v1, Lc4/l0;->O:Lc4/T;

    .line 252
    .line 253
    if-nez v2, :cond_7

    .line 254
    .line 255
    iget-object v1, v1, Lc4/l0;->N:Lc4/Z;

    .line 256
    .line 257
    invoke-static {v1}, Lc4/l0;->i(Lc4/s0;)V

    .line 258
    .line 259
    .line 260
    iget-object v2, v1, Lc4/Z;->b0:LE1/I;

    .line 261
    .line 262
    invoke-virtual {v2}, LE1/I;->a()J

    .line 263
    .line 264
    .line 265
    move-result-wide v7

    .line 266
    add-long/2addr v4, v7

    .line 267
    invoke-virtual {v2, v4, v5}, LE1/I;->b(J)V

    .line 268
    .line 269
    .line 270
    const-wide/16 v4, 0x5

    .line 271
    .line 272
    cmp-long v2, v7, v4

    .line 273
    .line 274
    if-ltz v2, :cond_5

    .line 275
    .line 276
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 277
    .line 278
    .line 279
    const-string v2, "Permanently failed to retrieve Deferred Deep Link. Reached maximum retries."

    .line 280
    .line 281
    iget-object v3, v3, Lc4/T;->O:Lc4/Q;

    .line 282
    .line 283
    invoke-virtual {v3, v2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    iget-object v1, v1, Lc4/Z;->a0:Lc4/Y;

    .line 287
    .line 288
    const/4 v2, 0x1

    .line 289
    invoke-virtual {v1, v2}, Lc4/Y;->a(Z)V

    .line 290
    .line 291
    .line 292
    goto :goto_5

    .line 293
    :cond_5
    iget-object v1, v6, Lc4/K0;->Z:Lc4/F0;

    .line 294
    .line 295
    if-nez v1, :cond_6

    .line 296
    .line 297
    iget-object v1, v6, Lc1/d;->G:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast v1, Lc4/l0;

    .line 300
    .line 301
    new-instance v2, Lc4/F0;

    .line 302
    .line 303
    const/4 v3, 0x3

    .line 304
    invoke-direct {v2, v6, v1, v3}, Lc4/F0;-><init>(Lc4/K0;Lc4/l0;I)V

    .line 305
    .line 306
    .line 307
    iput-object v2, v6, Lc4/K0;->Z:Lc4/F0;

    .line 308
    .line 309
    :cond_6
    iget-object v1, v6, Lc4/K0;->Z:Lc4/F0;

    .line 310
    .line 311
    const-wide/16 v2, 0x0

    .line 312
    .line 313
    invoke-virtual {v1, v2, v3}, Lc4/p;->c(J)V

    .line 314
    .line 315
    .line 316
    goto :goto_5

    .line 317
    :cond_7
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 318
    .line 319
    .line 320
    const-string v1, "Deferred Deep Link already retrieved. Not fetching again."

    .line 321
    .line 322
    iget-object v2, v3, Lc4/T;->S:Lc4/Q;

    .line 323
    .line 324
    invoke-virtual {v2, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    :goto_5
    return-void

    .line 328
    nop

    .line 329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
