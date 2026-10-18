.class public abstract Lcom/google/android/gms/internal/ads/Px;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lcom/google/android/gms/internal/ads/ay;

.field public c:J

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Px;->c:J

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/google/android/gms/internal/ads/Px;->d:I

    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Px;->a:Ljava/lang/String;

    .line 14
    .line 15
    new-instance p1, Lcom/google/android/gms/internal/ads/ay;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Px;->b:Lcom/google/android/gms/internal/ads/ay;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a()Landroid/webkit/WebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Px;->b:Lcom/google/android/gms/internal/ads/ay;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/webkit/WebView;

    .line 8
    .line 9
    return-object v0
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Px;->b:Lcom/google/android/gms/internal/ads/ay;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Ljava/util/Date;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v1, "timestamp"

    .line 18
    .line 19
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Sx;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Px;->a()Landroid/webkit/WebView;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 v1, 0x1

    .line 27
    new-array v1, v1, [Ljava/lang/Object;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    aput-object v0, v1, v2

    .line 31
    .line 32
    const-string v0, "setLastActivity"

    .line 33
    .line 34
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Cw;->L0(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public d(Lcom/google/android/gms/internal/ads/xx;Ll/s1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/Px;->e(Lcom/google/android/gms/internal/ads/xx;Ll/s1;Lorg/json/JSONObject;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/xx;Ll/s1;Lorg/json/JSONObject;)V
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x3

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/xx;->g:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v4, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v5, "environment"

    .line 13
    .line 14
    const-string v6, "app"

    .line 15
    .line 16
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/ads/Sx;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v5, p2, Ll/s1;->g:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v5, Lcom/google/android/gms/internal/ads/wx;

    .line 22
    .line 23
    const-string v7, "adSessionType"

    .line 24
    .line 25
    invoke-static {v4, v7, v5}, Lcom/google/android/gms/internal/ads/Sx;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance v5, Lorg/json/JSONObject;

    .line 29
    .line 30
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 31
    .line 32
    .line 33
    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 34
    .line 35
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v9, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v7, "; "

    .line 46
    .line 47
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    const-string v8, "deviceType"

    .line 58
    .line 59
    invoke-static {v5, v8, v7}, Lcom/google/android/gms/internal/ads/Sx;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 63
    .line 64
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    const-string v8, "osVersion"

    .line 69
    .line 70
    invoke-static {v5, v8, v7}, Lcom/google/android/gms/internal/ads/Sx;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    const-string v7, "os"

    .line 74
    .line 75
    const-string v8, "Android"

    .line 76
    .line 77
    invoke-static {v5, v7, v8}, Lcom/google/android/gms/internal/ads/Sx;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    const-string v7, "deviceInfo"

    .line 81
    .line 82
    invoke-static {v4, v7, v5}, Lcom/google/android/gms/internal/ads/Sx;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    sget-object v5, Lcom/google/android/gms/internal/ads/Cw;->g:Landroid/app/UiModeManager;

    .line 86
    .line 87
    if-eqz v5, :cond_0

    .line 88
    .line 89
    invoke-virtual {v5}, Landroid/app/UiModeManager;->getCurrentModeType()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-eq v5, v2, :cond_2

    .line 94
    .line 95
    if-eq v5, v1, :cond_1

    .line 96
    .line 97
    :cond_0
    const/4 v5, 0x3

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    const/4 v5, 0x1

    .line 100
    goto :goto_0

    .line 101
    :cond_2
    const/4 v5, 0x2

    .line 102
    :goto_0
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/uc;->f(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    const-string v7, "deviceCategory"

    .line 107
    .line 108
    invoke-static {v4, v7, v5}, Lcom/google/android/gms/internal/ads/Sx;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    new-instance v5, Lorg/json/JSONArray;

    .line 112
    .line 113
    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v7, "clid"

    .line 117
    .line 118
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 119
    .line 120
    .line 121
    const-string v7, "vlid"

    .line 122
    .line 123
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 124
    .line 125
    .line 126
    const-string v7, "supports"

    .line 127
    .line 128
    invoke-static {v4, v7, v5}, Lcom/google/android/gms/internal/ads/Sx;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    new-instance v5, Lorg/json/JSONObject;

    .line 132
    .line 133
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 134
    .line 135
    .line 136
    iget-object v7, p2, Ll/s1;->a:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v7, Lcom/google/android/gms/internal/ads/V7;

    .line 139
    .line 140
    iget v8, v7, Lcom/google/android/gms/internal/ads/V7;->G:I

    .line 141
    .line 142
    packed-switch v8, :pswitch_data_0

    .line 143
    .line 144
    .line 145
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/V7;->H:Ljava/lang/String;

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :pswitch_0
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/V7;->H:Ljava/lang/String;

    .line 149
    .line 150
    :goto_1
    const-string v8, "partnerName"

    .line 151
    .line 152
    invoke-static {v5, v8, v7}, Lcom/google/android/gms/internal/ads/Sx;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    iget-object v7, p2, Ll/s1;->a:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v7, Lcom/google/android/gms/internal/ads/V7;

    .line 158
    .line 159
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/V7;->I:Ljava/lang/String;

    .line 160
    .line 161
    const-string v8, "partnerVersion"

    .line 162
    .line 163
    invoke-static {v5, v8, v7}, Lcom/google/android/gms/internal/ads/Sx;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    const-string v7, "omidNativeInfo"

    .line 167
    .line 168
    invoke-static {v4, v7, v5}, Lcom/google/android/gms/internal/ads/Sx;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    new-instance v5, Lorg/json/JSONObject;

    .line 172
    .line 173
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 174
    .line 175
    .line 176
    const-string v7, "libraryVersion"

    .line 177
    .line 178
    const-string v8, "1.4.10-google_20240110"

    .line 179
    .line 180
    invoke-static {v5, v7, v8}, Lcom/google/android/gms/internal/ads/Sx;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    sget-object v7, Lcom/google/android/gms/internal/ads/Mx;->H:Lcom/google/android/gms/internal/ads/Mx;

    .line 184
    .line 185
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/Mx;->G:Landroid/content/Context;

    .line 186
    .line 187
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    const-string v8, "appId"

    .line 196
    .line 197
    invoke-static {v5, v8, v7}, Lcom/google/android/gms/internal/ads/Sx;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    invoke-static {v4, v6, v5}, Lcom/google/android/gms/internal/ads/Sx;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    iget-object v5, p2, Ll/s1;->f:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v5, Ljava/lang/String;

    .line 206
    .line 207
    if-eqz v5, :cond_3

    .line 208
    .line 209
    const-string v6, "contentUrl"

    .line 210
    .line 211
    invoke-static {v4, v6, v5}, Lcom/google/android/gms/internal/ads/Sx;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    :cond_3
    iget-object v5, p2, Ll/s1;->e:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast v5, Ljava/lang/String;

    .line 217
    .line 218
    if-eqz v5, :cond_4

    .line 219
    .line 220
    const-string v6, "customReferenceData"

    .line 221
    .line 222
    invoke-static {v4, v6, v5}, Lcom/google/android/gms/internal/ads/Sx;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    :cond_4
    new-instance v5, Lorg/json/JSONObject;

    .line 226
    .line 227
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 228
    .line 229
    .line 230
    iget-object p2, p2, Ll/s1;->c:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast p2, Ljava/util/List;

    .line 233
    .line 234
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 235
    .line 236
    .line 237
    move-result-object p2

    .line 238
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    if-nez v6, :cond_5

    .line 247
    .line 248
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Px;->a()Landroid/webkit/WebView;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    new-array v1, v1, [Ljava/lang/Object;

    .line 253
    .line 254
    const/4 v6, 0x0

    .line 255
    aput-object p1, v1, v6

    .line 256
    .line 257
    aput-object v4, v1, v2

    .line 258
    .line 259
    aput-object v5, v1, v0

    .line 260
    .line 261
    aput-object p3, v1, v3

    .line 262
    .line 263
    const-string p1, "startSession"

    .line 264
    .line 265
    invoke-static {p2, p1, v1}, Lcom/google/android/gms/internal/ads/Cw;->L0(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    return-void

    .line 269
    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-static {p1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    const/4 p1, 0x0

    .line 277
    throw p1

    .line 278
    nop

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public f()V
    .locals 0

    .line 1
    return-void
.end method
