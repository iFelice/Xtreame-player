.class public final synthetic Lo3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lo3/i;


# direct methods
.method public synthetic constructor <init>(Lo3/i;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lo3/b;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lo3/b;->H:Lo3/i;

    .line 7
    .line 8
    return-void
.end method

.method private final a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lo3/b;->H:Lo3/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 7
    .line 8
    iget-object v1, v1, Lk3/l;->m:Lo3/l;

    .line 9
    .line 10
    iget-object v2, v0, Lo3/i;->d:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v3, v0, Lo3/i;->e:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v4, v0, Lo3/i;->f:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1}, Lo3/l;->i()Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    iget-object v0, v0, Lo3/i;->a:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v1, v0, v2, v3}, Lo3/l;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    iget-object v7, v1, Lo3/l;->a:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v7

    .line 29
    :try_start_0
    iput-boolean v6, v1, Lo3/l;->d:Z

    .line 30
    .line 31
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-virtual {v1}, Lo3/l;->i()Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-eqz v6, :cond_1

    .line 37
    .line 38
    if-nez v5, :cond_0

    .line 39
    .line 40
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-nez v5, :cond_0

    .line 45
    .line 46
    invoke-virtual {v1, v0, v3, v4, v2}, Lo3/l;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    const-string v1, "Device is linked for debug signals."

    .line 50
    .line 51
    invoke-static {v1}, Lp3/h;->b(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v1, "The device is successfully linked for troubleshooting."

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    const/4 v3, 0x1

    .line 58
    invoke-static {v1, v0, v2, v3}, Lo3/l;->f(Ljava/lang/String;Landroid/content/Context;ZZ)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v1, v0, v2, v3}, Lo3/l;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lo3/b;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo3/b;->H:Lo3/i;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 12
    .line 13
    iget-object v1, v1, Lk3/l;->m:Lo3/l;

    .line 14
    .line 15
    iget-object v0, v0, Lo3/i;->a:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lo3/l;->b(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    iget-object v0, p0, Lo3/b;->H:Lo3/i;

    .line 22
    .line 23
    iget-object v1, v0, Lo3/i;->a:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lo3/i;->c(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_1
    iget-object v0, p0, Lo3/b;->H:Lo3/i;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 35
    .line 36
    iget-object v1, v1, Lk3/l;->m:Lo3/l;

    .line 37
    .line 38
    iget-object v0, v0, Lo3/i;->a:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lo3/l;->b(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_2
    iget-object v0, p0, Lo3/b;->H:Lo3/i;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 50
    .line 51
    iget-object v2, v1, Lk3/l;->m:Lo3/l;

    .line 52
    .line 53
    iget-object v3, v0, Lo3/i;->a:Landroid/content/Context;

    .line 54
    .line 55
    iget-object v4, v0, Lo3/i;->d:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v0, v0, Lo3/i;->e:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    sget-object v5, Lcom/google/android/gms/internal/ads/Q7;->p4:Lcom/google/android/gms/internal/ads/J7;

    .line 63
    .line 64
    sget-object v6, Ll3/q;->d:Ll3/q;

    .line 65
    .line 66
    iget-object v7, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 67
    .line 68
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    check-cast v5, Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v2, v3, v5, v4, v0}, Lo3/l;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-static {v3, v5, v0}, Lo3/l;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    const/4 v8, 0x1

    .line 91
    if-eqz v7, :cond_0

    .line 92
    .line 93
    const-string v0, "Not linked for in app preview."

    .line 94
    .line 95
    invoke-static {v0}, Lp3/h;->b(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_3

    .line 99
    .line 100
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    .line 105
    .line 106
    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v5, "gct"

    .line 110
    .line 111
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    const-string v9, "status"

    .line 116
    .line 117
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    iput-object v7, v2, Lo3/l;->f:Ljava/lang/String;

    .line 122
    .line 123
    sget-object v7, Lcom/google/android/gms/internal/ads/Q7;->w8:Lcom/google/android/gms/internal/ads/J7;

    .line 124
    .line 125
    iget-object v6, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 126
    .line 127
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    check-cast v6, Ljava/lang/Boolean;

    .line 132
    .line 133
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    const/4 v7, 0x0

    .line 138
    if-eqz v6, :cond_4

    .line 139
    .line 140
    const-string v6, "0"

    .line 141
    .line 142
    iget-object v9, v2, Lo3/l;->f:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    if-nez v6, :cond_1

    .line 149
    .line 150
    const-string v6, "2"

    .line 151
    .line 152
    iget-object v9, v2, Lo3/l;->f:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    if-eqz v6, :cond_2

    .line 159
    .line 160
    :cond_1
    const/4 v6, 0x1

    .line 161
    goto :goto_0

    .line 162
    :cond_2
    const/4 v6, 0x0

    .line 163
    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    goto :goto_2

    .line 166
    :goto_0
    invoke-virtual {v2, v6}, Lo3/l;->e(Z)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 170
    .line 171
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/le;->d()Lo3/L;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    if-nez v6, :cond_3

    .line 176
    .line 177
    const-string v6, ""

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_3
    move-object v6, v4

    .line 181
    :goto_1
    invoke-virtual {v1, v6}, Lo3/L;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .line 183
    .line 184
    :cond_4
    iget-object v1, v2, Lo3/l;->a:Ljava/lang/Object;

    .line 185
    .line 186
    monitor-enter v1

    .line 187
    :try_start_1
    iput-object v5, v2, Lo3/l;->c:Ljava/lang/String;

    .line 188
    .line 189
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    iget-object v1, v2, Lo3/l;->f:Ljava/lang/String;

    .line 191
    .line 192
    const-string v5, "2"

    .line 193
    .line 194
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-eqz v1, :cond_5

    .line 199
    .line 200
    const-string v0, "Creative is not pushed for this device."

    .line 201
    .line 202
    invoke-static {v0}, Lp3/h;->b(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    const-string v0, "There was no creative pushed from DFP to the device."

    .line 206
    .line 207
    invoke-static {v0, v3, v7, v7}, Lo3/l;->f(Ljava/lang/String;Landroid/content/Context;ZZ)V

    .line 208
    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_5
    iget-object v1, v2, Lo3/l;->f:Ljava/lang/String;

    .line 212
    .line 213
    const-string v5, "1"

    .line 214
    .line 215
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-eqz v1, :cond_6

    .line 220
    .line 221
    const-string v1, "The app is not linked for creative preview."

    .line 222
    .line 223
    invoke-static {v1}, Lp3/h;->b(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2, v3, v4, v0}, Lo3/l;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_6
    iget-object v0, v2, Lo3/l;->f:Ljava/lang/String;

    .line 231
    .line 232
    const-string v1, "0"

    .line 233
    .line 234
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-eqz v0, :cond_7

    .line 239
    .line 240
    const-string v0, "Device is linked for in app preview."

    .line 241
    .line 242
    invoke-static {v0}, Lp3/h;->b(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    const-string v0, "The device is successfully linked for creative preview."

    .line 246
    .line 247
    invoke-static {v0, v3, v7, v8}, Lo3/l;->f(Ljava/lang/String;Landroid/content/Context;ZZ)V

    .line 248
    .line 249
    .line 250
    goto :goto_4

    .line 251
    :catchall_0
    move-exception v0

    .line 252
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    throw v0

    .line 254
    :goto_2
    const-string v1, "Fail to get in app preview response json."

    .line 255
    .line 256
    invoke-static {v1, v0}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    .line 258
    .line 259
    :goto_3
    const-string v0, "In-app preview failed to load because of a system error. Please try again later."

    .line 260
    .line 261
    invoke-static {v0, v3, v8, v8}, Lo3/l;->f(Ljava/lang/String;Landroid/content/Context;ZZ)V

    .line 262
    .line 263
    .line 264
    :cond_7
    :goto_4
    return-void

    .line 265
    :pswitch_3
    iget-object v0, p0, Lo3/b;->H:Lo3/i;

    .line 266
    .line 267
    const/4 v1, 0x4

    .line 268
    iput v1, v0, Lo3/i;->g:I

    .line 269
    .line 270
    invoke-virtual {v0}, Lo3/i;->b()V

    .line 271
    .line 272
    .line 273
    return-void

    .line 274
    :pswitch_4
    invoke-direct {p0}, Lo3/b;->a()V

    .line 275
    .line 276
    .line 277
    return-void

    .line 278
    :pswitch_5
    iget-object v0, p0, Lo3/b;->H:Lo3/i;

    .line 279
    .line 280
    iget-object v1, v0, Lo3/i;->a:Landroid/content/Context;

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Lo3/i;->c(Landroid/content/Context;)V

    .line 283
    .line 284
    .line 285
    return-void

    .line 286
    nop

    .line 287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
