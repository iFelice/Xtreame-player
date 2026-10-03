.class public final Lv3/t;
.super Lx3/a;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lv3/t;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lv3/t;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lv3/t;->c:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget v0, p0, Lv3/t;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lv3/t;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lv3/t;->c:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v3, "Failed to generate query info for Custom Tab error: "

    .line 15
    .line 16
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    check-cast v2, Lcom/google/android/gms/internal/ads/c8;

    .line 24
    .line 25
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/c8;->g:Lo/j;

    .line 26
    .line 27
    invoke-virtual {v2, v1, p1}, Lcom/google/android/gms/internal/ads/c8;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0, p1}, Lo/j;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p1

    .line 40
    const-string v0, "Error creating PACT Error Response JSON: "

    .line 41
    .line 42
    invoke-static {v0, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void

    .line 46
    :pswitch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v3, "Failed to generate query info for the tagging library, error: "

    .line 51
    .line 52
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget-object v0, Lcom/google/android/gms/internal/ads/w8;->a:Lcom/google/android/gms/internal/ads/f8;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Ljava/lang/Boolean;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    move-object v0, v2

    .line 74
    check-cast v0, Lv3/a;

    .line 75
    .line 76
    iget-object v0, v0, Lv3/a;->k:Lv3/b;

    .line 77
    .line 78
    invoke-virtual {v0}, Lv3/b;->a()Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v3, ",\"appLevelSignals\":"

    .line 87
    .line 88
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    goto :goto_1

    .line 93
    :cond_0
    const-string v0, ""

    .line 94
    .line 95
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    const/4 v4, 0x4

    .line 100
    new-array v4, v4, [Ljava/lang/Object;

    .line 101
    .line 102
    const/4 v5, 0x0

    .line 103
    aput-object v1, v4, v5

    .line 104
    .line 105
    const/4 v1, 0x1

    .line 106
    aput-object p1, v4, v1

    .line 107
    .line 108
    sget-object p1, Lcom/google/android/gms/internal/ads/w8;->b:Lcom/google/android/gms/internal/ads/f8;

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Ljava/lang/Boolean;

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_1

    .line 121
    .line 122
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->h9:Lcom/google/android/gms/internal/ads/J7;

    .line 123
    .line 124
    sget-object v6, Ll3/q;->d:Ll3/q;

    .line 125
    .line 126
    iget-object v6, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 127
    .line 128
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    check-cast v1, Ljava/lang/Long;

    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 135
    .line 136
    .line 137
    move-result-wide v6

    .line 138
    goto :goto_2

    .line 139
    :cond_1
    const-wide/16 v6, 0x0

    .line 140
    .line 141
    :goto_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    const/4 v6, 0x2

    .line 146
    aput-object v1, v4, v6

    .line 147
    .line 148
    const/4 v1, 0x3

    .line 149
    aput-object v0, v4, v1

    .line 150
    .line 151
    const-string v0, "window.postMessage({\"paw_id\":\"%1$s\",\"error\":\"%2$s\",\"sdk_ttl_ms\":%3$d%4$s}, \'*\');"

    .line 152
    .line 153
    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Ljava/lang/Boolean;

    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_2

    .line 168
    .line 169
    :try_start_1
    move-object p1, v2

    .line 170
    check-cast p1, Lv3/a;

    .line 171
    .line 172
    iget-object p1, p1, Lv3/a;->h:Lcom/google/android/gms/internal/ads/re;

    .line 173
    .line 174
    new-instance v1, Lv3/s;

    .line 175
    .line 176
    invoke-direct {v1, p0, v0, v5}, Lv3/s;-><init>(Lv3/t;Ljava/lang/String;I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/re;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :catch_1
    move-exception p1

    .line 184
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 185
    .line 186
    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 187
    .line 188
    const-string v1, "TaggingLibraryJsInterface.getQueryInfo.onFailure"

    .line 189
    .line 190
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/le;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_2
    move-object p1, v2

    .line 195
    check-cast p1, Lv3/a;

    .line 196
    .line 197
    iget-object p1, p1, Lv3/a;->b:Landroid/webkit/WebView;

    .line 198
    .line 199
    const/4 v1, 0x0

    .line 200
    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 201
    .line 202
    .line 203
    :goto_3
    sget-object p1, Lcom/google/android/gms/internal/ads/w8;->a:Lcom/google/android/gms/internal/ads/f8;

    .line 204
    .line 205
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    check-cast p1, Ljava/lang/Boolean;

    .line 210
    .line 211
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    if-eqz p1, :cond_3

    .line 216
    .line 217
    check-cast v2, Lv3/a;

    .line 218
    .line 219
    iget-object p1, v2, Lv3/a;->l:Lv3/v;

    .line 220
    .line 221
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    new-instance v0, Lv3/u;

    .line 225
    .line 226
    invoke-direct {v0, p1, v5}, Lv3/u;-><init>(Lv3/v;I)V

    .line 227
    .line 228
    .line 229
    iget-object p1, p1, Lv3/v;->c:Lcom/google/android/gms/internal/ads/jC;

    .line 230
    .line 231
    check-cast p1, Lcom/google/android/gms/internal/ads/re;

    .line 232
    .line 233
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/re;->execute(Ljava/lang/Runnable;)V

    .line 234
    .line 235
    .line 236
    :cond_3
    return-void

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(LC2/g;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget v2, p0, Lv3/t;->a:I

    .line 4
    .line 5
    iget-object v3, p0, Lv3/t;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v4, p0, Lv3/t;->c:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v2, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object p1, p1, LC2/g;->H:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, La3/b;

    .line 15
    .line 16
    iget-object p1, p1, La3/b;->H:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Ljava/lang/String;

    .line 19
    .line 20
    :try_start_0
    check-cast v4, Lcom/google/android/gms/internal/ads/c8;

    .line 21
    .line 22
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/c8;->g:Lo/j;

    .line 23
    .line 24
    invoke-virtual {v4, v3, p1}, Lcom/google/android/gms/internal/ads/c8;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Lo/j;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    const-string v0, "Error creating PACT Signal Response JSON: "

    .line 38
    .line 39
    invoke-static {v0, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void

    .line 43
    :pswitch_0
    iget-object v2, p1, LC2/g;->H:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v2, La3/b;

    .line 46
    .line 47
    iget-object v2, v2, La3/b;->H:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v2, Ljava/lang/String;

    .line 50
    .line 51
    const-wide/16 v5, 0x0

    .line 52
    .line 53
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    .line 54
    .line 55
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v8, "paw_id"

    .line 59
    .line 60
    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    const-string v8, "signal"

    .line 64
    .line 65
    invoke-virtual {v7, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    const-string v2, "sdk_ttl_ms"

    .line 69
    .line 70
    sget-object v8, Lcom/google/android/gms/internal/ads/w8;->b:Lcom/google/android/gms/internal/ads/f8;

    .line 71
    .line 72
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    check-cast v8, Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    if-eqz v8, :cond_0

    .line 83
    .line 84
    sget-object v8, Lcom/google/android/gms/internal/ads/Q7;->h9:Lcom/google/android/gms/internal/ads/J7;

    .line 85
    .line 86
    sget-object v9, Ll3/q;->d:Ll3/q;

    .line 87
    .line 88
    iget-object v9, v9, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 89
    .line 90
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    check-cast v8, Ljava/lang/Long;

    .line 95
    .line 96
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 97
    .line 98
    .line 99
    move-result-wide v8

    .line 100
    goto :goto_1

    .line 101
    :catch_1
    nop

    .line 102
    goto :goto_2

    .line 103
    :cond_0
    move-wide v8, v5

    .line 104
    :goto_1
    invoke-virtual {v7, v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 105
    .line 106
    .line 107
    sget-object v2, Lcom/google/android/gms/internal/ads/w8;->a:Lcom/google/android/gms/internal/ads/f8;

    .line 108
    .line 109
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Ljava/lang/Boolean;

    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_1

    .line 120
    .line 121
    const-string v2, "appLevelSignals"

    .line 122
    .line 123
    move-object v8, v4

    .line 124
    check-cast v8, Lv3/a;

    .line 125
    .line 126
    iget-object v8, v8, Lv3/a;->k:Lv3/b;

    .line 127
    .line 128
    invoke-virtual {v8}, Lv3/b;->a()Lorg/json/JSONObject;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    invoke-virtual {v7, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    .line 134
    .line 135
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    const-string v8, "window.postMessage(%1$s, \'*\');"

    .line 140
    .line 141
    new-array v9, v0, [Ljava/lang/Object;

    .line 142
    .line 143
    aput-object v7, v9, v1

    .line 144
    .line 145
    invoke-static {v2, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    goto :goto_4

    .line 150
    :goto_2
    sget-object v2, Lcom/google/android/gms/internal/ads/w8;->a:Lcom/google/android/gms/internal/ads/f8;

    .line 151
    .line 152
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    check-cast v2, Ljava/lang/Boolean;

    .line 157
    .line 158
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_2

    .line 163
    .line 164
    move-object v2, v4

    .line 165
    check-cast v2, Lv3/a;

    .line 166
    .line 167
    iget-object v2, v2, Lv3/a;->k:Lv3/b;

    .line 168
    .line 169
    invoke-virtual {v2}, Lv3/b;->a()Lorg/json/JSONObject;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    const-string v7, ",\"appLevelSignals\":"

    .line 178
    .line 179
    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    goto :goto_3

    .line 184
    :cond_2
    const-string v2, ""

    .line 185
    .line 186
    :goto_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    const/4 v8, 0x4

    .line 191
    new-array v8, v8, [Ljava/lang/Object;

    .line 192
    .line 193
    aput-object v3, v8, v1

    .line 194
    .line 195
    iget-object p1, p1, LC2/g;->H:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast p1, La3/b;

    .line 198
    .line 199
    iget-object p1, p1, La3/b;->H:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast p1, Ljava/lang/String;

    .line 202
    .line 203
    aput-object p1, v8, v0

    .line 204
    .line 205
    sget-object p1, Lcom/google/android/gms/internal/ads/w8;->b:Lcom/google/android/gms/internal/ads/f8;

    .line 206
    .line 207
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    check-cast p1, Ljava/lang/Boolean;

    .line 212
    .line 213
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    if-eqz p1, :cond_3

    .line 218
    .line 219
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->h9:Lcom/google/android/gms/internal/ads/J7;

    .line 220
    .line 221
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 222
    .line 223
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 224
    .line 225
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    check-cast p1, Ljava/lang/Long;

    .line 230
    .line 231
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 232
    .line 233
    .line 234
    move-result-wide v5

    .line 235
    :cond_3
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    const/4 v3, 0x2

    .line 240
    aput-object p1, v8, v3

    .line 241
    .line 242
    const/4 p1, 0x3

    .line 243
    aput-object v2, v8, p1

    .line 244
    .line 245
    const-string p1, "window.postMessage({\"paw_id\":\"%1$s\",\"signal\":\"%2$s\",\"sdk_ttl_ms\":%3$d%4$s}, \'*\');"

    .line 246
    .line 247
    invoke-static {v7, p1, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    :goto_4
    sget-object v2, Lcom/google/android/gms/internal/ads/w8;->b:Lcom/google/android/gms/internal/ads/f8;

    .line 252
    .line 253
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    check-cast v2, Ljava/lang/Boolean;

    .line 258
    .line 259
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    if-eqz v2, :cond_4

    .line 264
    .line 265
    :try_start_2
    move-object v2, v4

    .line 266
    check-cast v2, Lv3/a;

    .line 267
    .line 268
    iget-object v2, v2, Lv3/a;->h:Lcom/google/android/gms/internal/ads/re;

    .line 269
    .line 270
    new-instance v3, Lv3/s;

    .line 271
    .line 272
    invoke-direct {v3, p0, p1, v0}, Lv3/s;-><init>(Lv3/t;Ljava/lang/String;I)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/re;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 276
    .line 277
    .line 278
    goto :goto_5

    .line 279
    :catch_2
    move-exception p1

    .line 280
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 281
    .line 282
    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 283
    .line 284
    const-string v2, "TaggingLibraryJsInterface.getQueryInfo.onSuccess"

    .line 285
    .line 286
    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/ads/le;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    .line 288
    .line 289
    goto :goto_5

    .line 290
    :cond_4
    move-object v0, v4

    .line 291
    check-cast v0, Lv3/a;

    .line 292
    .line 293
    iget-object v0, v0, Lv3/a;->b:Landroid/webkit/WebView;

    .line 294
    .line 295
    const/4 v2, 0x0

    .line 296
    invoke-virtual {v0, p1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 297
    .line 298
    .line 299
    :goto_5
    sget-object p1, Lcom/google/android/gms/internal/ads/w8;->a:Lcom/google/android/gms/internal/ads/f8;

    .line 300
    .line 301
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    check-cast p1, Ljava/lang/Boolean;

    .line 306
    .line 307
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 308
    .line 309
    .line 310
    move-result p1

    .line 311
    if-eqz p1, :cond_5

    .line 312
    .line 313
    check-cast v4, Lv3/a;

    .line 314
    .line 315
    iget-object p1, v4, Lv3/a;->l:Lv3/v;

    .line 316
    .line 317
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    .line 319
    .line 320
    new-instance v0, Lv3/u;

    .line 321
    .line 322
    invoke-direct {v0, p1, v1}, Lv3/u;-><init>(Lv3/v;I)V

    .line 323
    .line 324
    .line 325
    iget-object p1, p1, Lv3/v;->c:Lcom/google/android/gms/internal/ads/jC;

    .line 326
    .line 327
    check-cast p1, Lcom/google/android/gms/internal/ads/re;

    .line 328
    .line 329
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/re;->execute(Ljava/lang/Runnable;)V

    .line 330
    .line 331
    .line 332
    :cond_5
    return-void

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
