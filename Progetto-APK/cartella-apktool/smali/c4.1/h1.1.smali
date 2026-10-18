.class public final Lc4/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:J

.field public final synthetic I:Lc4/k1;


# direct methods
.method public synthetic constructor <init>(Lc4/k1;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lc4/h1;->G:I

    .line 5
    .line 6
    iput-wide p2, p0, Lc4/h1;->H:J

    .line 7
    .line 8
    iput-object p1, p0, Lc4/h1;->I:Lc4/k1;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Lc4/h1;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lc4/h1;->I:Lc4/k1;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lc4/z;->m()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lc4/k1;->q()V

    .line 12
    .line 13
    .line 14
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lc4/l0;

    .line 17
    .line 18
    iget-object v2, v0, Lc4/l0;->O:Lc4/T;

    .line 19
    .line 20
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 21
    .line 22
    .line 23
    iget-wide v7, p0, Lc4/h1;->H:J

    .line 24
    .line 25
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object v2, v2, Lc4/T;->T:Lc4/Q;

    .line 30
    .line 31
    const-string v4, "Activity paused, time"

    .line 32
    .line 33
    invoke-virtual {v2, v3, v4}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v2, Lc4/i1;

    .line 37
    .line 38
    iget-object v9, v1, Lc4/k1;->M:Lm2/e;

    .line 39
    .line 40
    iget-object v3, v9, Lm2/e;->I:Ljava/lang/Object;

    .line 41
    .line 42
    move-object v10, v3

    .line 43
    check-cast v10, Lc4/k1;

    .line 44
    .line 45
    iget-object v3, v10, Lc1/d;->G:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v3, Lc4/l0;

    .line 48
    .line 49
    iget-object v3, v3, Lc4/l0;->T:LP3/b;

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v5

    .line 58
    move-object v3, v2

    .line 59
    move-object v4, v9

    .line 60
    invoke-direct/range {v3 .. v8}, Lc4/i1;-><init>(Lm2/e;JJ)V

    .line 61
    .line 62
    .line 63
    iput-object v2, v9, Lm2/e;->H:Ljava/lang/Object;

    .line 64
    .line 65
    iget-object v3, v10, Lc4/k1;->I:LE1/W;

    .line 66
    .line 67
    const-wide/16 v4, 0x7d0

    .line 68
    .line 69
    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    .line 71
    .line 72
    iget-object v0, v0, Lc4/l0;->M:Lc4/h;

    .line 73
    .line 74
    invoke-virtual {v0}, Lc4/h;->C()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    .line 80
    iget-object v0, v1, Lc4/k1;->L:Lcom/google/android/gms/internal/ads/PN;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/PN;->c:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v0, Lc4/p;

    .line 85
    .line 86
    invoke-virtual {v0}, Lc4/p;->a()V

    .line 87
    .line 88
    .line 89
    :cond_0
    return-void

    .line 90
    :pswitch_0
    invoke-virtual {v1}, Lc4/z;->m()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Lc4/k1;->q()V

    .line 94
    .line 95
    .line 96
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v0, Lc4/l0;

    .line 99
    .line 100
    iget-object v2, v0, Lc4/l0;->O:Lc4/T;

    .line 101
    .line 102
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 103
    .line 104
    .line 105
    iget-wide v3, p0, Lc4/h1;->H:J

    .line 106
    .line 107
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    iget-object v2, v2, Lc4/T;->T:Lc4/Q;

    .line 112
    .line 113
    const-string v6, "Activity resumed, time"

    .line 114
    .line 115
    invoke-virtual {v2, v5, v6}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    sget-object v2, Lc4/E;->b1:Lc4/D;

    .line 119
    .line 120
    iget-object v5, v0, Lc4/l0;->M:Lc4/h;

    .line 121
    .line 122
    const/4 v6, 0x0

    .line 123
    invoke-virtual {v5, v6, v2}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    iget-object v7, v1, Lc4/k1;->L:Lcom/google/android/gms/internal/ads/PN;

    .line 128
    .line 129
    if-eqz v2, :cond_2

    .line 130
    .line 131
    invoke-virtual {v5}, Lc4/h;->C()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_1

    .line 136
    .line 137
    iget-boolean v0, v1, Lc4/k1;->J:Z

    .line 138
    .line 139
    if-eqz v0, :cond_4

    .line 140
    .line 141
    :cond_1
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/PN;->d:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v0, Lc4/k1;

    .line 144
    .line 145
    invoke-virtual {v0}, Lc4/z;->m()V

    .line 146
    .line 147
    .line 148
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/PN;->c:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v0, Lc4/p;

    .line 151
    .line 152
    invoke-virtual {v0}, Lc4/p;->a()V

    .line 153
    .line 154
    .line 155
    iput-wide v3, v7, Lcom/google/android/gms/internal/ads/PN;->a:J

    .line 156
    .line 157
    iput-wide v3, v7, Lcom/google/android/gms/internal/ads/PN;->b:J

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {v5}, Lc4/h;->C()Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-nez v2, :cond_3

    .line 165
    .line 166
    iget-object v0, v0, Lc4/l0;->N:Lc4/Z;

    .line 167
    .line 168
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 169
    .line 170
    .line 171
    iget-object v0, v0, Lc4/Z;->Z:Lc4/Y;

    .line 172
    .line 173
    invoke-virtual {v0}, Lc4/Y;->b()Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_4

    .line 178
    .line 179
    :cond_3
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/PN;->d:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v0, Lc4/k1;

    .line 182
    .line 183
    invoke-virtual {v0}, Lc4/z;->m()V

    .line 184
    .line 185
    .line 186
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/PN;->c:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v0, Lc4/p;

    .line 189
    .line 190
    invoke-virtual {v0}, Lc4/p;->a()V

    .line 191
    .line 192
    .line 193
    iput-wide v3, v7, Lcom/google/android/gms/internal/ads/PN;->a:J

    .line 194
    .line 195
    iput-wide v3, v7, Lcom/google/android/gms/internal/ads/PN;->b:J

    .line 196
    .line 197
    :cond_4
    :goto_0
    iget-object v0, v1, Lc4/k1;->M:Lm2/e;

    .line 198
    .line 199
    iget-object v2, v0, Lm2/e;->I:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v2, Lc4/k1;

    .line 202
    .line 203
    invoke-virtual {v2}, Lc4/z;->m()V

    .line 204
    .line 205
    .line 206
    iget-object v0, v0, Lm2/e;->H:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v0, Lc4/i1;

    .line 209
    .line 210
    if-eqz v0, :cond_5

    .line 211
    .line 212
    iget-object v3, v2, Lc4/k1;->I:LE1/W;

    .line 213
    .line 214
    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    .line 216
    .line 217
    :cond_5
    iget-object v0, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v0, Lc4/l0;

    .line 220
    .line 221
    iget-object v3, v0, Lc4/l0;->N:Lc4/Z;

    .line 222
    .line 223
    invoke-static {v3}, Lc4/l0;->i(Lc4/s0;)V

    .line 224
    .line 225
    .line 226
    iget-object v3, v3, Lc4/Z;->Z:Lc4/Y;

    .line 227
    .line 228
    const/4 v4, 0x0

    .line 229
    invoke-virtual {v3, v4}, Lc4/Y;->a(Z)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2}, Lc4/z;->m()V

    .line 233
    .line 234
    .line 235
    iput-boolean v4, v2, Lc4/k1;->J:Z

    .line 236
    .line 237
    sget-object v3, Lc4/E;->a1:Lc4/D;

    .line 238
    .line 239
    iget-object v5, v0, Lc4/l0;->M:Lc4/h;

    .line 240
    .line 241
    invoke-virtual {v5, v6, v3}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    if-eqz v3, :cond_6

    .line 246
    .line 247
    iget-object v2, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast v2, Lc4/l0;

    .line 250
    .line 251
    iget-object v3, v2, Lc4/l0;->V:Lc4/K0;

    .line 252
    .line 253
    invoke-static {v3}, Lc4/l0;->j(Lc4/B;)V

    .line 254
    .line 255
    .line 256
    iget-boolean v3, v3, Lc4/K0;->T:Z

    .line 257
    .line 258
    if-eqz v3, :cond_6

    .line 259
    .line 260
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 261
    .line 262
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 263
    .line 264
    .line 265
    const-string v3, "Retrying trigger URI registration in foreground"

    .line 266
    .line 267
    iget-object v0, v0, Lc4/T;->T:Lc4/Q;

    .line 268
    .line 269
    invoke-virtual {v0, v3}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    iget-object v0, v2, Lc4/l0;->V:Lc4/K0;

    .line 273
    .line 274
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0}, Lc4/K0;->B()V

    .line 278
    .line 279
    .line 280
    :cond_6
    iget-object v0, v1, Lc4/k1;->K:LZ3/o;

    .line 281
    .line 282
    iget-object v1, v0, LZ3/o;->H:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast v1, Lc4/k1;

    .line 285
    .line 286
    invoke-virtual {v1}, Lc4/z;->m()V

    .line 287
    .line 288
    .line 289
    iget-object v2, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 290
    .line 291
    check-cast v2, Lc4/l0;

    .line 292
    .line 293
    invoke-virtual {v2}, Lc4/l0;->f()Z

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    if-nez v2, :cond_7

    .line 298
    .line 299
    goto :goto_1

    .line 300
    :cond_7
    iget-object v1, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 301
    .line 302
    check-cast v1, Lc4/l0;

    .line 303
    .line 304
    iget-object v1, v1, Lc4/l0;->T:LP3/b;

    .line 305
    .line 306
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 310
    .line 311
    .line 312
    move-result-wide v1

    .line 313
    invoke-virtual {v0, v1, v2, v4}, LZ3/o;->C(JZ)V

    .line 314
    .line 315
    .line 316
    :goto_1
    return-void

    .line 317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
