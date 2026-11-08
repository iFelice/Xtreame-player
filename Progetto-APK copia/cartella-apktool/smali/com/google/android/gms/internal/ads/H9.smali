.class public final Lcom/google/android/gms/internal/ads/H9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/N9;


# instance fields
.field public final synthetic G:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/H9;->G:I

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/ads/Ef;

    .line 2
    .line 3
    const-string v0, "action"

    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "tick"

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_4

    .line 18
    .line 19
    const-string v0, "label"

    .line 20
    .line 21
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "start_label"

    .line 28
    .line 29
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/String;

    .line 34
    .line 35
    const-string v2, "timestamp"

    .line 36
    .line 37
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    const-string p0, "No label given for CSI tick."

    .line 50
    .line 51
    invoke-static {p0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    const-string p0, "No timestamp given for CSI tick."

    .line 62
    .line 63
    invoke-static {p0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v2

    .line 71
    sget-object p1, Lk3/l;->A:Lk3/l;

    .line 72
    .line 73
    iget-object v4, p1, Lk3/l;->j:LP3/b;

    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 79
    .line 80
    .line 81
    move-result-wide v4

    .line 82
    iget-object p1, p1, Lk3/l;->j:LP3/b;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 88
    .line 89
    .line 90
    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    sub-long/2addr v2, v4

    .line 92
    add-long/2addr v2, v6

    .line 93
    const/4 p1, 0x1

    .line 94
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-ne p1, v4, :cond_2

    .line 99
    .line 100
    const-string v1, "native:view_load"

    .line 101
    .line 102
    :cond_2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ef;->zzm()Lcom/google/android/gms/internal/ads/x;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast p1, Ljava/util/Map;

    .line 109
    .line 110
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Lcom/google/android/gms/internal/ads/U7;

    .line 115
    .line 116
    filled-new-array {v0}, [Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    if-eqz p1, :cond_3

    .line 121
    .line 122
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/x;->I:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v4, Lcom/google/android/gms/internal/ads/W7;

    .line 125
    .line 126
    invoke-virtual {v4, p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/W7;->c(Lcom/google/android/gms/internal/ads/U7;J[Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_3
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast p0, Ljava/util/Map;

    .line 132
    .line 133
    new-instance p1, Lcom/google/android/gms/internal/ads/U7;

    .line 134
    .line 135
    const/4 v1, 0x0

    .line 136
    invoke-direct {p1, v2, v3, v1, v1}, Lcom/google/android/gms/internal/ads/U7;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/ads/U7;)V

    .line 137
    .line 138
    .line 139
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :catch_0
    move-exception p0

    .line 144
    const-string p1, "Malformed timestamp for CSI tick."

    .line 145
    .line 146
    invoke-static {p1, p0}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_4
    const-string v1, "experiment"

    .line 151
    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    const-string v2, "value"

    .line 157
    .line 158
    if-eqz v1, :cond_6

    .line 159
    .line 160
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    check-cast p1, Ljava/lang/String;

    .line 165
    .line 166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_5

    .line 171
    .line 172
    const-string p0, "No value given for CSI experiment."

    .line 173
    .line 174
    invoke-static {p0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :cond_5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ef;->zzm()Lcom/google/android/gms/internal/ads/x;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/x;->I:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast p0, Lcom/google/android/gms/internal/ads/W7;

    .line 185
    .line 186
    const-string v0, "e"

    .line 187
    .line 188
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/W7;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :cond_6
    const-string v1, "extra"

    .line 193
    .line 194
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-eqz v0, :cond_9

    .line 199
    .line 200
    const-string v0, "name"

    .line 201
    .line 202
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    check-cast v0, Ljava/lang/String;

    .line 207
    .line 208
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    check-cast p1, Ljava/lang/String;

    .line 213
    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-eqz v1, :cond_7

    .line 219
    .line 220
    const-string p0, "No value given for CSI extra."

    .line 221
    .line 222
    invoke-static {p0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eqz v1, :cond_8

    .line 231
    .line 232
    const-string p0, "No name given for CSI extra."

    .line 233
    .line 234
    invoke-static {p0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    return-void

    .line 238
    :cond_8
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ef;->zzm()Lcom/google/android/gms/internal/ads/x;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/x;->I:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast p0, Lcom/google/android/gms/internal/ads/W7;

    .line 245
    .line 246
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/W7;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    :cond_9
    return-void
.end method

.method private static b(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/ads/Ef;

    .line 2
    .line 3
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 4
    .line 5
    iget-object v0, v0, Lk3/l;->q:La/x;

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ef;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iput-object p0, v0, La/x;->d:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, La/x;->g(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    const-string p0, "Unable to bind"

    .line 21
    .line 22
    const-string v1, "on_play_store_bind"

    .line 23
    .line 24
    invoke-virtual {v0, p0, v1}, La/x;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :try_start_1
    new-instance p0, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v1, "action"

    .line 37
    .line 38
    const-string v2, "fetch_completed"

    .line 39
    .line 40
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    const-string v1, "on_play_store_bind"

    .line 44
    .line 45
    invoke-virtual {v0, v1, p0}, La/x;->d(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    monitor-exit v0

    .line 49
    :goto_0
    return-void

    .line 50
    :goto_1
    monitor-exit v0

    .line 51
    throw p0
.end method

.method public static final c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;
    .locals 3

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object p0

    .line 24
    :catch_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/String;

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "Precache invalid numeric parameter \'"

    .line 33
    .line 34
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p0, "\': "

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {p0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v1
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    iget v2, v1, Lcom/google/android/gms/internal/ads/H9;->G:I

    .line 6
    .line 7
    const/4 v4, 0x3

    .line 8
    const/4 v5, 0x2

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v8, 0x1

    .line 12
    packed-switch v2, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object/from16 v0, p1

    .line 16
    .line 17
    check-cast v0, Lcom/google/android/gms/internal/ads/Ef;

    .line 18
    .line 19
    const-string v2, "Show native ad policy validator overlay."

    .line 20
    .line 21
    invoke-static {v2}, Lp3/h;->b(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->j()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    move-object/from16 v2, p1

    .line 33
    .line 34
    check-cast v2, Lcom/google/android/gms/internal/ads/Oe;

    .line 35
    .line 36
    invoke-static {v4}, Lp3/h;->j(I)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    new-instance v3, Lorg/json/JSONObject;

    .line 43
    .line 44
    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 45
    .line 46
    .line 47
    const-string v4, "google.afma.Notify_dt"

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const-string v4, "Precache GMSG: "

    .line 57
    .line 58
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v3}, Lp3/h;->b(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    sget-object v3, Lk3/l;->A:Lk3/l;

    .line 66
    .line 67
    iget-object v3, v3, Lk3/l;->y:Lcom/google/android/gms/internal/ads/cf;

    .line 68
    .line 69
    const-string v4, "abort"

    .line 70
    .line 71
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_1

    .line 76
    .line 77
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/cf;->b(Lcom/google/android/gms/internal/ads/Oe;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_1c

    .line 82
    .line 83
    const-string v0, "Precache abort but no precache task running."

    .line 84
    .line 85
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_6

    .line 89
    .line 90
    :cond_1
    const-string v4, "src"

    .line 91
    .line 92
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    check-cast v4, Ljava/lang/String;

    .line 97
    .line 98
    const-string v5, "periodicReportIntervalMs"

    .line 99
    .line 100
    invoke-static {v5, v0}, Lcom/google/android/gms/internal/ads/H9;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    const-string v9, "exoPlayerRenderingIntervalMs"

    .line 105
    .line 106
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/H9;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    const-string v9, "exoPlayerIdleIntervalMs"

    .line 110
    .line 111
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/H9;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    new-instance v9, Lcom/google/android/gms/internal/ads/Ne;

    .line 115
    .line 116
    const-string v10, "flags"

    .line 117
    .line 118
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    check-cast v10, Ljava/lang/String;

    .line 123
    .line 124
    invoke-direct {v9, v10}, Lcom/google/android/gms/internal/ads/Ne;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    if-eqz v4, :cond_15

    .line 128
    .line 129
    filled-new-array {v4}, [Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    const-string v11, "demuxed"

    .line 134
    .line 135
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v11

    .line 139
    check-cast v11, Ljava/lang/String;

    .line 140
    .line 141
    if-eqz v11, :cond_3

    .line 142
    .line 143
    :try_start_0
    new-instance v10, Lorg/json/JSONArray;

    .line 144
    .line 145
    invoke-direct {v10, v11}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    .line 149
    .line 150
    .line 151
    move-result v12

    .line 152
    new-array v12, v12, [Ljava/lang/String;

    .line 153
    .line 154
    const/4 v13, 0x0

    .line 155
    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    .line 156
    .line 157
    .line 158
    move-result v14

    .line 159
    if-ge v13, v14, :cond_2

    .line 160
    .line 161
    invoke-virtual {v10, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v14

    .line 165
    aput-object v14, v12, v13
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .line 167
    add-int/2addr v13, v8

    .line 168
    goto :goto_0

    .line 169
    :cond_2
    move-object v10, v12

    .line 170
    goto :goto_1

    .line 171
    :catch_0
    const-string v10, "Malformed demuxed URL list for precache: "

    .line 172
    .line 173
    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    invoke-static {v10}, Lp3/h;->g(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    move-object v10, v6

    .line 181
    :cond_3
    :goto_1
    if-nez v10, :cond_4

    .line 182
    .line 183
    filled-new-array {v4}, [Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v10

    .line 187
    :cond_4
    iget-boolean v11, v9, Lcom/google/android/gms/internal/ads/Ne;->k:Z

    .line 188
    .line 189
    if-eqz v11, :cond_7

    .line 190
    .line 191
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cf;->G:Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result v11

    .line 201
    if-eqz v11, :cond_6

    .line 202
    .line 203
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v11

    .line 207
    check-cast v11, Lcom/google/android/gms/internal/ads/bf;

    .line 208
    .line 209
    iget-object v12, v11, Lcom/google/android/gms/internal/ads/bf;->b:Lcom/google/android/gms/internal/ads/Oe;

    .line 210
    .line 211
    if-ne v12, v2, :cond_5

    .line 212
    .line 213
    iget-object v12, v11, Lcom/google/android/gms/internal/ads/bf;->d:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v12

    .line 219
    if-eqz v12, :cond_5

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_6
    move-object v11, v6

    .line 223
    goto :goto_2

    .line 224
    :cond_7
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cf;->G:Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v11

    .line 234
    if-eqz v11, :cond_6

    .line 235
    .line 236
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v11

    .line 240
    check-cast v11, Lcom/google/android/gms/internal/ads/bf;

    .line 241
    .line 242
    iget-object v12, v11, Lcom/google/android/gms/internal/ads/bf;->b:Lcom/google/android/gms/internal/ads/Oe;

    .line 243
    .line 244
    if-ne v12, v2, :cond_8

    .line 245
    .line 246
    :goto_2
    if-eqz v11, :cond_9

    .line 247
    .line 248
    const-string v0, "Precache task is already running."

    .line 249
    .line 250
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    goto/16 :goto_6

    .line 254
    .line 255
    :cond_9
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Oe;->zzj()Lk3/a;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    if-nez v3, :cond_a

    .line 260
    .line 261
    const-string v0, "Precache requires a dependency provider."

    .line 262
    .line 263
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    goto/16 :goto_6

    .line 267
    .line 268
    :cond_a
    const-string v3, "player"

    .line 269
    .line 270
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/H9;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    if-nez v3, :cond_b

    .line 275
    .line 276
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    :cond_b
    if-eqz v5, :cond_c

    .line 281
    .line 282
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 283
    .line 284
    .line 285
    move-result v5

    .line 286
    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/ads/Oe;->v(I)V

    .line 287
    .line 288
    .line 289
    :cond_c
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Oe;->zzj()Lk3/a;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    iget-object v5, v5, Lk3/a;->b:Lcom/google/android/gms/internal/ads/Aa;

    .line 298
    .line 299
    if-lez v3, :cond_f

    .line 300
    .line 301
    sget-object v3, Lcom/google/android/gms/internal/ads/vf;->b0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 302
    .line 303
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    iget v5, v9, Lcom/google/android/gms/internal/ads/Ne;->g:I

    .line 308
    .line 309
    if-ge v3, v5, :cond_d

    .line 310
    .line 311
    new-instance v3, Lcom/google/android/gms/internal/ads/nf;

    .line 312
    .line 313
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/jf;-><init>(Lcom/google/android/gms/internal/ads/Oe;)V

    .line 314
    .line 315
    .line 316
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Oe;->getContext()Landroid/content/Context;

    .line 317
    .line 318
    .line 319
    move-result-object v5

    .line 320
    new-instance v7, Lcom/google/android/gms/internal/ads/vf;

    .line 321
    .line 322
    iget-object v8, v3, Lcom/google/android/gms/internal/ads/jf;->I:Ljava/lang/ref/WeakReference;

    .line 323
    .line 324
    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v8

    .line 328
    check-cast v8, Lcom/google/android/gms/internal/ads/Oe;

    .line 329
    .line 330
    invoke-direct {v7, v5, v9, v8, v6}, Lcom/google/android/gms/internal/ads/vf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Ne;Lcom/google/android/gms/internal/ads/Oe;Ljava/lang/Integer;)V

    .line 331
    .line 332
    .line 333
    const-string v5, "ExoPlayerAdapter initialized."

    .line 334
    .line 335
    invoke-static {v5}, Lp3/h;->f(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    iput-object v7, v3, Lcom/google/android/gms/internal/ads/nf;->J:Lcom/google/android/gms/internal/ads/vf;

    .line 339
    .line 340
    iput-object v3, v7, Lcom/google/android/gms/internal/ads/vf;->P:Lcom/google/android/gms/internal/ads/He;

    .line 341
    .line 342
    goto/16 :goto_4

    .line 343
    .line 344
    :cond_d
    iget v5, v9, Lcom/google/android/gms/internal/ads/Ne;->b:I

    .line 345
    .line 346
    if-ge v3, v5, :cond_e

    .line 347
    .line 348
    new-instance v3, Lcom/google/android/gms/internal/ads/mf;

    .line 349
    .line 350
    invoke-direct {v3, v2, v9}, Lcom/google/android/gms/internal/ads/mf;-><init>(Lcom/google/android/gms/internal/ads/Oe;Lcom/google/android/gms/internal/ads/Ne;)V

    .line 351
    .line 352
    .line 353
    goto :goto_4

    .line 354
    :cond_e
    new-instance v3, Lcom/google/android/gms/internal/ads/lf;

    .line 355
    .line 356
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/jf;-><init>(Lcom/google/android/gms/internal/ads/Oe;)V

    .line 357
    .line 358
    .line 359
    goto :goto_4

    .line 360
    :cond_f
    new-instance v3, Lcom/google/android/gms/internal/ads/kf;

    .line 361
    .line 362
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/jf;-><init>(Lcom/google/android/gms/internal/ads/Oe;)V

    .line 363
    .line 364
    .line 365
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/jf;->G:Landroid/content/Context;

    .line 366
    .line 367
    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 368
    .line 369
    .line 370
    move-result-object v5

    .line 371
    if-nez v5, :cond_10

    .line 372
    .line 373
    const-string v5, "Context.getCacheDir() returned null"

    .line 374
    .line 375
    invoke-static {v5}, Lp3/h;->g(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    goto :goto_4

    .line 379
    :cond_10
    new-instance v9, Ljava/io/File;

    .line 380
    .line 381
    sget v11, Lcom/google/android/gms/internal/ads/Ly;->d:I

    .line 382
    .line 383
    new-instance v11, Ljava/io/File;

    .line 384
    .line 385
    const-string v12, "admobVideoStreams"

    .line 386
    .line 387
    invoke-direct {v11, v5, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v5

    .line 394
    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    iput-object v9, v3, Lcom/google/android/gms/internal/ads/kf;->J:Ljava/io/File;

    .line 398
    .line 399
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    .line 400
    .line 401
    .line 402
    move-result v5

    .line 403
    if-nez v5, :cond_12

    .line 404
    .line 405
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 406
    .line 407
    .line 408
    move-result v5

    .line 409
    if-eqz v5, :cond_11

    .line 410
    .line 411
    goto :goto_3

    .line 412
    :cond_11
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v5

    .line 416
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v5

    .line 420
    const-string v7, "Could not create preload cache directory at "

    .line 421
    .line 422
    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v5

    .line 426
    invoke-static {v5}, Lp3/h;->g(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    iput-object v6, v3, Lcom/google/android/gms/internal/ads/kf;->J:Ljava/io/File;

    .line 430
    .line 431
    goto :goto_4

    .line 432
    :cond_12
    :goto_3
    invoke-virtual {v9, v8, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 433
    .line 434
    .line 435
    move-result v5

    .line 436
    if-eqz v5, :cond_13

    .line 437
    .line 438
    invoke-virtual {v9, v8, v7}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 439
    .line 440
    .line 441
    move-result v5

    .line 442
    if-nez v5, :cond_14

    .line 443
    .line 444
    :cond_13
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v5

    .line 448
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v5

    .line 452
    const-string v7, "Could not set cache file permissions at "

    .line 453
    .line 454
    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v5

    .line 458
    invoke-static {v5}, Lp3/h;->g(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    iput-object v6, v3, Lcom/google/android/gms/internal/ads/kf;->J:Ljava/io/File;

    .line 462
    .line 463
    :cond_14
    :goto_4
    new-instance v5, Lcom/google/android/gms/internal/ads/bf;

    .line 464
    .line 465
    invoke-direct {v5, v2, v3, v4, v10}, Lcom/google/android/gms/internal/ads/bf;-><init>(Lcom/google/android/gms/internal/ads/Oe;Lcom/google/android/gms/internal/ads/jf;Ljava/lang/String;[Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/bf;->b()LD4/b;

    .line 469
    .line 470
    .line 471
    goto :goto_5

    .line 472
    :cond_15
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cf;->G:Ljava/util/ArrayList;

    .line 473
    .line 474
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 475
    .line 476
    .line 477
    move-result-object v3

    .line 478
    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 479
    .line 480
    .line 481
    move-result v4

    .line 482
    if-eqz v4, :cond_17

    .line 483
    .line 484
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v4

    .line 488
    check-cast v4, Lcom/google/android/gms/internal/ads/bf;

    .line 489
    .line 490
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/bf;->b:Lcom/google/android/gms/internal/ads/Oe;

    .line 491
    .line 492
    if-ne v5, v2, :cond_16

    .line 493
    .line 494
    move-object v6, v4

    .line 495
    :cond_17
    if-eqz v6, :cond_1b

    .line 496
    .line 497
    iget-object v3, v6, Lcom/google/android/gms/internal/ads/bf;->c:Lcom/google/android/gms/internal/ads/jf;

    .line 498
    .line 499
    :goto_5
    const-string v2, "minBufferMs"

    .line 500
    .line 501
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/H9;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    if-eqz v2, :cond_18

    .line 506
    .line 507
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 508
    .line 509
    .line 510
    move-result v2

    .line 511
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/jf;->q(I)V

    .line 512
    .line 513
    .line 514
    :cond_18
    const-string v2, "maxBufferMs"

    .line 515
    .line 516
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/H9;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    .line 517
    .line 518
    .line 519
    move-result-object v2

    .line 520
    if-eqz v2, :cond_19

    .line 521
    .line 522
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 523
    .line 524
    .line 525
    move-result v2

    .line 526
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/jf;->p(I)V

    .line 527
    .line 528
    .line 529
    :cond_19
    const-string v2, "bufferForPlaybackMs"

    .line 530
    .line 531
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/H9;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    .line 532
    .line 533
    .line 534
    move-result-object v2

    .line 535
    if-eqz v2, :cond_1a

    .line 536
    .line 537
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 538
    .line 539
    .line 540
    move-result v2

    .line 541
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/jf;->n(I)V

    .line 542
    .line 543
    .line 544
    :cond_1a
    const-string v2, "bufferForPlaybackAfterRebufferMs"

    .line 545
    .line 546
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/H9;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    if-eqz v0, :cond_1c

    .line 551
    .line 552
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 553
    .line 554
    .line 555
    move-result v0

    .line 556
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/jf;->o(I)V

    .line 557
    .line 558
    .line 559
    goto :goto_6

    .line 560
    :cond_1b
    const-string v0, "Precache must specify a source."

    .line 561
    .line 562
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    :cond_1c
    :goto_6
    return-void

    .line 566
    :pswitch_1
    const-string v2, "Video Meta GMSG: currentTime : "

    .line 567
    .line 568
    move-object/from16 v3, p1

    .line 569
    .line 570
    check-cast v3, Lcom/google/android/gms/internal/ads/Oe;

    .line 571
    .line 572
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Oe;->zzq()Lcom/google/android/gms/internal/ads/Uf;

    .line 573
    .line 574
    .line 575
    move-result-object v5

    .line 576
    const-string v6, "duration"

    .line 577
    .line 578
    const-string v8, "1"

    .line 579
    .line 580
    if-nez v5, :cond_1d

    .line 581
    .line 582
    :try_start_1
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v5

    .line 586
    check-cast v5, Ljava/lang/String;

    .line 587
    .line 588
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 589
    .line 590
    .line 591
    move-result v5

    .line 592
    const-string v9, "customControlsAllowed"

    .line 593
    .line 594
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object v9

    .line 598
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 599
    .line 600
    .line 601
    move-result v9

    .line 602
    const-string v10, "clickToExpandAllowed"

    .line 603
    .line 604
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v10

    .line 608
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    move-result v10

    .line 612
    new-instance v11, Lcom/google/android/gms/internal/ads/Uf;

    .line 613
    .line 614
    invoke-direct {v11, v3, v5, v9, v10}, Lcom/google/android/gms/internal/ads/Uf;-><init>(Lcom/google/android/gms/internal/ads/Oe;FZZ)V

    .line 615
    .line 616
    .line 617
    invoke-interface {v3, v11}, Lcom/google/android/gms/internal/ads/Oe;->k(Lcom/google/android/gms/internal/ads/Uf;)V

    .line 618
    .line 619
    .line 620
    move-object v12, v11

    .line 621
    goto :goto_7

    .line 622
    :catch_1
    move-exception v0

    .line 623
    goto/16 :goto_a

    .line 624
    .line 625
    :catch_2
    move-exception v0

    .line 626
    goto/16 :goto_a

    .line 627
    .line 628
    :cond_1d
    move-object v12, v5

    .line 629
    :goto_7
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object v3

    .line 633
    check-cast v3, Ljava/lang/String;

    .line 634
    .line 635
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 636
    .line 637
    .line 638
    move-result v14

    .line 639
    const-string v3, "muted"

    .line 640
    .line 641
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object v3

    .line 645
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 646
    .line 647
    .line 648
    move-result v3

    .line 649
    const-string v5, "currentTime"

    .line 650
    .line 651
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    move-result-object v5

    .line 655
    check-cast v5, Ljava/lang/String;

    .line 656
    .line 657
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 658
    .line 659
    .line 660
    move-result v13

    .line 661
    const-string v5, "playbackState"

    .line 662
    .line 663
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    move-result-object v5

    .line 667
    check-cast v5, Ljava/lang/String;

    .line 668
    .line 669
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 670
    .line 671
    .line 672
    move-result v5

    .line 673
    if-ltz v5, :cond_1e

    .line 674
    .line 675
    if-le v5, v4, :cond_1f

    .line 676
    .line 677
    :cond_1e
    const/4 v15, 0x0

    .line 678
    goto :goto_8

    .line 679
    :cond_1f
    move v15, v5

    .line 680
    :goto_8
    const-string v5, "aspectRatio"

    .line 681
    .line 682
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    check-cast v0, Ljava/lang/String;

    .line 687
    .line 688
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 689
    .line 690
    .line 691
    move-result v5

    .line 692
    if-eqz v5, :cond_20

    .line 693
    .line 694
    const/4 v5, 0x0

    .line 695
    const/16 v17, 0x0

    .line 696
    .line 697
    goto :goto_9

    .line 698
    :cond_20
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 699
    .line 700
    .line 701
    move-result v5

    .line 702
    move/from16 v17, v5

    .line 703
    .line 704
    :goto_9
    invoke-static {v4}, Lp3/h;->j(I)Z

    .line 705
    .line 706
    .line 707
    move-result v4

    .line 708
    if-eqz v4, :cond_21

    .line 709
    .line 710
    new-instance v4, Ljava/lang/StringBuilder;

    .line 711
    .line 712
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 713
    .line 714
    .line 715
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 716
    .line 717
    .line 718
    const-string v2, " , duration : "

    .line 719
    .line 720
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    const-string v2, " , isMuted : "

    .line 727
    .line 728
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 732
    .line 733
    .line 734
    const-string v2, " , playbackState : "

    .line 735
    .line 736
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    const-string v2, " , aspectRatio : "

    .line 743
    .line 744
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    .line 749
    .line 750
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    invoke-static {v0}, Lp3/h;->b(Ljava/lang/String;)V

    .line 755
    .line 756
    .line 757
    :cond_21
    move/from16 v16, v3

    .line 758
    .line 759
    invoke-virtual/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/Uf;->A3(FFIZF)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 760
    .line 761
    .line 762
    goto :goto_b

    .line 763
    :goto_a
    const-string v2, "Unable to parse videoMeta message."

    .line 764
    .line 765
    invoke-static {v2, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 766
    .line 767
    .line 768
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 769
    .line 770
    iget-object v2, v2, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 771
    .line 772
    const-string v3, "VideoMetaGmsgHandler.onGmsg"

    .line 773
    .line 774
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 775
    .line 776
    .line 777
    :goto_b
    return-void

    .line 778
    :pswitch_2
    move-object/from16 v2, p1

    .line 779
    .line 780
    check-cast v2, Lcom/google/android/gms/internal/ads/Ef;

    .line 781
    .line 782
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 783
    .line 784
    .line 785
    move-result-object v3

    .line 786
    const-string v4, "start"

    .line 787
    .line 788
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 789
    .line 790
    .line 791
    move-result v3

    .line 792
    if-eqz v3, :cond_22

    .line 793
    .line 794
    invoke-interface {v2, v8}, Lcom/google/android/gms/internal/ads/Ef;->K0(Z)V

    .line 795
    .line 796
    .line 797
    :cond_22
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 798
    .line 799
    .line 800
    move-result-object v0

    .line 801
    const-string v3, "stop"

    .line 802
    .line 803
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 804
    .line 805
    .line 806
    move-result v0

    .line 807
    if-eqz v0, :cond_23

    .line 808
    .line 809
    invoke-interface {v2, v7}, Lcom/google/android/gms/internal/ads/Ef;->K0(Z)V

    .line 810
    .line 811
    .line 812
    :cond_23
    return-void

    .line 813
    :pswitch_3
    move-object/from16 v2, p1

    .line 814
    .line 815
    check-cast v2, Lcom/google/android/gms/internal/ads/Ef;

    .line 816
    .line 817
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 818
    .line 819
    .line 820
    move-result-object v3

    .line 821
    const-string v4, "start"

    .line 822
    .line 823
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 824
    .line 825
    .line 826
    move-result v3

    .line 827
    if-eqz v3, :cond_24

    .line 828
    .line 829
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Ef;->zzN()Lcom/google/android/gms/internal/ads/Xf;

    .line 830
    .line 831
    .line 832
    move-result-object v0

    .line 833
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Xf;->J:Ljava/lang/Object;

    .line 834
    .line 835
    monitor-enter v3

    .line 836
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 837
    iget v2, v0, Lcom/google/android/gms/internal/ads/Xf;->g0:I

    .line 838
    .line 839
    add-int/2addr v2, v8

    .line 840
    iput v2, v0, Lcom/google/android/gms/internal/ads/Xf;->g0:I

    .line 841
    .line 842
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xf;->M()V

    .line 843
    .line 844
    .line 845
    goto :goto_c

    .line 846
    :catchall_0
    move-exception v0

    .line 847
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 848
    throw v0

    .line 849
    :cond_24
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 850
    .line 851
    .line 852
    move-result-object v3

    .line 853
    const-string v4, "stop"

    .line 854
    .line 855
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 856
    .line 857
    .line 858
    move-result v3

    .line 859
    if-eqz v3, :cond_25

    .line 860
    .line 861
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Ef;->zzN()Lcom/google/android/gms/internal/ads/Xf;

    .line 862
    .line 863
    .line 864
    move-result-object v0

    .line 865
    iget v2, v0, Lcom/google/android/gms/internal/ads/Xf;->g0:I

    .line 866
    .line 867
    add-int/lit8 v2, v2, -0x1

    .line 868
    .line 869
    iput v2, v0, Lcom/google/android/gms/internal/ads/Xf;->g0:I

    .line 870
    .line 871
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xf;->M()V

    .line 872
    .line 873
    .line 874
    goto :goto_c

    .line 875
    :cond_25
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 876
    .line 877
    .line 878
    move-result-object v0

    .line 879
    const-string v3, "cancel"

    .line 880
    .line 881
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 882
    .line 883
    .line 884
    move-result v0

    .line 885
    if-eqz v0, :cond_27

    .line 886
    .line 887
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Ef;->zzN()Lcom/google/android/gms/internal/ads/Xf;

    .line 888
    .line 889
    .line 890
    move-result-object v0

    .line 891
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Xf;->H:Lcom/google/android/gms/internal/ads/w6;

    .line 892
    .line 893
    if-eqz v2, :cond_26

    .line 894
    .line 895
    const/16 v3, 0x2715

    .line 896
    .line 897
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/w6;->b(I)V

    .line 898
    .line 899
    .line 900
    :cond_26
    iput-boolean v8, v0, Lcom/google/android/gms/internal/ads/Xf;->f0:Z

    .line 901
    .line 902
    const/16 v2, 0x2714

    .line 903
    .line 904
    iput v2, v0, Lcom/google/android/gms/internal/ads/Xf;->T:I

    .line 905
    .line 906
    const-string v2, "Page loaded delay cancel."

    .line 907
    .line 908
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/Xf;->U:Ljava/lang/String;

    .line 909
    .line 910
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xf;->M()V

    .line 911
    .line 912
    .line 913
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Xf;->G:Lcom/google/android/gms/internal/ads/Ef;

    .line 914
    .line 915
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->destroy()V

    .line 916
    .line 917
    .line 918
    :cond_27
    :goto_c
    return-void

    .line 919
    :pswitch_4
    move-object/from16 v2, p1

    .line 920
    .line 921
    check-cast v2, Lcom/google/android/gms/internal/ads/Ef;

    .line 922
    .line 923
    const-string v3, "action"

    .line 924
    .line 925
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    .line 927
    .line 928
    move-result-object v0

    .line 929
    check-cast v0, Ljava/lang/String;

    .line 930
    .line 931
    const-string v3, "pause"

    .line 932
    .line 933
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 934
    .line 935
    .line 936
    move-result v3

    .line 937
    if-eqz v3, :cond_28

    .line 938
    .line 939
    invoke-interface {v2}, Lk3/h;->i()V

    .line 940
    .line 941
    .line 942
    goto :goto_d

    .line 943
    :cond_28
    const-string v3, "resume"

    .line 944
    .line 945
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 946
    .line 947
    .line 948
    move-result v0

    .line 949
    if-eqz v0, :cond_29

    .line 950
    .line 951
    invoke-interface {v2}, Lk3/h;->a()V

    .line 952
    .line 953
    .line 954
    :cond_29
    :goto_d
    return-void

    .line 955
    :pswitch_5
    move-object/from16 v2, p1

    .line 956
    .line 957
    check-cast v2, Lcom/google/android/gms/internal/ads/Ef;

    .line 958
    .line 959
    const-string v3, "disabled"

    .line 960
    .line 961
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    .line 963
    .line 964
    move-result-object v0

    .line 965
    check-cast v0, Ljava/lang/String;

    .line 966
    .line 967
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 968
    .line 969
    .line 970
    move-result v0

    .line 971
    xor-int/2addr v0, v8

    .line 972
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/Ef;->W(Z)V

    .line 973
    .line 974
    .line 975
    return-void

    .line 976
    :pswitch_6
    move-object/from16 v0, p1

    .line 977
    .line 978
    check-cast v0, Lcom/google/android/gms/internal/ads/Ef;

    .line 979
    .line 980
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->I()Lcom/google/android/gms/internal/ads/L8;

    .line 981
    .line 982
    .line 983
    move-result-object v0

    .line 984
    if-eqz v0, :cond_2a

    .line 985
    .line 986
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/L8;->zzc()V

    .line 987
    .line 988
    .line 989
    :cond_2a
    return-void

    .line 990
    :pswitch_7
    const-string v2, "string"

    .line 991
    .line 992
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    .line 994
    .line 995
    move-result-object v0

    .line 996
    check-cast v0, Ljava/lang/String;

    .line 997
    .line 998
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 999
    .line 1000
    .line 1001
    move-result-object v0

    .line 1002
    const-string v2, "Received log message: "

    .line 1003
    .line 1004
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v0

    .line 1008
    invoke-static {v0}, Lp3/h;->f(Ljava/lang/String;)V

    .line 1009
    .line 1010
    .line 1011
    return-void

    .line 1012
    :pswitch_8
    move-object/from16 v2, p1

    .line 1013
    .line 1014
    check-cast v2, Lcom/google/android/gms/internal/ads/Ef;

    .line 1015
    .line 1016
    const-string v3, "1"

    .line 1017
    .line 1018
    const-string v4, "custom_close"

    .line 1019
    .line 1020
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v0

    .line 1024
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1025
    .line 1026
    .line 1027
    move-result v0

    .line 1028
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/Ef;->O0(Z)V

    .line 1029
    .line 1030
    .line 1031
    return-void

    .line 1032
    :pswitch_9
    move-object/from16 v0, p1

    .line 1033
    .line 1034
    check-cast v0, Lcom/google/android/gms/internal/ads/Ef;

    .line 1035
    .line 1036
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->y0()Lcom/google/android/gms/internal/ads/X5;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v2

    .line 1040
    if-eqz v2, :cond_2b

    .line 1041
    .line 1042
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->y0()Lcom/google/android/gms/internal/ads/X5;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v2

    .line 1046
    check-cast v2, Lcom/google/android/gms/internal/ads/dv;

    .line 1047
    .line 1048
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/dv;->z3(I)V

    .line 1049
    .line 1050
    .line 1051
    :cond_2b
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->B()Ln3/k;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v2

    .line 1055
    if-eqz v2, :cond_2c

    .line 1056
    .line 1057
    invoke-virtual {v2}, Ln3/k;->zzb()V

    .line 1058
    .line 1059
    .line 1060
    goto :goto_e

    .line 1061
    :cond_2c
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->r()Ln3/k;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v0

    .line 1065
    if-eqz v0, :cond_2d

    .line 1066
    .line 1067
    invoke-virtual {v0}, Ln3/k;->zzb()V

    .line 1068
    .line 1069
    .line 1070
    goto :goto_e

    .line 1071
    :cond_2d
    const-string v0, "A GMSG tried to close something that wasn\'t an overlay."

    .line 1072
    .line 1073
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 1074
    .line 1075
    .line 1076
    :goto_e
    return-void

    .line 1077
    :pswitch_a
    move-object/from16 v2, p1

    .line 1078
    .line 1079
    check-cast v2, Lcom/google/android/gms/internal/ads/Ef;

    .line 1080
    .line 1081
    const-string v3, "args"

    .line 1082
    .line 1083
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v0

    .line 1087
    check-cast v0, Ljava/lang/String;

    .line 1088
    .line 1089
    :try_start_4
    new-instance v3, Lorg/json/JSONArray;

    .line 1090
    .line 1091
    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1092
    .line 1093
    .line 1094
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Ef;->getContext()Landroid/content/Context;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v0

    .line 1098
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v0

    .line 1102
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v0

    .line 1106
    :goto_f
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 1107
    .line 1108
    .line 1109
    move-result v2

    .line 1110
    if-ge v7, v2, :cond_2e

    .line 1111
    .line 1112
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v2

    .line 1116
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1117
    .line 1118
    .line 1119
    add-int/2addr v7, v8

    .line 1120
    goto :goto_f

    .line 1121
    :catch_3
    move-exception v0

    .line 1122
    goto :goto_10

    .line 1123
    :cond_2e
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1124
    .line 1125
    .line 1126
    goto :goto_11

    .line 1127
    :goto_10
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 1128
    .line 1129
    iget-object v2, v2, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 1130
    .line 1131
    const-string v3, "GMSG clear local storage keys handler"

    .line 1132
    .line 1133
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1134
    .line 1135
    .line 1136
    :goto_11
    return-void

    .line 1137
    :pswitch_b
    move-object/from16 v2, p1

    .line 1138
    .line 1139
    check-cast v2, Lcom/google/android/gms/internal/ads/Ef;

    .line 1140
    .line 1141
    const-string v3, "args"

    .line 1142
    .line 1143
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v0

    .line 1147
    check-cast v0, Ljava/lang/String;

    .line 1148
    .line 1149
    :try_start_5
    new-instance v3, Lorg/json/JSONObject;

    .line 1150
    .line 1151
    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v0

    .line 1158
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Ef;->getContext()Landroid/content/Context;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v2

    .line 1162
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v2

    .line 1166
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v2

    .line 1170
    :cond_2f
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1171
    .line 1172
    .line 1173
    move-result v4

    .line 1174
    if-eqz v4, :cond_35

    .line 1175
    .line 1176
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v4

    .line 1180
    check-cast v4, Ljava/lang/String;

    .line 1181
    .line 1182
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v5

    .line 1186
    instance-of v6, v5, Ljava/lang/Integer;

    .line 1187
    .line 1188
    if-eqz v6, :cond_30

    .line 1189
    .line 1190
    check-cast v5, Ljava/lang/Integer;

    .line 1191
    .line 1192
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1193
    .line 1194
    .line 1195
    move-result v5

    .line 1196
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1197
    .line 1198
    .line 1199
    goto :goto_12

    .line 1200
    :catch_4
    move-exception v0

    .line 1201
    goto :goto_13

    .line 1202
    :cond_30
    instance-of v6, v5, Ljava/lang/Long;

    .line 1203
    .line 1204
    if-eqz v6, :cond_31

    .line 1205
    .line 1206
    check-cast v5, Ljava/lang/Long;

    .line 1207
    .line 1208
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 1209
    .line 1210
    .line 1211
    move-result-wide v5

    .line 1212
    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1213
    .line 1214
    .line 1215
    goto :goto_12

    .line 1216
    :cond_31
    instance-of v6, v5, Ljava/lang/Double;

    .line 1217
    .line 1218
    if-eqz v6, :cond_32

    .line 1219
    .line 1220
    check-cast v5, Ljava/lang/Double;

    .line 1221
    .line 1222
    invoke-virtual {v5}, Ljava/lang/Double;->floatValue()F

    .line 1223
    .line 1224
    .line 1225
    move-result v5

    .line 1226
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1227
    .line 1228
    .line 1229
    goto :goto_12

    .line 1230
    :cond_32
    instance-of v6, v5, Ljava/lang/Float;

    .line 1231
    .line 1232
    if-eqz v6, :cond_33

    .line 1233
    .line 1234
    check-cast v5, Ljava/lang/Float;

    .line 1235
    .line 1236
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 1237
    .line 1238
    .line 1239
    move-result v5

    .line 1240
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1241
    .line 1242
    .line 1243
    goto :goto_12

    .line 1244
    :cond_33
    instance-of v6, v5, Ljava/lang/Boolean;

    .line 1245
    .line 1246
    if-eqz v6, :cond_34

    .line 1247
    .line 1248
    check-cast v5, Ljava/lang/Boolean;

    .line 1249
    .line 1250
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1251
    .line 1252
    .line 1253
    move-result v5

    .line 1254
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1255
    .line 1256
    .line 1257
    goto :goto_12

    .line 1258
    :cond_34
    instance-of v6, v5, Ljava/lang/String;

    .line 1259
    .line 1260
    if-eqz v6, :cond_2f

    .line 1261
    .line 1262
    check-cast v5, Ljava/lang/String;

    .line 1263
    .line 1264
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1265
    .line 1266
    .line 1267
    goto :goto_12

    .line 1268
    :cond_35
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1269
    .line 1270
    .line 1271
    goto :goto_14

    .line 1272
    :goto_13
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 1273
    .line 1274
    iget-object v2, v2, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 1275
    .line 1276
    const-string v3, "GMSG write local storage KV pairs handler"

    .line 1277
    .line 1278
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1279
    .line 1280
    .line 1281
    :goto_14
    return-void

    .line 1282
    :pswitch_c
    move-object/from16 v2, p1

    .line 1283
    .line 1284
    check-cast v2, Lcom/google/android/gms/internal/ads/Ef;

    .line 1285
    .line 1286
    :try_start_6
    const-string v3, "enabled"

    .line 1287
    .line 1288
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v0

    .line 1292
    check-cast v0, Ljava/lang/String;

    .line 1293
    .line 1294
    const-string v3, "true"

    .line 1295
    .line 1296
    invoke-static {v3, v0}, Lo3/r;->F(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 1297
    .line 1298
    .line 1299
    move-result v3

    .line 1300
    if-nez v3, :cond_36

    .line 1301
    .line 1302
    const-string v3, "false"

    .line 1303
    .line 1304
    invoke-static {v3, v0}, Lo3/r;->F(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 1305
    .line 1306
    .line 1307
    move-result v3

    .line 1308
    if-eqz v3, :cond_37

    .line 1309
    .line 1310
    goto :goto_15

    .line 1311
    :catch_5
    move-exception v0

    .line 1312
    goto :goto_16

    .line 1313
    :cond_36
    :goto_15
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Ef;->getContext()Landroid/content/Context;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v2

    .line 1317
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Uy;->g(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Uy;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v2

    .line 1321
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1322
    .line 1323
    .line 1324
    move-result v0

    .line 1325
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v0

    .line 1329
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Sy;->f:Lcom/google/android/gms/internal/ads/Ry;

    .line 1330
    .line 1331
    const-string v3, "paidv2_user_option"

    .line 1332
    .line 1333
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/Ry;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1334
    .line 1335
    .line 1336
    goto :goto_17

    .line 1337
    :goto_16
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 1338
    .line 1339
    iget-object v2, v2, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 1340
    .line 1341
    const-string v3, "DefaultGmsgHandlers.SetPaidv2PersonalizationEnabled"

    .line 1342
    .line 1343
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1344
    .line 1345
    .line 1346
    :cond_37
    :goto_17
    return-void

    .line 1347
    :pswitch_d
    move-object/from16 v0, p1

    .line 1348
    .line 1349
    check-cast v0, Lcom/google/android/gms/internal/ads/Ef;

    .line 1350
    .line 1351
    :try_start_7
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->getContext()Landroid/content/Context;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v2

    .line 1355
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Ty;->f(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Ty;

    .line 1356
    .line 1357
    .line 1358
    move-result-object v2

    .line 1359
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Ty;->g()V

    .line 1360
    .line 1361
    .line 1362
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->getContext()Landroid/content/Context;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v0

    .line 1366
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Uy;->g(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Uy;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v0

    .line 1370
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Uy;->h()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 1371
    .line 1372
    .line 1373
    goto :goto_18

    .line 1374
    :catch_6
    move-exception v0

    .line 1375
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 1376
    .line 1377
    iget-object v2, v2, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 1378
    .line 1379
    const-string v3, "DefaultGmsgHandlers.ResetPaid"

    .line 1380
    .line 1381
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1382
    .line 1383
    .line 1384
    :goto_18
    return-void

    .line 1385
    :pswitch_e
    move-object/from16 v0, p1

    .line 1386
    .line 1387
    check-cast v0, Lcom/google/android/gms/internal/ads/Ef;

    .line 1388
    .line 1389
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 1390
    .line 1391
    iget-object v0, v0, Lk3/l;->q:La/x;

    .line 1392
    .line 1393
    iget-boolean v2, v0, La/x;->a:Z

    .line 1394
    .line 1395
    if-eqz v2, :cond_3d

    .line 1396
    .line 1397
    iget-object v2, v0, La/x;->e:Ljava/lang/Object;

    .line 1398
    .line 1399
    check-cast v2, Lcom/google/android/gms/internal/ads/Xu;

    .line 1400
    .line 1401
    if-nez v2, :cond_38

    .line 1402
    .line 1403
    goto/16 :goto_1a

    .line 1404
    .line 1405
    :cond_38
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->Na:Lcom/google/android/gms/internal/ads/J7;

    .line 1406
    .line 1407
    sget-object v4, Ll3/q;->d:Ll3/q;

    .line 1408
    .line 1409
    iget-object v4, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 1410
    .line 1411
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v3

    .line 1415
    check-cast v3, Ljava/lang/Boolean;

    .line 1416
    .line 1417
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1418
    .line 1419
    .line 1420
    move-result v3

    .line 1421
    if-eqz v3, :cond_39

    .line 1422
    .line 1423
    iget-object v3, v0, La/x;->c:Ljava/lang/Object;

    .line 1424
    .line 1425
    check-cast v3, Ljava/lang/String;

    .line 1426
    .line 1427
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1428
    .line 1429
    .line 1430
    move-result v3

    .line 1431
    if-nez v3, :cond_39

    .line 1432
    .line 1433
    iget-object v3, v0, La/x;->c:Ljava/lang/Object;

    .line 1434
    .line 1435
    check-cast v3, Ljava/lang/String;

    .line 1436
    .line 1437
    goto :goto_19

    .line 1438
    :cond_39
    iget-object v3, v0, La/x;->b:Ljava/lang/Object;

    .line 1439
    .line 1440
    check-cast v3, Ljava/lang/String;

    .line 1441
    .line 1442
    if-eqz v3, :cond_3a

    .line 1443
    .line 1444
    move-object/from16 v18, v6

    .line 1445
    .line 1446
    move-object v6, v3

    .line 1447
    move-object/from16 v3, v18

    .line 1448
    .line 1449
    goto :goto_19

    .line 1450
    :cond_3a
    const-string v3, "Missing session token and/or appId"

    .line 1451
    .line 1452
    const-string v4, "onLMDupdate"

    .line 1453
    .line 1454
    invoke-virtual {v0, v3, v4}, La/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    .line 1456
    .line 1457
    move-object v3, v6

    .line 1458
    :goto_19
    new-instance v11, Lcom/google/android/gms/internal/ads/bz;

    .line 1459
    .line 1460
    invoke-direct {v11, v6, v3}, Lcom/google/android/gms/internal/ads/bz;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    .line 1462
    .line 1463
    iget-object v0, v0, La/x;->f:Ljava/lang/Object;

    .line 1464
    .line 1465
    move-object v12, v0

    .line 1466
    check-cast v12, LC2/g;

    .line 1467
    .line 1468
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 1469
    .line 1470
    move-object v10, v0

    .line 1471
    check-cast v10, Lcom/google/android/gms/internal/ads/jz;

    .line 1472
    .line 1473
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/jz;->a:Lcom/google/android/gms/internal/ads/pz;

    .line 1474
    .line 1475
    if-nez v0, :cond_3b

    .line 1476
    .line 1477
    new-array v0, v8, [Ljava/lang/Object;

    .line 1478
    .line 1479
    const-string v2, "Play Store not found."

    .line 1480
    .line 1481
    aput-object v2, v0, v7

    .line 1482
    .line 1483
    const-string v2, "error: %s"

    .line 1484
    .line 1485
    sget-object v3, Lcom/google/android/gms/internal/ads/jz;->c:Lcom/google/android/gms/internal/ads/J;

    .line 1486
    .line 1487
    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/ads/J;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1488
    .line 1489
    .line 1490
    goto :goto_1b

    .line 1491
    :cond_3b
    filled-new-array {v6, v3}, [Ljava/lang/String;

    .line 1492
    .line 1493
    .line 1494
    move-result-object v2

    .line 1495
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1496
    .line 1497
    .line 1498
    move-result-object v2

    .line 1499
    const-string v3, "Failed to apply OverlayDisplayDismissRequest: missing appId and sessionToken."

    .line 1500
    .line 1501
    invoke-static {v12, v3, v2}, Lcom/google/android/gms/internal/ads/jz;->c(LC2/g;Ljava/lang/String;Ljava/util/List;)Z

    .line 1502
    .line 1503
    .line 1504
    move-result v2

    .line 1505
    if-nez v2, :cond_3c

    .line 1506
    .line 1507
    goto :goto_1b

    .line 1508
    :cond_3c
    new-instance v2, LK/a;

    .line 1509
    .line 1510
    const/16 v13, 0x18

    .line 1511
    .line 1512
    const/4 v14, 0x0

    .line 1513
    move-object v9, v2

    .line 1514
    invoke-direct/range {v9 .. v14}, LK/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 1515
    .line 1516
    .line 1517
    new-instance v3, Lcom/google/android/gms/internal/ads/mz;

    .line 1518
    .line 1519
    invoke-direct {v3, v0, v2, v8}, Lcom/google/android/gms/internal/ads/mz;-><init>(Lcom/google/android/gms/internal/ads/pz;Ljava/lang/Runnable;I)V

    .line 1520
    .line 1521
    .line 1522
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/pz;->a(Ljava/lang/Runnable;)V

    .line 1523
    .line 1524
    .line 1525
    goto :goto_1b

    .line 1526
    :cond_3d
    :goto_1a
    const-string v0, "LastMileDelivery not connected"

    .line 1527
    .line 1528
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 1529
    .line 1530
    .line 1531
    :goto_1b
    return-void

    .line 1532
    :pswitch_f
    move-object/from16 v0, p1

    .line 1533
    .line 1534
    check-cast v0, Lcom/google/android/gms/internal/ads/Ef;

    .line 1535
    .line 1536
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 1537
    .line 1538
    iget-object v0, v0, Lk3/l;->q:La/x;

    .line 1539
    .line 1540
    iget-boolean v2, v0, La/x;->a:Z

    .line 1541
    .line 1542
    if-eqz v2, :cond_3f

    .line 1543
    .line 1544
    iget-object v2, v0, La/x;->e:Ljava/lang/Object;

    .line 1545
    .line 1546
    check-cast v2, Lcom/google/android/gms/internal/ads/Xu;

    .line 1547
    .line 1548
    if-nez v2, :cond_3e

    .line 1549
    .line 1550
    goto :goto_1c

    .line 1551
    :cond_3e
    invoke-virtual {v0}, La/x;->h()Lcom/google/android/gms/internal/ads/fz;

    .line 1552
    .line 1553
    .line 1554
    move-result-object v3

    .line 1555
    iget-object v4, v0, La/x;->f:Ljava/lang/Object;

    .line 1556
    .line 1557
    check-cast v4, LC2/g;

    .line 1558
    .line 1559
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 1560
    .line 1561
    check-cast v2, Lcom/google/android/gms/internal/ads/jz;

    .line 1562
    .line 1563
    invoke-virtual {v2, v5, v4, v3}, Lcom/google/android/gms/internal/ads/jz;->a(ILC2/g;Lcom/google/android/gms/internal/ads/fz;)V

    .line 1564
    .line 1565
    .line 1566
    const-string v2, "onLMDOverlayCollapse"

    .line 1567
    .line 1568
    new-instance v3, Ljava/util/HashMap;

    .line 1569
    .line 1570
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1571
    .line 1572
    .line 1573
    invoke-virtual {v0, v2, v3}, La/x;->d(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1574
    .line 1575
    .line 1576
    goto :goto_1d

    .line 1577
    :cond_3f
    :goto_1c
    const-string v0, "LastMileDelivery not connected"

    .line 1578
    .line 1579
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 1580
    .line 1581
    .line 1582
    :goto_1d
    return-void

    .line 1583
    :pswitch_10
    move-object/from16 v0, p1

    .line 1584
    .line 1585
    check-cast v0, Lcom/google/android/gms/internal/ads/Ef;

    .line 1586
    .line 1587
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 1588
    .line 1589
    iget-object v0, v0, Lk3/l;->q:La/x;

    .line 1590
    .line 1591
    iget-boolean v2, v0, La/x;->a:Z

    .line 1592
    .line 1593
    if-eqz v2, :cond_41

    .line 1594
    .line 1595
    iget-object v2, v0, La/x;->e:Ljava/lang/Object;

    .line 1596
    .line 1597
    check-cast v2, Lcom/google/android/gms/internal/ads/Xu;

    .line 1598
    .line 1599
    if-nez v2, :cond_40

    .line 1600
    .line 1601
    goto :goto_1e

    .line 1602
    :cond_40
    invoke-virtual {v0}, La/x;->h()Lcom/google/android/gms/internal/ads/fz;

    .line 1603
    .line 1604
    .line 1605
    move-result-object v3

    .line 1606
    iget-object v4, v0, La/x;->f:Ljava/lang/Object;

    .line 1607
    .line 1608
    check-cast v4, LC2/g;

    .line 1609
    .line 1610
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 1611
    .line 1612
    check-cast v2, Lcom/google/android/gms/internal/ads/jz;

    .line 1613
    .line 1614
    invoke-virtual {v2, v8, v4, v3}, Lcom/google/android/gms/internal/ads/jz;->a(ILC2/g;Lcom/google/android/gms/internal/ads/fz;)V

    .line 1615
    .line 1616
    .line 1617
    const-string v2, "onLMDOverlayExpand"

    .line 1618
    .line 1619
    new-instance v3, Ljava/util/HashMap;

    .line 1620
    .line 1621
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1622
    .line 1623
    .line 1624
    invoke-virtual {v0, v2, v3}, La/x;->d(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1625
    .line 1626
    .line 1627
    goto :goto_1f

    .line 1628
    :cond_41
    :goto_1e
    const-string v0, "LastMileDelivery not connected"

    .line 1629
    .line 1630
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 1631
    .line 1632
    .line 1633
    :goto_1f
    return-void

    .line 1634
    :pswitch_11
    move-object/from16 v2, p1

    .line 1635
    .line 1636
    check-cast v2, Lcom/google/android/gms/internal/ads/Ef;

    .line 1637
    .line 1638
    const-string v3, "appId"

    .line 1639
    .line 1640
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1641
    .line 1642
    .line 1643
    move-result-object v4

    .line 1644
    check-cast v4, Ljava/lang/CharSequence;

    .line 1645
    .line 1646
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1647
    .line 1648
    .line 1649
    move-result v4

    .line 1650
    if-eqz v4, :cond_42

    .line 1651
    .line 1652
    const-string v0, "Missing App Id, cannot show LMD Overlay without it"

    .line 1653
    .line 1654
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 1655
    .line 1656
    .line 1657
    goto/16 :goto_22

    .line 1658
    .line 1659
    :cond_42
    new-instance v4, Lcom/google/android/gms/internal/ads/cz;

    .line 1660
    .line 1661
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1662
    .line 1663
    .line 1664
    const v6, 0x800053

    .line 1665
    .line 1666
    .line 1667
    iput v6, v4, Lcom/google/android/gms/internal/ads/cz;->c:I

    .line 1668
    .line 1669
    iget-byte v6, v4, Lcom/google/android/gms/internal/ads/cz;->g:B

    .line 1670
    .line 1671
    or-int/2addr v6, v8

    .line 1672
    int-to-byte v6, v6

    .line 1673
    const/high16 v7, -0x40800000    # -1.0f

    .line 1674
    .line 1675
    iput v7, v4, Lcom/google/android/gms/internal/ads/cz;->d:F

    .line 1676
    .line 1677
    or-int/2addr v6, v5

    .line 1678
    int-to-byte v6, v6

    .line 1679
    or-int/lit8 v6, v6, 0x4

    .line 1680
    .line 1681
    int-to-byte v6, v6

    .line 1682
    or-int/lit8 v6, v6, 0x8

    .line 1683
    .line 1684
    int-to-byte v6, v6

    .line 1685
    iput-byte v6, v4, Lcom/google/android/gms/internal/ads/cz;->g:B

    .line 1686
    .line 1687
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1688
    .line 1689
    .line 1690
    move-result-object v3

    .line 1691
    check-cast v3, Ljava/lang/String;

    .line 1692
    .line 1693
    iput-object v3, v4, Lcom/google/android/gms/internal/ads/cz;->b:Ljava/lang/String;

    .line 1694
    .line 1695
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Ef;->getWidth()I

    .line 1696
    .line 1697
    .line 1698
    move-result v3

    .line 1699
    iput v3, v4, Lcom/google/android/gms/internal/ads/cz;->e:I

    .line 1700
    .line 1701
    iget-byte v3, v4, Lcom/google/android/gms/internal/ads/cz;->g:B

    .line 1702
    .line 1703
    or-int/lit8 v3, v3, 0x10

    .line 1704
    .line 1705
    int-to-byte v3, v3

    .line 1706
    iput-byte v3, v4, Lcom/google/android/gms/internal/ads/cz;->g:B

    .line 1707
    .line 1708
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Ef;->j()Landroid/view/View;

    .line 1709
    .line 1710
    .line 1711
    move-result-object v3

    .line 1712
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 1713
    .line 1714
    .line 1715
    move-result-object v3

    .line 1716
    if-eqz v3, :cond_46

    .line 1717
    .line 1718
    iput-object v3, v4, Lcom/google/android/gms/internal/ads/cz;->a:Landroid/os/IBinder;

    .line 1719
    .line 1720
    const-string v3, "gravityX"

    .line 1721
    .line 1722
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1723
    .line 1724
    .line 1725
    move-result v6

    .line 1726
    if-eqz v6, :cond_43

    .line 1727
    .line 1728
    const-string v6, "gravityY"

    .line 1729
    .line 1730
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1731
    .line 1732
    .line 1733
    move-result v7

    .line 1734
    if-eqz v7, :cond_43

    .line 1735
    .line 1736
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1737
    .line 1738
    .line 1739
    move-result-object v6

    .line 1740
    check-cast v6, Ljava/lang/String;

    .line 1741
    .line 1742
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1743
    .line 1744
    .line 1745
    move-result v6

    .line 1746
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1747
    .line 1748
    .line 1749
    move-result-object v3

    .line 1750
    check-cast v3, Ljava/lang/String;

    .line 1751
    .line 1752
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1753
    .line 1754
    .line 1755
    move-result v3

    .line 1756
    or-int/2addr v3, v6

    .line 1757
    iput v3, v4, Lcom/google/android/gms/internal/ads/cz;->c:I

    .line 1758
    .line 1759
    iget-byte v3, v4, Lcom/google/android/gms/internal/ads/cz;->g:B

    .line 1760
    .line 1761
    or-int/2addr v3, v8

    .line 1762
    int-to-byte v3, v3

    .line 1763
    iput-byte v3, v4, Lcom/google/android/gms/internal/ads/cz;->g:B

    .line 1764
    .line 1765
    goto :goto_20

    .line 1766
    :cond_43
    const/16 v3, 0x51

    .line 1767
    .line 1768
    iput v3, v4, Lcom/google/android/gms/internal/ads/cz;->c:I

    .line 1769
    .line 1770
    iget-byte v3, v4, Lcom/google/android/gms/internal/ads/cz;->g:B

    .line 1771
    .line 1772
    or-int/2addr v3, v8

    .line 1773
    int-to-byte v3, v3

    .line 1774
    iput-byte v3, v4, Lcom/google/android/gms/internal/ads/cz;->g:B

    .line 1775
    .line 1776
    :goto_20
    const-string v3, "verticalMargin"

    .line 1777
    .line 1778
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1779
    .line 1780
    .line 1781
    move-result v6

    .line 1782
    if-eqz v6, :cond_44

    .line 1783
    .line 1784
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    .line 1786
    .line 1787
    move-result-object v3

    .line 1788
    check-cast v3, Ljava/lang/String;

    .line 1789
    .line 1790
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1791
    .line 1792
    .line 1793
    move-result v3

    .line 1794
    iput v3, v4, Lcom/google/android/gms/internal/ads/cz;->d:F

    .line 1795
    .line 1796
    iget-byte v3, v4, Lcom/google/android/gms/internal/ads/cz;->g:B

    .line 1797
    .line 1798
    or-int/2addr v3, v5

    .line 1799
    int-to-byte v3, v3

    .line 1800
    iput-byte v3, v4, Lcom/google/android/gms/internal/ads/cz;->g:B

    .line 1801
    .line 1802
    goto :goto_21

    .line 1803
    :cond_44
    const v3, 0x3ca3d70a    # 0.02f

    .line 1804
    .line 1805
    .line 1806
    iput v3, v4, Lcom/google/android/gms/internal/ads/cz;->d:F

    .line 1807
    .line 1808
    iget-byte v3, v4, Lcom/google/android/gms/internal/ads/cz;->g:B

    .line 1809
    .line 1810
    or-int/2addr v3, v5

    .line 1811
    int-to-byte v3, v3

    .line 1812
    iput-byte v3, v4, Lcom/google/android/gms/internal/ads/cz;->g:B

    .line 1813
    .line 1814
    :goto_21
    const-string v3, "enifd"

    .line 1815
    .line 1816
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1817
    .line 1818
    .line 1819
    move-result v5

    .line 1820
    if-eqz v5, :cond_45

    .line 1821
    .line 1822
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1823
    .line 1824
    .line 1825
    move-result-object v0

    .line 1826
    check-cast v0, Ljava/lang/String;

    .line 1827
    .line 1828
    iput-object v0, v4, Lcom/google/android/gms/internal/ads/cz;->f:Ljava/lang/String;

    .line 1829
    .line 1830
    :cond_45
    :try_start_8
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 1831
    .line 1832
    iget-object v0, v0, Lk3/l;->q:La/x;

    .line 1833
    .line 1834
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/cz;->a()Lcom/google/android/gms/internal/ads/dz;

    .line 1835
    .line 1836
    .line 1837
    move-result-object v3

    .line 1838
    invoke-virtual {v0, v2, v3}, La/x;->f(Lcom/google/android/gms/internal/ads/Ef;Lcom/google/android/gms/internal/ads/dz;)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_7

    .line 1839
    .line 1840
    .line 1841
    goto :goto_22

    .line 1842
    :catch_7
    move-exception v0

    .line 1843
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 1844
    .line 1845
    iget-object v2, v2, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 1846
    .line 1847
    const-string v3, "DefaultGmsgHandlers.ShowLMDOverlay"

    .line 1848
    .line 1849
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1850
    .line 1851
    .line 1852
    const-string v0, "Missing parameters for LMD Overlay show request"

    .line 1853
    .line 1854
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 1855
    .line 1856
    .line 1857
    :goto_22
    return-void

    .line 1858
    :cond_46
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1859
    .line 1860
    const-string v2, "Null windowToken"

    .line 1861
    .line 1862
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1863
    .line 1864
    .line 1865
    throw v0

    .line 1866
    :pswitch_12
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/H9;->b(Ljava/lang/Object;)V

    .line 1867
    .line 1868
    .line 1869
    return-void

    .line 1870
    :pswitch_13
    move-object/from16 v0, p1

    .line 1871
    .line 1872
    check-cast v0, Lcom/google/android/gms/internal/ads/Ef;

    .line 1873
    .line 1874
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->I()Lcom/google/android/gms/internal/ads/L8;

    .line 1875
    .line 1876
    .line 1877
    move-result-object v2

    .line 1878
    const-string v3, "nativeClickMetaReady"

    .line 1879
    .line 1880
    if-eqz v2, :cond_47

    .line 1881
    .line 1882
    check-cast v2, Lcom/google/android/gms/internal/ads/x;

    .line 1883
    .line 1884
    iget v4, v2, Lcom/google/android/gms/internal/ads/x;->G:I

    .line 1885
    .line 1886
    sparse-switch v4, :sswitch_data_0

    .line 1887
    .line 1888
    .line 1889
    goto :goto_23

    .line 1890
    :sswitch_0
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 1891
    .line 1892
    check-cast v2, Lcom/google/android/gms/internal/ads/dm;

    .line 1893
    .line 1894
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dm;->zzp()Lorg/json/JSONObject;

    .line 1895
    .line 1896
    .line 1897
    move-result-object v6

    .line 1898
    goto :goto_23

    .line 1899
    :sswitch_1
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 1900
    .line 1901
    move-object v6, v2

    .line 1902
    check-cast v6, Lorg/json/JSONObject;

    .line 1903
    .line 1904
    :goto_23
    if-eqz v6, :cond_47

    .line 1905
    .line 1906
    invoke-interface {v0, v6, v3}, Lcom/google/android/gms/internal/ads/sa;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1907
    .line 1908
    .line 1909
    goto :goto_24

    .line 1910
    :cond_47
    new-instance v2, Lorg/json/JSONObject;

    .line 1911
    .line 1912
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1913
    .line 1914
    .line 1915
    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/sa;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1916
    .line 1917
    .line 1918
    :goto_24
    return-void

    .line 1919
    :pswitch_14
    move-object/from16 v0, p1

    .line 1920
    .line 1921
    check-cast v0, Lcom/google/android/gms/internal/ads/Ef;

    .line 1922
    .line 1923
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->I()Lcom/google/android/gms/internal/ads/L8;

    .line 1924
    .line 1925
    .line 1926
    move-result-object v2

    .line 1927
    const-string v3, "nativeAdViewSignalsReady"

    .line 1928
    .line 1929
    if-eqz v2, :cond_48

    .line 1930
    .line 1931
    check-cast v2, Lcom/google/android/gms/internal/ads/x;

    .line 1932
    .line 1933
    iget v4, v2, Lcom/google/android/gms/internal/ads/x;->G:I

    .line 1934
    .line 1935
    packed-switch v4, :pswitch_data_1

    .line 1936
    .line 1937
    .line 1938
    goto :goto_25

    .line 1939
    :pswitch_15
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 1940
    .line 1941
    check-cast v2, Lcom/google/android/gms/internal/ads/dm;

    .line 1942
    .line 1943
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dm;->zzo()Lorg/json/JSONObject;

    .line 1944
    .line 1945
    .line 1946
    move-result-object v6

    .line 1947
    :goto_25
    if-eqz v6, :cond_48

    .line 1948
    .line 1949
    invoke-interface {v0, v6, v3}, Lcom/google/android/gms/internal/ads/sa;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1950
    .line 1951
    .line 1952
    goto :goto_26

    .line 1953
    :cond_48
    new-instance v2, Lorg/json/JSONObject;

    .line 1954
    .line 1955
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1956
    .line 1957
    .line 1958
    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/sa;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1959
    .line 1960
    .line 1961
    :goto_26
    return-void

    .line 1962
    :pswitch_16
    move-object/from16 v0, p1

    .line 1963
    .line 1964
    check-cast v0, Lcom/google/android/gms/internal/ads/Ef;

    .line 1965
    .line 1966
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->getContext()Landroid/content/Context;

    .line 1967
    .line 1968
    .line 1969
    move-result-object v2

    .line 1970
    const-string v3, "window"

    .line 1971
    .line 1972
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1973
    .line 1974
    .line 1975
    move-result-object v2

    .line 1976
    check-cast v2, Landroid/view/WindowManager;

    .line 1977
    .line 1978
    sget-object v3, Lk3/l;->A:Lk3/l;

    .line 1979
    .line 1980
    iget-object v3, v3, Lk3/l;->c:Lo3/O;

    .line 1981
    .line 1982
    move-object v3, v0

    .line 1983
    check-cast v3, Landroid/view/View;

    .line 1984
    .line 1985
    new-instance v4, Landroid/util/DisplayMetrics;

    .line 1986
    .line 1987
    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1988
    .line 1989
    .line 1990
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 1991
    .line 1992
    .line 1993
    move-result-object v2

    .line 1994
    invoke-virtual {v2, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1995
    .line 1996
    .line 1997
    iget v2, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1998
    .line 1999
    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2000
    .line 2001
    new-array v5, v5, [I

    .line 2002
    .line 2003
    new-instance v6, Ljava/util/HashMap;

    .line 2004
    .line 2005
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2006
    .line 2007
    .line 2008
    invoke-virtual {v3, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2009
    .line 2010
    .line 2011
    aget v3, v5, v7

    .line 2012
    .line 2013
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2014
    .line 2015
    .line 2016
    move-result-object v3

    .line 2017
    const-string v7, "xInPixels"

    .line 2018
    .line 2019
    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2020
    .line 2021
    .line 2022
    aget v3, v5, v8

    .line 2023
    .line 2024
    const-string v5, "yInPixels"

    .line 2025
    .line 2026
    const-string v7, "windowWidthInPixels"

    .line 2027
    .line 2028
    invoke-static {v3, v6, v5, v2, v7}, Lcom/google/protobuf/U2;->s(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 2029
    .line 2030
    .line 2031
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2032
    .line 2033
    .line 2034
    move-result-object v2

    .line 2035
    const-string v3, "windowHeightInPixels"

    .line 2036
    .line 2037
    invoke-virtual {v6, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2038
    .line 2039
    .line 2040
    const-string v2, "locationReady"

    .line 2041
    .line 2042
    invoke-interface {v0, v2, v6}, Lcom/google/android/gms/internal/ads/sa;->w(Ljava/lang/String;Ljava/util/Map;)V

    .line 2043
    .line 2044
    .line 2045
    const-string v0, "GET LOCATION COMPILED"

    .line 2046
    .line 2047
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 2048
    .line 2049
    .line 2050
    return-void

    .line 2051
    :pswitch_17
    move-object/from16 v2, p1

    .line 2052
    .line 2053
    check-cast v2, Lcom/google/android/gms/internal/ads/Wf;

    .line 2054
    .line 2055
    sget-object v3, Lcom/google/android/gms/internal/ads/M9;->a:Lcom/google/android/gms/internal/ads/H9;

    .line 2056
    .line 2057
    const-string v3, "u"

    .line 2058
    .line 2059
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2060
    .line 2061
    .line 2062
    move-result-object v0

    .line 2063
    check-cast v0, Ljava/lang/String;

    .line 2064
    .line 2065
    if-nez v0, :cond_49

    .line 2066
    .line 2067
    const-string v0, "URL missing from httpTrack GMSG."

    .line 2068
    .line 2069
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 2070
    .line 2071
    .line 2072
    goto :goto_27

    .line 2073
    :cond_49
    new-instance v3, Lo3/y;

    .line 2074
    .line 2075
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Wf;->getContext()Landroid/content/Context;

    .line 2076
    .line 2077
    .line 2078
    move-result-object v4

    .line 2079
    check-cast v2, Lcom/google/android/gms/internal/ads/Ef;

    .line 2080
    .line 2081
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Ef;->zzn()Lp3/a;

    .line 2082
    .line 2083
    .line 2084
    move-result-object v2

    .line 2085
    iget-object v2, v2, Lp3/a;->G:Ljava/lang/String;

    .line 2086
    .line 2087
    invoke-direct {v3, v4, v2, v0}, Lo3/y;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    .line 2089
    .line 2090
    invoke-virtual {v3}, Lo3/n;->b()LD4/b;

    .line 2091
    .line 2092
    .line 2093
    :goto_27
    return-void

    .line 2094
    :pswitch_18
    move-object/from16 v2, p1

    .line 2095
    .line 2096
    check-cast v2, Lcom/google/android/gms/internal/ads/Wf;

    .line 2097
    .line 2098
    const-string v4, "openableIntents"

    .line 2099
    .line 2100
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Wf;->getContext()Landroid/content/Context;

    .line 2101
    .line 2102
    .line 2103
    move-result-object v9

    .line 2104
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2105
    .line 2106
    .line 2107
    move-result-object v9

    .line 2108
    const-string v10, "data"

    .line 2109
    .line 2110
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2111
    .line 2112
    .line 2113
    move-result-object v0

    .line 2114
    check-cast v0, Ljava/lang/String;

    .line 2115
    .line 2116
    :try_start_9
    new-instance v10, Lorg/json/JSONObject;

    .line 2117
    .line 2118
    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_d

    .line 2119
    .line 2120
    .line 2121
    :try_start_a
    const-string v0, "intents"

    .line 2122
    .line 2123
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 2124
    .line 2125
    .line 2126
    move-result-object v10
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_c

    .line 2127
    new-instance v11, Lorg/json/JSONObject;

    .line 2128
    .line 2129
    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 2130
    .line 2131
    .line 2132
    const/4 v12, 0x0

    .line 2133
    :goto_28
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    .line 2134
    .line 2135
    .line 2136
    move-result v0

    .line 2137
    if-ge v12, v0, :cond_51

    .line 2138
    .line 2139
    :try_start_b
    invoke-virtual {v10, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 2140
    .line 2141
    .line 2142
    move-result-object v0
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_b

    .line 2143
    const-string v13, "id"

    .line 2144
    .line 2145
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 2146
    .line 2147
    .line 2148
    move-result-object v13

    .line 2149
    const-string v14, "u"

    .line 2150
    .line 2151
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 2152
    .line 2153
    .line 2154
    move-result-object v14

    .line 2155
    const-string v15, "i"

    .line 2156
    .line 2157
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 2158
    .line 2159
    .line 2160
    move-result-object v15

    .line 2161
    const-string v6, "m"

    .line 2162
    .line 2163
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 2164
    .line 2165
    .line 2166
    move-result-object v6

    .line 2167
    const-string v3, "p"

    .line 2168
    .line 2169
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 2170
    .line 2171
    .line 2172
    move-result-object v3

    .line 2173
    const-string v8, "c"

    .line 2174
    .line 2175
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 2176
    .line 2177
    .line 2178
    move-result-object v8

    .line 2179
    const-string v5, "intent_url"

    .line 2180
    .line 2181
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 2182
    .line 2183
    .line 2184
    move-result-object v5

    .line 2185
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2186
    .line 2187
    .line 2188
    move-result v0

    .line 2189
    if-nez v0, :cond_4a

    .line 2190
    .line 2191
    :try_start_c
    invoke-static {v5, v7}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2192
    .line 2193
    .line 2194
    move-result-object v0
    :try_end_c
    .catch Ljava/net/URISyntaxException; {:try_start_c .. :try_end_c} :catch_8

    .line 2195
    goto :goto_29

    .line 2196
    :catch_8
    move-exception v0

    .line 2197
    move-object v7, v0

    .line 2198
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2199
    .line 2200
    .line 2201
    move-result-object v0

    .line 2202
    const-string v5, "Error parsing the url: "

    .line 2203
    .line 2204
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 2205
    .line 2206
    .line 2207
    move-result-object v0

    .line 2208
    invoke-static {v0, v7}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2209
    .line 2210
    .line 2211
    :cond_4a
    const/4 v0, 0x0

    .line 2212
    :goto_29
    if-nez v0, :cond_4f

    .line 2213
    .line 2214
    new-instance v0, Landroid/content/Intent;

    .line 2215
    .line 2216
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2217
    .line 2218
    .line 2219
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2220
    .line 2221
    .line 2222
    move-result v5

    .line 2223
    if-nez v5, :cond_4b

    .line 2224
    .line 2225
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 2226
    .line 2227
    .line 2228
    move-result-object v5

    .line 2229
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2230
    .line 2231
    .line 2232
    :cond_4b
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2233
    .line 2234
    .line 2235
    move-result v5

    .line 2236
    if-nez v5, :cond_4c

    .line 2237
    .line 2238
    invoke-virtual {v0, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2239
    .line 2240
    .line 2241
    :cond_4c
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2242
    .line 2243
    .line 2244
    move-result v5

    .line 2245
    if-nez v5, :cond_4d

    .line 2246
    .line 2247
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2248
    .line 2249
    .line 2250
    :cond_4d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2251
    .line 2252
    .line 2253
    move-result v5

    .line 2254
    if-nez v5, :cond_4e

    .line 2255
    .line 2256
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2257
    .line 2258
    .line 2259
    :cond_4e
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2260
    .line 2261
    .line 2262
    move-result v3

    .line 2263
    if-nez v3, :cond_4f

    .line 2264
    .line 2265
    const-string v3, "/"

    .line 2266
    .line 2267
    const/4 v5, 0x2

    .line 2268
    invoke-virtual {v8, v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 2269
    .line 2270
    .line 2271
    move-result-object v3

    .line 2272
    array-length v6, v3

    .line 2273
    if-ne v6, v5, :cond_4f

    .line 2274
    .line 2275
    new-instance v5, Landroid/content/ComponentName;

    .line 2276
    .line 2277
    const/4 v6, 0x0

    .line 2278
    aget-object v7, v3, v6

    .line 2279
    .line 2280
    const/4 v6, 0x1

    .line 2281
    aget-object v3, v3, v6

    .line 2282
    .line 2283
    invoke-direct {v5, v7, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2284
    .line 2285
    .line 2286
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2287
    .line 2288
    .line 2289
    :cond_4f
    move-object v3, v0

    .line 2290
    const/high16 v5, 0x10000

    .line 2291
    .line 2292
    :try_start_d
    invoke-virtual {v9, v3, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 2293
    .line 2294
    .line 2295
    move-result-object v0
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_9

    .line 2296
    goto :goto_2a

    .line 2297
    :catch_9
    move-exception v0

    .line 2298
    move-object v5, v0

    .line 2299
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 2300
    .line 2301
    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 2302
    .line 2303
    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 2304
    .line 2305
    .line 2306
    move-result-object v3

    .line 2307
    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2308
    .line 2309
    .line 2310
    const/4 v0, 0x0

    .line 2311
    :goto_2a
    if-eqz v0, :cond_50

    .line 2312
    .line 2313
    const/4 v0, 0x1

    .line 2314
    goto :goto_2b

    .line 2315
    :cond_50
    const/4 v0, 0x0

    .line 2316
    :goto_2b
    :try_start_e
    invoke-virtual {v11, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_a

    .line 2317
    .line 2318
    .line 2319
    :goto_2c
    const/4 v3, 0x1

    .line 2320
    goto :goto_2d

    .line 2321
    :catch_a
    move-exception v0

    .line 2322
    move-object v3, v0

    .line 2323
    const-string v0, "Error constructing openable urls response."

    .line 2324
    .line 2325
    invoke-static {v0, v3}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2326
    .line 2327
    .line 2328
    goto :goto_2c

    .line 2329
    :catch_b
    move-exception v0

    .line 2330
    move-object v3, v0

    .line 2331
    const-string v0, "Error parsing the intent data."

    .line 2332
    .line 2333
    invoke-static {v0, v3}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2334
    .line 2335
    .line 2336
    goto :goto_2c

    .line 2337
    :goto_2d
    add-int/2addr v12, v3

    .line 2338
    const/4 v5, 0x2

    .line 2339
    const/4 v6, 0x0

    .line 2340
    const/4 v7, 0x0

    .line 2341
    const/4 v8, 0x1

    .line 2342
    goto/16 :goto_28

    .line 2343
    .line 2344
    :cond_51
    check-cast v2, Lcom/google/android/gms/internal/ads/sa;

    .line 2345
    .line 2346
    invoke-interface {v2, v11, v4}, Lcom/google/android/gms/internal/ads/sa;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 2347
    .line 2348
    .line 2349
    goto :goto_2e

    .line 2350
    :catch_c
    check-cast v2, Lcom/google/android/gms/internal/ads/sa;

    .line 2351
    .line 2352
    new-instance v0, Lorg/json/JSONObject;

    .line 2353
    .line 2354
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2355
    .line 2356
    .line 2357
    invoke-interface {v2, v0, v4}, Lcom/google/android/gms/internal/ads/sa;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 2358
    .line 2359
    .line 2360
    goto :goto_2e

    .line 2361
    :catch_d
    check-cast v2, Lcom/google/android/gms/internal/ads/sa;

    .line 2362
    .line 2363
    new-instance v0, Lorg/json/JSONObject;

    .line 2364
    .line 2365
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2366
    .line 2367
    .line 2368
    invoke-interface {v2, v0, v4}, Lcom/google/android/gms/internal/ads/sa;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 2369
    .line 2370
    .line 2371
    :goto_2e
    return-void

    .line 2372
    :pswitch_19
    move-object/from16 v2, p1

    .line 2373
    .line 2374
    check-cast v2, Lcom/google/android/gms/internal/ads/Ef;

    .line 2375
    .line 2376
    sget-object v3, Lcom/google/android/gms/internal/ads/M9;->a:Lcom/google/android/gms/internal/ads/H9;

    .line 2377
    .line 2378
    const-string v3, "tx"

    .line 2379
    .line 2380
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2381
    .line 2382
    .line 2383
    move-result-object v3

    .line 2384
    check-cast v3, Ljava/lang/String;

    .line 2385
    .line 2386
    const-string v4, "ty"

    .line 2387
    .line 2388
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2389
    .line 2390
    .line 2391
    move-result-object v4

    .line 2392
    check-cast v4, Ljava/lang/String;

    .line 2393
    .line 2394
    const-string v5, "td"

    .line 2395
    .line 2396
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2397
    .line 2398
    .line 2399
    move-result-object v0

    .line 2400
    check-cast v0, Ljava/lang/String;

    .line 2401
    .line 2402
    :try_start_f
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2403
    .line 2404
    .line 2405
    move-result v3

    .line 2406
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2407
    .line 2408
    .line 2409
    move-result v4

    .line 2410
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2411
    .line 2412
    .line 2413
    move-result v0

    .line 2414
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Ef;->T()Lcom/google/android/gms/internal/ads/H4;

    .line 2415
    .line 2416
    .line 2417
    move-result-object v2

    .line 2418
    if-eqz v2, :cond_52

    .line 2419
    .line 2420
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/H4;->b:Lcom/google/android/gms/internal/ads/E4;

    .line 2421
    .line 2422
    invoke-interface {v2, v3, v4, v0}, Lcom/google/android/gms/internal/ads/E4;->zzl(III)V
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_e

    .line 2423
    .line 2424
    .line 2425
    goto :goto_2f

    .line 2426
    :catch_e
    const-string v0, "Could not parse touch parameters from gmsg."

    .line 2427
    .line 2428
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 2429
    .line 2430
    .line 2431
    :cond_52
    :goto_2f
    return-void

    .line 2432
    :pswitch_1a
    move-object/from16 v2, p1

    .line 2433
    .line 2434
    check-cast v2, Lcom/google/android/gms/internal/ads/Wf;

    .line 2435
    .line 2436
    sget-object v3, Lcom/google/android/gms/internal/ads/M9;->a:Lcom/google/android/gms/internal/ads/H9;

    .line 2437
    .line 2438
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->A7:Lcom/google/android/gms/internal/ads/J7;

    .line 2439
    .line 2440
    sget-object v4, Ll3/q;->d:Ll3/q;

    .line 2441
    .line 2442
    iget-object v4, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 2443
    .line 2444
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 2445
    .line 2446
    .line 2447
    move-result-object v3

    .line 2448
    check-cast v3, Ljava/lang/Boolean;

    .line 2449
    .line 2450
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2451
    .line 2452
    .line 2453
    move-result v3

    .line 2454
    if-nez v3, :cond_53

    .line 2455
    .line 2456
    const-string v0, "canOpenAppGmsgHandler disabled."

    .line 2457
    .line 2458
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 2459
    .line 2460
    .line 2461
    goto :goto_31

    .line 2462
    :cond_53
    const-string v3, "package_name"

    .line 2463
    .line 2464
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2465
    .line 2466
    .line 2467
    move-result-object v0

    .line 2468
    check-cast v0, Ljava/lang/String;

    .line 2469
    .line 2470
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2471
    .line 2472
    .line 2473
    move-result v3

    .line 2474
    if-eqz v3, :cond_54

    .line 2475
    .line 2476
    const-string v0, "Package name missing in canOpenApp GMSG."

    .line 2477
    .line 2478
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 2479
    .line 2480
    .line 2481
    goto :goto_31

    .line 2482
    :cond_54
    new-instance v3, Ljava/util/HashMap;

    .line 2483
    .line 2484
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2485
    .line 2486
    .line 2487
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Wf;->getContext()Landroid/content/Context;

    .line 2488
    .line 2489
    .line 2490
    move-result-object v4

    .line 2491
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2492
    .line 2493
    .line 2494
    move-result-object v4

    .line 2495
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2496
    .line 2497
    .line 2498
    move-result-object v4

    .line 2499
    if-eqz v4, :cond_55

    .line 2500
    .line 2501
    const/4 v7, 0x1

    .line 2502
    goto :goto_30

    .line 2503
    :cond_55
    const/4 v7, 0x0

    .line 2504
    :goto_30
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2505
    .line 2506
    .line 2507
    move-result-object v4

    .line 2508
    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2509
    .line 2510
    .line 2511
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2512
    .line 2513
    const-string v6, "/canOpenApp;"

    .line 2514
    .line 2515
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2516
    .line 2517
    .line 2518
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2519
    .line 2520
    .line 2521
    const-string v0, ";"

    .line 2522
    .line 2523
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2524
    .line 2525
    .line 2526
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2527
    .line 2528
    .line 2529
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2530
    .line 2531
    .line 2532
    move-result-object v0

    .line 2533
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 2534
    .line 2535
    .line 2536
    check-cast v2, Lcom/google/android/gms/internal/ads/sa;

    .line 2537
    .line 2538
    const-string v0, "openableApp"

    .line 2539
    .line 2540
    invoke-interface {v2, v0, v3}, Lcom/google/android/gms/internal/ads/sa;->w(Ljava/lang/String;Ljava/util/Map;)V

    .line 2541
    .line 2542
    .line 2543
    :goto_31
    return-void

    .line 2544
    :pswitch_1b
    move-object/from16 v2, p1

    .line 2545
    .line 2546
    check-cast v2, Lcom/google/android/gms/internal/ads/Wf;

    .line 2547
    .line 2548
    sget-object v3, Lcom/google/android/gms/internal/ads/M9;->a:Lcom/google/android/gms/internal/ads/H9;

    .line 2549
    .line 2550
    const-string v3, "urls"

    .line 2551
    .line 2552
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2553
    .line 2554
    .line 2555
    move-result-object v0

    .line 2556
    check-cast v0, Ljava/lang/String;

    .line 2557
    .line 2558
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2559
    .line 2560
    .line 2561
    move-result v3

    .line 2562
    if-eqz v3, :cond_56

    .line 2563
    .line 2564
    const-string v0, "URLs missing in canOpenURLs GMSG."

    .line 2565
    .line 2566
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 2567
    .line 2568
    .line 2569
    goto :goto_35

    .line 2570
    :cond_56
    const-string v3, ","

    .line 2571
    .line 2572
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 2573
    .line 2574
    .line 2575
    move-result-object v0

    .line 2576
    new-instance v3, Ljava/util/HashMap;

    .line 2577
    .line 2578
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2579
    .line 2580
    .line 2581
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Wf;->getContext()Landroid/content/Context;

    .line 2582
    .line 2583
    .line 2584
    move-result-object v4

    .line 2585
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2586
    .line 2587
    .line 2588
    move-result-object v4

    .line 2589
    array-length v5, v0

    .line 2590
    const/4 v6, 0x0

    .line 2591
    :goto_32
    if-ge v6, v5, :cond_59

    .line 2592
    .line 2593
    aget-object v7, v0, v6

    .line 2594
    .line 2595
    const-string v8, ";"

    .line 2596
    .line 2597
    const/4 v9, 0x2

    .line 2598
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 2599
    .line 2600
    .line 2601
    move-result-object v10

    .line 2602
    const/4 v11, 0x0

    .line 2603
    aget-object v12, v10, v11

    .line 2604
    .line 2605
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2606
    .line 2607
    .line 2608
    move-result-object v12

    .line 2609
    array-length v13, v10

    .line 2610
    const/4 v14, 0x1

    .line 2611
    if-le v13, v14, :cond_57

    .line 2612
    .line 2613
    aget-object v10, v10, v14

    .line 2614
    .line 2615
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2616
    .line 2617
    .line 2618
    move-result-object v10

    .line 2619
    goto :goto_33

    .line 2620
    :cond_57
    const-string v10, "android.intent.action.VIEW"

    .line 2621
    .line 2622
    :goto_33
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 2623
    .line 2624
    .line 2625
    move-result-object v12

    .line 2626
    new-instance v13, Landroid/content/Intent;

    .line 2627
    .line 2628
    invoke-direct {v13, v10, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2629
    .line 2630
    .line 2631
    const/high16 v10, 0x10000

    .line 2632
    .line 2633
    invoke-virtual {v4, v13, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 2634
    .line 2635
    .line 2636
    move-result-object v12

    .line 2637
    if-eqz v12, :cond_58

    .line 2638
    .line 2639
    const/4 v12, 0x1

    .line 2640
    goto :goto_34

    .line 2641
    :cond_58
    const/4 v12, 0x0

    .line 2642
    :goto_34
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2643
    .line 2644
    .line 2645
    move-result-object v12

    .line 2646
    invoke-virtual {v3, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2647
    .line 2648
    .line 2649
    new-instance v13, Ljava/lang/StringBuilder;

    .line 2650
    .line 2651
    const-string v14, "/canOpenURLs;"

    .line 2652
    .line 2653
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2654
    .line 2655
    .line 2656
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2657
    .line 2658
    .line 2659
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2660
    .line 2661
    .line 2662
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2663
    .line 2664
    .line 2665
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2666
    .line 2667
    .line 2668
    move-result-object v7

    .line 2669
    invoke-static {v7}, Lo3/I;->k(Ljava/lang/String;)V

    .line 2670
    .line 2671
    .line 2672
    const/4 v7, 0x1

    .line 2673
    add-int/2addr v6, v7

    .line 2674
    goto :goto_32

    .line 2675
    :cond_59
    check-cast v2, Lcom/google/android/gms/internal/ads/sa;

    .line 2676
    .line 2677
    const-string v0, "openableURLs"

    .line 2678
    .line 2679
    invoke-interface {v2, v0, v3}, Lcom/google/android/gms/internal/ads/sa;->w(Ljava/lang/String;Ljava/util/Map;)V

    .line 2680
    .line 2681
    .line 2682
    :goto_35
    return-void

    .line 2683
    :pswitch_1c
    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/H9;->a(Ljava/lang/Object;Ljava/util/Map;)V

    .line 2684
    .line 2685
    .line 2686
    return-void

    .line 2687
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2688
    .line 2689
    .line 2690
    .line 2691
    .line 2692
    .line 2693
    .line 2694
    .line 2695
    .line 2696
    .line 2697
    .line 2698
    .line 2699
    .line 2700
    .line 2701
    .line 2702
    .line 2703
    .line 2704
    .line 2705
    .line 2706
    .line 2707
    .line 2708
    .line 2709
    .line 2710
    .line 2711
    .line 2712
    .line 2713
    .line 2714
    .line 2715
    .line 2716
    .line 2717
    .line 2718
    .line 2719
    .line 2720
    .line 2721
    .line 2722
    .line 2723
    .line 2724
    .line 2725
    .line 2726
    .line 2727
    .line 2728
    .line 2729
    .line 2730
    .line 2731
    .line 2732
    .line 2733
    .line 2734
    .line 2735
    .line 2736
    .line 2737
    .line 2738
    .line 2739
    .line 2740
    .line 2741
    .line 2742
    .line 2743
    .line 2744
    .line 2745
    .line 2746
    .line 2747
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x1a -> :sswitch_0
    .end sparse-switch

    .line 2748
    .line 2749
    .line 2750
    .line 2751
    .line 2752
    .line 2753
    .line 2754
    .line 2755
    .line 2756
    .line 2757
    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_15
    .end packed-switch
.end method
