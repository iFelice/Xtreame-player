.class public final synthetic Lcom/google/android/gms/internal/ads/om;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:LD4/b;

.field public final synthetic b:LD4/b;

.field public final synthetic c:LD4/b;

.field public final synthetic d:LD4/b;

.field public final synthetic e:LD4/b;

.field public final synthetic f:Lorg/json/JSONObject;

.field public final synthetic g:LD4/b;

.field public final synthetic h:LD4/b;

.field public final synthetic i:LD4/b;

.field public final synthetic j:LD4/b;

.field public final synthetic k:LD4/b;


# direct methods
.method public synthetic constructor <init>(LD4/b;LD4/b;LD4/b;LD4/b;LD4/b;Lorg/json/JSONObject;LD4/b;LD4/b;LD4/b;LD4/b;LD4/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/om;->a:LD4/b;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/om;->b:LD4/b;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/om;->c:LD4/b;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/om;->d:LD4/b;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/om;->e:LD4/b;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/om;->f:Lorg/json/JSONObject;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/om;->g:LD4/b;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/om;->h:LD4/b;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/om;->i:LD4/b;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/om;->j:LD4/b;

    .line 23
    .line 24
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/om;->k:LD4/b;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/om;->a:LD4/b;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/Il;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/om;->b:LD4/b;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/util/List;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Il;->e:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/om;->c:LD4/b;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/google/android/gms/internal/ads/T8;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Il;->k(Lcom/google/android/gms/internal/ads/T8;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/om;->d:LD4/b;

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/google/android/gms/internal/ads/T8;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Il;->n(Lcom/google/android/gms/internal/ads/T8;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/om;->e:LD4/b;

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lcom/google/android/gms/internal/ads/P8;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Il;->h(Lcom/google/android/gms/internal/ads/P8;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/om;->f:Lorg/json/JSONObject;

    .line 55
    .line 56
    const-string v2, "mute"

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-nez v2, :cond_0

    .line 63
    .line 64
    sget-object v2, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 65
    .line 66
    sget-object v2, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_0
    const-string v3, "reasons"

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    if-eqz v2, :cond_4

    .line 76
    .line 77
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-gtz v3, :cond_1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    const/4 v4, 0x0

    .line 90
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-ge v4, v5, :cond_3

    .line 95
    .line 96
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/um;->e(Lorg/json/JSONObject;)Ll3/K0;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    if-eqz v5, :cond_2

    .line 105
    .line 106
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/uA;->t(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/uA;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    goto :goto_2

    .line 117
    :cond_4
    :goto_1
    sget-object v2, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 118
    .line 119
    sget-object v2, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 120
    .line 121
    :goto_2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/Il;->o(Lcom/google/android/gms/internal/ads/uA;)V

    .line 122
    .line 123
    .line 124
    const-string v2, "mute"

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    if-nez v1, :cond_5

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_5
    const-string v2, "default_reason"

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    if-eqz v1, :cond_6

    .line 140
    .line 141
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/um;->e(Lorg/json/JSONObject;)Ll3/K0;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    goto :goto_4

    .line 146
    :cond_6
    :goto_3
    const/4 v1, 0x0

    .line 147
    :goto_4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Il;->j(Ll3/K0;)V

    .line 148
    .line 149
    .line 150
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/om;->g:LD4/b;

    .line 151
    .line 152
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    check-cast v1, Lcom/google/android/gms/internal/ads/Ef;

    .line 157
    .line 158
    if-eqz v1, :cond_7

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Il;->y(Lcom/google/android/gms/internal/ads/Ef;)V

    .line 161
    .line 162
    .line 163
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ef;->j()Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/Il;->x(Landroid/view/View;)V

    .line 168
    .line 169
    .line 170
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ef;->zzq()Lcom/google/android/gms/internal/ads/Uf;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Il;->w(Lcom/google/android/gms/internal/ads/Uf;)V

    .line 175
    .line 176
    .line 177
    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/om;->h:LD4/b;

    .line 178
    .line 179
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/om;->i:LD4/b;

    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Il;->E()Landroid/os/Bundle;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    check-cast v1, Landroid/os/Bundle;

    .line 190
    .line 191
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 192
    .line 193
    .line 194
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    check-cast v1, Lcom/google/android/gms/internal/ads/Ef;

    .line 199
    .line 200
    if-eqz v1, :cond_8

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Il;->m(Lcom/google/android/gms/internal/ads/Ef;)V

    .line 203
    .line 204
    .line 205
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ef;->j()Landroid/view/View;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Il;->z(Landroid/view/View;)V

    .line 210
    .line 211
    .line 212
    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/om;->j:LD4/b;

    .line 213
    .line 214
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->P4:Lcom/google/android/gms/internal/ads/J7;

    .line 215
    .line 216
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 217
    .line 218
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 219
    .line 220
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    check-cast v2, Ljava/lang/Boolean;

    .line 225
    .line 226
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    if-eqz v2, :cond_9

    .line 231
    .line 232
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Il;->q(LD4/b;)V

    .line 233
    .line 234
    .line 235
    new-instance v1, Lcom/google/android/gms/internal/ads/te;

    .line 236
    .line 237
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/te;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Il;->s(Lcom/google/android/gms/internal/ads/te;)V

    .line 241
    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_9
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    check-cast v1, Lcom/google/android/gms/internal/ads/Ef;

    .line 249
    .line 250
    if-eqz v1, :cond_a

    .line 251
    .line 252
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Il;->p(Lcom/google/android/gms/internal/ads/Ef;)V

    .line 253
    .line 254
    .line 255
    :cond_a
    :goto_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/om;->k:LD4/b;

    .line 256
    .line 257
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    check-cast v1, Ljava/util/List;

    .line 262
    .line 263
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-eqz v2, :cond_c

    .line 272
    .line 273
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    check-cast v2, Lcom/google/android/gms/internal/ads/wm;

    .line 278
    .line 279
    iget v3, v2, Lcom/google/android/gms/internal/ads/wm;->a:I

    .line 280
    .line 281
    const/4 v4, 0x1

    .line 282
    if-eq v3, v4, :cond_b

    .line 283
    .line 284
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/wm;->b:Ljava/lang/String;

    .line 285
    .line 286
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/wm;->d:Lcom/google/android/gms/internal/ads/K8;

    .line 287
    .line 288
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/Il;->l(Ljava/lang/String;Lcom/google/android/gms/internal/ads/K8;)V

    .line 289
    .line 290
    .line 291
    goto :goto_6

    .line 292
    :cond_b
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/wm;->b:Ljava/lang/String;

    .line 293
    .line 294
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/wm;->c:Ljava/lang/String;

    .line 295
    .line 296
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/Il;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    goto :goto_6

    .line 300
    :cond_c
    return-object v0

    .line 301
    :catchall_0
    move-exception v1

    .line 302
    monitor-exit v0

    .line 303
    throw v1
.end method
