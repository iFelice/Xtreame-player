.class public abstract LL1/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/adservices/topics/TopicsManager;


# direct methods
.method public constructor <init>(Landroid/adservices/topics/TopicsManager;)V
    .locals 1

    .line 1
    const-string v0, "mTopicsManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, LL1/i;->a:Landroid/adservices/topics/TopicsManager;

    .line 10
    .line 11
    return-void
.end method

.method public static b(LL1/i;LL1/b;Lx6/e;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LL1/i;",
            "LL1/b;",
            "Lx6/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, LL1/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, LL1/h;

    .line 7
    .line 8
    iget v1, v0, LL1/h;->M:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, LL1/h;->M:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, LL1/h;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, LL1/h;-><init>(LL1/i;Lx6/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, LL1/h;->K:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Ly6/a;->G:Ly6/a;

    .line 28
    .line 29
    iget v2, v0, LL1/h;->M:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    iget-object p0, v0, LL1/h;->J:LL1/i;

    .line 37
    .line 38
    invoke-static {p2}, Lz4/q0;->H(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0

    .line 51
    :cond_2
    invoke-static {p2}, Lz4/q0;->H(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    move-object p2, p0

    .line 55
    check-cast p2, LL1/g;

    .line 56
    .line 57
    iget p2, p2, LL1/g;->b:I

    .line 58
    .line 59
    const-string v2, "Builder()\n            .s\u2026ion)\n            .build()"

    .line 60
    .line 61
    const-string v4, "request"

    .line 62
    .line 63
    packed-switch p2, :pswitch_data_0

    .line 64
    .line 65
    .line 66
    :pswitch_0
    invoke-static {p1, v4}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {}, LA0/F;->f()Landroid/adservices/topics/GetTopicsRequest$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    iget-object p1, p1, LL1/b;->a:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {p2, p1}, LA0/F;->g(Landroid/adservices/topics/GetTopicsRequest$Builder;Ljava/lang/String;)Landroid/adservices/topics/GetTopicsRequest$Builder;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p1}, LA0/F;->i(Landroid/adservices/topics/GetTopicsRequest$Builder;)Landroid/adservices/topics/GetTopicsRequest;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string p2, "Builder()\n            .s\u2026ame)\n            .build()"

    .line 84
    .line 85
    invoke-static {p1, p2}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :pswitch_1
    invoke-static {p1, v4}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-static {}, LA0/F;->f()Landroid/adservices/topics/GetTopicsRequest$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    iget-object v4, p1, LL1/b;->a:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {p2, v4}, LA0/F;->g(Landroid/adservices/topics/GetTopicsRequest$Builder;Ljava/lang/String;)Landroid/adservices/topics/GetTopicsRequest$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    iget-boolean p1, p1, LL1/b;->b:Z

    .line 103
    .line 104
    invoke-static {p2, p1}, LA0/F;->h(Landroid/adservices/topics/GetTopicsRequest$Builder;Z)Landroid/adservices/topics/GetTopicsRequest$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {p1}, LA0/F;->i(Landroid/adservices/topics/GetTopicsRequest$Builder;)Landroid/adservices/topics/GetTopicsRequest;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p1, v2}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :pswitch_2
    invoke-static {p1, v4}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-static {}, LA0/F;->f()Landroid/adservices/topics/GetTopicsRequest$Builder;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    iget-object v4, p1, LL1/b;->a:Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {p2, v4}, LA0/F;->g(Landroid/adservices/topics/GetTopicsRequest$Builder;Ljava/lang/String;)Landroid/adservices/topics/GetTopicsRequest$Builder;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    iget-boolean p1, p1, LL1/b;->b:Z

    .line 130
    .line 131
    invoke-static {p2, p1}, LA0/F;->h(Landroid/adservices/topics/GetTopicsRequest$Builder;Z)Landroid/adservices/topics/GetTopicsRequest$Builder;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {p1}, LA0/F;->i(Landroid/adservices/topics/GetTopicsRequest$Builder;)Landroid/adservices/topics/GetTopicsRequest;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-static {p1, v2}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :pswitch_3
    invoke-static {p1, v4}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-static {}, LA0/F;->f()Landroid/adservices/topics/GetTopicsRequest$Builder;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    iget-object v4, p1, LL1/b;->a:Ljava/lang/String;

    .line 151
    .line 152
    invoke-static {p2, v4}, LA0/F;->g(Landroid/adservices/topics/GetTopicsRequest$Builder;Ljava/lang/String;)Landroid/adservices/topics/GetTopicsRequest$Builder;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    iget-boolean p1, p1, LL1/b;->b:Z

    .line 157
    .line 158
    invoke-static {p2, p1}, LA0/F;->h(Landroid/adservices/topics/GetTopicsRequest$Builder;Z)Landroid/adservices/topics/GetTopicsRequest$Builder;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-static {p1}, LA0/F;->i(Landroid/adservices/topics/GetTopicsRequest$Builder;)Landroid/adservices/topics/GetTopicsRequest;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-static {p1, v2}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :pswitch_4
    invoke-static {p1, v4}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-static {}, LA0/F;->f()Landroid/adservices/topics/GetTopicsRequest$Builder;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    iget-object v4, p1, LL1/b;->a:Ljava/lang/String;

    .line 178
    .line 179
    invoke-static {p2, v4}, LA0/F;->g(Landroid/adservices/topics/GetTopicsRequest$Builder;Ljava/lang/String;)Landroid/adservices/topics/GetTopicsRequest$Builder;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    iget-boolean p1, p1, LL1/b;->b:Z

    .line 184
    .line 185
    invoke-static {p2, p1}, LA0/F;->h(Landroid/adservices/topics/GetTopicsRequest$Builder;Z)Landroid/adservices/topics/GetTopicsRequest$Builder;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-static {p1}, LA0/F;->i(Landroid/adservices/topics/GetTopicsRequest$Builder;)Landroid/adservices/topics/GetTopicsRequest;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-static {p1, v2}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    :goto_1
    iput-object p0, v0, LL1/h;->J:LL1/i;

    .line 197
    .line 198
    iput v3, v0, LL1/h;->M:I

    .line 199
    .line 200
    new-instance p2, LJ6/d;

    .line 201
    .line 202
    invoke-static {v0}, LS3/e;->h(Lx6/e;)Lx6/e;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-direct {p2, v0}, LJ6/d;-><init>(Lx6/e;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2}, LJ6/d;->l()V

    .line 210
    .line 211
    .line 212
    new-instance v0, Lm/a;

    .line 213
    .line 214
    const/16 v2, 0xb

    .line 215
    .line 216
    invoke-direct {v0, v2}, Lm/a;-><init>(I)V

    .line 217
    .line 218
    .line 219
    new-instance v2, LJ/d;

    .line 220
    .line 221
    invoke-direct {v2, p2}, LJ/d;-><init>(LJ6/d;)V

    .line 222
    .line 223
    .line 224
    iget-object v3, p0, LL1/i;->a:Landroid/adservices/topics/TopicsManager;

    .line 225
    .line 226
    invoke-static {v3, p1, v0, v2}, LL1/d;->u(Landroid/adservices/topics/TopicsManager;Landroid/adservices/topics/GetTopicsRequest;Lm/a;Landroid/os/OutcomeReceiver;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p2}, LJ6/d;->k()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    if-ne p2, v1, :cond_3

    .line 234
    .line 235
    return-object v1

    .line 236
    :cond_3
    :goto_2
    invoke-static {p2}, LL1/d;->c(Ljava/lang/Object;)Landroid/adservices/topics/GetTopicsResponse;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    check-cast p0, LL1/g;

    .line 241
    .line 242
    iget p0, p0, LL1/g;->b:I

    .line 243
    .line 244
    const-string p2, "response"

    .line 245
    .line 246
    packed-switch p0, :pswitch_data_1

    .line 247
    .line 248
    .line 249
    :pswitch_5
    invoke-static {p1, p2}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    new-instance p0, Ljava/util/ArrayList;

    .line 253
    .line 254
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .line 256
    .line 257
    invoke-static {p1}, LA0/F;->p(Landroid/adservices/topics/GetTopicsResponse;)Ljava/util/List;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 266
    .line 267
    .line 268
    move-result p2

    .line 269
    if-eqz p2, :cond_4

    .line 270
    .line 271
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    invoke-static {p2}, LA0/F;->j(Ljava/lang/Object;)Landroid/adservices/topics/Topic;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    new-instance v6, LL1/f;

    .line 280
    .line 281
    invoke-static {p2}, LA0/F;->c(Landroid/adservices/topics/Topic;)J

    .line 282
    .line 283
    .line 284
    move-result-wide v2

    .line 285
    invoke-static {p2}, LA0/F;->z(Landroid/adservices/topics/Topic;)J

    .line 286
    .line 287
    .line 288
    move-result-wide v4

    .line 289
    invoke-static {p2}, LL1/d;->a(Landroid/adservices/topics/Topic;)I

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    move-object v0, v6

    .line 294
    invoke-direct/range {v0 .. v5}, LL1/f;-><init>(IJJ)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    goto :goto_3

    .line 301
    :cond_4
    new-instance p1, LL1/c;

    .line 302
    .line 303
    invoke-direct {p1, p0}, LL1/c;-><init>(Ljava/util/List;)V

    .line 304
    .line 305
    .line 306
    goto :goto_4

    .line 307
    :pswitch_6
    invoke-static {p1, p2}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-static {p1}, LL1/e;->a(Landroid/adservices/topics/GetTopicsResponse;)LL1/c;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    goto :goto_4

    .line 315
    :pswitch_7
    invoke-static {p1, p2}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-static {p1}, LL1/e;->a(Landroid/adservices/topics/GetTopicsResponse;)LL1/c;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    :goto_4
    return-object p1

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public a(LL1/b;Lx6/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LL1/b;",
            "Lx6/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, LL1/i;->b(LL1/i;LL1/b;Lx6/e;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
