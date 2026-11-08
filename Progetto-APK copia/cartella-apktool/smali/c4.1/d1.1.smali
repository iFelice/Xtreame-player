.class public final Lc4/d1;
.super Lc4/B;
.source "SourceFile"


# instance fields
.field public final I:Lc4/c1;

.field public J:Lc4/G;

.field public volatile K:Ljava/lang/Boolean;

.field public final L:Lc4/a1;

.field public M:Ljava/util/concurrent/ScheduledExecutorService;

.field public final N:Lf6/c;

.field public final O:Ljava/util/ArrayList;

.field public final P:Lc4/a1;


# direct methods
.method public constructor <init>(Lc4/l0;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lc4/B;-><init>(Lc4/l0;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lc4/d1;->O:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lf6/c;

    .line 12
    .line 13
    iget-object v1, p1, Lc4/l0;->T:LP3/b;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lf6/c;-><init>(LP3/a;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lc4/d1;->N:Lf6/c;

    .line 19
    .line 20
    new-instance v0, Lc4/c1;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lc4/c1;-><init>(Lc4/d1;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lc4/d1;->I:Lc4/c1;

    .line 26
    .line 27
    new-instance v0, Lc4/a1;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-direct {v0, p0, p1, v1}, Lc4/a1;-><init>(Lc4/d1;Lc4/t0;I)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lc4/d1;->L:Lc4/a1;

    .line 34
    .line 35
    new-instance v0, Lc4/a1;

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-direct {v0, p0, p1, v1}, Lc4/a1;-><init>(Lc4/d1;Lc4/t0;I)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lc4/d1;->P:Lc4/a1;

    .line 42
    .line 43
    return-void
.end method

.method public static G(Lc4/d1;Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lc4/d1;->J:Lc4/G;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lc4/d1;->J:Lc4/G;

    .line 10
    .line 11
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lc4/l0;

    .line 14
    .line 15
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 16
    .line 17
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "Disconnected from device MeasurementService"

    .line 21
    .line 22
    iget-object v0, v0, Lc4/T;->T:Lc4/Q;

    .line 23
    .line 24
    invoke-virtual {v0, p1, v1}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lc4/d1;->q()V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc4/B;->n()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lc4/d1;->K:Ljava/lang/Boolean;

    .line 8
    .line 9
    if-nez v0, :cond_d

    .line 10
    .line 11
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lc4/B;->n()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lc4/l0;

    .line 20
    .line 21
    iget-object v1, v0, Lc4/l0;->N:Lc4/Z;

    .line 22
    .line 23
    invoke-static {v1}, Lc4/l0;->i(Lc4/s0;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lc1/d;->m()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "use_service"

    .line 34
    .line 35
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/4 v4, 0x0

    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v1}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :goto_0
    const/4 v2, 0x1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_1

    .line 64
    .line 65
    goto/16 :goto_6

    .line 66
    .line 67
    :cond_1
    iget-object v5, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v5, Lc4/l0;

    .line 70
    .line 71
    invoke-virtual {v5}, Lc4/l0;->n()Lc4/L;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v5}, Lc4/B;->n()V

    .line 76
    .line 77
    .line 78
    iget v5, v5, Lc4/L;->S:I

    .line 79
    .line 80
    if-ne v5, v2, :cond_2

    .line 81
    .line 82
    :goto_1
    const/4 v4, 0x1

    .line 83
    goto/16 :goto_4

    .line 84
    .line 85
    :cond_2
    iget-object v5, v0, Lc4/l0;->O:Lc4/T;

    .line 86
    .line 87
    invoke-static {v5}, Lc4/l0;->k(Lc4/s0;)V

    .line 88
    .line 89
    .line 90
    iget-object v5, v5, Lc4/T;->T:Lc4/Q;

    .line 91
    .line 92
    const-string v6, "Checking service availability"

    .line 93
    .line 94
    invoke-virtual {v5, v6}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v5, v0, Lc4/l0;->R:Lc4/I1;

    .line 98
    .line 99
    invoke-static {v5}, Lc4/l0;->i(Lc4/s0;)V

    .line 100
    .line 101
    .line 102
    iget-object v5, v5, Lc1/d;->G:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v5, Lc4/l0;

    .line 105
    .line 106
    sget-object v6, LJ3/f;->b:LJ3/f;

    .line 107
    .line 108
    iget-object v5, v5, Lc4/l0;->G:Landroid/content/Context;

    .line 109
    .line 110
    const v7, 0xbdfcb8

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6, v5, v7}, LJ3/f;->c(Landroid/content/Context;I)I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-eqz v5, :cond_a

    .line 118
    .line 119
    if-eq v5, v2, :cond_9

    .line 120
    .line 121
    const/4 v6, 0x2

    .line 122
    if-eq v5, v6, :cond_6

    .line 123
    .line 124
    const/4 v1, 0x3

    .line 125
    if-eq v5, v1, :cond_5

    .line 126
    .line 127
    const/16 v1, 0x9

    .line 128
    .line 129
    if-eq v5, v1, :cond_4

    .line 130
    .line 131
    const/16 v1, 0x12

    .line 132
    .line 133
    if-eq v5, v1, :cond_3

    .line 134
    .line 135
    iget-object v1, v0, Lc4/l0;->O:Lc4/T;

    .line 136
    .line 137
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 138
    .line 139
    .line 140
    iget-object v1, v1, Lc4/T;->O:Lc4/Q;

    .line 141
    .line 142
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    const-string v5, "Unexpected service status"

    .line 147
    .line 148
    invoke-virtual {v1, v2, v5}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :goto_2
    const/4 v2, 0x0

    .line 152
    goto :goto_4

    .line 153
    :cond_3
    iget-object v1, v0, Lc4/l0;->O:Lc4/T;

    .line 154
    .line 155
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 156
    .line 157
    .line 158
    iget-object v1, v1, Lc4/T;->O:Lc4/Q;

    .line 159
    .line 160
    const-string v4, "Service updating"

    .line 161
    .line 162
    invoke-virtual {v1, v4}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_4
    iget-object v1, v0, Lc4/l0;->O:Lc4/T;

    .line 167
    .line 168
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 169
    .line 170
    .line 171
    iget-object v1, v1, Lc4/T;->O:Lc4/Q;

    .line 172
    .line 173
    const-string v2, "Service invalid"

    .line 174
    .line 175
    invoke-virtual {v1, v2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_5
    iget-object v1, v0, Lc4/l0;->O:Lc4/T;

    .line 180
    .line 181
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 182
    .line 183
    .line 184
    iget-object v1, v1, Lc4/T;->O:Lc4/Q;

    .line 185
    .line 186
    const-string v2, "Service disabled"

    .line 187
    .line 188
    invoke-virtual {v1, v2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_6
    iget-object v5, v0, Lc4/l0;->O:Lc4/T;

    .line 193
    .line 194
    invoke-static {v5}, Lc4/l0;->k(Lc4/s0;)V

    .line 195
    .line 196
    .line 197
    iget-object v5, v5, Lc4/T;->S:Lc4/Q;

    .line 198
    .line 199
    const-string v6, "Service container out of date"

    .line 200
    .line 201
    invoke-virtual {v5, v6}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object v5, v0, Lc4/l0;->R:Lc4/I1;

    .line 205
    .line 206
    invoke-static {v5}, Lc4/l0;->i(Lc4/s0;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v5}, Lc4/I1;->v0()I

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    const/16 v6, 0x4423

    .line 214
    .line 215
    if-ge v5, v6, :cond_7

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_7
    if-nez v1, :cond_8

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_8
    const/4 v2, 0x0

    .line 222
    :goto_3
    move v4, v2

    .line 223
    goto :goto_2

    .line 224
    :cond_9
    iget-object v1, v0, Lc4/l0;->O:Lc4/T;

    .line 225
    .line 226
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 227
    .line 228
    .line 229
    iget-object v1, v1, Lc4/T;->T:Lc4/Q;

    .line 230
    .line 231
    const-string v5, "Service missing"

    .line 232
    .line 233
    invoke-virtual {v1, v5}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_a
    iget-object v1, v0, Lc4/l0;->O:Lc4/T;

    .line 238
    .line 239
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 240
    .line 241
    .line 242
    iget-object v1, v1, Lc4/T;->T:Lc4/Q;

    .line 243
    .line 244
    const-string v4, "Service available"

    .line 245
    .line 246
    invoke-virtual {v1, v4}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    goto/16 :goto_1

    .line 250
    .line 251
    :goto_4
    if-nez v4, :cond_b

    .line 252
    .line 253
    iget-object v1, v0, Lc4/l0;->M:Lc4/h;

    .line 254
    .line 255
    invoke-virtual {v1}, Lc4/h;->p()Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-eqz v1, :cond_b

    .line 260
    .line 261
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 262
    .line 263
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 264
    .line 265
    .line 266
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 267
    .line 268
    const-string v1, "No way to upload. Consider using the full version of Analytics"

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    goto :goto_5

    .line 274
    :cond_b
    if-eqz v2, :cond_c

    .line 275
    .line 276
    iget-object v0, v0, Lc4/l0;->N:Lc4/Z;

    .line 277
    .line 278
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0}, Lc1/d;->m()V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 293
    .line 294
    .line 295
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 296
    .line 297
    .line 298
    :cond_c
    :goto_5
    move v2, v4

    .line 299
    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    iput-object v0, p0, Lc4/d1;->K:Ljava/lang/Boolean;

    .line 304
    .line 305
    :cond_d
    iget-object v0, p0, Lc4/d1;->K:Ljava/lang/Boolean;

    .line 306
    .line 307
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    return v0
.end method

.method public final B(Z)Lc4/J1;
    .locals 10

    .line 1
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lc4/l0;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lc4/l0;

    .line 11
    .line 12
    invoke-virtual {v1}, Lc4/l0;->n()Lc4/L;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz p1, :cond_7

    .line 18
    .line 19
    iget-object p1, v0, Lc4/l0;->O:Lc4/T;

    .line 20
    .line 21
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p1, Lc1/d;->G:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Lc4/l0;

    .line 27
    .line 28
    iget-object v0, p1, Lc4/l0;->N:Lc4/Z;

    .line 29
    .line 30
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, v0, Lc4/Z;->L:Lt2/c;

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    goto/16 :goto_4

    .line 38
    .line 39
    :cond_0
    iget-object p1, p1, Lc4/l0;->N:Lc4/Z;

    .line 40
    .line 41
    invoke-static {p1}, Lc4/l0;->i(Lc4/s0;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p1, Lc4/Z;->L:Lt2/c;

    .line 45
    .line 46
    iget-object v0, p1, Lt2/c;->H:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Lc4/Z;

    .line 49
    .line 50
    invoke-virtual {v0}, Lc1/d;->m()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lc1/d;->m()V

    .line 54
    .line 55
    .line 56
    iget-object v3, p1, Lt2/c;->H:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v3, Lc4/Z;

    .line 59
    .line 60
    invoke-virtual {v3}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    iget-object v4, p1, Lt2/c;->I:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v4, Ljava/lang/String;

    .line 67
    .line 68
    const-wide/16 v5, 0x0

    .line 69
    .line 70
    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 71
    .line 72
    .line 73
    move-result-wide v3

    .line 74
    cmp-long v7, v3, v5

    .line 75
    .line 76
    if-nez v7, :cond_1

    .line 77
    .line 78
    invoke-virtual {p1}, Lt2/c;->e()V

    .line 79
    .line 80
    .line 81
    move-wide v3, v5

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    iget-object v7, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v7, Lc4/l0;

    .line 86
    .line 87
    iget-object v7, v7, Lc4/l0;->T:LP3/b;

    .line 88
    .line 89
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 93
    .line 94
    .line 95
    move-result-wide v7

    .line 96
    sub-long/2addr v3, v7

    .line 97
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    .line 98
    .line 99
    .line 100
    move-result-wide v3

    .line 101
    :goto_0
    iget-wide v7, p1, Lt2/c;->G:J

    .line 102
    .line 103
    cmp-long v9, v3, v7

    .line 104
    .line 105
    if-gez v9, :cond_2

    .line 106
    .line 107
    :goto_1
    move-object p1, v2

    .line 108
    goto :goto_3

    .line 109
    :cond_2
    add-long/2addr v7, v7

    .line 110
    cmp-long v9, v3, v7

    .line 111
    .line 112
    if-lez v9, :cond_3

    .line 113
    .line 114
    invoke-virtual {p1}, Lt2/c;->e()V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_3
    iget-object v3, p1, Lt2/c;->K:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v3, Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v0}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-interface {v4, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    iget-object v4, p1, Lt2/c;->J:Ljava/io/Serializable;

    .line 131
    .line 132
    check-cast v4, Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v0}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 139
    .line 140
    .line 141
    move-result-wide v7

    .line 142
    invoke-virtual {p1}, Lt2/c;->e()V

    .line 143
    .line 144
    .line 145
    if-eqz v3, :cond_5

    .line 146
    .line 147
    cmp-long p1, v7, v5

    .line 148
    .line 149
    if-gtz p1, :cond_4

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_4
    new-instance p1, Landroid/util/Pair;

    .line 153
    .line 154
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-direct {p1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_5
    :goto_2
    sget-object p1, Lc4/Z;->g0:Landroid/util/Pair;

    .line 163
    .line 164
    :goto_3
    if-eqz p1, :cond_7

    .line 165
    .line 166
    sget-object v0, Lc4/Z;->g0:Landroid/util/Pair;

    .line 167
    .line 168
    if-ne p1, v0, :cond_6

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_6
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 172
    .line 173
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast p1, Ljava/lang/String;

    .line 180
    .line 181
    const-string v2, ":"

    .line 182
    .line 183
    invoke-static {v0, v2, p1}, Lcom/google/protobuf/U2;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    :cond_7
    :goto_4
    invoke-virtual {v1, v2}, Lc4/L;->r(Ljava/lang/String;)Lc4/J1;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    return-object p1
.end method

.method public final C()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lc4/l0;

    .line 7
    .line 8
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 9
    .line 10
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lc4/d1;->O:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "Processing queued up service tasks"

    .line 24
    .line 25
    iget-object v0, v0, Lc4/T;->T:Lc4/Q;

    .line 26
    .line 27
    invoke-virtual {v0, v2, v3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/lang/Runnable;

    .line 45
    .line 46
    :try_start_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v2

    .line 51
    iget-object v3, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v3, Lc4/l0;

    .line 54
    .line 55
    iget-object v3, v3, Lc4/l0;->O:Lc4/T;

    .line 56
    .line 57
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 58
    .line 59
    .line 60
    const-string v4, "Task exception while flushing queue"

    .line 61
    .line 62
    iget-object v3, v3, Lc4/T;->L:Lc4/Q;

    .line 63
    .line 64
    invoke-virtual {v3, v2, v4}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lc4/d1;->P:Lc4/a1;

    .line 72
    .line 73
    invoke-virtual {v0}, Lc4/p;->a()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final D()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lc4/d1;->N:Lf6/c;

    .line 5
    .line 6
    iget-object v1, v0, Lf6/c;->I:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, LP3/a;

    .line 9
    .line 10
    check-cast v1, LP3/b;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    iput-wide v1, v0, Lf6/c;->H:J

    .line 20
    .line 21
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lc4/l0;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    sget-object v0, Lc4/E;->Y:Lc4/D;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Lc4/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/Long;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iget-object v2, p0, Lc4/d1;->L:Lc4/a1;

    .line 42
    .line 43
    invoke-virtual {v2, v0, v1}, Lc4/p;->c(J)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final E(Ljava/lang/Runnable;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc4/d1;->x()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lc4/d1;->O:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    int-to-long v1, v1

    .line 21
    iget-object v3, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v3, Lc4/l0;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const-wide/16 v4, 0x3e8

    .line 29
    .line 30
    cmp-long v6, v1, v4

    .line 31
    .line 32
    if-ltz v6, :cond_1

    .line 33
    .line 34
    iget-object p1, v3, Lc4/l0;->O:Lc4/T;

    .line 35
    .line 36
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "Discarding data. Max runnable queue size reached"

    .line 40
    .line 41
    iget-object p1, p1, Lc4/T;->L:Lc4/Q;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lc4/d1;->P:Lc4/a1;

    .line 51
    .line 52
    const-wide/32 v0, 0xea60

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0, v1}, Lc4/p;->c(J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lc4/d1;->q()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final F()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lc4/l0;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final p()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final q()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc4/B;->n()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lc4/d1;->x()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lc4/d1;->A()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_4

    .line 20
    .line 21
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lc4/l0;

    .line 24
    .line 25
    iget-object v1, v0, Lc4/l0;->M:Lc4/h;

    .line 26
    .line 27
    invoke-virtual {v1}, Lc4/h;->p()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_3

    .line 32
    .line 33
    iget-object v1, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Landroid/content/Intent;

    .line 40
    .line 41
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v3, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 45
    .line 46
    const-string v4, "com.google.android.gms.measurement.AppMeasurementService"

    .line 47
    .line 48
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const/high16 v3, 0x10000

    .line 53
    .line 54
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_2

    .line 65
    .line 66
    new-instance v5, Landroid/content/Intent;

    .line 67
    .line 68
    const-string v1, "com.google.android.gms.measurement.START"

    .line 69
    .line 70
    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance v1, Landroid/content/ComponentName;

    .line 74
    .line 75
    iget-object v0, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 76
    .line 77
    const-string v2, "com.google.android.gms.measurement.AppMeasurementService"

    .line 78
    .line 79
    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lc4/d1;->I:Lc4/c1;

    .line 86
    .line 87
    iget-object v0, v1, Lc4/c1;->c:Lc4/d1;

    .line 88
    .line 89
    invoke-virtual {v0}, Lc4/z;->m()V

    .line 90
    .line 91
    .line 92
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v0, Lc4/l0;

    .line 95
    .line 96
    iget-object v3, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 97
    .line 98
    invoke-static {}, LO3/a;->a()LO3/a;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    monitor-enter v1

    .line 103
    :try_start_0
    iget-boolean v0, v1, Lc4/c1;->a:Z

    .line 104
    .line 105
    if-eqz v0, :cond_1

    .line 106
    .line 107
    iget-object v0, v1, Lc4/c1;->c:Lc4/d1;

    .line 108
    .line 109
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v0, Lc4/l0;

    .line 112
    .line 113
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 114
    .line 115
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, v0, Lc4/T;->T:Lc4/Q;

    .line 119
    .line 120
    const-string v2, "Connection attempt already in progress"

    .line 121
    .line 122
    invoke-virtual {v0, v2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    monitor-exit v1

    .line 126
    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    goto :goto_1

    .line 129
    :cond_1
    iget-object v0, v1, Lc4/c1;->c:Lc4/d1;

    .line 130
    .line 131
    iget-object v4, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v4, Lc4/l0;

    .line 134
    .line 135
    iget-object v4, v4, Lc4/l0;->O:Lc4/T;

    .line 136
    .line 137
    invoke-static {v4}, Lc4/l0;->k(Lc4/s0;)V

    .line 138
    .line 139
    .line 140
    iget-object v4, v4, Lc4/T;->T:Lc4/Q;

    .line 141
    .line 142
    const-string v6, "Using local app measurement service"

    .line 143
    .line 144
    invoke-virtual {v4, v6}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const/4 v4, 0x1

    .line 148
    iput-boolean v4, v1, Lc4/c1;->a:Z

    .line 149
    .line 150
    iget-object v6, v0, Lc4/d1;->I:Lc4/c1;

    .line 151
    .line 152
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    const/4 v8, 0x0

    .line 161
    const/16 v7, 0x81

    .line 162
    .line 163
    invoke-virtual/range {v2 .. v8}, LO3/a;->c(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;ILjava/util/concurrent/Executor;)Z

    .line 164
    .line 165
    .line 166
    monitor-exit v1

    .line 167
    :goto_0
    return-void

    .line 168
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    throw v0

    .line 170
    :cond_2
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 171
    .line 172
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 176
    .line 177
    const-string v1, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :cond_3
    :goto_2
    return-void

    .line 183
    :cond_4
    iget-object v0, p0, Lc4/d1;->I:Lc4/c1;

    .line 184
    .line 185
    invoke-virtual {v0}, Lc4/c1;->a()V

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method public final r()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc4/B;->n()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lc4/d1;->I:Lc4/c1;

    .line 8
    .line 9
    iget-object v1, v0, Lc4/c1;->b:Lcom/google/android/gms/internal/ads/Gc;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v1, v0, Lc4/c1;->b:Lcom/google/android/gms/internal/ads/Gc;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/g;->isConnected()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    iget-object v1, v0, Lc4/c1;->b:Lcom/google/android/gms/internal/ads/Gc;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/g;->isConnecting()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    :cond_0
    iget-object v1, v0, Lc4/c1;->b:Lcom/google/android/gms/internal/ads/Gc;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/g;->disconnect()V

    .line 32
    .line 33
    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    iput-object v1, v0, Lc4/c1;->b:Lcom/google/android/gms/internal/ads/Gc;

    .line 36
    .line 37
    :try_start_0
    invoke-static {}, LO3/a;->a()LO3/a;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget-object v3, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v3, Lc4/l0;

    .line 44
    .line 45
    iget-object v3, v3, Lc4/l0;->G:Landroid/content/Context;

    .line 46
    .line 47
    invoke-virtual {v2, v3, v0}, LO3/a;->b(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    :catch_0
    iput-object v1, p0, Lc4/d1;->J:Lc4/G;

    .line 51
    .line 52
    return-void
.end method

.method public final s(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc4/B;->n()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lc4/d1;->B(Z)Lc4/J1;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    new-instance v0, LZ3/v;

    .line 13
    .line 14
    const/16 v5, 0x9

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    move-object v1, v0

    .line 18
    move-object v2, p0

    .line 19
    move-object v3, p1

    .line 20
    invoke-direct/range {v1 .. v6}, LZ3/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lc4/d1;->E(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final t(Lc4/G;LM3/a;Lc4/J1;)V
    .locals 60

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lc4/z;->m()V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Lc4/B;->n()V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Lc4/d1;->F()V

    .line 14
    .line 15
    .line 16
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 17
    .line 18
    move-object v4, v0

    .line 19
    check-cast v4, Lc4/l0;

    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const/16 v6, 0x64

    .line 25
    .line 26
    move-object/from16 v0, p3

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    const/16 v8, 0x64

    .line 30
    .line 31
    :goto_0
    const/16 v9, 0x3e9

    .line 32
    .line 33
    if-ge v7, v9, :cond_c

    .line 34
    .line 35
    if-ne v8, v6, :cond_c

    .line 36
    .line 37
    iget-object v8, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v8, Lc4/l0;

    .line 40
    .line 41
    new-instance v9, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v8}, Lc4/l0;->o()Lc4/N;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    invoke-virtual {v8}, Lc4/N;->r()Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    if-eqz v8, :cond_0

    .line 55
    .line 56
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 57
    .line 58
    .line 59
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    const/4 v8, 0x0

    .line 65
    :goto_1
    if-eqz v3, :cond_1

    .line 66
    .line 67
    if-ge v8, v6, :cond_1

    .line 68
    .line 69
    iget-object v10, v0, Lc4/J1;->I:Ljava/lang/String;

    .line 70
    .line 71
    new-instance v11, Lc4/M;

    .line 72
    .line 73
    iget-wide v12, v0, Lc4/J1;->P:J

    .line 74
    .line 75
    invoke-direct {v11, v3, v10, v12, v13}, Lc4/M;-><init>(LM3/a;Ljava/lang/String;J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    :cond_1
    sget-object v10, Lc4/E;->V0:Lc4/D;

    .line 82
    .line 83
    iget-object v11, v4, Lc4/l0;->M:Lc4/h;

    .line 84
    .line 85
    const/4 v12, 0x0

    .line 86
    invoke-virtual {v11, v12, v10}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 91
    .line 92
    .line 93
    move-result v13

    .line 94
    const/4 v14, 0x0

    .line 95
    :goto_2
    if-ge v14, v13, :cond_b

    .line 96
    .line 97
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v15

    .line 101
    check-cast v15, Lc4/M;

    .line 102
    .line 103
    iget-object v5, v15, Lc4/M;->a:LM3/a;

    .line 104
    .line 105
    sget-object v6, Lc4/E;->m1:Lc4/D;

    .line 106
    .line 107
    invoke-virtual {v11, v12, v6}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 108
    .line 109
    .line 110
    move-result v16

    .line 111
    if-eqz v16, :cond_2

    .line 112
    .line 113
    iget-object v12, v15, Lc4/M;->b:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v16

    .line 119
    if-nez v16, :cond_2

    .line 120
    .line 121
    iget-object v3, v0, Lc4/J1;->G:Ljava/lang/String;

    .line 122
    .line 123
    move-object/from16 v18, v3

    .line 124
    .line 125
    new-instance v3, Lc4/J1;

    .line 126
    .line 127
    move-object/from16 v17, v3

    .line 128
    .line 129
    move/from16 v59, v8

    .line 130
    .line 131
    move-object/from16 v16, v9

    .line 132
    .line 133
    iget-wide v8, v0, Lc4/J1;->l0:J

    .line 134
    .line 135
    move-wide/from16 v56, v8

    .line 136
    .line 137
    iget v8, v0, Lc4/J1;->m0:I

    .line 138
    .line 139
    move/from16 v58, v8

    .line 140
    .line 141
    iget-object v8, v0, Lc4/J1;->H:Ljava/lang/String;

    .line 142
    .line 143
    move-object/from16 v19, v8

    .line 144
    .line 145
    iget-wide v8, v15, Lc4/M;->c:J

    .line 146
    .line 147
    move-wide/from16 v21, v8

    .line 148
    .line 149
    iget-object v8, v0, Lc4/J1;->J:Ljava/lang/String;

    .line 150
    .line 151
    move-object/from16 v23, v8

    .line 152
    .line 153
    iget-wide v8, v0, Lc4/J1;->K:J

    .line 154
    .line 155
    move-wide/from16 v24, v8

    .line 156
    .line 157
    iget-wide v8, v0, Lc4/J1;->L:J

    .line 158
    .line 159
    move-wide/from16 v26, v8

    .line 160
    .line 161
    iget-object v8, v0, Lc4/J1;->M:Ljava/lang/String;

    .line 162
    .line 163
    move-object/from16 v28, v8

    .line 164
    .line 165
    iget-boolean v8, v0, Lc4/J1;->N:Z

    .line 166
    .line 167
    move/from16 v29, v8

    .line 168
    .line 169
    iget-boolean v8, v0, Lc4/J1;->O:Z

    .line 170
    .line 171
    move/from16 v30, v8

    .line 172
    .line 173
    iget-object v8, v0, Lc4/J1;->Q:Ljava/lang/String;

    .line 174
    .line 175
    move-object/from16 v31, v8

    .line 176
    .line 177
    iget-wide v8, v0, Lc4/J1;->R:J

    .line 178
    .line 179
    move-wide/from16 v32, v8

    .line 180
    .line 181
    iget v8, v0, Lc4/J1;->S:I

    .line 182
    .line 183
    move/from16 v34, v8

    .line 184
    .line 185
    iget-boolean v8, v0, Lc4/J1;->T:Z

    .line 186
    .line 187
    move/from16 v35, v8

    .line 188
    .line 189
    iget-boolean v8, v0, Lc4/J1;->U:Z

    .line 190
    .line 191
    move/from16 v36, v8

    .line 192
    .line 193
    iget-object v8, v0, Lc4/J1;->V:Ljava/lang/String;

    .line 194
    .line 195
    move-object/from16 v37, v8

    .line 196
    .line 197
    iget-object v8, v0, Lc4/J1;->W:Ljava/lang/Boolean;

    .line 198
    .line 199
    move-object/from16 v38, v8

    .line 200
    .line 201
    iget-wide v8, v0, Lc4/J1;->X:J

    .line 202
    .line 203
    move-wide/from16 v39, v8

    .line 204
    .line 205
    iget-object v8, v0, Lc4/J1;->Y:Ljava/util/List;

    .line 206
    .line 207
    move-object/from16 v41, v8

    .line 208
    .line 209
    iget-object v8, v0, Lc4/J1;->Z:Ljava/lang/String;

    .line 210
    .line 211
    move-object/from16 v42, v8

    .line 212
    .line 213
    iget-object v8, v0, Lc4/J1;->a0:Ljava/lang/String;

    .line 214
    .line 215
    move-object/from16 v43, v8

    .line 216
    .line 217
    iget-object v8, v0, Lc4/J1;->b0:Ljava/lang/String;

    .line 218
    .line 219
    move-object/from16 v44, v8

    .line 220
    .line 221
    iget-object v8, v0, Lc4/J1;->c0:Ljava/lang/String;

    .line 222
    .line 223
    move-object/from16 v45, v8

    .line 224
    .line 225
    iget-boolean v8, v0, Lc4/J1;->d0:Z

    .line 226
    .line 227
    move/from16 v46, v8

    .line 228
    .line 229
    iget-wide v8, v0, Lc4/J1;->e0:J

    .line 230
    .line 231
    move-wide/from16 v47, v8

    .line 232
    .line 233
    iget v8, v0, Lc4/J1;->f0:I

    .line 234
    .line 235
    move/from16 v49, v8

    .line 236
    .line 237
    iget-object v8, v0, Lc4/J1;->g0:Ljava/lang/String;

    .line 238
    .line 239
    move-object/from16 v50, v8

    .line 240
    .line 241
    iget v8, v0, Lc4/J1;->h0:I

    .line 242
    .line 243
    move/from16 v51, v8

    .line 244
    .line 245
    iget-wide v8, v0, Lc4/J1;->i0:J

    .line 246
    .line 247
    move-wide/from16 v52, v8

    .line 248
    .line 249
    iget-object v8, v0, Lc4/J1;->j0:Ljava/lang/String;

    .line 250
    .line 251
    move-object/from16 v54, v8

    .line 252
    .line 253
    iget-object v0, v0, Lc4/J1;->k0:Ljava/lang/String;

    .line 254
    .line 255
    move-object/from16 v55, v0

    .line 256
    .line 257
    move-object/from16 v20, v12

    .line 258
    .line 259
    invoke-direct/range {v17 .. v58}, Lc4/J1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;JI)V

    .line 260
    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_2
    move/from16 v59, v8

    .line 264
    .line 265
    move-object/from16 v16, v9

    .line 266
    .line 267
    move-object v3, v0

    .line 268
    :goto_3
    instance-of v0, v5, Lc4/u;

    .line 269
    .line 270
    if-eqz v0, :cond_7

    .line 271
    .line 272
    const-wide/16 v8, 0x0

    .line 273
    .line 274
    if-eqz v10, :cond_3

    .line 275
    .line 276
    :try_start_0
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast v0, Lc4/l0;

    .line 279
    .line 280
    iget-object v6, v0, Lc4/l0;->T:LP3/b;

    .line 281
    .line 282
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 286
    .line 287
    .line 288
    move-result-wide v17
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 289
    :try_start_1
    iget-object v0, v0, Lc4/l0;->T:LP3/b;

    .line 290
    .line 291
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 295
    .line 296
    .line 297
    move-result-wide v19
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 298
    move-wide/from16 v24, v17

    .line 299
    .line 300
    move-wide/from16 v26, v19

    .line 301
    .line 302
    goto :goto_4

    .line 303
    :catch_0
    move-exception v0

    .line 304
    move-wide/from16 v26, v8

    .line 305
    .line 306
    move-wide/from16 v20, v17

    .line 307
    .line 308
    goto :goto_6

    .line 309
    :catch_1
    move-exception v0

    .line 310
    move-wide/from16 v20, v8

    .line 311
    .line 312
    move-wide/from16 v26, v20

    .line 313
    .line 314
    goto :goto_6

    .line 315
    :cond_3
    move-wide/from16 v24, v8

    .line 316
    .line 317
    move-wide/from16 v26, v24

    .line 318
    .line 319
    :goto_4
    :try_start_2
    check-cast v5, Lc4/u;

    .line 320
    .line 321
    invoke-interface {v2, v5, v3}, Lc4/G;->X0(Lc4/u;Lc4/J1;)V

    .line 322
    .line 323
    .line 324
    if-eqz v10, :cond_5

    .line 325
    .line 326
    iget-object v0, v4, Lc4/l0;->O:Lc4/T;

    .line 327
    .line 328
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 329
    .line 330
    .line 331
    iget-object v0, v0, Lc4/T;->T:Lc4/Q;

    .line 332
    .line 333
    const-string v5, "Logging telemetry for logEvent from database"

    .line 334
    .line 335
    invoke-virtual {v0, v5}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 339
    .line 340
    check-cast v0, Lc4/l0;

    .line 341
    .line 342
    sget-object v5, Lcom/google/android/gms/internal/ads/bD;->K:Lcom/google/android/gms/internal/ads/bD;

    .line 343
    .line 344
    if-nez v5, :cond_4

    .line 345
    .line 346
    new-instance v5, Lcom/google/android/gms/internal/ads/bD;

    .line 347
    .line 348
    iget-object v6, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 349
    .line 350
    invoke-direct {v5, v6, v0}, Lcom/google/android/gms/internal/ads/bD;-><init>(Landroid/content/Context;Lc4/l0;)V

    .line 351
    .line 352
    .line 353
    sput-object v5, Lcom/google/android/gms/internal/ads/bD;->K:Lcom/google/android/gms/internal/ads/bD;

    .line 354
    .line 355
    :cond_4
    sget-object v17, Lcom/google/android/gms/internal/ads/bD;->K:Lcom/google/android/gms/internal/ads/bD;

    .line 356
    .line 357
    iget-object v5, v0, Lc4/l0;->T:LP3/b;

    .line 358
    .line 359
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    .line 361
    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 363
    .line 364
    .line 365
    move-result-wide v22

    .line 366
    iget-object v0, v0, Lc4/l0;->T:LP3/b;

    .line 367
    .line 368
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 369
    .line 370
    .line 371
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 372
    .line 373
    .line 374
    move-result-wide v5

    .line 375
    sub-long v5, v5, v26

    .line 376
    .line 377
    long-to-int v0, v5

    .line 378
    const/16 v18, 0x0

    .line 379
    .line 380
    move/from16 v19, v0

    .line 381
    .line 382
    move-wide/from16 v20, v24

    .line 383
    .line 384
    invoke-virtual/range {v17 .. v23}, Lcom/google/android/gms/internal/ads/bD;->o(IIJJ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 385
    .line 386
    .line 387
    :cond_5
    :goto_5
    const/4 v9, 0x0

    .line 388
    goto/16 :goto_7

    .line 389
    .line 390
    :catch_2
    move-exception v0

    .line 391
    move-wide/from16 v20, v24

    .line 392
    .line 393
    :goto_6
    iget-object v5, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 394
    .line 395
    check-cast v5, Lc4/l0;

    .line 396
    .line 397
    iget-object v5, v5, Lc4/l0;->O:Lc4/T;

    .line 398
    .line 399
    invoke-static {v5}, Lc4/l0;->k(Lc4/s0;)V

    .line 400
    .line 401
    .line 402
    const-string v6, "Failed to send event to the service"

    .line 403
    .line 404
    iget-object v5, v5, Lc4/T;->L:Lc4/Q;

    .line 405
    .line 406
    invoke-virtual {v5, v0, v6}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    if-eqz v10, :cond_5

    .line 410
    .line 411
    cmp-long v0, v20, v8

    .line 412
    .line 413
    if-eqz v0, :cond_5

    .line 414
    .line 415
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 416
    .line 417
    check-cast v0, Lc4/l0;

    .line 418
    .line 419
    sget-object v5, Lcom/google/android/gms/internal/ads/bD;->K:Lcom/google/android/gms/internal/ads/bD;

    .line 420
    .line 421
    if-nez v5, :cond_6

    .line 422
    .line 423
    new-instance v5, Lcom/google/android/gms/internal/ads/bD;

    .line 424
    .line 425
    iget-object v6, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 426
    .line 427
    invoke-direct {v5, v6, v0}, Lcom/google/android/gms/internal/ads/bD;-><init>(Landroid/content/Context;Lc4/l0;)V

    .line 428
    .line 429
    .line 430
    sput-object v5, Lcom/google/android/gms/internal/ads/bD;->K:Lcom/google/android/gms/internal/ads/bD;

    .line 431
    .line 432
    :cond_6
    sget-object v17, Lcom/google/android/gms/internal/ads/bD;->K:Lcom/google/android/gms/internal/ads/bD;

    .line 433
    .line 434
    iget-object v5, v0, Lc4/l0;->T:LP3/b;

    .line 435
    .line 436
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    .line 438
    .line 439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 440
    .line 441
    .line 442
    move-result-wide v22

    .line 443
    iget-object v0, v0, Lc4/l0;->T:LP3/b;

    .line 444
    .line 445
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    .line 447
    .line 448
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 449
    .line 450
    .line 451
    move-result-wide v5

    .line 452
    sub-long v5, v5, v26

    .line 453
    .line 454
    long-to-int v0, v5

    .line 455
    const/16 v18, 0xd

    .line 456
    .line 457
    move/from16 v19, v0

    .line 458
    .line 459
    invoke-virtual/range {v17 .. v23}, Lcom/google/android/gms/internal/ads/bD;->o(IIJJ)V

    .line 460
    .line 461
    .line 462
    goto :goto_5

    .line 463
    :cond_7
    instance-of v0, v5, Lc4/F1;

    .line 464
    .line 465
    if-eqz v0, :cond_8

    .line 466
    .line 467
    :try_start_3
    check-cast v5, Lc4/F1;

    .line 468
    .line 469
    invoke-interface {v2, v5, v3}, Lc4/G;->b0(Lc4/F1;Lc4/J1;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 470
    .line 471
    .line 472
    goto :goto_5

    .line 473
    :catch_3
    move-exception v0

    .line 474
    iget-object v5, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 475
    .line 476
    check-cast v5, Lc4/l0;

    .line 477
    .line 478
    iget-object v5, v5, Lc4/l0;->O:Lc4/T;

    .line 479
    .line 480
    invoke-static {v5}, Lc4/l0;->k(Lc4/s0;)V

    .line 481
    .line 482
    .line 483
    const-string v6, "Failed to send user property to the service"

    .line 484
    .line 485
    iget-object v5, v5, Lc4/T;->L:Lc4/Q;

    .line 486
    .line 487
    invoke-virtual {v5, v0, v6}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    goto :goto_5

    .line 491
    :cond_8
    instance-of v0, v5, Lc4/f;

    .line 492
    .line 493
    if-eqz v0, :cond_9

    .line 494
    .line 495
    :try_start_4
    check-cast v5, Lc4/f;

    .line 496
    .line 497
    invoke-interface {v2, v5, v3}, Lc4/G;->o2(Lc4/f;Lc4/J1;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 498
    .line 499
    .line 500
    goto :goto_5

    .line 501
    :catch_4
    move-exception v0

    .line 502
    iget-object v5, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 503
    .line 504
    check-cast v5, Lc4/l0;

    .line 505
    .line 506
    iget-object v5, v5, Lc4/l0;->O:Lc4/T;

    .line 507
    .line 508
    invoke-static {v5}, Lc4/l0;->k(Lc4/s0;)V

    .line 509
    .line 510
    .line 511
    const-string v6, "Failed to send conditional user property to the service"

    .line 512
    .line 513
    iget-object v5, v5, Lc4/T;->L:Lc4/Q;

    .line 514
    .line 515
    invoke-virtual {v5, v0, v6}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    goto/16 :goto_5

    .line 519
    .line 520
    :cond_9
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 521
    .line 522
    check-cast v0, Lc4/l0;

    .line 523
    .line 524
    iget-object v8, v0, Lc4/l0;->M:Lc4/h;

    .line 525
    .line 526
    const/4 v9, 0x0

    .line 527
    invoke-virtual {v8, v9, v6}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 528
    .line 529
    .line 530
    move-result v6

    .line 531
    if-eqz v6, :cond_a

    .line 532
    .line 533
    instance-of v6, v5, Lc4/t;

    .line 534
    .line 535
    if-eqz v6, :cond_a

    .line 536
    .line 537
    :try_start_5
    check-cast v5, Lc4/t;

    .line 538
    .line 539
    invoke-virtual {v5}, Lc4/t;->i()Landroid/os/Bundle;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    invoke-interface {v2, v0, v3}, Lc4/G;->b1(Landroid/os/Bundle;Lc4/J1;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 544
    .line 545
    .line 546
    goto :goto_7

    .line 547
    :catch_5
    move-exception v0

    .line 548
    iget-object v5, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 549
    .line 550
    check-cast v5, Lc4/l0;

    .line 551
    .line 552
    iget-object v5, v5, Lc4/l0;->O:Lc4/T;

    .line 553
    .line 554
    invoke-static {v5}, Lc4/l0;->k(Lc4/s0;)V

    .line 555
    .line 556
    .line 557
    const-string v6, "Failed to send default event parameters to the service"

    .line 558
    .line 559
    iget-object v5, v5, Lc4/T;->L:Lc4/Q;

    .line 560
    .line 561
    invoke-virtual {v5, v0, v6}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    goto :goto_7

    .line 565
    :cond_a
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 566
    .line 567
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 568
    .line 569
    .line 570
    const-string v5, "Discarding data. Unrecognized parcel type."

    .line 571
    .line 572
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 573
    .line 574
    invoke-virtual {v0, v5}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    :goto_7
    add-int/lit8 v14, v14, 0x1

    .line 578
    .line 579
    move-object v0, v3

    .line 580
    move-object v12, v9

    .line 581
    move-object/from16 v9, v16

    .line 582
    .line 583
    move/from16 v8, v59

    .line 584
    .line 585
    const/16 v6, 0x64

    .line 586
    .line 587
    move-object/from16 v3, p2

    .line 588
    .line 589
    goto/16 :goto_2

    .line 590
    .line 591
    :cond_b
    move/from16 v59, v8

    .line 592
    .line 593
    add-int/lit8 v7, v7, 0x1

    .line 594
    .line 595
    move-object/from16 v3, p2

    .line 596
    .line 597
    const/16 v6, 0x64

    .line 598
    .line 599
    goto/16 :goto_0

    .line 600
    .line 601
    :cond_c
    return-void
.end method

.method public final u(Lc4/f;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc4/B;->n()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lc4/l0;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lc4/l0;

    .line 17
    .line 18
    invoke-virtual {v0}, Lc4/l0;->o()Lc4/N;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lc4/l0;

    .line 25
    .line 26
    iget-object v2, v1, Lc4/l0;->R:Lc4/I1;

    .line 27
    .line 28
    invoke-static {v2}, Lc4/l0;->i(Lc4/s0;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lc4/I1;->o0(Landroid/os/Parcelable;)[B

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    array-length v3, v2

    .line 39
    const/high16 v4, 0x20000

    .line 40
    .line 41
    if-le v3, v4, :cond_0

    .line 42
    .line 43
    iget-object v0, v1, Lc4/l0;->O:Lc4/T;

    .line 44
    .line 45
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 46
    .line 47
    .line 48
    const-string v1, "Conditional user property too long for local database. Sending directly to service"

    .line 49
    .line 50
    iget-object v0, v0, Lc4/T;->M:Lc4/Q;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    const/4 v4, 0x0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 v1, 0x2

    .line 59
    invoke-virtual {v0, v1, v2}, Lc4/N;->u(I[B)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    move v4, v0

    .line 64
    :goto_0
    new-instance v5, Lc4/f;

    .line 65
    .line 66
    invoke-direct {v5, p1}, Lc4/f;-><init>(Lc4/f;)V

    .line 67
    .line 68
    .line 69
    const/4 p1, 0x1

    .line 70
    invoke-virtual {p0, p1}, Lc4/d1;->B(Z)Lc4/J1;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    new-instance p1, LE1/N;

    .line 75
    .line 76
    const/4 v6, 0x3

    .line 77
    move-object v1, p1

    .line 78
    move-object v2, p0

    .line 79
    invoke-direct/range {v1 .. v6}, LE1/N;-><init>(Lc4/d1;Lc4/J1;ZLM3/a;I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lc4/d1;->E(Ljava/lang/Runnable;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final w(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc4/B;->n()V

    .line 5
    .line 6
    .line 7
    new-instance v4, Lc4/t;

    .line 8
    .line 9
    invoke-direct {v4, p1}, Lc4/t;-><init>(Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lc4/d1;->F()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lc4/l0;

    .line 18
    .line 19
    iget-object v0, v0, Lc4/l0;->M:Lc4/h;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    sget-object v2, Lc4/E;->m1:Lc4/D;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Lc4/l0;

    .line 34
    .line 35
    invoke-virtual {v0}, Lc4/l0;->o()Lc4/N;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v2, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v2, Lc4/l0;

    .line 42
    .line 43
    iget-object v3, v2, Lc4/l0;->R:Lc4/I1;

    .line 44
    .line 45
    invoke-static {v3}, Lc4/l0;->i(Lc4/s0;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static {v4}, Lc4/I1;->o0(Landroid/os/Parcelable;)[B

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 56
    .line 57
    if-nez v3, :cond_0

    .line 58
    .line 59
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 60
    .line 61
    .line 62
    const-string v0, "Null default event parameters; not writing to database"

    .line 63
    .line 64
    iget-object v2, v2, Lc4/T;->M:Lc4/Q;

    .line 65
    .line 66
    invoke-virtual {v2, v0}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    array-length v5, v3

    .line 71
    const/high16 v6, 0x20000

    .line 72
    .line 73
    if-le v5, v6, :cond_1

    .line 74
    .line 75
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 76
    .line 77
    .line 78
    const-string v0, "Default event parameters too long for local database. Sending directly to service"

    .line 79
    .line 80
    iget-object v2, v2, Lc4/T;->M:Lc4/Q;

    .line 81
    .line 82
    invoke-virtual {v2, v0}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    const/4 v2, 0x4

    .line 87
    invoke-virtual {v0, v2, v3}, Lc4/N;->u(I[B)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    const/4 v0, 0x1

    .line 94
    const/4 v3, 0x1

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    :goto_0
    const/4 v3, 0x0

    .line 97
    :goto_1
    invoke-virtual {p0, v1}, Lc4/d1;->B(Z)Lc4/J1;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    new-instance v6, LY/f;

    .line 102
    .line 103
    move-object v0, v6

    .line 104
    move-object v1, p0

    .line 105
    move-object v5, p1

    .line 106
    invoke-direct/range {v0 .. v5}, LY/f;-><init>(Lc4/d1;Lc4/J1;ZLc4/t;Landroid/os/Bundle;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v6}, Lc4/d1;->E(Ljava/lang/Runnable;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public final x()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc4/B;->n()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lc4/d1;->J:Lc4/G;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public final y()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc4/B;->n()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lc4/d1;->A()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lc4/l0;

    .line 17
    .line 18
    iget-object v0, v0, Lc4/l0;->R:Lc4/I1;

    .line 19
    .line 20
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lc4/I1;->v0()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sget-object v2, Lc4/E;->J0:Lc4/D;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v2, v3}, Lc4/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-lt v0, v2, :cond_0

    .line 41
    .line 42
    return v1

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    return v0

    .line 45
    :cond_1
    return v1
.end method

.method public final z()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc4/B;->n()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lc4/d1;->A()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lc4/l0;

    .line 17
    .line 18
    iget-object v0, v0, Lc4/l0;->R:Lc4/I1;

    .line 19
    .line 20
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lc4/I1;->v0()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const v2, 0x3ae30

    .line 28
    .line 29
    .line 30
    if-lt v0, v2, :cond_0

    .line 31
    .line 32
    return v1

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    return v0

    .line 35
    :cond_1
    return v1
.end method
