.class public final Lg7/b;
.super Ls2/g;
.source "SourceFile"


# instance fields
.field public final synthetic W:I

.field public final synthetic X:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/String;Lorg/json/JSONObject;Lr2/n;Lr2/m;I)V
    .locals 6

    .line 1
    iput p7, p0, Lg7/b;->W:I

    .line 2
    .line 3
    iput-object p1, p0, Lg7/b;->X:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move v1, p2

    .line 7
    move-object v2, p3

    .line 8
    move-object v3, p4

    .line 9
    move-object v4, p5

    .line 10
    move-object v5, p6

    .line 11
    invoke-direct/range {v0 .. v5}, Ls2/g;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lr2/n;Lr2/m;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "application/json; charset=utf-8"

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Ljava/util/Map;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lg7/b;->W:I

    .line 4
    .line 5
    const-string v3, "Basic "

    .line 6
    .line 7
    const-string v4, ":"

    .line 8
    .line 9
    const-string v6, "otr_access_token"

    .line 10
    .line 11
    const-string v7, "Bearer "

    .line 12
    .line 13
    const/4 v8, 0x0

    .line 14
    const-string v9, "pe.hf.black20"

    .line 15
    .line 16
    const-string v10, "renewToken"

    .line 17
    .line 18
    const-string v11, "otrresponse"

    .line 19
    .line 20
    const-string v12, "clientContent"

    .line 21
    .line 22
    const-string v13, "getUserDevices"

    .line 23
    .line 24
    const-string v14, "Authorization"

    .line 25
    .line 26
    const-string v15, "loginCheckOTR"

    .line 27
    .line 28
    iget-object v2, v0, Lg7/b;->X:Ljava/lang/Object;

    .line 29
    .line 30
    packed-switch v1, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    new-instance v1, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    check-cast v2, Lcom/google/android/gms/internal/ads/i6;

    .line 39
    .line 40
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/i6;->c:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-nez v5, :cond_2

    .line 47
    .line 48
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/i6;->c:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/i6;->c:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_1

    .line 64
    .line 65
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/i6;->c:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-nez v3, :cond_1

    .line 72
    .line 73
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/i6;->c:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    :cond_1
    sget-object v2, Lpe/hf/black20/util/OTRApp;->G:Landroid/content/Context;

    .line 82
    .line 83
    invoke-virtual {v2, v9, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/4 v4, 0x0

    .line 93
    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-static {v2}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/i6;->h:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v6, Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/i6;->i:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v2, Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    const/4 v3, 0x2

    .line 148
    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    :cond_3
    :goto_1
    return-object v1

    .line 163
    :pswitch_0
    new-instance v1, Ljava/util/HashMap;

    .line 164
    .line 165
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 166
    .line 167
    .line 168
    check-cast v2, Lcom/google/android/gms/internal/ads/i6;

    .line 169
    .line 170
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/i6;->c:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    if-nez v5, :cond_6

    .line 177
    .line 178
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/i6;->c:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    if-eqz v5, :cond_4

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_4
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/i6;->c:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    if-nez v3, :cond_5

    .line 194
    .line 195
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/i6;->c:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    if-nez v3, :cond_5

    .line 202
    .line 203
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/i6;->c:Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-eqz v2, :cond_7

    .line 210
    .line 211
    :cond_5
    sget-object v2, Lpe/hf/black20/util/OTRApp;->G:Landroid/content/Context;

    .line 212
    .line 213
    invoke-virtual {v2, v9, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    const/4 v4, 0x0

    .line 223
    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-static {v2}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_6
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/i6;->h:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast v6, Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/i6;->i:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast v2, Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    const/4 v3, 0x2

    .line 278
    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    :cond_7
    :goto_3
    return-object v1

    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
