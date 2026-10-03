.class public final LE1/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public H:Z

.field public final I:Ljava/lang/Object;

.field public final J:Ljava/lang/Object;

.field public final K:Ljava/lang/Object;


# direct methods
.method public constructor <init>(La6/f;Lc6/h;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 6
    iput v0, p0, LE1/N;->G:I

    .line 7
    iput-object p1, p0, LE1/N;->K:Ljava/lang/Object;

    .line 8
    new-instance p1, Lm2/c;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {p1, v0}, Lm2/c;-><init>(Ljava/util/logging/Level;)V

    iput-object p1, p0, LE1/N;->I:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, LE1/N;->H:Z

    .line 10
    iput-object p2, p0, LE1/N;->J:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lc4/d1;Lc4/J1;ZLM3/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, LE1/N;->G:I

    iput-object p2, p0, LE1/N;->I:Ljava/lang/Object;

    iput-boolean p3, p0, LE1/N;->H:Z

    iput-object p4, p0, LE1/N;->J:Ljava/lang/Object;

    iput-object p1, p0, LE1/N;->K:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc4/d1;Lc4/J1;ZLc4/F1;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, LE1/N;->G:I

    .line 4
    iput-object p2, p0, LE1/N;->I:Ljava/lang/Object;

    iput-boolean p3, p0, LE1/N;->H:Z

    iput-object p4, p0, LE1/N;->J:Ljava/lang/Object;

    iput-object p1, p0, LE1/N;->K:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, LE1/N;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "OkHttpClientTransport"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    const/4 v0, 0x0

    .line 24
    :try_start_0
    iget-object v1, p0, LE1/N;->J:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Lc6/h;

    .line 27
    .line 28
    invoke-virtual {v1, p0}, Lc6/h;->k(LE1/N;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, LE1/N;->K:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, La6/f;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v1, p0, LE1/N;->K:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, La6/f;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :catchall_0
    move-exception v1

    .line 52
    :try_start_1
    iget-object v2, p0, LE1/N;->K:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v2, La6/f;

    .line 55
    .line 56
    sget-object v3, Lc6/a;->I:Lc6/a;

    .line 57
    .line 58
    sget-object v4, LY5/B;->j:LY5/B;

    .line 59
    .line 60
    const-string v5, "error in frame handler"

    .line 61
    .line 62
    invoke-virtual {v4, v5}, LY5/B;->f(Ljava/lang/String;)LY5/B;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v4, v1}, LY5/B;->e(Ljava/lang/Throwable;)LY5/B;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    sget-object v4, La6/f;->d:Ljava/util/Map;

    .line 71
    .line 72
    invoke-virtual {v2, v0, v3, v1}, La6/f;->p(ILc6/a;LY5/B;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    .line 74
    .line 75
    :try_start_2
    iget-object v0, p0, LE1/N;->J:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v0, Lc6/h;

    .line 78
    .line 79
    invoke-virtual {v0}, Lc6/h;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :catch_0
    move-exception v0

    .line 84
    goto :goto_1

    .line 85
    :catch_1
    move-exception v0

    .line 86
    goto :goto_2

    .line 87
    :goto_1
    const-string v1, "bio == null"

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_1

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_1
    throw v0

    .line 101
    :goto_2
    sget-object v1, La6/f;->e:Ljava/util/logging/Logger;

    .line 102
    .line 103
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 104
    .line 105
    const-string v3, "Exception closing frame reader"

    .line 106
    .line 107
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    :goto_3
    iget-object v0, p0, LE1/N;->K:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v0, La6/f;

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    const/4 v0, 0x0

    .line 118
    throw v0

    .line 119
    :catchall_1
    :try_start_3
    iget-object v0, p0, LE1/N;->J:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v0, Lc6/h;

    .line 122
    .line 123
    invoke-virtual {v0}, Lc6/h;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 124
    .line 125
    .line 126
    goto :goto_6

    .line 127
    :catch_2
    move-exception v0

    .line 128
    goto :goto_4

    .line 129
    :catch_3
    move-exception v0

    .line 130
    goto :goto_5

    .line 131
    :goto_4
    const-string v1, "bio == null"

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-nez v1, :cond_2

    .line 142
    .line 143
    throw v0

    .line 144
    :goto_5
    sget-object v1, La6/f;->e:Ljava/util/logging/Logger;

    .line 145
    .line 146
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 147
    .line 148
    const-string v3, "Exception closing frame reader"

    .line 149
    .line 150
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    :cond_2
    :goto_6
    iget-object v0, p0, LE1/N;->K:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v0, La6/f;

    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    const/4 v0, 0x0

    .line 161
    throw v0

    .line 162
    :pswitch_0
    iget-object v0, p0, LE1/N;->K:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v0, Lc4/d1;

    .line 165
    .line 166
    iget-object v2, v0, Lc4/d1;->J:Lc4/G;

    .line 167
    .line 168
    if-nez v2, :cond_3

    .line 169
    .line 170
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v0, Lc4/l0;

    .line 173
    .line 174
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 175
    .line 176
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 177
    .line 178
    .line 179
    const-string v1, "Discarding data. Failed to send conditional user property to service"

    .line 180
    .line 181
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    goto :goto_8

    .line 187
    :cond_3
    iget-object v3, p0, LE1/N;->I:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v3, Lc4/J1;

    .line 190
    .line 191
    invoke-static {v3}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    iget-boolean v4, p0, LE1/N;->H:Z

    .line 195
    .line 196
    if-eqz v4, :cond_4

    .line 197
    .line 198
    goto :goto_7

    .line 199
    :cond_4
    iget-object v1, p0, LE1/N;->J:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v1, Lc4/f;

    .line 202
    .line 203
    :goto_7
    invoke-virtual {v0, v2, v1, v3}, Lc4/d1;->t(Lc4/G;LM3/a;Lc4/J1;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Lc4/d1;->D()V

    .line 207
    .line 208
    .line 209
    :goto_8
    return-void

    .line 210
    :pswitch_1
    iget-object v0, p0, LE1/N;->K:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v0, Lc4/d1;

    .line 213
    .line 214
    iget-object v2, v0, Lc4/d1;->J:Lc4/G;

    .line 215
    .line 216
    if-nez v2, :cond_5

    .line 217
    .line 218
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast v0, Lc4/l0;

    .line 221
    .line 222
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 223
    .line 224
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 225
    .line 226
    .line 227
    const-string v1, "Discarding data. Failed to send event to service"

    .line 228
    .line 229
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    goto :goto_a

    .line 235
    :cond_5
    iget-object v3, p0, LE1/N;->I:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast v3, Lc4/J1;

    .line 238
    .line 239
    invoke-static {v3}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    iget-boolean v4, p0, LE1/N;->H:Z

    .line 243
    .line 244
    if-eqz v4, :cond_6

    .line 245
    .line 246
    goto :goto_9

    .line 247
    :cond_6
    iget-object v1, p0, LE1/N;->J:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast v1, Lc4/u;

    .line 250
    .line 251
    :goto_9
    invoke-virtual {v0, v2, v1, v3}, Lc4/d1;->t(Lc4/G;LM3/a;Lc4/J1;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0}, Lc4/d1;->D()V

    .line 255
    .line 256
    .line 257
    :goto_a
    return-void

    .line 258
    :pswitch_2
    iget-object v0, p0, LE1/N;->K:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v0, Lc4/d1;

    .line 261
    .line 262
    iget-object v2, v0, Lc4/d1;->J:Lc4/G;

    .line 263
    .line 264
    if-nez v2, :cond_7

    .line 265
    .line 266
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast v0, Lc4/l0;

    .line 269
    .line 270
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 271
    .line 272
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 273
    .line 274
    .line 275
    const-string v1, "Discarding data. Failed to set user property"

    .line 276
    .line 277
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 278
    .line 279
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    goto :goto_c

    .line 283
    :cond_7
    iget-object v3, p0, LE1/N;->I:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast v3, Lc4/J1;

    .line 286
    .line 287
    invoke-static {v3}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    iget-boolean v4, p0, LE1/N;->H:Z

    .line 291
    .line 292
    if-eqz v4, :cond_8

    .line 293
    .line 294
    goto :goto_b

    .line 295
    :cond_8
    iget-object v1, p0, LE1/N;->J:Ljava/lang/Object;

    .line 296
    .line 297
    check-cast v1, Lc4/F1;

    .line 298
    .line 299
    :goto_b
    invoke-virtual {v0, v2, v1, v3}, Lc4/d1;->t(Lc4/G;LM3/a;Lc4/J1;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0}, Lc4/d1;->D()V

    .line 303
    .line 304
    .line 305
    :goto_c
    return-void

    .line 306
    nop

    .line 307
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
