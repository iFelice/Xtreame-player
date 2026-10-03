.class public final synthetic Lcom/google/android/gms/internal/ads/Vg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/Wg;

.field public final synthetic I:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Wg;Ljava/lang/Runnable;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/google/android/gms/internal/ads/Vg;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Vg;->H:Lcom/google/android/gms/internal/ads/Wg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Vg;->I:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Vg;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Vg;->I:Ljava/lang/Runnable;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Vg;->H:Lcom/google/android/gms/internal/ads/Wg;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const-string v0, "Adapters must be initialized on the main thread."

    .line 14
    .line 15
    invoke-static {v0}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 19
    .line 20
    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/le;->d()Lo3/L;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lo3/L;->y()Lcom/google/android/gms/internal/ads/ge;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ge;->c:Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :cond_0
    if-eqz v1, :cond_1

    .line 41
    .line 42
    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    const-string v1, "Could not initialize rewarded ads."

    .line 48
    .line 49
    invoke-static {v1, v0}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_4

    .line 53
    .line 54
    :cond_1
    :goto_0
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/Wg;->I:Lcom/google/android/gms/internal/ads/qn;

    .line 55
    .line 56
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/qn;->a:Lcom/google/android/gms/internal/ads/ew;

    .line 57
    .line 58
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ew;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lcom/google/android/gms/internal/ads/cb;

    .line 65
    .line 66
    if-eqz v1, :cond_8

    .line 67
    .line 68
    new-instance v1, Ljava/util/HashMap;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_6

    .line 86
    .line 87
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Lcom/google/android/gms/internal/ads/Za;

    .line 92
    .line 93
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Za;->a:Ljava/util/List;

    .line 94
    .line 95
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_2

    .line 104
    .line 105
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    check-cast v4, Lcom/google/android/gms/internal/ads/Ya;

    .line 110
    .line 111
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/Ya;->b:Ljava/lang/String;

    .line 112
    .line 113
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Ya;->a:Ljava/util/List;

    .line 114
    .line 115
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-eqz v6, :cond_3

    .line 124
    .line 125
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    check-cast v6, Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    if-nez v7, :cond_5

    .line 136
    .line 137
    new-instance v7, Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    :cond_5
    if-eqz v5, :cond_4

    .line 146
    .line 147
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    check-cast v6, Ljava/util/List;

    .line 152
    .line 153
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_6
    new-instance v0, Lorg/json/JSONObject;

    .line 158
    .line 159
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    if-eqz v3, :cond_8

    .line 175
    .line 176
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    check-cast v3, Ljava/util/Map$Entry;

    .line 181
    .line 182
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    check-cast v4, Ljava/lang/String;

    .line 187
    .line 188
    :try_start_1
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/Wg;->J:Lcom/google/android/gms/internal/ads/rq;

    .line 189
    .line 190
    invoke-interface {v5, v0, v4}, Lcom/google/android/gms/internal/ads/rq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/sq;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    if-eqz v5, :cond_7

    .line 195
    .line 196
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/sq;->b:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v6, Lcom/google/android/gms/internal/ads/gw;

    .line 199
    .line 200
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/gw;->a()Z

    .line 201
    .line 202
    .line 203
    move-result v7
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/aw; {:try_start_1 .. :try_end_1} :catch_0

    .line 204
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/gw;->a:Lcom/google/android/gms/internal/ads/eb;

    .line 205
    .line 206
    if-nez v7, :cond_7

    .line 207
    .line 208
    :try_start_2
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/eb;->r()Z

    .line 209
    .line 210
    .line 211
    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 212
    if-eqz v7, :cond_7

    .line 213
    .line 214
    :try_start_3
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/sq;->c:Lcom/google/android/gms/internal/ads/Gj;

    .line 215
    .line 216
    check-cast v5, Lcom/google/android/gms/internal/ads/Oq;

    .line 217
    .line 218
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    check-cast v3, Ljava/util/List;

    .line 223
    .line 224
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/Wg;->G:Landroid/content/Context;
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/aw; {:try_start_3 .. :try_end_3} :catch_0

    .line 225
    .line 226
    :try_start_4
    new-instance v8, LR3/b;

    .line 227
    .line 228
    invoke-direct {v8, v7}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    invoke-interface {v6, v8, v5, v3}, Lcom/google/android/gms/internal/ads/eb;->P0(LR3/a;Lcom/google/android/gms/internal/ads/kd;Ljava/util/List;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 232
    .line 233
    .line 234
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    const-string v5, "Initialized rewarded video mediation adapter "

    .line 240
    .line 241
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-static {v3}, Lp3/h;->b(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    goto :goto_2

    .line 255
    :catch_0
    move-exception v3

    .line 256
    goto :goto_3

    .line 257
    :catchall_1
    move-exception v3

    .line 258
    new-instance v5, Lcom/google/android/gms/internal/ads/aw;

    .line 259
    .line 260
    invoke-direct {v5, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 261
    .line 262
    .line 263
    throw v5

    .line 264
    :catchall_2
    move-exception v3

    .line 265
    new-instance v5, Lcom/google/android/gms/internal/ads/aw;

    .line 266
    .line 267
    invoke-direct {v5, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 268
    .line 269
    .line 270
    throw v5
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/aw; {:try_start_5 .. :try_end_5} :catch_0

    .line 271
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    const-string v6, "Failed to initialize rewarded video mediation adapter \""

    .line 274
    .line 275
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string v4, "\""

    .line 282
    .line 283
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    invoke-static {v4, v3}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    .line 292
    .line 293
    goto :goto_2

    .line 294
    :cond_8
    :goto_4
    return-void

    .line 295
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/se;->e:Lcom/google/android/gms/internal/ads/re;

    .line 296
    .line 297
    new-instance v3, Lcom/google/android/gms/internal/ads/Vg;

    .line 298
    .line 299
    const/4 v4, 0x1

    .line 300
    invoke-direct {v3, v2, v1, v4}, Lcom/google/android/gms/internal/ads/Vg;-><init>(Lcom/google/android/gms/internal/ads/Wg;Ljava/lang/Runnable;I)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/re;->execute(Ljava/lang/Runnable;)V

    .line 304
    .line 305
    .line 306
    return-void

    .line 307
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
